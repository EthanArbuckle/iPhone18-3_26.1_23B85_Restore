@interface FooterContaineeAction
- (void)loadSubtitleWithCompletion:(id)completion;
@end

@implementation FooterContaineeAction

- (void)loadSubtitleWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, &stru_1016631F0);
  }
}

@end