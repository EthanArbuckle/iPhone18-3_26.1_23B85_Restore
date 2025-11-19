@interface HearingTestArticleProvider
- (id)hearingLossArticleViewController;
@end

@implementation HearingTestArticleProvider

- (id)hearingLossArticleViewController
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29D65235C();

  return v2;
}

@end