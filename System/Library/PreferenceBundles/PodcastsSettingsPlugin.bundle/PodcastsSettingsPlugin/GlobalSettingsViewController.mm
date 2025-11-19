@interface GlobalSettingsViewController
- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithCoder:(id)a3;
- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation GlobalSettingsViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for GlobalSettingsViewController();
  v2 = v6.receiver;
  [(GlobalSettingsViewController *)&v6 viewDidLoad];
  v7._countAndFlagsBits = 0x5354534143444F50;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_1737C(v7, v8);
  v3 = sub_17C3C();

  [v2 setTitle:{v3, v6.receiver, v6.super_class}];

  v4.super.super.isa = sub_AEF8();
  isa = v4.super.super.isa;
  sub_17D5C(v4, 0);
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_17BFC();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = sub_B5C0;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_B110(a3, v7);
  sub_B578(v7);
}

- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_17C5C();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController] = 0;
    v6 = a4;
    v7 = sub_17C3C();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GlobalSettingsViewController();
  v9 = [(GlobalSettingsViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithCoder:(id)a3
{
  *&self->PSViewController_opaque[OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GlobalSettingsViewController();
  v4 = a3;
  v5 = [(GlobalSettingsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end