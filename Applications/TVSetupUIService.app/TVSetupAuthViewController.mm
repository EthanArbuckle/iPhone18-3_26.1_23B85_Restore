@interface TVSetupAuthViewController
- (_TtC16TVSetupUIService25TVSetupAuthViewController)initWithContentView:(id)a3;
- (void)didCompleteTextEntry:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVSetupAuthViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100004B0C(a3);
}

- (void)didCompleteTextEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100004DA8(v4);
}

- (_TtC16TVSetupUIService25TVSetupAuthViewController)initWithContentView:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC16TVSetupUIService25TVSetupAuthViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for TVSetupAuthViewController();
  return [(TVSetupAuthViewController *)&v6 initWithContentView:a3];
}

@end