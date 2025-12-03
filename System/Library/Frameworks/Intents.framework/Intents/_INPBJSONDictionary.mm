@interface _INPBJSONDictionary
- (BOOL)isEqual:(id)equal;
- (_INPBJSONDictionary)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setJsonString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _INPBJSONDictionary

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_jsonString)
  {
    jsonString = [(_INPBJSONDictionary *)self jsonString];
    v5 = [jsonString copy];
    [dictionary setObject:v5 forKeyedSubscript:@"jsonString"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    jsonString = [(_INPBJSONDictionary *)self jsonString];
    jsonString2 = [equalCopy jsonString];
    v7 = jsonString2;
    if ((jsonString != 0) != (jsonString2 == 0))
    {
      jsonString3 = [(_INPBJSONDictionary *)self jsonString];
      if (!jsonString3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = jsonString3;
      jsonString4 = [(_INPBJSONDictionary *)self jsonString];
      jsonString5 = [equalCopy jsonString];
      v12 = [jsonString4 isEqual:jsonString5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBJSONDictionary allocWithZone:](_INPBJSONDictionary init];
  v6 = [(NSString *)self->_jsonString copyWithZone:zone];
  [(_INPBJSONDictionary *)v5 setJsonString:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBJSONDictionary *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBJSONDictionary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBJSONDictionary *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  jsonString = [(_INPBJSONDictionary *)self jsonString];

  if (jsonString)
  {
    jsonString = self->_jsonString;
    PBDataWriterWriteStringField();
  }
}

- (void)setJsonString:(id)string
{
  v4 = [string copy];
  jsonString = self->_jsonString;
  self->_jsonString = v4;

  MEMORY[0x1EEE66BB8](v4, jsonString);
}

@end