@interface PPKPDFThumbnailViewBase
- (BOOL)allowsPageReordering;
- (CGSize)thumbnailSize;
- (NSArray)selectedPages;
- (PDFView)PDFView;
- (PPKPDFThumbnailContextMenuDelegate)thumbnailContextMenuDelegate;
- (PPKPDFThumbnailDataSourceDelegate)thumbnailDataSourceDelegate;
- (PPKPDFThumbnailViewBase)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)_commonInit;
- (void)currentPageChanged:(id)a3;
- (void)documentChanged:(id)a3;
- (void)documentMutated:(id)a3;
- (void)documentUnlocked:(id)a3;
- (void)pageChanged:(id)a3;
- (void)setAllowsPageReordering:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setPDFView:(id)a3;
- (void)setThumbnailSize:(CGSize)a3;
- (void)setupNotifications;
- (void)updateNotificationsForDocument;
@end

@implementation PPKPDFThumbnailViewBase

- (PPKPDFThumbnailViewBase)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PPKPDFThumbnailViewBase;
  v3 = [(PPKPDFThumbnailViewBase *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PPKPDFThumbnailViewBase *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (!self->_iconsView)
  {
    self->_thumbnailSize = kDefaultThumbnailSize;
    v3 = *(MEMORY[0x1E69DDCE0] + 16);
    *&self->_contentInset.top = *MEMORY[0x1E69DDCE0];
    *&self->_contentInset.bottom = v3;
    v4 = [objc_alloc(NSClassFromString(&cfstr_Ppkpdfthumbnai.isa)) initFromThumbnailView:self];
    iconsView = self->_iconsView;
    self->_iconsView = v4;

    [(PPKPDFThumbnailViewBase *)self addSubview:self->_iconsView];
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (_UISolariumEnabled())
    {
      v6 = self->_iconsView;
      v7 = [MEMORY[0x1E69DC888] clearColor];
      [(PPKPDFThumbnailsCollectionViewBase *)v6 setBackgroundColor:v7];
    }

    v21 = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView bottomAnchor];
    v20 = [(PPKPDFThumbnailViewBase *)self bottomAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v22[0] = v19;
    v18 = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView topAnchor];
    v8 = [(PPKPDFThumbnailViewBase *)self topAnchor];
    v9 = [v18 constraintEqualToAnchor:v8];
    v22[1] = v9;
    v10 = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView leadingAnchor];
    v11 = [(PPKPDFThumbnailViewBase *)self leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v22[2] = v12;
    v13 = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView trailingAnchor];
    v14 = [(PPKPDFThumbnailViewBase *)self trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v22[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v17 activateConstraints:v16];

    [(PPKPDFThumbnailViewBase *)self setupNotifications];
  }
}

- (void)setupNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_documentChanged_ name:*MEMORY[0x1E6978140] object:0];
  [v3 addObserver:self selector:sel_currentPageChanged_ name:*MEMORY[0x1E6978148] object:0];
  [(PPKPDFThumbnailViewBase *)self updateNotificationsForDocument];
}

- (void)updateNotificationsForDocument
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v4 = [WeakRetained document];

  v5 = *MEMORY[0x1E6978108];
  [v6 removeObserver:self name:*MEMORY[0x1E6978108] object:0];
  [v6 removeObserver:self name:@"PDFDocumentDidMutate" object:0];
  [v6 removeObserver:self name:@"PDFPageDidChangeBounds" object:0];
  [v6 removeObserver:self name:@"PDFPageDidRotate" object:0];
  if (v4)
  {
    [v6 addObserver:self selector:sel_documentUnlocked_ name:v5 object:v4];
    [v6 addObserver:self selector:sel_documentMutated_ name:@"PDFDocumentDidMutate" object:v4];
    [v6 addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidChangeBounds" object:v4];
    [v6 addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidRotate" object:v4];
  }
}

- (void)setPDFView:(id)a3
{
  objc_storeWeak(&self->_pdfView, a3);
  [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView updateIconsImages];
  [(PPKPDFThumbnailViewBase *)self _updateLayout];

  [(PPKPDFThumbnailViewBase *)self updateNotificationsForDocument];
}

- (PDFView)PDFView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = [a3 copy];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v4;

  iconsView = self->_iconsView;
  v7 = self->_backgroundColor;

  [(PPKPDFThumbnailsCollectionViewBase *)iconsView setBackgroundColor:v7];
}

- (NSArray)selectedPages
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView currentPage];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setThumbnailSize:(CGSize)a3
{
  if (self->_thumbnailSize.width != a3.width || self->_thumbnailSize.height != a3.height)
  {
    self->_thumbnailSize = a3;
    [(PPKPDFThumbnailViewBase *)self _updateLayout];
    v6 = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView collectionView];
    [v6 reloadData];
  }
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setAllowsPageReordering:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconsView = self->_iconsView;

    [(PPKPDFThumbnailsCollectionViewBase *)iconsView setAllowsPageReordering:v3];
  }
}

- (BOOL)allowsPageReordering
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  iconsView = self->_iconsView;

  return [(PPKPDFThumbnailsCollectionViewBase *)iconsView allowsPageReordering];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)documentChanged:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [v6 object];

  if (WeakRetained == v5)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView documentChanged:v6];
    [(PPKPDFThumbnailViewBase *)self updateNotificationsForDocument];
  }
}

- (void)documentUnlocked:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [WeakRetained document];
  v6 = [v7 object];

  if (v5 == v6)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView documentChanged:v7];
  }
}

- (void)documentMutated:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [WeakRetained document];
  v6 = [v7 object];

  if (v5 == v6)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView documentMutated:v7];
  }
}

- (void)currentPageChanged:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [v6 object];

  if (WeakRetained == v5)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView currentPageChanged:v6];
  }
}

- (void)pageChanged:(id)a3
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [WeakRetained document];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v14 name];
  if ([v6 isEqualToString:@"PDFPageDidChangeBounds"])
  {

    goto LABEL_5;
  }

  v7 = [v14 name];
  v8 = [v7 isEqualToString:@"PDFPageDidRotate"];

  if (v8)
  {
LABEL_5:
    v9 = [v14 object];

    if (v9 != v5)
    {
      goto LABEL_10;
    }
  }

  v10 = [v14 userInfo];
  v11 = [v10 objectForKey:@"page"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 document];

    if (v13 == v5)
    {
      [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView pageChanged:v14];
    }
  }

LABEL_10:
}

- (PPKPDFThumbnailContextMenuDelegate)thumbnailContextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->thumbnailContextMenuDelegate);

  return WeakRetained;
}

- (PPKPDFThumbnailDataSourceDelegate)thumbnailDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailDataSourceDelegate);

  return WeakRetained;
}

@end