@interface MSUserAccountInfo
- (MSUserAccountInfo)initWithCoder:(id)a3;
- (MSUserAccountInfo)initWithHomeUserID:(id)a3 sharedUserID:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSUserAccountInfo

- (MSUserAccountInfo)initWithHomeUserID:(id)a3 sharedUserID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSUserAccountInfo;
  v9 = [(MSUserAccountInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUserID, a3);
    objc_storeStrong(&v10->_sharedUserID, a4);
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

- (void)encodeWithCoder:(id)a3
{
  homeUserID = self->_homeUserID;
  v5 = a3;
  [v5 encodeObject:homeUserID forKey:@"MSSHomeUserIDEncodedKey"];
  [v5 encodeObject:self->_sharedUserID forKey:@"MSSSharedUserIDEncodedKey"];
}

- (MSUserAccountInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSHomeUserIDEncodedKey"];
  homeUserID = self->_homeUserID;
  self->_homeUserID = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSSharedUserIDEncodedKey"];

  sharedUserID = self->_sharedUserID;
  self->_sharedUserID = v7;

  v9 = self->_homeUserID;
  v10 = self->_sharedUserID;

  return [(MSUserAccountInfo *)self initWithHomeUserID:v9 sharedUserID:v10];
}

@end