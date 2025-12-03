@interface _TUIToggleViewState
- (_TUIToggleViewState)initWithIsOn:(BOOL)on;
@end

@implementation _TUIToggleViewState

- (_TUIToggleViewState)initWithIsOn:(BOOL)on
{
  v5.receiver = self;
  v5.super_class = _TUIToggleViewState;
  result = [(_TUIToggleViewState *)&v5 init];
  if (result)
  {
    result->_isOn = on;
  }

  return result;
}

@end