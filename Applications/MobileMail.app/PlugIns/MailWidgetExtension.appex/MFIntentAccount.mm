@interface MFIntentAccount
+ (BOOL)supportsSecureCoding;
- (MFIntentAccount)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation MFIntentAccount

+ (BOOL)supportsSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MFIntentMailbox.supportsSecureCoding.getter();
  return sub_10007CEB8() & 1;
}

- (MFIntentAccount)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  _objc_retain(identifier);
  _objc_retain(string);
  _objc_retain(hint);
  if (identifier)
  {
    v16 = sub_10007D868();
    v17 = v5;
    _objc_release(identifier);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v14 = sub_10007D868();
  v15 = v6;
  if (hint)
  {
    v10 = sub_10007D868();
    v11 = v7;
    _objc_release(hint);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v9 = MFIntentAccount.init(identifier:display:pronunciationHint:)(v18, v19, v14, v15, v12, v13);
  _objc_release(string);
  return v9;
}

@end