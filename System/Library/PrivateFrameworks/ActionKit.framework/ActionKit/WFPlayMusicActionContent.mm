@interface WFPlayMusicActionContent
- (WFPlayMusicActionContent)initWithMediaCollection:(id)collection;
- (WFPlayMusicActionContent)initWithPlaybackArchive:(id)archive;
- (WFPlayMusicActionContent)initWithStoreIDs:(id)ds;
@end

@implementation WFPlayMusicActionContent

- (WFPlayMusicActionContent)initWithPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  v10.receiver = self;
  v10.super_class = WFPlayMusicActionContent;
  v6 = [(WFPlayMusicActionContent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackArchive, archive);
    v8 = v7;
  }

  return v7;
}

- (WFPlayMusicActionContent)initWithMediaCollection:(id)collection
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = WFPlayMusicActionContent;
  v6 = [(WFPlayMusicActionContent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaCollection, collection);
    v8 = v7;
  }

  return v7;
}

- (WFPlayMusicActionContent)initWithStoreIDs:(id)ds
{
  dsCopy = ds;
  v10.receiver = self;
  v10.super_class = WFPlayMusicActionContent;
  v5 = [(WFPlayMusicActionContent *)&v10 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    storeIDs = v5->_storeIDs;
    v5->_storeIDs = v6;

    v8 = v5;
  }

  return v5;
}

@end