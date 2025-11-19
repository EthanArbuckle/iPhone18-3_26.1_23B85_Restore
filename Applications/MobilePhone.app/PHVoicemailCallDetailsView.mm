@interface PHVoicemailCallDetailsView
- (id)callOccurrences;
- (void)setCallOccurrence:(id)a3;
@end

@implementation PHVoicemailCallDetailsView

- (void)setCallOccurrence:(id)a3
{
  v5 = a3;
  if (self->_callOccurrence != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_callOccurrence, a3);
    [(PHRecentCallDetailsView *)self loadSubviews];
    v5 = v6;
  }
}

- (id)callOccurrences
{
  v2 = [(PHVoicemailCallDetailsView *)self callOccurrence];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end