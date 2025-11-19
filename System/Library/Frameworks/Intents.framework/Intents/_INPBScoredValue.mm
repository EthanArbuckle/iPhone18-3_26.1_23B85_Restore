@interface _INPBScoredValue
- (BOOL)isEqual:(id)a3;
- (_INPBScoredValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBScoredValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBScoredValue *)self hasScore])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBScoredValue score](self, "score")}];
    [v3 setObject:v4 forKeyedSubscript:@"score"];
  }

  if (self->_value)
  {
    v5 = [(_INPBScoredValue *)self value];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"value"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBScoredValue *)self hasScore];
    if (v5 == [v4 hasScore])
    {
      if (!-[_INPBScoredValue hasScore](self, "hasScore") || ![v4 hasScore] || (score = self->_score, score == objc_msgSend(v4, "score")))
      {
        v7 = [(_INPBScoredValue *)self value];
        v8 = [v4 value];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBScoredValue *)self value];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBScoredValue *)self value];
          v13 = [v4 value];
          v14 = [v12 isEqual:v13];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBScoredValue allocWithZone:](_INPBScoredValue init];
  if ([(_INPBScoredValue *)self hasScore])
  {
    [(_INPBScoredValue *)v5 setScore:[(_INPBScoredValue *)self score]];
  }

  v6 = [(NSString *)self->_value copyWithZone:a3];
  [(_INPBScoredValue *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBScoredValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBScoredValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBScoredValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBScoredValue *)self hasScore])
  {
    score = self->_score;
    PBDataWriterWriteInt64Field();
  }

  v5 = [(_INPBScoredValue *)self value];

  v6 = v8;
  if (v5)
  {
    value = self->_value;
    PBDataWriterWriteStringField();
    v6 = v8;
  }
}

- (void)setValue:(id)a3
{
  v4 = [a3 copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8](v4, value);
}

@end