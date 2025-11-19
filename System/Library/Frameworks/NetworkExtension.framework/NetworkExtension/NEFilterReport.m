@interface NEFilterReport
- (NEFilterReport)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithFlow:(uint64_t)a3 action:(uint64_t)a4 event:;
@end

@implementation NEFilterReport

- (void)initWithFlow:(uint64_t)a3 action:(uint64_t)a4 event:
{
  v7 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = NEFilterReport;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      [v8 setFlow:v7];
      [a1 setAction:a3];
      a1[3] = a4;
      a1[4] = [v7 inBytes];
      a1[5] = [v7 outBytes];
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEFilterReport *)self flow];
  [v4 setFlow:v5];

  [v4 setAction:{-[NEFilterReport action](self, "action")}];
  [v4 setBytesInboundCount:{-[NEFilterReport bytesInboundCount](self, "bytesInboundCount")}];
  [v4 setBytesOutboundCount:{-[NEFilterReport bytesOutboundCount](self, "bytesOutboundCount")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(NEFilterReport *)self flow];
  [v5 encodeObject:v4 forKey:@"kNEFilterReportFlow"];

  [v5 encodeInteger:-[NEFilterReport action](self forKey:{"action"), @"kNEFilterReportAction"}];
  [v5 encodeInteger:-[NEFilterReport event](self forKey:{"event"), @"reportEvent"}];
  [v5 encodeInteger:-[NEFilterReport bytesInboundCount](self forKey:{"bytesInboundCount"), @"bytesInboundCount"}];
  [v5 encodeInteger:-[NEFilterReport bytesOutboundCount](self forKey:{"bytesOutboundCount"), @"bytesOutboundCount"}];
}

- (NEFilterReport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NEFilterReport;
  v5 = [(NEFilterReport *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNEFilterReportFlow"];
    flow = v5->_flow;
    v5->_flow = v6;

    v5->_action = [v4 decodeIntegerForKey:@"kNEFilterReportAction"];
    v5->_event = [v4 decodeIntegerForKey:@"reportEvent"];
    v5->_bytesInboundCount = [v4 decodeIntegerForKey:@"bytesInboundCount"];
    v5->_bytesOutboundCount = [v4 decodeIntegerForKey:@"bytesOutboundCount"];
  }

  return v5;
}

@end