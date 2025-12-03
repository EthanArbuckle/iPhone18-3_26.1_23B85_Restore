@interface SecConcrete_sec_identity
- (SecConcrete_sec_identity)initWithCertificates:(__CFArray *)certificates signBlock:(id)block decryptBlock:(id)decryptBlock queue:(id)queue;
- (SecConcrete_sec_identity)initWithIdentity:(__SecIdentity *)identity;
- (SecConcrete_sec_identity)initWithIdentityAndCertificates:(__SecIdentity *)certificates certificates:(__CFArray *)a4;
- (SecConcrete_sec_identity)initWithSPAKE2PLUSV1Context:(id)context clientIdentity:(id)identity serverIdentity:(id)serverIdentity clientPasswordVerifier:(id)verifier serverPasswordVerifier:(id)passwordVerifier registrationRecord:(id)record;
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

- (SecConcrete_sec_identity)initWithSPAKE2PLUSV1Context:(id)context clientIdentity:(id)identity serverIdentity:(id)serverIdentity clientPasswordVerifier:(id)verifier serverPasswordVerifier:(id)passwordVerifier registrationRecord:(id)record
{
  contextCopy = context;
  identityCopy = identity;
  serverIdentityCopy = serverIdentity;
  verifierCopy = verifier;
  passwordVerifierCopy = passwordVerifier;
  recordCopy = record;
  if (contextCopy && (v24.receiver = self, v24.super_class = SecConcrete_sec_identity, v18 = [(SecConcrete_sec_identity *)&v24 init], (self = v18) != 0))
  {
    objc_storeStrong(&v18->spake2_context, context);
    objc_storeStrong(&self->client_identity, identity);
    objc_storeStrong(&self->server_identity, serverIdentity);
    objc_storeStrong(&self->client_password_verifier, verifier);
    objc_storeStrong(&self->server_password_verifier, passwordVerifier);
    objc_storeStrong(&self->registration_record, record);
    self->type = 2;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SecConcrete_sec_identity)initWithCertificates:(__CFArray *)certificates signBlock:(id)block decryptBlock:(id)decryptBlock queue:(id)queue
{
  blockCopy = block;
  decryptBlockCopy = decryptBlock;
  queueCopy = queue;
  selfCopy = 0;
  if (certificates && blockCopy && decryptBlockCopy)
  {
    v19.receiver = self;
    v19.super_class = SecConcrete_sec_identity;
    self = [(SecConcrete_sec_identity *)&v19 init];
    if (self)
    {
      CFRetain(certificates);
      self->certs = certificates;
      v14 = _Block_copy(blockCopy);
      sign_block = self->sign_block;
      self->sign_block = v14;

      v16 = _Block_copy(decryptBlockCopy);
      decrypt_block = self->decrypt_block;
      self->decrypt_block = v16;

      objc_storeStrong(&self->operation_queue, queue);
      self->type = 1;
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (SecConcrete_sec_identity)initWithIdentityAndCertificates:(__SecIdentity *)certificates certificates:(__CFArray *)a4
{
  if (certificates && (v9.receiver = self, v9.super_class = SecConcrete_sec_identity, (self = [(SecConcrete_sec_identity *)&v9 init]) != 0))
  {
    selfCopy = self;
    CFRetain(certificates);
    selfCopy->identity = certificates;
    if (a4)
    {
      CFRetain(a4);
    }

    selfCopy->certs = a4;
    selfCopy->type = 1;
    self = selfCopy;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (SecConcrete_sec_identity)initWithIdentity:(__SecIdentity *)identity
{
  selfCopy2 = identity;
  if (identity)
  {
    v6.receiver = self;
    v6.super_class = SecConcrete_sec_identity;
    self = [(SecConcrete_sec_identity *)&v6 init];
    if (self)
    {
      selfCopy = self;
      CFRetain(selfCopy2);
      selfCopy->identity = selfCopy2;
      selfCopy->type = 1;
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