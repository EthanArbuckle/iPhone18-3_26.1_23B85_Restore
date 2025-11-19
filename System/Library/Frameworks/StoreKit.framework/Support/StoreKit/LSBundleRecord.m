@interface LSBundleRecord
- (BOOL)sk_allowExternalLink;
- (BOOL)sk_allowExternalPurchase;
- (BOOL)sk_getTaskAllowed;
- (NSURL)lib_receiptURL;
- (NSURL)sk_advertisingAttributionReportURL;
- (id)_lib_receiptName;
@end

@implementation LSBundleRecord

- (NSURL)lib_receiptURL
{
  v3 = [(LSBundleRecord *)self dataContainerURL];
  v4 = [v3 URLByAppendingPathComponent:@"StoreKit" isDirectory:1];

  if (v4)
  {
    v5 = [(LSBundleRecord *)self _lib_receiptName];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  else
  {
    if (qword_1003D4A18 != -1)
    {
      sub_1002D1630();
    }

    v7 = qword_1003D49D0;
    if (os_log_type_enabled(qword_1003D49D0, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1644(v7, self);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_lib_receiptName
{
  if ([(LSBundleRecord *)self isProfileValidated])
  {
    v2 = @"sandboxReceipt";
  }

  else
  {
    v2 = @"receipt";
  }

  return v2;
}

- (NSURL)sk_advertisingAttributionReportURL
{
  v3 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = self;
  sub_100178B44();

  v7 = type metadata accessor for URL();
  v9 = 0;
  if (sub_100081D0C(v5, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v9;
}

- (BOOL)sk_allowExternalLink
{
  v2 = self;
  v3 = sub_100179370(4);

  return v3 & 1;
}

- (BOOL)sk_allowExternalPurchase
{
  v2 = self;
  v3 = sub_100179370(5);

  return v3 & 1;
}

- (BOOL)sk_getTaskAllowed
{
  v2 = self;
  v3 = sub_10017C008();

  return v3 & 1;
}

@end