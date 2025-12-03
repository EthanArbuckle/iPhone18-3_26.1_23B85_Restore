@interface NIDeviceCapabilities
- (NIDeviceCapabilities)initWithFineRangingSupport:(BOOL)support coarseRangingSupport:(BOOL)rangingSupport aoaSupport:(BOOL)aoaSupport extendedDistanceMeasurementSupport:(BOOL)measurementSupport syntheticApertureSupport:(BOOL)apertureSupport;
- (unsigned)toBitmap;
@end

@implementation NIDeviceCapabilities

- (NIDeviceCapabilities)initWithFineRangingSupport:(BOOL)support coarseRangingSupport:(BOOL)rangingSupport aoaSupport:(BOOL)aoaSupport extendedDistanceMeasurementSupport:(BOOL)measurementSupport syntheticApertureSupport:(BOOL)apertureSupport
{
  v13.receiver = self;
  v13.super_class = NIDeviceCapabilities;
  result = [(NIDeviceCapabilities *)&v13 init];
  if (result)
  {
    result->_supportsPreciseDistanceMeasurement = support;
    result->_supportsDirectionMeasurement = aoaSupport;
    result->_supportsCameraAssistance = apertureSupport;
    result->_supportsCoarseDistanceMeasurement = rangingSupport;
    result->_supportsDLTDOAMeasurement = support;
    result->_supportsExtendedDistanceMeasurement = measurementSupport;
  }

  return result;
}

- (unsigned)toBitmap
{
  if (self->_supportsCoarseDistanceMeasurement)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | self->_supportsPreciseDistanceMeasurement;
  if (self->_supportsDirectionMeasurement)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (self->_supportsCameraAssistance)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  if (self->_supportsExtendedDistanceMeasurement)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  return (v6 | v7) & 0x1F;
}

@end