@interface CRLAVPlayerControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)crlaxTogglePlayback;
@end

@implementation CRLAVPlayerControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)crlaxTogglePlayback
{
  crlaxTarget = [(CRLAVPlayerControllerAccessibility *)self crlaxTarget];
  [crlaxTarget setPlaying:{-[CRLAVPlayerControllerAccessibility crlaxIsPlaying](self, "crlaxIsPlaying") ^ 1}];
}

@end