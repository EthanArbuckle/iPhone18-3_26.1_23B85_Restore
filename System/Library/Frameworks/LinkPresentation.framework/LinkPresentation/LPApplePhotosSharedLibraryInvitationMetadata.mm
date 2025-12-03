@interface LPApplePhotosSharedLibraryInvitationMetadata
- (BOOL)isEqual:(id)equal;
- (LPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)sharedLibraryInvitationMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPApplePhotosSharedLibraryInvitationMetadata

- (LPApplePhotosSharedLibraryInvitationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = LPApplePhotosSharedLibraryInvitationMetadata;
  v5 = [(LPApplePhotosSharedLibraryInvitationMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"message");
    message = v5->_message;
    v5->_message = v6;

    v8 = decodeStringForKey(coderCopy, @"originatorDisplayName");
    originatorDisplayName = v5->_originatorDisplayName;
    v5->_originatorDisplayName = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_message forKey:@"message"];
  [coderCopy _lp_encodeStringIfNotNil:self->_originatorDisplayName forKey:@"originatorDisplayName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPApplePhotosSharedLibraryInvitationMetadata allocWithZone:zone];
  if (v4)
  {
    message = [(LPApplePhotosSharedLibraryInvitationMetadata *)self message];
    [(LPApplePhotosSharedLibraryInvitationMetadata *)v4 setMessage:message];

    originatorDisplayName = [(LPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];
    [(LPApplePhotosSharedLibraryInvitationMetadata *)v4 setOriginatorDisplayName:originatorDisplayName];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPApplePhotosSharedLibraryInvitationMetadata;
  if ([(LPApplePhotosSharedLibraryInvitationMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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
  originatorDisplayName = [(LPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];

  if (originatorDisplayName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = LPLocalizedString(@"%@ wants you to join a Shared Library in Photos");
    originatorDisplayName2 = [(LPApplePhotosSharedLibraryInvitationMetadata *)self originatorDisplayName];
    message = [v4 localizedStringWithFormat:v5, originatorDisplayName2];
  }

  else
  {
    message = [(LPApplePhotosSharedLibraryInvitationMetadata *)self message];
  }

  return message;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  metadata = [transformerCopy metadata];
  title = [metadata title];
  v7 = title;
  if (title)
  {
    v8 = title;
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

  captionBar = [(LPWebLinkPresentationProperties *)v11 captionBar];
  v14 = [captionBar top];
  leading = [v14 leading];
  [leading setText:v9];

  sharedLibraryInvitationMessage = [(LPApplePhotosSharedLibraryInvitationMetadata *)self sharedLibraryInvitationMessage];
  captionBar2 = [(LPWebLinkPresentationProperties *)v11 captionBar];
  bottom = [captionBar2 bottom];
  leading2 = [bottom leading];
  [leading2 setText:sharedLibraryInvitationMessage];

  if ([transformerCopy _rowConfigurationForStyle:{-[LPWebLinkPresentationProperties style](v11, "style")}] == 3)
  {
    captionBar3 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    bottom2 = [captionBar3 bottom];
    leading3 = [bottom2 leading];
    [leading3 setMaximumNumberOfLines:&unk_1F24835D8];
  }

  if ([transformerCopy effectiveSizeClass] == 1 || sizeClassIsCardHeading(objc_msgSend(transformerCopy, "effectiveSizeClass")))
  {
    captionBar4 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    [captionBar4 setLeadingIcon:v10];

    v24 = objc_alloc_init(LPImagePresentationProperties);
    captionBar5 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    [captionBar5 setLeadingIconProperties:v24];

    captionBar6 = [(LPWebLinkPresentationProperties *)v11 captionBar];
    leadingIconProperties = [captionBar6 leadingIconProperties];
    [leadingIconProperties setFilter:5];
  }

  else
  {
    [(LPWebLinkPresentationProperties *)v11 setImage:v10];
  }

  return v11;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  sharedLibraryInvitationMessage = [(LPApplePhotosSharedLibraryInvitationMetadata *)self sharedLibraryInvitationMessage];
  v4 = sharedLibraryInvitationMessage;
  if (sharedLibraryInvitationMessage)
  {
    v5 = sharedLibraryInvitationMessage;
  }

  else
  {
    v5 = LPLocalizedString(@"Photos: Shared Library Invitation");
  }

  v6 = v5;

  return v6;
}

@end