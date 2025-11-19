@interface NFCHardwareManagerCallbacks
+ (id)interface;
@end

@implementation NFCHardwareManagerCallbacks

+ (id)interface
{
  if (qword_27DE9A3C8 != -1)
  {
    dispatch_once(&qword_27DE9A3C8, &unk_284A4F450);
  }

  v3 = qword_27DE9A3C0;

  return v3;
}

@end