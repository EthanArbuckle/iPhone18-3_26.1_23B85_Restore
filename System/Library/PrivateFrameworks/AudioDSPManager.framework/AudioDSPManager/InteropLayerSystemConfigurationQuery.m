@interface InteropLayerSystemConfigurationQuery
- (_TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery)init;
- (_TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery)initWithResourcePath:(id)a3 tuningBasePath:(id)a4 hardwareIdentifier:(id)a5 os:(int)a6;
@end

@implementation InteropLayerSystemConfigurationQuery

- (_TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery)initWithResourcePath:(id)a3 tuningBasePath:(id)a4 hardwareIdentifier:(id)a5 os:(int)a6
{
  v8 = sub_223BF454C();
  v10 = v9;
  v11 = sub_223BF454C();
  v13 = v12;
  v14 = sub_223BF454C();
  v15 = (self + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_resourcePath);
  *v15 = v8;
  v15[1] = v10;
  v16 = (self + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_tuningBasePath);
  *v16 = v11;
  v16[1] = v13;
  v17 = (self + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_hardwareIdentifier);
  *v17 = v14;
  v17[1] = v18;
  *(&self->super.isa + OBJC_IVAR____TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery_os) = a6;
  v20.receiver = self;
  v20.super_class = type metadata accessor for InteropLayerSystemConfigurationQuery();
  return [(InteropLayerSystemConfigurationQuery *)&v20 init];
}

- (_TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end