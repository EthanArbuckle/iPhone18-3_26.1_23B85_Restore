@interface SFCertificatePresentationRequest
- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)trust;
- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)trust qwacTrust:(__SecTrust *)qwacTrust;
- (void)dealloc;
@end

@implementation SFCertificatePresentationRequest

- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)trust
{
  v7.receiver = self;
  v7.super_class = SFCertificatePresentationRequest;
  v4 = [(SFCertificatePresentationRequest *)&v7 init];
  v5 = v4;
  if (trust && v4)
  {
    v4->_trust = CFRetain(trust);
  }

  return v5;
}

- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)trust qwacTrust:(__SecTrust *)qwacTrust
{
  v8.receiver = self;
  v8.super_class = SFCertificatePresentationRequest;
  v6 = [(SFCertificatePresentationRequest *)&v8 init];
  if (v6)
  {
    if (trust)
    {
      v6->_trust = CFRetain(trust);
    }

    if (qwacTrust)
    {
      v6->_qwacTrust = CFRetain(qwacTrust);
    }
  }

  return v6;
}

- (void)dealloc
{
  trust = self->_trust;
  if (trust)
  {
    CFRelease(trust);
  }

  qwacTrust = self->_qwacTrust;
  if (qwacTrust)
  {
    CFRelease(qwacTrust);
  }

  v5.receiver = self;
  v5.super_class = SFCertificatePresentationRequest;
  [(SFCertificatePresentationRequest *)&v5 dealloc];
}

@end