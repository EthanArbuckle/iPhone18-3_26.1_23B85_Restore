@interface PPTEpubGoToPagedTest
- (PPTEpubGoToPagedTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6;
@end

@implementation PPTEpubGoToPagedTest

- (PPTEpubGoToPagedTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = PPTEpubGoToPagedTest;
  v6 = [(PPTEpubGoToScrolledTest *)&v9 initWithName:a3 options:a4 testDefinition:a5 isMainTest:a6];
  v7 = v6;
  if (v6)
  {
    [(PPTEpubGoToScrolledTest *)v6 setTargetLayout:kBETestDriverEpubLayoutPaged];
  }

  return v7;
}

@end