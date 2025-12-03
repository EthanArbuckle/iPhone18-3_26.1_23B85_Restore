@interface THInsertAnnotationAction
- (THInsertAnnotationAction)initWithVersion:(id)version bookVersion:(id)bookVersion assetID:(id)d creatorID:(id)iD contentNode:(id)node storage:(id)storage updateBlock:(id)block;
- (void)commitWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
- (void)dealloc;
- (void)redoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
- (void)undoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc;
@end

@implementation THInsertAnnotationAction

- (THInsertAnnotationAction)initWithVersion:(id)version bookVersion:(id)bookVersion assetID:(id)d creatorID:(id)iD contentNode:(id)node storage:(id)storage updateBlock:(id)block
{
  v17.receiver = self;
  v17.super_class = THInsertAnnotationAction;
  v15 = [(THInsertAnnotationAction *)&v17 init];
  if (v15)
  {
    v15->_version = version;
    v15->_bookVersion = bookVersion;
    v15->_assetID = d;
    v15->_creatorID = iD;
    v15->_contentNode = node;
    v15->_storage = storage;
    v15->_updateBlock = [block copy];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THInsertAnnotationAction;
  [(THInsertAnnotationAction *)&v3 dealloc];
}

- (void)commitWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
{
  v10 = [[AEAnnotation alloc] initWithContext:moc];
  [v10 setAnnotationUuid:{+[NSString UUID](NSString, "UUID")}];
  [v10 setAnnotationAssetID:self->_assetID];
  [v10 setAnnotationCreatorIdentifier:self->_creatorID];
  [v10 setAnnotationVersion:self->_version];
  [v10 setAnnotationBookVersion:self->_bookVersion];
  [v10 setAnnotationCreationDate:{+[NSDate date](NSDate, "date")}];
  [v10 setPlStorageUUID:{-[THModelContentNode annotationIDForInfo:](self->_contentNode, "annotationIDForInfo:", self->_storage)}];
  self->_annotationUuid = [objc_msgSend(v10 "annotationUuid")];
  if (self->_updateBlock)
  {
    v9 = [[THUpdateAnnotationAction alloc] initWithAnnotation:v10 contentNode:self->_contentNode updateBlock:self->_updateBlock];
    [(THUpdateAnnotationAction *)v9 commitWithChangeList:0 annotationHost:host moc:moc];
  }

  [v10 setAnnotationModificationDate:{objc_msgSend(v10, "annotationCreationDate")}];
  [list registerAnnotationAddedWithUUID:objc_msgSend(v10 toContentNodeWithID:{"annotationUuid"), objc_msgSend(v10, "annotationContentNodeID")}];
}

- (void)undoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
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

- (void)redoWithChangeList:(id)list annotationHost:(id)host moc:(id)moc
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

@end