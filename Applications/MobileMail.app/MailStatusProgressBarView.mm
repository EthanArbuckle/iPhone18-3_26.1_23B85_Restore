@interface MailStatusProgressBarView
- (void)removeFromSuperview;
- (void)updateWithStatusInfo:(id)info;
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

- (void)updateWithStatusInfo:(id)info
{
  infoCopy = info;
  status = [infoCopy status];
  if (status)
  {
    v5 = [[NSAttributedString alloc] initWithString:status];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MailStatusLabelView *)self preferredPrefixWithStatusInfo:infoCopy];
  [(MailStatusLabelView *)self setPrimaryLabelText:v5 prefix:v6 animated:0];

  [(MailStatusLabelView *)self setSecondaryLabelText:0];
}

@end