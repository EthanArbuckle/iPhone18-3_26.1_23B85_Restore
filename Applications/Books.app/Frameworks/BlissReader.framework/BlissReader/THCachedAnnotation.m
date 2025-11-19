@interface THCachedAnnotation
- (BOOL)isEqual:(id)a3;
- (NSString)annotationSelectedText;
- (NSString)description;
- (THCachedAnnotation)annotationWithChapterTitle:(id)a3 physicalPageNumber:(id)a4;
- (THCachedAnnotation)initWithAnnotation:(id)a3 contentNode:(id)a4;
- (THCachedAnnotation)initWithCachedAnnotation:(id)a3 chapterTitle:(id)a4 physicalPageNumber:(id)a5;
- (_NSRange)annotationStorageRange;
- (id)initTemporaryWithStorage:(id)a3 range:(_NSRange)a4 contentNode:(id)a5 style:(int)a6 chapterTitle:(id)a7;
- (void)dealloc;
@end

@implementation THCachedAnnotation

- (THCachedAnnotation)initWithAnnotation:(id)a3 contentNode:(id)a4
{
  v9.receiver = self;
  v9.super_class = THCachedAnnotation;
  v6 = [(THCachedAnnotation *)&v9 init];
  if (v6)
  {
    v6->_annotationUuid = [objc_msgSend(a3 "annotationUuid")];
    v6->_annotationStyle = [a3 annotationStyle];
    v6->_annotationType = [a3 annotationType];
    v6->_annotationSelectedText = [objc_msgSend(a3 "annotationSelectedText")];
    v6->_annotationRepresentativeText = [objc_msgSend(a3 "annotationRepresentativeText")];
    v6->_annotationCreationDate = [objc_msgSend(a3 "annotationCreationDate")];
    v6->_annotationModificationDate = [objc_msgSend(a3 "annotationModificationDate")];
    v6->_annotationLocation = [objc_msgSend(a3 "annotationLocation")];
    v6->_annotationNote = [objc_msgSend(a3 "annotationNote")];
    v6->_annotationHasNote = [a3 annotationHasNote];
    v6->_annotationStorageRange.location = [a3 annotationStorageRange];
    v6->_annotationStorageRange.length = v7;
    v6->_annotationStorageUID = [objc_msgSend(a3 "plStorageUUID")];
    v6->_annotationContentNodeID = [objc_msgSend(a3 "annotationContentNodeID")];
    v6->_annotationAbsolutePhysicalPageIndex = [a3 absolutePhysicalPageIndex];
    v6->_annotationBookVersion = [objc_msgSend(a3 "annotationBookVersion")];
    v6->_physicalPageNumber = [objc_msgSend(a3 "physicalPageNumber")];
    v6->_contentNode = a4;
  }

  return v6;
}

- (THCachedAnnotation)initWithCachedAnnotation:(id)a3 chapterTitle:(id)a4 physicalPageNumber:(id)a5
{
  v11.receiver = self;
  v11.super_class = THCachedAnnotation;
  v8 = [(THCachedAnnotation *)&v11 init];
  if (v8)
  {
    v8->_annotationUuid = [objc_msgSend(a3 "annotationUuid")];
    v8->_annotationStyle = [a3 annotationStyle];
    v8->_annotationType = [a3 annotationType];
    v8->_annotationRepresentativeText = [objc_msgSend(a3 "annotationRepresentativeText")];
    v8->_annotationCreationDate = [objc_msgSend(a3 "annotationCreationDate")];
    v8->_annotationModificationDate = [objc_msgSend(a3 "annotationModificationDate")];
    v8->_annotationLocation = [objc_msgSend(a3 "annotationLocation")];
    v8->_annotationNote = [objc_msgSend(a3 "annotationNote")];
    v8->_annotationHasNote = [a3 annotationHasNote];
    v8->_annotationStorageRange.location = [a3 annotationStorageRange];
    v8->_annotationStorageRange.length = v9;
    v8->_annotationStorageUID = [objc_msgSend(a3 "annotationStorageUID")];
    v8->_annotationContentNodeID = [objc_msgSend(a3 "annotationContentNodeID")];
    v8->_annotationAbsolutePhysicalPageIndex = [a3 annotationAbsolutePhysicalPageIndex];
    v8->_annotationBookVersion = [objc_msgSend(a3 "annotationBookVersion")];
    v8->_physicalPageNumber = [a5 copy];
    v8->_chapterTitle = [a4 copy];
    v8->_contentNode = [a3 contentNode];
  }

  return v8;
}

- (id)initTemporaryWithStorage:(id)a3 range:(_NSRange)a4 contentNode:(id)a5 style:(int)a6 chapterTitle:(id)a7
{
  length = a4.length;
  location = a4.location;
  v17.receiver = self;
  v17.super_class = THCachedAnnotation;
  v13 = [(THCachedAnnotation *)&v17 init];
  if (v13)
  {
    v14 = [a5 annotationIDForInfo:a3];
    v13->_annotationStorageUID = [v14 copy];
    v13->_annotationContentNodeID = [objc_msgSend(a5 "nodeGUID")];
    v13->_annotationStorageRange.location = location;
    v13->_annotationStorageRange.length = length;
    v13->_annotationStyle = a6;
    v13->_annotationUuid = [[NSString alloc] initWithFormat:@"%@-temporary", v14];
    v13->_annotationLocation = [objc_msgSend(a5 cfiForRange:location storageUID:length includeFilename:objc_msgSend(a5 pedantic:{"nodeUniqueIDForInfo:", a3), 1, 0), "copy"}];
    v15 = objc_alloc_init(NSDate);
    v13->_annotationCreationDate = v15;
    v13->_annotationModificationDate = [(NSDate *)v15 copy];
    v13->_annotationRepresentativeText = [objc_msgSend(a3 stringEquivalentFromRange:{location, length), "copy"}];
    v13->_annotationAbsolutePhysicalPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13->_chapterTitle = [a7 copy];
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THCachedAnnotation;
  [(THCachedAnnotation *)&v3 dealloc];
}

- (THCachedAnnotation)annotationWithChapterTitle:(id)a3 physicalPageNumber:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithCachedAnnotation:self chapterTitle:a3 physicalPageNumber:a4];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  annotationUuid = self->_annotationUuid;
  v7 = [v5 annotationUuid];

  return [(NSString *)annotationUuid isEqual:v7];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(THCachedAnnotation *)self annotationUuid];
  v6 = [(THCachedAnnotation *)self annotationContentNodeID];
  v7 = [(THCachedAnnotation *)self annotationStorageUID];
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

  return [NSString stringWithFormat:@"<%@=%p uid=%@ contentNodeID=%@ storageID=%@ range=%@%@%@%@>", v4, self, v5, v6, v7, v8, v9, v10, v11];
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