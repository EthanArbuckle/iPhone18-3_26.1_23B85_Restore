@interface NetworkInterfaceInfo
- (NetworkInterfaceInfo)initWithIndex:(unsigned int)a3 type:(int)a4;
- (id)description;
- (id)typeAsString;
- (void)updateRxByteCounterTo:(unint64_t)a3 andTxByteCounterTo:(unint64_t)a4 andRxPacketCounterTo:(unint64_t)a5 andTxPacketCounterTo:(unint64_t)a6;
@end

@implementation NetworkInterfaceInfo

- (NetworkInterfaceInfo)initWithIndex:(unsigned int)a3 type:(int)a4
{
  v10.receiver = self;
  v10.super_class = NetworkInterfaceInfo;
  v6 = [(NetworkInterfaceInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 3) = a3;
    *(v6 + 4) = a4;
    v6[8] = 0;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    v8 = v6;
  }

  return v7;
}

- (void)updateRxByteCounterTo:(unint64_t)a3 andTxByteCounterTo:(unint64_t)a4 andRxPacketCounterTo:(unint64_t)a5 andTxPacketCounterTo:(unint64_t)a6
{
  self->_rxByteCounter = a3;
  self->_txByteCounter = a4;
  self->_rxPacketCounter = a5;
  self->_txPacketCounter = a6;
  self->_isCountersSet = 1;
}

- (id)typeAsString
{
  v2 = [(NetworkInterfaceInfo *)self type]- 1;
  if (v2 > 3)
  {
    return @"other";
  }

  else
  {
    return off_1002AB518[v2];
  }
}

- (id)description
{
  v3 = [(NetworkInterfaceInfo *)self isCountersSet];
  v4 = [(NetworkInterfaceInfo *)self index];
  v5 = [(NetworkInterfaceInfo *)self type];
  v6 = [(NetworkInterfaceInfo *)self typeAsString];
  v7 = v6;
  if (v3)
  {
    [NSString stringWithFormat:@"index %d, type %d (%@), rxByteCounter %llu, txByteCounter %llu, rxPacketCounter %llu, txPacketCounter %llu", v4, v5, v6, [(NetworkInterfaceInfo *)self rxByteCounter], [(NetworkInterfaceInfo *)self txByteCounter], [(NetworkInterfaceInfo *)self rxPacketCounter], [(NetworkInterfaceInfo *)self txPacketCounter]];
  }

  else
  {
    [NSString stringWithFormat:@"index %d, type %d (%@), counters not set", v4, v5, v6];
  }
  v8 = ;

  return v8;
}

@end