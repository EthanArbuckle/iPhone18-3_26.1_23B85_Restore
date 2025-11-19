@interface MFMessageContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MFMessageContentViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)generateSnapshotImageWithCompletion:(id)a3;
@end

@implementation MFMessageContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFMessageContentView" hasInstanceMethod:@"webView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"MFMessageContentView" hasInstanceMethod:@"generateSnapshotImageWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"MFMessageContentView" isKindOfClass:@"UIView"];
}

- (MFMessageContentViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MFMessageContentViewAccessibility;
  v3 = [(MFMessageContentViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MFMessageContentViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)generateSnapshotImageWithCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __73__MFMessageContentViewAccessibility_generateSnapshotImageWithCompletion___block_invoke;
  v8[3] = &unk_29F2D4198;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x29C2DFCD0](v8);
  v7.receiver = self;
  v7.super_class = MFMessageContentViewAccessibility;
  [(MFMessageContentViewAccessibility *)&v7 generateSnapshotImageWithCompletion:v6];
}

void __73__MFMessageContentViewAccessibility_generateSnapshotImageWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  [v4 setIncludeWindowlessViews:1];
  [v4 setSorted:0];
  v5 = [objc_alloc(MEMORY[0x29EDC7338]) initWithRootElement:*(a1 + 32) traversalOptions:v4];
  [v5 setShouldResolveRemoteElements:1];
  v10 = 0;
  v6 = [v5 encodeWithError:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = AXLogAppAccessibility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__MFMessageContentViewAccessibility_generateSnapshotImageWithCompletion___block_invoke_cold_1(v7, v8);
    }
  }

  [v3 _setAccessibilityEncodedHierarchyData:v6];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MFMessageContentViewAccessibility;
  [(MFMessageContentViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(MFMessageContentViewAccessibility *)self safeValueForKey:@"webView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 scrollView];
  [v5 accessibilitySetIdentification:@"kAXMailContentViewWebViewIdentifier"];
}

void __73__MFMessageContentViewAccessibility_generateSnapshotImageWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BF99000, a2, OS_LOG_TYPE_ERROR, "Could not encode ax hierarchy for mail snapshot. %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end