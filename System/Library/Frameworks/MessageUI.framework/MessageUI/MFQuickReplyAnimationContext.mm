@interface MFQuickReplyAnimationContext
+ (OS_os_log)log;
- (MFQuickReplyAnimationContext)initWithInsets:(UIEdgeInsets)insets cornerRadius:(double)radius compositionSnapshot:(id)snapshot buttonsSnapshot:(id)buttonsSnapshot backgroundSnapshot:(id)backgroundSnapshot;
- (UIEdgeInsets)insets;
@end

@implementation MFQuickReplyAnimationContext

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFQuickReplyAnimationContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (MFQuickReplyAnimationContext)initWithInsets:(UIEdgeInsets)insets cornerRadius:(double)radius compositionSnapshot:(id)snapshot buttonsSnapshot:(id)buttonsSnapshot backgroundSnapshot:(id)backgroundSnapshot
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  snapshotCopy = snapshot;
  buttonsSnapshotCopy = buttonsSnapshot;
  backgroundSnapshotCopy = backgroundSnapshot;
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
    v19->_cornerRadius = radius;
    objc_storeStrong(&v19->_compositionSnapshot, snapshot);
    objc_storeStrong(&v20->_buttonsSnapshot, buttonsSnapshot);
    objc_storeStrong(&v20->_backgroundSnapshot, backgroundSnapshot);
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