@interface _CRLPKStrokeData
- (_CRLPKStrokeData)init;
- (_CRLPKStrokeData)initWithPoints:(CRLPKCompressedStrokePoint *)points count:(unint64_t)count copy:(BOOL)copy;
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

- (_CRLPKStrokeData)initWithPoints:(CRLPKCompressedStrokePoint *)points count:(unint64_t)count copy:(BOOL)copy
{
  copyCopy = copy;
  v13.receiver = self;
  v13.super_class = _CRLPKStrokeData;
  v8 = [(_CRLPKStrokeData *)&v13 init];
  v9 = v8;
  v8->_pointsCount = count;
  v8->_pointsMaxCount = count;
  if (copyCopy)
  {
    v8->_pointsOwned = 1;
    v10 = 24 * count;
    v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
    v9->_points = v11;
    memcpy(v11, points, v10);
  }

  else
  {
    v8->_pointsOwned = 0;
    v8->_points = points;
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