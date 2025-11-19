@interface SNSystemService
+ (id)audiomxdLaunch;
@end

@implementation SNSystemService

+ (id)audiomxdLaunch
{
  static SNSystemService.audiomxdLaunch()();
  v4[4] = nullsub_1;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C98E5C5C;
  v4[3] = &unk_1F4934DB0;
  v2 = _Block_copy(v4);

  return v2;
}

@end