@interface MicrophoneTestInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation MicrophoneTestInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = sub_100014CEC();
  v5 = self;
  LOBYTE(self) = sub_100009F38(v4);

  return self & 1;
}

@end