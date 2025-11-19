@interface AABeneficiary
- (AABeneficiary)initWithBeneficiaryID:(id)a3 benefactorAltDSID:(id)a4;
- (AABeneficiary)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AABeneficiary

- (AABeneficiary)initWithBeneficiaryID:(id)a3 benefactorAltDSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AABeneficiary;
  v9 = [(AABeneficiary *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_beneficiaryID, a3);
    objc_storeStrong(&v10->_benefactorAltDSID, a4);
  }

  return v10;
}

- (AABeneficiary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AABeneficiary *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v5->_beneficiaryID;
    v5->_beneficiaryID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_benefactorAltDSID"];
    benefactorAltDSID = v5->_benefactorAltDSID;
    v5->_benefactorAltDSID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accessKey"];
    accessKey = v5->_accessKey;
    v5->_accessKey = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  beneficiaryID = self->_beneficiaryID;
  v5 = a3;
  [v5 encodeObject:beneficiaryID forKey:@"_beneficiaryID"];
  [v5 encodeObject:self->_benefactorAltDSID forKey:@"_benefactorAltDSID"];
  [v5 encodeObject:self->_accessKey forKey:@"_accessKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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