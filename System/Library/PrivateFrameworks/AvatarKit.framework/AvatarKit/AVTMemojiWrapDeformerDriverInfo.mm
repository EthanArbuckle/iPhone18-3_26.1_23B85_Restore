@interface AVTMemojiWrapDeformerDriverInfo
- (AVTMemojiWrapDeformerDriverInfo)init;
@end

@implementation AVTMemojiWrapDeformerDriverInfo

- (AVTMemojiWrapDeformerDriverInfo)init
{
  v8.receiver = self;
  v8.super_class = AVTMemojiWrapDeformerDriverInfo;
  v2 = [(AVTMemojiWrapDeformerDriverInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    driverNodes = v2->_driverNodes;
    v2->_driverNodes = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    driverStates = v2->_driverStates;
    v2->_driverStates = v5;
  }

  return v2;
}

@end