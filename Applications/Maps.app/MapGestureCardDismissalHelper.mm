@interface MapGestureCardDismissalHelper
- (MapGestureCardDismissalHelper)initWithMapView:(id)view;
- (MapGestureCardDismissalHelperDelegate)delegate;
- (double)insidenessForGesture:(id)gesture;
- (void)continuousGestureDidBegin:(id)begin;
- (void)continuousGestureDidChange:(id)change;
- (void)continuousGestureDidEnd:(id)end;
- (void)dealloc;
- (void)dismissCard;
- (void)handleMapViewContinuousGesture:(id)gesture;
- (void)handleMapViewDiscreteGesture:(id)gesture;
@end

@implementation MapGestureCardDismissalHelper

- (MapGestureCardDismissalHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleMapViewDiscreteGesture:(id)gesture
{
  delegate = [(MapGestureCardDismissalHelper *)self delegate];
  v5 = [delegate cardDismissalHelperShouldObserveGestures:self];

  if (v5)
  {

    [(MapGestureCardDismissalHelper *)self dismissCard];
  }
}

- (void)handleMapViewContinuousGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    [(MapGestureCardDismissalHelper *)self continuousGestureDidEnd:gestureCopy];
    goto LABEL_8;
  }

  if (state == 2)
  {
    [(MapGestureCardDismissalHelper *)self continuousGestureDidChange:gestureCopy];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = gestureCopy;
  if (v5)
  {
    [(MapGestureCardDismissalHelper *)self continuousGestureDidBegin:gestureCopy];
LABEL_8:
    v6 = gestureCopy;
  }
}

- (double)insidenessForGesture:(id)gesture
{
  gestureCopy = gesture;
  numberOfTouches = [gestureCopy numberOfTouches];
  if (numberOfTouches)
  {
    v6 = numberOfTouches;
    v7 = 0;
    v8 = 0.0;
    do
    {
      [gestureCopy locationOfTouch:v7 inView:self->_mapView];
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

  delegate = [(MapGestureCardDismissalHelper *)self delegate];
  [delegate requestDismissalWithCardDismissalHelper:self];
}

- (void)continuousGestureDidChange:(id)change
{
  changeCopy = change;
  if (self->_shouldIgnoreGestures)
  {
    goto LABEL_13;
  }

  v16 = changeCopy;
  _rotationGestureRecognizer = [(MKMapView *)self->_mapView _rotationGestureRecognizer];

  if (_rotationGestureRecognizer == v16)
  {
LABEL_9:
    [(MapGestureCardDismissalHelper *)self dismissCard];
    goto LABEL_10;
  }

  _oneHandedZoomGestureRecognizer = [(MKMapView *)self->_mapView _oneHandedZoomGestureRecognizer];
  if (_oneHandedZoomGestureRecognizer == v16)
  {

LABEL_7:
    [v16 scale];
    if (v8 >= 0.910000026 && v8 <= 1.86000001)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  _pinchGestureRecognizer = [(MKMapView *)self->_mapView _pinchGestureRecognizer];

  if (_pinchGestureRecognizer == v16)
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

  changeCopy = v16;
LABEL_13:
}

- (void)continuousGestureDidEnd:(id)end
{
  endCopy = end;
  if (!self->_shouldIgnoreGestures)
  {
    insidenessByGesture = self->_insidenessByGesture;
    v8 = endCopy;
    v6 = [NSValue valueWithNonretainedObject:endCopy];
    [(NSMutableDictionary *)insidenessByGesture removeObjectForKey:v6];

    endCopy = v8;
  }

  v7 = self->_activeGestureCount - 1;
  self->_activeGestureCount = v7;
  if (!v7)
  {
    *&self->_shouldIgnoreGestures = 0;
    self->_dismissalRectTopEdge = 1.79769313e308;
  }
}

- (void)continuousGestureDidBegin:(id)begin
{
  beginCopy = begin;
  activeGestureCount = self->_activeGestureCount;
  self->_activeGestureCount = activeGestureCount + 1;
  if (!activeGestureCount)
  {
    v11 = beginCopy;
    delegate = [(MapGestureCardDismissalHelper *)self delegate];
    self->_shouldIgnoreGestures = [delegate cardDismissalHelperShouldObserveGestures:self] ^ 1;
    [delegate dismissalRectTopEdgeForCardDismissalHelper:self coordinateSpace:self->_mapView];
    self->_dismissalRectTopEdge = v7 + -80.0;

    beginCopy = v11;
  }

  if (!self->_shouldIgnoreGestures)
  {
    v12 = beginCopy;
    [(MapGestureCardDismissalHelper *)self insidenessForGesture:beginCopy];
    v8 = [NSNumber numberWithDouble:?];
    insidenessByGesture = self->_insidenessByGesture;
    v10 = [NSValue valueWithNonretainedObject:v12];
    [(NSMutableDictionary *)insidenessByGesture setObject:v8 forKeyedSubscript:v10];

    beginCopy = v12;
  }
}

- (void)dealloc
{
  _panningGestureRecognizer = [(MKMapView *)self->_mapView _panningGestureRecognizer];
  [_panningGestureRecognizer removeTarget:self action:"handleMapViewContinuousGesture:"];

  _pinchGestureRecognizer = [(MKMapView *)self->_mapView _pinchGestureRecognizer];
  [_pinchGestureRecognizer removeTarget:self action:"handleMapViewContinuousGesture:"];

  _oneHandedZoomGestureRecognizer = [(MKMapView *)self->_mapView _oneHandedZoomGestureRecognizer];
  [_oneHandedZoomGestureRecognizer removeTarget:self action:"handleMapViewContinuousGesture:"];

  _rotationGestureRecognizer = [(MKMapView *)self->_mapView _rotationGestureRecognizer];
  [_rotationGestureRecognizer removeTarget:self action:"handleMapViewContinuousGesture:"];

  _doubleTapGestureRecognizer = [(MKMapView *)self->_mapView _doubleTapGestureRecognizer];
  [_doubleTapGestureRecognizer removeTarget:self action:"handleMapViewDiscreteGesture:"];

  _twoFingerTapGestureRecognizer = [(MKMapView *)self->_mapView _twoFingerTapGestureRecognizer];
  [_twoFingerTapGestureRecognizer removeTarget:self action:"handleMapViewDiscreteGesture:"];

  v9.receiver = self;
  v9.super_class = MapGestureCardDismissalHelper;
  [(MapGestureCardDismissalHelper *)&v9 dealloc];
}

- (MapGestureCardDismissalHelper)initWithMapView:(id)view
{
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = MapGestureCardDismissalHelper;
  v6 = [(MapGestureCardDismissalHelper *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, view);
    v8 = +[NSMutableDictionary dictionary];
    insidenessByGesture = v7->_insidenessByGesture;
    v7->_insidenessByGesture = v8;

    _panningGestureRecognizer = [(MKMapView *)v7->_mapView _panningGestureRecognizer];
    [_panningGestureRecognizer addTarget:v7 action:"handleMapViewContinuousGesture:"];

    _pinchGestureRecognizer = [(MKMapView *)v7->_mapView _pinchGestureRecognizer];
    [_pinchGestureRecognizer addTarget:v7 action:"handleMapViewContinuousGesture:"];

    _oneHandedZoomGestureRecognizer = [(MKMapView *)v7->_mapView _oneHandedZoomGestureRecognizer];
    [_oneHandedZoomGestureRecognizer addTarget:v7 action:"handleMapViewContinuousGesture:"];

    _rotationGestureRecognizer = [(MKMapView *)v7->_mapView _rotationGestureRecognizer];
    [_rotationGestureRecognizer addTarget:v7 action:"handleMapViewContinuousGesture:"];

    _doubleTapGestureRecognizer = [(MKMapView *)v7->_mapView _doubleTapGestureRecognizer];
    [_doubleTapGestureRecognizer addTarget:v7 action:"handleMapViewDiscreteGesture:"];

    _twoFingerTapGestureRecognizer = [(MKMapView *)v7->_mapView _twoFingerTapGestureRecognizer];
    [_twoFingerTapGestureRecognizer addTarget:v7 action:"handleMapViewDiscreteGesture:"];

    v16 = v7;
  }

  return v7;
}

@end