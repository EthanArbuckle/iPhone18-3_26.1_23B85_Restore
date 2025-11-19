@interface ICSAriadne
+ (BOOL)shouldTraceSingposts;
+ (void)trace:(unint64_t)a3;
@end

@implementation ICSAriadne

+ (BOOL)shouldTraceSingposts
{
  if (qword_1003B0DD0 != -1)
  {
    sub_100255A80();
  }

  return byte_1003B0DC8;
}

+ (void)trace:(unint64_t)a3
{
  v3 = a3;
  if ([a1 shouldTraceSingposts])
  {

    _kdebug_trace((4 * (v3 & 0x3FFF)) | 0x2B1A0000u, 0, 0, 0, 0);
  }
}

@end