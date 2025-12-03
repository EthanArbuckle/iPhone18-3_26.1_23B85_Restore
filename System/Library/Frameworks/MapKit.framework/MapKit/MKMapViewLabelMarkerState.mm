@interface MKMapViewLabelMarkerState
+ (id)stateForLabelMarker:(id)marker;
@end

@implementation MKMapViewLabelMarkerState

+ (id)stateForLabelMarker:(id)marker
{
  if (marker)
  {
    markerCopy = marker;
    v4 = objc_alloc_init(MKMapViewLabelMarkerState);
    -[MKMapViewLabelMarkerState setVisible:](v4, "setVisible:", [markerCopy isVisible]);
    pickedLabelBalloonBehavior = [markerCopy pickedLabelBalloonBehavior];

    [(MKMapViewLabelMarkerState *)v4 setBalloonBehavior:pickedLabelBalloonBehavior];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end