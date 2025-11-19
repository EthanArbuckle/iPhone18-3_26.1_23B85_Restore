@interface FigSandboxRegistrationObjCWrapper
- (FigSandboxRegistrationObjCWrapper)initWithRegistration:(FigOpaqueSandboxRegistration *)a3;
- (void)dealloc;
@end

@implementation FigSandboxRegistrationObjCWrapper

- (FigSandboxRegistrationObjCWrapper)initWithRegistration:(FigOpaqueSandboxRegistration *)a3
{
  v6.receiver = self;
  v6.super_class = FigSandboxRegistrationObjCWrapper;
  v4 = [(FigSandboxRegistrationObjCWrapper *)&v6 init];
  v4->sandboxreg = CFRetain(a3);
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