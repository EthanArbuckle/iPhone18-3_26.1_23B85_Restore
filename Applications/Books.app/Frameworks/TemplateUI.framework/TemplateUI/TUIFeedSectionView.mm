@interface TUIFeedSectionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TUIHoverController)hoverController;
- (void)_updateClippingState;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setRenderModel:(id)model;
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

- (void)setRenderModel:(id)model
{
  modelCopy = model;
  if (self->_renderModel != modelCopy)
  {
    objc_storeStrong(&self->_renderModel, model);
    hoverRegions = [(TUIRenderModelSection *)self->_renderModel hoverRegions];
    v7 = [hoverRegions count];

    if (v7)
    {
      v15 = 0uLL;
      v16 = 0;
      if (modelCopy)
      {
        [(TUIRenderModelSection *)modelCopy config];
      }

      hoverController = [(TUIFeedSectionView *)self hoverController];
      hoverInteraction = [hoverController hoverInteraction];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_3757C;
      v12[3] = &unk_25ECA8;
      v12[4] = self;
      v13 = v15;
      v14 = v16;
      [hoverInteraction rebuildAllRegionsWithBlock:v12];
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TUIFeedSectionView;
  [(TUIFeedSectionView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TUIFeedSectionView *)self _updateClippingState];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = TUIFeedSectionView;
  [(TUIFeedSectionView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(TUIFeedSectionView *)self _updateClippingState];
}

- (void)_updateClippingState
{
  [(TUIFeedSectionView *)self bounds];
  IsEmpty = CGRectIsEmpty(v5);

  [(TUIFeedSectionView *)self setClipsToBounds:IsEmpty];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v16.receiver = self;
  v16.super_class = TUIFeedSectionView;
  v20 = [(TUIFeedSectionView *)&v16 pointInside:eventCopy withEvent:x, y];
  if (v18[3])
  {
    v8 = 1;
  }

  else
  {
    subviews = [(TUIFeedSectionView *)self subviews];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_37928;
    v11[3] = &unk_25ECD0;
    v11[4] = self;
    v14 = x;
    v15 = y;
    v12 = eventCopy;
    v13 = &v17;
    [subviews enumerateObjectsUsingBlock:v11];

    v8 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

@end