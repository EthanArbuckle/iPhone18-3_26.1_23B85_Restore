@interface CarAlertButtonViewController
- (CGSize)preferredContentSize;
- (CarAlertButtonViewController)initWithTitle:(id)title image:(id)image;
- (void)_dismissAlertController;
- (void)_handleTouch:(id)touch;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
@end

@implementation CarAlertButtonViewController

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  [(CarAlertButtonViewController *)self completionHandler:animated];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C73CC8;
  v9 = v8[3] = &unk_101661760;
  v7.receiver = self;
  v7.super_class = CarAlertButtonViewController;
  v6 = v9;
  [(CarAlertButtonViewController *)&v7 dismissViewControllerAnimated:animatedCopy completion:v8];
}

- (void)_dismissAlertController
{
  [(CarAlertButtonView *)self->_contentView setHighlighted:0];

  [(CarAlertButtonViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_handleTouch:(id)touch
{
  if ([touch state] == 3)
  {

    [(CarAlertButtonViewController *)self _dismissAlertController];
  }
}

- (void)loadView
{
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTouch:"];
  [v4 setAllowedPressTypes:&off_1016ED748];
  [(CarAlertButtonView *)self->_contentView addGestureRecognizer:v4];
  v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleTouch:"];
  [v3 setAllowedTouchTypes:&off_1016ED760];
  [v3 setMinimumPressDuration:0.0];
  [v3 setCancelsTouchesInView:0];
  [(CarAlertButtonView *)self->_contentView addGestureRecognizer:v3];
  [(CarAlertButtonViewController *)self setView:self->_contentView];
}

- (CGSize)preferredContentSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CarAlertButtonViewController)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = CarAlertButtonViewController;
  v8 = [(CarAlertButtonViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[CarAlertButtonView alloc] initWithTitle:titleCopy image:imageCopy];
    contentView = v8->_contentView;
    v8->_contentView = v9;
  }

  return v8;
}

@end