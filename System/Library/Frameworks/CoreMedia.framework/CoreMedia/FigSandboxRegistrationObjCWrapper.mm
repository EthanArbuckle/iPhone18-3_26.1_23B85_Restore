@interface FigSandboxRegistrationObjCWrapper
- (FigSandboxRegistrationObjCWrapper)initWithRegistration:(FigOpaqueSandboxRegistration *)registration;
- (void)dealloc;
@end

@implementation FigSandboxRegistrationObjCWrapper

- (FigSandboxRegistrationObjCWrapper)initWithRegistration:(FigOpaqueSandboxRegistration *)registration
{
  v6.receiver = self;
  v6.super_class = FigSandboxRegistrationObjCWrapper;
  v4 = [(FigSandboxRegistrationObjCWrapper *)&v6 init];
  v4->sandboxreg = CFRetain(registration);
  return v4;
}

- (void)dealloc
{
  CFRelease(self->sandboxreg);
  self->sandboxreg = 0;
  v3.receiver = self;
  v3.super_class = FigSandboxRegistrationObjCWrapper;
  [(FigSandboxRegistrationObjCWrapper *)&v3 dealloc];
}

@end