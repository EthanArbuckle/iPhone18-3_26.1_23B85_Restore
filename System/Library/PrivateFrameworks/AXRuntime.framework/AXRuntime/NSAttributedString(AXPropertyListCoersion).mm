@interface NSAttributedString(AXPropertyListCoersion)
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion;
- (uint64_t)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion;
@end

@implementation NSAttributedString(AXPropertyListCoersion)

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion
{
  v22[3] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v6 = [self length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__NSAttributedString_AXPropertyListCoersion___axRecursivelyPropertyListCoercedRepresentationWithError___block_invoke;
  v12[3] = &unk_1E80D4780;
  v14 = &v15;
  v7 = array;
  v13 = v7;
  [self enumerateAttributesInRange:0 options:v6 usingBlock:{0, v12}];
  v8 = v16[5];
  if (v8)
  {
    v9 = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    v21[0] = @"String";
    string = [self string];
    v22[0] = string;
    v22[1] = v7;
    v21[1] = @"Attrl";
    v21[2] = @"SmugType";
    v22[2] = AXSerializeSmuggledTypeAttributedString;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  }

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (uint64_t)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
  }

  return 0;
}

@end