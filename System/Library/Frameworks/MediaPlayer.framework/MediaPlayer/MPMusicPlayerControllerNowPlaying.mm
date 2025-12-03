@interface MPMusicPlayerControllerNowPlaying
+ (MPMusicPlayerControllerNowPlaying)nowPlayingWithItem:(id)item itemIdentifier:(id)identifier itemUID:(unint64_t)d artworkIdentifier:(id)artworkIdentifier audioFormat:(id)format index:(int64_t)index count:(int64_t)count;
- (MPMusicPlayerControllerNowPlaying)initWithCoder:(id)coder;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerControllerNowPlaying

- (void)encodeWithCoder:(id)coder
{
  item = self->_item;
  coderCopy = coder;
  [coderCopy encodeObject:item forKey:@"item"];
  [coderCopy encodeObject:self->_audioFormat forKey:@"audioFormat"];
  [coderCopy encodeObject:self->_itemIdentifier forKey:@"itemID"];
  [coderCopy encodeObject:self->_artworkIdentifier forKey:@"artworkID"];
  [coderCopy encodeInteger:self->_index forKey:@"idx"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
  [coderCopy encodeInt64:self->_itemUID forKey:@"uid"];
}

- (MPMusicPlayerControllerNowPlaying)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MPMusicPlayerControllerNowPlaying;
  v5 = [(MPMusicPlayerControllerNowPlaying *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioFormat"];
    audioFormat = v5->_audioFormat;
    v5->_audioFormat = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkID"];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v12;

    v5->_index = [coderCopy decodeIntegerForKey:@"idx"];
    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
    v5->_itemUID = [coderCopy decodeInt64ForKey:@"uid"];
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPMusicPlayerControllerNowPlaying;
  return [(MPMusicPlayerControllerNowPlaying *)&v3 init];
}

+ (MPMusicPlayerControllerNowPlaying)nowPlayingWithItem:(id)item itemIdentifier:(id)identifier itemUID:(unint64_t)d artworkIdentifier:(id)artworkIdentifier audioFormat:(id)format index:(int64_t)index count:(int64_t)count
{
  itemCopy = item;
  identifierCopy = identifier;
  artworkIdentifierCopy = artworkIdentifier;
  formatCopy = format;
  _init = [[self alloc] _init];
  v20 = _init[1];
  _init[1] = itemCopy;
  v21 = itemCopy;

  v22 = _init[2];
  _init[2] = formatCopy;
  v23 = formatCopy;

  v24 = _init[3];
  _init[3] = identifierCopy;
  v25 = identifierCopy;

  v26 = _init[5];
  _init[4] = d;
  _init[5] = artworkIdentifierCopy;

  _init[6] = index;
  _init[7] = count;

  return _init;
}

@end