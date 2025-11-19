@interface STKPreDeclare
+ (id)createEmojiStrikeWithImage:(CGImage *)a3 metadata:(id)a4;
+ (id)descriptionForAvatarWithRecord:(id)a3 includeVideoPrefix:(BOOL)a4;
+ (void)clearActiveKBForwardingInputDelegateAndResign:(BOOL)a3;
+ (void)setRestoresToEmojiInputMode;
@end

@implementation STKPreDeclare

+ (void)clearActiveKBForwardingInputDelegateAndResign:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v4 clearForwardingInputDelegateAndResign:v3];
}

+ (void)setRestoresToEmojiInputMode
{
  v2 = [MEMORY[0x1E69DCBE0] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x1E69DCBE0] sharedInstance];
    [v4 setRestoresToEmojiInputMode];
  }
}

+ (id)createEmojiStrikeWithImage:(CGImage *)a3 metadata:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() instancesRespondToSelector:sel_initWithImage_imageProperties_];
  v7 = objc_alloc(MEMORY[0x1E69655E8]);
  if (v6)
  {
    v8 = [v7 initWithImage:a3 imageProperties:v5];
  }

  else
  {
    v8 = [v7 initWithImage:a3 alignmentInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  }

  v9 = v8;

  return v9;
}

+ (id)descriptionForAvatarWithRecord:(id)a3 includeVideoPrefix:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
  v8 = [v6 descriptionForAvatarWithRecord:v5 includeVideoPrefix:v4];

  return v8;
}

@end