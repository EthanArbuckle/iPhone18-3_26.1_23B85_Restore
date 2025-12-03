@interface WFPlaylistDescriptor
- (BOOL)isEqual:(id)equal;
- (WFPlaylistDescriptor)initWithCoder:(id)coder;
- (WFPlaylistDescriptor)initWithEntireMusicLibrary;
- (WFPlaylistDescriptor)initWithPlaylistName:(id)name persistentIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPlaylistDescriptor

- (unint64_t)hash
{
  if ([(WFPlaylistDescriptor *)self entireMusicLibrary])
  {
    v3 = 3405691582;
  }

  else
  {
    v3 = 3133065982;
  }

  playlistName = [(WFPlaylistDescriptor *)self playlistName];
  v5 = [playlistName hash];
  persistentIdentifier = [(WFPlaylistDescriptor *)self persistentIdentifier];
  v7 = v5 ^ [persistentIdentifier hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(WFPlaylistDescriptor *)v5 entireMusicLibrary]&& [(WFPlaylistDescriptor *)self entireMusicLibrary])
      {
        goto LABEL_5;
      }

      playlistName = [(WFPlaylistDescriptor *)v5 playlistName];
      playlistName2 = [(WFPlaylistDescriptor *)self playlistName];
      if ((playlistName != 0) != (playlistName2 == 0))
      {
        playlistName3 = [(WFPlaylistDescriptor *)v5 playlistName];
        if (playlistName3)
        {
          v10 = playlistName3;
          playlistName4 = [(WFPlaylistDescriptor *)v5 playlistName];
          playlistName5 = [(WFPlaylistDescriptor *)self playlistName];
          v13 = [playlistName4 isEqualToString:playlistName5];

          if (!v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }

        playlistName = [(WFPlaylistDescriptor *)v5 persistentIdentifier];
        playlistName2 = [(WFPlaylistDescriptor *)self persistentIdentifier];
        if ((playlistName != 0) != (playlistName2 == 0))
        {
          persistentIdentifier = [(WFPlaylistDescriptor *)v5 persistentIdentifier];
          if (persistentIdentifier)
          {
            v15 = persistentIdentifier;
            persistentIdentifier2 = [(WFPlaylistDescriptor *)v5 persistentIdentifier];
            persistentIdentifier3 = [(WFPlaylistDescriptor *)self persistentIdentifier];
            v18 = [persistentIdentifier2 isEqualToNumber:persistentIdentifier3];

            if ((v18 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
          }

LABEL_5:
          v6 = 1;
LABEL_19:

          goto LABEL_20;
        }
      }

LABEL_18:
      v6 = 0;
      goto LABEL_19;
    }

    v6 = 0;
  }

LABEL_20:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  playlistName = [(WFPlaylistDescriptor *)self playlistName];
  [coderCopy encodeObject:playlistName forKey:@"playlistName"];

  persistentIdentifier = [(WFPlaylistDescriptor *)self persistentIdentifier];
  [coderCopy encodeObject:persistentIdentifier forKey:@"persistentIdentifier"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFPlaylistDescriptor entireMusicLibrary](self, "entireMusicLibrary")}];
  [coderCopy encodeObject:v7 forKey:@"entireMusicLibrary"];
}

- (WFPlaylistDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playlistName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entireMusicLibrary"];

  if ([v7 BOOLValue])
  {
    initWithEntireMusicLibrary = [(WFPlaylistDescriptor *)self initWithEntireMusicLibrary];
  }

  else
  {
    initWithEntireMusicLibrary = [(WFPlaylistDescriptor *)self initWithPlaylistName:v5 persistentIdentifier:v6];
  }

  v9 = initWithEntireMusicLibrary;

  return v9;
}

- (WFPlaylistDescriptor)initWithPlaylistName:(id)name persistentIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = WFPlaylistDescriptor;
  v8 = [(WFPlaylistDescriptor *)&v13 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    playlistName = v8->_playlistName;
    v8->_playlistName = v9;

    objc_storeStrong(&v8->_persistentIdentifier, identifier);
    v11 = v8;
  }

  return v8;
}

- (WFPlaylistDescriptor)initWithEntireMusicLibrary
{
  v6.receiver = self;
  v6.super_class = WFPlaylistDescriptor;
  v2 = [(WFPlaylistDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_entireMusicLibrary = 1;
    v4 = v2;
  }

  return v3;
}

@end