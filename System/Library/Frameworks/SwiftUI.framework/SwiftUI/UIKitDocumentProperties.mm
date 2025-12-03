@interface UIKitDocumentProperties
- (_TtC7SwiftUI23UIKitDocumentProperties)initWithTitle:(id)title iconProvider:(id)provider imageProvider:(id)imageProvider;
- (_TtC7SwiftUI23UIKitDocumentProperties)initWithURL:(id)l;
@end

@implementation UIKitDocumentProperties

- (_TtC7SwiftUI23UIKitDocumentProperties)initWithURL:(id)l
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(UIKitDocumentProperties *)&v14 initWithURL:v10];

  (*(v6 + 8))(v8, v5);
  return v12;
}

- (_TtC7SwiftUI23UIKitDocumentProperties)initWithTitle:(id)title iconProvider:(id)provider imageProvider:(id)imageProvider
{
  ObjectType = swift_getObjectType();
  if (title)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    providerCopy = provider;
    imageProviderCopy = imageProvider;
    title = MEMORY[0x18D00C850](v10, v12);
  }

  else
  {
    providerCopy2 = provider;
    imageProviderCopy2 = imageProvider;
  }

  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(UIDocumentProperties *)&v19 initWithTitle:title iconProvider:provider imageProvider:imageProvider];

  return v17;
}

@end