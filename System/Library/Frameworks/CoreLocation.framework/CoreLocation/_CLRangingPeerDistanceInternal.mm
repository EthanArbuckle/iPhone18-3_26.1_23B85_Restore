@interface _CLRangingPeerDistanceInternal
- (_CLRangingPeerDistanceInternal)initWithPeer:(id)peer date:(id)date distanceMeters:(id)meters accuracyMeters:(id)accuracyMeters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation _CLRangingPeerDistanceInternal

- (_CLRangingPeerDistanceInternal)initWithPeer:(id)peer date:(id)date distanceMeters:(id)meters accuracyMeters:(id)accuracyMeters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock
{
  v21.receiver = self;
  v21.super_class = _CLRangingPeerDistanceInternal;
  v14 = [(_CLRangingPeerDistanceInternal *)&v21 init];
  v15 = v14;
  if (v14)
  {
    peer = v14->_peer;
    if (peer != peer)
    {

      v15->_peer = [peer copy];
    }

    date = v15->_date;
    if (date != date)
    {

      v15->_date = [date copy];
    }

    distanceMeters = v15->_distanceMeters;
    if (distanceMeters != meters)
    {

      v15->_distanceMeters = [meters copy];
    }

    accuracyMeters = v15->_accuracyMeters;
    if (accuracyMeters != accuracyMeters)
    {

      v15->_accuracyMeters = [accuracyMeters copy];
    }

    v15->_initiator = initiator;
    v15->_shouldUnlock = unlock;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  peer = self->_peer;
  date = self->_date;
  distanceMeters = self->_distanceMeters;
  accuracyMeters = self->_accuracyMeters;
  initiator = self->_initiator;
  shouldUnlock = self->_shouldUnlock;

  return [v4 initWithPeer:peer date:date distanceMeters:distanceMeters accuracyMeters:accuracyMeters initiator:initiator shouldUnlock:shouldUnlock];
}

@end