@interface SFCertificatePresentationRequest
- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)a3;
- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)a3 qwacTrust:(__SecTrust *)a4;
- (void)dealloc;
@end

@implementation SFCertificatePresentationRequest

- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)a3
{
  v7.receiver = self;
  v7.super_class = SFCertificatePresentationRequest;
  v4 = [(SFCertificatePresentationRequest *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_trust = CFRetain(a3);
  }

  return v5;
}

- (SFCertificatePresentationRequest)initWithTrust:(__SecTrust *)a3 qwacTrust:(__SecTrust *)a4
{
  v8.receiver = self;
  v8.super_class = SFCertificatePresentationRequest;
  v6 = [(SFCertificatePresentationRequest *)&v8 init];
  if (v6)
  {
    if (a3)
    {
      v6->_trust = CFRetain(a3);
    }

    if (a4)
    {
      v6->_qwacTrust = CFRetain(a4);
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