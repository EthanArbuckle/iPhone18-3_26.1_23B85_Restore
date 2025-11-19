@interface CTStewieSatSmsSummaryMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieSatSmsSummaryMessage)initWithCoder:(id)a3;
- (CTStewieSatSmsSummaryMessage)initWithPendingSatSmsTotalCount:(int64_t)a3 error:(id *)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieSatSmsSummaryMessage

- (CTStewieSatSmsSummaryMessage)initWithPendingSatSmsTotalCount:(int64_t)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = CTStewieSatSmsSummaryMessage;
  v5 = [(CTStewieSatSmsSummaryMessage *)&v9 init:a3];
  v6 = v5;
  if (v5)
  {
    v5->_pendingSatSmsTotalCount = a3;
    v7 = v5;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", pendingSatSmsTotalCount=%ld", -[CTStewieSatSmsSummaryMessage pendingSatSmsTotalCount](self, "pendingSatSmsTotalCount")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieSatSmsSummaryMessage *)self pendingSatSmsTotalCount];
  LOBYTE(v5) = v5 == [v4 pendingSatSmsTotalCount];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieSatSmsSummaryMessage *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setPendingSatSmsTotalCount:{-[CTStewieSatSmsSummaryMessage pendingSatSmsTotalCount](self, "pendingSatSmsTotalCount")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTStewieSatSmsSummaryMessage pendingSatSmsTotalCount](self forKey:{"pendingSatSmsTotalCount"), @"pendingSatSmsTotalCount"}];
}

- (CTStewieSatSmsSummaryMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CTStewieSatSmsSummaryMessage initWithPendingSatSmsTotalCount:error:](self, "initWithPendingSatSmsTotalCount:error:", [v4 decodeIntegerForKey:@"pendingSatSmsTotalCount"], 0);

  return v5;
}

@end