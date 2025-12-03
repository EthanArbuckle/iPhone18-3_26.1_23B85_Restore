@interface CarLinearFocusSequenceViewController
+ (BOOL)shouldFilterUnfocusableItems;
- (id)_linearFocusMovementSequences;
@end

@implementation CarLinearFocusSequenceViewController

+ (BOOL)shouldFilterUnfocusableItems
{
  if (qword_10195CC38 != -1)
  {
    dispatch_once(&qword_10195CC38, &stru_101623AB0);
  }

  return byte_10195CC31;
}

- (id)_linearFocusMovementSequences
{
  _maps_focusItemsForLinearMovementSequence = [(CarLinearFocusSequenceViewController *)self _maps_focusItemsForLinearMovementSequence];
  if ([_maps_focusItemsForLinearMovementSequence count])
  {
    v3 = [_UIFocusLinearMovementSequence sequenceWithItems:_maps_focusItemsForLinearMovementSequence loops:0];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

@end