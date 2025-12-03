@interface CRLCanvasSearchReference
+ (id)searchReferenceWithBoardItem:(id)item searchCanvasDelegate:(id)delegate;
+ (id)searchReferenceWithBoardItem:(id)item selectionPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (CGPoint)connectionLineUnscaledPoint;
- (CGPoint)searchReferencePoint;
- (CGRect)searchReferenceLayoutFrame;
- (CRLCanvasSearchReference)initWithBoardItem:(id)item selectionPath:(id)path;
- (NSString)description;
- (id)commandForReplacingWithString:(id)string options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)model;
- (id)selectionPath;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation CRLCanvasSearchReference

+ (id)searchReferenceWithBoardItem:(id)item searchCanvasDelegate:(id)delegate
{
  delegateCopy = delegate;
  itemCopy = item;
  v7 = [[CRLCanvasSearchReference alloc] initWithBoardItem:itemCopy selectionPath:0];

  v8 = [delegateCopy selectionPathForSearchReference:v7];

  [(CRLCanvasSearchReference *)v7 setSelectionPath:v8];

  return v7;
}

+ (id)searchReferenceWithBoardItem:(id)item selectionPath:(id)path
{
  pathCopy = path;
  itemCopy = item;
  v7 = [[CRLCanvasSearchReference alloc] initWithBoardItem:itemCopy selectionPath:pathCopy];

  return v7;
}

- (CRLCanvasSearchReference)initWithBoardItem:(id)item selectionPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = CRLCanvasSearchReference;
  v9 = [(CRLCanvasSearchReference *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mBoardItem, item);
    objc_storeStrong(&v10->mSelectionPath, path);
    v10->mRootIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11 = +[NSUUID UUID];
    mUuid = v10->mUuid;
    v10->mUuid = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  boardItem = [(CRLCanvasSearchReference *)self boardItem];
  v4 = [boardItem hash];
  uuid = [(CRLCanvasSearchReference *)self uuid];
  v6 = [uuid hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    boardItem = [(CRLCanvasSearchReference *)self boardItem];
    boardItem2 = [equalCopy boardItem];
    if ([boardItem isEqual:boardItem2])
    {
      uuid = [(CRLCanvasSearchReference *)self uuid];
      uuid2 = [equalCopy uuid];
      v9 = [uuid isEqual:uuid2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(CRLCanvasSearchReference *)self searchReferencePoint];
  v6 = v5;
  [compareCopy searchReferencePoint];
  v8 = v7;
  [(CRLCanvasSearchReference *)self searchReferencePoint];
  v10 = v9;
  v12 = v11;
  [compareCopy searchReferencePoint];
  if (v6 == v8)
  {
    if (v10 == v13)
    {
      uuid = [(CRLCanvasSearchReference *)self uuid];
      uuid2 = [compareCopy uuid];
      v21 = [uuid compare:uuid2];

      goto LABEL_11;
    }

    [(CRLCanvasSearchReference *)self searchReferencePoint];
    v18 = v17;
    [compareCopy searchReferencePoint];
    v15 = v18 < v19;
    v16 = v18 <= v19;
  }

  else
  {
    v15 = v12 < v14;
    v16 = v12 <= v14;
  }

  v20 = !v16;
  if (v15)
  {
    v21 = -1;
  }

  else
  {
    v21 = v20;
  }

LABEL_11:

  return v21;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  boardItem = [(CRLCanvasSearchReference *)self boardItem];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  boardItem2 = [(CRLCanvasSearchReference *)self boardItem];
  v9 = NSStringFromCGPoint(self->mSearchReferencePoint);
  v10 = [NSString stringWithFormat:@"<%@ %p info=<%@ %p>, frame=<%@>", v4, self, v7, boardItem2, v9];

  return v10;
}

- (id)commandForReplacingWithString:(id)string options:(unint64_t)options
{
  [CRLAssertionHandler _atomicIncrementAssertCount:string];
  if (qword_101AD5A10 != -1)
  {
    sub_10139C698();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139C6AC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139C740();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLCanvasSearchReference commandForReplacingWithString:options:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCanvasSearchReference.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:80 isFatal:0 description:"Cannot replace string on drawable"];

  return 0;
}

- (id)model
{
  boardItem = [(CRLCanvasSearchReference *)self boardItem];
  v9 = sub_1003035DC(boardItem, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLModel);

  return v9;
}

- (id)selectionPath
{
  mSelectionPath = self->mSelectionPath;
  if (!mSelectionPath)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C768();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C77C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C810();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCanvasSearchReference selectionPath]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCanvasSearchReference.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:97 isFatal:0 description:"Canvas search reference was not initialized with a selection path!"];

    mSelectionPath = self->mSelectionPath;
  }

  return mSelectionPath;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CRLCanvasSearchReference alloc] initWithBoardItem:self->mBoardItem selectionPath:self->mSelectionPath];
  [(CRLCanvasSearchReference *)self searchReferencePoint];
  [(CRLCanvasSearchReference *)v4 setSearchReferencePoint:?];
  [(CRLCanvasSearchReference *)self searchReferenceLayoutFrame];
  [(CRLCanvasSearchReference *)v4 setSearchReferenceLayoutFrame:?];
  [(CRLCanvasSearchReference *)self connectionLineUnscaledPoint];
  [(CRLCanvasSearchReference *)v4 setConnectionLineUnscaledPoint:?];
  return v4;
}

- (CGPoint)searchReferencePoint
{
  x = self->mSearchReferencePoint.x;
  y = self->mSearchReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)searchReferenceLayoutFrame
{
  x = self->mSearchReferenceLayoutFrame.origin.x;
  y = self->mSearchReferenceLayoutFrame.origin.y;
  width = self->mSearchReferenceLayoutFrame.size.width;
  height = self->mSearchReferenceLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)connectionLineUnscaledPoint
{
  x = self->mConnectionLineUnscaledPoint.x;
  y = self->mConnectionLineUnscaledPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end