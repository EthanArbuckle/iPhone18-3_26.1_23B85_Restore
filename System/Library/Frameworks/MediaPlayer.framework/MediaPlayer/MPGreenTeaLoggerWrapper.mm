@interface MPGreenTeaLoggerWrapper
- (MPGreenTeaLoggerWrapper)initWithAccessorName:(id)a3;
@end

@implementation MPGreenTeaLoggerWrapper

- (MPGreenTeaLoggerWrapper)initWithAccessorName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPGreenTeaLoggerWrapper;
  v5 = [(MPGreenTeaLoggerWrapper *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B34D0]) initWithAccessorName:v4];
    logger = v5->_logger;
    v5->_logger = v6;
  }

  return v5;
}

@end