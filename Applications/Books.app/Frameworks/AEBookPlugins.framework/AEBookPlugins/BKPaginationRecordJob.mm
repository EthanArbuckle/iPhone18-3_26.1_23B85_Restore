@interface BKPaginationRecordJob
- (BKPaginationRecordJob)init;
- (CGSize)estimatedSize;
@end

@implementation BKPaginationRecordJob

- (BKPaginationRecordJob)init
{
  v5.receiver = self;
  v5.super_class = BKPaginationRecordJob;
  v2 = [(BKPaginationLayoutJob *)&v5 init];
  if (v2)
  {
    v3 = +[BKPaginationRecordJob jobName];
    [(BKJob *)v2 setName:v3];
  }

  return v2;
}

- (CGSize)estimatedSize
{
  width = self->_estimatedSize.width;
  height = self->_estimatedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end