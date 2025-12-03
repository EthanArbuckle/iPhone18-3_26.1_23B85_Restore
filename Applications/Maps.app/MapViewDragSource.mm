@interface MapViewDragSource
- (BOOL)_isValidLabelMarkerForDragging:(id)dragging;
- (BOOL)shouldBeginDragFromLocation:(CGPoint)location;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (void)dragAndDropPreviewDidUpdate:(id)update;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)reset;
- (void)updatePreviewDrag;
@end

@implementation MapViewDragSource

- (void)reset
{
  [(VKLabelMarker *)self->_labelMarker setIsDragged:0];
  labelMarker = self->_labelMarker;
  self->_labelMarker = 0;

  searchResult = self->_searchResult;
  self->_searchResult = 0;

  previewView = self->_previewView;
  self->_previewView = 0;

  liftPreview = self->_liftPreview;
  self->_liftPreview = 0;

  dragItem = self->_dragItem;
  self->_dragItem = 0;

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  v9 = +[MapsDragAndDropManager sharedManager];
  [v9 setDragSession:0];
}

- (void)updatePreviewDrag
{
  if (self->_currentDragSession && (previewView = self->_previewView) != 0)
  {
    renderPreviewImage = [(DragAndDropPreview *)previewView renderPreviewImage];
    [renderPreviewImage dragPreview];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100C5CC94;
    v13 = v12[3] = &unk_10164EFF0;
    currentDragSession = self->_currentDragSession;
    v6 = v13;
    items = [(UIDragSession *)currentDragSession items];
    firstObject = [items firstObject];
    [firstObject setPreviewProvider:v12];
  }

  else if (self->_liftPreview)
  {
    renderPreviewImage2 = [(DragAndDropPreview *)self->_previewView renderPreviewImage];
    view = [(UITargetedDragPreview *)self->_liftPreview view];
    image = [renderPreviewImage2 image];
    [view setImage:image];
  }
}

- (void)dragAndDropPreviewDidUpdate:(id)update
{
  item = [update item];
  dragItem = self->_dragItem;

  if (item == dragItem)
  {

    [(MapViewDragSource *)self updatePreviewDrag];
  }
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  localObject = [item localObject];
  mapView = self->_mapView;
  [localObject sourceCoordinate];
  [(MKMapView *)mapView convertCoordinate:self->_mapView toPointToView:?];
  v11 = v10;
  v13 = v12;
  sourceView = [localObject sourceView];
  [sourceView frame];
  v21.x = v11;
  v21.y = v13;
  LODWORD(mapView) = CGRectContainsPoint(v22, v21);

  if (mapView)
  {
    v15 = [UIDragPreviewTarget alloc];
    sourceView2 = [localObject sourceView];
    v17 = [v15 initWithContainer:sourceView2 center:{v11, v13}];

    v18 = [defaultCopy retargetedPreviewWithTarget:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  v8 = +[MapsDragAndDropManager sharedManager];
  [v8 setDragSession:0];

  [(VKLabelMarker *)self->_labelMarker setIsDragged:0];
  analyticsHelper = [(DragAndDropMapItem *)self->_dragItem analyticsHelper];
  if (operation == 2)
  {
    v9 = 17003;
  }

  else
  {
    if (operation)
    {
      goto LABEL_6;
    }

    v9 = 17002;
  }

  v10 = +[MKMapService sharedService];
  eventValue = [analyticsHelper eventValue];
  actionDetails = [analyticsHelper actionDetails];
  [v10 captureUserAction:v9 onTarget:1 eventValue:eventValue placeActionDetails:actionDetails];

LABEL_6:
  [(MapViewDragSource *)self reset];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  v6 = [MapsDragLocalContext alloc];
  mapView = [(MapViewDragSource *)self mapView];
  window = [mapView window];
  windowScene = [window windowScene];
  v10 = [(MapsDragLocalContext *)v6 initWithWindowScene:windowScene];
  [beginCopy setLocalContext:v10];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = beginCopy;
  v12 = beginCopy;

  v13 = +[MapsDragAndDropManager sharedManager];
  [v13 setDragSession:v12];

  [(MapViewDragSource *)self updatePreviewDrag];
  [(VKLabelMarker *)self->_labelMarker setIsDragged:1];
  analyticsHelper = [(DragAndDropMapItem *)self->_dragItem analyticsHelper];
  v14 = +[MKMapService sharedService];

  eventValue = [analyticsHelper eventValue];
  actionDetails = [analyticsHelper actionDetails];
  [v14 captureUserAction:17001 onTarget:1 eventValue:eventValue placeActionDetails:actionDetails];
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  previewView = self->_previewView;
  itemCopy = item;
  renderPreviewImage = [(DragAndDropPreview *)previewView renderPreviewImage];
  localObject = [itemCopy localObject];

  mapView = self->_mapView;
  [localObject sourceCoordinate];
  [(MKMapView *)mapView convertCoordinate:self->_mapView toPointToView:?];
  v12 = v11;
  v14 = v13;
  v15 = [UIDragPreviewTarget alloc];
  sourceView = [localObject sourceView];
  v17 = [v15 initWithContainer:sourceView center:{v12, v14}];

  v18 = [renderPreviewImage targetedDragPreviewWithTarget:v17];
  objc_storeStrong(&self->_liftPreview, v18);

  return v18;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  v8 = +[MapsDragAndDropManager sharedManager];
  canStartNewDrag = [v8 canStartNewDrag];

  if (canStartNewDrag && ([interactionCopy view], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(sessionCopy, "locationInView:", v10), v12 = v11, v14 = v13, v10, -[MapViewDragSource shouldBeginDragFromLocation:](self, "shouldBeginDragFromLocation:", v12, v14)) && ((p_labelMarker = &self->_labelMarker, self->_labelMarker) || (p_labelMarker = &self->_searchResult, self->_searchResult)))
  {
    v16 = [DragAndDropMapItem dragAndDropItemWithObject:?];
    dragItem = self->_dragItem;
    self->_dragItem = v16;

    [*p_labelMarker coordinate];
    v19 = v18;
    [*p_labelMarker coordinate];
    v21 = CLLocationCoordinate2DMake(v19, v20);
    [(DragAndDropMapItem *)self->_dragItem setSourceView:self->_mapView];
    [(DragAndDropMapItem *)self->_dragItem setSourceCoordinate:v21.latitude, v21.longitude];
    v22 = [DragAndDropPreview alloc];
    v23 = self->_dragItem;
    traitCollection = [(MKMapView *)self->_mapView traitCollection];
    v25 = [(DragAndDropPreview *)v22 initWithDragAndDropMapItem:v23 traitCollection:traitCollection];
    previewView = self->_previewView;
    self->_previewView = v25;

    [(DragAndDropPreview *)self->_previewView setContentUpdateDelegate:self];
    itemProvider = [(DragAndDropMapItem *)self->_dragItem itemProvider];
    v28 = [[UIDragItem alloc] initWithItemProvider:itemProvider];
    [v28 setLocalObject:self->_dragItem];
    v31 = v28;
    v29 = [NSArray arrayWithObjects:&v31 count:1];
  }

  else
  {
    v29 = &__NSArray0__struct;
  }

  return v29;
}

- (BOOL)_isValidLabelMarkerForDragging:(id)dragging
{
  draggingCopy = dragging;
  v4 = draggingCopy;
  if (!draggingCopy || ([draggingCopy isTransitLine] & 1) != 0 || (objc_msgSend(v4, "isFlyoverTour") & 1) != 0 || (objc_msgSend(v4, "isTrafficIncident") & 1) != 0 || (objc_msgSend(v4, "isOneWayArrow") & 1) != 0 || (objc_msgSend(v4, "isRouteAnnotation") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    featureType = [v4 featureType];
    if (featureType <= 6)
    {
      v5 = 0x68u >> featureType;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)shouldBeginDragFromLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = [(MKMapView *)self->_mapView hitTest:0 withEvent:?];
  v7 = [(MKMapView *)self->_mapView calloutViewContainsPoint:x, y];
  self->_draggingCallout = 0;
  if (!v7)
  {
    if (![v6 isDescendantOfView:self->_mapView])
    {
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    _selectedLabelMarker = [(MKMapView *)self->_mapView _annotationAtPoint:0 avoidCurrent:x, y];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      annotation = [(SearchResult *)_selectedLabelMarker annotation];

      _selectedLabelMarker = annotation;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      searchResult = self->_searchResult;
      self->_searchResult = _selectedLabelMarker;
    }

    else
    {
      v18 = [(MKMapView *)self->_mapView _labelMarkerAtPoint:x, y];
      if (![(MapViewDragSource *)self _isValidLabelMarkerForDragging:v18])
      {

LABEL_20:
        goto LABEL_21;
      }

      labelMarker = self->_labelMarker;
      self->_labelMarker = v18;
    }

    v17 = 1;
    goto LABEL_22;
  }

  selectedAnnotations = [(MKMapView *)self->_mapView selectedAnnotations];
  v9 = [selectedAnnotations count];

  if (v9 != 1)
  {
LABEL_13:
    _selectedLabelMarker = [(MKMapView *)self->_mapView _selectedLabelMarker];
    if ([(MapViewDragSource *)self _isValidLabelMarkerForDragging:_selectedLabelMarker])
    {
      v13 = self->_labelMarker;
      self->_labelMarker = _selectedLabelMarker;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  selectedAnnotations2 = [(MKMapView *)self->_mapView selectedAnnotations];
  firstObject = [selectedAnnotations2 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    annotation2 = [(SearchResult *)firstObject annotation];

    firstObject = annotation2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = self->_searchResult;
  self->_searchResult = firstObject;
LABEL_15:

  v17 = 1;
  self->_draggingCallout = 1;
LABEL_22:

  return v17;
}

@end