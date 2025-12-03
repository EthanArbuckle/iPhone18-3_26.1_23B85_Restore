@interface CRLMovieItemAccessibility
- (BOOL)crlaxIsAudioOnly;
- (NSString)crlaxDurationDescription;
- (double)crlaxDuration;
- (id)crlaxTypeDescription;
@end

@implementation CRLMovieItemAccessibility

- (BOOL)crlaxIsAudioOnly
{
  crlaxTarget = [(CRLMovieItemAccessibility *)self crlaxTarget];
  isAudioOnly = [crlaxTarget isAudioOnly];

  return isAudioOnly;
}

- (double)crlaxDuration
{
  crlaxTarget = [(CRLMovieItemAccessibility *)self crlaxTarget];
  [crlaxTarget endTime];
  v5 = v4;
  crlaxTarget2 = [(CRLMovieItemAccessibility *)self crlaxTarget];
  [crlaxTarget2 startTime];
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
  crlaxIsAudioOnly = [(CRLMovieItemAccessibility *)self crlaxIsAudioOnly];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (crlaxIsAudioOnly)
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