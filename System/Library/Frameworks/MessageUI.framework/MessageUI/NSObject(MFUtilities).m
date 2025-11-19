@interface NSObject(MFUtilities)
- (id)mf_objectWithHighest:()MFUtilities;
@end

@implementation NSObject(MFUtilities)

- (id)mf_objectWithHighest:()MFUtilities
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a1;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    v9 = NAN;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v16 = 0;
      v4[2](v4, v11, &v16);
      if (v16)
      {
        break;
      }

      v13 = v12;
      if (!v6 || v12 > v9)
      {
        v14 = v11;

        v9 = v13;
        v6 = v14;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v6;
}

@end