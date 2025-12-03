@interface RCShareMemoProgressOverlayPresenter
- (void)dealloc;
- (void)dismissWithCompletion:(id)completion;
- (void)presentProgressOverlayOnViewController:(id)controller progressHandler:(id)handler cancelHandler:(id)cancelHandler;
@end

@implementation RCShareMemoProgressOverlayPresenter

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_timer);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ShareMemoProgressOverlayPresenter();
  [(RCShareMemoProgressOverlayPresenter *)&v5 dealloc];
}

- (void)presentProgressOverlayOnViewController:(id)controller progressHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(cancelHandler);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  controllerCopy = controller;
  selfCopy = self;
  sub_1000FE1F4(controllerCopy, sub_1000FF38C, v10, sub_1000FF3B4, v11);
}

- (void)dismissWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000FE07C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000FEA2C(v7, v6);
  sub_1000338B4(v7);
}

@end