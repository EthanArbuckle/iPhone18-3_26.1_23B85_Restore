@interface MPMusicPlayerControllerNowPlaying
+ (MPMusicPlayerControllerNowPlaying)nowPlayingWithItem:(id)a3 itemIdentifier:(id)a4 itemUID:(unint64_t)a5 artworkIdentifier:(id)a6 audioFormat:(id)a7 index:(int64_t)a8 count:(int64_t)a9;
- (MPMusicPlayerControllerNowPlaying)initWithCoder:(id)a3;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerControllerNowPlaying

- (void)encodeWithCoder:(id)a3
{
  item = self->_item;
  v5 = a3;
  [v5 encodeObject:item forKey:@"item"];
  [v5 encodeObject:self->_audioFormat forKey:@"audioFormat"];
  [v5 encodeObject:self->_itemIdentifier forKey:@"itemID"];
  [v5 encodeObject:self->_artworkIdentifier forKey:@"artworkID"];
  [v5 encodeInteger:self->_index forKey:@"idx"];
  [v5 encodeInteger:self->_count forKey:@"count"];
  [v5 encodeInt64:self->_itemUID forKey:@"uid"];
}

- (MPMusicPlayerControllerNowPlaying)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MPMusicPlayerControllerNowPlaying;
  v5 = [(MPMusicPlayerControllerNowPlaying *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioFormat"];
    audioFormat = v5->_audioFormat;
    v5->_audioFormat = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artworkID"];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v12;

    v5->_index = [v4 decodeIntegerForKey:@"idx"];
    v5->_count = [v4 decodeIntegerForKey:@"count"];
    v5->_itemUID = [v4 decodeInt64ForKey:@"uid"];
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPMusicPlayerControllerNowPlaying;
  return [(MPMusicPlayerControllerNowPlaying *)&v3 init];
}

+ (MPMusicPlayerControllerNowPlaying)nowPlayingWithItem:(id)a3 itemIdentifier:(id)a4 itemUID:(unint64_t)a5 artworkIdentifier:(id)a6 audioFormat:(id)a7 index:(int64_t)a8 count:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = [[a1 alloc] _init];
  v20 = v19[1];
  v19[1] = v15;
  v21 = v15;

  v22 = v19[2];
  v19[2] = v18;
  v23 = v18;

  v24 = v19[3];
  v19[3] = v16;
  v25 = v16;

  v26 = v19[5];
  v19[4] = a5;
  v19[5] = v17;

  v19[6] = a8;
  v19[7] = a9;

  return v19;
}

@end