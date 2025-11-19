@interface WKSyntheticFlagsChangedWebEvent
- (WKSyntheticFlagsChangedWebEvent)initWithCapsLockState:(BOOL)a3;
- (WKSyntheticFlagsChangedWebEvent)initWithKeyCode:(unsigned __int16)a3 modifiers:(unsigned int)a4 keyDown:(BOOL)a5;
- (WKSyntheticFlagsChangedWebEvent)initWithShiftState:(BOOL)a3;
@end

@implementation WKSyntheticFlagsChangedWebEvent

- (WKSyntheticFlagsChangedWebEvent)initWithKeyCode:(unsigned __int16)a3 modifiers:(unsigned int)a4 keyDown:(BOOL)a5
{
  v5 = *&a4;
  v6 = a3;
  if (a5)
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
  BYTE2(v11) = v6 == 43;
  LOWORD(v11) = v6;
  return [(WebEvent *)&v12 initWithKeyEventType:v8 timeStamp:&stru_1F1147748 characters:&stru_1F1147748 charactersIgnoringModifiers:v5 modifiers:0 isRepeating:32 withFlags:v9 withInputManagerHint:0 keyCode:v11 isTabKey:?];
}

- (WKSyntheticFlagsChangedWebEvent)initWithCapsLockState:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  return [(WKSyntheticFlagsChangedWebEvent *)self initWithKeyCode:57 modifiers:v3 keyDown:a3];
}

- (WKSyntheticFlagsChangedWebEvent)initWithShiftState:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  return [(WKSyntheticFlagsChangedWebEvent *)self initWithKeyCode:225 modifiers:v3 keyDown:a3];
}

@end