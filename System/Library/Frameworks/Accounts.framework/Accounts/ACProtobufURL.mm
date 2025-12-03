@interface ACProtobufURL
- (ACProtobufURL)initWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (NSURL)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)setUrl:(id)url;
@end

@implementation ACProtobufURL

- (ACProtobufURL)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy && (self = [(ACProtobufURL *)self init]) != 0)
  {
    absoluteString = [lCopy absoluteString];
    [(ACProtobufURL *)self setValue:absoluteString];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setUrl:(id)url
{
  absoluteString = [url absoluteString];
  [(ACProtobufURL *)self setValue:absoluteString];
}

- (NSURL)url
{
  v3 = objc_alloc(MEMORY[0x1E695DFF8]);
  value = [(ACProtobufURL *)self value];
  v5 = [v3 initWithString:value];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufURL;
  v4 = [(ACProtobufURL *)&v8 description];
  dictionaryRepresentation = [(ACProtobufURL *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | equalCopy[1])
    {
      v6 = [(NSString *)value isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(ACProtobufURL *)self setValue:?];
  }
}

@end