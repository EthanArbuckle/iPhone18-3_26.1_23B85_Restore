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
  availabilitySearcher = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  timesWhenSomeAttendeesCanAttend = [availabilitySearcher timesWhenSomeAttendeesCanAttend];

  return timesWhenSomeAttendeesCanAttend;
}

- (BOOL)searchingForMoreTimes
{
  availabilitySearcher = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  searchingForMoreTimesWhenSomeAttendeesCanAttend = [availabilitySearcher searchingForMoreTimesWhenSomeAttendeesCanAttend];

  return searchingForMoreTimesWhenSomeAttendeesCanAttend;
}

- (void)searchForMoreTimes
{
  availabilitySearcher = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  [availabilitySearcher searchForMoreTimesWhenSomeAttendeesCanAttend];
}

@end