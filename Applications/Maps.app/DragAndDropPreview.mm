@interface DragAndDropPreview
- ($873BFAB23BBB6E2F0B0288ED2F935688)presentationMapRectForMapItem:(id)item;
- (DragAndDropPreview)init;
- (DragAndDropPreview)initWithDragAndDropMapItem:(id)item traitCollection:(id)collection;
- (DragAndDropPreviewContentUpdateDelegate)contentUpdateDelegate;
- (DragAndDropPreviewImage)renderPreviewImage;
- (id)dragFeatures;
- (id)imageRepresentation;
- (id)mapItem;
- (void)createSnapshot;
- (void)dragAndDropAnchorViewCellDidUpdateContent:(id)content;
- (void)dragAndDropItem:(id)item didResolveMapItem:(id)mapItem;
- (void)updateWithSnapshot:(id)snapshot;
@end

@implementation DragAndDropPreview

- (DragAndDropPreviewContentUpdateDelegate)contentUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentUpdateDelegate);

  return WeakRetained;
}

- (void)dragAndDropAnchorViewCellDidUpdateContent:(id)content
{
  contentUpdateDelegate = [(DragAndDropPreview *)self contentUpdateDelegate];
  [contentUpdateDelegate dragAndDropPreviewDidUpdate:self];
}

- (void)dragAndDropItem:(id)item didResolveMapItem:(id)mapItem
{
  objc_storeStrong(&self->_resolvedMapItem, mapItem);
  mapItemCopy = mapItem;
  [(DragAndDropAnchorView *)self->_anchorView updateWithResolvedMapItem:mapItemCopy];

  [(DragAndDropPreview *)self createSnapshot];
}

- (DragAndDropPreviewImage)renderPreviewImage
{
  imageRepresentation = [(DragAndDropPreview *)self imageRepresentation];
  [imageRepresentation size];
  v5 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3, v4, 13.0];
  v6 = objc_alloc_init(DragAndDropPreviewImage);
  [(DragAndDropPreviewImage *)v6 setImage:imageRepresentation];
  [(DragAndDropPreviewImage *)v6 setVisiblePath:v5];
  [(DragAndDropPreviewImage *)v6 setCornerRadius:13.0];

  return v6;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)presentationMapRectForMapItem:(id)item
{
  [item _coordinate];
  MKMapRectMakeWithRadialDistance();
  v7 = [[GEOMapRegion alloc] initWithMapRect:{v3, v4, v5, v6}];
  GEOMapRectForMapRegion();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var1.var1 = v19;
  result.var1.var0 = v18;
  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- (id)imageRepresentation
{
  [(DragAndDropAnchorView *)self->_anchorView intrinsicContentSize];
  v4 = v3;
  if ([(UITraitCollection *)self->_traitCollection userInterfaceIdiom]== 5)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 104.0;
  }

  if ([(UITraitCollection *)self->_traitCollection userInterfaceIdiom]== 5)
  {
    v6 = 200.0;
  }

  else
  {
    v6 = 206.0;
  }

  [(DragAndDropAnchorView *)self->_anchorView setFrame:0.0, v5, v6, v4];
  [(DragAndDropAnchorView *)self->_anchorView layoutIfNeeded];
  v7 = [UIGraphicsImageRenderer alloc];
  v8 = [UIGraphicsImageRendererFormat formatForTraitCollection:self->_traitCollection];
  v9 = [v7 initWithSize:v8 format:{v6, v5 + v4}];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1010127E0;
  v12[3] = &unk_101661AB8;
  v12[5] = 0;
  v12[6] = 0;
  v12[4] = self;
  *&v12[7] = v6;
  *&v12[8] = v5 + v4;
  v12[9] = 0;
  *&v12[10] = v5;
  *&v12[11] = v6;
  *&v12[12] = v4;
  v12[13] = 0;
  v12[14] = 0;
  *&v12[15] = v6;
  *&v12[16] = v5;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (void)updateWithSnapshot:(id)snapshot
{
  objc_storeStrong(&self->_snapshotImage, snapshot);
  contentUpdateDelegate = [(DragAndDropPreview *)self contentUpdateDelegate];
  [contentUpdateDelegate dragAndDropPreviewDidUpdate:self];
}

- (void)createSnapshot
{
  mapItem = [(DragAndDropPreview *)self mapItem];
  if (mapItem && !self->_snapshotStarted)
  {
    v14 = mapItem;
    userInterfaceIdiom = [(UITraitCollection *)self->_traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != UIUserInterfaceIdiomMac)
    {
      self->_snapshotStarted = 1;
      kdebug_trace();
      v5 = objc_alloc_init(MKMapSnapshotOptions);
      [v5 setMapType:0];
      [v5 setSize:{206.0, 104.0}];
      mapItem2 = [(DragAndDropPreview *)self mapItem];
      [(DragAndDropPreview *)self presentationMapRectForMapItem:mapItem2];
      [v5 setMapRect:?];

      [v5 _setRendersInBackground:0];
      dragFeatures = [(DragAndDropPreview *)self dragFeatures];
      [v5 _setCustomFeatureAnnotations:dragFeatures];

      v8 = +[MKPointOfInterestFilter filterIncludingAllCategories];
      [v5 setPointOfInterestFilter:v8];

      [v5 _setSearchResultsType:1];
      [v5 _setUseSnapshotService:0];
      [v5 _setShowsNightMode:{-[UITraitCollection userInterfaceStyle](self->_traitCollection, "userInterfaceStyle") == 2}];
      v9 = [[MKMapSnapshotter alloc] initWithOptions:v5];
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INTERACTIVE, 0);

      v12 = dispatch_queue_create("dragPreviewRender", v11);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_101012C84;
      block[3] = &unk_101661A90;
      v16 = v9;
      selfCopy = self;
      v13 = v9;
      dispatch_async(v12, block);
    }
  }

  else
  {
  }
}

- (id)mapItem
{
  resolvedMapItem = self->_resolvedMapItem;
  if (resolvedMapItem)
  {
    originalMapItem = resolvedMapItem;
  }

  else
  {
    originalMapItem = [(DragAndDropMapItem *)self->_dragItem originalMapItem];
  }

  return originalMapItem;
}

- (id)dragFeatures
{
  mapItem = [(DragAndDropPreview *)self mapItem];
  v3 = [_DragCustomFeature customFeatureForMapItem:mapItem];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (DragAndDropPreview)initWithDragAndDropMapItem:(id)item traitCollection:(id)collection
{
  itemCopy = item;
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = DragAndDropPreview;
  v9 = [(DragAndDropPreview *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dragItem, item);
    [(DragAndDropMapItem *)v10->_dragItem setObserver:v10];
    objc_storeStrong(&v10->_traitCollection, collection);
    v11 = [[DragAndDropAnchorView alloc] initWithDragAndDropMapItem:itemCopy previewTraitCollection:collectionCopy];
    anchorView = v10->_anchorView;
    v10->_anchorView = v11;

    [(DragAndDropAnchorView *)v10->_anchorView setContentUpdateDelegate:v10];
    [(DragAndDropPreview *)v10 createSnapshot];
  }

  return v10;
}

- (DragAndDropPreview)init
{
  [(DragAndDropPreview *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end