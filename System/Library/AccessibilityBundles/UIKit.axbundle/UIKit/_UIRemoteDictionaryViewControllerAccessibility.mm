@interface _UIRemoteDictionaryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleDownloadButton:(id)button;
@end

@implementation _UIRemoteDictionaryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = "@";
  v3 = @"_UIRemoteDictionaryViewController";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"_handleDownloadButton:" withFullSignature:{"v", v4, 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_availableDictionaries" withType:"NSArray"];
  [location[0] validateClass:@"_UIDefinitionDictionary" hasInstanceVariable:@"_rawAsset" withType:"MAAsset"];
  [location[0] validateClass:@"ASAsset" hasInstanceMethod:@"attributes" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, v5);
}

- (void)_handleDownloadButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v3.receiver = selfCopy;
  v3.super_class = _UIRemoteDictionaryViewControllerAccessibility;
  [(_UIRemoteDictionaryViewControllerAccessibility *)&v3 _handleDownloadButton:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v44 = 0;
  objc_storeStrong(&v44, path);
  v42.receiver = selfCopy;
  v42.super_class = _UIRemoteDictionaryViewControllerAccessibility;
  v43 = [(_UIRemoteDictionaryViewControllerAccessibility *)&v42 tableView:location[0] cellForRowAtIndexPath:v44];
  v40[1] = MEMORY[0x29EDCA5F8];
  v40[2] = 3221225472;
  v40[3] = __82___UIRemoteDictionaryViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke;
  v40[4] = &unk_29F30C7C8;
  v41 = MEMORY[0x29EDC9748](v43);
  AXPerformSafeBlock();
  v39 = 0;
  objc_opt_class();
  v11 = [(_UIRemoteDictionaryViewControllerAccessibility *)selfCopy safeValueForKey:@"_availableDictionaries"];
  v38 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v11);
  v37 = MEMORY[0x29EDC9748](v38);
  objc_storeStrong(&v38, 0);
  v40[0] = v37;
  v35 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__31;
  v32 = __Block_byref_object_dispose__31;
  v33 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = -1073741824;
  v22 = 0;
  v23 = __82___UIRemoteDictionaryViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_360;
  v24 = &unk_29F30C860;
  v26[1] = &v27;
  v25 = MEMORY[0x29EDC9748](v37);
  v26[0] = MEMORY[0x29EDC9748](v44);
  AXPerformSafeBlock();
  v19 = MEMORY[0x29EDC9748](v28[5]);
  objc_storeStrong(v26, 0);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  v34 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v19);
  if (v35)
  {
    abort();
  }

  v18 = MEMORY[0x29EDC9748](v34);
  objc_storeStrong(&v34, 0);
  v36 = v18;
  v16 = 0;
  v9 = [v18 safeValueForKey:@"_rawAsset"];
  v15 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v9);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  attributes = [v14 attributes];
  v13 = [attributes objectForKey:@"IndexLanguages"];
  *&v4 = MEMORY[0x29EDC9740](attributes).n128_u64[0];
  firstObject = [v13 firstObject];
  detailTextLabel = [v43 detailTextLabel];
  [detailTextLabel setAccessibilityLanguage:firstObject];
  MEMORY[0x29EDC9740](detailTextLabel);
  v8 = MEMORY[0x29EDC9748](v43);
  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);

  return v8;
}

@end