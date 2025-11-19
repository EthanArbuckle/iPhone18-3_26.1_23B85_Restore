@interface LPSharePlayInviteMetadata
+ (id)applicationNameToDisplayForBundleID:(id)a3 fallbackName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (LPSharePlayInviteMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)sourceApplicationMetadataForTransformer:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPSharePlayInviteMetadata

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:49];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = LPLocalizedString(@"SharePlay");
  v8 = [v5 captionBar];
  v9 = [v8 top];
  v10 = [v9 leading];
  [v10 setText:v7];

  v11 = [(LPSharePlayInviteMetadata *)self title];
  v12 = [v5 captionBar];
  v13 = [v12 bottom];
  v14 = [v13 leading];
  [v14 setText:v11];

  v15 = [v5 captionBar];
  v16 = [v15 bottom];
  v17 = [v16 leading];
  [v17 setMaximumNumberOfLines:&unk_1F2483380];

  v18 = objc_opt_class();
  v19 = [(LPSharePlayInviteMetadata *)self applicationBundleIdentifier];
  v20 = [(LPSharePlayInviteMetadata *)self application];
  v21 = [v18 applicationNameToDisplayForBundleID:v19 fallbackName:v20];
  v22 = [v5 captionBar];
  v23 = [v22 belowBottom];
  v24 = [v23 leading];
  [v24 setText:v21];

  v25 = [v5 captionBar];
  v26 = [v25 belowBottom];
  v27 = [v26 leading];
  [v27 setMaximumNumberOfLines:&unk_1F2483380];

  v28 = [(LPSharePlayInviteMetadata *)self icon];
  [v4 _populateProperties:v5 withPrimaryImage:v28];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPSharePlayInviteMetadata *)self title];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"SharePlay Link: %@");
    v7 = [(LPSharePlayInviteMetadata *)self title];
    v8 = [v5 localizedStringWithFormat:v6, v7];
  }

  else
  {
    v8 = LPLocalizedString(@"SharePlay Link");
  }

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v7 = a3;
  v4 = [(LPSharePlayInviteMetadata *)self title];
  v5 = v4;
  if (!v4)
  {
    v5 = LPLocalizedString(@"SharePlay Link");
  }

  [v7 setTitle:v5];
  if (!v4)
  {
  }

  v6 = [(LPSharePlayInviteMetadata *)self icon];
  [v7 setIcon:v6];
}

- (id)sourceApplicationMetadataForTransformer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LPSourceApplicationMetadata);
  v6 = objc_alloc(MEMORY[0x1E69A8A00]);
  v7 = [(LPSharePlayInviteMetadata *)self applicationBundleIdentifier];
  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = objc_alloc(MEMORY[0x1E69A8A30]);
  [v4 scaleFactor];
  v11 = [v9 initWithSize:8.0 scale:{8.0, v10}];
  [v11 setShouldApplyMask:0];
  v12 = [v8 prepareImageForDescriptor:v11];
  v13 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v12 CGImage]);
  [(LPSourceApplicationMetadata *)v5 setIcon:v13];

  return v5;
}

+ (id)applicationNameToDisplayForBundleID:(id)a3 fallbackName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"com.apple.podcasts"])
  {
    v7 = @" Podcasts";
LABEL_11:
    v8 = LPLocalizedString(v7);
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"com.apple.news"])
  {
    v7 = @" News";
    goto LABEL_11;
  }

  if ([v5 _lp_isEqualIgnoringCase:@"com.apple.tv"])
  {
    v7 = @" tv";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"com.apple.Music"])
  {
    v7 = @" Music";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"com.apple.iBooks"])
  {
    v7 = @" Books";
    goto LABEL_11;
  }

  v8 = v6;
LABEL_12:
  v9 = v8;

  return v9;
}

- (LPSharePlayInviteMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = LPSharePlayInviteMetadata;
  v5 = [(LPSharePlayInviteMetadata *)&v16 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(v4, @"applicationBundleIdentifier");
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v8;

    v10 = decodeStringForKey(v4, @"application");
    application = v5->_application;
    v5->_application = v10;

    v12 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_application forKey:@"application"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPSharePlayInviteMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPSharePlayInviteMetadata *)self title];
    [(LPSharePlayInviteMetadata *)v4 setTitle:v5];

    v6 = [(LPSharePlayInviteMetadata *)self applicationBundleIdentifier];
    [(LPSharePlayInviteMetadata *)v4 setApplicationBundleIdentifier:v6];

    v7 = [(LPSharePlayInviteMetadata *)self application];
    [(LPSharePlayInviteMetadata *)v4 setApplication:v7];

    v8 = [(LPSharePlayInviteMetadata *)self icon];
    [(LPSharePlayInviteMetadata *)v4 setIcon:v8];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPSharePlayInviteMetadata;
  if ([(LPSharePlayInviteMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_title) & 1) != 0 && objectsAreEqual_0(v6[3], self->_applicationBundleIdentifier) && objectsAreEqual_0(v6[4], self->_application))
      {
        v5 = objectsAreEqual_0(v6[5], self->_icon);
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash]^ v3;
  v5 = [(NSString *)self->_application hash];
  return v4 ^ v5 ^ [(LPImage *)self->_icon hash];
}

@end