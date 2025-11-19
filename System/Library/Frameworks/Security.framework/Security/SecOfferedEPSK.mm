@interface SecOfferedEPSK
- (SecOfferedEPSK)initWithExternalIdentity:(id)a3 :(id)a4;
@end

@implementation SecOfferedEPSK

- (SecOfferedEPSK)initWithExternalIdentity:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SecOfferedEPSK;
  v8 = [(SecOfferedEPSK *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SecOfferedEPSK *)v8 setExternal_identity:v6];
    [(SecOfferedEPSK *)v9 setContext:v7];
  }

  return v9;
}

@end