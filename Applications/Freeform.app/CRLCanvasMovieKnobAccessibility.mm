@interface CRLCanvasMovieKnobAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsPlaying;
- (CRLMovieRepAccessibility)crlaxParentRepForKnob;
- (id)crlaxLabel;
- (id)crlaxUserInputLabels;
@end

@implementation CRLCanvasMovieKnobAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLMovieRepAccessibility)crlaxParentRepForKnob
{
  v8 = 0;
  v7.receiver = self;
  v7.super_class = CRLCanvasMovieKnobAccessibility;
  crlaxParentRepForKnob = [(CRLCanvasKnobAccessibility *)&v7 crlaxParentRepForKnob];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxParentRepForKnob, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (id)crlaxLabel
{
  crlaxIsPlaying = [(CRLCanvasMovieKnobAccessibility *)self crlaxIsPlaying];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (crlaxIsPlaying)
  {
    v5 = @"Pause movie";
  }

  else
  {
    v5 = @"Play movie";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];

  return v6;
}

- (id)crlaxUserInputLabels
{
  crlaxIsPlaying = [(CRLCanvasMovieKnobAccessibility *)self crlaxIsPlaying];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (crlaxIsPlaying)
  {
    v5 = @"Pause";
  }

  else
  {
    v5 = @"Play";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (BOOL)crlaxIsPlaying
{
  crlaxParentRepForKnob = [(CRLCanvasMovieKnobAccessibility *)self crlaxParentRepForKnob];
  crlaxTarget = [crlaxParentRepForKnob crlaxTarget];
  isPlaying = [crlaxTarget isPlaying];

  return isPlaying;
}

@end