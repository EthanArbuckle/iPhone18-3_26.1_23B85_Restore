@interface TTRISERootViewController
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithRootViewController:(id)controller;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation TTRISERootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000A4E8();
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10000A9D4(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000A9D4(ObjCClassMetadata, v6);
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithRootViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionCreateReminderInterface);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionContextExtractor;
  v16[3] = sub_10004B050();
  v16[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000B790(v16);
  controllerCopy = controller;
  sub_10004B040();
  v10 = sub_10004AE40();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(&self->super.super.super.super.isa + v8) = sub_10004AE20();
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(TTRISERootViewController *)&v15 initWithRootViewController:controllerCopy];

  return v13;
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10004C690();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000AC20(v5, v7, bundle);
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  v4 = sub_100003150(&unk_100067618, &qword_100052940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_10004C790();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10004C770();
  selfCopy = self;
  v11 = sub_10004C760();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = selfCopy;
  sub_100034184(0, 0, v8, &unk_100052950, v12);
}

@end