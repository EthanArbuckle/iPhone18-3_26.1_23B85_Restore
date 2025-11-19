@interface DateAndTimeSettingsController
- (_TtC11DateAndTime29DateAndTimeSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setDesiredVerticalContentOffsetItemNamed:(id)a3;
- (void)viewDidLoad;
@end

@implementation DateAndTimeSettingsController

- (void)viewDidLoad
{
  v2 = self;
  sub_A0C0();
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_E6E8();
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

  v8 = self;
  sub_A398(a3, v7);
  sub_ACAC(v7);
}

- (_TtC11DateAndTime29DateAndTimeSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_E738();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_A678(v5, v7, a4);
}

- (void)setDesiredVerticalContentOffsetItemNamed:(id)a3
{
  if (a3)
  {
    v4 = sub_E738();
    v6 = v5;
    v8 = self;
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