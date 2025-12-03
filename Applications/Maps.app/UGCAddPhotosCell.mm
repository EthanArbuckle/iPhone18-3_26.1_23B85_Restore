@interface UGCAddPhotosCell
- (UGCARPAddPhotosCellRequestDelegate)delegate;
- (UGCAddPhotosCell)initWithDelegate:(id)delegate;
- (void)_addPhotosUsingSourceType:(int64_t)type;
- (void)setupSubviews;
@end

@implementation UGCAddPhotosCell

- (UGCARPAddPhotosCellRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_addPhotosUsingSourceType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addPhotosCellRequestsAddingNewPhoto:self usingSourceType:type];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(_UGCAddPhotoViewModel);
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100CF3D3C;
  v14[3] = &unk_101661B98;
  objc_copyWeak(&v15, &location);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100CF3D84;
  v12[3] = &unk_101661B98;
  objc_copyWeak(&v13, &location);
  v4 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithCameraCompletion:v14 libraryCompletion:v12];
  [(_UGCAddPhotoViewModel *)v3 setMenu:v4];

  v5 = [[MUButtonCellRowView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  buttonView = self->_buttonView;
  self->_buttonView = v5;

  [(MUButtonCellRowView *)self->_buttonView setBottomHairlineHidden:1];
  [(MUButtonCellRowView *)self->_buttonView setViewModel:v3];
  [(UGCAddPhotosCell *)self addSubview:self->_buttonView];
  v7 = [MUEdgeLayout alloc];
  v8 = self->_buttonView;
  layoutMarginsGuide = [(UGCAddPhotosCell *)self layoutMarginsGuide];
  v10 = [v7 initWithItem:v8 container:layoutMarginsGuide];

  v17 = v10;
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  [NSLayoutConstraint _mapsui_activateLayouts:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (UGCAddPhotosCell)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = UGCAddPhotosCell;
  v5 = [(UGCPOIEnrichmentEditorCell *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(UGCAddPhotosCell *)v6 setupSubviews];
  }

  return v6;
}

@end