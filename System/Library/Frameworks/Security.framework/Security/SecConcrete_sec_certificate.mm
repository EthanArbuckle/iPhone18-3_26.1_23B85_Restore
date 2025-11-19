@interface SecConcrete_sec_certificate
- (SecConcrete_sec_certificate)initWithCertificate:(__SecCertificate *)a3;
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

- (SecConcrete_sec_certificate)initWithCertificate:(__SecCertificate *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = SecConcrete_sec_certificate;
    self = [(SecConcrete_sec_certificate *)&v6 init];
    if (self)
    {
      v4 = self;
      CFRetain(v3);
      v4->certificate = v3;
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