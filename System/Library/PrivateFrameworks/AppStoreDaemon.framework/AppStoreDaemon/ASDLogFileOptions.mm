@interface ASDLogFileOptions
- (ASDLogFileOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation ASDLogFileOptions

- (ASDLogFileOptions)init
{
  v3.receiver = self;
  v3.super_class = ASDLogFileOptions;
  result = [(ASDLogFileOptions *)&v3 init];
  if (result)
  {
    *&result->_maxSizeInBytes = xmmword_1B82B0260;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ASDLogFileOptions;
  [(ASDLogFileOptions *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_directoryPath copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_fileName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v5[4] = self->_maxNumberOfLogFiles;
  v5[3] = self->_maxSizeInBytes;
  return v5;
}

@end