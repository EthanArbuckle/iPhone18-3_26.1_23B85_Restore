@interface _TUISegmentedControlViewState
- (_TUISegmentedControlViewState)initWithSelectIndex:(int64_t)index;
@end

@implementation _TUISegmentedControlViewState

- (_TUISegmentedControlViewState)initWithSelectIndex:(int64_t)index
{
  v5.receiver = self;
  v5.super_class = _TUISegmentedControlViewState;
  result = [(_TUISegmentedControlViewState *)&v5 init];
  if (result)
  {
    result->_selectIndex = index;
  }

  return result;
}

@end