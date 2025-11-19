@interface AXSSKeyboardEvent
- (AXSSKeyChord)backupKeyChord;
- (AXSSKeyChord)keyChord;
- (BOOL)isCommandDown;
- (BOOL)isControlDown;
- (BOOL)isOptionDown;
- (BOOL)isShiftDown;
- (id)_keyChordForUnicodeCharacter:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)modifierMask;
@end

@implementation AXSSKeyboardEvent

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setKeyCode:{-[AXSSKeyboardEvent keyCode](self, "keyCode")}];
  v5 = [(AXSSKeyboardEvent *)self unicodeCharacter];
  [v4 setUnicodeCharacter:v5];

  v6 = [(AXSSKeyboardEvent *)self backupUnicodeCharacter];
  [v4 setBackupUnicodeCharacter:v6];

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
  v3 = [(AXSSKeyboardEvent *)self isCommandDown];
  if ([(AXSSKeyboardEvent *)self isOptionDown])
  {
    v3 |= 2uLL;
  }

  if ([(AXSSKeyboardEvent *)self isControlDown])
  {
    v3 |= 4uLL;
  }

  if ([(AXSSKeyboardEvent *)self isShiftDown])
  {
    v3 |= 8uLL;
  }

  if ([(AXSSKeyboardEvent *)self isFnDown])
  {
    v3 |= 0x10uLL;
  }

  if ([(AXSSKeyboardEvent *)self isCapsLockDown])
  {
    return v3 | 0x20;
  }

  else
  {
    return v3;
  }
}

- (id)_keyChordForUnicodeCharacter:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  if ([(AXSSKeyboardEvent *)self isCommandDown])
  {
    [v6 addObject:@"⌘"];
  }

  if ([(AXSSKeyboardEvent *)self isControlDown])
  {
    [v6 addObject:@"⌃"];
  }

  if ([(AXSSKeyboardEvent *)self isOptionDown])
  {
    [v6 addObject:@"⌥"];
  }

  if ([(AXSSKeyboardEvent *)self isShiftDown])
  {
    [v6 addObject:@"⇧"];
  }

  if ([(AXSSKeyboardEvent *)self isFnDown])
  {
    [v6 addObject:@"Fn"];
  }

  if ([(AXSSKeyboardEvent *)self isCapsLockDown])
  {
    [v6 addObject:@"⇪"];
  }

  v7 = [AXSSKeyChord keyFromKeyCode:[(AXSSKeyboardEvent *)self keyCode] unicodeCharacter:v5];

  if (v7)
  {
    [v6 addObject:v7];
    v8 = [AXSSKeyChord keyChordWithKeys:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AXSSKeyChord)keyChord
{
  v3 = [(AXSSKeyboardEvent *)self unicodeCharacter];
  v4 = [(AXSSKeyboardEvent *)self _keyChordForUnicodeCharacter:v3];

  return v4;
}

- (AXSSKeyChord)backupKeyChord
{
  v3 = [(AXSSKeyboardEvent *)self backupUnicodeCharacter];
  v4 = [(AXSSKeyboardEvent *)self _keyChordForUnicodeCharacter:v3];

  return v4;
}

- (id)description
{
  v23 = MEMORY[0x1E696AEC0];
  v24.receiver = self;
  v24.super_class = AXSSKeyboardEvent;
  v22 = [(AXSSKeyboardEvent *)&v24 description];
  v21 = [(AXSSKeyboardEvent *)self keyCode];
  v20 = [(AXSSKeyboardEvent *)self isDownEvent];
  v19 = [(AXSSKeyboardEvent *)self isRepeatEvent];
  v18 = [(AXSSKeyboardEvent *)self isModifierChangedEvent];
  v17 = [(AXSSKeyboardEvent *)self isCommandDown];
  v16 = [(AXSSKeyboardEvent *)self isLeftCommandDown];
  v15 = [(AXSSKeyboardEvent *)self isRightCommandDown];
  v3 = [(AXSSKeyboardEvent *)self isOptionDown];
  v4 = [(AXSSKeyboardEvent *)self isLeftOptionDown];
  v5 = [(AXSSKeyboardEvent *)self isRightOptionDown];
  v6 = [(AXSSKeyboardEvent *)self isControlDown];
  v7 = [(AXSSKeyboardEvent *)self isShiftDown];
  v8 = [(AXSSKeyboardEvent *)self isLeftShiftDown];
  v9 = [(AXSSKeyboardEvent *)self isRightShiftDown];
  v10 = [(AXSSKeyboardEvent *)self isFnDown];
  v11 = [(AXSSKeyboardEvent *)self isCapsLockDown];
  v12 = [(AXSSKeyboardEvent *)self unicodeCharacter];
  v13 = [v23 stringWithFormat:@"<%@: keyCode=%lu isDownEvent=%d isRepeatEvent=%d isModifierChangedEvent=%d isCommandDown=%d isLeftCommandDown=%d isRightCommandDown=%d isOptionDown=%d isLeftOptionDown=%d isRightOptionDown=%d isControlDown=%d isShiftDown=%d isLeftShiftDown=%d isRightShiftDown=%d isFnDown=%d isCapsLockDown=%d unicodeCharacter=%@", v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end