@interface MKMapViewLabelMarkerState
+ (id)stateForLabelMarker:(id)a3;
@end

@implementation MKMapViewLabelMarkerState

+ (id)stateForLabelMarker:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(MKMapViewLabelMarkerState);
    -[MKMapViewLabelMarkerState setVisible:](v4, "setVisible:", [v3 isVisible]);
    v5 = [v3 pickedLabelBalloonBehavior];

    [(MKMapViewLabelMarkerState *)v4 setBalloonBehavior:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end