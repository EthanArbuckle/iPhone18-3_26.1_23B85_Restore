@interface APKActivityProgress
- (APKActivityProgress)initWithCoder:(id)coder;
- (APKActivityProgress)initWithCompletedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount cancelled:(BOOL)cancelled shouldHideProgressUI:(BOOL)i;
- (APKActivityProgress)initWithProgress:(id)progress;
- (id)ns;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APKActivityProgress

- (APKActivityProgress)initWithCompletedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount cancelled:(BOOL)cancelled shouldHideProgressUI:(BOOL)i
{
  v11.receiver = self;
  v11.super_class = APKActivityProgress;
  result = [(APKActivityProgress *)&v11 init];
  if (result)
  {
    result->_completedUnitCount = count;
    result->_totalUnitCount = unitCount;
    result->_cancelled = cancelled;
    result->_shouldHideProgressUI = i;
  }

  return result;
}

- (APKActivityProgress)initWithProgress:(id)progress
{
  progressCopy = progress;
  userInfo = [progressCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HideProgressCircleInUI"];

  completedUnitCount = [progressCopy completedUnitCount];
  totalUnitCount = [progressCopy totalUnitCount];
  isCancelled = [progressCopy isCancelled];

  v10 = -[APKActivityProgress initWithCompletedUnitCount:totalUnitCount:cancelled:shouldHideProgressUI:](self, "initWithCompletedUnitCount:totalUnitCount:cancelled:shouldHideProgressUI:", completedUnitCount, totalUnitCount, isCancelled, [v6 BOOLValue]);
  return v10;
}

- (id)ns
{
  v3 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{-[APKActivityProgress totalUnitCount](self, "totalUnitCount")}];
  [v3 setCompletedUnitCount:{-[APKActivityProgress completedUnitCount](self, "completedUnitCount")}];
  if ([(APKActivityProgress *)self cancelled])
  {
    [v3 cancel];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[APKActivityProgress shouldHideProgressUI](self, "shouldHideProgressUI")}];
  [v3 setUserInfoObject:v4 forKey:@"HideProgressCircleInUI"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[APKActivityProgress completedUnitCount](self forKey:{"completedUnitCount"), @"completedUnitCount"}];
  [coderCopy encodeInt64:-[APKActivityProgress totalUnitCount](self forKey:{"totalUnitCount"), @"totalUnitCount"}];
  [coderCopy encodeBool:-[APKActivityProgress cancelled](self forKey:{"cancelled"), @"cancelled"}];
  [coderCopy encodeBool:-[APKActivityProgress shouldHideProgressUI](self forKey:{"shouldHideProgressUI"), @"shouldHideProgressUI"}];
}

- (APKActivityProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"completedUnitCount"];
  v6 = [coderCopy decodeInt64ForKey:@"totalUnitCount"];
  v7 = [coderCopy decodeBoolForKey:@"cancelled"];
  v8 = [coderCopy decodeBoolForKey:@"shouldHideProgressUI"];

  return [(APKActivityProgress *)self initWithCompletedUnitCount:v5 totalUnitCount:v6 cancelled:v7 shouldHideProgressUI:v8];
}

@end