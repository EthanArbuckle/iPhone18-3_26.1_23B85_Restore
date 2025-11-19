@interface AVCRTCPSenderReport
- (AVCRTCPSenderReport)initWithRTCPPacket:(tagRTCPPACKET *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVCRTCPSenderReport

- (AVCRTCPSenderReport)initWithRTCPPacket:(tagRTCPPACKET *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 170, sizeof(v13));
  v9.receiver = self;
  v9.super_class = AVCRTCPSenderReport;
  v5 = [(AVCRTCPPacket *)&v9 initWithRTCPPacket:a3];
  v6 = v5;
  if (v5)
  {
    v5->_NTPMostSignificantWord = a3->var1.var0.var1;
    v5->_NTPLeastSignificantWord = a3->var1.var0.var2;
    v5->_RTPTimestamp = a3->var1.var0.var3;
    v5->_packetsSent = a3->var1.var0.var4;
    v5->_octetsSent = a3->var1.var0.var5;
    if ((*&a3->var0 & 0x1F) != 0)
    {
      v7 = *&a3->var0 | 0xC900;
      v10 = *&a3->var0;
      LOWORD(v10) = v7;
      v11 = *&a3->var1.var22.var1.var0[16];
      v12 = *(&a3->var1.var22 + 5);
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