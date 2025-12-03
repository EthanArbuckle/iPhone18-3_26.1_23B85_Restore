@interface VSSetTopBoxProfile
- (VSSetTopBoxProfile)initWithProviderID:(id)d userToken:(id)token activationTime:(id)time isDeveloper:(BOOL)developer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation VSSetTopBoxProfile

- (VSSetTopBoxProfile)initWithProviderID:(id)d userToken:(id)token activationTime:(id)time isDeveloper:(BOOL)developer
{
  dCopy = d;
  tokenCopy = token;
  timeCopy = time;
  v17.receiver = self;
  v17.super_class = VSSetTopBoxProfile;
  v14 = [(VSSetTopBoxProfile *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_providerID, d);
    objc_storeStrong(&v15->_userToken, token);
    objc_storeStrong(&v15->_activationTime, time);
    v15->_isDeveloper = developer;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  providerID = [(VSSetTopBoxProfile *)self providerID];
  userToken = [(VSSetTopBoxProfile *)self userToken];
  activationTime = [(VSSetTopBoxProfile *)self activationTime];
  v7 = [v3 stringWithFormat:@"<VSSetTopBoxProfile %p providerID=%@, userToken=%@, activationTime=%@ isDeveloper=%lu>", self, providerID, userToken, activationTime, -[VSSetTopBoxProfile isDeveloper](self, "isDeveloper")];;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VSSetTopBoxProfile);
  providerID = [(VSSetTopBoxProfile *)self providerID];
  v6 = [providerID copy];
  providerID = v4->_providerID;
  v4->_providerID = v6;

  userToken = [(VSSetTopBoxProfile *)self userToken];
  v9 = [userToken copy];
  userToken = v4->_userToken;
  v4->_userToken = v9;

  activationTime = [(VSSetTopBoxProfile *)self activationTime];
  v12 = [activationTime copy];
  activationTime = v4->_activationTime;
  v4->_activationTime = v12;

  v4->_isDeveloper = [(VSSetTopBoxProfile *)self isDeveloper];
  return v4;
}

@end