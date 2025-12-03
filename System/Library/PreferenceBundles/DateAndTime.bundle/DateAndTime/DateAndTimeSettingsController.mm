@interface DateAndTimeSettingsController
- (_TtC11DateAndTime29DateAndTimeSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setDesiredVerticalContentOffsetItemNamed:(id)named;
- (void)viewDidLoad;
@end

@implementation DateAndTimeSettingsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_A0C0();
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (l)
  {
    l = sub_E6E8();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = sub_ACF4;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_A398(l, v7);
  sub_ACAC(v7);
}

- (_TtC11DateAndTime29DateAndTimeSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_E738();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_A678(v5, v7, bundle);
}

- (void)setDesiredVerticalContentOffsetItemNamed:(id)named
{
  if (named)
  {
    v4 = sub_E738();
    v6 = v5;
    selfCopy = self;
    v7 = sub_91C4(v4, v6);
    if (v7 == 5)
    {
    }

    else
    {
      __chkstk_darwin(v7);
      sub_E608();
      sub_E168();
    }
  }
}

@end