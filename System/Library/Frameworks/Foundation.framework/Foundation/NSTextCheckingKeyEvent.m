@interface NSTextCheckingKeyEvent
- (BOOL)isEqual:(id)a3;
- (NSTextCheckingKeyEvent)initWithCoder:(id)a3;
- (NSTextCheckingKeyEvent)initWithKeyboardLayoutType:(int64_t)a3 keyboardType:(unint64_t)a4 identifier:(id)a5 primaryLanguage:(id)a6 flags:(unint64_t)a7 timestamp:(double)a8 characters:(id)a9 charactersIgnoringModifiers:(id)a10;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSTextCheckingKeyEvent

- (NSTextCheckingKeyEvent)initWithKeyboardLayoutType:(int64_t)a3 keyboardType:(unint64_t)a4 identifier:(id)a5 primaryLanguage:(id)a6 flags:(unint64_t)a7 timestamp:(double)a8 characters:(id)a9 charactersIgnoringModifiers:(id)a10
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSTextCheckingKeyEvent;
  v17 = [(NSTextCheckingKeyEvent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_layoutType = a3;
    v17->_keyboardType = a4;
    v17->_identifier = [a5 copy];
    v18->_primaryLanguage = [a6 copy];
    v18->_flags = a7;
    v18->_time = a8;
    v18->_keys = [a9 copy];
    v18->_ukeys = [a10 copy];
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
  if (identifier == [a3 keyboardLayoutIdentifier] || (v14 = -[NSString isEqual:](self->_identifier, "isEqual:", objc_msgSend(a3, "keyboardLayoutIdentifier"))))
  {
    primaryLanguage = self->_primaryLanguage;
    if (primaryLanguage == [a3 primaryLanguage] || (v14 = -[NSString isEqual:](self->_primaryLanguage, "isEqual:", objc_msgSend(a3, "primaryLanguage"))))
    {
      keys = self->_keys;
      if (keys == [a3 characters] || (v14 = -[NSString isEqual:](self->_keys, "isEqual:", objc_msgSend(a3, "characters"))))
      {
        ukeys = self->_ukeys;
        if (ukeys == [a3 charactersIgnoringModifiers] || (v14 = -[NSString isEqual:](self->_ukeys, "isEqual:", objc_msgSend(a3, "charactersIgnoringModifiers"))))
        {
          layoutType = self->_layoutType;
          if (layoutType == [a3 keyboardLayoutType])
          {
            flags = self->_flags;
            if (flags == [a3 flags])
            {
              time = self->_time;
              [a3 timestamp];
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

  v4 = [(NSTextCheckingKeyEvent *)self keyboardLayoutIdentifier];
  v5 = [(NSTextCheckingKeyEvent *)self primaryLanguage];
  v6 = [(NSTextCheckingKeyEvent *)self keyboardType];
  v7 = [(NSTextCheckingKeyEvent *)self flags];
  [(NSTextCheckingKeyEvent *)self timestamp];
  return [NSString stringWithFormat:@"keyboard %@/%@/%@/%llu flags 0x%llx time %g <%@> <%@>", v4, v5, v3, v6, v7, v8, [(NSTextCheckingKeyEvent *)self characters], [(NSTextCheckingKeyEvent *)self charactersIgnoringModifiers]];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  [a3 encodeInteger:-[NSTextCheckingKeyEvent keyboardLayoutType](self forKey:{"keyboardLayoutType"), @"NSKeyboardLayoutType"}];
  [a3 encodeInteger:-[NSTextCheckingKeyEvent keyboardType](self forKey:{"keyboardType"), @"NSKeyboardType"}];
  [a3 encodeObject:-[NSTextCheckingKeyEvent keyboardLayoutIdentifier](self forKey:{"keyboardLayoutIdentifier"), @"NSKeyboardLayoutIdentifier"}];
  [a3 encodeObject:-[NSTextCheckingKeyEvent primaryLanguage](self forKey:{"primaryLanguage"), @"NSPrimaryLanguage"}];
  [a3 encodeInteger:-[NSTextCheckingKeyEvent flags](self forKey:{"flags"), @"NSFlags"}];
  [(NSTextCheckingKeyEvent *)self timestamp];
  [a3 encodeDouble:@"NSTimestamp" forKey:?];
  [a3 encodeObject:-[NSTextCheckingKeyEvent characters](self forKey:{"characters"), @"NSCharacters"}];
  v5 = [(NSTextCheckingKeyEvent *)self charactersIgnoringModifiers];

  [a3 encodeObject:v5 forKey:@"NSCharactersIgnoringModifiers"];
}

- (NSTextCheckingKeyEvent)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v16);
  }

  v5 = [a3 decodeIntegerForKey:@"NSKeyboardLayoutType"];
  v6 = [a3 decodeIntegerForKey:@"NSKeyboardType"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSKeyboardLayoutIdentifier"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPrimaryLanguage"];
  v9 = [a3 decodeIntegerForKey:@"NSFlags"];
  [a3 decodeDoubleForKey:@"NSTimestamp"];
  v11 = v10;
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCharacters"];
  v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCharactersIgnoringModifiers"];
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

  [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", v15)}];
  return 0;
}

@end