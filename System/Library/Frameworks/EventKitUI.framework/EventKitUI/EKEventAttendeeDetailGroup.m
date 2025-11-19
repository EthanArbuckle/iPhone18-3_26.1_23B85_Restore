@interface EKEventAttendeeDetailGroup
- (id)itemAtIndex:(unint64_t)a3;
@end

@implementation EKEventAttendeeDetailGroup

- (id)itemAtIndex:(unint64_t)a3
{
  v3 = [(EKEventDetailGroup *)self items];
  v4 = [v3 objectAtIndex:0];

  return v4;
}

@end