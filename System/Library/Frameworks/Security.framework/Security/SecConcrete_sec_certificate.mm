@interface SecConcrete_sec_certificate
- (SecConcrete_sec_certificate)initWithCertificate:(__SecCertificate *)certificate;
- (void)dealloc;
@end

@implementation SecConcrete_sec_certificate

- (void)dealloc
{
  certificate = self->certificate;
  if (certificate)
  {
    CFRelease(certificate);
    self->certificate = 0;
  }

  v4.receiver = self;
  v4.super_class = SecConcrete_sec_certificate;
  [(SecConcrete_sec_certificate *)&v4 dealloc];
}

- (SecConcrete_sec_certificate)initWithCertificate:(__SecCertificate *)certificate
{
  selfCopy2 = certificate;
  if (certificate)
  {
    v6.receiver = self;
    v6.super_class = SecConcrete_sec_certificate;
    self = [(SecConcrete_sec_certificate *)&v6 init];
    if (self)
    {
      selfCopy = self;
      CFRetain(selfCopy2);
      selfCopy->certificate = selfCopy2;
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