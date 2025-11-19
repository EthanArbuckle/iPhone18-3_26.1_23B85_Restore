@interface EKUIInviteesViewLegacyAddInviteeCell
+ (id)labelText;
@end

@implementation EKUIInviteesViewLegacyAddInviteeCell

+ (id)labelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cell title - Add Invitees" value:@"Add Invitees" table:0];

  return v3;
}

@end