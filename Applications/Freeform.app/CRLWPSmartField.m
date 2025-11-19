@interface CRLWPSmartField
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEquivalentToObject:(id)a3;
- (CRLWPSmartField)initWithRange:(_NSRange)a3;
- (CRLWPTextSource)parentStorage;
- (_NSRange)range;
- (id)initFromSmartField:(id)a3;
- (unsigned)smartFieldKind;
- (void)resetTextAttributeUUIDString;
- (void)setTextAttributeUUIDString:(id)a3;
@end

@implementation CRLWPSmartField

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"It is illegal to instantiate CRLWPSmartField it is abstract" userInfo:0];;
    objc_exception_throw(v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CRLWPSmartField;
  return objc_msgSendSuper2(&v7, "allocWithZone:", a3);
}

- (CRLWPSmartField)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v10.receiver = self;
  v10.super_class = CRLWPSmartField;
  v5 = [(CRLWPSmartField *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    textAttributeUUIDString = v5->_textAttributeUUIDString;
    v5->_textAttributeUUIDString = v7;

    v5->_range.location = location;
    v5->_range.length = length;
  }

  return v5;
}

- (id)initFromSmartField:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLWPSmartField;
  v5 = [(CRLWPSmartField *)&v11 init];
  if (v5)
  {
    v6 = [v4 textAttributeUUIDString];
    textAttributeUUIDString = v5->_textAttributeUUIDString;
    v5->_textAttributeUUIDString = v6;

    v8 = [v4 parentStorage];
    objc_storeWeak(&v5->_parentStorage, v8);

    v5->_range.location = [v4 range];
    v5->_range.length = v9;
  }

  return v5;
}

- (unsigned)smartFieldKind
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101840C48);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v18 = v2;
    v19 = 2082;
    v20 = "[CRLWPSmartField smartFieldKind]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSmartField.mm";
    v23 = 1024;
    v24 = 58;
    v25 = 2114;
    v26 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101840C68);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v18 = v2;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v8 = [NSString stringWithUTF8String:"[CRLWPSmartField smartFieldKind]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSmartField.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:58 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "[CRLWPSmartField smartFieldKind]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (void)resetTextAttributeUUIDString
{
  v4 = +[NSUUID UUID];
  v3 = [v4 UUIDString];
  [(CRLWPSmartField *)self setTextAttributeUUIDString:v3];
}

- (BOOL)isEquivalentToObject:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6 == self)
  {
    v16 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = objc_opt_class();
      v8 = sub_100014370(v7, v4);
      v9 = [v8 textAttributeUUIDString];
      if (!self->_textAttributeUUIDString)
      {
        v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131F87C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131F890();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131F924();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[CRLAssertionHandler packedBacktraceString];
          sub_101314064(v12, v24, v10);
        }

        v13 = [NSString stringWithUTF8String:"[CRLWPSmartField isEquivalentToObject:]"];
        v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSmartField.mm"];
        [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:111 isFatal:0 description:"Expect to have a UUIDString."];
      }

      if (v9)
      {
        textAttributeUUIDString = self->_textAttributeUUIDString;
        if (textAttributeUUIDString)
        {
          v16 = [(NSString *)textAttributeUUIDString isEqualToString:v9];
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131F94C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131F974();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131FA08();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[CRLAssertionHandler packedBacktraceString];
          sub_101314064(v19, &v23, v17);
        }

        v20 = [NSString stringWithUTF8String:"[CRLWPSmartField isEquivalentToObject:]"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSmartField.mm"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:112 isFatal:0 description:"Expect to have a UUIDString for other object."];
      }

      v16 = 0;
      goto LABEL_28;
    }

    v16 = 0;
  }

LABEL_29:

  return v16;
}

- (void)setTextAttributeUUIDString:(id)a3
{
  v5 = a3;
  textAttributeUUIDString = self->_textAttributeUUIDString;
  p_textAttributeUUIDString = &self->_textAttributeUUIDString;
  if (textAttributeUUIDString != v5)
  {
    v8 = v5;
    objc_storeStrong(p_textAttributeUUIDString, a3);
    v5 = v8;
  }
}

- (CRLWPTextSource)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end