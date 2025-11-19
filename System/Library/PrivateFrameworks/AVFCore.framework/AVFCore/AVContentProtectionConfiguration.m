@interface AVContentProtectionConfiguration
- (AVContentProtectionConfiguration)initWithContentKeySystem:(id)a3 keyIdentifiers:(id)a4;
- (void)dealloc;
@end

@implementation AVContentProtectionConfiguration

- (AVContentProtectionConfiguration)initWithContentKeySystem:(id)a3 keyIdentifiers:(id)a4
{
  if (!a3)
  {
    v8 = self;
    v9 = a2;
    v10 = self;
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "contentKeySystem != nil";
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = self;
    v9 = a2;
    v19 = self;
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "keyIdentifiers != nil";
LABEL_8:
    v20 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{v9, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, v18), 0}];
    objc_exception_throw(v20);
  }

  v21.receiver = self;
  v21.super_class = AVContentProtectionConfiguration;
  v6 = [(AVContentProtectionConfiguration *)&v21 init];
  if (v6)
  {
    v6->_contentKeySystem = [a3 copy];
    v6->_keyIdentifiers = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a4 copyItems:1];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentProtectionConfiguration;
  [(AVContentProtectionConfiguration *)&v3 dealloc];
}

@end