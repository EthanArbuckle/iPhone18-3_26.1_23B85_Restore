@interface PKPassKitSwiftUIObjcBridge
+ (BOOL)checkPassID:(id)a3 pass:(id)a4;
+ (BOOL)didAddPasses:(id)a3;
+ (BOOL)passbookHasBeenDeleted;
+ (CGSize)passContentSize:(CGSize)a3;
+ (id)appBundleIdentifer;
+ (id)dynamicPaymentButtonForPaymentRequest:(id)a3 style:(int64_t)a4 size:(CGSize)a5 type:(int64_t)a6 interfaceStyle:(int64_t)a7;
+ (id)dynamicPaymentButtonForType:(int64_t)a3 style:(int64_t)a4 size:(CGSize)a5 interfaceStyle:(int64_t)a6 action:(id)a7;
+ (id)paymentPassForUniqueID:(id)a3;
+ (id)sanitizedDeviceAccountNumberForPass:(id)a3;
+ (id)sanitizedPrimaryAccountRepresentationForPass:(id)a3;
+ (id)uiImageFromPDF:(id)a3 size:(CGSize)a4 scaleFactor:(double)a5;
+ (void)signpostIntervalBeginRenderSimpleButtonEvent;
+ (void)signpostIntervalEndRenderSimpleButtonEvent;
@end

@implementation PKPassKitSwiftUIObjcBridge

+ (BOOL)didAddPasses:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 succeeded];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)passbookHasBeenDeleted
{
  v2 = [MEMORY[0x277D37FC8] sharedInstance];
  v3 = [v2 passbookHasBeenDeleted];

  return v3;
}

+ (id)uiImageFromPDF:(id)a3 size:(CGSize)a4 scaleFactor:(double)a5
{
  v5 = a3;
  PKUIScreenScale();
  v6 = PKUIImageFromPDF();

  return v6;
}

+ (id)sanitizedDeviceAccountNumberForPass:(id)a3
{
  v3 = [a3 paymentPass];
  v4 = PKSanitizedDeviceAccountNumberForPass();

  return v4;
}

+ (id)dynamicPaymentButtonForPaymentRequest:(id)a3 style:(int64_t)a4 size:(CGSize)a5 type:(int64_t)a6 interfaceStyle:(int64_t)a7
{
  height = a5.height;
  width = a5.width;
  v12 = MEMORY[0x277D38B38];
  v13 = a3;
  v14 = [[v12 alloc] initWithSize:a4 style:a6 type:a7 interfaceStyle:v13 request:0 action:{width, height}];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v14;
}

+ (id)dynamicPaymentButtonForType:(int64_t)a3 style:(int64_t)a4 size:(CGSize)a5 interfaceStyle:(int64_t)a6 action:(id)a7
{
  height = a5.height;
  width = a5.width;
  v12 = MEMORY[0x277D38B38];
  v13 = a7;
  v14 = [[v12 alloc] initWithSize:a4 style:a3 type:a6 interfaceStyle:0 request:v13 action:{width, height}];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v14;
}

+ (id)paymentPassForUniqueID:(id)a3
{
  v3 = MEMORY[0x277D37FC8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 passWithUniqueID:v4];

  v7 = [v6 paymentPass];

  return v7;
}

+ (BOOL)checkPassID:(id)a3 pass:(id)a4
{
  v5 = a3;
  v6 = [a4 uniqueID];
  v7 = [v5 uniqueID];

  return v6 == v7;
}

+ (CGSize)passContentSize:(CGSize)a3
{
  v3 = PKPassFrontFaceContentSize();

  MEMORY[0x282198540](v3);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)sanitizedPrimaryAccountRepresentationForPass:(id)a3
{
  v3 = [a3 paymentPass];
  v4 = PKSanitizedPrimaryAccountRepresentationForPass();

  return v4;
}

+ (void)signpostIntervalBeginRenderSimpleButtonEvent
{
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_signpost_id_make_with_pointer(v3, a1);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_23B7DF000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "paymentbuttons:renderSimpleButton", "", v6, 2u);
    }
  }
}

+ (void)signpostIntervalEndRenderSimpleButtonEvent
{
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_signpost_id_make_with_pointer(v3, a1);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_23B7DF000, v3, OS_SIGNPOST_INTERVAL_END, v5, "paymentbuttons:renderSimpleButton", "", v6, 2u);
    }
  }
}

+ (id)appBundleIdentifer
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end