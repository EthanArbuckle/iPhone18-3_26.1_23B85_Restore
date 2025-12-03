@interface CVAPRDevice
+ (id)classes;
+ (id)withData:(id)data;
- (CVAPRDevice)init;
- (CVAPRDevice)initWithCoder:(id)coder;
- (void)addTimes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVAPRDevice

+ (id)classes
{
  if (qword_27E3C8618 == -1)
  {
    v3 = qword_27E3C8610;
  }

  else
  {
    sub_24019CC18();
    v3 = qword_27E3C8610;
  }

  return v3;
}

- (void)addTimes
{
  mach_get_times();
  if (dword_27E3C8624)
  {
    v3 = *&qword_27E3C8628;
  }

  else
  {
    mach_timebase_info(&dword_27E3C8620);
    LODWORD(v4) = dword_27E3C8620;
    LODWORD(v5) = dword_27E3C8624;
    v3 = v4 / v5 / 1000000000.0;
    qword_27E3C8628 = *&v3;
  }

  self->_mach_continuous_time = v3 * 0;
  self->_utc_time = 0 / 1000000000.0 + 0;
  self->_timestamp = CACurrentMediaTime();
}

- (CVAPRDevice)init
{
  v10.receiver = self;
  v10.super_class = CVAPRDevice;
  v2 = [(CVAPRDevice *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    range = v2->_range;
    v2->_range = v3;

    v5 = objc_opt_new();
    azimuth = v2->_azimuth;
    v2->_azimuth = v5;

    v7 = objc_opt_new();
    elevation = v2->_elevation;
    v2->_elevation = v7;

    [(CVAPRDevice *)v2 addTimes];
  }

  return v2;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVAPRDevice classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CVAPRDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVAPRDevice *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_referenceFrame = [coderCopy decodeIntegerForKey:@"reff"];
    [coderCopy decodeDoubleForKey:@"rngm"];
    [(CVAPRRangeMeasurement *)v5->_range setMeasurement:?];
    [coderCopy decodeDoubleForKey:@"rngu"];
    [(CVAPRRangeMeasurement *)v5->_range setUncertainty:?];
    [coderCopy decodeDoubleForKey:@"azmm"];
    [(CVAPRAngleMeasurement *)v5->_azimuth setMeasurement:?];
    [coderCopy decodeDoubleForKey:@"azmu"];
    [(CVAPRAngleMeasurement *)v5->_azimuth setUncertainty:?];
    [coderCopy decodeDoubleForKey:@"elvm"];
    [(CVAPRAngleMeasurement *)v5->_elevation setMeasurement:?];
    [coderCopy decodeDoubleForKey:@"elvu"];
    [(CVAPRAngleMeasurement *)v5->_elevation setUncertainty:?];
    v7 = [coderCopy decodeObjectForKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [coderCopy decodeObjectForKey:@"sid"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v9;

    v5->_measurementNumber = [coderCopy decodeIntegerForKey:@"mesn"];
    [coderCopy decodeDoubleForKey:@"mest"];
    v5->_measurementTimestamp = v11;
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v12;
    [coderCopy decodeDoubleForKey:@"mct"];
    v5->_mach_continuous_time = v13;
    [coderCopy decodeDoubleForKey:@"ut"];
    v5->_utc_time = v14;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInteger:self->_referenceFrame forKey:@"reff"];
  [(CVAPRRangeMeasurement *)self->_range measurement];
  [coderCopy encodeDouble:@"rngm" forKey:?];
  [(CVAPRRangeMeasurement *)self->_range uncertainty];
  [coderCopy encodeDouble:@"rngu" forKey:?];
  [(CVAPRAngleMeasurement *)self->_azimuth measurement];
  [coderCopy encodeDouble:@"azmm" forKey:?];
  [(CVAPRAngleMeasurement *)self->_azimuth uncertainty];
  [coderCopy encodeDouble:@"azmu" forKey:?];
  [(CVAPRAngleMeasurement *)self->_elevation measurement];
  [coderCopy encodeDouble:@"elvm" forKey:?];
  [(CVAPRAngleMeasurement *)self->_elevation uncertainty];
  [coderCopy encodeDouble:@"elvu" forKey:?];
  [coderCopy encodeObject:self->_UUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_sessionID forKey:@"sid"];
  [coderCopy encodeInteger:self->_measurementNumber forKey:@"mesn"];
  [coderCopy encodeDouble:@"mest" forKey:self->_measurementTimestamp];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeDouble:@"mct" forKey:self->_mach_continuous_time];
  [coderCopy encodeDouble:@"ut" forKey:self->_utc_time];
  objc_autoreleasePoolPop(v4);
}

@end