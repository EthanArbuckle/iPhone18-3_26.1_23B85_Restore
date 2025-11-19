@interface RBDisplayListDecoderDelegate
- (CGFont)decodedCGFontWithData:(id)a3 error:(id *)a4;
- (_TtC7SwiftUI28RBDisplayListDecoderDelegate)init;
- (id)decodedImageContentsWithData:(id)a3 type:(int *)a4 error:(id *)a5;
@end

@implementation RBDisplayListDecoderDelegate

- (id)decodedImageContentsWithData:(id)a3 type:(int *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  RBDisplayListDecoderDelegate.decodedImageContents(data:type:)(v9, v11, a4);
  v13 = v12;

  outlined consume of Data._Representation(v9, v11);

  return v13;
}

- (CGFont)decodedCGFontWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  outlined copy of Data._Representation(v7, v9);
  ProtobufDecoder.init(_:)(v7, v9, v14);
  v10 = *&v6->decoder[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 40];

  v14[6].super.isa = v10;
  v11 = specialized CodableCGFont.init(from:)(v14);

  outlined consume of Data._Representation(v7, v9);
  isa = v14[0].super.isa;

  return v11;
}

- (_TtC7SwiftUI28RBDisplayListDecoderDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end