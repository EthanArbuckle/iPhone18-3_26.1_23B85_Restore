@interface INMediaDestination
+ (INMediaDestination)libraryDestination;
+ (INMediaDestination)playlistDestinationWithName:(NSString *)playlistName;
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INMediaDestination)initWithCoder:(id)a3;
- (INMediaDestination)initWithMediaDestinationType:(int64_t)a3 playlistName:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INMediaDestination

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = [(INMediaDestination *)self mediaDestinationType];
  if (v7 >= INMediaDestinationTypePlaylist)
  {
    if (v7 == INMediaDestinationTypePlaylist)
    {
      v8 = [(INMediaDestination *)self playlistName];
      if ([v8 length])
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = INLocalizedStringWithLocalizer(@"“%@”", @"“%@”", v6);
        v11 = [(INMediaDestination *)self playlistName];
        v4 = [v9 stringWithFormat:v10, v11];
      }

      else
      {
        v4 = INLocalizedStringWithLocalizer(@"a playlist", @"a playlist", v6);
      }
    }
  }

  else
  {
    v4 = INLocalizedStringWithLocalizer(@"library", @"library", v6);
  }

  return v4;
}

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"mediaDestinationType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mediaDestinationType];
  v9[1] = @"playlistName";
  v10[0] = v3;
  playlistName = self->_playlistName;
  v5 = playlistName;
  if (!playlistName)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!playlistName)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaDestination;
  v6 = [(INMediaDestination *)&v11 description];
  v7 = [(INMediaDestination *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  mediaDestinationType = self->_mediaDestinationType;
  v9 = @"unknown";
  if (mediaDestinationType == 2)
  {
    v9 = @"playlist";
  }

  if (mediaDestinationType == 1)
  {
    v10 = @"library";
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  [v7 if_setObjectIfNonNil:v11 forKey:@"mediaDestinationType"];

  v12 = [v6 encodeObject:self->_playlistName];

  [v7 if_setObjectIfNonNil:v12 forKey:@"playlistName"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  mediaDestinationType = self->_mediaDestinationType;
  v5 = a3;
  [v5 encodeInteger:mediaDestinationType forKey:@"mediaDestinationType"];
  [v5 encodeObject:self->_playlistName forKey:@"playlistName"];
}

- (INMediaDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"mediaDestinationType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playlistName"];

  v7 = [(INMediaDestination *)self initWithMediaDestinationType:v5 playlistName:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v7 = 0;
      if (self->_mediaDestinationType == v5->_mediaDestinationType)
      {
        playlistName = self->_playlistName;
        if (playlistName == v5->_playlistName || [(NSString *)playlistName isEqual:?])
        {
          v7 = 1;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mediaDestinationType];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_playlistName hash];

  return v5 ^ v4;
}

- (INMediaDestination)initWithMediaDestinationType:(int64_t)a3 playlistName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INMediaDestination;
  v7 = [(INMediaDestination *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_mediaDestinationType = a3;
    v9 = [v6 copy];
    playlistName = v8->_playlistName;
    v8->_playlistName = v9;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"mediaDestinationType"];
    v10 = INMediaDestinationTypeWithString(v9);

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"playlistName"];
    v13 = [v7 decodeObjectOfClass:v11 from:v12];

    v14 = [[a1 alloc] initWithMediaDestinationType:v10 playlistName:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (INMediaDestination)playlistDestinationWithName:(NSString *)playlistName
{
  v4 = playlistName;
  v5 = [[a1 alloc] initWithMediaDestinationType:2 playlistName:v4];

  return v5;
}

+ (INMediaDestination)libraryDestination
{
  v2 = [[a1 alloc] initWithMediaDestinationType:1 playlistName:0];

  return v2;
}

@end