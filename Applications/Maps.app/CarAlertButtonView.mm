@interface CarAlertButtonView
- (CarAlertButtonView)initWithTitle:(id)title image:(id)image;
- (void)_setHighlightsForHitView:(id)view;
- (void)_setupConstraints;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CarAlertButtonView

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CarAlertButtonView;
  endedCopy = ended;
  [(CarAlertButtonView *)&v7 touchesEnded:endedCopy withEvent:event];
  LODWORD(event) = sub_100C74008(endedCopy);

  if (event)
  {
    [(CarAlertButtonView *)self setHighlighted:0, v7.receiver, v7.super_class];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CarAlertButtonView;
  cancelledCopy = cancelled;
  [(CarAlertButtonView *)&v7 touchesCancelled:cancelledCopy withEvent:event];
  LODWORD(event) = sub_100C74008(cancelledCopy);

  if (event)
  {
    [(CarAlertButtonView *)self setHighlighted:0, v7.receiver, v7.super_class];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = CarAlertButtonView;
  [(CarAlertButtonView *)&v14 touchesMoved:movedCopy withEvent:eventCopy];
  if (sub_100C74008(movedCopy))
  {
    anyObject = [movedCopy anyObject];
    [anyObject locationInView:self];
    v10 = v9;
    v12 = v11;

    v13 = [(CarAlertButtonView *)self hitTest:eventCopy withEvent:v10, v12];
    [(CarAlertButtonView *)self _setHighlightsForHitView:v13];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = CarAlertButtonView;
  [(CarAlertButtonView *)&v14 touchesBegan:beganCopy withEvent:eventCopy];
  if (sub_100C74008(beganCopy))
  {
    anyObject = [beganCopy anyObject];
    [anyObject locationInView:self];
    v10 = v9;
    v12 = v11;

    v13 = [(CarAlertButtonView *)self hitTest:eventCopy withEvent:v10, v12];
    [(CarAlertButtonView *)self _setHighlightsForHitView:v13];
  }
}

- (void)_setHighlightsForHitView:(id)view
{
  if (view == self)
  {
    [(CarAlertButtonView *)self setHighlighted:1];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  [(CarAlertButtonView *)self setHighlighted:nextFocusedItem == self];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v7 = +[UIColor _carSystemFocusLabelColor];
    +[UIColor _carSystemFocusColor];
  }

  else
  {
    v7 = +[UIColor _carSystemFocusColor];
    +[UIColor clearColor];
  }
  v4 = ;
  [(CarAlertButtonView *)self setBackgroundColor:v4];
  [(UILabel *)self->_titleLabel setTextColor:v7];
  imageView = self->_imageView;
  v6 = [(UIImage *)self->_image _flatImageWithColor:v7];
  [(UIImageView *)imageView setImage:v6];
}

- (void)_setupConstraints
{
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(CarAlertButtonView *)self leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  v31[0] = v28;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor = [(CarAlertButtonView *)self topAnchor];
  v25 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:28.0];
  v31[1] = v25;
  bottomAnchor = [(CarAlertButtonView *)self bottomAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:14.0];
  v31[2] = v22;
  trailingAnchor = [(CarAlertButtonView *)self trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  v19 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:12.0];
  v31[3] = v19;
  leadingAnchor3 = [(UIImageView *)self->_imageView leadingAnchor];
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  v16 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:12.0];
  v31[4] = v16;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(CarAlertButtonView *)self centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[5] = v13;
  trailingAnchor4 = [(CarAlertButtonView *)self trailingAnchor];
  trailingAnchor5 = [(UIImageView *)self->_imageView trailingAnchor];
  v5 = [trailingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:12.0];
  v31[6] = v5;
  topAnchor2 = [(UIImageView *)self->_imageView topAnchor];
  topAnchor3 = [(CarAlertButtonView *)self topAnchor];
  v8 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3 constant:8.0];
  v31[7] = v8;
  bottomAnchor2 = [(CarAlertButtonView *)self bottomAnchor];
  bottomAnchor3 = [(UIImageView *)self->_imageView bottomAnchor];
  v11 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:8.0];
  v31[8] = v11;
  v12 = [NSArray arrayWithObjects:v31 count:9];
  [NSLayoutConstraint activateConstraints:v12];
}

- (CarAlertButtonView)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = CarAlertButtonView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarAlertButtonView *)&v18 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = height;
  if (height)
  {
    [(CarAlertButtonView *)height setAccessibilityIdentifier:@"CarAlertButton"];
    v13 = [[UIImageView alloc] initWithImage:imageCopy];
    imageView = v12->_imageView;
    v12->_imageView = v13;

    [(UIImageView *)v12->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v12->_imageView setContentMode:1];
    [(UIImageView *)v12->_imageView setAccessibilityIdentifier:@"ImageView"];
    objc_storeStrong(&v12->_image, image);
    [(CarAlertButtonView *)v12 addSubview:v12->_imageView];
    v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v15;

    [(UILabel *)v12->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v12->_titleLabel setText:titleCopy];
    [(UILabel *)v12->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(CarAlertButtonView *)v12 addSubview:v12->_titleLabel];
    [(CarAlertButtonView *)v12 _setupConstraints];
    [(CarAlertButtonView *)v12 setHighlighted:0];
  }

  return v12;
}

@end