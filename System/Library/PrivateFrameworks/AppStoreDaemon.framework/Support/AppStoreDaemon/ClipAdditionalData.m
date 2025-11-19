@interface ClipAdditionalData
- (id)description;
@end

@implementation ClipAdditionalData

- (id)description
{
  archiveSize = self->_archiveSize;
  if (!archiveSize)
  {
    archiveSize = @"<null>";
  }

  v17[0] = @"archiveSize";
  v17[1] = @"uncompressedSize";
  uncompressedSize = self->_uncompressedSize;
  if (!uncompressedSize)
  {
    uncompressedSize = @"<null>";
  }

  v18[0] = archiveSize;
  v18[1] = uncompressedSize;
  v17[2] = @"digest";
  v15[0] = @"chunk";
  v15[1] = @"hashes";
  v16 = vbslq_s8(vceqzq_s64(*&self->_digestChunk), vdupq_n_s64(@"<null>"), *&self->_digestChunk);
  v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:v15 count:2];
  v17[3] = @"sinfs";
  v18[2] = v5;
  v12 = @"sinf";
  v13 = @"dpinfo";
  sinf = self->_sinf;
  if (!sinf)
  {
    sinf = @"<null>";
  }

  dpInfo = self->_dpInfo;
  if (!dpInfo)
  {
    dpInfo = @"<null>";
  }

  v14[0] = sinf;
  v14[1] = dpInfo;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v12 count:2];
  v18[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4, v12, v13];
  v10 = [v9 description];

  return v10;
}

@end