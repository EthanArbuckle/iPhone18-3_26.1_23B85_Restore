@interface COSAppleIDSignInModel
+ (id)accountForServiceType:(int64_t)type;
+ (id)aidaServiceTypeFromAppleIDServiceType:(int64_t)type;
- (BOOL)hasSignedInToFaceTime;
- (BOOL)hasSignedInToiCloud;
- (BOOL)hasSignedInToiMessage;
- (BOOL)hasSignedInToiTunesStore;
- (BOOL)hasSignedIntoAllServices;
- (BOOL)silentSignInSuccessfulForAll;
- (BOOL)waitingForAnySilentSignInToComplete;
- (COSAppleIDSignInModel)init;
- (id)description;
- (void)setHasSignedInToFaceTime:(BOOL)time;
- (void)setHasSignedInToiCloud:(BOOL)cloud;
- (void)setHasSignedInToiMessage:(BOOL)message;
- (void)setHasSignedInToiTunesStore:(BOOL)store;
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

- (void)setHasSignedInToiCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  [v4 setSignedIn:cloudCopy];
}

- (BOOL)hasSignedInToiCloud
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  signedIn = [v2 signedIn];

  return signedIn;
}

- (void)setHasSignedInToiMessage:(BOOL)message
{
  messageCopy = message;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
  [v4 setSignedIn:messageCopy];
}

- (BOOL)hasSignedInToiMessage
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
  signedIn = [v2 signedIn];

  return signedIn;
}

- (void)setHasSignedInToFaceTime:(BOOL)time
{
  timeCopy = time;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
  [v4 setSignedIn:timeCopy];
}

- (BOOL)hasSignedInToFaceTime
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
  signedIn = [v2 signedIn];

  return signedIn;
}

- (void)setHasSignedInToiTunesStore:(BOOL)store
{
  storeCopy = store;
  v4 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
  [v4 setSignedIn:storeCopy];
}

- (BOOL)hasSignedInToiTunesStore
{
  v2 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
  signedIn = [v2 signedIn];

  return signedIn;
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
        signedIn = [v6 signedIn];
      }

      else
      {
        signedIn = 0;
      }
    }

    else
    {
      signedIn = 0;
    }
  }

  else
  {
    signedIn = 0;
  }

  return signedIn;
}

- (BOOL)waitingForAnySilentSignInToComplete
{
  v3 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  if ([v3 waitingForSilentSigninToComplete])
  {
    waitingForSilentSigninToComplete = 1;
  }

  else
  {
    waitingForSilentSigninToComplete = 1;
    v5 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
    if (([v5 waitingForSilentSigninToComplete] & 1) == 0)
    {
      v6 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
      if ([v6 waitingForSilentSigninToComplete])
      {
        waitingForSilentSigninToComplete = 1;
      }

      else
      {
        v7 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
        waitingForSilentSigninToComplete = [v7 waitingForSilentSigninToComplete];
      }
    }
  }

  return waitingForSilentSigninToComplete;
}

- (BOOL)silentSignInSuccessfulForAll
{
  v3 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:0];
  if ([v3 silentSignInSuccessful])
  {
    silentSignInSuccessful = 1;
  }

  else
  {
    silentSignInSuccessful = 1;
    v5 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:1];
    if (([v5 silentSignInSuccessful] & 1) == 0)
    {
      v6 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:2];
      if ([v6 silentSignInSuccessful])
      {
        silentSignInSuccessful = 1;
      }

      else
      {
        v7 = [(NSMutableArray *)self->_services objectAtIndexedSubscript:3];
        silentSignInSuccessful = [v7 silentSignInSuccessful];
      }
    }
  }

  return silentSignInSuccessful;
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

+ (id)aidaServiceTypeFromAppleIDServiceType:(int64_t)type
{
  if (type > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_10026A0D0 + type);
  }

  return v4;
}

+ (id)accountForServiceType:(int64_t)type
{
  v4 = sub_10002C8C8();
  v5 = [objc_opt_class() aidaServiceTypeFromAppleIDServiceType:type];
  v6 = [v4 accountForService:v5];

  return v6;
}

@end