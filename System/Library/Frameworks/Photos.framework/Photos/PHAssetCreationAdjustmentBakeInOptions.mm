@interface PHAssetCreationAdjustmentBakeInOptions
+ (id)adjustmentBakeInOptionsForPublishingOriginals;
- (PHAssetCreationAdjustmentBakeInOptions)init;
- (PHAssetCreationAdjustmentBakeInOptions)initWithCoder:(id)coder;
- (PHAssetCreationAdjustmentBakeInOptions)initWithXPCDict:(id)dict;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)plRepresentation;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHAssetCreationAdjustmentBakeInOptions

- (PHAssetCreationAdjustmentBakeInOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PHAssetCreationAdjustmentBakeInOptions;
  v5 = [(PHAssetCreationAdjustmentBakeInOptions *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"livePhotoDisabled"];
    v5->_shouldBakeInIfLivePhotoPlaybackDisabled = [coderCopy decodeBoolForKey:v6];

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"livePhotoMuted"];
    v5->_shouldBakeInIfLivePhotoMuted = [coderCopy decodeBoolForKey:v7];

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"thirdPartyAdjustments"];
    v5->_shouldBakeInIfAdjustedByThirdParty = [coderCopy decodeBoolForKey:v8];

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cropped"];
    v5->_shouldBakeInIfCropped = [coderCopy decodeBoolForKey:v9];

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timelineTrimmed"];
    v5->_shouldBakeInIfTimelineTrimmed = [coderCopy decodeBoolForKey:v10];

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"portraitDepthEffect"];
    v5->_shouldBakeInIfPortraitDepthEffectEnabled = [coderCopy decodeBoolForKey:v11];

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"containsPenultimateResources"];
    v5->_shouldBakeInIfContainsPenultimateResources = [coderCopy decodeBoolForKey:v12];

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"flattenLivePhotoToStillIfNeeded"];
    v5->_flattenLivePhotoToStillIfNeeded = [coderCopy decodeBoolForKey:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shouldBakeInIfLivePhotoPlaybackDisabled = self->_shouldBakeInIfLivePhotoPlaybackDisabled;
  v5 = MEMORY[0x1E696AEC0];
  coderCopy = coder;
  v7 = [v5 stringWithUTF8String:"livePhotoDisabled"];
  [coderCopy encodeBool:shouldBakeInIfLivePhotoPlaybackDisabled forKey:v7];

  shouldBakeInIfLivePhotoMuted = self->_shouldBakeInIfLivePhotoMuted;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"livePhotoMuted"];
  [coderCopy encodeBool:shouldBakeInIfLivePhotoMuted forKey:v9];

  shouldBakeInIfAdjustedByThirdParty = self->_shouldBakeInIfAdjustedByThirdParty;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"thirdPartyAdjustments"];
  [coderCopy encodeBool:shouldBakeInIfAdjustedByThirdParty forKey:v11];

  shouldBakeInIfCropped = self->_shouldBakeInIfCropped;
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cropped"];
  [coderCopy encodeBool:shouldBakeInIfCropped forKey:v13];

  shouldBakeInIfTimelineTrimmed = self->_shouldBakeInIfTimelineTrimmed;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timelineTrimmed"];
  [coderCopy encodeBool:shouldBakeInIfTimelineTrimmed forKey:v15];

  shouldBakeInIfPortraitDepthEffectEnabled = self->_shouldBakeInIfPortraitDepthEffectEnabled;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"portraitDepthEffect"];
  [coderCopy encodeBool:shouldBakeInIfPortraitDepthEffectEnabled forKey:v17];

  shouldBakeInIfContainsPenultimateResources = self->_shouldBakeInIfContainsPenultimateResources;
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"containsPenultimateResources"];
  [coderCopy encodeBool:shouldBakeInIfContainsPenultimateResources forKey:v19];

  flattenLivePhotoToStillIfNeeded = self->_flattenLivePhotoToStillIfNeeded;
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"flattenLivePhotoToStillIfNeeded"];
  [coderCopy encodeBool:flattenLivePhotoToStillIfNeeded forKey:v21];
}

- (id)plRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE548]);
  copyPropertiesFromObjectAToObjectB(self, v3);

  return v3;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PHAssetCreationAdjustmentBakeInOptions;
  v3 = [(PHAssetCreationAdjustmentBakeInOptions *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" shouldBakeInIfLivePhotoPlaybackDisabled=%d, shouldBakeInIfLivePhotoMuted=%d, shouldBakeInIfAdjustedByThirdParty=%d, shouldBakeInIfCropped=%d, shouldBakeInIfTimelineTrimmed=%d, shouldBakeInIfPortraitDepthEffectEnabled=%d, shouldBakeInIfContainsPenultimateResources=%d, flattenLivePhotoToStillIfNeeded=%d", self->_shouldBakeInIfLivePhotoPlaybackDisabled, self->_shouldBakeInIfLivePhotoMuted, self->_shouldBakeInIfAdjustedByThirdParty, self->_shouldBakeInIfCropped, self->_shouldBakeInIfTimelineTrimmed, self->_shouldBakeInIfPortraitDepthEffectEnabled, self->_shouldBakeInIfContainsPenultimateResources, self->_flattenLivePhotoToStillIfNeeded];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(dictCopy, "adjustmentBakeInOptions", xdict);

  xpc_dictionary_set_BOOL(xdict, "livePhotoDisabled", self->_shouldBakeInIfLivePhotoPlaybackDisabled);
  xpc_dictionary_set_BOOL(xdict, "livePhotoMuted", self->_shouldBakeInIfLivePhotoMuted);
  xpc_dictionary_set_BOOL(xdict, "thirdPartyAdjustments", self->_shouldBakeInIfAdjustedByThirdParty);
  xpc_dictionary_set_BOOL(xdict, "cropped", self->_shouldBakeInIfCropped);
  xpc_dictionary_set_BOOL(xdict, "timelineTrimmed", self->_shouldBakeInIfTimelineTrimmed);
  xpc_dictionary_set_BOOL(xdict, "portraitDepthEffect", self->_shouldBakeInIfPortraitDepthEffectEnabled);
  xpc_dictionary_set_BOOL(xdict, "containsPenultimateResources", self->_shouldBakeInIfContainsPenultimateResources);
  xpc_dictionary_set_BOOL(xdict, "flattenLivePhotoToStillIfNeeded", self->_flattenLivePhotoToStillIfNeeded);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHAssetCreationAdjustmentBakeInOptions);
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfLivePhotoPlaybackDisabled:self->_shouldBakeInIfLivePhotoPlaybackDisabled];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfLivePhotoMuted:self->_shouldBakeInIfLivePhotoMuted];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfAdjustedByThirdParty:self->_shouldBakeInIfAdjustedByThirdParty];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfCropped:self->_shouldBakeInIfCropped];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfTimelineTrimmed:self->_shouldBakeInIfTimelineTrimmed];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfPortraitDepthEffectEnabled:self->_shouldBakeInIfPortraitDepthEffectEnabled];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setShouldBakeInIfContainsPenultimateResources:self->_shouldBakeInIfContainsPenultimateResources];
  [(PHAssetCreationAdjustmentBakeInOptions *)v4 setFlattenLivePhotoToStillIfNeeded:self->_flattenLivePhotoToStillIfNeeded];
  return v4;
}

- (PHAssetCreationAdjustmentBakeInOptions)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v5 = [(PHAssetCreationAdjustmentBakeInOptions *)self init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(dictCopy, "adjustmentBakeInOptions");
    v7 = v6;
    if (v6)
    {
      v5->_shouldBakeInIfLivePhotoPlaybackDisabled = xpc_dictionary_get_BOOL(v6, "livePhotoDisabled");
      v5->_shouldBakeInIfLivePhotoMuted = xpc_dictionary_get_BOOL(v7, "livePhotoMuted");
      v5->_shouldBakeInIfAdjustedByThirdParty = xpc_dictionary_get_BOOL(v7, "thirdPartyAdjustments");
      v5->_shouldBakeInIfCropped = xpc_dictionary_get_BOOL(v7, "cropped");
      v5->_shouldBakeInIfTimelineTrimmed = xpc_dictionary_get_BOOL(v7, "timelineTrimmed");
      v5->_shouldBakeInIfPortraitDepthEffectEnabled = xpc_dictionary_get_BOOL(v7, "portraitDepthEffect");
      v5->_shouldBakeInIfContainsPenultimateResources = xpc_dictionary_get_BOOL(v7, "containsPenultimateResources");
      v5->_flattenLivePhotoToStillIfNeeded = xpc_dictionary_get_BOOL(v7, "flattenLivePhotoToStillIfNeeded");
    }
  }

  return v5;
}

- (PHAssetCreationAdjustmentBakeInOptions)init
{
  v3.receiver = self;
  v3.super_class = PHAssetCreationAdjustmentBakeInOptions;
  result = [(PHAssetCreationAdjustmentBakeInOptions *)&v3 init];
  if (result)
  {
    result->_shouldBakeInIfTimelineTrimmed = 1;
    *&result->_shouldBakeInIfLivePhotoPlaybackDisabled = 16843009;
    *&result->_shouldBakeInIfPortraitDepthEffectEnabled = 256;
    result->_flattenLivePhotoToStillIfNeeded = 0;
  }

  return result;
}

+ (id)adjustmentBakeInOptionsForPublishingOriginals
{
  v2 = objc_alloc_init(PHAssetCreationAdjustmentBakeInOptions);
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfLivePhotoPlaybackDisabled:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfLivePhotoMuted:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfAdjustedByThirdParty:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfCropped:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfTimelineTrimmed:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfPortraitDepthEffectEnabled:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setShouldBakeInIfContainsPenultimateResources:0];
  [(PHAssetCreationAdjustmentBakeInOptions *)v2 setFlattenLivePhotoToStillIfNeeded:0];

  return v2;
}

@end