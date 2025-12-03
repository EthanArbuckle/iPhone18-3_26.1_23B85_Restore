@interface SKPerformSelector
+ (id)perfromSelector:(SEL)selector onTarget:(id)target;
- (SKPerformSelector)init;
- (SKPerformSelector)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
@end

@implementation SKPerformSelector

- (SKPerformSelector)init
{
  v6.receiver = self;
  v6.super_class = SKPerformSelector;
  v2 = [(SKAction *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_weakTarget, 0);
    strongTarget = v3->_strongTarget;
    v3->_strongTarget = 0;

    v3->_selector = 0;
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_weakTarget, 0);
  strongTarget = self->_strongTarget;
  self->_strongTarget = 0;

  self->_selector = 0;
  v4.receiver = self;
  v4.super_class = SKPerformSelector;
  [(SKAction *)&v4 dealloc];
}

- (SKPerformSelector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SKPerformSelector;
  v5 = [(SKAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    if (!SKGetLinkedOnOrAfter(786432))
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_target"];
      strongTarget = v5->_strongTarget;
      v5->_strongTarget = v8;

      objc_storeWeak(&v5->_weakTarget, v5->_strongTarget);
    }

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selector"];
    v7 = NSSelectorFromString(v6);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v5->_selector = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  {
    [SKPerformSelector encodeWithCoder:]::sdk_version = dyld_get_program_sdk_version();
  }

  if ([SKPerformSelector encodeWithCoder:]::sdk_version < 0xC0000)
  {
    v9.receiver = self;
    v9.super_class = SKPerformSelector;
    [(SKAction *)&v9 encodeWithCoder:coderCopy];
    WeakRetained = objc_loadWeakRetained(&self->_weakTarget);
    [coderCopy encodeObject:WeakRetained forKey:@"_target"];

    if (self->_selector)
    {
      selector = self->_selector;
    }

    else
    {
      selector = 0;
    }

    v8 = NSStringFromSelector(selector);
    [coderCopy encodeObject:v8 forKey:@"_selector"];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SKPerformSelector;
    [(SKAction *)&v10 encodeWithCoder:coderCopy];
    if (self->_selector)
    {
      v5 = self->_selector;
    }

    else
    {
      v5 = 0;
    }

    v8 = NSStringFromSelector(v5);
    [coderCopy encodeObject:v8 forKey:@"_selector"];
  }
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  targetCopy = target;
  if (![(SKAction *)self finished])
  {
    [(SKAction *)self setFinished:1];
    WeakRetained = objc_loadWeakRetained(&self->_weakTarget);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      selector = self->_selector;
      if (selector)
      {
        [WeakRetained selector];
      }
    }

    strongTarget = self->_strongTarget;
    self->_strongTarget = 0;
  }
}

+ (id)perfromSelector:(SEL)selector onTarget:(id)target
{
  targetCopy = target;
  v7 = targetCopy;
  v8 = 0;
  if (selector && targetCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_alloc_init(SKPerformSelector);
      v8->_selector = selector;
      objc_storeStrong(&v8->_strongTarget, target);
      objc_storeWeak(&v8->_weakTarget, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKPerformSelector;
  v4 = [(SKAction *)&v7 copyWithZone:zone];
  *(v4 + 2) = self->_selector;
  WeakRetained = objc_loadWeakRetained(&self->_weakTarget);
  objc_storeWeak(v4 + 3, WeakRetained);

  return v4;
}

- (id)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

@end