@interface ChunkedDigest
- (id)copyWithZone:(_NSZone *)zone;
- (void)setChunkDigests:(id)digests;
@end

@implementation ChunkedDigest

- (void)setChunkDigests:(id)digests
{
  self->_chunkDigests = [digests lib_mapAndFilterUsingBlock:&stru_100382DC8];

  _objc_release_x1();
}

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