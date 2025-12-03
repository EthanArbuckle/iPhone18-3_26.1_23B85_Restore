@interface AATrustedContact
- (AATrustedContact)initWithCoder:(id)coder;
- (AATrustedContact)initWithID:(id)d status:(int64_t)status handle:(id)handle firstName:(id)name lastName:(id)lastName displayName:(id)displayName isAcceptedAndShared:(BOOL)shared isIdMSConfirmed:(BOOL)self0 preflightStatus:(int64_t)self1 otCustodianID:(id)self2 keyCreatedOnBuild:(id)self3 repairDate:(id)self4 repairCount:(unint64_t)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AATrustedContact

- (AATrustedContact)initWithID:(id)d status:(int64_t)status handle:(id)handle firstName:(id)name lastName:(id)lastName displayName:(id)displayName isAcceptedAndShared:(BOOL)shared isIdMSConfirmed:(BOOL)self0 preflightStatus:(int64_t)self1 otCustodianID:(id)self2 keyCreatedOnBuild:(id)self3 repairDate:(id)self4 repairCount:(unint64_t)self5
{
  dCopy = d;
  handleCopy = handle;
  handleCopy2 = handle;
  obj = name;
  nameCopy = name;
  lastNameCopy = lastName;
  lastNameCopy2 = lastName;
  displayNameCopy = displayName;
  iDCopy = iD;
  buildCopy = build;
  dateCopy = date;
  v36.receiver = self;
  v36.super_class = AATrustedContact;
  v26 = [(AATrustedContact *)&v36 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_custodianID, d);
    v27->_status = status;
    objc_storeStrong(&v27->_handle, handleCopy);
    objc_storeStrong(&v27->_firstName, obj);
    objc_storeStrong(&v27->_lastName, lastNameCopy);
    objc_storeStrong(&v27->_displayName, displayName);
    v27->_isAcceptedAndShared = shared;
    v27->_isIdMSConfirmed = confirmed;
    v27->_preflightStatus = preflightStatus;
    objc_storeStrong(&v27->_otCustodianID, iD);
    objc_storeStrong(&v27->_keyCreatedOnBuild, build);
    objc_storeStrong(&v27->_repairDate, date);
    v27->_repairCount = count;
  }

  return v27;
}

- (AATrustedContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AATrustedContact *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v5->_status = [coderCopy decodeIntegerForKey:@"_status"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v14;

    v5->_isAcceptedAndShared = [coderCopy decodeBoolForKey:@"_isAcceptedAndShared"];
    v5->_isIdMSConfirmed = [coderCopy decodeBoolForKey:@"_isIdMSConfirmed"];
    v5->_preflightStatus = [coderCopy decodeIntegerForKey:@"_preflightStatus"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_otCustodianID"];
    otCustodianID = v5->_otCustodianID;
    v5->_otCustodianID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyCreatedOnBuild"];
    keyCreatedOnBuild = v5->_keyCreatedOnBuild;
    v5->_keyCreatedOnBuild = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_repairDate"];
    repairDate = v5->_repairDate;
    v5->_repairDate = v20;

    v5->_repairCount = [coderCopy decodeIntegerForKey:@"_repairCount"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localContactRepresentation"];
    localContactRepresentation = v5->_localContactRepresentation;
    v5->_localContactRepresentation = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  custodianID = self->_custodianID;
  coderCopy = coder;
  [coderCopy encodeObject:custodianID forKey:@"_custodianID"];
  [coderCopy encodeInteger:self->_status forKey:@"_status"];
  [coderCopy encodeObject:self->_handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_firstName forKey:@"_firstName"];
  [coderCopy encodeObject:self->_lastName forKey:@"_lastName"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
  [coderCopy encodeBool:self->_isAcceptedAndShared forKey:@"_isAcceptedAndShared"];
  [coderCopy encodeBool:self->_isIdMSConfirmed forKey:@"_isIdMSConfirmed"];
  [coderCopy encodeInteger:self->_preflightStatus forKey:@"_preflightStatus"];
  [coderCopy encodeObject:self->_otCustodianID forKey:@"_otCustodianID"];
  [coderCopy encodeObject:self->_keyCreatedOnBuild forKey:@"_keyCreatedOnBuild"];
  [coderCopy encodeObject:self->_repairDate forKey:@"_repairDate"];
  [coderCopy encodeInteger:self->_repairCount forKey:@"_repairCount"];
  [coderCopy encodeObject:self->_localContactRepresentation forKey:@"_localContactRepresentation"];
}

- (id)copyWithZone:(_NSZone *)zone
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