@interface DockableEventContainerController
- (_TtC9MobileCal32DockableEventContainerController)initWithCoder:(id)coder;
- (_TtC9MobileCal32DockableEventContainerController)initWithFullViewController:(id)controller;
- (_TtC9MobileCal32DockableEventContainerController)initWithNibName:(id)name bundle:(id)bundle;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DockableEventContainerController

- (_TtC9MobileCal32DockableEventContainerController)initWithFullViewController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_100161A80(controllerCopy);

  return v4;
}

- (_TtC9MobileCal32DockableEventContainerController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for DockedEventView()) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockable) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DockableEventContainerController();
  v4 = v5.receiver;
  [(DockableEventContainerController *)&v5 viewWillAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController] setDockable:{1, v5.receiver, v5.super_class}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DockableEventContainerController();
  v4 = v5.receiver;
  [(DockableEventContainerController *)&v5 viewDidDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController] cleanUpAfterDockDismissed];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10016143C();
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_100161710(identifierCopy);
}

- (_TtC9MobileCal32DockableEventContainerController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end