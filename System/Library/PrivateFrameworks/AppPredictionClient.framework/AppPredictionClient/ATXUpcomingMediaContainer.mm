@interface ATXUpcomingMediaContainer
+ (void)addToDictionary:(id)dictionary key:(id)key value:(id)value;
- (ATXUpcomingMediaContainer)init;
- (NSArray)sortedUpcomingMedia;
- (void)addUpcomingMediaIntent:(id)intent withRank:(id)rank;
@end

@implementation ATXUpcomingMediaContainer

- (ATXUpcomingMediaContainer)init
{
  v18.receiver = self;
  v18.super_class = ATXUpcomingMediaContainer;
  v2 = [(ATXUpcomingMediaContainer *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = objc_opt_new();
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    v9 = objc_opt_new();
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = objc_opt_new();
    v12 = *(v2 + 7);
    *(v2 + 7) = v11;

    v13 = objc_opt_new();
    v14 = *(v2 + 8);
    *(v2 + 8) = v13;

    v2[16] = 0;
    v15 = objc_opt_new();
    v16 = *(v2 + 1);
    *(v2 + 1) = v15;

    *(v2 + 17) = 0;
    v2[19] = 0;
  }

  return v2;
}

+ (void)addToDictionary:(id)dictionary key:(id)key value:(id)value
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  v9 = valueCopy;
  if (keyCopy && valueCopy)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
    if (!v10)
    {
      v10 = objc_opt_new();
      [dictionaryCopy setObject:v10 forKeyedSubscript:keyCopy];
    }

    [v10 addObject:v9];
  }
}

- (void)addUpcomingMediaIntent:(id)intent withRank:(id)rank
{
  v58 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  rankCopy = rank;
  mediaContainer = [intentCopy mediaContainer];
  identifier = [mediaContainer identifier];

  mediaItems = [intentCopy mediaItems];
  firstObject = [mediaItems firstObject];
  identifier2 = [firstObject identifier];

  v12 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:intentCopy second:rankCopy];
  launchId = [intentCopy launchId];
  v14 = [launchId isEqualToString:@"com.apple.tv"];

  if (v14)
  {
    [intentCopy setExpirationDate:0];
  }

  expirationDate = [intentCopy expirationDate];
  if (expirationDate)
  {
  }

  else
  {
    buckets = [intentCopy buckets];

    if (!buckets)
    {
      [ATXUpcomingMediaContainer addToDictionary:self->_containerValidUpcomingMedia key:identifier value:v12];
      [ATXUpcomingMediaContainer addToDictionary:self->_itemValidUpcomingMedia key:identifier2 value:v12];
      [(NSMutableArray *)self->_maybeSortedUpcomingMedia addObject:v12];
      goto LABEL_32;
    }
  }

  v40 = rankCopy;
  date = [MEMORY[0x1E695DF00] date];
  v17 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  buckets2 = [intentCopy buckets];
  v19 = [buckets2 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    do
    {
      v22 = 0;
      do
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(buckets2);
        }

        vocabularyIdentifier = [*(*(&v51 + 1) + 8 * v22) vocabularyIdentifier];
        [v17 addObject:vocabularyIdentifier];

        ++v22;
      }

      while (v20 != v22);
      v20 = [buckets2 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v20);
  }

  expirationDate2 = [intentCopy expirationDate];
  if (expirationDate2 && (v25 = expirationDate2, [intentCopy expirationDate], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "earlierDate:", date), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(intentCopy, "expirationDate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqualToDate:", v28), v28, v27, v26, v25, v29))
  {
    [ATXUpcomingMediaContainer addToDictionary:self->_containerExpiredUpcomingMedia key:identifier value:v12];
    [ATXUpcomingMediaContainer addToDictionary:self->_itemExpiredUpcomingMedia key:identifier2 value:v12];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = v17;
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        v34 = 0;
        do
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [ATXUpcomingMediaContainer addToDictionary:self->_bucketExpiredUpcomingMedia key:*(*(&v47 + 1) + 8 * v34++) value:v12];
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v32);
    }
  }

  else
  {
    [ATXUpcomingMediaContainer addToDictionary:self->_containerValidUpcomingMedia key:identifier value:v12];
    [ATXUpcomingMediaContainer addToDictionary:self->_itemValidUpcomingMedia key:identifier2 value:v12];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v17;
    v36 = [v35 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        v39 = 0;
        do
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [ATXUpcomingMediaContainer addToDictionary:self->_bucketValidUpcomingMedia key:*(*(&v43 + 1) + 8 * v39++) value:v12];
        }

        while (v37 != v39);
        v37 = [v35 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v37);
    }

    [(NSMutableArray *)self->_maybeSortedUpcomingMedia addObject:v12];
  }

  rankCopy = v40;
LABEL_32:
  self->_sorted = 0;
}

- (NSArray)sortedUpcomingMedia
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_sorted)
  {
    maybeSortedUpcomingMedia = self->_maybeSortedUpcomingMedia;
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"second" ascending:0];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(NSMutableArray *)maybeSortedUpcomingMedia sortUsingDescriptors:v5];

    self->_sorted = 1;
  }

  v6 = [(NSMutableArray *)self->_maybeSortedUpcomingMedia copy];

  return v6;
}

@end