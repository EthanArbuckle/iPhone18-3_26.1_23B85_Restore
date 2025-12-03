@interface VOTUINemethController
- (VOTUINemethController)initWithCoder:(id)coder;
- (VOTUINemethController)initWithDismissAction:(id)action setBrailleUnicodeTable:(id)table unsetBrailleUnicodeTable:(id)unicodeTable;
- (VOTUINemethController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation VOTUINemethController

- (VOTUINemethController)initWithDismissAction:(id)action setBrailleUnicodeTable:(id)table unsetBrailleUnicodeTable:(id)unicodeTable
{
  v8 = _Block_copy(action);
  v9 = _Block_copy(table);
  v10 = _Block_copy(unicodeTable);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = (self + OBJC_IVAR___VOTUINemethController_dismissAction);
  *v14 = sub_21D1C;
  v14[1] = v11;
  v15 = (self + OBJC_IVAR___VOTUINemethController_setBrailleUnicodeTable);
  *v15 = sub_21D4C;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___VOTUINemethController_unsetBrailleUnicodeTable);
  *v16 = sub_21D4C;
  v16[1] = v13;
  v18.receiver = self;
  v18.super_class = type metadata accessor for VOTUINemethController();
  return [(VOTUINemethController *)&v18 initWithNibName:0 bundle:0];
}

- (VOTUINemethController)initWithCoder:(id)coder
{
  result = sub_2639C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for VOTUINemethController();
  [(VOTUINemethController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2134C(appear);
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = sub_21AB4(controllerCopy, viewController);

  return v12;
}

- (VOTUINemethController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end