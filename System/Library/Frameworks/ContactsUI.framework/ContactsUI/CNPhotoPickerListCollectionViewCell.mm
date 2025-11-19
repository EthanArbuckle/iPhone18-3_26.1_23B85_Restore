@interface CNPhotoPickerListCollectionViewCell
- (CNPhotoPickerListCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)reloadData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v5];
  v7 = [v6 defaultContentConfiguration];
  v8 = [v5 row];

  if (v8 <= 2)
  {
    v9 = *(&off_1E74E5DB8 + v8);
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F0CE7398 table:@"Localized"];
    [v7 setText:v11];
  }

  v12 = [CNPhotoPickerListDataSource symbolImageNameForAddItemType:v8];
  v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v12];
  [v7 setImage:v13];

  [v7 setImageToTextPadding:16.0];
  v14 = [v7 imageProperties];
  v15 = [MEMORY[0x1E69DC888] whiteColor];
  [v14 setTintColor:v15];

  [v6 setContentConfiguration:v7];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(CNPhotoPickerListCollectionViewCell *)self selectionDelegate];
  [v7 didSelectItemFromListCollectionViewCell:v6];

  [v8 deselectRowAtIndexPath:v6 animated:1];
}

- (void)updateConstraints
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CNPhotoPickerListCollectionViewCell;
  [(CNPhotoPickerListCollectionViewCell *)&v23 updateConstraints];
  v22 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  v21 = [v22 topAnchor];
  v20 = [(CNPhotoPickerListCollectionViewCell *)self topAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v19 = [v21 constraintEqualToAnchor:v20 constant:?];
  v24[0] = v19;
  v18 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  v17 = [v18 leadingAnchor];
  v16 = [(CNPhotoPickerListCollectionViewCell *)self leadingAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v15 = [v17 constraintEqualToAnchor:v16 constant:v3];
  v24[1] = v15;
  v4 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  v5 = [v4 bottomAnchor];
  v6 = [(CNPhotoPickerListCollectionViewCell *)self bottomAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v8 = [v5 constraintEqualToAnchor:v6 constant:-v7];
  v24[2] = v8;
  v9 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  v10 = [v9 trailingAnchor];
  v11 = [(CNPhotoPickerListCollectionViewCell *)self trailingAnchor];
  [(CNPhotoPickerListCollectionViewCell *)self contentInset];
  v13 = [v10 constraintEqualToAnchor:v11 constant:-v12];
  v24[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [(CNPhotoPickerListCollectionViewCell *)self addConstraints:v14];
}

- (CNPhotoPickerListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerListCollectionViewCell;
  v3 = [(CNPhotoPickerListCollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v7 = [(CNPhotoPickerListCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_tableView];
  }

  return v3;
}

- (void)reloadData
{
  v2 = [(CNPhotoPickerListCollectionViewCell *)self tableView];
  [v2 reloadData];
}

@end