@interface FigMediaparserdUtilities
@end

@implementation FigMediaparserdUtilities

dispatch_queue_t __FigMediaparserdUtilities_EnsureProcessLaunched_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.mediaparserdutilityremote", 0);
  qword_1ED4CA578 = result;
  return result;
}

uint64_t __FigMediaparserdUtilities_StartMediaparserdUtilitiesServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end