@interface NFCHardwareManagerInterface
+ (id)interface;
@end

@implementation NFCHardwareManagerInterface

+ (id)interface
{
  if (qword_27DE9A3B8 != -1)
  {
    dispatch_once(&qword_27DE9A3B8, &unk_284A4F430);
  }

  v3 = qword_27DE9A3B0;

  return v3;
}

@end