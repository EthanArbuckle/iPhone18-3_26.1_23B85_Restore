@interface CRLBoardItemImporterPlaceholder
+ (id)allocWithZone:(_NSZone *)a3;
- (CRLBoardItemImporterPlaceholder)initWithData:(id)a3 boardItemFactory:(id)a4;
- (CRLBoardItemImporterPlaceholder)initWithURL:(id)a3 boardItemFactory:(id)a4;
@end

@implementation CRLBoardItemImporterPlaceholder

+ (id)allocWithZone:(_NSZone *)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10043EEB4;
  v5[3] = &unk_101863288;
  v5[4] = a3;
  v5[5] = a1;
  if (qword_101A34F90 != -1)
  {
    dispatch_once(&qword_101A34F90, v5);
  }

  v3 = qword_101A34F88;

  return v3;
}

- (CRLBoardItemImporterPlaceholder)initWithURL:(id)a3 boardItemFactory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_msgSend(objc_opt_class() p_subclassForURL:{v7)), "initWithURL:boardItemFactory:", v7, v6}];

  return v8;
}

- (CRLBoardItemImporterPlaceholder)initWithData:(id)a3 boardItemFactory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() p_subclassForPreinsertionAssetWrapper:v6];
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

  v12 = [[v8 alloc] initWithData:v6 boardItemFactory:v7];

  return v12;
}

@end