@interface SCNImageSource
- (id)textureSource;
- (void)connectToProxy:(__C3DImageProxy *)a3;
- (void)textureSource;
@end

@implementation SCNImageSource

- (id)textureSource
{
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SCNImageSource *)a2 textureSource];
  }

  return 0;
}

- (void)connectToProxy:(__C3DImageProxy *)a3
{
  C3DImageProxySetSource(a3, self, 0);
  v4[0] = xmmword_282DC7808;
  v4[1] = *&off_282DC7818;
  C3DImageProxySetCallbacks(a3, v4);
}

- (void)textureSource
{
  NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: SCNImageSource astract method invoked %@", v3, v4, v5, v6, v7);
}

@end