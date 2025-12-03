@interface MTUniversalPlaybackPositionMediaItem
- (NSString)description;
- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block;
- (void)populateEpisodeDictionary;
@end

@implementation MTUniversalPlaybackPositionMediaItem

- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block
{
  propertiesCopy = properties;
  blockCopy = block;
  [(MTUniversalPlaybackPositionMediaItem *)self populateEpisodeDictionary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = propertiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        mediaItemDictionary = [(MTUniversalPlaybackPositionMediaItem *)self mediaItemDictionary];
        v15 = [mediaItemDictionary objectForKey:v13];

        v16 = 0;
        blockCopy[2](blockCopy, v13, v15, &v16);

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)populateEpisodeDictionary
{
  mediaItemDictionary = [(MTUniversalPlaybackPositionMediaItem *)self mediaItemDictionary];

  if (!mediaItemDictionary)
  {
    v4 = objc_autoreleasePoolPush();
    episode = [(MTUniversalPlaybackPositionMediaItem *)self episode];
    managedObjectContext = [episode managedObjectContext];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CA0CC;
    v7[3] = &unk_1004D8358;
    v7[4] = self;
    [managedObjectContext performBlockAndWait:v7];

    objc_autoreleasePoolPop(v4);
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  mediaItemDictionary = [(MTUniversalPlaybackPositionMediaItem *)self mediaItemDictionary];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, mediaItemDictionary];

  return v6;
}

@end