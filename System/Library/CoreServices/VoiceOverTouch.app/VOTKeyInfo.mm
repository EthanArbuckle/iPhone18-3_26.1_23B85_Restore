@interface VOTKeyInfo
- (BOOL)isBrightnessKey;
- (BOOL)isCapsLockKeyDown;
- (BOOL)isCapsLockKeyUp;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVOTKeyInfo:(id)info;
- (BOOL)keyDown;
- (BOOL)keyUp;
- (NSString)characters;
- (NSString)originalCharacters;
- (VOTKeyInfo)initWithEventRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)mediaKeyCode;
- (unint64_t)hash;
- (unsigned)keyCode;
- (unsigned)modifierState;
- (void)_setCommandKeyPressed:(BOOL)pressed;
- (void)setKeyCode:(unsigned __int16)code;
- (void)setKeyDown:(BOOL)down;
- (void)setKeyUp:(BOOL)up;
- (void)setModifiersChanged:(BOOL)changed;
@end

@implementation VOTKeyInfo

- (VOTKeyInfo)initWithEventRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = VOTKeyInfo;
  v5 = [(VOTKeyInfo *)&v13 init];
  v6 = v5;
  v7 = 0;
  if (representationCopy && v5)
  {
    keyInfo = [representationCopy keyInfo];
    v9 = keyInfo;
    if (keyInfo)
    {
      modifiedInput = [keyInfo modifiedInput];
      if (modifiedInput)
      {
      }

      else if ([v9 keyCode])
      {
        [VOTSharedWorkspace loadUIKit];
        [v9 translateKeycode];
      }
    }

    [(VOTKeyInfo *)v6 setEventRecord:representationCopy];
    *&v6->_flags = *&v6->_flags & 0xFE | [v9 keyDown];
    if ([v9 keyDown])
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    *&v6->_flags = *&v6->_flags & 0xFD | v11;
    v7 = v6;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  v6 = [eventRecord copyWithZone:zone];

  v7 = objc_alloc_init(VOTKeyInfo);
  [(VOTKeyInfo *)v7 setEventRecord:v6];
  [(VOTKeyInfo *)v7 setKeyDown:[(VOTKeyInfo *)self keyDown]];
  [(VOTKeyInfo *)v7 setKeyUp:[(VOTKeyInfo *)self keyUp]];
  [(VOTKeyInfo *)v7 setChangedModifiers:[(VOTKeyInfo *)self changedModifiers]];

  return v7;
}

- (unsigned)modifierState
{
  keyInfo = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  modifierState = [keyInfo modifierState];

  return modifierState;
}

- (NSString)characters
{
  keyInfo = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  modifiedInput = [keyInfo modifiedInput];

  return modifiedInput;
}

- (NSString)originalCharacters
{
  keyInfo = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  unmodifiedInput = [keyInfo unmodifiedInput];

  return unmodifiedInput;
}

- (void)setModifiersChanged:(BOOL)changed
{
  if (changed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (BOOL)keyDown
{
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  keyInfo = [eventRecord keyInfo];
  keyDown = [keyInfo keyDown];

  return keyDown;
}

- (void)setKeyDown:(BOOL)down
{
  downCopy = down;
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  v6 = eventRecord;
  if (downCopy)
  {
    v7 = 10;
  }

  else
  {
    v7 = 11;
  }

  [eventRecord setType:v7];

  *&self->_flags = *&self->_flags & 0xFE | downCopy;
  eventRecord2 = [(VOTKeyInfo *)self eventRecord];
  keyInfo = [eventRecord2 keyInfo];
  [keyInfo setKeyDown:downCopy];
}

- (BOOL)keyUp
{
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  keyInfo = [eventRecord keyInfo];
  keyDown = [keyInfo keyDown];

  return keyDown ^ 1;
}

- (void)setKeyUp:(BOOL)up
{
  upCopy = up;
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  v6 = eventRecord;
  if (upCopy)
  {
    v7 = 11;
  }

  else
  {
    v7 = 10;
  }

  [eventRecord setType:v7];

  *&self->_flags = *&self->_flags & 0xFE | upCopy;
  eventRecord2 = [(VOTKeyInfo *)self eventRecord];
  keyInfo = [eventRecord2 keyInfo];
  [keyInfo setKeyDown:!upCopy];
}

- (unsigned)keyCode
{
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  keyInfo = [eventRecord keyInfo];
  keyCode = [keyInfo keyCode];

  return keyCode;
}

- (void)setKeyCode:(unsigned __int16)code
{
  codeCopy = code;
  eventRecord = [(VOTKeyInfo *)self eventRecord];
  keyInfo = [eventRecord keyInfo];
  [keyInfo setKeyCode:codeCopy];
}

- (BOOL)isCapsLockKeyDown
{
  if ([(VOTKeyInfo *)self keyCode]!= 57)
  {
    return 0;
  }

  return [(VOTKeyInfo *)self keyDown];
}

- (BOOL)isCapsLockKeyUp
{
  if ([(VOTKeyInfo *)self keyCode]!= 57)
  {
    return 0;
  }

  return [(VOTKeyInfo *)self keyUp];
}

- (int)mediaKeyCode
{
  result = [(VOTKeyInfo *)self isMediaKey];
  if (result)
  {
    eventRecord = self->_eventRecord;

    return [(AXEventRepresentation *)eventRecord subtype];
  }

  return result;
}

- (BOOL)isBrightnessKey
{
  isAppleVendorKey = [(VOTKeyInfo *)self isAppleVendorKey];
  if (isAppleVendorKey)
  {
    LOBYTE(isAppleVendorKey) = ([(AXEventRepresentation *)self->_eventRecord subtype]& 0xFFFFFFFE) == 32;
  }

  return isAppleVendorKey;
}

- (id)description
{
  keyInfo = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  if ([(VOTKeyInfo *)self isAppleVendorKey])
  {
    v4 = [NSString stringWithFormat:@"Apple Vender KeyDown: code: %i", [(VOTKeyInfo *)self mediaKeyCode]];
  }

  else
  {
    if ([(AXEventRepresentation *)self->_eventRecord type]== 10)
    {
      v5 = @"Key down";
    }

    else
    {
      type = [(AXEventRepresentation *)self->_eventRecord type];
      v5 = @"Flags changed";
      if (type == 11)
      {
        v5 = @"Key up";
      }
    }

    v11 = v5;
    keyCode = [keyInfo keyCode];
    modifiedInput = [keyInfo modifiedInput];
    unmodifiedInput = [keyInfo unmodifiedInput];
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: code: %u (MODIFIED: %@ : UNMODIFIED: %@), flags: %d, shift: %d, control: %d, option: %d, command: %d, fn: %d", v11, keyCode, modifiedInput, unmodifiedInput, [keyInfo modifierState], -[VOTKeyInfo isShiftKeyPressed](self, "isShiftKeyPressed"), -[VOTKeyInfo isControlKeyPressed](self, "isControlKeyPressed"), -[VOTKeyInfo isOptionKeyPressed](self, "isOptionKeyPressed"), -[VOTKeyInfo isCommandKeyPressed](self, "isCommandKeyPressed"), -[VOTKeyInfo isFNKeyPressed](self, "isFNKeyPressed"));
  }

  return v4;
}

- (BOOL)isEqualToVOTKeyInfo:(id)info
{
  infoCopy = info;
  keyDown = [(VOTKeyInfo *)self keyDown];
  if (keyDown == [infoCopy keyDown] && (v6 = -[VOTKeyInfo keyUp](self, "keyUp"), v6 == objc_msgSend(infoCopy, "keyUp")) && (v7 = -[VOTKeyInfo isShiftKeyPressed](self, "isShiftKeyPressed"), v7 == objc_msgSend(infoCopy, "isShiftKeyPressed")) && (v8 = -[VOTKeyInfo isCommandKeyPressed](self, "isCommandKeyPressed"), v8 == objc_msgSend(infoCopy, "isCommandKeyPressed")) && (v9 = -[VOTKeyInfo isOptionKeyPressed](self, "isOptionKeyPressed"), v9 == objc_msgSend(infoCopy, "isOptionKeyPressed")) && (v10 = -[VOTKeyInfo isControlKeyPressed](self, "isControlKeyPressed"), v10 == objc_msgSend(infoCopy, "isControlKeyPressed")) && (v11 = -[VOTKeyInfo isCapsLockKeyToggledOn](self, "isCapsLockKeyToggledOn"), v11 == objc_msgSend(infoCopy, "isCapsLockKeyToggledOn")) && (v12 = -[VOTKeyInfo isCapsLockKeyDown](self, "isCapsLockKeyDown"), v12 == objc_msgSend(infoCopy, "isCapsLockKeyDown")) && (v13 = -[VOTKeyInfo isCapsLockKeyUp](self, "isCapsLockKeyUp"), v13 == objc_msgSend(infoCopy, "isCapsLockKeyUp")) && (v14 = -[VOTKeyInfo isFNKeyPressed](self, "isFNKeyPressed"), v14 == objc_msgSend(infoCopy, "isFNKeyPressed")))
  {
    keyCode = [(VOTKeyInfo *)self keyCode];
    v15 = keyCode == [infoCopy keyCode];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(VOTKeyInfo *)self isEqualToVOTKeyInfo:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  if ([(VOTKeyInfo *)self keyDown])
  {
    v3 = 39122;
  }

  else
  {
    v3 = 39308;
  }

  if ([(VOTKeyInfo *)self keyUp])
  {
    v4 = 1231;
  }

  else
  {
    v4 = 1237;
  }

  v5 = v4 + v3;
  if ([(VOTKeyInfo *)self isShiftKeyPressed])
  {
    v6 = 1231;
  }

  else
  {
    v6 = 1237;
  }

  v7 = v6 - v5 + 32 * v5;
  if ([(VOTKeyInfo *)self isCommandKeyPressed])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  v9 = v8 - v7 + 32 * v7;
  if ([(VOTKeyInfo *)self isOptionKeyPressed])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v10 - v9 + 32 * v9;
  if ([(VOTKeyInfo *)self isControlKeyPressed])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  v13 = v12 - v11 + 32 * v11;
  if ([(VOTKeyInfo *)self isCapsLockKeyToggledOn])
  {
    v14 = 1231;
  }

  else
  {
    v14 = 1237;
  }

  v15 = v14 - v13 + 32 * v13;
  if ([(VOTKeyInfo *)self isCapsLockKeyDown])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  v17 = v16 - v15 + 32 * v15;
  if ([(VOTKeyInfo *)self isCapsLockKeyUp])
  {
    v18 = 1231;
  }

  else
  {
    v18 = 1237;
  }

  v19 = v18 - v17 + 32 * v17;
  if ([(VOTKeyInfo *)self isFNKeyPressed])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  return 31 * (v20 - v19 + 32 * v19) + [(VOTKeyInfo *)self keyCode];
}

- (void)_setCommandKeyPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  keyInfo = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  [keyInfo setModifierState:{objc_msgSend(keyInfo, "modifierState") & 0xFFFFFFFE | pressedCopy}];
}

@end