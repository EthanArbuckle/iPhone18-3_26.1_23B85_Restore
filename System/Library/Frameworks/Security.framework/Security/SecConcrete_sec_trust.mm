@interface SecConcrete_sec_trust
- (SecConcrete_sec_trust)initWithTrust:(__SecTrust *)trust;
- (void)dealloc;
@end

@implementation SecConcrete_sec_trust

- (void)dealloc
{
  trust = self->trust;
  if (trust)
  {
    CFRelease(trust);
    self->trust = 0;
  }

  v4.receiver = self;
  v4.super_class = SecConcrete_sec_trust;
  [(SecConcrete_sec_trust *)&v4 dealloc];
}

- (SecConcrete_sec_trust)initWithTrust:(__SecTrust *)trust
{
  selfCopy2 = trust;
  if (trust)
  {
    v6.receiver = self;
    v6.super_class = SecConcrete_sec_trust;
    self = [(SecConcrete_sec_trust *)&v6 init];
    if (self)
    {
      selfCopy = self;
      CFRetain(selfCopy2);
      selfCopy->trust = selfCopy2;
      self = selfCopy;
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

@end