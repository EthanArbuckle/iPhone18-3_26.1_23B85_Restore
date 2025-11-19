@interface LPFaceTimeInviteMetadataProviderSpecialization
+ (id)specializedMetadataProviderForURLWithContext:(id)a3;
- (void)completeWithMetadata:(id)a3;
- (void)start;
@end

@implementation LPFaceTimeInviteMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 postRedirectURL];
  v5 = [v4 _lp_isFaceTimeInviteURL];

  if (v5)
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPFaceTimeInviteMetadataProviderSpecialization alloc] initWithContext:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)start
{
  v8 = [(LPMetadataProviderSpecialization *)self context];
  v3 = [v8 originalURL];
  v4 = [v3 _lp_isFaceTimeInviteURL];

  if (v4)
  {
    v9 = objc_alloc_init(LPFaceTimeInviteMetadata);
    v5 = [(LPMetadataProviderSpecialization *)self context];
    v6 = [v5 originalURL];
    v7 = [v6 _lp_faceTimeInviteTitle];
    [(LPFaceTimeInviteMetadata *)v9 setTitle:v7];

    [(LPFaceTimeInviteMetadataProviderSpecialization *)self completeWithMetadata:v9];
  }
}

- (void)completeWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:v4];
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