@interface ASFriendListRow
- (BOOL)isEqual:(id)a3;
@end

@implementation ASFriendListRow

- (BOOL)isEqual:(id)a3
{
  v4 = [a3 friend];
  v5 = [v4 UUID];
  v6 = [(ASFriendListRow *)self friend];
  v7 = [v6 UUID];
  v8 = [v5 isEqual:v7];

  return v8;
}

@end