@interface ChunkedDigest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ChunkedDigest

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ChunkedDigest allocWithZone:](ChunkedDigest init];
  v6 = [(NSArray *)self->_chunkDigests copyWithZone:zone];
  chunkDigests = v5->_chunkDigests;
  v5->_chunkDigests = v6;

  v5->_chunkSize = self->_chunkSize;
  v5->_chunkType = self->_chunkType;
  return v5;
}

@end