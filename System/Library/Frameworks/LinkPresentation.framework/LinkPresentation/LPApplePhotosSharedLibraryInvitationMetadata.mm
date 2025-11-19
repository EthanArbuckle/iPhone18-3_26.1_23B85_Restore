@interface LPApplePhotosSharedLibraryInvitationMetadata
- (BOOL)isEqual:(id)a3;
- (LPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)sharedLibraryInvitationMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPApplePhotosSharedLibraryInvitationMetadata

- (LPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPApplePhotosSharedLibraryInvitationMetadata;
  v5 = [(LPApplePhotosSharedLibraryInvitationMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"message");
    message = v5->_message;
    v5->_message = v6;

    v8 = decodeStringForKey(v4, @"originatorDisplayName");
    originatorDisplayName = v5->_originatorDisplayName;
    v5->_originatorDisplayName = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_message forKey:@"message"];
  [v4 _lp_encodeStringIfNotNil:self->_originatorDisplayName forKey:@"originatorDisplayName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPApplePhotosSharedLibraryInvitationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self message];
    [(LPApplePhotosSharedLibraryInvitationMetadata *)v4 setMessage:v5];

    v6 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];
    [(LPApplePhotosSharedLibraryInvitationMetadata *)v4 setOriginatorDisplayName:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPApplePhotosSharedLibraryInvitationMetadata;
  if ([(LPApplePhotosSharedLibraryInvitationMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if (objectsAreEqual_0(v6[2], self->_message))
      {
        v5 = objectsAreEqual_0(v6[3], self->_originatorDisplayName);
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

- (id)sharedLibraryInvitationMessage
{
  v3 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = LPLocalizedString(@"%@ wants you to join a Shared Library in Photos");
    v6 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];
    v7 = [v4 localizedStringWithFormat:v5, v6];
  }

  else
  {
    v7 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self message];
  }

  return v7;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 title];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = LPLocalizedString(@"Shared Library Invitation");
  }

  v9 = v8;

  v10 = [LPImage _PNGImageNamed:@"InvitationIcon"];
  v11 = objc_alloc_init(LPWebLinkPresentationProperties);
  [(LPWebLinkPresentationProperties *)v11 setStyle:50];
  v12 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [(LPWebLinkPresentationProperties *)v11 setCaptionBar:v12];

  v13 = [(LPWebLinkPresentationProperties *)v11 captionBar];
  v14 = [v13 top];
  v15 = [v14 leading];
  [v15 setText:v9];

  v16 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self sharedLibraryInvitationMessage];
  v17 = [(LPWebLinkPresentationProperties *)v11 captionBar];
  v18 = [v17 bottom];
  v19 = [v18 leading];
  [v19 setText:v16];

  if ([v4 _rowConfigurationForStyle:{-[LPWebLinkPresentationProperties style](v11, "style")}] == 3)
  {
    v20 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    v21 = [v20 bottom];
    v22 = [v21 leading];
    [v22 setMaximumNumberOfLines:&unk_1F24835D8];
  }

  if ([v4 effectiveSizeClass] == 1 || sizeClassIsCardHeading(objc_msgSend(v4, "effectiveSizeClass")))
  {
    v23 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    [v23 setLeadingIcon:v10];

    v24 = objc_alloc_init(LPImagePresentationProperties);
    v25 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    [v25 setLeadingIconProperties:v24];

    v26 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    v27 = [v26 leadingIconProperties];
    [v27 setFilter:5];
  }

  else
  {
    [(LPWebLinkPresentationProperties *)v11 setImage:v10];
  }

  return v11;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v3 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self sharedLibraryInvitationMessage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = LPLocalizedString(@"Photos: Shared Library Invitation");
  }

  v6 = v5;

  return v6;
}

@end