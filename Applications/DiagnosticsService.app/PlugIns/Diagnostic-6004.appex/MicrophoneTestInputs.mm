@interface MicrophoneTestInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation MicrophoneTestInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v4 = sub_100014CEC();
  selfCopy = self;
  LOBYTE(self) = sub_100009F38(v4);

  return self & 1;
}

@end