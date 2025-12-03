@interface BKAudiobookPersistenceMediaLibraryLocalItems
- (id)_mediaQueryFromAudiobook:(id)audiobook;
@end

@implementation BKAudiobookPersistenceMediaLibraryLocalItems

- (id)_mediaQueryFromAudiobook:(id)audiobook
{
  v10.receiver = self;
  v10.super_class = BKAudiobookPersistenceMediaLibraryLocalItems;
  audiobookCopy = audiobook;
  v5 = [(BKAudiobookPersistenceMediaLibrary *)&v10 _mediaQueryFromAudiobook:audiobookCopy];
  v6 = [(BKAudiobookPersistenceMediaLibrary *)self _storeIDFromAudiobook:audiobookCopy, v10.receiver, v10.super_class];

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