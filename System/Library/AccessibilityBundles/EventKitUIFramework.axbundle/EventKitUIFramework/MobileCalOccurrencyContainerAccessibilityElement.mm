@interface MobileCalOccurrencyContainerAccessibilityElement
- (CGRect)accessibilityFrame;
- (void)dealloc;
@end

@implementation MobileCalOccurrencyContainerAccessibilityElement

- (void)dealloc
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = [(MobileCalOccurrencyContainerAccessibilityElement *)self children];
  v4 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v10 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = MobileCalOccurrencyContainerAccessibilityElement;
  [(MobileCalOccurrencyContainerAccessibilityElement *)&v9 dealloc];
  v8 = *MEMORY[0x29EDCA608];
}

- (CGRect)accessibilityFrame
{
  children = [(MobileCalOccurrencyContainerAccessibilityElement *)self children];
  lastObject = [children lastObject];
  [lastObject accessibilityFrame];
  x = v5;
  y = v7;
  width = v9;
  height = v11;

  children2 = [(MobileCalOccurrencyContainerAccessibilityElement *)self children];
  v14 = [children2 count] - 2;

  if ((v14 & 0x8000000000000000) == 0)
  {
    do
    {
      children3 = [(MobileCalOccurrencyContainerAccessibilityElement *)self children];
      v16 = [children3 objectAtIndex:v14];
      [v16 accessibilityFrame];
      v28.origin.x = v17;
      v28.origin.y = v18;
      v28.size.width = v19;
      v28.size.height = v20;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v26 = CGRectUnion(v25, v28);
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;

      --v14;
    }

    while (v14 != -1);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end