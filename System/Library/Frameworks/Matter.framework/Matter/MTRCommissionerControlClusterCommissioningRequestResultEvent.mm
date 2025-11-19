@interface MTRCommissionerControlClusterCommissioningRequestResultEvent
- (MTRCommissionerControlClusterCommissioningRequestResultEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommissionerControlClusterCommissioningRequestResultEvent

- (MTRCommissionerControlClusterCommissioningRequestResultEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRCommissionerControlClusterCommissioningRequestResultEvent;
  v2 = [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    requestID = v2->_requestID;
    v2->_requestID = &unk_284C3E588;

    clientNodeID = v3->_clientNodeID;
    v3->_clientNodeID = &unk_284C3E588;

    statusCode = v3->_statusCode;
    v3->_statusCode = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommissionerControlClusterCommissioningRequestResultEvent);
  v5 = [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)self requestID];
  [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)v4 setRequestID:v5];

  v6 = [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)self clientNodeID];
  [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)v4 setClientNodeID:v6];

  v7 = [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)self statusCode];
  [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)v4 setStatusCode:v7];

  v8 = [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)self fabricIndex];
  [(MTRCommissionerControlClusterCommissioningRequestResultEvent *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: requestID:%@ clientNodeID:%@; statusCode:%@; fabricIndex:%@; >", v5, self->_requestID, self->_clientNodeID, self->_statusCode, self->_fabricIndex];;

  return v6;
}

@end