@interface GlobalSettingsViewController
- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithCoder:(id)coder;
- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(id)l withCompletion:(id)completion;
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

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (l)
  {
    l = sub_17BFC();
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

  selfCopy = self;
  sub_B110(l, v7);
  sub_B578(v7);
}

- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_17C5C();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController] = 0;
    bundleCopy = bundle;
    v7 = sub_17C3C();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController] = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GlobalSettingsViewController();
  v9 = [(GlobalSettingsViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC22PodcastsSettingsPlugin28GlobalSettingsViewController)initWithCoder:(id)coder
{
  *&self->PSViewController_opaque[OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GlobalSettingsViewController();
  coderCopy = coder;
  v5 = [(GlobalSettingsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end