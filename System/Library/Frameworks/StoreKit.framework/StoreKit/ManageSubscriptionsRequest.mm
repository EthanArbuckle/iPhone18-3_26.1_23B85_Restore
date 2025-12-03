@interface ManageSubscriptionsRequest
- (ManageSubscriptionsRequest)initWithCoder:(id)coder;
- (ManageSubscriptionsRequest)initWithFamilyID:(id)d sceneID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ManageSubscriptionsRequest

- (ManageSubscriptionsRequest)initWithFamilyID:(id)d sceneID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = ManageSubscriptionsRequest;
  v9 = [(ManageSubscriptionsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyID, d);
    objc_storeStrong(&v10->_sceneID, iD);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  familyID = [(ManageSubscriptionsRequest *)self familyID];
  [coderCopy encodeObject:familyID forKey:@"familyID"];

  sceneID = [(ManageSubscriptionsRequest *)self sceneID];
  [coderCopy encodeObject:sceneID forKey:@"sceneID"];
}

- (ManageSubscriptionsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneID"];

  v7 = [(ManageSubscriptionsRequest *)self initWithFamilyID:v5 sceneID:v6];
  return v7;
}

@end