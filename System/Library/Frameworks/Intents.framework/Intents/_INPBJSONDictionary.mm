@interface _INPBJSONDictionary
- (BOOL)isEqual:(id)a3;
- (_INPBJSONDictionary)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setJsonString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBJSONDictionary

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_jsonString)
  {
    v4 = [(_INPBJSONDictionary *)self jsonString];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"jsonString"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBJSONDictionary *)self jsonString];
    v6 = [v4 jsonString];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBJSONDictionary *)self jsonString];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBJSONDictionary *)self jsonString];
      v11 = [v4 jsonString];
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
  v5 = [+[_INPBJSONDictionary allocWithZone:](_INPBJSONDictionary init];
  v6 = [(NSString *)self->_jsonString copyWithZone:a3];
  [(_INPBJSONDictionary *)v5 setJsonString:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBJSONDictionary *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBJSONDictionary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBJSONDictionary *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_INPBJSONDictionary *)self jsonString];

  if (v4)
  {
    jsonString = self->_jsonString;
    PBDataWriterWriteStringField();
  }
}

- (void)setJsonString:(id)a3
{
  v4 = [a3 copy];
  jsonString = self->_jsonString;
  self->_jsonString = v4;

  MEMORY[0x1EEE66BB8](v4, jsonString);
}

@end