@interface PDFThumbnailView
- (BOOL)allowsPageReordering;
- (CGSize)thumbnailSize;
- (NSArray)selectedPages;
- (PDFThumbnailContextMenuDelegate)thumbnailContextMenuDelegate;
- (PDFThumbnailDataSourceDelegate)thumbnailDataSourceDelegate;
- (PDFThumbnailIconsViewProtocol)thumbnailIconsView;
- (PDFThumbnailView)init;
- (PDFThumbnailView)initWithCoder:(id)a3;
- (PDFThumbnailView)initWithFrame:(CGRect)a3;
- (PDFThumbnailView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (PDFThumbnailView)initWithStyle:(int64_t)a3;
- (PDFView)PDFView;
- (UIEdgeInsets)contentInset;
- (void)_commonInitWithStyle:(int64_t)a3;
- (void)currentPageChanged:(id)a3;
- (void)dealloc;
- (void)documentChanged:(id)a3;
- (void)documentMutated:(id)a3;
- (void)documentUnlocked:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)pageChanged:(id)a3;
- (void)setAllowsPageReordering:(BOOL)a3;
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

- (PDFThumbnailView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PDFThumbnailView;
  v3 = [(PDFThumbnailView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PDFThumbnailView *)v3 _commonInitWithStyle:0];
  }

  return v4;
}

- (PDFThumbnailView)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PDFThumbnailView;
  v5 = [(PDFThumbnailView *)&v13 initWithCoder:v4];
  if (v5)
  {
    if ([v4 allowsKeyedCoding])
    {
      -[PDFThumbnailView _commonInitWithStyle:](v5, "_commonInitWithStyle:", [v4 decodeIntForKey:@"Style"]);
      [v4 decodeFloatForKey:@"ThumbSizeWidth"];
      v5->_thumbnailSize.width = v6;
      [v4 decodeFloatForKey:@"ThumbSizeHeight"];
      v5->_thumbnailSize.height = v7;
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PDFView"];
    }

    else
    {
      v12 = 1;
      [v4 decodeValueOfObjCType:"i" at:&v12 size:4];
      *v11 = 0;
      [v4 decodeValueOfObjCType:"q" at:v11 size:8];
      [(PDFThumbnailView *)v5 _commonInitWithStyle:*v11];
      v11[0] = 0.0;
      [v4 decodeValueOfObjCType:"f" at:v11 size:4];
      v5->_thumbnailSize.width = v11[0];
      [v4 decodeValueOfObjCType:"f" at:v11 size:4];
      v5->_thumbnailSize.height = v11[0];
      v8 = [v4 decodeObject];
    }

    v9 = v8;
    if (v8)
    {
      [(PDFThumbnailView *)v5 setPDFView:v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(PDFThumbnailCollectionViewInterface *)self->_iconsView removeFromSuperview];
  v12.receiver = self;
  v12.super_class = PDFThumbnailView;
  [(PDFThumbnailView *)&v12 encodeWithCoder:v4];
  [(PDFThumbnailView *)self addSubview:self->_iconsView];
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeInt:LODWORD(self->_style) forKey:@"Style"];
    width = self->_thumbnailSize.width;
    *&width = width;
    [v4 encodeFloat:@"ThumbSizeWidth" forKey:width];
    height = self->_thumbnailSize.height;
    *&height = height;
    [v4 encodeFloat:@"ThumbSizeHeight" forKey:height];
    WeakRetained = objc_loadWeakRetained(&self->_pdfView);
    [v4 encodeConditionalObject:WeakRetained forKey:@"PDFView"];
  }

  else
  {
    v11 = 1;
    [v4 encodeValueOfObjCType:"i" at:&v11];
    [v4 encodeValueOfObjCType:"q" at:&self->_style];
    v8 = self->_thumbnailSize.width;
    v10 = v8;
    [v4 encodeValueOfObjCType:"f" at:&v10];
    v9 = self->_thumbnailSize.height;
    v10 = v9;
    [v4 encodeValueOfObjCType:"f" at:&v10];
  }
}

- (PDFThumbnailView)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PDFThumbnailView;
  v4 = [(PDFThumbnailView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PDFThumbnailView *)v4 _commonInitWithStyle:a3];
  }

  return v5;
}

- (PDFThumbnailView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = PDFThumbnailView;
  v5 = [(PDFThumbnailView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(PDFThumbnailView *)v5 _commonInitWithStyle:a4];
  }

  return v6;
}

- (void)_commonInitWithStyle:(int64_t)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (!self->_iconsView)
  {
    self->_style = a3;
    self->_thumbnailSize = kDefaultThumbnailSize;
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&self->_contentInset.top = *MEMORY[0x1E69DDCE0];
    *&self->_contentInset.bottom = v4;
    if (a3 == 1)
    {
      v5 = [[PDFThumbnailsCollectionView alloc] initFromThumbnailView:self];
      iconsView = self->_iconsView;
      self->_iconsView = v5;

      [(PDFThumbnailView *)self addSubview:self->_iconsView];
      [(PDFThumbnailCollectionViewInterface *)self->_iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = MEMORY[0x1E696ACD8];
      v23 = [(PDFThumbnailCollectionViewInterface *)self->_iconsView bottomAnchor];
      v22 = [(PDFThumbnailView *)self bottomAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v24[0] = v21;
      v20 = [(PDFThumbnailCollectionViewInterface *)self->_iconsView topAnchor];
      v7 = [(PDFThumbnailView *)self topAnchor];
      v8 = [v20 constraintEqualToAnchor:v7];
      v24[1] = v8;
      v9 = [(PDFThumbnailCollectionViewInterface *)self->_iconsView leadingAnchor];
      v10 = [(PDFThumbnailView *)self leadingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v24[2] = v11;
      v12 = [(PDFThumbnailCollectionViewInterface *)self->_iconsView trailingAnchor];
      v13 = [(PDFThumbnailView *)self trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_documentChanged_ name:@"PDFViewChangedDocument" object:0];
  [v3 addObserver:self selector:sel_currentPageChanged_ name:@"PDFViewChangedPage" object:0];
  [v3 addObserver:self selector:sel_pageChanged_ name:@"PDFViewAnnotationsDidChange" object:0];
  [(PDFThumbnailView *)self updateNotificationsForDocument];
}

- (void)updateNotificationsForDocument
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v4 = [WeakRetained document];

  [v5 removeObserver:self name:@"PDFDocumentDidUnlock" object:0];
  [v5 removeObserver:self name:@"PDFDocumentDidMutate" object:0];
  [v5 removeObserver:self name:@"PDFPageDidChangeBounds" object:0];
  [v5 removeObserver:self name:@"PDFPageDidRotate" object:0];
  if (v4)
  {
    [v5 addObserver:self selector:sel_documentUnlocked_ name:@"PDFDocumentDidUnlock" object:v4];
    [v5 addObserver:self selector:sel_documentMutated_ name:@"PDFDocumentDidMutate" object:v4];
    [v5 addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidChangeBounds" object:v4];
    [v5 addObserver:self selector:sel_pageChanged_ name:@"PDFPageDidRotate" object:v4];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v2 = [(PDFThumbnailCollectionViewInterface *)self->_iconsView currentPage];
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

- (void)setAllowsPageReordering:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconsView = self->_iconsView;

    [(PDFThumbnailCollectionViewInterface *)iconsView setAllowsPageReordering:v3];
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
    v3 = [(PDFThumbnailCollectionViewInterface *)self->_iconsView thumbnailIconsView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)documentChanged:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [v6 object];

  if (WeakRetained == v5)
  {
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView documentChanged:v6];
    [(PDFThumbnailView *)self updateNotificationsForDocument];
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
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView documentChanged:v7];
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
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView documentMutated:v7];
  }
}

- (void)currentPageChanged:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  v5 = [v6 object];

  if (WeakRetained == v5)
  {
    [(PDFThumbnailCollectionViewInterface *)self->_iconsView currentPageChanged:v6];
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
      [(PDFThumbnailCollectionViewInterface *)self->_iconsView pageChanged:v14];
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