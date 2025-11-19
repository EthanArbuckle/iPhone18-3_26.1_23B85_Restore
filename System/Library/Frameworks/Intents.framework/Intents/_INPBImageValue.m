@interface _INPBImageValue
- (BOOL)isEqual:(id)a3;
- (_INPBImageValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsRenderingMode:(id)a3;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setData:(id)a3;
- (void)setHasRenderingMode:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasWidth:(BOOL)a3;
- (void)setProxyServiceIdentifier:(id)a3;
- (void)setRenderingMode:(int)a3;
- (void)setType:(int)a3;
- (void)setUri:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBImageValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_data)
  {
    v4 = [(_INPBImageValue *)self data];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"data"];
  }

  if ([(_INPBImageValue *)self hasHeight])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBImageValue *)self height];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"height"];
  }

  if (self->_proxyServiceIdentifier)
  {
    v8 = [(_INPBImageValue *)self proxyServiceIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"proxyServiceIdentifier"];
  }

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    v10 = [(_INPBImageValue *)self renderingMode];
    if (v10 >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7283BD0[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"renderingMode"];
  }

  if ([(_INPBImageValue *)self hasType])
  {
    v12 = [(_INPBImageValue *)self type];
    if (v12 >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E7283BE8[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"type"];
  }

  if (self->_uri)
  {
    v14 = [(_INPBImageValue *)self uri];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"uri"];
  }

  v16 = [(_INPBImageValue *)self valueMetadata];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"valueMetadata"];

  if ([(_INPBImageValue *)self hasWidth])
  {
    v18 = MEMORY[0x1E696AD98];
    [(_INPBImageValue *)self width];
    v19 = [v18 numberWithDouble:?];
    [v3 setObject:v19 forKeyedSubscript:@"width"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(_INPBImageValue *)self data];
  v6 = [v4 data];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(_INPBImageValue *)self data];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBImageValue *)self data];
    v10 = [v4 data];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v12 = [(_INPBImageValue *)self hasHeight];
  if (v12 != [v4 hasHeight])
  {
    goto LABEL_34;
  }

  if ([(_INPBImageValue *)self hasHeight])
  {
    if ([v4 hasHeight])
    {
      height = self->_height;
      [v4 height];
      if (height != v14)
      {
        goto LABEL_34;
      }
    }
  }

  v5 = [(_INPBImageValue *)self proxyServiceIdentifier];
  v6 = [v4 proxyServiceIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v15 = [(_INPBImageValue *)self proxyServiceIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = [(_INPBImageValue *)self proxyServiceIdentifier];
    v18 = [v4 proxyServiceIdentifier];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v20 = [(_INPBImageValue *)self hasRenderingMode];
  if (v20 != [v4 hasRenderingMode])
  {
    goto LABEL_34;
  }

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    if ([v4 hasRenderingMode])
    {
      renderingMode = self->_renderingMode;
      if (renderingMode != [v4 renderingMode])
      {
        goto LABEL_34;
      }
    }
  }

  v22 = [(_INPBImageValue *)self hasType];
  if (v22 != [v4 hasType])
  {
    goto LABEL_34;
  }

  if ([(_INPBImageValue *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_34;
      }
    }
  }

  v5 = [(_INPBImageValue *)self uri];
  v6 = [v4 uri];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v24 = [(_INPBImageValue *)self uri];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBImageValue *)self uri];
    v27 = [v4 uri];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(_INPBImageValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v29 = [(_INPBImageValue *)self valueMetadata];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBImageValue *)self valueMetadata];
    v32 = [v4 valueMetadata];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v36 = [(_INPBImageValue *)self hasWidth];
  if (v36 == [v4 hasWidth])
  {
    if (!-[_INPBImageValue hasWidth](self, "hasWidth") || ![v4 hasWidth] || (width = self->_width, objc_msgSend(v4, "width"), width == v38))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBImageValue allocWithZone:](_INPBImageValue init];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  [(_INPBImageValue *)v5 setData:v6];

  if ([(_INPBImageValue *)self hasHeight])
  {
    [(_INPBImageValue *)self height];
    [(_INPBImageValue *)v5 setHeight:?];
  }

  v7 = [(NSString *)self->_proxyServiceIdentifier copyWithZone:a3];
  [(_INPBImageValue *)v5 setProxyServiceIdentifier:v7];

  if ([(_INPBImageValue *)self hasRenderingMode])
  {
    [(_INPBImageValue *)v5 setRenderingMode:[(_INPBImageValue *)self renderingMode]];
  }

  if ([(_INPBImageValue *)self hasType])
  {
    [(_INPBImageValue *)v5 setType:[(_INPBImageValue *)self type]];
  }

  v8 = [(NSString *)self->_uri copyWithZone:a3];
  [(_INPBImageValue *)v5 setUri:v8];

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBImageValue *)v5 setValueMetadata:v9];

  if ([(_INPBImageValue *)self hasWidth])
  {
    [(_INPBImageValue *)self width];
    [(_INPBImageValue *)v5 setWidth:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBImageValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBImageValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBImageValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_INPBImageValue *)self data];

  if (v4)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  if ([(_INPBImageValue *)self hasHeight])
  {
    height = self->_height;
    PBDataWriterWriteDoubleField();
  }

  v7 = [(_INPBImageValue *)self proxyServiceIdentifier];

  if (v7)
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

  v13 = [(_INPBImageValue *)self valueMetadata];

  if (v13)
  {
    v14 = [(_INPBImageValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBImageValue *)self hasWidth])
  {
    width = self->_width;
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setUri:(id)a3
{
  v4 = [a3 copy];
  uri = self->_uri;
  self->_uri = v4;

  MEMORY[0x1EEE66BB8](v4, uri);
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Data"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"URL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Bundle"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Proxy"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_type = a3;
  }
}

- (int)StringAsRenderingMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Automatic"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AlwaysOriginal"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AlwaysTemplate"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRenderingMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setRenderingMode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_renderingMode = a3;
  }
}

- (void)setProxyServiceIdentifier:(id)a3
{
  v4 = [a3 copy];
  proxyServiceIdentifier = self->_proxyServiceIdentifier;
  self->_proxyServiceIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, proxyServiceIdentifier);
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

@end