@interface BKAudiobookPersistenceMediaLibraryDAAPItem
- (id)_mediaQueryFromAudiobook:(id)audiobook;
@end

@implementation BKAudiobookPersistenceMediaLibraryDAAPItem

- (id)_mediaQueryFromAudiobook:(id)audiobook
{
  v10.receiver = self;
  v10.super_class = BKAudiobookPersistenceMediaLibraryDAAPItem;
  audiobookCopy = audiobook;
  v5 = [(BKAudiobookPersistenceMediaLibrary *)&v10 _mediaQueryFromAudiobook:audiobookCopy];
  v6 = [(BKAudiobookPersistenceMediaLibrary *)self _storeIDFromAudiobook:audiobookCopy, v10.receiver, v10.super_class];

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