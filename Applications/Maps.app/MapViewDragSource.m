@interface MapViewDragSource
- (BOOL)_isValidLabelMarkerForDragging:(id)a3;
- (BOOL)shouldBeginDragFromLocation:(CGPoint)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (void)dragAndDropPreviewDidUpdate:(id)a3;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
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
    v4 = [(DragAndDropPreview *)previewView renderPreviewImage];
    [v4 dragPreview];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100C5CC94;
    v13 = v12[3] = &unk_10164EFF0;
    currentDragSession = self->_currentDragSession;
    v6 = v13;
    v7 = [(UIDragSession *)currentDragSession items];
    v8 = [v7 firstObject];
    [v8 setPreviewProvider:v12];
  }

  else if (self->_liftPreview)
  {
    v11 = [(DragAndDropPreview *)self->_previewView renderPreviewImage];
    v9 = [(UITargetedDragPreview *)self->_liftPreview view];
    v10 = [v11 image];
    [v9 setImage:v10];
  }
}

- (void)dragAndDropPreviewDidUpdate:(id)a3
{
  v4 = [a3 item];
  dragItem = self->_dragItem;

  if (v4 == dragItem)
  {

    [(MapViewDragSource *)self updatePreviewDrag];
  }
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v7 = a5;
  v8 = [a4 localObject];
  mapView = self->_mapView;
  [v8 sourceCoordinate];
  [(MKMapView *)mapView convertCoordinate:self->_mapView toPointToView:?];
  v11 = v10;
  v13 = v12;
  v14 = [v8 sourceView];
  [v14 frame];
  v21.x = v11;
  v21.y = v13;
  LODWORD(mapView) = CGRectContainsPoint(v22, v21);

  if (mapView)
  {
    v15 = [UIDragPreviewTarget alloc];
    v16 = [v8 sourceView];
    v17 = [v15 initWithContainer:v16 center:{v11, v13}];

    v18 = [v7 retargetedPreviewWithTarget:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  v8 = +[MapsDragAndDropManager sharedManager];
  [v8 setDragSession:0];

  [(VKLabelMarker *)self->_labelMarker setIsDragged:0];
  v13 = [(DragAndDropMapItem *)self->_dragItem analyticsHelper];
  if (a5 == 2)
  {
    v9 = 17003;
  }

  else
  {
    if (a5)
    {
      goto LABEL_6;
    }

    v9 = 17002;
  }

  v10 = +[MKMapService sharedService];
  v11 = [v13 eventValue];
  v12 = [v13 actionDetails];
  [v10 captureUserAction:v9 onTarget:1 eventValue:v11 placeActionDetails:v12];

LABEL_6:
  [(MapViewDragSource *)self reset];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = a4;
  v6 = [MapsDragLocalContext alloc];
  v7 = [(MapViewDragSource *)self mapView];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [(MapsDragLocalContext *)v6 initWithWindowScene:v9];
  [v5 setLocalContext:v10];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = v5;
  v12 = v5;

  v13 = +[MapsDragAndDropManager sharedManager];
  [v13 setDragSession:v12];

  [(MapViewDragSource *)self updatePreviewDrag];
  [(VKLabelMarker *)self->_labelMarker setIsDragged:1];
  v17 = [(DragAndDropMapItem *)self->_dragItem analyticsHelper];
  v14 = +[MKMapService sharedService];

  v15 = [v17 eventValue];
  v16 = [v17 actionDetails];
  [v14 captureUserAction:17001 onTarget:1 eventValue:v15 placeActionDetails:v16];
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  previewView = self->_previewView;
  v7 = a4;
  v8 = [(DragAndDropPreview *)previewView renderPreviewImage];
  v9 = [v7 localObject];

  mapView = self->_mapView;
  [v9 sourceCoordinate];
  [(MKMapView *)mapView convertCoordinate:self->_mapView toPointToView:?];
  v12 = v11;
  v14 = v13;
  v15 = [UIDragPreviewTarget alloc];
  v16 = [v9 sourceView];
  v17 = [v15 initWithContainer:v16 center:{v12, v14}];

  v18 = [v8 targetedDragPreviewWithTarget:v17];
  objc_storeStrong(&self->_liftPreview, v18);

  return v18;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MapsDragAndDropManager sharedManager];
  v9 = [v8 canStartNewDrag];

  if (v9 && ([v6 view], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "locationInView:", v10), v12 = v11, v14 = v13, v10, -[MapViewDragSource shouldBeginDragFromLocation:](self, "shouldBeginDragFromLocation:", v12, v14)) && ((p_labelMarker = &self->_labelMarker, self->_labelMarker) || (p_labelMarker = &self->_searchResult, self->_searchResult)))
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
    v24 = [(MKMapView *)self->_mapView traitCollection];
    v25 = [(DragAndDropPreview *)v22 initWithDragAndDropMapItem:v23 traitCollection:v24];
    previewView = self->_previewView;
    self->_previewView = v25;

    [(DragAndDropPreview *)self->_previewView setContentUpdateDelegate:self];
    v27 = [(DragAndDropMapItem *)self->_dragItem itemProvider];
    v28 = [[UIDragItem alloc] initWithItemProvider:v27];
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

- (BOOL)_isValidLabelMarkerForDragging:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 isTransitLine] & 1) != 0 || (objc_msgSend(v4, "isFlyoverTour") & 1) != 0 || (objc_msgSend(v4, "isTrafficIncident") & 1) != 0 || (objc_msgSend(v4, "isOneWayArrow") & 1) != 0 || (objc_msgSend(v4, "isRouteAnnotation") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7 = [v4 featureType];
    if (v7 <= 6)
    {
      v5 = 0x68u >> v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)shouldBeginDragFromLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

    v14 = [(MKMapView *)self->_mapView _annotationAtPoint:0 avoidCurrent:x, y];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(SearchResult *)v14 annotation];

      v14 = v15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      searchResult = self->_searchResult;
      self->_searchResult = v14;
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

  v8 = [(MKMapView *)self->_mapView selectedAnnotations];
  v9 = [v8 count];

  if (v9 != 1)
  {
LABEL_13:
    v14 = [(MKMapView *)self->_mapView _selectedLabelMarker];
    if ([(MapViewDragSource *)self _isValidLabelMarkerForDragging:v14])
    {
      v13 = self->_labelMarker;
      self->_labelMarker = v14;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v10 = [(MKMapView *)self->_mapView selectedAnnotations];
  v11 = [v10 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(SearchResult *)v11 annotation];

    v11 = v12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = self->_searchResult;
  self->_searchResult = v11;
LABEL_15:

  v17 = 1;
  self->_draggingCallout = 1;
LABEL_22:

  return v17;
}

@end