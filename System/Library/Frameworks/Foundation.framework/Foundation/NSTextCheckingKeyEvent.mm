@interface NSTextCheckingKeyEvent
- (BOOL)isEqual:(id)equal;
- (NSTextCheckingKeyEvent)initWithCoder:(id)coder;
- (NSTextCheckingKeyEvent)initWithKeyboardLayoutType:(int64_t)type keyboardType:(unint64_t)keyboardType identifier:(id)identifier primaryLanguage:(id)language flags:(unint64_t)flags timestamp:(double)timestamp characters:(id)characters charactersIgnoringModifiers:(id)self0;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTextCheckingKeyEvent

- (NSTextCheckingKeyEvent)initWithKeyboardLayoutType:(int64_t)type keyboardType:(unint64_t)keyboardType identifier:(id)identifier primaryLanguage:(id)language flags:(unint64_t)flags timestamp:(double)timestamp characters:(id)characters charactersIgnoringModifiers:(id)self0
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSTextCheckingKeyEvent;
  v17 = [(NSTextCheckingKeyEvent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_layoutType = type;
    v17->_keyboardType = keyboardType;
    v17->_identifier = [identifier copy];
    v18->_primaryLanguage = [language copy];
    v18->_flags = flags;
    v18->_time = timestamp;
    v18->_keys = [characters copy];
    v18->_ukeys = [modifiers copy];
  }

  return v18;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSTextCheckingKeyEvent;
  [(NSTextCheckingKeyEvent *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v14) = 1;
    return v14;
  }

  v23 = v5;
  v24 = v4;
  v25 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  identifier = self->_identifier;
  if (identifier == [equal keyboardLayoutIdentifier] || (v14 = -[NSString isEqual:](self->_identifier, "isEqual:", objc_msgSend(equal, "keyboardLayoutIdentifier"))))
  {
    primaryLanguage = self->_primaryLanguage;
    if (primaryLanguage == [equal primaryLanguage] || (v14 = -[NSString isEqual:](self->_primaryLanguage, "isEqual:", objc_msgSend(equal, "primaryLanguage"))))
    {
      keys = self->_keys;
      if (keys == [equal characters] || (v14 = -[NSString isEqual:](self->_keys, "isEqual:", objc_msgSend(equal, "characters"))))
      {
        ukeys = self->_ukeys;
        if (ukeys == [equal charactersIgnoringModifiers] || (v14 = -[NSString isEqual:](self->_ukeys, "isEqual:", objc_msgSend(equal, "charactersIgnoringModifiers"))))
        {
          layoutType = self->_layoutType;
          if (layoutType == [equal keyboardLayoutType])
          {
            flags = self->_flags;
            if (flags == [equal flags])
            {
              time = self->_time;
              [equal timestamp];
              LOBYTE(v14) = time == v21;
              return v14;
            }
          }

LABEL_15:
          LOBYTE(v14) = 0;
        }
      }
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = ((self->_time / 100000.0 - floor(self->_time / 100000.0)) * 1000000000.0);
  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_primaryLanguage hash]^ v4;
  return v5 ^ [(NSString *)self->_keys hash]^ self->_layoutType ^ self->_flags ^ v3;
}

- (id)description
{
  if ([(NSTextCheckingKeyEvent *)self keyboardLayoutType])
  {
    if ([(NSTextCheckingKeyEvent *)self keyboardLayoutType]== 1)
    {
      v3 = @"ISO";
    }

    else if ([(NSTextCheckingKeyEvent *)self keyboardLayoutType]== 2)
    {
      v3 = @"JIS";
    }

    else
    {
      v3 = @"?";
    }
  }

  else
  {
    v3 = @"ANSI";
  }

  keyboardLayoutIdentifier = [(NSTextCheckingKeyEvent *)self keyboardLayoutIdentifier];
  primaryLanguage = [(NSTextCheckingKeyEvent *)self primaryLanguage];
  keyboardType = [(NSTextCheckingKeyEvent *)self keyboardType];
  flags = [(NSTextCheckingKeyEvent *)self flags];
  [(NSTextCheckingKeyEvent *)self timestamp];
  return [NSString stringWithFormat:@"keyboard %@/%@/%@/%llu flags 0x%llx time %g <%@> <%@>", keyboardLayoutIdentifier, primaryLanguage, v3, keyboardType, flags, v8, [(NSTextCheckingKeyEvent *)self characters], [(NSTextCheckingKeyEvent *)self charactersIgnoringModifiers]];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  [coder encodeInteger:-[NSTextCheckingKeyEvent keyboardLayoutType](self forKey:{"keyboardLayoutType"), @"NSKeyboardLayoutType"}];
  [coder encodeInteger:-[NSTextCheckingKeyEvent keyboardType](self forKey:{"keyboardType"), @"NSKeyboardType"}];
  [coder encodeObject:-[NSTextCheckingKeyEvent keyboardLayoutIdentifier](self forKey:{"keyboardLayoutIdentifier"), @"NSKeyboardLayoutIdentifier"}];
  [coder encodeObject:-[NSTextCheckingKeyEvent primaryLanguage](self forKey:{"primaryLanguage"), @"NSPrimaryLanguage"}];
  [coder encodeInteger:-[NSTextCheckingKeyEvent flags](self forKey:{"flags"), @"NSFlags"}];
  [(NSTextCheckingKeyEvent *)self timestamp];
  [coder encodeDouble:@"NSTimestamp" forKey:?];
  [coder encodeObject:-[NSTextCheckingKeyEvent characters](self forKey:{"characters"), @"NSCharacters"}];
  charactersIgnoringModifiers = [(NSTextCheckingKeyEvent *)self charactersIgnoringModifiers];

  [coder encodeObject:charactersIgnoringModifiers forKey:@"NSCharactersIgnoringModifiers"];
}

- (NSTextCheckingKeyEvent)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v16);
  }

  v5 = [coder decodeIntegerForKey:@"NSKeyboardLayoutType"];
  v6 = [coder decodeIntegerForKey:@"NSKeyboardType"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSKeyboardLayoutIdentifier"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPrimaryLanguage"];
  v9 = [coder decodeIntegerForKey:@"NSFlags"];
  [coder decodeDoubleForKey:@"NSTimestamp"];
  v11 = v10;
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCharacters"];
  v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCharactersIgnoringModifiers"];
  if (v7 && (_NSIsNSString() & 1) == 0)
  {

    v15 = @"Identifier is not a string";
  }

  else if (v8 && (_NSIsNSString() & 1) == 0)
  {

    v15 = @"Primary language is not a string";
  }

  else if (v12 && (_NSIsNSString() & 1) == 0)
  {

    v15 = @"Characters is not a string";
  }

  else
  {
    if (!v13 || (_NSIsNSString() & 1) != 0)
    {
      return [(NSTextCheckingKeyEvent *)self initWithKeyboardLayoutType:v5 keyboardType:v6 identifier:v7 primaryLanguage:v8 flags:v9 timestamp:v12 characters:v11 charactersIgnoringModifiers:v13];
    }

    v15 = @"Characters ignoring modifiers is not a string";
  }

  [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", v15)}];
  return 0;
}

@end