@interface AUNBandViewController
- (_TtC12CoreAudioKit21AUNBandViewController)init;
- (void)hintDismissedWithRecognizer:(id)a3;
- (void)typeControlChangedWithSender:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AUNBandViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_23712D6CC();
}

- (void)hintDismissedWithRecognizer:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(AUNBandViewController *)v8 view];
  if (v5)
  {
    v6 = v5;
    [v5 removeGestureRecognizer_];

    v7 = *(&v8->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView);
    [v7 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

- (void)typeControlChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23712C784([v4 tag], 1);
}

- (_TtC12CoreAudioKit21AUNBandViewController)init
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_controls) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands) = 8;
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_noParamDisplayed) = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AUNBandViewController();
  return [(AURightEdgeControlsBaseViewController *)&v5 init];
}

@end