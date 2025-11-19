@interface SSSBetaFeedbackActivity
- (SSSBetaFeedbackActivity)initWithBlock:(id)a3;
- (void)performActivity;
@end

@implementation SSSBetaFeedbackActivity

- (SSSBetaFeedbackActivity)initWithBlock:(id)a3
{
  v11.receiver = self;
  v11.super_class = SSSBetaFeedbackActivity;
  v3 = a3;
  v4 = [(SSSBetaFeedbackActivity *)&v11 init];
  v5 = [NSBundle mainBundle:v11.receiver];
  v6 = [v5 localizedStringForKey:@"SHARE_BETA_FEEDBACK_SHARESHEET" value:@"Share Beta Feedback" table:0];
  [(SSSBetaFeedbackActivity *)v4 setTitle:v6];

  [(SSSBetaFeedbackActivity *)v4 setBlock:v3];
  v7 = [UIImage systemImageNamed:@"square.and.pencil"];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
  v9 = [v7 imageWithSymbolConfiguration:v8];
  [(SSSBetaFeedbackActivity *)v4 setImage:v9];

  return v4;
}

- (void)performActivity
{
  v2 = [(SSSBetaFeedbackActivity *)self block];
  v2[2]();
}

@end