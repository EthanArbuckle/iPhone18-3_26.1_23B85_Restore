@interface AVAudioNode(ExceptionHandler)
- (void)safePerformInstallTapOnBus:()ExceptionHandler bufferSize:format:error:block:;
@end

@implementation AVAudioNode(ExceptionHandler)

- (void)safePerformInstallTapOnBus:()ExceptionHandler bufferSize:format:error:block:
{
  v11 = a5;
  v12 = a7;
  [a1 installTapOnBus:a3 bufferSize:a4 format:v11 block:v12];
}

@end