@interface VOTKeyInfo
- (BOOL)isBrightnessKey;
- (BOOL)isCapsLockKeyDown;
- (BOOL)isCapsLockKeyUp;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVOTKeyInfo:(id)a3;
- (BOOL)keyDown;
- (BOOL)keyUp;
- (NSString)characters;
- (NSString)originalCharacters;
- (VOTKeyInfo)initWithEventRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)mediaKeyCode;
- (unint64_t)hash;
- (unsigned)keyCode;
- (unsigned)modifierState;
- (void)_setCommandKeyPressed:(BOOL)a3;
- (void)setKeyCode:(unsigned __int16)a3;
- (void)setKeyDown:(BOOL)a3;
- (void)setKeyUp:(BOOL)a3;
- (void)setModifiersChanged:(BOOL)a3;
@end

@implementation VOTKeyInfo

- (VOTKeyInfo)initWithEventRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VOTKeyInfo;
  v5 = [(VOTKeyInfo *)&v13 init];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v4 keyInfo];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modifiedInput];
      if (v10)
      {
      }

      else if ([v9 keyCode])
      {
        [VOTSharedWorkspace loadUIKit];
        [v9 translateKeycode];
      }
    }

    [(VOTKeyInfo *)v6 setEventRecord:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(VOTKeyInfo *)self eventRecord];
  v6 = [v5 copyWithZone:a3];

  v7 = objc_alloc_init(VOTKeyInfo);
  [(VOTKeyInfo *)v7 setEventRecord:v6];
  [(VOTKeyInfo *)v7 setKeyDown:[(VOTKeyInfo *)self keyDown]];
  [(VOTKeyInfo *)v7 setKeyUp:[(VOTKeyInfo *)self keyUp]];
  [(VOTKeyInfo *)v7 setChangedModifiers:[(VOTKeyInfo *)self changedModifiers]];

  return v7;
}

- (unsigned)modifierState
{
  v2 = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  v3 = [v2 modifierState];

  return v3;
}

- (NSString)characters
{
  v2 = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  v3 = [v2 modifiedInput];

  return v3;
}

- (NSString)originalCharacters
{
  v2 = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  v3 = [v2 unmodifiedInput];

  return v3;
}

- (void)setModifiersChanged:(BOOL)a3
{
  if (a3)
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
  v2 = [(VOTKeyInfo *)self eventRecord];
  v3 = [v2 keyInfo];
  v4 = [v3 keyDown];

  return v4;
}

- (void)setKeyDown:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTKeyInfo *)self eventRecord];
  v6 = v5;
  if (v3)
  {
    v7 = 10;
  }

  else
  {
    v7 = 11;
  }

  [v5 setType:v7];

  *&self->_flags = *&self->_flags & 0xFE | v3;
  v9 = [(VOTKeyInfo *)self eventRecord];
  v8 = [v9 keyInfo];
  [v8 setKeyDown:v3];
}

- (BOOL)keyUp
{
  v2 = [(VOTKeyInfo *)self eventRecord];
  v3 = [v2 keyInfo];
  v4 = [v3 keyDown];

  return v4 ^ 1;
}

- (void)setKeyUp:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTKeyInfo *)self eventRecord];
  v6 = v5;
  if (v3)
  {
    v7 = 11;
  }

  else
  {
    v7 = 10;
  }

  [v5 setType:v7];

  *&self->_flags = *&self->_flags & 0xFE | v3;
  v9 = [(VOTKeyInfo *)self eventRecord];
  v8 = [v9 keyInfo];
  [v8 setKeyDown:!v3];
}

- (unsigned)keyCode
{
  v2 = [(VOTKeyInfo *)self eventRecord];
  v3 = [v2 keyInfo];
  v4 = [v3 keyCode];

  return v4;
}

- (void)setKeyCode:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(VOTKeyInfo *)self eventRecord];
  v4 = [v5 keyInfo];
  [v4 setKeyCode:v3];
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
  v3 = [(VOTKeyInfo *)self isAppleVendorKey];
  if (v3)
  {
    LOBYTE(v3) = ([(AXEventRepresentation *)self->_eventRecord subtype]& 0xFFFFFFFE) == 32;
  }

  return v3;
}

- (id)description
{
  v3 = [(AXEventRepresentation *)self->_eventRecord keyInfo];
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
      v6 = [(AXEventRepresentation *)self->_eventRecord type];
      v5 = @"Flags changed";
      if (v6 == 11)
      {
        v5 = @"Key up";
      }
    }

    v11 = v5;
    v10 = [v3 keyCode];
    v7 = [v3 modifiedInput];
    v8 = [v3 unmodifiedInput];
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: code: %u (MODIFIED: %@ : UNMODIFIED: %@), flags: %d, shift: %d, control: %d, option: %d, command: %d, fn: %d", v11, v10, v7, v8, [v3 modifierState], -[VOTKeyInfo isShiftKeyPressed](self, "isShiftKeyPressed"), -[VOTKeyInfo isControlKeyPressed](self, "isControlKeyPressed"), -[VOTKeyInfo isOptionKeyPressed](self, "isOptionKeyPressed"), -[VOTKeyInfo isCommandKeyPressed](self, "isCommandKeyPressed"), -[VOTKeyInfo isFNKeyPressed](self, "isFNKeyPressed"));
  }

  return v4;
}

- (BOOL)isEqualToVOTKeyInfo:(id)a3
{
  v4 = a3;
  v5 = [(VOTKeyInfo *)self keyDown];
  if (v5 == [v4 keyDown] && (v6 = -[VOTKeyInfo keyUp](self, "keyUp"), v6 == objc_msgSend(v4, "keyUp")) && (v7 = -[VOTKeyInfo isShiftKeyPressed](self, "isShiftKeyPressed"), v7 == objc_msgSend(v4, "isShiftKeyPressed")) && (v8 = -[VOTKeyInfo isCommandKeyPressed](self, "isCommandKeyPressed"), v8 == objc_msgSend(v4, "isCommandKeyPressed")) && (v9 = -[VOTKeyInfo isOptionKeyPressed](self, "isOptionKeyPressed"), v9 == objc_msgSend(v4, "isOptionKeyPressed")) && (v10 = -[VOTKeyInfo isControlKeyPressed](self, "isControlKeyPressed"), v10 == objc_msgSend(v4, "isControlKeyPressed")) && (v11 = -[VOTKeyInfo isCapsLockKeyToggledOn](self, "isCapsLockKeyToggledOn"), v11 == objc_msgSend(v4, "isCapsLockKeyToggledOn")) && (v12 = -[VOTKeyInfo isCapsLockKeyDown](self, "isCapsLockKeyDown"), v12 == objc_msgSend(v4, "isCapsLockKeyDown")) && (v13 = -[VOTKeyInfo isCapsLockKeyUp](self, "isCapsLockKeyUp"), v13 == objc_msgSend(v4, "isCapsLockKeyUp")) && (v14 = -[VOTKeyInfo isFNKeyPressed](self, "isFNKeyPressed"), v14 == objc_msgSend(v4, "isFNKeyPressed")))
  {
    v17 = [(VOTKeyInfo *)self keyCode];
    v15 = v17 == [v4 keyCode];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
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

- (void)_setCommandKeyPressed:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXEventRepresentation *)self->_eventRecord keyInfo];
  [v4 setModifierState:{objc_msgSend(v4, "modifierState") & 0xFFFFFFFE | v3}];
}

@end