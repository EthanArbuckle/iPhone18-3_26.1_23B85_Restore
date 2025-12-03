@interface NEFilterNewFlowVerdict
+ (NEFilterNewFlowVerdict)URLAppendStringVerdictWithMapKey:(NSString *)urlAppendMapKey;
+ (NEFilterNewFlowVerdict)allowVerdict;
+ (NEFilterNewFlowVerdict)dropVerdict;
+ (NEFilterNewFlowVerdict)needRulesVerdict;
+ (NEFilterNewFlowVerdict)pauseVerdict;
+ (NEFilterNewFlowVerdict)remediateVerdictWithRemediationURLMapKey:(NSString *)remediationURLMapKey remediationButtonTextMapKey:(NSString *)remediationButtonTextMapKey;
- (NEFilterNewFlowVerdict)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterNewFlowVerdict

- (int64_t)filterAction
{
  v4.receiver = self;
  v4.super_class = NEFilterNewFlowVerdict;
  result = [(NEFilterVerdict *)&v4 filterAction];
  if (!result)
  {
    if ([(NEFilterNewFlowVerdict *)self filterInbound]|| [(NEFilterNewFlowVerdict *)self filterOutbound])
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NEFilterNewFlowVerdict;
  v4 = [(NEFilterVerdict *)&v6 copyWithZone:zone];
  [v4 setFilterInbound:{-[NEFilterNewFlowVerdict filterInbound](self, "filterInbound")}];
  [v4 setFilterOutbound:{-[NEFilterNewFlowVerdict filterOutbound](self, "filterOutbound")}];
  [v4 setPeekInboundBytes:{-[NEFilterNewFlowVerdict peekInboundBytes](self, "peekInboundBytes")}];
  [v4 setPeekOutboundBytes:{-[NEFilterNewFlowVerdict peekOutboundBytes](self, "peekOutboundBytes")}];
  [v4 setStatisticsReportFrequency:{-[NEFilterNewFlowVerdict statisticsReportFrequency](self, "statisticsReportFrequency")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NEFilterNewFlowVerdict;
  coderCopy = coder;
  [(NEFilterVerdict *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[NEFilterNewFlowVerdict filterInbound](self forKey:{"filterInbound", v5.receiver, v5.super_class), @"FilterInbound"}];
  [coderCopy encodeBool:-[NEFilterNewFlowVerdict filterOutbound](self forKey:{"filterOutbound"), @"FilterOutbound"}];
  [coderCopy encodeInt64:-[NEFilterNewFlowVerdict peekInboundBytes](self forKey:{"peekInboundBytes"), @"PeekInboundBytes"}];
  [coderCopy encodeInt64:-[NEFilterNewFlowVerdict peekOutboundBytes](self forKey:{"peekOutboundBytes"), @"PeekOutboundBytes"}];
  [coderCopy encodeInt:-[NEFilterNewFlowVerdict statisticsReportFrequency](self forKey:{"statisticsReportFrequency"), @"StatisticsReportFrequency"}];
}

- (NEFilterNewFlowVerdict)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NEFilterNewFlowVerdict;
  v5 = [(NEFilterVerdict *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_filterInbound = [coderCopy decodeBoolForKey:@"FilterInbound"];
    v5->_filterOutbound = [coderCopy decodeBoolForKey:@"FilterOutbound"];
    v5->_peekInboundBytes = [coderCopy decodeInt64ForKey:@"PeekInboundBytes"];
    v5->_peekOutboundBytes = [coderCopy decodeInt64ForKey:@"PeekOutboundBytes"];
    v5->_statisticsReportFrequency = [coderCopy decodeIntForKey:@"StatisticsReportFrequency"];
  }

  return v5;
}

+ (NEFilterNewFlowVerdict)pauseVerdict
{
  v2 = [NEFilterNewFlowVerdict alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = NEFilterVerdict;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->super._pause = 1;
    }
  }

  return v2;
}

+ (NEFilterNewFlowVerdict)URLAppendStringVerdictWithMapKey:(NSString *)urlAppendMapKey
{
  v3 = urlAppendMapKey;
  v4 = +[NEFilterNewFlowVerdict allowVerdict];
  v6 = v4;
  if (v4)
  {
    v4[12] = 1;
    objc_setProperty_atomic(v4, v5, v3, 32);
  }

  return v6;
}

+ (NEFilterNewFlowVerdict)remediateVerdictWithRemediationURLMapKey:(NSString *)remediationURLMapKey remediationButtonTextMapKey:(NSString *)remediationButtonTextMapKey
{
  v5 = remediationURLMapKey;
  v6 = remediationButtonTextMapKey;
  v7 = [(NEFilterVerdict *)[NEFilterNewFlowVerdict alloc] initWithDrop:1 remediate:1];
  v9 = v7;
  if (v7)
  {
    objc_setProperty_atomic(v7, v8, v5, 16);
    objc_setProperty_atomic(v9, v10, v6, 24);
  }

  return v9;
}

+ (NEFilterNewFlowVerdict)dropVerdict
{
  v2 = [(NEFilterVerdict *)[NEFilterNewFlowVerdict alloc] initWithDrop:1 remediate:0];

  return v2;
}

+ (NEFilterNewFlowVerdict)allowVerdict
{
  v2 = [(NEFilterVerdict *)[NEFilterNewFlowVerdict alloc] initWithDrop:0 remediate:0];
  [(NEFilterNewFlowVerdict *)v2 setFilterInbound:0];
  [(NEFilterNewFlowVerdict *)v2 setFilterOutbound:0];

  return v2;
}

+ (NEFilterNewFlowVerdict)needRulesVerdict
{
  v2 = +[NEFilterNewFlowVerdict allowVerdict];
  [v2 setNeedRules:1];

  return v2;
}

@end