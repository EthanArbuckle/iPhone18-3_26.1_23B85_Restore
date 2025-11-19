@interface PKInputPointBaseFilter
- ($FF38E1E694A259ECA75E65D4243A6BF6)currentFilteredPoint;
- (PKInputPointBaseFilter)init;
- (void)resetFilter;
@end

@implementation PKInputPointBaseFilter

- (PKInputPointBaseFilter)init
{
  v3.receiver = self;
  v3.super_class = PKInputPointBaseFilter;
  result = [(PKInputPointBaseFilter *)&v3 init];
  if (result)
  {
    *&result->_filteredPoint.hasEstimatedAltitudeAndAzimuth = 0u;
    *&result->_filteredPoint.estimatedActiveInputProperties = 0u;
    *&result->_filteredPoint.predicted = 0u;
    *&result->_filteredPoint.length = 0u;
    *&result->_filteredPoint.velocity = 0u;
    *&result->_filteredPoint.zPosition = 0u;
    *&result->_filteredPoint.var0.location.y = 0u;
    *&result->_filteredPoint.azimuth = 0u;
    *&result->_numInputPoints = 0u;
  }

  return result;
}

- (void)resetFilter
{
  *&self->_filteredPoint.hasEstimatedAltitudeAndAzimuth = 0u;
  *&self->_filteredPoint.estimatedActiveInputProperties = 0u;
  *&self->_filteredPoint.predicted = 0u;
  *&self->_filteredPoint.length = 0u;
  *&self->_filteredPoint.velocity = 0u;
  *&self->_filteredPoint.zPosition = 0u;
  *&self->_filteredPoint.var0.location.y = 0u;
  *&self->_filteredPoint.azimuth = 0u;
  *&self->_numInputPoints = 0u;
}

- ($FF38E1E694A259ECA75E65D4243A6BF6)currentFilteredPoint
{
  v3 = *&self->var12;
  var0 = self[1].var0;
  *&retstr->var11 = *&self->var14;
  *&retstr->var13 = var0;
  retstr->var15 = *&self[1].var1;
  v5 = *&self->var4;
  v6 = *&self->var8;
  *&retstr->var3 = *&self->var6;
  *&retstr->var5 = v6;
  *&retstr->var7 = *&self->var10;
  *&retstr->var9 = v3;
  retstr->var0 = *&self->var2;
  *&retstr->var1 = v5;
  return self;
}

@end