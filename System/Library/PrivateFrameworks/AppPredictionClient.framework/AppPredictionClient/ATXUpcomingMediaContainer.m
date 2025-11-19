@interface ATXUpcomingMediaContainer
+ (void)addToDictionary:(id)a3 key:(id)a4 value:(id)a5;
- (ATXUpcomingMediaContainer)init;
- (NSArray)sortedUpcomingMedia;
- (void)addUpcomingMediaIntent:(id)a3 withRank:(id)a4;
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

+ (void)addToDictionary:(id)a3 key:(id)a4 value:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v11 objectForKeyedSubscript:v7];
    if (!v10)
    {
      v10 = objc_opt_new();
      [v11 setObject:v10 forKeyedSubscript:v7];
    }

    [v10 addObject:v9];
  }
}

- (void)addUpcomingMediaIntent:(id)a3 withRank:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mediaContainer];
  v42 = [v8 identifier];

  v9 = [v6 mediaItems];
  v10 = [v9 firstObject];
  v11 = [v10 identifier];

  v12 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v6 second:v7];
  v13 = [v6 launchId];
  v14 = [v13 isEqualToString:@"com.apple.tv"];

  if (v14)
  {
    [v6 setExpirationDate:0];
  }

  v15 = [v6 expirationDate];
  if (v15)
  {
  }

  else
  {
    v16 = [v6 buckets];

    if (!v16)
    {
      [ATXUpcomingMediaContainer addToDictionary:self->_containerValidUpcomingMedia key:v42 value:v12];
      [ATXUpcomingMediaContainer addToDictionary:self->_itemValidUpcomingMedia key:v11 value:v12];
      [(NSMutableArray *)self->_maybeSortedUpcomingMedia addObject:v12];
      goto LABEL_32;
    }
  }

  v40 = v7;
  v41 = [MEMORY[0x1E695DF00] date];
  v17 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v18 = [v6 buckets];
  v19 = [v18 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v51 + 1) + 8 * v22) vocabularyIdentifier];
        [v17 addObject:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v20);
  }

  v24 = [v6 expirationDate];
  if (v24 && (v25 = v24, [v6 expirationDate], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "earlierDate:", v41), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "expirationDate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqualToDate:", v28), v28, v27, v26, v25, v29))
  {
    [ATXUpcomingMediaContainer addToDictionary:self->_containerExpiredUpcomingMedia key:v42 value:v12];
    [ATXUpcomingMediaContainer addToDictionary:self->_itemExpiredUpcomingMedia key:v11 value:v12];
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
    [ATXUpcomingMediaContainer addToDictionary:self->_containerValidUpcomingMedia key:v42 value:v12];
    [ATXUpcomingMediaContainer addToDictionary:self->_itemValidUpcomingMedia key:v11 value:v12];
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

  v7 = v40;
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