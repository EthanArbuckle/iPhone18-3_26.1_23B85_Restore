@interface AddSecureElementPassViewControllerWrapper.Coordinator
- (_TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator)init;
- (void)addSecureElementPassViewController:(id)a3 didFinishAddingSecureElementPasses:(id)a4 error:(id)a5;
@end

@implementation AddSecureElementPassViewControllerWrapper.Coordinator

- (void)addSecureElementPassViewController:(id)a3 didFinishAddingSecureElementPasses:(id)a4 error:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_23B7E31B4();
    v6 = sub_23B802600();
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_23B7E3098(v6, a5);
}

- (_TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end