@interface ATXPBFaceGalleryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBFaceGalleryItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBFaceGalleryItem;
  v4 = [(ATXPBFaceGalleryItem *)&v8 description];
  v5 = [(ATXPBFaceGalleryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_descriptorIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_extensionBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
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

  if (self->_descriptorIdentifier)
  {
    [v5 setDescriptorIdentifier:?];
    v4 = v5;
  }

  if (self->_extensionBundleIdentifier)
  {
    [v5 setExtensionBundleIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_descriptorIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_extensionBundleIdentifier copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[3])) || -[NSString isEqual:](identifier, "isEqual:")) && ((descriptorIdentifier = self->_descriptorIdentifier, !(descriptorIdentifier | v4[1])) || -[NSString isEqual:](descriptorIdentifier, "isEqual:")))
  {
    extensionBundleIdentifier = self->_extensionBundleIdentifier;
    if (extensionBundleIdentifier | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(ATXPBFaceGalleryItem *)self setIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ATXPBFaceGalleryItem *)self setDescriptorIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ATXPBFaceGalleryItem *)self setExtensionBundleIdentifier:?];
    v4 = v5;
  }
}

@end