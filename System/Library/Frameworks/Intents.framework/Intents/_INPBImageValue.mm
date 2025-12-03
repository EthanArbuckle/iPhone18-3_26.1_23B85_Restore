@interface _INPBImageValue
- (BOOL)isEqual:(id)equal;
- (_INPBImageValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsRenderingMode:(id)mode;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setData:(id)data;
- (void)setHasRenderingMode:(BOOL)mode;
- (void)setHasType:(BOOL)type;
- (void)setHasWidth:(BOOL)width;
- (void)setProxyServiceIdentifier:(id)identifier;
- (void)setRenderingMode:(int)mode;
- (void)setType:(int)type;
- (void)setUri:(id)uri;
- (void)writeTo:(id)to;
@end

@implementation _INPBImageValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_data)
  {
    data = [(_INPBImageValue *)self data];
    v5 = [data copy];
    [dictionary setObject:v5 forKeyedSubscript:@"data"];
  }

  if ([(_INPBImageValue *)self hasHeight])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBImageValue *)self height];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"height"];
  }

  if (self->_proxyServiceIdentifier)
  {
    proxyServiceIdentifier = [(_INPBImageValue *)self proxyServiceIdentifier];
    v9 = [proxyServiceIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"proxyServiceIdentifier"];
  }

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    renderingMode = [(_INPBImageValue *)self renderingMode];
    if (renderingMode >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", renderingMode];
    }

    else
    {
      v11 = off_1E7283BD0[renderingMode];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"renderingMode"];
  }

  if ([(_INPBImageValue *)self hasType])
  {
    type = [(_INPBImageValue *)self type];
    if (type >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v13 = off_1E7283BE8[type];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"type"];
  }

  if (self->_uri)
  {
    v14 = [(_INPBImageValue *)self uri];
    v15 = [v14 copy];
    [dictionary setObject:v15 forKeyedSubscript:@"uri"];
  }

  valueMetadata = [(_INPBImageValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  if ([(_INPBImageValue *)self hasWidth])
  {
    v18 = MEMORY[0x1E696AD98];
    [(_INPBImageValue *)self width];
    v19 = [v18 numberWithDouble:?];
    [dictionary setObject:v19 forKeyedSubscript:@"width"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  if ([(_INPBImageValue *)self hasHeight])
  {
    height = self->_height;
    if (height < 0.0)
    {
      height = -height;
    }

    *v4.i64 = floor(height + 0.5);
    v7 = (height - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v5, v4).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_proxyServiceIdentifier hash];
  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    v11 = 2654435761 * self->_renderingMode;
  }

  else
  {
    v11 = 0;
  }

  if ([(_INPBImageValue *)self hasType])
  {
    v12 = 2654435761 * self->_type;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_uri hash];
  v14 = [(_INPBValueMetadata *)self->_valueMetadata hash];
  if ([(_INPBImageValue *)self hasWidth])
  {
    width = self->_width;
    if (width < 0.0)
    {
      width = -width;
    }

    *v15.i64 = floor(width + 0.5);
    v18 = (width - *v15.i64) * 1.84467441e19;
    *v16.i64 = *v15.i64 - trunc(*v15.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v16, v15).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v20 += v18;
      }
    }

    else
    {
      v20 -= fabs(v18);
    }
  }

  else
  {
    v20 = 0;
  }

  return v9 ^ v3 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  data = [(_INPBImageValue *)self data];
  data2 = [equalCopy data];
  if ((data != 0) == (data2 == 0))
  {
    goto LABEL_33;
  }

  data3 = [(_INPBImageValue *)self data];
  if (data3)
  {
    v8 = data3;
    data4 = [(_INPBImageValue *)self data];
    data5 = [equalCopy data];
    v11 = [data4 isEqual:data5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  hasHeight = [(_INPBImageValue *)self hasHeight];
  if (hasHeight != [equalCopy hasHeight])
  {
    goto LABEL_34;
  }

  if ([(_INPBImageValue *)self hasHeight])
  {
    if ([equalCopy hasHeight])
    {
      height = self->_height;
      [equalCopy height];
      if (height != v14)
      {
        goto LABEL_34;
      }
    }
  }

  data = [(_INPBImageValue *)self proxyServiceIdentifier];
  data2 = [equalCopy proxyServiceIdentifier];
  if ((data != 0) == (data2 == 0))
  {
    goto LABEL_33;
  }

  proxyServiceIdentifier = [(_INPBImageValue *)self proxyServiceIdentifier];
  if (proxyServiceIdentifier)
  {
    v16 = proxyServiceIdentifier;
    proxyServiceIdentifier2 = [(_INPBImageValue *)self proxyServiceIdentifier];
    proxyServiceIdentifier3 = [equalCopy proxyServiceIdentifier];
    v19 = [proxyServiceIdentifier2 isEqual:proxyServiceIdentifier3];

    if (!v19)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  hasRenderingMode = [(_INPBImageValue *)self hasRenderingMode];
  if (hasRenderingMode != [equalCopy hasRenderingMode])
  {
    goto LABEL_34;
  }

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    if ([equalCopy hasRenderingMode])
    {
      renderingMode = self->_renderingMode;
      if (renderingMode != [equalCopy renderingMode])
      {
        goto LABEL_34;
      }
    }
  }

  hasType = [(_INPBImageValue *)self hasType];
  if (hasType != [equalCopy hasType])
  {
    goto LABEL_34;
  }

  if ([(_INPBImageValue *)self hasType])
  {
    if ([equalCopy hasType])
    {
      type = self->_type;
      if (type != [equalCopy type])
      {
        goto LABEL_34;
      }
    }
  }

  data = [(_INPBImageValue *)self uri];
  data2 = [equalCopy uri];
  if ((data != 0) == (data2 == 0))
  {
    goto LABEL_33;
  }

  v24 = [(_INPBImageValue *)self uri];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBImageValue *)self uri];
    v27 = [equalCopy uri];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  data = [(_INPBImageValue *)self valueMetadata];
  data2 = [equalCopy valueMetadata];
  if ((data != 0) == (data2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  valueMetadata = [(_INPBImageValue *)self valueMetadata];
  if (valueMetadata)
  {
    v30 = valueMetadata;
    valueMetadata2 = [(_INPBImageValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v33 = [valueMetadata2 isEqual:valueMetadata3];

    if (!v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  hasWidth = [(_INPBImageValue *)self hasWidth];
  if (hasWidth == [equalCopy hasWidth])
  {
    if (!-[_INPBImageValue hasWidth](self, "hasWidth") || ![equalCopy hasWidth] || (width = self->_width, objc_msgSend(equalCopy, "width"), width == v38))
    {
      v34 = 1;
      goto LABEL_35;
    }
  }

LABEL_34:
  v34 = 0;
LABEL_35:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBImageValue allocWithZone:](_INPBImageValue init];
  v6 = [(NSData *)self->_data copyWithZone:zone];
  [(_INPBImageValue *)v5 setData:v6];

  if ([(_INPBImageValue *)self hasHeight])
  {
    [(_INPBImageValue *)self height];
    [(_INPBImageValue *)v5 setHeight:?];
  }

  v7 = [(NSString *)self->_proxyServiceIdentifier copyWithZone:zone];
  [(_INPBImageValue *)v5 setProxyServiceIdentifier:v7];

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    [(_INPBImageValue *)v5 setRenderingMode:[(_INPBImageValue *)self renderingMode]];
  }

  if ([(_INPBImageValue *)self hasType])
  {
    [(_INPBImageValue *)v5 setType:[(_INPBImageValue *)self type]];
  }

  v8 = [(NSString *)self->_uri copyWithZone:zone];
  [(_INPBImageValue *)v5 setUri:v8];

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBImageValue *)v5 setValueMetadata:v9];

  if ([(_INPBImageValue *)self hasWidth])
  {
    [(_INPBImageValue *)self width];
    [(_INPBImageValue *)v5 setWidth:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBImageValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBImageValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBImageValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  data = [(_INPBImageValue *)self data];

  if (data)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  if ([(_INPBImageValue *)self hasHeight])
  {
    height = self->_height;
    PBDataWriterWriteDoubleField();
  }

  proxyServiceIdentifier = [(_INPBImageValue *)self proxyServiceIdentifier];

  if (proxyServiceIdentifier)
  {
    proxyServiceIdentifier = self->_proxyServiceIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    renderingMode = self->_renderingMode;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBImageValue *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_INPBImageValue *)self uri];

  if (v11)
  {
    uri = self->_uri;
    PBDataWriterWriteStringField();
  }

  valueMetadata = [(_INPBImageValue *)self valueMetadata];

  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBImageValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBImageValue *)self hasWidth])
  {
    width = self->_width;
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasWidth:(BOOL)width
{
  if (width)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setUri:(id)uri
{
  v4 = [uri copy];
  uri = self->_uri;
  self->_uri = v4;

  MEMORY[0x1EEE66BB8](v4, uri);
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Data"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Bundle"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Proxy"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_type = type;
  }
}

- (int)StringAsRenderingMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Automatic"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"AlwaysOriginal"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"AlwaysTemplate"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRenderingMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setRenderingMode:(int)mode
{
  has = self->_has;
  if (mode == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_renderingMode = mode;
  }
}

- (void)setProxyServiceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  proxyServiceIdentifier = self->_proxyServiceIdentifier;
  self->_proxyServiceIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, proxyServiceIdentifier);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

@end