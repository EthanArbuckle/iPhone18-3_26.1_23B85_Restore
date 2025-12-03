@interface QLDetailItemViewController
- (QLDetailItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_scalableSystemFontOfSize:(double)size;
- (void)_setActionButtonView:(id)view animated:(BOOL)animated actionButtonLabel:(id)label informationVisible:(BOOL)visible;
- (void)_updateInformation;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)setInformation:(id)information;
- (void)setState:(id)state animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation QLDetailItemViewController

- (QLDetailItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = QLFrameworkBundle();
  v8.receiver = self;
  v8.super_class = QLDetailItemViewController;
  v6 = [(QLDetailItemViewController *)&v8 initWithNibName:@"QLDetailItemViewController" bundle:v5];

  return v6;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = QLDetailItemViewController;
  [(QLDetailItemViewController *)&v9 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(QLDetailItemViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  v6 = [(QLDetailItemViewController *)self _scalableSystemFontOfSize:15.0];
  [titleLabel setFont:v6];

  titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  [(UIButton *)self->_actionButton setTitle:&stru_284D5E510 forState:0];
  superview = [(QLFileIconImageView *)self->_filePreviewImageView superview];
  [superview bringSubviewToFront:self->_filePreviewImageView];
}

- (void)setState:(id)state animated:(BOOL)animated
{
  stateCopy = state;
  if (self->_state != stateCopy)
  {
    [(QLDetailItemViewController *)self loadViewIfNeeded];
    objc_storeStrong(&self->_state, state);
    v7 = stateCopy;
    QLRunInMainThread();
  }
}

void __48__QLDetailItemViewController_setState_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) actionButtonView];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) actionButtonTitle];
  [v2 _setActionButtonView:v5 animated:v3 actionButtonLabel:v4 informationVisible:{objc_msgSend(*(a1 + 40), "isInformationVisible")}];
}

- (void)setInformation:(id)information
{
  objc_storeStrong(&self->_information, information);

  [(QLDetailItemViewController *)self _updateInformation];
}

- (void)_updateInformation
{
  v18 = *MEMORY[0x277D85DE8];
  [(QLDetailItemViewController *)self loadViewIfNeeded];
  arrangedSubviews = [(UIStackView *)self->_informationStackView arrangedSubviews];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [arrangedSubviews countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v12 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [arrangedSubviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  if (self->_previewTitle)
  {
    previewTitle = self->_previewTitle;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&previewTitle count:1];
    v9 = [v8 arrayByAddingObjectsFromArray:self->_information];
  }

  else
  {
    v9 = self->_information;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__QLDetailItemViewController__updateInformation__block_invoke;
  v11[3] = &unk_278B587F0;
  v11[4] = self;
  [(NSArray *)v9 enumerateObjectsUsingBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __48__QLDetailItemViewController__updateInformation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = objc_opt_new();
  if (a3)
  {
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v9 setTextColor:v6];

    [v9 setLineBreakMode:5];
    [v9 setText:v5];

    [v9 setAdjustsFontForContentSizeCategory:1];
    [*(a1 + 32) _scalableSystemFontOfSize:17.0];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] labelColor];
    [v9 setTextColor:v7];

    [v9 setLineBreakMode:5];
    [v9 setText:v5];

    [v9 setAdjustsFontForContentSizeCategory:1];
    [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  }
  v8 = ;
  [v9 setFont:v8];

  [*(*(a1 + 32) + 1136) addArrangedSubview:v9];
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  contextCopy = context;
  [(QLDetailItemViewController *)self setInformation:MEMORY[0x277CBEBF8]];
  QLCGSizeFromQLItemThumbnailSize();
  v10 = v9;
  v12 = v11;
  thumbnailGenerator = [contextCopy thumbnailGenerator];
  v14 = [thumbnailGenerator genericIconWithSize:{v10, v12}];

  [(QLFileIconImageView *)self->_filePreviewImageView setImage:v14];
  thumbnailGenerator2 = [contextCopy thumbnailGenerator];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__QLDetailItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v23[3] = &unk_278B57B68;
  v23[4] = self;
  [thumbnailGenerator2 generateThumbnailWithSize:v23 completionBlock:{v10, v12}];

  previewTitle = [contextCopy previewTitle];
  previewTitle = self->_previewTitle;
  self->_previewTitle = previewTitle;

  itemSize = [contextCopy itemSize];

  v19 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(itemSize countStyle:{"longLongValue"), 0}];
  v20 = &stru_284D5E510;
  if (v19 && [itemSize integerValue] > 0)
  {
    v20 = v19;
  }

  v24[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [(QLDetailItemViewController *)self setInformation:v21];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __90__QLDetailItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = v5;
    QLRunInMainThread();
  }
}

void __90__QLDetailItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1128) setImage:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 1128) layer];
  [v2 setCornerRadius:0.0];

  v3 = [*(*(a1 + 32) + 1128) layer];
  [v3 setBorderWidth:1.0];

  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.17];
  v4 = v7;
  v5 = [v7 CGColor];
  v6 = [*(*(a1 + 32) + 1128) layer];
  [v6 setBorderColor:v5];
}

- (void)_setActionButtonView:(id)view animated:(BOOL)animated actionButtonLabel:(id)label informationVisible:(BOOL)visible
{
  animatedCopy = animated;
  viewCopy = view;
  labelCopy = label;
  v13 = self->_currentActionButtonView;
  objc_storeStrong(&self->_currentActionButtonView, view);
  [MEMORY[0x277CD9FF0] begin];
  layer = [viewCopy layer];
  [layer removeAllAnimations];

  [MEMORY[0x277CD9FF0] commit];
  if (self->_isSettingStateAnimated)
  {
    v15 = MEMORY[0x277D43EF8];
    v16 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v16 = *v15;
    }

    animatedCopy = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_DEFAULT, "Updating view state in detail item view controller without animation, since state animation already in progress. #DetailItemViewController", &buf, 2u);
      animatedCopy = 0;
    }
  }

  else
  {
    self->_isSettingStateAnimated = 1;
  }

  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, 0.1, 0.1);
  [viewCopy setAlpha:0.0];
  v32 = buf;
  [viewCopy setTransform:&v32];
  [(UIView *)v13 setAlpha:1.0];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v32.a = *MEMORY[0x277CBF2C0];
  *&v32.c = v17;
  *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)v13 setTransform:&v32];
  [viewCopy removeFromSuperview];
  [(UIButton *)self->_actionIconButton addSubview:viewCopy];
  [(UIButton *)self->_actionIconButton bounds];
  MidX = CGRectGetMidX(v34);
  [(UIButton *)self->_actionIconButton bounds];
  [viewCopy setCenter:{MidX, CGRectGetMidY(v35)}];
  [(UIButton *)self->_actionIconButton setEnabled:viewCopy != 0];
  [(UIButton *)self->_actionButton setUserInteractionEnabled:0];
  [(UIButton *)self->_actionIconButton setUserInteractionEnabled:0];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__QLDetailItemViewController__setActionButtonView_animated_actionButtonLabel_informationVisible___block_invoke;
  aBlock[3] = &unk_278B58818;
  v26 = v13;
  v30 = buf;
  v19 = viewCopy;
  v27 = v19;
  selfCopy = self;
  visibleCopy = visible;
  v20 = labelCopy;
  v29 = v20;
  v21 = v13;
  v22 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__QLDetailItemViewController__setActionButtonView_animated_actionButtonLabel_informationVisible___block_invoke_2;
  v24[3] = &unk_278B571B8;
  v24[4] = self;
  v23 = _Block_copy(v24);
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v22 animations:v23 completion:0.35];
  }

  else
  {
    v22[2](v22);
    v23[2](v23, 1);
  }
}

uint64_t __97__QLDetailItemViewController__setActionButtonView_animated_actionButtonLabel_informationVisible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = v2;
  v8 = *(a1 + 96);
  [*(a1 + 32) setTransform:&v6];
  [*(a1 + 40) setAlpha:1.0];
  v3 = *(a1 + 40);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v4;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:&v6];
  [*(*(a1 + 48) + 1136) setHidden:(*(a1 + 112) & 1) == 0];
  return [*(*(a1 + 48) + 1152) setTitle:*(a1 + 56) forState:0];
}

uint64_t __97__QLDetailItemViewController__setActionButtonView_animated_actionButtonLabel_informationVisible___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1152) setUserInteractionEnabled:1];
  result = [*(*(a1 + 32) + 1144) setUserInteractionEnabled:1];
  *(*(a1 + 32) + 1160) = 0;
  return result;
}

- (id)_scalableSystemFontOfSize:(double)size
{
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:size];
  v6 = [defaultMetrics scaledFontForFont:v5];

  return v6;
}

@end