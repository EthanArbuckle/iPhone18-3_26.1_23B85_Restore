@interface AMSURLParserInternal
+ (void)typeFor:(NSURL *)a3 bag:(AMSBagProtocol *)a4 completionHandler:(id)a5;
@end

@implementation AMSURLParserInternal

+ (void)typeFor:(NSURL *)a3 bag:(AMSBagProtocol *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  swift_unknownObjectRetain();

  sub_1928FB3BC(&unk_192FCEC40, v9);
}

@end