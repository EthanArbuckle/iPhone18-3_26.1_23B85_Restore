@interface NotificationSettingsController
- (_TtC20JournalNotifications30NotificationSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifierValueFor:(id)for;
- (id)specifiers;
- (void)onButtonActionFor:(id)for;
- (void)saveIfNeeded;
- (void)setSpecifierValue:(id)value for:(id)for;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation NotificationSettingsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_BCC70();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_BD3E8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_BD85C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for NotificationSettingsController();
  v4 = v6.receiver;
  [(NotificationSettingsController *)&v6 viewWillDisappear:disappearCopy];
  [v4 saveIfNeeded];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:v4 name:UIApplicationWillResignActiveNotification object:0];
}

- (id)specifiers
{
  selfCopy = self;
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

- (_TtC20JournalNotifications30NotificationSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_C5484();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_BEB48(v5, v7, bundle);
}

- (void)setSpecifierValue:(id)value for:(id)for
{
  if (value)
  {
    forCopy = for;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    forCopy2 = for;
    selfCopy2 = self;
  }

  sub_BF4A4(v10, for);

  sub_C060(v10, &qword_104818);
}

- (id)specifierValueFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_BFB18(forCopy, v13);

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

- (void)onButtonActionFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_C022C(forCopy);
}

- (void)saveIfNeeded
{
  selfCopy = self;
  sub_C0AA8();
}

@end