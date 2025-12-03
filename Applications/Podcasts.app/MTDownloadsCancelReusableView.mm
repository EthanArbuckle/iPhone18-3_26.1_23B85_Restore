@interface MTDownloadsCancelReusableView
- (MTDownloadsCancelReusableView)initWithFrame:(CGRect)frame;
- (UIButton)cancelAllButton;
- (void)layoutSubviews;
@end

@implementation MTDownloadsCancelReusableView

- (MTDownloadsCancelReusableView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MTDownloadsCancelReusableView;
  v3 = [(MTDownloadsCancelReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    cancelAllButton = [(MTDownloadsCancelReusableView *)v3 cancelAllButton];
    [(MTDownloadsCancelReusableView *)v4 addSubview:cancelAllButton];
  }

  return v4;
}

- (UIButton)cancelAllButton
{
  cancelAllButton = self->_cancelAllButton;
  if (!cancelAllButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = self->_cancelAllButton;
    self->_cancelAllButton = v4;

    v6 = +[UIFont buttonFont];
    titleLabel = [(UIButton *)self->_cancelAllButton titleLabel];
    [titleLabel setFont:v6];

    [(UIButton *)self->_cancelAllButton setAutoresizingMask:45];
    v8 = self->_cancelAllButton;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Cancel Downloads" value:&stru_1004F3018 table:0];
    [(UIButton *)v8 setTitle:v10 forState:0];

    [(UIButton *)self->_cancelAllButton sizeToFit];
    cancelAllButton = self->_cancelAllButton;
  }

  return cancelAllButton;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MTDownloadsCancelReusableView;
  [(MTDownloadsCancelReusableView *)&v12 layoutSubviews];
  [(MTDownloadsCancelReusableView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  cancelAllButton = [(MTDownloadsCancelReusableView *)self cancelAllButton];
  [cancelAllButton setFrame:{v4, v6, v8, v10}];
}

@end