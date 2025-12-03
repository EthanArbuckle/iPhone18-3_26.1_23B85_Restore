@interface _SFCheckableItemCollectionViewListCell
- (void)setChecked:(BOOL)checked;
- (void)setText:(id)text;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _SFCheckableItemCollectionViewListCell

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  [(_SFCheckableItemCollectionViewListCell *)self setAutomaticallyUpdatesBackgroundConfiguration:0];
  v7 = [stateCopy copy];

  [v7 setHighlighted:0];
  [v7 setSelected:0];
  listGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  v6 = [listGroupedCellConfiguration updatedConfigurationForState:v7];

  [(_SFCheckableItemCollectionViewListCell *)self setBackgroundConfiguration:v6];
}

- (void)setText:(id)text
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  defaultContentConfiguration = [(_SFCheckableItemCollectionViewListCell *)self defaultContentConfiguration];
  [defaultContentConfiguration setText:self->_text];
  [(_SFCheckableItemCollectionViewListCell *)self setContentConfiguration:defaultContentConfiguration];
  v7 = objc_alloc_init(MEMORY[0x1E69DC788]);
  cellAccessoryCheckmark = self->_cellAccessoryCheckmark;
  self->_cellAccessoryCheckmark = v7;

  [(UICellAccessory *)self->_cellAccessoryCheckmark setDisplayedState:0];
  [(UICellAccessory *)self->_cellAccessoryCheckmark setHidden:1];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UICellAccessory *)self->_cellAccessoryCheckmark setTintColor:systemBlueColor];

  v11[0] = self->_cellAccessoryCheckmark;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_SFCheckableItemCollectionViewListCell *)self setAccessories:v10];
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(UICellAccessory *)self->_cellAccessoryCheckmark isHidden]== checked)
  {
    [(UICellAccessory *)self->_cellAccessoryCheckmark setHidden:!checkedCopy];
    v6[0] = self->_cellAccessoryCheckmark;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(_SFCheckableItemCollectionViewListCell *)self setAccessories:v5];
  }
}

@end