@interface NetworkInterfaceInfo
- (NetworkInterfaceInfo)initWithIndex:(unsigned int)index type:(int)type;
- (id)description;
- (id)typeAsString;
- (void)updateRxByteCounterTo:(unint64_t)to andTxByteCounterTo:(unint64_t)counterTo andRxPacketCounterTo:(unint64_t)packetCounterTo andTxPacketCounterTo:(unint64_t)txPacketCounterTo;
@end

@implementation NetworkInterfaceInfo

- (NetworkInterfaceInfo)initWithIndex:(unsigned int)index type:(int)type
{
  v10.receiver = self;
  v10.super_class = NetworkInterfaceInfo;
  v6 = [(NetworkInterfaceInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 3) = index;
    *(v6 + 4) = type;
    v6[8] = 0;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    v8 = v6;
  }

  return v7;
}

- (void)updateRxByteCounterTo:(unint64_t)to andTxByteCounterTo:(unint64_t)counterTo andRxPacketCounterTo:(unint64_t)packetCounterTo andTxPacketCounterTo:(unint64_t)txPacketCounterTo
{
  self->_rxByteCounter = to;
  self->_txByteCounter = counterTo;
  self->_rxPacketCounter = packetCounterTo;
  self->_txPacketCounter = txPacketCounterTo;
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
  isCountersSet = [(NetworkInterfaceInfo *)self isCountersSet];
  index = [(NetworkInterfaceInfo *)self index];
  type = [(NetworkInterfaceInfo *)self type];
  typeAsString = [(NetworkInterfaceInfo *)self typeAsString];
  v7 = typeAsString;
  if (isCountersSet)
  {
    [NSString stringWithFormat:@"index %d, type %d (%@), rxByteCounter %llu, txByteCounter %llu, rxPacketCounter %llu, txPacketCounter %llu", index, type, typeAsString, [(NetworkInterfaceInfo *)self rxByteCounter], [(NetworkInterfaceInfo *)self txByteCounter], [(NetworkInterfaceInfo *)self rxPacketCounter], [(NetworkInterfaceInfo *)self txPacketCounter]];
  }

  else
  {
    [NSString stringWithFormat:@"index %d, type %d (%@), counters not set", index, type, typeAsString];
  }
  v8 = ;

  return v8;
}

@end