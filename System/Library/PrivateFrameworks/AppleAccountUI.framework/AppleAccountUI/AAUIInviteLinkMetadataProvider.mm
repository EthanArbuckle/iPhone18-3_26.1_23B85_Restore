@interface AAUIInviteLinkMetadataProvider
- (AAUIInviteLinkMetadataProvider)initWithContext:(id)context;
- (id)_defaultBackgroundImage;
- (id)_lpImageWithImage:(id)image;
- (void)loadMetadataWithImage:(id)image completion:(id)completion;
@end

@implementation AAUIInviteLinkMetadataProvider

- (AAUIInviteLinkMetadataProvider)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AAUIInviteLinkMetadataProvider;
  v6 = [(AAUIInviteLinkMetadataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)loadMetadataWithImage:(id)image completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  v7 = [[AAUIInviteLinkMetadata alloc] initWithContext:self->_context];
  if (imageCopy)
  {
    [(AAUIInviteLinkMetadataProvider *)self _lpImageWithImage:imageCopy];
  }

  else
  {
    [(AAUIInviteLinkMetadataProvider *)self _defaultBackgroundImage];
  }
  v8 = ;
  [(AAUIInviteLinkMetadata *)v7 setImage:v8];

  completionCopy[2](completionCopy, v7, 0);
}

- (id)_lpImageWithImage:(id)image
{
  v3 = MEMORY[0x1E696EC68];
  imageCopy = image;
  v5 = [[v3 alloc] initWithPlatformImage:imageCopy];

  return v5;
}

- (id)_defaultBackgroundImage
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"message_invite_background" inBundle:v4];

  v6 = [(AAUIInviteLinkMetadataProvider *)self _lpImageWithImage:v5];

  return v6;
}

@end