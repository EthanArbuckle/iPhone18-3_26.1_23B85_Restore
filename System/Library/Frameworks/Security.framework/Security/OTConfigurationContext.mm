@interface OTConfigurationContext
- (OTConfigurationContext)init;
- (id)description;
- (id)makeCKKSControl:(id *)control;
- (id)makeOTControl:(id *)control;
- (void)setOverrideEscrowCache:(BOOL)cache;
@end

@implementation OTConfigurationContext

- (OTConfigurationContext)init
{
  v5.receiver = self;
  v5.super_class = OTConfigurationContext;
  v2 = [(OTConfigurationContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_context, OTDefaultContext);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  context = [(OTConfigurationContext *)self context];
  containerName = [(OTConfigurationContext *)self containerName];
  altDSID = [(OTConfigurationContext *)self altDSID];
  v7 = [v3 stringWithFormat:@"<OTConfigurationContext %@, %@, %@>", context, containerName, altDSID];

  return v7;
}

- (id)makeCKKSControl:(id *)control
{
  ckksControl = [(OTConfigurationContext *)self ckksControl];

  if (ckksControl)
  {
    [(OTConfigurationContext *)self ckksControl];
  }

  else
  {
    [CKKSControl CKKSControlObject:1 error:control];
  }
  v6 = ;

  return v6;
}

- (id)makeOTControl:(id *)control
{
  otControl = [(OTConfigurationContext *)self otControl];

  if (otControl)
  {
    [(OTConfigurationContext *)self otControl];
  }

  else
  {
    [OTControl controlObject:1 error:control];
  }
  v6 = ;

  return v6;
}

- (void)setOverrideEscrowCache:(BOOL)cache
{
  if (cache)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(OTConfigurationContext *)self setEscrowFetchSource:v3];
}

@end