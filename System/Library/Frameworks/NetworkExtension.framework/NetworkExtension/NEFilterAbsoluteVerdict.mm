@interface NEFilterAbsoluteVerdict
- (NEFilterAbsoluteVerdict)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterAbsoluteVerdict

- (int64_t)filterAction
{
  v4.receiver = self;
  v4.super_class = NEFilterAbsoluteVerdict;
  result = [(NEFilterVerdict *)&v4 filterAction];
  if (!result)
  {
    if ([(NEFilterAbsoluteVerdict *)self inboundPassOffset]== -1 && [(NEFilterAbsoluteVerdict *)self outboundPassOffset]== -1)
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NEFilterAbsoluteVerdict;
  v4 = [(NEFilterVerdict *)&v6 copyWithZone:zone];
  [v4 setInboundPassOffset:{-[NEFilterAbsoluteVerdict inboundPassOffset](self, "inboundPassOffset")}];
  [v4 setInboundPeekOffset:{-[NEFilterAbsoluteVerdict inboundPeekOffset](self, "inboundPeekOffset")}];
  [v4 setOutboundPassOffset:{-[NEFilterAbsoluteVerdict outboundPassOffset](self, "outboundPassOffset")}];
  [v4 setOutboundPeekOffset:{-[NEFilterAbsoluteVerdict outboundPeekOffset](self, "outboundPeekOffset")}];
  [v4 setStatisticsReportFrequency:{-[NEFilterAbsoluteVerdict statisticsReportFrequency](self, "statisticsReportFrequency")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NEFilterAbsoluteVerdict;
  coderCopy = coder;
  [(NEFilterVerdict *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[NEFilterAbsoluteVerdict inboundPassOffset](self forKey:{"inboundPassOffset", v5.receiver, v5.super_class), @"Inbound pass offset"}];
  [coderCopy encodeInt64:-[NEFilterAbsoluteVerdict inboundPeekOffset](self forKey:{"inboundPeekOffset"), @"Inbound peek offset"}];
  [coderCopy encodeInt64:-[NEFilterAbsoluteVerdict outboundPassOffset](self forKey:{"outboundPassOffset"), @"Outbound pass offset"}];
  [coderCopy encodeInt64:-[NEFilterAbsoluteVerdict outboundPeekOffset](self forKey:{"outboundPeekOffset"), @"Outbound peek offset"}];
  [coderCopy encodeInt:-[NEFilterAbsoluteVerdict statisticsReportFrequency](self forKey:{"statisticsReportFrequency"), @"StatisticsReportFrequency"}];
}

- (NEFilterAbsoluteVerdict)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NEFilterAbsoluteVerdict;
  v5 = [(NEFilterVerdict *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_inboundPassOffset = [coderCopy decodeInt64ForKey:@"Inbound pass offset"];
    v5->_inboundPeekOffset = [coderCopy decodeInt64ForKey:@"Inbound peek offset"];
    v5->_outboundPassOffset = [coderCopy decodeInt64ForKey:@"Outbound pass offset"];
    v5->_outboundPeekOffset = [coderCopy decodeInt64ForKey:@"Outbound peek offset"];
    v5->_statisticsReportFrequency = [coderCopy decodeIntForKey:@"StatisticsReportFrequency"];
  }

  return v5;
}

@end