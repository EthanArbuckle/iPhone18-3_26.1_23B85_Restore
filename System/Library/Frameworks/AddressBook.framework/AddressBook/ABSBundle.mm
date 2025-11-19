@interface ABSBundle
- (ABSBundle)init;
- (ABSBundle)initWithBackingBundle:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (Class)classNamed:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation ABSBundle

- (ABSBundle)initWithBackingBundle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ABSBundle;
  v6 = [(ABSBundle *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingBundle, a3);
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

- (Class)classNamed:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"ABAssistantManager"])
  {
    v5 = objc_opt_class();
  }

  else
  {
    v6 = [(ABSBundle *)self backingBundle];
    v5 = [v6 classNamed:v4];
  }

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (sel_isEqual(sel_classNamed_, a3))
  {
    v7.receiver = self;
    v7.super_class = ABSBundle;
    v5 = [(ABSBundle *)&v7 forwardingTargetForSelector:a3];
  }

  else
  {
    v5 = [(ABSBundle *)self backingBundle];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(ABSBundle *)self backingBundle];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

@end