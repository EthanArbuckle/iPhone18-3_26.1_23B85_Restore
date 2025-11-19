@interface BKSHIDEventDeferringChainObserverPredicate
+ (id)build:(id)a3;
+ (id)new;
- (BKSHIDEventDeferringChainObserverPredicate)init;
- (BKSHIDEventDeferringChainObserverPredicate)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithCopyOf:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringChainObserverPredicate

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSHIDEventDeferringChainObserverPredicate *)a1 _init];
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      objc_storeStrong(a1 + 2, v3[2]);
    }
  }

  return a1;
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
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:sel__init object:v1 file:@"BKSHIDEventDeferringChainObserverPredicate.m" lineNumber:50 description:@"BKSHIDEventDeferringChainObserverPredicate cannot be subclassed"];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDeferringChainObserverPredicate alloc];

  return [(BKSHIDEventDeferringChainObserverPredicate *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  display = self->_display;
  v7 = v4;
  if (display)
  {
    [v4 encodeObject:display forKey:@"display"];
    v4 = v7;
  }

  environment = self->_environment;
  if (environment)
  {
    [v7 encodeObject:environment forKey:@"environment"];
    v4 = v7;
  }
}

- (BKSHIDEventDeferringChainObserverPredicate)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringChainObserverPredicate;
  v3 = a3;
  v4 = [(BKSHIDEventDeferringChainObserverPredicate *)&v10 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"display", v10.receiver, v10.super_class}];
  display = v4->_display;
  v4->_display = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];

  environment = v4->_environment;
  v4->_environment = v7;

  return v4;
}

- (BKSHIDEventDeferringChainObserverPredicate)init
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringChainObserverPredicate init]"];
  [v3 handleFailureInFunction:v4 file:@"BKSHIDEventDeferringChainObserverPredicate.m" lineNumber:39 description:@"cannot directly allocate BKSHIDEventDeferringChainObserverPredicate"];

  return 0;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringChainObserverPredicate new]"];
  [v2 handleFailureInFunction:v3 file:@"BKSHIDEventDeferringChainObserverPredicate.m" lineNumber:44 description:@"cannot directly allocate BKSHIDEventDeferringChainObserverPredicate"];

  return 0;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSHIDEventDeferringChainObserverPredicate *)[BKSMutableHIDEventDeferringChainObserverPredicate alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end