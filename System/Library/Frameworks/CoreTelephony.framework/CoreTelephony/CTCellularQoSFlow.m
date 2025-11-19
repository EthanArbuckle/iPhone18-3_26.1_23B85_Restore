@interface CTCellularQoSFlow
- (CTCellularQoSFlow)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCellularQoSFlow

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", flowId=%lu", -[CTCellularQoSFlow flowId](self, "flowId")];
  [v3 appendFormat:@", bearerId=%lu", -[CTCellularQoSFlow bearerId](self, "bearerId")];
  v4 = [(CTCellularQoSFlow *)self queueSetId];

  if (v4)
  {
    v5 = [(CTCellularQoSFlow *)self queueSetId];
    [v3 appendFormat:@", queueSetId=%@", v5];
  }

  v6 = [(CTCellularQoSFlow *)self is5G];

  if (v6)
  {
    v7 = [(CTCellularQoSFlow *)self is5G];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      [v3 appendFormat:@", is5G=true"];
    }
  }

  v9 = [(CTCellularQoSFlow *)self txQos];

  if (v9)
  {
    v10 = [(CTCellularQoSFlow *)self txQos];
    [v3 appendFormat:@", txQos=%@", v10];
  }

  v11 = [(CTCellularQoSFlow *)self rxQos];

  if (v11)
  {
    v12 = [(CTCellularQoSFlow *)self rxQos];
    [v3 appendFormat:@", rxQos=%@", v12];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setFlowId:{-[CTCellularQoSFlow flowId](self, "flowId")}];
  [v4 setBearerId:{-[CTCellularQoSFlow bearerId](self, "bearerId")}];
  v5 = [(CTCellularQoSFlow *)self queueSetId];

  if (v5)
  {
    v6 = [(CTCellularQoSFlow *)self queueSetId];
    v7 = [v6 copy];
    [v4 setQueueSetId:v7];
  }

  v8 = [(CTCellularQoSFlow *)self is5G];

  if (v8)
  {
    v9 = [(CTCellularQoSFlow *)self is5G];
    v10 = [v9 copy];
    [v4 setIs5G:v10];
  }

  else
  {
    [v4 setQueueSetId:0];
  }

  v11 = [(CTCellularQoSFlow *)self txQos];
  v12 = [v11 copy];
  [v4 setTxQos:v12];

  v13 = [(CTCellularQoSFlow *)self rxQos];
  v14 = [v13 copy];
  [v4 setRxQos:v14];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[CTCellularQoSFlow flowId](self forKey:{"flowId"), @"flowId"}];
  [v4 encodeInt64:-[CTCellularQoSFlow bearerId](self forKey:{"bearerId"), @"bearerId"}];
  v5 = [(CTCellularQoSFlow *)self queueSetId];
  [v4 encodeObject:v5 forKey:@"queueSetId"];

  v6 = [(CTCellularQoSFlow *)self is5G];
  [v4 encodeObject:v6 forKey:@"is5G"];

  v7 = [(CTCellularQoSFlow *)self txQos];
  [v4 encodeObject:v7 forKey:@"txQos"];

  v8 = [(CTCellularQoSFlow *)self rxQos];
  [v4 encodeObject:v8 forKey:@"rxQos"];
}

- (CTCellularQoSFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTCellularQoSFlow;
  v5 = [(CTCellularQoSFlow *)&v15 init];
  if (v5)
  {
    v5->_flowId = [v4 decodeInt64ForKey:@"flowId"];
    v5->_bearerId = [v4 decodeInt64ForKey:@"bearerId"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queueSetId"];
    queueSetId = v5->_queueSetId;
    v5->_queueSetId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"is5G"];
    is5G = v5->_is5G;
    v5->_is5G = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"txQos"];
    txQos = v5->_txQos;
    v5->_txQos = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rxQos"];
    rxQos = v5->_rxQos;
    v5->_rxQos = v12;
  }

  return v5;
}

@end