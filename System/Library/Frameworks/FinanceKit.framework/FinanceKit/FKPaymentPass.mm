@interface FKPaymentPass
- (BOOL)isEqual:(id)equal;
- (FKPaymentPass)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FKPaymentPass

- (FKPaymentPass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = FKPaymentPass;
  v5 = [(FKPaymentPass *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v10;

    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = v5->_associatedApplicationIdentifiers;
    v5->_associatedApplicationIdentifiers = v15;

    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18 = objc_opt_class();
    v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
    v5->_associatedStoreIdentifiers = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerCountryCode"];
    issuerCountryCode = v5->_issuerCountryCode;
    v5->_issuerCountryCode = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryPaymentApplicationPaymentType"];
    primaryPaymentApplicationPaymentType = v5->_primaryPaymentApplicationPaymentType;
    v5->_primaryPaymentApplicationPaymentType = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryPaymentApplicationDisplayName"];
    primaryPaymentApplicationDisplayName = v5->_primaryPaymentApplicationDisplayName;
    v5->_primaryPaymentApplicationDisplayName = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerOrgID"];
    partnerOrgID = v5->_partnerOrgID;
    v5->_partnerOrgID = v34;

    v36 = objc_alloc(MEMORY[0x1E695DFD8]);
    v37 = objc_opt_class();
    v38 = [v36 initWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"paymentApplications"];
    paymentApplications = v5->_paymentApplications;
    v5->_paymentApplications = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
  [coderCopy encodeObject:self->_associatedStoreIdentifiers forKey:@"associatedStoreIdentifiers"];
  [coderCopy encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [coderCopy encodeObject:self->_issuerCountryCode forKey:@"issuerCountryCode"];
  [coderCopy encodeObject:self->_primaryPaymentApplicationPaymentType forKey:@"primaryPaymentApplicationPaymentType"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_primaryPaymentApplicationDisplayName forKey:@"primaryPaymentApplicationDisplayName"];
  [coderCopy encodeObject:self->_partnerOrgID forKey:@"partnerOrgID"];
  [coderCopy encodeObject:self->_paymentApplications forKey:@"paymentApplications"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FKPaymentPass);
  v5 = [(NSString *)self->_uniqueID copy];
  uniqueID = v4->_uniqueID;
  v4->_uniqueID = v5;

  v7 = [(NSString *)self->_serialNumber copy];
  serialNumber = v4->_serialNumber;
  v4->_serialNumber = v7;

  v9 = [(NSString *)self->_passTypeIdentifier copy];
  passTypeIdentifier = v4->_passTypeIdentifier;
  v4->_passTypeIdentifier = v9;

  v11 = [(NSSet *)self->_associatedApplicationIdentifiers copy];
  associatedApplicationIdentifiers = v4->_associatedApplicationIdentifiers;
  v4->_associatedApplicationIdentifiers = v11;

  v13 = [(NSArray *)self->_associatedStoreIdentifiers copy];
  associatedStoreIdentifiers = v4->_associatedStoreIdentifiers;
  v4->_associatedStoreIdentifiers = v13;

  v15 = [(NSString *)self->_primaryAccountIdentifier copy];
  primaryAccountIdentifier = v4->_primaryAccountIdentifier;
  v4->_primaryAccountIdentifier = v15;

  v17 = [(NSString *)self->_issuerCountryCode copy];
  issuerCountryCode = v4->_issuerCountryCode;
  v4->_issuerCountryCode = v17;

  v19 = [(NSString *)self->_primaryPaymentApplicationPaymentType copy];
  primaryPaymentApplicationPaymentType = v4->_primaryPaymentApplicationPaymentType;
  v4->_primaryPaymentApplicationPaymentType = v19;

  v21 = [(NSString *)self->_organizationName copy];
  organizationName = v4->_organizationName;
  v4->_organizationName = v21;

  v23 = [(NSString *)self->_localizedDescription copy];
  localizedDescription = v4->_localizedDescription;
  v4->_localizedDescription = v23;

  v25 = [(NSString *)self->_primaryPaymentApplicationDisplayName copy];
  primaryPaymentApplicationDisplayName = v4->_primaryPaymentApplicationDisplayName;
  v4->_primaryPaymentApplicationDisplayName = v25;

  v27 = [(NSString *)self->_partnerOrgID copy];
  partnerOrgID = v4->_partnerOrgID;
  v4->_partnerOrgID = v27;

  v29 = [(NSSet *)self->_paymentApplications copy];
  paymentApplications = v4->_paymentApplications;
  v4->_paymentApplications = v29;

  return v4;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_uniqueID];
  [v3 safelyAddObject:self->_serialNumber];
  [v3 safelyAddObject:self->_passTypeIdentifier];
  [v3 safelyAddObject:self->_associatedApplicationIdentifiers];
  [v3 safelyAddObject:self->_associatedStoreIdentifiers];
  [v3 safelyAddObject:self->_primaryAccountIdentifier];
  [v3 safelyAddObject:self->_issuerCountryCode];
  [v3 safelyAddObject:self->_primaryPaymentApplicationPaymentType];
  [v3 safelyAddObject:self->_organizationName];
  [v3 safelyAddObject:self->_localizedDescription];
  [v3 safelyAddObject:self->_primaryPaymentApplicationDisplayName];
  [v3 safelyAddObject:self->_partnerOrgID];
  [v3 safelyAddObject:self->_paymentApplications];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_serialNumber, v6[2]) && FKEqualObjects(self->_uniqueID, v6[1]) && FKEqualObjects(self->_passTypeIdentifier, v6[3]) && FKEqualObjects(self->_associatedApplicationIdentifiers, v6[4]) && FKEqualObjects(self->_associatedStoreIdentifiers, v6[5]) && FKEqualObjects(self->_primaryAccountIdentifier, v6[7]) && FKEqualObjects(self->_issuerCountryCode, v6[6]) && FKEqualObjects(self->_primaryPaymentApplicationPaymentType, v6[10]) && FKEqualObjects(self->_organizationName, v6[8]) && FKEqualObjects(self->_localizedDescription, v6[9]) && FKEqualObjects(self->_primaryPaymentApplicationDisplayName, v6[11]) && FKEqualObjects(self->_partnerOrgID, v6[12]))
    {
      v7 = FKEqualObjects(self->_paymentApplications, v6[13]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end