@interface Analytics
+ (void)postHashMismatchWithTaskInfo:(id)a3;
@end

@implementation Analytics

+ (void)postHashMismatchWithTaskInfo:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_1000E7C40;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000E73D4;
  v8[3] = &unk_10050D348;
  v6 = _Block_copy(v8);
  v7 = a3;

  sub_1003F2684(a1, v6, 25);

  _Block_release(v6);
}

@end