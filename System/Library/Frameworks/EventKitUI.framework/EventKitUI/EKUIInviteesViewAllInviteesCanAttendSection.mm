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
  availabilitySearcher = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  timesWhenAllAttendeesCanAttend = [availabilitySearcher timesWhenAllAttendeesCanAttend];

  return timesWhenAllAttendeesCanAttend;
}

- (BOOL)searchingForMoreTimes
{
  availabilitySearcher = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  searchingForMoreTimesWhenAllAttendeesCanAttend = [availabilitySearcher searchingForMoreTimesWhenAllAttendeesCanAttend];

  return searchingForMoreTimesWhenAllAttendeesCanAttend;
}

- (void)searchForMoreTimes
{
  availabilitySearcher = [(EKUIInviteesViewAlternativeTimeSection *)self availabilitySearcher];
  [availabilitySearcher searchForMoreTimesWhenAllAttendeesCanAttend];
}

@end