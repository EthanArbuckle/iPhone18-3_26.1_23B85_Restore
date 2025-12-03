@interface INMediaDestination
+ (INMediaDestination)libraryDestination;
+ (INMediaDestination)playlistDestinationWithName:(NSString *)playlistName;
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INMediaDestination)initWithCoder:(id)coder;
- (INMediaDestination)initWithMediaDestinationType:(int64_t)type playlistName:(id)name;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INMediaDestination

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  mediaDestinationType = [(INMediaDestination *)self mediaDestinationType];
  if (mediaDestinationType >= INMediaDestinationTypePlaylist)
  {
    if (mediaDestinationType == INMediaDestinationTypePlaylist)
    {
      playlistName = [(INMediaDestination *)self playlistName];
      if ([playlistName length])
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = INLocalizedStringWithLocalizer(@"“%@”", @"“%@”", localizerCopy);
        playlistName2 = [(INMediaDestination *)self playlistName];
        v4 = [v9 stringWithFormat:v10, playlistName2];
      }

      else
      {
        v4 = INLocalizedStringWithLocalizer(@"a playlist", @"a playlist", localizerCopy);
      }
    }
  }

  else
  {
    v4 = INLocalizedStringWithLocalizer(@"library", @"library", localizerCopy);
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
  null = playlistName;
  if (!playlistName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!playlistName)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INMediaDestination;
  v6 = [(INMediaDestination *)&v11 description];
  _dictionaryRepresentation = [(INMediaDestination *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
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
  [dictionary if_setObjectIfNonNil:v11 forKey:@"mediaDestinationType"];

  v12 = [encoderCopy encodeObject:self->_playlistName];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"playlistName"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  mediaDestinationType = self->_mediaDestinationType;
  coderCopy = coder;
  [coderCopy encodeInteger:mediaDestinationType forKey:@"mediaDestinationType"];
  [coderCopy encodeObject:self->_playlistName forKey:@"playlistName"];
}

- (INMediaDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"mediaDestinationType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playlistName"];

  v7 = [(INMediaDestination *)self initWithMediaDestinationType:v5 playlistName:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INMediaDestination)initWithMediaDestinationType:(int64_t)type playlistName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = INMediaDestination;
  v7 = [(INMediaDestination *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_mediaDestinationType = type;
    v9 = [nameCopy copy];
    playlistName = v8->_playlistName;
    v8->_playlistName = v9;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"mediaDestinationType"];
    v10 = INMediaDestinationTypeWithString(v9);

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"playlistName"];
    v13 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v14 = [[self alloc] initWithMediaDestinationType:v10 playlistName:v13];
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
  v5 = [[self alloc] initWithMediaDestinationType:2 playlistName:v4];

  return v5;
}

+ (INMediaDestination)libraryDestination
{
  v2 = [[self alloc] initWithMediaDestinationType:1 playlistName:0];

  return v2;
}

@end