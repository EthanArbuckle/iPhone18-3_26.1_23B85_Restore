@interface WFPlayMusicActionContent
- (WFPlayMusicActionContent)initWithMediaCollection:(id)a3;
- (WFPlayMusicActionContent)initWithPlaybackArchive:(id)a3;
- (WFPlayMusicActionContent)initWithStoreIDs:(id)a3;
@end

@implementation WFPlayMusicActionContent

- (WFPlayMusicActionContent)initWithPlaybackArchive:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFPlayMusicActionContent;
  v6 = [(WFPlayMusicActionContent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackArchive, a3);
    v8 = v7;
  }

  return v7;
}

- (WFPlayMusicActionContent)initWithMediaCollection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFPlayMusicActionContent;
  v6 = [(WFPlayMusicActionContent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaCollection, a3);
    v8 = v7;
  }

  return v7;
}

- (WFPlayMusicActionContent)initWithStoreIDs:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFPlayMusicActionContent;
  v5 = [(WFPlayMusicActionContent *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    storeIDs = v5->_storeIDs;
    v5->_storeIDs = v6;

    v8 = v5;
  }

  return v5;
}

@end