@interface ML3TrackPropertiesFromMPMediaItemProperties
@end

@implementation ML3TrackPropertiesFromMPMediaItemProperties

void ___ML3TrackPropertiesFromMPMediaItemProperties_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69B3538] propertyForMPMediaEntityProperty:v5];
  if ([v7 length])
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "[MPCloudController] Failed to find ML3 equivalent for property: %{public}@", &v9, 0xCu);
    }
  }
}

@end