@interface CRLWPSmartField
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isEquivalentToObject:(id)object;
- (CRLWPSmartField)initWithRange:(_NSRange)range;
- (CRLWPTextSource)parentStorage;
- (_NSRange)range;
- (id)initFromSmartField:(id)field;
- (unsigned)smartFieldKind;
- (void)resetTextAttributeUUIDString;
- (void)setTextAttributeUUIDString:(id)string;
@end

@implementation CRLWPSmartField

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"It is illegal to instantiate CRLWPSmartField it is abstract" userInfo:0];;
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CRLWPSmartField;
  return objc_msgSendSuper2(&v7, "allocWithZone:", zone);
}

- (CRLWPSmartField)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = CRLWPSmartField;
  v5 = [(CRLWPSmartField *)&v10 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    textAttributeUUIDString = v5->_textAttributeUUIDString;
    v5->_textAttributeUUIDString = uUIDString;

    v5->_range.location = location;
    v5->_range.length = length;
  }

  return v5;
}

- (id)initFromSmartField:(id)field
{
  fieldCopy = field;
  v11.receiver = self;
  v11.super_class = CRLWPSmartField;
  v5 = [(CRLWPSmartField *)&v11 init];
  if (v5)
  {
    textAttributeUUIDString = [fieldCopy textAttributeUUIDString];
    textAttributeUUIDString = v5->_textAttributeUUIDString;
    v5->_textAttributeUUIDString = textAttributeUUIDString;

    parentStorage = [fieldCopy parentStorage];
    objc_storeWeak(&v5->_parentStorage, parentStorage);

    v5->_range.location = [fieldCopy range];
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
  uUIDString = [v4 UUIDString];
  [(CRLWPSmartField *)self setTextAttributeUUIDString:uUIDString];
}

- (BOOL)isEquivalentToObject:(id)object
{
  objectCopy = object;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, objectCopy);

  if (v6 == self)
  {
    v16 = 1;
  }

  else
  {
    if (objectCopy)
    {
      v7 = objc_opt_class();
      v8 = sub_100014370(v7, objectCopy);
      textAttributeUUIDString = [v8 textAttributeUUIDString];
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

      if (textAttributeUUIDString)
      {
        textAttributeUUIDString = self->_textAttributeUUIDString;
        if (textAttributeUUIDString)
        {
          v16 = [(NSString *)textAttributeUUIDString isEqualToString:textAttributeUUIDString];
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

- (void)setTextAttributeUUIDString:(id)string
{
  stringCopy = string;
  textAttributeUUIDString = self->_textAttributeUUIDString;
  p_textAttributeUUIDString = &self->_textAttributeUUIDString;
  if (textAttributeUUIDString != stringCopy)
  {
    v8 = stringCopy;
    objc_storeStrong(p_textAttributeUUIDString, string);
    stringCopy = v8;
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