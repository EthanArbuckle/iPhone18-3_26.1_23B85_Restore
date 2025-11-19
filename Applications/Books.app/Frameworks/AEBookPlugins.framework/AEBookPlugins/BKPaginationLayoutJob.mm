@interface BKPaginationLayoutJob
- (BKPaginationLayoutJob)init;
- (CGSize)contentLayoutSize;
- (void)copyBatchState:(id)a3;
- (void)copyState:(id)a3;
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

- (void)copyState:(id)a3
{
  v14.receiver = self;
  v14.super_class = BKPaginationLayoutJob;
  v4 = a3;
  [(BKPaginationBatchJob *)&v14 copyState:v4];
  v5 = [v4 href];
  [(BKPaginationLayoutJob *)self setHref:v5];

  v6 = [v4 url];
  [(BKPaginationLayoutJob *)self setUrl:v6];

  v7 = [v4 bookmarks];
  [(BKPaginationLayoutJob *)self setBookmarks:v7];

  v8 = [v4 navigationInfoAnchors];
  [(BKPaginationLayoutJob *)self setNavigationInfoAnchors:v8];

  v9 = [v4 landmarkAnchors];
  [(BKPaginationLayoutJob *)self setLandmarkAnchors:v9];

  v10 = [v4 physicalPageAnchors];
  [(BKPaginationLayoutJob *)self setPhysicalPageAnchors:v10];

  -[BKPaginationLayoutJob setDocumentOrdinal:](self, "setDocumentOrdinal:", [v4 documentOrdinal]);
  [v4 contentLayoutSize];
  [(BKPaginationLayoutJob *)self setContentLayoutSize:?];
  v11 = [v4 bookSnapshot];
  [(BKPaginationLayoutJob *)self setBookSnapshot:v11];

  v12 = [v4 annotationsToUpgrade];
  [(BKPaginationLayoutJob *)self setAnnotationsToUpgrade:v12];

  v13 = [v4 annotationCFIStrings];

  [(BKPaginationLayoutJob *)self setAnnotationCFIStrings:v13];
}

- (void)copyBatchState:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKPaginationLayoutJob;
  v4 = a3;
  [(BKPaginationBatchJob *)&v10 copyState:v4];
  [(BKPaginationLayoutJob *)self setHref:0, v10.receiver, v10.super_class];
  [(BKPaginationLayoutJob *)self setUrl:0];
  [(BKPaginationLayoutJob *)self setBookmarks:0];
  [(BKPaginationLayoutJob *)self setNavigationInfoAnchors:0];
  [(BKPaginationLayoutJob *)self setLandmarkAnchors:0];
  [(BKPaginationLayoutJob *)self setPhysicalPageAnchors:0];
  [(BKPaginationLayoutJob *)self setDocumentOrdinal:0];
  v5 = [v4 configuration];
  [(BKPaginationBatchJob *)self setConfiguration:v5];

  [v4 pageSize];
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