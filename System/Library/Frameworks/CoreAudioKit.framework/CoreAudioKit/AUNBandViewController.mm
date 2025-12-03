@interface AUNBandViewController
- (_TtC12CoreAudioKit21AUNBandViewController)init;
- (void)hintDismissedWithRecognizer:(id)recognizer;
- (void)typeControlChangedWithSender:(id)sender;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AUNBandViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23712D6CC();
}

- (void)hintDismissedWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  view = [(AUNBandViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view removeGestureRecognizer_];

    v7 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView);
    [v7 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

- (void)typeControlChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23712C784([senderCopy tag], 1);
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