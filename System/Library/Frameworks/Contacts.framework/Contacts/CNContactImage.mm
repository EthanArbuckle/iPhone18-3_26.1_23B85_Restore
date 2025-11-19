@interface CNContactImage
- (BOOL)isEqual:(id)a3;
- (CGRect)cropRect;
- (CNContactImage)initWithCoder:(id)a3;
- (CNContactImage)initWithIdentifier:(id)a3 imageData:(id)a4 lastUsedDate:(id)a5 cropRect:(CGRect)a6 source:(int64_t)a7 sourceIdentifier:(id)a8 encodingType:(int64_t)a9 variant:(id)a10 poseConfigurationData:(id)a11 displayString:(id)a12 ignoredForRevert:(BOOL)a13 itemDetails:(unint64_t)a14;
- (CNContactImage)initWithImageData:(id)a3 cropRect:(CGRect)a4 lastUsedDate:(id)a5;
- (CNContactImage)initWithImageData:(id)a3 cropRect:(CGRect)a4 lastUsedDate:(id)a5 source:(int64_t)a6;
- (CNContactImage)initWithManagedObject:(id)a3;
- (CNContactImage)initWithManagedObject:(id)a3 poster:(id)a4;
- (CNContactPoster)pairedPoster;
- (id)copyWithNewImageData:(id)a3;
- (id)copyWithNewImageData:(id)a3 cropRect:(CGRect)a4;
- (id)resizedContactImageToMaxEdgeWidth:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPairedPoster:(id)a3;
@end

@implementation CNContactImage

- (id)resizedContactImageToMaxEdgeWidth:(unint64_t)a3
{
  v5 = [(CNContactImage *)self imageData];
  v6 = *MEMORY[0x1E6996540];
  if ((*(*MEMORY[0x1E6996540] + 16))(*MEMORY[0x1E6996540], v5))
  {
    v7 = self;
    goto LABEL_24;
  }

  [(CNContactImage *)self cropRect];
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v15 = v5;
  }

  else
  {
    [(CNContactImage *)self cropRect];
    v15 = CNImageUtilsCroppedImageDataFromFullSizeImageData(v5, 0, v11, v12, v13, v14);
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

  if (v46 > a3 || v45 > a3)
  {
    v44 = 0x3FF0000000000000;
    v25 = [(CNContactImage *)self source]!= 2;
    v26 = CNImageUtilsImageDataByScalingImageData(v16, v25, a3, &v44, v46, v45, 1.0);
    if ((*(v6 + 16))(v6, v26))
    {
      v27 = meCardSharingLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(CNContactImage(MeCardSharing) *)v27 resizedContactImageToMaxEdgeWidth:v28, v29, v30, v31, v32, v33, v34];
      }

      v35 = self;
    }

    else
    {
      v35 = [(CNContactImage *)self copyWithNewImageData:v26 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    v7 = v35;

    goto LABEL_23;
  }

LABEL_22:
  v7 = self;
LABEL_23:

LABEL_24:

  return v7;
}

- (CNContactImage)initWithImageData:(id)a3 cropRect:(CGRect)a4 lastUsedDate:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = MEMORY[0x1E696AFB0];
  v12 = a5;
  v13 = a3;
  v14 = [v11 UUID];
  v15 = [v14 UUIDString];

  v16 = [(CNContactImage *)self initWithIdentifier:v15 imageData:v13 cropRect:v12 lastUsedDate:x, y, width, height];
  return v16;
}

- (CNContactImage)initWithImageData:(id)a3 cropRect:(CGRect)a4 lastUsedDate:(id)a5 source:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = MEMORY[0x1E696AFB0];
  v14 = a5;
  v15 = a3;
  v16 = [v13 UUID];
  v17 = [v16 UUIDString];

  LOBYTE(v20) = 0;
  v18 = [(CNContactImage *)self initWithIdentifier:v17 imageData:v15 lastUsedDate:v14 cropRect:a6 source:0 sourceIdentifier:0 encodingType:x variant:y poseConfigurationData:width displayString:height ignoredForRevert:0 itemDetails:0, 0, v20, 0];

  return v18;
}

- (CNContactImage)initWithIdentifier:(id)a3 imageData:(id)a4 lastUsedDate:(id)a5 cropRect:(CGRect)a6 source:(int64_t)a7 sourceIdentifier:(id)a8 encodingType:(int64_t)a9 variant:(id)a10 poseConfigurationData:(id)a11 displayString:(id)a12 ignoredForRevert:(BOOL)a13 itemDetails:(unint64_t)a14
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a8;
  v38 = a10;
  v37 = a11;
  v36 = a12;
  v39.receiver = self;
  v39.super_class = CNContactImage;
  v26 = [(CNContactImage *)&v39 init];
  if (v26)
  {
    v32 = v25;
    v33 = v23;
    v27 = [v22 length];
    v28 = v22;
    if (!v27)
    {
      v31 = [MEMORY[0x1E696AFB0] UUID];
      v28 = [v31 UUIDString];
    }

    objc_storeStrong(&v26->_identifier, v28);
    if (!v27)
    {
    }

    objc_storeStrong(&v26->_imageData, a4);
    [(CNContactPosterDataItem *)v26 setLastUsedDate:v24];
    v26->_cropRect.origin.x = x;
    v26->_cropRect.origin.y = y;
    v26->_cropRect.size.width = width;
    v26->_cropRect.size.height = height;
    v26->_source = a7;
    objc_storeStrong(&v26->_sourceIdentifier, a8);
    v26->_encodingType = a9;
    objc_storeStrong(&v26->_variant, a10);
    objc_storeStrong(&v26->_poseConfigurationData, a11);
    objc_storeStrong(&v26->_displayString, a12);
    [(CNContactPosterDataItem *)v26 setIgnoredForRevert:a13];
    [(CNContactPosterDataItem *)v26 setItemDetails:a14];
    v29 = v26;
    v25 = v32;
    v23 = v33;
  }

  return v26;
}

- (id)copyWithNewImageData:(id)a3
{
  v4 = a3;
  v5 = [CNContactImage alloc];
  [(CNContactImage *)self cropRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CNContactPosterDataItem *)self lastUsedDate];
  v15 = [(CNContactImage *)v5 initWithImageData:v4 cropRect:v14 lastUsedDate:v7, v9, v11, v13];

  [(CNContactImage *)v15 setSource:[(CNContactImage *)self source]];
  v16 = [(CNContactImage *)self sourceIdentifier];
  [(CNContactImage *)v15 setSourceIdentifier:v16];

  [(CNContactImage *)v15 setEncodingType:[(CNContactImage *)self encodingType]];
  v17 = [(CNContactImage *)self variant];
  [(CNContactImage *)v15 setVariant:v17];

  v18 = [(CNContactImage *)self displayString];
  [(CNContactImage *)v15 setDisplayString:v18];

  v19 = [(CNContactImage *)self poseConfigurationData];
  [(CNContactImage *)v15 setPoseConfigurationData:v19];

  [(CNContactPosterDataItem *)v15 setIgnoredForRevert:[(CNContactPosterDataItem *)self ignoredForRevert]];
  v20 = [(CNContactImage *)self pairedPoster];
  [(CNContactImage *)v15 setPairedPoster:v20];

  v21 = [(CNContactPosterDataItem *)self contactIdentifier];
  [(CNContactPosterDataItem *)v15 setContactIdentifier:v21];

  [(CNContactPosterDataItem *)v15 setItemDetails:[(CNContactPosterDataItem *)self itemDetails]];
  return v15;
}

- (id)copyWithNewImageData:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [CNContactImage alloc];
  v11 = [(CNContactPosterDataItem *)self lastUsedDate];
  v12 = [(CNContactImage *)v10 initWithImageData:v9 cropRect:v11 lastUsedDate:x, y, width, height];

  [(CNContactImage *)v12 setSource:[(CNContactImage *)self source]];
  v13 = [(CNContactImage *)self sourceIdentifier];
  [(CNContactImage *)v12 setSourceIdentifier:v13];

  [(CNContactImage *)v12 setEncodingType:[(CNContactImage *)self encodingType]];
  v14 = [(CNContactImage *)self variant];
  [(CNContactImage *)v12 setVariant:v14];

  v15 = [(CNContactImage *)self displayString];
  [(CNContactImage *)v12 setDisplayString:v15];

  v16 = [(CNContactImage *)self poseConfigurationData];
  [(CNContactImage *)v12 setPoseConfigurationData:v16];

  [(CNContactPosterDataItem *)v12 setIgnoredForRevert:[(CNContactPosterDataItem *)self ignoredForRevert]];
  v17 = [(CNContactImage *)self pairedPoster];
  [(CNContactImage *)v12 setPairedPoster:v17];

  v18 = [(CNContactPosterDataItem *)self contactIdentifier];
  [(CNContactPosterDataItem *)v12 setContactIdentifier:v18];

  [(CNContactPosterDataItem *)v12 setItemDetails:[(CNContactPosterDataItem *)self itemDetails]];
  return v12;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((identifier = self->_identifier, !(identifier | v4->_identifier)) || -[NSString isEqual:](identifier, "isEqual:")) && ((imageData = self->_imageData, !(imageData | v4->_imageData)) || -[NSData isEqual:](imageData, "isEqual:")) && ((v7 = -[CNContactPosterDataItem lastUsedDate](self, "lastUsedDate"), v8 = -[CNContactPosterDataItem lastUsedDate](v4, "lastUsedDate"), !(v7 | v8)) || [v7 isEqual:v8]) && NSEqualRects(self->_cropRect, v4->_cropRect) && self->_source == v4->_source && ((sourceIdentifier = self->_sourceIdentifier, !(sourceIdentifier | v4->_sourceIdentifier)) || -[NSString isEqual:](sourceIdentifier, "isEqual:")) && self->_encodingType == v4->_encodingType && ((variant = self->_variant, !(variant | v4->_variant)) || -[NSString isEqual:](variant, "isEqual:")) && ((poseConfigurationData = self->_poseConfigurationData, !(poseConfigurationData | v4->_poseConfigurationData)) || -[NSData isEqual:](poseConfigurationData, "isEqual:")) && ((displayString = self->_displayString, !(displayString | v4->_displayString)) || -[NSString isEqual:](displayString, "isEqual:")) && (v13 = -[CNContactPosterDataItem ignoredForRevert](self, "ignoredForRevert"), v13 == -[CNContactPosterDataItem ignoredForRevert](v4, "ignoredForRevert")))
    {
      v16 = [(CNContactPosterDataItem *)self itemDetails];
      v14 = v16 == [(CNContactPosterDataItem *)v4 itemDetails];
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
  [v8 encodeObject:self->_imageData forKey:@"imageData"];
  v4 = [(CNContactPosterDataItem *)self lastUsedDate];
  [v8 encodeObject:v4 forKey:@"lastUsedDate"];

  [v8 encodeRect:@"cropRect" forKey:{self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height}];
  [v8 encodeInteger:self->_source forKey:@"source"];
  [v8 encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
  [v8 encodeInteger:self->_encodingType forKey:@"encodingType"];
  [v8 encodeObject:self->_variant forKey:@"variant"];
  [v8 encodeObject:self->_poseConfigurationData forKey:@"poseConfigurationData"];
  [v8 encodeObject:self->_displayString forKey:@"displayString"];
  [v8 encodeBool:-[CNContactPosterDataItem ignoredForRevert](self forKey:{"ignoredForRevert"), @"ignoredForRevert"}];
  v5 = [(CNContactPosterDataItem *)self contactIdentifier];
  [v8 encodeObject:v5 forKey:@"contactIdentifier"];

  [v8 encodeInteger:-[CNContactPosterDataItem itemDetails](self forKey:{"itemDetails"), @"itemDetails"}];
  if (![(CNContactPosterDataItem *)self avoidCircularEncoding])
  {
    v6 = [(CNContactImage *)self pairedPoster];
    [v6 setAvoidCircularEncoding:1];

    v7 = [(CNContactImage *)self pairedPoster];
    [v8 encodeObject:v7 forKey:@"pairedPoster"];
  }
}

- (CNContactImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
  [v4 decodeRectForKey:@"cropRect"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24 = [v4 decodeIntegerForKey:@"source"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v15 = [v4 decodeIntegerForKey:@"encodingType"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"poseConfigurationData"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
  LOBYTE(v23) = [v4 decodeBoolForKey:@"ignoredForRevert"];
  v19 = -[CNContactImage initWithIdentifier:imageData:lastUsedDate:cropRect:source:sourceIdentifier:encodingType:variant:poseConfigurationData:displayString:ignoredForRevert:itemDetails:](self, "initWithIdentifier:imageData:lastUsedDate:cropRect:source:sourceIdentifier:encodingType:variant:poseConfigurationData:displayString:ignoredForRevert:itemDetails:", v5, v26, v25, v24, v14, v15, v7, v9, v11, v13, v16, v17, v18, v23, [v4 decodeIntegerForKey:@"itemDetails"]);
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  [(CNContactPosterDataItem *)v19 setContactIdentifier:v20];

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedPoster"];

  [(CNContactImage *)v19 setPairedPoster:v21];
  return v19;
}

- (void)setPairedPoster:(id)a3
{
  obj = a3;
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

- (CNContactImage)initWithManagedObject:(id)a3
{
  v4 = a3;
  v5 = [CNContactPoster alloc];
  v6 = [v4 pairedPoster];
  v7 = [(CNContactPoster *)v5 initWithManagedObject:v6 image:self];

  v8 = [(CNContactImage *)self initWithManagedObject:v4 poster:v7];
  return v8;
}

- (CNContactImage)initWithManagedObject:(id)a3 poster:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v40 = v6;
    v8 = a3;
    v9 = [v8 identifier];
    v41 = [v9 UUIDString];

    v10 = [v8 imageData];
    v39 = [v8 lastUsedDate];
    v11 = [v8 cropRectString];
    v42 = NSRectFromString(v11);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;

    v16 = [v8 source];
    v37 = [v16 integerValue];

    v38 = [v8 sourceIdentifier];
    v17 = [v8 imageDataEncodingType];
    v36 = [v17 integerValue];

    v18 = [v8 variant];
    v19 = [v8 poseConfigurationData];
    v20 = [v8 displayString];
    v21 = [v8 ignoredForRevert];
    v22 = [v8 contactIdentifier];
    v23 = [v8 itemDetailsNumber];

    v24 = [v23 integerValue];
    v25 = 0;
    if (v41 && v10)
    {
      if (v39)
      {
        v26 = v22;
        if (v22)
        {
          LOBYTE(v35) = v21;
          v34 = v18;
          v27 = v10;
          v28 = v10;
          v29 = v39;
          v30 = v18;
          v31 = v38;
          v32 = [(CNContactImage *)self initWithIdentifier:v41 imageData:v28 lastUsedDate:v39 cropRect:v37 source:v38 sourceIdentifier:v36 encodingType:x variant:y poseConfigurationData:width displayString:height ignoredForRevert:v34 itemDetails:v19, v20, v35, v24];
          [(CNContactPosterDataItem *)v32 setContactIdentifier:v26];
          v7 = v40;
          [(CNContactImage *)v32 setPairedPoster:v40];
          self = v32;
          v25 = self;
LABEL_13:

          goto LABEL_14;
        }

        v7 = v40;
      }

      else
      {
        v7 = v40;
        v26 = v22;
      }

      v27 = v10;
      v29 = v39;
    }

    else
    {
      v29 = v39;
      v7 = v40;
      v26 = v22;
      v27 = v10;
    }

    v30 = v18;
    v31 = v38;
    goto LABEL_13;
  }

  v25 = 0;
LABEL_14:

  return v25;
}

@end