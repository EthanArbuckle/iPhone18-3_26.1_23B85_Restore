@interface NEFilterAbsoluteVerdict
- (NEFilterAbsoluteVerdict)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NEFilterAbsoluteVerdict;
  v4 = [(NEFilterVerdict *)&v6 copyWithZone:a3];
  [v4 setInboundPassOffset:{-[NEFilterAbsoluteVerdict inboundPassOffset](self, "inboundPassOffset")}];
  [v4 setInboundPeekOffset:{-[NEFilterAbsoluteVerdict inboundPeekOffset](self, "inboundPeekOffset")}];
  [v4 setOutboundPassOffset:{-[NEFilterAbsoluteVerdict outboundPassOffset](self, "outboundPassOffset")}];
  [v4 setOutboundPeekOffset:{-[NEFilterAbsoluteVerdict outboundPeekOffset](self, "outboundPeekOffset")}];
  [v4 setStatisticsReportFrequency:{-[NEFilterAbsoluteVerdict statisticsReportFrequency](self, "statisticsReportFrequency")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NEFilterAbsoluteVerdict;
  v4 = a3;
  [(NEFilterVerdict *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:-[NEFilterAbsoluteVerdict inboundPassOffset](self forKey:{"inboundPassOffset", v5.receiver, v5.super_class), @"Inbound pass offset"}];
  [v4 encodeInt64:-[NEFilterAbsoluteVerdict inboundPeekOffset](self forKey:{"inboundPeekOffset"), @"Inbound peek offset"}];
  [v4 encodeInt64:-[NEFilterAbsoluteVerdict outboundPassOffset](self forKey:{"outboundPassOffset"), @"Outbound pass offset"}];
  [v4 encodeInt64:-[NEFilterAbsoluteVerdict outboundPeekOffset](self forKey:{"outboundPeekOffset"), @"Outbound peek offset"}];
  [v4 encodeInt:-[NEFilterAbsoluteVerdict statisticsReportFrequency](self forKey:{"statisticsReportFrequency"), @"StatisticsReportFrequency"}];
}

- (NEFilterAbsoluteVerdict)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NEFilterAbsoluteVerdict;
  v5 = [(NEFilterVerdict *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_inboundPassOffset = [v4 decodeInt64ForKey:@"Inbound pass offset"];
    v5->_inboundPeekOffset = [v4 decodeInt64ForKey:@"Inbound peek offset"];
    v5->_outboundPassOffset = [v4 decodeInt64ForKey:@"Outbound pass offset"];
    v5->_outboundPeekOffset = [v4 decodeInt64ForKey:@"Outbound peek offset"];
    v5->_statisticsReportFrequency = [v4 decodeIntForKey:@"StatisticsReportFrequency"];
  }

  return v5;
}

@end