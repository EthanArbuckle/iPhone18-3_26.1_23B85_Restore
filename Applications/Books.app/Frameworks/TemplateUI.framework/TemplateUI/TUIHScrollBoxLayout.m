@interface TUIHScrollBoxLayout
- (CGPoint)scrollAdditionalAXTranslation;
- (CGRect)computedErasableBounds;
- (TUIHScrollBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)_embeddedCollectionModelWithContext:(id)a3;
- (id)modelIdentifierForScrollable;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)_updateAnchorSet;
- (void)_validateLayout;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 origin:(CGPoint)a6 toModels:(id)a7;
- (void)appendEmbeddedIdentifierMaps:(id)a3 updateControllers:(id)a4 UUIDs:(id)a5;
- (void)computeLayout;
- (void)onChildTransformedSizeDidChange:(id)a3;
- (void)validateRenderModelWithContext:(id)a3 transactionGroup:(id)a4;
@end

@implementation TUIHScrollBoxLayout

- (TUIHScrollBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v9.receiver = self;
  v9.super_class = TUIHScrollBoxLayout;
  v5 = [(TUILayout *)&v9 initWithModel:a3 parent:a4 controller:a5];
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
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  if (objc_opt_respondsToSelector())
  {
    [v4 layoutScrollGradientInsets];
    left = v5;
  }

  else
  {
    left = UIEdgeInsetsZero.left;
  }

  v7 = [(TUILayout *)self controller];
  [v7 contentsScale];
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
  v5 = [(TUILayout *)self children];
  v12 = [v5 firstObject];

  v6 = [(TUILayout *)self layoutAncestor];
  v7 = [v6 shouldUpdateContainingMetricsForScrollableContent];

  if (v7)
  {
    [v12 setContainingWidth:NAN];
  }

  [v12 validateLayout];
  [v12 computedTransformedSize];
  v9 = v8;
  if (objc_opt_respondsToSelector())
  {
    [v12 layoutScrollContentScrollSizeWithProposedSize:{v4, v9}];
    v4 = v10;
    v9 = v11;
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v9];
  [(TUIHScrollBoxLayout *)self _updateAnchorSet];
}

- (void)onChildTransformedSizeDidChange:(id)a3
{
  v4 = a3;
  [(TUIHScrollBoxLayout *)self _updateAnchorSet];
  [(TUILayout *)self computedNaturalSize];
  v6 = v5;
  [v4 computedTransformedSize];
  v8 = v7;

  if (v6 != v8)
  {

    [(TUILayout *)self invalidateLayout];
  }
}

- (void)_updateAnchorSet
{
  v10 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:1];
  v3 = [(TUILayout *)self layout];
  v4 = [v3 computedLayoutDirection];
  v5 = [(TUILayout *)self box];
  [v5 anchorOffset];
  if (v4 == &dword_0 + 2)
  {
    v6 = -v6;
  }

  [(TUIAnchorSet *)v10 setOffset:v6];

  [(TUILayout *)self appendChildAnchorsToSet:v10 inRoot:self];
  v7 = [(TUILayout *)self controller];
  [v7 contentsScale];
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

- (id)_embeddedCollectionModelWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self controller];
  [v5 cachedRenderModelValidatedForLayout:self];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_13B1D8;
  v25 = sub_13B1E8;
  v26 = 0;
  if (!self->_renderModelidentifierMap)
  {
    v6 = [(TUILayout *)self box];
    v7 = [v6 identifier];
    v8 = [v4 embeddedIdentifierMapForIdentifier:v7];
    renderModelidentifierMap = self->_renderModelidentifierMap;
    self->_renderModelidentifierMap = v8;
  }

  if (!self->_sectionUUID)
  {
    v10 = [(TUILayout *)self box];
    v11 = [v10 identifier];
    v12 = [v4 embeddedUUIDForIdentifier:v11];
    sectionUUID = self->_sectionUUID;
    self->_sectionUUID = v12;
  }

  v14 = self->_renderModelidentifierMap;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_13B1F0;
  v18[3] = &unk_25DC78;
  v18[4] = self;
  v15 = v4;
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
  v3 = [v2 modelIdentifierForScrollable];

  return v3;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  if (a3 < 4)
  {
    v54 = 0;
  }

  else
  {
    v7 = [(TUIHScrollBoxLayout *)self _embeddedCollectionModelWithContext:v6];
    renderModelUpdateController = self->_renderModelUpdateController;
    if (!renderModelUpdateController)
    {
      v9 = [(TUILayout *)self box];
      v10 = [v9 identifier];
      v11 = [v6 embeddedUpdateControllerForIdentifier:v10 renderModel:0];
      v12 = self->_renderModelUpdateController;
      self->_renderModelUpdateController = v11;

      renderModelUpdateController = self->_renderModelUpdateController;
    }

    v13 = [v6 transactionGroup];
    v72 = v7;
    [(TUIRenderUpdateCollectionController *)renderModelUpdateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:v13];

    v14 = [(TUILayout *)self children];
    v15 = [v14 firstObject];

    v16 = objc_opt_respondsToSelector();
    v17 = 0;
    if (v16)
    {
      v17 = [v15 scrollPolicy];
    }

    v73 = v17;
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
      [v15 layoutScrollGradientInsets];
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
      [v15 layoutScrollGradientFraction];
    }

    v63 = v29;
    v64 = v28;
    v65 = v30;
    v66 = v31;
    v32 = objc_opt_respondsToSelector();
    v33 = 0;
    if (v32)
    {
      [v15 layoutScrollPageGap];
    }

    v62 = v33;
    v34 = right;
    v35 = bottom;
    v36 = left;
    v37 = UIEdgeInsetsZero.top;
    if (objc_opt_respondsToSelector())
    {
      [v15 layoutAdditionalSafeAreaInsets];
      v37 = v38;
      v36 = v39;
      v35 = v40;
      v34 = v41;
    }

    if (objc_opt_respondsToSelector())
    {
      [v15 layoutScrollContentIntrinsicInsets];
      top = v42;
      left = v43;
      bottom = v44;
      right = v45;
    }

    v46 = self->_renderModelUpdateController;
    v47 = [v6 uid];
    v48 = [v6 UUID];
    v61 = [(TUILayout *)self box];
    v59 = [v61 identifier];
    v58 = [(TUIHScrollBoxLayout *)self modelIdentifierForScrollable];
    v57 = [(TUILayout *)self modelIdentifierForEnclosingScrollable];
    v60 = [(TUILayout *)self box];
    v49 = [v60 acceptsDrop];
    v50 = [(TUILayout *)self box];
    [v50 dropHandler];
    v51 = v71 = v6;
    v52 = [(TUILayout *)self box];
    [v52 decelerationRate];
    LOBYTE(v56) = v49;
    v54 = [TUIEmbeddedCollectionView renderModelWithUpdateController:v46 uid:v47 UUID:v48 identifier:v59 scrollIdentifier:v58 ancestorScrollIdentifier:v57 scrollPolicy:v37 scrollAxis:v36 additionalSafeAreaInsets:v35 contentIntrinsicInsets:v34 pageGap:top gradientInsets:left gradientFraction:bottom acceptsDrop:right dropHandler:v73 decelerationRate:1, v62, *&v70, *&v69, *&v68, *&v67, *&v66, *&v65, *&v63, *&v64, v56, v51, v53];

    v6 = v71;
    [(TUILayout *)self renderModelSizeWithContext:v71];
    [v54 setSize:?];
  }

  return v54;
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 origin:(CGPoint)a6 toModels:(id)a7
{
  if (a3 <= 3)
  {
    v10 = v7;
    v11 = v8;
    v9.receiver = self;
    v9.super_class = TUIHScrollBoxLayout;
    [(TUILayout *)&v9 appendChildRenderModelCompatibleWithKind:*&a5->a context:*&a5->b transform:*&a5->c toModels:*&a5->d, *&a5->tx, *&a5->ty];
  }
}

- (void)validateRenderModelWithContext:(id)a3 transactionGroup:(id)a4
{
  v6 = a4;
  v7 = [(TUIHScrollBoxLayout *)self _embeddedCollectionModelWithContext:a3];
  [(TUIRenderUpdateCollectionController *)self->_renderModelUpdateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:v6];
}

- (void)appendEmbeddedIdentifierMaps:(id)a3 updateControllers:(id)a4 UUIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUILayout *)self box];
  v12 = [v11 identifier];

  if (v12)
  {
    [v8 setObject:self->_renderModelidentifierMap forKeyedSubscript:v12];
    [v9 setObject:self->_renderModelUpdateController forKeyedSubscript:v12];
    [v10 setObject:self->_sectionUUID forKeyedSubscript:v12];
  }

  v13.receiver = self;
  v13.super_class = TUIHScrollBoxLayout;
  [(TUILayout *)&v13 appendEmbeddedIdentifierMaps:v8 updateControllers:v9 UUIDs:v10];
}

@end