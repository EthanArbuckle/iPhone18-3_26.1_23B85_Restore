@interface EKUIInviteesViewAvailabilityCell
+ (id)labelText;
@end

@implementation EKUIInviteesViewAvailabilityCell

+ (id)labelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"View Availability" value:&stru_1F4EF6790 table:0];

  return v3;
}

@end