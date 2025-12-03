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
  brandLogoArtworkCatalogBlock = [(MPModelCurator *)self brandLogoArtworkCatalogBlock];
  v4 = brandLogoArtworkCatalogBlock;
  if (brandLogoArtworkCatalogBlock)
  {
    v5 = (*(brandLogoArtworkCatalogBlock + 16))(brandLogoArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MPModelCurator *)self editorialArtworkCatalogBlock];
  v4 = editorialArtworkCatalogBlock;
  if (editorialArtworkCatalogBlock)
  {
    v5 = (*(editorialArtworkCatalogBlock + 16))(editorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)__MPModelPropertyCuratorHandle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyCuratorHandle"];
}

+ (void)__MPModelPropertyCuratorBrandLogoArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyCuratorBrandLogoArtwork"];
}

+ (void)__MPModelPropertyCuratorEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyCuratorEditorialArtwork"];
}

+ (void)__MPModelPropertyCuratorSubKind__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyCuratorSubKind"];
}

+ (void)__MPModelPropertyCuratorKind__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyCuratorKind"];
}

+ (void)__MPModelPropertyCuratorShortEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:91 description:@"Translator was missing mapping for MPModelPropertyCuratorShortEditorNotes"];
}

+ (void)__MPModelPropertyCuratorEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:90 description:@"Translator was missing mapping for MPModelPropertyCuratorEditorNotes"];
}

+ (void)__MPModelPropertyCuratorShortName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelCurator.m" lineNumber:89 description:@"Translator was missing mapping for MPModelPropertyCuratorShortName"];
}

@end