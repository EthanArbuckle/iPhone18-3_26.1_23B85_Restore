@interface AEHighlightColorEditorController
+ (id)highlightImageForContextMenuForStyle:(int64_t)style pageTheme:(int64_t)theme size:(double)size;
+ (id)localizedColorNameStringForStyle:(int64_t)style;
+ (id)p_themeForStyle:(int64_t)style pageTheme:(int64_t)theme;
+ (id)p_underlineForegroundImageForContextMenu;
+ (id)p_underlineForegroundImageForPageTheme:(int64_t)theme;
- (BOOL)p_shouldShowCompactMenu;
- (BOOL)p_shouldShowShareButton;
- (UIView)colorControls;
- (id)p_buildPaletteImageForFrontTag:(int64_t)tag middleTag:(int64_t)middleTag backTag:(int64_t)backTag pageTheme:(int64_t)theme;
- (id)p_colorControlImageForColor:(id)color withForegroundImage:(id)image;
- (id)p_colorControlImageForTag:(int64_t)tag pageTheme:(int64_t)theme;
- (id)p_colorControlUnderlineImageForPageTheme:(int64_t)theme;
- (id)p_colorForTag:(int64_t)tag pageTheme:(int64_t)theme;
- (id)p_monochromaticImageFromImage:(id)image withColor:(id)color;
- (id)p_noteGlyphForTag:(int64_t)tag pageTheme:(int64_t)theme;
- (id)p_paletteImageForTag:(int64_t)tag pageTheme:(int64_t)theme;
- (id)p_paletteImageWithFrontColor:(id)color middleColor:(id)middleColor backColor:(id)backColor frontForegroundImage:(id)image;
- (int64_t)p_buttonTagForTheme:(id)theme;
- (void)didShow;
- (void)handleAddNoteButton:(id)button;
- (void)handleDeleteButtonTap:(id)tap;
- (void)handleRightArrowButton:(id)button;
- (void)handleShareButton:(id)button;
- (void)loadView;
- (void)p_drawColorControlCircleWithFrame:(CGRect)frame color:(id)color;
- (void)p_drawCrescentWithCircleRect:(CGRect)rect color:(id)color leftShift:(double)shift addRadius:(double)radius;
- (void)p_postDeleteConfirmation;
- (void)p_removeAnnotation:(id)annotation;
- (void)p_setStyle:(int64_t)style forAnnotation:(id)annotation;
- (void)p_updateAppearance;
- (void)presentFromRect:(CGRect)rect view:(id)view;
- (void)releaseOutlets;
- (void)setDelegate:(id)delegate;
- (void)showColorControlsMenu:(id)menu;
- (void)useColorOf:(id)of;
- (void)viewDidLoad;
- (void)willShow;
@end

@implementation AEHighlightColorEditorController

- (void)releaseOutlets
{
  v7.receiver = self;
  v7.super_class = AEHighlightColorEditorController;
  [(AEAnnotationPopoverViewController *)&v7 releaseOutlets];
  [(AEHighlightColorEditorController *)self setCalloutBar:0];
  [(AEHighlightColorEditorController *)self setColorControls:0];
  addNoteButton = [(AEHighlightColorEditorController *)self addNoteButton];
  [addNoteButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AEHighlightColorEditorController *)self setAddNoteButton:0];
  deleteButton = [(AEHighlightColorEditorController *)self deleteButton];
  [deleteButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AEHighlightColorEditorController *)self setDeleteButton:0];
  rightArrowButton = [(AEHighlightColorEditorController *)self rightArrowButton];
  [rightArrowButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AEHighlightColorEditorController *)self setRightArrowButton:0];
  shareButton = [(AEHighlightColorEditorController *)self shareButton];
  [shareButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AEHighlightColorEditorController *)self setShareButton:0];
  [(AEHighlightColorEditorController *)self setAlertController:0];
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 435.0, 55.0}];
  [(AEHighlightColorEditorController *)self setView:v3];
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = AEHighlightColorEditorController;
  [(AEAnnotationPopoverViewController *)&v55 viewDidLoad];
  v3 = [IMCalloutBar alloc];
  view = [(AEHighlightColorEditorController *)self view];
  [view bounds];
  v5 = [(IMCalloutBar *)v3 initWithFrame:?];

  [(IMCalloutBar *)v5 setAutoresizingMask:18];
  v6 = objc_alloc_init(NSMutableArray);
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    annotation = [(AEAnnotationPopoverViewController *)self annotation];
    v54 = [delegate editorController:self isRightArrowEnabledForAnnotation:annotation];
  }

  else
  {
    v54 = 1;
  }

  if ([(AEHighlightColorEditorController *)self p_shouldShowCompactMenu])
  {
    annotationTheme = [(AEAnnotationPopoverViewController *)self annotationTheme];
    v10 = [(AEHighlightColorEditorController *)self p_buttonTagForTheme:annotationTheme];

    v11 = [AEFingerPotView alloc];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(AEFingerPotView *)v11 initWithFrame:CGRectZero.origin.x, y, width, height];
    v17 = [(AEHighlightColorEditorController *)self p_paletteImageForTag:v10 pageTheme:[(AEHighlightColorEditorController *)self pageTheme]];
    [(AEFingerPotView *)height setImage:v17 forState:0];

    [(AEFingerPotView *)height addTarget:self action:"showColorControlsMenu:" forControlEvents:64];
    [(AEFingerPotView *)height setFrame:0.0, 0.0, 40.0, 38.0];
    v18 = IMCommonCoreBundle();
    v19 = [v18 localizedStringForKey:@"Colors\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    [(AEFingerPotView *)height setAccessibilityLabel:v19];
  }

  else
  {
    height = [(AEHighlightColorEditorController *)self colorControls];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  [v6 addObject:height];
  height2 = [[AEFingerPotView alloc] initWithFrame:x, y, width, height];
  v21 = IMCommonCoreBundle();
  v22 = [UIImage imageNamed:@"ib_text_pop_icon_trash" inBundle:v21];
  [(AEFingerPotView *)height2 setImage:v22 forState:0];

  [(AEFingerPotView *)height2 addTarget:self action:"handleDeleteButtonTap:" forControlEvents:64];
  [(AEFingerPotView *)height2 setFrame:0.0, 0.0, 40.0, 38.0];
  v23 = IMCommonCoreBundle();
  v24 = [v23 localizedStringForKey:@"Remove Highlight" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  [(AEFingerPotView *)height2 setAccessibilityLabel:v24];

  [(AEHighlightColorEditorController *)self setDeleteButton:height2];
  [v6 addObject:height2];
  v25 = [IMCalloutButton buttonWithType:0];
  mAddNoteButton = self->mAddNoteButton;
  self->mAddNoteButton = v25;

  v27 = self->mAddNoteButton;
  v28 = [(AEHighlightColorEditorController *)self p_noteGlyphForTag:1 pageTheme:[(AEHighlightColorEditorController *)self pageTheme]];
  [(UIButton *)v27 setImage:v28 forState:0];

  [(UIButton *)self->mAddNoteButton addTarget:self action:"handleAddNoteButton:" forControlEvents:64];
  [(UIButton *)self->mAddNoteButton setFrame:0.0, 0.0, 40.0, 38.0];
  v29 = IMCommonCoreBundle();
  v30 = [v29 localizedStringForKey:@"Note" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  [(UIButton *)self->mAddNoteButton setAccessibilityLabel:v30];

  [v6 addObject:self->mAddNoteButton];
  if ([(AEHighlightColorEditorController *)self p_shouldShowShareButton])
  {
    v31 = [IMCalloutButton buttonWithType:0];
    mShareButton = self->mShareButton;
    self->mShareButton = v31;

    v33 = IMCommonCoreBundle();
    v34 = [UIImage imageNamed:@"ib_text_pop_icon_actions" inBundle:v33];

    [(UIButton *)self->mShareButton setImage:v34 forState:0];
    [(UIButton *)self->mShareButton addTarget:self action:"handleShareButton:" forControlEvents:64];
    [(UIButton *)self->mShareButton setFrame:0.0, 0.0, 40.0, 38.0];
    v35 = IMCommonCoreBundle();
    v36 = [v35 localizedStringForKey:@"Share" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    [(UIButton *)self->mShareButton setAccessibilityLabel:v36];

    [v6 addObject:self->mShareButton];
  }

  if (v54)
  {
    v37 = [IMCalloutButton buttonWithType:0];
    v38 = IMCommonCoreBundle();
    v39 = [UIImage imageNamed:@"ib_text_pop_icon_more" inBundle:v38];
    [v37 setImage:v39 forState:0];

    [v37 addTarget:self action:"handleRightArrowButton:" forControlEvents:64];
    [v37 setFrame:{0.0, 0.0, 40.0, 38.0}];
    v40 = IMCommonCoreBundle();
    v41 = [v40 localizedStringForKey:@"More" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    [v37 setAccessibilityLabel:v41];

    [(AEHighlightColorEditorController *)self setRightArrowButton:v37];
    [v6 addObject:v37];
  }

  [(IMCalloutBar *)v5 setControls:v6];
  [(IMCalloutBar *)v5 sizeThatFitsControls:v6];
  v43 = v42;
  v45 = v44;
  if ([(AEHighlightColorEditorController *)self p_shouldShowCompactMenu])
  {
    v46 = [NSArray alloc];
    colorControls = [(AEHighlightColorEditorController *)self colorControls];
    v48 = [v46 initWithObjects:{colorControls, 0}];

    [(IMCalloutBar *)v5 sizeThatFitsControls:v48];
    if (v43 < v49)
    {
      v43 = v49;
    }
  }

  [(IMCalloutBar *)v5 setFrame:0.0, 0.0, v43, v45];
  [(IMCalloutBar *)v5 frame];
  v50 = CGRectGetWidth(v56);
  [(IMCalloutBar *)v5 frame];
  v51 = CGRectGetHeight(v57);
  view2 = [(AEHighlightColorEditorController *)self view];
  [view2 setFrame:{0.0, 0.0, v50, v51}];

  view3 = [(AEHighlightColorEditorController *)self view];
  [view3 addSubview:v5];

  [(AEHighlightColorEditorController *)self setCalloutBar:v5];
  [(AEHighlightColorEditorController *)self p_updateAppearance];
}

- (BOOL)p_shouldShowShareButton
{
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    annotation = [(AEAnnotationPopoverViewController *)self annotation];
    v5 = [delegate editorController:self isSharingEnabledForAnnotation:annotation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)p_shouldShowCompactMenu
{
  if (([(AEHighlightColorEditorController *)self im_isCompactWidth]& 1) != 0)
  {
    return 1;
  }

  return [(AEHighlightColorEditorController *)self p_shouldShowShareButton];
}

- (UIView)colorControls
{
  mColorControls = self->mColorControls;
  if (!mColorControls)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->mColorControls;
    self->mColorControls = v4;

    v6 = [NSArray arrayWithObjects:@"Yellow", @"Green", @"Blue", @"Pink", @"Purple", @"Underline", 0];
    v21 = 0u;
    v22 = 0u;
    if ([(AEHighlightColorEditorController *)self p_shouldShowCompactMenu])
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 2.0;
    }

    v23 = 0uLL;
    v24 = 0uLL;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v16 = [v8 indexOfObject:*(*(&v21 + 1) + 8 * i)];
          height = [[AEFingerPotView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
          v18 = [(AEHighlightColorEditorController *)self p_colorControlImageForTag:v16 + 1 pageTheme:[(AEHighlightColorEditorController *)self pageTheme]];
          [(AEFingerPotView *)height setMenuImage:v18];

          v19 = [AEHighlightColorEditorController localizedColorNameStringForStyle:v16 + 1];
          [(AEFingerPotView *)height setAccessibilityLabel:v19];

          [(AEFingerPotView *)height addTarget:self action:"useColorOf:" forControlEvents:64];
          [(AEFingerPotView *)height setFrame:v7, 0.0, 38.0, 38.0];
          [(AEFingerPotView *)height setTag:v16 + 1];
          [(UIView *)self->mColorControls addSubview:height];
          v7 = v7 + 42.0;
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(UIView *)self->mColorControls setFrame:0.0, 0.0, v7 + -5.0, 38.0];
    mColorControls = self->mColorControls;
  }

  return mColorControls;
}

- (int64_t)p_buttonTagForTheme:(id)theme
{
  themeCopy = theme;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = 6;
            }

            else
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

- (void)p_updateAppearance
{
  if ([(AEHighlightColorEditorController *)self isViewLoaded])
  {
    annotationTheme = [(AEAnnotationPopoverViewController *)self annotationTheme];
    v4 = [(AEHighlightColorEditorController *)self p_buttonTagForTheme:annotationTheme];

    for (i = 1; i != 7; ++i)
    {
      v6 = [(UIView *)self->mColorControls viewWithTag:i];
      [v6 setSelected:v4 == i];
    }

    mAddNoteButton = self->mAddNoteButton;
    v8 = [(AEHighlightColorEditorController *)self p_noteGlyphForTag:v4 pageTheme:[(AEHighlightColorEditorController *)self pageTheme]];
    [(UIButton *)mAddNoteButton setImage:v8 forState:0];

    v9 = self->super.mPosition == 1;
    calloutBar = [(AEHighlightColorEditorController *)self calloutBar];
    [calloutBar setUp:v9];
  }
}

- (void)willShow
{
  v4.receiver = self;
  v4.super_class = AEHighlightColorEditorController;
  [(AEAnnotationPopoverViewController *)&v4 willShow];
  calloutBar = [(AEHighlightColorEditorController *)self calloutBar];
  [calloutBar setBlurDisabled:1];
}

- (void)didShow
{
  v4.receiver = self;
  v4.super_class = AEHighlightColorEditorController;
  [(AEAnnotationPopoverViewController *)&v4 didShow];
  calloutBar = [(AEHighlightColorEditorController *)self calloutBar];
  [calloutBar setBlurDisabled:0];
}

- (void)presentFromRect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21.receiver = self;
  v21.super_class = AEHighlightColorEditorController;
  viewCopy = view;
  [(AEAnnotationPopoverViewController *)&v21 presentFromRect:viewCopy view:x, y, width, height];
  v10 = [(AEHighlightColorEditorController *)self calloutBar:v21.receiver];
  [viewCopy convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v22.origin.x = v12;
  v22.origin.y = v14;
  v22.size.width = v16;
  v22.size.height = v18;
  MidX = CGRectGetMidX(v22);
  calloutBar = [(AEHighlightColorEditorController *)self calloutBar];
  [calloutBar setArrowX:MidX];
}

+ (id)localizedColorNameStringForStyle:(int64_t)style
{
  if ((style - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_2CECC0[style - 1];
    v4 = IMCommonCoreBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  }

  return v5;
}

+ (id)p_themeForStyle:(int64_t)style pageTheme:(int64_t)theme
{
  v4 = 0;
  if (style > 3)
  {
    switch(style)
    {
      case 4:
        v4 = [AEAnnotationTheme pinkTheme:theme];
        break;
      case 5:
        v4 = [AEAnnotationTheme purpleTheme:theme];
        break;
      case 6:
        v4 = [AEAnnotationTheme underlineTheme:theme];
        break;
    }
  }

  else
  {
    switch(style)
    {
      case 1:
        v4 = [AEAnnotationTheme yellowTheme:theme];
        break;
      case 2:
        v4 = [AEAnnotationTheme greenTheme:theme];
        break;
      case 3:
        v4 = [AEAnnotationTheme blueTheme:theme];
        break;
    }
  }

  return v4;
}

- (void)p_setStyle:(int64_t)style forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationTheme = [(AEAnnotationPopoverViewController *)self annotationTheme];
  pageTheme = [annotationTheme pageTheme];

  v10 = [(AEHighlightColorEditorController *)self p_themeForStyle:style pageTheme:pageTheme];
  [(AEAnnotationPopoverViewController *)self setAnnotationTheme:v10];
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  [delegate editorController:self setTheme:v10 forAnnotation:annotationCopy];
}

- (void)p_removeAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  [delegate editorController:self deleteAnnotation:annotationCopy];
}

- (void)p_postDeleteConfirmation
{
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"Delete Highlight" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"The associated note will also be deleted." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v7 = IMCommonCoreBundle();
  v8 = [v7 localizedStringForKey:@"Cancel" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v9 = IMCommonCoreBundle();
  v10 = [v9 localizedStringForKey:@"Delete" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  [(AEHighlightColorEditorController *)self setAlertController:v11];
  v12 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v11 addAction:v12];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_171844;
  v14[3] = &unk_2CEC28;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v10 style:2 handler:v14];
  [v11 addAction:v13];

  [(AEHighlightColorEditorController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  alertController = [(AEHighlightColorEditorController *)self alertController];
  [alertController dismissViewControllerAnimated:1 completion:0];

  [(AEHighlightColorEditorController *)self setAlertController:0];
  v6.receiver = self;
  v6.super_class = AEHighlightColorEditorController;
  [(AEAnnotationPopoverViewController *)&v6 setDelegate:delegateCopy];
}

- (void)useColorOf:(id)of
{
  v4 = [of tag];
  annotation = [(AEAnnotationPopoverViewController *)self annotation];
  [(AEHighlightColorEditorController *)self p_setStyle:v4 forAnnotation:annotation];

  [(AEHighlightColorEditorController *)self p_updateAppearance];
}

- (void)showColorControlsMenu:(id)menu
{
  v4 = [NSArray alloc];
  colorControls = [(AEHighlightColorEditorController *)self colorControls];
  v7 = [v4 initWithObjects:{colorControls, 0}];

  calloutBar = [(AEHighlightColorEditorController *)self calloutBar];
  [calloutBar setControls:v7];
}

- (void)handleAddNoteButton:(id)button
{
  [(AEAnnotationPopoverViewController *)self hide];
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  annotation = [(AEAnnotationPopoverViewController *)self annotation];
  [delegate editorController:self editNote:annotation];
}

- (void)handleShareButton:(id)button
{
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AEAnnotationPopoverViewController *)self delegate];
    annotation = [(AEAnnotationPopoverViewController *)self annotation];
    [delegate2 editorController:self shareAnnotation:annotation];
  }

  [(AEAnnotationPopoverViewController *)self hide];
}

- (void)handleDeleteButtonTap:(id)tap
{
  annotation = [(AEAnnotationPopoverViewController *)self annotation];
  annotationNote = [annotation annotationNote];
  v6 = [annotationNote length];

  if (v6)
  {
    [(AEHighlightColorEditorController *)self p_postDeleteConfirmation];
  }

  else
  {
    annotation2 = [(AEAnnotationPopoverViewController *)self annotation];
    [(AEHighlightColorEditorController *)self p_removeAnnotation:annotation2];
  }

  [(AEAnnotationPopoverViewController *)self hide];
}

- (void)handleRightArrowButton:(id)button
{
  delegate = [(AEAnnotationPopoverViewController *)self delegate];
  [(AEAnnotationPopoverViewController *)self hide];
  annotation = [(AEAnnotationPopoverViewController *)self annotation];
  [delegate editorController:self showEditMenuForAnnotation:annotation];
}

+ (id)highlightImageForContextMenuForStyle:(int64_t)style pageTheme:(int64_t)theme size:(double)size
{
  v8 = +[UIGraphicsImageRendererFormat preferredFormat];
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:v8 format:{size, size}];
  if (style == 6)
  {
    v10 = +[AEHighlightColorEditorController p_underlineForegroundImageForContextMenu];
  }

  else
  {
    v11 = theme < 2;
    v12 = [AEHighlightColorEditorController p_themeForStyle:style pageTheme:theme];
    highlightColor = [v12 highlightColor];
    v14 = [highlightColor bkaxAdjustedForIncreaseContrastAdjustingDarker:v11];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_171DC0;
    v17[3] = &unk_2CEC50;
    v19 = 0;
    v20 = 0;
    v18 = v14;
    sizeCopy = size;
    sizeCopy2 = size;
    v15 = v14;
    v10 = [v9 imageWithActions:v17];
  }

  return v10;
}

- (id)p_colorForTag:(int64_t)tag pageTheme:(int64_t)theme
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_171F30;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_3460C0 != -1)
  {
    dispatch_once(&qword_3460C0, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 0x10)
  {
    v7 = *off_2CECF0[theme];
    v8 = [NSNumber numberWithInteger:tag];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

- (void)p_drawColorControlCircleWithFrame:(CGRect)frame color:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [colorCopy setStroke];
  [colorCopy setFill];

  v13 = [UIBezierPath bezierPathWithOvalInRect:x, y, v11, v11];
  [v13 stroke];
  [v13 fill];

  CGContextRestoreGState(CurrentContext);
}

- (id)p_colorControlImageForColor:(id)color withForegroundImage:(id)image
{
  imageCopy = image;
  colorCopy = color;
  v11.width = 38.0;
  v11.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  [(AEHighlightColorEditorController *)self p_drawColorControlCircleWithFrame:colorCopy color:6.0, 6.0, 26.0, 26.0];

  [imageCopy drawAtPoint:{6.0, 6.0}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (id)p_underlineForegroundImageForContextMenu
{
  v2 = +[UIColor systemRedColor];
  v10[0] = v2;
  v3 = +[UIColor systemWhiteColor];
  v10[1] = v3;
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [UIImageSymbolConfiguration configurationWithPaletteColors:v4];

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:13.0];
  v7 = [v5 configurationByApplyingConfiguration:v6];
  v8 = [UIImage systemImageNamed:@"underline" withConfiguration:v7];

  return v8;
}

+ (id)p_underlineForegroundImageForPageTheme:(int64_t)theme
{
  v3 = @"ib_text_pop_icon_highlight_underline";
  if (theme == 3)
  {
    v3 = @"ib_text_pop_icon_highlight_underline_night";
  }

  v4 = v3;
  v5 = IMCommonCoreBundle();
  v6 = [UIImage imageNamed:v4 inBundle:v5];

  return v6;
}

- (id)p_colorControlUnderlineImageForPageTheme:(int64_t)theme
{
  v5 = [(AEHighlightColorEditorController *)self p_colorForTag:6 pageTheme:theme];
  v6 = [AEHighlightColorEditorController p_underlineForegroundImageForPageTheme:theme];
  v7 = [(AEHighlightColorEditorController *)self p_colorControlImageForColor:v5 withForegroundImage:v6];

  return v7;
}

- (id)p_colorControlImageForTag:(int64_t)tag pageTheme:(int64_t)theme
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_172934;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_3460F0 != -1)
  {
    dispatch_once(&qword_3460F0, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_2CED78[theme];
    v8 = [NSNumber numberWithInteger:tag];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

- (void)p_drawCrescentWithCircleRect:(CGRect)rect color:(id)color leftShift:(double)shift addRadius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v28 = CGRectGetMidX(v32) - shift;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MidY = CGRectGetMidY(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  radiusCopy = radius;
  v29 = height;
  v30 = CGRectGetHeight(v34) * 0.5 + radius;
  v35.origin.x = x - shift;
  v35.origin.y = y;
  v14 = y;
  v35.size.width = width;
  v15 = width;
  v35.size.height = height;
  v36 = CGRectInset(v35, -radius, -radius);
  v16 = v36.origin.x;
  v17 = v36.origin.y;
  v18 = v36.size.height;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = x;
  v37.origin.y = v14;
  v37.size.width = v15;
  v37.size.height = height;
  v20 = CGRectGetMaxX(v37);
  if (MaxX < v20)
  {
    MaxX = v20;
  }

  v21 = [UIBezierPath bezierPathWithArcCenter:1 radius:v28 startAngle:MidY endAngle:v30 clockwise:-1.57079633, 1.57079633, *&MidY];
  v38.origin.x = v16;
  v38.origin.y = v17;
  v38.size.width = MaxX;
  v38.size.height = v18;
  v22 = CGRectGetMaxX(v38) + radiusCopy;
  v39.origin.x = v16;
  v39.origin.y = v17;
  v39.size.width = MaxX;
  v39.size.height = v18;
  [v21 addLineToPoint:{v22, CGRectGetMaxY(v39)}];
  v40.origin.x = v16;
  v40.origin.y = v17;
  v40.size.width = MaxX;
  v40.size.height = v18;
  v23 = CGRectGetMaxX(v40) + radiusCopy;
  v41.origin.x = v16;
  v41.origin.y = v17;
  v41.size.width = MaxX;
  v41.size.height = v18;
  [v21 addLineToPoint:{v23, CGRectGetMinY(v41)}];
  v42.origin.x = v16;
  v42.origin.y = v17;
  v42.size.width = MaxX;
  v42.size.height = v18;
  v24 = v30 + CGRectGetMinX(v42);
  v43.origin.x = v16;
  v43.origin.y = v17;
  v43.size.width = MaxX;
  v43.size.height = v18;
  [v21 addLineToPoint:{v24, CGRectGetMinY(v43)}];
  [v21 closePath];
  [v21 addClip];
  [colorCopy setStroke];
  [colorCopy setFill];

  v25 = [UIBezierPath bezierPathWithOvalInRect:x, v14, v15, v29];
  [v25 stroke];
  [v25 fill];

  CGContextRestoreGState(CurrentContext);
}

- (id)p_paletteImageWithFrontColor:(id)color middleColor:(id)middleColor backColor:(id)backColor frontForegroundImage:(id)image
{
  imageCopy = image;
  backColorCopy = backColor;
  middleColorCopy = middleColor;
  colorCopy = color;
  if (isRetina())
  {
    v14 = 1.5;
  }

  else
  {
    v14 = 2.0;
  }

  v18.width = 40.0;
  v18.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  [(AEHighlightColorEditorController *)self p_drawCrescentWithCircleRect:backColorCopy color:11.5 leftShift:5.0 addRadius:27.0, 27.0, 5.0, v14];

  [(AEHighlightColorEditorController *)self p_drawCrescentWithCircleRect:middleColorCopy color:6.5 leftShift:5.0 addRadius:27.0, 27.0, 5.0, v14];
  [(AEHighlightColorEditorController *)self p_drawColorControlCircleWithFrame:colorCopy color:1.5, 5.0, 27.0, 27.0];

  [imageCopy drawInRect:{1.5, 5.0, 27.0, 27.0}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)p_buildPaletteImageForFrontTag:(int64_t)tag middleTag:(int64_t)middleTag backTag:(int64_t)backTag pageTheme:(int64_t)theme
{
  v11 = [(AEHighlightColorEditorController *)self p_colorForTag:tag pageTheme:theme];
  v12 = [(AEHighlightColorEditorController *)self p_colorForTag:middleTag pageTheme:theme];
  v13 = [(AEHighlightColorEditorController *)self p_colorForTag:backTag pageTheme:theme];
  if (tag == 6)
  {
    v14 = [AEHighlightColorEditorController p_underlineForegroundImageForPageTheme:theme];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(AEHighlightColorEditorController *)self p_paletteImageWithFrontColor:v11 middleColor:v12 backColor:v13 frontForegroundImage:v14];

  return v15;
}

- (id)p_paletteImageForTag:(int64_t)tag pageTheme:(int64_t)theme
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17326C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_346120 != -1)
  {
    dispatch_once(&qword_346120, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_2CEDA0[theme];
    v8 = [NSNumber numberWithInteger:tag];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

- (id)p_monochromaticImageFromImage:(id)image withColor:(id)color
{
  colorCopy = color;
  imageCopy = image;
  [imageCopy size];
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [imageCopy size];
  v9 = v8;
  [imageCopy size];
  v11 = v10;
  [imageCopy size];
  CGContextTranslateCTM(CurrentContext, 0.0, v12);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  cGImage = [imageCopy CGImage];

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v9;
  v18.size.height = v11;
  CGContextClipToMask(CurrentContext, v18, cGImage);
  [colorCopy setFill];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v9;
  v19.size.height = v11;
  CGContextFillRect(CurrentContext, v19);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (id)p_noteGlyphForTag:(int64_t)tag pageTheme:(int64_t)theme
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_173794;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_346150 != -1)
  {
    dispatch_once(&qword_346150, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_2CEDC8[theme];
    v8 = [NSNumber numberWithInteger:tag];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

@end