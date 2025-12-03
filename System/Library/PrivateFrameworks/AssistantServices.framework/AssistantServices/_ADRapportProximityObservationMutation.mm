@interface _ADRapportProximityObservationMutation
- (_ADRapportProximityObservationMutation)initWithBase:(id)base;
- (id)getDeviceIDPair;
- (id)getObservationDate;
- (int)getProximity;
@end

@implementation _ADRapportProximityObservationMutation

- (id)getObservationDate
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    observationDate = self->_observationDate;
  }

  else
  {
    observationDate = [(ADRapportProximityObservation *)self->_base observationDate];
  }

  return observationDate;
}

- (int)getProximity
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_proximity;
  }

  else
  {
    return [(ADRapportProximityObservation *)self->_base proximity];
  }
}

- (id)getDeviceIDPair
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    deviceIDPair = self->_deviceIDPair;
  }

  else
  {
    deviceIDPair = [(ADRapportProximityObservation *)self->_base deviceIDPair];
  }

  return deviceIDPair;
}

- (_ADRapportProximityObservationMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADRapportProximityObservationMutation;
  v6 = [(_ADRapportProximityObservationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end