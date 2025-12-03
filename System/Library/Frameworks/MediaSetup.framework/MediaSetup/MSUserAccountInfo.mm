@interface MSUserAccountInfo
- (MSUserAccountInfo)initWithCoder:(id)coder;
- (MSUserAccountInfo)initWithHomeUserID:(id)d sharedUserID:(id)iD;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSUserAccountInfo

- (MSUserAccountInfo)initWithHomeUserID:(id)d sharedUserID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = MSUserAccountInfo;
  v9 = [(MSUserAccountInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUserID, d);
    objc_storeStrong(&v10->_sharedUserID, iD);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 na_safeSetObject:self->_homeUserID forKey:@"ResolvedSpeakerHomeUserID"];
  [v3 na_safeSetObject:self->_sharedUserID forKey:@"ResolvedSpeakerSharedUserID"];
  v4 = [v3 description];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  homeUserID = self->_homeUserID;
  coderCopy = coder;
  [coderCopy encodeObject:homeUserID forKey:@"MSSHomeUserIDEncodedKey"];
  [coderCopy encodeObject:self->_sharedUserID forKey:@"MSSSharedUserIDEncodedKey"];
}

- (MSUserAccountInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSHomeUserIDEncodedKey"];
  homeUserID = self->_homeUserID;
  self->_homeUserID = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSSharedUserIDEncodedKey"];

  sharedUserID = self->_sharedUserID;
  self->_sharedUserID = v7;

  v9 = self->_homeUserID;
  v10 = self->_sharedUserID;

  return [(MSUserAccountInfo *)self initWithHomeUserID:v9 sharedUserID:v10];
}

@end