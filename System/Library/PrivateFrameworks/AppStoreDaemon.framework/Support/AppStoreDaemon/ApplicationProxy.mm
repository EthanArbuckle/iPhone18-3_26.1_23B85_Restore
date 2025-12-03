@interface ApplicationProxy
+ (id)proxyForBundle:(id)bundle;
+ (id)proxyForBundleID:(id)d;
+ (id)proxyForBundleURL:(id)l;
+ (id)proxyForItemID:(id)d;
+ (id)proxyMatchingBundleID:(id)d orItemID:(id)iD;
- (ApplicationProxy)initWithBundle:(id)bundle;
- (ApplicationProxy)initWithBundleID:(id)d;
- (ApplicationProxy)initWithBundleID:(id)d allowPlaceholder:(BOOL)placeholder error:(id *)error;
- (ApplicationProxy)initWithBundlePath:(id)path;
- (ApplicationProxy)initWithBundleURL:(id)l;
- (ApplicationProxy)initWithBundleURL:(id)l allowPlaceholder:(BOOL)placeholder error:(id *)error;
- (ApplicationProxy)initWithItemID:(id)d error:(id *)error;
- (id)description;
@end

@implementation ApplicationProxy

+ (id)proxyMatchingBundleID:(id)d orItemID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    goto LABEL_17;
  }

  v7 = [[ApplicationProxy alloc] initWithBundleID:dCopy allowPlaceholder:0 error:0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  if (iDCopy)
  {
    v10 = sub_1003D0F1C(&v8->super.isa);
    if (v10 != [iDCopy longLongValue])
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

    v11 = [[ApplicationProxy alloc] initWithItemID:iDCopy error:0];
    p_isa = &v11->super.isa;
    if (v11)
    {
      v13 = v11;
    }

    v14 = sub_1003D0F60(p_isa);
    v15 = [v14 isEqualToString:dCopy];

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

- (ApplicationProxy)initWithBundleID:(id)d allowPlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  dCopy = d;
  v16 = 0;
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:placeholderCopy error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    self = sub_1003D1118(&self->super.isa, v9);
    selfCopy = self;
  }

  else if (error)
  {
    v13 = v10;
    selfCopy = 0;
    *error = v11;
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = dCopy;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ApplicationProxy)initWithBundleURL:(id)l allowPlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  lCopy = l;
  v17 = 0;
  v9 = [[LSApplicationRecord alloc] initWithURL:lCopy allowPlaceholder:placeholderCopy error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    self = sub_1003D1118(&self->super.isa, v9);
    selfCopy = self;
  }

  else if (error)
  {
    v13 = v10;
    selfCopy = 0;
    *error = v11;
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138543618;
      v19 = path;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No record found at %{public}@: %{public}@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ApplicationProxy)initWithItemID:(id)d error:(id *)error
{
  dCopy = d;
  v14 = 0;
  v7 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(dCopy error:{"unsignedLongLongValue"), &v14}];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    self = sub_1003D1118(&self->super.isa, v7);
    selfCopy = self;
  }

  else if (error)
  {
    v11 = v8;
    selfCopy = 0;
    *error = v9;
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)proxyForBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[ApplicationProxy alloc] initWithBundle:bundleCopy];

  return v4;
}

+ (id)proxyForBundleID:(id)d
{
  dCopy = d;
  v4 = [[ApplicationProxy alloc] initWithBundleID:dCopy];

  return v4;
}

+ (id)proxyForItemID:(id)d
{
  dCopy = d;
  v12 = 0;
  v4 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(dCopy error:{"unsignedLongLongValue"), &v12}];
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
        v14 = dCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = dCopy;
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

+ (id)proxyForBundleURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v4 = [[LSApplicationRecord alloc] initWithURL:lCopy allowPlaceholder:1 error:&v12];
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
        v14 = lCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = lCopy;
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

- (ApplicationProxy)initWithBundle:(id)bundle
{
  identifier = [bundle identifier];
  v5 = [(ApplicationProxy *)self initWithBundleID:identifier];

  return v5;
}

- (ApplicationProxy)initWithBundleID:(id)d
{
  dCopy = d;
  v13 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v13];
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
        v15 = dCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = dCopy;
        v16 = 2114;
        v17 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No record found for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    selfCopy = 0;
  }

  else
  {
    self = sub_1003D1118(&self->super.isa, v5);
    selfCopy = self;
  }

  return selfCopy;
}

- (ApplicationProxy)initWithBundlePath:(id)path
{
  v4 = [NSURL fileURLWithPath:path];
  v5 = [(ApplicationProxy *)self initWithBundleURL:v4];

  return v5;
}

- (ApplicationProxy)initWithBundleURL:(id)l
{
  lCopy = l;
  v20 = 0;
  containingBundleRecord3 = [[LSApplicationRecord alloc] initWithURL:lCopy allowPlaceholder:1 error:&v20];
  v6 = v20;
  if (v6)
  {
    v7 = v6;
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v22 = lCopy;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No record found for %{public}@: %{public}@. Checking for extensions.", buf, 0x16u);
    }
  }

  if (containingBundleRecord3)
  {
    goto LABEL_6;
  }

  v19 = 0;
  v10 = [[LSApplicationExtensionRecord alloc] initWithURL:lCopy error:&v19];
  v11 = v19;
  containingBundleRecord3 = v11;
  if (v11)
  {
    if ([v11 code] == -10814 && (objc_msgSend(containingBundleRecord3, "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", NSOSStatusErrorDomain), v12, v13))
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v22 = lCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No extension record found for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = lCopy;
        v23 = 2114;
        v24 = containingBundleRecord3;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No extension record found for %{public}@: %{public}@", buf, 0x16u);
      }
    }

LABEL_18:

    selfCopy = 0;
    goto LABEL_19;
  }

  containingBundleRecord = [v10 containingBundleRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      containingBundleRecord2 = [v10 containingBundleRecord];
      *buf = 138543362;
      v22 = containingBundleRecord2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Extension record's containing bundle record not expected type: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  containingBundleRecord3 = [v10 containingBundleRecord];

LABEL_6:
  self = sub_1003D1118(&self->super.isa, containingBundleRecord3);
  selfCopy = self;
LABEL_19:

  return selfCopy;
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