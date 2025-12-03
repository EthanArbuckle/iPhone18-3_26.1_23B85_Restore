@interface AVCRTCPSenderReport
- (AVCRTCPSenderReport)initWithRTCPPacket:(tagRTCPPACKET *)packet;
- (id)description;
- (void)dealloc;
@end

@implementation AVCRTCPSenderReport

- (AVCRTCPSenderReport)initWithRTCPPacket:(tagRTCPPACKET *)packet
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 170, sizeof(v13));
  v9.receiver = self;
  v9.super_class = AVCRTCPSenderReport;
  v5 = [(AVCRTCPPacket *)&v9 initWithRTCPPacket:packet];
  v6 = v5;
  if (v5)
  {
    v5->_NTPMostSignificantWord = packet->var1.var0.var1;
    v5->_NTPLeastSignificantWord = packet->var1.var0.var2;
    v5->_RTPTimestamp = packet->var1.var0.var3;
    v5->_packetsSent = packet->var1.var0.var4;
    v5->_octetsSent = packet->var1.var0.var5;
    if ((*&packet->var0 & 0x1F) != 0)
    {
      v7 = *&packet->var0 | 0xC900;
      v10 = *&packet->var0;
      LOWORD(v10) = v7;
      v11 = *&packet->var1.var22.var1.var0[16];
      v12 = *(&packet->var1.var22 + 5);
      v5->_receiverReport = [[AVCRTCPReceiverReport alloc] initWithRTCPPacket:&v10];
    }
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCRTCPSenderReport;
  [(AVCRTCPSenderReport *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVCRTCPSenderReport;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, NTPMostSignificantWord:%u, NTPLeastSignificantWord:%u, RTPTimestamp:%u, packetsSent:%u, octetsSent:%u, receiverReport:%@", -[AVCRTCPPacket description](&v3, sel_description), -[AVCRTCPSenderReport NTPMostSignificantWord](self, "NTPMostSignificantWord"), -[AVCRTCPSenderReport NTPLeastSignificantWord](self, "NTPLeastSignificantWord"), -[AVCRTCPSenderReport RTPTimestamp](self, "RTPTimestamp"), -[AVCRTCPSenderReport packetsSent](self, "packetsSent"), -[AVCRTCPSenderReport octetsSent](self, "octetsSent"), -[AVCRTCPSenderReport receiverReport](self, "receiverReport")];
}

@end