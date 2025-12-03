@interface UIView(WKUIViewUtilities)
- (void)_web_setSubviews:()WKUIViewUtilities;
@end

@implementation UIView(WKUIViewUtilities)

- (void)_web_setSubviews:()WKUIViewUtilities
{
  v5 = [objc_msgSend(self "subviews")];
  v6 = [a3 count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [a3 objectAtIndex:i];
      if (i >= v5 || [objc_msgSend(self "subviews")] != v8)
      {
        [self insertSubview:v8 atIndex:i];
      }
    }
  }

  v9 = [objc_msgSend(self "subviews")];
  if (v6 < v9)
  {
    v12 = 0;
    do
    {
      v10 = [objc_msgSend(self "subviews")];
      if ([v10 conformsToProtocol:&unk_1F11B3730])
      {
        v11 = v12;
        if (!v12)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v12 = v11;
        [v11 addObject:v10];
      }

      ++v6;
    }

    while (v9 != v6);
    if (v12)
    {
      [v12 makeObjectsPerformSelector:sel_removeFromSuperview];
    }
  }
}

@end