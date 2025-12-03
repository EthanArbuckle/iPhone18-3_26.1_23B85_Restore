@interface ComposePlaceholderViewModel
- (BOOL)shouldUseMultiField;
@end

@implementation ComposePlaceholderViewModel

- (BOOL)shouldUseMultiField
{
  ccRecipients = [(ComposePlaceholderViewModel *)self ccRecipients];
  v4 = [ccRecipients count];

  bccRecipients = [(ComposePlaceholderViewModel *)self bccRecipients];
  v6 = v4 | [bccRecipients count];

  return v6 == 0;
}

@end