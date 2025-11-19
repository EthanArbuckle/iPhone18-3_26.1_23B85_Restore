@interface SSSPDFPageUndoObject
+ (id)newPageUndoObjectWithPDFPage:(id)a3 index:(int64_t)a4 modificationInfo:(id)a5;
@end

@implementation SSSPDFPageUndoObject

+ (id)newPageUndoObjectWithPDFPage:(id)a3 index:(int64_t)a4 modificationInfo:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(SSSPDFPageUndoObject);
  [(SSSPDFPageUndoObject *)v9 setPage:v8];

  [(SSSPDFPageUndoObject *)v9 setIndex:a4];
  [(SSSPDFPageUndoObject *)v9 setModificationInfo:v7];

  return v9;
}

@end