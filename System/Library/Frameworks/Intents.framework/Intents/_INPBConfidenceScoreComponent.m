@interface _INPBConfidenceScoreComponent
- (BOOL)isEqual:(id)a3;
- (_INPBConfidenceScoreComponent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSource:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBConfidenceScoreComponent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    v4 = MEMORY[0x1E696AD98];
    [(_INPBConfidenceScoreComponent *)self score];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"score"];
  }

  if (self->_source)
  {
    v6 = [(_INPBConfidenceScoreComponent *)self source];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"source"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBConfidenceScoreComponent *)self hasScore];
    if (v5 == [v4 hasScore])
    {
      if (!-[_INPBConfidenceScoreComponent hasScore](self, "hasScore") || ![v4 hasScore] || (score = self->_score, objc_msgSend(v4, "score"), score == v7))
      {
        v8 = [(_INPBConfidenceScoreComponent *)self source];
        v9 = [v4 source];
        v10 = v9;
        if ((v8 != 0) != (v9 == 0))
        {
          v11 = [(_INPBConfidenceScoreComponent *)self source];
          if (!v11)
          {

LABEL_14:
            v16 = 1;
            goto LABEL_12;
          }

          v12 = v11;
          v13 = [(_INPBConfidenceScoreComponent *)self source];
          v14 = [v4 source];
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
  v5 = [+[_INPBConfidenceScoreComponent allocWithZone:](_INPBConfidenceScoreComponent init];
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    [(_INPBConfidenceScoreComponent *)self score];
    [(_INPBConfidenceScoreComponent *)v5 setScore:?];
  }

  v6 = [(NSString *)self->_source copyWithZone:a3];
  [(_INPBConfidenceScoreComponent *)v5 setSource:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBConfidenceScoreComponent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBConfidenceScoreComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBConfidenceScoreComponent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBConfidenceScoreComponent *)self hasScore])
  {
    score = self->_score;
    PBDataWriterWriteFloatField();
  }

  v5 = [(_INPBConfidenceScoreComponent *)self source];

  v6 = v8;
  if (v5)
  {
    source = self->_source;
    PBDataWriterWriteStringField();
    v6 = v8;
  }
}

- (void)setSource:(id)a3
{
  v4 = [a3 copy];
  source = self->_source;
  self->_source = v4;

  MEMORY[0x1EEE66BB8](v4, source);
}

@end