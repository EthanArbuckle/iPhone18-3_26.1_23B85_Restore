@interface ACProtobufDate
- (ACProtobufDate)initWithDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDate)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDate:(id)date;
@end

@implementation ACProtobufDate

- (ACProtobufDate)initWithDate:(id)date
{
  dateCopy = date;
  if (dateCopy && (self = [(ACProtobufDate *)self init]) != 0)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [(ACProtobufDate *)self setValue:?];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

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
  dictionaryRepresentation = [(ACProtobufDate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
  [dictionary setObject:v4 forKey:@"value"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_value;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_value == equalCopy[1];
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