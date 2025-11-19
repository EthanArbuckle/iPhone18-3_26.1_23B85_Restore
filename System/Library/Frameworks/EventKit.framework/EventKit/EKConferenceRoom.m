@interface EKConferenceRoom
- (EKConferenceRoom)init;
- (id)description;
@end

@implementation EKConferenceRoom

- (EKConferenceRoom)init
{
  v3.receiver = self;
  v3.super_class = EKConferenceRoom;
  result = [(EKConferenceRoom *)&v3 init];
  if (result)
  {
    result->_availability = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = EKConferenceRoom;
  v4 = [(EKConferenceRoom *)&v11 description];
  v5 = [(EKConferenceRoom *)self location];
  v6 = [v5 displayName];
  v7 = [(EKConferenceRoom *)self location];
  v8 = [v7 preferredAddress];
  v9 = [v3 stringWithFormat:@"%@ { displayName = %@, address = %@ }", v4, v6, v8];

  return v9;
}

@end