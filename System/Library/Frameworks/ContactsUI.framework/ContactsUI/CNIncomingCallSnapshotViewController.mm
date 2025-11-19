@interface CNIncomingCallSnapshotViewController
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 window:(id)a4;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 window:(id)a4;
+ (id)posterDisplayNameComponentsForContact:(id)a3;
+ (int64_t)styleIncludingCallButtons:(BOOL)a3 canShowPoster:(BOOL)a4;
+ (void)incomingCallAvatarSnapshotForAvatarImageData:(id)a3 contact:(id)a4 windowScene:(id)a5 completionBlock:(id)a6;
+ (void)incomingCallPlaceholderSnapshotForContact:(id)a3 windowScene:(id)a4 completionBlock:(id)a5;
+ (void)incomingCallSnapshotForConfiguration:(id)a3 contact:(id)a4 includingCallButtons:(BOOL)a5 windowScene:(id)a6 completionBlock:(id)a7;
+ (void)incomingCallSnapshotForConfiguration:(id)a3 nameString:(id)a4 includingCallButtons:(BOOL)a5 windowScene:(id)a6 completionBlock:(id)a7;
+ (void)incomingCallSnapshotForConfiguration:(id)a3 style:(int64_t)a4 contact:(id)a5 nameString:(id)a6 avatarImage:(id)a7 windowScene:(id)a8 completionBlock:(id)a9;
+ (void)incomingCallSnapshotForPosterArchiveData:(id)a3 contact:(id)a4 includingCallButtons:(BOOL)a5 windowScene:(id)a6 completionBlock:(id)a7;
@end

@implementation CNIncomingCallSnapshotViewController

+ (int64_t)styleIncludingCallButtons:(BOOL)a3 canShowPoster:(BOOL)a4
{
  v4 = !a4;
  if (a3 && !v4)
  {
    return 3;
  }

  v6 = v4 || a3;
  v7 = 4;
  if (a3 && !a4)
  {
    v7 = 5;
  }

  if (v6 == 1)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

+ (void)incomingCallSnapshotForConfiguration:(id)a3 style:(int64_t)a4 contact:(id)a5 nameString:(id)a6 avatarImage:(id)a7 windowScene:(id)a8 completionBlock:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__52033;
  v41[4] = __Block_byref_object_dispose__52034;
  v42 = 0;
  v20 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke;
  v34[3] = &unk_1E74E58D0;
  v39 = v41;
  v21 = v15;
  v35 = v21;
  v22 = v14;
  v36 = v22;
  v40 = a4;
  v23 = v16;
  v37 = v23;
  v24 = v17;
  v38 = v24;
  [v20 performBlock:v34];

  v25 = +[CNUIContactsEnvironment currentEnvironment];
  v26 = [v25 defaultSchedulerProvider];
  v27 = [v26 newSerialSchedulerWithName:@"com.apple.ContactsUI.CNIncomingCallSnapshotViewController.snapshottingQueue"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_2;
  v30[3] = &unk_1E74E5920;
  v33 = v41;
  v28 = v18;
  v31 = v28;
  v29 = v19;
  v32 = v29;
  [v27 performBlock:v30];

  _Block_object_dispose(v41, 8);
}

void __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke(uint64_t a1)
{
  if ([getTPInComingCallUISnapshotViewControllerClass() instancesRespondToSelector:sel_initWithConfiguration_style_nameString_avatarImage_])
  {
    v2 = *(a1 + 32);
    v3 = objc_alloc(getTPInComingCallUISnapshotViewControllerClass());
    v4 = [*(a1 + 40) wrappedPosterConfiguration];
    v5 = *(a1 + 72);
    if (v2)
    {
      v6 = [v3 initWithConfiguration:v4 style:v5 contact:*(a1 + 32) avatarImage:*(a1 + 56)];
    }

    else
    {
      v6 = [v3 initWithConfiguration:v4 style:v5 nameString:*(a1 + 48) avatarImage:*(a1 + 56)];
    }

    v10 = v6;
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
  }

  else
  {
    v7 = objc_alloc(getTPInComingCallUISnapshotViewControllerClass());
    v4 = [*(a1 + 40) wrappedPosterConfiguration];
    v8 = [v7 initWithConfiguration:v4 style:*(a1 + 72) contact:*(a1 + 32) fallbackText:&stru_1F0CE7398];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(*(*(a1 + 64) + 8) + 40) view];
  [v11 setNeedsLayout];
}

void __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_3;
  v3[3] = &unk_1E74E58F8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v1 snapshotWithOptions:0 windowScene:v2 completionBlock:v3];
}

void __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_4;
  v11[3] = &unk_1E74E6650;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 performBlock:v11];
}

+ (void)incomingCallSnapshotForConfiguration:(id)a3 contact:(id)a4 includingCallButtons:(BOOL)a5 windowScene:(id)a6 completionBlock:(id)a7
{
  v8 = a5;
  v11 = a3 != 0;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v16 = a3;
  v15 = [objc_opt_class() styleIncludingCallButtons:v8 canShowPoster:v11];
  [objc_opt_class() incomingCallSnapshotForConfiguration:v16 style:v15 contact:v14 nameString:0 avatarImage:0 windowScene:v13 completionBlock:v12];
}

+ (void)incomingCallSnapshotForConfiguration:(id)a3 nameString:(id)a4 includingCallButtons:(BOOL)a5 windowScene:(id)a6 completionBlock:(id)a7
{
  v8 = a5;
  v11 = a3 != 0;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v16 = a3;
  v15 = [objc_opt_class() styleIncludingCallButtons:v8 canShowPoster:v11];
  [objc_opt_class() incomingCallSnapshotForConfiguration:v16 style:v15 contact:0 nameString:v14 avatarImage:0 windowScene:v13 completionBlock:v12];
}

+ (void)incomingCallSnapshotForPosterArchiveData:(id)a3 contact:(id)a4 includingCallButtons:(BOOL)a5 windowScene:(id)a6 completionBlock:(id)a7
{
  v8 = a5;
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:a3 error:0];
  [objc_opt_class() incomingCallSnapshotForConfiguration:v14 contact:v13 includingCallButtons:v8 windowScene:v12 completionBlock:v11];
}

+ (void)incomingCallAvatarSnapshotForAvatarImageData:(id)a3 contact:(id)a4 windowScene:(id)a5 completionBlock:(id)a6
{
  v9 = MEMORY[0x1E69DCAB8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = [v9 imageWithData:a3];
  LODWORD(a3) = [getTPInComingCallUISnapshotViewControllerClass() instancesRespondToSelector:sel_initWithConfiguration_style_nameString_avatarImage_];
  v13 = objc_opt_class();
  if (a3)
  {
    v14 = 6;
  }

  else
  {
    v14 = 5;
  }

  [v13 incomingCallSnapshotForConfiguration:0 style:v14 contact:v12 nameString:0 avatarImage:v15 windowScene:v11 completionBlock:v10];
}

+ (void)incomingCallPlaceholderSnapshotForContact:(id)a3 windowScene:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [objc_opt_class() incomingCallSnapshotForConfiguration:0 style:5 contact:v9 nameString:0 avatarImage:0 windowScene:v8 completionBlock:v7];
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 window:(id)a4
{
  v5 = a4;
  v6 = a3;
  [getTPInComingCallUISnapshotViewControllerClass() horizontalNameLabelBoundingRectForName:v6 window:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 window:(id)a4
{
  v5 = a4;
  v6 = a3;
  [getTPInComingCallUISnapshotViewControllerClass() verticalNameLabelBoundingRectForName:v6 window:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (id)posterDisplayNameComponentsForContact:(id)a3
{
  v3 = a3;
  v4 = [getTPInComingCallUISnapshotViewControllerClass() posterDisplayNameComponentsForContact:v3];

  return v4;
}

@end