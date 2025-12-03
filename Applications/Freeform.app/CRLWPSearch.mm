@interface CRLWPSearch
- (CRLWPSearch)initWithString:(id)string options:(unint64_t)options hitBlock:(id)block storage:(id)storage range:(_NSRange)range searchCanvasDelegate:(id)delegate;
- (_NSRange)range;
- (_TtC8Freeform12CRLWPStorage)storage;
- (void)foundHitWithRange:(_NSRange)range;
@end

@implementation CRLWPSearch

- (CRLWPSearch)initWithString:(id)string options:(unint64_t)options hitBlock:(id)block storage:(id)storage range:(_NSRange)range searchCanvasDelegate:(id)delegate
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  blockCopy = block;
  storageCopy = storage;
  delegateCopy = delegate;
  v18 = delegateCopy;
  if (stringCopy)
  {
    if (storageCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v31 = location;
  v33 = delegateCopy;
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  v19 = length;
  if (qword_101AD5A10 != -1)
  {
    sub_1013393D0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013393E4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101339494();
  }

  v20 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v20);
  }

  v21 = [NSString stringWithUTF8String:"[CRLWPSearch initWithString:options:hitBlock:storage:range:searchCanvasDelegate:]"];
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearch.m"];
  [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:26 isFatal:0 description:"invalid nil value for '%{public}s'", "string"];

  length = v19;
  location = v31;
  v18 = v33;
  if (!storageCopy)
  {
LABEL_13:
    v32 = location;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013394BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013394E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339594();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v23);
    }

    v24 = [NSString stringWithUTF8String:"[CRLWPSearch initWithString:options:hitBlock:storage:range:searchCanvasDelegate:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSearch.m"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:27 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];

    location = v32;
  }

LABEL_22:
  v34.receiver = self;
  v34.super_class = CRLWPSearch;
  v26 = [(CRLSearch *)&v34 initWithString:stringCopy options:options hitBlock:blockCopy];
  v27 = v26;
  if (v26)
  {
    v26->_range.location = location;
    v26->_range.length = length;
    objc_storeWeak(&v26->_storage, storageCopy);
    v27->_storageChangeCount = [storageCopy changeCount];
    objc_storeStrong(&v27->_searchCanvasDelegate, delegate);
    string = [storageCopy string];
    searchedString = v27->_searchedString;
    v27->_searchedString = string;
  }

  return v27;
}

- (void)foundHitWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  searchCanvasDelegate = [(CRLWPSearch *)self searchCanvasDelegate];
  if (objc_opt_respondsToSelector())
  {
    searchCanvasDelegate2 = [(CRLWPSearch *)self searchCanvasDelegate];
    storage = [(CRLWPSearch *)self storage];
    v9 = [searchCanvasDelegate2 wpSelectionClassForStorage:storage];
  }

  else
  {
    v9 = objc_opt_class();
  }

  hitBlock = [(CRLSearch *)self hitBlock];
  storage2 = [(CRLWPSearch *)self storage];
  v11 = [v9 selectionWithRange:{location, length}];
  searchCanvasDelegate3 = [(CRLWPSearch *)self searchCanvasDelegate];
  v13 = [CRLWPSearchReference searchReferenceWithStorage:storage2 selection:v11 searchCanvasDelegate:searchCanvasDelegate3];
  hitBlock[2](hitBlock, v13);
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_TtC8Freeform12CRLWPStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end