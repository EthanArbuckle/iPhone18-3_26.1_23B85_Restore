@interface EARFullPayloadCorrector
- (void)correctPostITNOutput:(id)output withOptions:(id)options reply:(id)reply;
@end

@implementation EARFullPayloadCorrector

- (void)correctPostITNOutput:(id)output withOptions:(id)options reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = sub_100046E5C();
  v10 = v9;
  if (options)
  {
    options = sub_100046D7C();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_100010914(v8, v10, options, sub_1000110E8, v11);
}

@end