@interface VSUserAccount
+ (VSUserAccount)new;
- (BOOL)isEqual:(id)equal;
- (VSUserAccount)init;
- (VSUserAccount)initWithAccountType:(VSUserAccountType)accountType updateURL:(NSURL *)url;
- (VSUserAccount)initWithAccountType:(int64_t)type updateURL:(id)l sourceType:(int64_t)sourceType sourceIdentifier:(id)identifier;
- (VSUserAccount)initWithCoder:(id)coder;
- (id)componentsForPrinting:(id)printing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)prettyPrint;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCreated:(id)created;
- (void)setDeviceIdentifier:(id)identifier;
- (void)setModified:(id)modified;
- (void)setTierIdentifiers:(NSArray *)tierIdentifiers;
@end

@implementation VSUserAccount

- (VSUserAccount)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

+ (VSUserAccount)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The %@ initializer is not available.", v4}];

  return 0;
}

- (VSUserAccount)initWithAccountType:(VSUserAccountType)accountType updateURL:(NSURL *)url
{
  v6 = url;
  v13.receiver = self;
  v13.super_class = VSUserAccount;
  v7 = [(VSUserAccount *)&v13 init];
  if (v7)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"VSUserAccount initialized without a bundle."];
    }

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];

    commonInit_0(v7, accountType, v6, 0, bundleIdentifier2);
  }

  return v7;
}

- (VSUserAccount)initWithAccountType:(int64_t)type updateURL:(id)l sourceType:(int64_t)sourceType sourceIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = VSUserAccount;
  v12 = [(VSUserAccount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    commonInit_0(v12, type, lCopy, sourceType, identifierCopy);
  }

  return v13;
}

- (void)setTierIdentifiers:(NSArray *)tierIdentifiers
{
  v4 = [(NSArray *)tierIdentifiers copy];
  v5 = self->_tierIdentifiers;
  self->_tierIdentifiers = v4;

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceIdentifier = [(VSUserAccount *)self deviceIdentifier];

  if (!deviceIdentifier)
  {
    objc_storeStrong(&self->_deviceIdentifier, identifier);
  }
}

- (VSUserAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v5 = [(VSUserAccount *)self initWithAccountType:0 updateURL:0 sourceType:0 sourceIdentifier:&stru_284DD5B48];
  if (!v5)
  {
LABEL_6:
    v25 = v5;
    goto LABEL_10;
  }

  -[VSUserAccount setSourceType:](v5, "setSourceType:", [coderCopy decodeIntForKey:@"sourceType"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  if (v6)
  {
    v7 = v6;
    [(VSUserAccount *)v5 setSourceIdentifier:v6];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v9 = [coderCopy decodeBoolForKey:@"fromCurrentDevice"];
    if (v8)
    {
      [(VSUserAccount *)v5 setDeviceIdentifier:v8];
    }

    -[VSUserAccount setDeviceCategory:](v5, "setDeviceCategory:", [coderCopy decodeIntForKey:@"deviceCategory"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keychainItemHash"];
    -[VSUserAccount setKeychainItemHash:](v5, "setKeychainItemHash:", [v10 unsignedIntegerValue]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateURL"];
    [(VSUserAccount *)v5 setUpdateURL:v11];

    -[VSUserAccount setRequiresSystemTrust:](v5, "setRequiresSystemTrust:", [coderCopy decodeBoolForKey:@"requiresSystemTrust"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountProviderIdentifier"];
    [(VSUserAccount *)v5 setAccountProviderIdentifier:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(VSUserAccount *)v5 setIdentifier:v13];

    -[VSUserAccount setAccountType:](v5, "setAccountType:", [coderCopy decodeIntegerForKey:@"accountType"]);
    -[VSUserAccount setSignedOut:](v5, "setSignedOut:", [coderCopy decodeBoolForKey:@"signedOut"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionBillingCycleEndDate"];
    [(VSUserAccount *)v5 setSubscriptionBillingCycleEndDate:v14];

    v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tierIdentifiers"];
    [(VSUserAccount *)v5 setTierIdentifiers:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingIdentifier"];
    [(VSUserAccount *)v5 setBillingIdentifier:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationData"];
    [(VSUserAccount *)v5 setAuthenticationData:v17];

    [(VSUserAccount *)v5 setFromCurrentDevice:v9];
    -[VSUserAccount setIsDeveloperCreated:](v5, "setIsDeveloperCreated:", [coderCopy decodeBoolForKey:@"developerCreated"]);
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    [(VSUserAccount *)v5 setCreated:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modified"];
    [(VSUserAccount *)v5 setModified:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(VSUserAccount *)v5 setDeviceName:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifierIdentifier"];
    [(VSUserAccount *)v5 setModifierIdentifier:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifierType"];
    [(VSUserAccount *)v5 setModifierType:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"api"];
    [(VSUserAccount *)v5 setApi:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleSubscription"];
    [(VSUserAccount *)v5 setAppleSubscription:v24];

    goto LABEL_6;
  }

  v26 = VSErrorLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [VSUserAccount initWithCoder:v26];
  }

  v25 = 0;
LABEL_10:

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSUserAccount sourceType](self, "sourceType")}];
  [coderCopy encodeInt:objc_msgSend(v5 forKey:{"intValue"), @"sourceType"}];

  sourceIdentifier = [(VSUserAccount *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSUserAccount deviceCategory](self, "deviceCategory")}];
  [coderCopy encodeInt:objc_msgSend(v7 forKey:{"intValue"), @"deviceCategory"}];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VSUserAccount keychainItemHash](self, "keychainItemHash")}];
  [coderCopy encodeObject:v8 forKey:@"keychainItemHash"];

  updateURL = [(VSUserAccount *)self updateURL];
  [coderCopy encodeObject:updateURL forKey:@"updateURL"];

  [coderCopy encodeBool:-[VSUserAccount requiresSystemTrust](self forKey:{"requiresSystemTrust"), @"requiresSystemTrust"}];
  accountProviderIdentifier = [(VSUserAccount *)self accountProviderIdentifier];
  [coderCopy encodeObject:accountProviderIdentifier forKey:@"accountProviderIdentifier"];

  identifier = [(VSUserAccount *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[VSUserAccount accountType](self forKey:{"accountType"), @"accountType"}];
  [coderCopy encodeBool:-[VSUserAccount isSignedOut](self forKey:{"isSignedOut"), @"signedOut"}];
  subscriptionBillingCycleEndDate = [(VSUserAccount *)self subscriptionBillingCycleEndDate];
  [coderCopy encodeObject:subscriptionBillingCycleEndDate forKey:@"subscriptionBillingCycleEndDate"];

  tierIdentifiers = [(VSUserAccount *)self tierIdentifiers];
  [coderCopy encodeObject:tierIdentifiers forKey:@"tierIdentifiers"];

  billingIdentifier = [(VSUserAccount *)self billingIdentifier];
  [coderCopy encodeObject:billingIdentifier forKey:@"billingIdentifier"];

  authenticationData = [(VSUserAccount *)self authenticationData];
  [coderCopy encodeObject:authenticationData forKey:@"authenticationData"];

  [coderCopy encodeBool:-[VSUserAccount isFromCurrentDevice](self forKey:{"isFromCurrentDevice"), @"fromCurrentDevice"}];
  [coderCopy encodeBool:-[VSUserAccount isDeveloperCreated](self forKey:{"isDeveloperCreated"), @"developerCreated"}];
  created = [(VSUserAccount *)self created];
  [coderCopy encodeObject:created forKey:@"created"];

  modified = [(VSUserAccount *)self modified];
  [coderCopy encodeObject:modified forKey:@"modified"];

  deviceIdentifier = [(VSUserAccount *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];

  deviceName = [(VSUserAccount *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  modifierIdentifier = [(VSUserAccount *)self modifierIdentifier];
  [coderCopy encodeObject:modifierIdentifier forKey:@"modifierIdentifier"];

  modifierType = [(VSUserAccount *)self modifierType];
  [coderCopy encodeObject:modifierType forKey:@"modifierType"];

  v22 = [(VSUserAccount *)self api];
  [coderCopy encodeObject:v22 forKey:@"api"];

  appleSubscription = [(VSUserAccount *)self appleSubscription];
  [coderCopy encodeObject:appleSubscription forKey:@"appleSubscription"];
}

- (id)description
{
  v3 = [(VSUserAccount *)self componentsForPrinting:@" = "];
  v4 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = VSUserAccount;
  v5 = [(VSUserAccount *)&v9 description];
  v6 = [v3 componentsJoinedByString:{@", "}];
  v7 = [v4 stringWithFormat:@"<%@ %@>", v5, v6];

  return v7;
}

- (unint64_t)hash
{
  sourceIdentifier = [(VSUserAccount *)self sourceIdentifier];
  v4 = [sourceIdentifier hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSUserAccount sourceType](self, "sourceType")}];
  v6 = [v5 hash];
  deviceIdentifier = [(VSUserAccount *)self deviceIdentifier];
  v8 = v4 ^ [deviceIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSUserAccount.", v10}];
      }

      v11 = v6;
      sourceIdentifier = [(VSUserAccount *)self sourceIdentifier];
      sourceIdentifier2 = [(VSUserAccount *)v11 sourceIdentifier];
      if ([sourceIdentifier isEqualToString:sourceIdentifier2] && (v14 = -[VSUserAccount sourceType](self, "sourceType"), v14 == -[VSUserAccount sourceType](v11, "sourceType")))
      {
        deviceIdentifier = [(VSUserAccount *)self deviceIdentifier];
        deviceIdentifier2 = [(VSUserAccount *)v11 deviceIdentifier];
        v17 = [deviceIdentifier isEqual:deviceIdentifier2];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VSUserAccount alloc];
  accountType = [(VSUserAccount *)self accountType];
  updateURL = [(VSUserAccount *)self updateURL];
  sourceType = [(VSUserAccount *)self sourceType];
  sourceIdentifier = [(VSUserAccount *)self sourceIdentifier];
  v9 = [(VSUserAccount *)v4 initWithAccountType:accountType updateURL:updateURL sourceType:sourceType sourceIdentifier:sourceIdentifier];

  [(VSUserAccount *)v9 setDeviceCategory:[(VSUserAccount *)self deviceCategory]];
  [(VSUserAccount *)v9 setKeychainItemHash:[(VSUserAccount *)self keychainItemHash]];
  [(VSUserAccount *)v9 setRequiresSystemTrust:[(VSUserAccount *)self requiresSystemTrust]];
  accountProviderIdentifier = [(VSUserAccount *)self accountProviderIdentifier];
  [(VSUserAccount *)v9 setAccountProviderIdentifier:accountProviderIdentifier];

  identifier = [(VSUserAccount *)self identifier];
  [(VSUserAccount *)v9 setIdentifier:identifier];

  [(VSUserAccount *)v9 setSignedOut:[(VSUserAccount *)self isSignedOut]];
  subscriptionBillingCycleEndDate = [(VSUserAccount *)self subscriptionBillingCycleEndDate];
  [(VSUserAccount *)v9 setSubscriptionBillingCycleEndDate:subscriptionBillingCycleEndDate];

  tierIdentifiers = [(VSUserAccount *)self tierIdentifiers];
  [(VSUserAccount *)v9 setTierIdentifiers:tierIdentifiers];

  billingIdentifier = [(VSUserAccount *)self billingIdentifier];
  [(VSUserAccount *)v9 setBillingIdentifier:billingIdentifier];

  authenticationData = [(VSUserAccount *)self authenticationData];
  [(VSUserAccount *)v9 setAuthenticationData:authenticationData];

  [(VSUserAccount *)v9 setIsDeveloperCreated:[(VSUserAccount *)self isDeveloperCreated]];
  created = [(VSUserAccount *)self created];
  [(VSUserAccount *)v9 setCreated:created];

  modified = [(VSUserAccount *)self modified];
  [(VSUserAccount *)v9 setModified:modified];

  deviceIdentifier = [(VSUserAccount *)self deviceIdentifier];
  [(VSUserAccount *)v9 setDeviceIdentifier:deviceIdentifier];

  deviceName = [(VSUserAccount *)self deviceName];
  [(VSUserAccount *)v9 setDeviceName:deviceName];

  modifierIdentifier = [(VSUserAccount *)self modifierIdentifier];
  [(VSUserAccount *)v9 setModifierIdentifier:modifierIdentifier];

  modifierType = [(VSUserAccount *)self modifierType];
  [(VSUserAccount *)v9 setModifierType:modifierType];

  v22 = [(VSUserAccount *)self api];
  [(VSUserAccount *)v9 setApi:v22];

  appleSubscription = [(VSUserAccount *)self appleSubscription];
  [(VSUserAccount *)v9 setAppleSubscription:appleSubscription];

  return v9;
}

- (void)setCreated:(id)created
{
  createdCopy = created;
  v7 = createdCopy;
  if (createdCopy)
  {
    v5 = createdCopy;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] now];
  }

  created = self->_created;
  self->_created = v5;
}

- (void)setModified:(id)modified
{
  modifiedCopy = modified;
  v7 = modifiedCopy;
  if (modifiedCopy)
  {
    v5 = modifiedCopy;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] now];
  }

  modified = self->_modified;
  self->_modified = v5;
}

- (id)componentsForPrinting:(id)printing
{
  v4 = MEMORY[0x277CBEB18];
  printingCopy = printing;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCACA8];
  sourceIdentifier = [(VSUserAccount *)self sourceIdentifier];
  v9 = [v7 stringWithFormat:@"%@%@%@", @"sourceIdentifier", printingCopy, sourceIdentifier];
  [v6 addObject:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"sourceType", printingCopy, -[VSUserAccount sourceType](self, "sourceType")];
  [v6 addObject:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"deviceCategory", printingCopy, -[VSUserAccount deviceCategory](self, "deviceCategory")];
  [v6 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"keychainItemHash", printingCopy, -[VSUserAccount keychainItemHash](self, "keychainItemHash")];
  [v6 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  updateURL = [(VSUserAccount *)self updateURL];
  v15 = [v13 stringWithFormat:@"%@%@%@", @"updateURL", printingCopy, updateURL];
  [v6 addObject:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"requiresSystemTrust", printingCopy, -[VSUserAccount requiresSystemTrust](self, "requiresSystemTrust")];
  [v6 addObject:v16];

  v17 = MEMORY[0x277CCACA8];
  accountProviderIdentifier = [(VSUserAccount *)self accountProviderIdentifier];
  v19 = [v17 stringWithFormat:@"%@%@%@", @"accountProviderIdentifier", printingCopy, accountProviderIdentifier];
  [v6 addObject:v19];

  v20 = MEMORY[0x277CCACA8];
  identifier = [(VSUserAccount *)self identifier];
  v22 = [v20 stringWithFormat:@"%@%@%@", @"identifier", printingCopy, identifier];
  [v6 addObject:v22];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"accountType", printingCopy, -[VSUserAccount accountType](self, "accountType")];
  [v6 addObject:v23];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"signedOut", printingCopy, -[VSUserAccount isSignedOut](self, "isSignedOut")];
  [v6 addObject:v24];

  v25 = MEMORY[0x277CCACA8];
  subscriptionBillingCycleEndDate = [(VSUserAccount *)self subscriptionBillingCycleEndDate];
  v27 = [v25 stringWithFormat:@"%@%@%@", @"subscriptionBillingCycleEndDate", printingCopy, subscriptionBillingCycleEndDate];
  [v6 addObject:v27];

  v28 = MEMORY[0x277CCACA8];
  tierIdentifiers = [(VSUserAccount *)self tierIdentifiers];
  v30 = [v28 stringWithFormat:@"%@%@%@", @"tierIdentifiers", printingCopy, tierIdentifiers];
  [v6 addObject:v30];

  v31 = MEMORY[0x277CCACA8];
  billingIdentifier = [(VSUserAccount *)self billingIdentifier];
  v33 = [v31 stringWithFormat:@"%@%@%@", @"billingIdentifier", printingCopy, billingIdentifier];
  [v6 addObject:v33];

  v34 = MEMORY[0x277CCACA8];
  authenticationData = [(VSUserAccount *)self authenticationData];
  v36 = [v34 stringWithFormat:@"%@%@%@", @"authenticationData", printingCopy, authenticationData];
  [v6 addObject:v36];

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"isFromCurrentDevice", printingCopy, -[VSUserAccount isFromCurrentDevice](self, "isFromCurrentDevice")];
  [v6 addObject:v37];

  v38 = MEMORY[0x277CCACA8];
  created = [(VSUserAccount *)self created];
  v40 = [v38 stringWithFormat:@"%@%@%@", @"created", printingCopy, created];
  [v6 addObject:v40];

  v41 = MEMORY[0x277CCACA8];
  modified = [(VSUserAccount *)self modified];
  v43 = [v41 stringWithFormat:@"%@%@%@", @"modified", printingCopy, modified];
  [v6 addObject:v43];

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"isDeveloperCreated", printingCopy, -[VSUserAccount isDeveloperCreated](self, "isDeveloperCreated")];
  [v6 addObject:v44];

  v45 = MEMORY[0x277CCACA8];
  appleSubscription = [(VSUserAccount *)self appleSubscription];
  v47 = [v45 stringWithFormat:@"%@%@%@", @"appleSubscription", printingCopy, appleSubscription];

  [v6 addObject:v47];

  return v6;
}

- (id)prettyPrint
{
  v2 = [(VSUserAccount *)self componentsForPrinting:@": "];
  v3 = [v2 componentsJoinedByString:@"\n"];

  return v3;
}

@end