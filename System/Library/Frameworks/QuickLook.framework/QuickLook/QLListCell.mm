@interface QLListCell
+ (id)listCell;
- (id)_folderImage;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFileDepthLevel:(int64_t)level;
- (void)setFolderName:(id)name;
- (void)setItem:(id)item;
- (void)setSubtitleString:(id)string;
- (void)setThumbnail:(id)thumbnail;
@end

@implementation QLListCell

+ (id)listCell
{
  v3 = QLFrameworkBundle();
  v4 = [v3 loadNibNamed:@"QLListCell" owner:self options:0];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (void)awakeFromNib
{
  v14.receiver = self;
  v14.super_class = QLListCell;
  [(QLListCell *)&v14 awakeFromNib];
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  [WeakRetained setContentMode:4];

  labelColor = [MEMORY[0x277D75348] labelColor];
  v5 = objc_loadWeakRetained(&self->_title);
  [v5 setTextColor:labelColor];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v7 = objc_loadWeakRetained(&self->_subtitle);
  [v7 setTextColor:secondaryLabelColor];

  v8 = objc_loadWeakRetained(&self->_title);
  [v8 setAdjustsFontSizeToFitWidth:1];

  v9 = objc_loadWeakRetained(&self->_title);
  [v9 setMinimumScaleFactor:0.7];

  v10 = objc_loadWeakRetained(&self->_subtitle);
  [v10 setAdjustsFontSizeToFitWidth:1];

  v11 = objc_loadWeakRetained(&self->_subtitle);
  [v11 setMinimumScaleFactor:0.7];

  v12 = objc_loadWeakRetained(&self->_leftConstraint);
  [v12 setConstant:15.0];

  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(QLListCell *)self setBackgroundColor:clearColor];
  }

  [(QLListCell *)self setIndentationWidth:15.0];
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = QLListCell;
  [(QLListCell *)&v9 prepareForReuse];
  WeakRetained = objc_loadWeakRetained(&self->_subtitle);
  [WeakRetained setText:&stru_284D5E510];

  v4 = objc_loadWeakRetained(&self->_title);
  [v4 setText:&stru_284D5E510];

  v5 = objc_loadWeakRetained(&self->_thumbnailView);
  [v5 setImage:0];

  item = self->_item;
  self->_item = 0;

  folderName = self->_folderName;
  self->_folderName = 0;

  self->_fileDepthLevel = 0;
  v8 = objc_loadWeakRetained(&self->_leftConstraint);
  [v8 setConstant:15.0];
}

- (id)_folderImage
{
  if (_folderImage_onceToken != -1)
  {
    [QLListCell _folderImage];
  }

  v3 = _folderImage__folderImage;

  return v3;
}

void __26__QLListCell__folderImage__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = QLFrameworkBundle();
  v1 = [v0 imageNamed:@"folder" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = _folderImage__folderImage;
  _folderImage__folderImage = v1;
}

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);
  itemCopy = item;
  previewItemTitle = [itemCopy previewItemTitle];

  WeakRetained = objc_loadWeakRetained(&self->_title);
  [WeakRetained setText:previewItemTitle];
}

- (void)setSubtitleString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy copy];
  subtitleString = self->_subtitleString;
  self->_subtitleString = v5;

  WeakRetained = objc_loadWeakRetained(&self->_subtitle);
  [WeakRetained setText:stringCopy];
}

- (void)setThumbnail:(id)thumbnail
{
  objc_storeStrong(&self->_thumbnail, thumbnail);
  thumbnailCopy = thumbnail;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailView);
  [WeakRetained setImage:thumbnailCopy];
}

- (void)setFileDepthLevel:(int64_t)level
{
  self->_fileDepthLevel = level;
  levelCopy = level;
  [(QLListCell *)self indentationWidth];
  v6 = levelCopy * v5 + 15.0;
  WeakRetained = objc_loadWeakRetained(&self->_leftConstraint);
  [WeakRetained setConstant:v6];

  [(QLListCell *)self setNeedsLayout];
}

- (void)setFolderName:(id)name
{
  objc_storeStrong(&self->_folderName, name);
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_title);
  [WeakRetained setText:nameCopy];

  _folderImage = [(QLListCell *)self _folderImage];
  v8 = objc_loadWeakRetained(&self->_thumbnailView);
  [v8 setImage:_folderImage];

  v9 = objc_loadWeakRetained(&self->_subtitle);
  [v9 setHidden:1];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = QLListCell;
  [(QLListCell *)&v13 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_title);
  [WeakRetained bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_loadWeakRetained(&self->_title);
  [(QLListCell *)self convertRect:v12 fromView:v5, v7, v9, v11];
  [(QLListCell *)self setSeparatorInset:0.0, CGRectGetMinX(v14), 0.0, 0.0];
}

@end