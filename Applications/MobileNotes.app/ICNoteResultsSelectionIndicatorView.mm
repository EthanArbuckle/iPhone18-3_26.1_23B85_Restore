@interface ICNoteResultsSelectionIndicatorView
+ (id)selectionImageBackground;
+ (id)selectionImageConfiguration;
+ (id)selectionImageSelected;
+ (id)selectionImageUnselected;
- (ICNoteResultsSelectionIndicatorView)initWithCoder:(id)a3;
- (ICNoteResultsSelectionIndicatorView)initWithFrame:(CGRect)a3;
- (id)addImageViewSubview;
- (void)commonInit;
- (void)setSelected:(BOOL)a3;
@end

@implementation ICNoteResultsSelectionIndicatorView

+ (id)selectionImageConfiguration
{
  if (qword_1006CB398 != -1)
  {
    sub_1004E0364();
  }

  v3 = qword_1006CB3A0;

  return v3;
}

+ (id)selectionImageBackground
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100109F6C;
  block[3] = &unk_100648758;
  block[4] = a1;
  if (qword_1006CB3A8 != -1)
  {
    dispatch_once(&qword_1006CB3A8, block);
  }

  v2 = qword_1006CB3B0;

  return v2;
}

+ (id)selectionImageSelected
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A084;
  block[3] = &unk_100648758;
  block[4] = a1;
  if (qword_1006CB3B8 != -1)
  {
    dispatch_once(&qword_1006CB3B8, block);
  }

  v2 = qword_1006CB3C0;

  return v2;
}

+ (id)selectionImageUnselected
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A19C;
  block[3] = &unk_100648758;
  block[4] = a1;
  if (qword_1006CB3C8 != -1)
  {
    dispatch_once(&qword_1006CB3C8, block);
  }

  v2 = qword_1006CB3D0;

  return v2;
}

- (ICNoteResultsSelectionIndicatorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsSelectionIndicatorView;
  v3 = [(ICNoteResultsSelectionIndicatorView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsSelectionIndicatorView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteResultsSelectionIndicatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsSelectionIndicatorView;
  v3 = [(ICNoteResultsSelectionIndicatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsSelectionIndicatorView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [(ICNoteResultsSelectionIndicatorView *)self addImageViewSubview];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = v3;

  v5 = [(ICNoteResultsSelectionIndicatorView *)self addImageViewSubview];
  foregroundImageView = self->_foregroundImageView;
  self->_foregroundImageView = v5;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  v5 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
  v6 = [v5 image];

  if (!v6)
  {
    v7 = [objc_opt_class() selectionImageBackground];
    v8 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
    [v8 setImage:v7];
  }

  if (v3)
  {
    +[UIColor ICTintColor];
  }

  else
  {
    +[UIColor secondarySystemGroupedBackgroundColor];
  }
  v9 = ;
  v10 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
  [v10 setTintColor:v9];

  v11 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
  v12 = [v11 layer];
  if (v3)
  {
    LODWORD(v13) = 1.0;
    [v12 setOpacity:v13];

    [objc_opt_class() selectionImageSelected];
  }

  else
  {
    LODWORD(v13) = *"fff?";
    [v12 setOpacity:v13];

    [objc_opt_class() selectionImageUnselected];
  }
  v14 = ;
  v15 = [(ICNoteResultsSelectionIndicatorView *)self foregroundImageView];
  [v15 setImage:v14];

  if (v3)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v17 = ;
  v16 = [(ICNoteResultsSelectionIndicatorView *)self foregroundImageView];
  [v16 setTintColor:v17];
}

- (id)addImageViewSubview
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentMode:1];
  [(ICNoteResultsSelectionIndicatorView *)self addSubview:v3];
  v17 = [v3 topAnchor];
  v16 = [(ICNoteResultsSelectionIndicatorView *)self topAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v14 = [v3 bottomAnchor];
  v4 = [(ICNoteResultsSelectionIndicatorView *)self bottomAnchor];
  v5 = [v14 constraintEqualToAnchor:v4];
  v18[1] = v5;
  v6 = [v3 leadingAnchor];
  v7 = [(ICNoteResultsSelectionIndicatorView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v18[2] = v8;
  v9 = [v3 trailingAnchor];
  v10 = [(ICNoteResultsSelectionIndicatorView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v18[3] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  return v3;
}

@end