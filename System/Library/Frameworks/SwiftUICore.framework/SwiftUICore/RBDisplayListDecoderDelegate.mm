@interface RBDisplayListDecoderDelegate
- (CGFont)decodedCGFontWithData:(id)data error:(id *)error;
- (_TtC7SwiftUI28RBDisplayListDecoderDelegate)init;
- (id)decodedImageContentsWithData:(id)data type:(int *)type error:(id *)error;
@end

@implementation RBDisplayListDecoderDelegate

- (id)decodedImageContentsWithData:(id)data type:(int *)type error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  RBDisplayListDecoderDelegate.decodedImageContents(data:type:)(v9, v11, type);
  v13 = v12;

  outlined consume of Data._Representation(v9, v11);

  return v13;
}

- (CGFont)decodedCGFontWithData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  outlined copy of Data._Representation(v7, v9);
  ProtobufDecoder.init(_:)(v7, v9, v14);
  v10 = *&selfCopy->decoder[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 40];

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