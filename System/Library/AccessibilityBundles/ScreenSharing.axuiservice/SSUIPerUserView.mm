@interface SSUIPerUserView
- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)frame;
- (SSUIPerUserView)init;
- (SSUIPerUserView)initWithFrame:(CGRect)frame;
- (SSUIPerUserView)initWithImageNamed:(id)named;
- (void)setDisplayName:(id)name;
- (void)setFrameOriginWithPoint:(CGPoint)point;
- (void)setWindowCoordinates:(CGPoint)coordinates;
- (void)viewDidMoveToWindow;
@end

@implementation SSUIPerUserView

- (SSUIPerUserView)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "init", v12, 2u);
  }

  v3 = +[SSUICursorViewController serviceBundle];
  v4 = [UIImage imageNamed:@"red-circle" inBundle:v3 compatibleWithTraitCollection:0];
  [(SSUIPerUserView *)self setUserCursorImage:v4];

  userCursorImage = [(SSUIPerUserView *)self userCursorImage];
  [userCursorImage size];
  v7 = v6;
  userCursorImage2 = [(SSUIPerUserView *)self userCursorImage];
  [userCursorImage2 size];
  v10 = [(SSUIPerUserView *)self initWithFrame:0.0, 0.0, v7, v9];

  return v10;
}

- (SSUIPerUserView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "initWithFrame", buf, 2u);
  }

  v35.receiver = self;
  v35.super_class = SSUIPerUserView;
  height = [(SSUIPerUserView *)&v35 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = +[SSUICursorViewController serviceBundle];
    v10 = [UIImage imageNamed:@"red-circle" inBundle:v9 compatibleWithTraitCollection:0];
    [(SSUIPerUserView *)height setUserCursorImage:v10];

    userCursorImage = [(SSUIPerUserView *)height userCursorImage];

    if (!userCursorImage && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_74A4();
    }

    v12 = [[UIImageView alloc] initWithFrame:{(width + -48.0) * 0.5, 0.0, 48.0, 48.0}];
    [(SSUIPerUserView *)height setImageView:v12];

    userCursorImage2 = [(SSUIPerUserView *)height userCursorImage];
    [(SSUIPerUserView *)height setCurrentUserCursorImage:userCursorImage2];
    imageView = [(SSUIPerUserView *)height imageView];
    [imageView setImage:userCursorImage2];

    v15 = dispatch_semaphore_create(0);
    blinker = height->blinker;
    height->blinker = v15;

    v17 = [[UITextView alloc] initWithFrame:{0.0, height + -24.0, width, 24.0}];
    [(SSUIPerUserView *)height setTextView:v17];

    v18 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    textView = [(SSUIPerUserView *)height textView];
    [textView setBackgroundColor:v18];

    v20 = [UIColor colorWithRed:1.0 green:0.5 blue:1.0 alpha:1.0];
    textView2 = [(SSUIPerUserView *)height textView];
    [textView2 setTextColor:v20];

    v22 = [NSMutableAttributedString alloc];
    v23 = [NSString stringWithFormat:@"%@\n", @"Unknown User"];
    v37[0] = NSForegroundColorAttributeName;
    v24 = [UIColor colorWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
    v38[0] = v24;
    v37[1] = NSBackgroundColorAttributeName;
    v25 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v38[1] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
    v27 = [v22 initWithString:v23 attributes:v26];

    textView3 = [(SSUIPerUserView *)height textView];
    textStorage = [textView3 textStorage];
    [textStorage setAttributedString:v27];

    textView4 = [(SSUIPerUserView *)height textView];
    [textView4 setTextAlignment:1];

    textView5 = [(SSUIPerUserView *)height textView];
    [(SSUIPerUserView *)height addSubview:textView5];

    imageView2 = [(SSUIPerUserView *)height imageView];
    textView6 = [(SSUIPerUserView *)height textView];
    [(SSUIPerUserView *)height insertSubview:imageView2 belowSubview:textView6];
  }

  return height;
}

- (SSUIPerUserView)initWithImageNamed:(id)named
{
  namedCopy = named;
  v10.receiver = self;
  v10.super_class = SSUIPerUserView;
  v5 = [(SSUIPerUserView *)&v10 init];
  if (v5)
  {
    v6 = [UIImage imageNamed:namedCopy];
    [(SSUIPerUserView *)v5 setCurrentUserCursorImage:v6];
    imageView = [(SSUIPerUserView *)v5 imageView];
    [imageView setImage:v6];

    [(SSUIPerUserView *)v5 setFrame:0.0, 0.0, 25.0, 36.0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "init pointer image", v9, 2u);
    }
  }

  return v5;
}

- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)frame
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setFrameOriginWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SSUIPerUserView *)self frame];

  [(SSUIPerUserView *)self setFrame:x, y];
}

- (void)setWindowCoordinates:(CGPoint)coordinates
{
  if (!self->counter)
  {
    [(SSUIPerUserView *)self setFrameOriginWithPoint:coordinates.x, coordinates.y];
  }
}

- (void)viewDidMoveToWindow
{
  window = [(SSUIPerUserView *)self window];

  if (window)
  {
    window2 = [(SSUIPerUserView *)self window];
    v4 = [UIColor colorWithWhite:0.0 alpha:0.0];
    [window2 setBackgroundColor:v4];
  }
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(NSMutableParagraphStyle);
  v6 = +[NSParagraphStyle defaultParagraphStyle];
  [v5 setParagraphStyle:v6];

  [v5 setLineBreakMode:4];
  v7 = [NSMutableAttributedString alloc];
  v15[0] = NSForegroundColorAttributeName;
  v8 = [UIColor colorWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  v16[0] = v8;
  v15[1] = NSBackgroundColorAttributeName;
  v9 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v15[2] = NSParagraphStyleAttributeName;
  v16[1] = v9;
  v16[2] = v5;
  v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v11 = [v7 initWithString:nameCopy attributes:v10];

  textView = [(SSUIPerUserView *)self textView];
  textStorage = [textView textStorage];
  [textStorage setAttributedString:v11];

  textView2 = [(SSUIPerUserView *)self textView];
  [textView2 setTextAlignment:1];
}

@end