@interface CTCellularQoSFlow
- (CTCellularQoSFlow)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCellularQoSFlow

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", flowId=%lu", -[CTCellularQoSFlow flowId](self, "flowId")];
  [v3 appendFormat:@", bearerId=%lu", -[CTCellularQoSFlow bearerId](self, "bearerId")];
  queueSetId = [(CTCellularQoSFlow *)self queueSetId];

  if (queueSetId)
  {
    queueSetId2 = [(CTCellularQoSFlow *)self queueSetId];
    [v3 appendFormat:@", queueSetId=%@", queueSetId2];
  }

  is5G = [(CTCellularQoSFlow *)self is5G];

  if (is5G)
  {
    is5G2 = [(CTCellularQoSFlow *)self is5G];
    bOOLValue = [is5G2 BOOLValue];

    if (bOOLValue)
    {
      [v3 appendFormat:@", is5G=true"];
    }
  }

  txQos = [(CTCellularQoSFlow *)self txQos];

  if (txQos)
  {
    txQos2 = [(CTCellularQoSFlow *)self txQos];
    [v3 appendFormat:@", txQos=%@", txQos2];
  }

  rxQos = [(CTCellularQoSFlow *)self rxQos];

  if (rxQos)
  {
    rxQos2 = [(CTCellularQoSFlow *)self rxQos];
    [v3 appendFormat:@", rxQos=%@", rxQos2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setFlowId:{-[CTCellularQoSFlow flowId](self, "flowId")}];
  [v4 setBearerId:{-[CTCellularQoSFlow bearerId](self, "bearerId")}];
  queueSetId = [(CTCellularQoSFlow *)self queueSetId];

  if (queueSetId)
  {
    queueSetId2 = [(CTCellularQoSFlow *)self queueSetId];
    v7 = [queueSetId2 copy];
    [v4 setQueueSetId:v7];
  }

  is5G = [(CTCellularQoSFlow *)self is5G];

  if (is5G)
  {
    is5G2 = [(CTCellularQoSFlow *)self is5G];
    v10 = [is5G2 copy];
    [v4 setIs5G:v10];
  }

  else
  {
    [v4 setQueueSetId:0];
  }

  txQos = [(CTCellularQoSFlow *)self txQos];
  v12 = [txQos copy];
  [v4 setTxQos:v12];

  rxQos = [(CTCellularQoSFlow *)self rxQos];
  v14 = [rxQos copy];
  [v4 setRxQos:v14];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[CTCellularQoSFlow flowId](self forKey:{"flowId"), @"flowId"}];
  [coderCopy encodeInt64:-[CTCellularQoSFlow bearerId](self forKey:{"bearerId"), @"bearerId"}];
  queueSetId = [(CTCellularQoSFlow *)self queueSetId];
  [coderCopy encodeObject:queueSetId forKey:@"queueSetId"];

  is5G = [(CTCellularQoSFlow *)self is5G];
  [coderCopy encodeObject:is5G forKey:@"is5G"];

  txQos = [(CTCellularQoSFlow *)self txQos];
  [coderCopy encodeObject:txQos forKey:@"txQos"];

  rxQos = [(CTCellularQoSFlow *)self rxQos];
  [coderCopy encodeObject:rxQos forKey:@"rxQos"];
}

- (CTCellularQoSFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTCellularQoSFlow;
  v5 = [(CTCellularQoSFlow *)&v15 init];
  if (v5)
  {
    v5->_flowId = [coderCopy decodeInt64ForKey:@"flowId"];
    v5->_bearerId = [coderCopy decodeInt64ForKey:@"bearerId"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queueSetId"];
    queueSetId = v5->_queueSetId;
    v5->_queueSetId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"is5G"];
    is5G = v5->_is5G;
    v5->_is5G = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"txQos"];
    txQos = v5->_txQos;
    v5->_txQos = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rxQos"];
    rxQos = v5->_rxQos;
    v5->_rxQos = v12;
  }

  return v5;
}

@end