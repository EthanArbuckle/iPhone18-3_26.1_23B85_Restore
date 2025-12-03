@interface AmbientMatchingFlowView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)appleMusicButtonAction;
- (void)cancelAction;
- (void)displayMatchedMediaItemAction;
- (void)retryAction;
@end

@implementation AmbientMatchingFlowView

- (void)appleMusicButtonAction
{
  selfCopy = self;
  sub_10005F870();
}

- (void)cancelAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler);
  selfCopy = self;

  v2(v3);
}

- (void)retryAction
{
  selfCopy = self;
  sub_10005FB78();
}

- (void)displayMatchedMediaItemAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler);
    selfCopy = self;
    v4 = v2;

    v3(v4);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_10005FF48(event, x, y);

  return v10;
}

@end