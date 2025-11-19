@interface _TUIRatingsViewState
- (_TUIRatingsViewState)initWithValue:(double)a3;
@end

@implementation _TUIRatingsViewState

- (_TUIRatingsViewState)initWithValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = _TUIRatingsViewState;
  result = [(_TUIRatingsViewState *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

@end