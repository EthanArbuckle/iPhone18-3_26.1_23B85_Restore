@interface ISEventGraph
- (ISEventGraph)init;
- (NSDate)date;
- (NSSet)componentIdentifiersBridge;
- (id)getComponentGroupBridgeWithType:(Class)a3;
- (id)getComponentGroupBridgesWithType:(Class)a3;
- (id)sieventWithInnerType:(Class)a3;
- (id)sievents;
- (id)sieventsWithComponentIdentifier:(id)a3;
- (id)sieventsWithComponentName:(int)a3;
@end

@implementation ISEventGraph

- (NSDate)date
{
  v3 = sub_23C870AE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___ISEventGraph_timestamp);
  sub_23C870A54();
  v9 = sub_23C870A84();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (ISEventGraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)sievents
{
  v2 = self;
  EventGraph.sievents()();

  sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
  v3 = sub_23C871894();

  return v3;
}

- (id)sieventsWithComponentName:(int)a3
{
  v3 = self;
  EventGraph.sievents(componentName:)();

  sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
  v4 = sub_23C871894();

  return v4;
}

- (id)sieventsWithComponentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  EventGraph.sievents(componentIdentifier:)(v4);

  sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
  v6 = sub_23C871894();

  return v6;
}

- (id)sieventWithInnerType:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = self;
  v6 = EventGraph.sievent(innerType:)(ObjCClassMetadata);

  return v6;
}

- (id)getComponentGroupBridgesWithType:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = self;
  v6 = sub_23C6029BC(ObjCClassMetadata);
  v7 = sub_23C606178(v6);

  sub_23C604D80(v7);

  type metadata accessor for ComponentGroupBridge();
  v8 = sub_23C871894();

  return v8;
}

- (id)getComponentGroupBridgeWithType:(Class)a3
{
  v4 = self;
  v5 = [(ISEventGraph *)v4 getComponentGroupBridgesWithType:a3];
  type metadata accessor for ComponentGroupBridge();
  v6 = sub_23C8718A4();

  if (v6 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x23EED7610](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;
LABEL_9:

  return v9;
}

- (NSSet)componentIdentifiersBridge
{
  v2 = self;
  v3 = sub_23C601004();
  v4 = sub_23C604FB0(v3);

  sub_23C59A590(v4);

  type metadata accessor for ComponentIdentifierBridge();
  sub_23C6063D8();
  v5 = sub_23C8719D4();

  return v5;
}

@end