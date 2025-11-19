@interface MailStatusProgressBarView
- (void)removeFromSuperview;
- (void)updateWithStatusInfo:(id)a3;
@end

@implementation MailStatusProgressBarView

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = MailStatusProgressBarView;
  [(MailStatusProgressBarView *)&v3 removeFromSuperview];
  self->_filler = 0.0;
  self->_countUsedUp = 0;
  self->_lastUsedTotal = 0;
  self->_lastUsedCount = 0;
  self->_lastProgress = 0.0;
}

- (void)updateWithStatusInfo:(id)a3
{
  v7 = a3;
  v4 = [v7 status];
  if (v4)
  {
    v5 = [[NSAttributedString alloc] initWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MailStatusLabelView *)self preferredPrefixWithStatusInfo:v7];
  [(MailStatusLabelView *)self setPrimaryLabelText:v5 prefix:v6 animated:0];

  [(MailStatusLabelView *)self setSecondaryLabelText:0];
}

@end