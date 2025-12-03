@interface AABeneficiary
- (AABeneficiary)initWithBeneficiaryID:(id)d benefactorAltDSID:(id)iD;
- (AABeneficiary)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AABeneficiary

- (AABeneficiary)initWithBeneficiaryID:(id)d benefactorAltDSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = AABeneficiary;
  v9 = [(AABeneficiary *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_beneficiaryID, d);
    objc_storeStrong(&v10->_benefactorAltDSID, iD);
  }

  return v10;
}

- (AABeneficiary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AABeneficiary *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v5->_beneficiaryID;
    v5->_beneficiaryID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_benefactorAltDSID"];
    benefactorAltDSID = v5->_benefactorAltDSID;
    v5->_benefactorAltDSID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accessKey"];
    accessKey = v5->_accessKey;
    v5->_accessKey = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  beneficiaryID = self->_beneficiaryID;
  coderCopy = coder;
  [coderCopy encodeObject:beneficiaryID forKey:@"_beneficiaryID"];
  [coderCopy encodeObject:self->_benefactorAltDSID forKey:@"_benefactorAltDSID"];
  [coderCopy encodeObject:self->_accessKey forKey:@"_accessKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSUUID *)self->_beneficiaryID copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_benefactorAltDSID copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(AKInheritanceAccessKey *)self->_accessKey copy];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

@end