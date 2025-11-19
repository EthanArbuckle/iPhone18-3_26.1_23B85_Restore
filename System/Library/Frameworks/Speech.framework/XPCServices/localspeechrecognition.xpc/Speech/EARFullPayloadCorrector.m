@interface EARFullPayloadCorrector
- (void)correctPostITNOutput:(id)a3 withOptions:(id)a4 reply:(id)a5;
@end

@implementation EARFullPayloadCorrector

- (void)correctPostITNOutput:(id)a3 withOptions:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100046E5C();
  v10 = v9;
  if (a4)
  {
    a4 = sub_100046D7C();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_100010914(v8, v10, a4, sub_1000110E8, v11);
}

@end