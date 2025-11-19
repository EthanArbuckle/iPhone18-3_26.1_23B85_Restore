@interface MTREnergyEVSEClusterRFIDEvent
- (MTREnergyEVSEClusterRFIDEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEClusterRFIDEvent

- (MTREnergyEVSEClusterRFIDEvent)init
{
  v6.receiver = self;
  v6.super_class = MTREnergyEVSEClusterRFIDEvent;
  v2 = [(MTREnergyEVSEClusterRFIDEvent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    uid = v2->_uid;
    v2->_uid = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterRFIDEvent);
  v5 = [(MTREnergyEVSEClusterRFIDEvent *)self uid];
  [(MTREnergyEVSEClusterRFIDEvent *)v4 setUid:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_uid base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: uid:%@ >", v5, v6];;

  return v7;
}

@end