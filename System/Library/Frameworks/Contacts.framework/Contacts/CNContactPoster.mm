@interface CNContactPoster
- (BOOL)isEqual:(id)equal;
- (CNContactImage)pairedImage;
- (CNContactPoster)initWithCoder:(id)coder;
- (CNContactPoster)initWithIdentifier:(id)identifier posterData:(id)data posterMetadata:(id)metadata watchPosterData:(id)posterData lastUsedDate:(id)date;
- (CNContactPoster)initWithManagedObject:(id)object;
- (CNContactPoster)initWithManagedObject:(id)object image:(id)image;
- (CNContactPoster)initWithPosterData:(id)data lastUsedDate:(id)date;
- (CNContactPoster)initWithPosterData:(id)data posterMetadata:(id)metadata lastUsedDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)setPairedImage:(id)image;
@end

@implementation CNContactPoster

- (CNContactPoster)initWithPosterData:(id)data lastUsedDate:(id)date
{
  v6 = MEMORY[0x1E696AFB0];
  dateCopy = date;
  dataCopy = data;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];

  v11 = [(CNContactPoster *)self initWithIdentifier:uUIDString posterData:dataCopy lastUsedDate:dateCopy];
  return v11;
}

- (CNContactPoster)initWithPosterData:(id)data posterMetadata:(id)metadata lastUsedDate:(id)date
{
  v8 = MEMORY[0x1E696AFB0];
  dateCopy = date;
  metadataCopy = metadata;
  dataCopy = data;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];

  v14 = [(CNContactPoster *)self initWithIdentifier:uUIDString posterData:dataCopy posterMetadata:metadataCopy watchPosterData:0 lastUsedDate:dateCopy];
  return v14;
}

- (CNContactPoster)initWithIdentifier:(id)identifier posterData:(id)data posterMetadata:(id)metadata watchPosterData:(id)posterData lastUsedDate:(id)date
{
  identifierCopy = identifier;
  dataCopy = data;
  metadataCopy = metadata;
  posterDataCopy = posterData;
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = CNContactPoster;
  v17 = [(CNContactPoster *)&v24 init];
  if (v17)
  {
    v23 = dataCopy;
    v18 = [identifierCopy length];
    uUIDString = identifierCopy;
    if (!v18)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
    }

    objc_storeStrong(&v17->_identifier, uUIDString);
    if (!v18)
    {
    }

    objc_storeStrong(&v17->_posterData, data);
    objc_storeStrong(&v17->_posterMetadata, metadata);
    [(CNContactPosterDataItem *)v17 setLastUsedDate:dateCopy];
    objc_storeStrong(&v17->_watchPosterImageData, posterData);
    v20 = v17;
    dataCopy = v23;
  }

  return v17;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((identifier = self->_identifier, !(identifier | equalCopy->_identifier)) || -[NSString isEqual:](identifier, "isEqual:")) && ((posterData = self->_posterData, !(posterData | equalCopy->_posterData)) || -[NSData isEqual:](posterData, "isEqual:")) && ((posterMetadata = self->_posterMetadata, !(posterMetadata | equalCopy->_posterMetadata)) || -[NSData isEqual:](posterMetadata, "isEqual:")) && ((v8 = -[CNContactPosterDataItem lastUsedDate](self, "lastUsedDate"), v9 = -[CNContactPosterDataItem lastUsedDate](equalCopy, "lastUsedDate"), !(v8 | v9)) || [v8 isEqual:v9]) && ((WeakRetained = objc_loadWeakRetained(&self->_pairedImage), WeakRetained, v11 = objc_loadWeakRetained(&equalCopy->_pairedImage), v11, !(WeakRetained | v11)) || objc_msgSend(WeakRetained, "isEqual:", v11)) && ((watchPosterImageData = self->_watchPosterImageData, !(watchPosterImageData | equalCopy->_watchPosterImageData)) || -[NSData isEqual:](watchPosterImageData, "isEqual:")))
    {
      itemDetails = [(CNContactPosterDataItem *)self itemDetails];
      v14 = itemDetails == [(CNContactPosterDataItem *)equalCopy itemDetails];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_posterData forKey:@"posterData"];
  [coderCopy encodeObject:self->_posterMetadata forKey:@"posterMetadata"];
  lastUsedDate = [(CNContactPosterDataItem *)self lastUsedDate];
  [coderCopy encodeObject:lastUsedDate forKey:@"lastUsedDate"];

  [coderCopy encodeBool:-[CNContactPosterDataItem ignoredForRevert](self forKey:{"ignoredForRevert"), @"ignoredForRevert"}];
  [coderCopy encodeBool:self->_contentIsSensitive forKey:@"isContentSensitive"];
  [coderCopy encodeObject:self->_watchPosterImageData forKey:@"watchPosterImageData"];
  contactIdentifier = [(CNContactPosterDataItem *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];

  [coderCopy encodeInteger:-[CNContactPosterDataItem itemDetails](self forKey:{"itemDetails"), @"itemDetails"}];
  if (![(CNContactPosterDataItem *)self avoidCircularEncoding])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pairedImage);
    [WeakRetained setAvoidCircularEncoding:1];

    v7 = objc_loadWeakRetained(&self->_pairedImage);
    [coderCopy encodeObject:v7 forKey:@"pairedImage"];
  }
}

- (CNContactPoster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"posterData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"posterMetadata"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchPosterImageData"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
  v10 = [(CNContactPoster *)self initWithIdentifier:v5 posterData:v6 posterMetadata:v7 watchPosterData:v8 lastUsedDate:v9];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedImage"];
  objc_storeWeak(&v10->_pairedImage, v11);

  -[CNContactPosterDataItem setIgnoredForRevert:](v10, "setIgnoredForRevert:", [coderCopy decodeBoolForKey:@"ignoredForRevert"]);
  v10->_contentIsSensitive = [coderCopy decodeBoolForKey:@"isContentSensitive"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchPosterImageData"];
  watchPosterImageData = v10->_watchPosterImageData;
  v10->_watchPosterImageData = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  [(CNContactPosterDataItem *)v10 setContactIdentifier:v14];

  v15 = [coderCopy decodeIntegerForKey:@"itemDetails"];
  [(CNContactPosterDataItem *)v10 setItemDetails:v15];

  return v10;
}

- (void)setPairedImage:(id)image
{
  obj = image;
  [(CNContactPosterDataItem *)self _updateStrongForImpendingPairedItem:obj];
  objc_storeWeak(&self->_pairedImage, obj);
}

- (CNContactImage)pairedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_pairedImage);

  return WeakRetained;
}

- (CNContactPoster)initWithManagedObject:(id)object
{
  objectCopy = object;
  v5 = [CNContactImage alloc];
  pairedImage = [objectCopy pairedImage];
  v7 = [(CNContactImage *)v5 initWithManagedObject:pairedImage poster:self];

  v8 = [(CNContactPoster *)self initWithManagedObject:objectCopy image:v7];
  return v8;
}

- (CNContactPoster)initWithManagedObject:(id)object image:(id)image
{
  objectCopy = object;
  imageCopy = image;
  if (objectCopy)
  {
    identifier = [objectCopy identifier];
    posterData = [objectCopy posterData];
    posterMetadata = [objectCopy posterMetadata];
    lastUsedDate = [objectCopy lastUsedDate];
    v12 = lastUsedDate;
    selfCopy = 0;
    if (identifier)
    {
      if (posterData)
      {
        if (lastUsedDate)
        {
          selfCopy = [objectCopy contactIdentifier];

          if (selfCopy)
          {
            uUIDString = [identifier UUIDString];
            watchPosterImageData = [objectCopy watchPosterImageData];
            v16 = [(CNContactPoster *)self initWithIdentifier:uUIDString posterData:posterData posterMetadata:posterMetadata watchPosterData:watchPosterImageData lastUsedDate:v12];

            -[CNContactPosterDataItem setIgnoredForRevert:](v16, "setIgnoredForRevert:", [objectCopy ignoredForRevert]);
            -[CNContactPoster setContentIsSensitive:](v16, "setContentIsSensitive:", [objectCopy contentIsSensitive]);
            [(CNContactPoster *)v16 setPairedImage:imageCopy];
            contactIdentifier = [objectCopy contactIdentifier];
            [(CNContactPosterDataItem *)v16 setContactIdentifier:contactIdentifier];

            watchPosterImageData2 = [objectCopy watchPosterImageData];
            [(CNContactPoster *)v16 setWatchPosterImageData:watchPosterImageData2];

            itemDetailsNumber = [objectCopy itemDetailsNumber];
            -[CNContactPosterDataItem setItemDetails:](v16, "setItemDetails:", [itemDetailsNumber integerValue]);

            self = v16;
            selfCopy = self;
          }
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end