@interface AVSpecifiedLoggingIdentifier
- (AVSpecifiedLoggingIdentifier)initWithSpecifiedName:(id)a3;
- (id)makeDerivedIdentifier;
- (void)dealloc;
@end

@implementation AVSpecifiedLoggingIdentifier

- (AVSpecifiedLoggingIdentifier)initWithSpecifiedName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v6 = [a3 componentsSeparatedByString:@"."];
  if ([v6 count])
  {
    if ([objc_msgSend(v6 objectAtIndex:{0), "length"}] >= 7)
    {
      v17 = MEMORY[0x1E695DF30];
      v18 = *MEMORY[0x1E695D940];
      v19 = @"Identifier name must be 6 chars or less";
      goto LABEL_17;
    }

    if ([v6 count] >= 2)
    {
      if ([v6 count] >= 3)
      {
        v17 = MEMORY[0x1E695DF30];
        v18 = *MEMORY[0x1E695D940];
        v19 = @"Identifier name must not contain more than one period";
        goto LABEL_17;
      }

      v12 = [v6 objectAtIndex:1];
      if ([v12 length])
      {
        v13 = 0;
        while ([v12 characterAtIndex:v13] - 58 > 0xFFFFFFF5)
        {
          if (++v13 >= [v12 length])
          {
            goto LABEL_10;
          }
        }

        v17 = MEMORY[0x1E695DF30];
        v18 = *MEMORY[0x1E695D940];
        v19 = @"Identifier name must not contain non-numeric character after period";
LABEL_17:
        v20 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v19, v7, v8, v9, v10, v11, v21.receiver), 0}];
        objc_exception_throw(v20);
      }
    }
  }

LABEL_10:
  v21.receiver = self;
  v21.super_class = AVSpecifiedLoggingIdentifier;
  v14 = [(AVSpecifiedLoggingIdentifier *)&v21 init];
  if (v14)
  {
    v15 = objc_alloc_init(AVSpecifiedLoggingIdentifierInternal);
    v14->_specifiedLoggingIdentifier = v15;
    if (v15)
    {
      v15->derivedIdentifierCounter = 0;
      v14->_specifiedLoggingIdentifier->identifierName = [a3 copyWithZone:0];
      CFRetain(v14->_specifiedLoggingIdentifier);
      return v14;
    }

    return 0;
  }

  return v14;
}

- (void)dealloc
{
  specifiedLoggingIdentifier = self->_specifiedLoggingIdentifier;
  if (specifiedLoggingIdentifier)
  {

    CFRelease(self->_specifiedLoggingIdentifier);
  }

  v4.receiver = self;
  v4.super_class = AVSpecifiedLoggingIdentifier;
  [(AVSpecifiedLoggingIdentifier *)&v4 dealloc];
}

- (id)makeDerivedIdentifier
{
  v3 = FigAtomicIncrement32();
  v4 = [AVSpecifiedLoggingIdentifier alloc];
  v5 = -[AVSpecifiedLoggingIdentifier initWithSpecifiedName:](v4, "initWithSpecifiedName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%02d", -[AVSpecifiedLoggingIdentifier name](self, "name"), v3]);

  return v5;
}

@end