@interface THDeleteAnnotationAction
- (THDeleteAnnotationAction)initWithAnnotation:(id)annotation;
- (void)commitWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
- (void)dealloc;
- (void)redoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
- (void)undoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
@end

@implementation THDeleteAnnotationAction

- (THDeleteAnnotationAction)initWithAnnotation:(id)annotation
{
  v6.receiver = self;
  v6.super_class = THDeleteAnnotationAction;
  v4 = [(THDeleteAnnotationAction *)&v6 init];
  if (v4)
  {
    v4->_annotationUuid = [objc_msgSend(annotation "annotationUuid")];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THDeleteAnnotationAction;
  [(THDeleteAnnotationAction *)&v3 dealloc];
}

- (void)commitWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v6 = [host annotationForUUID:self->_annotationUuid includeDeleted:0 moc:moc];
  if (v6)
  {
    v7 = v6;
    [v6 setAnnotationDeleted:1];
    annotationUuid = [v7 annotationUuid];
    annotationContentNodeID = [v7 annotationContentNodeID];

    [list registerAnnotationDeletedWithUUID:annotationUuid fromContentNodeWithID:annotationContentNodeID];
  }
}

- (void)undoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v6 = [host annotationForUUID:self->_annotationUuid includeDeleted:1 moc:moc];
  if (v6)
  {
    v7 = v6;
    [v6 setAnnotationDeleted:0];
    annotationUuid = [v7 annotationUuid];
    annotationContentNodeID = [v7 annotationContentNodeID];

    [list registerAnnotationAddedWithUUID:annotationUuid toContentNodeWithID:annotationContentNodeID];
  }
}

- (void)redoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v6 = [host annotationForUUID:self->_annotationUuid includeDeleted:1 moc:moc];
  if (v6)
  {
    v7 = v6;
    [v6 setAnnotationDeleted:1];
    annotationUuid = [v7 annotationUuid];
    annotationContentNodeID = [v7 annotationContentNodeID];

    [list registerAnnotationDeletedWithUUID:annotationUuid fromContentNodeWithID:annotationContentNodeID];
  }
}

@end