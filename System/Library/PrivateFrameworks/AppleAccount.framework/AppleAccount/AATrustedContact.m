@interface AATrustedContact
- (AATrustedContact)initWithCoder:(id)a3;
- (AATrustedContact)initWithID:(id)a3 status:(int64_t)a4 handle:(id)a5 firstName:(id)a6 lastName:(id)a7 displayName:(id)a8 isAcceptedAndShared:(BOOL)a9 isIdMSConfirmed:(BOOL)a10 preflightStatus:(int64_t)a11 otCustodianID:(id)a12 keyCreatedOnBuild:(id)a13 repairDate:(id)a14 repairCount:(unint64_t)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AATrustedContact

- (AATrustedContact)initWithID:(id)a3 status:(int64_t)a4 handle:(id)a5 firstName:(id)a6 lastName:(id)a7 displayName:(id)a8 isAcceptedAndShared:(BOOL)a9 isIdMSConfirmed:(BOOL)a10 preflightStatus:(int64_t)a11 otCustodianID:(id)a12 keyCreatedOnBuild:(id)a13 repairDate:(id)a14 repairCount:(unint64_t)a15
{
  v21 = a3;
  v30 = a5;
  v22 = a5;
  obj = a6;
  v23 = a6;
  v32 = a7;
  v24 = a7;
  v25 = a8;
  v35 = a12;
  v34 = a13;
  v33 = a14;
  v36.receiver = self;
  v36.super_class = AATrustedContact;
  v26 = [(AATrustedContact *)&v36 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_custodianID, a3);
    v27->_status = a4;
    objc_storeStrong(&v27->_handle, v30);
    objc_storeStrong(&v27->_firstName, obj);
    objc_storeStrong(&v27->_lastName, v32);
    objc_storeStrong(&v27->_displayName, a8);
    v27->_isAcceptedAndShared = a9;
    v27->_isIdMSConfirmed = a10;
    v27->_preflightStatus = a11;
    objc_storeStrong(&v27->_otCustodianID, a12);
    objc_storeStrong(&v27->_keyCreatedOnBuild, a13);
    objc_storeStrong(&v27->_repairDate, a14);
    v27->_repairCount = a15;
  }

  return v27;
}

- (AATrustedContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AATrustedContact *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v5->_status = [v4 decodeIntegerForKey:@"_status"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v14;

    v5->_isAcceptedAndShared = [v4 decodeBoolForKey:@"_isAcceptedAndShared"];
    v5->_isIdMSConfirmed = [v4 decodeBoolForKey:@"_isIdMSConfirmed"];
    v5->_preflightStatus = [v4 decodeIntegerForKey:@"_preflightStatus"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_otCustodianID"];
    otCustodianID = v5->_otCustodianID;
    v5->_otCustodianID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_keyCreatedOnBuild"];
    keyCreatedOnBuild = v5->_keyCreatedOnBuild;
    v5->_keyCreatedOnBuild = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_repairDate"];
    repairDate = v5->_repairDate;
    v5->_repairDate = v20;

    v5->_repairCount = [v4 decodeIntegerForKey:@"_repairCount"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localContactRepresentation"];
    localContactRepresentation = v5->_localContactRepresentation;
    v5->_localContactRepresentation = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  custodianID = self->_custodianID;
  v5 = a3;
  [v5 encodeObject:custodianID forKey:@"_custodianID"];
  [v5 encodeInteger:self->_status forKey:@"_status"];
  [v5 encodeObject:self->_handle forKey:@"_handle"];
  [v5 encodeObject:self->_firstName forKey:@"_firstName"];
  [v5 encodeObject:self->_lastName forKey:@"_lastName"];
  [v5 encodeObject:self->_displayName forKey:@"_displayName"];
  [v5 encodeBool:self->_isAcceptedAndShared forKey:@"_isAcceptedAndShared"];
  [v5 encodeBool:self->_isIdMSConfirmed forKey:@"_isIdMSConfirmed"];
  [v5 encodeInteger:self->_preflightStatus forKey:@"_preflightStatus"];
  [v5 encodeObject:self->_otCustodianID forKey:@"_otCustodianID"];
  [v5 encodeObject:self->_keyCreatedOnBuild forKey:@"_keyCreatedOnBuild"];
  [v5 encodeObject:self->_repairDate forKey:@"_repairDate"];
  [v5 encodeInteger:self->_repairCount forKey:@"_repairCount"];
  [v5 encodeObject:self->_localContactRepresentation forKey:@"_localContactRepresentation"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NSUUID *)self->_custodianID copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 24) = self->_status;
  v7 = [(NSString *)self->_handle copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(NSString *)self->_firstName copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  v11 = [(NSString *)self->_lastName copy];
  v12 = *(v4 + 48);
  *(v4 + 48) = v11;

  v13 = [(NSString *)self->_displayName copy];
  v14 = *(v4 + 56);
  *(v4 + 56) = v13;

  *(v4 + 8) = self->_isAcceptedAndShared;
  *(v4 + 9) = self->_isIdMSConfirmed;
  *(v4 + 64) = self->_preflightStatus;
  objc_storeStrong((v4 + 72), self->_otCustodianID);
  objc_storeStrong((v4 + 80), self->_keyCreatedOnBuild);
  objc_storeStrong((v4 + 88), self->_repairDate);
  *(v4 + 96) = self->_repairCount;
  objc_storeStrong((v4 + 104), self->_localContactRepresentation);
  return v4;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isAcceptedAndShared)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isIdMSConfirmed)
  {
    v2 = @"YES";
  }

  keyCreatedOnBuild = self->_keyCreatedOnBuild;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<TrustedContact: CustodianID: %@, status: %ld, handle: %@ acceptedAndShared: %@, serverConfirmed: %@, build: %@, localContactRepresentation: %@>", *&self->_custodianID, self->_handle, v3, v2, keyCreatedOnBuild, self->_localContactRepresentation];
}

@end