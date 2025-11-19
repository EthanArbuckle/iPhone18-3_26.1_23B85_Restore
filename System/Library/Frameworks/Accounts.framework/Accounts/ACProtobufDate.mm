@interface ACProtobufDate
- (ACProtobufDate)initWithDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDate)date;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDate:(id)a3;
@end

@implementation ACProtobufDate

- (ACProtobufDate)initWithDate:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(ACProtobufDate *)self init]) != 0)
  {
    [v4 timeIntervalSinceReferenceDate];
    [(ACProtobufDate *)self setValue:?];
    self = self;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

  [(ACProtobufDate *)self setValue:?];
}

- (NSDate)date
{
  v3 = objc_alloc(MEMORY[0x1E695DF00]);
  [(ACProtobufDate *)self value];
  v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufDate;
  v4 = [(ACProtobufDate *)&v8 description];
  v5 = [(ACProtobufDate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
  [v3 setObject:v4 forKey:@"value"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_value;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_value == v4[1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  value = self->_value;
  if (value < 0.0)
  {
    value = -value;
  }

  *v2.i64 = floor(value + 0.5);
  v5 = (value - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v2.i64[0] = vbslq_s8(vnegq_f64(v6), v3, v2).i64[0];
  v7 = 2654435761u * *v2.i64;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v2.i64;
  }

  v9 = v7 - fabs(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

@end