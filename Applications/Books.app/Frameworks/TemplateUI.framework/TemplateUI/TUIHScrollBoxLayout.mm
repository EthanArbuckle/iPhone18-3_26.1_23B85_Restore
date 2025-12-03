@interface TUIHScrollBoxLayout
- (CGPoint)scrollAdditionalAXTranslation;
- (CGRect)computedErasableBounds;
- (TUIHScrollBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)_embeddedCollectionModelWithContext:(id)context;
- (id)modelIdentifierForScrollable;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)_updateAnchorSet;
- (void)_validateLayout;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform origin:(CGPoint)origin toModels:(id)models;
- (void)appendEmbeddedIdentifierMaps:(id)maps updateControllers:(id)controllers UUIDs:(id)ds;
- (void)computeLayout;
- (void)onChildTransformedSizeDidChange:(id)change;
- (void)validateRenderModelWithContext:(id)context transactionGroup:(id)group;
@end

@implementation TUIHScrollBoxLayout

- (TUIHScrollBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v9.receiver = self;
  v9.super_class = TUIHScrollBoxLayout;
  v5 = [(TUILayout *)&v9 initWithModel:model parent:parent controller:controller];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 specifiedWidth];
    if ((v7 & 0x6000000000000) == 0x2000000000000)
    {
      [(TUILayout *)v6 setSpecifiedWidthComputeInherited:1];
    }
  }

  return v6;
}

- (CGPoint)scrollAdditionalAXTranslation
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  if (objc_opt_respondsToSelector())
  {
    [firstObject layoutScrollGradientInsets];
    left = v5;
  }

  else
  {
    left = UIEdgeInsetsZero.left;
  }

  controller = [(TUILayout *)self controller];
  [controller contentsScale];
  [(TUILayout *)self erasableInsetsForContentsScale:?];
  v9 = v8;
  v11 = v10;

  if (left >= 0.0)
  {
    left = v11;
  }

  v12 = left;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  layoutAncestor = [(TUILayout *)self layoutAncestor];
  shouldUpdateContainingMetricsForScrollableContent = [layoutAncestor shouldUpdateContainingMetricsForScrollableContent];

  if (shouldUpdateContainingMetricsForScrollableContent)
  {
    [firstObject setContainingWidth:NAN];
  }

  [firstObject validateLayout];
  [firstObject computedTransformedSize];
  v9 = v8;
  if (objc_opt_respondsToSelector())
  {
    [firstObject layoutScrollContentScrollSizeWithProposedSize:{v4, v9}];
    v4 = v10;
    v9 = v11;
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v9];
  [(TUIHScrollBoxLayout *)self _updateAnchorSet];
}

- (void)onChildTransformedSizeDidChange:(id)change
{
  changeCopy = change;
  [(TUIHScrollBoxLayout *)self _updateAnchorSet];
  [(TUILayout *)self computedNaturalSize];
  v6 = v5;
  [changeCopy computedTransformedSize];
  v8 = v7;

  if (v6 != v8)
  {

    [(TUILayout *)self invalidateLayout];
  }
}

- (void)_updateAnchorSet
{
  v10 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:1];
  layout = [(TUILayout *)self layout];
  computedLayoutDirection = [layout computedLayoutDirection];
  v5 = [(TUILayout *)self box];
  [v5 anchorOffset];
  if (computedLayoutDirection == &dword_0 + 2)
  {
    v6 = -v6;
  }

  [(TUIAnchorSet *)v10 setOffset:v6];

  [(TUILayout *)self appendChildAnchorsToSet:v10 inRoot:self];
  controller = [(TUILayout *)self controller];
  [controller contentsScale];
  [(TUIMutableAnchorSet *)v10 finalizeWithContentsScale:?];

  v8 = [(TUIMutableAnchorSet *)v10 copy];
  anchorSet = self->_anchorSet;
  self->_anchorSet = v8;
}

- (void)_validateLayout
{
  v2.receiver = self;
  v2.super_class = TUIHScrollBoxLayout;
  [(TUILayout *)&v2 _validateLayout];
}

- (CGRect)computedErasableBounds
{
  v11.receiver = self;
  v11.super_class = TUIHScrollBoxLayout;
  [(TUILayout *)&v11 computedErasableBounds];
  v4 = v3;
  v6 = v5;
  [(TUILayout *)self computedBounds];
  v9 = v4;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v9;
  result.origin.x = v7;
  return result;
}

- (id)_embeddedCollectionModelWithContext:(id)context
{
  contextCopy = context;
  controller = [(TUILayout *)self controller];
  [controller cachedRenderModelValidatedForLayout:self];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_13B1D8;
  v25 = sub_13B1E8;
  v26 = 0;
  if (!self->_renderModelidentifierMap)
  {
    v6 = [(TUILayout *)self box];
    identifier = [v6 identifier];
    v8 = [contextCopy embeddedIdentifierMapForIdentifier:identifier];
    renderModelidentifierMap = self->_renderModelidentifierMap;
    self->_renderModelidentifierMap = v8;
  }

  if (!self->_sectionUUID)
  {
    v10 = [(TUILayout *)self box];
    identifier2 = [v10 identifier];
    v12 = [contextCopy embeddedUUIDForIdentifier:identifier2];
    sectionUUID = self->_sectionUUID;
    self->_sectionUUID = v12;
  }

  v14 = self->_renderModelidentifierMap;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_13B1F0;
  v18[3] = &unk_25DC78;
  v18[4] = self;
  v15 = contextCopy;
  v19 = v15;
  v20 = &v21;
  [v15 evaluateWithIdentifierMap:v14 block:v18];
  v16 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v16;
}

- (id)modelIdentifierForScrollable
{
  v2 = [(TUILayout *)self box];
  modelIdentifierForScrollable = [v2 modelIdentifierForScrollable];

  return modelIdentifierForScrollable;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  if (kind < 4)
  {
    v54 = 0;
  }

  else
  {
    v7 = [(TUIHScrollBoxLayout *)self _embeddedCollectionModelWithContext:contextCopy];
    renderModelUpdateController = self->_renderModelUpdateController;
    if (!renderModelUpdateController)
    {
      v9 = [(TUILayout *)self box];
      identifier = [v9 identifier];
      v11 = [contextCopy embeddedUpdateControllerForIdentifier:identifier renderModel:0];
      v12 = self->_renderModelUpdateController;
      self->_renderModelUpdateController = v11;

      renderModelUpdateController = self->_renderModelUpdateController;
    }

    transactionGroup = [contextCopy transactionGroup];
    v72 = v7;
    [(TUIRenderUpdateCollectionController *)renderModelUpdateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:transactionGroup];

    children = [(TUILayout *)self children];
    firstObject = [children firstObject];

    v16 = objc_opt_respondsToSelector();
    scrollPolicy = 0;
    if (v16)
    {
      scrollPolicy = [firstObject scrollPolicy];
    }

    v73 = scrollPolicy;
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v22 = objc_opt_respondsToSelector();
    v23 = right;
    v24 = bottom;
    v25 = left;
    v26 = UIEdgeInsetsZero.top;
    if (v22)
    {
      [firstObject layoutScrollGradientInsets];
    }

    v67 = v23;
    v68 = v24;
    v69 = v25;
    v70 = v26;
    v27 = objc_opt_respondsToSelector();
    v28 = 1.0;
    v29 = 1.0;
    v30 = 1.0;
    v31 = 1.0;
    if (v27)
    {
      [firstObject layoutScrollGradientFraction];
    }

    v63 = v29;
    v64 = v28;
    v65 = v30;
    v66 = v31;
    v32 = objc_opt_respondsToSelector();
    v33 = 0;
    if (v32)
    {
      [firstObject layoutScrollPageGap];
    }

    v62 = v33;
    v34 = right;
    v35 = bottom;
    v36 = left;
    v37 = UIEdgeInsetsZero.top;
    if (objc_opt_respondsToSelector())
    {
      [firstObject layoutAdditionalSafeAreaInsets];
      v37 = v38;
      v36 = v39;
      v35 = v40;
      v34 = v41;
    }

    if (objc_opt_respondsToSelector())
    {
      [firstObject layoutScrollContentIntrinsicInsets];
      top = v42;
      left = v43;
      bottom = v44;
      right = v45;
    }

    v46 = self->_renderModelUpdateController;
    v47 = [contextCopy uid];
    uUID = [contextCopy UUID];
    v61 = [(TUILayout *)self box];
    identifier2 = [v61 identifier];
    modelIdentifierForScrollable = [(TUIHScrollBoxLayout *)self modelIdentifierForScrollable];
    modelIdentifierForEnclosingScrollable = [(TUILayout *)self modelIdentifierForEnclosingScrollable];
    v60 = [(TUILayout *)self box];
    acceptsDrop = [v60 acceptsDrop];
    v50 = [(TUILayout *)self box];
    [v50 dropHandler];
    v51 = v71 = contextCopy;
    v52 = [(TUILayout *)self box];
    [v52 decelerationRate];
    LOBYTE(v56) = acceptsDrop;
    v54 = [TUIEmbeddedCollectionView renderModelWithUpdateController:v46 uid:v47 UUID:uUID identifier:identifier2 scrollIdentifier:modelIdentifierForScrollable ancestorScrollIdentifier:modelIdentifierForEnclosingScrollable scrollPolicy:v37 scrollAxis:v36 additionalSafeAreaInsets:v35 contentIntrinsicInsets:v34 pageGap:top gradientInsets:left gradientFraction:bottom acceptsDrop:right dropHandler:v73 decelerationRate:1, v62, *&v70, *&v69, *&v68, *&v67, *&v66, *&v65, *&v63, *&v64, v56, v51, v53];

    contextCopy = v71;
    [(TUILayout *)self renderModelSizeWithContext:v71];
    [v54 setSize:?];
  }

  return v54;
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform origin:(CGPoint)origin toModels:(id)models
{
  if (kind <= 3)
  {
    v10 = v7;
    v11 = v8;
    v9.receiver = self;
    v9.super_class = TUIHScrollBoxLayout;
    [(TUILayout *)&v9 appendChildRenderModelCompatibleWithKind:*&transform->a context:*&transform->b transform:*&transform->c toModels:*&transform->d, *&transform->tx, *&transform->ty];
  }
}

- (void)validateRenderModelWithContext:(id)context transactionGroup:(id)group
{
  groupCopy = group;
  v7 = [(TUIHScrollBoxLayout *)self _embeddedCollectionModelWithContext:context];
  [(TUIRenderUpdateCollectionController *)self->_renderModelUpdateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:groupCopy];
}

- (void)appendEmbeddedIdentifierMaps:(id)maps updateControllers:(id)controllers UUIDs:(id)ds
{
  mapsCopy = maps;
  controllersCopy = controllers;
  dsCopy = ds;
  v11 = [(TUILayout *)self box];
  identifier = [v11 identifier];

  if (identifier)
  {
    [mapsCopy setObject:self->_renderModelidentifierMap forKeyedSubscript:identifier];
    [controllersCopy setObject:self->_renderModelUpdateController forKeyedSubscript:identifier];
    [dsCopy setObject:self->_sectionUUID forKeyedSubscript:identifier];
  }

  v13.receiver = self;
  v13.super_class = TUIHScrollBoxLayout;
  [(TUILayout *)&v13 appendEmbeddedIdentifierMaps:mapsCopy updateControllers:controllersCopy UUIDs:dsCopy];
}

@end