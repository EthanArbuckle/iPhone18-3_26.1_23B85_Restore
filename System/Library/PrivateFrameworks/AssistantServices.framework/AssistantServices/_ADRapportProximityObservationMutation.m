@interface _ADRapportProximityObservationMutation
- (_ADRapportProximityObservationMutation)initWithBase:(id)a3;
- (id)getDeviceIDPair;
- (id)getObservationDate;
- (int)getProximity;
@end

@implementation _ADRapportProximityObservationMutation

- (id)getObservationDate
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_observationDate;
  }

  else
  {
    v2 = [(ADRapportProximityObservation *)self->_base observationDate];
  }

  return v2;
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
    v2 = self->_deviceIDPair;
  }

  else
  {
    v2 = [(ADRapportProximityObservation *)self->_base deviceIDPair];
  }

  return v2;
}

- (_ADRapportProximityObservationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADRapportProximityObservationMutation;
  v6 = [(_ADRapportProximityObservationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end