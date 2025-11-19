@interface TUIVScrollBoxLayout
- (CGPoint)scrollAdditionalAXTranslation;
- (CGRect)computedErasableBounds;
- (TUIVScrollBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)_embeddedCollectionModelWithContext:(id)a3;
- (id)modelIdentifierForScrollable;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 origin:(CGPoint)a6 toModels:(id)a7;
- (void)appendEmbeddedIdentifierMaps:(id)a3 updateControllers:(id)a4 UUIDs:(id)a5;
- (void)computeLayout;
- (void)onChildTransformedSizeDidChange:(id)a3;
- (void)validateRenderModelWithContext:(id)a3 transactionGroup:(id)a4;
@end

@implementation TUIVScrollBoxLayout

- (TUIVScrollBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v9.receiver = self;
  v9.super_class = TUIVScrollBoxLayout;
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
  [(TUILayout *)self computeHeight];
  v6 = v5;
  v7 = [(TUILayout *)self children];
  v17 = [v7 firstObject];

  v8 = [(TUILayout *)self layoutAncestor];
  v9 = [v8 shouldUpdateContainingMetricsForScrollableContent];

  if (v9)
  {
    [v17 setContainingWidth:v4];
  }

  [v17 validateLayout];
  if (objc_opt_respondsToSelector())
  {
    [v17 layoutScrollContentScrollSizeWithProposedSize:{v4, v6}];
    v4 = v10;
    v6 = v11;
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v6];
  v12 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:2];
  v13 = [(TUILayout *)self box];
  [v13 anchorOffset];
  [(TUIAnchorSet *)v12 setOffset:?];

  v14 = [(TUILayout *)self controller];
  [v14 contentsScale];
  [(TUIMutableAnchorSet *)v12 finalizeWithContentsScale:?];

  [(TUILayout *)self appendChildAnchorsToSet:v12 inRoot:self];
  v15 = [(TUIMutableAnchorSet *)v12 copy];
  anchorSet = self->_anchorSet;
  self->_anchorSet = v15;
}

- (void)onChildTransformedSizeDidChange:(id)a3
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
  v15 = [(TUILayout *)self children];
  v16 = [v15 firstObject];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 layoutScrollContentShouldClipVertically])
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

- (id)_embeddedCollectionModelWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self controller];
  [v5 cachedRenderModelValidatedForLayout:self];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_13DE0C;
  v25 = sub_13DE1C;
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
  v18[2] = sub_13DE24;
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
    v42 = 0;
  }

  else
  {
    v7 = [(TUIVScrollBoxLayout *)self _embeddedCollectionModelWithContext:v6];
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
    [(TUIRenderUpdateCollectionController *)renderModelUpdateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:v13];

    v14 = [(TUILayout *)self children];
    v15 = [v14 firstObject];

    v16 = objc_opt_respondsToSelector();
    v17 = 0;
    if (v16)
    {
      v17 = [v15 scrollPolicy];
    }

    v55 = v17;
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
      [v15 layoutScrollGradientInsets];
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
      [v15 layoutScrollGradientFraction];
      v29 = v30;
      v28 = v31;
      v27 = v32;
      v26 = v33;
    }

    v34 = self->_renderModelUpdateController;
    v35 = [v6 uid];
    v36 = [v6 UUID];
    v49 = [(TUILayout *)self box];
    v47 = [v49 identifier];
    v46 = [(TUIVScrollBoxLayout *)self modelIdentifierForScrollable];
    v45 = [(TUILayout *)self modelIdentifierForEnclosingScrollable];
    v48 = [(TUILayout *)self box];
    v37 = [v48 acceptsDrop];
    v38 = [(TUILayout *)self box];
    v39 = [v38 dropHandler];
    v40 = [(TUILayout *)self box];
    [v40 decelerationRate];
    LOBYTE(v44) = v37;
    v42 = [TUIEmbeddedCollectionView renderModelWithUpdateController:v34 uid:v35 UUID:v36 identifier:v47 scrollIdentifier:v46 ancestorScrollIdentifier:v45 scrollPolicy:UIEdgeInsetsZero.top scrollAxis:left additionalSafeAreaInsets:bottom contentIntrinsicInsets:right pageGap:UIEdgeInsetsZero.top gradientInsets:left gradientFraction:bottom acceptsDrop:right dropHandler:v55 decelerationRate:2, 0, *&v53, *&v52, *&v51, *&v50, *&v29, *&v28, *&v27, *&v26, v44, v39, v41];

    [(TUILayout *)self renderModelSizeWithContext:v6];
    [v42 setSize:?];
  }

  return v42;
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 origin:(CGPoint)a6 toModels:(id)a7
{
  if (a3 <= 3)
  {
    v10 = v7;
    v11 = v8;
    v9.receiver = self;
    v9.super_class = TUIVScrollBoxLayout;
    [(TUILayout *)&v9 appendChildRenderModelCompatibleWithKind:*&a5->a context:*&a5->b transform:*&a5->c toModels:*&a5->d, *&a5->tx, *&a5->ty];
  }
}

- (void)validateRenderModelWithContext:(id)a3 transactionGroup:(id)a4
{
  v6 = a4;
  v7 = [(TUIVScrollBoxLayout *)self _embeddedCollectionModelWithContext:a3];
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
  v13.super_class = TUIVScrollBoxLayout;
  [(TUILayout *)&v13 appendEmbeddedIdentifierMaps:v8 updateControllers:v9 UUIDs:v10];
}

@end