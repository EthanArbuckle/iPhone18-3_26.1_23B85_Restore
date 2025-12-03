@interface TPSpecificUser
- (BOOL)isEqual:(id)equal;
- (TPSpecificUser)initWithCloudkitContainerName:(id)name octagonContextID:(id)d appleAccountID:(id)iD altDSID:(id)sID isPrimaryPersona:(BOOL)persona personaUniqueString:(id)string;
- (TPSpecificUser)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)makeCKContainer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSpecificUser

- (id)makeCKContainer
{
  cloudkitContainerName = [(TPSpecificUser *)self cloudkitContainerName];
  v4 = [CKContainer containerIDForContainerIdentifier:cloudkitContainerName];

  v5 = objc_alloc_init(CKContainerOptions);
  [v5 setBypassPCSEncryption:1];
  if (![(TPSpecificUser *)self isPrimaryAccount])
  {
    v6 = [CKAccountOverrideInfo alloc];
    appleAccountID = [(TPSpecificUser *)self appleAccountID];
    v8 = [v6 initWithAccountID:appleAccountID];
    [v5 setAccountOverrideInfo:v8];
  }

  v9 = [[CKContainer alloc] initWithContainerID:v4 options:v5];

  return v9;
}

- (unint64_t)hash
{
  cloudkitContainerName = [(TPSpecificUser *)self cloudkitContainerName];
  v4 = [cloudkitContainerName hash];
  octagonContextID = [(TPSpecificUser *)self octagonContextID];
  v6 = [octagonContextID hash] ^ v4;
  appleAccountID = [(TPSpecificUser *)self appleAccountID];
  v8 = [appleAccountID hash];
  altDSID = [(TPSpecificUser *)self altDSID];
  v10 = v6 ^ v8 ^ [altDSID hash];
  personaUniqueString = [(TPSpecificUser *)self personaUniqueString];
  v12 = [personaUniqueString hash];

  return v10 ^ v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TPSpecificUser allocWithZone:zone];
  cloudkitContainerName = [(TPSpecificUser *)self cloudkitContainerName];
  octagonContextID = [(TPSpecificUser *)self octagonContextID];
  appleAccountID = [(TPSpecificUser *)self appleAccountID];
  altDSID = [(TPSpecificUser *)self altDSID];
  isPrimaryAccount = [(TPSpecificUser *)self isPrimaryAccount];
  personaUniqueString = [(TPSpecificUser *)self personaUniqueString];
  v11 = [(TPSpecificUser *)v4 initWithCloudkitContainerName:cloudkitContainerName octagonContextID:octagonContextID appleAccountID:appleAccountID altDSID:altDSID isPrimaryPersona:isPrimaryAccount personaUniqueString:personaUniqueString];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    cloudkitContainerName = [(TPSpecificUser *)self cloudkitContainerName];
    cloudkitContainerName2 = [v5 cloudkitContainerName];
    if (![cloudkitContainerName isEqualToString:cloudkitContainerName2])
    {
      v14 = 0;
LABEL_23:

      goto LABEL_24;
    }

    octagonContextID = [(TPSpecificUser *)self octagonContextID];
    octagonContextID2 = [v5 octagonContextID];
    if (![octagonContextID isEqualToString:octagonContextID2])
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    appleAccountID = [(TPSpecificUser *)self appleAccountID];
    appleAccountID2 = [v5 appleAccountID];
    if (![appleAccountID isEqualToString:appleAccountID2])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    altDSID = [(TPSpecificUser *)self altDSID];
    altDSID2 = [v5 altDSID];
    if (![altDSID isEqualToString:?])
    {
      v14 = 0;
      goto LABEL_20;
    }

    v22 = altDSID;
    isPrimaryAccount = [(TPSpecificUser *)self isPrimaryAccount];
    if (isPrimaryAccount != [v5 isPrimaryAccount])
    {
      v14 = 0;
      altDSID = v22;
LABEL_20:

      goto LABEL_21;
    }

    personaUniqueString = [(TPSpecificUser *)self personaUniqueString];
    if (personaUniqueString || ([v5 personaUniqueString], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      personaUniqueString2 = [(TPSpecificUser *)self personaUniqueString];
      [v5 personaUniqueString];
      v16 = v21 = personaUniqueString;
      v14 = [personaUniqueString2 isEqualToString:v16];

      v17 = v21;
      altDSID = v22;
      if (v21)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v19 = 0;
      v14 = 1;
      altDSID = v22;
    }

    v17 = v19;
    goto LABEL_19;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cloudkitContainerName = [(TPSpecificUser *)self cloudkitContainerName];
  [coderCopy encodeObject:cloudkitContainerName forKey:@"cloudkit"];

  octagonContextID = [(TPSpecificUser *)self octagonContextID];
  [coderCopy encodeObject:octagonContextID forKey:@"octagon"];

  appleAccountID = [(TPSpecificUser *)self appleAccountID];
  [coderCopy encodeObject:appleAccountID forKey:@"aaID"];

  altDSID = [(TPSpecificUser *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  [coderCopy encodeBool:-[TPSpecificUser isPrimaryAccount](self forKey:{"isPrimaryAccount"), @"isPrimary"}];
  personaUniqueString = [(TPSpecificUser *)self personaUniqueString];
  [coderCopy encodeObject:personaUniqueString forKey:@"persona"];
}

- (TPSpecificUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TPSpecificUser;
  v5 = [(TPSpecificUser *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudkit"];
    cloudkitContainerName = v5->_cloudkitContainerName;
    v5->_cloudkitContainerName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"octagon"];
    octagonContextID = v5->_octagonContextID;
    v5->_octagonContextID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aaID"];
    appleAccountID = v5->_appleAccountID;
    v5->_appleAccountID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v12;

    v5->_isPrimaryAccount = [coderCopy decodeBoolForKey:@"isPrimary"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persona"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v14;
  }

  return v5;
}

- (id)description
{
  altDSID = [(TPSpecificUser *)self altDSID];
  octagonContextID = [(TPSpecificUser *)self octagonContextID];
  cloudkitContainerName = [(TPSpecificUser *)self cloudkitContainerName];
  personaUniqueString = [(TPSpecificUser *)self personaUniqueString];
  if ([(TPSpecificUser *)self isPrimaryAccount])
  {
    v7 = @"primary";
  }

  else
  {
    v7 = @"secondary";
  }

  appleAccountID = [(TPSpecificUser *)self appleAccountID];
  v9 = [NSString stringWithFormat:@"<TPSpecificUser: altDSID:%@ o:%@ ck:%@ p:%@/%@ aaID:%@>", altDSID, octagonContextID, cloudkitContainerName, personaUniqueString, v7, appleAccountID];

  return v9;
}

- (TPSpecificUser)initWithCloudkitContainerName:(id)name octagonContextID:(id)d appleAccountID:(id)iD altDSID:(id)sID isPrimaryPersona:(BOOL)persona personaUniqueString:(id)string
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  stringCopy = string;
  v25.receiver = self;
  v25.super_class = TPSpecificUser;
  v19 = [(TPSpecificUser *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cloudkitContainerName, name);
    if (persona || [dCopy hasSuffix:sIDCopy])
    {
      sIDCopy = dCopy;
    }

    else
    {
      sIDCopy = [NSString stringWithFormat:@"%@_%@", dCopy, sIDCopy];
    }

    octagonContextID = v20->_octagonContextID;
    v20->_octagonContextID = sIDCopy;

    objc_storeStrong(&v20->_appleAccountID, iD);
    objc_storeStrong(&v20->_altDSID, sID);
    v20->_isPrimaryAccount = persona;
    objc_storeStrong(&v20->_personaUniqueString, string);
  }

  return v20;
}

@end