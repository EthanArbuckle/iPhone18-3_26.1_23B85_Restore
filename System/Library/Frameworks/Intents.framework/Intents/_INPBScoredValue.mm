@interface _INPBScoredValue
- (BOOL)isEqual:(id)equal;
- (_INPBScoredValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _INPBScoredValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBScoredValue *)self hasScore])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBScoredValue score](self, "score")}];
    [dictionary setObject:v4 forKeyedSubscript:@"score"];
  }

  if (self->_value)
  {
    value = [(_INPBScoredValue *)self value];
    v6 = [value copy];
    [dictionary setObject:v6 forKeyedSubscript:@"value"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBScoredValue *)self hasScore])
  {
    v3 = 2654435761 * self->_score;
  }

  else
  {
    v3 = 0;
  }

  return [(NSString *)self->_value hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasScore = [(_INPBScoredValue *)self hasScore];
    if (hasScore == [equalCopy hasScore])
    {
      if (!-[_INPBScoredValue hasScore](self, "hasScore") || ![equalCopy hasScore] || (score = self->_score, score == objc_msgSend(equalCopy, "score")))
      {
        value = [(_INPBScoredValue *)self value];
        value2 = [equalCopy value];
        v9 = value2;
        if ((value != 0) != (value2 == 0))
        {
          value3 = [(_INPBScoredValue *)self value];
          if (!value3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = value3;
          value4 = [(_INPBScoredValue *)self value];
          value5 = [equalCopy value];
          v14 = [value4 isEqual:value5];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBScoredValue allocWithZone:](_INPBScoredValue init];
  if ([(_INPBScoredValue *)self hasScore])
  {
    [(_INPBScoredValue *)v5 setScore:[(_INPBScoredValue *)self score]];
  }

  v6 = [(NSString *)self->_value copyWithZone:zone];
  [(_INPBScoredValue *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBScoredValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBScoredValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBScoredValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBScoredValue *)self hasScore])
  {
    score = self->_score;
    PBDataWriterWriteInt64Field();
  }

  value = [(_INPBScoredValue *)self value];

  v6 = toCopy;
  if (value)
  {
    value = self->_value;
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8](v4, value);
}

@end