@interface PHVoicemailCallDetailsView
- (id)callOccurrences;
- (void)setCallOccurrence:(id)occurrence;
@end

@implementation PHVoicemailCallDetailsView

- (void)setCallOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if (self->_callOccurrence != occurrenceCopy)
  {
    v6 = occurrenceCopy;
    objc_storeStrong(&self->_callOccurrence, occurrence);
    [(PHRecentCallDetailsView *)self loadSubviews];
    occurrenceCopy = v6;
  }
}

- (id)callOccurrences
{
  callOccurrence = [(PHVoicemailCallDetailsView *)self callOccurrence];
  v5 = callOccurrence;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end