@interface MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent
- (MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent

- (MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent)init
{
  v7.receiver = self;
  v7.super_class = MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent;
  v2 = [(MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    softwareVersion = v2->_softwareVersion;
    v2->_softwareVersion = &unk_284C3E588;

    productID = v3->_productID;
    v3->_productID = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent);
  softwareVersion = [(MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent *)self softwareVersion];
  [(MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent *)v4 setSoftwareVersion:softwareVersion];

  productID = [(MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent *)self productID];
  [(MTROTASoftwareUpdateRequestorClusterVersionAppliedEvent *)v4 setProductID:productID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: softwareVersion:%@ productID:%@; >", v5, self->_softwareVersion, self->_productID];;

  return v6;
}

@end