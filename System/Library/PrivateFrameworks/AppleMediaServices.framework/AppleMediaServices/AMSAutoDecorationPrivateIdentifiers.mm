@interface AMSAutoDecorationPrivateIdentifiers
+ (id)autoDecorationDictionaryForEvent:(id)event privateIdentifiers:(id)identifiers;
- (AMSAutoDecorationPrivateIdentifiers)initWithBeginDate:(id)date identifiers:(id)identifiers;
- (NSDate)beginDate;
@end

@implementation AMSAutoDecorationPrivateIdentifiers

- (NSDate)beginDate
{
  v3 = sub_192F95CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_192BE9778();

  v9 = sub_192F95C4C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (AMSAutoDecorationPrivateIdentifiers)initWithBeginDate:(id)date identifiers:(id)identifiers
{
  v4 = sub_192F95CFC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F95CAC();
  v8 = sub_192F9669C();
  return sub_192BE9788(v7, v8);
}

+ (id)autoDecorationDictionaryForEvent:(id)event privateIdentifiers:(id)identifiers
{
  type metadata accessor for AMSAutoDecorationPrivateIdentifiers(self);
  v5 = sub_192F96B0C();
  eventCopy = event;
  v7 = sub_192BE98E0(eventCopy, v5);

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