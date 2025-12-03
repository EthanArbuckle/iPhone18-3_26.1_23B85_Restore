@interface MapsSuggestionsDGVAnnotationView
- (MapsSuggestionsDGVAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (double)_tableViewHeight;
- (void)_setCalloutConstraints;
- (void)hideCalloutView;
- (void)showCalloutView;
@end

@implementation MapsSuggestionsDGVAnnotationView

- (double)_tableViewHeight
{
  annotation = [(MapsSuggestionsDGVAnnotationView *)self annotation];
  entriesDictionaries = [annotation entriesDictionaries];
  v4 = [entriesDictionaries count];

  return v4 * 35.0 + 25.0;
}

- (void)_setCalloutConstraints
{
  [(MapsSuggestionsDGVAnnotationView *)self _tableViewHeight];
  v4 = v3;
  heightAnchor = [(UIView *)self->_calloutView heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:v4];
  [v6 setActive:1];

  widthAnchor = [(UIView *)self->_calloutView widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:200.0];
  [v8 setActive:1];

  centerXAnchor = [(UIView *)self->_calloutView centerXAnchor];
  centerXAnchor2 = [(MapsSuggestionsDGVAnnotationView *)self centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v11 setActive:1];

  topAnchor = [(UIView *)self->_calloutView topAnchor];
  centerYAnchor = [(MapsSuggestionsDGVAnnotationView *)self centerYAnchor];
  v14 = [topAnchor constraintEqualToAnchor:centerYAnchor constant:30.0];
  [v14 setActive:1];

  topAnchor2 = [(UITableView *)self->_tableView topAnchor];
  topAnchor3 = [(UIView *)self->_calloutView topAnchor];
  v17 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  [v17 setActive:1];

  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_calloutView bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v20 setActive:1];

  leftAnchor = [(UITableView *)self->_tableView leftAnchor];
  leftAnchor2 = [(UIView *)self->_calloutView leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v23 setActive:1];

  rightAnchor = [(UITableView *)self->_tableView rightAnchor];
  rightAnchor2 = [(UIView *)self->_calloutView rightAnchor];
  v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v25 setActive:1];
}

- (void)hideCalloutView
{
  [(UIView *)self->_calloutView removeFromSuperview];

  [(MapsSuggestionsDGVAnnotationView *)self setIsSelected:0];
}

- (void)showCalloutView
{
  if (!self->_calloutView)
  {
    v3 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    calloutView = self->_calloutView;
    self->_calloutView = v7;

    [(UIView *)self->_calloutView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    tableView = self->_tableView;
    self->_tableView = v9;

    layer = [(UITableView *)self->_tableView layer];
    [layer setCornerRadius:5.0];

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_calloutView addSubview:self->_tableView];
  }

  [(MapsSuggestionsDGVAnnotationView *)self setIsSelected:1];
  [(MapsSuggestionsDGVAnnotationView *)self addSubview:self->_calloutView];

  [(MapsSuggestionsDGVAnnotationView *)self _setCalloutConstraints];
}

- (MapsSuggestionsDGVAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = MapsSuggestionsDGVAnnotationView;
  v4 = [(MapsSuggestionsDGVAnnotationView *)&v10 initWithAnnotation:annotation reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    calloutView = v4->_calloutView;
    v4->_calloutView = 0;

    tableView = v5->_tableView;
    v5->_tableView = 0;

    [(MapsSuggestionsDGVAnnotationView *)v5 setIsSelected:0];
    v8 = v5;
  }

  return v5;
}

@end