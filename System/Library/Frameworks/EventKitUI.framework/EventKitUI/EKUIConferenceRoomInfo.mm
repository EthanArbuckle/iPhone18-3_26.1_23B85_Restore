@interface EKUIConferenceRoomInfo
- (EKUIConferenceRoomInfo)init;
@end

@implementation EKUIConferenceRoomInfo

- (EKUIConferenceRoomInfo)init
{
  v5.receiver = self;
  v5.super_class = EKUIConferenceRoomInfo;
  v2 = [(EKUIConferenceRoomInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EKUIConferenceRoomInfo *)v2 setAvailabilityType:0];
  }

  return v3;
}

@end