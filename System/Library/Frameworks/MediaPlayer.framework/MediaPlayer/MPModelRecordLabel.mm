@interface MPModelRecordLabel
+ (void)__MPModelPropertyRecordLabelArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyRecordLabelDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyRecordLabelEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyRecordLabelName__MAPPING_MISSING__;
+ (void)__MPModelPropertyRecordLabelShortDescriptionText__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)editorialArtworkCatalog;
@end

@implementation MPModelRecordLabel

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MPModelRecordLabel *)self editorialArtworkCatalogBlock];
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

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelRecordLabel *)self artworkCatalogBlock];
  v4 = artworkCatalogBlock;
  if (artworkCatalogBlock)
  {
    v5 = (*(artworkCatalogBlock + 16))(artworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)__MPModelPropertyRecordLabelEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRecordLabel.m" lineNumber:31 description:@"Translator was missing mapping for MPModelPropertyRecordLabelEditorialArtwork"];
}

+ (void)__MPModelPropertyRecordLabelArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRecordLabel.m" lineNumber:30 description:@"Translator was missing mapping for MPModelPropertyRecordLabelArtwork"];
}

+ (void)__MPModelPropertyRecordLabelShortDescriptionText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRecordLabel.m" lineNumber:29 description:@"Translator was missing mapping for MPModelPropertyRecordLabelShortDescriptionText"];
}

+ (void)__MPModelPropertyRecordLabelDescriptionText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRecordLabel.m" lineNumber:28 description:@"Translator was missing mapping for MPModelPropertyRecordLabelDescriptionText"];
}

+ (void)__MPModelPropertyRecordLabelName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRecordLabel.m" lineNumber:27 description:@"Translator was missing mapping for MPModelPropertyRecordLabelName"];
}

@end