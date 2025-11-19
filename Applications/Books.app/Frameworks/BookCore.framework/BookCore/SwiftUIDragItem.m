@interface SwiftUIDragItem
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (_TtC8BookCore15SwiftUIDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SwiftUIDragItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = sub_1EEED4();
  v6 = sub_1EEED4();
  [v4 encodeObject:v5 forKey:v6];
}

- (_TtC8BookCore15SwiftUIDragItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2.super.isa = sub_1EEFC4().super.isa;

  return v2.super.isa;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1EEF04();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  v10 = sub_1C05AC(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v2.super.isa = sub_1EEFC4().super.isa;

  return v2.super.isa;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1EDE14();
  v10 = v9;

  v11 = sub_1EEF04();
  v13 = v12;

  swift_getObjCClassMetadata();
  v14 = static SwiftUIDragItem.object(withItemProviderData:typeIdentifier:)(v8, v10, v11, v13);

  sub_19D4D4(v8, v10);

  return v14;
}

@end