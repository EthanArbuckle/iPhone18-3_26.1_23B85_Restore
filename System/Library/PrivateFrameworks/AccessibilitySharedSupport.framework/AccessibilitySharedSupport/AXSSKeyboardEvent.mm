@interface AXSSKeyboardEvent
- (AXSSKeyChord)backupKeyChord;
- (AXSSKeyChord)keyChord;
- (BOOL)isCommandDown;
- (BOOL)isControlDown;
- (BOOL)isOptionDown;
- (BOOL)isShiftDown;
- (id)_keyChordForUnicodeCharacter:(id)character;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)modifierMask;
@end

@implementation AXSSKeyboardEvent

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setKeyCode:{-[AXSSKeyboardEvent keyCode](self, "keyCode")}];
  unicodeCharacter = [(AXSSKeyboardEvent *)self unicodeCharacter];
  [v4 setUnicodeCharacter:unicodeCharacter];

  backupUnicodeCharacter = [(AXSSKeyboardEvent *)self backupUnicodeCharacter];
  [v4 setBackupUnicodeCharacter:backupUnicodeCharacter];

  [v4 setIsDownEvent:{-[AXSSKeyboardEvent isDownEvent](self, "isDownEvent")}];
  [v4 setIsRepeatEvent:{-[AXSSKeyboardEvent isRepeatEvent](self, "isRepeatEvent")}];
  [v4 setIsModifierChangedEvent:{-[AXSSKeyboardEvent isModifierChangedEvent](self, "isModifierChangedEvent")}];
  [v4 setIsLeftCommandDown:{-[AXSSKeyboardEvent isLeftCommandDown](self, "isLeftCommandDown")}];
  [v4 setIsRightCommandDown:{-[AXSSKeyboardEvent isRightCommandDown](self, "isRightCommandDown")}];
  [v4 setIsLeftOptionDown:{-[AXSSKeyboardEvent isLeftOptionDown](self, "isLeftOptionDown")}];
  [v4 setIsRightOptionDown:{-[AXSSKeyboardEvent isRightOptionDown](self, "isRightOptionDown")}];
  [v4 setIsLeftShiftDown:{-[AXSSKeyboardEvent isLeftShiftDown](self, "isLeftShiftDown")}];
  [v4 setIsRightShiftDown:{-[AXSSKeyboardEvent isRightShiftDown](self, "isRightShiftDown")}];
  [v4 setIsFnDown:{-[AXSSKeyboardEvent isFnDown](self, "isFnDown")}];
  [v4 setIsCapsLockDown:{-[AXSSKeyboardEvent isCapsLockDown](self, "isCapsLockDown")}];
  return v4;
}

- (BOOL)isCommandDown
{
  if ([(AXSSKeyboardEvent *)self isLeftCommandDown])
  {
    return 1;
  }

  return [(AXSSKeyboardEvent *)self isRightCommandDown];
}

- (BOOL)isOptionDown
{
  if ([(AXSSKeyboardEvent *)self isLeftOptionDown])
  {
    return 1;
  }

  return [(AXSSKeyboardEvent *)self isRightOptionDown];
}

- (BOOL)isControlDown
{
  if ([(AXSSKeyboardEvent *)self isLeftControlDown])
  {
    return 1;
  }

  return [(AXSSKeyboardEvent *)self isRightControlDown];
}

- (BOOL)isShiftDown
{
  if ([(AXSSKeyboardEvent *)self isLeftShiftDown])
  {
    return 1;
  }

  return [(AXSSKeyboardEvent *)self isRightShiftDown];
}

- (int64_t)modifierMask
{
  isCommandDown = [(AXSSKeyboardEvent *)self isCommandDown];
  if ([(AXSSKeyboardEvent *)self isOptionDown])
  {
    isCommandDown |= 2uLL;
  }

  if ([(AXSSKeyboardEvent *)self isControlDown])
  {
    isCommandDown |= 4uLL;
  }

  if ([(AXSSKeyboardEvent *)self isShiftDown])
  {
    isCommandDown |= 8uLL;
  }

  if ([(AXSSKeyboardEvent *)self isFnDown])
  {
    isCommandDown |= 0x10uLL;
  }

  if ([(AXSSKeyboardEvent *)self isCapsLockDown])
  {
    return isCommandDown | 0x20;
  }

  else
  {
    return isCommandDown;
  }
}

- (id)_keyChordForUnicodeCharacter:(id)character
{
  v4 = MEMORY[0x1E695DF70];
  characterCopy = character;
  array = [v4 array];
  if ([(AXSSKeyboardEvent *)self isCommandDown])
  {
    [array addObject:@"⌘"];
  }

  if ([(AXSSKeyboardEvent *)self isControlDown])
  {
    [array addObject:@"⌃"];
  }

  if ([(AXSSKeyboardEvent *)self isOptionDown])
  {
    [array addObject:@"⌥"];
  }

  if ([(AXSSKeyboardEvent *)self isShiftDown])
  {
    [array addObject:@"⇧"];
  }

  if ([(AXSSKeyboardEvent *)self isFnDown])
  {
    [array addObject:@"Fn"];
  }

  if ([(AXSSKeyboardEvent *)self isCapsLockDown])
  {
    [array addObject:@"⇪"];
  }

  v7 = [AXSSKeyChord keyFromKeyCode:[(AXSSKeyboardEvent *)self keyCode] unicodeCharacter:characterCopy];

  if (v7)
  {
    [array addObject:v7];
    v8 = [AXSSKeyChord keyChordWithKeys:array];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AXSSKeyChord)keyChord
{
  unicodeCharacter = [(AXSSKeyboardEvent *)self unicodeCharacter];
  v4 = [(AXSSKeyboardEvent *)self _keyChordForUnicodeCharacter:unicodeCharacter];

  return v4;
}

- (AXSSKeyChord)backupKeyChord
{
  backupUnicodeCharacter = [(AXSSKeyboardEvent *)self backupUnicodeCharacter];
  v4 = [(AXSSKeyboardEvent *)self _keyChordForUnicodeCharacter:backupUnicodeCharacter];

  return v4;
}

- (id)description
{
  v23 = MEMORY[0x1E696AEC0];
  v24.receiver = self;
  v24.super_class = AXSSKeyboardEvent;
  v22 = [(AXSSKeyboardEvent *)&v24 description];
  keyCode = [(AXSSKeyboardEvent *)self keyCode];
  isDownEvent = [(AXSSKeyboardEvent *)self isDownEvent];
  isRepeatEvent = [(AXSSKeyboardEvent *)self isRepeatEvent];
  isModifierChangedEvent = [(AXSSKeyboardEvent *)self isModifierChangedEvent];
  isCommandDown = [(AXSSKeyboardEvent *)self isCommandDown];
  isLeftCommandDown = [(AXSSKeyboardEvent *)self isLeftCommandDown];
  isRightCommandDown = [(AXSSKeyboardEvent *)self isRightCommandDown];
  isOptionDown = [(AXSSKeyboardEvent *)self isOptionDown];
  isLeftOptionDown = [(AXSSKeyboardEvent *)self isLeftOptionDown];
  isRightOptionDown = [(AXSSKeyboardEvent *)self isRightOptionDown];
  isControlDown = [(AXSSKeyboardEvent *)self isControlDown];
  isShiftDown = [(AXSSKeyboardEvent *)self isShiftDown];
  isLeftShiftDown = [(AXSSKeyboardEvent *)self isLeftShiftDown];
  isRightShiftDown = [(AXSSKeyboardEvent *)self isRightShiftDown];
  isFnDown = [(AXSSKeyboardEvent *)self isFnDown];
  isCapsLockDown = [(AXSSKeyboardEvent *)self isCapsLockDown];
  unicodeCharacter = [(AXSSKeyboardEvent *)self unicodeCharacter];
  v13 = [v23 stringWithFormat:@"<%@: keyCode=%lu isDownEvent=%d isRepeatEvent=%d isModifierChangedEvent=%d isCommandDown=%d isLeftCommandDown=%d isRightCommandDown=%d isOptionDown=%d isLeftOptionDown=%d isRightOptionDown=%d isControlDown=%d isShiftDown=%d isLeftShiftDown=%d isRightShiftDown=%d isFnDown=%d isCapsLockDown=%d unicodeCharacter=%@", v22, keyCode, isDownEvent, isRepeatEvent, isModifierChangedEvent, isCommandDown, isLeftCommandDown, isRightCommandDown, isOptionDown, isLeftOptionDown, isRightOptionDown, isControlDown, isShiftDown, isLeftShiftDown, isRightShiftDown, isFnDown, isCapsLockDown, unicodeCharacter];

  return v13;
}

@end