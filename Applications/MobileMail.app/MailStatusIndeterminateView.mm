@interface MailStatusIndeterminateView
- (void)updateWithStatusInfo:(id)a3;
@end

@implementation MailStatusIndeterminateView

- (void)updateWithStatusInfo:(id)a3
{
  v7 = a3;
  v4 = [v7 status];
  v5 = [[NSAttributedString alloc] initWithString:v4];
  v6 = [(MailStatusLabelView *)self preferredPrefixWithStatusInfo:v7];
  [(MailStatusLabelView *)self setPrimaryLabelText:v5 prefix:v6 animated:0];
}

@end