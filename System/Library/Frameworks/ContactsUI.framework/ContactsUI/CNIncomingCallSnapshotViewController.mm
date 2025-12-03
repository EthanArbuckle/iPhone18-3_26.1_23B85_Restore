@interface CNIncomingCallSnapshotViewController
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (id)posterDisplayNameComponentsForContact:(id)contact;
+ (int64_t)styleIncludingCallButtons:(BOOL)buttons canShowPoster:(BOOL)poster;
+ (void)incomingCallAvatarSnapshotForAvatarImageData:(id)data contact:(id)contact windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallPlaceholderSnapshotForContact:(id)contact windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForConfiguration:(id)configuration contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForConfiguration:(id)configuration nameString:(id)string includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForConfiguration:(id)configuration style:(int64_t)style contact:(id)contact nameString:(id)string avatarImage:(id)image windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForPosterArchiveData:(id)data contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block;
@end

@implementation CNIncomingCallSnapshotViewController

+ (int64_t)styleIncludingCallButtons:(BOOL)buttons canShowPoster:(BOOL)poster
{
  v4 = !poster;
  if (buttons && !v4)
  {
    return 3;
  }

  v6 = v4 || buttons;
  v7 = 4;
  if (buttons && !poster)
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

+ (void)incomingCallSnapshotForConfiguration:(id)configuration style:(int64_t)style contact:(id)contact nameString:(id)string avatarImage:(id)image windowScene:(id)scene completionBlock:(id)block
{
  configurationCopy = configuration;
  contactCopy = contact;
  stringCopy = string;
  imageCopy = image;
  sceneCopy = scene;
  blockCopy = block;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__52033;
  v41[4] = __Block_byref_object_dispose__52034;
  v42 = 0;
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke;
  v34[3] = &unk_1E74E58D0;
  v39 = v41;
  v21 = contactCopy;
  v35 = v21;
  v22 = configurationCopy;
  v36 = v22;
  styleCopy = style;
  v23 = stringCopy;
  v37 = v23;
  v24 = imageCopy;
  v38 = v24;
  [mainThreadScheduler performBlock:v34];

  v25 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v25 defaultSchedulerProvider];
  v27 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.CNIncomingCallSnapshotViewController.snapshottingQueue"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __142__CNIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_2;
  v30[3] = &unk_1E74E5920;
  v33 = v41;
  v28 = sceneCopy;
  v31 = v28;
  v29 = blockCopy;
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

+ (void)incomingCallSnapshotForConfiguration:(id)configuration contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block
{
  buttonsCopy = buttons;
  v11 = configuration != 0;
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  configurationCopy = configuration;
  v15 = [objc_opt_class() styleIncludingCallButtons:buttonsCopy canShowPoster:v11];
  [objc_opt_class() incomingCallSnapshotForConfiguration:configurationCopy style:v15 contact:contactCopy nameString:0 avatarImage:0 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallSnapshotForConfiguration:(id)configuration nameString:(id)string includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block
{
  buttonsCopy = buttons;
  v11 = configuration != 0;
  blockCopy = block;
  sceneCopy = scene;
  stringCopy = string;
  configurationCopy = configuration;
  v15 = [objc_opt_class() styleIncludingCallButtons:buttonsCopy canShowPoster:v11];
  [objc_opt_class() incomingCallSnapshotForConfiguration:configurationCopy style:v15 contact:0 nameString:stringCopy avatarImage:0 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallSnapshotForPosterArchiveData:(id)data contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block
{
  buttonsCopy = buttons;
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  v14 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:data error:0];
  [objc_opt_class() incomingCallSnapshotForConfiguration:v14 contact:contactCopy includingCallButtons:buttonsCopy windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallAvatarSnapshotForAvatarImageData:(id)data contact:(id)contact windowScene:(id)scene completionBlock:(id)block
{
  v9 = MEMORY[0x1E69DCAB8];
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  v15 = [v9 imageWithData:data];
  LODWORD(data) = [getTPInComingCallUISnapshotViewControllerClass() instancesRespondToSelector:sel_initWithConfiguration_style_nameString_avatarImage_];
  v13 = objc_opt_class();
  if (data)
  {
    v14 = 6;
  }

  else
  {
    v14 = 5;
  }

  [v13 incomingCallSnapshotForConfiguration:0 style:v14 contact:contactCopy nameString:0 avatarImage:v15 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallPlaceholderSnapshotForContact:(id)contact windowScene:(id)scene completionBlock:(id)block
{
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  [objc_opt_class() incomingCallSnapshotForConfiguration:0 style:5 contact:contactCopy nameString:0 avatarImage:0 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window
{
  windowCopy = window;
  nameCopy = name;
  [getTPInComingCallUISnapshotViewControllerClass() horizontalNameLabelBoundingRectForName:nameCopy window:windowCopy];
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

+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window
{
  windowCopy = window;
  nameCopy = name;
  [getTPInComingCallUISnapshotViewControllerClass() verticalNameLabelBoundingRectForName:nameCopy window:windowCopy];
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

+ (id)posterDisplayNameComponentsForContact:(id)contact
{
  contactCopy = contact;
  v4 = [getTPInComingCallUISnapshotViewControllerClass() posterDisplayNameComponentsForContact:contactCopy];

  return v4;
}

@end