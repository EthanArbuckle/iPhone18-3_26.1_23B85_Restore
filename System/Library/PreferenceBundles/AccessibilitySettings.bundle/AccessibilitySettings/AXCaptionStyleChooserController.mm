@interface AXCaptionStyleChooserController
- (AXCaptionStyleChooserController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)isPreviewExpanded;
- (BOOL)isStoredColorType:(int)type equalWithColors:(id)colors;
- (BOOL)isStoredTransparencyType:(int)type equalWithTransparency:(id)transparency;
- (NSArray)captionPreviewSpecifiers;
- (NSArray)videoOverrideSpecifiers;
- (__CFString)profileId;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_snapshotWindow:(id)window opaque:(BOOL)opaque;
- (id)_splitImageAppropriately:(id)appropriately statusBar:(id)bar secondHalfStart:(CGPoint)start secondHalfEnd:(CGPoint)end;
- (id)_videoOverrideText;
- (id)_videoOverridesStyle:(id)style;
- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier;
- (void)captionPreviewWasTapped:(BOOL)tapped;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateTableCheckedSelection:(id)selection;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willResignActive;
@end

@implementation AXCaptionStyleChooserController

- (AXCaptionStyleChooserController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = AXCaptionStyleChooserController;
  return [(AXCaptionStyleChooserController *)&v5 initWithNibName:name bundle:bundle];
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

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
  v5 = OBJC_IVAR___PSListController__table;
  v11 = selectionCopy;
  v6 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] numberOfRowsInSection:{objc_msgSend(selectionCopy, "section")}];
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
  table = [(AXCaptionStyleChooserController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionPreviewCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
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
  _videoOverrideText = [(AXCaptionStyleChooserController *)self _videoOverrideText];
  [v3 setProperty:_videoOverrideText forKey:PSFooterTextGroupKey];

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
  parentController = [(AXCaptionStyleChooserController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    profileId = [parentController profileId];
  }

  else
  {
    profileId = 0;
  }

  return profileId;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    captionPreviewView = [cellCopy captionPreviewView];
    [captionPreviewView setPreviewDelegate:self];
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] || objc_msgSend(pathCopy, "section"))
  {
    v12.receiver = self;
    v12.super_class = AXCaptionStyleChooserController;
    [(AXCaptionStyleChooserController *)&v12 tableView:viewCopy estimatedHeightForRowAtIndexPath:pathCopy];
    v9 = v8;
  }

  else
  {
    +[AXCaptionPreviewCell previewSize];
    v9 = v11;
  }

  return v9;
}

- (BOOL)isStoredTransparencyType:(int)type equalWithTransparency:(id)transparency
{
  transparencyCopy = transparency;
  switch(type)
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
      v9 = AXCaptionTransparencyDefault(type);
      v8 = [v9 objectForKey:@"alpha"];

      goto LABEL_9;
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [transparencyCopy isEqual:v8];

  return v10;
}

- (BOOL)isStoredColorType:(int)type equalWithColors:(id)colors
{
  colorsCopy = colors;
  switch(type)
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
      i = AXCaptionColorDefault(type);
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

    v19 = [colorsCopy objectAtIndexedSubscript:j];
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

- (id)_splitImageAppropriately:(id)appropriately statusBar:(id)bar secondHalfStart:(CGPoint)start secondHalfEnd:(CGPoint)end
{
  y = start.y;
  x = start.x;
  appropriatelyCopy = appropriately;
  barCopy = bar;
  v12 = +[UIScreen mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = +[UIScreen mainScreen];
  [v15 bounds];
  v17 = v16;

  [appropriatelyCopy size];
  v19 = v18;
  v21 = v20;
  cGImage = [appropriatelyCopy CGImage];
  view = [(AXCaptionStyleChooserController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v72.origin.y = v14 * v27;
  v72.size.height = v14 * 44.0;
  v72.origin.x = 0.0;
  v72.size.width = v14 * v19;
  v28 = CGImageCreateWithImageInRect(cGImage, v72);

  v29 = [UIImage imageWithCGImage:v28 scale:0 orientation:v14];
  CGImageRelease(v28);
  view2 = [(AXCaptionStyleChooserController *)self view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];
  statusBarManager2 = [windowScene2 statusBarManager];
  [statusBarManager2 statusBarFrame];
  v35 = v34 + 44.0;
  v36 = +[UIScreen mainScreen];
  [v36 scale];
  v38 = v37;
  v71.width = v19;
  v71.height = v35;
  UIGraphicsBeginImageContextWithOptions(v71, 0, v38);

  [barCopy drawAtPoint:{0.0, 0.0}];
  view3 = [(AXCaptionStyleChooserController *)self view];
  window3 = [view3 window];
  windowScene3 = [window3 windowScene];
  statusBarManager3 = [windowScene3 statusBarManager];
  [statusBarManager3 statusBarFrame];
  [v29 drawAtPoint:{0.0, v43}];

  v44 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  cGImage2 = [appropriatelyCopy CGImage];
  v73.origin.y = y * v14;
  v73.size.height = v14 * (v21 - y);
  v73.origin.x = 0.0;
  v73.size.width = v14 * v19;
  v46 = CGImageCreateWithImageInRect(cGImage2, v73);
  v47 = [UIImage imageWithCGImage:v46 scale:0 orientation:v14];
  CGImageRelease(v46);
  v48 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v48 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    view4 = [(AXCaptionStyleChooserController *)self view];
    window4 = [view4 window];
    windowScene4 = [window4 windowScene];
    statusBarManager4 = [windowScene4 statusBarManager];
    [statusBarManager4 statusBarFrame];
    v55 = v54 + 44.0;

    v56 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v56 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == &dword_0 + 1)
    {
      v58 = end.x * v14;
    }

    else
    {
      v58 = 0.0;
    }

    if (userInterfaceLayoutDirection == &dword_0 + 1)
    {
      v59 = v17;
    }

    else
    {
      v59 = x * v14;
    }

    v60 = end.y;
    if (userInterfaceLayoutDirection != &dword_0 + 1)
    {
      v60 = y;
    }

    v61 = v14 * (v60 - v55);
    cGImage3 = [appropriatelyCopy CGImage];
    v74.origin.x = v58;
    v74.origin.y = v14 * v55;
    v74.size.width = v59;
    v74.size.height = v61;
    v63 = CGImageCreateWithImageInRect(cGImage3, v74);
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

- (id)_snapshotWindow:(id)window opaque:(BOOL)opaque
{
  windowCopy = window;
  [windowCopy bounds];
  v7 = v6;
  v9 = v8;
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;
  v20.width = v7;
  v20.height = v9;
  UIGraphicsBeginImageContextWithOptions(v20, opaque, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v7;
  v21.size.height = v9;
  CGContextClearRect(CurrentContext, v21);
  if (!opaque)
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

  layer = [windowCopy layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

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
    captionPreviewView = [v4 captionPreviewView];
    isExpanded = [captionPreviewView isExpanded];
  }

  else
  {
    NSLog(@"Who was my first cell?");
    isExpanded = 0;
  }

  return isExpanded;
}

- (void)captionPreviewWasTapped:(BOOL)tapped
{
  tappedCopy = tapped;
  v5 = objc_alloc_init(AXFullscreenCaptionPreviewViewController);
  [(AXCaptionStyleChooserController *)self presentViewController:v5 animated:tappedCopy completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = AXCaptionStyleChooserController;
  [(AXCaptionStyleChooserController *)&v4 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
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

- (id)_videoOverridesStyle:(id)style
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier
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