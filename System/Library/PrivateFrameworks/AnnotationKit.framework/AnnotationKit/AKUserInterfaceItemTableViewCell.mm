@interface AKUserInterfaceItemTableViewCell
- (AKUserInterfaceItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation AKUserInterfaceItemTableViewCell

- (AKUserInterfaceItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v22[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = AKUserInterfaceItemTableViewCell;
  v4 = [(AKUserInterfaceItemTableViewCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AKUserInterfaceItemTableViewCell *)v4 setBackgroundColor:clearColor];

    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(AKUserInterfaceItemTableViewCell *)v4 setImageView:v6];

    imageView = [(AKUserInterfaceItemTableViewCell *)v4 imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

    imageView2 = [(AKUserInterfaceItemTableViewCell *)v4 imageView];
    [imageView2 setContentMode:4];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    imageView3 = [(AKUserInterfaceItemTableViewCell *)v4 imageView];
    [imageView3 setBackgroundColor:clearColor2];

    contentView = [(AKUserInterfaceItemTableViewCell *)v4 contentView];
    imageView4 = [(AKUserInterfaceItemTableViewCell *)v4 imageView];
    [contentView addSubview:imageView4];

    v21 = @"imageView";
    imageView5 = [(AKUserInterfaceItemTableViewCell *)v4 imageView];
    v22[0] = imageView5;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[imageView]|" options:0 metrics:0 views:v14];
    [v15 activateConstraints:v16];

    v17 = MEMORY[0x277CCAAD0];
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[imageView]|" options:0 metrics:0 views:v14];
    [v17 activateConstraints:v18];
  }

  return v4;
}

@end