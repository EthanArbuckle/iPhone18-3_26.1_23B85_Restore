@interface MapsSuggestionsDGVAnnotationView
- (MapsSuggestionsDGVAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (double)_tableViewHeight;
- (void)_setCalloutConstraints;
- (void)hideCalloutView;
- (void)showCalloutView;
@end

@implementation MapsSuggestionsDGVAnnotationView

- (double)_tableViewHeight
{
  v2 = [(MapsSuggestionsDGVAnnotationView *)self annotation];
  v3 = [v2 entriesDictionaries];
  v4 = [v3 count];

  return v4 * 35.0 + 25.0;
}

- (void)_setCalloutConstraints
{
  [(MapsSuggestionsDGVAnnotationView *)self _tableViewHeight];
  v4 = v3;
  v5 = [(UIView *)self->_calloutView heightAnchor];
  v6 = [v5 constraintEqualToConstant:v4];
  [v6 setActive:1];

  v7 = [(UIView *)self->_calloutView widthAnchor];
  v8 = [v7 constraintEqualToConstant:200.0];
  [v8 setActive:1];

  v9 = [(UIView *)self->_calloutView centerXAnchor];
  v10 = [(MapsSuggestionsDGVAnnotationView *)self centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIView *)self->_calloutView topAnchor];
  v13 = [(MapsSuggestionsDGVAnnotationView *)self centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:30.0];
  [v14 setActive:1];

  v15 = [(UITableView *)self->_tableView topAnchor];
  v16 = [(UIView *)self->_calloutView topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(UITableView *)self->_tableView bottomAnchor];
  v19 = [(UIView *)self->_calloutView bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(UITableView *)self->_tableView leftAnchor];
  v22 = [(UIView *)self->_calloutView leftAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v26 = [(UITableView *)self->_tableView rightAnchor];
  v24 = [(UIView *)self->_calloutView rightAnchor];
  v25 = [v26 constraintEqualToAnchor:v24];
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

    v11 = [(UITableView *)self->_tableView layer];
    [v11 setCornerRadius:5.0];

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_calloutView addSubview:self->_tableView];
  }

  [(MapsSuggestionsDGVAnnotationView *)self setIsSelected:1];
  [(MapsSuggestionsDGVAnnotationView *)self addSubview:self->_calloutView];

  [(MapsSuggestionsDGVAnnotationView *)self _setCalloutConstraints];
}

- (MapsSuggestionsDGVAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = MapsSuggestionsDGVAnnotationView;
  v4 = [(MapsSuggestionsDGVAnnotationView *)&v10 initWithAnnotation:a3 reuseIdentifier:a4];
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