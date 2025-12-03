@interface APRKMetadata
- (APRKMetadata)initWithDictionary:(id)dictionary;
- (void)updateMedatataWithDictionary:(id)dictionary;
@end

@implementation APRKMetadata

- (APRKMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v9.receiver = self;
    v9.super_class = APRKMetadata;
    v5 = [(APRKMetadata *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(APRKMetadata *)v5 updateMedatataWithDictionary:dictionaryCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)updateMedatataWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v12 = dictionaryCopy;
    v5 = [dictionaryCopy objectForKey:@"Album"];
    if (v5)
    {
      objc_storeStrong(&self->_album, v5);
    }

    v6 = [v12 objectForKey:@"Artist"];

    if (v6)
    {
      objc_storeStrong(&self->_artist, v6);
    }

    v7 = [v12 objectForKey:@"ArtworkData"];

    if (v7)
    {
      objc_storeStrong(&self->_artworkDataInBase64, v7);
    }

    v8 = [v12 objectForKey:@"ArtworkMIMEType"];

    if (v8)
    {
      objc_storeStrong(&self->_artworkMIMEType, v8);
    }

    v9 = [v12 objectForKey:@"Title"];

    if (v9)
    {
      objc_storeStrong(&self->_title, v9);
    }

    v10 = [v12 objectForKey:@"TotalTrackCount"];

    if (v10)
    {
      self->_totalTrackCount = [v10 integerValue];
    }

    v11 = [v12 objectForKey:@"TrackNumber"];

    if (v11)
    {
      self->_trackNumber = [v11 integerValue];
    }

    dictionaryCopy = v12;
  }
}

@end