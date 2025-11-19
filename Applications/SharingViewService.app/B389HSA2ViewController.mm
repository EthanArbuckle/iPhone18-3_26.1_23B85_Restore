@interface B389HSA2ViewController
- (_TtC18SharingViewService22B389HSA2ViewController)initWithMainController:(id)a3;
- (void)dismissPressed;
- (void)updateSettingsPressed;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389HSA2ViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10005954C(a3);
}

- (void)updateSettingsPressed
{
  v2 = self;
  sub_10005A024();
}

- (void)dismissPressed
{
  v2 = self;
  sub_10005A3DC();
}

- (_TtC18SharingViewService22B389HSA2ViewController)initWithMainController:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_btn) = 0;
  v5 = OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_msgLbl;
  v6 = objc_allocWithZone(UILabel);
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v8 = OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_lockImageView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(UIImageView) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for B389HSA2ViewController();
  v9 = [(SVSBaseViewController *)&v11 initWithMainController:v7];

  return v9;
}

@end