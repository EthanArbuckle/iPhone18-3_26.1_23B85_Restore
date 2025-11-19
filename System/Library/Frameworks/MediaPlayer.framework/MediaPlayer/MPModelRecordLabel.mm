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
  v3 = [(MPModelRecordLabel *)self editorialArtworkCatalogBlock];
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

- (id)artworkCatalog
{
  v3 = [(MPModelRecordLabel *)self artworkCatalogBlock];
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

+ (void)__MPModelPropertyRecordLabelEditorialArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelRecordLabel.m" lineNumber:31 description:@"Translator was missing mapping for MPModelPropertyRecordLabelEditorialArtwork"];
}

+ (void)__MPModelPropertyRecordLabelArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelRecordLabel.m" lineNumber:30 description:@"Translator was missing mapping for MPModelPropertyRecordLabelArtwork"];
}

+ (void)__MPModelPropertyRecordLabelShortDescriptionText__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelRecordLabel.m" lineNumber:29 description:@"Translator was missing mapping for MPModelPropertyRecordLabelShortDescriptionText"];
}

+ (void)__MPModelPropertyRecordLabelDescriptionText__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelRecordLabel.m" lineNumber:28 description:@"Translator was missing mapping for MPModelPropertyRecordLabelDescriptionText"];
}

+ (void)__MPModelPropertyRecordLabelName__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelRecordLabel.m" lineNumber:27 description:@"Translator was missing mapping for MPModelPropertyRecordLabelName"];
}

@end