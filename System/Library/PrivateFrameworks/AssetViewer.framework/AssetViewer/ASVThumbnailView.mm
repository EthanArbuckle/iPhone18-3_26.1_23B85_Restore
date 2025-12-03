@interface ASVThumbnailView
- (ASVThumbnailView)initWithCoder:(id)coder;
- (ASVThumbnailView)initWithFrame:(CGRect)frame;
- (ASVThumbnailViewDelegate)delegate;
- (CGSize)maxThumbnailSize;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (void)_commonInit;
- (void)previewCurrentItem;
- (void)setMaxThumbnailSize:(CGSize)size;
- (void)setThumbnailItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
- (void)updateThumbnailIfNeeded;
@end

@implementation ASVThumbnailView

- (ASVThumbnailView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v8, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView initWithFrame called", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = ASVThumbnailView;
  height = [(ASVThumbnailView *)&v13 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    [(ASVThumbnailView *)height _commonInit];
    v11 = v10;
  }

  return v10;
}

- (ASVThumbnailView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView initWithCoder called", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = ASVThumbnailView;
  v6 = [(ASVThumbnailView *)&v9 initWithCoder:coderCopy];

  if (v6)
  {
    [(ASVThumbnailView *)v6 _commonInit];
    v7 = v6;
  }

  return v6;
}

- (void)_commonInit
{
  v40[8] = *MEMORY[0x277D85DE8];
  p_maxThumbnailSize = &self->_maxThumbnailSize;
  self->_maxThumbnailSize = vdupq_n_s64(0x4072C00000000000uLL);
  v4 = [MEMORY[0x277D75348] colorWithHexValue:@"262626" error:0];
  [(ASVThumbnailView *)self setBackgroundColor:v4];

  v5 = objc_opt_new();
  operationQueue = self->_operationQueue;
  self->_operationQueue = v5;

  v7 = objc_opt_new();
  thumbnailGenerator = self->_thumbnailGenerator;
  self->_thumbnailGenerator = v7;

  v9 = +[ASVThumbnailButton thumbnailButton];
  button = self->_button;
  self->_button = v9;

  [(ASVThumbnailButton *)self->_button addTarget:self action:sel_previewCurrentItem forControlEvents:64];
  [(ASVThumbnailView *)self addSubview:self->_button];
  [(ASVThumbnailButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [(ASVThumbnailButton *)self->_button widthAnchor];
  v12 = [widthAnchor constraintEqualToConstant:p_maxThumbnailSize->width];
  widthButtonConstraint = self->_widthButtonConstraint;
  self->_widthButtonConstraint = v12;

  heightAnchor = [(ASVThumbnailButton *)self->_button heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:p_maxThumbnailSize->height];
  heightButtonConstraint = self->_heightButtonConstraint;
  self->_heightButtonConstraint = v15;

  LODWORD(v17) = 1144750080;
  [(NSLayoutConstraint *)self->_widthButtonConstraint setPriority:v17];
  LODWORD(v18) = 1144750080;
  [(NSLayoutConstraint *)self->_heightButtonConstraint setPriority:v18];
  v32 = MEMORY[0x277CCAAD0];
  centerYAnchor = [(ASVThumbnailButton *)self->_button centerYAnchor];
  centerYAnchor2 = [(ASVThumbnailView *)self centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v40[0] = v37;
  centerXAnchor = [(ASVThumbnailButton *)self->_button centerXAnchor];
  centerXAnchor2 = [(ASVThumbnailView *)self centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v40[1] = v34;
  leadingAnchor = [(ASVThumbnailButton *)self->_button leadingAnchor];
  leadingAnchor2 = [(ASVThumbnailView *)self leadingAnchor];
  v30 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v40[2] = v30;
  trailingAnchor = [(ASVThumbnailButton *)self->_button trailingAnchor];
  trailingAnchor2 = [(ASVThumbnailView *)self trailingAnchor];
  v19 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v40[3] = v19;
  topAnchor = [(ASVThumbnailButton *)self->_button topAnchor];
  topAnchor2 = [(ASVThumbnailView *)self topAnchor];
  v22 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v40[4] = v22;
  bottomAnchor = [(ASVThumbnailButton *)self->_button bottomAnchor];
  bottomAnchor2 = [(ASVThumbnailView *)self bottomAnchor];
  v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v26 = self->_widthButtonConstraint;
  v40[5] = v25;
  v40[6] = v26;
  v40[7] = self->_heightButtonConstraint;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:8];
  [v32 activateConstraints:v27];
}

- (void)setThumbnailItem:(id)item
{
  objc_storeStrong(&self->_thumbnailItem, item);

  [(ASVThumbnailView *)self updateThumbnailIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = ASVThumbnailView;
  changeCopy = change;
  [(ASVThumbnailView *)&v10 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(ASVThumbnailView *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(ASVThumbnailView *)self updateThumbnailIfNeeded];
  }
}

- (void)setMaxThumbnailSize:(CGSize)size
{
  if (size.width != self->_maxThumbnailSize.width || size.height != self->_maxThumbnailSize.height)
  {
    self->_maxThumbnailSize = size;
    [(ASVThumbnailView *)self updateThumbnailIfNeeded];
  }
}

- (void)updateThumbnailIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView updateThumbnailIfNeeded() called", buf, 2u);
  }

  traitCollection = [(ASVThumbnailView *)self traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  [(ASVThumbnailView *)self maxThumbnailSize];
  if (*&v6 != 0.0)
  {
    v9 = v7;
    v10 = v8;
    if (v7 != *MEMORY[0x277CBF3A8] || v8 != *(MEMORY[0x277CBF3A8] + 8))
    {
      thumbnailItem = [(ASVThumbnailView *)self thumbnailItem];
      v13 = thumbnailItem == 0;

      if (!v13)
      {
        [(NSLayoutConstraint *)self->_widthButtonConstraint setConstant:v9];
        [(NSLayoutConstraint *)self->_heightButtonConstraint setConstant:v10];
        self->_lastRequestedThumbnailSize.width = v9;
        self->_lastRequestedThumbnailSize.height = v10;
        self->_lastRequestedThumbnailScale = *&v6;
        thumbnailItem2 = [(ASVThumbnailView *)self thumbnailItem];
        objc_initWeak(&location, self);
        v15 = AssetViewerLogHandleForCategory(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          previewItemURL = [thumbnailItem2 previewItemURL];
          *buf = 138412546;
          v25 = thumbnailItem2;
          v26 = 2112;
          v27 = previewItemURL;
          _os_log_impl(&dword_241215000, v15, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView generating thumbnail at %@, %@", buf, 0x16u);
        }

        thumbnailGenerator = self->_thumbnailGenerator;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke;
        v19[3] = &unk_278CCB7F8;
        objc_copyWeak(v22, &location);
        v18 = thumbnailItem2;
        v20 = v18;
        selfCopy = self;
        v22[1] = v6;
        v22[2] = *&v9;
        v22[3] = *&v10;
        [(QLItemThumbnailGenerator *)thumbnailGenerator generateThumbnailForItem:v18 ofSize:0 minimumSize:v19 scale:v9 badgeType:v10 completionBlock:v9, *&v6];

        objc_destroyWeak(v22);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke_2;
  block[3] = &unk_278CCB7D0;
  objc_copyWeak(v11, (a1 + 48));
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11[1] = *(a1 + 56);
  v12 = *(a1 + 64);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v11);
}

void __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v3 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32) != 0;
    *buf = 67109120;
    v18 = v4;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView thumbnail generation done, has thumbnail? %d", buf, 8u);
  }

  v5 = [WeakRetained thumbnailItem];
  if (![v5 isEqual:*(a1 + 40)] || (v6 = *(a1 + 48), *(v6 + 448) != *(a1 + 64)))
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = (v6 + 432);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *v7;
  v11 = v7[1];

  if (v8 == v10 && v9 == v11)
  {
    [WeakRetained layoutIfNeeded];
    v13 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke_45;
    v14[3] = &unk_278CCB7A8;
    v15 = WeakRetained;
    v16 = *(a1 + 32);
    [v13 animateWithDuration:v14 animations:0.2];

    v5 = v15;
    goto LABEL_12;
  }

LABEL_13:
}

void __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke_45(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setThumbnail:*(a1 + 40)];
  if (*(a1 + 40))
  {
    v2 = *(*(a1 + 32) + 408);

    [v2 setError:0];
  }

  else
  {
    v3 = objc_opt_new();
    [*(*(a1 + 32) + 408) setError:v3];
  }
}

- (void)previewCurrentItem
{
  v22 = *MEMORY[0x277D85DE8];
  delegate = [(ASVThumbnailView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    thumbnailItem = [(ASVThumbnailView *)self thumbnailItem];

    if (thumbnailItem)
    {
      v6 = AssetViewerLogHandleForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        thumbnailItem2 = [(ASVThumbnailView *)self thumbnailItem];
        previewItemURL = [thumbnailItem2 previewItemURL];
        thumbnailItem3 = [(ASVThumbnailView *)self thumbnailItem];
        previewItemURL2 = [thumbnailItem3 previewItemURL];
        *buf = 138412546;
        v19 = previewItemURL;
        v20 = 2112;
        v21 = previewItemURL2;
        _os_log_impl(&dword_241215000, v6, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView preview current item, path: %@,  obj: %@", buf, 0x16u);
      }

      v11 = objc_alloc(MEMORY[0x277CDAA58]);
      thumbnailItem4 = [(ASVThumbnailView *)self thumbnailItem];
      v17 = thumbnailItem4;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v14 = [v11 initWithPreviewItems:v13];

      [v14 setDelegate:self];
      delegate2 = [(ASVThumbnailView *)self delegate];
      thumbnailItem5 = [(ASVThumbnailView *)self thumbnailItem];
      [delegate2 thumbnailView:self wantsToPresentPreviewController:v14 forItem:thumbnailItem5];
    }
  }
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  selfCopy = self;
  v5 = [(ASVThumbnailButton *)self->_button thumbnail:controller];

  if (v5)
  {
    selfCopy = selfCopy->_button;
  }

  v6 = selfCopy;

  return v6;
}

- (ASVThumbnailViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)maxThumbnailSize
{
  width = self->_maxThumbnailSize.width;
  height = self->_maxThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end