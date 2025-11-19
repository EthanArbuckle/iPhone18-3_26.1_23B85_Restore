@interface CRLAVPlayerControllerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (void)crlaxTogglePlayback;
@end

@implementation CRLAVPlayerControllerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)crlaxTogglePlayback
{
  v3 = [(CRLAVPlayerControllerAccessibility *)self crlaxTarget];
  [v3 setPlaying:{-[CRLAVPlayerControllerAccessibility crlaxIsPlaying](self, "crlaxIsPlaying") ^ 1}];
}

@end