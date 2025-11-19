@interface _HKElectrocardiogramVoltageMeasurementEnumerator
- (HKElectrocardiogramVoltageMeasurement)_createMeasurement;
- (_HKElectrocardiogramVoltageMeasurementEnumerator)initWithElectrocardiogram:(id)a3 leadIMicroVoltsBegin:(__wrap_iter<const float *>)a4 end:(__wrap_iter<const float *>)a5;
- (id).cxx_construct;
- (id)nextObject;
@end

@implementation _HKElectrocardiogramVoltageMeasurementEnumerator

- (_HKElectrocardiogramVoltageMeasurementEnumerator)initWithElectrocardiogram:(id)a3 leadIMicroVoltsBegin:(__wrap_iter<const float *>)a4 end:(__wrap_iter<const float *>)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = _HKElectrocardiogramVoltageMeasurementEnumerator;
  v10 = [(_HKElectrocardiogramVoltageMeasurementEnumerator *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_electrocardiogram, a3);
    v12 = [v9 samplingFrequency];
    v13 = +[HKUnit hertzUnit];
    [v12 doubleValueForUnit:v13];
    v11->_samplingHertz = v14;

    v15 = [HKUnit voltUnitWithMetricPrefix:3];
    microvoltsUnit = v11->_microvoltsUnit;
    v11->_microvoltsUnit = v15;

    v11->_current = a4;
    v11->_end = a5;
  }

  return v11;
}

- (id)nextObject
{
  if (self->_current.__i_ == self->_end.__i_)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_HKElectrocardiogramVoltageMeasurementEnumerator *)self _createMeasurement];
    ++self->_index;
    ++self->_current.__i_;
  }

  return v3;
}

- (HKElectrocardiogramVoltageMeasurement)_createMeasurement
{
  if (a1)
  {
    v1 = *(a1 + 32);
    v2 = *(a1 + 16);
    v3 = [HKQuantity quantityWithUnit:*(a1 + 24) doubleValue:**(a1 + 40)];
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