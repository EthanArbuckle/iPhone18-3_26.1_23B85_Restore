@interface ICMovieCollectionViewCell
- (ICMovieCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)layoutSubviews;
- (void)setAttachment:(id)attachment;
- (void)updateConstraints;
@end

@implementation ICMovieCollectionViewCell

- (ICMovieCollectionViewCell)initWithFrame:(CGRect)frame
{
  v63.receiver = self;
  v63.super_class = ICMovieCollectionViewCell;
  v3 = [(ICImageCollectionViewCell *)&v63 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(ICMovieCollectionViewCell *)v3 setBottomView:v8];

    bottomView = [(ICMovieCollectionViewCell *)v3 bottomView];
    [bottomView setTranslatesAutoresizingMaskIntoConstraints:0];

    bottomView2 = [(ICMovieCollectionViewCell *)v3 bottomView];
    [(ICMovieCollectionViewCell *)v3 addSubview:bottomView2];

    v11 = +[CAGradientLayer layer];
    [(ICMovieCollectionViewCell *)v3 setBottomGradient:v11];

    v12 = +[UIColor blackColor];
    v66[0] = [v12 CGColor];
    v13 = +[UIColor clearColor];
    v66[1] = [v13 CGColor];
    v14 = [NSArray arrayWithObjects:v66 count:2];
    bottomGradient = [(ICMovieCollectionViewCell *)v3 bottomGradient];
    [bottomGradient setColors:v14];

    bottomGradient2 = [(ICMovieCollectionViewCell *)v3 bottomGradient];
    [bottomGradient2 setStartPoint:{0.0, 1.0}];

    bottomGradient3 = [(ICMovieCollectionViewCell *)v3 bottomGradient];
    [bottomGradient3 setEndPoint:{0.0, 0.0}];

    bottomView3 = [(ICMovieCollectionViewCell *)v3 bottomView];
    layer = [bottomView3 layer];
    [layer bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    bottomGradient4 = [(ICMovieCollectionViewCell *)v3 bottomGradient];
    [bottomGradient4 setFrame:{v21, v23, v25, v27}];

    bottomView4 = [(ICMovieCollectionViewCell *)v3 bottomView];
    layer2 = [bottomView4 layer];
    bottomGradient5 = [(ICMovieCollectionViewCell *)v3 bottomGradient];
    [layer2 addSublayer:bottomGradient5];

    v32 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [UIImage imageNamed:@"VideoCamera"];
    [v32 setImage:v33];

    bottomView5 = [(ICMovieCollectionViewCell *)v3 bottomView];
    [bottomView5 addSubview:v32];

    v35 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(ICMovieCollectionViewCell *)v3 setTimeLabel:v35];

    timeLabel = [(ICMovieCollectionViewCell *)v3 timeLabel];
    [timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v37 = [UIFont boldSystemFontOfSize:10.0];
    ic_fontWithSingleLineA = [v37 ic_fontWithSingleLineA];
    timeLabel2 = [(ICMovieCollectionViewCell *)v3 timeLabel];
    [timeLabel2 setFont:ic_fontWithSingleLineA];

    v40 = +[UIColor whiteColor];
    timeLabel3 = [(ICMovieCollectionViewCell *)v3 timeLabel];
    [timeLabel3 setTextColor:v40];

    bottomView6 = [(ICMovieCollectionViewCell *)v3 bottomView];
    timeLabel4 = [(ICMovieCollectionViewCell *)v3 timeLabel];
    [bottomView6 addSubview:timeLabel4];

    v44 = +[NSMutableArray array];
    v64[0] = @"bottomView";
    bottomView7 = [(ICMovieCollectionViewCell *)v3 bottomView];
    v65[0] = bottomView7;
    v65[1] = v32;
    v64[1] = @"cameraIcon";
    v64[2] = @"timeLabel";
    timeLabel5 = [(ICMovieCollectionViewCell *)v3 timeLabel];
    v65[2] = timeLabel5;
    v47 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];

    bottomView8 = [(ICMovieCollectionViewCell *)v3 bottomView];
    v49 = [NSLayoutConstraint constraintWithItem:bottomView8 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:30.0];
    [v44 addObject:v49];

    bottomView9 = [(ICMovieCollectionViewCell *)v3 bottomView];
    v51 = [NSLayoutConstraint constraintWithItem:v3 attribute:4 relatedBy:0 toItem:bottomView9 attribute:4 multiplier:1.0 constant:0.0];
    [v44 addObject:v51];

    thumbnailView = [(ICImagesAndMoviesBaseCell *)v3 thumbnailView];
    bottomView10 = [(ICMovieCollectionViewCell *)v3 bottomView];
    v54 = [NSLayoutConstraint constraintWithItem:thumbnailView attribute:5 relatedBy:0 toItem:bottomView10 attribute:5 multiplier:1.0 constant:0.0];
    [v44 addObject:v54];

    thumbnailView2 = [(ICImagesAndMoviesBaseCell *)v3 thumbnailView];
    bottomView11 = [(ICMovieCollectionViewCell *)v3 bottomView];
    v57 = [NSLayoutConstraint constraintWithItem:thumbnailView2 attribute:6 relatedBy:0 toItem:bottomView11 attribute:6 multiplier:1.0 constant:0.0];
    [v44 addObject:v57];

    v58 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-8-[cameraIcon(18)]", 0, 0, v47);
    [v44 addObjectsFromArray:v58];

    v59 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[cameraIcon(11)]-9-|" options:0 metrics:0 views:v47];
    [v44 addObjectsFromArray:v59];

    v60 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[timeLabel]-10-|" options:0 metrics:0 views:v47];
    [v44 addObjectsFromArray:v60];

    v61 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[timeLabel]-8-|" options:0 metrics:0 views:v47];
    [v44 addObjectsFromArray:v61];

    [NSLayoutConstraint activateConstraints:v44];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = ICMovieCollectionViewCell;
  [(ICImageCollectionViewCell *)&v13 layoutSubviews];
  bottomView = [(ICMovieCollectionViewCell *)self bottomView];
  [bottomView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  bottomGradient = [(ICMovieCollectionViewCell *)self bottomGradient];
  [bottomGradient setFrame:{v5, v7, v9, v11}];
}

- (void)setAttachment:(id)attachment
{
  v10.receiver = self;
  v10.super_class = ICMovieCollectionViewCell;
  attachmentCopy = attachment;
  [(ICImageCollectionViewCell *)&v10 setAttachment:attachmentCopy];
  v5 = [ICMediaTimeFormatter timecodeFormatter:v10.receiver];
  [attachmentCopy duration];
  v7 = v6;

  v8 = [v5 stringFromTimeInterval:v7];
  timeLabel = [(ICMovieCollectionViewCell *)self timeLabel];
  [timeLabel setText:v8];
}

- (void)updateConstraints
{
  v2.receiver = self;
  v2.super_class = ICMovieCollectionViewCell;
  [(ICImagesAndMoviesBaseCell *)&v2 updateConstraints];
}

- (id)accessibilityLabel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"movie" value:&stru_100661CF0 table:0];

  itemNumberAccessibilityString = [(ICBrowseAttachmentsBaseCell *)self itemNumberAccessibilityString];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  title = [attachment title];
  v5 = [title length];

  attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v7 = attachment2;
  if (v5)
  {
    title2 = [attachment2 title];
    attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment3 movieDurationForSpeaking];
  }

  else
  {
    title2 = [attachment2 movieDurationForSpeaking];
    attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment3 modificationDateForSpeaking];
  }
  v12 = ;
  v10 = __ICAccessibilityStringForVariables();

  return v10;
}

@end