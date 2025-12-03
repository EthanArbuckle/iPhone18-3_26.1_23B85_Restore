@interface AVCRTCPReceiverReport
- (AVCRTCPReceiverReport)initWithRTCPPacket:(tagRTCPPACKET *)packet;
- (id)description;
@end

@implementation AVCRTCPReceiverReport

- (AVCRTCPReceiverReport)initWithRTCPPacket:(tagRTCPPACKET *)packet
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVCRTCPReceiverReport;
  result = [(AVCRTCPPacket *)&v5 initWithRTCPPacket:?];
  if (result && (*&packet->var0 & 0x1F) != 0)
  {
    result->_reportedSourceSSRC = packet->var1.var0.var1;
    result->_fractionLost = packet->var1.var0.var2;
    result->_cumulativePacketsLost = packet->var1.var0.var2 >> 8;
    result->_extendedHighestSequenceNumber = packet->var1.var0.var3;
    result->_interarrivalJitter = packet->var1.var0.var4;
    result->_lastSRTimestamp = packet->var1.var0.var5;
    result->_delaySinceLastSR = packet->var1.var0.var6[0].var0;
  }

  else
  {

    return 0;
  }

  return result;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVCRTCPReceiverReport;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, reportedSourceSSRC:%u, fractionLost:%u, cumulativePacketsLost:%u, extendedHighestSequenceNumber:%u, interarrivalJitter:%u, lastSRTimestamp:%u, delaySinceLastSR:%u", -[AVCRTCPPacket description](&v3, sel_description), -[AVCRTCPReceiverReport reportedSourceSSRC](self, "reportedSourceSSRC"), -[AVCRTCPReceiverReport fractionLost](self, "fractionLost"), -[AVCRTCPReceiverReport cumulativePacketsLost](self, "cumulativePacketsLost"), -[AVCRTCPReceiverReport extendedHighestSequenceNumber](self, "extendedHighestSequenceNumber"), -[AVCRTCPReceiverReport interarrivalJitter](self, "interarrivalJitter"), -[AVCRTCPReceiverReport lastSRTimestamp](self, "lastSRTimestamp"), -[AVCRTCPReceiverReport delaySinceLastSR](self, "delaySinceLastSR")];
}

@end