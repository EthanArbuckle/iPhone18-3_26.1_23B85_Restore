@interface PHVoicemailNoContentViewController
- (void)loadView;
@end

@implementation PHVoicemailNoContentViewController

- (void)loadView
{
  v3 = [_UIContentUnavailableView alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"VOICEMAIL_OUT_OF_ORDER_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v9 = [v3 initWithFrame:v5 title:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"VOICEMAIL_OUT_OF_ORDER_SUBTITLE" value:&stru_10028F310 table:@"Voicemail"];
  [v9 setMessage:v7];

  [v9 setAutoresizingMask:18];
  v8 = +[UIColor systemBackgroundColor];
  [v9 setBackgroundColor:v8];

  [(PHVoicemailNoContentViewController *)self setView:v9];
}

@end