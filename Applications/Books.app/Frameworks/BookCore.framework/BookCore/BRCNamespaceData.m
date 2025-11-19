@interface BRCNamespaceData
+ (NSString)fallbackStorefrontID;
- (BOOL)isEqual:(id)a3;
- (BRCNamespaceData)init;
- (BRCNamespaceData)initWithCoder:(id)a3;
- (NSDictionary)configuration;
- (NSDictionary)systemDefaults;
- (char)_containerIDForContainerIdentifier:(id)a3;
- (id)_IDsToStrings:(id)a3;
- (id)_URLSafeBase64EncodedStringWithData:(id)a3 options:(unint64_t)a4;
- (id)_permanentURLForRecordID:(id)a3 containerIdentifier:(id)a4;
- (id)_storefrontIDFromStorefront:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_booksRecordIDFrom:(id)a3 completion:(id)a4;
- (void)_updateAssetURLHostIfNeededWithParameters:(id)a3 containerIdentifier:(id)a4;
- (void)cleanupSubscribers;
- (void)encodeWithCoder:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setSystemDefaults:(id)a3;
- (void)settingsWithUserID:(id)a3 completion:(id)a4;
@end

@implementation BRCNamespaceData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(BRCNamespaceData *)self namespaceIdentifier];
  [v4 setNamespaceIdentifier:v5];

  v6 = [(BRCNamespaceData *)self bundleID];
  [v4 setBundleID:v6];

  v7 = [(BRCNamespaceData *)self systemDefaults];
  [v4 setSystemDefaults:v7];

  v8 = [(BRCNamespaceData *)self configuration];
  [v4 setConfiguration:v8];

  v9 = [(BRCNamespaceData *)self subscribers];
  [v4 setSubscribers:v9];

  v10 = [(BRCNamespaceData *)self treatmentIDs];
  [v4 setTreatmentIDs:v10];

  v11 = [(BRCNamespaceData *)self segmentIDs];
  [v4 setSegmentIDs:v11];

  v12 = [(BRCNamespaceData *)self segmentSetIDs];
  [v4 setSegmentSetIDs:v12];

  return v4;
}

- (BRCNamespaceData)init
{
  v19.receiver = self;
  v19.super_class = BRCNamespaceData;
  v2 = [(BRCNamespaceData *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;

    v5 = objc_alloc_init(NSDictionary);
    configuration = v2->_configuration;
    v2->_configuration = v5;

    v7 = objc_alloc_init(NSDictionary);
    systemDefaults = v2->_systemDefaults;
    v2->_systemDefaults = v7;

    v9 = objc_alloc_init(NSArray);
    segmentIDs = v2->_segmentIDs;
    v2->_segmentIDs = v9;

    v11 = objc_alloc_init(NSArray);
    segmentSetIDs = v2->_segmentSetIDs;
    v2->_segmentSetIDs = v11;

    v13 = objc_alloc_init(NSArray);
    treatmentIDs = v2->_treatmentIDs;
    v2->_treatmentIDs = v13;

    v15 = [NSUserDefaults alloc];
    v16 = [v15 initWithSuiteName:BUBooksGroupContainerIdentifier];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v16;
  }

  return v2;
}

- (NSDictionary)systemDefaults
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_systemDefaults;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSystemDefaults:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 bu_dictionaryByRecursivelyRemovingNSNulls];
  systemDefaults = v4->_systemDefaults;
  v4->_systemDefaults = v5;

  objc_sync_exit(v4);
}

- (NSDictionary)configuration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_configuration;
  objc_sync_exit(v2);

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 bu_dictionaryByRecursivelyRemovingNSNulls];
  configuration = v4->_configuration;
  v4->_configuration = v5;

  objc_sync_exit(v4);
}

- (void)settingsWithUserID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"BRCEnableMonitoring"];
  v9 = @"com.apple.news.public";
  if (!v8)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v10 = [(NSUserDefaults *)self->_userDefaults integerForKey:@"BRCConfigSource"];
  v11 = [(NSUserDefaults *)self->_userDefaults integerForKey:@"BRCServerEnv"];
  v12 = v11;
  v30 = v6;
  if (v11 == 2)
  {
    v13 = BRCSettingsBooksContainerIdentifierQA;
  }

  else
  {
    if (v11 != 1)
    {
      v29 = v9;
      goto LABEL_9;
    }

    v13 = BRCSettingsBooksContainerIdentifierStaging;
  }

  v15 = *v13;

  v29 = v15;
LABEL_9:
  v16 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"BRCDisableABTesting"];
  v17 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"BRCIgnoreCache"];
  v18 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"BRCOverrideSegmentIDs"];
  v19 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"BRCAdditionalSegmentIDs"];
  v20 = brc_segmentIDSplit(v18);
  v21 = brc_segmentIDSplit(v19);
  LOBYTE(v28) = 1;
  v14 = [[RCDebugOverrides alloc] initWithDisableAbTesting:v16 overrideSegmentSetIDs:v20 additionalSegmentSetIDs:v21 configurationSource:v10 debugEnvironment:v12 ignoreCache:v17 enableExtraLogs:v28];

  v9 = v29;
  v6 = v30;
LABEL_10:
  v22 = [(BRCNamespaceData *)self namespaceIdentifier];
  v23 = [v22 isEqualToString:@"BooksDefaults"];

  if (v23)
  {
    v24 = +[BUAccountsProvider sharedProvider];
    v25 = [v24 currentStorefront];

    v26 = [(BRCNamespaceData *)self _storefrontIDFromStorefront:v25];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_C81D8;
    v31[3] = &unk_2CCA50;
    v31[4] = self;
    v32 = v9;
    v33 = v6;
    v34 = v26;
    v35 = v14;
    v36 = v7;
    v27 = v26;
    [(BRCNamespaceData *)self _booksRecordIDFrom:v27 completion:v31];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)cleanupSubscribers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(BRCNamespaceData *)self subscribers];
  v5 = [v4 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 object];

        if (!v12)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [(BRCNamespaceData *)self subscribers];
  [v13 removeObjectsInArray:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_30:
      v10 = 0;
      goto LABEL_31;
    }

    namespaceIdentifier = self->_namespaceIdentifier;
    v6 = [(BRCNamespaceData *)v4 namespaceIdentifier];
    v7 = v6;
    if (namespaceIdentifier == v6)
    {
    }

    else
    {
      v8 = self->_namespaceIdentifier;
      v9 = [(BRCNamespaceData *)v4 namespaceIdentifier];
      LODWORD(v8) = [(NSString *)v8 isEqual:v9];

      if (!v8)
      {
        goto LABEL_30;
      }
    }

    bundleID = self->_bundleID;
    v12 = [(BRCNamespaceData *)v4 bundleID];
    v13 = v12;
    if (bundleID == v12)
    {
    }

    else
    {
      v14 = self->_bundleID;
      v15 = [(BRCNamespaceData *)v4 bundleID];
      LODWORD(v14) = [(NSString *)v14 isEqual:v15];

      if (!v14)
      {
        goto LABEL_30;
      }
    }

    systemDefaults = self->_systemDefaults;
    v17 = [(BRCNamespaceData *)v4 systemDefaults];
    v18 = v17;
    if (systemDefaults == v17)
    {
    }

    else
    {
      v19 = self->_systemDefaults;
      v20 = [(BRCNamespaceData *)v4 systemDefaults];
      LODWORD(v19) = [(NSDictionary *)v19 isEqual:v20];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    configuration = self->_configuration;
    v22 = [(BRCNamespaceData *)v4 configuration];
    v23 = v22;
    if (configuration == v22)
    {
    }

    else
    {
      v24 = self->_configuration;
      v25 = [(BRCNamespaceData *)v4 configuration];
      LODWORD(v24) = [(NSDictionary *)v24 isEqual:v25];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    subscribers = self->_subscribers;
    v27 = [(BRCNamespaceData *)v4 subscribers];
    v28 = v27;
    if (subscribers == v27)
    {
    }

    else
    {
      v29 = self->_subscribers;
      v30 = [(BRCNamespaceData *)v4 subscribers];
      LODWORD(v29) = [(NSMutableArray *)v29 isEqual:v30];

      if (!v29)
      {
        goto LABEL_30;
      }
    }

    treatmentIDs = self->_treatmentIDs;
    v32 = [(BRCNamespaceData *)v4 treatmentIDs];
    v33 = v32;
    if (treatmentIDs == v32)
    {
    }

    else
    {
      v34 = self->_treatmentIDs;
      v35 = [(BRCNamespaceData *)v4 treatmentIDs];
      LODWORD(v34) = [(NSArray *)v34 isEqual:v35];

      if (!v34)
      {
        goto LABEL_30;
      }
    }

    segmentIDs = self->_segmentIDs;
    v37 = [(BRCNamespaceData *)v4 segmentIDs];
    v38 = v37;
    if (segmentIDs == v37)
    {
    }

    else
    {
      v39 = self->_segmentIDs;
      v40 = [(BRCNamespaceData *)v4 segmentIDs];
      LODWORD(v39) = [(NSArray *)v39 isEqual:v40];

      if (!v39)
      {
        goto LABEL_30;
      }
    }

    segmentSetIDs = self->_segmentSetIDs;
    v43 = [(BRCNamespaceData *)v4 segmentSetIDs];
    if (segmentSetIDs == v43)
    {
      v10 = 1;
    }

    else
    {
      v44 = self->_segmentSetIDs;
      v45 = [(BRCNamespaceData *)v4 segmentSetIDs];
      v10 = [(NSArray *)v44 isEqual:v45];
    }
  }

LABEL_31:

  return v10;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  v7 = [(BRCNamespaceData *)self namespaceIdentifier];
  [v6 appendFormat:@" namespaceIdentifier=%@", v7];

  v8 = [(BRCNamespaceData *)self bundleID];
  [v6 appendFormat:@" bundleID=%@", v8];

  v9 = [(BRCNamespaceData *)self systemDefaults];
  [v6 appendFormat:@" systemDefaults=%@", v9];

  v10 = [(BRCNamespaceData *)self configuration];
  [v6 appendFormat:@" configuration=%@", v10];

  v11 = [(BRCNamespaceData *)self subscribers];
  [v6 appendFormat:@" subscribers=%@", v11];

  v12 = [(BRCNamespaceData *)self treatmentIDs];
  [v6 appendFormat:@" treatmentIDs=%@", v12];

  v13 = [(BRCNamespaceData *)self segmentIDs];
  [v6 appendFormat:@" segmentIDs=%@", v13];

  v14 = [(BRCNamespaceData *)self segmentSetIDs];
  [v6 appendFormat:@" segmentSetIDs=%@", v14];

  [v6 appendFormat:@">"];
  v15 = [v6 copy];

  return v15;
}

- (id)_IDsToStrings:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) stringValue];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (char)_containerIDForContainerIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.news.public"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"com.apple.news.public.staging"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"com.apple.news.public.qa"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_permanentURLForRecordID:(id)a3 containerIdentifier:(id)a4
{
  v18 = 2;
  v17 = 0;
  v6 = a4;
  v7 = a3;
  v16 = [v7 length];
  v15 = [(BRCNamespaceData *)self _containerIDForContainerIdentifier:v6];
  v8 = +[NSMutableData data];
  [v8 appendBytes:&v18 length:1];
  [v8 appendBytes:&v15 length:1];
  [v8 appendBytes:&v16 length:1];
  v9 = [v7 dataUsingEncoding:4];

  [v8 appendData:v9];
  [v8 appendBytes:&v17 length:1];
  [v8 appendBytes:"17" length:2];
  v10 = [(BRCNamespaceData *)self _URLSafeBase64EncodedStringWithData:v8 options:0];
  v11 = objc_alloc_init(NSURLComponents);
  [v11 setScheme:@"https"];
  [v11 setHost:@"c.apple.news"];
  [(BRCNamespaceData *)self _updateAssetURLHostIfNeededWithParameters:v11 containerIdentifier:v6];

  v12 = [NSString stringWithFormat:@"/%@", v10];
  [v11 setPath:v12];

  v13 = [v11 URL];

  return v13;
}

- (void)_updateAssetURLHostIfNeededWithParameters:(id)a3 containerIdentifier:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (([v5 isEqualToString:@"com.apple.news.public.staging"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.news.public.qa"))
  {
    [v6 setHost:@"cvws-internal.icloud.com"];
  }
}

- (id)_URLSafeBase64EncodedStringWithData:(id)a3 options:(unint64_t)a4
{
  v4 = [a3 base64EncodedStringWithOptions:a4];
  v5 = [v4 mutableCopy];

  [v5 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"=" withString:&stru_2D2930 options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [v5 copy];

  return v6;
}

- (id)_storefrontIDFromStorefront:(id)a3
{
  v3 = a3;
  if (!v3 || (+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @" -,"), v4 = objc_claimAutoreleasedReturnValue(), [v3 componentsSeparatedByCharactersInSet:v4], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v6 = +[BRCNamespaceData fallbackStorefrontID];
    v7 = BRCConfigLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BRCNamespaceData: _storefrontIDFromStorefront: unable to get storefrontID from %@", &v9, 0xCu);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BRCNamespaceData *)self namespaceIdentifier];
  [v4 encodeObject:v5 forKey:@"namespaceIdentifier"];

  v6 = [(BRCNamespaceData *)self bundleID];
  [v4 encodeObject:v6 forKey:@"bundleID"];

  v7 = [(BRCNamespaceData *)self systemDefaults];
  [v4 encodeObject:v7 forKey:@"systemDefaults"];

  v8 = [(BRCNamespaceData *)self configuration];
  [v4 encodeObject:v8 forKey:@"configuration"];

  v9 = [(BRCNamespaceData *)self treatmentIDs];
  [v4 encodeObject:v9 forKey:@"treatmentIDs"];

  v10 = [(BRCNamespaceData *)self segmentIDs];
  [v4 encodeObject:v10 forKey:@"segmentIDs"];

  v11 = [(BRCNamespaceData *)self segmentSetIDs];
  [v4 encodeObject:v11 forKey:@"segmentSetIDs"];
}

- (BRCNamespaceData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BRCNamespaceData *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespaceIdentifier"];
    [(BRCNamespaceData *)v5 setNamespaceIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(BRCNamespaceData *)v5 setBundleID:v7];

    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"systemDefaults"];
    [(BRCNamespaceData *)v5 setSystemDefaults:v12];

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"configuration"];
    [(BRCNamespaceData *)v5 setConfiguration:v17];

    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"treatmentIDs"];
    [(BRCNamespaceData *)v5 setTreatmentIDs:v20];

    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"segmentIDs"];
    [(BRCNamespaceData *)v5 setSegmentIDs:v23];

    v24 = objc_opt_class();
    v25 = [NSSet setWithObjects:v24, objc_opt_class(), 0];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"segmentSetIDs"];
    [(BRCNamespaceData *)v5 setSegmentSetIDs:v26];
  }

  return v5;
}

+ (NSString)fallbackStorefrontID
{
  v2 = sub_1EEED4();

  return v2;
}

- (void)_booksRecordIDFrom:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1EEF04();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  BRCNamespaceData._booksRecordID(from:completion:)(v6, v8, sub_1C27B4, v9);
}

@end