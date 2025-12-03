@interface STKPreDeclare
+ (id)createEmojiStrikeWithImage:(CGImage *)image metadata:(id)metadata;
+ (id)descriptionForAvatarWithRecord:(id)record includeVideoPrefix:(BOOL)prefix;
+ (void)clearActiveKBForwardingInputDelegateAndResign:(BOOL)resign;
+ (void)setRestoresToEmojiInputMode;
@end

@implementation STKPreDeclare

+ (void)clearActiveKBForwardingInputDelegateAndResign:(BOOL)resign
{
  resignCopy = resign;
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  [activeInstance clearForwardingInputDelegateAndResign:resignCopy];
}

+ (void)setRestoresToEmojiInputMode
{
  mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    mEMORY[0x1E69DCBE0]2 = [MEMORY[0x1E69DCBE0] sharedInstance];
    [mEMORY[0x1E69DCBE0]2 setRestoresToEmojiInputMode];
  }
}

+ (id)createEmojiStrikeWithImage:(CGImage *)image metadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [objc_opt_class() instancesRespondToSelector:sel_initWithImage_imageProperties_];
  v7 = objc_alloc(MEMORY[0x1E69655E8]);
  if (v6)
  {
    v8 = [v7 initWithImage:image imageProperties:metadataCopy];
  }

  else
  {
    v8 = [v7 initWithImage:image alignmentInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  }

  v9 = v8;

  return v9;
}

+ (id)descriptionForAvatarWithRecord:(id)record includeVideoPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  recordCopy = record;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = getAXUIAvatarUtilitiesClass_softClass;
  v14 = getAXUIAvatarUtilitiesClass_softClass;
  if (!getAXUIAvatarUtilitiesClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getAXUIAvatarUtilitiesClass_block_invoke;
    v10[3] = &unk_1E751A2E8;
    v10[4] = &v11;
    __getAXUIAvatarUtilitiesClass_block_invoke(v10);
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = [v6 descriptionForAvatarWithRecord:recordCopy includeVideoPrefix:prefixCopy];

  return v8;
}

@end