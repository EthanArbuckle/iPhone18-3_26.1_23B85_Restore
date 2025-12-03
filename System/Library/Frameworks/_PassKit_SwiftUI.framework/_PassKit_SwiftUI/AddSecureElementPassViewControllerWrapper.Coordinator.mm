@interface AddSecureElementPassViewControllerWrapper.Coordinator
- (_TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator)init;
- (void)addSecureElementPassViewController:(id)controller didFinishAddingSecureElementPasses:(id)passes error:(id)error;
@end

@implementation AddSecureElementPassViewControllerWrapper.Coordinator

- (void)addSecureElementPassViewController:(id)controller didFinishAddingSecureElementPasses:(id)passes error:(id)error
{
  passesCopy = passes;
  if (passes)
  {
    sub_23B7E31B4();
    passesCopy = sub_23B802600();
  }

  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_23B7E3098(passesCopy, error);
}

- (_TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end