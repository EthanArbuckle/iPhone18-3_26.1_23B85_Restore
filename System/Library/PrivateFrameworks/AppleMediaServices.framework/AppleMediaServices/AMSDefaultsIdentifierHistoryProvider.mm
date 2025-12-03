@interface AMSDefaultsIdentifierHistoryProvider
- (id)identifierHistoryFor:(id)for;
- (void)setIdentifierHistory:(id)history for:(id)for;
@end

@implementation AMSDefaultsIdentifierHistoryProvider

- (id)identifierHistoryFor:(id)for
{
  v4 = sub_192F967CC();
  v6 = v5;
  selfCopy = self;
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

- (void)setIdentifierHistory:(id)history for:(id)for
{
  if (history)
  {
    v5 = sub_192F9669C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_192F967CC();
  v8 = v7;
  selfCopy = self;
  v12.value._rawValue = v5;
  v12.is_nil = v6;
  v10._countAndFlagsBits = v8;
  DefaultsIdentifierHistoryProvider.setIdentifierHistory(_:for:)(v12, v10);
}

@end