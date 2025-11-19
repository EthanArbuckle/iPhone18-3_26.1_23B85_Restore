@interface HMMediaGroupProtoMediaDestination
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoMediaDestination

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(HMMediaGroupProtoMediaDestination *)self setIdentifier:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(HMMediaGroupProtoMediaDestination *)self setParentIdentifier:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_supportedOptions = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(HMMediaGroupProtoMediaDestination *)self setAudioGroupIdentifier:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(v4 + 4))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_supportedOptions != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  audioGroupIdentifier = self->_audioGroupIdentifier;
  if (audioGroupIdentifier | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_parentIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_supportedOptions;
    *(v5 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_audioGroupIdentifier copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_parentIdentifier)
  {
    [v5 setParentIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_supportedOptions;
    *(v4 + 40) |= 1u;
  }

  if (self->_audioGroupIdentifier)
  {
    [v5 setAudioGroupIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    supportedOptions = self->_supportedOptions;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_audioGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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
  v5 = [(HMMediaGroupProtoMediaDestination *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end