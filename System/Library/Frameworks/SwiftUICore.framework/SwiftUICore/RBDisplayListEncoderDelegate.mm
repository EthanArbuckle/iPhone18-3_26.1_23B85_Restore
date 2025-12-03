@interface RBDisplayListEncoderDelegate
- (BOOL)shouldEncodeFontSubset:(CGFont *)subset;
- (RBEncoderSet)encoderSet;
- (_TtC7SwiftUI28RBDisplayListEncoderDelegate)init;
- (id)encodedCGFontData:(CGFont *)data error:(id *)error;
- (id)encodedFontData:(id)data cgFont:(CGFont *)font error:(id *)error;
- (id)encodedImageData:(id)data error:(id *)error;
@end

@implementation RBDisplayListEncoderDelegate

- (RBEncoderSet)encoderSet
{
  selfCopy = self;
  v3 = RBDisplayListEncoderDelegate.encoderSet.getter();

  return v3;
}

- (id)encodedImageData:(id)data error:(id *)error
{
  var1 = data.var1;
  v5 = *&data.var0;
  selfCopy = self;
  v7 = RBDisplayListEncoderDelegate.encodedData(image:)(v5, var1);
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

- (id)encodedCGFontData:(CGFont *)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = RBDisplayListEncoderDelegate.encodedData(cgFont:)(dataCopy);
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

- (BOOL)shouldEncodeFontSubset:(CGFont *)subset
{
  v3 = *&self->encoder[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 8];
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder);
  v7 = v3;
  v8 = *&self->encoder[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 16];
  ProtobufEncoder.archiveOptions.getter(v5);
  return (v5[0] & 0x14) != 4;
}

- (id)encodedFontData:(id)data cgFont:(CGFont *)font error:(id *)error
{
  dataCopy = data;
  fontCopy = font;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = specialized RBDisplayListEncoderDelegate.encodedFontData(data:cgFont:)(v10, v12);
  v15 = v14;

  outlined consume of Data._Representation(v10, v12);
  v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);

  return v16.super.isa;
}

- (_TtC7SwiftUI28RBDisplayListEncoderDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end