@interface AAAppStateProvider
+ (id)appStateForBundleID:(id)d;
@end

@implementation AAAppStateProvider

+ (id)appStateForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc(MEMORY[0x29EDB93F8]);
    v18 = 0;
    v6 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v4, v5, dCopy, 1, &v18);
    v9 = v6;
    if (v6)
    {
      v10 = objc_msgSend_applicationState(v6, v7, v8);
      isRestricted = objc_msgSend_isRestricted(v10, v11, v12);

      v9 = 1;
    }

    else
    {
      isRestricted = 0;
    }
  }

  else
  {
    isRestricted = 0;
    v9 = 0;
  }

  v14 = [AAAppState alloc];
  v16 = objc_msgSend_initWithInstalled_isRestricted_(v14, v15, v9, isRestricted);

  return v16;
}

@end