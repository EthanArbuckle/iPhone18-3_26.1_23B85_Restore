@interface AKHighlightColorEditorController
- (BOOL)p_shouldShowCompactMenu;
- (BOOL)p_shouldShowShareButton;
- (UIView)colorControls;
- (id)localizedAccessibilityStringForStyle:(int64_t)a3;
- (id)p_buildPaletteImageForFrontTag:(int64_t)a3 middleTag:(int64_t)a4 backTag:(int64_t)a5 pageTheme:(int)a6;
- (id)p_colorControlImageForColor:(id)a3 withForegroundImage:(id)a4;
- (id)p_colorControlImageForTag:(int64_t)a3 pageTheme:(int)a4;
- (id)p_colorControlUnderlineImageForPageTheme:(int)a3;
- (id)p_colorForTag:(int64_t)a3 pageTheme:(int)a4;
- (id)p_monochromaticImageFromImage:(id)a3 withColor:(id)a4;
- (id)p_noteGlyphForTag:(int64_t)a3 pageTheme:(int)a4;
- (id)p_paletteImageForTag:(int64_t)a3 pageTheme:(int)a4;
- (id)p_paletteImageWithFrontColor:(id)a3 middleColor:(id)a4 backColor:(id)a5 frontForegroundImage:(id)a6;
- (id)p_themeForStyle:(int64_t)a3 pageTheme:(int)a4;
- (id)p_underlineForegroundImageForPageTheme:(int)a3;
- (int64_t)p_buttonTagForTheme:(id)a3;
- (void)didShow;
- (void)handleAddNoteButton:(id)a3;
- (void)handleDeleteButtonTap:(id)a3;
- (void)handleRightArrowButton:(id)a3;
- (void)handleShareButton:(id)a3;
- (void)loadView;
- (void)p_drawColorControlCircleWithFrame:(CGRect)a3 color:(id)a4;
- (void)p_drawCrescentWithCircleRect:(CGRect)a3 color:(id)a4 leftShift:(double)a5 addRadius:(double)a6;
- (void)p_postDeleteConfirmation;
- (void)p_removeAnnotation:(id)a3;
- (void)p_setStyle:(int64_t)a3 forAnnotation:(id)a4;
- (void)p_updateAppearance;
- (void)presentFromRect:(CGRect)a3 view:(id)a4;
- (void)releaseOutlets;
- (void)setDelegate:(id)a3;
- (void)showColorControlsMenu:(id)a3;
- (void)useColorOf:(id)a3;
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
  v3 = [(AKHighlightColorEditorController *)self addNoteButton];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setAddNoteButton:0];
  v4 = [(AKHighlightColorEditorController *)self deleteButton];
  [v4 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setDeleteButton:0];
  v5 = [(AKHighlightColorEditorController *)self rightArrowButton];
  [v5 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(AKHighlightColorEditorController *)self setRightArrowButton:0];
  v6 = [(AKHighlightColorEditorController *)self shareButton];
  [v6 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

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
  v4 = [(AKHighlightColorEditorController *)self view];
  [v4 bounds];
  v5 = [(AKCalloutBar *)v3 initWithFrame:?];

  [(AKCalloutBar *)v5 setAutoresizingMask:18];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(AKAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(AKAnnotationPopoverViewController *)self annotation];
    v51 = [v7 editorController:self isRightArrowEnabledForAnnotation:v8];
  }

  else
  {
    v51 = 1;
  }

  if ([(AKHighlightColorEditorController *)self p_shouldShowCompactMenu])
  {
    v9 = [(AKAnnotationPopoverViewController *)self annotationTheme];
    v10 = [(AKHighlightColorEditorController *)self p_buttonTagForTheme:v9];

    v11 = [AKFingerPotView alloc];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v16 = [(AKFingerPotView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], v13, v14, v15];
    v17 = [(AKHighlightColorEditorController *)self p_paletteImageForTag:v10 pageTheme:[(AKHighlightColorEditorController *)self pageTheme]];
    [(AKFingerPotView *)v16 setImage:v17 forState:0];

    [(AKFingerPotView *)v16 addTarget:self action:sel_showColorControlsMenu_ forControlEvents:64];
    [(AKFingerPotView *)v16 setFrame:0.0, 0.0, 40.0, 38.0];
    v18 = +[AKController akBundle];
    v19 = [v18 localizedStringForKey:@"Selection_Menu_Colors" value:@"Colors…" table:@"AKHighlightColorEditorController"];
    [(AKFingerPotView *)v16 setAccessibilityLabel:v19];
  }

  else
  {
    v16 = [(AKHighlightColorEditorController *)self colorControls];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  [v6 addObject:v16];
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
    v44 = [(AKHighlightColorEditorController *)self colorControls];
    v45 = [v43 initWithObjects:{v44, 0}];

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
  v49 = [(AKHighlightColorEditorController *)self view];
  [v49 setFrame:{0.0, 0.0, Width, Height}];

  v50 = [(AKHighlightColorEditorController *)self view];
  [v50 addSubview:v5];

  [(AKHighlightColorEditorController *)self setCalloutBar:v5];
  [(AKHighlightColorEditorController *)self p_updateAppearance];
}

- (BOOL)p_shouldShowShareButton
{
  v3 = [(AKAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [(AKAnnotationPopoverViewController *)self annotation];
    v5 = [v3 editorController:self isSharingEnabledForAnnotation:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)p_shouldShowCompactMenu
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 traitCollection];

  v5 = 1;
  v6 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
  v7 = [v4 containsTraitsInCollection:v6];

  if ((v7 & 1) == 0)
  {
    v5 = [(AKHighlightColorEditorController *)self p_shouldShowShareButton];
  }

  return v5;
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

- (int64_t)p_buttonTagForTheme:(id)a3
{
  v3 = a3;
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
    v3 = [(AKAnnotationPopoverViewController *)self annotationTheme];
    v4 = [(AKHighlightColorEditorController *)self p_buttonTagForTheme:v3];

    for (i = 1; i != 7; ++i)
    {
      v6 = [(UIView *)self->mColorControls viewWithTag:i];
      [v6 setSelected:v4 == i];
    }

    mAddNoteButton = self->mAddNoteButton;
    v8 = [(AKHighlightColorEditorController *)self p_noteGlyphForTag:v4 pageTheme:[(AKHighlightColorEditorController *)self pageTheme]];
    [(UIButton *)mAddNoteButton setImage:v8 forState:0];

    v9 = self->super.mPosition == 1;
    v10 = [(AKHighlightColorEditorController *)self calloutBar];
    [v10 setUp:v9];
  }
}

- (void)willShow
{
  v4.receiver = self;
  v4.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v4 willShow];
  v3 = [(AKHighlightColorEditorController *)self calloutBar];
  [v3 setBlurDisabled:1];
}

- (void)didShow
{
  v4.receiver = self;
  v4.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v4 didShow];
  v3 = [(AKHighlightColorEditorController *)self calloutBar];
  [v3 setBlurDisabled:0];
}

- (void)presentFromRect:(CGRect)a3 view:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21.receiver = self;
  v21.super_class = AKHighlightColorEditorController;
  v9 = a4;
  [(AKAnnotationPopoverViewController *)&v21 presentFromRect:v9 view:x, y, width, height];
  v10 = [(AKHighlightColorEditorController *)self calloutBar:v21.receiver];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v22.origin.x = v12;
  v22.origin.y = v14;
  v22.size.width = v16;
  v22.size.height = v18;
  MidX = CGRectGetMidX(v22);
  v20 = [(AKHighlightColorEditorController *)self calloutBar];
  [v20 setArrowX:MidX];
}

- (id)localizedAccessibilityStringForStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    switch(a3)
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
    switch(a3)
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

- (id)p_themeForStyle:(int64_t)a3 pageTheme:(int)a4
{
  v4 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v4 = [AKAnnotationTheme pinkTheme:*&a4];
        break;
      case 5:
        v4 = [AKAnnotationTheme purpleTheme:*&a4];
        break;
      case 6:
        v4 = [AKAnnotationTheme underlineTheme:*&a4];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v4 = [AKAnnotationTheme yellowTheme:*&a4];
        break;
      case 2:
        v4 = [AKAnnotationTheme greenTheme:*&a4];
        break;
      case 3:
        v4 = [AKAnnotationTheme blueTheme:*&a4];
        break;
    }
  }

  return v4;
}

- (void)p_setStyle:(int64_t)a3 forAnnotation:(id)a4
{
  v6 = a4;
  v7 = [(AKAnnotationPopoverViewController *)self annotationTheme];
  v8 = [v7 pageTheme];

  v10 = [(AKHighlightColorEditorController *)self p_themeForStyle:a3 pageTheme:v8];
  [(AKAnnotationPopoverViewController *)self setAnnotationTheme:v10];
  v9 = [(AKAnnotationPopoverViewController *)self delegate];
  [v9 editorController:self setTheme:v10 forAnnotation:v6];
}

- (void)p_removeAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AKAnnotationPopoverViewController *)self delegate];
  [v5 editorController:self deleteAnnotation:v4];
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AKHighlightColorEditorController *)self alertController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  [(AKHighlightColorEditorController *)self setAlertController:0];
  v6.receiver = self;
  v6.super_class = AKHighlightColorEditorController;
  [(AKAnnotationPopoverViewController *)&v6 setDelegate:v4];
}

- (void)useColorOf:(id)a3
{
  v4 = [a3 tag];
  v5 = [(AKAnnotationPopoverViewController *)self annotation];
  [(AKHighlightColorEditorController *)self p_setStyle:v4 forAnnotation:v5];

  [(AKHighlightColorEditorController *)self p_updateAppearance];
}

- (void)showColorControlsMenu:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  v5 = [(AKHighlightColorEditorController *)self colorControls];
  v7 = [v4 initWithObjects:{v5, 0}];

  v6 = [(AKHighlightColorEditorController *)self calloutBar];
  [v6 setControls:v7];
}

- (void)handleAddNoteButton:(id)a3
{
  [(AKAnnotationPopoverViewController *)self hide];
  v5 = [(AKAnnotationPopoverViewController *)self delegate];
  v4 = [(AKAnnotationPopoverViewController *)self annotation];
  [v5 editorController:self editNote:v4];
}

- (void)handleShareButton:(id)a3
{
  v4 = [(AKAnnotationPopoverViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AKAnnotationPopoverViewController *)self delegate];
    v7 = [(AKAnnotationPopoverViewController *)self annotation];
    [v6 editorController:self shareAnnotation:v7];
  }

  [(AKAnnotationPopoverViewController *)self hide];
}

- (void)handleDeleteButtonTap:(id)a3
{
  v4 = [(AKAnnotationPopoverViewController *)self annotation];
  [(AKHighlightColorEditorController *)self p_removeAnnotation:v4];

  [(AKAnnotationPopoverViewController *)self hide];
}

- (void)handleRightArrowButton:(id)a3
{
  v5 = [(AKAnnotationPopoverViewController *)self delegate];
  [(AKAnnotationPopoverViewController *)self hide];
  v4 = [(AKAnnotationPopoverViewController *)self annotation];
  [v5 editorController:self showEditMenuForAnnotation:v4];
}

- (id)p_colorForTag:(int64_t)a3 pageTheme:(int)a4
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
  if (a3 && a3 <= 6 && a4 <= 4)
  {
    v7 = *off_278C7BEC8[a4];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

- (void)p_drawColorControlCircleWithFrame:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
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
  [v8 setStroke];
  [v8 setFill];

  v13 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, v11, v11}];
  [v13 stroke];
  [v13 fill];

  CGContextRestoreGState(CurrentContext);
}

- (id)p_colorControlImageForColor:(id)a3 withForegroundImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11.width = 38.0;
  v11.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  [(AKHighlightColorEditorController *)self p_drawColorControlCircleWithFrame:v7 color:6.0, 6.0, 26.0, 26.0];

  [v6 drawAtPoint:{6.0, 6.0}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

- (id)p_underlineForegroundImageForPageTheme:(int)a3
{
  if (a3 == 3)
  {
    v3 = @"ib_text_pop_icon_highlight_underline_night";
  }

  else
  {
    v3 = @"ib_text_pop_icon_highlight_underline";
  }

  return [MEMORY[0x277D755B8] akImageNamed:v3];
}

- (id)p_colorControlUnderlineImageForPageTheme:(int)a3
{
  v3 = *&a3;
  v5 = [(AKHighlightColorEditorController *)self p_colorForTag:6 pageTheme:*&a3];
  v6 = [(AKHighlightColorEditorController *)self p_underlineForegroundImageForPageTheme:v3];
  v7 = [(AKHighlightColorEditorController *)self p_colorControlImageForColor:v5 withForegroundImage:v6];

  return v7;
}

- (id)p_colorControlImageForTag:(int64_t)a3 pageTheme:(int)a4
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
  if (a3 && a3 <= 6 && a4 <= 4)
  {
    v7 = *off_278C7BEF0[a4];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

- (void)p_drawCrescentWithCircleRect:(CGRect)a3 color:(id)a4 leftShift:(double)a5 addRadius:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v28 = CGRectGetMidX(v32) - a5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MidY = CGRectGetMidY(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v27 = a6;
  v29 = height;
  v30 = CGRectGetHeight(v34) * 0.5 + a6;
  v35.origin.x = x - a5;
  v35.origin.y = y;
  v14 = y;
  v35.size.width = width;
  v15 = width;
  v35.size.height = height;
  v36 = CGRectInset(v35, -a6, -a6);
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
  v22 = CGRectGetMaxX(v38) + v27;
  v39.origin.x = v16;
  v39.origin.y = v17;
  v39.size.width = MaxX;
  v39.size.height = v18;
  [v21 addLineToPoint:{v22, CGRectGetMaxY(v39)}];
  v40.origin.x = v16;
  v40.origin.y = v17;
  v40.size.width = MaxX;
  v40.size.height = v18;
  v23 = CGRectGetMaxX(v40) + v27;
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
  [v12 setStroke];
  [v12 setFill];

  v25 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, v14, v15, v29}];
  [v25 stroke];
  [v25 fill];

  CGContextRestoreGState(CurrentContext);
}

- (id)p_paletteImageWithFrontColor:(id)a3 middleColor:(id)a4 backColor:(id)a5 frontForegroundImage:(id)a6
{
  v10 = MEMORY[0x277D759A0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 mainScreen];
  if (objc_opt_respondsToSelector())
  {
    [v15 scale];
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
  [(AKHighlightColorEditorController *)self p_drawCrescentWithCircleRect:v12 color:11.5 leftShift:5.0 addRadius:27.0, 27.0, 5.0, v18];

  [(AKHighlightColorEditorController *)self p_drawCrescentWithCircleRect:v13 color:6.5 leftShift:5.0 addRadius:27.0, 27.0, 5.0, v18];
  [(AKHighlightColorEditorController *)self p_drawColorControlCircleWithFrame:v14 color:1.5, 5.0, 27.0, 27.0];

  [v11 drawInRect:{1.5, 5.0, 27.0, 27.0}];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (id)p_buildPaletteImageForFrontTag:(int64_t)a3 middleTag:(int64_t)a4 backTag:(int64_t)a5 pageTheme:(int)a6
{
  v6 = *&a6;
  v11 = [(AKHighlightColorEditorController *)self p_colorForTag:a3 pageTheme:*&a6];
  v12 = [(AKHighlightColorEditorController *)self p_colorForTag:a4 pageTheme:v6];
  v13 = [(AKHighlightColorEditorController *)self p_colorForTag:a5 pageTheme:v6];
  if (a3 == 6)
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

- (id)p_paletteImageForTag:(int64_t)a3 pageTheme:(int)a4
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
  if (a3 && a3 <= 6 && a4 <= 4)
  {
    v7 = *off_278C7BF18[a4];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

- (id)p_monochromaticImageFromImage:(id)a3 withColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 size];
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v6 size];
  v9 = v8;
  [v6 size];
  v11 = v10;
  [v6 size];
  CGContextTranslateCTM(CurrentContext, 0.0, v12);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v13 = [v6 CGImage];

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v9;
  v18.size.height = v11;
  CGContextClipToMask(CurrentContext, v18, v13);
  [v5 setFill];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v9;
  v19.size.height = v11;
  CGContextFillRect(CurrentContext, v19);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (id)p_noteGlyphForTag:(int64_t)a3 pageTheme:(int)a4
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
  if (a3 && a3 <= 6 && a4 <= 4)
  {
    v7 = *off_278C7BF40[a4];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v6 = [v7 objectForKeyedSubscript:v8];
  }

  return v6;
}

@end