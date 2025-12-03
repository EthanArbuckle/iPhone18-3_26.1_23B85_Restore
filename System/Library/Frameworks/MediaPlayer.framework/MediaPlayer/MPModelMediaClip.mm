@interface MPModelMediaClip
+ (id)classesForSecureCoding;
+ (id)kind;
+ (void)__MPModelPropertyMediaClipPreviewArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyMediaClipTitle__MAPPING_MISSING__;
+ (void)__MPModelRelationshipMediaClipStaticAssets__MAPPING_MISSING__;
- (id)humanDescription;
- (id)previewArtworkCatalog;
@end

@implementation MPModelMediaClip

- (id)previewArtworkCatalog
{
  previewArtworkCatalogBlock = [(MPModelMediaClip *)self previewArtworkCatalogBlock];
  v4 = previewArtworkCatalogBlock;
  if (previewArtworkCatalogBlock)
  {
    v5 = (*(previewArtworkCatalogBlock + 16))(previewArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription = [identifiers humanDescription];
  v6 = [v3 stringWithFormat:@"mediaClip %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyMediaClipTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    title = [(MPModelMediaClip *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", title];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyMediaClipTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMediaClip.m" lineNumber:48 description:@"Translator was missing mapping for MPModelPropertyMediaClipTitle"];
}

+ (void)__MPModelRelationshipMediaClipStaticAssets__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMediaClip.m" lineNumber:47 description:@"Translator was missing mapping for MPModelRelationshipMediaClipStaticAssets"];
}

+ (void)__MPModelPropertyMediaClipPreviewArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelMediaClip.m" lineNumber:46 description:@"Translator was missing mapping for MPModelPropertyMediaClipPreviewArtwork"];
}

+ (id)kind
{
  v2 = objc_opt_class();

  return [(MPModelKind *)MPModelMediaClipKind kindWithModelClass:v2];
}

+ (id)classesForSecureCoding
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end