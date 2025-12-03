@interface _TUIVideoViewState
- (_TUIVideoViewState)initWithMuteState:(BOOL)state;
@end

@implementation _TUIVideoViewState

- (_TUIVideoViewState)initWithMuteState:(BOOL)state
{
  v5.receiver = self;
  v5.super_class = _TUIVideoViewState;
  result = [(_TUIVideoViewState *)&v5 init];
  if (result)
  {
    result->_muted = state;
  }

  return result;
}

@end