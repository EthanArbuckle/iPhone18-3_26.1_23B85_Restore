@interface MPTimedMetadata
- (MPTimedMetadata)init;
- (NSDictionary)allMetadata;
- (NSTimeInterval)timestamp;
- (id)_initWithMetadataItem:(id)item;
- (id)value;
@end

@implementation MPTimedMetadata

- (NSDictionary)allMetadata
{
  extraAttributes = [(AVMetadataItem *)self->_metadataItem extraAttributes];
  v4 = [extraAttributes mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  }

  v7 = v6;

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v8 = [(MPTimedMetadata *)self key];
    [v7 setObject:v8 forKey:@"key"];

    keyspace = [(MPTimedMetadata *)self keyspace];
    [v7 setObject:keyspace forKey:@"keyspace"];

    value = [(MPTimedMetadata *)self value];
    [v7 setObject:value forKey:@"value"];

    v11 = MEMORY[0x1E696AD98];
    [(MPTimedMetadata *)self timestamp];
    v12 = [v11 numberWithDouble:?];
    [v7 setObject:v12 forKey:@"timestamp"];
  }

  v13 = *MEMORY[0x1E6987830];
  if (([@"name" isEqualToString:*MEMORY[0x1E6987830]] & 1) == 0)
  {
    v14 = [extraAttributes objectForKey:v13];
    if (v14)
    {
      [v7 setObject:v14 forKey:@"name"];
    }
  }

  v15 = *MEMORY[0x1E6987818];
  if (([@"info" isEqualToString:*MEMORY[0x1E6987818]] & 1) == 0)
  {
    v16 = [extraAttributes objectForKey:v15];
    if (v16)
    {
      [v7 setObject:v16 forKey:@"info"];
    }
  }

  v17 = *MEMORY[0x1E6987828];
  if (([@"mimeType" isEqualToString:*MEMORY[0x1E6987828]] & 1) == 0)
  {
    v18 = [extraAttributes objectForKey:v17];
    if (v18)
    {
      [v7 setObject:v18 forKey:@"mimeType"];
    }
  }

  v19 = *MEMORY[0x1E6987810];
  if (([@"dataType" isEqualToString:*MEMORY[0x1E6987810]] & 1) == 0)
  {
    v20 = [extraAttributes objectForKey:v19];
    if (v20)
    {
      [v7 setObject:v20 forKey:@"dataType"];
    }
  }

  v21 = *MEMORY[0x1E6987820];
  if (([@"languageCode" isEqualToString:*MEMORY[0x1E6987820]] & 1) == 0)
  {
    v22 = [extraAttributes objectForKey:v21];
    if (v22)
    {
      [v7 setObject:v22 forKey:@"languageCode"];
    }
  }

  if (dyld_program_sdk_at_least())
  {
    v23 = [extraAttributes objectForKey:*MEMORY[0x1E69876D0]];
    if ([v23 isEqualToString:@"org.iana.media-type"])
    {
      v24 = [extraAttributes objectForKey:*MEMORY[0x1E69876C8]];
      if (v24)
      {
        [v7 setObject:v24 forKey:@"mimeType"];
      }
    }

    v25 = [extraAttributes objectForKey:*MEMORY[0x1E69876E0]];
    if (v25)
    {
      [v7 setObject:v25 forKey:@"dataType"];
    }
  }

  return v7;
}

- (NSTimeInterval)timestamp
{
  memset(&v4[1], 0, sizeof(CMTime));
  metadataItem = self->_metadataItem;
  if (metadataItem)
  {
    [(AVMetadataItem *)metadataItem time];
  }

  v4[0] = v4[1];
  return CMTimeGetSeconds(v4);
}

- (id)value
{
  value = [(AVMetadataItem *)self->_metadataItem value];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_initWithMetadataItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MPTimedMetadata;
  v6 = [(MPTimedMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadataItem, item);
  }

  return v7;
}

- (MPTimedMetadata)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"MPTimedMetadata cannot be created directly"];

  return 0;
}

@end