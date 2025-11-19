@interface APKActivityProgress
- (APKActivityProgress)initWithCoder:(id)a3;
- (APKActivityProgress)initWithCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4 cancelled:(BOOL)a5 shouldHideProgressUI:(BOOL)a6;
- (APKActivityProgress)initWithProgress:(id)a3;
- (id)ns;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APKActivityProgress

- (APKActivityProgress)initWithCompletedUnitCount:(int64_t)a3 totalUnitCount:(int64_t)a4 cancelled:(BOOL)a5 shouldHideProgressUI:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = APKActivityProgress;
  result = [(APKActivityProgress *)&v11 init];
  if (result)
  {
    result->_completedUnitCount = a3;
    result->_totalUnitCount = a4;
    result->_cancelled = a5;
    result->_shouldHideProgressUI = a6;
  }

  return result;
}

- (APKActivityProgress)initWithProgress:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HideProgressCircleInUI"];

  v7 = [v4 completedUnitCount];
  v8 = [v4 totalUnitCount];
  v9 = [v4 isCancelled];

  v10 = -[APKActivityProgress initWithCompletedUnitCount:totalUnitCount:cancelled:shouldHideProgressUI:](self, "initWithCompletedUnitCount:totalUnitCount:cancelled:shouldHideProgressUI:", v7, v8, v9, [v6 BOOLValue]);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[APKActivityProgress completedUnitCount](self forKey:{"completedUnitCount"), @"completedUnitCount"}];
  [v4 encodeInt64:-[APKActivityProgress totalUnitCount](self forKey:{"totalUnitCount"), @"totalUnitCount"}];
  [v4 encodeBool:-[APKActivityProgress cancelled](self forKey:{"cancelled"), @"cancelled"}];
  [v4 encodeBool:-[APKActivityProgress shouldHideProgressUI](self forKey:{"shouldHideProgressUI"), @"shouldHideProgressUI"}];
}

- (APKActivityProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"completedUnitCount"];
  v6 = [v4 decodeInt64ForKey:@"totalUnitCount"];
  v7 = [v4 decodeBoolForKey:@"cancelled"];
  v8 = [v4 decodeBoolForKey:@"shouldHideProgressUI"];

  return [(APKActivityProgress *)self initWithCompletedUnitCount:v5 totalUnitCount:v6 cancelled:v7 shouldHideProgressUI:v8];
}

@end