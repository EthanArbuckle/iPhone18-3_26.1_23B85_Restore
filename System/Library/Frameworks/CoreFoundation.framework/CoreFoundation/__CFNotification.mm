@interface __CFNotification
- (BOOL)isEqual:(id)equal;
- (__CFNotification)initWithName:(__CFString *)name object:(const void *)object userInfo:(__CFDictionary *)info foundation:(BOOL)foundation;
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
  name = [(__CFNotification *)self name];

  return [name hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (!equal)
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

  object = [(__CFNotification *)self object];
  if (object == [equal object])
  {
    userInfo = [(__CFNotification *)self userInfo];
    userInfo2 = [equal userInfo];

    LOBYTE(v6) = [userInfo isEqual:userInfo2];
  }

  else
  {
LABEL_8:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (__CFNotification)initWithName:(__CFString *)name object:(const void *)object userInfo:(__CFDictionary *)info foundation:(BOOL)foundation
{
  selfCopy = self;
  if (name)
  {
    if (foundation)
    {
      self->_name = [(__CFString *)name copy];
      selfCopy->_userInfo = info;
      object = object;
    }

    else
    {
      self->_name = CFRetain(name);
      if (info)
      {
        v10 = CFRetain(info);
      }

      else
      {
        v10 = 0;
      }

      selfCopy->_userInfo = v10;
    }

    selfCopy->_object = object;
    selfCopy->_fouSemantics = foundation;
  }

  else
  {

    return 0;
  }

  return selfCopy;
}

@end