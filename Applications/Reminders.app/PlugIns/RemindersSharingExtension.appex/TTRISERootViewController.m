@interface TTRISERootViewController
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithRootViewController:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRISERootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000A4E8();
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10000A9D4(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000A9D4(ObjCClassMetadata, v6);
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithRootViewController:(id)a3
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
  v9 = a3;
  sub_10004B040();
  v10 = sub_10004AE40();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(&self->super.super.super.super.isa + v8) = sub_10004AE20();
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(TTRISERootViewController *)&v15 initWithRootViewController:v9];

  return v13;
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10004C690();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000AC20(v5, v7, a4);
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = sub_100003150(&unk_100067618, &qword_100052940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_10004C790();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10004C770();
  v10 = self;
  v11 = sub_10004C760();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_100034184(0, 0, v8, &unk_100052950, v12);
}

@end