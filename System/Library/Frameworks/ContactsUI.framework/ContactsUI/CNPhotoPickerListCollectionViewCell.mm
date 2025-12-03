@interface CNPhotoPickerListCollectionViewCell
- (CNPhotoPickerListCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)reloadData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateConstraints;
@end

@implementation CNPhotoPickerListCollectionViewCell

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  defaultContentConfiguration = [v6 defaultContentConfiguration];
  v8 = [pathCopy row];

  if (v8 <= 2)
  {
    v9 = *(&off_1E74E5DB8 + v8);
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F0CE7398 table:@"Localized"];
    [defaultContentConfiguration setText:v11];
  }

  v12 = [CNPhotoPickerListDataSource symbolImageNameForAddItemType:v8];
  v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v12];
  [defaultContentConfiguration setImage:v13];

  [defaultContentConfiguration setImageToTextPadding:16.0];
  imageProperties = [defaultContentConfiguration imageProperties];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [imageProperties setTintColor:whiteColor];

  [v6 setContentConfiguration:defaultContentConfiguration];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  selectionDelegate = [(CNPhotoPickerListCollectionViewCell *)self selectionDelegate];
  [selectionDelegate didSelectItemFromListCollectionViewCell:pathCopy];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)updateConstraints
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CNPhotoPickerListCollectionViewCell;
  [(CNPhotoPickerListCollectionViewCell *)&v23 updateConstraints];
  tableView = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  topAnchor = [tableView topAnchor];
  topAnchor2 = [(CNPhotoPickerListCollectionViewCell *)self topAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v24[0] = v19;
  tableView2 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  leadingAnchor = [tableView2 leadingAnchor];
  leadingAnchor2 = [(CNPhotoPickerListCollectionViewCell *)self leadingAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v3];
  v24[1] = v15;
  tableView3 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  bottomAnchor = [tableView3 bottomAnchor];
  bottomAnchor2 = [(CNPhotoPickerListCollectionViewCell *)self bottomAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v7];
  v24[2] = v8;
  tableView4 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  trailingAnchor = [tableView4 trailingAnchor];
  trailingAnchor2 = [(CNPhotoPickerListCollectionViewCell *)self trailingAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v12];
  v24[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [(CNPhotoPickerListCollectionViewCell *)self addConstraints:v14];
}

- (CNPhotoPickerListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerListCollectionViewCell;
  v3 = [(CNPhotoPickerListCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD020]);
    [(CNPhotoPickerListCollectionViewCell *)v3 bounds];
    v5 = [v4 initWithFrame:2 style:?];
    tableView = v3->_tableView;
    v3->_tableView = v5;

    [(UITableView *)v3->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)v3->_tableView setScrollEnabled:0];
    [(UITableView *)v3->_tableView setDelegate:v3];
    [(UITableView *)v3->_tableView setDataSource:v3];
    [(UITableView *)v3->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
    contentView = [(CNPhotoPickerListCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_tableView];
  }

  return v3;
}

- (void)reloadData
{
  tableView = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  [tableView reloadData];
}

@end