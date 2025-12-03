@interface ContactCardActionsProviderHandler
- (void)didTapAction:(int64_t)action forContact:(id)contact;
@end

@implementation ContactCardActionsProviderHandler

- (void)didTapAction:(int64_t)action forContact:(id)contact
{
  contactCopy = contact;

  sub_199AABF0C(action, contactCopy);
}

@end