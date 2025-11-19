@interface NEFilterDataVerdict
+ (NEFilterDataVerdict)allowVerdict;
+ (NEFilterDataVerdict)dataVerdictWithPassBytes:(NSUInteger)passBytes peekBytes:(NSUInteger)peekBytes;
+ (NEFilterDataVerdict)dropVerdict;
+ (NEFilterDataVerdict)needRulesVerdict;
+ (NEFilterDataVerdict)pauseVerdict;
+ (NEFilterDataVerdict)remediateVerdictWithRemediationURLMapKey:(NSString *)remediationURLMapKey remediationButtonTextMapKey:(NSString *)remediationButtonTextMapKey;
- (NEFilterDataVerdict)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NEFilterDataVerdict;
  v4 = [(NEFilterVerdict *)&v6 copyWithZone:a3];
  [v4 setPassBytes:{-[NEFilterDataVerdict passBytes](self, "passBytes")}];
  [v4 setPeekBytes:{-[NEFilterDataVerdict peekBytes](self, "peekBytes")}];
  [v4 setStatisticsReportFrequency:{-[NEFilterDataVerdict statisticsReportFrequency](self, "statisticsReportFrequency")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NEFilterDataVerdict;
  v4 = a3;
  [(NEFilterVerdict *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:-[NEFilterDataVerdict passBytes](self forKey:{"passBytes", v5.receiver, v5.super_class), @"PassBytes"}];
  [v4 encodeInt64:-[NEFilterDataVerdict peekBytes](self forKey:{"peekBytes"), @"PeekBytes"}];
  [v4 encodeInt:-[NEFilterDataVerdict statisticsReportFrequency](self forKey:{"statisticsReportFrequency"), @"StatisticsReportFrequency"}];
}

- (NEFilterDataVerdict)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NEFilterDataVerdict;
  v5 = [(NEFilterVerdict *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_passBytes = [v4 decodeInt64ForKey:@"PassBytes"];
    v5->_peekBytes = [v4 decodeInt64ForKey:@"PeekBytes"];
    v5->_statisticsReportFrequency = [v4 decodeIntForKey:@"StatisticsReportFrequency"];
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