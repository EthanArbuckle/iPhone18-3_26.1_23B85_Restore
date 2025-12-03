@interface AABenefactorInfo
- (AABenefactorInfo)initWithBeneficiaryID:(id)d handle:(id)handle status:(int64_t)status;
- (AABenefactorInfo)initWithCoder:(id)coder;
- (NSString)description;
- (id)_statusDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AABenefactorInfo

- (AABenefactorInfo)initWithBeneficiaryID:(id)d handle:(id)handle status:(int64_t)status
{
  dCopy = d;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = AABenefactorInfo;
  v11 = [(AABenefactorInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_beneficiaryID, d);
    objc_storeStrong(&v12->_handle, handle);
    v12->_status = status;
  }

  return v12;
}

- (AABenefactorInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AABenefactorInfo;
  v5 = [(AABenefactorInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v5->_beneficiaryID;
    v5->_beneficiaryID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accessKey"];
    accessKey = v5->_accessKey;
    v5->_accessKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v12 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  beneficiaryID = self->_beneficiaryID;
  coderCopy = coder;
  [coderCopy encodeObject:beneficiaryID forKey:@"_beneficiaryID"];
  [coderCopy encodeObject:self->_accessKey forKey:@"_accessKey"];
  [coderCopy encodeObject:self->_handle forKey:@"_handle"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [coderCopy encodeObject:v6 forKey:@"_status"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  status = [(AABenefactorInfo *)self status];
  if ((status + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C9BE88 + status + 1);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  accessKey = [(AABenefactorInfo *)self accessKey];
  claimTokenString = [accessKey claimTokenString];
  accessKey2 = [(AABenefactorInfo *)self accessKey];
  wrappingKeyString = [accessKey2 wrappingKeyString];
  v19 = [v3 stringWithFormat:@"%@-%@", claimTokenString, wrappingKeyString];

  v18 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  beneficiaryID = self->_beneficiaryID;
  handle = self->_handle;
  _statusDescription = [(AABenefactorInfo *)self _statusDescription];
  accessKey3 = [(AABenefactorInfo *)self accessKey];
  claimTokenString2 = [accessKey3 claimTokenString];
  accessKey4 = [(AABenefactorInfo *)self accessKey];
  wrappingKeyString2 = [accessKey4 wrappingKeyString];
  v16 = [v18 stringWithFormat:@"<%@: %p> \nBeneficiaryID: %@ \nBenefactor Handle: %@ \nStatus: %@ \nClaim Code: %@\nAccess Key: %@\nFull Access Key: %@", v8, self, beneficiaryID, handle, _statusDescription, claimTokenString2, wrappingKeyString2, v19];

  return v16;
}

@end