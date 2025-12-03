@interface UICGPDFListContainerAccessibilityElement
- (CGRect)accessibilityFrame;
@end

@implementation UICGPDFListContainerAccessibilityElement

- (CGRect)accessibilityFrame
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDB90D8];
  v3 = *(MEMORY[0x29EDB90D8] + 8);
  v4 = *(MEMORY[0x29EDB90D8] + 16);
  v5 = *(MEMORY[0x29EDB90D8] + 24);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  accessibilityElements = [(UICGPDFListContainerAccessibilityElement *)self accessibilityElements];
  v7 = [accessibilityElements countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(accessibilityElements);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v35.origin.x = v13;
        v35.origin.y = v12;
        v35.size.width = v11;
        v35.size.height = v10;
        v38.origin.x = v2;
        v38.origin.y = v3;
        v38.size.width = v4;
        v38.size.height = v5;
        v16 = CGRectEqualToRect(v35, v38);
        [v15 accessibilityFrame];
        v21 = v17;
        v22 = v18;
        v23 = v19;
        v24 = v20;
        if (!v16)
        {
          v36.origin.x = v13;
          v36.origin.y = v12;
          v36.size.width = v11;
          v36.size.height = v10;
          *&v17 = CGRectUnion(v36, *&v21);
        }

        v13 = v17;
        v12 = v18;
        v11 = v19;
        v10 = v20;
      }

      v8 = [accessibilityElements countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
  }

  v25 = v13;
  v26 = v12;
  v27 = v11;
  v28 = v10;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

@end