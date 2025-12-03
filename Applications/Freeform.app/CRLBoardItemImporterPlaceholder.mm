@interface CRLBoardItemImporterPlaceholder
+ (id)allocWithZone:(_NSZone *)zone;
- (CRLBoardItemImporterPlaceholder)initWithData:(id)data boardItemFactory:(id)factory;
- (CRLBoardItemImporterPlaceholder)initWithURL:(id)l boardItemFactory:(id)factory;
@end

@implementation CRLBoardItemImporterPlaceholder

+ (id)allocWithZone:(_NSZone *)zone
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10043EEB4;
  v5[3] = &unk_101863288;
  v5[4] = zone;
  v5[5] = self;
  if (qword_101A34F90 != -1)
  {
    dispatch_once(&qword_101A34F90, v5);
  }

  v3 = qword_101A34F88;

  return v3;
}

- (CRLBoardItemImporterPlaceholder)initWithURL:(id)l boardItemFactory:(id)factory
{
  factoryCopy = factory;
  lCopy = l;
  v8 = [objc_alloc(objc_msgSend(objc_opt_class() p_subclassForURL:{lCopy)), "initWithURL:boardItemFactory:", lCopy, factoryCopy}];

  return v8;
}

- (CRLBoardItemImporterPlaceholder)initWithData:(id)data boardItemFactory:(id)factory
{
  dataCopy = data;
  factoryCopy = factory;
  v8 = [objc_opt_class() p_subclassForPreinsertionAssetWrapper:dataCopy];
  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101374898();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013748AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101374940();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLBoardItemImporterPlaceholder initWithData:boardItemFactory:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemImporter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:372 isFatal:0 description:"invalid nil value for '%{public}s'", "instanceClass"];
  }

  v12 = [[v8 alloc] initWithData:dataCopy boardItemFactory:factoryCopy];

  return v12;
}

@end