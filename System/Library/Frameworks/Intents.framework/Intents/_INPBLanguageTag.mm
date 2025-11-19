@interface _INPBLanguageTag
- (BOOL)isEqual:(id)a3;
- (_INPBLanguageTag)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setTag:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBLanguageTag

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_tag)
  {
    v4 = [(_INPBLanguageTag *)self tag];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"tag"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBLanguageTag *)self tag];
    v6 = [v4 tag];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBLanguageTag *)self tag];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBLanguageTag *)self tag];
      v11 = [v4 tag];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBLanguageTag allocWithZone:](_INPBLanguageTag init];
  v6 = [(NSString *)self->_tag copyWithZone:a3];
  [(_INPBLanguageTag *)v5 setTag:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBLanguageTag *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBLanguageTag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBLanguageTag *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_INPBLanguageTag *)self tag];

  if (v4)
  {
    tag = self->_tag;
    PBDataWriterWriteStringField();
  }
}

- (void)setTag:(id)a3
{
  v4 = [a3 copy];
  tag = self->_tag;
  self->_tag = v4;

  MEMORY[0x1EEE66BB8](v4, tag);
}

@end