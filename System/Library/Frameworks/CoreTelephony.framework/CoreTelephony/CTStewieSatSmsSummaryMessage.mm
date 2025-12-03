@interface CTStewieSatSmsSummaryMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieSatSmsSummaryMessage)initWithCoder:(id)coder;
- (CTStewieSatSmsSummaryMessage)initWithPendingSatSmsTotalCount:(int64_t)count error:(id *)error;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieSatSmsSummaryMessage

- (CTStewieSatSmsSummaryMessage)initWithPendingSatSmsTotalCount:(int64_t)count error:(id *)error
{
  v9.receiver = self;
  v9.super_class = CTStewieSatSmsSummaryMessage;
  v5 = [(CTStewieSatSmsSummaryMessage *)&v9 init:count];
  v6 = v5;
  if (v5)
  {
    v5->_pendingSatSmsTotalCount = count;
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

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  pendingSatSmsTotalCount = [(CTStewieSatSmsSummaryMessage *)self pendingSatSmsTotalCount];
  LOBYTE(pendingSatSmsTotalCount) = pendingSatSmsTotalCount == [otherCopy pendingSatSmsTotalCount];

  return pendingSatSmsTotalCount;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieSatSmsSummaryMessage *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setPendingSatSmsTotalCount:{-[CTStewieSatSmsSummaryMessage pendingSatSmsTotalCount](self, "pendingSatSmsTotalCount")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieSatSmsSummaryMessage pendingSatSmsTotalCount](self forKey:{"pendingSatSmsTotalCount"), @"pendingSatSmsTotalCount"}];
}

- (CTStewieSatSmsSummaryMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CTStewieSatSmsSummaryMessage initWithPendingSatSmsTotalCount:error:](self, "initWithPendingSatSmsTotalCount:error:", [coderCopy decodeIntegerForKey:@"pendingSatSmsTotalCount"], 0);

  return v5;
}

@end