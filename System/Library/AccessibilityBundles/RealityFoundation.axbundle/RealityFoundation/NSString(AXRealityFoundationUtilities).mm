@interface NSString(AXRealityFoundationUtilities)
- (void)_accessibilityEnumerateDelayedDescriptionsWithBlock:()AXRealityFoundationUtilities;
@end

@implementation NSString(AXRealityFoundationUtilities)

- (void)_accessibilityEnumerateDelayedDescriptionsWithBlock:()AXRealityFoundationUtilities
{
  v4 = a3;
  if (_accessibilityEnumerateDelayedDescriptionsWithBlock__onceToken != -1)
  {
    [NSString(AXRealityFoundationUtilities) _accessibilityEnumerateDelayedDescriptionsWithBlock:];
  }

  if (_accessibilityEnumerateDelayedDescriptionsWithBlock__regex)
  {
    selfCopy = self;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v6 = _accessibilityEnumerateDelayedDescriptionsWithBlock__regex;
    v7 = [selfCopy length];
    v13 = MEMORY[0x29EDCA5F8];
    v14 = 3221225472;
    v15 = __94__NSString_AXRealityFoundationUtilities___accessibilityEnumerateDelayedDescriptionsWithBlock___block_invoke_284;
    v16 = &unk_29F2F13E0;
    v8 = selfCopy;
    v17 = v8;
    v19 = &v21;
    v9 = v4;
    v18 = v9;
    v20 = &v25;
    [v6 enumerateMatchesInString:v8 options:0 range:0 usingBlock:{v7, &v13}];
    v10 = v22[3];
    v11 = [v8 length];
    v12 = [v8 substringWithRange:{v10, v11 - v22[3]}];
    if ([v12 length])
    {
      (*(v9 + 2))(v9, v12, v26[3]);
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    (*(v4 + 2))(v4, self, 0.0);
  }
}

@end