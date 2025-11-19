@interface SBHProxiedApplicationPlaceholderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SBHProxiedApplicationPlaceholderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"icon:statusDescriptionForLocation:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"FBSApplicationPlaceholder" hasInstanceMethod:@"progress" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"FBSApplicationPlaceholderProgress" hasRequiredInstanceMethod:@"percentComplete"];
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"placeholderProxy" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"isFailed" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"isPausable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"isPaused" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"isDownloading" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHProxiedApplicationPlaceholder" hasInstanceMethod:@"applicationDisplayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SBHProxiedApplicationPlaceholderAccessibility *)self safeValueForKey:@"applicationDisplayName"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  AXPerformSafeBlock();
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  v4 = __UIAXStringForVariables();

  return v4;
}

void __67__SBHProxiedApplicationPlaceholderAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getSBIconLocationNoneSymbolLoc_ptr;
  v12 = getSBIconLocationNoneSymbolLoc_ptr;
  if (!getSBIconLocationNoneSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __getSBIconLocationNoneSymbolLoc_block_invoke;
    v8[3] = &unk_29F3001E0;
    v8[4] = &v9;
    __getSBIconLocationNoneSymbolLoc_block_invoke(v8);
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
    __67__SBHProxiedApplicationPlaceholderAccessibility_accessibilityLabel__block_invoke_cold_1();
  }

  v4 = *v3;
  v5 = [v2 icon:0 statusDescriptionForLocation:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)accessibilityValue
{
  v3 = [(SBHProxiedApplicationPlaceholderAccessibility *)self safeValueForKey:@"placeholderProxy"];
  v4 = [v3 safeValueForKey:@"progress"];
  [v4 safeDoubleForKey:@"percentComplete"];
  v6 = v5;

  v7 = [(SBHProxiedApplicationPlaceholderAccessibility *)self safeBoolForKey:@"isDownloading"];
  v8 = 0;
  if (v7 && v6 > 0.0)
  {
    v9 = v6;
    v8 = MEMORY[0x29ED38780](0, v9);
  }

  return v8;
}

- (id)accessibilityHint
{
  v3 = AXSBHIconManagerFromSharedIconController();
  v4 = [v3 safeBoolForKey:@"isEditing"];

  if (v4)
  {
    goto LABEL_2;
  }

  if (([(SBHProxiedApplicationPlaceholderAccessibility *)self safeBoolForKey:@"isFailed"]& 1) != 0 || ([(SBHProxiedApplicationPlaceholderAccessibility *)self safeBoolForKey:@"isPaused"]& 1) != 0)
  {
    v6 = @"app.icon.resume.download.hint";
  }

  else
  {
    if (![(SBHProxiedApplicationPlaceholderAccessibility *)self safeBoolForKey:@"isPausable"])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_7;
    }

    v6 = @"app.icon.pause.download.hint";
  }

  v5 = accessibilityLocalizedString(v6);
LABEL_7:

  return v5;
}

void __67__SBHProxiedApplicationPlaceholderAccessibility_accessibilityLabel__block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationNone(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBHProxiedApplicationPlaceholderAccessibility.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end