@interface CNContactImage
- (BOOL)isEqual:(id)equal;
- (CGRect)cropRect;
- (CNContactImage)initWithCoder:(id)coder;
- (CNContactImage)initWithIdentifier:(id)identifier imageData:(id)data lastUsedDate:(id)date cropRect:(CGRect)rect source:(int64_t)source sourceIdentifier:(id)sourceIdentifier encodingType:(int64_t)type variant:(id)self0 poseConfigurationData:(id)self1 displayString:(id)self2 ignoredForRevert:(BOOL)self3 itemDetails:(unint64_t)self4;
- (CNContactImage)initWithImageData:(id)data cropRect:(CGRect)rect lastUsedDate:(id)date;
- (CNContactImage)initWithImageData:(id)data cropRect:(CGRect)rect lastUsedDate:(id)date source:(int64_t)source;
- (CNContactImage)initWithManagedObject:(id)object;
- (CNContactImage)initWithManagedObject:(id)object poster:(id)poster;
- (CNContactPoster)pairedPoster;
- (id)copyWithNewImageData:(id)data;
- (id)copyWithNewImageData:(id)data cropRect:(CGRect)rect;
- (id)resizedContactImageToMaxEdgeWidth:(unint64_t)width;
- (void)encodeWithCoder:(id)coder;
- (void)setPairedPoster:(id)poster;
@end

@implementation CNContactImage

- (id)resizedContactImageToMaxEdgeWidth:(unint64_t)width
{
  imageData = [(CNContactImage *)self imageData];
  v6 = *MEMORY[0x1E6996540];
  if ((*(*MEMORY[0x1E6996540] + 16))(*MEMORY[0x1E6996540], imageData))
  {
    selfCopy3 = self;
    goto LABEL_24;
  }

  [(CNContactImage *)self cropRect];
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v15 = imageData;
  }

  else
  {
    [(CNContactImage *)self cropRect];
    v15 = CNImageUtilsCroppedImageDataFromFullSizeImageData(imageData, 0, v11, v12, v13, v14);
  }

  v16 = v15;
  if ((*(v6 + 16))(v6, v15))
  {
    v17 = meCardSharingLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CNContactImage(MeCardSharing) *)v17 resizedContactImageToMaxEdgeWidth:v18, v19, v20, v21, v22, v23, v24];
    }

LABEL_21:

    goto LABEL_22;
  }

  v45 = 0;
  v46 = 0;
  if (!CNImageUtilsCopyImageSourceAndGetSizeFromData(v16, 0, &v46, &v45))
  {
    v17 = meCardSharingLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CNContactImage(MeCardSharing) *)v17 resizedContactImageToMaxEdgeWidth:v36, v37, v38, v39, v40, v41, v42];
    }

    goto LABEL_21;
  }

  if (v46 > width || v45 > width)
  {
    v44 = 0x3FF0000000000000;
    v25 = [(CNContactImage *)self source]!= 2;
    v26 = CNImageUtilsImageDataByScalingImageData(v16, v25, width, &v44, v46, v45, 1.0);
    if ((*(v6 + 16))(v6, v26))
    {
      v27 = meCardSharingLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(CNContactImage(MeCardSharing) *)v27 resizedContactImageToMaxEdgeWidth:v28, v29, v30, v31, v32, v33, v34];
      }

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = [(CNContactImage *)self copyWithNewImageData:v26 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    selfCopy3 = selfCopy2;

    goto LABEL_23;
  }

LABEL_22:
  selfCopy3 = self;
LABEL_23:

LABEL_24:

  return selfCopy3;
}

- (CNContactImage)initWithImageData:(id)data cropRect:(CGRect)rect lastUsedDate:(id)date
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = MEMORY[0x1E696AFB0];
  dateCopy = date;
  dataCopy = data;
  uUID = [v11 UUID];
  uUIDString = [uUID UUIDString];

  height = [(CNContactImage *)self initWithIdentifier:uUIDString imageData:dataCopy cropRect:dateCopy lastUsedDate:x, y, width, height];
  return height;
}

- (CNContactImage)initWithImageData:(id)data cropRect:(CGRect)rect lastUsedDate:(id)date source:(int64_t)source
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = MEMORY[0x1E696AFB0];
  dateCopy = date;
  dataCopy = data;
  uUID = [v13 UUID];
  uUIDString = [uUID UUIDString];

  LOBYTE(v20) = 0;
  v18 = [(CNContactImage *)self initWithIdentifier:uUIDString imageData:dataCopy lastUsedDate:dateCopy cropRect:source source:0 sourceIdentifier:0 encodingType:x variant:y poseConfigurationData:width displayString:height ignoredForRevert:0 itemDetails:0, 0, v20, 0];

  return v18;
}

- (CNContactImage)initWithIdentifier:(id)identifier imageData:(id)data lastUsedDate:(id)date cropRect:(CGRect)rect source:(int64_t)source sourceIdentifier:(id)sourceIdentifier encodingType:(int64_t)type variant:(id)self0 poseConfigurationData:(id)self1 displayString:(id)self2 ignoredForRevert:(BOOL)self3 itemDetails:(unint64_t)self4
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  dataCopy = data;
  dateCopy = date;
  sourceIdentifierCopy = sourceIdentifier;
  variantCopy = variant;
  configurationDataCopy = configurationData;
  stringCopy = string;
  v39.receiver = self;
  v39.super_class = CNContactImage;
  v26 = [(CNContactImage *)&v39 init];
  if (v26)
  {
    v32 = sourceIdentifierCopy;
    v33 = dataCopy;
    v27 = [identifierCopy length];
    uUIDString = identifierCopy;
    if (!v27)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
    }

    objc_storeStrong(&v26->_identifier, uUIDString);
    if (!v27)
    {
    }

    objc_storeStrong(&v26->_imageData, data);
    [(CNContactPosterDataItem *)v26 setLastUsedDate:dateCopy];
    v26->_cropRect.origin.x = x;
    v26->_cropRect.origin.y = y;
    v26->_cropRect.size.width = width;
    v26->_cropRect.size.height = height;
    v26->_source = source;
    objc_storeStrong(&v26->_sourceIdentifier, sourceIdentifier);
    v26->_encodingType = type;
    objc_storeStrong(&v26->_variant, variant);
    objc_storeStrong(&v26->_poseConfigurationData, configurationData);
    objc_storeStrong(&v26->_displayString, string);
    [(CNContactPosterDataItem *)v26 setIgnoredForRevert:revert];
    [(CNContactPosterDataItem *)v26 setItemDetails:details];
    v29 = v26;
    sourceIdentifierCopy = v32;
    dataCopy = v33;
  }

  return v26;
}

- (id)copyWithNewImageData:(id)data
{
  dataCopy = data;
  v5 = [CNContactImage alloc];
  [(CNContactImage *)self cropRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  lastUsedDate = [(CNContactPosterDataItem *)self lastUsedDate];
  v15 = [(CNContactImage *)v5 initWithImageData:dataCopy cropRect:lastUsedDate lastUsedDate:v7, v9, v11, v13];

  [(CNContactImage *)v15 setSource:[(CNContactImage *)self source]];
  sourceIdentifier = [(CNContactImage *)self sourceIdentifier];
  [(CNContactImage *)v15 setSourceIdentifier:sourceIdentifier];

  [(CNContactImage *)v15 setEncodingType:[(CNContactImage *)self encodingType]];
  variant = [(CNContactImage *)self variant];
  [(CNContactImage *)v15 setVariant:variant];

  displayString = [(CNContactImage *)self displayString];
  [(CNContactImage *)v15 setDisplayString:displayString];

  poseConfigurationData = [(CNContactImage *)self poseConfigurationData];
  [(CNContactImage *)v15 setPoseConfigurationData:poseConfigurationData];

  [(CNContactPosterDataItem *)v15 setIgnoredForRevert:[(CNContactPosterDataItem *)self ignoredForRevert]];
  pairedPoster = [(CNContactImage *)self pairedPoster];
  [(CNContactImage *)v15 setPairedPoster:pairedPoster];

  contactIdentifier = [(CNContactPosterDataItem *)self contactIdentifier];
  [(CNContactPosterDataItem *)v15 setContactIdentifier:contactIdentifier];

  [(CNContactPosterDataItem *)v15 setItemDetails:[(CNContactPosterDataItem *)self itemDetails]];
  return v15;
}

- (id)copyWithNewImageData:(id)data cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v10 = [CNContactImage alloc];
  lastUsedDate = [(CNContactPosterDataItem *)self lastUsedDate];
  height = [(CNContactImage *)v10 initWithImageData:dataCopy cropRect:lastUsedDate lastUsedDate:x, y, width, height];

  [(CNContactImage *)height setSource:[(CNContactImage *)self source]];
  sourceIdentifier = [(CNContactImage *)self sourceIdentifier];
  [(CNContactImage *)height setSourceIdentifier:sourceIdentifier];

  [(CNContactImage *)height setEncodingType:[(CNContactImage *)self encodingType]];
  variant = [(CNContactImage *)self variant];
  [(CNContactImage *)height setVariant:variant];

  displayString = [(CNContactImage *)self displayString];
  [(CNContactImage *)height setDisplayString:displayString];

  poseConfigurationData = [(CNContactImage *)self poseConfigurationData];
  [(CNContactImage *)height setPoseConfigurationData:poseConfigurationData];

  [(CNContactPosterDataItem *)height setIgnoredForRevert:[(CNContactPosterDataItem *)self ignoredForRevert]];
  pairedPoster = [(CNContactImage *)self pairedPoster];
  [(CNContactImage *)height setPairedPoster:pairedPoster];

  contactIdentifier = [(CNContactPosterDataItem *)self contactIdentifier];
  [(CNContactPosterDataItem *)height setContactIdentifier:contactIdentifier];

  [(CNContactPosterDataItem *)height setItemDetails:[(CNContactPosterDataItem *)self itemDetails]];
  return height;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((identifier = self->_identifier, !(identifier | equalCopy->_identifier)) || -[NSString isEqual:](identifier, "isEqual:")) && ((imageData = self->_imageData, !(imageData | equalCopy->_imageData)) || -[NSData isEqual:](imageData, "isEqual:")) && ((v7 = -[CNContactPosterDataItem lastUsedDate](self, "lastUsedDate"), v8 = -[CNContactPosterDataItem lastUsedDate](equalCopy, "lastUsedDate"), !(v7 | v8)) || [v7 isEqual:v8]) && NSEqualRects(self->_cropRect, equalCopy->_cropRect) && self->_source == equalCopy->_source && ((sourceIdentifier = self->_sourceIdentifier, !(sourceIdentifier | equalCopy->_sourceIdentifier)) || -[NSString isEqual:](sourceIdentifier, "isEqual:")) && self->_encodingType == equalCopy->_encodingType && ((variant = self->_variant, !(variant | equalCopy->_variant)) || -[NSString isEqual:](variant, "isEqual:")) && ((poseConfigurationData = self->_poseConfigurationData, !(poseConfigurationData | equalCopy->_poseConfigurationData)) || -[NSData isEqual:](poseConfigurationData, "isEqual:")) && ((displayString = self->_displayString, !(displayString | equalCopy->_displayString)) || -[NSString isEqual:](displayString, "isEqual:")) && (v13 = -[CNContactPosterDataItem ignoredForRevert](self, "ignoredForRevert"), v13 == -[CNContactPosterDataItem ignoredForRevert](equalCopy, "ignoredForRevert")))
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
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  lastUsedDate = [(CNContactPosterDataItem *)self lastUsedDate];
  [coderCopy encodeObject:lastUsedDate forKey:@"lastUsedDate"];

  [coderCopy encodeRect:@"cropRect" forKey:{self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height}];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
  [coderCopy encodeInteger:self->_encodingType forKey:@"encodingType"];
  [coderCopy encodeObject:self->_variant forKey:@"variant"];
  [coderCopy encodeObject:self->_poseConfigurationData forKey:@"poseConfigurationData"];
  [coderCopy encodeObject:self->_displayString forKey:@"displayString"];
  [coderCopy encodeBool:-[CNContactPosterDataItem ignoredForRevert](self forKey:{"ignoredForRevert"), @"ignoredForRevert"}];
  contactIdentifier = [(CNContactPosterDataItem *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];

  [coderCopy encodeInteger:-[CNContactPosterDataItem itemDetails](self forKey:{"itemDetails"), @"itemDetails"}];
  if (![(CNContactPosterDataItem *)self avoidCircularEncoding])
  {
    pairedPoster = [(CNContactImage *)self pairedPoster];
    [pairedPoster setAvoidCircularEncoding:1];

    pairedPoster2 = [(CNContactImage *)self pairedPoster];
    [coderCopy encodeObject:pairedPoster2 forKey:@"pairedPoster"];
  }
}

- (CNContactImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
  [coderCopy decodeRectForKey:@"cropRect"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24 = [coderCopy decodeIntegerForKey:@"source"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v15 = [coderCopy decodeIntegerForKey:@"encodingType"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poseConfigurationData"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
  LOBYTE(v23) = [coderCopy decodeBoolForKey:@"ignoredForRevert"];
  v19 = -[CNContactImage initWithIdentifier:imageData:lastUsedDate:cropRect:source:sourceIdentifier:encodingType:variant:poseConfigurationData:displayString:ignoredForRevert:itemDetails:](self, "initWithIdentifier:imageData:lastUsedDate:cropRect:source:sourceIdentifier:encodingType:variant:poseConfigurationData:displayString:ignoredForRevert:itemDetails:", v5, v26, v25, v24, v14, v15, v7, v9, v11, v13, v16, v17, v18, v23, [coderCopy decodeIntegerForKey:@"itemDetails"]);
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  [(CNContactPosterDataItem *)v19 setContactIdentifier:v20];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedPoster"];

  [(CNContactImage *)v19 setPairedPoster:v21];
  return v19;
}

- (void)setPairedPoster:(id)poster
{
  obj = poster;
  [(CNContactPosterDataItem *)self _updateStrongForImpendingPairedItem:obj];
  objc_storeWeak(&self->_pairedPoster, obj);
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CNContactPoster)pairedPoster
{
  WeakRetained = objc_loadWeakRetained(&self->_pairedPoster);

  return WeakRetained;
}

- (CNContactImage)initWithManagedObject:(id)object
{
  objectCopy = object;
  v5 = [CNContactPoster alloc];
  pairedPoster = [objectCopy pairedPoster];
  v7 = [(CNContactPoster *)v5 initWithManagedObject:pairedPoster image:self];

  v8 = [(CNContactImage *)self initWithManagedObject:objectCopy poster:v7];
  return v8;
}

- (CNContactImage)initWithManagedObject:(id)object poster:(id)poster
{
  posterCopy = poster;
  v7 = posterCopy;
  if (object)
  {
    v40 = posterCopy;
    objectCopy = object;
    identifier = [objectCopy identifier];
    uUIDString = [identifier UUIDString];

    imageData = [objectCopy imageData];
    lastUsedDate = [objectCopy lastUsedDate];
    cropRectString = [objectCopy cropRectString];
    v42 = NSRectFromString(cropRectString);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;

    source = [objectCopy source];
    integerValue = [source integerValue];

    sourceIdentifier = [objectCopy sourceIdentifier];
    imageDataEncodingType = [objectCopy imageDataEncodingType];
    integerValue2 = [imageDataEncodingType integerValue];

    variant = [objectCopy variant];
    poseConfigurationData = [objectCopy poseConfigurationData];
    displayString = [objectCopy displayString];
    ignoredForRevert = [objectCopy ignoredForRevert];
    contactIdentifier = [objectCopy contactIdentifier];
    itemDetailsNumber = [objectCopy itemDetailsNumber];

    integerValue3 = [itemDetailsNumber integerValue];
    selfCopy = 0;
    if (uUIDString && imageData)
    {
      if (lastUsedDate)
      {
        v26 = contactIdentifier;
        if (contactIdentifier)
        {
          LOBYTE(v35) = ignoredForRevert;
          v34 = variant;
          v27 = imageData;
          v28 = imageData;
          v29 = lastUsedDate;
          v30 = variant;
          v31 = sourceIdentifier;
          v32 = [(CNContactImage *)self initWithIdentifier:uUIDString imageData:v28 lastUsedDate:lastUsedDate cropRect:integerValue source:sourceIdentifier sourceIdentifier:integerValue2 encodingType:x variant:y poseConfigurationData:width displayString:height ignoredForRevert:v34 itemDetails:poseConfigurationData, displayString, v35, integerValue3];
          [(CNContactPosterDataItem *)v32 setContactIdentifier:v26];
          v7 = v40;
          [(CNContactImage *)v32 setPairedPoster:v40];
          self = v32;
          selfCopy = self;
LABEL_13:

          goto LABEL_14;
        }

        v7 = v40;
      }

      else
      {
        v7 = v40;
        v26 = contactIdentifier;
      }

      v27 = imageData;
      v29 = lastUsedDate;
    }

    else
    {
      v29 = lastUsedDate;
      v7 = v40;
      v26 = contactIdentifier;
      v27 = imageData;
    }

    v30 = variant;
    v31 = sourceIdentifier;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

@end