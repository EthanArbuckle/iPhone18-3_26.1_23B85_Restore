@interface AddPassesViewControllerWrapper.AddPassCoordinator
- (_TtCV16_PassKit_SwiftUIP33_CEF41C66ABDFF5E01A9463BEC59EB36F30AddPassesViewControllerWrapper18AddPassCoordinator)init;
- (void)addPassesViewControllerDidFinish:(id)a3;
- (void)dealloc;
@end

@implementation AddPassesViewControllerWrapper.AddPassCoordinator

- (void)dealloc
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186E10, &qword_23B804CD0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 16) = xmmword_23B804C50;
  *(v3 + 56) = v4;
  *(v3 + 32) = 0x74696E696564;
  *(v3 + 40) = 0xE600000000000000;
  v5 = self;
  sub_23B8027B0();

  v6.receiver = v5;
  v6.super_class = type metadata accessor for AddPassesViewControllerWrapper.AddPassCoordinator();
  [(AddPassesViewControllerWrapper.AddPassCoordinator *)&v6 dealloc];
}

- (void)addPassesViewControllerDidFinish:(id)a3
{
  v3 = (self + OBJC_IVAR____TtCV16_PassKit_SwiftUIP33_CEF41C66ABDFF5E01A9463BEC59EB36F30AddPassesViewControllerWrapper18AddPassCoordinator_completion);
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV16_PassKit_SwiftUIP33_CEF41C66ABDFF5E01A9463BEC59EB36F30AddPassesViewControllerWrapper18AddPassCoordinator_completion);
  if (v4)
  {
    v6 = v3[1];
    v7 = objc_opt_self();
    v8 = a3;
    v9 = self;
    sub_23B7ED858(v4);
    v4([v7 didAddPasses_]);

    sub_23B7E3200(v4);
    v10 = *v3;
  }

  else
  {
    v11 = self;
    v10 = 0;
  }

  v12 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_23B7E3200(v10);
}

- (_TtCV16_PassKit_SwiftUIP33_CEF41C66ABDFF5E01A9463BEC59EB36F30AddPassesViewControllerWrapper18AddPassCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end