@interface CRLScrollViewAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (void)_accessibilityScrollPageInDirection:(int)a3;
- (void)_setContentOffset:(CGPoint)a3 duration:(double)a4 animationCurve:(int)a5;
@end

@implementation CRLScrollViewAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)_accessibilityScrollPageInDirection:(int)a3
{
  v3 = *&a3;
  v5 = [(CRLScrollViewAccessibility *)self _crlaxAssistiveTechnologyPerformingScroll];
  [(CRLScrollViewAccessibility *)self _crlaxSetAssistiveTechnologyPerformingScroll:1];
  v6.receiver = self;
  v6.super_class = CRLScrollViewAccessibility;
  [(CRLScrollViewAccessibility *)&v6 _accessibilityScrollPageInDirection:v3];
  [(CRLScrollViewAccessibility *)self _crlaxSetAssistiveTechnologyPerformingScroll:v5];
}

- (void)_setContentOffset:(CGPoint)a3 duration:(double)a4 animationCurve:(int)a5
{
  v5 = *&a5;
  y = a3.y;
  x = a3.x;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v10 = [(CRLScrollViewAccessibility *)self _crlaxAssistiveTechnologyPerformingScroll];
    if (a4 > 0.0 && v10 != 0)
    {
      v12 = [(CRLScrollViewAccessibility *)self crlaxTarget];
      [v12 contentOffset];
      v14 = v13;
      v16 = v15;

      if (x != v14 || y != v16)
      {
        v17 = [(CRLScrollViewAccessibility *)self crlaxTarget];
        v18 = [v17 delegate];

        v19 = NSProtocolFromString(@"CRLScrollViewDelegate");
        if ([v18 conformsToProtocol:v19])
        {
          v20 = objc_opt_respondsToSelector();

          if (v20)
          {
            [v18 scrollView:self willAnimateToContentOffset:{x, y}];
          }
        }

        else
        {
        }
      }
    }
  }

  v21.receiver = self;
  v21.super_class = CRLScrollViewAccessibility;
  [(CRLScrollViewAccessibility *)&v21 _setContentOffset:v5 duration:x animationCurve:y, a4];
}

@end