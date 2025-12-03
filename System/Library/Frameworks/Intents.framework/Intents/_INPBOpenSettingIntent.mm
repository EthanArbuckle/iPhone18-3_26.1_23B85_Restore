@interface _INPBOpenSettingIntent
- (BOOL)isEqual:(id)equal;
- (_INPBOpenSettingIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBOpenSettingIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBOpenSettingIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  searchQuery = [(_INPBOpenSettingIntent *)self searchQuery];
  dictionaryRepresentation2 = [searchQuery dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"searchQuery"];

  settingMetadata = [(_INPBOpenSettingIntent *)self settingMetadata];
  dictionaryRepresentation3 = [settingMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"settingMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBDataString *)self->_searchQuery hash]^ v3;
  return v4 ^ [(_INPBSettingMetadata *)self->_settingMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  intentMetadata = [(_INPBOpenSettingIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata3 = [(_INPBOpenSettingIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBOpenSettingIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBOpenSettingIntent *)self searchQuery];
  intentMetadata2 = [equalCopy searchQuery];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  searchQuery = [(_INPBOpenSettingIntent *)self searchQuery];
  if (searchQuery)
  {
    v13 = searchQuery;
    searchQuery2 = [(_INPBOpenSettingIntent *)self searchQuery];
    searchQuery3 = [equalCopy searchQuery];
    v16 = [searchQuery2 isEqual:searchQuery3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBOpenSettingIntent *)self settingMetadata];
  intentMetadata2 = [equalCopy settingMetadata];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    settingMetadata = [(_INPBOpenSettingIntent *)self settingMetadata];
    if (!settingMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = settingMetadata;
    settingMetadata2 = [(_INPBOpenSettingIntent *)self settingMetadata];
    settingMetadata3 = [equalCopy settingMetadata];
    v21 = [settingMetadata2 isEqual:settingMetadata3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBOpenSettingIntent allocWithZone:](_INPBOpenSettingIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBOpenSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_searchQuery copyWithZone:zone];
  [(_INPBOpenSettingIntent *)v5 setSearchQuery:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:zone];
  [(_INPBOpenSettingIntent *)v5 setSettingMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBOpenSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBOpenSettingIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBOpenSettingIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBOpenSettingIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBOpenSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  searchQuery = [(_INPBOpenSettingIntent *)self searchQuery];

  if (searchQuery)
  {
    searchQuery2 = [(_INPBOpenSettingIntent *)self searchQuery];
    PBDataWriterWriteSubmessage();
  }

  settingMetadata = [(_INPBOpenSettingIntent *)self settingMetadata];

  v9 = toCopy;
  if (settingMetadata)
  {
    settingMetadata2 = [(_INPBOpenSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end