@interface MPGreenTeaLoggerWrapper
- (MPGreenTeaLoggerWrapper)initWithAccessorName:(id)name;
@end

@implementation MPGreenTeaLoggerWrapper

- (MPGreenTeaLoggerWrapper)initWithAccessorName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MPGreenTeaLoggerWrapper;
  v5 = [(MPGreenTeaLoggerWrapper *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B34D0]) initWithAccessorName:nameCopy];
    logger = v5->_logger;
    v5->_logger = v6;
  }

  return v5;
}

@end