@interface PPTEpubGoToPagedTest
- (PPTEpubGoToPagedTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test;
@end

@implementation PPTEpubGoToPagedTest

- (PPTEpubGoToPagedTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test
{
  v9.receiver = self;
  v9.super_class = PPTEpubGoToPagedTest;
  v6 = [(PPTEpubGoToScrolledTest *)&v9 initWithName:name options:options testDefinition:definition isMainTest:test];
  v7 = v6;
  if (v6)
  {
    [(PPTEpubGoToScrolledTest *)v6 setTargetLayout:kBETestDriverEpubLayoutPaged];
  }

  return v7;
}

@end