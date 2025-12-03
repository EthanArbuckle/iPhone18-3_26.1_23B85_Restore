@interface BKPaginationLayoutJob
- (BKPaginationLayoutJob)init;
- (CGSize)contentLayoutSize;
- (void)copyBatchState:(id)state;
- (void)copyState:(id)state;
@end

@implementation BKPaginationLayoutJob

- (BKPaginationLayoutJob)init
{
  v5.receiver = self;
  v5.super_class = BKPaginationLayoutJob;
  v2 = [(BKPaginationBatchJob *)&v5 init];
  if (v2)
  {
    v3 = +[BKPaginationLayoutJob jobName];
    [(BKJob *)v2 setName:v3];
  }

  return v2;
}

- (void)copyState:(id)state
{
  v14.receiver = self;
  v14.super_class = BKPaginationLayoutJob;
  stateCopy = state;
  [(BKPaginationBatchJob *)&v14 copyState:stateCopy];
  href = [stateCopy href];
  [(BKPaginationLayoutJob *)self setHref:href];

  v6 = [stateCopy url];
  [(BKPaginationLayoutJob *)self setUrl:v6];

  bookmarks = [stateCopy bookmarks];
  [(BKPaginationLayoutJob *)self setBookmarks:bookmarks];

  navigationInfoAnchors = [stateCopy navigationInfoAnchors];
  [(BKPaginationLayoutJob *)self setNavigationInfoAnchors:navigationInfoAnchors];

  landmarkAnchors = [stateCopy landmarkAnchors];
  [(BKPaginationLayoutJob *)self setLandmarkAnchors:landmarkAnchors];

  physicalPageAnchors = [stateCopy physicalPageAnchors];
  [(BKPaginationLayoutJob *)self setPhysicalPageAnchors:physicalPageAnchors];

  -[BKPaginationLayoutJob setDocumentOrdinal:](self, "setDocumentOrdinal:", [stateCopy documentOrdinal]);
  [stateCopy contentLayoutSize];
  [(BKPaginationLayoutJob *)self setContentLayoutSize:?];
  bookSnapshot = [stateCopy bookSnapshot];
  [(BKPaginationLayoutJob *)self setBookSnapshot:bookSnapshot];

  annotationsToUpgrade = [stateCopy annotationsToUpgrade];
  [(BKPaginationLayoutJob *)self setAnnotationsToUpgrade:annotationsToUpgrade];

  annotationCFIStrings = [stateCopy annotationCFIStrings];

  [(BKPaginationLayoutJob *)self setAnnotationCFIStrings:annotationCFIStrings];
}

- (void)copyBatchState:(id)state
{
  v10.receiver = self;
  v10.super_class = BKPaginationLayoutJob;
  stateCopy = state;
  [(BKPaginationBatchJob *)&v10 copyState:stateCopy];
  [(BKPaginationLayoutJob *)self setHref:0, v10.receiver, v10.super_class];
  [(BKPaginationLayoutJob *)self setUrl:0];
  [(BKPaginationLayoutJob *)self setBookmarks:0];
  [(BKPaginationLayoutJob *)self setNavigationInfoAnchors:0];
  [(BKPaginationLayoutJob *)self setLandmarkAnchors:0];
  [(BKPaginationLayoutJob *)self setPhysicalPageAnchors:0];
  [(BKPaginationLayoutJob *)self setDocumentOrdinal:0];
  configuration = [stateCopy configuration];
  [(BKPaginationBatchJob *)self setConfiguration:configuration];

  [stateCopy pageSize];
  v7 = v6;
  v9 = v8;

  [(BKPaginationLayoutJob *)self setContentLayoutSize:v7, v9];
  [(BKPaginationLayoutJob *)self setBookSnapshot:0];
  [(BKPaginationLayoutJob *)self setAnnotationsToUpgrade:0];
  [(BKPaginationLayoutJob *)self setAnnotationCFIStrings:0];
}

- (CGSize)contentLayoutSize
{
  width = self->_contentLayoutSize.width;
  height = self->_contentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end