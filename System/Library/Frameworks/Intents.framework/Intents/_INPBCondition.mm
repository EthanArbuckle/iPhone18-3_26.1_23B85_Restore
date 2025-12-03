@interface _INPBCondition
- (BOOL)isEqual:(id)equal;
- (_INPBCondition)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsConditionalOperator:(id)operator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setConditionalOperator:(int)operator;
- (void)writeTo:(id)to;
@end

@implementation _INPBCondition

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    conditionalOperator = [(_INPBCondition *)self conditionalOperator];
    if ((conditionalOperator - 1) >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", conditionalOperator];
    }

    else
    {
      v5 = off_1E72831E0[(conditionalOperator - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"conditionalOperator"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    return 2654435761 * self->_conditionalOperator;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasConditionalOperator = [(_INPBCondition *)self hasConditionalOperator];
    if (hasConditionalOperator == [equalCopy hasConditionalOperator])
    {
      if (!-[_INPBCondition hasConditionalOperator](self, "hasConditionalOperator") || ![equalCopy hasConditionalOperator] || (conditionalOperator = self->_conditionalOperator, conditionalOperator == objc_msgSend(equalCopy, "conditionalOperator")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBCondition allocWithZone:?]];
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    [(_INPBCondition *)v4 setConditionalOperator:[(_INPBCondition *)self conditionalOperator]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCondition *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCondition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCondition *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    conditionalOperator = self->_conditionalOperator;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsConditionalOperator:(id)operator
{
  operatorCopy = operator;
  if ([operatorCopy isEqualToString:@"ALL"])
  {
    v4 = 1;
  }

  else if ([operatorCopy isEqualToString:@"ANY"])
  {
    v4 = 2;
  }

  else if ([operatorCopy isEqualToString:@"NONE"])
  {
    v4 = 3;
  }

  else if ([operatorCopy isEqualToString:@"NOT_ALL"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setConditionalOperator:(int)operator
{
  has = self->_has;
  if (operator == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_conditionalOperator = operator;
  }
}

@end