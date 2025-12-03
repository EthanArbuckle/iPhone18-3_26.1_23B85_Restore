@interface ATXPBFaceGalleryItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBFaceGalleryItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBFaceGalleryItem;
  v4 = [(ATXPBFaceGalleryItem *)&v8 description];
  dictionaryRepresentation = [(ATXPBFaceGalleryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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

  descriptorIdentifier = self->_descriptorIdentifier;
  if (descriptorIdentifier)
  {
    [v4 setObject:descriptorIdentifier forKey:@"descriptorIdentifier"];
  }

  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
    [v4 setObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_descriptorIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_extensionBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
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

  if (self->_descriptorIdentifier)
  {
    [v5 setDescriptorIdentifier:?];
    toCopy = v5;
  }

  if (self->_extensionBundleIdentifier)
  {
    [v5 setExtensionBundleIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_descriptorIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_extensionBundleIdentifier copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[3])) || -[NSString isEqual:](identifier, "isEqual:")) && ((descriptorIdentifier = self->_descriptorIdentifier, !(descriptorIdentifier | equalCopy[1])) || -[NSString isEqual:](descriptorIdentifier, "isEqual:")))
  {
    extensionBundleIdentifier = self->_extensionBundleIdentifier;
    if (extensionBundleIdentifier | equalCopy[2])
    {
      v8 = [(NSString *)extensionBundleIdentifier isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_descriptorIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_extensionBundleIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(ATXPBFaceGalleryItem *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(ATXPBFaceGalleryItem *)self setDescriptorIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ATXPBFaceGalleryItem *)self setExtensionBundleIdentifier:?];
    fromCopy = v5;
  }
}

@end