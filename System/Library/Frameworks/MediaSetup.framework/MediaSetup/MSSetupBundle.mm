@interface MSSetupBundle
- (MSSetupBundle)initWithCoder:(id)a3;
- (MSSetupBundle)initWithHomeID:(id)a3 homeUserID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSSetupBundle

- (MSSetupBundle)initWithHomeID:(id)a3 homeUserID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSSetupBundle;
  v9 = [(MSSetupBundle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeID, a3);
    objc_storeStrong(&v10->_homeUserID, a4);
  }

  return v10;
}

- (MSSetupBundle)initWithCoder:(id)a3
{
  v4 = a3;
  if (!self)
  {
    goto LABEL_4;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Home_ID"];
  homeID = self->_homeID;
  self->_homeID = v5;

  if (!self->_homeID)
  {
    goto LABEL_5;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Home_User_ID"];
  homeUserID = self->_homeUserID;
  self->_homeUserID = v7;

  if (self->_homeUserID)
  {
LABEL_4:
    v9 = self;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  homeID = self->_homeID;
  v5 = a3;
  [v5 encodeObject:homeID forKey:@"Home_ID"];
  [v5 encodeObject:self->_homeUserID forKey:@"Home_User_ID"];
}

@end