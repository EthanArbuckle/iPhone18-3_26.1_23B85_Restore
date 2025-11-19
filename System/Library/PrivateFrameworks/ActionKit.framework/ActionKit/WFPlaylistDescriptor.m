@interface WFPlaylistDescriptor
- (BOOL)isEqual:(id)a3;
- (WFPlaylistDescriptor)initWithCoder:(id)a3;
- (WFPlaylistDescriptor)initWithEntireMusicLibrary;
- (WFPlaylistDescriptor)initWithPlaylistName:(id)a3 persistentIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

  v4 = [(WFPlaylistDescriptor *)self playlistName];
  v5 = [v4 hash];
  v6 = [(WFPlaylistDescriptor *)self persistentIdentifier];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(WFPlaylistDescriptor *)v5 entireMusicLibrary]&& [(WFPlaylistDescriptor *)self entireMusicLibrary])
      {
        goto LABEL_5;
      }

      v7 = [(WFPlaylistDescriptor *)v5 playlistName];
      v8 = [(WFPlaylistDescriptor *)self playlistName];
      if ((v7 != 0) != (v8 == 0))
      {
        v9 = [(WFPlaylistDescriptor *)v5 playlistName];
        if (v9)
        {
          v10 = v9;
          v11 = [(WFPlaylistDescriptor *)v5 playlistName];
          v12 = [(WFPlaylistDescriptor *)self playlistName];
          v13 = [v11 isEqualToString:v12];

          if (!v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }

        v7 = [(WFPlaylistDescriptor *)v5 persistentIdentifier];
        v8 = [(WFPlaylistDescriptor *)self persistentIdentifier];
        if ((v7 != 0) != (v8 == 0))
        {
          v14 = [(WFPlaylistDescriptor *)v5 persistentIdentifier];
          if (v14)
          {
            v15 = v14;
            v16 = [(WFPlaylistDescriptor *)v5 persistentIdentifier];
            v17 = [(WFPlaylistDescriptor *)self persistentIdentifier];
            v18 = [v16 isEqualToNumber:v17];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFPlaylistDescriptor *)self playlistName];
  [v4 encodeObject:v5 forKey:@"playlistName"];

  v6 = [(WFPlaylistDescriptor *)self persistentIdentifier];
  [v4 encodeObject:v6 forKey:@"persistentIdentifier"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFPlaylistDescriptor entireMusicLibrary](self, "entireMusicLibrary")}];
  [v4 encodeObject:v7 forKey:@"entireMusicLibrary"];
}

- (WFPlaylistDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playlistName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entireMusicLibrary"];

  if ([v7 BOOLValue])
  {
    v8 = [(WFPlaylistDescriptor *)self initWithEntireMusicLibrary];
  }

  else
  {
    v8 = [(WFPlaylistDescriptor *)self initWithPlaylistName:v5 persistentIdentifier:v6];
  }

  v9 = v8;

  return v9;
}

- (WFPlaylistDescriptor)initWithPlaylistName:(id)a3 persistentIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFPlaylistDescriptor;
  v8 = [(WFPlaylistDescriptor *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    playlistName = v8->_playlistName;
    v8->_playlistName = v9;

    objc_storeStrong(&v8->_persistentIdentifier, a4);
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