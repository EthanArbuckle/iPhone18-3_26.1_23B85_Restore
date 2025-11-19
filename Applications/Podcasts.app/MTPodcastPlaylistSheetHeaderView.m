@interface MTPodcastPlaylistSheetHeaderView
- (MTPodcastPlaylistSheetHeaderView)initWithFrame:(CGRect)a3;
- (void)buttonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setOn:(BOOL)a3;
@end

@implementation MTPodcastPlaylistSheetHeaderView

- (MTPodcastPlaylistSheetHeaderView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = MTPodcastPlaylistSheetHeaderView;
  v3 = [(MTPodcastPlaylistSheetHeaderView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UISwitch alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v9 = v3->_switch;
    v3->_switch = v8;

    [(UISwitch *)v3->_switch addTarget:v3 action:"buttonTapped:" forControlEvents:4096];
    [(MTPodcastPlaylistSheetHeaderView *)v3 addSubview:v3->_switch];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    title = v3->_title;
    v3->_title = v10;

    v12 = v3->_title;
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"All Podcasts Button" value:&stru_1004F3018 table:0];
    [(UILabel *)v12 setText:v14];

    v15 = v3->_title;
    v16 = +[UIFont headerTitleFont];
    [(UILabel *)v15 setFont:v16];

    v17 = v3->_title;
    v18 = +[UIColor clearColor];
    [(UILabel *)v17 setBackgroundColor:v18];

    v19 = v3->_title;
    v20 = +[UIColor cellTextColor];
    [(UILabel *)v19 setTextColor:v20];

    [(MTPodcastPlaylistSheetHeaderView *)v3 addSubview:v3->_title];
    v21 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = MTPodcastPlaylistSheetHeaderView;
  [(MTPodcastPlaylistSheetHeaderView *)&v27 layoutSubviews];
  v3 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(MTPodcastPlaylistSheetHeaderView *)self semanticContentAttribute]];
  title = self->_title;
  v5 = +[UIFont headerTitleFont];
  [(UILabel *)title setFont:v5];

  [(MTPodcastPlaylistSheetHeaderView *)self bounds];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  separator = self->_separator;
  MaxY = CGRectGetMaxY(v28);
  v12 = +[UIScreen mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = MaxY - 1.0 / v14;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v16 = CGRectGetWidth(v29);
  v17 = +[UIScreen mainScreen];
  [v17 scale];
  v19 = v18;

  [(UIView *)separator setFrame:0.0, v15, v16, 1.0 / v19];
  [(UISwitch *)self->_switch sizeToFit];
  [(UILabel *)self->_title sizeToFit];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MaxX = CGRectGetMaxX(v30);
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [(UILabel *)self->_title bounds];
    v21 = MaxX - CGRectGetWidth(v31) + -20.0;
    v22 = 20.0;
  }

  else
  {
    [(UISwitch *)self->_switch bounds];
    v22 = MaxX - CGRectGetWidth(v32) + -20.0;
    v21 = 20.0;
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v23 = CGRectGetHeight(v33);
  [(UISwitch *)self->_switch bounds];
  v24 = ceil((v23 - CGRectGetHeight(v34)) * 0.5);
  [(UISwitch *)self->_switch frame];
  [(UISwitch *)self->_switch setFrame:v22, v24];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v25 = CGRectGetHeight(v35);
  [(UILabel *)self->_title bounds];
  v26 = ceil((v25 - CGRectGetHeight(v36)) * 0.5);
  [(UILabel *)self->_title frame];
  [(UILabel *)self->_title setFrame:v21, v26];
}

- (void)buttonTapped:(id)a3
{
  self->_on = [a3 isOn];
  action = self->_action;
  if (action)
  {
    v5 = *(action + 2);

    v5();
  }
}

- (void)setOn:(BOOL)a3
{
  self->_on = a3;
  [(UISwitch *)self->_switch setOn:?];
  action = self->_action;
  if (action)
  {
    v5 = *(action + 2);

    v5();
  }
}

@end