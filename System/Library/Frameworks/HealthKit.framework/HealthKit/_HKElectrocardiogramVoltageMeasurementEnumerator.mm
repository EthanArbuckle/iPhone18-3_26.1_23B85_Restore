@interface _HKElectrocardiogramVoltageMeasurementEnumerator
- (HKElectrocardiogramVoltageMeasurement)_createMeasurement;
- (_HKElectrocardiogramVoltageMeasurementEnumerator)initWithElectrocardiogram:(id)electrocardiogram leadIMicroVoltsBegin:(__wrap_iter<const float *>)begin end:(__wrap_iter<const float *>)end;
- (id).cxx_construct;
- (id)nextObject;
@end

@implementation _HKElectrocardiogramVoltageMeasurementEnumerator

- (_HKElectrocardiogramVoltageMeasurementEnumerator)initWithElectrocardiogram:(id)electrocardiogram leadIMicroVoltsBegin:(__wrap_iter<const float *>)begin end:(__wrap_iter<const float *>)end
{
  electrocardiogramCopy = electrocardiogram;
  v18.receiver = self;
  v18.super_class = _HKElectrocardiogramVoltageMeasurementEnumerator;
  v10 = [(_HKElectrocardiogramVoltageMeasurementEnumerator *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_electrocardiogram, electrocardiogram);
    samplingFrequency = [electrocardiogramCopy samplingFrequency];
    v13 = +[HKUnit hertzUnit];
    [samplingFrequency doubleValueForUnit:v13];
    v11->_samplingHertz = v14;

    v15 = [HKUnit voltUnitWithMetricPrefix:3];
    microvoltsUnit = v11->_microvoltsUnit;
    v11->_microvoltsUnit = v15;

    v11->_current = begin;
    v11->_end = end;
  }

  return v11;
}

- (id)nextObject
{
  if (self->_current.__i_ == self->_end.__i_)
  {
    _createMeasurement = 0;
  }

  else
  {
    _createMeasurement = [(_HKElectrocardiogramVoltageMeasurementEnumerator *)self _createMeasurement];
    ++self->_index;
    ++self->_current.__i_;
  }

  return _createMeasurement;
}

- (HKElectrocardiogramVoltageMeasurement)_createMeasurement
{
  if (self)
  {
    v1 = *(self + 32);
    v2 = *(self + 16);
    v3 = [HKQuantity quantityWithUnit:*(self + 24) doubleValue:**(self + 40)];
    v4 = [[HKElectrocardiogramVoltageMeasurement alloc] initWithLeadIVoltage:v3 timeSinceSampleStart:v1 / v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end