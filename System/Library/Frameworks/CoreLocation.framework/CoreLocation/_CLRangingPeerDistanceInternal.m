@interface _CLRangingPeerDistanceInternal
- (_CLRangingPeerDistanceInternal)initWithPeer:(id)a3 date:(id)a4 distanceMeters:(id)a5 accuracyMeters:(id)a6 initiator:(BOOL)a7 shouldUnlock:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation _CLRangingPeerDistanceInternal

- (_CLRangingPeerDistanceInternal)initWithPeer:(id)a3 date:(id)a4 distanceMeters:(id)a5 accuracyMeters:(id)a6 initiator:(BOOL)a7 shouldUnlock:(BOOL)a8
{
  v21.receiver = self;
  v21.super_class = _CLRangingPeerDistanceInternal;
  v14 = [(_CLRangingPeerDistanceInternal *)&v21 init];
  v15 = v14;
  if (v14)
  {
    peer = v14->_peer;
    if (peer != a3)
    {

      v15->_peer = [a3 copy];
    }

    date = v15->_date;
    if (date != a4)
    {

      v15->_date = [a4 copy];
    }

    distanceMeters = v15->_distanceMeters;
    if (distanceMeters != a5)
    {

      v15->_distanceMeters = [a5 copy];
    }

    accuracyMeters = v15->_accuracyMeters;
    if (accuracyMeters != a6)
    {

      v15->_accuracyMeters = [a6 copy];
    }

    v15->_initiator = a7;
    v15->_shouldUnlock = a8;
  }

  return v15;
}

- (void)dealloc
{
  self->_peer = 0;

  self->_date = 0;
  self->_distanceMeters = 0;

  self->_accuracyMeters = 0;
  v3.receiver = self;
  v3.super_class = _CLRangingPeerDistanceInternal;
  [(_CLRangingPeerDistanceInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  peer = self->_peer;
  date = self->_date;
  distanceMeters = self->_distanceMeters;
  accuracyMeters = self->_accuracyMeters;
  initiator = self->_initiator;
  shouldUnlock = self->_shouldUnlock;

  return [v4 initWithPeer:peer date:date distanceMeters:distanceMeters accuracyMeters:accuracyMeters initiator:initiator shouldUnlock:shouldUnlock];
}

@end