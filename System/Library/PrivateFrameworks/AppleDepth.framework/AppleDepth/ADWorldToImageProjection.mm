@interface ADWorldToImageProjection
- (uint64_t)initWithPose:(void *)pose calibration:;
- (void)dealloc;
- (void)projectPoints:(ADWorldToImageProjection *)self count:(SEL)count;
@end

@implementation ADWorldToImageProjection

- (void)dealloc
{
  projection = self->_projection;
  if (projection)
  {
    (*(projection->var0 + 1))(projection, a2);
  }

  v4.receiver = self;
  v4.super_class = ADWorldToImageProjection;
  [(ADWorldToImageProjection *)&v4 dealloc];
}

- (void)projectPoints:(ADWorldToImageProjection *)self count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v6 = v3;
  (*(self->_projection->var0 + 2))(__p);
  v7 = __p[0];
  if (v4)
  {
    v8 = __p[0];
    do
    {
      v9 = *v8++;
      *v5++ = v9;
      --v6;
    }

    while (v6);
  }

  else if (!__p[0])
  {
    return;
  }

  __p[1] = v7;
  operator delete(v7);
}

- (uint64_t)initWithPose:(void *)pose calibration:
{
  v8[4] = *MEMORY[0x277D85DE8];
  poseCopy = pose;
  self[1] = 0;
  v7.receiver = self;
  v7.super_class = ADWorldToImageProjection;
  if ([(ADWorldToImageProjection *)&v7 init])
  {
    v5 = poseCopy;
    v8[0] = &unk_285231478;
    v8[1] = v5;
    v8[3] = v8;
    DisparityToDepth::VioProjectionFactory::create();
  }

  return 0;
}

@end