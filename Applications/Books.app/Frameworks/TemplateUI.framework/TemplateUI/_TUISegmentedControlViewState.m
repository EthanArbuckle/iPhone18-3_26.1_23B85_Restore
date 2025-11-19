@interface _TUISegmentedControlViewState
- (_TUISegmentedControlViewState)initWithSelectIndex:(int64_t)a3;
@end

@implementation _TUISegmentedControlViewState

- (_TUISegmentedControlViewState)initWithSelectIndex:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _TUISegmentedControlViewState;
  result = [(_TUISegmentedControlViewState *)&v5 init];
  if (result)
  {
    result->_selectIndex = a3;
  }

  return result;
}

@end