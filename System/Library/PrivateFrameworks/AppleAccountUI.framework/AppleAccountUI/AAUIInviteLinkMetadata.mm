@interface AAUIInviteLinkMetadata
- (AAUIInviteLinkMetadata)initWithContext:(id)context;
- (LPLinkMetadata)bubbleMetadata;
@end

@implementation AAUIInviteLinkMetadata

- (AAUIInviteLinkMetadata)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AAUIInviteLinkMetadata;
  v6 = [(AAUIInviteLinkMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (LPLinkMetadata)bubbleMetadata
{
  v3 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  context = [(AAUIInviteLinkMetadata *)self context];
  title = [context title];
  [v3 setTitle:title];

  image = [(AAUIInviteLinkMetadata *)self image];
  [v3 setImage:image];

  context2 = [(AAUIInviteLinkMetadata *)self context];
  action = [context2 action];
  [v3 setSummary:action];

  context3 = [(AAUIInviteLinkMetadata *)self context];
  inviteURL = [context3 inviteURL];
  [v3 setOriginalURL:inviteURL];

  context4 = [(AAUIInviteLinkMetadata *)self context];
  inviteURL2 = [context4 inviteURL];
  [v3 setURL:inviteURL2];

  v13 = objc_alloc_init(MEMORY[0x1E696ED28]);
  context5 = [(AAUIInviteLinkMetadata *)self context];
  title2 = [context5 title];
  [v13 setTitle:title2];

  context6 = [(AAUIInviteLinkMetadata *)self context];
  subtitle = [context6 subtitle];
  [v13 setSubtitle:subtitle];

  context7 = [(AAUIInviteLinkMetadata *)self context];
  action2 = [context7 action];
  [v13 setAction:action2];

  image2 = [v3 image];
  [v13 setImage:image2];

  icon = [(AAUIInviteLinkMetadata *)self icon];
  [v13 setIcon:icon];

  context8 = [(AAUIInviteLinkMetadata *)self context];
  secondaryTitle = [context8 secondaryTitle];
  [v13 setKind:secondaryTitle];

  [v3 setSpecialization:v13];

  return v3;
}

@end