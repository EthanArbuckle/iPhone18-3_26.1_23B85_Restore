@interface CRLMovieItemAccessibility
- (BOOL)crlaxIsAudioOnly;
- (NSString)crlaxDurationDescription;
- (double)crlaxDuration;
- (id)crlaxTypeDescription;
@end

@implementation CRLMovieItemAccessibility

- (BOOL)crlaxIsAudioOnly
{
  v2 = [(CRLMovieItemAccessibility *)self crlaxTarget];
  v3 = [v2 isAudioOnly];

  return v3;
}

- (double)crlaxDuration
{
  v3 = [(CRLMovieItemAccessibility *)self crlaxTarget];
  [v3 endTime];
  v5 = v4;
  v6 = [(CRLMovieItemAccessibility *)self crlaxTarget];
  [v6 startTime];
  v8 = v5 - v7;

  return v8;
}

- (NSString)crlaxDurationDescription
{
  [(CRLMovieItemAccessibility *)self crlaxDuration];

  return CRLAccessibilityStringForTimeInterval(1, v2);
}

- (id)crlaxTypeDescription
{
  v2 = [(CRLMovieItemAccessibility *)self crlaxIsAudioOnly];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Audio";
  }

  else
  {
    v5 = @"Movie";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];

  return v6;
}

@end