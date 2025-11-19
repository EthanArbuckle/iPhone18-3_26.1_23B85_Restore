@interface AmbientMatchingFlowView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)appleMusicButtonAction;
- (void)cancelAction;
- (void)displayMatchedMediaItemAction;
- (void)retryAction;
@end

@implementation AmbientMatchingFlowView

- (void)appleMusicButtonAction
{
  v2 = self;
  sub_10005F870();
}

- (void)cancelAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler);
  v4 = self;

  v2(v3);
}

- (void)retryAction
{
  v2 = self;
  sub_10005FB78();
}

- (void)displayMatchedMediaItemAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler);
    v5 = self;
    v4 = v2;

    v3(v4);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_10005FF48(a4, x, y);

  return v10;
}

@end