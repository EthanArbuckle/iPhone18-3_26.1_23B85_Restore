@interface TUIFeedSectionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TUIHoverController)hoverController;
- (void)_updateClippingState;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setRenderModel:(id)a3;
@end

@implementation TUIFeedSectionView

- (TUIHoverController)hoverController
{
  hoverController = self->_hoverController;
  if (!hoverController)
  {
    v4 = objc_alloc_init(TUIHoverController);
    v5 = self->_hoverController;
    self->_hoverController = v4;

    [(TUIHoverController *)self->_hoverController updateHoverInteractionWithView:self];
    hoverController = self->_hoverController;
  }

  return hoverController;
}

- (void)setRenderModel:(id)a3
{
  v5 = a3;
  if (self->_renderModel != v5)
  {
    objc_storeStrong(&self->_renderModel, a3);
    v6 = [(TUIRenderModelSection *)self->_renderModel hoverRegions];
    v7 = [v6 count];

    if (v7)
    {
      v15 = 0uLL;
      v16 = 0;
      if (v5)
      {
        [(TUIRenderModelSection *)v5 config];
      }

      v8 = [(TUIFeedSectionView *)self hoverController];
      v9 = [v8 hoverInteraction];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_3757C;
      v12[3] = &unk_25ECA8;
      v12[4] = self;
      v13 = v15;
      v14 = v16;
      [v9 rebuildAllRegionsWithBlock:v12];
    }

    else
    {
      hoverController = self->_hoverController;
      if (hoverController)
      {
        [(TUIHoverController *)hoverController reset];
        v11 = self->_hoverController;
        self->_hoverController = 0;
      }
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TUIFeedSectionView;
  [(TUIFeedSectionView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(TUIFeedSectionView *)self _updateClippingState];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TUIFeedSectionView;
  [(TUIFeedSectionView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(TUIFeedSectionView *)self _updateClippingState];
}

- (void)_updateClippingState
{
  [(TUIFeedSectionView *)self bounds];
  IsEmpty = CGRectIsEmpty(v5);

  [(TUIFeedSectionView *)self setClipsToBounds:IsEmpty];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v16.receiver = self;
  v16.super_class = TUIFeedSectionView;
  v20 = [(TUIFeedSectionView *)&v16 pointInside:v7 withEvent:x, y];
  if (v18[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(TUIFeedSectionView *)self subviews];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_37928;
    v11[3] = &unk_25ECD0;
    v11[4] = self;
    v14 = x;
    v15 = y;
    v12 = v7;
    v13 = &v17;
    [v9 enumerateObjectsUsingBlock:v11];

    v8 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

@end