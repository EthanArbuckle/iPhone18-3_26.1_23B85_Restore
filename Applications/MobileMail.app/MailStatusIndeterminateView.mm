@interface MailStatusIndeterminateView
- (void)updateWithStatusInfo:(id)info;
@end

@implementation MailStatusIndeterminateView

- (void)updateWithStatusInfo:(id)info
{
  infoCopy = info;
  status = [infoCopy status];
  v5 = [[NSAttributedString alloc] initWithString:status];
  v6 = [(MailStatusLabelView *)self preferredPrefixWithStatusInfo:infoCopy];
  [(MailStatusLabelView *)self setPrimaryLabelText:v5 prefix:v6 animated:0];
}

@end