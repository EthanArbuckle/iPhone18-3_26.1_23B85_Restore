@interface LSBundleGetSystemApplicationTypes
@end

@implementation LSBundleGetSystemApplicationTypes

void ___LSBundleGetSystemApplicationTypes_block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = @"System";
  v5[1] = @"SystemAppPlaceholder";
  v5[2] = @"Internal";
  v5[3] = @"Hidden";
  v5[4] = @"CoreServices";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v2 = [v0 initWithArray:v1];
  v3 = _LSBundleGetSystemApplicationTypes::systemTypes;
  _LSBundleGetSystemApplicationTypes::systemTypes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end