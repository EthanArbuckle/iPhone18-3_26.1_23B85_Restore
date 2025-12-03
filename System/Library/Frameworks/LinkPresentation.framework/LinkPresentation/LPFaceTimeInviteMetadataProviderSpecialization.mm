@interface LPFaceTimeInviteMetadataProviderSpecialization
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (void)completeWithMetadata:(id)metadata;
- (void)start;
@end

@implementation LPFaceTimeInviteMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  contextCopy = context;
  postRedirectURL = [contextCopy postRedirectURL];
  _lp_isFaceTimeInviteURL = [postRedirectURL _lp_isFaceTimeInviteURL];

  if (_lp_isFaceTimeInviteURL)
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPFaceTimeInviteMetadataProviderSpecialization alloc] initWithContext:contextCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)start
{
  context = [(LPMetadataProviderSpecialization *)self context];
  originalURL = [context originalURL];
  _lp_isFaceTimeInviteURL = [originalURL _lp_isFaceTimeInviteURL];

  if (_lp_isFaceTimeInviteURL)
  {
    v9 = objc_alloc_init(LPFaceTimeInviteMetadata);
    context2 = [(LPMetadataProviderSpecialization *)self context];
    originalURL2 = [context2 originalURL];
    _lp_faceTimeInviteTitle = [originalURL2 _lp_faceTimeInviteTitle];
    [(LPFaceTimeInviteMetadata *)v9 setTitle:_lp_faceTimeInviteTitle];

    [(LPFaceTimeInviteMetadataProviderSpecialization *)self completeWithMetadata:v9];
  }
}

- (void)completeWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:metadataCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__LPFaceTimeInviteMetadataProviderSpecialization_completeWithMetadata___block_invoke;
  v7[3] = &unk_1E7A35478;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __71__LPFaceTimeInviteMetadataProviderSpecialization_completeWithMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecialization:*(a1 + 32) didCompleteWithMetadata:*(a1 + 40)];
}

@end