@interface UIKitDocumentProperties
- (_TtC7SwiftUI23UIKitDocumentProperties)initWithTitle:(id)a3 iconProvider:(id)a4 imageProvider:(id)a5;
- (_TtC7SwiftUI23UIKitDocumentProperties)initWithURL:(id)a3;
@end

@implementation UIKitDocumentProperties

- (_TtC7SwiftUI23UIKitDocumentProperties)initWithURL:(id)a3
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

- (_TtC7SwiftUI23UIKitDocumentProperties)initWithTitle:(id)a3 iconProvider:(id)a4 imageProvider:(id)a5
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v13 = a4;
    v14 = a5;
    a3 = MEMORY[0x18D00C850](v10, v12);
  }

  else
  {
    v15 = a4;
    v16 = a5;
  }

  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(UIDocumentProperties *)&v19 initWithTitle:a3 iconProvider:a4 imageProvider:a5];

  return v17;
}

@end