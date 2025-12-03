@interface THCachedAnnotation
- (BOOL)isEqual:(id)equal;
- (NSString)annotationSelectedText;
- (NSString)description;
- (THCachedAnnotation)annotationWithChapterTitle:(id)title physicalPageNumber:(id)number;
- (THCachedAnnotation)initWithAnnotation:(id)annotation contentNode:(id)node;
- (THCachedAnnotation)initWithCachedAnnotation:(id)annotation chapterTitle:(id)title physicalPageNumber:(id)number;
- (_NSRange)annotationStorageRange;
- (id)initTemporaryWithStorage:(id)storage range:(_NSRange)range contentNode:(id)node style:(int)style chapterTitle:(id)title;
- (void)dealloc;
@end

@implementation THCachedAnnotation

- (THCachedAnnotation)initWithAnnotation:(id)annotation contentNode:(id)node
{
  v9.receiver = self;
  v9.super_class = THCachedAnnotation;
  v6 = [(THCachedAnnotation *)&v9 init];
  if (v6)
  {
    v6->_annotationUuid = [objc_msgSend(annotation "annotationUuid")];
    v6->_annotationStyle = [annotation annotationStyle];
    v6->_annotationType = [annotation annotationType];
    v6->_annotationSelectedText = [objc_msgSend(annotation "annotationSelectedText")];
    v6->_annotationRepresentativeText = [objc_msgSend(annotation "annotationRepresentativeText")];
    v6->_annotationCreationDate = [objc_msgSend(annotation "annotationCreationDate")];
    v6->_annotationModificationDate = [objc_msgSend(annotation "annotationModificationDate")];
    v6->_annotationLocation = [objc_msgSend(annotation "annotationLocation")];
    v6->_annotationNote = [objc_msgSend(annotation "annotationNote")];
    v6->_annotationHasNote = [annotation annotationHasNote];
    v6->_annotationStorageRange.location = [annotation annotationStorageRange];
    v6->_annotationStorageRange.length = v7;
    v6->_annotationStorageUID = [objc_msgSend(annotation "plStorageUUID")];
    v6->_annotationContentNodeID = [objc_msgSend(annotation "annotationContentNodeID")];
    v6->_annotationAbsolutePhysicalPageIndex = [annotation absolutePhysicalPageIndex];
    v6->_annotationBookVersion = [objc_msgSend(annotation "annotationBookVersion")];
    v6->_physicalPageNumber = [objc_msgSend(annotation "physicalPageNumber")];
    v6->_contentNode = node;
  }

  return v6;
}

- (THCachedAnnotation)initWithCachedAnnotation:(id)annotation chapterTitle:(id)title physicalPageNumber:(id)number
{
  v11.receiver = self;
  v11.super_class = THCachedAnnotation;
  v8 = [(THCachedAnnotation *)&v11 init];
  if (v8)
  {
    v8->_annotationUuid = [objc_msgSend(annotation "annotationUuid")];
    v8->_annotationStyle = [annotation annotationStyle];
    v8->_annotationType = [annotation annotationType];
    v8->_annotationRepresentativeText = [objc_msgSend(annotation "annotationRepresentativeText")];
    v8->_annotationCreationDate = [objc_msgSend(annotation "annotationCreationDate")];
    v8->_annotationModificationDate = [objc_msgSend(annotation "annotationModificationDate")];
    v8->_annotationLocation = [objc_msgSend(annotation "annotationLocation")];
    v8->_annotationNote = [objc_msgSend(annotation "annotationNote")];
    v8->_annotationHasNote = [annotation annotationHasNote];
    v8->_annotationStorageRange.location = [annotation annotationStorageRange];
    v8->_annotationStorageRange.length = v9;
    v8->_annotationStorageUID = [objc_msgSend(annotation "annotationStorageUID")];
    v8->_annotationContentNodeID = [objc_msgSend(annotation "annotationContentNodeID")];
    v8->_annotationAbsolutePhysicalPageIndex = [annotation annotationAbsolutePhysicalPageIndex];
    v8->_annotationBookVersion = [objc_msgSend(annotation "annotationBookVersion")];
    v8->_physicalPageNumber = [number copy];
    v8->_chapterTitle = [title copy];
    v8->_contentNode = [annotation contentNode];
  }

  return v8;
}

- (id)initTemporaryWithStorage:(id)storage range:(_NSRange)range contentNode:(id)node style:(int)style chapterTitle:(id)title
{
  length = range.length;
  location = range.location;
  v17.receiver = self;
  v17.super_class = THCachedAnnotation;
  v13 = [(THCachedAnnotation *)&v17 init];
  if (v13)
  {
    v14 = [node annotationIDForInfo:storage];
    v13->_annotationStorageUID = [v14 copy];
    v13->_annotationContentNodeID = [objc_msgSend(node "nodeGUID")];
    v13->_annotationStorageRange.location = location;
    v13->_annotationStorageRange.length = length;
    v13->_annotationStyle = style;
    v13->_annotationUuid = [[NSString alloc] initWithFormat:@"%@-temporary", v14];
    v13->_annotationLocation = [objc_msgSend(node cfiForRange:location storageUID:length includeFilename:objc_msgSend(node pedantic:{"nodeUniqueIDForInfo:", storage), 1, 0), "copy"}];
    v15 = objc_alloc_init(NSDate);
    v13->_annotationCreationDate = v15;
    v13->_annotationModificationDate = [(NSDate *)v15 copy];
    v13->_annotationRepresentativeText = [objc_msgSend(storage stringEquivalentFromRange:{location, length), "copy"}];
    v13->_annotationAbsolutePhysicalPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_chapterTitle = [title copy];
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THCachedAnnotation;
  [(THCachedAnnotation *)&v3 dealloc];
}

- (THCachedAnnotation)annotationWithChapterTitle:(id)title physicalPageNumber:(id)number
{
  v4 = [objc_alloc(objc_opt_class()) initWithCachedAnnotation:self chapterTitle:title physicalPageNumber:number];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  annotationUuid = self->_annotationUuid;
  annotationUuid = [v5 annotationUuid];

  return [(NSString *)annotationUuid isEqual:annotationUuid];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  annotationUuid = [(THCachedAnnotation *)self annotationUuid];
  annotationContentNodeID = [(THCachedAnnotation *)self annotationContentNodeID];
  annotationStorageUID = [(THCachedAnnotation *)self annotationStorageUID];
  v13.location = [(THCachedAnnotation *)self annotationStorageRange];
  v8 = NSStringFromRange(v13);
  if ([(THCachedAnnotation *)self physicalPageNumber])
  {
    v9 = [NSString stringWithFormat:@" pageNumber=%@", [(THCachedAnnotation *)self physicalPageNumber]];
  }

  else
  {
    v9 = &stru_471858;
  }

  if ([(THCachedAnnotation *)self chapterTitle])
  {
    v10 = [NSString stringWithFormat:@" chapterTitle=%@", [(THCachedAnnotation *)self chapterTitle]];
  }

  else
  {
    v10 = &stru_471858;
  }

  if ([(THCachedAnnotation *)self annotationNote])
  {
    v11 = [NSString stringWithFormat:@" note=%@", [(THCachedAnnotation *)self annotationNote]];
  }

  else
  {
    v11 = &stru_471858;
  }

  return [NSString stringWithFormat:@"<%@=%p uid=%@ contentNodeID=%@ storageID=%@ range=%@%@%@%@>", v4, self, annotationUuid, annotationContentNodeID, annotationStorageUID, v8, v9, v10, v11];
}

- (NSString)annotationSelectedText
{
  if ([(NSString *)self->_annotationSelectedText length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return self->_annotationRepresentativeText;
}

- (_NSRange)annotationStorageRange
{
  length = self->_annotationStorageRange.length;
  location = self->_annotationStorageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end