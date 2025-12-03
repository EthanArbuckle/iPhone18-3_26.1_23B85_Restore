@interface ICNoteResultsSelectionIndicatorView
+ (id)selectionImageBackground;
+ (id)selectionImageConfiguration;
+ (id)selectionImageSelected;
+ (id)selectionImageUnselected;
- (ICNoteResultsSelectionIndicatorView)initWithCoder:(id)coder;
- (ICNoteResultsSelectionIndicatorView)initWithFrame:(CGRect)frame;
- (id)addImageViewSubview;
- (void)commonInit;
- (void)setSelected:(BOOL)selected;
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
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
  if (qword_1006CB3C8 != -1)
  {
    dispatch_once(&qword_1006CB3C8, block);
  }

  v2 = qword_1006CB3D0;

  return v2;
}

- (ICNoteResultsSelectionIndicatorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsSelectionIndicatorView;
  v3 = [(ICNoteResultsSelectionIndicatorView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsSelectionIndicatorView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteResultsSelectionIndicatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsSelectionIndicatorView;
  v3 = [(ICNoteResultsSelectionIndicatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsSelectionIndicatorView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  addImageViewSubview = [(ICNoteResultsSelectionIndicatorView *)self addImageViewSubview];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = addImageViewSubview;

  addImageViewSubview2 = [(ICNoteResultsSelectionIndicatorView *)self addImageViewSubview];
  foregroundImageView = self->_foregroundImageView;
  self->_foregroundImageView = addImageViewSubview2;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  backgroundImageView = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
  image = [backgroundImageView image];

  if (!image)
  {
    selectionImageBackground = [objc_opt_class() selectionImageBackground];
    backgroundImageView2 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
    [backgroundImageView2 setImage:selectionImageBackground];
  }

  if (selectedCopy)
  {
    +[UIColor ICTintColor];
  }

  else
  {
    +[UIColor secondarySystemGroupedBackgroundColor];
  }
  v9 = ;
  backgroundImageView3 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
  [backgroundImageView3 setTintColor:v9];

  backgroundImageView4 = [(ICNoteResultsSelectionIndicatorView *)self backgroundImageView];
  layer = [backgroundImageView4 layer];
  if (selectedCopy)
  {
    LODWORD(v13) = 1.0;
    [layer setOpacity:v13];

    [objc_opt_class() selectionImageSelected];
  }

  else
  {
    LODWORD(v13) = *"fff?";
    [layer setOpacity:v13];

    [objc_opt_class() selectionImageUnselected];
  }
  v14 = ;
  foregroundImageView = [(ICNoteResultsSelectionIndicatorView *)self foregroundImageView];
  [foregroundImageView setImage:v14];

  if (selectedCopy)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v17 = ;
  foregroundImageView2 = [(ICNoteResultsSelectionIndicatorView *)self foregroundImageView];
  [foregroundImageView2 setTintColor:v17];
}

- (id)addImageViewSubview
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentMode:1];
  [(ICNoteResultsSelectionIndicatorView *)self addSubview:v3];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [(ICNoteResultsSelectionIndicatorView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[0] = v15;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [(ICNoteResultsSelectionIndicatorView *)self bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[1] = v5;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [(ICNoteResultsSelectionIndicatorView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[2] = v8;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [(ICNoteResultsSelectionIndicatorView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[3] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  return v3;
}

@end