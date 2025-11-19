@interface UTFindCoreTypesConstantWithIdentifier
@end

@implementation UTFindCoreTypesConstantWithIdentifier

void ____UTFindCoreTypesConstantWithIdentifier_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFB8]);
  v6 = _UTGetAllCoreTypesConstants();
  v1 = [v0 initWithArray:?];
  v2 = qword_1ED40DC28;
  qword_1ED40DC28 = v1;

  v3 = qword_1ED40DC28;
  if (!qword_1ED40DC28)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef __UTFindCoreTypesConstantWithIdentifier(NSString *const __strong _Nonnull, NSInteger)_block_invoke"}];
    [v7 handleFailureInFunction:v4 file:@"UTCoreTypes.mm" lineNumber:267 description:@"Failed to construct O(1) lookup table for constant UTType instances."];

    v3 = qword_1ED40DC28;
  }

  if ([v3 count] != 174)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef __UTFindCoreTypesConstantWithIdentifier(NSString *const __strong _Nonnull, NSInteger)_block_invoke"}];
    [v8 handleFailureInFunction:v5 file:@"UTCoreTypes.mm" lineNumber:268 description:@"Lookup table is the wrong size."];
  }
}

@end