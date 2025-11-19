@interface CVAPRDevice
+ (id)classes;
+ (id)withData:(id)a3;
- (CVAPRDevice)init;
- (CVAPRDevice)initWithCoder:(id)a3;
- (void)addTimes;
- (void)encodeWithCoder:(id)a3;
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

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVAPRDevice classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4];

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

- (CVAPRDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CVAPRDevice *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_referenceFrame = [v4 decodeIntegerForKey:@"reff"];
    [v4 decodeDoubleForKey:@"rngm"];
    [(CVAPRRangeMeasurement *)v5->_range setMeasurement:?];
    [v4 decodeDoubleForKey:@"rngu"];
    [(CVAPRRangeMeasurement *)v5->_range setUncertainty:?];
    [v4 decodeDoubleForKey:@"azmm"];
    [(CVAPRAngleMeasurement *)v5->_azimuth setMeasurement:?];
    [v4 decodeDoubleForKey:@"azmu"];
    [(CVAPRAngleMeasurement *)v5->_azimuth setUncertainty:?];
    [v4 decodeDoubleForKey:@"elvm"];
    [(CVAPRAngleMeasurement *)v5->_elevation setMeasurement:?];
    [v4 decodeDoubleForKey:@"elvu"];
    [(CVAPRAngleMeasurement *)v5->_elevation setUncertainty:?];
    v7 = [v4 decodeObjectForKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [v4 decodeObjectForKey:@"sid"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v9;

    v5->_measurementNumber = [v4 decodeIntegerForKey:@"mesn"];
    [v4 decodeDoubleForKey:@"mest"];
    v5->_measurementTimestamp = v11;
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v12;
    [v4 decodeDoubleForKey:@"mct"];
    v5->_mach_continuous_time = v13;
    [v4 decodeDoubleForKey:@"ut"];
    v5->_utc_time = v14;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeInteger:self->_referenceFrame forKey:@"reff"];
  [(CVAPRRangeMeasurement *)self->_range measurement];
  [v5 encodeDouble:@"rngm" forKey:?];
  [(CVAPRRangeMeasurement *)self->_range uncertainty];
  [v5 encodeDouble:@"rngu" forKey:?];
  [(CVAPRAngleMeasurement *)self->_azimuth measurement];
  [v5 encodeDouble:@"azmm" forKey:?];
  [(CVAPRAngleMeasurement *)self->_azimuth uncertainty];
  [v5 encodeDouble:@"azmu" forKey:?];
  [(CVAPRAngleMeasurement *)self->_elevation measurement];
  [v5 encodeDouble:@"elvm" forKey:?];
  [(CVAPRAngleMeasurement *)self->_elevation uncertainty];
  [v5 encodeDouble:@"elvu" forKey:?];
  [v5 encodeObject:self->_UUID forKey:@"uuid"];
  [v5 encodeObject:self->_sessionID forKey:@"sid"];
  [v5 encodeInteger:self->_measurementNumber forKey:@"mesn"];
  [v5 encodeDouble:@"mest" forKey:self->_measurementTimestamp];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  [v5 encodeDouble:@"mct" forKey:self->_mach_continuous_time];
  [v5 encodeDouble:@"ut" forKey:self->_utc_time];
  objc_autoreleasePoolPop(v4);
}

@end