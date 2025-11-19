@interface MapGestureCardDismissalHelper
- (MapGestureCardDismissalHelper)initWithMapView:(id)a3;
- (MapGestureCardDismissalHelperDelegate)delegate;
- (double)insidenessForGesture:(id)a3;
- (void)continuousGestureDidBegin:(id)a3;
- (void)continuousGestureDidChange:(id)a3;
- (void)continuousGestureDidEnd:(id)a3;
- (void)dealloc;
- (void)dismissCard;
- (void)handleMapViewContinuousGesture:(id)a3;
- (void)handleMapViewDiscreteGesture:(id)a3;
@end

@implementation MapGestureCardDismissalHelper

- (MapGestureCardDismissalHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleMapViewDiscreteGesture:(id)a3
{
  v4 = [(MapGestureCardDismissalHelper *)self delegate];
  v5 = [v4 cardDismissalHelperShouldObserveGestures:self];

  if (v5)
  {

    [(MapGestureCardDismissalHelper *)self dismissCard];
  }
}

- (void)handleMapViewContinuousGesture:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 2)
  {
    [(MapGestureCardDismissalHelper *)self continuousGestureDidEnd:v7];
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    [(MapGestureCardDismissalHelper *)self continuousGestureDidChange:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(MapGestureCardDismissalHelper *)self continuousGestureDidBegin:v7];
LABEL_8:
    v6 = v7;
  }
}

- (double)insidenessForGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 numberOfTouches];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0.0;
    do
    {
      [v4 locationOfTouch:v7 inView:self->_mapView];
      dismissalRectTopEdge = self->_dismissalRectTopEdge;
      v11 = fmax(v8, v10 - dismissalRectTopEdge);
      if (v10 > dismissalRectTopEdge)
      {
        v8 = v11;
      }

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)dismissCard
{
  if ([(MapGestureCardDismissalHelper *)self hasContinuousGestureInProgress])
  {
    if (self->_didDismiss)
    {
      return;
    }

    self->_didDismiss = 1;
  }

  v3 = [(MapGestureCardDismissalHelper *)self delegate];
  [v3 requestDismissalWithCardDismissalHelper:self];
}

- (void)continuousGestureDidChange:(id)a3
{
  v4 = a3;
  if (self->_shouldIgnoreGestures)
  {
    goto LABEL_13;
  }

  v16 = v4;
  v5 = [(MKMapView *)self->_mapView _rotationGestureRecognizer];

  if (v5 == v16)
  {
LABEL_9:
    [(MapGestureCardDismissalHelper *)self dismissCard];
    goto LABEL_10;
  }

  v6 = [(MKMapView *)self->_mapView _oneHandedZoomGestureRecognizer];
  if (v6 == v16)
  {

LABEL_7:
    [v16 scale];
    if (v8 >= 0.910000026 && v8 <= 1.86000001)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = [(MKMapView *)self->_mapView _pinchGestureRecognizer];

  if (v7 == v16)
  {
    goto LABEL_7;
  }

LABEL_10:
  v9 = [NSValue valueWithNonretainedObject:v16];
  v10 = [(NSMutableDictionary *)self->_insidenessByGesture objectForKeyedSubscript:v9];
  [v10 floatValue];
  v12 = v11;

  [(MapGestureCardDismissalHelper *)self insidenessForGesture:v16];
  v14 = v13;
  v15 = [NSNumber numberWithDouble:?];
  [(NSMutableDictionary *)self->_insidenessByGesture setObject:v15 forKeyedSubscript:v9];

  if (v14 > v12)
  {
    [(MapGestureCardDismissalHelper *)self dismissCard];
  }

  v4 = v16;
LABEL_13:
}

- (void)continuousGestureDidEnd:(id)a3
{
  v4 = a3;
  if (!self->_shouldIgnoreGestures)
  {
    insidenessByGesture = self->_insidenessByGesture;
    v8 = v4;
    v6 = [NSValue valueWithNonretainedObject:v4];
    [(NSMutableDictionary *)insidenessByGesture removeObjectForKey:v6];

    v4 = v8;
  }

  v7 = self->_activeGestureCount - 1;
  self->_activeGestureCount = v7;
  if (!v7)
  {
    *&self->_shouldIgnoreGestures = 0;
    self->_dismissalRectTopEdge = 1.79769313e308;
  }
}

- (void)continuousGestureDidBegin:(id)a3
{
  v4 = a3;
  activeGestureCount = self->_activeGestureCount;
  self->_activeGestureCount = activeGestureCount + 1;
  if (!activeGestureCount)
  {
    v11 = v4;
    v6 = [(MapGestureCardDismissalHelper *)self delegate];
    self->_shouldIgnoreGestures = [v6 cardDismissalHelperShouldObserveGestures:self] ^ 1;
    [v6 dismissalRectTopEdgeForCardDismissalHelper:self coordinateSpace:self->_mapView];
    self->_dismissalRectTopEdge = v7 + -80.0;

    v4 = v11;
  }

  if (!self->_shouldIgnoreGestures)
  {
    v12 = v4;
    [(MapGestureCardDismissalHelper *)self insidenessForGesture:v4];
    v8 = [NSNumber numberWithDouble:?];
    insidenessByGesture = self->_insidenessByGesture;
    v10 = [NSValue valueWithNonretainedObject:v12];
    [(NSMutableDictionary *)insidenessByGesture setObject:v8 forKeyedSubscript:v10];

    v4 = v12;
  }
}

- (void)dealloc
{
  v3 = [(MKMapView *)self->_mapView _panningGestureRecognizer];
  [v3 removeTarget:self action:"handleMapViewContinuousGesture:"];

  v4 = [(MKMapView *)self->_mapView _pinchGestureRecognizer];
  [v4 removeTarget:self action:"handleMapViewContinuousGesture:"];

  v5 = [(MKMapView *)self->_mapView _oneHandedZoomGestureRecognizer];
  [v5 removeTarget:self action:"handleMapViewContinuousGesture:"];

  v6 = [(MKMapView *)self->_mapView _rotationGestureRecognizer];
  [v6 removeTarget:self action:"handleMapViewContinuousGesture:"];

  v7 = [(MKMapView *)self->_mapView _doubleTapGestureRecognizer];
  [v7 removeTarget:self action:"handleMapViewDiscreteGesture:"];

  v8 = [(MKMapView *)self->_mapView _twoFingerTapGestureRecognizer];
  [v8 removeTarget:self action:"handleMapViewDiscreteGesture:"];

  v9.receiver = self;
  v9.super_class = MapGestureCardDismissalHelper;
  [(MapGestureCardDismissalHelper *)&v9 dealloc];
}

- (MapGestureCardDismissalHelper)initWithMapView:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MapGestureCardDismissalHelper;
  v6 = [(MapGestureCardDismissalHelper *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, a3);
    v8 = +[NSMutableDictionary dictionary];
    insidenessByGesture = v7->_insidenessByGesture;
    v7->_insidenessByGesture = v8;

    v10 = [(MKMapView *)v7->_mapView _panningGestureRecognizer];
    [v10 addTarget:v7 action:"handleMapViewContinuousGesture:"];

    v11 = [(MKMapView *)v7->_mapView _pinchGestureRecognizer];
    [v11 addTarget:v7 action:"handleMapViewContinuousGesture:"];

    v12 = [(MKMapView *)v7->_mapView _oneHandedZoomGestureRecognizer];
    [v12 addTarget:v7 action:"handleMapViewContinuousGesture:"];

    v13 = [(MKMapView *)v7->_mapView _rotationGestureRecognizer];
    [v13 addTarget:v7 action:"handleMapViewContinuousGesture:"];

    v14 = [(MKMapView *)v7->_mapView _doubleTapGestureRecognizer];
    [v14 addTarget:v7 action:"handleMapViewDiscreteGesture:"];

    v15 = [(MKMapView *)v7->_mapView _twoFingerTapGestureRecognizer];
    [v15 addTarget:v7 action:"handleMapViewDiscreteGesture:"];

    v16 = v7;
  }

  return v7;
}

@end