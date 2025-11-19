@interface CIFilter(PrivateDepthUtilities)
@end

@implementation CIFilter(PrivateDepthUtilities)

+ (void)getMinMaxSimulatedApertureFrom:()PrivateDepthUtilities minValue:maxValue:version:.cold.1(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = +[CIFilter maxSDOFRenderingVersionSupported];
  _os_log_debug_impl(&dword_19CC36000, a2, OS_LOG_TYPE_DEBUG, "Unified Rendering does not support rendering this version (%d); max version = %d; returning as unajustable image.", v4, 0xEu);
}

@end