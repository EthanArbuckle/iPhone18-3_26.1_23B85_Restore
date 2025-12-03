@interface _TUIRatingsViewState
- (_TUIRatingsViewState)initWithValue:(double)value;
@end

@implementation _TUIRatingsViewState

- (_TUIRatingsViewState)initWithValue:(double)value
{
  v5.receiver = self;
  v5.super_class = _TUIRatingsViewState;
  result = [(_TUIRatingsViewState *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

@end