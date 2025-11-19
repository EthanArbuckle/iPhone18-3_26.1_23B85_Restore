@interface _INPBCondition
- (BOOL)isEqual:(id)a3;
- (_INPBCondition)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsConditionalOperator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setConditionalOperator:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCondition

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    v4 = [(_INPBCondition *)self conditionalOperator];
    if ((v4 - 1) >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E72831E0[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"conditionalOperator"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBCondition *)self hasConditionalOperator];
    if (v5 == [v4 hasConditionalOperator])
    {
      if (!-[_INPBCondition hasConditionalOperator](self, "hasConditionalOperator") || ![v4 hasConditionalOperator] || (conditionalOperator = self->_conditionalOperator, conditionalOperator == objc_msgSend(v4, "conditionalOperator")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBCondition allocWithZone:?]];
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    [(_INPBCondition *)v4 setConditionalOperator:[(_INPBCondition *)self conditionalOperator]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCondition *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCondition *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBCondition *)self hasConditionalOperator])
  {
    conditionalOperator = self->_conditionalOperator;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsConditionalOperator:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ALL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ANY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NOT_ALL"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setConditionalOperator:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_conditionalOperator = a3;
  }
}

@end