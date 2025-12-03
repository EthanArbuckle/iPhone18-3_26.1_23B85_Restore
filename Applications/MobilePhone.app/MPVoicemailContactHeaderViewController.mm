@interface MPVoicemailContactHeaderViewController
- (id)generateDetailsView;
@end

@implementation MPVoicemailContactHeaderViewController

- (id)generateDetailsView
{
  v3 = [(PHRecentCallDetailsView *)[PHVoicemailCallDetailsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  callOccurrence = [(MPVoicemailContactHeaderViewController *)self callOccurrence];
  [(PHVoicemailCallDetailsView *)v3 setCallOccurrence:callOccurrence];

  return v3;
}

@end