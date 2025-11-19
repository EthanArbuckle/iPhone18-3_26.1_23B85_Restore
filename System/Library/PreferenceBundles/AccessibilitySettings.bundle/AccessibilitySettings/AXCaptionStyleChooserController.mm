@interface AXCaptionStyleChooserController
- (AXCaptionStyleChooserController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)isPreviewExpanded;
- (BOOL)isStoredColorType:(int)a3 equalWithColors:(id)a4;
- (BOOL)isStoredTransparencyType:(int)a3 equalWithTransparency:(id)a4;
- (NSArray)captionPreviewSpecifiers;
- (NSArray)videoOverrideSpecifiers;
- (__CFString)profileId;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_snapshotWindow:(id)a3 opaque:(BOOL)a4;
- (id)_splitImageAppropriately:(id)a3 statusBar:(id)a4 secondHalfStart:(CGPoint)a5 secondHalfEnd:(CGPoint)a6;
- (id)_videoOverrideText;
- (id)_videoOverridesStyle:(id)a3;
- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4;
- (void)captionPreviewWasTapped:(BOOL)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateTableCheckedSelection:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willResignActive;
@end

@implementation AXCaptionStyleChooserController

- (AXCaptionStyleChooserController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = AXCaptionStyleChooserController;
  return [(AXCaptionStyleChooserController *)&v5 initWithNibName:a3 bundle:a4];
}

- (NSArray)captionPreviewSpecifiers
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setProperty:@"PreviewCell" forKey:PSKeyNameKey];
  v4 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  v7[0] = v3;
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (void)updateTableCheckedSelection:(id)a3
{
  v4 = a3;
  v5 = OBJC_IVAR___PSListController__table;
  v11 = v4;
  v6 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] numberOfRowsInSection:{objc_msgSend(v4, "section")}];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, [v11 section]);
      v10 = [*&self->AXUISettingsBaseListController_opaque[v5] cellForRowAtIndexPath:v9];
      [v10 setChecked:{objc_msgSend(v9, "isEqual:", v11)}];
    }
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionStyleChooserController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  v3 = [(AXCaptionStyleChooserController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionPreviewCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)willResignActive
{
  if ([(AXCaptionStyleChooserController *)self isPreviewExpanded])
  {

    [(AXCaptionStyleChooserController *)self captionPreviewWasTapped:0];
  }
}

- (NSArray)videoOverrideSpecifiers
{
  v3 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:0 edit:0];
  v4 = PSIDKey;
  [v3 setProperty:@"VideoOverridesStyleGroup" forKey:PSIDKey];
  v5 = [(AXCaptionStyleChooserController *)self _videoOverrideText];
  [v3 setProperty:v5 forKey:PSFooterTextGroupKey];

  v6 = settingsLocString(@"CONTENT_PROVIDED_SWITCH", @"Captioning");
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"_setVideoOverridesStyle:specifier:" get:"_videoOverridesStyle:" detail:0 cell:6 edit:0];

  [v7 setProperty:@"VideoOverridesStyleSwitch" forKey:v4];
  v10[0] = v3;
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];

  return v8;
}

- (__CFString)profileId
{
  v2 = [(AXCaptionStyleChooserController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 profileId];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 captionPreviewView];
    [v6 setPreviewDelegate:self];
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row] || objc_msgSend(v7, "section"))
  {
    v12.receiver = self;
    v12.super_class = AXCaptionStyleChooserController;
    [(AXCaptionStyleChooserController *)&v12 tableView:v6 estimatedHeightForRowAtIndexPath:v7];
    v9 = v8;
  }

  else
  {
    +[AXCaptionPreviewCell previewSize];
    v9 = v11;
  }

  return v9;
}

- (BOOL)isStoredTransparencyType:(int)a3 equalWithTransparency:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 1:
      [(AXCaptionStyleChooserController *)self profileId];
      v7 = MACaptionAppearancePrefCopyForegroundOpacity();
      break;
    case 3:
      [(AXCaptionStyleChooserController *)self profileId];
      v7 = MACaptionAppearancePrefCopyWindowOpacity();
      break;
    case 2:
      [(AXCaptionStyleChooserController *)self profileId];
      v7 = MACaptionAppearancePrefCopyBackgroundOpacity();
      break;
    default:
LABEL_8:
      v9 = AXCaptionTransparencyDefault(a3);
      v8 = [v9 objectForKey:@"alpha"];

      goto LABEL_9;
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [v6 isEqual:v8];

  return v10;
}

- (BOOL)isStoredColorType:(int)a3 equalWithColors:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 1:
      [(AXCaptionStyleChooserController *)self profileId];
      v7 = MACaptionAppearancePrefCopyForegroundColor();
      break;
    case 3:
      [(AXCaptionStyleChooserController *)self profileId];
      v7 = MACaptionAppearancePrefCopyWindowColor();
      break;
    case 2:
      [(AXCaptionStyleChooserController *)self profileId];
      v7 = MACaptionAppearancePrefCopyBackgroundColor();
      break;
    default:
LABEL_11:
      i = AXCaptionColorDefault(a3);
      goto LABEL_12;
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  NumberOfComponents = CGColorGetNumberOfComponents(v7);
  Components = CGColorGetComponents(v8);
  for (i = +[NSMutableArray array];
  {
    v12 = *Components++;
    v13 = [NSNumber numberWithDouble:v12];
    [i addObject:v13];
  }

  CFRelease(v8);
LABEL_12:
  v14 = 0;
  for (j = 0; j != 3; ++j)
  {
    v16 = [i objectAtIndexedSubscript:j];
    [v16 floatValue];
    v18 = v17;

    v19 = [v6 objectAtIndexedSubscript:j];
    [v19 floatValue];
    v21 = v20;

    if (vabds_f32(v18, v21) > 0.0001)
    {
      break;
    }

    v14 = j > 1;
  }

  return v14;
}

- (id)_splitImageAppropriately:(id)a3 statusBar:(id)a4 secondHalfStart:(CGPoint)a5 secondHalfEnd:(CGPoint)a6
{
  y = a5.y;
  x = a5.x;
  v10 = a3;
  v11 = a4;
  v12 = +[UIScreen mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = +[UIScreen mainScreen];
  [v15 bounds];
  v17 = v16;

  [v10 size];
  v19 = v18;
  v21 = v20;
  v22 = [v10 CGImage];
  v23 = [(AXCaptionStyleChooserController *)self view];
  v24 = [v23 window];
  v25 = [v24 windowScene];
  v26 = [v25 statusBarManager];
  [v26 statusBarFrame];
  v72.origin.y = v14 * v27;
  v72.size.height = v14 * 44.0;
  v72.origin.x = 0.0;
  v72.size.width = v14 * v19;
  v28 = CGImageCreateWithImageInRect(v22, v72);

  v29 = [UIImage imageWithCGImage:v28 scale:0 orientation:v14];
  CGImageRelease(v28);
  v30 = [(AXCaptionStyleChooserController *)self view];
  v31 = [v30 window];
  v32 = [v31 windowScene];
  v33 = [v32 statusBarManager];
  [v33 statusBarFrame];
  v35 = v34 + 44.0;
  v36 = +[UIScreen mainScreen];
  [v36 scale];
  v38 = v37;
  v71.width = v19;
  v71.height = v35;
  UIGraphicsBeginImageContextWithOptions(v71, 0, v38);

  [v11 drawAtPoint:{0.0, 0.0}];
  v39 = [(AXCaptionStyleChooserController *)self view];
  v40 = [v39 window];
  v41 = [v40 windowScene];
  v42 = [v41 statusBarManager];
  [v42 statusBarFrame];
  [v29 drawAtPoint:{0.0, v43}];

  v44 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  v45 = [v10 CGImage];
  v73.origin.y = y * v14;
  v73.size.height = v14 * (v21 - y);
  v73.origin.x = 0.0;
  v73.size.width = v14 * v19;
  v46 = CGImageCreateWithImageInRect(v45, v73);
  v47 = [UIImage imageWithCGImage:v46 scale:0 orientation:v14];
  CGImageRelease(v46);
  v48 = +[UIDevice currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if (v49 == &dword_0 + 1)
  {
    v50 = [(AXCaptionStyleChooserController *)self view];
    v51 = [v50 window];
    v52 = [v51 windowScene];
    v53 = [v52 statusBarManager];
    [v53 statusBarFrame];
    v55 = v54 + 44.0;

    v56 = +[UIApplication sharedApplication];
    v57 = [v56 userInterfaceLayoutDirection];

    if (v57 == &dword_0 + 1)
    {
      v58 = a6.x * v14;
    }

    else
    {
      v58 = 0.0;
    }

    if (v57 == &dword_0 + 1)
    {
      v59 = v17;
    }

    else
    {
      v59 = x * v14;
    }

    v60 = a6.y;
    if (v57 != &dword_0 + 1)
    {
      v60 = y;
    }

    v61 = v14 * (v60 - v55);
    v62 = [v10 CGImage];
    v74.origin.x = v58;
    v74.origin.y = v14 * v55;
    v74.size.width = v59;
    v74.size.height = v61;
    v63 = CGImageCreateWithImageInRect(v62, v74);
    v64 = [UIImage imageWithCGImage:v63 scale:0 orientation:v14];
    CGImageRelease(v63);
    v69[0] = v44;
    v69[1] = v47;
    v69[2] = v64;
    v65 = [NSArray arrayWithObjects:v69 count:3];
  }

  else
  {
    v68[0] = v44;
    v68[1] = v47;
    v65 = [NSArray arrayWithObjects:v68 count:2];
  }

  return v65;
}

- (id)_snapshotWindow:(id)a3 opaque:(BOOL)a4
{
  v5 = a3;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;
  v20.width = v7;
  v20.height = v9;
  UIGraphicsBeginImageContextWithOptions(v20, a4, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v7;
  v21.size.height = v9;
  CGContextClearRect(CurrentContext, v21);
  if (!a4)
  {
    v14 = +[UIColor whiteColor];
    [v14 setFill];

    v15 = UIGraphicsGetCurrentContext();
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v7;
    v22.size.height = v9;
    CGContextFillRect(v15, v22);
  }

  v16 = [v5 layer];
  [v16 renderInContext:UIGraphicsGetCurrentContext()];

  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (BOOL)isPreviewExpanded
{
  v2 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table];
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [v2 cellForRowAtIndexPath:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 captionPreviewView];
    v6 = [v5 isExpanded];
  }

  else
  {
    NSLog(@"Who was my first cell?");
    v6 = 0;
  }

  return v6;
}

- (void)captionPreviewWasTapped:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(AXFullscreenCaptionPreviewViewController);
  [(AXCaptionStyleChooserController *)self presentViewController:v5 animated:v3 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = AXCaptionStyleChooserController;
  [(AXCaptionStyleChooserController *)&v4 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __86__AXCaptionStyleChooserController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + OBJC_IVAR___PSListController__table);
  v2 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [v1 cellForRowAtIndexPath:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 layoutSubviews];
    v3 = [v4 captionPreviewView];
    [v3 updateExpandButtonPosition];
  }
}

void __55__AXCaptionStyleChooserController_scrollViewDidScroll___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + OBJC_IVAR___PSListController__table);
  v2 = [NSIndexPath indexPathForRow:0 inSection:0];
  v4 = [v1 cellForRowAtIndexPath:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 layoutSubviews];
    v3 = [v4 captionPreviewView];
    [v3 updateExpandButtonPosition];
  }
}

- (id)_videoOverridesStyle:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (id)_videoOverrideText
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return @"TEXT_HERE";
}

@end