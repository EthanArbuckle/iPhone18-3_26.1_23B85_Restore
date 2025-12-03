@interface NEFilterDataVerdict
+ (NEFilterDataVerdict)allowVerdict;
+ (NEFilterDataVerdict)dataVerdictWithPassBytes:(NSUInteger)passBytes peekBytes:(NSUInteger)peekBytes;
+ (NEFilterDataVerdict)dropVerdict;
+ (NEFilterDataVerdict)needRulesVerdict;
+ (NEFilterDataVerdict)pauseVerdict;
+ (NEFilterDataVerdict)remediateVerdictWithRemediationURLMapKey:(NSString *)remediationURLMapKey remediationButtonTextMapKey:(NSString *)remediationButtonTextMapKey;
- (NEFilterDataVerdict)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterDataVerdict

- (int64_t)filterAction
{
  v4.receiver = self;
  v4.super_class = NEFilterDataVerdict;
  result = [(NEFilterVerdict *)&v4 filterAction];
  if (!result)
  {
    if ([(NEFilterVerdict *)self drop]|| self && self->super._remediate || [(NEFilterDataVerdict *)self passBytes]!= -1)
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
  v6.super_class = NEFilterDataVerdict;
  v4 = [(NEFilterVerdict *)&v6 copyWithZone:zone];
  [v4 setPassBytes:{-[NEFilterDataVerdict passBytes](self, "passBytes")}];
  [v4 setPeekBytes:{-[NEFilterDataVerdict peekBytes](self, "peekBytes")}];
  [v4 setStatisticsReportFrequency:{-[NEFilterDataVerdict statisticsReportFrequency](self, "statisticsReportFrequency")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NEFilterDataVerdict;
  coderCopy = coder;
  [(NEFilterVerdict *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[NEFilterDataVerdict passBytes](self forKey:{"passBytes", v5.receiver, v5.super_class), @"PassBytes"}];
  [coderCopy encodeInt64:-[NEFilterDataVerdict peekBytes](self forKey:{"peekBytes"), @"PeekBytes"}];
  [coderCopy encodeInt:-[NEFilterDataVerdict statisticsReportFrequency](self forKey:{"statisticsReportFrequency"), @"StatisticsReportFrequency"}];
}

- (NEFilterDataVerdict)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NEFilterDataVerdict;
  v5 = [(NEFilterVerdict *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_passBytes = [coderCopy decodeInt64ForKey:@"PassBytes"];
    v5->_peekBytes = [coderCopy decodeInt64ForKey:@"PeekBytes"];
    v5->_statisticsReportFrequency = [coderCopy decodeIntForKey:@"StatisticsReportFrequency"];
  }

  return v5;
}

+ (NEFilterDataVerdict)pauseVerdict
{
  v2 = [NEFilterDataVerdict alloc];
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

+ (NEFilterDataVerdict)dataVerdictWithPassBytes:(NSUInteger)passBytes peekBytes:(NSUInteger)peekBytes
{
  v6 = [(NEFilterVerdict *)[NEFilterDataVerdict alloc] initWithDrop:0 remediate:0];
  [(NEFilterDataVerdict *)v6 setPassBytes:passBytes];
  [(NEFilterDataVerdict *)v6 setPeekBytes:peekBytes];

  return v6;
}

+ (NEFilterDataVerdict)remediateVerdictWithRemediationURLMapKey:(NSString *)remediationURLMapKey remediationButtonTextMapKey:(NSString *)remediationButtonTextMapKey
{
  v5 = remediationURLMapKey;
  v6 = remediationButtonTextMapKey;
  v7 = [(NEFilterVerdict *)[NEFilterDataVerdict alloc] initWithDrop:1 remediate:1];
  v9 = v7;
  if (v7)
  {
    objc_setProperty_atomic(v7, v8, v5, 16);
    objc_setProperty_atomic(v9, v10, v6, 24);
  }

  return v9;
}

+ (NEFilterDataVerdict)dropVerdict
{
  v2 = [(NEFilterVerdict *)[NEFilterDataVerdict alloc] initWithDrop:1 remediate:0];

  return v2;
}

+ (NEFilterDataVerdict)allowVerdict
{
  v2 = [(NEFilterVerdict *)[NEFilterDataVerdict alloc] initWithDrop:0 remediate:0];
  [(NEFilterDataVerdict *)v2 setPassBytes:-1];

  return v2;
}

+ (NEFilterDataVerdict)needRulesVerdict
{
  v2 = +[NEFilterDataVerdict allowVerdict];
  [v2 setNeedRules:1];

  return v2;
}

@end