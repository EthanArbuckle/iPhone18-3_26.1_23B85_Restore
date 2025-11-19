@interface CHCompanionHealthPlugin
- (id)extensionForProfile:(id)a3;
- (id)taskServerClasses;
@end

@implementation CHCompanionHealthPlugin

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if (objc_msgSend_profileType(v3, v4, v5) == 1)
  {
    v6 = [CHCompanionHealthProfileExtension alloc];
    v8 = objc_msgSend_initWithProfile_(v6, v7, v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)taskServerClasses
{
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v2, v6, 1);
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

@end