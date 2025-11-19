@interface _VOTPreviousTableOrCellectionViewMetadata
- (_NSRange)indexPath;
@end

@implementation _VOTPreviousTableOrCellectionViewMetadata

- (_NSRange)indexPath
{
  length = self->_indexPath.length;
  location = self->_indexPath.location;
  result.length = length;
  result.location = location;
  return result;
}

@end