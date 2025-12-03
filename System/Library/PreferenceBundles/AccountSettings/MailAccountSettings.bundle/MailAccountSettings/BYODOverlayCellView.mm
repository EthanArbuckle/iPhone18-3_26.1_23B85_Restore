@interface BYODOverlayCellView
+ (id)log;
- (BYODOverlayCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BYODOverlayCellView

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_57168;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6590 != -1)
  {
    dispatch_once(&qword_D6590, block);
  }

  v2 = qword_D6588;

  return v2;
}

- (BYODOverlayCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v32.receiver = self;
  v32.super_class = BYODOverlayCellView;
  v7 = [(BYODOverlayCellView *)&v32 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = +[UIColor systemBackgroundColor];
    [(BYODOverlayCellView *)v7 setBackgroundColor:v8];

    [(BYODOverlayCellView *)v7 setSelectionStyle:0];
    textLabel = [(BYODOverlayCellView *)v7 textLabel];
    noteLabel = v7->_noteLabel;
    v7->_noteLabel = textLabel;

    [(UILabel *)v7->_noteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_noteLabel setTextAlignment:1];
    v11 = v7->_noteLabel;
    v12 = +[UIColor systemGrayColor];
    [(UILabel *)v11 setTextColor:v12];

    v13 = v7->_noteLabel;
    +[UIFont systemMinimumFontSize];
    v14 = [UIFont systemFontOfSize:?];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v7->_noteLabel setLineBreakMode:0];
    [(UILabel *)v7->_noteLabel setNumberOfLines:0];
    topAnchor = [(UILabel *)v7->_noteLabel topAnchor];
    contentView = [(BYODOverlayCellView *)v7 contentView];
    topAnchor2 = [contentView topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [v18 setActive:1];

    bottomAnchor = [(UILabel *)v7->_noteLabel bottomAnchor];
    contentView2 = [(BYODOverlayCellView *)v7 contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    [v22 setActive:1];

    leadingAnchor = [(UILabel *)v7->_noteLabel leadingAnchor];
    contentView3 = [(BYODOverlayCellView *)v7 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    [v26 setActive:1];

    trailingAnchor = [(UILabel *)v7->_noteLabel trailingAnchor];
    contentView4 = [(BYODOverlayCellView *)v7 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    [v30 setActive:1];
  }

  return v7;
}

@end