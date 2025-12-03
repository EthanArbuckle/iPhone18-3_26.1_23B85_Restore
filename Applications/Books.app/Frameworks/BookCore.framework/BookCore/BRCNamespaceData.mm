@interface BRCNamespaceData
+ (NSString)fallbackStorefrontID;
- (BOOL)isEqual:(id)equal;
- (BRCNamespaceData)init;
- (BRCNamespaceData)initWithCoder:(id)coder;
- (NSDictionary)configuration;
- (NSDictionary)systemDefaults;
- (char)_containerIDForContainerIdentifier:(id)identifier;
- (id)_IDsToStrings:(id)strings;
- (id)_URLSafeBase64EncodedStringWithData:(id)data options:(unint64_t)options;
- (id)_permanentURLForRecordID:(id)d containerIdentifier:(id)identifier;
- (id)_storefrontIDFromStorefront:(id)storefront;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_booksRecordIDFrom:(id)from completion:(id)completion;
- (void)_updateAssetURLHostIfNeededWithParameters:(id)parameters containerIdentifier:(id)identifier;
- (void)cleanupSubscribers;
- (void)encodeWithCoder:(id)coder;
- (void)setConfiguration:(id)configuration;
- (void)setSystemDefaults:(id)defaults;
- (void)settingsWithUserID:(id)d completion:(id)completion;
@end

@implementation BRCNamespaceData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  namespaceIdentifier = [(BRCNamespaceData *)self namespaceIdentifier];
  [v4 setNamespaceIdentifier:namespaceIdentifier];

  bundleID = [(BRCNamespaceData *)self bundleID];
  [v4 setBundleID:bundleID];

  systemDefaults = [(BRCNamespaceData *)self systemDefaults];
  [v4 setSystemDefaults:systemDefaults];

  configuration = [(BRCNamespaceData *)self configuration];
  [v4 setConfiguration:configuration];

  subscribers = [(BRCNamespaceData *)self subscribers];
  [v4 setSubscribers:subscribers];

  treatmentIDs = [(BRCNamespaceData *)self treatmentIDs];
  [v4 setTreatmentIDs:treatmentIDs];

  segmentIDs = [(BRCNamespaceData *)self segmentIDs];
  [v4 setSegmentIDs:segmentIDs];

  segmentSetIDs = [(BRCNamespaceData *)self segmentSetIDs];
  [v4 setSegmentSetIDs:segmentSetIDs];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_systemDefaults;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSystemDefaults:(id)defaults
{
  defaultsCopy = defaults;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bu_dictionaryByRecursivelyRemovingNSNulls = [defaultsCopy bu_dictionaryByRecursivelyRemovingNSNulls];
  systemDefaults = selfCopy->_systemDefaults;
  selfCopy->_systemDefaults = bu_dictionaryByRecursivelyRemovingNSNulls;

  objc_sync_exit(selfCopy);
}

- (NSDictionary)configuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_configuration;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bu_dictionaryByRecursivelyRemovingNSNulls = [configurationCopy bu_dictionaryByRecursivelyRemovingNSNulls];
  configuration = selfCopy->_configuration;
  selfCopy->_configuration = bu_dictionaryByRecursivelyRemovingNSNulls;

  objc_sync_exit(selfCopy);
}

- (void)settingsWithUserID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
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
  v30 = dCopy;
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
  dCopy = v30;
LABEL_10:
  namespaceIdentifier = [(BRCNamespaceData *)self namespaceIdentifier];
  v23 = [namespaceIdentifier isEqualToString:@"BooksDefaults"];

  if (v23)
  {
    v24 = +[BUAccountsProvider sharedProvider];
    currentStorefront = [v24 currentStorefront];

    v26 = [(BRCNamespaceData *)self _storefrontIDFromStorefront:currentStorefront];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_C81D8;
    v31[3] = &unk_2CCA50;
    v31[4] = self;
    v32 = v9;
    v33 = dCopy;
    v34 = v26;
    v35 = v14;
    v36 = completionCopy;
    v27 = v26;
    [(BRCNamespaceData *)self _booksRecordIDFrom:v27 completion:v31];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)cleanupSubscribers
{
  v3 = objc_alloc_init(NSMutableArray);
  subscribers = [(BRCNamespaceData *)self subscribers];
  v5 = [subscribers copy];

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
        object = [v11 object];

        if (!object)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  subscribers2 = [(BRCNamespaceData *)self subscribers];
  [subscribers2 removeObjectsInArray:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
    namespaceIdentifier = [(BRCNamespaceData *)equalCopy namespaceIdentifier];
    v7 = namespaceIdentifier;
    if (namespaceIdentifier == namespaceIdentifier)
    {
    }

    else
    {
      v8 = self->_namespaceIdentifier;
      namespaceIdentifier2 = [(BRCNamespaceData *)equalCopy namespaceIdentifier];
      LODWORD(v8) = [(NSString *)v8 isEqual:namespaceIdentifier2];

      if (!v8)
      {
        goto LABEL_30;
      }
    }

    bundleID = self->_bundleID;
    bundleID = [(BRCNamespaceData *)equalCopy bundleID];
    v13 = bundleID;
    if (bundleID == bundleID)
    {
    }

    else
    {
      v14 = self->_bundleID;
      bundleID2 = [(BRCNamespaceData *)equalCopy bundleID];
      LODWORD(v14) = [(NSString *)v14 isEqual:bundleID2];

      if (!v14)
      {
        goto LABEL_30;
      }
    }

    systemDefaults = self->_systemDefaults;
    systemDefaults = [(BRCNamespaceData *)equalCopy systemDefaults];
    v18 = systemDefaults;
    if (systemDefaults == systemDefaults)
    {
    }

    else
    {
      v19 = self->_systemDefaults;
      systemDefaults2 = [(BRCNamespaceData *)equalCopy systemDefaults];
      LODWORD(v19) = [(NSDictionary *)v19 isEqual:systemDefaults2];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    configuration = self->_configuration;
    configuration = [(BRCNamespaceData *)equalCopy configuration];
    v23 = configuration;
    if (configuration == configuration)
    {
    }

    else
    {
      v24 = self->_configuration;
      configuration2 = [(BRCNamespaceData *)equalCopy configuration];
      LODWORD(v24) = [(NSDictionary *)v24 isEqual:configuration2];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    subscribers = self->_subscribers;
    subscribers = [(BRCNamespaceData *)equalCopy subscribers];
    v28 = subscribers;
    if (subscribers == subscribers)
    {
    }

    else
    {
      v29 = self->_subscribers;
      subscribers2 = [(BRCNamespaceData *)equalCopy subscribers];
      LODWORD(v29) = [(NSMutableArray *)v29 isEqual:subscribers2];

      if (!v29)
      {
        goto LABEL_30;
      }
    }

    treatmentIDs = self->_treatmentIDs;
    treatmentIDs = [(BRCNamespaceData *)equalCopy treatmentIDs];
    v33 = treatmentIDs;
    if (treatmentIDs == treatmentIDs)
    {
    }

    else
    {
      v34 = self->_treatmentIDs;
      treatmentIDs2 = [(BRCNamespaceData *)equalCopy treatmentIDs];
      LODWORD(v34) = [(NSArray *)v34 isEqual:treatmentIDs2];

      if (!v34)
      {
        goto LABEL_30;
      }
    }

    segmentIDs = self->_segmentIDs;
    segmentIDs = [(BRCNamespaceData *)equalCopy segmentIDs];
    v38 = segmentIDs;
    if (segmentIDs == segmentIDs)
    {
    }

    else
    {
      v39 = self->_segmentIDs;
      segmentIDs2 = [(BRCNamespaceData *)equalCopy segmentIDs];
      LODWORD(v39) = [(NSArray *)v39 isEqual:segmentIDs2];

      if (!v39)
      {
        goto LABEL_30;
      }
    }

    segmentSetIDs = self->_segmentSetIDs;
    segmentSetIDs = [(BRCNamespaceData *)equalCopy segmentSetIDs];
    if (segmentSetIDs == segmentSetIDs)
    {
      v10 = 1;
    }

    else
    {
      v44 = self->_segmentSetIDs;
      segmentSetIDs2 = [(BRCNamespaceData *)equalCopy segmentSetIDs];
      v10 = [(NSArray *)v44 isEqual:segmentSetIDs2];
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

  namespaceIdentifier = [(BRCNamespaceData *)self namespaceIdentifier];
  [v6 appendFormat:@" namespaceIdentifier=%@", namespaceIdentifier];

  bundleID = [(BRCNamespaceData *)self bundleID];
  [v6 appendFormat:@" bundleID=%@", bundleID];

  systemDefaults = [(BRCNamespaceData *)self systemDefaults];
  [v6 appendFormat:@" systemDefaults=%@", systemDefaults];

  configuration = [(BRCNamespaceData *)self configuration];
  [v6 appendFormat:@" configuration=%@", configuration];

  subscribers = [(BRCNamespaceData *)self subscribers];
  [v6 appendFormat:@" subscribers=%@", subscribers];

  treatmentIDs = [(BRCNamespaceData *)self treatmentIDs];
  [v6 appendFormat:@" treatmentIDs=%@", treatmentIDs];

  segmentIDs = [(BRCNamespaceData *)self segmentIDs];
  [v6 appendFormat:@" segmentIDs=%@", segmentIDs];

  segmentSetIDs = [(BRCNamespaceData *)self segmentSetIDs];
  [v6 appendFormat:@" segmentSetIDs=%@", segmentSetIDs];

  [v6 appendFormat:@">"];
  v15 = [v6 copy];

  return v15;
}

- (id)_IDsToStrings:(id)strings
{
  stringsCopy = strings;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = stringsCopy;
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

        stringValue = [*(*(&v12 + 1) + 8 * i) stringValue];
        [v4 addObject:stringValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (char)_containerIDForContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.news.public"])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.news.public.staging"])
  {
    v4 = 2;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.news.public.qa"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_permanentURLForRecordID:(id)d containerIdentifier:(id)identifier
{
  v18 = 2;
  v17 = 0;
  identifierCopy = identifier;
  dCopy = d;
  v16 = [dCopy length];
  v15 = [(BRCNamespaceData *)self _containerIDForContainerIdentifier:identifierCopy];
  v8 = +[NSMutableData data];
  [v8 appendBytes:&v18 length:1];
  [v8 appendBytes:&v15 length:1];
  [v8 appendBytes:&v16 length:1];
  v9 = [dCopy dataUsingEncoding:4];

  [v8 appendData:v9];
  [v8 appendBytes:&v17 length:1];
  [v8 appendBytes:"17" length:2];
  v10 = [(BRCNamespaceData *)self _URLSafeBase64EncodedStringWithData:v8 options:0];
  v11 = objc_alloc_init(NSURLComponents);
  [v11 setScheme:@"https"];
  [v11 setHost:@"c.apple.news"];
  [(BRCNamespaceData *)self _updateAssetURLHostIfNeededWithParameters:v11 containerIdentifier:identifierCopy];

  v12 = [NSString stringWithFormat:@"/%@", v10];
  [v11 setPath:v12];

  v13 = [v11 URL];

  return v13;
}

- (void)_updateAssetURLHostIfNeededWithParameters:(id)parameters containerIdentifier:(id)identifier
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"com.apple.news.public.staging"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.news.public.qa"))
  {
    [parametersCopy setHost:@"cvws-internal.icloud.com"];
  }
}

- (id)_URLSafeBase64EncodedStringWithData:(id)data options:(unint64_t)options
{
  v4 = [data base64EncodedStringWithOptions:options];
  v5 = [v4 mutableCopy];

  [v5 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"=" withString:&stru_2D2930 options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [v5 copy];

  return v6;
}

- (id)_storefrontIDFromStorefront:(id)storefront
{
  storefrontCopy = storefront;
  if (!storefrontCopy || (+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @" -,"), v4 = objc_claimAutoreleasedReturnValue(), [storefrontCopy componentsSeparatedByCharactersInSet:v4], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v6 = +[BRCNamespaceData fallbackStorefrontID];
    v7 = BRCConfigLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = storefrontCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BRCNamespaceData: _storefrontIDFromStorefront: unable to get storefrontID from %@", &v9, 0xCu);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  namespaceIdentifier = [(BRCNamespaceData *)self namespaceIdentifier];
  [coderCopy encodeObject:namespaceIdentifier forKey:@"namespaceIdentifier"];

  bundleID = [(BRCNamespaceData *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  systemDefaults = [(BRCNamespaceData *)self systemDefaults];
  [coderCopy encodeObject:systemDefaults forKey:@"systemDefaults"];

  configuration = [(BRCNamespaceData *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  treatmentIDs = [(BRCNamespaceData *)self treatmentIDs];
  [coderCopy encodeObject:treatmentIDs forKey:@"treatmentIDs"];

  segmentIDs = [(BRCNamespaceData *)self segmentIDs];
  [coderCopy encodeObject:segmentIDs forKey:@"segmentIDs"];

  segmentSetIDs = [(BRCNamespaceData *)self segmentSetIDs];
  [coderCopy encodeObject:segmentSetIDs forKey:@"segmentSetIDs"];
}

- (BRCNamespaceData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BRCNamespaceData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespaceIdentifier"];
    [(BRCNamespaceData *)v5 setNamespaceIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    [(BRCNamespaceData *)v5 setBundleID:v7];

    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"systemDefaults"];
    [(BRCNamespaceData *)v5 setSystemDefaults:v12];

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"configuration"];
    [(BRCNamespaceData *)v5 setConfiguration:v17];

    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"treatmentIDs"];
    [(BRCNamespaceData *)v5 setTreatmentIDs:v20];

    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"segmentIDs"];
    [(BRCNamespaceData *)v5 setSegmentIDs:v23];

    v24 = objc_opt_class();
    v25 = [NSSet setWithObjects:v24, objc_opt_class(), 0];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"segmentSetIDs"];
    [(BRCNamespaceData *)v5 setSegmentSetIDs:v26];
  }

  return v5;
}

+ (NSString)fallbackStorefrontID
{
  v2 = sub_1EEED4();

  return v2;
}

- (void)_booksRecordIDFrom:(id)from completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1EEF04();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  BRCNamespaceData._booksRecordID(from:completion:)(v6, v8, sub_1C27B4, v9);
}

@end