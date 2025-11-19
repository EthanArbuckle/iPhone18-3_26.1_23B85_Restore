@interface _AFSiriClientState
- (_AFSiriClientState)init;
- (unint64_t)notifyState;
@end

@implementation _AFSiriClientState

- (unint64_t)notifyState
{
  if (self->_hasActiveSession)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(NSMutableSet *)self->_requestUUIDs count])
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  if (self->_isListening)
  {
    v4 |= 4uLL;
  }

  if (self->_isSpeaking)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

- (_AFSiriClientState)init
{
  v6.receiver = self;
  v6.super_class = _AFSiriClientState;
  v2 = [(_AFSiriClientState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    requestUUIDs = v2->_requestUUIDs;
    v2->_requestUUIDs = v3;
  }

  return v2;
}

@end