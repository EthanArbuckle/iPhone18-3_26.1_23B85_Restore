@interface SSUIPerUserView
- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)a3;
- (SSUIPerUserView)init;
- (SSUIPerUserView)initWithFrame:(CGRect)a3;
- (SSUIPerUserView)initWithImageNamed:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setFrameOriginWithPoint:(CGPoint)a3;
- (void)setWindowCoordinates:(CGPoint)a3;
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

  v5 = [(SSUIPerUserView *)self userCursorImage];
  [v5 size];
  v7 = v6;
  v8 = [(SSUIPerUserView *)self userCursorImage];
  [v8 size];
  v10 = [(SSUIPerUserView *)self initWithFrame:0.0, 0.0, v7, v9];

  return v10;
}

- (SSUIPerUserView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "initWithFrame", buf, 2u);
  }

  v35.receiver = self;
  v35.super_class = SSUIPerUserView;
  v8 = [(SSUIPerUserView *)&v35 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = +[SSUICursorViewController serviceBundle];
    v10 = [UIImage imageNamed:@"red-circle" inBundle:v9 compatibleWithTraitCollection:0];
    [(SSUIPerUserView *)v8 setUserCursorImage:v10];

    v11 = [(SSUIPerUserView *)v8 userCursorImage];

    if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_74A4();
    }

    v12 = [[UIImageView alloc] initWithFrame:{(width + -48.0) * 0.5, 0.0, 48.0, 48.0}];
    [(SSUIPerUserView *)v8 setImageView:v12];

    v13 = [(SSUIPerUserView *)v8 userCursorImage];
    [(SSUIPerUserView *)v8 setCurrentUserCursorImage:v13];
    v14 = [(SSUIPerUserView *)v8 imageView];
    [v14 setImage:v13];

    v15 = dispatch_semaphore_create(0);
    blinker = v8->blinker;
    v8->blinker = v15;

    v17 = [[UITextView alloc] initWithFrame:{0.0, height + -24.0, width, 24.0}];
    [(SSUIPerUserView *)v8 setTextView:v17];

    v18 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v19 = [(SSUIPerUserView *)v8 textView];
    [v19 setBackgroundColor:v18];

    v20 = [UIColor colorWithRed:1.0 green:0.5 blue:1.0 alpha:1.0];
    v21 = [(SSUIPerUserView *)v8 textView];
    [v21 setTextColor:v20];

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

    v28 = [(SSUIPerUserView *)v8 textView];
    v29 = [v28 textStorage];
    [v29 setAttributedString:v27];

    v30 = [(SSUIPerUserView *)v8 textView];
    [v30 setTextAlignment:1];

    v31 = [(SSUIPerUserView *)v8 textView];
    [(SSUIPerUserView *)v8 addSubview:v31];

    v32 = [(SSUIPerUserView *)v8 imageView];
    v33 = [(SSUIPerUserView *)v8 textView];
    [(SSUIPerUserView *)v8 insertSubview:v32 belowSubview:v33];
  }

  return v8;
}

- (SSUIPerUserView)initWithImageNamed:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSUIPerUserView;
  v5 = [(SSUIPerUserView *)&v10 init];
  if (v5)
  {
    v6 = [UIImage imageNamed:v4];
    [(SSUIPerUserView *)v5 setCurrentUserCursorImage:v6];
    v7 = [(SSUIPerUserView *)v5 imageView];
    [v7 setImage:v6];

    [(SSUIPerUserView *)v5 setFrame:0.0, 0.0, 25.0, 36.0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "init pointer image", v9, 2u);
    }
  }

  return v5;
}

- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setFrameOriginWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SSUIPerUserView *)self frame];

  [(SSUIPerUserView *)self setFrame:x, y];
}

- (void)setWindowCoordinates:(CGPoint)a3
{
  if (!self->counter)
  {
    [(SSUIPerUserView *)self setFrameOriginWithPoint:a3.x, a3.y];
  }
}

- (void)viewDidMoveToWindow
{
  v3 = [(SSUIPerUserView *)self window];

  if (v3)
  {
    v5 = [(SSUIPerUserView *)self window];
    v4 = [UIColor colorWithWhite:0.0 alpha:0.0];
    [v5 setBackgroundColor:v4];
  }
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
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
  v11 = [v7 initWithString:v4 attributes:v10];

  v12 = [(SSUIPerUserView *)self textView];
  v13 = [v12 textStorage];
  [v13 setAttributedString:v11];

  v14 = [(SSUIPerUserView *)self textView];
  [v14 setTextAlignment:1];
}

@end