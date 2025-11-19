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
- (void)startingFromContactsWithMeCard:(BOOL)a3 isEditing:(BOOL)a4;
- (void)startingFromOnboardingWithMeCard:(BOOL)a3;
- (void)startingFromSNAPWithMeCard:(BOOL)a3;
- (void)willEditAvatar;
- (void)willEditCreatingNew;
- (void)willEditPoster;
@end

@implementation PosterEditFlowReporter

- (void)dealloc
{
  v2 = self;
  sub_199B1422C();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for PosterEditFlowReporter();
  [(PosterEditFlowReporter *)&v3 dealloc];
}

- (void)startingFromSNAPWithMeCard:(BOOL)a3
{
  v4 = self;
  sub_199B12CF8(a3);
}

- (void)startingFromContactsWithMeCard:(BOOL)a3 isEditing:(BOOL)a4
{
  v6 = self;
  sub_199B12EC4(a3, a4);
}

- (void)startingFromOnboardingWithMeCard:(BOOL)a3
{
  v4 = self;
  sub_199B13134(a3);
}

- (void)willEditCreatingNew
{
  v2 = self;
  sub_199B1330C();
}

- (void)willEditAvatar
{
  v2 = self;
  sub_199B1336C();
}

- (void)willEditPoster
{
  v2 = self;
  sub_199B133CC();
}

- (void)didModifyAvatar
{
  v2 = self;
  sub_199B1342C();
}

- (void)didModifyPoster
{
  v2 = self;
  sub_199B1348C();
}

- (void)didSkipAvatar
{
  v2 = self;
  sub_199B134EC();
}

- (void)didSkipPoster
{
  v2 = self;
  sub_199B1354C();
}

- (void)didCancelFromCarousel
{
  v2 = self;
  sub_199B1371C();
}

- (void)didCancelFromOnboardingWelcome
{
  v2 = self;
  sub_199B138E4();
}

- (void)didCancelFromOnboardingNew
{
  v2 = self;
  sub_199B13AA8();
}

- (void)didCancelFromAvatarEditor
{
  v2 = self;
  sub_199B13C70();
}

- (void)didCancelFromPosterEditor
{
  v2 = self;
  sub_199B13E70();
}

- (void)didDelete
{
  v2 = self;
  sub_199B14070();
}

- (void)didFinish
{
  v2 = self;
  sub_199B1422C();
}

@end