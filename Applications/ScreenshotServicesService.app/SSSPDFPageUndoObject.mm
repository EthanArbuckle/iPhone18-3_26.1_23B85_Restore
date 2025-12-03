@interface SSSPDFPageUndoObject
+ (id)newPageUndoObjectWithPDFPage:(id)page index:(int64_t)index modificationInfo:(id)info;
@end

@implementation SSSPDFPageUndoObject

+ (id)newPageUndoObjectWithPDFPage:(id)page index:(int64_t)index modificationInfo:(id)info
{
  infoCopy = info;
  pageCopy = page;
  v9 = objc_alloc_init(SSSPDFPageUndoObject);
  [(SSSPDFPageUndoObject *)v9 setPage:pageCopy];

  [(SSSPDFPageUndoObject *)v9 setIndex:index];
  [(SSSPDFPageUndoObject *)v9 setModificationInfo:infoCopy];

  return v9;
}

@end