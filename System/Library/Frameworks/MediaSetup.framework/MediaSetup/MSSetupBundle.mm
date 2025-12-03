@interface MSSetupBundle
- (MSSetupBundle)initWithCoder:(id)coder;
- (MSSetupBundle)initWithHomeID:(id)d homeUserID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSSetupBundle

- (MSSetupBundle)initWithHomeID:(id)d homeUserID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = MSSetupBundle;
  v9 = [(MSSetupBundle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeID, d);
    objc_storeStrong(&v10->_homeUserID, iD);
  }

  return v10;
}

- (MSSetupBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self)
  {
    goto LABEL_4;
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Home_ID"];
  homeID = self->_homeID;
  self->_homeID = v5;

  if (!self->_homeID)
  {
    goto LABEL_5;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Home_User_ID"];
  homeUserID = self->_homeUserID;
  self->_homeUserID = v7;

  if (self->_homeUserID)
  {
LABEL_4:
    selfCopy = self;
  }

  else
  {
LABEL_5:
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  homeID = self->_homeID;
  coderCopy = coder;
  [coderCopy encodeObject:homeID forKey:@"Home_ID"];
  [coderCopy encodeObject:self->_homeUserID forKey:@"Home_User_ID"];
}

@end