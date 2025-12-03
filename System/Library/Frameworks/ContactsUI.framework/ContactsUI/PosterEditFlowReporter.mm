@interface PosterEditFlowReporter
- (void)dealloc;
- (void)didCancelFromAvatarEditor;
- (void)didCancelFromCarousel;
- (void)didCancelFromOnboardingNew;
- (void)didCancelFromOnboardingWelcome;
- (void)didCancelFromPosterEditor;
- (void)didDelete;
- (void)didFinish;
- (void)didModifyAvatar;
- (void)didModifyPoster;
- (void)didSkipAvatar;
- (void)didSkipPoster;
- (void)startingFromContactsWithMeCard:(BOOL)card isEditing:(BOOL)editing;
- (void)startingFromOnboardingWithMeCard:(BOOL)card;
- (void)startingFromSNAPWithMeCard:(BOOL)card;
- (void)willEditAvatar;
- (void)willEditCreatingNew;
- (void)willEditPoster;
@end

@implementation PosterEditFlowReporter

- (void)dealloc
{
  selfCopy = self;
  sub_199B1422C();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for PosterEditFlowReporter();
  [(PosterEditFlowReporter *)&v3 dealloc];
}

- (void)startingFromSNAPWithMeCard:(BOOL)card
{
  selfCopy = self;
  sub_199B12CF8(card);
}

- (void)startingFromContactsWithMeCard:(BOOL)card isEditing:(BOOL)editing
{
  selfCopy = self;
  sub_199B12EC4(card, editing);
}

- (void)startingFromOnboardingWithMeCard:(BOOL)card
{
  selfCopy = self;
  sub_199B13134(card);
}

- (void)willEditCreatingNew
{
  selfCopy = self;
  sub_199B1330C();
}

- (void)willEditAvatar
{
  selfCopy = self;
  sub_199B1336C();
}

- (void)willEditPoster
{
  selfCopy = self;
  sub_199B133CC();
}

- (void)didModifyAvatar
{
  selfCopy = self;
  sub_199B1342C();
}

- (void)didModifyPoster
{
  selfCopy = self;
  sub_199B1348C();
}

- (void)didSkipAvatar
{
  selfCopy = self;
  sub_199B134EC();
}

- (void)didSkipPoster
{
  selfCopy = self;
  sub_199B1354C();
}

- (void)didCancelFromCarousel
{
  selfCopy = self;
  sub_199B1371C();
}

- (void)didCancelFromOnboardingWelcome
{
  selfCopy = self;
  sub_199B138E4();
}

- (void)didCancelFromOnboardingNew
{
  selfCopy = self;
  sub_199B13AA8();
}

- (void)didCancelFromAvatarEditor
{
  selfCopy = self;
  sub_199B13C70();
}

- (void)didCancelFromPosterEditor
{
  selfCopy = self;
  sub_199B13E70();
}

- (void)didDelete
{
  selfCopy = self;
  sub_199B14070();
}

- (void)didFinish
{
  selfCopy = self;
  sub_199B1422C();
}

@end