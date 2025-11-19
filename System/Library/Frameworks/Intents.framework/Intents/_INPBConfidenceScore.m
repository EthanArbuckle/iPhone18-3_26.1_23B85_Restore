@interface _INPBConfidenceScore
- (BOOL)isEqual:(id)a3;
- (_INPBConfidenceScore)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addComponents:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setComponents:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBConfidenceScore

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBConfidenceScore *)self hasAggregateScore])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBConfidenceScore *)self aggregateScore];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"aggregateScore"];
  }

  if ([(NSArray *)self->_components count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_components;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"components"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBConfidenceScore *)self hasAggregateScore])
  {
    aggregateScore = self->_aggregateScore;
    if (aggregateScore >= 0.0)
    {
      v6 = aggregateScore;
    }

    else
    {
      v6 = -aggregateScore;
    }

    *v3.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
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

  return [(NSArray *)self->_components hash]^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBConfidenceScore *)self hasAggregateScore];
    if (v5 == [v4 hasAggregateScore])
    {
      if (!-[_INPBConfidenceScore hasAggregateScore](self, "hasAggregateScore") || ![v4 hasAggregateScore] || (aggregateScore = self->_aggregateScore, objc_msgSend(v4, "aggregateScore"), aggregateScore == v7))
      {
        v8 = [(_INPBConfidenceScore *)self components];
        v9 = [v4 components];
        v10 = v9;
        if ((v8 != 0) != (v9 == 0))
        {
          v11 = [(_INPBConfidenceScore *)self components];
          if (!v11)
          {

LABEL_14:
            v16 = 1;
            goto LABEL_12;
          }

          v12 = v11;
          v13 = [(_INPBConfidenceScore *)self components];
          v14 = [v4 components];
          v15 = [v13 isEqual:v14];

          if (v15)
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

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBConfidenceScore allocWithZone:](_INPBConfidenceScore init];
  if ([(_INPBConfidenceScore *)self hasAggregateScore])
  {
    [(_INPBConfidenceScore *)self aggregateScore];
    [(_INPBConfidenceScore *)v5 setAggregateScore:?];
  }

  v6 = [(NSArray *)self->_components copyWithZone:a3];
  [(_INPBConfidenceScore *)v5 setComponents:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBConfidenceScore *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBConfidenceScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBConfidenceScore *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBConfidenceScore *)self hasAggregateScore])
  {
    aggregateScore = self->_aggregateScore;
    PBDataWriterWriteFloatField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_components;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addComponents:(id)a3
{
  v4 = a3;
  components = self->_components;
  v8 = v4;
  if (!components)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_components;
    self->_components = v6;

    v4 = v8;
    components = self->_components;
  }

  [(NSArray *)components addObject:v4];
}

- (void)setComponents:(id)a3
{
  v4 = [a3 mutableCopy];
  components = self->_components;
  self->_components = v4;

  MEMORY[0x1EEE66BB8](v4, components);
}

@end