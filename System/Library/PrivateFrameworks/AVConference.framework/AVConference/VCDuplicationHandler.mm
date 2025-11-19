@interface VCDuplicationHandler
- (VCDuplicationHandler)init;
@end

@implementation VCDuplicationHandler

- (VCDuplicationHandler)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCDuplicationHandler;
  v2 = [(VCDuplicationHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowDuplication = 1;
    v2->_forceDisableDuplication = VCDefaults_GetBoolValueForKey(@"forceDisableDuplication", 0);
  }

  return v3;
}

@end