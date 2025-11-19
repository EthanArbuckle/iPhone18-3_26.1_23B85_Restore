@interface MPTitlePropertyForPidProperty
@end

@implementation MPTitlePropertyForPidProperty

void ___MPTitlePropertyForPidProperty_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"albumPID";
  v2[1] = @"artistPID";
  v3[0] = @"albumTitle";
  v3[1] = @"artist";
  v2[2] = @"playlistPersistentID";
  v3[2] = @"name";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _MPTitlePropertyForPidProperty___pidPropertyToAlbumMappings;
  _MPTitlePropertyForPidProperty___pidPropertyToAlbumMappings = v0;
}

@end