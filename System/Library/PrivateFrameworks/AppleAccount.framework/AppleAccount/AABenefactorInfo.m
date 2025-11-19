@interface AABenefactorInfo
- (AABenefactorInfo)initWithBeneficiaryID:(id)a3 handle:(id)a4 status:(int64_t)a5;
- (AABenefactorInfo)initWithCoder:(id)a3;
- (NSString)description;
- (id)_statusDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AABenefactorInfo

- (AABenefactorInfo)initWithBeneficiaryID:(id)a3 handle:(id)a4 status:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AABenefactorInfo;
  v11 = [(AABenefactorInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_beneficiaryID, a3);
    objc_storeStrong(&v12->_handle, a4);
    v12->_status = a5;
  }

  return v12;
}

- (AABenefactorInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AABenefactorInfo;
  v5 = [(AABenefactorInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v5->_beneficiaryID;
    v5->_beneficiaryID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accessKey"];
    accessKey = v5->_accessKey;
    v5->_accessKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v12 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  beneficiaryID = self->_beneficiaryID;
  v5 = a3;
  [v5 encodeObject:beneficiaryID forKey:@"_beneficiaryID"];
  [v5 encodeObject:self->_accessKey forKey:@"_accessKey"];
  [v5 encodeObject:self->_handle forKey:@"_handle"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [v5 encodeObject:v6 forKey:@"_status"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSUUID *)self->_beneficiaryID copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(AKInheritanceAccessKey *)self->_accessKey copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_handle copy];
  v10 = v4[4];
  v4[4] = v9;

  v4[5] = self->_status;
  return v4;
}

- (id)_statusDescription
{
  v2 = [(AABenefactorInfo *)self status];
  if ((v2 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C9BE88 + v2 + 1);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AABenefactorInfo *)self accessKey];
  v5 = [v4 claimTokenString];
  v6 = [(AABenefactorInfo *)self accessKey];
  v7 = [v6 wrappingKeyString];
  v19 = [v3 stringWithFormat:@"%@-%@", v5, v7];

  v18 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  beneficiaryID = self->_beneficiaryID;
  handle = self->_handle;
  v11 = [(AABenefactorInfo *)self _statusDescription];
  v12 = [(AABenefactorInfo *)self accessKey];
  v13 = [v12 claimTokenString];
  v14 = [(AABenefactorInfo *)self accessKey];
  v15 = [v14 wrappingKeyString];
  v16 = [v18 stringWithFormat:@"<%@: %p> \nBeneficiaryID: %@ \nBenefactor Handle: %@ \nStatus: %@ \nClaim Code: %@\nAccess Key: %@\nFull Access Key: %@", v8, self, beneficiaryID, handle, v11, v13, v15, v19];

  return v16;
}

@end