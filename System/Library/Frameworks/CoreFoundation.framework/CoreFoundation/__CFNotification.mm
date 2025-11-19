@interface __CFNotification
- (BOOL)isEqual:(id)a3;
- (__CFNotification)initWithName:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5 foundation:(BOOL)a6;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation __CFNotification

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  fouSemantics = self->_fouSemantics;
  name = self->_name;
  if (fouSemantics)
  {
  }

  else
  {
    if (name)
    {
      CFRelease(name);
    }

    userInfo = self->_userInfo;
    if (userInfo)
    {
      CFRelease(userInfo);
    }
  }

  v7.receiver = self;
  v7.super_class = __CFNotification;
  [(__CFNotification *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v2 = [(__CFNotification *)self name];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  objc_lookUpClass("__CFNotification");
  v5 = objc_lookUpClass("NSNotification");
  if ((objc_opt_isKindOfClass() & 1) == 0 && (!v5 || (objc_opt_isKindOfClass() & 1) == 0))
  {
    goto LABEL_8;
  }

  v6 = [-[__CFNotification name](self "name")];
  if (!v6)
  {
    return v6;
  }

  v7 = [(__CFNotification *)self object];
  if (v7 == [a3 object])
  {
    v8 = [(__CFNotification *)self userInfo];
    v9 = [a3 userInfo];

    LOBYTE(v6) = [v8 isEqual:v9];
  }

  else
  {
LABEL_8:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (__CFNotification)initWithName:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5 foundation:(BOOL)a6
{
  v6 = self;
  if (a3)
  {
    if (a6)
    {
      self->_name = [(__CFString *)a3 copy];
      v6->_userInfo = a5;
      a4 = a4;
    }

    else
    {
      self->_name = CFRetain(a3);
      if (a5)
      {
        v10 = CFRetain(a5);
      }

      else
      {
        v10 = 0;
      }

      v6->_userInfo = v10;
    }

    v6->_object = a4;
    v6->_fouSemantics = a6;
  }

  else
  {

    return 0;
  }

  return v6;
}

@end