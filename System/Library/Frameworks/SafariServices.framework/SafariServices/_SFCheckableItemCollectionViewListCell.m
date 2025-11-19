@interface _SFCheckableItemCollectionViewListCell
- (void)setChecked:(BOOL)a3;
- (void)setText:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation _SFCheckableItemCollectionViewListCell

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  [(_SFCheckableItemCollectionViewListCell *)self setAutomaticallyUpdatesBackgroundConfiguration:0];
  v7 = [v4 copy];

  [v7 setHighlighted:0];
  [v7 setSelected:0];
  v5 = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  v6 = [v5 updatedConfigurationForState:v7];

  [(_SFCheckableItemCollectionViewListCell *)self setBackgroundConfiguration:v6];
}

- (void)setText:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  text = self->_text;
  self->_text = v4;

  v6 = [(_SFCheckableItemCollectionViewListCell *)self defaultContentConfiguration];
  [v6 setText:self->_text];
  [(_SFCheckableItemCollectionViewListCell *)self setContentConfiguration:v6];
  v7 = objc_alloc_init(MEMORY[0x1E69DC788]);
  cellAccessoryCheckmark = self->_cellAccessoryCheckmark;
  self->_cellAccessoryCheckmark = v7;

  [(UICellAccessory *)self->_cellAccessoryCheckmark setDisplayedState:0];
  [(UICellAccessory *)self->_cellAccessoryCheckmark setHidden:1];
  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UICellAccessory *)self->_cellAccessoryCheckmark setTintColor:v9];

  v11[0] = self->_cellAccessoryCheckmark;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_SFCheckableItemCollectionViewListCell *)self setAccessories:v10];
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(UICellAccessory *)self->_cellAccessoryCheckmark isHidden]== a3)
  {
    [(UICellAccessory *)self->_cellAccessoryCheckmark setHidden:!v3];
    v6[0] = self->_cellAccessoryCheckmark;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(_SFCheckableItemCollectionViewListCell *)self setAccessories:v5];
  }
}

@end