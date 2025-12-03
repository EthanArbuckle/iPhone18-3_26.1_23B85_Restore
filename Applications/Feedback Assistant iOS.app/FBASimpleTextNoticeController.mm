@interface FBASimpleTextNoticeController
- (FBASimpleTextNoticeController)init;
- (UILabel)fbaNameLabel;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FBASimpleTextNoticeController

- (FBASimpleTextNoticeController)init
{
  v3.receiver = self;
  v3.super_class = FBASimpleTextNoticeController;
  return [(FBASimpleTextNoticeController *)&v3 init];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = FBASimpleTextNoticeController;
  [(FBASimpleTextNoticeController *)&v11 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(FBASimpleTextNoticeController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[UIColor labelColor];
  fbaNameLabel = [(FBASimpleTextNoticeController *)self fbaNameLabel];
  [fbaNameLabel setTextColor:v5];

  v7 = +[UIColor labelColor];
  titleLabel = [(FBASimpleTextNoticeController *)self titleLabel];
  [titleLabel setTextColor:v7];

  v9 = +[UIColor labelColor];
  subtitleLabel = [(FBASimpleTextNoticeController *)self subtitleLabel];
  [subtitleLabel setTextColor:v9];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = FBASimpleTextNoticeController;
  [(FBASimpleTextNoticeController *)&v14 viewDidLayoutSubviews];
  titleLabel = [(FBASimpleTextNoticeController *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(FBASimpleTextNoticeController *)self titleLabel];
    [titleLabel2 frame];
    v6 = v5;
    titleLabel3 = [(FBASimpleTextNoticeController *)self titleLabel];
    [titleLabel3 setPreferredMaxLayoutWidth:v6];
  }

  subtitleLabel = [(FBASimpleTextNoticeController *)self subtitleLabel];

  if (subtitleLabel)
  {
    subtitleLabel2 = [(FBASimpleTextNoticeController *)self subtitleLabel];
    [subtitleLabel2 frame];
    v11 = v10;
    subtitleLabel3 = [(FBASimpleTextNoticeController *)self subtitleLabel];
    [subtitleLabel3 setPreferredMaxLayoutWidth:v11];
  }

  view = [(FBASimpleTextNoticeController *)self view];
  [view layoutIfNeeded];
}

- (UILabel)fbaNameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_fbaNameLabel);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)subtitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabel);

  return WeakRetained;
}

@end