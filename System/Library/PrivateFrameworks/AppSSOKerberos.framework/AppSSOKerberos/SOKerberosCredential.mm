@interface SOKerberosCredential
- (SOKerberosCredential)init;
@end

@implementation SOKerberosCredential

- (SOKerberosCredential)init
{
  v5.receiver = self;
  v5.super_class = SOKerberosCredential;
  v2 = [(SOKerberosCredential *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SOKerberosCredential *)v2 setName:&stru_285206D08];
    [(SOKerberosCredential *)v3 setLifetime:0];
    [(SOKerberosCredential *)v3 setUuid:&stru_285206D08];
  }

  return v3;
}

@end