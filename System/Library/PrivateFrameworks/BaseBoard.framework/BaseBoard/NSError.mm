@interface NSError
@end

@implementation NSError

void __60__NSError_BaseBoard__descriptionBuilderWithMultilinePrefix___block_invoke()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E696A580], *MEMORY[0x1E696A588], @"BSErrorCodeDescription", *MEMORY[0x1E696AA08], *MEMORY[0x1E696A750], @"NSDetailedErrors", 0}];
  v1 = _MergedGlobals_23;
  _MergedGlobals_23 = v0;
}

void __60__NSError_BaseBoard__descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [*(a1 + 40) objectForKey:{v6, v16}];
        v8 = _NSIsNSArray();
        v9 = *(a1 + 48);
        if (v8)
        {
          [v9 appendArraySection:v7 withName:v6 skipIfEmpty:1];
        }

        else
        {
          v10 = [v9 appendObject:v7 withName:v6 skipIfNil:1];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = (a1 + 56);
  v12 = [*(a1 + 56) count];
  v13 = *(a1 + 48);
  if (v12 == 1)
  {
    v14 = [*v11 firstObject];
    v15 = [v13 appendObject:v14 withName:*MEMORY[0x1E696AA08]];
  }

  else
  {
    [v13 appendCollectionSection:*v11 withName:*MEMORY[0x1E696A750] skipIfEmpty:1];
  }
}

@end