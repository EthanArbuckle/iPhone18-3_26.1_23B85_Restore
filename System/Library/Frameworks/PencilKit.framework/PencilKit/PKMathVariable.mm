@interface PKMathVariable
+ (id)variablesForTokens:(void *)tokens item:;
@end

@implementation PKMathVariable

+ (id)variablesForTokens:(void *)tokens item:
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  tokensCopy = tokens;
  objc_opt_self();
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        if ([v11 type] == 1)
        {
          expression = [tokensCopy expression];
          characterRange = [v11 characterRange];
          if (characterRange + v14 <= [expression length])
          {
            characterRange2 = [v11 characterRange];
            v15 = [expression substringWithRange:{characterRange2, v17}];
            v18 = objc_opt_new();
            [v15 doubleValue];
            if (v18)
            {
              *(v18 + 24) = v19;
            }

            uUID = [MEMORY[0x1E696AFB0] UUID];
            v21 = uUID;
            if (v18)
            {
              objc_storeStrong((v18 + 8), uUID);

              *(v18 + 40) = [v11 characterRange];
              *(v18 + 48) = v22;
            }

            else
            {

              [v11 characterRange];
            }

            characterRange3 = [v11 characterRange];
            v25 = [(PKMathRecognitionItem *)tokensCopy _strokeIndexesForCharacterRange:characterRange3, v24];
            if (v18)
            {
              objc_storeStrong((v18 + 32), v25);
            }

            [array addObject:v18];
          }

          else
          {
            v15 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Invalid character range detected for token", buf, 2u);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v26 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v8 = v26;
    }

    while (v26);
  }

  v27 = [array copy];

  return v27;
}

@end