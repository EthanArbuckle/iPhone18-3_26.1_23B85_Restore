@interface SecConcrete_sec_identity
- (SecConcrete_sec_identity)initWithCertificates:(__CFArray *)a3 signBlock:(id)a4 decryptBlock:(id)a5 queue:(id)a6;
- (SecConcrete_sec_identity)initWithIdentity:(__SecIdentity *)a3;
- (SecConcrete_sec_identity)initWithIdentityAndCertificates:(__SecIdentity *)a3 certificates:(__CFArray *)a4;
- (SecConcrete_sec_identity)initWithSPAKE2PLUSV1Context:(id)a3 clientIdentity:(id)a4 serverIdentity:(id)a5 clientPasswordVerifier:(id)a6 serverPasswordVerifier:(id)a7 registrationRecord:(id)a8;
- (void)dealloc;
@end

@implementation SecConcrete_sec_identity

- (void)dealloc
{
  identity = self->identity;
  if (identity)
  {
    CFRelease(identity);
    self->identity = 0;
    certs = self->certs;
    if (certs)
    {
      CFRelease(certs);
    }

    self->certs = 0;
  }

  v5.receiver = self;
  v5.super_class = SecConcrete_sec_identity;
  [(SecConcrete_sec_identity *)&v5 dealloc];
}

- (SecConcrete_sec_identity)initWithSPAKE2PLUSV1Context:(id)a3 clientIdentity:(id)a4 serverIdentity:(id)a5 clientPasswordVerifier:(id)a6 serverPasswordVerifier:(id)a7 registrationRecord:(id)a8
{
  v15 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v16 = a7;
  v17 = a8;
  if (v15 && (v24.receiver = self, v24.super_class = SecConcrete_sec_identity, v18 = [(SecConcrete_sec_identity *)&v24 init], (self = v18) != 0))
  {
    objc_storeStrong(&v18->spake2_context, a3);
    objc_storeStrong(&self->client_identity, a4);
    objc_storeStrong(&self->server_identity, a5);
    objc_storeStrong(&self->client_password_verifier, a6);
    objc_storeStrong(&self->server_password_verifier, a7);
    objc_storeStrong(&self->registration_record, a8);
    self->type = 2;
    self = self;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (SecConcrete_sec_identity)initWithCertificates:(__CFArray *)a3 signBlock:(id)a4 decryptBlock:(id)a5 queue:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  if (a3 && v10 && v11)
  {
    v19.receiver = self;
    v19.super_class = SecConcrete_sec_identity;
    self = [(SecConcrete_sec_identity *)&v19 init];
    if (self)
    {
      CFRetain(a3);
      self->certs = a3;
      v14 = _Block_copy(v10);
      sign_block = self->sign_block;
      self->sign_block = v14;

      v16 = _Block_copy(v11);
      decrypt_block = self->decrypt_block;
      self->decrypt_block = v16;

      objc_storeStrong(&self->operation_queue, a6);
      self->type = 1;
      self = self;
      v13 = self;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (SecConcrete_sec_identity)initWithIdentityAndCertificates:(__SecIdentity *)a3 certificates:(__CFArray *)a4
{
  if (a3 && (v9.receiver = self, v9.super_class = SecConcrete_sec_identity, (self = [(SecConcrete_sec_identity *)&v9 init]) != 0))
  {
    v6 = self;
    CFRetain(a3);
    v6->identity = a3;
    if (a4)
    {
      CFRetain(a4);
    }

    v6->certs = a4;
    v6->type = 1;
    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SecConcrete_sec_identity)initWithIdentity:(__SecIdentity *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = SecConcrete_sec_identity;
    self = [(SecConcrete_sec_identity *)&v6 init];
    if (self)
    {
      v4 = self;
      CFRetain(v3);
      v4->identity = v3;
      v4->type = 1;
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