@interface EKEventEditView.EventEditViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension15EKEventEditView24EventEditViewCoordinator)init;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
@end

@implementation EKEventEditView.EventEditViewCoordinator

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10000AB24(controllerCopy, action);
}

- (_TtCV27EventKitUIRemoteUIExtension15EKEventEditView24EventEditViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end