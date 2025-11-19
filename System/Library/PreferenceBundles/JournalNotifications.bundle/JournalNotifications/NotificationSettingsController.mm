@interface NotificationSettingsController
- (_TtC20JournalNotifications30NotificationSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifierValueFor:(id)a3;
- (id)specifiers;
- (void)onButtonActionFor:(id)a3;
- (void)saveIfNeeded;
- (void)setSpecifierValue:(id)a3 for:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation NotificationSettingsController

- (void)viewDidLoad
{
  v2 = self;
  sub_BCC70();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_BD3E8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_BD85C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for NotificationSettingsController();
  v4 = v6.receiver;
  [(NotificationSettingsController *)&v6 viewWillDisappear:v3];
  [v4 saveIfNeeded];
  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver:v4 name:UIApplicationWillResignActiveNotification object:0];
}

- (id)specifiers
{
  v2 = self;
  sub_BDA2C();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_C5664().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (_TtC20JournalNotifications30NotificationSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_C5484();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_BEB48(v5, v7, a4);
}

- (void)setSpecifierValue:(id)a3 for:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_BF4A4(v10, a4);

  sub_C060(v10, &qword_104818);
}

- (id)specifierValueFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_BFB18(v4, v13);

  v6 = v14;
  if (v14)
  {
    v7 = sub_13DC4(v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_C6224();
    (*(v8 + 8))(v10, v6);
    sub_BED0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)onButtonActionFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_C022C(v4);
}

- (void)saveIfNeeded
{
  v2 = self;
  sub_C0AA8();
}

@end