@interface MPModelSocialPerson
+ (id)kind;
+ (void)__MPModelPropertySocialPersonArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonBiography__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonHandle__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonHasLightweightProfile__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonIsPrivate__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonIsVerified__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonPendingRequestsCount__MAPPING_MISSING__;
+ (void)__MPModelPropertySocialPersonUncensoredName__MAPPING_MISSING__;
- (id)artworkCatalog;
@end

@implementation MPModelSocialPerson

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelSocialPerson *)self artworkCatalogBlock];
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

+ (id)kind
{
  v2 = objc_opt_class();

  return [(MPModelKind *)MPModelSocialPersonKind kindWithModelClass:v2];
}

+ (void)__MPModelPropertySocialPersonHasLightweightProfile__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:36 description:@"Translator was missing mapping for MPModelPropertySocialPersonHasLightweightProfile"];
}

+ (void)__MPModelPropertySocialPersonArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:35 description:@"Translator was missing mapping for MPModelPropertySocialPersonArtwork"];
}

+ (void)__MPModelPropertySocialPersonPendingRequestsCount__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:34 description:@"Translator was missing mapping for MPModelPropertySocialPersonPendingRequestsCount"];
}

+ (void)__MPModelPropertySocialPersonIsVerified__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:33 description:@"Translator was missing mapping for MPModelPropertySocialPersonIsVerified"];
}

+ (void)__MPModelPropertySocialPersonIsPrivate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:32 description:@"Translator was missing mapping for MPModelPropertySocialPersonIsPrivate"];
}

+ (void)__MPModelPropertySocialPersonBiography__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:31 description:@"Translator was missing mapping for MPModelPropertySocialPersonBiography"];
}

+ (void)__MPModelPropertySocialPersonHandle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:30 description:@"Translator was missing mapping for MPModelPropertySocialPersonHandle"];
}

+ (void)__MPModelPropertySocialPersonUncensoredName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelSocialPerson.m" lineNumber:29 description:@"Translator was missing mapping for MPModelPropertySocialPersonUncensoredName"];
}

@end