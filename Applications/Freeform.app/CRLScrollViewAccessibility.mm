@interface CRLScrollViewAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)_accessibilityScrollPageInDirection:(int)direction;
- (void)_setContentOffset:(CGPoint)offset duration:(double)duration animationCurve:(int)curve;
@end

@implementation CRLScrollViewAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)_accessibilityScrollPageInDirection:(int)direction
{
  v3 = *&direction;
  _crlaxAssistiveTechnologyPerformingScroll = [(CRLScrollViewAccessibility *)self _crlaxAssistiveTechnologyPerformingScroll];
  [(CRLScrollViewAccessibility *)self _crlaxSetAssistiveTechnologyPerformingScroll:1];
  v6.receiver = self;
  v6.super_class = CRLScrollViewAccessibility;
  [(CRLScrollViewAccessibility *)&v6 _accessibilityScrollPageInDirection:v3];
  [(CRLScrollViewAccessibility *)self _crlaxSetAssistiveTechnologyPerformingScroll:_crlaxAssistiveTechnologyPerformingScroll];
}

- (void)_setContentOffset:(CGPoint)offset duration:(double)duration animationCurve:(int)curve
{
  v5 = *&curve;
  y = offset.y;
  x = offset.x;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    _crlaxAssistiveTechnologyPerformingScroll = [(CRLScrollViewAccessibility *)self _crlaxAssistiveTechnologyPerformingScroll];
    if (duration > 0.0 && _crlaxAssistiveTechnologyPerformingScroll != 0)
    {
      crlaxTarget = [(CRLScrollViewAccessibility *)self crlaxTarget];
      [crlaxTarget contentOffset];
      v14 = v13;
      v16 = v15;

      if (x != v14 || y != v16)
      {
        crlaxTarget2 = [(CRLScrollViewAccessibility *)self crlaxTarget];
        delegate = [crlaxTarget2 delegate];

        v19 = NSProtocolFromString(@"CRLScrollViewDelegate");
        if ([delegate conformsToProtocol:v19])
        {
          v20 = objc_opt_respondsToSelector();

          if (v20)
          {
            [delegate scrollView:self willAnimateToContentOffset:{x, y}];
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
  [(CRLScrollViewAccessibility *)&v21 _setContentOffset:v5 duration:x animationCurve:y, duration];
}

@end