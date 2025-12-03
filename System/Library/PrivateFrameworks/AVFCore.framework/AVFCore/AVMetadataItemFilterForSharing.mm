@interface AVMetadataItemFilterForSharing
+ (void)addIdentifier:(id)identifier toAllowListDictionary:(id)dictionary;
+ (void)addKeySpace:(id)space key:(id)key toAllowListDictionary:(id)dictionary;
- (id)allowList;
@end

@implementation AVMetadataItemFilterForSharing

+ (void)addKeySpace:(id)space key:(id)key toAllowListDictionary:(id)dictionary
{
  array = [dictionary objectForKey:?];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [dictionary setObject:array forKey:space];
  }

  [array addObject:key];
}

- (id)allowList
{
  if (allowList_onceToken != -1)
  {
    [AVMetadataItemFilterForSharing allowList];
  }

  return allowList_sAllowList;
}

uint64_t __43__AVMetadataItemFilterForSharing_allowList__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"copyrights" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.copyright" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@cpy" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"uiso" key:@"cprt" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"TCOP" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"WCOP" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itsk" key:@"cprt" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.phonogramrights" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@phg" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itsk" key:@"@phg" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itsk" key:@"akID" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itsk" key:@"apID" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"make" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.make" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@mak" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"model" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.model" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@mod" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"software" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.software" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@swr" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itsk" key:@"@too" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"creationDate" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.creationdate" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@day" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"TDAT" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"language" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"comn" key:@"identifier" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"@req" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"tagc" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"uiso" key:@"tagc" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"AENC" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"ENCR" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"UFID" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.content.identifier" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.live-photo.video-stabilization-crop-percentage-numerator" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.live-photo.video-stabilization-crop-percentage-denominator" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.is-montage" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"mdta" key:@"com.apple.quicktime.live-photo.vitality-disabled" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itlk" key:@"com.apple.iTunes.iTunSMPB" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itlk" key:@"com.apple.iTunes.iTunNORM" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"uiso" key:@"ludt" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"udta" key:@"ludt" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"uiso" key:@"thmb" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"itsk" key:@"tmpo" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"TBPM" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"TLEN" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"TMED" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addKeySpace:@"org.id3" key:@"TSIZ" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.detected-face" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:*MEMORY[0x1E6962938] toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:*MEMORY[0x1E6962930] toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:*MEMORY[0x1E6962940] toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:*MEMORY[0x1E6962948] toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:*MEMORY[0x1E69629E0] toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.preferred-affine-transform" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.video-orientation" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.live-photo.auto" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.live-photo.vitality-score" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.live-photo.vitality-scoring-version" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.spatial-overcapture.quality-score" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.spatial-overcapture.quality-scoring-version" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.camera.lens_model" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.camera.focal_length.35mm_equivalent" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.full-frame-rate-playback-intent" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.cinematic-video-intent" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.front-and-back-camera-composition" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.front-and-back-camera-composition-picture-in-picture-rect" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/org.smpte.rdd18.camera.isosensitivity" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/org.smpte.rdd18.camera.whitebalance" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.proresraw.whitebalance.bycct.whitebalancefactors" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.proresraw.whitebalance.bycct.colormatrices" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/org.smpte.rdd18.camera.shutterspeed_angle" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/org.smpte.rdd18.camera.shutterspeed_time" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.camera.lens_irisfnumber" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.spatial.format-version" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.spatial.low-motion" toAllowListDictionary:v0];
  [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.spatial.aggressors-seen" toAllowListDictionary:v0];
  result = [AVMetadataItemFilterForSharing addIdentifier:@"mdta/com.apple.quicktime.aime-data" toAllowListDictionary:v0];
  allowList_sAllowList = v0;
  return result;
}

+ (void)addIdentifier:(id)identifier toAllowListDictionary:(id)dictionary
{
  v6 = [AVMetadataItem keySpaceForIdentifier:?];
  v7 = [AVMetadataItem keyForIdentifier:identifier];
  if (v6 && v7)
  {

    [AVMetadataItemFilterForSharing addKeySpace:v6 key:v7 toAllowListDictionary:dictionary];
  }
}

@end