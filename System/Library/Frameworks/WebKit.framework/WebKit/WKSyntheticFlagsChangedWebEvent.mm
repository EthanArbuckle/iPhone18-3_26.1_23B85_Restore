@interface WKSyntheticFlagsChangedWebEvent
- (WKSyntheticFlagsChangedWebEvent)initWithCapsLockState:(BOOL)state;
- (WKSyntheticFlagsChangedWebEvent)initWithKeyCode:(unsigned __int16)code modifiers:(unsigned int)modifiers keyDown:(BOOL)down;
- (WKSyntheticFlagsChangedWebEvent)initWithShiftState:(BOOL)state;
@end

@implementation WKSyntheticFlagsChangedWebEvent

- (WKSyntheticFlagsChangedWebEvent)initWithKeyCode:(unsigned __int16)code modifiers:(unsigned int)modifiers keyDown:(BOOL)down
{
  v5 = *&modifiers;
  codeCopy = code;
  if (down)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  v9 = GSCurrentEventTimestamp();
  v12.receiver = self;
  v12.super_class = WKSyntheticFlagsChangedWebEvent;
  BYTE2(v11) = codeCopy == 43;
  LOWORD(v11) = codeCopy;
  return [(WebEvent *)&v12 initWithKeyEventType:v8 timeStamp:&stru_1F1147748 characters:&stru_1F1147748 charactersIgnoringModifiers:v5 modifiers:0 isRepeating:32 withFlags:v9 withInputManagerHint:0 keyCode:v11 isTabKey:?];
}

- (WKSyntheticFlagsChangedWebEvent)initWithCapsLockState:(BOOL)state
{
  if (state)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  return [(WKSyntheticFlagsChangedWebEvent *)self initWithKeyCode:57 modifiers:v3 keyDown:state];
}

- (WKSyntheticFlagsChangedWebEvent)initWithShiftState:(BOOL)state
{
  if (state)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  return [(WKSyntheticFlagsChangedWebEvent *)self initWithKeyCode:225 modifiers:v3 keyDown:state];
}

@end