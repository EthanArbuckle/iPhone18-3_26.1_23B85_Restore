@interface TTRITemplateSharingOffineViewController
- (_TtC9Reminders39TTRITemplateSharingOffineViewController)initWithCoder:(id)a3;
- (_TtC9Reminders39TTRITemplateSharingOffineViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapClose:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRITemplateSharingOffineViewController

- (_TtC9Reminders39TTRITemplateSharingOffineViewController)initWithCoder:(id)a3
{
  if (qword_100767200 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10077FA20);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("init(coder:) has not been implemented", 37, 2);
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100338DB8();
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003395A0();
}

- (void)didTapClose:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10033919C();

  sub_10000B070(v6);
}

- (_TtC9Reminders39TTRITemplateSharingOffineViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = qword_100766EF8;
  v5 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10076B0D8);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10009FC2C(1);
}

@end