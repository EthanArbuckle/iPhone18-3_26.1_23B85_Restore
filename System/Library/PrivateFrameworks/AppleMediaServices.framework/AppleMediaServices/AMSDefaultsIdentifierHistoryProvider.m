@interface AMSDefaultsIdentifierHistoryProvider
- (id)identifierHistoryFor:(id)a3;
- (void)setIdentifierHistory:(id)a3 for:(id)a4;
@end

@implementation AMSDefaultsIdentifierHistoryProvider

- (id)identifierHistoryFor:(id)a3
{
  v4 = sub_192F967CC();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = DefaultsIdentifierHistoryProvider.identifierHistory(for:)(v8);

  if (v9)
  {
    v10 = sub_192F9667C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setIdentifierHistory:(id)a3 for:(id)a4
{
  if (a3)
  {
    v5 = sub_192F9669C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_192F967CC();
  v8 = v7;
  v9 = self;
  v12.value._rawValue = v5;
  v12.is_nil = v6;
  v10._countAndFlagsBits = v8;
  DefaultsIdentifierHistoryProvider.setIdentifierHistory(_:for:)(v12, v10);
}

@end