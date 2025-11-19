@interface BKAudiobookPersistenceMediaLibraryDAAPItem
- (id)_mediaQueryFromAudiobook:(id)a3;
@end

@implementation BKAudiobookPersistenceMediaLibraryDAAPItem

- (id)_mediaQueryFromAudiobook:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKAudiobookPersistenceMediaLibraryDAAPItem;
  v4 = a3;
  v5 = [(BKAudiobookPersistenceMediaLibrary *)&v10 _mediaQueryFromAudiobook:v4];
  v6 = [(BKAudiobookPersistenceMediaLibrary *)self _storeIDFromAudiobook:v4, v10.receiver, v10.super_class];

  v7 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsCloudItem];
  [v5 addFilterPredicate:v7];

  if ([v6 length])
  {
    v8 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:MPMediaItemPropertyStoreID];
    [v5 addFilterPredicate:v8];
  }

  return v5;
}

@end