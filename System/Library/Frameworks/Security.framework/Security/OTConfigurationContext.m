@interface OTConfigurationContext
- (OTConfigurationContext)init;
- (id)description;
- (id)makeCKKSControl:(id *)a3;
- (id)makeOTControl:(id *)a3;
- (void)setOverrideEscrowCache:(BOOL)a3;
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
  v4 = [(OTConfigurationContext *)self context];
  v5 = [(OTConfigurationContext *)self containerName];
  v6 = [(OTConfigurationContext *)self altDSID];
  v7 = [v3 stringWithFormat:@"<OTConfigurationContext %@, %@, %@>", v4, v5, v6];

  return v7;
}

- (id)makeCKKSControl:(id *)a3
{
  v5 = [(OTConfigurationContext *)self ckksControl];

  if (v5)
  {
    [(OTConfigurationContext *)self ckksControl];
  }

  else
  {
    [CKKSControl CKKSControlObject:1 error:a3];
  }
  v6 = ;

  return v6;
}

- (id)makeOTControl:(id *)a3
{
  v5 = [(OTConfigurationContext *)self otControl];

  if (v5)
  {
    [(OTConfigurationContext *)self otControl];
  }

  else
  {
    [OTControl controlObject:1 error:a3];
  }
  v6 = ;

  return v6;
}

- (void)setOverrideEscrowCache:(BOOL)a3
{
  if (a3)
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