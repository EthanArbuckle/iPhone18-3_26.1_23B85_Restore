@interface BEURLHandlerAssetInfo
- (BOOL)requestedRangeIsWholeAsset;
- (_BERequestedRange)requestedRange;
@end

@implementation BEURLHandlerAssetInfo

- (BOOL)requestedRangeIsWholeAsset
{
  if (self->_requestedRange.beginOffset)
  {
    return 0;
  }

  endOffset = self->_requestedRange.endOffset;
  if (!endOffset)
  {
    return 1;
  }

  return endOffset == -1 || endOffset == self->_fileSize;
}

- (_BERequestedRange)requestedRange
{
  endOffset = self->_requestedRange.endOffset;
  beginOffset = self->_requestedRange.beginOffset;
  result.endOffset = endOffset;
  result.beginOffset = beginOffset;
  return result;
}

@end