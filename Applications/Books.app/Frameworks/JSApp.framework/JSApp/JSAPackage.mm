@interface JSAPackage
- (JSAPackage)init;
- (NSString)nameForJSContext;
- (NSString)version;
- (id)bytesAtPath:(id)a3;
- (id)dataAtPath:(id)a3;
- (id)dirAtPath:(id)a3;
- (id)localizationPathForLocale:(id)a3;
- (id)stringAtPath:(id)a3;
- (void)startEviction;
@end

@implementation JSAPackage

- (NSString)nameForJSContext
{
  v2 = *(self + OBJC_IVAR___JSAPackage_nameForJSContext);
  v3 = *(self + OBJC_IVAR___JSAPackage_nameForJSContext + 8);

  v4 = sub_8437C();

  return v4;
}

- (NSString)version
{
  type metadata accessor for BooksJetPackResourceBundle();
  sub_5CBB4(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
  v3 = self;
  sub_83FCC();

  v4 = sub_8437C();

  return v4;
}

- (id)dataAtPath:(id)a3
{
  v4 = sub_843AC();
  v5 = self;
  v6 = Package.data(atPath:)(v4);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = sub_839FC().super.isa;
    sub_3BB60(v6, v8);
    v9 = isa;
  }

  return v9;
}

- (id)bytesAtPath:(id)a3
{
  v4 = sub_843AC();
  v5 = self;
  v6 = sub_5AF90(v4);

  if (v6)
  {
    v7.super.isa = sub_8458C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)stringAtPath:(id)a3
{
  v4 = sub_843AC();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = Package.string(atPath:)(v8).value._object;

  if (object)
  {
    v10 = sub_8437C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dirAtPath:(id)a3
{
  sub_843AC();
  v4 = self;
  Package.dir(atPath:)();

  v5.super.isa = sub_8458C().super.isa;

  return v5.super.isa;
}

- (id)localizationPathForLocale:(id)a3
{
  v4 = sub_843AC();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  Package.localizationPath(forLocale:)(v8);

  v9 = sub_8437C();

  return v9;
}

- (void)startEviction
{
  v2 = self;
  Package.startEviction()();
}

- (JSAPackage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end