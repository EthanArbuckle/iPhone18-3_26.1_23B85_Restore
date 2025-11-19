@interface SecConcrete_sec_trust
- (SecConcrete_sec_trust)initWithTrust:(__SecTrust *)a3;
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

- (SecConcrete_sec_trust)initWithTrust:(__SecTrust *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = SecConcrete_sec_trust;
    self = [(SecConcrete_sec_trust *)&v6 init];
    if (self)
    {
      v4 = self;
      CFRetain(v3);
      v4->trust = v3;
      self = v4;
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end