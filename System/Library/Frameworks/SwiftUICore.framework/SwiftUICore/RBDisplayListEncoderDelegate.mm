@interface RBDisplayListEncoderDelegate
- (BOOL)shouldEncodeFontSubset:(CGFont *)a3;
- (RBEncoderSet)encoderSet;
- (_TtC7SwiftUI28RBDisplayListEncoderDelegate)init;
- (id)encodedCGFontData:(CGFont *)a3 error:(id *)a4;
- (id)encodedFontData:(id)a3 cgFont:(CGFont *)a4 error:(id *)a5;
- (id)encodedImageData:(id)a3 error:(id *)a4;
@end

@implementation RBDisplayListEncoderDelegate

- (RBEncoderSet)encoderSet
{
  v2 = self;
  v3 = RBDisplayListEncoderDelegate.encoderSet.getter();

  return v3;
}

- (id)encodedImageData:(id)a3 error:(id *)a4
{
  var1 = a3.var1;
  v5 = *&a3.var0;
  v6 = self;
  v7 = RBDisplayListEncoderDelegate.encodedData(image:)(v5, var1);
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

- (id)encodedCGFontData:(CGFont *)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = RBDisplayListEncoderDelegate.encodedData(cgFont:)(v5);
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

- (BOOL)shouldEncodeFontSubset:(CGFont *)a3
{
  v3 = *&self->encoder[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 8];
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder);
  v7 = v3;
  v8 = *&self->encoder[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 16];
  ProtobufEncoder.archiveOptions.getter(v5);
  return (v5[0] & 0x14) != 4;
}

- (id)encodedFontData:(id)a3 cgFont:(CGFont *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
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