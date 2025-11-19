@interface BookReaderPresenter
- (_TtC5Books19BookReaderPresenter)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interactionControllerForDismissal:(id)a3;
- (void)dealloc;
@end

@implementation BookReaderPresenter

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = self;
  v4 = self;
  sub_1007A2B34();
  sub_1000074E0(v6);
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(BookReaderPresenter *)&v5 dealloc];
}

- (_TtC5Books19BookReaderPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1006C51AC();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1006C51AC();

  return v6;
}

- (id)interactionControllerForDismissal:(id)a3
{
  v3 = self;
  v4 = sub_1006A96E0();
  v5 = sub_1007A1074();

  return v5;
}

@end