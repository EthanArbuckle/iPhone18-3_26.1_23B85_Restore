@interface NSString(LSVisualOrderingAdditions)
- (id)ls_visuallyOrderCharactersReturningError:()LSVisualOrderingAdditions;
@end

@implementation NSString(LSVisualOrderingAdditions)

- (id)ls_visuallyOrderCharactersReturningError:()LSVisualOrderingAdditions
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__21;
  v12 = __Block_byref_object_dispose__21;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__NSString_LSVisualOrderingAdditions__ls_visuallyOrderCharactersReturningError___block_invoke;
  v7[3] = &unk_1E6A1BF48;
  v7[4] = &v14;
  v7[5] = &v8;
  _LSDNCWithCharacters(a1, v7);
  v4 = v15[5];
  if (a3 && !v4)
  {
    *a3 = v9[5];
    v4 = v15[5];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

@end