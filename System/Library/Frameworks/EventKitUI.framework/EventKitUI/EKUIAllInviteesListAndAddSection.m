@interface EKUIAllInviteesListAndAddSection
- (EKUIAllInviteesListAndAddSection)init;
@end

@implementation EKUIAllInviteesListAndAddSection

- (EKUIAllInviteesListAndAddSection)init
{
  v3.receiver = self;
  v3.super_class = EKUIAllInviteesListAndAddSection;
  return [(EKUIInviteesViewRespondedInviteesSection *)&v3 initWithResponseType:3];
}

@end