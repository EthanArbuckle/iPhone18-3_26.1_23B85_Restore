@interface ADCapData
+ (id)sharedInstance;
- (ADCapData)initWithStorageType:(int64_t)type;
- (ADCapData)initWithStorageType:(int64_t)type keychainKey:(id)key title:(id)title;
- (id)capData:(id)data;
- (id)capDataJSON:(id)n;
- (id)clickCapObjectForAdamID:(id)d;
- (id)dictionaryRepresentation;
- (id)downloadObjectForAdamID:(id)d;
- (id)filteredCapData:(id)data maxItems:(unint64_t)items expirationThresholdInSeconds:(double)seconds;
- (id)restoreCapDataArrayFromPlist:(id)plist;
- (void)addCapDataObject:(id)object ofKind:(int64_t)kind;
- (void)checkAndUpdateToroID;
- (void)eraseCapData;
- (void)resetCapDataObject;
- (void)restoreAllCapData;
- (void)saveCapDataWithReason:(id)reason;
- (void)updateCapDataWith:(id)with ofKind:(int64_t)kind;
@end

@implementation ADCapData

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ADCapData_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken != -1)
  {
    dispatch_once(&sharedInstance__onceToken, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

uint64_t __27__ADCapData_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADCapData)initWithStorageType:(int64_t)type
{
  if (type > 3 || (type - 2) < 2 || type)
  {
    self = [ADCapData initWithStorageType:"initWithStorageType:keychainKey:title:" keychainKey:? title:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ADCapData)initWithStorageType:(int64_t)type keychainKey:(id)key title:(id)title
{
  keyCopy = key;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = ADCapData;
  v11 = [(ADCapData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_storageType = type;
    objc_storeStrong(&v11->_keychainKey, key);
    objc_storeStrong(&v12->_title, title);
    [(ADCapData *)v12 restoreAllCapData];
  }

  return v12;
}

- (id)restoreCapDataArrayFromPlist:(id)plist
{
  v20 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  array = [MEMORY[0x277CBEB18] array];
  if (plistCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = plistCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [ADFrequencyCap alloc];
          v12 = [(ADFrequencyCap *)v11 initWithDictionary:v10, v15];
          [array addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)resetCapDataObject
{
  v3 = +[ADIDManager sharedInstance];
  v4 = [v3 idForClientType:4];
  toroID = self->_toroID;
  self->_toroID = v4;

  array = [MEMORY[0x277CBEB18] array];
  frequencyCapData = self->_frequencyCapData;
  self->_frequencyCapData = array;

  array2 = [MEMORY[0x277CBEB18] array];
  clickCountData = self->_clickCountData;
  self->_clickCountData = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  downloadData = self->_downloadData;
  self->_downloadData = array3;

  MEMORY[0x2821F96F8]();
}

- (void)restoreAllCapData
{
  v33 = 0;
  keychainKey = [(ADCapData *)self keychainKey];
  v4 = ADCopyDataFromKeychain(keychainKey, &v33);

  if (v4)
  {
    v32 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v32];
    v6 = v32;
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      title = [(ADCapData *)self title];
      v9 = [v7 stringWithFormat:@"Error restoring cap data for %@ %@", title, v6];
      _ADLog(@"ToroLogging", v9, 16);

      [(ADCapData *)self resetCapDataObject];
    }

    else
    {
      v13 = [v5 objectForKey:@"ADToroIDKey"];
      toroID = self->_toroID;
      self->_toroID = v13;

      if (self->_toroID)
      {
        v15 = [v5 objectForKey:@"ADFrequencyCapTypeKey"];
        v16 = [(ADCapData *)self restoreCapDataArrayFromPlist:v15];
        frequencyCapData = self->_frequencyCapData;
        self->_frequencyCapData = v16;

        v18 = [v5 objectForKey:@"ADToroClickTypeKey"];
        v19 = [(ADCapData *)self restoreCapDataArrayFromPlist:v18];
        clickCountData = self->_clickCountData;
        self->_clickCountData = v19;

        v21 = [v5 objectForKey:@"ADDownloadTypeKey"];
        v22 = [(ADCapData *)self restoreCapDataArrayFromPlist:v21];
        downloadData = self->_downloadData;
        self->_downloadData = v22;
      }

      else
      {
        v24 = MEMORY[0x277CCACA8];
        title2 = [(ADCapData *)self title];
        v26 = [v24 stringWithFormat:@"Unable to restore Toro ID for ADCapData for %@. Please file a radar...", title2];
        _ADLog(@"ToroLogging", v26, 16);

        [(ADCapData *)self resetCapDataObject];
      }

      v27 = MEMORY[0x277CCACA8];
      title3 = [(ADCapData *)self title];
      dictionaryRepresentation = [(ADCapData *)self dictionaryRepresentation];
      aD_jsonString = [dictionaryRepresentation AD_jsonString];
      v31 = [v27 stringWithFormat:@"Restored Cap Data information for %@: %@", title3, aD_jsonString];
      _ADLog(@"ToroLogging", v31, 0);
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    title4 = [(ADCapData *)self title];
    v12 = [v10 stringWithFormat:@"No data to restore. Initializing an empty Cap Data object for %@.", title4];
    _ADLog(@"ToroLogging", v12, 0);

    [(ADCapData *)self resetCapDataObject];
  }
}

- (void)saveCapDataWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionaryRepresentation = [(ADCapData *)selfCopy dictionaryRepresentation];
  v7 = MEMORY[0x277CCACA8];
  title = [(ADCapData *)selfCopy title];
  aD_jsonString = [dictionaryRepresentation AD_jsonString];
  if (reasonCopy)
  {
    [v7 stringWithFormat:@"Updated %@ Cap Data information for %@: %@", title, reasonCopy, aD_jsonString];
  }

  else
  {
    [v7 stringWithFormat:@"Updated %@ Cap Data information: %@", title, aD_jsonString];
  }
  v10 = ;
  _ADLog(@"ToroLogging", v10, 0);

  v18 = 0;
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionaryRepresentation format:200 options:0 error:&v18];
  v12 = v18;
  if (!v11)
  {
    v16 = MEMORY[0x277CCACA8];
    title2 = [(ADCapData *)selfCopy title];
    v17 = [v16 stringWithFormat:@"Error serializing %@ Cap Data: %@", title2, v12];
    _ADLog(@"ToroLogging", v17, 16);

    goto LABEL_8;
  }

  keychainKey = [(ADCapData *)selfCopy keychainKey];
  v14 = ADWriteDataToKeychain(keychainKey, v11);

  if (v14)
  {
    title2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error writing results cap data to keychain: %d", v14];
    _ADLog(@"iAdInternalLogging", title2, 16);
LABEL_8:
  }

  objc_sync_exit(selfCopy);
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  toroID = self->_toroID;
  if (toroID)
  {
    [dictionary setObject:toroID forKey:@"ADToroIDKey"];
    array = [MEMORY[0x277CBEB18] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = self->_frequencyCapData;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v9);
    }

    [v4 setObject:array forKey:@"ADFrequencyCapTypeKey"];
    array2 = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = self->_clickCountData;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v16);
    }

    [v4 setObject:array2 forKey:@"ADToroClickTypeKey"];
    array3 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = self->_downloadData;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }

    [v4 setObject:array3 forKey:@"ADDownloadTypeKey"];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
  }

  else
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] The Toro ID is null inside of the ADCapData object. Please file a radar...", objc_opt_class()];
    _ADLog(@"ToroLogging", v28, 16);

    v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)checkAndUpdateToroID
{
  v3 = +[ADIDManager sharedInstance];
  v6 = [v3 idForClientType:4];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  toroID = selfCopy->_toroID;
  if (toroID | v6 && ![(NSString *)toroID isEqualToString:v6])
  {
    [(ADCapData *)selfCopy resetCapDataObject];
  }

  objc_sync_exit(selfCopy);
}

- (void)addCapDataObject:(id)object ofKind:(int64_t)kind
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ADCapData *)selfCopy checkAndUpdateToroID];
  if (kind == 2)
  {
    storageType = [(ADCapData *)selfCopy storageType];
    v21 = MEMORY[0x277CCACA8];
    if (storageType)
    {
      title = [(ADCapData *)selfCopy title];
      identifier = [objectCopy identifier];
      v24 = [v21 stringWithFormat:@"Adding %@ Download Data: %@", title, identifier];
      _ADLog(@"iAdToroClick", v24, 0);
    }

    else
    {
      title = [objectCopy identifier];
      identifier = [v21 stringWithFormat:@"Adding Download Data: %@", title];
      _ADLog(@"iAdToroClick", identifier, 0);
    }

    [(NSMutableArray *)selfCopy->_downloadData addObject:objectCopy];
    v19 = @"Ad Download Update";
  }

  else if (kind == 1)
  {
    storageType2 = [(ADCapData *)selfCopy storageType];
    v13 = MEMORY[0x277CCACA8];
    if (storageType2)
    {
      title2 = [(ADCapData *)selfCopy title];
      identifier2 = [objectCopy identifier];
      v16 = [v13 stringWithFormat:@"Adding %@ Click Count Data: %@", title2, identifier2];
      _ADLog(@"iAdToroClick", v16, 0);

      v17 = MEMORY[0x277CCACA8];
      title3 = [(ADCapData *)selfCopy title];
      v19 = [v17 stringWithFormat:@"%@ Click Update", title3];
    }

    else
    {
      title3 = [objectCopy identifier];
      v26 = [v13 stringWithFormat:@"Adding Toro Click Count Data: %@", title3];
      _ADLog(@"iAdToroClick", v26, 0);

      v19 = @"Toro Click Update";
    }

    [(NSMutableArray *)selfCopy->_clickCountData addObject:objectCopy];
  }

  else
  {
    if (kind)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Unknown type of Cap Data."];
      _ADLog(@"ToroLogging", v25, 16);

      objc_sync_exit(selfCopy);
      goto LABEL_18;
    }

    storageType3 = [(ADCapData *)selfCopy storageType];
    v8 = MEMORY[0x277CCACA8];
    if (storageType3)
    {
      title4 = [(ADCapData *)selfCopy title];
      identifier3 = [objectCopy identifier];
      v11 = [v8 stringWithFormat:@"Adding %@ Frequency Cap Identifier: %@", title4, identifier3];
      _ADLog(@"iAdFrequencyCap", v11, 0);
    }

    else
    {
      title4 = [objectCopy identifier];
      identifier3 = [v8 stringWithFormat:@"Adding Sponsored Frequency Cap Identifier: %@", title4];
      _ADLog(@"iAdFrequencyCap", identifier3, 0);
    }

    [(NSMutableArray *)selfCopy->_frequencyCapData addObject:objectCopy];
    v19 = @"Frequency Cap Update";
  }

  objc_sync_exit(selfCopy);

  [(ADCapData *)selfCopy saveCapDataWithReason:v19];
  selfCopy = v19;
LABEL_18:
}

- (void)updateCapDataWith:(id)with ofKind:(int64_t)kind
{
  withCopy = with;
  v7 = [[ADFrequencyCap alloc] initWithIdentifier:withCopy];

  [(ADCapData *)self addCapDataObject:v7 ofKind:kind];
}

- (id)filteredCapData:(id)data maxItems:(unint64_t)items expirationThresholdInSeconds:(double)seconds
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = dataCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        [v17 setTime];
        if (v11 - v18 < seconds)
        {
          [array addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = [array arrayCappedToMaxItems:items];
  v20 = [v19 mutableCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)capDataJSON:(id)n
{
  v3 = [(ADCapData *)self capData:n];
  if (v3)
  {
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
    {
      v9 = 0;
      v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:&v9];
      if (v9)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was an error attempting to serialize a JSON object for: %@", v3];
        _ADLog(@"ToroLogging", v5, 16);

        v6 = 0;
      }

      else
      {
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
      }

      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was an error attempting to serialize a JSON object for: %@. Invalid JSON object.", v3];
    _ADLog(@"ToroLogging", v7, 16);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)capData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v7 = v6;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = dataCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        identifier = [v13 identifier];

        if (identifier)
        {
          [v13 setTime];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:((v7 - v15) / 3600.0)];
          identifier2 = [v13 identifier];
          array = [dictionary objectForKeyedSubscript:identifier2];

          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            identifier3 = [v13 identifier];
            [dictionary setObject:array forKeyedSubscript:identifier3];
          }

          [array addObject:v16];
        }

        else
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read a ADFrequencyCap object."];
          _ADLog(@"ToroLogging", v16, 16);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([dictionary count])
  {
    v20 = dictionary;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)clickCapObjectForAdamID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[ADIDManager sharedInstance];
  v6 = [v5 idForClientType:4];
  v7 = [v6 isEqualToString:self->_toroID];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_clickCountData reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:dCopy];

          if (v14)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)downloadObjectForAdamID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[ADIDManager sharedInstance];
  v6 = [v5 idForClientType:4];
  v7 = [v6 isEqualToString:self->_toroID];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_downloadData reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:dCopy];

          if (v14)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)eraseCapData
{
  toroID = self->_toroID;
  self->_toroID = &stru_2850FB348;

  array = [MEMORY[0x277CBEB18] array];
  frequencyCapData = self->_frequencyCapData;
  self->_frequencyCapData = array;

  array2 = [MEMORY[0x277CBEB18] array];
  clickCountData = self->_clickCountData;
  self->_clickCountData = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  downloadData = self->_downloadData;
  self->_downloadData = array3;

  [(ADCapData *)self saveCapDataWithReason:@"Erasing"];
}

@end