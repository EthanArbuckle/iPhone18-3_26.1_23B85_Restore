@interface UIView(FindFirstResponder)
- (id)findFirstResponder;
@end

@implementation UIView(FindFirstResponder)

- (id)findFirstResponder
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1 isFirstResponder])
  {
    v2 = a1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [a1 subviews];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) findFirstResponder];
          if (v8)
          {
            v2 = v8;

            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
  }

LABEL_13:

  return v2;
}

@end