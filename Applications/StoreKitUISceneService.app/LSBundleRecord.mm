@interface LSBundleRecord
- (BOOL)sk_allowExternalLink;
- (BOOL)sk_allowExternalPurchase;
- (BOOL)sk_getTaskAllowed;
- (NSURL)sk_advertisingAttributionReportURL;
@end

@implementation LSBundleRecord

- (NSURL)sk_advertisingAttributionReportURL
{
  v3 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  selfCopy = self;
  sub_100071470(v6);

  v8 = type metadata accessor for URL();
  v10 = 0;
  if (sub_100012898(v6, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v10;
}

- (BOOL)sk_allowExternalLink
{
  selfCopy = self;
  v3 = sub_100071D30(4);

  return v3 & 1;
}

- (BOOL)sk_allowExternalPurchase
{
  selfCopy = self;
  v3 = sub_100071D30(5);

  return v3 & 1;
}

- (BOOL)sk_getTaskAllowed
{
  selfCopy = self;
  v3 = sub_100071DCC();

  return v3 & 1;
}

@end