@interface ARCoachingControlPointContainer
- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints;
- (id).cxx_construct;
- (void)overwriteWithControlPoints:(id *)a3 numControlPoints:(int)a4;
@end

@implementation ARCoachingControlPointContainer

- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints
{
  if (self->_controlPoints.__begin_ == self->_controlPoints.__end_)
  {
    return 0;
  }

  else
  {
    return self->_controlPoints.__begin_;
  }
}

- (void)overwriteWithControlPoints:(id *)a3 numControlPoints:(int)a4
{
  begin = self->_controlPoints.__begin_;
  p_controlPoints = &self->_controlPoints;
  p_controlPoints->__end_ = begin;
  std::vector<ARCoachingControlPoint>::__assign_with_size[abi:ne200100]<ARCoachingControlPoint*,ARCoachingControlPoint*>(p_controlPoints, a3, &a3[8 * a4], a4);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end