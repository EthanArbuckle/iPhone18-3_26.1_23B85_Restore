@interface LPSharePlayInviteMetadata
+ (id)applicationNameToDisplayForBundleID:(id)d fallbackName:(id)name;
- (BOOL)isEqual:(id)equal;
- (LPSharePlayInviteMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)sourceApplicationMetadataForTransformer:(id)transformer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPSharePlayInviteMetadata

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:49];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = LPLocalizedString(@"SharePlay");
  captionBar = [v5 captionBar];
  v9 = [captionBar top];
  leading = [v9 leading];
  [leading setText:v7];

  title = [(LPSharePlayInviteMetadata *)self title];
  captionBar2 = [v5 captionBar];
  bottom = [captionBar2 bottom];
  leading2 = [bottom leading];
  [leading2 setText:title];

  captionBar3 = [v5 captionBar];
  bottom2 = [captionBar3 bottom];
  leading3 = [bottom2 leading];
  [leading3 setMaximumNumberOfLines:&unk_1F2483380];

  v18 = objc_opt_class();
  applicationBundleIdentifier = [(LPSharePlayInviteMetadata *)self applicationBundleIdentifier];
  application = [(LPSharePlayInviteMetadata *)self application];
  v21 = [v18 applicationNameToDisplayForBundleID:applicationBundleIdentifier fallbackName:application];
  captionBar4 = [v5 captionBar];
  belowBottom = [captionBar4 belowBottom];
  leading4 = [belowBottom leading];
  [leading4 setText:v21];

  captionBar5 = [v5 captionBar];
  belowBottom2 = [captionBar5 belowBottom];
  leading5 = [belowBottom2 leading];
  [leading5 setMaximumNumberOfLines:&unk_1F2483380];

  icon = [(LPSharePlayInviteMetadata *)self icon];
  [transformerCopy _populateProperties:v5 withPrimaryImage:icon];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  title = [(LPSharePlayInviteMetadata *)self title];

  if (title)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"SharePlay Link: %@");
    title2 = [(LPSharePlayInviteMetadata *)self title];
    v8 = [v5 localizedStringWithFormat:v6, title2];
  }

  else
  {
    v8 = LPLocalizedString(@"SharePlay Link");
  }

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  title = [(LPSharePlayInviteMetadata *)self title];
  v5 = title;
  if (!title)
  {
    v5 = LPLocalizedString(@"SharePlay Link");
  }

  [compatibilityCopy setTitle:v5];
  if (!title)
  {
  }

  icon = [(LPSharePlayInviteMetadata *)self icon];
  [compatibilityCopy setIcon:icon];
}

- (id)sourceApplicationMetadataForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = objc_alloc_init(LPSourceApplicationMetadata);
  v6 = objc_alloc(MEMORY[0x1E69A8A00]);
  applicationBundleIdentifier = [(LPSharePlayInviteMetadata *)self applicationBundleIdentifier];
  v8 = [v6 initWithBundleIdentifier:applicationBundleIdentifier];

  v9 = objc_alloc(MEMORY[0x1E69A8A30]);
  [transformerCopy scaleFactor];
  v11 = [v9 initWithSize:8.0 scale:{8.0, v10}];
  [v11 setShouldApplyMask:0];
  v12 = [v8 prepareImageForDescriptor:v11];
  v13 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v12 CGImage]);
  [(LPSourceApplicationMetadata *)v5 setIcon:v13];

  return v5;
}

+ (id)applicationNameToDisplayForBundleID:(id)d fallbackName:(id)name
{
  dCopy = d;
  nameCopy = name;
  if ([dCopy isEqualToString:@"com.apple.podcasts"])
  {
    v7 = @" Podcasts";
LABEL_11:
    v8 = LPLocalizedString(v7);
    goto LABEL_12;
  }

  if ([dCopy isEqualToString:@"com.apple.news"])
  {
    v7 = @" News";
    goto LABEL_11;
  }

  if ([dCopy _lp_isEqualIgnoringCase:@"com.apple.tv"])
  {
    v7 = @" tv";
    goto LABEL_11;
  }

  if ([dCopy isEqualToString:@"com.apple.Music"])
  {
    v7 = @" Music";
    goto LABEL_11;
  }

  if ([dCopy isEqualToString:@"com.apple.iBooks"])
  {
    v7 = @" Books";
    goto LABEL_11;
  }

  v8 = nameCopy;
LABEL_12:
  v9 = v8;

  return v9;
}

- (LPSharePlayInviteMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = LPSharePlayInviteMetadata;
  v5 = [(LPSharePlayInviteMetadata *)&v16 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v8 = decodeStringForKey(coderCopy, @"applicationBundleIdentifier");
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"application");
    application = v5->_application;
    v5->_application = v10;

    v12 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_application forKey:@"application"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPSharePlayInviteMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPSharePlayInviteMetadata *)self title];
    [(LPSharePlayInviteMetadata *)v4 setTitle:title];

    applicationBundleIdentifier = [(LPSharePlayInviteMetadata *)self applicationBundleIdentifier];
    [(LPSharePlayInviteMetadata *)v4 setApplicationBundleIdentifier:applicationBundleIdentifier];

    application = [(LPSharePlayInviteMetadata *)self application];
    [(LPSharePlayInviteMetadata *)v4 setApplication:application];

    icon = [(LPSharePlayInviteMetadata *)self icon];
    [(LPSharePlayInviteMetadata *)v4 setIcon:icon];

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPSharePlayInviteMetadata;
  if ([(LPSharePlayInviteMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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