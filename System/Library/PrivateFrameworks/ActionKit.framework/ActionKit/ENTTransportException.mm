@interface ENTTransportException
+ (id)exceptionWithReason:(id)reason error:(id)error;
@end

@implementation ENTTransportException

+ (id)exceptionWithReason:(id)reason error:(id)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    v14 = @"error";
    v15[0] = errorCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___ENTTransportException;
  v10 = objc_msgSendSuper2(&v13, sel_exceptionWithName_reason_userInfo_, @"TTransportException", reasonCopy, v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end