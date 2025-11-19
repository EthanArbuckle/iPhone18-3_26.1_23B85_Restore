@interface LPWalletPassMetadata
- (BOOL)isEqual:(id)a3;
- (LPWalletPassMetadata)initWithCoder:(id)a3;
- (id)_subtitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPWalletPassMetadata

- (LPWalletPassMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LPWalletPassMetadata;
  v5 = [(LPWalletPassMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v6;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v8 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v4 encodeInteger:self->_style forKey:@"style"];
  [v4 _lp_encodeObjectIfNotNil:self->_eventDate forKey:@"eventDate"];
  [v4 _lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPWalletPassMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPWalletPassMetadata *)self name];
    [(LPWalletPassMetadata *)v4 setName:v5];

    [(LPWalletPassMetadata *)v4 setStyle:[(LPWalletPassMetadata *)self style]];
    v6 = [(LPWalletPassMetadata *)self eventDate];
    [(LPWalletPassMetadata *)v4 setEventDate:v6];

    v7 = [(LPWalletPassMetadata *)self expirationDate];
    [(LPWalletPassMetadata *)v4 setExpirationDate:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPWalletPassMetadata;
  if ([(LPWalletPassMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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
  v3 = [(LPWalletPassMetadata *)self style];
  if (v3 > 4)
  {
    v4 = @"Wallet";
  }

  else
  {
    v4 = off_1E7A37798[v3];
  }

  v5 = LPLocalizedString(v4);
  v6 = [(LPWalletPassMetadata *)self expirationDate];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Valid until %@");
    v9 = MEMORY[0x1E696AB78];
    v10 = [(LPWalletPassMetadata *)self expirationDate];
    v11 = [v9 localizedStringFromDate:v10 dateStyle:1 timeStyle:0];
    v12 = [v7 localizedStringWithFormat:v8, v11];

LABEL_8:
    goto LABEL_9;
  }

  v13 = [(LPWalletPassMetadata *)self eventDate];

  if (v13)
  {
    v14 = MEMORY[0x1E696AB78];
    v8 = [(LPWalletPassMetadata *)self eventDate];
    v12 = [v14 localizedStringFromDate:v8 dateStyle:2 timeStyle:0];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  v15 = joinedByDot(v5, v12);

  return v15;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:33];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [v4 metadata];
  v8 = [v7 image];

  if (v8)
  {
    v9 = [v4 metadata];
    v10 = [v9 image];
    [v4 _populateProperties:v5 withPrimaryImage:v10];
  }

  else
  {
    v11 = [v4 metadata];
    v9 = [v11 icon];

    if (!v9)
    {
      v9 = [LPImage _systemImageNamed:@"creditcard"];
    }

    v10 = [v5 captionBar];
    [v10 setLeadingIcon:v9];
  }

  v12 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if ((v12 - 1) >= 3)
  {
    if (v12)
    {
      goto LABEL_11;
    }

    v17 = [(LPWalletPassMetadata *)self name];
    v18 = [v5 captionBar];
    v19 = [v18 top];
    v20 = [v19 leading];
    [v20 setText:v17];
  }

  else
  {
    v13 = [(LPWalletPassMetadata *)self name];
    v14 = [v5 captionBar];
    v15 = [v14 top];
    v16 = [v15 leading];
    [v16 setText:v13];

    v17 = [(LPWalletPassMetadata *)self _subtitle];
    v18 = [v5 captionBar];
    v19 = [v18 bottom];
    v20 = [v19 leading];
    [v20 setText:v17];
  }

LABEL_11:

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPWalletPassMetadata *)self name];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"Pass: %@");
    v7 = [(LPWalletPassMetadata *)self name];
    v8 = [v5 localizedStringWithFormat:v6, v7];
  }

  else
  {
    v8 = LPLocalizedString(@"Pass");
  }

  return v8;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = [LPImage _systemImageNamed:@"creditcard"];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v5 = a3;
  v4 = [(LPWalletPassMetadata *)self name];
  [v5 setTitle:v4];
}

@end