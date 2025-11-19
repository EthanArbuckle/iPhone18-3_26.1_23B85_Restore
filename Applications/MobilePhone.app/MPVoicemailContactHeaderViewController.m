@interface MPVoicemailContactHeaderViewController
- (id)generateDetailsView;
@end

@implementation MPVoicemailContactHeaderViewController

- (id)generateDetailsView
{
  v3 = [(PHRecentCallDetailsView *)[PHVoicemailCallDetailsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = [(MPVoicemailContactHeaderViewController *)self callOccurrence];
  [(PHVoicemailCallDetailsView *)v3 setCallOccurrence:v4];

  return v3;
}

@end