@interface AAUIInviteLinkMetadataProvider
- (AAUIInviteLinkMetadataProvider)initWithContext:(id)a3;
- (id)_defaultBackgroundImage;
- (id)_lpImageWithImage:(id)a3;
- (void)loadMetadataWithImage:(id)a3 completion:(id)a4;
@end

@implementation AAUIInviteLinkMetadataProvider

- (AAUIInviteLinkMetadataProvider)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIInviteLinkMetadataProvider;
  v6 = [(AAUIInviteLinkMetadataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (void)loadMetadataWithImage:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [[AAUIInviteLinkMetadata alloc] initWithContext:self->_context];
  if (v9)
  {
    [(AAUIInviteLinkMetadataProvider *)self _lpImageWithImage:v9];
  }

  else
  {
    [(AAUIInviteLinkMetadataProvider *)self _defaultBackgroundImage];
  }
  v8 = ;
  [(AAUIInviteLinkMetadata *)v7 setImage:v8];

  v6[2](v6, v7, 0);
}

- (id)_lpImageWithImage:(id)a3
{
  v3 = MEMORY[0x1E696EC68];
  v4 = a3;
  v5 = [[v3 alloc] initWithPlatformImage:v4];

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