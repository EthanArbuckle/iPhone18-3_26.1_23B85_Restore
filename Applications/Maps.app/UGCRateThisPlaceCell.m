@interface UGCRateThisPlaceCell
- (UGCRateThisPlaceCell)initWithDelegate:(id)a3;
- (UGCRateThisPlaceCellDelegate)delegate;
- (void)setupSubviews;
@end

@implementation UGCRateThisPlaceCell

- (UGCRateThisPlaceCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(_UGCRateThisPlaceViewModel);
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100CC933C;
  v15 = &unk_101656BC8;
  objc_copyWeak(&v16, &location);
  [(_UGCRateThisPlaceViewModel *)v3 setActionBlock:&v12];
  v4 = [MUButtonCellRowView alloc];
  v5 = [v4 initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v12, v13, v14, v15}];
  buttonView = self->_buttonView;
  self->_buttonView = v5;

  [(MUButtonCellRowView *)self->_buttonView setBottomHairlineHidden:1];
  [(MUButtonCellRowView *)self->_buttonView setViewModel:v3];
  [(UGCRateThisPlaceCell *)self addSubview:self->_buttonView];
  v7 = [MUEdgeLayout alloc];
  v8 = self->_buttonView;
  v9 = [(UGCRateThisPlaceCell *)self layoutMarginsGuide];
  v10 = [v7 initWithItem:v8 container:v9];

  v18 = v10;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  [NSLayoutConstraint _mapsui_activateLayouts:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (UGCRateThisPlaceCell)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UGCRateThisPlaceCell;
  v5 = [(UGCPOIEnrichmentEditorCell *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(UGCRateThisPlaceCell *)v6 setupSubviews];
  }

  return v6;
}

@end