@interface AppUpdateMemoryEntity
- (AppUpdateMemoryEntity)init;
- (AppUpdateMemoryEntity)initWithUpdateDictionary:(id)dictionary;
- (BOOL)isAppClip;
- (NSString)buyParams;
- (NSString)description;
- (NSString)parentalControlsName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)purchase_purchaseInfoForUpdateUserInitiated:(BOOL)initiated bag:(id)bag;
- (int64_t)packageType;
- (unint64_t)itemIdentifier;
- (void)setBackground:(BOOL)background;
- (void)setCodeSignatureUpdate:(BOOL)update;
- (void)setOffloaded:(BOOL)offloaded;
- (void)setPerDevice:(BOOL)device;
- (void)setUpdateState:(int64_t)state;
@end

@implementation AppUpdateMemoryEntity

- (AppUpdateMemoryEntity)init
{
  v3.receiver = self;
  v3.super_class = AppUpdateMemoryEntity;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (AppUpdateMemoryEntity)initWithUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = AppUpdateMemoryEntity;
  v5 = [(SQLiteMemoryEntity *)&v64 init];
  if (v5)
  {
    v6 = dictionaryCopy;
    if (!v6)
    {
LABEL_72:

      goto LABEL_73;
    }

    sub_10023E000(v5, v6, @"store_item_data");
    v7 = [v6 objectForKey:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = [v6 objectForKey:@"bundle-id"];

      objc_opt_class();
      v7 = v8;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v9 = [v7 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v9;

LABEL_7:
    v11 = v5->_bundleID;
    if (v11)
    {
      sub_10023E000(v5, v11, @"bundle_id");
    }

    v12 = [v6 objectForKey:@"currentVersionReleaseDateTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc_init(NSDateFormatter);
      [v13 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
      [v13 setLenient:1];
      v14 = [NSTimeZone timeZoneForSecondsFromGMT:0];
      [v13 setTimeZone:v14];

      v15 = [v13 dateFromString:v12];
      if (v15)
      {
        sub_10023E000(v5, v15, @"current_version_release_date");
      }
    }

    v61 = v12;
    v62 = v6;
    v16 = v6;
    v17 = [v16 objectForKey:@"externalId"];
    v18 = NSComparisonPredicate_ptr;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v17;
      v19 = v17;
LABEL_26:

      if (v19)
      {
        v24 = [v19 copy];
        evid = v5->_evid;
        v5->_evid = v24;

        sub_10023E000(v5, v5->_evid, @"store_software_version_id");
      }

      v60 = v19;
      v26 = [v16 objectForKey:@"id"];

      if (objc_opt_respondsToSelector())
      {
        v27 = [v18[23] numberWithLongLong:{objc_msgSend(v26, "longLongValue")}];
        itemID = v5->_itemID;
        v5->_itemID = v27;

        sub_10023E000(v5, v5->_itemID, @"store_item_id");
      }

      v59 = v26;
      v63 = v16;
      v29 = sub_100237778(v16, @"deviceFamilies");
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        v33 = *v66;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v66 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v65 + 1) + 8 * i);
            if ([v35 length] >= 3)
            {
              v36 = [v35 substringToIndex:3];
              lowercaseString = [v36 lowercaseString];

              if ([lowercaseString isEqualToString:@"ipa"])
              {
                v38 = 2;
              }

              else if ([lowercaseString isEqualToString:@"iph"])
              {
                v38 = 4;
              }

              else if ([lowercaseString isEqualToString:@"ipo"])
              {
                v38 = 8;
              }

              else if ([lowercaseString isEqualToString:@"tvo"])
              {
                v38 = 16;
              }

              else if ([lowercaseString isEqualToString:@"wat"])
              {
                v38 = 32;
              }

              else
              {
                v38 = [lowercaseString isEqualToString:@"mac"];
              }

              v32 |= v38;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v65 objects:v69 count:16];
        }

        while (v31);
      }

      else
      {
        v32 = 0;
      }

      if (v32 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v32;
      }

      v40 = [NSNumber numberWithInteger:v39];
      sub_10023E000(v5, v40, @"device_families");

      v41 = [NSNumber numberWithInteger:1];
      sub_10023E000(v5, v41, @"software_platform");

      v42 = sub_1002B4DE4(v63);
      v43 = [v42 objectForKey:@"value"];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v43 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v6 = v62;

      v5->_parentalControlsRank = integerValue;
      v45 = [v63 objectForKey:@"releaseDate"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v45 length])
      {
        v46 = objc_alloc_init(NSDateFormatter);
        [v46 setDateStyle:2];
        [v46 setTimeStyle:0];
        v47 = [v46 dateFromString:v45];
        releaseDate = v5->_releaseDate;
        v5->_releaseDate = v47;
      }

      v49 = v5->_releaseDate;
      if (v49)
      {
        sub_10023E000(v5, v49, @"release_date");
      }

      v50 = [v63 objectForKeyedSubscript:@"is_app_clip"];

      if (v50)
      {
        v51 = [v63 objectForKeyedSubscript:@"is_app_clip"];
        sub_10023E07C(v5, v51, @"is_app_clip");
      }

      v52 = [v63 objectForKeyedSubscript:@"is_offloaded"];

      if (v52)
      {
        v53 = [v63 objectForKeyedSubscript:@"is_offloaded"];
        sub_10023E000(v5, v53, @"is_offloaded");
      }

      v54 = [v63 objectForKeyedSubscript:@"is_per_device"];

      if (v54)
      {
        v55 = [v63 objectForKeyedSubscript:@"is_per_device"];
        sub_10023E000(v5, v55, @"is_per_device");
      }

      v56 = [v63 objectForKeyedSubscript:@"is_b2b_custom_app"];

      if (v56)
      {
        v57 = [v63 objectForKeyedSubscript:@"is_b2b_custom_app"];
        sub_10023E000(v5, v57, @"is_b2b_custom_app");
      }

      goto LABEL_72;
    }

    v20 = [v16 objectForKey:@"offers"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 count])
    {
      firstObject = [v20 firstObject];
      v22 = [firstObject objectForKey:@"version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v22 objectForKey:@"externalId"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v18 = NSComparisonPredicate_ptr;
LABEL_25:

          goto LABEL_26;
        }
      }

      v18 = NSComparisonPredicate_ptr;
    }

    v23 = [v16 objectForKey:@"versionId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v23;
      v19 = v17;
    }

    else
    {
      v19 = 0;
      v17 = v23;
    }

    goto LABEL_25;
  }

LABEL_73:

  return v5;
}

- (NSString)buyParams
{
  rawUpdateDictionary = [(AppUpdateMemoryEntity *)self rawUpdateDictionary];
  v4 = rawUpdateDictionary;
  if (self)
  {
    v5 = [rawUpdateDictionary objectForKey:@"buyParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
LABEL_6:
      v7 = v6;
      v8 = v6;
LABEL_19:

      goto LABEL_20;
    }

    v7 = [v4 objectForKey:@"action-params"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
      goto LABEL_6;
    }

    v9 = [v4 objectForKey:@"offers"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    firstObject = [v9 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = [firstObject valueForKey:@"buyParams"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [firstObject objectForKey:@"action-params"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v11 = v12;
    }

    v12 = v11;
    v8 = v12;
LABEL_16:

    goto LABEL_17;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (unint64_t)itemIdentifier
{
  itemID = [(AppUpdateMemoryEntity *)self itemID];
  unsignedLongLongValue = [itemID unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)isAppClip
{
  v2 = sub_10023E258(&self->super.super.isa, @"is_app_clip");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)packageType
{
  v2 = sub_10023E0F8(self, @"package_type");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSString)parentalControlsName
{
  rawUpdateDictionary = [(AppUpdateMemoryEntity *)self rawUpdateDictionary];
  v4 = rawUpdateDictionary;
  if (self)
  {
    v5 = sub_1002B4DE4(rawUpdateDictionary);
    v6 = [v5 objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

- (void)setOffloaded:(BOOL)offloaded
{
  v4 = [NSNumber numberWithBool:offloaded];
  sub_10023E000(self, v4, @"is_offloaded");
}

- (void)setBackground:(BOOL)background
{
  v4 = [NSNumber numberWithBool:background];
  sub_10023E000(self, v4, @"is_background");
}

- (void)setCodeSignatureUpdate:(BOOL)update
{
  v4 = [NSNumber numberWithBool:update];
  sub_10023E000(self, v4, @"is_code_signature_update");
}

- (void)setPerDevice:(BOOL)device
{
  v4 = [NSNumber numberWithBool:device];
  sub_10023E000(self, v4, @"is_per_device");
}

- (void)setUpdateState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  sub_10023E000(self, v4, @"update_state");
}

- (NSString)description
{
  bundleID = [(AppUpdateMemoryEntity *)self bundleID];
  itemID = [(AppUpdateMemoryEntity *)self itemID];
  evid = [(AppUpdateMemoryEntity *)self evid];
  currentVersionReleaseDate = [(AppUpdateMemoryEntity *)self currentVersionReleaseDate];
  v7 = sub_1002525A8(currentVersionReleaseDate);
  v8 = [NSString stringWithFormat:@"{ bundleID: %@ itemID: %@ evid: %@ currentReleaseDate: %@ }", bundleID, itemID, evid, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = AppUpdateMemoryEntity;
  return [(SQLiteMemoryEntity *)&v4 copyWithZone:zone];
}

- (id)purchase_purchaseInfoForUpdateUserInitiated:(BOOL)initiated bag:(id)bag
{
  initiatedCopy = initiated;
  bagCopy = bag;
  v7 = [[PurchaseInfo alloc] initWithBag:bagCopy];

  bundleID = [(AppUpdateMemoryEntity *)self bundleID];
  [(PurchaseInfo *)v7 setBundleID:bundleID];

  v9 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.AppStore"];
  [(PurchaseInfo *)v7 setClientInfo:v9];

  v10 = +[NSUUID UUID];
  [(PurchaseInfo *)v7 setExternalID:v10];

  itemID = [(AppUpdateMemoryEntity *)self itemID];
  [(PurchaseInfo *)v7 setItemID:itemID];

  [(PurchaseInfo *)v7 setDiscoveredUpdate:1];
  [(PurchaseInfo *)v7 setDisableBoosting:1];
  itemID2 = [(AppUpdateMemoryEntity *)self itemID];
  -[PurchaseInfo setTVProvider:](v7, "setTVProvider:", +[UpdatesManager isTVProviderApp:](UpdatesManager, "isTVProviderApp:", [itemID2 integerValue]));

  if (initiatedCopy)
  {
    [(PurchaseInfo *)v7 setPriority:0];
    [(PurchaseInfo *)v7 setUpdateType:2];
    [(PurchaseInfo *)v7 setLogCode:@"UPD"];
    [(PurchaseInfo *)v7 setMetricsType:&off_1005480E8];
    [(PurchaseInfo *)v7 setPurchaseType:4];
    [(PurchaseInfo *)v7 setSuppressEvaluatorDialogs:1];
  }

  else
  {
    [(PurchaseInfo *)v7 setPriority:-2];
    [(PurchaseInfo *)v7 setUpdateType:1];
    [(PurchaseInfo *)v7 setDiscretionary:1];
    [(PurchaseInfo *)v7 setSuppressDialogs:1];
    [(PurchaseInfo *)v7 setSuppressEvaluatorDialogs:1];
    [(PurchaseInfo *)v7 setLogCode:@"UPA"];
    [(PurchaseInfo *)v7 setMetricsType:&off_100548100];
    [(PurchaseInfo *)v7 setPurchaseType:1];
  }

  buyParams = [(AppUpdateMemoryEntity *)self buyParams];
  if (buyParams)
  {
    v14 = [AMSBuyParams buyParamsWithString:buyParams];
    parentalControlsName = [(AppUpdateMemoryEntity *)self parentalControlsName];
    if (parentalControlsName)
    {
      [v14 setParameter:parentalControlsName forKey:@"installedSoftwareRatingName"];
    }

    if (!initiatedCopy)
    {
      [v14 setParameter:@"1" forKey:AMSBuyParamPropertyIsBackground];
    }

    [(PurchaseInfo *)v7 setBuyParams:v14];
  }

  v16 = [LSApplicationRecord alloc];
  itemID3 = [(AppUpdateMemoryEntity *)self itemID];
  v18 = [v16 initWithStoreItemIdentifier:objc_msgSend(itemID3 error:{"unsignedLongLongValue"), 0}];

  if (v18)
  {
    iTunesMetadata = [v18 iTunesMetadata];
    itemName = [iTunesMetadata itemName];
    [(PurchaseInfo *)v7 setItemName:itemName];

    iTunesMetadata2 = [v18 iTunesMetadata];
    artistName = [iTunesMetadata2 artistName];
    [(PurchaseInfo *)v7 setVendorName:artistName];

    applicationDSID = [v18 applicationDSID];
    if (-[PurchaseInfo isTVProvider](v7, "isTVProvider") && (([v18 isProfileValidated] & 1) != 0 || (objc_msgSend(v18, "applicationHasMIDBasedSINF") & 1) == 0))
    {
      [(PurchaseInfo *)v7 setTVProvider:0];
    }
  }

  else
  {
    applicationDSID = 0;
  }

  if ([(PurchaseInfo *)v7 isTVProvider])
  {
    [(PurchaseInfo *)v7 setLogCode:@"PTV"];
    [(PurchaseInfo *)v7 setPurchaseType:2];
    [(PurchaseInfo *)v7 setMetricsType:&off_100548118];
    if (!v18)
    {
      [(PurchaseInfo *)v7 setUpdateType:0];
    }

    [(PurchaseInfo *)v7 setMachineBased:1];
    buyParams2 = [(PurchaseInfo *)v7 buyParams];
    v25 = [buyParams2 parameterForKey:AMSBuyParamPropertyAppExtVrsId];

    buyParams3 = [(PurchaseInfo *)v7 buyParams];
    v27 = AMSBuyParamPropertyExternalVersionId;
    v28 = [buyParams3 parameterForKey:AMSBuyParamPropertyExternalVersionId];

    if (!v28 && v25)
    {
      buyParams4 = [(PurchaseInfo *)v7 buyParams];
      [buyParams4 setParameter:v25 forKey:v27];
    }
  }

  [(PurchaseInfo *)v7 setExpectedSoftwarePlatform:[(AppUpdateMemoryEntity *)self softwarePlatform]];
  v30 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v36 = 134218240;
    selfCopy = self;
    v38 = 2048;
    expectedSoftwarePlatform = [(PurchaseInfo *)v7 expectedSoftwarePlatform];
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "(AppUpdateMemoryEntity) [%p] expectedSoftwarePlatform=%lu", &v36, 0x16u);
  }

  if ([(PurchaseInfo *)v7 expectedSoftwarePlatform]!= 2)
  {
    [(PurchaseInfo *)v7 setCoordinatorIntent:2];
    if (initiatedCopy)
    {
      v31 = 2;
    }

    else
    {
      v31 = 4;
    }

    [(PurchaseInfo *)v7 setCoordinatorImportance:v31];
  }

  [(PurchaseInfo *)v7 updateGeneratedProperties];
  if (applicationDSID)
  {
    v32 = +[ACAccountStore ams_sharedAccountStore];
    v33 = [NSNumber numberWithUnsignedLongLong:applicationDSID];
    v34 = [v32 ams_iTunesAccountWithDSID:v33];

    if (v34)
    {
      [(PurchaseInfo *)v7 setAccount:v34];
    }
  }

  return v7;
}

@end