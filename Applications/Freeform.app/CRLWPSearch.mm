@interface CRLWPSearch
- (CRLWPSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 storage:(id)a6 range:(_NSRange)a7 searchCanvasDelegate:(id)a8;
- (_NSRange)range;
- (_TtC8Freeform12CRLWPStorage)storage;
- (void)foundHitWithRange:(_NSRange)a3;
@end

@implementation CRLWPSearch

- (CRLWPSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 storage:(id)a6 range:(_NSRange)a7 searchCanvasDelegate:(id)a8
{
  length = a7.length;
  location = a7.location;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = v17;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v31 = location;
  v33 = v17;
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
  if (!v16)
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
  v26 = [(CRLSearch *)&v34 initWithString:v14 options:a4 hitBlock:v15];
  v27 = v26;
  if (v26)
  {
    v26->_range.location = location;
    v26->_range.length = length;
    objc_storeWeak(&v26->_storage, v16);
    v27->_storageChangeCount = [v16 changeCount];
    objc_storeStrong(&v27->_searchCanvasDelegate, a8);
    v28 = [v16 string];
    searchedString = v27->_searchedString;
    v27->_searchedString = v28;
  }

  return v27;
}

- (void)foundHitWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLWPSearch *)self searchCanvasDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(CRLWPSearch *)self searchCanvasDelegate];
    v8 = [(CRLWPSearch *)self storage];
    v9 = [v7 wpSelectionClassForStorage:v8];
  }

  else
  {
    v9 = objc_opt_class();
  }

  v14 = [(CRLSearch *)self hitBlock];
  v10 = [(CRLWPSearch *)self storage];
  v11 = [v9 selectionWithRange:{location, length}];
  v12 = [(CRLWPSearch *)self searchCanvasDelegate];
  v13 = [CRLWPSearchReference searchReferenceWithStorage:v10 selection:v11 searchCanvasDelegate:v12];
  v14[2](v14, v13);
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