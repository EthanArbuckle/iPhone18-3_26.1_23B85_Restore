@interface AMSURLParserInternal
+ (void)typeFor:(NSURL *)for bag:(AMSBagProtocol *)bag completionHandler:(id)handler;
@end

@implementation AMSURLParserInternal

+ (void)typeFor:(NSURL *)for bag:(AMSBagProtocol *)bag completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = for;
  v9[3] = bag;
  v9[4] = v8;
  v9[5] = self;
  forCopy = for;
  swift_unknownObjectRetain();

  sub_1928FB3BC(&unk_192FCEC40, v9);
}

@end