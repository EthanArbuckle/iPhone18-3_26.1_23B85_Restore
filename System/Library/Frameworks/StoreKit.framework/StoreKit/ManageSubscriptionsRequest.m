@interface ManageSubscriptionsRequest
- (ManageSubscriptionsRequest)initWithCoder:(id)a3;
- (ManageSubscriptionsRequest)initWithFamilyID:(id)a3 sceneID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ManageSubscriptionsRequest

- (ManageSubscriptionsRequest)initWithFamilyID:(id)a3 sceneID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ManageSubscriptionsRequest;
  v9 = [(ManageSubscriptionsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyID, a3);
    objc_storeStrong(&v10->_sceneID, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ManageSubscriptionsRequest *)self familyID];
  [v4 encodeObject:v5 forKey:@"familyID"];

  v6 = [(ManageSubscriptionsRequest *)self sceneID];
  [v4 encodeObject:v6 forKey:@"sceneID"];
}

- (ManageSubscriptionsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneID"];

  v7 = [(ManageSubscriptionsRequest *)self initWithFamilyID:v5 sceneID:v6];
  return v7;
}

@end