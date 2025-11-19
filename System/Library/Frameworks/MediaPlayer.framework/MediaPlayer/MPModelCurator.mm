@interface MPModelCurator
+ (void)__MPModelPropertyCuratorBrandLogoArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorHandle__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorKind__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorShortEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorShortName__MAPPING_MISSING__;
+ (void)__MPModelPropertyCuratorSubKind__MAPPING_MISSING__;
- (id)brandLogoArtworkCatalog;
- (id)editorialArtworkCatalog;
@end

@implementation MPModelCurator

- (id)brandLogoArtworkCatalog
{
  v3 = [(MPModelCurator *)self brandLogoArtworkCatalogBlock];
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

- (id)editorialArtworkCatalog
{
  v3 = [(MPModelCurator *)self editorialArtworkCatalogBlock];
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

+ (void)__MPModelPropertyCuratorHandle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyCuratorHandle"];
}

+ (void)__MPModelPropertyCuratorBrandLogoArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyCuratorBrandLogoArtwork"];
}

+ (void)__MPModelPropertyCuratorEditorialArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyCuratorEditorialArtwork"];
}

+ (void)__MPModelPropertyCuratorSubKind__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyCuratorSubKind"];
}

+ (void)__MPModelPropertyCuratorKind__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyCuratorKind"];
}

+ (void)__MPModelPropertyCuratorShortEditorNotes__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:91 description:@"Translator was missing mapping for MPModelPropertyCuratorShortEditorNotes"];
}

+ (void)__MPModelPropertyCuratorEditorNotes__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:90 description:@"Translator was missing mapping for MPModelPropertyCuratorEditorNotes"];
}

+ (void)__MPModelPropertyCuratorShortName__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelCurator.m" lineNumber:89 description:@"Translator was missing mapping for MPModelPropertyCuratorShortName"];
}

@end