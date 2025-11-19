@interface ARLogTechnique
@end

@implementation ARLogTechnique

void ___ARLogTechnique_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "Technique");
  v1 = _ARLogTechnique_logObj;
  _ARLogTechnique_logObj = v0;
}

@end