@interface ASVThumbnailView
- (ASVThumbnailView)initWithCoder:(id)a3;
- (ASVThumbnailView)initWithFrame:(CGRect)a3;
- (ASVThumbnailViewDelegate)delegate;
- (CGSize)maxThumbnailSize;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (void)_commonInit;
- (void)previewCurrentItem;
- (void)setMaxThumbnailSize:(CGSize)a3;
- (void)setThumbnailItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateThumbnailIfNeeded;
@end

@implementation ASVThumbnailView

- (ASVThumbnailView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v8, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView initWithFrame called", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = ASVThumbnailView;
  v9 = [(ASVThumbnailView *)&v13 initWithFrame:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(ASVThumbnailView *)v9 _commonInit];
    v11 = v10;
  }

  return v10;
}

- (ASVThumbnailView)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView initWithCoder called", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = ASVThumbnailView;
  v6 = [(ASVThumbnailView *)&v9 initWithCoder:v4];

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
  v11 = [(ASVThumbnailButton *)self->_button widthAnchor];
  v12 = [v11 constraintEqualToConstant:p_maxThumbnailSize->width];
  widthButtonConstraint = self->_widthButtonConstraint;
  self->_widthButtonConstraint = v12;

  v14 = [(ASVThumbnailButton *)self->_button heightAnchor];
  v15 = [v14 constraintEqualToConstant:p_maxThumbnailSize->height];
  heightButtonConstraint = self->_heightButtonConstraint;
  self->_heightButtonConstraint = v15;

  LODWORD(v17) = 1144750080;
  [(NSLayoutConstraint *)self->_widthButtonConstraint setPriority:v17];
  LODWORD(v18) = 1144750080;
  [(NSLayoutConstraint *)self->_heightButtonConstraint setPriority:v18];
  v32 = MEMORY[0x277CCAAD0];
  v39 = [(ASVThumbnailButton *)self->_button centerYAnchor];
  v38 = [(ASVThumbnailView *)self centerYAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v40[0] = v37;
  v36 = [(ASVThumbnailButton *)self->_button centerXAnchor];
  v35 = [(ASVThumbnailView *)self centerXAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v40[1] = v34;
  v33 = [(ASVThumbnailButton *)self->_button leadingAnchor];
  v31 = [(ASVThumbnailView *)self leadingAnchor];
  v30 = [v33 constraintGreaterThanOrEqualToAnchor:v31];
  v40[2] = v30;
  v29 = [(ASVThumbnailButton *)self->_button trailingAnchor];
  v28 = [(ASVThumbnailView *)self trailingAnchor];
  v19 = [v29 constraintLessThanOrEqualToAnchor:v28];
  v40[3] = v19;
  v20 = [(ASVThumbnailButton *)self->_button topAnchor];
  v21 = [(ASVThumbnailView *)self topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];
  v40[4] = v22;
  v23 = [(ASVThumbnailButton *)self->_button bottomAnchor];
  v24 = [(ASVThumbnailView *)self bottomAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor:v24];
  v26 = self->_widthButtonConstraint;
  v40[5] = v25;
  v40[6] = v26;
  v40[7] = self->_heightButtonConstraint;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:8];
  [v32 activateConstraints:v27];
}

- (void)setThumbnailItem:(id)a3
{
  objc_storeStrong(&self->_thumbnailItem, a3);

  [(ASVThumbnailView *)self updateThumbnailIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = ASVThumbnailView;
  v4 = a3;
  [(ASVThumbnailView *)&v10 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(ASVThumbnailView *)self traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(ASVThumbnailView *)self updateThumbnailIfNeeded];
  }
}

- (void)setMaxThumbnailSize:(CGSize)a3
{
  if (a3.width != self->_maxThumbnailSize.width || a3.height != self->_maxThumbnailSize.height)
  {
    self->_maxThumbnailSize = a3;
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

  v4 = [(ASVThumbnailView *)self traitCollection];
  [v4 displayScale];
  v6 = v5;

  [(ASVThumbnailView *)self maxThumbnailSize];
  if (*&v6 != 0.0)
  {
    v9 = v7;
    v10 = v8;
    if (v7 != *MEMORY[0x277CBF3A8] || v8 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v12 = [(ASVThumbnailView *)self thumbnailItem];
      v13 = v12 == 0;

      if (!v13)
      {
        [(NSLayoutConstraint *)self->_widthButtonConstraint setConstant:v9];
        [(NSLayoutConstraint *)self->_heightButtonConstraint setConstant:v10];
        self->_lastRequestedThumbnailSize.width = v9;
        self->_lastRequestedThumbnailSize.height = v10;
        self->_lastRequestedThumbnailScale = *&v6;
        v14 = [(ASVThumbnailView *)self thumbnailItem];
        objc_initWeak(&location, self);
        v15 = AssetViewerLogHandleForCategory(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v14 previewItemURL];
          *buf = 138412546;
          v25 = v14;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&dword_241215000, v15, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView generating thumbnail at %@, %@", buf, 0x16u);
        }

        thumbnailGenerator = self->_thumbnailGenerator;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __43__ASVThumbnailView_updateThumbnailIfNeeded__block_invoke;
        v19[3] = &unk_278CCB7F8;
        objc_copyWeak(v22, &location);
        v18 = v14;
        v20 = v18;
        v21 = self;
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
  v3 = [(ASVThumbnailView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ASVThumbnailView *)self thumbnailItem];

    if (v5)
    {
      v6 = AssetViewerLogHandleForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(ASVThumbnailView *)self thumbnailItem];
        v8 = [v7 previewItemURL];
        v9 = [(ASVThumbnailView *)self thumbnailItem];
        v10 = [v9 previewItemURL];
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_241215000, v6, OS_LOG_TYPE_DEFAULT, "ARQL ASVThumbnailView preview current item, path: %@,  obj: %@", buf, 0x16u);
      }

      v11 = objc_alloc(MEMORY[0x277CDAA58]);
      v12 = [(ASVThumbnailView *)self thumbnailItem];
      v17 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v14 = [v11 initWithPreviewItems:v13];

      [v14 setDelegate:self];
      v15 = [(ASVThumbnailView *)self delegate];
      v16 = [(ASVThumbnailView *)self thumbnailItem];
      [v15 thumbnailView:self wantsToPresentPreviewController:v14 forItem:v16];
    }
  }
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  v4 = self;
  v5 = [(ASVThumbnailButton *)self->_button thumbnail:a3];

  if (v5)
  {
    v4 = v4->_button;
  }

  v6 = v4;

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