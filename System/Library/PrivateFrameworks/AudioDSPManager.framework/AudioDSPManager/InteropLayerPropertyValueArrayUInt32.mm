@interface InteropLayerPropertyValueArrayUInt32
- (_TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32)init;
- (id)getValue;
- (id)init:(id)init;
@end

@implementation InteropLayerPropertyValueArrayUInt32

- (id)init:(id)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value) = sub_223BF468C();
  v5.receiver = self;
  v5.super_class = type metadata accessor for InteropLayerPropertyValueArrayUInt32();
  return [(InteropLayerPropertyValue *)&v5 init];
}

- (id)getValue
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32_value);

  v3 = sub_223BF467C();

  return v3;
}

- (_TtC20AudioDSPManagerSwift36InteropLayerPropertyValueArrayUInt32)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end