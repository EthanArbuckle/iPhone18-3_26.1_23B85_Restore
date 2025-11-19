@interface ChunkedDigest
- (id)copyWithZone:(_NSZone *)a3;
- (void)setChunkDigests:(id)a3;
@end

@implementation ChunkedDigest

- (void)setChunkDigests:(id)a3
{
  self->_chunkDigests = [a3 lib_mapAndFilterUsingBlock:&stru_100382DC8];

  _objc_release_x1();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ChunkedDigest allocWithZone:](ChunkedDigest init];
  v6 = [(NSArray *)self->_chunkDigests copyWithZone:a3];
  chunkDigests = v5->_chunkDigests;
  v5->_chunkDigests = v6;

  v5->_chunkSize = self->_chunkSize;
  v5->_chunkType = self->_chunkType;
  return v5;
}

@end