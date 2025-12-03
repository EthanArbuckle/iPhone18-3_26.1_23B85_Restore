@interface EKEventAttendeeDetailGroup
- (id)itemAtIndex:(unint64_t)index;
@end

@implementation EKEventAttendeeDetailGroup

- (id)itemAtIndex:(unint64_t)index
{
  items = [(EKEventDetailGroup *)self items];
  v4 = [items objectAtIndex:0];

  return v4;
}

@end