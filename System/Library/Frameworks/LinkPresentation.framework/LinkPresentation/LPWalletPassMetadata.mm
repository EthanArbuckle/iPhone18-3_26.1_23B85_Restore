@interface LPWalletPassMetadata
- (BOOL)isEqual:(id)equal;
- (LPWalletPassMetadata)initWithCoder:(id)coder;
- (id)_subtitle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPWalletPassMetadata

- (LPWalletPassMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LPWalletPassMetadata;
  v5 = [(LPWalletPassMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v6;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v8 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_eventDate forKey:@"eventDate"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPWalletPassMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPWalletPassMetadata *)self name];
    [(LPWalletPassMetadata *)v4 setName:name];

    [(LPWalletPassMetadata *)v4 setStyle:[(LPWalletPassMetadata *)self style]];
    eventDate = [(LPWalletPassMetadata *)self eventDate];
    [(LPWalletPassMetadata *)v4 setEventDate:eventDate];

    expirationDate = [(LPWalletPassMetadata *)self expirationDate];
    [(LPWalletPassMetadata *)v4 setExpirationDate:expirationDate];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPWalletPassMetadata;
  if ([(LPWalletPassMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_name) & 1) != 0 && v6[3] == self->_style && objectsAreEqual_0(v6[4], self->_eventDate))
      {
        v5 = objectsAreEqual_0(v6[5], self->_expirationDate);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_subtitle
{
  style = [(LPWalletPassMetadata *)self style];
  if (style > 4)
  {
    v4 = @"Wallet";
  }

  else
  {
    v4 = off_1E7A37798[style];
  }

  v5 = LPLocalizedString(v4);
  expirationDate = [(LPWalletPassMetadata *)self expirationDate];

  if (expirationDate)
  {
    v7 = MEMORY[0x1E696AEC0];
    eventDate2 = LPLocalizedString(@"Valid until %@");
    v9 = MEMORY[0x1E696AB78];
    expirationDate2 = [(LPWalletPassMetadata *)self expirationDate];
    v11 = [v9 localizedStringFromDate:expirationDate2 dateStyle:1 timeStyle:0];
    v12 = [v7 localizedStringWithFormat:eventDate2, v11];

LABEL_8:
    goto LABEL_9;
  }

  eventDate = [(LPWalletPassMetadata *)self eventDate];

  if (eventDate)
  {
    v14 = MEMORY[0x1E696AB78];
    eventDate2 = [(LPWalletPassMetadata *)self eventDate];
    v12 = [v14 localizedStringFromDate:eventDate2 dateStyle:2 timeStyle:0];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  v15 = joinedByDot(v5, v12);

  return v15;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:33];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  metadata = [transformerCopy metadata];
  image = [metadata image];

  if (image)
  {
    metadata2 = [transformerCopy metadata];
    image2 = [metadata2 image];
    [transformerCopy _populateProperties:v5 withPrimaryImage:image2];
  }

  else
  {
    metadata3 = [transformerCopy metadata];
    metadata2 = [metadata3 icon];

    if (!metadata2)
    {
      metadata2 = [LPImage _systemImageNamed:@"creditcard"];
    }

    image2 = [v5 captionBar];
    [image2 setLeadingIcon:metadata2];
  }

  v12 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v12 - 1) >= 3)
  {
    if (v12)
    {
      goto LABEL_11;
    }

    name = [(LPWalletPassMetadata *)self name];
    captionBar = [v5 captionBar];
    bottom = [captionBar top];
    leading = [bottom leading];
    [leading setText:name];
  }

  else
  {
    name2 = [(LPWalletPassMetadata *)self name];
    captionBar2 = [v5 captionBar];
    v15 = [captionBar2 top];
    leading2 = [v15 leading];
    [leading2 setText:name2];

    name = [(LPWalletPassMetadata *)self _subtitle];
    captionBar = [v5 captionBar];
    bottom = [captionBar bottom];
    leading = [bottom leading];
    [leading setText:name];
  }

LABEL_11:

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  name = [(LPWalletPassMetadata *)self name];

  if (name)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"Pass: %@");
    name2 = [(LPWalletPassMetadata *)self name];
    v8 = [v5 localizedStringWithFormat:v6, name2];
  }

  else
  {
    v8 = LPLocalizedString(@"Pass");
  }

  return v8;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  v3 = [LPImage _systemImageNamed:@"creditcard"];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPWalletPassMetadata *)self name];
  [compatibilityCopy setTitle:name];
}

@end