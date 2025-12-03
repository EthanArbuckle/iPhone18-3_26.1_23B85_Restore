@interface ASFriendListRow
- (BOOL)isEqual:(id)equal;
@end

@implementation ASFriendListRow

- (BOOL)isEqual:(id)equal
{
  friend = [equal friend];
  uUID = [friend UUID];
  friend2 = [(ASFriendListRow *)self friend];
  uUID2 = [friend2 UUID];
  v8 = [uUID isEqual:uUID2];

  return v8;
}

@end