@interface EKUIInviteesViewAllInviteesCanAttendSection
- (BOOL)searchingForMoreTimes;
- (id)headerTitle;
- (id)searcherTimeSlots;
- (void)searchForMoreTimes;
@end

@implementation EKUIInviteesViewAllInviteesCanAttendSection

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"All Invitees Can Attend" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)searcherTimeSlots
{
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  v3 = [v2 timesWhenAllAttendeesCanAttend];

  return v3;
}

- (BOOL)searchingForMoreTimes
{
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  v3 = [v2 searchingForMoreTimesWhenAllAttendeesCanAttend];

  return v3;
}

- (void)searchForMoreTimes
{
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  [v2 searchForMoreTimesWhenAllAttendeesCanAttend];
}

@end