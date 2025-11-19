@interface SHMusicVideoResponseItem
- (NSURL)url;
- (SHMusicVideoResponseItem)initWithMusicVideoItemDictionary:(id)a3;
@end

@implementation SHMusicVideoResponseItem

- (SHMusicVideoResponseItem)initWithMusicVideoItemDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHMusicVideoResponseItem;
  v6 = [(SHMusicVideoResponseItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_musicVideoItemDictionary, a3);
  }

  return v7;
}

- (NSURL)url
{
  v2 = [(SHMusicVideoResponseItem *)self musicVideoItemDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"url"];

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end