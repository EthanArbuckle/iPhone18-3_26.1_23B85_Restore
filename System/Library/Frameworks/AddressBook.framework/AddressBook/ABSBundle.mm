@interface ABSBundle
- (ABSBundle)init;
- (ABSBundle)initWithBackingBundle:(id)bundle;
- (BOOL)respondsToSelector:(SEL)selector;
- (Class)classNamed:(id)named;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation ABSBundle

- (ABSBundle)initWithBackingBundle:(id)bundle
{
  bundleCopy = bundle;
  v10.receiver = self;
  v10.super_class = ABSBundle;
  v6 = [(ABSBundle *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingBundle, bundle);
    v8 = v7;
  }

  return v7;
}

- (ABSBundle)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(ABSBundle *)self initWithBackingBundle:v3];

  return v4;
}

- (Class)classNamed:(id)named
{
  namedCopy = named;
  if ([namedCopy isEqual:@"ABAssistantManager"])
  {
    v5 = objc_opt_class();
  }

  else
  {
    backingBundle = [(ABSBundle *)self backingBundle];
    v5 = [backingBundle classNamed:namedCopy];
  }

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (sel_isEqual(sel_classNamed_, selector))
  {
    v7.receiver = self;
    v7.super_class = ABSBundle;
    backingBundle = [(ABSBundle *)&v7 forwardingTargetForSelector:selector];
  }

  else
  {
    backingBundle = [(ABSBundle *)self backingBundle];
  }

  return backingBundle;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  backingBundle = [(ABSBundle *)self backingBundle];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

@end