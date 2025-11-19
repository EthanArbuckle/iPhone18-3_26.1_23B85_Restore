@interface ADCapData
+ (id)sharedInstance;
- (ADCapData)initWithStorageType:(int64_t)a3;
- (ADCapData)initWithStorageType:(int64_t)a3 keychainKey:(id)a4 title:(id)a5;
- (id)capData:(id)a3;
- (id)capDataJSON:(id)a3;
- (id)clickCapObjectForAdamID:(id)a3;
- (id)dictionaryRepresentation;
- (id)downloadObjectForAdamID:(id)a3;
- (id)filteredCapData:(id)a3 maxItems:(unint64_t)a4 expirationThresholdInSeconds:(double)a5;
- (id)restoreCapDataArrayFromPlist:(id)a3;
- (void)addCapDataObject:(id)a3 ofKind:(int64_t)a4;
- (void)checkAndUpdateToroID;
- (void)eraseCapData;
- (void)resetCapDataObject;
- (void)restoreAllCapData;
- (void)saveCapDataWithReason:(id)a3;
- (void)updateCapDataWith:(id)a3 ofKind:(int64_t)a4;
@end

@implementation ADCapData

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ADCapData_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (ADCapData)initWithStorageType:(int64_t)a3
{
  if (a3 > 3 || (a3 - 2) < 2 || a3)
  {
    self = [ADCapData initWithStorageType:"initWithStorageType:keychainKey:title:" keychainKey:? title:?];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ADCapData)initWithStorageType:(int64_t)a3 keychainKey:(id)a4 title:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ADCapData;
  v11 = [(ADCapData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_storageType = a3;
    objc_storeStrong(&v11->_keychainKey, a4);
    objc_storeStrong(&v12->_title, a5);
    [(ADCapData *)v12 restoreAllCapData];
  }

  return v12;
}

- (id)restoreCapDataArrayFromPlist:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
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
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)resetCapDataObject
{
  v3 = +[ADIDManager sharedInstance];
  v4 = [v3 idForClientType:4];
  toroID = self->_toroID;
  self->_toroID = v4;

  v6 = [MEMORY[0x277CBEB18] array];
  frequencyCapData = self->_frequencyCapData;
  self->_frequencyCapData = v6;

  v8 = [MEMORY[0x277CBEB18] array];
  clickCountData = self->_clickCountData;
  self->_clickCountData = v8;

  v10 = [MEMORY[0x277CBEB18] array];
  downloadData = self->_downloadData;
  self->_downloadData = v10;

  MEMORY[0x2821F96F8]();
}

- (void)restoreAllCapData
{
  v33 = 0;
  v3 = [(ADCapData *)self keychainKey];
  v4 = ADCopyDataFromKeychain(v3, &v33);

  if (v4)
  {
    v32 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v32];
    v6 = v32;
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(ADCapData *)self title];
      v9 = [v7 stringWithFormat:@"Error restoring cap data for %@ %@", v8, v6];
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
        v25 = [(ADCapData *)self title];
        v26 = [v24 stringWithFormat:@"Unable to restore Toro ID for ADCapData for %@. Please file a radar...", v25];
        _ADLog(@"ToroLogging", v26, 16);

        [(ADCapData *)self resetCapDataObject];
      }

      v27 = MEMORY[0x277CCACA8];
      v28 = [(ADCapData *)self title];
      v29 = [(ADCapData *)self dictionaryRepresentation];
      v30 = [v29 AD_jsonString];
      v31 = [v27 stringWithFormat:@"Restored Cap Data information for %@: %@", v28, v30];
      _ADLog(@"ToroLogging", v31, 0);
    }
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(ADCapData *)self title];
    v12 = [v10 stringWithFormat:@"No data to restore. Initializing an empty Cap Data object for %@.", v11];
    _ADLog(@"ToroLogging", v12, 0);

    [(ADCapData *)self resetCapDataObject];
  }
}

- (void)saveCapDataWithReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ADCapData *)v5 dictionaryRepresentation];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(ADCapData *)v5 title];
  v9 = [v6 AD_jsonString];
  if (v4)
  {
    [v7 stringWithFormat:@"Updated %@ Cap Data information for %@: %@", v8, v4, v9];
  }

  else
  {
    [v7 stringWithFormat:@"Updated %@ Cap Data information: %@", v8, v9];
  }
  v10 = ;
  _ADLog(@"ToroLogging", v10, 0);

  v18 = 0;
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v18];
  v12 = v18;
  if (!v11)
  {
    v16 = MEMORY[0x277CCACA8];
    v15 = [(ADCapData *)v5 title];
    v17 = [v16 stringWithFormat:@"Error serializing %@ Cap Data: %@", v15, v12];
    _ADLog(@"ToroLogging", v17, 16);

    goto LABEL_8;
  }

  v13 = [(ADCapData *)v5 keychainKey];
  v14 = ADWriteDataToKeychain(v13, v11);

  if (v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error writing results cap data to keychain: %d", v14];
    _ADLog(@"iAdInternalLogging", v15, 16);
LABEL_8:
  }

  objc_sync_exit(v5);
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  toroID = self->_toroID;
  if (toroID)
  {
    [v3 setObject:toroID forKey:@"ADToroIDKey"];
    v6 = [MEMORY[0x277CBEB18] array];
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

          v12 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"ADFrequencyCapTypeKey"];
    v13 = [MEMORY[0x277CBEB18] array];
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

          v19 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"ADToroClickTypeKey"];
    v20 = [MEMORY[0x277CBEB18] array];
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

          v26 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"ADDownloadTypeKey"];
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

  v4 = self;
  objc_sync_enter(v4);
  toroID = v4->_toroID;
  if (toroID | v6 && ![(NSString *)toroID isEqualToString:v6])
  {
    [(ADCapData *)v4 resetCapDataObject];
  }

  objc_sync_exit(v4);
}

- (void)addCapDataObject:(id)a3 ofKind:(int64_t)a4
{
  v27 = a3;
  v6 = self;
  objc_sync_enter(v6);
  [(ADCapData *)v6 checkAndUpdateToroID];
  if (a4 == 2)
  {
    v20 = [(ADCapData *)v6 storageType];
    v21 = MEMORY[0x277CCACA8];
    if (v20)
    {
      v22 = [(ADCapData *)v6 title];
      v23 = [v27 identifier];
      v24 = [v21 stringWithFormat:@"Adding %@ Download Data: %@", v22, v23];
      _ADLog(@"iAdToroClick", v24, 0);
    }

    else
    {
      v22 = [v27 identifier];
      v23 = [v21 stringWithFormat:@"Adding Download Data: %@", v22];
      _ADLog(@"iAdToroClick", v23, 0);
    }

    [(NSMutableArray *)v6->_downloadData addObject:v27];
    v19 = @"Ad Download Update";
  }

  else if (a4 == 1)
  {
    v12 = [(ADCapData *)v6 storageType];
    v13 = MEMORY[0x277CCACA8];
    if (v12)
    {
      v14 = [(ADCapData *)v6 title];
      v15 = [v27 identifier];
      v16 = [v13 stringWithFormat:@"Adding %@ Click Count Data: %@", v14, v15];
      _ADLog(@"iAdToroClick", v16, 0);

      v17 = MEMORY[0x277CCACA8];
      v18 = [(ADCapData *)v6 title];
      v19 = [v17 stringWithFormat:@"%@ Click Update", v18];
    }

    else
    {
      v18 = [v27 identifier];
      v26 = [v13 stringWithFormat:@"Adding Toro Click Count Data: %@", v18];
      _ADLog(@"iAdToroClick", v26, 0);

      v19 = @"Toro Click Update";
    }

    [(NSMutableArray *)v6->_clickCountData addObject:v27];
  }

  else
  {
    if (a4)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Unknown type of Cap Data."];
      _ADLog(@"ToroLogging", v25, 16);

      objc_sync_exit(v6);
      goto LABEL_18;
    }

    v7 = [(ADCapData *)v6 storageType];
    v8 = MEMORY[0x277CCACA8];
    if (v7)
    {
      v9 = [(ADCapData *)v6 title];
      v10 = [v27 identifier];
      v11 = [v8 stringWithFormat:@"Adding %@ Frequency Cap Identifier: %@", v9, v10];
      _ADLog(@"iAdFrequencyCap", v11, 0);
    }

    else
    {
      v9 = [v27 identifier];
      v10 = [v8 stringWithFormat:@"Adding Sponsored Frequency Cap Identifier: %@", v9];
      _ADLog(@"iAdFrequencyCap", v10, 0);
    }

    [(NSMutableArray *)v6->_frequencyCapData addObject:v27];
    v19 = @"Frequency Cap Update";
  }

  objc_sync_exit(v6);

  [(ADCapData *)v6 saveCapDataWithReason:v19];
  v6 = v19;
LABEL_18:
}

- (void)updateCapDataWith:(id)a3 ofKind:(int64_t)a4
{
  v6 = a3;
  v7 = [[ADFrequencyCap alloc] initWithIdentifier:v6];

  [(ADCapData *)self addCapDataObject:v7 ofKind:a4];
}

- (id)filteredCapData:(id)a3 maxItems:(unint64_t)a4 expirationThresholdInSeconds:(double)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v7;
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
        if (v11 - v18 < a5)
        {
          [v8 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = [v8 arrayCappedToMaxItems:a4];
  v20 = [v19 mutableCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)capDataJSON:(id)a3
{
  v3 = [(ADCapData *)self capData:a3];
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

- (id)capData:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v3;
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
        v14 = [v13 identifier];

        if (v14)
        {
          [v13 setTime];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:((v7 - v15) / 3600.0)];
          v17 = [v13 identifier];
          v18 = [v4 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = [MEMORY[0x277CBEB18] array];
            v19 = [v13 identifier];
            [v4 setObject:v18 forKeyedSubscript:v19];
          }

          [v18 addObject:v16];
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

  if ([v4 count])
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)clickCapObjectForAdamID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ADIDManager sharedInstance];
  v6 = [v5 idForClientType:4];
  v7 = [v6 isEqualToString:self->_toroID];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSMutableArray *)self->_clickCountData reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)downloadObjectForAdamID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ADIDManager sharedInstance];
  v6 = [v5 idForClientType:4];
  v7 = [v6 isEqualToString:self->_toroID];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSMutableArray *)self->_downloadData reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

  v4 = [MEMORY[0x277CBEB18] array];
  frequencyCapData = self->_frequencyCapData;
  self->_frequencyCapData = v4;

  v6 = [MEMORY[0x277CBEB18] array];
  clickCountData = self->_clickCountData;
  self->_clickCountData = v6;

  v8 = [MEMORY[0x277CBEB18] array];
  downloadData = self->_downloadData;
  self->_downloadData = v8;

  [(ADCapData *)self saveCapDataWithReason:@"Erasing"];
}

@end