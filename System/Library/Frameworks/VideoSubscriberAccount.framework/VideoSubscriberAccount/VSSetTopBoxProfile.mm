@interface VSSetTopBoxProfile
- (VSSetTopBoxProfile)initWithProviderID:(id)a3 userToken:(id)a4 activationTime:(id)a5 isDeveloper:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation VSSetTopBoxProfile

- (VSSetTopBoxProfile)initWithProviderID:(id)a3 userToken:(id)a4 activationTime:(id)a5 isDeveloper:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = VSSetTopBoxProfile;
  v14 = [(VSSetTopBoxProfile *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_providerID, a3);
    objc_storeStrong(&v15->_userToken, a4);
    objc_storeStrong(&v15->_activationTime, a5);
    v15->_isDeveloper = a6;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(VSSetTopBoxProfile *)self providerID];
  v5 = [(VSSetTopBoxProfile *)self userToken];
  v6 = [(VSSetTopBoxProfile *)self activationTime];
  v7 = [v3 stringWithFormat:@"<VSSetTopBoxProfile %p providerID=%@, userToken=%@, activationTime=%@ isDeveloper=%lu>", self, v4, v5, v6, -[VSSetTopBoxProfile isDeveloper](self, "isDeveloper")];;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VSSetTopBoxProfile);
  v5 = [(VSSetTopBoxProfile *)self providerID];
  v6 = [v5 copy];
  providerID = v4->_providerID;
  v4->_providerID = v6;

  v8 = [(VSSetTopBoxProfile *)self userToken];
  v9 = [v8 copy];
  userToken = v4->_userToken;
  v4->_userToken = v9;

  v11 = [(VSSetTopBoxProfile *)self activationTime];
  v12 = [v11 copy];
  activationTime = v4->_activationTime;
  v4->_activationTime = v12;

  v4->_isDeveloper = [(VSSetTopBoxProfile *)self isDeveloper];
  return v4;
}

@end