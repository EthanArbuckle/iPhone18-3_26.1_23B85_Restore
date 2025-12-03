@interface ADDisparityToDepthWorldPointsContainer
- (ADDisparityToDepthFitWorldPoint)getPointFromContainer:(int)container;
- (ADDisparityToDepthWorldPointsContainer)initWithParameters:(id)parameters;
- (unint64_t)size;
@end

@implementation ADDisparityToDepthWorldPointsContainer

- (ADDisparityToDepthFitWorldPoint)getPointFromContainer:(int)container
{
  v5 = v3;
  DisparityToDepth::WorldPointsContainer::vector(self->_worldPoints.__ptr_, &v10);
  v6 = v10;
  v7 = v11;
  if (v10 == v11)
  {
LABEL_5:
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = v10;
    while (1)
    {
      v9 = v8[1];
      *v5 = *v8;
      *(v5 + 16) = v9;
      if (*(v5 + 20) == container)
      {
        break;
      }

      v8 += 2;
      if (v8 == v7)
      {
        goto LABEL_5;
      }
    }
  }

  if (v6)
  {

    operator delete(v6);
  }

  return v6;
}

- (unint64_t)size
{
  DisparityToDepth::WorldPointsContainer::vector(self->_worldPoints.__ptr_, v5);
  v2 = v5[0];
  v3 = v5[1];
  if (v5[0])
  {
    operator delete(v5[0]);
  }

  return (v3 - v2) >> 5;
}

- (ADDisparityToDepthWorldPointsContainer)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6.receiver = self;
  v6.super_class = ADDisparityToDepthWorldPointsContainer;
  if ([(ADDisparityToDepthWorldPointsContainer *)&v6 init])
  {
    operator new();
  }

  return 0;
}

@end