@interface COSAppleIDSignInModel
+ (id)accountForServiceType:(int64_t)a3;
+ (id)aidaServiceTypeFromAppleIDServiceType:(int64_t)a3;
- (BOOL)hasSignedInToFaceTime;
- (BOOL)hasSignedInToiCloud;
- (BOOL)hasSignedInToiMessage;
- (BOOL)hasSignedInToiTunesStore;
- (BOOL)hasSignedIntoAllServices;
- (BOOL)silentSignInSuccessfulForAll;
- (BOOL)waitingForAnySilentSignInToComplete;
- (COSAppleIDSignInModel)init;
- (id)description;
- (void)setHasSignedInToFaceTime:(BOOL)a3;
- (void)setHasSignedInToiCloud:(BOOL)a3;
- (void)setHasSignedInToiMessage:(BOOL)a3;
- (void)setHasSignedInToiTunesStore:(BOOL)a3;
@end

@implementation COSAppleIDSignInModel

- (COSAppleIDSignInModel)init
{
  v8.receiver = self;
  v8.super_class = COSAppleIDSignInModel;
  v2 = [(COSAppleIDSignInModel *)&v8 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:4];
    services = v2->_services;
    v2->_services = v3;

    for (i = 0; i != 4; ++i)
    {
      v6 = [[COSAppleIDServiceState alloc] initWithServiceType:i];
      [(NSMutableArray *)v2->_services setObject:v6 atIndexedSubscript:i];
    }
  }

  return v2;
}

- (void)setHasSignedInToiCloud:(BOOL)a3
{
  v3 = a3;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  [v4 setSignedIn:v3];
}

- (BOOL)hasSignedInToiCloud
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  v3 = [v2 signedIn];

  return v3;
}

- (void)setHasSignedInToiMessage:(BOOL)a3
{
  v3 = a3;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
  [v4 setSignedIn:v3];
}

- (BOOL)hasSignedInToiMessage
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
  v3 = [v2 signedIn];

  return v3;
}

- (void)setHasSignedInToFaceTime:(BOOL)a3
{
  v3 = a3;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
  [v4 setSignedIn:v3];
}

- (BOOL)hasSignedInToFaceTime
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
  v3 = [v2 signedIn];

  return v3;
}

- (void)setHasSignedInToiTunesStore:(BOOL)a3
{
  v3 = a3;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
  [v4 setSignedIn:v3];
}

- (BOOL)hasSignedInToiTunesStore
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
  v3 = [v2 signedIn];

  return v3;
}

- (BOOL)hasSignedIntoAllServices
{
  v3 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  if ([v3 signedIn])
  {
    v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
    if ([v4 signedIn])
    {
      v5 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
      if ([v5 signedIn])
      {
        v6 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
        v7 = [v6 signedIn];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)waitingForAnySilentSignInToComplete
{
  v3 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  if ([v3 waitingForSilentSigninToComplete])
  {
    v4 = 1;
  }

  else
  {
    v4 = 1;
    v5 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
    if (([v5 waitingForSilentSigninToComplete] & 1) == 0)
    {
      v6 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
      if ([v6 waitingForSilentSigninToComplete])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
        v4 = [v7 waitingForSilentSigninToComplete];
      }
    }
  }

  return v4;
}

- (BOOL)silentSignInSuccessfulForAll
{
  v3 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  if ([v3 silentSignInSuccessful])
  {
    v4 = 1;
  }

  else
  {
    v4 = 1;
    v5 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
    if (([v5 silentSignInSuccessful] & 1) == 0)
    {
      v6 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
      if ([v6 silentSignInSuccessful])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
        v4 = [v7 silentSignInSuccessful];
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"hasSignedInToiCloud: %d  hasSignedInToiMessage: %d  hasSignedInToFaceTime: %d  hasSignedInToFaceTime: %d  hasSignedInToiTunesStore: %d  benefitsControllerPresented: %d  cdpRepairRequiredOnBenefitsController: %d\n", -[COSAppleIDSignInModel hasSignedInToiCloud](self, "hasSignedInToiCloud"), -[COSAppleIDSignInModel hasSignedInToiMessage](self, "hasSignedInToiMessage"), -[COSAppleIDSignInModel hasSignedInToFaceTime](self, "hasSignedInToFaceTime"), -[COSAppleIDSignInModel hasSignedInToiTunesStore](self, "hasSignedInToiTunesStore"), -[COSAppleIDSignInModel hasSignedIntoAllServices](self, "hasSignedIntoAllServices"), -[COSAppleIDSignInModel benefitsControllerPresented](self, "benefitsControllerPresented"), -[COSAppleIDSignInModel cdpRepairRequiredOnBenefitsController](self, "cdpRepairRequiredOnBenefitsController")];
  for (i = 0; i != 4; ++i)
  {
    v5 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:i];
    [v3 appendFormat:@"service: %@\n", v5];
  }

  return v3;
}

+ (id)aidaServiceTypeFromAppleIDServiceType:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_10026A0D0 + a3);
  }

  return v4;
}

+ (id)accountForServiceType:(int64_t)a3
{
  v4 = sub_10002C8C8();
  v5 = [objc_opt_class() aidaServiceTypeFromAppleIDServiceType:a3];
  v6 = [v4 accountForService:v5];

  return v6;
}

@end