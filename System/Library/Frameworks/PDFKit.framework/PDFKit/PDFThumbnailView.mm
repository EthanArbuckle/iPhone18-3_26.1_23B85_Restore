@interface PDFThumbnailView
- (BOOL)allowsPageReordering;
- (CGSize)thumbnailSize;
- (NSArray)selectedPages;
- (PDFThumbnailContextMenuDelegate)thumbnailContextMenuDelegate;
- (PDFThumbnailDataSourceDelegate)thumbnailDataSourceDelegate;
- (PDFThumbnailIconsViewProtocol)thumbnailIconsView;
- (PDFThumbnailView)init;
- (PDFThumbnailView)initWithCoder:(id)coder;
- (PDFThumbnailView)initWithFrame:(CGRect)frame;
- (PDFThumbnailView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (PDFThumbnailView)initWithStyle:(int64_t)style;
- (PDFView)PDFView;
- (UIEdgeInsets)contentInset;
- (void)_commonInitWithStyle:(int64_t)style;
- (void)currentPageChanged:(id)changed;
- (void)dealloc;
- (void)documentChanged:(id)changed;
- (void)documentMutated:(id)mutated;
- (void)documentUnlocked:(id)unlocked;
- (void)encodeWithCoder:(id)coder;
- (void)pageChanged:(id)changed;
- (void)setAllowsPageReordering:(BOOL)reordering;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setPDFView:(PDFView *)PDFView;
- (void)setThumbnailSize:(CGSize)thumbnailSize;
- (void)setupNotifications;
- (void)updateNotificationsForDocument;
@end

@implementation PDFThumbnailView

- (PDFThumbnailView)init
{
  v5.receiver = self;
  v5.super_class = PDFThumbnailView;
  v2 = [(PDFThumbnailView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PDFThumbnailView *)v2 _commonInitWithStyle:0];
  }

  return v3;
}

- (PDFThumbnailView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PDFThumbnailView;
  v3 = [(PDFThumbnailView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PDFThumbnailView *)v3 _commonInitWithStyle:0];
  }

  return v4;
}

- (PDFThumbnailView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PDFThumbnailView;
  v5 = [(PDFThumbnailView *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      -[PDFThumbnailView _commonInitWithStyle:](v5, "_commonInitWithStyle:", [coderCopy decodeIntForKey:@"Style"]);
      [coderCopy decodeFloatForKey:@"ThumbSizeWidth"];
      v5->_thumbnailSize.width = v6;
      [coderCopy decodeFloatForKey:@"ThumbSizeHeight"];
      v5->_thumbnailSize.height = v7;
      decodeObject = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PDFView"];
    }

    else
    {
      v12 = 1;
      [coderCopy decodeValueOfObjCType:"i" at:&v12 size:4];
      *v11 = 0;
      [coderCopy decodeValueOfObjCType:"q" at:v11 size:8];
      [(PDFThumbnailView *)v5 _commonInitWithStyle:*v11];
      v11[0] = 0.0;
      [coderCopy decodeValueOfObjCType:"f" at:v11 size:4];
      v5->_thumbnailSize.width = v11[0];
      [coderCopy decodeValueOfObjCType:"f" at:v11 size:4];
      v5->_thumbnailSize.height = v11[0];
      decodeObject = [coderCopy decodeObject];
    }

    v9 = decodeObject;
    if (decodeObject)
    {
      [(PDFThumbnailView *)v5 setPDFView:decodeObject];
    }

    if (v5->_thumbnailSize.width <= 0.0 || v5->_thumbnailSize.height <= 0.0)
    {
      v5->_thumbnailSize = kDefaultThumbnailSize;
    }

    [(PDFThumbnailView *)v5 setBackgroundColor:v5->_backgroundColor];
    [(PDFThumbnailView *)v5 _updateLayout];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(PDFThumbnailCollectionViewInterface *)self->_iconsView removeFromSuperview];
  v12.receiver = self;
  v12.super_class = PDFThumbnailView;
  [(PDFThumbnailView *)&v12 encodeWithCoder:coderCopy];
  [(PDFThumbnailView *)self addSubview:self->_iconsView];
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeInt:LODWORD(self->_style) forKey:@"Style"];
    width = self->_thumbnailSize.width;
    *&width = width;
    [coderCopy encodeFloat:@"ThumbSizeWidth" forKey:width];
    height = self->_thumbnailSize.height;
    *&height = height;
    [coderCopy encodeFloat:@"ThumbSizeHeight" forKey:height];
    WeakRetained = objc_loadWeakRetained(&self->_pdfView);
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"PDFView"];
  }

  else
  {
    v11 = 1;
    [coderCopy encodeValueOfObjCType:"i" at:&v11];
    [coderCopy encodeValueOfObjCType:"q" at:&self->_style];
    v8 = self->_thumbnailSize.width;
    v10 = v8;
    [coderCopy encodeValueOfObjCType:"f" at:&v10];
    v9 = self->_thumbnailSize.height;
    v10 = v9;
    [coderCopy encodeValueOfObjCType:"f" at:&v10];
  }
}

- (PDFThumbnailView)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PDFThumbnailView;
  v4 = [(PDFThumbnailView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PDFThumbnailView *)v4 _commonInitWithStyle:style];
  }

  return v5;
}

- (PDFThumbnailView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = PDFThumbnailView;
  v5 = [(PDFThumbnailView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(PDFThumbnailView *)v5 _commonInitWithStyle:style];
  }

  return v6;
}

- (void)_commonInitWithStyle:(int64_t)style
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (!self->_iconsView)
  {
    self->_style = style;
    self->_thumbnailSize = kDefaultThumbnailSize;
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&self->_contentInset.top = *MEMORY[0x1E69DDCE0];
    *&self->_contentInset.bottom = v4;
    if (style == 1)
    {
      v5 = [[PDFThumbnailsCollectionView alloc] initFromThumbnailView:self];
      iconsView = self->_iconsView;
      self->_iconsView = v5;

      [(PDFThumbnailView *)self addSubview:self->_iconsView];
      [(PDFThumbnailCollectionViewInterface *)self->_iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = MEMORY[0x1E696ACD8];
      bottomAnchor = [(PDFThumbnailCollectionViewInterface *)self->_iconsView bottomAnchor];
      bottomAnchor2 = [(PDFThumbnailView *)self bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v24[0] = v21;
      topAnchor = [(PDFThumbnailCollectionViewInterface *)self->_iconsView topAnchor];
      topAnchor2 = [(PDFThumbnailView *)self topAnchor];
      v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v24[1] = v8;
      leadingAnchor = [(PDFThumbnailCollectionViewInterface *)self->_iconsView leadingAnchor];
      leadingAnchor2 = [(PDFThumbnailView *)self leadingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v24[2] = v11;
      trailingAnchor = [(PDFThumbnailCollectionViewInterface *)self->_iconsView trailingAnchor];
      trailingAnchor2 = [(PDFThumbnailView *)self trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v24[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
      [v19 activateConstraints:v15];
    }

    else
    {
      v16 = [[PDFIconsView alloc] initFromThumbnailView:self];
      v17 = self->_iconsView;
      self->_iconsView = v16;

      v18 = self->_iconsView;
      [(PDFThumbnailView *)self bounds];
      [(PDFThumbnailCollectionViewInterface *)v18 setFrame:?];
      [(PDFThumbnailCollectionViewInterface *)self->_iconsView setAutoresizingMask:18];
      [(PDFThumbnailView *)self addSubview:self->_iconsView];
    }

    [(PDFThumbnailView *)self setupNotifications];
  }
}

- (void)setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_documentChanged_ name:@"PDFViewChangedDocument" object:0];
  [defaultCenter addObserver:self selector:sel_currentPageChanged_ name:@"PDFViewChangedPage" object:0];
  [defaultCenter addObserver:self selector:sel_pageChanged_ name:@"PDFViewAnnotationsDidChange" object:0];
  [(PDFThumbnailView *)self updateNotificationsForDocument];
}

- (void)updateNotificationsForDocument
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  document = [WeakRetained document];

  [defaultCenter removeObserver:self name:@"PDFDocumentDidUnlock" object:0];
  [defaultCenter removeObserver:self name:@"PDFDocumentDidMutate" object:0];
  [defaultCenter removeObserver:self name:@"PDFPageDidChangeBounds" object:0];
  [defaultCenter removeObserver:self name:@"PDFPageDidRotate" object:0];
  if (document)
  {
    [defaultCenter addObserver:self selector:sel_documentUnlocked_ name:@"PDFDocumentDidUnlock" object:document];
    [defaultCenter addObserver:self selector:sel_documentMutated_ name:@"PDFDocumentDidMutate" object:document];
    [defaultCenter addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidChangeBounds" object:document];
    [defaultCenter addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidRotate" object:document];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFThumbnailView;
  [(PDFThumbnailView *)&v4 dealloc];
}

- (void)setPDFView:(PDFView *)PDFView
{
  objc_storeWeak(&self->_pdfView, PDFView);
  [(PDFThumbnailCollectionViewInterface *)self->_iconsView updateIconsImages];
  [(PDFThumbnailView *)self _updateLayout];

  [(PDFThumbnailView *)self updateNotificationsForDocument];
}

- (PDFView)PDFView
{
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);

  return WeakRetained;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v4 = [(UIColor *)backgroundColor copy];
  v5 = self->_backgroundColor;
  self->_backgroundColor = v4;

  iconsView = self->_iconsView;
  v7 = self->_backgroundColor;

  [(PDFThumbnailCollectionViewInterface *)iconsView setBackgroundColor:v7];
}

- (NSArray)selectedPages
{
  v6[1] = *MEMORY[0x1E69E9840];
  currentPage = [(PDFThumbnailCollectionViewInterface *)self->_iconsView currentPage];
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

- (void)setThumbnailSize:(CGSize)thumbnailSize
{
  self->_thumbnailSize = thumbnailSize;
  [(PDFThumbnailView *)self _updateLayout];
  iconsView = self->_iconsView;

  [(PDFThumbnailCollectionViewInterface *)iconsView updateIconsImages];
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

    [(PDFThumbnailCollectionViewInterface *)iconsView setAllowsPageReordering:reorderingCopy];
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

  return [(PDFThumbnailCollectionViewInterface *)iconsView allowsPageReordering];
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

- (PDFThumbnailIconsViewProtocol)thumbnailIconsView
{
  if (objc_opt_respondsToSelector())
  {
    thumbnailIconsView = [(PDFThumbnailCollectionViewInterface *)self->_iconsView thumbnailIconsView];
  }

  else
  {
    thumbnailIconsView = 0;
  }

  return thumbnailIconsView;
}

- (void)documentChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  object = [changedCopy object];

  if (WeakRetained == object)
  {
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView documentChanged:changedCopy];
    [(PDFThumbnailView *)self updateNotificationsForDocument];
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
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView documentChanged:unlockedCopy];
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
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView documentMutated:mutatedCopy];
  }
}

- (void)currentPageChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  object = [changedCopy object];

  if (WeakRetained == object)
  {
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView currentPageChanged:changedCopy];
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
      [(PDFThumbnailCollectionViewInterface *)self->_iconsView pageChanged:changedCopy];
    }
  }

LABEL_10:
}

- (PDFThumbnailContextMenuDelegate)thumbnailContextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->thumbnailContextMenuDelegate);

  return WeakRetained;
}

- (PDFThumbnailDataSourceDelegate)thumbnailDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailDataSourceDelegate);

  return WeakRetained;
}

@end