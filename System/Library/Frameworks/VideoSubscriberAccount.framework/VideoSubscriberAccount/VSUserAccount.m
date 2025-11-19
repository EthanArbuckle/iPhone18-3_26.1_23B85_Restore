@interface VSUserAccount
+ (VSUserAccount)new;
- (BOOL)isEqual:(id)a3;
- (VSUserAccount)init;
- (VSUserAccount)initWithAccountType:(VSUserAccountType)accountType updateURL:(NSURL *)url;
- (VSUserAccount)initWithAccountType:(int64_t)a3 updateURL:(id)a4 sourceType:(int64_t)a5 sourceIdentifier:(id)a6;
- (VSUserAccount)initWithCoder:(id)a3;
- (id)componentsForPrinting:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)prettyPrint;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCreated:(id)a3;
- (void)setDeviceIdentifier:(id)a3;
- (void)setModified:(id)a3;
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
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"VSUserAccount initialized without a bundle."];
    }

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];

    commonInit_0(v7, accountType, v6, 0, v11);
  }

  return v7;
}

- (VSUserAccount)initWithAccountType:(int64_t)a3 updateURL:(id)a4 sourceType:(int64_t)a5 sourceIdentifier:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = VSUserAccount;
  v12 = [(VSUserAccount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    commonInit_0(v12, a3, v10, a5, v11);
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

- (void)setDeviceIdentifier:(id)a3
{
  v6 = a3;
  v5 = [(VSUserAccount *)self deviceIdentifier];

  if (!v5)
  {
    objc_storeStrong(&self->_deviceIdentifier, a3);
  }
}

- (VSUserAccount)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSUserAccount *)self initWithAccountType:0 updateURL:0 sourceType:0 sourceIdentifier:&stru_284DD5B48];
  if (!v5)
  {
LABEL_6:
    v25 = v5;
    goto LABEL_10;
  }

  -[VSUserAccount setSourceType:](v5, "setSourceType:", [v4 decodeIntForKey:@"sourceType"]);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  if (v6)
  {
    v7 = v6;
    [(VSUserAccount *)v5 setSourceIdentifier:v6];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v9 = [v4 decodeBoolForKey:@"fromCurrentDevice"];
    if (v8)
    {
      [(VSUserAccount *)v5 setDeviceIdentifier:v8];
    }

    -[VSUserAccount setDeviceCategory:](v5, "setDeviceCategory:", [v4 decodeIntForKey:@"deviceCategory"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keychainItemHash"];
    -[VSUserAccount setKeychainItemHash:](v5, "setKeychainItemHash:", [v10 unsignedIntegerValue]);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateURL"];
    [(VSUserAccount *)v5 setUpdateURL:v11];

    -[VSUserAccount setRequiresSystemTrust:](v5, "setRequiresSystemTrust:", [v4 decodeBoolForKey:@"requiresSystemTrust"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountProviderIdentifier"];
    [(VSUserAccount *)v5 setAccountProviderIdentifier:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(VSUserAccount *)v5 setIdentifier:v13];

    -[VSUserAccount setAccountType:](v5, "setAccountType:", [v4 decodeIntegerForKey:@"accountType"]);
    -[VSUserAccount setSignedOut:](v5, "setSignedOut:", [v4 decodeBoolForKey:@"signedOut"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionBillingCycleEndDate"];
    [(VSUserAccount *)v5 setSubscriptionBillingCycleEndDate:v14];

    v15 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tierIdentifiers"];
    [(VSUserAccount *)v5 setTierIdentifiers:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingIdentifier"];
    [(VSUserAccount *)v5 setBillingIdentifier:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationData"];
    [(VSUserAccount *)v5 setAuthenticationData:v17];

    [(VSUserAccount *)v5 setFromCurrentDevice:v9];
    -[VSUserAccount setIsDeveloperCreated:](v5, "setIsDeveloperCreated:", [v4 decodeBoolForKey:@"developerCreated"]);
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    [(VSUserAccount *)v5 setCreated:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modified"];
    [(VSUserAccount *)v5 setModified:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(VSUserAccount *)v5 setDeviceName:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifierIdentifier"];
    [(VSUserAccount *)v5 setModifierIdentifier:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifierType"];
    [(VSUserAccount *)v5 setModifierType:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"api"];
    [(VSUserAccount *)v5 setApi:v23];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleSubscription"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSUserAccount sourceType](self, "sourceType")}];
  [v4 encodeInt:objc_msgSend(v5 forKey:{"intValue"), @"sourceType"}];

  v6 = [(VSUserAccount *)self sourceIdentifier];
  [v4 encodeObject:v6 forKey:@"sourceIdentifier"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSUserAccount deviceCategory](self, "deviceCategory")}];
  [v4 encodeInt:objc_msgSend(v7 forKey:{"intValue"), @"deviceCategory"}];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VSUserAccount keychainItemHash](self, "keychainItemHash")}];
  [v4 encodeObject:v8 forKey:@"keychainItemHash"];

  v9 = [(VSUserAccount *)self updateURL];
  [v4 encodeObject:v9 forKey:@"updateURL"];

  [v4 encodeBool:-[VSUserAccount requiresSystemTrust](self forKey:{"requiresSystemTrust"), @"requiresSystemTrust"}];
  v10 = [(VSUserAccount *)self accountProviderIdentifier];
  [v4 encodeObject:v10 forKey:@"accountProviderIdentifier"];

  v11 = [(VSUserAccount *)self identifier];
  [v4 encodeObject:v11 forKey:@"identifier"];

  [v4 encodeInteger:-[VSUserAccount accountType](self forKey:{"accountType"), @"accountType"}];
  [v4 encodeBool:-[VSUserAccount isSignedOut](self forKey:{"isSignedOut"), @"signedOut"}];
  v12 = [(VSUserAccount *)self subscriptionBillingCycleEndDate];
  [v4 encodeObject:v12 forKey:@"subscriptionBillingCycleEndDate"];

  v13 = [(VSUserAccount *)self tierIdentifiers];
  [v4 encodeObject:v13 forKey:@"tierIdentifiers"];

  v14 = [(VSUserAccount *)self billingIdentifier];
  [v4 encodeObject:v14 forKey:@"billingIdentifier"];

  v15 = [(VSUserAccount *)self authenticationData];
  [v4 encodeObject:v15 forKey:@"authenticationData"];

  [v4 encodeBool:-[VSUserAccount isFromCurrentDevice](self forKey:{"isFromCurrentDevice"), @"fromCurrentDevice"}];
  [v4 encodeBool:-[VSUserAccount isDeveloperCreated](self forKey:{"isDeveloperCreated"), @"developerCreated"}];
  v16 = [(VSUserAccount *)self created];
  [v4 encodeObject:v16 forKey:@"created"];

  v17 = [(VSUserAccount *)self modified];
  [v4 encodeObject:v17 forKey:@"modified"];

  v18 = [(VSUserAccount *)self deviceIdentifier];
  [v4 encodeObject:v18 forKey:@"deviceIdentifier"];

  v19 = [(VSUserAccount *)self deviceName];
  [v4 encodeObject:v19 forKey:@"deviceName"];

  v20 = [(VSUserAccount *)self modifierIdentifier];
  [v4 encodeObject:v20 forKey:@"modifierIdentifier"];

  v21 = [(VSUserAccount *)self modifierType];
  [v4 encodeObject:v21 forKey:@"modifierType"];

  v22 = [(VSUserAccount *)self api];
  [v4 encodeObject:v22 forKey:@"api"];

  v23 = [(VSUserAccount *)self appleSubscription];
  [v4 encodeObject:v23 forKey:@"appleSubscription"];
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
  v3 = [(VSUserAccount *)self sourceIdentifier];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSUserAccount sourceType](self, "sourceType")}];
  v6 = [v5 hash];
  v7 = [(VSUserAccount *)self deviceIdentifier];
  v8 = v4 ^ [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v17 = 1;
  }

  else if (v4)
  {
    v6 = v4;
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
      v12 = [(VSUserAccount *)self sourceIdentifier];
      v13 = [(VSUserAccount *)v11 sourceIdentifier];
      if ([v12 isEqualToString:v13] && (v14 = -[VSUserAccount sourceType](self, "sourceType"), v14 == -[VSUserAccount sourceType](v11, "sourceType")))
      {
        v15 = [(VSUserAccount *)self deviceIdentifier];
        v16 = [(VSUserAccount *)v11 deviceIdentifier];
        v17 = [v15 isEqual:v16];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VSUserAccount alloc];
  v5 = [(VSUserAccount *)self accountType];
  v6 = [(VSUserAccount *)self updateURL];
  v7 = [(VSUserAccount *)self sourceType];
  v8 = [(VSUserAccount *)self sourceIdentifier];
  v9 = [(VSUserAccount *)v4 initWithAccountType:v5 updateURL:v6 sourceType:v7 sourceIdentifier:v8];

  [(VSUserAccount *)v9 setDeviceCategory:[(VSUserAccount *)self deviceCategory]];
  [(VSUserAccount *)v9 setKeychainItemHash:[(VSUserAccount *)self keychainItemHash]];
  [(VSUserAccount *)v9 setRequiresSystemTrust:[(VSUserAccount *)self requiresSystemTrust]];
  v10 = [(VSUserAccount *)self accountProviderIdentifier];
  [(VSUserAccount *)v9 setAccountProviderIdentifier:v10];

  v11 = [(VSUserAccount *)self identifier];
  [(VSUserAccount *)v9 setIdentifier:v11];

  [(VSUserAccount *)v9 setSignedOut:[(VSUserAccount *)self isSignedOut]];
  v12 = [(VSUserAccount *)self subscriptionBillingCycleEndDate];
  [(VSUserAccount *)v9 setSubscriptionBillingCycleEndDate:v12];

  v13 = [(VSUserAccount *)self tierIdentifiers];
  [(VSUserAccount *)v9 setTierIdentifiers:v13];

  v14 = [(VSUserAccount *)self billingIdentifier];
  [(VSUserAccount *)v9 setBillingIdentifier:v14];

  v15 = [(VSUserAccount *)self authenticationData];
  [(VSUserAccount *)v9 setAuthenticationData:v15];

  [(VSUserAccount *)v9 setIsDeveloperCreated:[(VSUserAccount *)self isDeveloperCreated]];
  v16 = [(VSUserAccount *)self created];
  [(VSUserAccount *)v9 setCreated:v16];

  v17 = [(VSUserAccount *)self modified];
  [(VSUserAccount *)v9 setModified:v17];

  v18 = [(VSUserAccount *)self deviceIdentifier];
  [(VSUserAccount *)v9 setDeviceIdentifier:v18];

  v19 = [(VSUserAccount *)self deviceName];
  [(VSUserAccount *)v9 setDeviceName:v19];

  v20 = [(VSUserAccount *)self modifierIdentifier];
  [(VSUserAccount *)v9 setModifierIdentifier:v20];

  v21 = [(VSUserAccount *)self modifierType];
  [(VSUserAccount *)v9 setModifierType:v21];

  v22 = [(VSUserAccount *)self api];
  [(VSUserAccount *)v9 setApi:v22];

  v23 = [(VSUserAccount *)self appleSubscription];
  [(VSUserAccount *)v9 setAppleSubscription:v23];

  return v9;
}

- (void)setCreated:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] now];
  }

  created = self->_created;
  self->_created = v5;
}

- (void)setModified:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] now];
  }

  modified = self->_modified;
  self->_modified = v5;
}

- (id)componentsForPrinting:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSUserAccount *)self sourceIdentifier];
  v9 = [v7 stringWithFormat:@"%@%@%@", @"sourceIdentifier", v5, v8];
  [v6 addObject:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"sourceType", v5, -[VSUserAccount sourceType](self, "sourceType")];
  [v6 addObject:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"deviceCategory", v5, -[VSUserAccount deviceCategory](self, "deviceCategory")];
  [v6 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"keychainItemHash", v5, -[VSUserAccount keychainItemHash](self, "keychainItemHash")];
  [v6 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(VSUserAccount *)self updateURL];
  v15 = [v13 stringWithFormat:@"%@%@%@", @"updateURL", v5, v14];
  [v6 addObject:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"requiresSystemTrust", v5, -[VSUserAccount requiresSystemTrust](self, "requiresSystemTrust")];
  [v6 addObject:v16];

  v17 = MEMORY[0x277CCACA8];
  v18 = [(VSUserAccount *)self accountProviderIdentifier];
  v19 = [v17 stringWithFormat:@"%@%@%@", @"accountProviderIdentifier", v5, v18];
  [v6 addObject:v19];

  v20 = MEMORY[0x277CCACA8];
  v21 = [(VSUserAccount *)self identifier];
  v22 = [v20 stringWithFormat:@"%@%@%@", @"identifier", v5, v21];
  [v6 addObject:v22];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%ld", @"accountType", v5, -[VSUserAccount accountType](self, "accountType")];
  [v6 addObject:v23];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"signedOut", v5, -[VSUserAccount isSignedOut](self, "isSignedOut")];
  [v6 addObject:v24];

  v25 = MEMORY[0x277CCACA8];
  v26 = [(VSUserAccount *)self subscriptionBillingCycleEndDate];
  v27 = [v25 stringWithFormat:@"%@%@%@", @"subscriptionBillingCycleEndDate", v5, v26];
  [v6 addObject:v27];

  v28 = MEMORY[0x277CCACA8];
  v29 = [(VSUserAccount *)self tierIdentifiers];
  v30 = [v28 stringWithFormat:@"%@%@%@", @"tierIdentifiers", v5, v29];
  [v6 addObject:v30];

  v31 = MEMORY[0x277CCACA8];
  v32 = [(VSUserAccount *)self billingIdentifier];
  v33 = [v31 stringWithFormat:@"%@%@%@", @"billingIdentifier", v5, v32];
  [v6 addObject:v33];

  v34 = MEMORY[0x277CCACA8];
  v35 = [(VSUserAccount *)self authenticationData];
  v36 = [v34 stringWithFormat:@"%@%@%@", @"authenticationData", v5, v35];
  [v6 addObject:v36];

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"isFromCurrentDevice", v5, -[VSUserAccount isFromCurrentDevice](self, "isFromCurrentDevice")];
  [v6 addObject:v37];

  v38 = MEMORY[0x277CCACA8];
  v39 = [(VSUserAccount *)self created];
  v40 = [v38 stringWithFormat:@"%@%@%@", @"created", v5, v39];
  [v6 addObject:v40];

  v41 = MEMORY[0x277CCACA8];
  v42 = [(VSUserAccount *)self modified];
  v43 = [v41 stringWithFormat:@"%@%@%@", @"modified", v5, v42];
  [v6 addObject:v43];

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%d", @"isDeveloperCreated", v5, -[VSUserAccount isDeveloperCreated](self, "isDeveloperCreated")];
  [v6 addObject:v44];

  v45 = MEMORY[0x277CCACA8];
  v46 = [(VSUserAccount *)self appleSubscription];
  v47 = [v45 stringWithFormat:@"%@%@%@", @"appleSubscription", v5, v46];

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