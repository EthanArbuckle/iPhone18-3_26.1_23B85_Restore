@interface _INPBColor
- (BOOL)isEqual:(id)equal;
- (_INPBColor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasGreen:(BOOL)green;
- (void)setHasRed:(BOOL)red;
- (void)writeTo:(id)to;
@end

@implementation _INPBColor

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBColor *)self hasBlue])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBColor *)self blue];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"blue"];
  }

  if ([(_INPBColor *)self hasGreen])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBColor *)self green];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"green"];
  }

  if ([(_INPBColor *)self hasRed])
  {
    v8 = MEMORY[0x1E696AD98];
    [(_INPBColor *)self red];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"red"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBColor *)self hasBlue])
  {
    blue = self->_blue;
    if (blue < 0.0)
    {
      blue = -blue;
    }

    *v3.i64 = floor(blue + 0.5);
    v6 = (blue - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v4, v3).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v8 += v6;
      }
    }

    else
    {
      v8 -= fabs(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBColor *)self hasGreen])
  {
    green = self->_green;
    if (green < 0.0)
    {
      green = -green;
    }

    *v9.i64 = floor(green + 0.5);
    v12 = (green - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v10, v9).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v14 += v12;
      }
    }

    else
    {
      v14 -= fabs(v12);
    }
  }

  else
  {
    v14 = 0;
  }

  if ([(_INPBColor *)self hasRed])
  {
    red = self->_red;
    if (red < 0.0)
    {
      red = -red;
    }

    *v15.i64 = floor(red + 0.5);
    v18 = (red - *v15.i64) * 1.84467441e19;
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

  return v14 ^ v8 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  hasBlue = [(_INPBColor *)self hasBlue];
  if (hasBlue != [equalCopy hasBlue])
  {
    goto LABEL_11;
  }

  if ([(_INPBColor *)self hasBlue])
  {
    if ([equalCopy hasBlue])
    {
      blue = self->_blue;
      [equalCopy blue];
      if (blue != v7)
      {
        goto LABEL_11;
      }
    }
  }

  if ((v8 = -[_INPBColor hasGreen](self, "hasGreen"), v8 == [equalCopy hasGreen]) && (!-[_INPBColor hasGreen](self, "hasGreen") || !objc_msgSend(equalCopy, "hasGreen") || (green = self->_green, objc_msgSend(equalCopy, "green"), green == v10)) && (v11 = -[_INPBColor hasRed](self, "hasRed"), v11 == objc_msgSend(equalCopy, "hasRed")) && (!-[_INPBColor hasRed](self, "hasRed") || !objc_msgSend(equalCopy, "hasRed") || (red = self->_red, objc_msgSend(equalCopy, "red"), red == v15)))
  {
    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBColor allocWithZone:?]];
  if ([(_INPBColor *)self hasBlue])
  {
    [(_INPBColor *)self blue];
    [(_INPBColor *)v4 setBlue:?];
  }

  if ([(_INPBColor *)self hasGreen])
  {
    [(_INPBColor *)self green];
    [(_INPBColor *)v4 setGreen:?];
  }

  if ([(_INPBColor *)self hasRed])
  {
    [(_INPBColor *)self red];
    [(_INPBColor *)v4 setRed:?];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBColor *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBColor *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBColor *)self hasBlue])
  {
    blue = self->_blue;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBColor *)self hasGreen])
  {
    green = self->_green;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBColor *)self hasRed])
  {
    red = self->_red;
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasRed:(BOOL)red
{
  if (red)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasGreen:(BOOL)green
{
  if (green)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end