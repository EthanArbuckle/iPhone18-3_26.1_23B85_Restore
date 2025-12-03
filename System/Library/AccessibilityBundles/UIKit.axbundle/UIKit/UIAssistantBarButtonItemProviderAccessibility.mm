@interface UIAssistantBarButtonItemProviderAccessibility
+ (id)actionForInputMode:(id)mode;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation UIAssistantBarButtonItemProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIAssistantBarButtonItemProvider" hasClassMethod:@"actionForInputMode:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

+ (id)actionForInputMode:(id)mode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mode);
  v14.receiver = selfCopy;
  v14.super_class = &OBJC_METACLASS___UIAssistantBarButtonItemProviderAccessibility;
  v15 = objc_msgSendSuper2(&v14, sel_actionForInputMode_, location[0]);
  title = [v15 title];
  if ([title length])
  {
    v7 = MEMORY[0x29ED3DC40](location[0]);
    v12 = MEMORY[0x29ED3DB20]();
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v11 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{title, v3}];
    v10 = v11;
    v8 = v12;
    v9 = *MEMORY[0x29EDBD918];
    v4 = [title length];
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
  objc_storeStrong(&title, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end