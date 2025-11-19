@interface ShortURLTransformationEnabled
@end

@implementation ShortURLTransformationEnabled

id MapKitConfig_ShortURLTransformationEnabled_Metadata_block_invoke_98()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = [v0 numberWithBool:{objc_msgSend(v2, "isEqual:", @"CN"}];

  return v3;
}

@end