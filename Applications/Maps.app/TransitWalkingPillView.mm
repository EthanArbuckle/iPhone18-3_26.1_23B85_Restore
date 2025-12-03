@interface TransitWalkingPillView
- (CGSize)intrinsicContentSize;
- (TransitWalkingPillView)init;
- (id)_textArtwork;
- (id)_walkingArtwork;
- (void)_configureViews;
- (void)_updateListView;
- (void)setText:(id)text;
@end

@implementation TransitWalkingPillView

- (CGSize)intrinsicContentSize
{
  [(TransitArtworkListView *)self->_artwortListView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_textArtwork
{
  text = [(TransitWalkingPillView *)self text];
  _geo_serverFormattedString = [text _geo_serverFormattedString];

  v4 = [[MKTransitText alloc] initWithFormattedString:_geo_serverFormattedString];
  v5 = [MKTransitArtwork artworkWithText:v4];

  return v5;
}

- (id)_walkingArtwork
{
  v2 = [[MKTransitShield alloc] initWithShieldType:210002 text:0 color:0];
  v3 = [MKTransitArtwork artworkWithShield:v2 accessibilityText:0];

  return v3;
}

- (void)_updateListView
{
  _walkingArtwork = [(TransitWalkingPillView *)self _walkingArtwork];
  _textArtwork = [(TransitWalkingPillView *)self _textArtwork];
  v5 = _textArtwork;
  if (_walkingArtwork && _textArtwork)
  {
    _walkingArtwork2 = [(TransitWalkingPillView *)self _walkingArtwork];
    v13[0] = _walkingArtwork2;
    _textArtwork2 = [(TransitWalkingPillView *)self _textArtwork];
    v13[1] = _textArtwork2;
    v8 = [NSArray arrayWithObjects:v13 count:2];

    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(TransitArtworkListView *)self->_artwortListView setArtworkData:v10];
    [(TransitWalkingPillView *)self invalidateIntrinsicContentSize];
    [(TransitWalkingPillView *)self layoutIfNeeded];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    [(TransitWalkingPillView *)self _updateListView];
  }
}

- (void)_configureViews
{
  v3 = objc_alloc_init(TransitArtworkListView);
  artwortListView = self->_artwortListView;
  self->_artwortListView = v3;

  [(TransitArtworkListView *)self->_artwortListView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransitWalkingPillView *)self addSubview:self->_artwortListView];
  topAnchor = [(TransitArtworkListView *)self->_artwortListView topAnchor];
  topAnchor2 = [(TransitWalkingPillView *)self topAnchor];
  v18 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v21[0] = v18;
  bottomAnchor = [(TransitArtworkListView *)self->_artwortListView bottomAnchor];
  bottomAnchor2 = [(TransitWalkingPillView *)self bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v21[1] = v15;
  centerYAnchor = [(TransitArtworkListView *)self->_artwortListView centerYAnchor];
  centerYAnchor2 = [(TransitWalkingPillView *)self centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v21[2] = v7;
  leadingAnchor = [(TransitArtworkListView *)self->_artwortListView leadingAnchor];
  leadingAnchor2 = [(TransitWalkingPillView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[3] = v10;
  trailingAnchor = [(TransitArtworkListView *)self->_artwortListView trailingAnchor];
  trailingAnchor2 = [(TransitWalkingPillView *)self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[4] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:5];
  [NSLayoutConstraint activateConstraints:v14];
}

- (TransitWalkingPillView)init
{
  v5.receiver = self;
  v5.super_class = TransitWalkingPillView;
  v2 = [(TransitWalkingPillView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TransitWalkingPillView *)v2 _configureViews];
  }

  return v3;
}

@end