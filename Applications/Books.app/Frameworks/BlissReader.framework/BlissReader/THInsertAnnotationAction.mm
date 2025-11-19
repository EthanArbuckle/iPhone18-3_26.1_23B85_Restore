@interface THInsertAnnotationAction
- (THInsertAnnotationAction)initWithVersion:(id)a3 bookVersion:(id)a4 assetID:(id)a5 creatorID:(id)a6 contentNode:(id)a7 storage:(id)a8 updateBlock:(id)a9;
- (void)commitWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5;
- (void)dealloc;
- (void)redoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5;
- (void)undoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5;
@end

@implementation THInsertAnnotationAction

- (THInsertAnnotationAction)initWithVersion:(id)a3 bookVersion:(id)a4 assetID:(id)a5 creatorID:(id)a6 contentNode:(id)a7 storage:(id)a8 updateBlock:(id)a9
{
  v17.receiver = self;
  v17.super_class = THInsertAnnotationAction;
  v15 = [(THInsertAnnotationAction *)&v17 init];
  if (v15)
  {
    v15->_version = a3;
    v15->_bookVersion = a4;
    v15->_assetID = a5;
    v15->_creatorID = a6;
    v15->_contentNode = a7;
    v15->_storage = a8;
    v15->_updateBlock = [a9 copy];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THInsertAnnotationAction;
  [(THInsertAnnotationAction *)&v3 dealloc];
}

- (void)commitWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5
{
  v10 = [[AEAnnotation alloc] initWithContext:a5];
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
    [(THUpdateAnnotationAction *)v9 commitWithChangeList:0 annotationHost:a4 moc:a5];
  }

  [v10 setAnnotationModificationDate:{objc_msgSend(v10, "annotationCreationDate")}];
  [a3 registerAnnotationAddedWithUUID:objc_msgSend(v10 toContentNodeWithID:{"annotationUuid"), objc_msgSend(v10, "annotationContentNodeID")}];
}

- (void)undoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5
{
  v6 = [a4 annotationForUUID:self->_annotationUuid includeDeleted:1 moc:a5];
  if (v6)
  {
    v7 = v6;
    [v6 setAnnotationDeleted:1];
    v8 = [v7 annotationUuid];
    v9 = [v7 annotationContentNodeID];

    [a3 registerAnnotationDeletedWithUUID:v8 fromContentNodeWithID:v9];
  }
}

- (void)redoWithChangeList:(id)a3 annotationHost:(id)a4 moc:(id)a5
{
  v6 = [a4 annotationForUUID:self->_annotationUuid includeDeleted:1 moc:a5];
  if (v6)
  {
    v7 = v6;
    [v6 setAnnotationDeleted:0];
    v8 = [v7 annotationUuid];
    v9 = [v7 annotationContentNodeID];

    [a3 registerAnnotationAddedWithUUID:v8 toContentNodeWithID:v9];
  }
}

@end