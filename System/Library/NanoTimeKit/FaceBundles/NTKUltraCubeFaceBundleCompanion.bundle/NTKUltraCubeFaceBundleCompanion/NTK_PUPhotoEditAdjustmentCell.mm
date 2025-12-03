@interface NTK_PUPhotoEditAdjustmentCell
- (BOOL)displayMappedValue;
- (NTK_PUPhotoEditAdjustmentCell)initWithCoder:(id)coder;
- (NTK_PUPhotoEditAdjustmentCell)initWithFrame:(CGRect)frame;
- (NTK_PUPhotoEditBaseAdjustmentCellDelegate)delegate;
- (void)_setupEventHandler;
- (void)_updateImage;
- (void)_updateValueLabelVisibility;
- (void)handleButton:(id)button;
- (void)ntk_setImage:(id)image;
- (void)setDisplayMappedValue:(BOOL)value;
- (void)setEnabled:(BOOL)enabled;
- (void)setImageName:(id)name;
- (void)setIsUserModifying:(BOOL)modifying;
- (void)setSelected:(BOOL)selected;
@end

@implementation NTK_PUPhotoEditAdjustmentCell

- (NTK_PUPhotoEditAdjustmentCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditAdjustmentCell;
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTK_PUPhotoEditAdjustmentCell *)v3 _setupEventHandler];
  }

  return v4;
}

- (NTK_PUPhotoEditAdjustmentCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditAdjustmentCell;
  v3 = [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NTK_PUPhotoEditAdjustmentCell *)v3 _setupEventHandler];
  }

  return v4;
}

- (void)_setupEventHandler
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton addTarget:self action:"handleButton:" forControlEvents:64];
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if (self->super._imageName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->super._imageName, name);
    [(NTK_PUPhotoEditAdjustmentCell *)self _updateImage];
    nameCopy = v6;
  }
}

- (void)ntk_setImage:(id)image
{
  imageCopy = image;
  ntk_image = [(NTK_PUPhotoEditBaseAdjustmentCell *)self ntk_image];
  v6.receiver = self;
  v6.super_class = NTK_PUPhotoEditAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v6 ntk_setImage:imageCopy];

  if (ntk_image != imageCopy)
  {
    [(NTK_PUPhotoEditAdjustmentCell *)self _updateImage];
  }
}

- (void)_updateImage
{
  ntk_image = [(NTK_PUPhotoEditBaseAdjustmentCell *)self ntk_image];
  if (ntk_image)
  {
    containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
    [containerButton setImage:ntk_image forState:0];
  }

  else
  {
    containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self imageName];
    v4 = [UIImage pu_PhotosUIImageNamed:containerButton];
    containerButton2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
    [containerButton2 setImage:v4 forState:0];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = NTK_PUPhotoEditAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setEnabled:selectedCopy];

  containerButton2 = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton2 setUserInteractionEnabled:selectedCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = NTK_PUPhotoEditAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v8 setEnabled:?];
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setSelected:enabledCopy];

  if (enabledCopy)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.3;
  }

  contentView = [(NTK_PUPhotoEditAdjustmentCell *)self contentView];
  [contentView setAlpha:v6];
}

- (void)setIsUserModifying:(BOOL)modifying
{
  v4.receiver = self;
  v4.super_class = NTK_PUPhotoEditAdjustmentCell;
  [(NTK_PUPhotoEditBaseAdjustmentCell *)&v4 setIsUserModifying:modifying];
  [(NTK_PUPhotoEditAdjustmentCell *)self _updateValueLabelVisibility];
}

- (void)_updateValueLabelVisibility
{
  if ([(NTK_PUPhotoEditBaseAdjustmentCell *)self isUserModifying])
  {
    shouldDisplayValueLabel = [(NTK_PUPhotoEditAdjustmentCell *)self shouldDisplayValueLabel];
  }

  else
  {
    shouldDisplayValueLabel = 0;
  }

  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setShouldShowValueLabel:shouldDisplayValueLabel];
}

- (void)setDisplayMappedValue:(BOOL)value
{
  valueCopy = value;
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setDisplayMappedValue:valueCopy];
}

- (BOOL)displayMappedValue
{
  containerButton = [(NTK_PUPhotoEditBaseAdjustmentCell *)self containerButton];
  displayMappedValue = [containerButton displayMappedValue];

  return displayMappedValue;
}

- (void)handleButton:(id)button
{
  buttonCopy = button;
  delegate = [(NTK_PUPhotoEditAdjustmentCell *)self delegate];
  v5 = [delegate canToggleCell:self];

  if (v5)
  {
    [buttonCopy setSelected:{objc_msgSend(buttonCopy, "isSelected") ^ 1}];
    -[NTK_PUPhotoEditAdjustmentCell setEnabled:](self, "setEnabled:", [buttonCopy isSelected]);
    delegate2 = [(NTK_PUPhotoEditAdjustmentCell *)self delegate];
    [delegate2 didToggleCell:self];
  }
}

- (NTK_PUPhotoEditBaseAdjustmentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end