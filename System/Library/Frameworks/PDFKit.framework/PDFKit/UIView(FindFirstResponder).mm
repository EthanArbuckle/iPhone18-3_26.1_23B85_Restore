@interface UIView(FindFirstResponder)
- (id)findFirstResponder;
@end

@implementation UIView(FindFirstResponder)

- (id)findFirstResponder
{
  v15 = *MEMORY[0x1E69E9840];
  if ([self isFirstResponder])
  {
    selfCopy = self;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subviews = [self subviews];
    v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(subviews);
          }

          findFirstResponder = [*(*(&v10 + 1) + 8 * i) findFirstResponder];
          if (findFirstResponder)
          {
            selfCopy = findFirstResponder;

            goto LABEL_13;
          }
        }

        v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

@end