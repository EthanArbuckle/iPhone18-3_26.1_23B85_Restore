@interface NSKeyedArchiver
+ (id)crl_securelyArchiveRoot:(id)a3;
@end

@implementation NSKeyedArchiver

+ (id)crl_securelyArchiveRoot:(id)a3
{
  v3 = a3;
  v20 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v20];
  v5 = v20;
  if (!v4)
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C968();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v15 = v7;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v5 domain];
      v19 = [v5 code];
      *buf = 67111170;
      v22 = v6;
      v23 = 2082;
      v24 = "+[NSKeyedArchiver(CRLAdditions) crl_securelyArchiveRoot:]";
      v25 = 2082;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSKeyedArchiver_CRLAdditions.m";
      v27 = 1024;
      v28 = 17;
      v29 = 2112;
      v30 = v3;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      v35 = 2048;
      v36 = v19;
      v37 = 2112;
      v38 = v5;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to encode object %@: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x54u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C990();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v8, v6);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSKeyedArchiver(CRLAdditions) crl_securelyArchiveRoot:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSKeyedArchiver_CRLAdditions.m"];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v5 domain];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, v10, 17, 0, "Unable to encode object %@: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v3, v12, v13, [v5 code], v5);
  }

  return v4;
}

@end