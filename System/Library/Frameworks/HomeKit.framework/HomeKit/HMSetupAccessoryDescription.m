@interface HMSetupAccessoryDescription
+ (id)shortDescription;
- (BOOL)hasAddRequest;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPaired;
- (BOOL)supportsBTLE;
- (BOOL)supportsIP;
- (BOOL)supportsWAC;
- (HMAccessory)accessoryBeingReplaced;
- (HMAccessoryCategory)category;
- (HMSetupAccessoryDescription)initWithAccessoryUUID:(id)a3 accessoryName:(id)a4 appID:(id)a5 homeUUID:(id)a6;
- (HMSetupAccessoryDescription)initWithAddRequestIdentifier:(id)a3 accessoryName:(id)a4 accessoryCategory:(id)a5 setupAccessoryPayload:(id)a6 appID:(id)a7 ownershipToken:(id)a8;
- (HMSetupAccessoryDescription)initWithAppIdentifier:(id)a3 homeUUID:(id)a4;
- (HMSetupAccessoryDescription)initWithCoder:(id)a3;
- (HMSetupAccessoryDescription)initWithDictionaryRepresentation:(id)a3;
- (HMSetupAccessoryDescription)initWithSetupAccessoryPayload:(id)a3 appID:(id)a4 homeUUID:(id)a5 ownershipToken:(id)a6;
- (HMSetupAccessoryDescription)initWithStagedCHIPAccessoryPairingIdentifier:(id)a3;
- (NSArray)attributeDescriptions;
- (NSDictionary)dictionaryRepresentation;
- (NSString)setupCode;
- (NSString)setupID;
- (NSString)shortDescription;
- (NSUUID)suggestedRoomUniqueIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSetupCode:(id)a3;
- (void)updateAccessoryCategory:(id)a3;
- (void)updateAccessoryName:(id)a3;
- (void)updateAppIdentifier:(id)a3;
- (void)updateWithAccessory:(id)a3;
- (void)updateWithAuthToken:(id)a3 uuid:(id)a4;
- (void)updateWithSetupAccessoryPayload:(id)a3;
@end

@implementation HMSetupAccessoryDescription

- (HMAccessory)accessoryBeingReplaced
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryBeingReplaced);

  return WeakRetained;
}

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HMSetupAccessoryDescription *)self accessoryName];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    v6 = [(HMSetupAccessoryDescription *)self accessoryName];
    v7 = [v5 initWithName:@"Accessory Name" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMSetupAccessoryDescription *)self accessoryUUID];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    v10 = [(HMSetupAccessoryDescription *)self accessoryUUID];
    v11 = [v9 initWithName:@"Accessory UUID" value:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMSetupAccessoryDescription *)self manufacturerName];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    v14 = [(HMSetupAccessoryDescription *)self manufacturerName];
    v15 = [v13 initWithName:@"Manufacturer Name" value:v14];
    [v3 addObject:v15];
  }

  v16 = [(HMSetupAccessoryDescription *)self marketingName];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    v18 = [(HMSetupAccessoryDescription *)self marketingName];
    v19 = [v17 initWithName:@"Marketing Name" value:v18];
    [v3 addObject:v19];
  }

  v20 = [(HMSetupAccessoryDescription *)self installationGuideURL];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x1E69A29C8]);
    v22 = [(HMSetupAccessoryDescription *)self installationGuideURL];
    v23 = [v21 initWithName:@"Installation Guide URL" value:v22];
    [v3 addObject:v23];
  }

  v24 = [(HMSetupAccessoryDescription *)self category];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x1E69A29C8]);
    v26 = [(HMSetupAccessoryDescription *)self category];
    v27 = [v25 initWithName:@"Category" value:v26];
    [v3 addObject:v27];
  }

  v28 = [(HMSetupAccessoryDescription *)self appIdentifier];

  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x1E69A29C8]);
    v30 = [(HMSetupAccessoryDescription *)self appIdentifier];
    v31 = [v29 initWithName:@"App Identifier" value:v30];
    [v3 addObject:v31];
  }

  v32 = [(HMSetupAccessoryDescription *)self appBundleURL];

  if (v32)
  {
    v33 = objc_alloc(MEMORY[0x1E69A29C8]);
    v34 = [(HMSetupAccessoryDescription *)self appBundleURL];
    v35 = [v33 initWithName:@"App Bundle URL" value:v34];
    [v3 addObject:v35];
  }

  if ([(HMSetupAccessoryDescription *)self addAndSetupAccessories])
  {
    v36 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self addAndSetupAccessories];
    v37 = HMFBooleanToString();
    v38 = [v36 initWithName:@"Add And Setup" value:v37];
    [v3 addObject:v38];
  }

  v39 = [(HMSetupAccessoryDescription *)self homeUUID];

  if (v39)
  {
    v40 = objc_alloc(MEMORY[0x1E69A29C8]);
    v41 = [(HMSetupAccessoryDescription *)self homeUUID];
    v42 = [v40 initWithName:@"Home UUID" value:v41];
    [v3 addObject:v42];
  }

  v43 = [(HMSetupAccessoryDescription *)self storeID];

  if (v43)
  {
    v44 = objc_alloc(MEMORY[0x1E69A29C8]);
    v45 = [(HMSetupAccessoryDescription *)self storeID];
    v46 = [v44 initWithName:@"Store ID" value:v45];
    [v3 addObject:v46];
  }

  v47 = [(HMSetupAccessoryDescription *)self bundleID];

  if (v47)
  {
    v48 = objc_alloc(MEMORY[0x1E69A29C8]);
    v49 = [(HMSetupAccessoryDescription *)self bundleID];
    v50 = [v48 initWithName:@"Bundle ID" value:v49];
    [v3 addObject:v50];
  }

  v51 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];

  if (v51)
  {
    v52 = objc_alloc(MEMORY[0x1E69A29C8]);
    v53 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
    v54 = [v52 initWithName:@"Suggested Room UUID" value:v53];
    [v3 addObject:v54];
  }

  v55 = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];

  if (v55)
  {
    v56 = objc_alloc(MEMORY[0x1E69A29C8]);
    v57 = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
    v58 = [v56 initWithName:@"Suggested Accessory Name" value:v57];
    [v3 addObject:v58];
  }

  if ([(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI])
  {
    v59 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI];
    v60 = HMFBooleanToString();
    v61 = [v59 initWithName:@"SPI Entitled" value:v60];
    [v3 addObject:v61];
  }

  if ([(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload])
  {
    v62 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload];
    v63 = HMFBooleanToString();
    v64 = [v62 initWithName:@"Setup Accessory Payload Entitled" value:v63];
    [v3 addObject:v64];
  }

  if ([(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload])
  {
    v65 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload];
    v66 = HMFBooleanToString();
    v67 = [v65 initWithName:@"Matter Setup Payload Entitled" value:v66];
    [v3 addObject:v67];
  }

  if ([(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem])
  {
    v68 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem];
    v69 = HMFBooleanToString();
    v70 = [v68 initWithName:@"Setup Initiated By Other Matter Ecosystem" value:v69];
    [v3 addObject:v70];
  }

  v71 = [(HMSetupAccessoryDescription *)self setupAuthTokenUUID];

  if (v71)
  {
    v72 = objc_alloc(MEMORY[0x1E69A29C8]);
    v73 = [(HMSetupAccessoryDescription *)self setupAuthTokenUUID];
    v74 = [v72 initWithName:@"Setup Auth Token UUID" value:v73];
    [v3 addObject:v74];
  }

  v75 = [(HMSetupAccessoryDescription *)self setupAuthToken];

  if (v75)
  {
    v76 = objc_alloc(MEMORY[0x1E69A29C8]);
    v77 = [(HMSetupAccessoryDescription *)self setupAuthToken];
    v78 = [v76 initWithName:@"Setup Auth Token" value:v77];
    [v3 addObject:v78];
  }

  v79 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];

  if (v79)
  {
    v80 = objc_alloc(MEMORY[0x1E69A29C8]);
    v81 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    v82 = [v80 initWithName:@"Setup Accessory Payload" value:v81];
    [v3 addObject:v82];
  }

  if ([(HMSetupAccessoryDescription *)self certificationStatus])
  {
    v83 = objc_alloc(MEMORY[0x1E69A29C8]);
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSetupAccessoryDescription certificationStatus](self, "certificationStatus")}];
    v85 = [v83 initWithName:@"Certification Status" value:v84];
    [v3 addObject:v85];
  }

  v86 = [(HMSetupAccessoryDescription *)self accessoryBeingReplaced];
  if (v86)
  {
    v87 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Accessory Being Replaced" value:v86];
    [v3 addObject:v87];
  }

  v88 = [(HMSetupAccessoryDescription *)self cancellationReason];

  if (v88)
  {
    v89 = objc_alloc(MEMORY[0x1E69A29C8]);
    v90 = [(HMSetupAccessoryDescription *)self cancellationReason];
    v91 = [v89 initWithName:@"Cancellation Reason" value:v90];
    [v3 addObject:v91];
  }

  v92 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];

  if (v92)
  {
    v93 = objc_alloc(MEMORY[0x1E69A29C8]);
    v94 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
    v95 = [v93 initWithName:@"Add Request Identifier" value:v94];
    [v3 addObject:v95];
  }

  v96 = [(HMSetupAccessoryDescription *)self setupCode];

  if (v96)
  {
    v97 = objc_alloc(MEMORY[0x1E69A29C8]);
    v98 = [(HMSetupAccessoryDescription *)self setupCode];
    v99 = HMFBooleanToString();
    v100 = [v97 initWithName:@"Has Setup Code" value:v99];
    [v3 addObject:v100];
  }

  v101 = [(HMSetupAccessoryDescription *)self ownershipToken];

  if (v101)
  {
    v102 = objc_alloc(MEMORY[0x1E69A29C8]);
    v103 = [(HMSetupAccessoryDescription *)self ownershipToken];
    v104 = HMFBooleanToString();
    v105 = [v102 initWithName:@"Has Ownership Token" value:v104];
    [v3 addObject:v105];
  }

  v106 = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];

  if (v106)
  {
    v107 = objc_alloc(MEMORY[0x1E69A29C8]);
    v108 = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
    v109 = [v107 initWithName:@"Accessory Server Identifier" value:v108];
    [v3 addObject:v109];
  }

  if ([(HMSetupAccessoryDescription *)self doNetworkScan])
  {
    v110 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self doNetworkScan];
    v111 = HMFBooleanToString();
    v112 = [v110 initWithName:@"Do Network Scan" value:v111];
    [v3 addObject:v112];
  }

  v113 = [v3 copy];

  return v113;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v3 = [(HMSetupAccessoryDescription *)self accessoryUUID];
  v4 = [v3 hash];

  v5 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v8 = [v7 hash];

  v9 = [(HMSetupAccessoryDescription *)self homeUUID];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v71) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = [(HMSetupAccessoryDescription *)self accessoryUUID];
    v8 = [(HMSetupAccessoryDescription *)v6 accessoryUUID];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = [(HMSetupAccessoryDescription *)self accessoryName];
    v11 = [(HMSetupAccessoryDescription *)v6 accessoryName];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_32;
    }

    v13 = [(HMSetupAccessoryDescription *)self manufacturerName];
    v14 = [(HMSetupAccessoryDescription *)v6 manufacturerName];
    v15 = HMFEqualObjects();

    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = [(HMSetupAccessoryDescription *)self marketingName];
    v17 = [(HMSetupAccessoryDescription *)v6 marketingName];
    v18 = HMFEqualObjects();

    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = [(HMSetupAccessoryDescription *)self installationGuideURL];
    v20 = [(HMSetupAccessoryDescription *)v6 installationGuideURL];
    v21 = HMFEqualObjects();

    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = [(HMSetupAccessoryDescription *)self category];
    v23 = [(HMSetupAccessoryDescription *)v6 category];
    v24 = HMFEqualObjects();

    if (!v24)
    {
      goto LABEL_32;
    }

    v25 = [(HMSetupAccessoryDescription *)self appIdentifier];
    v26 = [(HMSetupAccessoryDescription *)v6 appIdentifier];
    v27 = HMFEqualObjects();

    if (!v27)
    {
      goto LABEL_32;
    }

    v28 = [(HMSetupAccessoryDescription *)self appBundleURL];
    v29 = [(HMSetupAccessoryDescription *)v6 appBundleURL];
    v30 = HMFEqualObjects();

    if (!v30)
    {
      goto LABEL_32;
    }

    v31 = [(HMSetupAccessoryDescription *)self addAndSetupAccessories];
    if (v31 != [(HMSetupAccessoryDescription *)v6 addAndSetupAccessories])
    {
      goto LABEL_32;
    }

    v32 = [(HMSetupAccessoryDescription *)self homeUUID];
    v33 = [(HMSetupAccessoryDescription *)v6 homeUUID];
    v34 = HMFEqualObjects();

    if (!v34)
    {
      goto LABEL_32;
    }

    v35 = [(HMSetupAccessoryDescription *)self storeID];
    v36 = [(HMSetupAccessoryDescription *)v6 storeID];
    v37 = HMFEqualObjects();

    if (!v37)
    {
      goto LABEL_32;
    }

    v38 = [(HMSetupAccessoryDescription *)self bundleID];
    v39 = [(HMSetupAccessoryDescription *)v6 bundleID];
    v40 = HMFEqualObjects();

    if (!v40)
    {
      goto LABEL_32;
    }

    v41 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
    v42 = [(HMSetupAccessoryDescription *)v6 suggestedRoomUUID];
    v43 = HMFEqualObjects();

    if (!v43)
    {
      goto LABEL_32;
    }

    v44 = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
    v45 = [(HMSetupAccessoryDescription *)v6 suggestedAccessoryName];
    v46 = HMFEqualObjects();

    if (!v46)
    {
      goto LABEL_32;
    }

    v47 = [(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI];
    if (v47 != [(HMSetupAccessoryDescription *)v6 isEntitledForHomeKitSPI])
    {
      goto LABEL_32;
    }

    v48 = [(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload];
    if (v48 != [(HMSetupAccessoryDescription *)v6 isEntitledForThirdPartySetupAccessoryPayload])
    {
      goto LABEL_32;
    }

    v49 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    v50 = [(HMSetupAccessoryDescription *)v6 setupAccessoryPayload];
    v51 = HMFEqualObjects();

    if (!v51)
    {
      goto LABEL_32;
    }

    v52 = [(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload];
    if (v52 != [(HMSetupAccessoryDescription *)v6 isEntitledForThirdPartyMatterSetupPayload])
    {
      goto LABEL_32;
    }

    v53 = [(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem];
    if (v53 != [(HMSetupAccessoryDescription *)v6 isSetupInitiatedByOtherMatterEcosystem])
    {
      goto LABEL_32;
    }

    v54 = [(HMSetupAccessoryDescription *)self certificationStatus];
    if (v54 != [(HMSetupAccessoryDescription *)v6 certificationStatus])
    {
      goto LABEL_32;
    }

    v55 = [(HMSetupAccessoryDescription *)self accessoryBeingReplaced];
    v56 = [(HMSetupAccessoryDescription *)v6 accessoryBeingReplaced];
    v57 = HMFEqualObjects();

    if (!v57)
    {
      goto LABEL_32;
    }

    v58 = [(HMSetupAccessoryDescription *)self cancellationReason];
    v59 = [(HMSetupAccessoryDescription *)v6 cancellationReason];
    v60 = HMFEqualObjects();

    if (!v60)
    {
      goto LABEL_32;
    }

    v61 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
    v62 = [(HMSetupAccessoryDescription *)v6 addRequestIdentifier];
    v63 = HMFEqualObjects();

    if (!v63)
    {
      goto LABEL_32;
    }

    v64 = [(HMSetupAccessoryDescription *)self setupCode];
    v65 = [(HMSetupAccessoryDescription *)v6 setupCode];
    v66 = HMFEqualObjects();

    if (!v66)
    {
      goto LABEL_32;
    }

    v67 = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
    v68 = [(HMSetupAccessoryDescription *)v6 accessoryServerIdentifier];
    v69 = HMFEqualObjects();

    if (v69)
    {
      v70 = [(HMSetupAccessoryDescription *)self doNetworkScan];
      v71 = v70 ^ [(HMSetupAccessoryDescription *)v6 doNetworkScan]^ 1;
    }

    else
    {
LABEL_32:
      LOBYTE(v71) = 0;
    }
  }

  return v71;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];

  if (v4)
  {
    v5 = [HMSetupAccessoryDescription alloc];
    v6 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    v7 = [(HMSetupAccessoryDescription *)self appIdentifier];
    v8 = [(HMSetupAccessoryDescription *)self homeUUID];
    v9 = [(HMSetupAccessoryDescription *)self ownershipToken];
    v10 = [(HMSetupAccessoryDescription *)v5 initWithSetupAccessoryPayload:v6 appID:v7 homeUUID:v8 ownershipToken:v9];
  }

  else
  {
    v11 = [(HMSetupAccessoryDescription *)self accessoryUUID];

    v12 = [HMSetupAccessoryDescription alloc];
    if (!v11)
    {
      v6 = [(HMSetupAccessoryDescription *)self appIdentifier];
      v7 = [(HMSetupAccessoryDescription *)self homeUUID];
      v13 = [(HMSetupAccessoryDescription *)v12 initWithAppIdentifier:v6 homeUUID:v7];
      goto LABEL_6;
    }

    v6 = [(HMSetupAccessoryDescription *)self accessoryUUID];
    v7 = [(HMSetupAccessoryDescription *)self accessoryName];
    v8 = [(HMSetupAccessoryDescription *)self appIdentifier];
    v9 = [(HMSetupAccessoryDescription *)self homeUUID];
    v10 = [(HMSetupAccessoryDescription *)v12 initWithAccessoryUUID:v6 accessoryName:v7 appID:v8 homeUUID:v9];
  }

  v13 = v10;

LABEL_6:
  v14 = [(HMSetupAccessoryDescription *)self accessoryName];
  [(HMSetupAccessoryDescription *)v13 setAccessoryName:v14];

  v15 = [(HMSetupAccessoryDescription *)self accessoryUUID];
  [(HMSetupAccessoryDescription *)v13 setAccessoryUUID:v15];

  v16 = [(HMSetupAccessoryDescription *)self appBundleURL];
  [(HMSetupAccessoryDescription *)v13 setAppBundleURL:v16];

  [(HMSetupAccessoryDescription *)v13 setAddAndSetupAccessories:[(HMSetupAccessoryDescription *)self addAndSetupAccessories]];
  [(HMSetupAccessoryDescription *)v13 setCertificationStatus:[(HMSetupAccessoryDescription *)self certificationStatus]];
  v17 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
  [(HMSetupAccessoryDescription *)v13 setSuggestedRoomUUID:v17];

  v18 = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
  [(HMSetupAccessoryDescription *)v13 setSuggestedAccessoryName:v18];

  v19 = [(HMSetupAccessoryDescription *)self storeID];
  [(HMSetupAccessoryDescription *)v13 setStoreID:v19];

  v20 = [(HMSetupAccessoryDescription *)self bundleID];
  [(HMSetupAccessoryDescription *)v13 setBundleID:v20];

  [(HMSetupAccessoryDescription *)v13 setUserConsentedForReplace:[(HMSetupAccessoryDescription *)self userConsentedForReplace]];
  v21 = [(HMSetupAccessoryDescription *)self category];
  [(HMSetupAccessoryDescription *)v13 setCategory:v21];

  v22 = [(HMSetupAccessoryDescription *)self cancellationReason];
  [(HMSetupAccessoryDescription *)v13 setCancellationReason:v22];

  [(HMSetupAccessoryDescription *)v13 setEntitledForHomeKitSPI:[(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI]];
  [(HMSetupAccessoryDescription *)v13 setEntitledForThirdPartySetupAccessoryPayload:[(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload]];
  [(HMSetupAccessoryDescription *)v13 setEntitledForThirdPartyMatterSetupPayload:[(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload]];
  [(HMSetupAccessoryDescription *)v13 setSetupInitiatedByOtherMatterEcosystem:[(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem]];
  v23 = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
  [(HMSetupAccessoryDescription *)v13 setAccessoryServerIdentifier:v23];

  [(HMSetupAccessoryDescription *)v13 setDoNetworkScan:[(HMSetupAccessoryDescription *)self doNetworkScan]];
  v24 = [(HMSetupAccessoryDescription *)self matterCommissioneeInfo];
  [(HMSetupAccessoryDescription *)v13 setMatterCommissioneeInfo:v24];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMSetupAccessoryDescription *)self accessoryUUID];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(HMSetupAccessoryDescription *)self accessoryName];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(HMSetupAccessoryDescription *)self appIdentifier];
  [v4 encodeObject:v7 forKey:@"appIdentifier"];

  v8 = [(HMSetupAccessoryDescription *)self appBundleURL];
  [v4 encodeObject:v8 forKey:@"appBundleURL"];

  [v4 encodeBool:-[HMSetupAccessoryDescription addAndSetupAccessories](self forKey:{"addAndSetupAccessories"), @"addAndSetupAccessories"}];
  v9 = [(HMSetupAccessoryDescription *)self homeUUID];
  [v4 encodeObject:v9 forKey:@"homeUUID"];

  v10 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  [v4 encodeObject:v10 forKey:@"setupAccessoryPayload"];

  v11 = [(HMSetupAccessoryDescription *)self setupAuthTokenUUID];
  [v4 encodeObject:v11 forKey:@"setupAuthTokenUUID"];

  v12 = [(HMSetupAccessoryDescription *)self setupAuthToken];
  [v4 encodeObject:v12 forKey:@"setupAuthToken"];

  v13 = [(HMSetupAccessoryDescription *)self ownershipToken];
  [v4 encodeObject:v13 forKey:@"ownershipToken"];

  [v4 encodeInteger:-[HMSetupAccessoryDescription certificationStatus](self forKey:{"certificationStatus"), @"certificationStatus"}];
  v14 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
  [v4 encodeObject:v14 forKey:@"suggestedRoomUUID"];

  v15 = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
  [v4 encodeObject:v15 forKey:@"suggestedAccessoryName"];

  v16 = [(HMSetupAccessoryDescription *)self storeID];
  [v4 encodeObject:v16 forKey:@"storeID"];

  v17 = [(HMSetupAccessoryDescription *)self bundleID];
  [v4 encodeObject:v17 forKey:@"bundleID"];

  v18 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
  [v4 encodeObject:v18 forKey:@"addRequestIdentifier"];

  v19 = [(HMSetupAccessoryDescription *)self cancellationReason];
  [v4 encodeObject:v19 forKey:@"cancelationReason"];

  v20 = [(HMSetupAccessoryDescription *)self marketingName];
  [v4 encodeObject:v20 forKey:@"marketingName"];

  v21 = [(HMSetupAccessoryDescription *)self installationGuideURL];
  [v4 encodeObject:v21 forKey:@"installationGuideURL"];

  [v4 encodeBool:-[HMSetupAccessoryDescription isEntitledForHomeKitSPI](self forKey:{"isEntitledForHomeKitSPI"), @"isEntitledForHomeKitSPI"}];
  [v4 encodeBool:-[HMSetupAccessoryDescription isEntitledForThirdPartySetupAccessoryPayload](self forKey:{"isEntitledForThirdPartySetupAccessoryPayload"), @"isEntitledForThirdPartySetupAccessoryPayload"}];
  [v4 encodeBool:-[HMSetupAccessoryDescription isEntitledForThirdPartyMatterSetupPayload](self forKey:{"isEntitledForThirdPartyMatterSetupPayload"), @"isEntitledForThirdPartyMatterSetupPayload"}];
  [v4 encodeBool:-[HMSetupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem](self forKey:{"isSetupInitiatedByOtherMatterEcosystem"), @"isSetupInitiatedByOtherMatterEcosystem"}];
  v22 = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
  [v4 encodeObject:v22 forKey:@"accessoryServerIdentifier"];

  [v4 encodeBool:-[HMSetupAccessoryDescription doNetworkScan](self forKey:{"doNetworkScan"), @"networkScan"}];
  v23 = [(HMSetupAccessoryDescription *)self matterCommissioneeInfo];
  [v4 encodeObject:v23 forKey:@"matterCommissioneeInfo"];
}

- (HMSetupAccessoryDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = HMSetupAccessoryDescription;
  v5 = [(HMSetupAccessoryDescription *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    v7 = [v6 copy];
    accessoryUUID = v5->_accessoryUUID;
    v5->_accessoryUUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v10 = [v9 copy];
    accessoryName = v5->_accessoryName;
    v5->_accessoryName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    v13 = [v12 copy];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleURL"];
    v16 = [v15 copy];
    appBundleURL = v5->_appBundleURL;
    v5->_appBundleURL = v16;

    v5->_addAndSetupAccessories = [v4 decodeBoolForKey:@"addAndSetupAccessories"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    v19 = [v18 copy];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupAccessoryPayload"];
    v22 = [v21 copy];
    setupAccessoryPayload = v5->_setupAccessoryPayload;
    v5->_setupAccessoryPayload = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupAuthTokenUUID"];
    v25 = [v24 copy];
    setupAuthTokenUUID = v5->_setupAuthTokenUUID;
    v5->_setupAuthTokenUUID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupAuthToken"];
    v28 = [v27 copy];
    setupAuthToken = v5->_setupAuthToken;
    v5->_setupAuthToken = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownershipToken"];
    ownershipToken = v5->_ownershipToken;
    v5->_ownershipToken = v30;

    v5->_certificationStatus = [v4 decodeIntegerForKey:@"certificationStatus"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedRoomUUID"];
    suggestedRoomUUID = v5->_suggestedRoomUUID;
    v5->_suggestedRoomUUID = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedAccessoryName"];
    suggestedAccessoryName = v5->_suggestedAccessoryName;
    v5->_suggestedAccessoryName = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addRequestIdentifier"];
    addRequestIdentifier = v5->_addRequestIdentifier;
    v5->_addRequestIdentifier = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelationReason"];
    cancellationReason = v5->_cancellationReason;
    v5->_cancellationReason = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"marketingName"];
    marketingName = v5->_marketingName;
    v5->_marketingName = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationGuideURL"];
    installationGuideURL = v5->_installationGuideURL;
    v5->_installationGuideURL = v46;

    v5->_entitledForHomeKitSPI = [v4 decodeBoolForKey:@"isEntitledForHomeKitSPI"];
    v5->_entitledForThirdPartySetupAccessoryPayload = [v4 decodeBoolForKey:@"isEntitledForThirdPartySetupAccessoryPayload"];
    v5->_entitledForThirdPartyMatterSetupPayload = [v4 decodeBoolForKey:@"isEntitledForThirdPartyMatterSetupPayload"];
    v5->_setupInitiatedByOtherMatterEcosystem = [v4 decodeBoolForKey:@"isSetupInitiatedByOtherMatterEcosystem"];
    v5->_userConsentedForReplace = 0;
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryServerIdentifier"];
    accessoryServerIdentifier = v5->_accessoryServerIdentifier;
    v5->_accessoryServerIdentifier = v48;

    v5->_doNetworkScan = [v4 decodeBoolForKey:@"networkScan"];
    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matterCommissioneeInfo"];
    matterCommissioneeInfo = v5->_matterCommissioneeInfo;
    v5->_matterCommissioneeInfo = v50;
  }

  return v5;
}

- (NSUUID)suggestedRoomUniqueIdentifier
{
  v3 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
  if (v3)
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
    v6 = [v4 hm_deriveUUIDFromBaseUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasAddRequest
{
  v2 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (HMAccessoryCategory)category
{
  category = self->_category;
  if (category)
  {
    v3 = category;
  }

  else
  {
    v5 = +[HMHAPMetadata getSharedInstance];
    v6 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    v7 = [v6 categoryNumber];
    v3 = [v5 categoryForIdentifier:v7];
  }

  return v3;
}

- (NSString)setupID
{
  v2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v3 = [v2 setupID];

  return v3;
}

- (NSString)setupCode
{
  setupCode = self->_setupCode;
  if (setupCode)
  {
    v3 = setupCode;
  }

  else
  {
    v4 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    v3 = [v4 setupCode];
  }

  return v3;
}

- (void)setSetupCode:(id)a3
{
  v6 = a3;
  v5 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];

  if (!v5)
  {
    objc_storeStrong(&self->_setupCode, a3);
  }
}

- (BOOL)isPaired
{
  v2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v3 = [v2 isPaired];

  return v3;
}

- (BOOL)supportsBTLE
{
  v2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v3 = [v2 supportsBTLE];

  return v3;
}

- (BOOL)supportsWAC
{
  v2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v3 = [v2 supportsWAC];

  return v3;
}

- (BOOL)supportsIP
{
  v2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v3 = [v2 supportsIP];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v4 = v12;
  if (v3)
  {
    v13 = @"HMSADDRK.data";
    v14 = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize device setup request %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x1E695E0F8];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)updateWithAuthToken:(id)a3 uuid:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    v7 = v6;
    v8 = [v13 copy];
    [(HMSetupAccessoryDescription *)self setSetupAuthToken:v8];

    v9 = [v7 copy];
    [(HMSetupAccessoryDescription *)self setSetupAuthTokenUUID:v9];
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v10 updateAccessoryName:v11, v12];
  }
}

- (void)updateAccessoryName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    [(HMSetupAccessoryDescription *)self setAccessoryName:v4];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 updateAccessoryCategory:v6, v7];
  }
}

- (void)updateAccessoryCategory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    [(HMSetupAccessoryDescription *)self setCategory:v4];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 updateAppIdentifier:v6, v7];
  }
}

- (void)updateAppIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    [(HMSetupAccessoryDescription *)self setAppIdentifier:v4];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 updateOwnershipToken:v6, v7];
  }
}

- (void)updateWithAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [v4 uuid];
    [(HMSetupAccessoryDescription *)self setAccessoryUUID:v5];

    v6 = [v12 name];
    [(HMSetupAccessoryDescription *)self setAccessoryName:v6];

    v7 = [v12 category];
    [(HMSetupAccessoryDescription *)self setCategory:v7];

    v8 = [v12 manufacturer];
    [(HMSetupAccessoryDescription *)self setManufacturerName:v8];
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v9 updateWithSetupAccessoryPayload:v10, v11];
  }
}

- (void)updateWithSetupAccessoryPayload:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    [(HMSetupAccessoryDescription *)self setSetupAccessoryPayload:v4];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 initWithDictionaryRepresentation:v6, v7];
  }
}

- (HMSetupAccessoryDescription)initWithDictionaryRepresentation:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSetupAccessoryDescription *)self init];
  v6 = [v4 hmf_dataForKey:@"HMSADDRK.data"];
  if (v6)
  {
    v19 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v19];
    v8 = v19;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v6;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup accessory description from dictionary representation; failed to deserialize data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v13 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v7 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = @"HMSADDRK.data";
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup accessory description from dictionary representation: missing %@ key in dictionary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (HMSetupAccessoryDescription)initWithStagedCHIPAccessoryPairingIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v18.receiver = self;
    v18.super_class = HMSetupAccessoryDescription;
    v7 = [(HMSetupAccessoryDescription *)&v18 init];
    v8 = v7;
    if (v7)
    {
      v7->_addAndSetupAccessories = 1;
      objc_storeStrong(&v7->_accessoryServerIdentifier, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMSetupAccessoryDescription *)v10 initWithAddRequestIdentifier:v11 accessoryName:v12 accessoryCategory:v13 setupAccessoryPayload:v14 appID:v15 ownershipToken:v16, v17];
  }
}

- (HMSetupAccessoryDescription)initWithAddRequestIdentifier:(id)a3 accessoryName:(id)a4 accessoryCategory:(id)a5 setupAccessoryPayload:(id)a6 appID:(id)a7 ownershipToken:(id)a8
{
  v25 = a3;
  v24 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = HMSetupAccessoryDescription;
  v19 = [(HMSetupAccessoryDescription *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_addAndSetupAccessories = 1;
    objc_storeStrong(&v19->_addRequestIdentifier, a3);
    objc_storeStrong(&v20->_accessoryName, a4);
    objc_storeStrong(&v20->_category, a5);
    objc_storeStrong(&v20->_setupAccessoryPayload, a6);
    v21 = [v17 copy];
    appIdentifier = v20->_appIdentifier;
    v20->_appIdentifier = v21;

    objc_storeStrong(&v20->_ownershipToken, a8);
  }

  return v20;
}

- (HMSetupAccessoryDescription)initWithSetupAccessoryPayload:(id)a3 appID:(id)a4 homeUUID:(id)a5 ownershipToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = HMSetupAccessoryDescription;
  v15 = [(HMSetupAccessoryDescription *)&v21 init];
  if (v15)
  {
    v16 = [v12 copy];
    appIdentifier = v15->_appIdentifier;
    v15->_appIdentifier = v16;

    v15->_addAndSetupAccessories = 1;
    v18 = [v13 copy];
    homeUUID = v15->_homeUUID;
    v15->_homeUUID = v18;

    objc_storeStrong(&v15->_setupAccessoryPayload, a3);
    v15->_certificationStatus = 0;
    objc_storeStrong(&v15->_ownershipToken, a6);
  }

  return v15;
}

- (HMSetupAccessoryDescription)initWithAppIdentifier:(id)a3 homeUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMSetupAccessoryDescription;
  v8 = [(HMSetupAccessoryDescription *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    appIdentifier = v8->_appIdentifier;
    v8->_appIdentifier = v9;

    v8->_addAndSetupAccessories = 1;
    v11 = [v7 copy];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v11;

    v8->_certificationStatus = 0;
  }

  return v8;
}

- (HMSetupAccessoryDescription)initWithAccessoryUUID:(id)a3 accessoryName:(id)a4 appID:(id)a5 homeUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HMSetupAccessoryDescription;
  v14 = [(HMSetupAccessoryDescription *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    accessoryUUID = v14->_accessoryUUID;
    v14->_accessoryUUID = v15;

    v17 = [v11 copy];
    accessoryName = v14->_accessoryName;
    v14->_accessoryName = v17;

    v19 = [v12 copy];
    appIdentifier = v14->_appIdentifier;
    v14->_appIdentifier = v19;

    v14->_addAndSetupAccessories = 0;
    v21 = [v13 copy];
    homeUUID = v14->_homeUUID;
    v14->_homeUUID = v21;

    v14->_certificationStatus = 0;
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end