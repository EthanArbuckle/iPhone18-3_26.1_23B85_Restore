@interface CRLBezierPathBooleanOperationInputPathMap
- (id).cxx_construct;
- (id)copyWithElementsInRange:(_NSRange)range;
- (id)description;
- (int64_t)inputPathIndexForOutputElementIndex:(int64_t)index outInputT:(double *)t;
@end

@implementation CRLBezierPathBooleanOperationInputPathMap

- (id)copyWithElementsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc_init(CRLBezierPathBooleanOperationInputPathMap);
  v7 = v6;
  if (v6 != self)
  {
    v6->_BOOLeanSubpathIndexToInputBezierPathIndex.__table_.__max_load_factor_ = self->_BOOLeanSubpathIndexToInputBezierPathIndex.__table_.__max_load_factor_;
    sub_10041F1F0(&v6->_BOOLeanSubpathIndexToInputBezierPathIndex.__table_.__bucket_list_.__ptr_, self->_BOOLeanSubpathIndexToInputBezierPathIndex.__table_.__first_node_.__next_, 0);
  }

  if (length)
  {
    begin = self->_points.__begin_;
    v9 = self->_points.__end_ - begin;
    if (location >= v9 >> 4)
    {
      v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136E914();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v15 = (self->_points.__end_ - self->_points.__begin_) >> 4;
        *buf = 67110402;
        *&buf[4] = v13;
        *&buf[8] = 2082;
        *&buf[10] = "[CRLBezierPathBooleanOperationInputPathMap copyWithElementsInRange:]";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm";
        v46 = 1024;
        v47 = 703;
        v48 = 2048;
        v49 = location;
        v50 = 2048;
        v51 = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Start of range (%zu) must be in bounds [0, %zu).", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136E928();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v43 = (self->_points.__end_ - self->_points.__begin_) >> 4;
      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Start of range (%zu) must be in bounds [0, %zu).", v17, v18, v19, v20, v21, v22, v23, "[CRLBezierPathBooleanOperationInputPathMap copyWithElementsInRange:]");
      v24 = [NSString stringWithUTF8String:"[CRLBezierPathBooleanOperationInputPathMap copyWithElementsInRange:]"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:703 isFatal:1 description:"Start of range (%zu) must be in bounds [0, %zu].", location, (self->_points.__end_ - self->_points.__begin_) >> 4, 703, location, v43);

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v26, v27);
    }

    else
    {
      v10 = location + length;
      if (location + length <= v9 >> 4)
      {
        memset(buf, 0, 24);
        sub_10041F844(buf, begin + 16 * location, begin + 16 * v10, (16 * length) >> 4);
        v11 = v7->_points.__begin_;
        if (v11)
        {
          v7->_points.__end_ = v11;
          operator delete(v11);
          v7->_points.__begin_ = 0;
          v7->_points.__end_ = 0;
          v7->_points.__cap_ = 0;
        }

        *&v7->_points.__begin_ = *buf;
        v7->_points.__cap_ = *&buf[16];
        return v7;
      }

      v28 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136E950();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v30 = (self->_points.__end_ - self->_points.__begin_) >> 4;
        *buf = 67110402;
        *&buf[4] = v28;
        *&buf[8] = 2082;
        *&buf[10] = "[CRLBezierPathBooleanOperationInputPathMap copyWithElementsInRange:]";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm";
        v46 = 1024;
        v47 = 704;
        v48 = 2048;
        v49 = v10;
        v50 = 2048;
        v51 = v30;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d End of range (%zu) must be in bounds [0, %zu].", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136E964();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v44 = (self->_points.__end_ - self->_points.__begin_) >> 4;
      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d End of range (%zu) must be in bounds [0, %zu].", v32, v33, v34, v35, v36, v37, v38, "[CRLBezierPathBooleanOperationInputPathMap copyWithElementsInRange:]");
      v39 = [NSString stringWithUTF8String:"[CRLBezierPathBooleanOperationInputPathMap copyWithElementsInRange:]"];
      v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:704 isFatal:1 description:"End of range (%zu) must be in bounds [0, %zu].", v10, (self->_points.__end_ - self->_points.__begin_) >> 4, 704, v10, v44];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v42);
    }

    abort();
  }

  return v7;
}

- (int64_t)inputPathIndexForOutputElementIndex:(int64_t)index outInputT:(double *)t
{
  begin = self->_points.__begin_;
  if (index >= ((self->_points.__end_ - begin) >> 4))
  {
    sub_1002637C8();
  }

  v5 = &begin[16 * index];
  v6 = *v5;
  if (t)
  {
    *t = v5[1];
    v9 = v6;
    if (v6 == -1)
    {
      *t = 0.0;
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = *v5;
    if (v6 == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v7 = sub_1000D9958(&self->_BOOLeanSubpathIndexToInputBezierPathIndex.__table_.__bucket_list_.__ptr_, &v9);
  if (!v7)
  {
    sub_1000D9CD0("unordered_map::at: key not found");
  }

  return v7[3];
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"CRLBezierPathBooleanOperationInputPathMap <%p>", self];
  elementCount = [(CRLBezierPathBooleanOperationInputPathMap *)self elementCount];
  v5 = elementCount;
  if (elementCount)
  {
    if (elementCount >= 1)
    {
      v6 = 0;
      do
      {
        v9 = 0x7FF8000000000000;
        v7 = [(CRLBezierPathBooleanOperationInputPathMap *)self inputPathIndexForOutputElementIndex:v6 outInputT:&v9];
        [v3 appendFormat:@"\n  %zu: %zu @ %f", v6++, v7, v9];
      }

      while (v5 != v6);
    }
  }

  else
  {
    [v3 appendString:@" - empty"];
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

@end