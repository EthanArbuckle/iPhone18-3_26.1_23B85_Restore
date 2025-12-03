@interface _INPBConfidenceScoreComponent
- (BOOL)isEqual:(id)equal;
- (_INPBConfidenceScoreComponent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSource:(id)source;
- (void)writeTo:(id)to;
@end

@implementation _INPBConfidenceScoreComponent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBConfidenceScoreComponent *)self score];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"score"];
  }

  if (self->_source)
  {
    source = [(_INPBConfidenceScoreComponent *)self source];
    v7 = [source copy];
    [dictionary setObject:v7 forKeyedSubscript:@"source"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v6 = score;
    }

    else
    {
      v6 = -score;
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

  return [(NSString *)self->_source hash]^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasScore = [(_INPBConfidenceScoreComponent *)self hasScore];
    if (hasScore == [equalCopy hasScore])
    {
      if (!-[_INPBConfidenceScoreComponent hasScore](self, "hasScore") || ![equalCopy hasScore] || (score = self->_score, objc_msgSend(equalCopy, "score"), score == v7))
      {
        source = [(_INPBConfidenceScoreComponent *)self source];
        source2 = [equalCopy source];
        v10 = source2;
        if ((source != 0) != (source2 == 0))
        {
          source3 = [(_INPBConfidenceScoreComponent *)self source];
          if (!source3)
          {

LABEL_14:
            v16 = 1;
            goto LABEL_12;
          }

          v12 = source3;
          source4 = [(_INPBConfidenceScoreComponent *)self source];
          source5 = [equalCopy source];
          v15 = [source4 isEqual:source5];

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
  v5 = [+[_INPBConfidenceScoreComponent allocWithZone:](_INPBConfidenceScoreComponent init];
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    [(_INPBConfidenceScoreComponent *)self score];
    [(_INPBConfidenceScoreComponent *)v5 setScore:?];
  }

  v6 = [(NSString *)self->_source copyWithZone:zone];
  [(_INPBConfidenceScoreComponent *)v5 setSource:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBConfidenceScoreComponent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBConfidenceScoreComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBConfidenceScoreComponent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    score = self->_score;
    PBDataWriterWriteFloatField();
  }

  source = [(_INPBConfidenceScoreComponent *)self source];

  v6 = toCopy;
  if (source)
  {
    source = self->_source;
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setSource:(id)source
{
  v4 = [source copy];
  source = self->_source;
  self->_source = v4;

  MEMORY[0x1EEE66BB8](v4, source);
}

@end