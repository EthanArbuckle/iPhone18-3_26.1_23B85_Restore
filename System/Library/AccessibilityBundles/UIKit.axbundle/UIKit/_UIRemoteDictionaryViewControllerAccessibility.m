@interface _UIRemoteDictionaryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_handleDownloadButton:(id)a3;
@end

@implementation _UIRemoteDictionaryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = "@";
  v3 = @"_UIRemoteDictionaryViewController";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"_handleDownloadButton:" withFullSignature:{"v", v4, 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_availableDictionaries" withType:"NSArray"];
  [location[0] validateClass:@"_UIDefinitionDictionary" hasInstanceVariable:@"_rawAsset" withType:"MAAsset"];
  [location[0] validateClass:@"ASAsset" hasInstanceMethod:@"attributes" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, v5);
}

- (void)_handleDownloadButton:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIRemoteDictionaryViewControllerAccessibility;
  [(_UIRemoteDictionaryViewControllerAccessibility *)&v3 _handleDownloadButton:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v42.receiver = v46;
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
  v11 = [(_UIRemoteDictionaryViewControllerAccessibility *)v46 safeValueForKey:@"_availableDictionaries"];
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
  v6 = [v14 attributes];
  v13 = [v6 objectForKey:@"IndexLanguages"];
  *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v12 = [v13 firstObject];
  v7 = [v43 detailTextLabel];
  [v7 setAccessibilityLanguage:v12];
  MEMORY[0x29EDC9740](v7);
  v8 = MEMORY[0x29EDC9748](v43);
  objc_storeStrong(&v12, 0);
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