@interface _CRLPKStrokeData
- (_CRLPKStrokeData)init;
- (_CRLPKStrokeData)initWithPoints:(CRLPKCompressedStrokePoint *)a3 count:(unint64_t)a4 copy:(BOOL)a5;
- (void)dealloc;
@end

@implementation _CRLPKStrokeData

- (_CRLPKStrokeData)init
{
  v4.receiver = self;
  v4.super_class = _CRLPKStrokeData;
  v2 = [(_CRLPKStrokeData *)&v4 init];
  v2[32] = 1;
  *(v2 + 8) = xmmword_1014661A0;
  *(v2 + 3) = malloc_type_malloc(0x1F40uLL, 0x100004077774924uLL);
  return v2;
}

- (_CRLPKStrokeData)initWithPoints:(CRLPKCompressedStrokePoint *)a3 count:(unint64_t)a4 copy:(BOOL)a5
{
  v5 = a5;
  v13.receiver = self;
  v13.super_class = _CRLPKStrokeData;
  v8 = [(_CRLPKStrokeData *)&v13 init];
  v9 = v8;
  v8->_pointsCount = a4;
  v8->_pointsMaxCount = a4;
  if (v5)
  {
    v8->_pointsOwned = 1;
    v10 = 24 * a4;
    v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
    v9->_points = v11;
    memcpy(v11, a3, v10);
  }

  else
  {
    v8->_pointsOwned = 0;
    v8->_points = a3;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_pointsOwned)
  {
    free(self->_points);
    self->_points = 0;
  }

  v3.receiver = self;
  v3.super_class = _CRLPKStrokeData;
  [(_CRLPKStrokeData *)&v3 dealloc];
}

@end