@interface BKSHIDEventDeferringChainObserverPredicate
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringChainObserverPredicate)init;
- (BKSHIDEventDeferringChainObserverPredicate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringChainObserverPredicate

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringChainObserverPredicate *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
    }
  }

  return of;
}

- (void)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__init object:v1 file:@"BKSHIDEventDeferringChainObserverPredicate.m" lineNumber:50 description:@"BKSHIDEventDeferringChainObserverPredicate cannot be subclassed"];
      }
    }

    v4 = +[BKSHIDEventDisplay nullDisplay];
    v5 = v1[1];
    v1[1] = v4;

    v6 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
    v7 = v1[2];
    v1[2] = v6;

    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringChainObserverPredicate;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringChainObserverPredicate alloc];

  return [(BKSHIDEventDeferringChainObserverPredicate *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[1];
    display = self->_display;
    if (BSEqualObjects())
    {
      v8 = v5[2];
      environment = self->_environment;
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  display = self->_display;
  v7 = coderCopy;
  if (display)
  {
    [coderCopy encodeObject:display forKey:@"display"];
    coderCopy = v7;
  }

  environment = self->_environment;
  if (environment)
  {
    [v7 encodeObject:environment forKey:@"environment"];
    coderCopy = v7;
  }
}

- (BKSHIDEventDeferringChainObserverPredicate)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringChainObserverPredicate;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringChainObserverPredicate *)&v10 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"display", v10.receiver, v10.super_class}];
  display = v4->_display;
  v4->_display = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];

  environment = v4->_environment;
  v4->_environment = v7;

  return v4;
}

- (BKSHIDEventDeferringChainObserverPredicate)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringChainObserverPredicate init]"];
  [currentHandler handleFailureInFunction:v4 file:@"BKSHIDEventDeferringChainObserverPredicate.m" lineNumber:39 description:@"cannot directly allocate BKSHIDEventDeferringChainObserverPredicate"];

  return 0;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringChainObserverPredicate new]"];
  [currentHandler handleFailureInFunction:v3 file:@"BKSHIDEventDeferringChainObserverPredicate.m" lineNumber:44 description:@"cannot directly allocate BKSHIDEventDeferringChainObserverPredicate"];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventDeferringChainObserverPredicate *)[BKSMutableHIDEventDeferringChainObserverPredicate alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end