@interface AKHighlightColorEditorController
- (BOOL)p_shouldShowCompactMenu;
- (BOOL)p_shouldShowShareButton;
- (UIView)colorControls;
- (id)localizedAccessibilityStringForStyle:(int64_t)style;
- (id)p_buildPaletteImageForFrontTag:(int64_t)tag middleTag:(int64_t)middleTag backTag:(int64_t)backTag pageTheme:(int)theme;
- (id)p_colorControlImageForColor:(id)color withForegroundImage:(id)image;
- (id)p_colorControlImageForTag:(int64_t)tag pageTheme:(int)theme;
- (id)p_colorControlUnderlineImageForPageTheme:(int)theme;
- (id)p_colorForTag:(int64_t)tag pageTheme:(int)theme;
- (id)p_monochromaticImageFromImage:(id)image withColor:(id)color;
- (id)p_noteGlyphForTag:(int64_t)tag pageTheme:(int)theme;
- (id)p_paletteImageForTag:(int64_t)tag pageTheme:(int)theme;
- (id)p_paletteImageWithFrontColor:(id)color middleColor:(id)middleColor backColor:(id)backColor frontForegroundImage:(id)image;
- (id)p_themeForStyle:(int64_t)style pageTheme:(int)theme;
- (id)p_underlineForegroundImageForPageTheme:(int)theme;
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

@implementation AKHighlightColorEditorController

- (void)releaseOutlets
{
  v7.receiver = self;
  v7.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v7 releaseOutlets];
  [(AKHighlightColorEditorController *)self setCalloutBar:0];
  [(AKHighlightColorEditorController *)self setColorControls:0];
  addNoteButton = [(AKHighlightColorEditorController *)self addNoteButton];
  [addNoteButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setAddNoteButton:0];
  deleteButton = [(AKHighlightColorEditorController *)self deleteButton];
  [deleteButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setDeleteButton:0];
  rightArrowButton = [(AKHighlightColorEditorController *)self rightArrowButton];
  [rightArrowButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setRightArrowButton:0];
  shareButton = [(AKHighlightColorEditorController *)self shareButton];
  [shareButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setShareButton:0];
  [(AKHighlightColorEditorController *)self setAlertController:0];
}

- (void)loadView
{
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 435.0, 55.0}];
  [(AKHighlightColorEditorController *)self setView:v3];
}

- (void)viewDidLoad
{
  v52.receiver = self;
  v52.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v52 viewDidLoad];
  v3 = [AKCalloutBar alloc];
  view = [(AKHighlightColorEditorController *)self view];
  [view bounds];
  v5 = [(AKCalloutBar *)v3 initWithFrame:?];

  [(AKCalloutBar *)v5 setAutoresizingMask:18];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    annotation = [(AKAnnotationPopoverViewController *)self annotation];
    v51 = [delegate editorController:self isRightArrowEnabledForAnnotation:annotation];
  }

  else
  {
    v51 = 1;
  }

  if ([(AKHighlightColorEditorController *)self p_shouldShowCompactMenu])
  {
    annotationTheme = [(AKAnnotationPopoverViewController *)self annotationTheme];
    v10 = [(AKHighlightColorEditorController *)self p_buttonTagForTheme:annotationTheme];

    v11 = [AKFingerPotView alloc];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    colorControls = [(AKFingerPotView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], v13, v14, v15];
    v17 = [(AKHighlightColorEditorController *)self p_paletteImageForTag:v10 pageTheme:[(AKHighlightColorEditorController *)self pageTheme]];
    [(AKFingerPotView *)colorControls setImage:v17 forState:0];

    [(AKFingerPotView *)colorControls addTarget:self action:sel_showColorControlsMenu_ forControlEvents:64];
    [(AKFingerPotView *)colorControls setFrame:0.0, 0.0, 40.0, 38.0];
    v18 = +[AKController akBundle];
    v19 = [v18 localizedStringForKey:@"Selection_Menu_Colors" value:@"Colors…" table:@"AKHighlightColorEditorController"];
    [(AKFingerPotView *)colorControls setAccessibilityLabel:v19];
  }

  else
  {
    colorControls = [(AKHighlightColorEditorController *)self colorControls];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  [v6 addObject:colorControls];
  v20 = [[AKFingerPotView alloc] initWithFrame:v12, v13, v14, v15];
  v21 = [MEMORY[0x277D755B8] akImageNamed:@"ib_text_pop_icon_trash"];
  [(AKFingerPotView *)v20 setImage:v21 forState:0];

  [(AKFingerPotView *)v20 addTarget:self action:sel_handleDeleteButtonTap_ forControlEvents:64];
  [(AKFingerPotView *)v20 setFrame:0.0, 0.0, 40.0, 38.0];
  v22 = +[AKController akBundle];
  v23 = [v22 localizedStringForKey:@"Selection_Menu_Delete_Highlight" value:@"Remove Highlight" table:@"AKHighlightColorEditorController"];
  [(AKFingerPotView *)v20 setAccessibilityLabel:v23];

  [(AKHighlightColorEditorController *)self setDeleteButton:v20];
  [v6 addObject:v20];
  v24 = [AKCalloutButton buttonWithType:0];
  mAddNoteButton = self->mAddNoteButton;
  self->mAddNoteButton = v24;

  v26 = self->mAddNoteButton;
  v27 = [(AKHighlightColorEditorController *)self p_noteGlyphForTag:1 pageTheme:[(AKHighlightColorEditorController *)self pageTheme]];
  [(UIButton *)v26 setImage:v27 forState:0];

  [(UIButton *)self->mAddNoteButton addTarget:self action:sel_handleAddNoteButton_ forControlEvents:64];
  [(UIButton *)self->mAddNoteButton setFrame:0.0, 0.0, 40.0, 38.0];
  v28 = +[AKController akBundle];
  v29 = [v28 localizedStringForKey:@"Selection_Menu_Annotate" value:@"Note" table:@"AKHighlightColorEditorController"];
  [(UIButton *)self->mAddNoteButton setAccessibilityLabel:v29];

  [v6 addObject:self->mAddNoteButton];
  if ([(AKHighlightColorEditorController *)self p_shouldShowShareButton])
  {
    v30 = [AKCalloutButton buttonWithType:0];
    mShareButton = self->mShareButton;
    self->mShareButton = v30;

    v32 = [MEMORY[0x277D755B8] akImageNamed:@"ib_text_pop_icon_actions"];
    [(UIButton *)self->mShareButton setImage:v32 forState:0];
    [(UIButton *)self->mShareButton addTarget:self action:sel_handleShareButton_ forControlEvents:64];
    [(UIButton *)self->mShareButton setFrame:0.0, 0.0, 40.0, 38.0];
    v33 = +[AKController akBundle];
    v34 = [v33 localizedStringForKey:@"Selection_Menu_Share" value:@"Share" table:@"AKHighlightColorEditorController"];
    [(UIButton *)self->mShareButton setAccessibilityLabel:v34];

    [v6 addObject:self->mShareButton];
  }

  if (v51)
  {
    v35 = [AKCalloutButton buttonWithType:0];
    v36 = [MEMORY[0x277D755B8] akImageNamed:@"ib_text_pop_icon_more"];
    [v35 setImage:v36 forState:0];

    [v35 addTarget:self action:sel_handleRightArrowButton_ forControlEvents:64];
    [v35 setFrame:{0.0, 0.0, 40.0, 38.0}];
    v37 = +[AKController akBundle];
    v38 = [v37 localizedStringForKey:@"Selection_Menu_More" value:@"More" table:@"AKHighlightColorEditorController"];
    [v35 setAccessibilityLabel:v38];

    [(AKHighlightColorEditorController *)self setRightArrowButton:v35];
    [v6 addObject:v35];
  }

  [(AKCalloutBar *)v5 setControls:v6];
  [(AKCalloutBar *)v5 sizeThatFitsControls:v6];
  v40 = v39;
  v42 = v41;
  if ([(AKHighlightColorEditorController *)self p_shouldShowCompactMenu])
  {
    v43 = objc_alloc(MEMORY[0x277CBEA60]);
    colorControls2 = [(AKHighlightColorEditorController *)self colorControls];
    v45 = [v43 initWithObjects:{colorControls2, 0}];

    [(AKCalloutBar *)v5 sizeThatFitsControls:v45];
    if (v40 < v46)
    {
      v40 = v46;
    }
  }

  [(AKCalloutBar *)v5 setFrame:0.0, 0.0, v40, v42];
  [(AKCalloutBar *)v5 frame];
  Width = CGRectGetWidth(v53);
  [(AKCalloutBar *)v5 frame];
  Height = CGRectGetHeight(v54);
  view2 = [(AKHighlightColorEditorController *)self view];
  [view2 setFrame:{0.0, 0.0, Width, Height}];

  view3 = [(AKHighlightColorEditorController *)self view];
  [view3 addSubview:v5];

  [(AKHighlightColorEditorController *)self setCalloutBar:v5];
  [(AKHighlightColorEditorController *)self p_updateAppearance];
}

- (BOOL)p_shouldShowShareButton
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    annotation = [(AKAnnotationPopoverViewController *)self annotation];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];

  p_shouldShowShareButton = 1;
  v6 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
  v7 = [traitCollection containsTraitsInCollection:v6];

  if ((v7 & 1) == 0)
  {
    p_shouldShowShareButton = [(AKHighlightColorEditorController *)self p_shouldShowShareButton];
  }

  return p_shouldShowShareButton;
}

- (UIView)colorControls
{
  v27 = *MEMORY[0x277D85DE8];
  mColorControls = self->mColorControls;
  if (!mColorControls)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->mColorControls;
    self->mColorControls = v4;

    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Yellow", @"Green", @"Blue", @"Pink", @"Purple", @"Underline", 0}];
    v22 = 0u;
    v23 = 0u;
    if ([(AKHighlightColorEditorController *)self p_shouldShowCompactMenu])
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 2.0;
    }

    v24 = 0uLL;
    v25 = 0uLL;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      v12 = *MEMORY[0x277CBF3A0];
      v13 = *(MEMORY[0x277CBF3A0] + 8);
      v14 = *(MEMORY[0x277CBF3A0] + 16);
      v15 = *(MEMORY[0x277CBF3A0] + 24);
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v17 = [v8 indexOfObject:*(*(&v22 + 1) + 8 * i)];
          v18 = [[AKFingerPotView alloc] initWithFrame:v12, v13, v14, v15];
          v19 = [(AKHighlightColorEditorController *)self p_colorControlImageForTag:v17 + 1 pageTheme:[(AKHighlightColorEditorController *)self pageTheme]];
          [(AKFingerPotView *)v18 setMenuImage:v19];

          v20 = [(AKHighlightColorEditorController *)self localizedAccessibilityStringForStyle:v17 + 1];
          [(AKFingerPotView *)v18 setAccessibilityLabel:v20];

          [(AKFingerPotView *)v18 addTarget:self action:sel_useColorOf_ forControlEvents:64];
          [(AKFingerPotView *)v18 setFrame:v7, 0.0, 38.0, 38.0];
          [(AKFingerPotView *)v18 setTag:v17 + 1];
          [(UIView *)self->mColorControls addSubview:v18];
          v7 = v7 + 42.0;
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  if ([(AKHighlightColorEditorController *)self isViewLoaded])
  {
    annotationTheme = [(AKAnnotationPopoverViewController *)self annotationTheme];
    v4 = [(AKHighlightColorEditorController *)self p_buttonTagForTheme:annotationTheme];

    for (i = 1; i != 7; ++i)
    {
      v6 = [(UIView *)self->mColorControls viewWithTag:i];
      [v6 setSelected:v4 == i];
    }

    mAddNoteButton = self->mAddNoteButton;
    v8 = [(AKHighlightColorEditorController *)self p_noteGlyphForTag:v4 pageTheme:[(AKHighlightColorEditorController *)self pageTheme]];
    [(UIButton *)mAddNoteButton setImage:v8 forState:0];

    v9 = self->super.mPosition == 1;
    calloutBar = [(AKHighlightColorEditorController *)self calloutBar];
    [calloutBar setUp:v9];
  }
}

- (void)willShow
{
  v4.receiver = self;
  v4.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v4 willShow];
  calloutBar = [(AKHighlightColorEditorController *)self calloutBar];
  [calloutBar setBlurDisabled:1];
}

- (void)didShow
{
  v4.receiver = self;
  v4.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v4 didShow];
  calloutBar = [(AKHighlightColorEditorController *)self calloutBar];
  [calloutBar setBlurDisabled:0];
}

- (void)presentFromRect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21.receiver = self;
  v21.super_class = AKHighlightColorEditorController;
  viewCopy = view;
  [(AKAnnotationPopoverViewController *)&v21 presentFromRect:viewCopy view:x, y, width, height];
  v10 = [(AKHighlightColorEditorController *)self calloutBar:v21.receiver];
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
  calloutBar = [(AKHighlightColorEditorController *)self calloutBar];
  [calloutBar setArrowX:MidX];
}

- (id)localizedAccessibilityStringForStyle:(int64_t)style
{
  v3 = 0;
  if (style > 3)
  {
    switch(style)
    {
      case 4:
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Highlight_Style_Pink";
        v7 = @"Pink";
        break;
      case 5:
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Highlight_Style_Purple";
        v7 = @"Purple";
        break;
      case 6:
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Highlight_Style_Underline";
        v7 = @"Underline";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(style)
    {
      case 1:
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Highlight_Style_Yellow";
        v7 = @"Yellow";
        break;
      case 2:
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Highlight_Style_Green";
        v7 = @"Green";
        break;
      case 3:
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Highlight_Style_Blue";
        v7 = @"Blue";
        break;
      default:
        goto LABEL_15;
    }
  }

  v3 = [v4 localizedStringForKey:v6 value:v7 table:@"AKHighlightColorEditorController"];

LABEL_15:

  return v3;
}

- (id)p_themeForStyle:(int64_t)style pageTheme:(int)theme
{
  v4 = 0;
  if (style > 3)
  {
    switch(style)
    {
      case 4:
        v4 = [AKAnnotationTheme pinkTheme:*&theme];
        break;
      case 5:
        v4 = [AKAnnotationTheme purpleTheme:*&theme];
        break;
      case 6:
        v4 = [AKAnnotationTheme underlineTheme:*&theme];
        break;
    }
  }

  else
  {
    switch(style)
    {
      case 1:
        v4 = [AKAnnotationTheme yellowTheme:*&theme];
        break;
      case 2:
        v4 = [AKAnnotationTheme greenTheme:*&theme];
        break;
      case 3:
        v4 = [AKAnnotationTheme blueTheme:*&theme];
        break;
    }
  }

  return v4;
}

- (void)p_setStyle:(int64_t)style forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationTheme = [(AKAnnotationPopoverViewController *)self annotationTheme];
  pageTheme = [annotationTheme pageTheme];

  v10 = [(AKHighlightColorEditorController *)self p_themeForStyle:style pageTheme:pageTheme];
  [(AKAnnotationPopoverViewController *)self setAnnotationTheme:v10];
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  [delegate editorController:self setTheme:v10 forAnnotation:annotationCopy];
}

- (void)p_removeAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  [delegate editorController:self deleteAnnotation:annotationCopy];
}

- (void)p_postDeleteConfirmation
{
  v3 = +[AKController akBundle];
  v4 = [v3 localizedStringForKey:@"Delete_Highlight_Title" value:@"Delete Highlight" table:@"AKHighlightColorEditorController"];

  v5 = +[AKController akBundle];
  v6 = [v5 localizedStringForKey:@"Delete_Highlight_Message" value:@"The associated note will also be deleted." table:@"AKHighlightColorEditorController"];

  v7 = +[AKController akBundle];
  v8 = [v7 localizedStringForKey:@"Delete_Highlight_Cancel" value:@"Cancel" table:@"AKHighlightColorEditorController"];

  v9 = +[AKController akBundle];
  v10 = [v9 localizedStringForKey:@"Delete_Highlight_Delete" value:@"Delete" table:@"AKHighlightColorEditorController"];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  [(AKHighlightColorEditorController *)self setAlertController:v11];
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:1 handler:0];
  [v11 addAction:v12];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23F4628E8;
  v14[3] = &unk_278C7BE58;
  v14[4] = self;
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:2 handler:v14];
  [v11 addAction:v13];

  [(AKHighlightColorEditorController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  alertController = [(AKHighlightColorEditorController *)self alertController];
  [alertController dismissViewControllerAnimated:1 completion:0];

  [(AKHighlightColorEditorController *)self setAlertController:0];
  v6.receiver = self;
  v6.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v6 setDelegate:delegateCopy];
}

- (void)useColorOf:(id)of
{
  v4 = [of tag];
  annotation = [(AKAnnotationPopoverViewController *)self annotation];
  [(AKHighlightColorEditorController *)self p_setStyle:v4 forAnnotation:annotation];

  [(AKHighlightColorEditorController *)self p_updateAppearance];
}

- (void)showColorControlsMenu:(id)menu
{
  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  colorControls = [(AKHighlightColorEditorController *)self colorControls];
  v7 = [v4 initWithObjects:{colorControls, 0}];

  calloutBar = [(AKHighlightColorEditorController *)self calloutBar];
  [calloutBar setControls:v7];
}

- (void)handleAddNoteButton:(id)button
{
  [(AKAnnotationPopoverViewController *)self hide];
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  annotation = [(AKAnnotationPopoverViewController *)self annotation];
  [delegate editorController:self editNote:annotation];
}

- (void)handleShareButton:(id)button
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AKAnnotationPopoverViewController *)self delegate];
    annotation = [(AKAnnotationPopoverViewController *)self annotation];
    [delegate2 editorController:self shareAnnotation:annotation];
  }

  [(AKAnnotationPopoverViewController *)self hide];
}

- (void)handleDeleteButtonTap:(id)tap
{
  annotation = [(AKAnnotationPopoverViewController *)self annotation];
  [(AKHighlightColorEditorController *)self p_removeAnnotation:annotation];

  [(AKAnnotationPopoverViewController *)self hide];
}

- (void)handleRightArrowButton:(id)button
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  [(AKAnnotationPopoverViewController *)self hide];
  annotation = [(AKAnnotationPopoverViewController *)self annotation];
  [delegate editorController:self showEditMenuForAnnotation:annotation];
}

- (id)p_colorForTag:(int64_t)tag pageTheme:(int)theme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F462DA8;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B6C0 != -1)
  {
    dispatch_once(&qword_27E39B6C0, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_278C7BEC8[theme];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:tag];
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

  v13 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, v11, v11}];
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
  [(AKHighlightColorEditorController *)self p_drawColorControlCircleWithFrame:colorCopy color:6.0, 6.0, 26.0, 26.0];

  [imageCopy drawAtPoint:{6.0, 6.0}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

- (id)p_underlineForegroundImageForPageTheme:(int)theme
{
  if (theme == 3)
  {
    v3 = @"ib_text_pop_icon_highlight_underline_night";
  }

  else
  {
    v3 = @"ib_text_pop_icon_highlight_underline";
  }

  return [MEMORY[0x277D755B8] akImageNamed:v3];
}

- (id)p_colorControlUnderlineImageForPageTheme:(int)theme
{
  v3 = *&theme;
  v5 = [(AKHighlightColorEditorController *)self p_colorForTag:6 pageTheme:*&theme];
  v6 = [(AKHighlightColorEditorController *)self p_underlineForegroundImageForPageTheme:v3];
  v7 = [(AKHighlightColorEditorController *)self p_colorControlImageForColor:v5 withForegroundImage:v6];

  return v7;
}

- (id)p_colorControlImageForTag:(int64_t)tag pageTheme:(int)theme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F463450;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B6F0 != -1)
  {
    dispatch_once(&qword_27E39B6F0, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_278C7BEF0[theme];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:tag];
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

  v21 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v28 startAngle:MidY endAngle:v30 clockwise:{-1.57079633, 1.57079633, *&MidY}];
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

  v25 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, v14, v15, v29}];
  [v25 stroke];
  [v25 fill];

  CGContextRestoreGState(CurrentContext);
}

- (id)p_paletteImageWithFrontColor:(id)color middleColor:(id)middleColor backColor:(id)backColor frontForegroundImage:(id)image
{
  v10 = MEMORY[0x277D759A0];
  imageCopy = image;
  backColorCopy = backColor;
  middleColorCopy = middleColor;
  colorCopy = color;
  mainScreen = [v10 mainScreen];
  if (objc_opt_respondsToSelector())
  {
    [mainScreen scale];
    v17 = v16;

    if (v17 <= 1.0)
    {
      v18 = 2.0;
    }

    else
    {
      v18 = 1.5;
    }
  }

  else
  {

    v18 = 2.0;
  }

  v22.width = 40.0;
  v22.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
  [(AKHighlightColorEditorController *)self p_drawCrescentWithCircleRect:backColorCopy color:11.5 leftShift:5.0 addRadius:27.0, 27.0, 5.0, v18];

  [(AKHighlightColorEditorController *)self p_drawCrescentWithCircleRect:middleColorCopy color:6.5 leftShift:5.0 addRadius:27.0, 27.0, 5.0, v18];
  [(AKHighlightColorEditorController *)self p_drawColorControlCircleWithFrame:colorCopy color:1.5, 5.0, 27.0, 27.0];

  [imageCopy drawInRect:{1.5, 5.0, 27.0, 27.0}];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (id)p_buildPaletteImageForFrontTag:(int64_t)tag middleTag:(int64_t)middleTag backTag:(int64_t)backTag pageTheme:(int)theme
{
  v6 = *&theme;
  v11 = [(AKHighlightColorEditorController *)self p_colorForTag:tag pageTheme:*&theme];
  v12 = [(AKHighlightColorEditorController *)self p_colorForTag:middleTag pageTheme:v6];
  v13 = [(AKHighlightColorEditorController *)self p_colorForTag:backTag pageTheme:v6];
  if (tag == 6)
  {
    v14 = [(AKHighlightColorEditorController *)self p_underlineForegroundImageForPageTheme:v6];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(AKHighlightColorEditorController *)self p_paletteImageWithFrontColor:v11 middleColor:v12 backColor:v13 frontForegroundImage:v14];

  return v15;
}

- (id)p_paletteImageForTag:(int64_t)tag pageTheme:(int)theme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F463DD0;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B720 != -1)
  {
    dispatch_once(&qword_27E39B720, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_278C7BF18[theme];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:tag];
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

- (id)p_noteGlyphForTag:(int64_t)tag pageTheme:(int)theme
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F4642F8;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B750 != -1)
  {
    dispatch_once(&qword_27E39B750, block);
  }

  v6 = 0;
  if (tag && tag <= 6 && theme <= 4)
  {
    v7 = *off_278C7BF40[theme];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:tag];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

@end