@interface TUIVScrollBoxLayout
- (CGPoint)scrollAdditionalAXTranslation;
- (CGRect)computedErasableBounds;
- (TUIVScrollBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)_embeddedCollectionModelWithContext:(id)context;
- (id)modelIdentifierForScrollable;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform origin:(CGPoint)origin toModels:(id)models;
- (void)appendEmbeddedIdentifierMaps:(id)maps updateControllers:(id)controllers UUIDs:(id)ds;
- (void)computeLayout;
- (void)onChildTransformedSizeDidChange:(id)change;
- (void)validateRenderModelWithContext:(id)context transactionGroup:(id)group;
@end

@implementation TUIVScrollBoxLayout

- (TUIVScrollBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v9.receiver = self;
  v9.super_class = TUIVScrollBoxLayout;
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
  [(TUILayout *)self computeHeight];
  v6 = v5;
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  layoutAncestor = [(TUILayout *)self layoutAncestor];
  shouldUpdateContainingMetricsForScrollableContent = [layoutAncestor shouldUpdateContainingMetricsForScrollableContent];

  if (shouldUpdateContainingMetricsForScrollableContent)
  {
    [firstObject setContainingWidth:v4];
  }

  [firstObject validateLayout];
  if (objc_opt_respondsToSelector())
  {
    [firstObject layoutScrollContentScrollSizeWithProposedSize:{v4, v6}];
    v4 = v10;
    v6 = v11;
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v6];
  v12 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:2];
  v13 = [(TUILayout *)self box];
  [v13 anchorOffset];
  [(TUIAnchorSet *)v12 setOffset:?];

  controller = [(TUILayout *)self controller];
  [controller contentsScale];
  [(TUIMutableAnchorSet *)v12 finalizeWithContentsScale:?];

  [(TUILayout *)self appendChildAnchorsToSet:v12 inRoot:self];
  v15 = [(TUIMutableAnchorSet *)v12 copy];
  anchorSet = self->_anchorSet;
  self->_anchorSet = v15;
}

- (void)onChildTransformedSizeDidChange:(id)change
{
  if (objc_opt_respondsToSelector())
  {

    [(TUILayout *)self invalidateLayout];
  }
}

- (CGRect)computedErasableBounds
{
  v21.receiver = self;
  v21.super_class = TUIVScrollBoxLayout;
  [(TUILayout *)&v21 computedErasableBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TUILayout *)self computedBounds];
  v12 = v11;
  v14 = v13;
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![firstObject layoutScrollContentShouldClipVertically])
  {
    v14 = v10;
    v12 = v6;
  }

  v17 = v4;
  v18 = v12;
  v19 = v8;
  v20 = v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
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
  v24 = sub_13DE0C;
  v25 = sub_13DE1C;
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
  v18[2] = sub_13DE24;
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
    v42 = 0;
  }

  else
  {
    v7 = [(TUIVScrollBoxLayout *)self _embeddedCollectionModelWithContext:contextCopy];
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
    [(TUIRenderUpdateCollectionController *)renderModelUpdateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:transactionGroup];

    children = [(TUILayout *)self children];
    firstObject = [children firstObject];

    v16 = objc_opt_respondsToSelector();
    scrollPolicy = 0;
    if (v16)
    {
      scrollPolicy = [firstObject scrollPolicy];
    }

    v55 = scrollPolicy;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v21 = objc_opt_respondsToSelector();
    v22 = right;
    v23 = bottom;
    v24 = left;
    top = UIEdgeInsetsZero.top;
    if (v21)
    {
      [firstObject layoutScrollGradientInsets];
    }

    v50 = v22;
    v51 = v23;
    v52 = v24;
    v53 = top;
    v54 = v7;
    v26 = 1.0;
    v27 = 1.0;
    v28 = 1.0;
    v29 = 1.0;
    if (objc_opt_respondsToSelector())
    {
      [firstObject layoutScrollGradientFraction];
      v29 = v30;
      v28 = v31;
      v27 = v32;
      v26 = v33;
    }

    v34 = self->_renderModelUpdateController;
    v35 = [contextCopy uid];
    uUID = [contextCopy UUID];
    v49 = [(TUILayout *)self box];
    identifier2 = [v49 identifier];
    modelIdentifierForScrollable = [(TUIVScrollBoxLayout *)self modelIdentifierForScrollable];
    modelIdentifierForEnclosingScrollable = [(TUILayout *)self modelIdentifierForEnclosingScrollable];
    v48 = [(TUILayout *)self box];
    acceptsDrop = [v48 acceptsDrop];
    v38 = [(TUILayout *)self box];
    dropHandler = [v38 dropHandler];
    v40 = [(TUILayout *)self box];
    [v40 decelerationRate];
    LOBYTE(v44) = acceptsDrop;
    v42 = [TUIEmbeddedCollectionView renderModelWithUpdateController:v34 uid:v35 UUID:uUID identifier:identifier2 scrollIdentifier:modelIdentifierForScrollable ancestorScrollIdentifier:modelIdentifierForEnclosingScrollable scrollPolicy:UIEdgeInsetsZero.top scrollAxis:left additionalSafeAreaInsets:bottom contentIntrinsicInsets:right pageGap:UIEdgeInsetsZero.top gradientInsets:left gradientFraction:bottom acceptsDrop:right dropHandler:v55 decelerationRate:2, 0, *&v53, *&v52, *&v51, *&v50, *&v29, *&v28, *&v27, *&v26, v44, dropHandler, v41];

    [(TUILayout *)self renderModelSizeWithContext:contextCopy];
    [v42 setSize:?];
  }

  return v42;
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform origin:(CGPoint)origin toModels:(id)models
{
  if (kind <= 3)
  {
    v10 = v7;
    v11 = v8;
    v9.receiver = self;
    v9.super_class = TUIVScrollBoxLayout;
    [(TUILayout *)&v9 appendChildRenderModelCompatibleWithKind:*&transform->a context:*&transform->b transform:*&transform->c toModels:*&transform->d, *&transform->tx, *&transform->ty];
  }
}

- (void)validateRenderModelWithContext:(id)context transactionGroup:(id)group
{
  groupCopy = group;
  v7 = [(TUIVScrollBoxLayout *)self _embeddedCollectionModelWithContext:context];
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
  v13.super_class = TUIVScrollBoxLayout;
  [(TUILayout *)&v13 appendEmbeddedIdentifierMaps:mapsCopy updateControllers:controllersCopy UUIDs:dsCopy];
}

@end