@interface SCNMTLResourceManager(Textures)
@end

@implementation SCNMTLResourceManager(Textures)

- (void)newTextureUsingMTKTextureLoaderWithURL:()Textures options:.cold.2(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: Failed to load image with error %@", v3, v4, v5, v6, v7);
}

- (void)_textureDescriptorFromImage:()Textures needsMipMap:textureOptions:.cold.1(uint64_t a1)
{
  C3DImageGetURL(a1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: Cannot load image %@. Using dummy texture.", v3, v4, v5, v6, v7);
}

- (void)_copyImage:()Textures toTexture:desc:textureOptions:needsMipMapGeneration:.cold.3(uint64_t a1)
{
  C3DImageGetURL(a1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: Cannot load image %@. Texture will be garbage.", v3, v4, v5, v6, v7);
}

- (void)renderResourceForImage:()Textures sampler:options:engineContext:didFallbackToDefaultTexture:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_7();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_ERROR, "Error: Failed to load texture named %@ : %@", v2, 0x16u);
}

@end