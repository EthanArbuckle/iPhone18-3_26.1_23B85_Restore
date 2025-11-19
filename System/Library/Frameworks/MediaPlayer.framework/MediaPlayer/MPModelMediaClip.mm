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
  v3 = [(MPModelMediaClip *)self previewArtworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
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
  v4 = [(MPModelObject *)self identifiers];
  v5 = [v4 humanDescription];
  v6 = [v3 stringWithFormat:@"mediaClip %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyMediaClipTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelMediaClip *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyMediaClipTitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelMediaClip.m" lineNumber:48 description:@"Translator was missing mapping for MPModelPropertyMediaClipTitle"];
}

+ (void)__MPModelRelationshipMediaClipStaticAssets__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelMediaClip.m" lineNumber:47 description:@"Translator was missing mapping for MPModelRelationshipMediaClipStaticAssets"];
}

+ (void)__MPModelPropertyMediaClipPreviewArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelMediaClip.m" lineNumber:46 description:@"Translator was missing mapping for MPModelPropertyMediaClipPreviewArtwork"];
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