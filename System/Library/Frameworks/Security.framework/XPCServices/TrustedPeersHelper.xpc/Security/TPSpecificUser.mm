@interface TPSpecificUser
- (BOOL)isEqual:(id)a3;
- (TPSpecificUser)initWithCloudkitContainerName:(id)a3 octagonContextID:(id)a4 appleAccountID:(id)a5 altDSID:(id)a6 isPrimaryPersona:(BOOL)a7 personaUniqueString:(id)a8;
- (TPSpecificUser)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)makeCKContainer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSpecificUser

- (id)makeCKContainer
{
  v3 = [(TPSpecificUser *)self cloudkitContainerName];
  v4 = [CKContainer containerIDForContainerIdentifier:v3];

  v5 = objc_alloc_init(CKContainerOptions);
  [v5 setBypassPCSEncryption:1];
  if (![(TPSpecificUser *)self isPrimaryAccount])
  {
    v6 = [CKAccountOverrideInfo alloc];
    v7 = [(TPSpecificUser *)self appleAccountID];
    v8 = [v6 initWithAccountID:v7];
    [v5 setAccountOverrideInfo:v8];
  }

  v9 = [[CKContainer alloc] initWithContainerID:v4 options:v5];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(TPSpecificUser *)self cloudkitContainerName];
  v4 = [v3 hash];
  v5 = [(TPSpecificUser *)self octagonContextID];
  v6 = [v5 hash] ^ v4;
  v7 = [(TPSpecificUser *)self appleAccountID];
  v8 = [v7 hash];
  v9 = [(TPSpecificUser *)self altDSID];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(TPSpecificUser *)self personaUniqueString];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TPSpecificUser allocWithZone:a3];
  v5 = [(TPSpecificUser *)self cloudkitContainerName];
  v6 = [(TPSpecificUser *)self octagonContextID];
  v7 = [(TPSpecificUser *)self appleAccountID];
  v8 = [(TPSpecificUser *)self altDSID];
  v9 = [(TPSpecificUser *)self isPrimaryAccount];
  v10 = [(TPSpecificUser *)self personaUniqueString];
  v11 = [(TPSpecificUser *)v4 initWithCloudkitContainerName:v5 octagonContextID:v6 appleAccountID:v7 altDSID:v8 isPrimaryPersona:v9 personaUniqueString:v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TPSpecificUser *)self cloudkitContainerName];
    v7 = [v5 cloudkitContainerName];
    if (![v6 isEqualToString:v7])
    {
      v14 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v8 = [(TPSpecificUser *)self octagonContextID];
    v9 = [v5 octagonContextID];
    if (![v8 isEqualToString:v9])
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v10 = [(TPSpecificUser *)self appleAccountID];
    v11 = [v5 appleAccountID];
    if (![v10 isEqualToString:v11])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v12 = [(TPSpecificUser *)self altDSID];
    v23 = [v5 altDSID];
    if (![v12 isEqualToString:?])
    {
      v14 = 0;
      goto LABEL_20;
    }

    v22 = v12;
    v13 = [(TPSpecificUser *)self isPrimaryAccount];
    if (v13 != [v5 isPrimaryAccount])
    {
      v14 = 0;
      v12 = v22;
LABEL_20:

      goto LABEL_21;
    }

    v15 = [(TPSpecificUser *)self personaUniqueString];
    if (v15 || ([v5 personaUniqueString], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = [(TPSpecificUser *)self personaUniqueString];
      [v5 personaUniqueString];
      v16 = v21 = v15;
      v14 = [v20 isEqualToString:v16];

      v17 = v21;
      v12 = v22;
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
      v12 = v22;
    }

    v17 = v19;
    goto LABEL_19;
  }

  v14 = 0;
LABEL_24:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TPSpecificUser *)self cloudkitContainerName];
  [v4 encodeObject:v5 forKey:@"cloudkit"];

  v6 = [(TPSpecificUser *)self octagonContextID];
  [v4 encodeObject:v6 forKey:@"octagon"];

  v7 = [(TPSpecificUser *)self appleAccountID];
  [v4 encodeObject:v7 forKey:@"aaID"];

  v8 = [(TPSpecificUser *)self altDSID];
  [v4 encodeObject:v8 forKey:@"altDSID"];

  [v4 encodeBool:-[TPSpecificUser isPrimaryAccount](self forKey:{"isPrimaryAccount"), @"isPrimary"}];
  v9 = [(TPSpecificUser *)self personaUniqueString];
  [v4 encodeObject:v9 forKey:@"persona"];
}

- (TPSpecificUser)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TPSpecificUser;
  v5 = [(TPSpecificUser *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudkit"];
    cloudkitContainerName = v5->_cloudkitContainerName;
    v5->_cloudkitContainerName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"octagon"];
    octagonContextID = v5->_octagonContextID;
    v5->_octagonContextID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aaID"];
    appleAccountID = v5->_appleAccountID;
    v5->_appleAccountID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v12;

    v5->_isPrimaryAccount = [v4 decodeBoolForKey:@"isPrimary"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persona"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [(TPSpecificUser *)self altDSID];
  v4 = [(TPSpecificUser *)self octagonContextID];
  v5 = [(TPSpecificUser *)self cloudkitContainerName];
  v6 = [(TPSpecificUser *)self personaUniqueString];
  if ([(TPSpecificUser *)self isPrimaryAccount])
  {
    v7 = @"primary";
  }

  else
  {
    v7 = @"secondary";
  }

  v8 = [(TPSpecificUser *)self appleAccountID];
  v9 = [NSString stringWithFormat:@"<TPSpecificUser: altDSID:%@ o:%@ ck:%@ p:%@/%@ aaID:%@>", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (TPSpecificUser)initWithCloudkitContainerName:(id)a3 octagonContextID:(id)a4 appleAccountID:(id)a5 altDSID:(id)a6 isPrimaryPersona:(BOOL)a7 personaUniqueString:(id)a8
{
  v24 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = TPSpecificUser;
  v19 = [(TPSpecificUser *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cloudkitContainerName, a3);
    if (a7 || [v15 hasSuffix:v17])
    {
      v21 = v15;
    }

    else
    {
      v21 = [NSString stringWithFormat:@"%@_%@", v15, v17];
    }

    octagonContextID = v20->_octagonContextID;
    v20->_octagonContextID = v21;

    objc_storeStrong(&v20->_appleAccountID, a5);
    objc_storeStrong(&v20->_altDSID, a6);
    v20->_isPrimaryAccount = a7;
    objc_storeStrong(&v20->_personaUniqueString, a8);
  }

  return v20;
}

@end