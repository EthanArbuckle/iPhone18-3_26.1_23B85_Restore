@interface CNContactPoster
- (BOOL)isEqual:(id)a3;
- (CNContactImage)pairedImage;
- (CNContactPoster)initWithCoder:(id)a3;
- (CNContactPoster)initWithIdentifier:(id)a3 posterData:(id)a4 posterMetadata:(id)a5 watchPosterData:(id)a6 lastUsedDate:(id)a7;
- (CNContactPoster)initWithManagedObject:(id)a3;
- (CNContactPoster)initWithManagedObject:(id)a3 image:(id)a4;
- (CNContactPoster)initWithPosterData:(id)a3 lastUsedDate:(id)a4;
- (CNContactPoster)initWithPosterData:(id)a3 posterMetadata:(id)a4 lastUsedDate:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setPairedImage:(id)a3;
@end

@implementation CNContactPoster

- (CNContactPoster)initWithPosterData:(id)a3 lastUsedDate:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];

  v11 = [(CNContactPoster *)self initWithIdentifier:v10 posterData:v8 lastUsedDate:v7];
  return v11;
}

- (CNContactPoster)initWithPosterData:(id)a3 posterMetadata:(id)a4 lastUsedDate:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];

  v14 = [(CNContactPoster *)self initWithIdentifier:v13 posterData:v11 posterMetadata:v10 watchPosterData:0 lastUsedDate:v9];
  return v14;
}

- (CNContactPoster)initWithIdentifier:(id)a3 posterData:(id)a4 posterMetadata:(id)a5 watchPosterData:(id)a6 lastUsedDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = CNContactPoster;
  v17 = [(CNContactPoster *)&v24 init];
  if (v17)
  {
    v23 = v13;
    v18 = [v12 length];
    v19 = v12;
    if (!v18)
    {
      v22 = [MEMORY[0x1E696AFB0] UUID];
      v19 = [v22 UUIDString];
    }

    objc_storeStrong(&v17->_identifier, v19);
    if (!v18)
    {
    }

    objc_storeStrong(&v17->_posterData, a4);
    objc_storeStrong(&v17->_posterMetadata, a5);
    [(CNContactPosterDataItem *)v17 setLastUsedDate:v16];
    objc_storeStrong(&v17->_watchPosterImageData, a6);
    v20 = v17;
    v13 = v23;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((identifier = self->_identifier, !(identifier | v4->_identifier)) || -[NSString isEqual:](identifier, "isEqual:")) && ((posterData = self->_posterData, !(posterData | v4->_posterData)) || -[NSData isEqual:](posterData, "isEqual:")) && ((posterMetadata = self->_posterMetadata, !(posterMetadata | v4->_posterMetadata)) || -[NSData isEqual:](posterMetadata, "isEqual:")) && ((v8 = -[CNContactPosterDataItem lastUsedDate](self, "lastUsedDate"), v9 = -[CNContactPosterDataItem lastUsedDate](v4, "lastUsedDate"), !(v8 | v9)) || [v8 isEqual:v9]) && ((WeakRetained = objc_loadWeakRetained(&self->_pairedImage), WeakRetained, v11 = objc_loadWeakRetained(&v4->_pairedImage), v11, !(WeakRetained | v11)) || objc_msgSend(WeakRetained, "isEqual:", v11)) && ((watchPosterImageData = self->_watchPosterImageData, !(watchPosterImageData | v4->_watchPosterImageData)) || -[NSData isEqual:](watchPosterImageData, "isEqual:")))
    {
      v13 = [(CNContactPosterDataItem *)self itemDetails];
      v14 = v13 == [(CNContactPosterDataItem *)v4 itemDetails];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_identifier forKey:@"identifier"];
  [v8 encodeObject:self->_posterData forKey:@"posterData"];
  [v8 encodeObject:self->_posterMetadata forKey:@"posterMetadata"];
  v4 = [(CNContactPosterDataItem *)self lastUsedDate];
  [v8 encodeObject:v4 forKey:@"lastUsedDate"];

  [v8 encodeBool:-[CNContactPosterDataItem ignoredForRevert](self forKey:{"ignoredForRevert"), @"ignoredForRevert"}];
  [v8 encodeBool:self->_contentIsSensitive forKey:@"isContentSensitive"];
  [v8 encodeObject:self->_watchPosterImageData forKey:@"watchPosterImageData"];
  v5 = [(CNContactPosterDataItem *)self contactIdentifier];
  [v8 encodeObject:v5 forKey:@"contactIdentifier"];

  [v8 encodeInteger:-[CNContactPosterDataItem itemDetails](self forKey:{"itemDetails"), @"itemDetails"}];
  if (![(CNContactPosterDataItem *)self avoidCircularEncoding])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pairedImage);
    [WeakRetained setAvoidCircularEncoding:1];

    v7 = objc_loadWeakRetained(&self->_pairedImage);
    [v8 encodeObject:v7 forKey:@"pairedImage"];
  }
}

- (CNContactPoster)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterData"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterMetadata"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchPosterImageData"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
  v10 = [(CNContactPoster *)self initWithIdentifier:v5 posterData:v6 posterMetadata:v7 watchPosterData:v8 lastUsedDate:v9];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedImage"];
  objc_storeWeak(&v10->_pairedImage, v11);

  -[CNContactPosterDataItem setIgnoredForRevert:](v10, "setIgnoredForRevert:", [v4 decodeBoolForKey:@"ignoredForRevert"]);
  v10->_contentIsSensitive = [v4 decodeBoolForKey:@"isContentSensitive"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchPosterImageData"];
  watchPosterImageData = v10->_watchPosterImageData;
  v10->_watchPosterImageData = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  [(CNContactPosterDataItem *)v10 setContactIdentifier:v14];

  v15 = [v4 decodeIntegerForKey:@"itemDetails"];
  [(CNContactPosterDataItem *)v10 setItemDetails:v15];

  return v10;
}

- (void)setPairedImage:(id)a3
{
  obj = a3;
  [(CNContactPosterDataItem *)self _updateStrongForImpendingPairedItem:obj];
  objc_storeWeak(&self->_pairedImage, obj);
}

- (CNContactImage)pairedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_pairedImage);

  return WeakRetained;
}

- (CNContactPoster)initWithManagedObject:(id)a3
{
  v4 = a3;
  v5 = [CNContactImage alloc];
  v6 = [v4 pairedImage];
  v7 = [(CNContactImage *)v5 initWithManagedObject:v6 poster:self];

  v8 = [(CNContactPoster *)self initWithManagedObject:v4 image:v7];
  return v8;
}

- (CNContactPoster)initWithManagedObject:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 identifier];
    v9 = [v6 posterData];
    v10 = [v6 posterMetadata];
    v11 = [v6 lastUsedDate];
    v12 = v11;
    v13 = 0;
    if (v8)
    {
      if (v9)
      {
        if (v11)
        {
          v13 = [v6 contactIdentifier];

          if (v13)
          {
            v14 = [v8 UUIDString];
            v15 = [v6 watchPosterImageData];
            v16 = [(CNContactPoster *)self initWithIdentifier:v14 posterData:v9 posterMetadata:v10 watchPosterData:v15 lastUsedDate:v12];

            -[CNContactPosterDataItem setIgnoredForRevert:](v16, "setIgnoredForRevert:", [v6 ignoredForRevert]);
            -[CNContactPoster setContentIsSensitive:](v16, "setContentIsSensitive:", [v6 contentIsSensitive]);
            [(CNContactPoster *)v16 setPairedImage:v7];
            v17 = [v6 contactIdentifier];
            [(CNContactPosterDataItem *)v16 setContactIdentifier:v17];

            v18 = [v6 watchPosterImageData];
            [(CNContactPoster *)v16 setWatchPosterImageData:v18];

            v19 = [v6 itemDetailsNumber];
            -[CNContactPosterDataItem setItemDetails:](v16, "setItemDetails:", [v19 integerValue]);

            self = v16;
            v13 = self;
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end