@interface ENTTransportException
+ (id)exceptionWithReason:(id)a3 error:(id)a4;
@end

@implementation ENTTransportException

+ (id)exceptionWithReason:(id)a3 error:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v14 = @"error";
    v15[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___ENTTransportException;
  v10 = objc_msgSendSuper2(&v13, sel_exceptionWithName_reason_userInfo_, @"TTransportException", v6, v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end