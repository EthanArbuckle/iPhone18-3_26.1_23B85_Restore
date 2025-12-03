@interface HKAttachment
- (BOOL)isEqual:(id)equal;
- (HKAttachment)initWithCoder:(id)coder;
- (HKAttachment)initWithIdentifier:(id)identifier name:(id)name typeIdentifier:(id)typeIdentifier size:(int64_t)size creationDate:(id)date metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAttachment

- (HKAttachment)initWithIdentifier:(id)identifier name:(id)name typeIdentifier:(id)typeIdentifier size:(int64_t)size creationDate:(id)date metadata:(id)metadata
{
  identifierCopy = identifier;
  nameCopy = name;
  typeIdentifierCopy = typeIdentifier;
  dateCopy = date;
  metadataCopy = metadata;
  v25.receiver = self;
  v25.super_class = HKAttachment;
  v19 = [(HKAttachment *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_name, name);
    v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:typeIdentifierCopy];
    contentType = v20->_contentType;
    v20->_contentType = v21;

    v20->_size = size;
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_metadata, metadata);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = self->_identifier;
      identifier = [(HKAttachment *)v6 identifier];
      if (![(NSUUID *)identifier isEqual:identifier])
      {
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }

      name = self->_name;
      name = [(HKAttachment *)v6 name];
      if (name != name)
      {
        name2 = [(HKAttachment *)v6 name];
        if (!name2)
        {
          LOBYTE(v23) = 1;
          goto LABEL_28;
        }

        v3 = name2;
        v12 = self->_name;
        name3 = [(HKAttachment *)v6 name];
        if (![(NSString *)v12 isEqualToString:name3])
        {
          LOBYTE(v23) = 1;
LABEL_27:

          goto LABEL_28;
        }

        v27 = name3;
      }

      contentType = self->_contentType;
      contentType = [(HKAttachment *)v6 contentType];
      if (![(UTType *)contentType isEqual:contentType]|| (size = self->_size, size != [(HKAttachment *)v6 size]))
      {

        LOBYTE(v23) = 1;
        goto LABEL_26;
      }

      creationDate = self->_creationDate;
      creationDate = [(HKAttachment *)v6 creationDate];
      if ([(NSDate *)creationDate isEqualToDate:?])
      {
        metadata = self->_metadata;
        v20 = metadata;
        if (!metadata)
        {
          metadata = [(HKAttachment *)v6 metadata];
          if (!metadata)
          {
            v25 = 0;
            LOBYTE(v23) = 0;
LABEL_24:

            goto LABEL_25;
          }

          v25 = metadata;
          v20 = self->_metadata;
        }

        metadata2 = [(HKAttachment *)v6 metadata];
        v23 = ![(NSDictionary *)v20 isEqualToDictionary:metadata2];

        if (!metadata)
        {
          goto LABEL_24;
        }
      }

      else
      {
        LOBYTE(v23) = 1;
      }

LABEL_25:

LABEL_26:
      name3 = v27;
      if (name != name)
      {
        goto LABEL_27;
      }

LABEL_28:

      v14 = v23 ^ 1;
      goto LABEL_29;
    }

    v14 = 0;
  }

LABEL_30:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKAttachment allocWithZone:zone];
  identifier = self->_identifier;
  name = self->_name;
  identifier = [(UTType *)self->_contentType identifier];
  v8 = [(HKAttachment *)v4 initWithIdentifier:identifier name:name typeIdentifier:identifier size:self->_size creationDate:self->_creationDate metadata:self->_metadata];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_name forKey:@"Name"];
  identifier = [(UTType *)self->_contentType identifier];
  [coderCopy encodeObject:identifier forKey:@"TypeIdentifier"];

  [coderCopy encodeInteger:self->_size forKey:@"Size"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TypeIdentifier"];
  v8 = [coderCopy decodeIntegerForKey:@"Size"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  v11 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];

  selfCopy = 0;
  if (v5 && v6 && v7 && v8 >= 1 && v9)
  {
    self = [(HKAttachment *)self initWithIdentifier:v5 name:v6 typeIdentifier:v7 size:v8 creationDate:v9 metadata:v11];
    selfCopy = self;
  }

  return selfCopy;
}

@end