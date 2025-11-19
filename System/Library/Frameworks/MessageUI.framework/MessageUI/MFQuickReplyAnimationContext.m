@interface MFQuickReplyAnimationContext
+ (OS_os_log)log;
- (MFQuickReplyAnimationContext)initWithInsets:(UIEdgeInsets)a3 cornerRadius:(double)a4 compositionSnapshot:(id)a5 buttonsSnapshot:(id)a6 backgroundSnapshot:(id)a7;
- (UIEdgeInsets)insets;
@end

@implementation MFQuickReplyAnimationContext

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFQuickReplyAnimationContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_11 != -1)
  {
    dispatch_once(&log_onceToken_11, block);
  }

  v2 = log_log_11;

  return v2;
}

void __35__MFQuickReplyAnimationContext_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_11;
  log_log_11 = v1;
}

- (MFQuickReplyAnimationContext)initWithInsets:(UIEdgeInsets)a3 cornerRadius:(double)a4 compositionSnapshot:(id)a5 buttonsSnapshot:(id)a6 backgroundSnapshot:(id)a7
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = MFQuickReplyAnimationContext;
  v19 = [(MFQuickReplyAnimationContext *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_insets.top = top;
    v19->_insets.left = left;
    v19->_insets.bottom = bottom;
    v19->_insets.right = right;
    v19->_cornerRadius = a4;
    objc_storeStrong(&v19->_compositionSnapshot, a5);
    objc_storeStrong(&v20->_buttonsSnapshot, a6);
    objc_storeStrong(&v20->_backgroundSnapshot, a7);
  }

  return v20;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end