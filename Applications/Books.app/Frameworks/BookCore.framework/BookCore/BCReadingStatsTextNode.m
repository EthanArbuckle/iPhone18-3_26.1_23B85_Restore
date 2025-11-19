@interface BCReadingStatsTextNode
- (BCCFI)cachedCFI;
- (void)didTurnIntoFault;
@end

@implementation BCReadingStatsTextNode

- (void)didTurnIntoFault
{
  cachedCFI = self->_cachedCFI;
  self->_cachedCFI = 0;

  v4.receiver = self;
  v4.super_class = BCReadingStatsTextNode;
  [(BCReadingStatsTextNode *)&v4 didTurnIntoFault];
}

- (BCCFI)cachedCFI
{
  v3 = [(BCReadingStatsTextNode *)self cfi];
  v4 = v3;
  cachedCFI = self->_cachedCFI;
  if (cachedCFI)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v14 = 0;
    v8 = [BCCFI cfiWithString:v4 error:&v14];
    v9 = v14;
    v10 = self->_cachedCFI;
    self->_cachedCFI = v8;

    if (v9)
    {
      v11 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1EA504(v4, v9, v11);
      }
    }

    objc_autoreleasePoolPop(v7);

    cachedCFI = self->_cachedCFI;
  }

  v12 = cachedCFI;

  return cachedCFI;
}

@end