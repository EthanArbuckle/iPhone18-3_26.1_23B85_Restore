@interface PKPassKitSwiftUIObjcBridge
+ (BOOL)checkPassID:(id)d pass:(id)pass;
+ (BOOL)didAddPasses:(id)passes;
+ (BOOL)passbookHasBeenDeleted;
+ (CGSize)passContentSize:(CGSize)size;
+ (id)appBundleIdentifer;
+ (id)dynamicPaymentButtonForPaymentRequest:(id)request style:(int64_t)style size:(CGSize)size type:(int64_t)type interfaceStyle:(int64_t)interfaceStyle;
+ (id)dynamicPaymentButtonForType:(int64_t)type style:(int64_t)style size:(CGSize)size interfaceStyle:(int64_t)interfaceStyle action:(id)action;
+ (id)paymentPassForUniqueID:(id)d;
+ (id)sanitizedDeviceAccountNumberForPass:(id)pass;
+ (id)sanitizedPrimaryAccountRepresentationForPass:(id)pass;
+ (id)uiImageFromPDF:(id)f size:(CGSize)size scaleFactor:(double)factor;
+ (void)signpostIntervalBeginRenderSimpleButtonEvent;
+ (void)signpostIntervalEndRenderSimpleButtonEvent;
@end

@implementation PKPassKitSwiftUIObjcBridge

+ (BOOL)didAddPasses:(id)passes
{
  passesCopy = passes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    succeeded = [passesCopy succeeded];
  }

  else
  {
    succeeded = 0;
  }

  return succeeded;
}

+ (BOOL)passbookHasBeenDeleted
{
  mEMORY[0x277D37FC8] = [MEMORY[0x277D37FC8] sharedInstance];
  passbookHasBeenDeleted = [mEMORY[0x277D37FC8] passbookHasBeenDeleted];

  return passbookHasBeenDeleted;
}

+ (id)uiImageFromPDF:(id)f size:(CGSize)size scaleFactor:(double)factor
{
  fCopy = f;
  PKUIScreenScale();
  v6 = PKUIImageFromPDF();

  return v6;
}

+ (id)sanitizedDeviceAccountNumberForPass:(id)pass
{
  paymentPass = [pass paymentPass];
  v4 = PKSanitizedDeviceAccountNumberForPass();

  return v4;
}

+ (id)dynamicPaymentButtonForPaymentRequest:(id)request style:(int64_t)style size:(CGSize)size type:(int64_t)type interfaceStyle:(int64_t)interfaceStyle
{
  height = size.height;
  width = size.width;
  v12 = MEMORY[0x277D38B38];
  requestCopy = request;
  v14 = [[v12 alloc] initWithSize:style style:type type:interfaceStyle interfaceStyle:requestCopy request:0 action:{width, height}];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v14;
}

+ (id)dynamicPaymentButtonForType:(int64_t)type style:(int64_t)style size:(CGSize)size interfaceStyle:(int64_t)interfaceStyle action:(id)action
{
  height = size.height;
  width = size.width;
  v12 = MEMORY[0x277D38B38];
  actionCopy = action;
  v14 = [[v12 alloc] initWithSize:style style:type type:interfaceStyle interfaceStyle:0 request:actionCopy action:{width, height}];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v14;
}

+ (id)paymentPassForUniqueID:(id)d
{
  v3 = MEMORY[0x277D37FC8];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance passWithUniqueID:dCopy];

  paymentPass = [v6 paymentPass];

  return paymentPass;
}

+ (BOOL)checkPassID:(id)d pass:(id)pass
{
  dCopy = d;
  uniqueID = [pass uniqueID];
  uniqueID2 = [dCopy uniqueID];

  return uniqueID == uniqueID2;
}

+ (CGSize)passContentSize:(CGSize)size
{
  v3 = PKPassFrontFaceContentSize();

  MEMORY[0x282198540](v3);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)sanitizedPrimaryAccountRepresentationForPass:(id)pass
{
  paymentPass = [pass paymentPass];
  v4 = PKSanitizedPrimaryAccountRepresentationForPass();

  return v4;
}

+ (void)signpostIntervalBeginRenderSimpleButtonEvent
{
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_signpost_id_make_with_pointer(v3, self);
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
  v4 = os_signpost_id_make_with_pointer(v3, self);
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

@end