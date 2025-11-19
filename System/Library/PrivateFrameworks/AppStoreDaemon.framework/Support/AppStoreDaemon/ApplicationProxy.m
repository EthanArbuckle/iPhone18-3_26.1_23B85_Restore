@interface ApplicationProxy
+ (id)proxyForBundle:(id)a3;
+ (id)proxyForBundleID:(id)a3;
+ (id)proxyForBundleURL:(id)a3;
+ (id)proxyForItemID:(id)a3;
+ (id)proxyMatchingBundleID:(id)a3 orItemID:(id)a4;
- (ApplicationProxy)initWithBundle:(id)a3;
- (ApplicationProxy)initWithBundleID:(id)a3;
- (ApplicationProxy)initWithBundleID:(id)a3 allowPlaceholder:(BOOL)a4 error:(id *)a5;
- (ApplicationProxy)initWithBundlePath:(id)a3;
- (ApplicationProxy)initWithBundleURL:(id)a3;
- (ApplicationProxy)initWithBundleURL:(id)a3 allowPlaceholder:(BOOL)a4 error:(id *)a5;
- (ApplicationProxy)initWithItemID:(id)a3 error:(id *)a4;
- (id)description;
@end

@implementation ApplicationProxy

+ (id)proxyMatchingBundleID:(id)a3 orItemID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = [[ApplicationProxy alloc] initWithBundleID:v5 allowPlaceholder:0 error:0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  if (v6)
  {
    v10 = sub_1003D0F1C(&v8->super.isa);
    if (v10 != [v6 longLongValue])
    {
      p_isa = &v8->super.isa;
      goto LABEL_16;
    }

    if (!v8)
    {
LABEL_17:
      p_isa = 0;
LABEL_18:

      p_isa = 0;
      goto LABEL_19;
    }

    v11 = [[ApplicationProxy alloc] initWithItemID:v6 error:0];
    p_isa = &v11->super.isa;
    if (v11)
    {
      v13 = v11;
    }

    v14 = sub_1003D0F60(p_isa);
    v15 = [v14 isEqualToString:v5];

    if (!v15)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    p_isa = &v8->super.isa;
  }

  if (!p_isa || ([p_isa[15] isPlaceholder] & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:

  return p_isa;
}

- (ApplicationProxy)initWithBundleID:(id)a3 allowPlaceholder:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v16 = 0;
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:v6 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    self = sub_1003D1118(&self->super.isa, v9);
    v12 = self;
  }

  else if (a5)
  {
    v13 = v10;
    v12 = 0;
    *a5 = v11;
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (ApplicationProxy)initWithBundleURL:(id)a3 allowPlaceholder:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v17 = 0;
  v9 = [[LSApplicationRecord alloc] initWithURL:v8 allowPlaceholder:v6 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    self = sub_1003D1118(&self->super.isa, v9);
    v12 = self;
  }

  else if (a5)
  {
    v13 = v10;
    v12 = 0;
    *a5 = v11;
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 path];
      *buf = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No record found at %{public}@: %{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (ApplicationProxy)initWithItemID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v7 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v6 error:{"unsignedLongLongValue"), &v14}];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    self = sub_1003D1118(&self->super.isa, v7);
    v10 = self;
  }

  else if (a4)
  {
    v11 = v8;
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)proxyForBundle:(id)a3
{
  v3 = a3;
  v4 = [[ApplicationProxy alloc] initWithBundle:v3];

  return v4;
}

+ (id)proxyForBundleID:(id)a3
{
  v3 = a3;
  v4 = [[ApplicationProxy alloc] initWithBundleID:v3];

  return v4;
}

+ (id)proxyForItemID:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v3 error:{"unsignedLongLongValue"), &v12}];
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] == -10814 && (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", NSOSStatusErrorDomain), v7, v8))
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = v3;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = sub_1003D1118([ApplicationProxy alloc], v4);
  }

  return v10;
}

+ (id)proxyForBundleURL:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [[LSApplicationRecord alloc] initWithURL:v3 allowPlaceholder:1 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] == -10814 && (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", NSOSStatusErrorDomain), v7, v8))
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = v3;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = sub_1003D1118([ApplicationProxy alloc], v4);
  }

  return v10;
}

- (ApplicationProxy)initWithBundle:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(ApplicationProxy *)self initWithBundleID:v4];

  return v5;
}

- (ApplicationProxy)initWithBundleID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == -10814 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", NSOSStatusErrorDomain), v8, v9))
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v4;
        v16 = 2114;
        v17 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v11 = 0;
  }

  else
  {
    self = sub_1003D1118(&self->super.isa, v5);
    v11 = self;
  }

  return v11;
}

- (ApplicationProxy)initWithBundlePath:(id)a3
{
  v4 = [NSURL fileURLWithPath:a3];
  v5 = [(ApplicationProxy *)self initWithBundleURL:v4];

  return v5;
}

- (ApplicationProxy)initWithBundleURL:(id)a3
{
  v4 = a3;
  v20 = 0;
  v5 = [[LSApplicationRecord alloc] initWithURL:v4 allowPlaceholder:1 error:&v20];
  v6 = v20;
  if (v6)
  {
    v7 = v6;
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v22 = v4;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No record found for %{public}@: %{public}@. Checking for extensions.", buf, 0x16u);
    }
  }

  if (v5)
  {
    goto LABEL_6;
  }

  v19 = 0;
  v10 = [[LSApplicationExtensionRecord alloc] initWithURL:v4 error:&v19];
  v11 = v19;
  v5 = v11;
  if (v11)
  {
    if ([v11 code] == -10814 && (objc_msgSend(v5, "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", NSOSStatusErrorDomain), v12, v13))
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v22 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No extension record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = v4;
        v23 = 2114;
        v24 = v5;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No extension record found for %{public}@: %{public}@", buf, 0x16u);
      }
    }

LABEL_18:

    v9 = 0;
    goto LABEL_19;
  }

  v15 = [v10 containingBundleRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = [v10 containingBundleRecord];
      *buf = 138543362;
      v22 = v18;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Extension record's containing bundle record not expected type: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v5 = [v10 containingBundleRecord];

LABEL_6:
  self = sub_1003D1118(&self->super.isa, v5);
  v9 = self;
LABEL_19:

  return v9;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = ApplicationProxy;
  v3 = [(ApplicationProxy *)&v11 description];
  v4 = sub_1003D0F60(&self->super.isa);
  v5 = sub_1003D26A0(&self->super.isa);
  v6 = sub_1003D0F1C(&self->super.isa);
  v7 = sub_1003D2F7C(&self->super.isa);
  v8 = sub_1003D248C(self);
  v9 = [NSString stringWithFormat:@"%@: (%@, %@, %lld:%lld %@) ", v3, v4, v5, v6, v7, v8];

  return v9;
}

@end