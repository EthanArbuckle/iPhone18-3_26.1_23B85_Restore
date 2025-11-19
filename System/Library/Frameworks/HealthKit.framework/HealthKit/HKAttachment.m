@interface HKAttachment
- (BOOL)isEqual:(id)a3;
- (HKAttachment)initWithCoder:(id)a3;
- (HKAttachment)initWithIdentifier:(id)a3 name:(id)a4 typeIdentifier:(id)a5 size:(int64_t)a6 creationDate:(id)a7 metadata:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAttachment

- (HKAttachment)initWithIdentifier:(id)a3 name:(id)a4 typeIdentifier:(id)a5 size:(int64_t)a6 creationDate:(id)a7 metadata:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = HKAttachment;
  v19 = [(HKAttachment *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_name, a4);
    v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:v16];
    contentType = v20->_contentType;
    v20->_contentType = v21;

    v20->_size = a6;
    objc_storeStrong(&v20->_creationDate, a7);
    objc_storeStrong(&v20->_metadata, a8);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      identifier = self->_identifier;
      v8 = [(HKAttachment *)v6 identifier];
      if (![(NSUUID *)identifier isEqual:v8])
      {
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }

      name = self->_name;
      v10 = [(HKAttachment *)v6 name];
      if (name != v10)
      {
        v11 = [(HKAttachment *)v6 name];
        if (!v11)
        {
          LOBYTE(v23) = 1;
          goto LABEL_28;
        }

        v3 = v11;
        v12 = self->_name;
        v13 = [(HKAttachment *)v6 name];
        if (![(NSString *)v12 isEqualToString:v13])
        {
          LOBYTE(v23) = 1;
LABEL_27:

          goto LABEL_28;
        }

        v27 = v13;
      }

      contentType = self->_contentType;
      v16 = [(HKAttachment *)v6 contentType];
      if (![(UTType *)contentType isEqual:v16]|| (size = self->_size, size != [(HKAttachment *)v6 size]))
      {

        LOBYTE(v23) = 1;
        goto LABEL_26;
      }

      creationDate = self->_creationDate;
      v26 = [(HKAttachment *)v6 creationDate];
      if ([(NSDate *)creationDate isEqualToDate:?])
      {
        metadata = self->_metadata;
        v20 = metadata;
        if (!metadata)
        {
          v21 = [(HKAttachment *)v6 metadata];
          if (!v21)
          {
            v25 = 0;
            LOBYTE(v23) = 0;
LABEL_24:

            goto LABEL_25;
          }

          v25 = v21;
          v20 = self->_metadata;
        }

        v22 = [(HKAttachment *)v6 metadata];
        v23 = ![(NSDictionary *)v20 isEqualToDictionary:v22];

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
      v13 = v27;
      if (name != v10)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKAttachment allocWithZone:a3];
  identifier = self->_identifier;
  name = self->_name;
  v7 = [(UTType *)self->_contentType identifier];
  v8 = [(HKAttachment *)v4 initWithIdentifier:identifier name:name typeIdentifier:v7 size:self->_size creationDate:self->_creationDate metadata:self->_metadata];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"Identifier"];
  [v6 encodeObject:self->_name forKey:@"Name"];
  v5 = [(UTType *)self->_contentType identifier];
  [v6 encodeObject:v5 forKey:@"TypeIdentifier"];

  [v6 encodeInteger:self->_size forKey:@"Size"];
  [v6 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v6 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TypeIdentifier"];
  v8 = [v4 decodeIntegerForKey:@"Size"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v10 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Metadata"];

  v12 = 0;
  if (v5 && v6 && v7 && v8 >= 1 && v9)
  {
    self = [(HKAttachment *)self initWithIdentifier:v5 name:v6 typeIdentifier:v7 size:v8 creationDate:v9 metadata:v11];
    v12 = self;
  }

  return v12;
}

@end