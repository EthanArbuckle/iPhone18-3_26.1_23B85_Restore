@interface ComposePlaceholderViewModel
- (BOOL)shouldUseMultiField;
@end

@implementation ComposePlaceholderViewModel

- (BOOL)shouldUseMultiField
{
  v3 = [(ComposePlaceholderViewModel *)self ccRecipients];
  v4 = [v3 count];

  v5 = [(ComposePlaceholderViewModel *)self bccRecipients];
  v6 = v4 | [v5 count];

  return v6 == 0;
}

@end