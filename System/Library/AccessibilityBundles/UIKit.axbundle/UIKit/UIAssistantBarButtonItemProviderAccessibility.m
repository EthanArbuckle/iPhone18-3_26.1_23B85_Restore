@interface UIAssistantBarButtonItemProviderAccessibility
+ (id)actionForInputMode:(id)a3;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation UIAssistantBarButtonItemProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIAssistantBarButtonItemProvider" hasClassMethod:@"actionForInputMode:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

+ (id)actionForInputMode:(id)a3
{
  v17 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14.receiver = v17;
  v14.super_class = &OBJC_METACLASS___UIAssistantBarButtonItemProviderAccessibility;
  v15 = objc_msgSendSuper2(&v14, sel_actionForInputMode_, location[0]);
  v13 = [v15 title];
  if ([v13 length])
  {
    v7 = MEMORY[0x29ED3DC40](location[0]);
    v12 = MEMORY[0x29ED3DB20]();
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v11 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v13, v3}];
    v10 = v11;
    v8 = v12;
    v9 = *MEMORY[0x29EDBD918];
    v4 = [v13 length];
    v19 = 0;
    v18 = v4;
    v20 = 0;
    v21 = v4;
    [v10 setAttribute:v8 forKey:v9 withRange:{0, v4}];
    [v15 setAccessibilityLabel:v11];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  v6 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end