@interface _INPBConfidenceScore
- (BOOL)isEqual:(id)equal;
- (_INPBConfidenceScore)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addComponents:(id)components;
- (void)encodeWithCoder:(id)coder;
- (void)setComponents:(id)components;
- (void)writeTo:(id)to;
@end

@implementation _INPBConfidenceScore

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBConfidenceScore *)self hasAggregateScore])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBConfidenceScore *)self aggregateScore];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"aggregateScore"];
  }

  if ([(NSArray *)self->_components count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"components"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasAggregateScore = [(_INPBConfidenceScore *)self hasAggregateScore];
    if (hasAggregateScore == [equalCopy hasAggregateScore])
    {
      if (!-[_INPBConfidenceScore hasAggregateScore](self, "hasAggregateScore") || ![equalCopy hasAggregateScore] || (aggregateScore = self->_aggregateScore, objc_msgSend(equalCopy, "aggregateScore"), aggregateScore == v7))
      {
        components = [(_INPBConfidenceScore *)self components];
        components2 = [equalCopy components];
        v10 = components2;
        if ((components != 0) != (components2 == 0))
        {
          components3 = [(_INPBConfidenceScore *)self components];
          if (!components3)
          {

LABEL_14:
            v16 = 1;
            goto LABEL_12;
          }

          v12 = components3;
          components4 = [(_INPBConfidenceScore *)self components];
          components5 = [equalCopy components];
          v15 = [components4 isEqual:components5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBConfidenceScore allocWithZone:](_INPBConfidenceScore init];
  if ([(_INPBConfidenceScore *)self hasAggregateScore])
  {
    [(_INPBConfidenceScore *)self aggregateScore];
    [(_INPBConfidenceScore *)v5 setAggregateScore:?];
  }

  v6 = [(NSArray *)self->_components copyWithZone:zone];
  [(_INPBConfidenceScore *)v5 setComponents:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBConfidenceScore *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBConfidenceScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBConfidenceScore *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addComponents:(id)components
{
  componentsCopy = components;
  components = self->_components;
  v8 = componentsCopy;
  if (!components)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_components;
    self->_components = array;

    componentsCopy = v8;
    components = self->_components;
  }

  [(NSArray *)components addObject:componentsCopy];
}

- (void)setComponents:(id)components
{
  v4 = [components mutableCopy];
  components = self->_components;
  self->_components = v4;

  MEMORY[0x1EEE66BB8](v4, components);
}

@end