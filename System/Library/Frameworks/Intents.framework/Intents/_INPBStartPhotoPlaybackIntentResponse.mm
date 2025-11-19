@interface _INPBStartPhotoPlaybackIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBStartPhotoPlaybackIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAlbumName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBStartPhotoPlaybackIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_albumName)
  {
    v4 = [(_INPBStartPhotoPlaybackIntentResponse *)self albumName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"albumName"];
  }

  v6 = [(_INPBStartPhotoPlaybackIntentResponse *)self locationCreated];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"locationCreated"];

  if ([(_INPBStartPhotoPlaybackIntentResponse *)self hasSearchResultsCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBStartPhotoPlaybackIntentResponse searchResultsCount](self, "searchResultsCount")}];
    [v3 setObject:v8 forKeyedSubscript:@"searchResultsCount"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_albumName hash];
  v4 = [(_INPBLocation *)self->_locationCreated hash];
  if ([(_INPBStartPhotoPlaybackIntentResponse *)self hasSearchResultsCount])
  {
    v5 = 2654435761 * self->_searchResultsCount;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBStartPhotoPlaybackIntentResponse *)self albumName];
  v6 = [v4 albumName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBStartPhotoPlaybackIntentResponse *)self albumName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBStartPhotoPlaybackIntentResponse *)self albumName];
    v10 = [v4 albumName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartPhotoPlaybackIntentResponse *)self locationCreated];
  v6 = [v4 locationCreated];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBStartPhotoPlaybackIntentResponse *)self locationCreated];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBStartPhotoPlaybackIntentResponse *)self locationCreated];
    v15 = [v4 locationCreated];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBStartPhotoPlaybackIntentResponse *)self hasSearchResultsCount];
  if (v19 == [v4 hasSearchResultsCount])
  {
    if (!-[_INPBStartPhotoPlaybackIntentResponse hasSearchResultsCount](self, "hasSearchResultsCount") || ![v4 hasSearchResultsCount] || (searchResultsCount = self->_searchResultsCount, searchResultsCount == objc_msgSend(v4, "searchResultsCount")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartPhotoPlaybackIntentResponse allocWithZone:](_INPBStartPhotoPlaybackIntentResponse init];
  v6 = [(NSString *)self->_albumName copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntentResponse *)v5 setAlbumName:v6];

  v7 = [(_INPBLocation *)self->_locationCreated copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntentResponse *)v5 setLocationCreated:v7];

  if ([(_INPBStartPhotoPlaybackIntentResponse *)self hasSearchResultsCount])
  {
    [(_INPBStartPhotoPlaybackIntentResponse *)v5 setSearchResultsCount:[(_INPBStartPhotoPlaybackIntentResponse *)self searchResultsCount]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartPhotoPlaybackIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartPhotoPlaybackIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartPhotoPlaybackIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBStartPhotoPlaybackIntentResponse *)self albumName];

  if (v4)
  {
    albumName = self->_albumName;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBStartPhotoPlaybackIntentResponse *)self locationCreated];

  if (v6)
  {
    v7 = [(_INPBStartPhotoPlaybackIntentResponse *)self locationCreated];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBStartPhotoPlaybackIntentResponse *)self hasSearchResultsCount])
  {
    searchResultsCount = self->_searchResultsCount;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setAlbumName:(id)a3
{
  v4 = [a3 copy];
  albumName = self->_albumName;
  self->_albumName = v4;

  MEMORY[0x1EEE66BB8](v4, albumName);
}

@end