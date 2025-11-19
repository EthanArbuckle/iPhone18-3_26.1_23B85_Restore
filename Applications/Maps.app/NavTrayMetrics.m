@interface NavTrayMetrics
+ (id)defaultMetrics;
- (CGSize)expandCollapseImageSize;
@end

@implementation NavTrayMetrics

- (CGSize)expandCollapseImageSize
{
  width = self->_expandCollapseImageSize.width;
  height = self->_expandCollapseImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)defaultMetrics
{
  if (qword_10195F5D8 != -1)
  {
    dispatch_once(&qword_10195F5D8, &stru_1016589D0);
  }

  v3 = qword_10195F5D0;

  return v3;
}

@end