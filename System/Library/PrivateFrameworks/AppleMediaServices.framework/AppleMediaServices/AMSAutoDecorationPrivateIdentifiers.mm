@interface AMSAutoDecorationPrivateIdentifiers
+ (id)autoDecorationDictionaryForEvent:(id)a3 privateIdentifiers:(id)a4;
- (AMSAutoDecorationPrivateIdentifiers)initWithBeginDate:(id)a3 identifiers:(id)a4;
- (NSDate)beginDate;
@end

@implementation AMSAutoDecorationPrivateIdentifiers

- (NSDate)beginDate
{
  v3 = sub_192F95CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_192BE9778();

  v9 = sub_192F95C4C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (AMSAutoDecorationPrivateIdentifiers)initWithBeginDate:(id)a3 identifiers:(id)a4
{
  v4 = sub_192F95CFC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F95CAC();
  v8 = sub_192F9669C();
  return sub_192BE9788(v7, v8);
}

+ (id)autoDecorationDictionaryForEvent:(id)a3 privateIdentifiers:(id)a4
{
  type metadata accessor for AMSAutoDecorationPrivateIdentifiers(a1);
  v5 = sub_192F96B0C();
  v6 = a3;
  v7 = sub_192BE98E0(v6, v5);

  if (v7)
  {
    v8 = sub_192F9667C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end