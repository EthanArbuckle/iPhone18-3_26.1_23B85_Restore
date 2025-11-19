@interface VOTUINemethController
- (VOTUINemethController)initWithCoder:(id)a3;
- (VOTUINemethController)initWithDismissAction:(id)a3 setBrailleUnicodeTable:(id)a4 unsetBrailleUnicodeTable:(id)a5;
- (VOTUINemethController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation VOTUINemethController

- (VOTUINemethController)initWithDismissAction:(id)a3 setBrailleUnicodeTable:(id)a4 unsetBrailleUnicodeTable:(id)a5
{
  v8 = _Block_copy(a3);
  v9 = _Block_copy(a4);
  v10 = _Block_copy(a5);
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

- (VOTUINemethController)initWithCoder:(id)a3
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2134C(a3);
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_21AB4(v8, a4);

  return v12;
}

- (VOTUINemethController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end