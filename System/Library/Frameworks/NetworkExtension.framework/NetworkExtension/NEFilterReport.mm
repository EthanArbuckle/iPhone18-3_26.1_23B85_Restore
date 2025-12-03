@interface NEFilterReport
- (NEFilterReport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)initWithFlow:(uint64_t)flow action:(uint64_t)action event:;
@end

@implementation NEFilterReport

- (void)initWithFlow:(uint64_t)flow action:(uint64_t)action event:
{
  v7 = a2;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = NEFilterReport;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      [v8 setFlow:v7];
      [self setAction:flow];
      self[3] = action;
      self[4] = [v7 inBytes];
      self[5] = [v7 outBytes];
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  flow = [(NEFilterReport *)self flow];
  [v4 setFlow:flow];

  [v4 setAction:{-[NEFilterReport action](self, "action")}];
  [v4 setBytesInboundCount:{-[NEFilterReport bytesInboundCount](self, "bytesInboundCount")}];
  [v4 setBytesOutboundCount:{-[NEFilterReport bytesOutboundCount](self, "bytesOutboundCount")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  flow = [(NEFilterReport *)self flow];
  [coderCopy encodeObject:flow forKey:@"kNEFilterReportFlow"];

  [coderCopy encodeInteger:-[NEFilterReport action](self forKey:{"action"), @"kNEFilterReportAction"}];
  [coderCopy encodeInteger:-[NEFilterReport event](self forKey:{"event"), @"reportEvent"}];
  [coderCopy encodeInteger:-[NEFilterReport bytesInboundCount](self forKey:{"bytesInboundCount"), @"bytesInboundCount"}];
  [coderCopy encodeInteger:-[NEFilterReport bytesOutboundCount](self forKey:{"bytesOutboundCount"), @"bytesOutboundCount"}];
}

- (NEFilterReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NEFilterReport;
  v5 = [(NEFilterReport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNEFilterReportFlow"];
    flow = v5->_flow;
    v5->_flow = v6;

    v5->_action = [coderCopy decodeIntegerForKey:@"kNEFilterReportAction"];
    v5->_event = [coderCopy decodeIntegerForKey:@"reportEvent"];
    v5->_bytesInboundCount = [coderCopy decodeIntegerForKey:@"bytesInboundCount"];
    v5->_bytesOutboundCount = [coderCopy decodeIntegerForKey:@"bytesOutboundCount"];
  }

  return v5;
}

@end