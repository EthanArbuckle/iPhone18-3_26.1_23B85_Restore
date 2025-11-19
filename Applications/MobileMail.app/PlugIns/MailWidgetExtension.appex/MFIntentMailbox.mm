@interface MFIntentMailbox
+ (BOOL)supportsSecureCoding;
- (MFIntentMailbox)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation MFIntentMailbox

+ (BOOL)supportsSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MFIntentMailbox.supportsSecureCoding.getter();
  return sub_10007CEB8() & 1;
}

- (MFIntentMailbox)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  if (a3)
  {
    v16 = sub_10007D868();
    v17 = v5;
    _objc_release(a3);
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
  if (a5)
  {
    v10 = sub_10007D868();
    v11 = v7;
    _objc_release(a5);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v9 = MFIntentMailbox.init(identifier:display:pronunciationHint:)(v18, v19, v14, v15, v12, v13);
  _objc_release(a4);
  return v9;
}

@end