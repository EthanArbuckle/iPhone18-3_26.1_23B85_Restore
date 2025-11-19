@interface EKUIInviteesViewSomeInviteesCanAttendSection
- (BOOL)searchingForMoreTimes;
- (id)headerTitle;
- (id)searcherTimeSlots;
- (void)searchForMoreTimes;
@end

@implementation EKUIInviteesViewSomeInviteesCanAttendSection

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Some Invitees Can Attend" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)searcherTimeSlots
{
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  v3 = [v2 timesWhenSomeAttendeesCanAttend];

  return v3;
}

- (BOOL)searchingForMoreTimes
{
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  v3 = [v2 searchingForMoreTimesWhenSomeAttendeesCanAttend];

  return v3;
}

- (void)searchForMoreTimes
{
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  [v2 searchForMoreTimesWhenSomeAttendeesCanAttend];
}

@end