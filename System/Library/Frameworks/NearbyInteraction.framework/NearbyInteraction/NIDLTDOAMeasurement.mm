@interface NIDLTDOAMeasurement
- (BOOL)isEqual:(id)equal;
- (NIDLTDOAMeasurement)initWithAnchorAddress:(unint64_t)address measurementType:(int64_t)type coordinatesType:(int64_t)coordinatesType transmitTime:(double)time receiveTime:(double)receiveTime signalStrength:(double)strength carrierFrequencyOffset:(double)offset coordinates:;
- (NIDLTDOAMeasurement)initWithCoder:(id)coder;
- (__n128)coordinates;
- (double)carrierFrequencyOffset;
- (double)receiveTime;
- (double)signalStrength;
- (double)transmitTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)coordinatesType;
- (int64_t)measurementType;
- (unint64_t)address;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAddress:(unint64_t)address;
- (void)setCarrierFrequencyOffset:(double)offset;
- (void)setCoordinates:(NIDLTDOAMeasurement *)self;
- (void)setCoordinatesType:(int64_t)type;
- (void)setMeasurementType:(int64_t)type;
- (void)setReceiveTime:(double)time;
- (void)setSignalStrength:(double)strength;
- (void)setTransmitTime:(double)time;
@end

@implementation NIDLTDOAMeasurement

- (NIDLTDOAMeasurement)initWithAnchorAddress:(unint64_t)address measurementType:(int64_t)type coordinatesType:(int64_t)coordinatesType transmitTime:(double)time receiveTime:(double)receiveTime signalStrength:(double)strength carrierFrequencyOffset:(double)offset coordinates:
{
  v18 = *v9;
  v19 = v9[1];
  v20.receiver = self;
  v20.super_class = NIDLTDOAMeasurement;
  result = [(NIDLTDOAMeasurement *)&v20 init];
  if (result)
  {
    result->_address = address;
    result->_measurementType = type;
    result->_coordinatesType = coordinatesType;
    result->_transmitTime = time;
    result->_receiveTime = receiveTime;
    result->_signalStrength = strength;
    result->_carrierFrequencyOffset = offset;
    *result->_coordinates = v18;
    *&result->_coordinates[16] = v19;
  }

  return result;
}

- (void)setAddress:(unint64_t)address
{
  obj = self;
  objc_sync_enter(obj);
  obj->_address = address;
  objc_sync_exit(obj);
}

- (unint64_t)address
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  address = selfCopy->_address;
  objc_sync_exit(selfCopy);

  return address;
}

- (void)setMeasurementType:(int64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  obj->_measurementType = type;
  objc_sync_exit(obj);
}

- (int64_t)measurementType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  measurementType = selfCopy->_measurementType;
  objc_sync_exit(selfCopy);

  return measurementType;
}

- (void)setCoordinatesType:(int64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  obj->_coordinatesType = type;
  objc_sync_exit(obj);
}

- (int64_t)coordinatesType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  coordinatesType = selfCopy->_coordinatesType;
  objc_sync_exit(selfCopy);

  return coordinatesType;
}

- (void)setTransmitTime:(double)time
{
  obj = self;
  objc_sync_enter(obj);
  obj->_transmitTime = time;
  objc_sync_exit(obj);
}

- (double)transmitTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transmitTime = selfCopy->_transmitTime;
  objc_sync_exit(selfCopy);

  return transmitTime;
}

- (void)setReceiveTime:(double)time
{
  obj = self;
  objc_sync_enter(obj);
  obj->_receiveTime = time;
  objc_sync_exit(obj);
}

- (double)receiveTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  receiveTime = selfCopy->_receiveTime;
  objc_sync_exit(selfCopy);

  return receiveTime;
}

- (void)setSignalStrength:(double)strength
{
  obj = self;
  objc_sync_enter(obj);
  obj->_signalStrength = strength;
  objc_sync_exit(obj);
}

- (double)signalStrength
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  signalStrength = selfCopy->_signalStrength;
  objc_sync_exit(selfCopy);

  return signalStrength;
}

- (void)setCarrierFrequencyOffset:(double)offset
{
  obj = self;
  objc_sync_enter(obj);
  obj->_carrierFrequencyOffset = offset;
  objc_sync_exit(obj);
}

- (double)carrierFrequencyOffset
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  carrierFrequencyOffset = selfCopy->_carrierFrequencyOffset;
  objc_sync_exit(selfCopy);

  return carrierFrequencyOffset;
}

- (void)setCoordinates:(NIDLTDOAMeasurement *)self
{
  v3 = v2[1];
  v4 = *v2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *selfCopy->_coordinates = v4;
  *&selfCopy->_coordinates[16] = v3;
  objc_sync_exit(selfCopy);
}

- (__n128)coordinates
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy[5];
  v6 = selfCopy[4];
  objc_sync_exit(selfCopy);

  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  [v6 appendFormat:@"Address: [%ld], ", self->_address];
  measurementType = self->_measurementType;
  if (measurementType < 3)
  {
    [v6 appendString:*(&off_1E7F14318 + measurementType)];
  }

  [v6 appendFormat:@"Transmit Time: [%f], ", *&self->_transmitTime];
  [v6 appendFormat:@"Receive Time: [%f], ", *&self->_receiveTime];
  [v6 appendFormat:@"Signal Strength: [%f], ", *&self->_signalStrength];
  [v6 appendFormat:@"Carrier Frequency Offset: [%f], ", *&self->_carrierFrequencyOffset];
  coordinatesType = self->_coordinatesType;
  if (coordinatesType)
  {
    if (coordinatesType != 1)
    {
      goto LABEL_8;
    }

    v9 = @"relative coordinates:";
  }

  else
  {
    v9 = @"geodetic coordinates:";
  }

  [v6 appendString:v9];
LABEL_8:
  [v6 appendFormat:@"x: %.6f, ", *self->_coordinates];
  [v6 appendFormat:@"y: %.6f, ", *&self->_coordinates[8]];
  [v6 appendFormat:@"z: %.6f>", *&self->_coordinates[16]];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  address = self->_address;
  measurementType = self->_measurementType;
  coordinatesType = self->_coordinatesType;
  transmitTime = self->_transmitTime;
  receiveTime = self->_receiveTime;
  signalStrength = self->_signalStrength;
  carrierFrequencyOffset = self->_carrierFrequencyOffset;
  v12 = *&self->_coordinates[16];
  v14[0] = *self->_coordinates;
  v14[1] = v12;
  return [v4 initWithAnchorAddress:address measurementType:measurementType coordinatesType:coordinatesType transmitTime:v14 receiveTime:transmitTime signalStrength:receiveTime carrierFrequencyOffset:signalStrength coordinates:carrierFrequencyOffset];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_address forKey:@"Address"];
  [coderCopy encodeInt:LODWORD(self->_coordinatesType) forKey:@"AnchorCoordinatesType"];
  [coderCopy encodeInt:LODWORD(self->_measurementType) forKey:@"MeasurementType"];
  [coderCopy encodeDouble:@"TransmitTime" forKey:self->_transmitTime];
  [coderCopy encodeDouble:@"ReceiveTime" forKey:self->_receiveTime];
  [coderCopy encodeDouble:@"SignalStrength" forKey:self->_signalStrength];
  [coderCopy encodeDouble:@"CarrierFrequencyOffset" forKey:self->_carrierFrequencyOffset];
  v5 = *&self->_coordinates[16];
  v6[0] = *self->_coordinates;
  v6[1] = v5;
  [coderCopy encodeDoubleVector3:v6 forKey:@"AnchorCoordinates"];
}

- (NIDLTDOAMeasurement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_address = [coderCopy decodeIntegerForKey:@"Address"];
    self->_measurementType = [v5 decodeIntForKey:@"MeasurementType"];
    self->_coordinatesType = [v5 decodeIntForKey:@"AnchorCoordinatesType"];
    [v5 decodeDoubleForKey:@"TransmitTime"];
    self->_transmitTime = v6;
    [v5 decodeDoubleForKey:@"ReceiveTime"];
    self->_receiveTime = v7;
    [v5 decodeDoubleForKey:@"SignalStrength"];
    self->_signalStrength = v8;
    [v5 decodeDoubleForKey:@"CarrierFrequencyOffset"];
    self->_carrierFrequencyOffset = v10;
    if (v5)
    {
      [v5 decodeDoubleVector3ForKey:@"AnchorCoordinates"];
      v11 = v14;
      v12 = vextq_s8(v11, v11, 8uLL).u64[0];
      *&v9 = v15;
    }

    else
    {
      v11.i64[0] = 0;
      v12 = 0;
      *&v9 = 0;
    }

    v11.i64[1] = v12;
    *self->_coordinates = v11;
    *&self->_coordinates[16] = v9;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      address = self->_address;
      address = [(NIDLTDOAMeasurement *)v5 address];
      measurementType = self->_measurementType;
      measurementType = [(NIDLTDOAMeasurement *)v5 measurementType];
      coordinatesType = self->_coordinatesType;
      coordinatesType = [(NIDLTDOAMeasurement *)v5 coordinatesType];
      transmitTime = self->_transmitTime;
      [(NIDLTDOAMeasurement *)v5 transmitTime];
      v14 = v13;
      receiveTime = self->_receiveTime;
      [(NIDLTDOAMeasurement *)v5 receiveTime];
      v17 = v16;
      signalStrength = self->_signalStrength;
      [(NIDLTDOAMeasurement *)v5 signalStrength];
      v20 = v19;
      carrierFrequencyOffset = self->_carrierFrequencyOffset;
      [(NIDLTDOAMeasurement *)v5 carrierFrequencyOffset];
      v23 = v22;
      v33 = *&self->_coordinates[16];
      v34 = *self->_coordinates;
      if (v5)
      {
        [(NIDLTDOAMeasurement *)v5 coordinates];
        v24 = v35;
        v25 = vextq_s8(v24, v24, 8uLL).u64[0];
        v26.f64[0] = v36;
      }

      else
      {
        v24.f64[0] = 0.0;
        v25 = 0;
        v26.f64[0] = 0.0;
      }

      v29 = address == address && measurementType == measurementType;
      if (transmitTime != v14)
      {
        v29 = 0;
      }

      if (receiveTime != v17)
      {
        v29 = 0;
      }

      if (signalStrength != v20)
      {
        v29 = 0;
      }

      if (carrierFrequencyOffset != v23)
      {
        v29 = 0;
      }

      *&v24.f64[1] = v25;
      v26.f64[1] = v24.f64[0];
      *&v26.f64[0] = vceqq_f64(v33, v26).u64[0];
      v31 = vceqq_f64(v34, v24);
      if (coordinatesType != coordinatesType)
      {
        v29 = 0;
      }

      v27 = (v31.i64[0] & v31.i64[1] & *&v26.f64[0]) < 0 != __OFSUB__(coordinatesType, coordinatesType) && v29;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (unint64_t)hash
{
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_address];
  v18 = [v23 hash];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:SLODWORD(self->_measurementType)];
  v17 = [v22 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:SLODWORD(self->_coordinatesType)];
  v16 = [v21 hash];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_transmitTime];
  v15 = [v20 hash];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_receiveTime];
  v14 = [v19 hash];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_signalStrength];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_carrierFrequencyOffset];
  v6 = [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*self->_coordinates];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_coordinates[8]];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_coordinates[16]];
  v12 = v8 ^ v10 ^ [v11 hash];

  return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v4 ^ v6 ^ v12;
}

@end