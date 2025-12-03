@interface PPKPDFThumbnailViewBase
- (BOOL)allowsPageReordering;
- (CGSize)thumbnailSize;
- (NSArray)selectedPages;
- (PDFView)PDFView;
- (PPKPDFThumbnailContextMenuDelegate)thumbnailContextMenuDelegate;
- (PPKPDFThumbnailDataSourceDelegate)thumbnailDataSourceDelegate;
- (PPKPDFThumbnailViewBase)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)_commonInit;
- (void)currentPageChanged:(id)changed;
- (void)documentChanged:(id)changed;
- (void)documentMutated:(id)mutated;
- (void)documentUnlocked:(id)unlocked;
- (void)pageChanged:(id)changed;
- (void)setAllowsPageReordering:(BOOL)reordering;
- (void)setBackgroundColor:(id)color;
- (void)setPDFView:(id)view;
- (void)setThumbnailSize:(CGSize)size;
- (void)setupNotifications;
- (void)updateNotificationsForDocument;
@end

@implementation PPKPDFThumbnailViewBase

- (PPKPDFThumbnailViewBase)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PPKPDFThumbnailViewBase;
  v3 = [(PPKPDFThumbnailViewBase *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(PPKPDFThumbnailsCollectionViewBase *)v6 setBackgroundColor:clearColor];
    }

    bottomAnchor = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView bottomAnchor];
    bottomAnchor2 = [(PPKPDFThumbnailViewBase *)self bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[0] = v19;
    topAnchor = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView topAnchor];
    topAnchor2 = [(PPKPDFThumbnailViewBase *)self topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[1] = v9;
    leadingAnchor = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView leadingAnchor];
    leadingAnchor2 = [(PPKPDFThumbnailViewBase *)self leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[2] = v12;
    trailingAnchor = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView trailingAnchor];
    trailingAnchor2 = [(PPKPDFThumbnailViewBase *)self trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v17 activateConstraints:v16];

    [(PPKPDFThumbnailViewBase *)self setupNotifications];
  }
}

- (void)setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_documentChanged_ name:*MEMORY[0x1E6978140] object:0];
  [defaultCenter addObserver:self selector:sel_currentPageChanged_ name:*MEMORY[0x1E6978148] object:0];
  [(PPKPDFThumbnailViewBase *)self updateNotificationsForDocument];
}

- (void)updateNotificationsForDocument
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  document = [WeakRetained document];

  v5 = *MEMORY[0x1E6978108];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6978108] object:0];
  [defaultCenter removeObserver:self name:@"PDFDocumentDidMutate" object:0];
  [defaultCenter removeObserver:self name:@"PDFPageDidChangeBounds" object:0];
  [defaultCenter removeObserver:self name:@"PDFPageDidRotate" object:0];
  if (document)
  {
    [defaultCenter addObserver:self selector:sel_documentUnlocked_ name:v5 object:document];
    [defaultCenter addObserver:self selector:sel_documentMutated_ name:@"PDFDocumentDidMutate" object:document];
    [defaultCenter addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidChangeBounds" object:document];
    [defaultCenter addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidRotate" object:document];
  }
}

- (void)setPDFView:(id)view
{
  objc_storeWeak(&self->_pdfView, view);
  [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView updateIconsImages];
  [(PPKPDFThumbnailViewBase *)self _updateLayout];

  [(PPKPDFThumbnailViewBase *)self updateNotificationsForDocument];
}

- (PDFView)PDFView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (void)setBackgroundColor:(id)color
{
  v4 = [color copy];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v4;

  iconsView = self->_iconsView;
  v7 = self->_backgroundColor;

  [(PPKPDFThumbnailsCollectionViewBase *)iconsView setBackgroundColor:v7];
}

- (NSArray)selectedPages
{
  v6[1] = *MEMORY[0x1E69E9840];
  currentPage = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView currentPage];
  v3 = currentPage;
  if (currentPage)
  {
    v6[0] = currentPage;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setThumbnailSize:(CGSize)size
{
  if (self->_thumbnailSize.width != size.width || self->_thumbnailSize.height != size.height)
  {
    self->_thumbnailSize = size;
    [(PPKPDFThumbnailViewBase *)self _updateLayout];
    collectionView = [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView collectionView];
    [collectionView reloadData];
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

- (void)setAllowsPageReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconsView = self->_iconsView;

    [(PPKPDFThumbnailsCollectionViewBase *)iconsView setAllowsPageReordering:reorderingCopy];
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

- (void)documentChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  object = [changedCopy object];

  if (WeakRetained == object)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView documentChanged:changedCopy];
    [(PPKPDFThumbnailViewBase *)self updateNotificationsForDocument];
  }
}

- (void)documentUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  document = [WeakRetained document];
  object = [unlockedCopy object];

  if (document == object)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView documentChanged:unlockedCopy];
  }
}

- (void)documentMutated:(id)mutated
{
  mutatedCopy = mutated;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  document = [WeakRetained document];
  object = [mutatedCopy object];

  if (document == object)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView documentMutated:mutatedCopy];
  }
}

- (void)currentPageChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  object = [changedCopy object];

  if (WeakRetained == object)
  {
    [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView currentPageChanged:changedCopy];
  }
}

- (void)pageChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  document = [WeakRetained document];
  if (!document)
  {
    goto LABEL_10;
  }

  name = [changedCopy name];
  if ([name isEqualToString:@"PDFPageDidChangeBounds"])
  {

    goto LABEL_5;
  }

  name2 = [changedCopy name];
  v8 = [name2 isEqualToString:@"PDFPageDidRotate"];

  if (v8)
  {
LABEL_5:
    object = [changedCopy object];

    if (object != document)
    {
      goto LABEL_10;
    }
  }

  userInfo = [changedCopy userInfo];
  v11 = [userInfo objectForKey:@"page"];
  v12 = v11;
  if (v11)
  {
    document2 = [v11 document];

    if (document2 == document)
    {
      [(PPKPDFThumbnailsCollectionViewBase *)self->_iconsView pageChanged:changedCopy];
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