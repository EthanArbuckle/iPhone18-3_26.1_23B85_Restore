@interface MPModelLibraryPin
+ (void)__MPModelPropertyLibraryPinDefaultAction__MAPPING_MISSING__;
+ (void)__MPModelPropertyLibraryPinEntityPersistentID__MAPPING_MISSING__;
+ (void)__MPModelPropertyLibraryPinEntityType__MAPPING_MISSING__;
+ (void)__MPModelPropertyLibraryPinPersistentID__MAPPING_MISSING__;
+ (void)__MPModelPropertyLibraryPinPositionUUID__MAPPING_MISSING__;
+ (void)__MPModelPropertyLibraryPinPosition__MAPPING_MISSING__;
+ (void)__MPModelRelationshipLibraryPinAlbum__MAPPING_MISSING__;
+ (void)__MPModelRelationshipLibraryPinArtist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipLibraryPinPlaylist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipLibraryPinSong__MAPPING_MISSING__;
- (id)anyObject;
@end

@implementation MPModelLibraryPin

- (id)anyObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22043;
  v9 = __Block_byref_object_dispose__22044;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__MPModelLibraryPin_anyObject__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __30__MPModelLibraryPin_anyObject__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) playlist];
  v10 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) artist];
  if (v4)
  {
    v1 = v4;
    v5 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) album];
  v2 = v9;
  if (v9)
  {
    v1 = 0;
    v6 = 0;
    v5 = 1;
    v7 = v9;
  }

  else
  {
    v7 = [*(a1 + 32) song];
    v1 = 0;
    v5 = 1;
    v6 = 1;
  }

LABEL_6:
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  if (v6)
  {
  }

  if (v5)
  {
  }

  v8 = v10;
  if (!v10)
  {

    v8 = 0;
  }
}

+ (void)__MPModelRelationshipLibraryPinSong__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:47 description:@"Translator was missing mapping for MPModelRelationshipLibraryPinSong"];
}

+ (void)__MPModelRelationshipLibraryPinArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:46 description:@"Translator was missing mapping for MPModelRelationshipLibraryPinArtist"];
}

+ (void)__MPModelRelationshipLibraryPinAlbum__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:45 description:@"Translator was missing mapping for MPModelRelationshipLibraryPinAlbum"];
}

+ (void)__MPModelRelationshipLibraryPinPlaylist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:44 description:@"Translator was missing mapping for MPModelRelationshipLibraryPinPlaylist"];
}

+ (void)__MPModelPropertyLibraryPinEntityPersistentID__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:43 description:@"Translator was missing mapping for MPModelPropertyLibraryPinEntityPersistentID"];
}

+ (void)__MPModelPropertyLibraryPinPersistentID__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:42 description:@"Translator was missing mapping for MPModelPropertyLibraryPinPersistentID"];
}

+ (void)__MPModelPropertyLibraryPinEntityType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:41 description:@"Translator was missing mapping for MPModelPropertyLibraryPinEntityType"];
}

+ (void)__MPModelPropertyLibraryPinDefaultAction__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:40 description:@"Translator was missing mapping for MPModelPropertyLibraryPinDefaultAction"];
}

+ (void)__MPModelPropertyLibraryPinPositionUUID__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:39 description:@"Translator was missing mapping for MPModelPropertyLibraryPinPositionUUID"];
}

+ (void)__MPModelPropertyLibraryPinPosition__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelLibraryPin.m" lineNumber:38 description:@"Translator was missing mapping for MPModelPropertyLibraryPinPosition"];
}

@end