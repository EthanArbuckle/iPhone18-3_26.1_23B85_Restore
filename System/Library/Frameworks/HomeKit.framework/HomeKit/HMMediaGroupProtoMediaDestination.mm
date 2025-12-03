@interface HMMediaGroupProtoMediaDestination
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaDestination

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(HMMediaGroupProtoMediaDestination *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(HMMediaGroupProtoMediaDestination *)self setParentIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_supportedOptions = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(HMMediaGroupProtoMediaDestination *)self setAudioGroupIdentifier:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_parentIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_supportedOptions;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_audioGroupIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_supportedOptions != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  audioGroupIdentifier = self->_audioGroupIdentifier;
  if (audioGroupIdentifier | *(equalCopy + 2))
  {
    v9 = [(NSString *)audioGroupIdentifier isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_parentIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_supportedOptions;
    *(v5 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_audioGroupIdentifier copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_parentIdentifier)
  {
    [v5 setParentIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_supportedOptions;
    *(toCopy + 40) |= 1u;
  }

  if (self->_audioGroupIdentifier)
  {
    [v5 setAudioGroupIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    supportedOptions = self->_supportedOptions;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_audioGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    [v4 setObject:parentIdentifier forKey:@"parentIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_supportedOptions];
    [v4 setObject:v7 forKey:@"supportedOptions"];
  }

  audioGroupIdentifier = self->_audioGroupIdentifier;
  if (audioGroupIdentifier)
  {
    [v4 setObject:audioGroupIdentifier forKey:@"audioGroupIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaDestination;
  v4 = [(HMMediaGroupProtoMediaDestination *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoMediaDestination *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end