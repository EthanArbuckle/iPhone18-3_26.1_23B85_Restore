@interface B389PairLockedViewController
- (_TtC18SharingViewService28B389PairLockedViewController)initWithMainController:(id)a3;
- (void)dismissPressed;
- (void)learnMorePressed;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389PairLockedViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10005A8A8(a3);
}

- (void)learnMorePressed
{
  v2 = self;
  sub_10005B794();
}

- (void)dismissPressed
{
  v2 = self;
  sub_10005BC08();
}

- (_TtC18SharingViewService28B389PairLockedViewController)initWithMainController:(id)a3
{
  v3 = a3;
  v4 = sub_10006691C(v3);

  return v4;
}

@end