@interface _SSSCropInfoContainer
- (SSSCropInfo)cropInfo;
- (void)setCropInfo:(SSSCropInfo *)a3;
@end

@implementation _SSSCropInfoContainer

- (SSSCropInfo)cropInfo
{
  v3 = *&self->currentRect.origin.y;
  retstr->totalSize = *&self->totalSize.height;
  retstr->currentRect.origin = v3;
  retstr->currentRect.size = *&self->currentRect.size.height;
  return self;
}

- (void)setCropInfo:(SSSCropInfo *)a3
{
  totalSize = a3->totalSize;
  origin = a3->currentRect.origin;
  self->_cropInfo.currentRect.size = a3->currentRect.size;
  self->_cropInfo.currentRect.origin = origin;
  self->_cropInfo.totalSize = totalSize;
}

@end