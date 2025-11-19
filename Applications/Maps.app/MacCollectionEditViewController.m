@interface MacCollectionEditViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (MacCollectionEditViewController)initWithCollection:(id)a3 delegate:(id)a4;
- (MacCollectionEditViewControllerDelegate)delegate;
- (id)_buttonWithTitle:(id)a3 imageNamed:(id)a4;
- (id)_spacerImage;
- (void)_changePhoto;
- (void)_delete;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MacCollectionEditViewController

- (MacCollectionEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained macCollectionEditViewControllerDismiss:self];

  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  UInteger = GEOConfigGetUInteger();
  v13 = [v11 length];
  if (v13 > UInteger)
  {
    v14 = [v11 substringWithRange:{0, UInteger}];

    [v8 setText:v14];
    v11 = v14;
  }

  return v13 <= UInteger;
}

- (void)_delete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained macCollectionEditViewControllerDelete:self];
}

- (void)_changePhoto
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained macCollectionEditViewControllerPickPhoto:self];
}

- (id)_spacerImage
{
  v2 = [[UIGraphicsImageRenderer alloc] initWithSize:{22.0, 1.0}];
  v3 = [v2 imageWithActions:&stru_101652BA0];

  return v3;
}

- (id)_buttonWithTitle:(id)a3 imageNamed:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v9 = +[UIButtonConfiguration tintedButtonConfiguration];
  [v9 setTitle:v7];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100D5F18C;
  v25[3] = &unk_101652B60;
  v26 = v8;
  v24 = v8;
  [v9 setTitleTextAttributesTransformer:v25];
  v10 = [(MacCollectionEditViewController *)self _spacerImage];
  [v9 setImage:v10];

  [v9 setImagePadding:0.0];
  [v9 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  v11 = [UIButton buttonWithType:0];
  [v11 setConfiguration:v9];
  v12 = [UIImageView alloc];
  v13 = [UIImage systemImageNamed:v6];

  v14 = [v12 initWithImage:v13];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [UIImageSymbolConfiguration configurationWithFont:v24];
  [v14 setPreferredSymbolConfiguration:v15];

  [v11 addSubview:v14];
  v16 = [v14 centerXAnchor];
  v17 = [v11 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:9.0];
  v27[0] = v18;
  v19 = [v14 centerYAnchor];
  v20 = [v11 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v27[1] = v21;
  v22 = [NSArray arrayWithObjects:v27 count:2];
  [NSLayoutConstraint activateConstraints:v22];

  return v11;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MacCollectionEditViewController;
  [(MacCollectionEditViewController *)&v4 viewDidAppear:a3];
  [(UITextField *)self->_textField becomeFirstResponder];
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = MacCollectionEditViewController;
  [(MacCollectionEditViewController *)&v45 viewDidLoad];
  v3 = [(MacCollectionEditViewController *)self view];
  [v3 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

  v4 = [(MacCollectionEditViewController *)self view];
  [v4 setAccessibilityIdentifier:@"MacCollectionEditView"];

  v5 = [UITextField alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  textField = self->_textField;
  self->_textField = v9;

  [(UITextField *)self->_textField setBorderStyle:3];
  [(UITextField *)self->_textField setControlSize:2];
  v11 = [(CollectionHandler *)self->_collection title];
  [(UITextField *)self->_textField setText:v11];

  v12 = +[UIFont system20Bold];
  [(UITextField *)self->_textField setFont:v12];

  [(UITextField *)self->_textField setDelegate:self];
  [(UITextField *)self->_textField setEnabled:[(CollectionHandler *)self->_collection canEditTitle]];
  [(UITextField *)self->_textField setAccessibilityIdentifier:@"MacCollectionEditTextField"];
  v13 = [(MacCollectionEditViewController *)self view];
  [v13 addSubview:self->_textField];

  v14 = [[CollectionImageView alloc] initWithFrame:0 makeCornersRounded:CGRectZero.origin.x, y, width, height];
  imageView = self->_imageView;
  self->_imageView = v14;

  [(CollectionImageView *)self->_imageView _setContinuousCornerRadius:17.0];
  [(CollectionImageView *)self->_imageView setClipsToBounds:1];
  [(CollectionImageView *)self->_imageView setCollectionInfo:self->_collection];
  [(CollectionImageView *)self->_imageView setAccessibilityIdentifier:@"MacCollectionEditImage"];
  v16 = [(MacCollectionEditViewController *)self view];
  [v16 addSubview:self->_imageView];

  if ([(CollectionHandler *)self->_collection canEditImage])
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"[Edit Collection] Change Key Photo" value:@"localized string not found" table:0];
    v19 = [(MacCollectionEditViewController *)self _buttonWithTitle:v18 imageNamed:@"photo"];
    changePhotoButton = self->_changePhotoButton;
    self->_changePhotoButton = v19;

    [(UIButton *)self->_changePhotoButton addTarget:self action:"_changePhoto" forControlEvents:64];
    [(UIButton *)self->_changePhotoButton setAccessibilityIdentifier:@"MacCollectionEditChangePhotoButton"];
    v21 = [(MacCollectionEditViewController *)self view];
    [v21 addSubview:self->_changePhotoButton];
  }

  if ([(CollectionHandler *)self->_collection canDelete])
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[Edit Guide] Delete Guide" value:@"localized string not found" table:0];
    v24 = [(MacCollectionEditViewController *)self _buttonWithTitle:v23 imageNamed:@"trash"];
    deleteButton = self->_deleteButton;
    self->_deleteButton = v24;

    [(UIButton *)self->_deleteButton addTarget:self action:"_delete" forControlEvents:64];
    [(UIButton *)self->_deleteButton setAccessibilityIdentifier:@"MacCollectionEditDeleteButton"];
    v26 = [(MacCollectionEditViewController *)self view];
    [v26 addSubview:self->_deleteButton];
  }

  v27 = [MUSizeLayout alloc];
  v28 = [(MacCollectionEditViewController *)self view];
  +[MUSizeLayout useIntrinsicContentSize];
  LODWORD(v29) = 1144750080;
  v31 = [v27 initWithItem:v28 size:282.0 priority:{v30, v29}];

  v32 = [[MUSizeLayout alloc] initWithItem:self->_imageView size:{60.0, 60.0}];
  v33 = [MUStackLayout alloc];
  v34 = [(MacCollectionEditViewController *)self view];
  v35 = [v34 layoutMarginsGuide];
  v36 = [v33 initWithContainer:v35 axis:1];

  [v36 setDistribution:2];
  LODWORD(v37) = 1112276992;
  [v36 setDistributionFittingSizePriority:v37];
  [v36 setAlignment:1];
  [v36 addArrangedLayoutItem:self->_textField];
  [v36 setAlignment:0 forArrangedLayoutItem:self->_textField];
  [v36 addArrangedLayoutItem:self->_imageView];
  v38 = 20.0;
  [v36 setPadding:self->_imageView forArrangedLayoutItem:{20.0, 0.0, 0.0, 0.0}];
  if (self->_changePhotoButton)
  {
    [v36 addArrangedLayoutItem:?];
    [v36 setPadding:self->_changePhotoButton forArrangedLayoutItem:{20.0, 0.0, 0.0, 0.0}];
    v38 = 8.0;
  }

  if (self->_deleteButton)
  {
    [v36 addArrangedLayoutItem:?];
    [v36 setPadding:self->_deleteButton forArrangedLayoutItem:{v38, 0.0, 0.0, 0.0}];
  }

  v46[0] = v31;
  v46[1] = v32;
  v46[2] = v36;
  v39 = [NSArray arrayWithObjects:v46 count:3];
  [NSLayoutConstraint _mapsui_activateLayouts:v39];

  v40 = [(MacCollectionEditViewController *)self view];
  [v40 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v42 = v41;
  v44 = v43;

  [(MacCollectionEditViewController *)self setPreferredContentSize:v42, v44];
}

- (MacCollectionEditViewController)initWithCollection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MacCollectionEditViewController;
  v9 = [(MacCollectionEditViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end