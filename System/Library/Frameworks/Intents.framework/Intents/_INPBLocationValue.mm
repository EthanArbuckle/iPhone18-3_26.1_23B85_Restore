@interface _INPBLocationValue
- (BOOL)isEqual:(id)equal;
- (_INPBLocationValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBLocationValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mapItemStorage = [(_INPBLocationValue *)self mapItemStorage];
  dictionaryRepresentation = [mapItemStorage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mapItemStorage"];

  place = [(_INPBLocationValue *)self place];
  dictionaryRepresentation2 = [place dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"place"];

  valueMetadata = [(_INPBLocationValue *)self valueMetadata];
  dictionaryRepresentation3 = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GEOMapItemStorage *)self->_mapItemStorage hash];
  v4 = [(GEOPDPlace *)self->_place hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  mapItemStorage = [(_INPBLocationValue *)self mapItemStorage];
  mapItemStorage2 = [equalCopy mapItemStorage];
  if ((mapItemStorage != 0) == (mapItemStorage2 == 0))
  {
    goto LABEL_16;
  }

  mapItemStorage3 = [(_INPBLocationValue *)self mapItemStorage];
  if (mapItemStorage3)
  {
    v8 = mapItemStorage3;
    mapItemStorage4 = [(_INPBLocationValue *)self mapItemStorage];
    mapItemStorage5 = [equalCopy mapItemStorage];
    v11 = [mapItemStorage4 isEqual:mapItemStorage5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  mapItemStorage = [(_INPBLocationValue *)self place];
  mapItemStorage2 = [equalCopy place];
  if ((mapItemStorage != 0) == (mapItemStorage2 == 0))
  {
    goto LABEL_16;
  }

  place = [(_INPBLocationValue *)self place];
  if (place)
  {
    v13 = place;
    place2 = [(_INPBLocationValue *)self place];
    place3 = [equalCopy place];
    v16 = [place2 isEqual:place3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  mapItemStorage = [(_INPBLocationValue *)self valueMetadata];
  mapItemStorage2 = [equalCopy valueMetadata];
  if ((mapItemStorage != 0) != (mapItemStorage2 == 0))
  {
    valueMetadata = [(_INPBLocationValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = valueMetadata;
    valueMetadata2 = [(_INPBLocationValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v21 = [valueMetadata2 isEqual:valueMetadata3];

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
  v5 = [+[_INPBLocationValue allocWithZone:](_INPBLocationValue init];
  v6 = [(GEOMapItemStorage *)self->_mapItemStorage copyWithZone:zone];
  [(_INPBLocationValue *)v5 setMapItemStorage:v6];

  v7 = [(GEOPDPlace *)self->_place copyWithZone:zone];
  [(_INPBLocationValue *)v5 setPlace:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBLocationValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBLocationValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBLocationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBLocationValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mapItemStorage = [(_INPBLocationValue *)self mapItemStorage];

  if (mapItemStorage)
  {
    mapItemStorage2 = [(_INPBLocationValue *)self mapItemStorage];
    PBDataWriterWriteSubmessage();
  }

  place = [(_INPBLocationValue *)self place];

  if (place)
  {
    place2 = [(_INPBLocationValue *)self place];
    PBDataWriterWriteSubmessage();
  }

  valueMetadata = [(_INPBLocationValue *)self valueMetadata];

  v9 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBLocationValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end