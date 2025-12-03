@interface _INPBSearchForPhotosIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForPhotosIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAlbumName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForPhotosIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_albumName)
  {
    albumName = [(_INPBSearchForPhotosIntentResponse *)self albumName];
    v5 = [albumName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"albumName"];
  }

  locationCreated = [(_INPBSearchForPhotosIntentResponse *)self locationCreated];
  dictionaryRepresentation = [locationCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"locationCreated"];

  if ([(_INPBSearchForPhotosIntentResponse *)self hasSearchResultsCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBSearchForPhotosIntentResponse searchResultsCount](self, "searchResultsCount")}];
    [dictionary setObject:v8 forKeyedSubscript:@"searchResultsCount"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_albumName hash];
  v4 = [(_INPBLocation *)self->_locationCreated hash];
  if ([(_INPBSearchForPhotosIntentResponse *)self hasSearchResultsCount])
  {
    v5 = 2654435761 * self->_searchResultsCount;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  albumName = [(_INPBSearchForPhotosIntentResponse *)self albumName];
  albumName2 = [equalCopy albumName];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_11;
  }

  albumName3 = [(_INPBSearchForPhotosIntentResponse *)self albumName];
  if (albumName3)
  {
    v8 = albumName3;
    albumName4 = [(_INPBSearchForPhotosIntentResponse *)self albumName];
    albumName5 = [equalCopy albumName];
    v11 = [albumName4 isEqual:albumName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  albumName = [(_INPBSearchForPhotosIntentResponse *)self locationCreated];
  albumName2 = [equalCopy locationCreated];
  if ((albumName != 0) == (albumName2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  locationCreated = [(_INPBSearchForPhotosIntentResponse *)self locationCreated];
  if (locationCreated)
  {
    v13 = locationCreated;
    locationCreated2 = [(_INPBSearchForPhotosIntentResponse *)self locationCreated];
    locationCreated3 = [equalCopy locationCreated];
    v16 = [locationCreated2 isEqual:locationCreated3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasSearchResultsCount = [(_INPBSearchForPhotosIntentResponse *)self hasSearchResultsCount];
  if (hasSearchResultsCount == [equalCopy hasSearchResultsCount])
  {
    if (!-[_INPBSearchForPhotosIntentResponse hasSearchResultsCount](self, "hasSearchResultsCount") || ![equalCopy hasSearchResultsCount] || (searchResultsCount = self->_searchResultsCount, searchResultsCount == objc_msgSend(equalCopy, "searchResultsCount")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForPhotosIntentResponse allocWithZone:](_INPBSearchForPhotosIntentResponse init];
  v6 = [(NSString *)self->_albumName copyWithZone:zone];
  [(_INPBSearchForPhotosIntentResponse *)v5 setAlbumName:v6];

  v7 = [(_INPBLocation *)self->_locationCreated copyWithZone:zone];
  [(_INPBSearchForPhotosIntentResponse *)v5 setLocationCreated:v7];

  if ([(_INPBSearchForPhotosIntentResponse *)self hasSearchResultsCount])
  {
    [(_INPBSearchForPhotosIntentResponse *)v5 setSearchResultsCount:[(_INPBSearchForPhotosIntentResponse *)self searchResultsCount]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForPhotosIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForPhotosIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForPhotosIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  albumName = [(_INPBSearchForPhotosIntentResponse *)self albumName];

  if (albumName)
  {
    albumName = self->_albumName;
    PBDataWriterWriteStringField();
  }

  locationCreated = [(_INPBSearchForPhotosIntentResponse *)self locationCreated];

  if (locationCreated)
  {
    locationCreated2 = [(_INPBSearchForPhotosIntentResponse *)self locationCreated];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSearchForPhotosIntentResponse *)self hasSearchResultsCount])
  {
    searchResultsCount = self->_searchResultsCount;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setAlbumName:(id)name
{
  v4 = [name copy];
  albumName = self->_albumName;
  self->_albumName = v4;

  MEMORY[0x1EEE66BB8](v4, albumName);
}

@end