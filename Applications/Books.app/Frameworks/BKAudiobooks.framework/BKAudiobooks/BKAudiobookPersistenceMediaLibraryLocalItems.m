@interface BKAudiobookPersistenceMediaLibraryLocalItems
- (id)_mediaQueryFromAudiobook:(id)a3;
@end

@implementation BKAudiobookPersistenceMediaLibraryLocalItems

- (id)_mediaQueryFromAudiobook:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKAudiobookPersistenceMediaLibraryLocalItems;
  v4 = a3;
  v5 = [(BKAudiobookPersistenceMediaLibrary *)&v10 _mediaQueryFromAudiobook:v4];
  v6 = [(BKAudiobookPersistenceMediaLibrary *)self _storeIDFromAudiobook:v4, v10.receiver, v10.super_class];

  v7 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyIsCloudItem];
  [v5 addFilterPredicate:v7];

  if ([v6 length])
  {
    v8 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:MPMediaItemPropertyStorePlaylistID];
    [v5 addFilterPredicate:v8];
  }

  return v5;
}

@end