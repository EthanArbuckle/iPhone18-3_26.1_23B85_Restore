uint64_t (*sub_10013BA68(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10013C038;
  }

  __break(1u);
  return result;
}

void (*sub_10013BAE8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10013BB68;
  }

  __break(1u);
  return result;
}

id sub_10013BB70()
{
  v0 = [objc_opt_self() boxWithWidth:0.0003 height:0.0003 length:0.015 chamferRadius:0.0];
  v1 = objc_opt_self();
  v2 = [v1 nodeWithGeometry:v0];

  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  [v2 position];
  [v2 setPosition:?];
  v4 = [objc_opt_self() planeWithWidth:0.005 height:0.005];
  v5 = [v1 nodeWithGeometry:v4];

  v6 = String._bridgeToObjectiveC()();
  [v5 setName:v6];

  [v5 addChildNode:v2];
  return v5;
}

void _s7Measure23SCNSegmentationDebuggerC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeye6ChangeG0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = SegmentationProcessor.DebugOptions.keyForFeature.unsafeMutableAddressor();
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_100198230(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_100018630(0, &unk_1004A7540);
        v11 = *(v3 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger_processor);
        v17 = v10;
        v12 = (*(*v11 + 608))(v16);
        sub_10013BFD4();
        v13 = static NSUserDefaults.update<A>(_:key:feature:)();
        v12(v16, 0);
        if (*SegmentationProcessor.DebugOptions.showSampledPoints.unsafeMutableAddressor() == v10)
        {
          v14 = sub_10013A2C8();
        }

        else
        {
          if (*SegmentationProcessor.DebugOptions.showUnprojectedTrail.unsafeMutableAddressor() != v10)
          {
            return;
          }

          v14 = sub_10013A3B8();
        }

        v15 = v14;
        [v14 setHidden:(v13 & 1) == 0];
      }

      else
      {
      }
    }
  }
}

id sub_10013BEE4@<X0>(void *a1@<X8>)
{
  result = SCNSegmentationDebugger.segmentedTexture.getter();
  *a1 = result;
  return result;
}

void sub_10013BF10(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture);
  *(*a2 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture) = *a1;
  v3 = v2;
}

uint64_t sub_10013BF60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013BF9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10013BFD4()
{
  result = qword_1004AAE28;
  if (!qword_1004AAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE28);
  }

  return result;
}

id sub_10013C03C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(qword_1004AB020);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);

  *(v4 + 40) = v11(KeyPath, v10);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 56) = a2;
  *(v4 + 120) = a1;
  *(v4 + 128) = a3;
  v12 = a2;
  v13 = a1;
  result = [swift_unknownObjectRetain() newDefaultLibrary];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = sub_10013C908(v13, result);
  result = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 48) = v15;
  v16 = MetalNode.init()();
  v17 = direct field offset for OverlayMetalView.scene;
  result = swift_beginAccess();
  v18 = *&v13[v17];
  if (v18)
  {
    swift_beginAccess();
    v19 = *(**(v18 + 16) + 248);

    v19(v16, 0, 1);

    swift_unknownObjectRelease();

    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10013C248(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  v5 = direct field offset for OverlayMetalView.scene;
  swift_beginAccess();
  if (!*(v4 + v5))
  {
    return;
  }

  v6 = MetalScene.makeDefaultRenderPassDescriptor()();

  if (!v6)
  {
    return;
  }

  v7 = [a1 renderCommandEncoderWithDescriptor:v6];
  if (!v7)
  {

    return;
  }

  v8 = v7;
  v9 = *(**(v2 + 40) + 144);

  v9(__src, v10);

  memcpy(__dst, __src, sizeof(__dst));
  sub_10006BE28(__dst);
  if ((__dst[432] & 1) == 0)
  {
    v13 = *&__dst[424];
    v14 = *&__dst[416];
    v15 = *&__dst[408];
    v16 = *&__dst[400];
    MinX = CGRectGetMinX(*&__dst[400]);
    v46.origin.x = v16;
    v46.origin.y = v15;
    v46.size.width = v14;
    v46.size.height = v13;
    MinY = CGRectGetMinY(v46);
    v47.origin.x = v16;
    v47.origin.y = v15;
    v47.size.width = v14;
    v47.size.height = v13;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = v16;
    v48.origin.y = v15;
    v48.size.width = v14;
    v48.size.height = v13;
    MaxY = CGRectGetMaxY(v48);
    v18.f64[0] = MaxX;
    v18.f64[1] = MaxY;
    v19.f64[0] = MinX;
    v19.f64[1] = MinY;
    v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
    swift_beginAccess();
    *(v2 + 80) = 257;
LABEL_10:
    *(v2 + 64) = v38;
    goto LABEL_11;
  }

  v11 = *(**(v2 + 40) + 144);

  v11(v43, v12);

  memcpy(__src, v43, 0x213uLL);
  sub_10006BE28(__src);
  if ((__src[49] & 1) == 0)
  {
    v20 = *&__src[48];
    v21 = *&__src[47];
    v22 = *&__src[46];
    v23 = *&__src[45];
    v39 = CGRectGetMinX(*&__src[45]);
    v49.origin.x = v23;
    v49.origin.y = v22;
    v49.size.width = v21;
    v49.size.height = v20;
    v36 = CGRectGetMinY(v49);
    v50.origin.x = v23;
    v50.origin.y = v22;
    v50.size.width = v21;
    v50.size.height = v20;
    v34 = CGRectGetMaxX(v50);
    v51.origin.x = v23;
    v51.origin.y = v22;
    v51.size.width = v21;
    v51.size.height = v20;
    v24 = CGRectGetMaxY(v51);
    v25.f64[0] = v34;
    v25.f64[1] = v24;
    v26.f64[0] = v39;
    v26.f64[1] = v36;
    v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v25);
    swift_beginAccess();
    *(v2 + 80) = 1;
    goto LABEL_10;
  }

  swift_beginAccess();
  *(v2 + 80) = 0;
LABEL_11:
  v27 = *(**(v2 + 40) + 144);

  v27(v43, v28);

  memcpy(__src, v43, 0x213uLL);
  sub_10006BE28(__src);
  if (__src[9])
  {
    swift_beginAccess();
    v29 = 0;
  }

  else
  {
    v40 = *&__src[7];
    v29 = 1;
    swift_beginAccess();
    *(v2 + 88) = vcvt_f32_f64(v40);
  }

  *(v2 + 96) = v29;
  v30 = *(**(v2 + 40) + 144);

  v30(v42, v31);

  memcpy(v43, v42, 0x213uLL);
  sub_10006BE28(v43);
  if (v43[15])
  {
    swift_beginAccess();
    v32 = 0;
  }

  else
  {
    v41 = *&v43[13];
    v32 = 1;
    swift_beginAccess();
    *(v2 + 104) = vcvt_f32_f64(v41);
  }

  *(v2 + 112) = v32;
  swift_beginAccess();
  [v8 setFragmentBytes:v2 + 64 length:64 atIndex:0];
  swift_endAccess();
  [v8 setRenderPipelineState:*(v2 + 48)];
  [v8 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:1];
  [v8 endEncoding];

  swift_unknownObjectRelease();
}

uint64_t sub_10013C748()
{

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10013C790()
{
  v0 = MetalNode.deinit();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 sub_10013C830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10013C84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10013C8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10013C908(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v5 = String._bridgeToObjectiveC()();
  v6 = [a2 newFunctionWithName:v5];

  [v4 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v7 = String._bridgeToObjectiveC()();
  v8 = [a2 newFunctionWithName:v7];

  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v4 setFragmentFunction:v8];
  swift_unknownObjectRelease();
  v9 = [v4 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  if (!v10)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  [v10 setPixelFormat:objc_msgSend(a1, "colorPixelFormat")];

  v11 = [v4 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    goto LABEL_11;
  }

  [v12 setBlendingEnabled:0];

  v13 = [a1 device];
  if (!v13)
  {

    return 0;
  }

  v18 = 0;
  v14 = [v13 newRenderPipelineStateWithDescriptor:v4 error:&v18];
  swift_unknownObjectRelease();
  v15 = v18;
  if (v14)
  {

    return v14;
  }

  v17 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10013CBA8()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10013CC44()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - v5;
  (*(*(v1 - 8) + 56))(&v9 - v5, 1, 1, v1, v4);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v7, v6, v2);
  return swift_endAccess();
}

uint64_t sub_10013CD88(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 104);
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v7, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v7, v2);
    v9 = *(v1 + *(*v1 + 112));
    dispatch thunk of Subscriber.receive(_:)();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10013CF18()
{

  sub_10013CD88(v0);
}

uint64_t sub_10013CF54()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10013CFF4()
{
  sub_10013CF54();

  return swift_deallocClassInstance();
}

uint64_t sub_10013D0E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10013D150(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UIControlSubscription();
  swift_allocObject();
  v7 = sub_10013D23C(a1, a2, a3);
  v9[3] = v6;
  v9[4] = swift_getWitnessTable();
  v9[0] = v7;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_10000FF00(v9);
}

uint64_t *sub_10013D23C(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(v5 + 104);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(v3 + v12, 1, 1, v6, v9);
  (*(v13 + 16))(v11, a1, v6);
  (v14)(v11, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(v3 + v12, v11, v7);
  swift_endAccess();
  v15 = v19;
  v16 = v20;
  *(v3 + *(*v3 + 112)) = v19;
  [v15 addTarget:v3 action:"eventHandler" forControlEvents:v16];
  return v3;
}

void sub_10013D424()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [*&v2[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label] topAnchor];
  v4 = [v2 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setActive:1];
  v28 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003D7B50;
  v7 = [v2 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v2 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v2 bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v2 topAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  v19 = [v1 leadingAnchor];
  v20 = [v0 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v6 + 64) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v6 + 72) = v24;
  v25 = [v1 topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v6 + 80) = v27;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

char *sub_10013D82C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  v11 = type metadata accessor for SecondaryLabelStackLabel();
  *&v4[v10] = [objc_allocWithZone(v11) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  *&v4[v12] = [objc_allocWithZone(v11) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  v15 = *&v13[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
  v16 = v13;
  [v15 setUserInteractionEnabled:1];
  v17 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  [*&v16[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] setUserInteractionEnabled:1];
  [v16 addSubview:*&v13[v14]];
  [v16 addSubview:*&v16[v17]];
  sub_10013D424();

  return v16;
}

char *sub_10013D9AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  v5 = type metadata accessor for SecondaryLabelStackLabel();
  *&v1[v4] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  *&v1[v6] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
    v10 = *&v7[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
    v11 = v7;
    [v10 setUserInteractionEnabled:1];
    v12 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
    [*&v11[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] setUserInteractionEnabled:1];
    [v11 addSubview:*&v8[v9]];
    [v11 addSubview:*&v11[v12]];
    sub_10013D424();
  }

  return v8;
}

id sub_10013DD44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_10013DE40();

  return v10;
}

void sub_10013DE40()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();

  v3 = OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView;
  if (!*&v0[OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView])
  {
    __break(1u);
    goto LABEL_11;
  }

  [v0 addSubview:?];
  v4 = *&v0[v3];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v0 bounds];
  [v5 setFrame:?];

  sub_1000ECDC0();
  v7 = v6;
  v9 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = Strong;
  [Strong setFont:v7];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setFont:v7];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  [v14 setTextColor:v9];

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 setTextColor:v9];
}

id sub_10013E03C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_10013DE40();
  }

  return v5;
}

id sub_10013E3A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchPassThroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *PointTrail.init(numberOfPoints:nodeCreator:)(uint64_t a1, uint64_t (*a2)(void))
{
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_pointNodes] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_minDistance] = 0;
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate] = 0;
  v2[OBJC_IVAR____TtC7Measure10PointTrail_isStarted] = 0;
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PointTrail();
  result = objc_msgSendSuper2(&v11, "init");
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a1)
    {
      v7 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
      v8 = result;
      do
      {
        v9 = a2();
        [v9 setHidden:1];
        swift_beginAccess();
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v6[v7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v6[v7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [v8 addChildNode:v10];

        --a1;
      }

      while (a1);
    }

    return v6;
  }

  return result;
}

float PointTrail.minDistance.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure10PointTrail_minDistance;
  swift_beginAccess();
  return *v1;
}

float PointTrail.minDistance.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Measure10PointTrail_minDistance);
  swift_beginAccess();
  *v3 = a1;
  result = a1 * a1;
  *(v1 + OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared) = a1 * a1;
  return result;
}

void (*PointTrail.minDistance.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7Measure10PointTrail_minDistance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10013E724;
}

void sub_10013E724(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(v3[3] + OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared) = *(v3[3] + v3[4]) * *(v3[3] + v3[4]);
  }

  free(v3);
}

float PointTrail.stretchingRate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate;
  swift_beginAccess();
  return *v1;
}

uint64_t PointTrail.stretchingRate.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t PointTrail.setStartPosition(_:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v14 = a3;
  v15 = a4;
  v12 = a1;
  v13 = a2;
  v5 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  result = swift_beginAccess();
  v7 = *(v4 + v5);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v4 + OBJC_IVAR____TtC7Measure10PointTrail_isStarted) = 1;
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v8 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {

    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      [v10 setSimdTransform:{v12.n128_f64[0], v13.n128_f64[0], v14.n128_f64[0], v15.n128_f64[0], *&v12, *&v13, *&v14, *&v15}];
      [v11 setHidden:0];
    }

    while (v8 != v9);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void PointTrail.setHeadPosition(_:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v6 = OBJC_IVAR____TtC7Measure10PointTrail_isStarted;
  v7 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  if (*(v5 + OBJC_IVAR____TtC7Measure10PointTrail_isStarted) != 1)
  {
    swift_beginAccess();
    v4 = *(v5 + v7);
    if (v4 >> 62)
    {
      goto LABEL_38;
    }

    v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_32:
    *(v5 + v6) = 1;
    return;
  }

  swift_beginAccess();
  v8 = *(v5 + v7);
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_37;
  }

  while (2)
  {
    v11 = OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared;
    v12 = (v5 + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate);
    v40 = (v5 + OBJC_IVAR____TtC7Measure10PointTrail_minDistance);
    swift_beginAccess();
    v39 = v12;
    swift_beginAccess();
    v13 = 0;
    v4 = &selRef_runAction_completion_;
    while (1)
    {
      v6 = v10 - 1;
      if (v10 <= 1)
      {
        if ((v10 != 1) | v13 & 1)
        {
          v32 = *(v5 + v7);
          if ((v32 & 0xC000000000000001) != 0)
          {

            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_42;
            }

            v33 = *(v32 + 32);
          }

          [v33 setSimdTransform:{v35.n128_f64[0], v36.n128_f64[0], v37.n128_f64[0], v38.n128_f64[0], *&v35, *&v36, *&v37, *&v38}];

          return;
        }

        v13 = 1;
        v14 = 1;
      }

      else
      {
        v14 = v10 - 1;
      }

      v15 = *(v5 + v7);
      if ((v15 & 0xC000000000000001) == 0)
      {
        break;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v15 = *(v5 + v7);
      if ((v15 & 0xC000000000000001) != 0)
      {
LABEL_18:

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_15;
      }

LABEL_13:
      if (v6 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v17 = *(v15 + 8 * v6 + 32);
LABEL_15:
      [v16 simdPosition];
      v41 = v18;
      [v17 simdPosition];
      v20 = vsubq_f32(v41, v19);
      v21 = vmulq_f32(v20, v20);
      if (*(v5 + v11) < (v21.f32[2] + vaddv_f32(*v21.f32)))
      {
        [v16 simdPosition];
        v42 = v22;
        [v17 simdTransform];
        [v16 setSimdTransform:?];
        [v17 simdPosition];
        v24 = vsubq_f32(v23, v42);
        v25 = vmulq_f32(v24, v24);
        *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
        *v25.f32 = vrsqrte_f32(v26);
        *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
        v42.i64[0] = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]).u64[0];
        [v17 simdPosition];
        [v16 setSimdPosition:{COERCE_DOUBLE(vsub_f32(v27, vmul_n_f32(*v42.f32, *v40 + (*v39 * v10))))}];
      }

      v10 = v14;
    }

    if (v10 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v10 + 32);
      if ((v15 & 0xC000000000000001) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v34 - 1;
    if (!__OFSUB__(v34, 1))
    {
      continue;
    }

    break;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (v28 >= 1)
  {

    v29 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v4 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      [v30 setSimdTransform:{v35.n128_f64[0], v36.n128_f64[0], v37.n128_f64[0], v38.n128_f64[0], *&v35, *&v36, *&v37, *&v38}];
      [v31 setHidden:0];
    }

    while (v28 != v29);

    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_10013EDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id PointTrail.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PointTrail();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013EFD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t initializeBufferWithCopyOfBuffer for PlatterState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10013F168()
{
  result = Contexts.UIKit.init()();
  qword_1004D4F18 = result;
  return result;
}

id sub_10013F188@<X0>(void *a1@<X8>)
{
  if (qword_1004A0378 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F18;
  *a1 = qword_1004D4F18;

  return v2;
}

unint64_t sub_10013F230(uint64_t a1)
{
  result = sub_10013F258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10013F258()
{
  result = qword_1004AB260;
  if (!qword_1004AB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB260);
  }

  return result;
}

uint64_t sub_10013F2AC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 32); ; i += 304)
  {
    memcpy(__src, i, 0x130uLL);
    if (__src[21])
    {
      break;
    }

    v7 = *&__src[20];
    sub_1000C1C28(__src, __dst);
    sub_1000C1C28(__src, __dst);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a2;
    v21 = *a2;
    *a2 = 0x8000000000000000;
    v10 = sub_10019851C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_1000B88C4(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_10019851C(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v20 = v10;
    sub_1000BEDAC();
    v10 = v20;
    if (v16)
    {
LABEL_3:
      v5 = v21;
      v6 = (v21[7] + 304 * v10);
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v6, __src, 0x130uLL);
      sub_1001494D8(__dst);
      goto LABEL_4;
    }

LABEL_12:
    v5 = v21;
    v21[(v10 >> 6) + 8] |= 1 << v10;
    *(v21[6] + 8 * v10) = v7;
    memcpy((v21[7] + 304 * v10), __src, 0x130uLL);
    v18 = v21[2];
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
      goto LABEL_18;
    }

    v21[2] = v19;
LABEL_4:
    *a2 = v5;
    result = sub_1001494D8(__src);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10013F49C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100198568(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000BE094();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1000C6B80(v5, v7);
  *v2 = v7;
  return v10;
}

void *sub_10013F564@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v5 = sub_10019851C(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BEDAC();
      v9 = v11[0];
    }

    memmove(a1, (*(v9 + 56) + 304 * v7), 0x130uLL);
    sub_1000C75C8(v7, v9);
    *v3 = v9;
    return nullsub_1(a1);
  }

  else
  {
    sub_10014952C(v11);
    return memcpy(a1, v11, 0x130uLL);
  }
}

uint64_t sub_10013F620()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4F20);
  sub_10001D4C4(v0, qword_1004D4F20);
  return UUID.init()();
}

uint64_t sub_10013F66C()
{
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 64);
  }

  else
  {
    v5 = *(v0 + 96);
    static DispatchQoS.userInitiated.getter();
    type metadata accessor for RectangleDetector();
    swift_allocObject();
    v4 = sub_100163FE4(v5, v3);

    *(v0 + 64) = v4;
  }

  return v4;
}

uint64_t sub_10013F754(void *a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A6F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_10000F974(&qword_1004AB478);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  *(v1 + 64) = 0;
  *(v1 + 104) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 112) = _swiftEmptyDictionarySingleton;
  *(v1 + 120) = 0;
  v10 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D5058;
  v13 = *(v10 + 272);
  swift_retain_n();
  *(v2 + 128) = v13(KeyPath, v12);
  v14 = sub_10000F974(&qword_1004A2890);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v2 + 136) = v16(v15, v12);
  v17 = sub_10000F974(&qword_1004AB458);
  v18 = swift_getKeyPath();
  v19 = *(v17 + 272);

  *(v2 + 144) = v19(v18, v12);
  v20 = swift_getKeyPath();
  v21 = *(sub_10000F974(&unk_1004A1940) + 272);

  *(v2 + 152) = v21(v20, v12);
  v22 = swift_getKeyPath();
  v23 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v2 + 160) = v23(v22, v12);
  sub_10000F974(&qword_1004AB460);
  swift_getKeyPath();
  *(v2 + 168) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB468);
  swift_getKeyPath();
  *(v2 + 176) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB470);
  swift_getKeyPath();
  *(v2 + 184) = MutableStateValue.__allocating_init(_:_:)();
  v24 = sub_10000F974(&qword_1004A2C58);
  v25 = swift_getKeyPath();
  *(v2 + 192) = (*(v24 + 272))(v25, v12);
  v26 = swift_getKeyPath();
  v27 = sub_10000F974(&qword_1004A7530);
  *(v2 + 200) = (*(v27 + 272))(v26, v12);
  type metadata accessor for WorldRectangle();
  *(v2 + 208) = OrderedDictionary.init()();
  *(v2 + 216) = v28;
  *(v2 + 224) = v29;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = _swiftEmptyArrayStorage;
  *(v2 + 272) = 768;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v2 + 280) = PassthroughSubject.init()();
  *(v2 + 96) = a1;
  v30 = a1;
  v31 = [v30 scene];
  type metadata accessor for RectangleRenderer();
  swift_allocObject();
  v32 = sub_10016ED10(v31);

  *(v2 + 72) = v32;
  v46 = &type metadata for Configurations.Default;
  v47 = &protocol witness table for Configurations.Default;
  v33 = StateObserver.init(configuration:)();

  v45 = *(sub_10013F66C() + 64);

  sub_10000F974(&qword_1004ABEB0);
  sub_10001D47C(&qword_1004AB480, &qword_1004ABEB0);
  v34 = Publisher.eraseToAnyPublisher()();

  v45 = v34;
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  v36 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v37 = Contexts.PrivateQueue.init(_:)();
    v44 = v37;
    v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = v36;
    sub_10000F974(&qword_1004AB488);
    sub_100018630(0, &qword_1004A3F00);
    sub_10001D47C(&qword_1004AB490, &qword_1004AB488);
    sub_1000F38F4();
    Publisher.receive<A>(on:options:)();
    sub_100018F04(v6, &qword_1004A6F50);

    sub_10001D47C(&qword_1004AB498, &qword_1004AB478);

    v40 = v43;
    Publisher<>.sink(receiveValue:)();

    (*(v42 + 8))(v9, v40);
    swift_beginAccess();
    sub_10000F974(&qword_1004A3270);
    sub_10001D47C(&qword_1004A3278, &qword_1004A3270);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    v41 = swift_allocObject();
    *(v41 + 16) = v33;
    *(v41 + 24) = 3;
    sub_10000F974(&unk_1004A3D70);
    swift_allocObject();

    Future.init(_:)();

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10013FFEC(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = 0;
  v143 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  v141 = *(result + 16);
  do
  {
    v134 = v4;
    while (1)
    {
      if (v3 >= v2)
      {
        goto LABEL_115;
      }

      result = memcpy(__dst, (v143 + 304 * v3), 0x130uLL);
      if (__OFADD__(v3++, 1))
      {
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (!*&__dst[0])
      {
        goto LABEL_128;
      }

      v6 = *(*&__dst[0] + 16);
      result = sub_1000C1C28(__dst, v171);
      if (v6)
      {
        v2 = 0;
        v8 = 0;
        do
        {
          v146 = v8;
          while (1)
          {
            if (v2 >= v6)
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v9 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_38;
            }

            v10 = type metadata accessor for MeasureCamera();

            StateValue.wrappedValue.getter();

            memcpy(v170, __src, sizeof(v170));
            sub_100013C4C(v170);

            StateValue.wrappedValue.getter();

            memcpy(v171, __src, sizeof(v171));
            sub_100013C4C(v171);
            v1 = v10;
            result = static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            if (qword_1004A0850 != -1)
            {
              v155 = v11;
              result = swift_once();
              v11 = v155;
            }

            v12 = (qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits);
            if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
            {
              goto LABEL_124;
            }

            if (v11 > 0.0)
            {
              v13 = v12[6];
              v14 = v12[7];
              v15 = v12[8];
              v16 = v12[9];
              CGPoint.init(_:)();
              v174.x = v17;
              v174.y = v18;
              v175.origin.x = v13;
              v175.origin.y = v14;
              v175.size.width = v15;
              v175.size.height = v16;
              result = CGRectContainsPoint(v175, v174);
              if (result)
              {
                break;
              }
            }

            ++v2;
            if (v9 == v6)
            {
              v8 = v146;
              goto LABEL_23;
            }
          }

          v8 = v146 + 1;
          if (__OFADD__(v146, 1))
          {
            goto LABEL_118;
          }

          ++v2;
        }

        while (v9 != v6);
LABEL_23:
        v2 = v141;
        if (v8 == 4)
        {
          break;
        }
      }

      result = sub_1001494D8(__dst);
      if (v3 == v2)
      {
        v4 = v134;
        goto LABEL_31;
      }
    }

    v19 = v134;
    *&v162[0] = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000A2794(0, v134[2] + 1, 1);
      v19 = *&v162[0];
    }

    v1 = v19;
    v20 = *(v19 + 16);
    v21 = *(v1 + 24);
    if (v20 >= v21 >> 1)
    {
      sub_1000A2794((v21 > 1), v20 + 1, 1);
      v1 = *&v162[0];
    }

    *(v1 + 16) = v20 + 1;
    result = memcpy((v1 + 304 * v20 + 32), __dst, 0x130uLL);
    v4 = v1;
  }

  while (v3 != v141);
LABEL_31:
  if (!v4[2])
  {
  }

  result = memcpy(__dst, v4 + 4, 0x130uLL);
  v1 = v4[2];
  if (!v1)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  sub_1000C1C28(__dst, v171);
  result = swift_isUniquelyReferenced_nonNull_native();
  v172 = v4;
  v7 = v4;
  if (result && (v1 - 1) <= v4[3] >> 1)
  {
    v22 = v4;
    goto LABEL_40;
  }

LABEL_39:
  v22 = sub_10006875C(result, v1, 1, v7);
  v172 = v22;
LABEL_40:
  sub_10006CA78(0, 1, 0);
  if (v2 != 1)
  {
    v164 = _swiftEmptyDictionarySingleton;
    v163 = _swiftEmptyDictionarySingleton;
    result = sub_10013F2AC(v22, &v164);
    v165 = __dst[15];
    v166 = __dst[16];
    v167 = __dst[17];
    v168 = __dst[18];
    if ((BYTE8(__dst[10]) & 1) == 0)
    {
      v23 = __dst[0];
      v24 = __dst[1];
      v25 = __dst[3];
      v26 = __dst[2];
      v27 = __dst[5];
      v28 = __dst[4];
      v29 = __dst[8];
      v30 = __dst[6];
      v31 = __dst[7];
      v32 = BYTE8(__dst[8]);
      v33 = DWORD1(__dst[8]);
      LOBYTE(result) = __dst[9];
      v34 = HIDWORD(__dst[8]);
      v35 = BYTE12(__dst[9]);
      v36 = *(&__dst[9] + 4);
      v37 = *&__dst[10];
      v38 = __dst[11];
      v39 = HIDWORD(__dst[10]);
      v40 = BYTE8(__dst[11]);
      v41 = DWORD1(__dst[11]);
      v42 = __dst[12];
      v43 = HIDWORD(__dst[11]);
      v44 = BYTE1(__dst[12]);
      v45 = __dst[14];
      v46 = __dst[13];
      v47 = BYTE8(__dst[14]);
      v48 = DWORD1(__dst[14]);
      do
      {
        v162[0] = v23;
        v162[1] = v24;
        v162[2] = v26;
        LOBYTE(v162[3]) = v25 & 1;
        v162[4] = v28;
        v162[5] = v27;
        v162[6] = v30;
        v162[7] = v31;
        LOBYTE(v162[8]) = v29 & 1;
        DWORD1(v162[8]) = v33;
        BYTE8(v162[8]) = v32 & 1;
        HIDWORD(v162[8]) = v34;
        LOBYTE(v162[9]) = result & 1;
        *(&v162[9] + 4) = v36;
        BYTE12(v162[9]) = v35 & 1;
        *&v162[10] = v37;
        BYTE8(v162[10]) = 0;
        HIDWORD(v162[10]) = v39;
        LOBYTE(v162[11]) = v38 & 1;
        DWORD1(v162[11]) = v41;
        BYTE8(v162[11]) = v40 & 1;
        HIDWORD(v162[11]) = v43;
        LOBYTE(v162[12]) = v42 & 1;
        BYTE1(v162[12]) = v44 & 1;
        v162[13] = v46;
        LOBYTE(v162[14]) = v45 & 1;
        DWORD1(v162[14]) = v48;
        BYTE8(v162[14]) = v47 & 1;
        v162[15] = v165;
        v162[16] = v166;
        v162[17] = v167;
        v162[18] = v168;
        memcpy(__src, v162, 0x130uLL);
        sub_10000F974(&qword_1004A3E08);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1003D5360;
        memcpy((v49 + 32), v162, 0x130uLL);
        sub_1000C1C28(v162, v171);
        v50 = v163;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v171[0] = v50;
        sub_1000BC2E0(v49, isUniquelyReferenced_nonNull_native, v37);
        v163 = *&v171[0];
        v52 = sub_10016B728(v171, v37);
        if (*v53)
        {
          v54 = sub_10014A840(__src, v22);
          sub_100103CA0(v54);
        }

        result = (v52)(v171, 0);
        v55 = v163;
        if (!v163[2])
        {
          goto LABEL_119;
        }

        result = sub_10019851C(v37);
        if ((v56 & 1) == 0)
        {
          goto LABEL_120;
        }

        v57 = *(*(v55 + 56) + 8 * result);
        v58 = *(v57 + 16);
        v59 = v164;

        if (v58)
        {
          v60 = 0;
          v61 = (v57 + 32);
          do
          {
            if (v60 >= *(v57 + 16))
            {
              goto LABEL_114;
            }

            result = memcpy(v171, v61, 0x130uLL);
            if (BYTE8(v171[10]))
            {
              goto LABEL_127;
            }

            result = sub_10019851C(*&v171[10]);
            if (v62)
            {
              v63 = result;
              sub_1000C1C28(v171, v170);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              *&v161[0] = v59;
              if (!v64)
              {
                sub_1000BEDAC();
                v59 = *&v161[0];
              }

              memcpy(v170, (*(v59 + 56) + 304 * v63), 0x130uLL);
              sub_1001494D8(v170);
              sub_1000C75C8(v63, v59);
              result = sub_1001494D8(v171);
            }

            ++v60;
            v61 += 304;
          }

          while (v58 != v60);
        }

        v164 = v59;

        v65 = _swiftEmptyArrayStorage;
        v172 = _swiftEmptyArrayStorage;
        v66 = v164;
        v67 = v164 + 8;
        v68 = 1 << *(v164 + 32);
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        else
        {
          v69 = -1;
        }

        v70 = v69 & v164[8];
        v71 = (v68 + 63) >> 6;

        for (i = 0; v70; v172 = v65)
        {
LABEL_67:
          v74 = __clz(__rbit64(v70)) | (i << 6);
          v75 = *(v66[6] + 8 * v74);
          memcpy(v161, (v66[7] + 304 * v74), sizeof(v161));
          *&v171[0] = v75;
          memcpy(&v171[1], v161, 0x130uLL);
          sub_1000C1C28(v161, v170);
          sub_10006C92C(v171, v170, &qword_1004AB4A0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_10006875C(0, *(v65 + 2) + 1, 1, v65);
          }

          v76 = v65;
          v77 = *(v65 + 2);
          v78 = v76;
          v79 = *(v76 + 3);
          if (v77 >= v79 >> 1)
          {
            v78 = sub_10006875C((v79 > 1), v77 + 1, 1, v78);
          }

          v70 &= v70 - 1;
          *(v78 + 2) = v77 + 1;
          v80 = &v78[304 * v77];
          v65 = v78;
          memcpy(v80 + 32, v161, 0x130uLL);
          result = sub_1001494D8(v161);
        }

        while (1)
        {
          v73 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (v73 >= v71)
          {
            break;
          }

          v70 = v67[v73];
          ++i;
          if (v70)
          {
            i = v73;
            goto LABEL_67;
          }
        }

        if (*(v65 + 2) <= 1uLL)
        {
          v83 = sub_100149100(v55);

          v84 = 0;
          v86 = v83 + 64;
          v85 = *(v83 + 64);
          v122 = v83;
          v87 = 1 << *(v83 + 32);
          v88 = -1;
          if (v87 < 64)
          {
            v88 = ~(-1 << v87);
          }

          v89 = v88 & v85;
          v90 = (v87 + 63) >> 6;
          v91 = _swiftEmptyArrayStorage;
          v120 = v90;
          v121 = v83 + 64;
          if ((v88 & v85) == 0)
          {
            goto LABEL_82;
          }

LABEL_86:
          while (1)
          {
            v125 = v91;
            v137 = *(*(v122 + 56) + ((v84 << 9) | (8 * __clz(__rbit64(v89)))));
            v136 = *(v137 + 16);
            if (!v136)
            {
              goto LABEL_125;
            }

            v123 = (v89 - 1) & v89;
            v124 = v84;
            memcpy(v171, (v137 + 32), 0x130uLL);
            v152 = DWORD1(v171[14]);
            v93 = *(&v171[13] + 1);
            v147 = *&v171[13];
            v132 = v171[14];
            v133 = BYTE8(v171[14]);
            v135 = BYTE1(v171[12]);
            v149 = HIDWORD(v171[11]);
            v148 = v171[12];
            v151 = DWORD1(v171[11]);
            v150 = BYTE8(v171[11]);
            v94 = HIDWORD(v171[10]);
            v95 = v171[11];
            v96 = *&v171[10];
            v97 = BYTE8(v171[10]);
            v98 = *(&v171[9] + 4);
            v99 = BYTE12(v171[9]);
            v130 = v171[9];
            v131 = HIDWORD(v171[8]);
            v100 = *(&v171[8] + 1);
            v101 = BYTE8(v171[8]);
            v128 = *(&v171[7] + 1);
            v129 = *&v171[7];
            v127 = v171[8];
            v144 = v171[5];
            v145 = v171[4];
            v142 = v171[6];
            v102 = *(&v171[2] + 1);
            v126 = *&v171[2];
            v140 = v171[3];
            v138 = v171[0];
            v139 = v171[1];
            swift_bridgeObjectRetain_n();
            result = sub_1000C1C28(v171, v170);
            v103 = v152;
            v104 = v101;
            v105 = 0;
            v157 = v171[15];
            v158 = v171[16];
            v159 = v171[17];
            v160 = v171[18];
            while (1)
            {
              v170[0] = v138;
              v170[1] = v139;
              *&v170[2] = v126;
              *(&v170[2] + 1) = v102;
              LOBYTE(v170[3]) = v140 & 1;
              v170[4] = v145;
              v170[5] = v144;
              v170[6] = v142;
              *&v170[7] = v129;
              *(&v170[7] + 1) = v128;
              LOBYTE(v170[8]) = v127 & 1;
              *(&v170[8] + 1) = v100;
              BYTE8(v170[8]) = v104 & 1;
              HIDWORD(v170[8]) = v131;
              LOBYTE(v170[9]) = v130 & 1;
              *(&v170[9] + 4) = v98;
              BYTE12(v170[9]) = v99 & 1;
              *&v170[10] = v96;
              BYTE8(v170[10]) = v97 & 1;
              HIDWORD(v170[10]) = v94;
              LOBYTE(v170[11]) = v95 & 1;
              DWORD1(v170[11]) = v151;
              BYTE8(v170[11]) = v150 & 1;
              HIDWORD(v170[11]) = v149;
              LOBYTE(v170[12]) = v148 & 1;
              BYTE1(v170[12]) = v135 & 1;
              *&v170[13] = v147;
              *(&v170[13] + 1) = v93;
              LOBYTE(v170[14]) = v132 & 1;
              v154 = v103;
              DWORD1(v170[14]) = v103;
              BYTE8(v170[14]) = v133 & 1;
              v170[15] = v157;
              v170[16] = v158;
              v170[17] = v159;
              v170[18] = v160;
              if (v105 == v136)
              {
                break;
              }

              if (v105 >= *(v137 + 16))
              {
                goto LABEL_117;
              }

              v107 = v104;
              result = memcpy(v161, (v137 + 32 + 304 * v105), sizeof(v161));
              if (BYTE8(v161[8]))
              {
                goto LABEL_129;
              }

              if (v107)
              {
                goto LABEL_131;
              }

              v108 = *(&v161[8] + 1);
              v106 = v105 + 1;
              if (v100 >= *(&v161[8] + 1))
              {
                v109 = v133;
                v110 = v132;
                v111 = v131;
                v112 = v129;
                v113 = v126;
                v114 = (v137 + 336 + 304 * v105);
                v115 = v130;
                while (1)
                {
                  v170[0] = v138;
                  v170[1] = v139;
                  *&v170[2] = v113;
                  *(&v170[2] + 1) = v102;
                  LOBYTE(v170[3]) = v140 & 1;
                  v170[4] = v145;
                  v170[5] = v144;
                  v170[6] = v142;
                  *&v170[7] = v112;
                  *(&v170[7] + 1) = v128;
                  LOBYTE(v170[8]) = v127 & 1;
                  *(&v170[8] + 1) = v100;
                  BYTE8(v170[8]) = 0;
                  HIDWORD(v170[8]) = v111;
                  LOBYTE(v170[9]) = v115 & 1;
                  *(&v170[9] + 4) = v98;
                  BYTE12(v170[9]) = v99 & 1;
                  *&v170[10] = v96;
                  BYTE8(v170[10]) = v97 & 1;
                  HIDWORD(v170[10]) = v94;
                  LOBYTE(v170[11]) = v95 & 1;
                  DWORD1(v170[11]) = v151;
                  BYTE8(v170[11]) = v150 & 1;
                  HIDWORD(v170[11]) = v149;
                  LOBYTE(v170[12]) = v148 & 1;
                  BYTE1(v170[12]) = v135 & 1;
                  *&v170[13] = v147;
                  *(&v170[13] + 1) = v93;
                  LOBYTE(v170[14]) = v110 & 1;
                  DWORD1(v170[14]) = v154;
                  BYTE8(v170[14]) = v109 & 1;
                  v170[15] = v157;
                  v170[16] = v158;
                  v170[17] = v159;
                  v170[18] = v160;
                  if (v136 == v106)
                  {
                    goto LABEL_101;
                  }

                  if (v106 >= *(v137 + 16))
                  {
                    goto LABEL_117;
                  }

                  result = memcpy(v161, v114, sizeof(v161));
                  if (BYTE8(v161[8]))
                  {
                    goto LABEL_129;
                  }

                  v108 = *(&v161[8] + 1);
                  if (v100 < *(&v161[8] + 1))
                  {
                    ++v106;
                    break;
                  }

                  v109 = v133;
                  v110 = v132;
                  v111 = v131;
                  v115 = v130;
                  v112 = v129;
                  v113 = v126;
                  v114 += 304;
                  ++v106;
                }
              }

              v153 = DWORD1(v161[14]);
              v93 = *(&v161[13] + 1);
              v147 = *&v161[13];
              v132 = v161[14];
              v133 = BYTE8(v161[14]);
              v135 = BYTE1(v161[12]);
              v149 = HIDWORD(v161[11]);
              v148 = v161[12];
              v151 = DWORD1(v161[11]);
              v150 = BYTE8(v161[11]);
              v94 = HIDWORD(v161[10]);
              v95 = v161[11];
              v96 = *&v161[10];
              v97 = BYTE8(v161[10]);
              v98 = *(&v161[9] + 4);
              v99 = BYTE12(v161[9]);
              v130 = v161[9];
              v131 = HIDWORD(v161[8]);
              v128 = *(&v161[7] + 1);
              v129 = *&v161[7];
              v127 = v161[8];
              v144 = v161[5];
              v145 = v161[4];
              v142 = v161[6];
              v102 = *(&v161[2] + 1);
              v126 = *&v161[2];
              v140 = v161[3];
              v138 = v161[0];
              v139 = v161[1];
              sub_1000C1C28(v161, v156);
              result = sub_1001494D8(v170);
              v104 = 0;
              v157 = v161[15];
              v158 = v161[16];
              v159 = v161[17];
              v160 = v161[18];
              v105 = v106;
              v103 = v153;
              v100 = v108;
            }

LABEL_101:
            swift_bridgeObjectRelease_n();
            v91 = v125;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v91 = sub_10006875C(0, *(v125 + 2) + 1, 1, v125);
            }

            v86 = v121;
            v84 = v124;
            v117 = *(v91 + 2);
            v116 = *(v91 + 3);
            if (v117 >= v116 >> 1)
            {
              v91 = sub_10006875C((v116 > 1), v117 + 1, 1, v91);
            }

            *(v91 + 2) = v117 + 1;
            result = memcpy(&v91[304 * v117 + 32], v170, 0x130uLL);
            v90 = v120;
            v89 = v123;
            if (!v123)
            {
LABEL_82:
              while (1)
              {
                v92 = v84 + 1;
                if (__OFADD__(v84, 1))
                {
                  goto LABEL_123;
                }

                if (v92 >= v90)
                {

                  sub_1001494D8(v162);
                  v118 = *(v91 + 2);
                  if (v118)
                  {
                    v119 = v91 + 32;
                    do
                    {
                      memcpy(v171, v119, 0x130uLL);
                      sub_1000C1C28(v171, v170);
                      sub_100144940(v171);
                      sub_1001494D8(v171);
                      v119 += 304;
                      --v118;
                    }

                    while (v118);
                  }
                }

                v89 = *(v86 + 8 * v92);
                ++v84;
                if (v89)
                {
                  v84 = v92;
                  goto LABEL_86;
                }
              }
            }
          }
        }

        result = sub_1001494D8(v162);
        if (!*(v65 + 2))
        {
          goto LABEL_121;
        }

        result = memcpy(v171, v65 + 32, 0x130uLL);
        v81 = *(v65 + 2);
        if (!v81)
        {
          goto LABEL_122;
        }

        sub_1000C1C28(v171, v170);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v65;
        if (v82 && (v81 - 1) <= *(v65 + 3) >> 1)
        {
          v22 = v65;
        }

        else
        {
          v22 = sub_10006875C(v82, v81, 1, v65);
          v172 = v22;
        }

        sub_10006CA78(0, 1, 0);
        v48 = DWORD1(v171[14]);
        v47 = BYTE8(v171[14]);
        v46 = v171[13];
        v45 = v171[14];
        v44 = BYTE1(v171[12]);
        v43 = HIDWORD(v171[11]);
        v42 = v171[12];
        v41 = DWORD1(v171[11]);
        v40 = BYTE8(v171[11]);
        v39 = HIDWORD(v171[10]);
        v38 = v171[11];
        v37 = *&v171[10];
        v36 = *(&v171[9] + 4);
        v35 = BYTE12(v171[9]);
        v34 = HIDWORD(v171[8]);
        result = LOBYTE(v171[9]);
        v33 = DWORD1(v171[8]);
        v32 = BYTE8(v171[8]);
        v29 = v171[8];
        v28 = v171[4];
        v27 = v171[5];
        v31 = v171[7];
        v30 = v171[6];
        v26 = v171[2];
        v25 = v171[3];
        v24 = v171[1];
        v23 = v171[0];
        v165 = v171[15];
        v166 = v171[16];
        v167 = v171[17];
        v168 = v171[18];
      }

      while ((BYTE8(v171[10]) & 1) == 0);
    }

LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    return result;
  }

  sub_100144940(__dst);
  sub_1001494D8(__dst);
}

void sub_100141134()
{
  v1 = v0;
  *(v0 + 64) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 112) = _swiftEmptyDictionarySingleton;
  *(v0 + 120) = 0;
  v2 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 128) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A2890);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 136) = v8(v7, v4);
  v9 = sub_10000F974(&qword_1004AB458);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(v1 + 144) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A1940) + 272);

  *(v1 + 152) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + 160) = v15(v14, v4);
  sub_10000F974(&qword_1004AB460);
  swift_getKeyPath();
  *(v1 + 168) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB468);
  swift_getKeyPath();
  *(v1 + 176) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB470);
  swift_getKeyPath();
  *(v1 + 184) = MutableStateValue.__allocating_init(_:_:)();
  v16 = sub_10000F974(&qword_1004A2C58);
  v17 = swift_getKeyPath();
  *(v1 + 192) = (*(v16 + 272))(v17, v4);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&qword_1004A7530);
  *(v1 + 200) = (*(v19 + 272))(v18, v4);
  type metadata accessor for WorldRectangle();
  *(v1 + 208) = OrderedDictionary.init()();
  *(v1 + 216) = v20;
  *(v1 + 224) = v21;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = _swiftEmptyArrayStorage;
  *(v1 + 272) = 768;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v1 + 280) = PassthroughSubject.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100141544(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 == 2)
    {
      sub_10013F66C();
      v7 = 0.5;
    }

    else
    {
      sub_10013F66C();
      v7 = 1.0;
    }

    sub_10015D478(v7);
  }

  else
  {
    sub_10013F66C();
    sub_10015D790();
  }

  *(a3 + 273) = a4;
  v9 = 0;
  return a1(&v9);
}

uint64_t sub_1001415EC()
{

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + 152) + 200);

  v3 = v1(v2);

  (*(*v3 + 296))(sub_1001494A0, v0);

  StateValue.ifUpdated(_:)();
}

unsigned __int8 *sub_100141718(unsigned __int8 *result, uint64_t a2)
{
  v2 = result[3];
  if (v2 != *(a2 + 272))
  {
    v3 = *(a2 + 72);
    v5 = objc_opt_self();
    [v5 begin];
    v6 = 1.0;
    if (v2)
    {
      v6 = 0.0;
    }

    [*(v3 + 72) setOpacity:v6];
    result = [v5 commit];
    *(a2 + 272) = v2;
  }

  return result;
}

id sub_1001417A4(uint64_t a1)
{
  v3 = type metadata accessor for ARCamera.TrackingState();
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionState();
  sub_10004046C(a1 + *(v6 + 20), v5);
  v7 = type metadata accessor for ARCamera.TrackingState.Reason();
  result = (*(*(v7 - 8) + 48))(v5, 2, v7);
  if (result)
  {
    if (result != 1)
    {
      v9 = *(**(v1 + 152) + 144);

      v9(&v16, v10);

      if ((v16 & 0x1000000) == 0 && *(v1 + 272) == 1)
      {
        v11 = *(v1 + 72);
        v12 = objc_opt_self();
        [v12 begin];
        [*(v11 + 72) setOpacity:1.0];
        result = [v12 commit];
        *(v1 + 272) = 0;
      }

      return result;
    }
  }

  else
  {
    result = sub_10002627C(v5);
  }

  if ((*(v1 + 272) & 1) == 0)
  {
    v13 = *(v1 + 72);
    v14 = objc_opt_self();
    [v14 begin];
    [*(v13 + 72) setOpacity:0.0];
    result = [v14 commit];
    *(v1 + 272) = 1;
  }

  return result;
}

uint64_t sub_100141984()
{
  v1 = v0;
  swift_beginAccess();
  type metadata accessor for WorldRectangle();

  v2 = OrderedDictionary.values.getter();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v5) + 0xD0))() == 6)
      {

        (*((swift_isaMask & *v6) + 0x2E0))(v8);

        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

LABEL_17:
  swift_beginAccess();
  v9 = *(v1 + 112);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v34 = v14;
  v32 = v9 + 64;
  v33 = v9;
  while (v13)
  {
    v17 = v16;
LABEL_27:
    result = memcpy(__dst, (*(v9 + 56) + 304 * (__clz(__rbit64(v13)) | (v17 << 6))), 0x130uLL);
    v18 = __dst[0];
    if (!__dst[0])
    {
      goto LABEL_51;
    }

    v13 &= v13 - 1;
    v19 = *(__dst[0] + 16);
    result = sub_1000C1C28(__dst, v39);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v35 = v21;
        while (1)
        {
          if (v20 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          type metadata accessor for MeasureCamera();

          StateValue.wrappedValue.getter();

          memcpy(v38, __src, sizeof(v38));
          sub_100013C4C(v38);

          StateValue.wrappedValue.getter();

          memcpy(v39, __src, sizeof(v39));
          sub_100013C4C(v39);
          result = static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          if (qword_1004A0850 != -1)
          {
            v36 = v22;
            result = swift_once();
            v22 = v36;
          }

          v23 = (qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits);
          if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
          {
            goto LABEL_50;
          }

          if (v22 > 0.0)
          {
            v24 = v23[6];
            v25 = v23[7];
            v26 = v23[8];
            v27 = v23[9];
            CGPoint.init(_:)();
            v41.x = v28;
            v41.y = v29;
            v42.origin.x = v24;
            v42.origin.y = v25;
            v42.size.width = v26;
            v42.size.height = v27;
            result = CGRectContainsPoint(v42, v41);
            if (result)
            {
              break;
            }
          }

          if (v19 == ++v20)
          {
            v21 = v35;
            goto LABEL_43;
          }
        }

        v21 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_49;
        }
      }

      while (v19 - 1 != v20++);
LABEL_43:
      v10 = v32;
      v9 = v33;
      if (v21 >= 2)
      {
        result = sub_1001494D8(__dst);
        goto LABEL_21;
      }
    }

    if (__dst[21])
    {
      goto LABEL_52;
    }

    v31 = *&__dst[20];
    swift_beginAccess();
    sub_10013F564(v39, v31);
    swift_endAccess();
    sub_1001494D8(__dst);
    memcpy(v38, v39, 0x130uLL);
    result = sub_100018F04(v38, &qword_1004AA300);
LABEL_21:
    v16 = v17;
    v14 = v34;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_27;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_100141E7C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    *v7 = Contexts.PrivateQueue.init(_:)();
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    v11 = (*(v5 + 8))(v7, v4);
    if (v10)
    {
      (*((swift_isaMask & *a1) + 0x278))(v11);
      if (*(v12 + 16))
      {
        RingBuffer.subscript.getter();

        memcpy(v27, v25, sizeof(v27));
        memcpy(v26, v25, sizeof(v26));
        sub_1000C1C28(v27, v24);
        v13 = sub_1001494D8(v26);
        v14 = (*((swift_isaMask & *a1) + 0xB8))(v13);
        sub_100142224(v14, v15, v27);

        v16 = sub_1001494D8(v27);
      }

      else
      {
      }

      v17 = *((swift_isaMask & *a1) + 0xB8);
      v2[31] = v17(v16);
      v2[32] = v18;

      v20 = v17(v19);
      sub_100142478(v20, v21, 5);

      sub_100143E04(a1, sub_10014AF98, v2);

      v22 = v2[23];
      v26[0] = 2;
      v23 = *(*v22 + 392);

      v23(v26);

      sub_100143110(5);
      if (qword_1004A0350 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_9:
    sub_1001284A8(a1);
    return;
  }

  __break(1u);
}

uint64_t sub_100142224(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  swift_beginAccess();
  v9 = v3[27];
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = sub_100198230(a1, a2);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  v13 = qword_1004A0238;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(22);

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x8000000100409300;
  Log.default(_:isPrivate:)(v16, 0);

  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v14;
  v17[4] = v8;
  v18 = *((swift_isaMask & *v14) + 0x2C8);
  v19 = v14;

  v18(a3, sub_10014AACC, v17);

  sub_100143E04(v19, sub_10014AF98, v4);
}

void sub_100142478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 216);
  if (!*(v8 + 16) || (v9 = sub_100198230(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = v11;
  sub_100148CCC(a1, a2, a3);
  if (a3 <= 5)
  {
    if (a3 == 1)
    {
      v79 = *(**(v4 + 176) + 400);

      v80 = v79(&v108);
      v81 = (*((swift_isaMask & *v12) + 0xB8))();
      sub_100028A7C(v81, v82);

      v80(&v108, 0);

      v83 = *(**(v4 + 200) + 144);

      v83(&v108, v84);

      v85 = sub_1001C98F0();

      if (v85)
      {
LABEL_103:
        v97 = *(v4 + 168);
        v108 = 0x8000000000000008;
        v98 = *(*v97 + 392);

        v98(&v108);

        return;
      }

      if (qword_1004A0180 != -1)
      {
        goto LABEL_106;
      }

      while (qword_1004D4AD8)
      {

        sub_100105B08();

        type metadata accessor for WorldRectangle();

        v86 = OrderedDictionary.values.getter();

        if (v86 >> 62)
        {
          v87 = _CocoaArrayWrapper.endIndex.getter();
          if (!v87)
          {
LABEL_102:

            goto LABEL_103;
          }
        }

        else
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v87)
          {
            goto LABEL_102;
          }
        }

        v88 = 0;
        while (1)
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v88 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_105;
            }

            v89 = *(v86 + 8 * v88 + 32);
          }

          v90 = v89;
          v91 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if ((*((swift_isaMask & *v89) + 0xD0))() == 9)
          {

            v92 = *((swift_isaMask & *v90) + 0xB8);
            v93 = v90;
            v94 = v92();
            v96 = v95;

            sub_100142478(v94, v96, 5);
            goto LABEL_102;
          }

          ++v88;
          if (v91 == v87)
          {
            goto LABEL_102;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        swift_once();
      }

      goto LABEL_122;
    }

    if (a3 == 5)
    {
      swift_beginAccess();
      v13 = *(v4 + 216);
      if (*(v13 + 16))
      {
        v14 = sub_100198230(a1, a2);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 8 * v14);
          swift_endAccess();
          v17 = ((swift_isaMask & *v16) + 560);
          v18 = *((swift_isaMask & *v16) + 0x230);
          v19 = v16;
          v20 = v18();
          if ((v20 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_115;
            }

            v21 = *(v20 + 32);
          }

          v22 = v21;

          v24 = (*((swift_isaMask & *v22) + 0x250))(v23);

          if ((v24 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_117;
            }

            v25 = *(v24 + 32);
          }

          v17 = v25;

          if (qword_1004A0180 == -1)
          {
LABEL_15:
            if (!qword_1004D4AD8)
            {
LABEL_123:
              __break(1u);
              return;
            }

            v102 = v19;

            v100 = v17;
            sub_1001057DC(v17);

            type metadata accessor for WorldRectangle();

            v26 = OrderedDictionary.values.getter();

            v22 = v26;

            if (!(v26 >> 62))
            {
              v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v27)
              {
                goto LABEL_18;
              }

LABEL_118:

LABEL_119:

              return;
            }

LABEL_117:
            v27 = _CocoaArrayWrapper.endIndex.getter();
            if (v27)
            {
LABEL_18:
              v99 = v12;
              if (v27 >= 1)
              {
                v28 = 0;
                v106 = v22 & 0xC000000000000001;
                v104 = v27;
                while (1)
                {
                  if (v106)
                  {
                    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v29 = *(v22 + 8 * v28 + 32);
                  }

                  v30 = *((swift_isaMask & *v29) + 0xB8);
                  v31 = v29;
                  if (v30() == a1 && v32 == a2)
                  {
                  }

                  else
                  {
                    v34 = v22;
                    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v35)
                    {

LABEL_37:
                      v22 = v34;
                      v27 = v104;
                      goto LABEL_23;
                    }

                    v37 = (v30)(v36);
                    v39 = v38;

                    swift_beginAccess();
                    v40 = *(v4 + 216);
                    if (*(v40 + 16) && (v41 = sub_100198230(v37, v39), (v42 & 1) != 0))
                    {
                      v43 = *(*(v40 + 56) + 8 * v41);
                      swift_endAccess();
                      v44 = v43;
                      sub_100148088(v44);

                      v45 = *(v4 + 256);
                      if (!v45)
                      {
                        goto LABEL_36;
                      }
                    }

                    else
                    {
                      swift_endAccess();
                      v45 = *(v4 + 256);
                      if (!v45)
                      {
LABEL_36:

                        goto LABEL_37;
                      }
                    }

                    if (*(v4 + 248) == v37 && v45 == v39)
                    {

                      v22 = v34;
                      v27 = v104;
                    }

                    else
                    {
                      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v22 = v34;
                      v27 = v104;
                      if ((v47 & 1) == 0)
                      {
                        goto LABEL_23;
                      }
                    }

                    *(v4 + 248) = 0;
                    *(v4 + 256) = 0;
                  }

LABEL_23:
                  if (v27 == ++v28)
                  {

                    goto LABEL_119;
                  }
                }
              }

              goto LABEL_121;
            }

            goto LABEL_118;
          }

LABEL_115:
          swift_once();
          goto LABEL_15;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (a3 != 6)
  {
    goto LABEL_84;
  }

  swift_beginAccess();
  if (!*(*(v4 + 216) + 16))
  {
LABEL_83:
    swift_endAccess();
    goto LABEL_84;
  }

  sub_100198230(a1, a2);
  v49 = v48;
  swift_endAccess();
  if ((v49 & 1) == 0)
  {
LABEL_84:

    return;
  }

  v50 = *(v4 + 168);
  v108 = v12;
  v51 = *(*v50 + 392);
  v52 = v12;

  v51(&v108);

  type metadata accessor for WorldRectangle();

  v53 = OrderedDictionary.values.getter();

  if (v53 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
    if (v54)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_52:
      v101 = v52;
      if (v54 < 1)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v55 = 0;
      v103 = v53;
      v105 = v53 & 0xC000000000000001;
      v107 = v54;
      while (1)
      {
        if (v105)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v57 = *(v53 + 8 * v55 + 32);
        }

        v58 = *((swift_isaMask & *v57) + 0xB8);
        v59 = v57;
        if (v58() == a1 && v60 == a2)
        {

          v56 = v107;
        }

        else
        {
          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v62 & 1) != 0 || (v64 = (*((swift_isaMask & *v59) + 0xD0))(v63), v64 == 9))
          {

            goto LABEL_68;
          }

          if (v64 == 5)
          {
            v65 = v58();
            v67 = v66;

            sub_100142478(v65, v67, 9);

LABEL_68:

            v53 = v103;
            v56 = v107;
            goto LABEL_55;
          }

          v68 = v58();
          v70 = v69;

          swift_beginAccess();
          v71 = *(v4 + 216);
          if (*(v71 + 16) && (v72 = sub_100198230(v68, v70), (v73 & 1) != 0))
          {
            v74 = *(*(v71 + 56) + 8 * v72);
            swift_endAccess();
            v75 = v74;
            sub_100148088(v75);
          }

          else
          {
            swift_endAccess();
          }

          v56 = v107;
          v76 = *(v4 + 256);
          if (v76)
          {
            if (*(v4 + 248) == v68 && v76 == v70)
            {

              v53 = v103;
LABEL_82:
              *(v4 + 248) = 0;
              *(v4 + 256) = 0;

              goto LABEL_55;
            }

            v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v53 = v103;
            if (v78)
            {
              goto LABEL_82;
            }
          }

          else
          {

            v53 = v103;
          }
        }

LABEL_55:
        if (v56 == ++v55)
        {

          goto LABEL_112;
        }
      }
    }
  }

LABEL_112:
}

uint64_t sub_100143110(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1001494AC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046F088;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v13);
}

void *sub_100143410(void *a1)
{
  if (!a1)
  {
    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(42);

    *&__dst[0] = 0xD000000000000028;
    *(&__dst[0] + 1) = 0x8000000100409260;
    v6._countAndFlagsBits = 0xD000000000000014;
    v6._object = 0x8000000100409240;
    String.append(_:)(v6);
    v4 = 0xD000000000000028;
    v5 = 0x8000000100409260;
    goto LABEL_13;
  }

  v1 = a1;
  type metadata accessor for MeasureCamera();
  v2 = v1;

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  if (static MeasureCamera.planeTooFar(for:transform:)())
  {

    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    *&__src[0] = 0xD000000000000028;
    *(&__src[0] + 1) = 0x8000000100409260;
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x80000001004092B0;
    String.append(_:)(v3);
    v5 = *(&__src[0] + 1);
    v4 = *&__src[0];
LABEL_13:
    v8 = v5;
    Log.debug(_:isPrivate:)(*&v4, 0);

    return 0;
  }

  StateValue.wrappedValue.getter();

  memcpy(__src, v10, sizeof(__src));
  sub_100013C4C(__src);
  if (static MeasureCamera.planeTooClose(for:transform:)())
  {

    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v10[0] = 0xD000000000000028;
    v10[1] = 0x8000000100409260;
    v7._countAndFlagsBits = 0xD00000000000001BLL;
    v7._object = 0x8000000100409290;
    String.append(_:)(v7);
    v4 = v10[0];
    v5 = v10[1];
    goto LABEL_13;
  }

  return v1;
}

void sub_10014371C()
{
  v1 = v0;
  v2 = *(**(v0 + 168) + 144);

  v2(v48, v3);

  v4 = v48[0];
  v5 = *(**(v0 + 160) + 144);

  v5(v48, v6);

  v7 = v48[0];
  v8 = v48[1];
  v9 = v48[3];
  v10 = v48[2];

  v11 = sub_100143410(v9);
  if (!v11)
  {
    sub_10001B360(v4);
    goto LABEL_14;
  }

  if ((v4 & 0x8000000000000000) == 0 || (__ROR8__(v4, 3) & 0xEFFFFFFFFFFFFFFELL) != 2)
  {
    v12 = *(v1 + 72);
    v13 = *((swift_isaMask & *v11) + 0x2B0);
    v13();
    v14 = simd_float4x4.position.getter();
    (v13)(v14);
    simd_float4x4.up.getter();
    v15 = sub_100169EB8();
    v17 = v15;
    v19 = *(v1 + 80);
    v18 = *(v1 + 88);
    if (!v16)
    {
      if (!v18)
      {
        goto LABEL_17;
      }

      v20 = 0;
      goto LABEL_40;
    }

    v20 = v16;
    if (v18)
    {
      v21 = v15 == v19 && v16 == v18;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

LABEL_17:

        sub_10001B360(v4);
        return;
      }
    }

    if (!sub_100143D14(v17, v20))
    {
      swift_beginAccess();
      v22 = *(v12 + 24);
      if (*(v22 + 16) && (v23 = sub_100198230(v17, v20), (v24 & 1) != 0))
      {
        v25 = *(*(v22 + 56) + 48 * v23);
        swift_endAccess();
        if (v25 == 1)
        {
          v26 = *(**(v1 + 200) + 144);

          v26(v48, v27);

          sub_10000F974(&qword_1004A1648);
          sub_10000F974(&qword_1004A28B0);
          swift_dynamicCast();
          v28 = v48[0];
          v44 = v12;
          if (v48[0] >> 62)
          {
LABEL_63:
            v45 = v28 & 0xFFFFFFFFFFFFFF8;
            v47 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v45 = v48[0] & 0xFFFFFFFFFFFFFF8;
            v47 = *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v29 = 0;
          v46 = v28 & 0xC000000000000001;
          while (1)
          {
            if (v47 == v29)
            {

              sub_10001B360(v4);

              return;
            }

            if (v46)
            {
              v30 = v28;
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v29 >= *(v45 + 16))
              {
                goto LABEL_62;
              }

              v30 = v28;
              v31 = *(v28 + 8 * v29 + 32);
            }

            v32 = v31;
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            if ((*((swift_isaMask & *v31) + 0xB8))() == v17 && v33 == v20)
            {
              break;
            }

            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            ++v29;
            v28 = v30;
            if (v35)
            {
              goto LABEL_59;
            }
          }

LABEL_59:

          sub_100142478(v17, v20, 6);

          sub_100143110(3);
          v12 = v44;
          v18 = *(v1 + 88);
          if (!v18)
          {
            goto LABEL_54;
          }

LABEL_39:
          v19 = *(v1 + 80);
LABEL_40:

          if (sub_100143D14(v19, v18))
          {
LABEL_41:

            sub_10001B360(v4);

            v17 = 0;
            v20 = 0;
LABEL_55:
            *(v1 + 80) = v17;
            *(v1 + 88) = v20;
            goto LABEL_56;
          }

          swift_beginAccess();
          v36 = *(v12 + 24);
          if (*(v36 + 16) && (v37 = sub_100198230(v19, v18), (v38 & 1) != 0))
          {
            v39 = *(*(v36 + 56) + 48 * v37);
            swift_endAccess();
            if (v39 == 5)
            {
              goto LABEL_41;
            }
          }

          else
          {
            swift_endAccess();
          }

          swift_beginAccess();
          v40 = *(v12 + 24);
          if (*(v40 + 16) && (v41 = sub_100198230(v19, v18), (v42 & 1) != 0))
          {
            v43 = *(*(v40 + 56) + 48 * v41);
            swift_endAccess();
            if (v43 == 9)
            {
              goto LABEL_41;
            }
          }

          else
          {
            swift_endAccess();
          }

          sub_100142478(v19, v18, 1);

          if (!v20)
          {
            sub_100143110(4);
          }

LABEL_54:
          sub_10001B360(v4);

          goto LABEL_55;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    swift_bridgeObjectRelease_n();
    v17 = 0;
    v20 = 0;
    v18 = *(v1 + 88);
    if (!v18)
    {
      goto LABEL_54;
    }

    goto LABEL_39;
  }

LABEL_14:
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
LABEL_56:
}

BOOL sub_100143D14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 216);
  if (*(v5 + 16) && (v6 = sub_100198230(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = *((swift_isaMask & *v8) + 0xD0);
    v10 = v8;
    if (v9() == 5)
    {

      return 1;
    }

    else
    {
      v12 = v9();

      return v12 == 9;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_100143E04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *a1) + 0xD0);
  if ((v6)() != 5)
  {
    v16 = a2;
    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(18);

    v6(v7);
    v8._countAndFlagsBits = MeasureObjectState.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD000000000000010;
    v9._object = 0x8000000100409200;
    Log.debug(_:isPrivate:)(v9, 0);

    v11 = (v6)(v10);
    v12 = (*((swift_isaMask & *a1) + 0xB8))();
    sub_10016A400(v11, v12, v13);

    a2 = v16;
  }

  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  v14._countAndFlagsBits = 0xD00000000000001CLL;
  v14._object = 0x8000000100409220;
  Log.debug(_:isPrivate:)(v14, 0);
  return sub_10016A890(a1, a2, a3);
}

uint64_t sub_100144044()
{
}

uint64_t sub_100144130()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_10014421C()
{
  sub_100144130();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RectangleInstrument()
{
  result = qword_1004AB290;
  if (!qword_1004AB290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014434C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A0380 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4F20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001443FC()
{
  sub_10000F974(&qword_1004A3DC0);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100144488(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_10000F974(&unk_1004A3D70);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10014451C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100144554(uint64_t result)
{
  v1 = result;
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (!qword_1004D4AF8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = *((swift_isaMask & *v1) + 0xD0);

  if (v2(v3) != 5)
  {
    sub_1000C37F4(v1);
  }

  if (!qword_1004D4AF8)
  {
    goto LABEL_11;
  }

  sub_1000914D8(v1);
}

void sub_100144650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(**(a1 + 152) + 144);

  v8(&v14[11], v9);

  if ((v15 & 1) == 0 && (v16 & 1) == 0)
  {
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    v10 = qword_1004D4B20;
    sub_100018630(0, &qword_1004A3F00);
    *v7 = static OS_dispatch_queue.main.getter();
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v11 = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v12 = *(**(v10 + 56) + 144);

      v12(&v14[6], v13);

      if ((v14[9] & 1) == 0 && (v14[10] & 1) == 0)
      {
        sub_10008AF48(a2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100144860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 216);
  if (*(v6 + 16) && (v7 = sub_100198230(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9;
    sub_100148088(v10);

    result = *(v3 + 248);
    v13 = *(v3 + 256);
    v12 = (v3 + 248);
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    swift_endAccess();
    result = *(v3 + 248);
    v13 = *(v3 + 256);
    v12 = (v3 + 248);
    if (!v13)
    {
      return result;
    }
  }

  v14 = result == a1 && v13 == a2;
  if (v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v12 = 0;
    v12[1] = 0;
  }

  return result;
}

void sub_100144940(uint64_t a1)
{
  v176 = v1;
  v164 = __chkstk_darwin(a1);
  v175 = type metadata accessor for DispatchWorkItemFlags();
  v161 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v160 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for DispatchQoS();
  v160 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
LABEL_116:
    swift_once();
  }

  v4 = qword_1004D4AD8;
  if (!qword_1004D4AD8)
  {
    goto LABEL_125;
  }

  swift_beginAccess();
  v5 = *(v4 + 80);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v4 + 80) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v179 = *(v4 + 80);

  v13 = 0;
LABEL_7:
  if (v11)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
LABEL_12:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(v179[7] + ((v13 << 9) | (8 * v15)));
      v17 = *((swift_isaMask & *v16) + 0x280);
      v18 = v16;
      v19 = v17();
      if (!v20)
      {
        v21 = *((swift_isaMask & *v18) + 0x2C0);
        v22 = *v21(v19);
        *v23.i64 = (*(v22 + 368))();
        v177 = v24;
        v178 = v23;
        v170 = v26;
        v171 = v25;

        v27 = simd_float4x4.position.getter();
        if ((v164[8].i8[0] & 1) == 0)
        {
          if ((v164[14].i8[8] & 1) == 0)
          {
            v29 = vsubq_f32(v28, v164[7]);
            v30 = vmulq_f32(v29, v29);
            if (v164[14].f32[1] >= sqrtf(v30.f32[2] + vaddv_f32(*v30.f32)))
            {
              v31 = v21(v27);
              *v32.i64 = (*(*v31 + 368))(v31);
              v177 = v33;
              v178 = v32;
              v170 = v35;
              v171 = v34;

              simd_float4x4.position.getter();
              v36 = static WorldRectangleData.pointLiesWithinRectangle(point:rectangle:pointsCoplanar:)();

              if (v36)
              {

                return;
              }
            }

            else
            {
            }

            goto LABEL_7;
          }

LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_7;
    }
  }

  if (!qword_1004D4AC8)
  {
    goto LABEL_126;
  }

  v162 = *(qword_1004D4AC8 + 80);
  if (v162)
  {
    swift_beginAccess();
    type metadata accessor for WorldRectangle();
    *&v171 = v162;

    v37 = OrderedDictionary.values.getter();

    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (v38)
      {
LABEL_23:
        v39 = 0;
        *&v170 = v37 & 0xC000000000000001;
        v163 = v37 & 0xFFFFFFFFFFFFFF8;
        v166 = (v161 + 8);
        v167 = &v192[2];
        v165 = (v160 + 8);
        v168 = v38;
        v169 = v37;
        do
        {
          if (v170)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v41 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              goto LABEL_114;
            }
          }

          else
          {
            if (v39 >= *(v163 + 16))
            {
              goto LABEL_115;
            }

            v40 = *(v37 + 8 * v39 + 32);
            v41 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              goto LABEL_114;
            }
          }

          v42 = *((swift_isaMask & *v40) + 0x260);
          v43 = v171;
          v42(v183);
          memcpy(v195, v183, sizeof(v195));
          if (sub_10012B5C4(v195) == 1)
          {
            goto LABEL_121;
          }

          v179 = v41;
          v196 = v195[0];
          sub_10006C92C(&v196, v192, &qword_1004AB4B0);
          sub_100018F04(v183, &qword_1004AA300);
          v44 = v196;
          if (!v196)
          {
            goto LABEL_122;
          }

          v45 = [objc_opt_self() greenColor];
          sub_100018630(0, &qword_1004A3F00);
          v178.i64[0] = static OS_dispatch_queue.main.getter();
          v46 = swift_allocObject();
          v46[2] = v43;
          v46[3] = v44;
          v46[4] = 0x3FF0000000000000;
          v46[5] = v45;
          v46[6] = 0;
          v46[7] = 0xE000000000000000;
          v192[4] = sub_10014AF50;
          v192[5] = v46;
          v192[0] = _NSConcreteStackBlock;
          v192[1] = 1107296256;
          v192[2] = sub_100041180;
          v192[3] = &unk_10046F1F0;
          v47 = _Block_copy(v192);
          v177.i64[0] = v43;
          v48 = v45;

          v49 = v172;
          static DispatchQoS.unspecified.getter();
          v192[0] = _swiftEmptyArrayStorage;
          sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000F974(&unk_1004A3D80);
          sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
          v50 = v173;
          v51 = v175;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v52 = v178.i64[0];
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v47);

          (*v166)(v50, v51);
          (*v165)(v49, v174);
          ++v39;
          v37 = v169;
        }

        while (v179 != v168);
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        goto LABEL_23;
      }
    }

    v53 = v164->i64[0];
    v199 = v53;
    if (!v53)
    {
      goto LABEL_127;
    }

    v54 = objc_opt_self();
    v55 = v171;
    v56 = [v54 whiteColor];
    sub_100018630(0, &qword_1004A3F00);
    v179 = static OS_dispatch_queue.main.getter();
    v57 = swift_allocObject();
    v57[2] = v55;
    v57[3] = v53;
    v57[4] = 0x3FF0000000000000;
    v57[5] = v56;
    v57[6] = 0x74616469646E6143;
    v57[7] = 0xE900000000000065;
    v192[4] = sub_10014AF50;
    v192[5] = v57;
    v192[0] = _NSConcreteStackBlock;
    v192[1] = 1107296256;
    v192[2] = sub_100041180;
    v192[3] = &unk_10046F240;
    v58 = _Block_copy(v192);
    v59 = v55;
    sub_10006C92C(&v199, v190, &qword_1004AB4B0);
    v60 = v56;

    v61 = v172;
    static DispatchQoS.unspecified.getter();
    v192[0] = _swiftEmptyArrayStorage;
    sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v62 = v173;
    v63 = v175;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v64 = v179;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v58);

    (*(v161 + 8))(v62, v63);
    (*(v160 + 8))(v61, v174);
  }

  v65 = v176;
  swift_beginAccess();
  v66 = *(v65 + 112);
  v67 = 1 << *(v66 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v66 + 64);
  v70 = (v67 + 63) >> 6;

  v71 = 0;
  while (v69)
  {
LABEL_43:
    v73 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    memcpy(v200, (*(v66 + 56) + 304 * (v73 | (v71 << 6))), 0x130uLL);
    sub_1000C1C28(v200, v192);
    sub_1000C1C28(v164, v192);
    sub_100167764(v200);
    memcpy(v190, v184, 0x599uLL);
    if (sub_10014A9EC(v190) != 1)
    {
      v74 = v190[1432];
      sub_100018F04(v184, &qword_1004AB4A8);
      if (v74)
      {

LABEL_102:

        return;
      }
    }
  }

  while (1)
  {
    v72 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_113;
    }

    if (v72 >= v70)
    {
      break;
    }

    v69 = *(v66 + 64 + 8 * v72);
    ++v71;
    if (v69)
    {
      v71 = v72;
      goto LABEL_43;
    }
  }

  swift_beginAccess();
  type metadata accessor for WorldRectangle();

  v75 = OrderedDictionary.values.getter();

  if (v75 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v76)
  {

    v78 = 0;
    v79 = 0;
    goto LABEL_98;
  }

  if (v76 < 1)
  {
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v77 = 0;
  v78 = 0;
  v79 = 0;
  for (i = 0; i != v76; ++i)
  {
    if ((v75 & 0xC000000000000001) != 0)
    {
      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v81 = *(v75 + 8 * i + 32);
    }

    v82 = v81;
    v83 = (*((swift_isaMask & *v81) + 0xD0))();
    if (v83 > 5)
    {
      if (v83 == 9)
      {

        v78 = v82;
      }

      else
      {
        if (v83 != 6)
        {
LABEL_51:

          continue;
        }

        v77 = v82;
      }
    }

    else
    {
      if (v83 == 1)
      {
        v177.i64[0] = v77;
        v179 = v78;
        v178.i64[0] = v79;
        v84 = *((swift_isaMask & *v82) + 0xB8);
        v85 = v82;
        v86 = v84();
        v88 = v87;

        v89 = v176;
        swift_beginAccess();
        v90 = *(v89 + 216);
        if (*(v90 + 16) && (v91 = sub_100198230(v86, v88), (v92 & 1) != 0))
        {
          v93 = *(*(v90 + 56) + 8 * v91);
          swift_endAccess();
          v94 = v93;
          sub_100148088(v94);
        }

        else
        {
          swift_endAccess();
        }

        v95 = *(v176 + 256);
        if (v95)
        {
          if (*(v176 + 248) == v86 && v95 == v88)
          {

            v79 = v178.i64[0];
          }

          else
          {
            v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v79 = v178.i64[0];
            if ((v97 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          v98 = v176;
          *(v176 + 248) = 0;
          *(v98 + 256) = 0;
        }

        else
        {

          v79 = v178.i64[0];
        }

LABEL_78:
        v78 = v179;
        v77 = v177.i64[0];
        continue;
      }

      if (v83 != 5)
      {
        goto LABEL_51;
      }

      v79 = v82;
    }
  }

  if (!v79)
  {
    goto LABEL_83;
  }

  v100 = *((swift_isaMask & *v79) + 0x260);
  v101 = v79;
  v100(v185);
  memcpy(v193, v185, sizeof(v193));
  if (sub_10012B5C4(v193) == 1)
  {
    goto LABEL_128;
  }

  memcpy(v194, v193, sizeof(v194));
  v102 = v162;
  sub_1000C1C28(v164, v192);
  sub_100167764(v194);
  memcpy(v192, v186, 0x599uLL);
  if (sub_10014A9EC(v192) == 1)
  {

    goto LABEL_83;
  }

  v157 = memcpy(v181, v192, 0x530uLL);
  *&v181[83] = v192[166];
  BYTE8(v181[83]) = v192[167];
  *(&v181[85] + 9) = *(&v192[171] + 1);
  *(&v181[86] + 9) = *(&v192[173] + 1);
  *(&v181[87] + 9) = *(&v192[175] + 1);
  *(&v181[88] + 9) = *(&v192[177] + 1);
  *(&v181[83] + 9) = *(&v192[167] + 1);
  *(&v181[84] + 9) = *(&v192[169] + 1);
  if (v192[167])
  {
    sub_1001668AC(v157);
    if (BYTE8(v181[83]))
    {
      goto LABEL_136;
    }
  }

  v158 = *&v181[83];

  if (v158 >= 1)
  {

    memcpy(v180, v181, 0x599uLL);
    sub_10014AA0C(v180);
    return;
  }

  v159 = BYTE8(v181[89]);
  memcpy(v180, v181, 0x599uLL);
  v99 = sub_10014AA0C(v180);
  if (v159 == 1)
  {

    return;
  }

LABEL_83:
  if (!v77)
  {
LABEL_98:
    v142 = v164;
    sub_1001464C0(v164);
    if (v162)
    {
      v179 = v78;
      v178.i64[0] = v79;
      v180[0] = v142->i64[0];
      v143 = v180[0];
      if (v180[0])
      {
        v144 = objc_opt_self();
        v145 = v162;
        v146 = [v144 greenColor];
        sub_100018630(0, &qword_1004A3F00);
        v177.i64[0] = static OS_dispatch_queue.main.getter();
        v147 = swift_allocObject();
        v147[2] = v145;
        v147[3] = v143;
        v147[4] = 0x3FF0000000000000;
        v147[5] = v146;
        v147[6] = 5719374;
        v147[7] = 0xE300000000000000;
        *&v181[2] = sub_10014AA08;
        *(&v181[2] + 1) = v147;
        *&v181[0] = _NSConcreteStackBlock;
        *(&v181[0] + 1) = 1107296256;
        *&v181[1] = sub_100041180;
        *(&v181[1] + 1) = &unk_10046F100;
        v148 = _Block_copy(v181);
        v149 = v145;
        sub_10006C92C(v180, v191, &qword_1004AB4B0);
        v150 = v146;

        v151 = v172;
        static DispatchQoS.unspecified.getter();
        *&v181[0] = _swiftEmptyArrayStorage;
        sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80);
        sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
        v152 = v173;
        v153 = v175;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v154 = v177.i64[0];
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v148);
        (*(v161 + 8))(v152, v153);
        (*(v160 + 8))(v151, v174);
        return;
      }

      goto LABEL_129;
    }

LABEL_104:
    return;
  }

  v179 = v78;
  if (v164[8].i8[0])
  {
    goto LABEL_130;
  }

  v178 = v164[7];
  v103 = *((swift_isaMask & *v77) + 0x260);
  (v103)(v187, v99);
  memcpy(v181, v187, 0x130uLL);
  if (sub_10012B5C4(v181) == 1)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v177 = v181[7];
  v104 = v181[8];
  v105 = sub_100018F04(v187, &qword_1004AA300);
  if (v104)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v164[14].i8[8])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v106 = v164[14].f32[1];
  (v103)(v188, v105);
  memcpy(v180, v188, 0x130uLL);
  if (sub_10012B5C4(v180) == 1)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v107 = *(&v180[28] + 1);
  v108 = v180[29];
  v109 = sub_100018F04(v188, &qword_1004AA300);
  if (v108)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v110 = vsubq_f32(v178, v177);
  v111 = vmulq_f32(v110, v110);
  if (sqrtf(v111.f32[2] + vaddv_f32(*v111.f32)) >= (v106 + v107) || (v109 = (*((swift_isaMask & *v77) + 0xD0))(v109), v109 != 6))
  {
    v155 = (*((swift_isaMask & *v77) + 0xB8))(v109);
    sub_100144860(v155, v156);

    sub_1001464C0(v164);

    goto LABEL_102;
  }

  v112 = (*((swift_isaMask & *v77) + 0xB8))();
  v113 = v164;
  sub_100142224(v112, v114, v164);

  if (!v162)
  {

    goto LABEL_104;
  }

  v177.i64[0] = v77;
  v178.i64[0] = v79;
  v198 = v113->i64[0];
  v115 = v198;
  if (!v198)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v116 = objc_opt_self();
  v117 = v162;
  v169 = v116;
  v118 = [v116 greenColor];
  v168 = sub_100018630(0, &qword_1004A3F00);
  v176 = static OS_dispatch_queue.main.getter();
  v119 = swift_allocObject();
  v119[2] = v117;
  v119[3] = v115;
  v119[4] = 0x3FF0000000000000;
  v119[5] = v118;
  v119[6] = 5719374;
  v119[7] = 0xE300000000000000;
  v191[4] = sub_10014AF50;
  v191[5] = v119;
  v191[0] = _NSConcreteStackBlock;
  v191[1] = 1107296256;
  v191[2] = sub_100041180;
  v191[3] = &unk_10046F150;
  v120 = _Block_copy(v191);
  *&v171 = v117;
  *&v170 = v118;
  sub_10006C92C(&v198, v189, &qword_1004AB4B0);

  v121 = v172;
  static DispatchQoS.unspecified.getter();
  v191[0] = _swiftEmptyArrayStorage;
  v122 = sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  v123 = sub_10000F974(&unk_1004A3D80);
  v124 = sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  v125 = v173;
  v165 = v124;
  v166 = v123;
  v126 = v175;
  v167 = v122;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v127 = v176;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v120);

  v128 = v171;
  v129 = *(v161 + 8);
  v161 += 8;
  v129(v125, v126);
  v130 = *(v160 + 8);
  v160 += 8;
  v130(v121, v174);
  v131 = v128;
  v103(v189);
  memcpy(v191, v189, sizeof(v191));
  if (sub_10012B5C4(v191) != 1)
  {
    *&v171 = v130;
    v176 = v129;
    v197 = v191[0];
    sub_10006C92C(&v197, v182, &qword_1004AB4B0);
    sub_100018F04(v189, &qword_1004AA300);
    v132 = v197;
    if (v197)
    {
      v133 = [v169 redColor];
      v134 = static OS_dispatch_queue.main.getter();
      v135 = swift_allocObject();
      v135[2] = v131;
      v135[3] = v132;
      v135[4] = 0x3FF0000000000000;
      v135[5] = v133;
      v135[6] = 4475983;
      v135[7] = 0xE300000000000000;
      v182[4] = sub_10014AF50;
      v182[5] = v135;
      v182[0] = _NSConcreteStackBlock;
      v182[1] = 1107296256;
      v182[2] = sub_100041180;
      v182[3] = &unk_10046F1A0;
      v136 = _Block_copy(v182);
      v137 = v131;
      v138 = v133;

      v139 = v172;
      static DispatchQoS.unspecified.getter();
      v182[0] = _swiftEmptyArrayStorage;
      v140 = v173;
      v141 = v175;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v136);
      (v176)(v140, v141);
      (v171)(v139, v174);
      return;
    }

    goto LABEL_139;
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_1001464C0(void *a1)
{
  v2 = v1;
  sub_100146D18(a1);
  if (v3)
  {
    v4 = *((swift_isaMask & *v3) + 0xB8);
    v5 = v3;
    v6 = v3;
    v7 = v4();
    v52 = v8;
    v53 = v5;
    v51 = v7;
    swift_beginAccess();
    v9 = v6;
    sub_10000F974(&qword_1004AB450);
    OrderedDictionary.subscript.setter();
    swift_endAccess();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = *((swift_isaMask & *v9) + 0xF0);
    v13 = v9;

    v12(sub_10014AB38, v11);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = *((swift_isaMask & *v13) + 0x108);
    v17 = v13;

    v16(sub_10014AB40, v15);

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    v20 = *((swift_isaMask & *v17) + 0x120);
    v21 = v17;

    v20(sub_10014AB48, v19);

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = *((swift_isaMask & *v21) + 0x138);
    v25 = v21;

    v24(sub_10014AB50, v23);

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v28 = *((swift_isaMask & *v25) + 0x150);
    v29 = v25;

    v28(sub_10014AB5C, v27);

    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    v32 = *((swift_isaMask & *v29) + 0x168);
    v33 = v29;

    v32(sub_10014AB64, v31);

    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    v36 = *((swift_isaMask & *v33) + 0x180);
    v37 = v33;

    v36(sub_10014AB6C, v35);

    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v37;
    v40 = *((swift_isaMask & *v37) + 0x1B0);
    v41 = v37;

    v40(sub_10014AB7C, v39);

    v42 = swift_allocObject();
    *(v42 + 16) = v2;
    *(v42 + 24) = v41;
    v43 = *((swift_isaMask & *v41) + 0x1C8);
    v44 = v41;

    v43(sub_10014ABD0, v42);
    (*((swift_isaMask & *v44) + 0x198))(sub_100066294, 0);
    (*((swift_isaMask & *v44) + 0x1E0))(sub_100148CC0, 0);

    v45 = *(**(v2 + 176) + 400);

    v46 = v45(v50);
    v48 = v47;
    v49 = v44;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v46(v50, 0);
  }
}

void sub_100146D18(void *a1)
{
  v4 = v1;
  v6 = *(**(v1 + 160) + 144);

  v6(v64, v7);

  v8 = v64[0];
  v9 = v64[1];
  v10 = v64[3];
  v11 = v64[2];

  v12 = sub_100143410(v10);
  if (!v12)
  {
    return;
  }

  swift_beginAccess();

  v13 = v12;

  v15 = sub_100149864(v14, v4, v13);

  v16 = *(v15 + 16);

  if (!v16)
  {
    v4[14] = _swiftEmptyDictionarySingleton;
  }

  v17 = a1[2];
  if (!v17)
  {
    goto LABEL_95;
  }

  v62 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_78:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_81:
      swift_once();
      goto LABEL_12;
    }
  }

  v61 = type metadata accessor for WorldPoint();
  v18 = objc_allocWithZone(v61);
  v19 = WorldPoint.init(anchor:type:state:)();
  v57 = a1;
  if (v62)
  {
    v2 = v17;
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_83;
    }

    v2 = v17;
  }

  v20 = objc_allocWithZone(v61);
  v21 = WorldPoint.init(anchor:type:state:)();
  v60 = type metadata accessor for WorldLine();
  v22 = objc_allocWithZone(v60);
  v3 = v19;
  v58 = v21;
  v23 = WorldLine.init(end1:end2:initialState:)();
  v17 = *((swift_isaMask & *v23) + 0xD8);
  a1 = v23;
  (v17)(1);

  (*((swift_isaMask & *a1) + 0x2D0))(0);
  if (qword_1004A0180 != -1)
  {
    goto LABEL_81;
  }

LABEL_12:
  if (!qword_1004D4AD8)
  {
    goto LABEL_96;
  }

  v24 = sub_100104B30(a1, 0);

  if ((v24 & 1) == 0)
  {

    return;
  }

  v56 = v3;
  sub_10000F974(&unk_1004A3F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D56B0;
  *(v3 + 32) = a1;
  v63 = v3;
  v59 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_83:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25 >= 2)
    {
      goto LABEL_16;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 < 2)
  {
    goto LABEL_84;
  }

LABEL_16:
  v55 = v13;
  type metadata accessor for WorldAnchor();
  v54 = a1;
  v13 = 2;
  v2 = &swift_isaMask;
  while (1)
  {
    if (v3 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }

    else
    {
      v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_69;
      }
    }

    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v27)
    {
      goto LABEL_70;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      if (v28 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v29 = *(v3 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = (*((swift_isaMask & *v29) + 0x250))();

    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_73;
      }

      v32 = *(v31 + 40);
    }

    v4 = v32;

    v33 = v13 % v25;
    if (v62)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v33 >= *(v59 + 16))
      {
        goto LABEL_77;
      }
    }

    v34 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
    (*((swift_isaMask & *v4) + 0x2F0))(v34);
    (*((swift_isaMask & *v4) + 0xD0))();
    v35 = objc_allocWithZone(v61);
    v36 = WorldPoint.init(anchor:type:state:)();
    v37 = objc_allocWithZone(v60);
    v4 = v4;
    a1 = v36;
    v38 = WorldLine.init(end1:end2:initialState:)();
    (*((swift_isaMask & *v38) + 0x2D0))(0);
    if (!qword_1004D4AD8)
    {
      goto LABEL_94;
    }

    v17 = *((swift_isaMask & *v38) + 0x318);

    (v17)(v4);
    v39 = sub_100104B30(v38, 0);

    if ((v39 & 1) == 0)
    {

      return;
    }

    v40 = v38;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = v63;
    v2 = &swift_isaMask;
    if (v25 == v13)
    {
      break;
    }

    v27 = __OFADD__(v13++, 1);
    if (v27)
    {
      goto LABEL_75;
    }
  }

  if (!qword_1004D4AD8)
  {
    goto LABEL_97;
  }

  if (!(v63 >> 62))
  {
    v17 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_86;
    }

    goto LABEL_50;
  }

LABEL_85:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_50:
  v41 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v13 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_88:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
    v45 = v44;
    v46 = (*((*v2 & *v44) + 0x250))();

    if ((v46 & 0xC000000000000001) == 0)
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v47 = *(v46 + 32);
      goto LABEL_58;
    }

LABEL_90:
    v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
    a1 = v47;

    sub_100104F90(v4, 0, a1, 0);

    if (v17 >= 1)
    {
      v48 = 0;
      do
      {
        if (v13)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v49 = *(v3 + 8 * v48 + 32);
        }

        v4 = v49;
        v50 = (*((*v2 & *v49) + 0x250))();
        if ((v50 & 0xC000000000000001) != 0)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v51 = *(v50 + 32);
        }

        v52 = v51;
        ++v48;

        (*((*v2 & *v52) + 0x2F8))(1);

        v53 = (*((*v2 & *v4) + 0x268))();
        (*((*v2 & *v53) + 0x2F8))(2);
      }

      while (v17 != v48);

      sub_100149A64(v3, v57);

      return;
    }

    goto LABEL_92;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v41 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v3 + 32);
    v43 = *(v3 + 32 + 8 * v41);

    v4 = v43;
    v44 = v42;
    goto LABEL_55;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t sub_100147810(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0xD0))();
  if (result != 6)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v3 = result;

      sub_100143E04(a1, sub_10014AF98, v3);
    }
  }

  return result;
}

uint64_t sub_1001478D0(void *a1)
{
  if ((*((swift_isaMask & *a1) + 0xD0))() == 5)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = *(**(Strong + 160) + 144);

  v3(v19, v4);

  v5 = v19[0];
  v6 = v19[1];
  v7 = v19[3];
  v8 = v19[2];

  v9 = sub_100143410(v7);
  if (!v9)
  {

    goto LABEL_11;
  }

  v10 = *((swift_isaMask & *v9) + 0x2B0);
  v10();
  v11 = simd_float4x4.position.getter();
  (v10)(v11);
  simd_float4x4.up.getter();
  v12 = sub_100169EB8();
  v14 = v13;

  if (!v14)
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 == (*((swift_isaMask & *a1) + 0xB8))() && v14 == v15)
  {

    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

BOOL sub_100147B00(double a1, double a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_10014ABD8(a1, a2);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_100147B80(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0xD0))();
  if (result != 5)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(**(Strong + 176) + 400);

      v5 = v4(v8);
      v6 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100028A7C(v6, v7);

      v5(v8, 0);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100141E7C(a1);
    }
  }

  return result;
}

uint64_t sub_100147D18(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0xD0))();
  if (result == 5)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v3 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100142478(v3, v4, 9);
    }
  }

  return result;
}

uint64_t sub_100147DF8(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0xD0))();
  if (result == 9)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v3 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100142478(v3, v4, 5);
    }
  }

  return result;
}

uint64_t sub_100147ED8(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0xD0);
  if (v2() != 9 || (result = v2(), result != 1))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(**(Strong + 176) + 400);

      v6 = v5(v9);
      v7 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100028A7C(v7, v8);

      v6(v9, 0);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100148088(a1);
    }
  }

  return result;
}

void *sub_100148088(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0xB8);
  v3 = v2();
  v5 = v4;
  swift_beginAccess();
  v60 = v1;
  v6 = *(v1 + 216);
  if (*(v6 + 16))
  {
    v7 = sub_100198230(v3, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      swift_endAccess();
      v11 = *((swift_isaMask & *v10) + 0x2D8);
      v12 = v10;
      v11();

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = swift_endAccess();
LABEL_6:
  v63 = (v2)(v13);
  v64 = v14;
  swift_beginAccess();
  sub_10000F974(&qword_1004AB450);
  OrderedDictionary.removeValue(forKey:)();
  swift_endAccess();

  v15 = *(**(v60 + 176) + 400);

  v16 = v15(v62);
  v17 = v2();
  sub_100028A7C(v17, v18);

  v16(v62, 0);

  v20 = (*((swift_isaMask & *a1) + 0x248))(v19);
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        result = *(v21 + 8 * v23 + 32);
      }

      v25 = result;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (qword_1004A0180 != -1)
      {
        result = swift_once();
      }

      v27 = qword_1004D4AD8;
      if (!qword_1004D4AD8)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }

      v28 = *((swift_isaMask & *v25) + 0xB8);

      v29 = v25;
      v30 = v28();
      v32 = v31;

      swift_beginAccess();
      v33 = *(v27 + 96);
      if (!*(v33 + 16) || (v34 = sub_100198230(v30, v32), (v35 & 1) == 0))
      {
        swift_endAccess();

LABEL_26:

        goto LABEL_27;
      }

      v36 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
      v37 = v36;
      sub_100106920(v37, 0, 1);
      if (![objc_opt_self() jasperAvailable])
      {
        goto LABEL_25;
      }

      if (qword_1004A03F8 != -1)
      {
        swift_once();
      }

      if ((byte_1004D4FC8 & 1) == 0 || ((*((swift_isaMask & *v37) + 0x2C8))() & 1) == 0)
      {
LABEL_25:

        goto LABEL_26;
      }

      v56 = *(**(v27 + 136) + 400);

      v57 = v56(v62);
      sub_1000C67A8(v30, v32);

      v57(v62, 0);

LABEL_27:
      ++v23;
      if (v26 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v39 = (*((swift_isaMask & *a1) + 0x230))(v38);
  v40 = v39;
  if (v39 >> 62)
  {
    goto LABEL_59;
  }

  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
LABEL_35:
    v42 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        result = *(v40 + 8 * v42 + 32);
      }

      v43 = result;
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (!v41)
        {
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      if (qword_1004A0180 != -1)
      {
        result = swift_once();
      }

      v45 = qword_1004D4AD8;
      if (!qword_1004D4AD8)
      {
        goto LABEL_65;
      }

      v46 = *((swift_isaMask & *v43) + 0xB8);

      v47 = v43;
      v48 = v46();
      v50 = v49;

      swift_beginAccess();
      v51 = *(v45 + 96);
      if (!*(v51 + 16))
      {
        break;
      }

      v52 = sub_100198230(v48, v50);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v54 = *(*(v51 + 56) + 8 * v52);
      swift_endAccess();
      v55 = v54;
      sub_100106920(v55, 0, 1);
      if (![objc_opt_self() jasperAvailable])
      {
        goto LABEL_52;
      }

      if (qword_1004A03F8 != -1)
      {
        swift_once();
      }

      if ((byte_1004D4FC8 & 1) == 0 || ((*((swift_isaMask & *v55) + 0x2C8))() & 1) == 0)
      {
LABEL_52:

        goto LABEL_53;
      }

      v58 = *(**(v45 + 136) + 400);

      v59 = v58(v62);
      sub_1000C67A8(v48, v50);

      v59(v62, 0);

LABEL_54:
      ++v42;
      if (v44 == v41)
      {
        goto LABEL_60;
      }
    }

    swift_endAccess();

LABEL_53:

    goto LABEL_54;
  }

LABEL_60:

  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (!qword_1004D4AF8)
  {
    goto LABEL_66;
  }

  sub_1000C3EF8(a1);

  return sub_10016B7A8(a1);
}

void sub_1001489B0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *((swift_isaMask & *a2) + 0x260);
    v5 = *(Strong + 96);
    v4(__src);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_10012B5C4(__dst) == 1)
    {
      __break(1u);
    }

    else
    {
      v6 = __dst[8];
      sub_100018F04(__src, &qword_1004AA300);
      if ((v6 & 1) == 0)
      {
        SCNVector3.init(_:)();
        [v5 projectPoint:?];

        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
        {
          CGRect.center.getter();
          static CGPoint.- infix(_:_:)();
          CGPoint.length()();

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_100148B70(uint64_t a1, void *a2)
{

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  SCNMatrix4.init(_:)();
  v3 = SCNMatrix4.forward.getter();
  (*((swift_isaMask & *a2) + 0x260))(v7, v3);
  memcpy(__src, v7, 0x130uLL);
  result = sub_10012B5C4(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = __src[8];
    result = sub_100018F04(v7, &qword_1004AA300);
    if ((v5 & 1) == 0)
    {
      return SCNMatrix4.position.getter();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100148CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 216);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = sub_100198230(a1, a2);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *((swift_isaMask & *v11) + 0xD8);
  v13 = v11;
  v12(a3);

  sub_100143E04(v13, sub_1001494D0, v4);
}

uint64_t sub_100148DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  result = __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  v12 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v13 = Contexts.PrivateQueue.init(_:)();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    aBlock[4] = sub_10014AAD8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046F2B8;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    v17 = a3;
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v20 + 8))(v7, v5);
    (*(v8 + 8))(v11, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100149100(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100149260(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100149400(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_100149260(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_10018BDA0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_10018BDA0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100149350(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = a5;
    v10 = sub_1001495B4(v8, a2, a3, v9);

    return v10;
  }

  return result;
}

unint64_t *sub_100149400(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100149260(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_100149478()
{
  sub_100141984();

  sub_10014371C();
}

uint64_t sub_1001494B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014952C(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 8) = 0u;
  result = a1 + 8;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  return result;
}

uint64_t sub_1001495B4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v29 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v9)
      {
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v5 >= v10)
          {
            return sub_10018BB54(v25, a2, v26, v29);
          }

          v13 = *(v6 + 8 * v5);
          ++v12;
          if (v13)
          {
            v11 = __clz(__rbit64(v13));
            v9 = (v13 - 1) & v13;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = v11 | (v5 << 6);
      memcpy(__dst, (*(v29 + 56) + 304 * v14), 0x130uLL);
      v15 = *((swift_isaMask & *a4) + 0x2C0);
      v16 = sub_1000C1C28(__dst, v27);
      v17 = v15(v16);
      (*(*v17 + 368))(v17);

      result = simd_float4x4.position.getter();
      if (__dst[8].i8[0])
      {
        goto LABEL_22;
      }

      if (__dst[14].i8[8])
      {
        goto LABEL_21;
      }

      v19 = vsubq_f32(v18, __dst[7]);
      v20 = vmulq_f32(v19, v19);
      if (__dst[14].f32[1] >= sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)))
      {
        break;
      }

      result = sub_1001494D8(__dst);
    }

    v21 = v15(result);
    (*(*v21 + 368))(v21);

    simd_float4x4.position.getter();
    v22 = static WorldRectangleData.pointLiesWithinRectangle(point:rectangle:pointsCoplanar:)();
    result = sub_1001494D8(__dst);
    if (v22)
    {
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
  return sub_10018BB54(v25, a2, v26, v29);
}

uint64_t sub_100149864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  swift_retain_n();
  v12 = a3;
  v13 = v12;
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v19 = v13;
      v16 = sub_100149350(v18, v10, a1, a2, v19);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12);
  v14 = &v20 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v11);

  v15 = v13;
  v16 = sub_1001495B4(v14, v10, a1, v15);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v16;
}

uint64_t sub_100149A64(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v89 = _swiftEmptyArrayStorage;
  v93 = _swiftEmptyArrayStorage;
  v90 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v6 = a1 + 8 * v4;
    if (v90)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v51 = v2;
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v2 = v51;
        v34 = v52;
        if (!v52)
        {
          goto LABEL_31;
        }

LABEL_22:
        v35 = v2;
        result = objc_opt_self();
        if (v34 >= 1)
        {
          v36 = result;
          v37 = 0;
          v38 = v35;
          do
          {
            if (v90)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v39 = *(v38 + 8 * v37 + 32);
            }

            v40 = v39;
            ++v37;
            (*((swift_isaMask & *v39) + 0x340))();
            v41 = [v36 standardUserDefaults];
            Defaults.measurementBias.unsafeMutableAddressor();

            v42 = String._bridgeToObjectiveC()();

            [v41 floatForKey:v42];

            __dst[0]._countAndFlagsBits = 0;
            __dst[0]._object = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v43._object = 0x8000000100409340;
            v43._countAndFlagsBits = 0xD000000000000010;
            String.append(_:)(v43);
            v44 = *((swift_isaMask & *v40) + 0xB8);
            v45 = v40;
            v46 = v44();
            v48 = v47;

            v49._countAndFlagsBits = v46;
            v49._object = v48;
            String.append(_:)(v49);

            v50._countAndFlagsBits = 0x656C206874697720;
            v50._object = 0xEE00203A6874676ELL;
            String.append(_:)(v50);
            Float.write<A>(to:)();
            String.append(_:)(__dst[0]);

            v38 = a2;
          }

          while (v34 != v37);
          goto LABEL_31;
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;
    (*((swift_isaMask & *v7) + 0x268))();

    if (v90)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 + 2 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v6 + 48);
    }

    v10 = v9;
    (*((swift_isaMask & *v9) + 0x268))();

    v11 = objc_allocWithZone(type metadata accessor for WorldLine());
    v12 = WorldLine.init(end1:end2:initialState:)();
    v13 = *((swift_isaMask & *v12) + 0xD8);
    v14 = v12;
    v13(1);

    result = (*((swift_isaMask & *v14) + 0x2D0))(0);
    if (qword_1004A0180 == -1)
    {
      if (!qword_1004D4AD8)
      {
        goto LABEL_54;
      }
    }

    else
    {
      result = swift_once();
      if (!qword_1004D4AD8)
      {
        goto LABEL_54;
      }
    }

    v16 = sub_100104B30(v14, 0);

    if ((v16 & 1) == 0)
    {
      break;
    }

    v18 = *((swift_isaMask & *v14) + 0x268);
    v19 = (v18)(v17);
    (*((swift_isaMask & *v19) + 0xD8))(1);

    v20 = v18();
    (*((swift_isaMask & *v20) + 0x2F8))(2);

    v21 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v89 = v93;
    if (v4 == 2)
    {
      goto LABEL_20;
    }
  }

LABEL_20:
  v22 = objc_allocWithZone(type metadata accessor for WorldRectangle());
  sub_1000C1C28(a2, __dst);

  v23 = WorldRectangle.init(data:edges:splitters:)();
  v24 = *((swift_isaMask & *v23) + 0xB8);
  v25 = v23;
  v95[0] = v23;
  v96[0]._countAndFlagsBits = v24();
  v96[0]._object = v26;
  swift_beginAccess();
  a2 = a1;
  v27 = v25;
  sub_10000F974(&qword_1004AB450);
  OrderedDictionary.subscript.setter();
  swift_endAccess();
  __dst[0]._countAndFlagsBits = 0;
  __dst[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  __dst[0]._countAndFlagsBits = 0xD000000000000011;
  __dst[0]._object = 0x8000000100409320;
  v29 = (v24)(v28);
  v31 = v30;
  v86 = v27;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0x6C2068746977202CLL;
  v33._object = 0xEE00203A73656E69;
  String.append(_:)(v33);
  v2 = a2;
  v92 = __dst[0];
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v34 = *(v5 + 16);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_31:
  v53 = v89;
  if (v89 >> 62)
  {
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v89;
    v54 = v72;
    if (!v72)
    {
      goto LABEL_40;
    }

LABEL_33:
    v55 = v53;
    result = objc_opt_self();
    if (v54 >= 1)
    {
      v56 = result;
      v57 = 0;
      v58 = v55;
      v59 = v55 & 0xC000000000000001;
      do
      {
        if (v59)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v60 = *(v58 + 8 * v57 + 32);
        }

        v61 = v60;
        ++v57;
        (*((swift_isaMask & *v60) + 0x340))();
        v62 = [v56 standardUserDefaults];
        Defaults.measurementBias.unsafeMutableAddressor();

        v63 = String._bridgeToObjectiveC()();

        [v62 floatForKey:v63];

        __dst[0]._countAndFlagsBits = 0;
        __dst[0]._object = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        v64._object = 0x8000000100409360;
        v64._countAndFlagsBits = 0xD000000000000010;
        String.append(_:)(v64);
        v65 = *((swift_isaMask & *v61) + 0xB8);
        v66 = v61;
        v67 = v65();
        v69 = v68;

        v70._countAndFlagsBits = v67;
        v70._object = v69;
        String.append(_:)(v70);

        v71._countAndFlagsBits = 0x656C206874697720;
        v71._object = 0xEE00203A6874676ELL;
        String.append(_:)(v71);
        Float.write<A>(to:)();
        String.append(_:)(__dst[0]);

        v58 = v89;
      }

      while (v54 != v57);
      goto LABEL_40;
    }

    goto LABEL_53;
  }

  v54 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    goto LABEL_33;
  }

LABEL_40:
  __dst[0]._countAndFlagsBits = 0;
  __dst[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v96[0]._countAndFlagsBits = 0xD00000000000001FLL;
  v96[0]._object = 0x8000000100409380;
  v74 = *((swift_isaMask & *v86) + 0x260);
  v74(__src, v73);
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_10012B5C4(&__dst[0]._countAndFlagsBits);
  if (result == 1)
  {
    goto LABEL_55;
  }

  object = __dst[0]._object;
  sub_10006C92C(&object, v95, &qword_1004AB4B0);
  result = sub_100018F04(__src, &qword_1004AA300);
  if (!object)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_10000F974(&qword_1004A3EF0);
  v75 = Array.description.getter();
  v77 = v76;
  sub_100018F04(&object, &qword_1004AB4B0);
  v78._countAndFlagsBits = v75;
  v78._object = v77;
  String.append(_:)(v78);

  String.append(_:)(v96[0]);

  v96[0]._countAndFlagsBits = 0;
  v96[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v74(v95, v79);
  memcpy(v96, v95, sizeof(v96));
  result = sub_10012B5C4(&v96[0]._countAndFlagsBits);
  if (result == 1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v99[0] = v96[0]._countAndFlagsBits;
  sub_10006C92C(v99, v91, &qword_1004AB4B0);
  sub_100018F04(v95, &qword_1004AA300);
  result = v89;
  if (!v99[0])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v80 = Array.description.getter();
  v82 = v81;
  sub_100018F04(v99, &qword_1004AB4B0);
  v83._countAndFlagsBits = v80;
  v83._object = v82;
  String.append(_:)(v83);

  v84._countAndFlagsBits = 0xD000000000000020;
  v84._object = 0x80000001004093A0;
  String.append(_:)(v84);

  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  Log.default(_:isPrivate:)(v92, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v85 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v85 + 24) = *(v85 + 24) + 1.0;
  (*((swift_isaMask & *v86) + 0xD8))(1);
  *(v87 + 104) = 1;
  result = sub_10016AFDC(v86);
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (qword_1004D4AF8)
  {

    sub_1000912D4(v86);

    return v86;
  }

LABEL_59:
  __break(1u);
  return result;
}

float32x4_t *sub_10014A840(float32x4_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = (v5 + 304 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      result = memcpy(__dst, v7, sizeof(__dst));
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      if (v3[8].i8[0])
      {
        goto LABEL_23;
      }

      if (__dst[8].i8[0])
      {
        goto LABEL_24;
      }

      if (v3[14].i8[8])
      {
        goto LABEL_25;
      }

      if (__dst[14].i8[8])
      {
        goto LABEL_26;
      }

      v9 = vsubq_f32(v3[7], __dst[7]);
      v10 = vmulq_f32(v9, v9);
      if (sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) < (v3[14].f32[1] + __dst[14].f32[1]))
      {
        break;
      }

      v7 += 304;
      if (v4 == v2)
      {
        return v6;
      }
    }

    sub_1000C1C28(__dst, &v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_10006875C(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_10006875C((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    result = memcpy(&v6[304 * v12 + 32], __dst, 0x130uLL);
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_10014A9EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014AA60()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10014AB00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014AB84(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

BOOL sub_10014ABD8(double a1, double a2)
{
  v5 = *(v2 + 96);
  sub_10000F974(&qword_1004AB4B8);
  inited = swift_initStackObject();
  *(inited + 32) = SCNHitTestIgnoreHiddenNodesKey;
  *(inited + 16) = xmmword_1003D5230;
  *(inited + 40) = 0;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = SCNHitTestIgnoreChildNodesKey;
  *(inited + 80) = 0;
  *(inited + 120) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = SCNHitTestOptionSearchMode;
  *(inited + 144) = &type metadata for Int;
  *(inited + 152) = SCNHitTestRootNodeKey;
  v26 = *(v2 + 72);
  v7 = *(v26 + 56);
  *(inited + 184) = sub_100018630(0, &qword_1004A1318);
  *(inited + 160) = v7;
  v8 = v5;
  v9 = SCNHitTestIgnoreHiddenNodesKey;
  v10 = SCNHitTestIgnoreChildNodesKey;
  v11 = SCNHitTestOptionSearchMode;
  v12 = SCNHitTestRootNodeKey;
  v13 = v7;
  sub_10019AEA0(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AB4C0);
  swift_arrayDestroy();
  type metadata accessor for SCNHitTestOption(0);
  sub_10014AEE4(&qword_1004A0C30, type metadata accessor for SCNHitTestOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v8 hitTest:isa options:{a1, a2}];

  sub_100018630(0, &qword_1004AB4C8);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 node];
      v23 = *(v26 + 56);
      v24 = SCNNode.isDecendent(of:)(v23);

      if (!v24)
      {
        ++v18;
        if (v21 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v24 = 0;
LABEL_16:

  return v24;
}

uint64_t sub_10014AEE4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HistoryUIState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HistoryUIState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryUIState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10014B058()
{
  result = Contexts.UIKit.init()();
  qword_1004D4F38 = result;
  return result;
}

id sub_10014B078@<X0>(void *a1@<X8>)
{
  if (qword_1004A0388 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F38;
  *a1 = qword_1004D4F38;

  return v2;
}

unint64_t sub_10014B124(uint64_t a1)
{
  result = sub_10014B14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014B14C()
{
  result = qword_1004AB4F8;
  if (!qword_1004AB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB4F8);
  }

  return result;
}

Class sub_10014B1C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100018630(0, &qword_1004ABB80);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

double *sub_10014B260()
{
  v1 = type metadata accessor for SpatialPlattersHistoryItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MeasurementHistoryItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1004AB560;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v18 = _swiftEmptyArrayStorage;

    sub_1000A25B0(0, v11, 0);
    v12 = v18;
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1001594B8(v13, v4, type metadata accessor for SpatialPlattersHistoryItem);
      sub_1001594B8(v4, v8, type metadata accessor for MeasurementHistoryItem);
      sub_10015A064(v4, type metadata accessor for SpatialPlattersHistoryItem);
      v18 = v12;
      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        sub_1000A25B0(v15 > 1, v16 + 1, 1);
        v12 = v18;
      }

      *(v12 + 2) = v16 + 1;
      sub_10015A540(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, type metadata accessor for MeasurementHistoryItem);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_10014B4D0(void *a1, double *a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v83 = a3;
  v84 = a1;
  v85 = a2;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v78);
  v79 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v18 = qword_1004AB500;
  *&v7[v18] = [objc_allocWithZone(UIView) init];
  *&v7[qword_1004AB518] = 0;
  *&v7[qword_1004AB520] = 0;
  v19 = qword_1004AB528;
  v20 = sub_10000F974(&unk_1004A6940);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v22 = qword_1004D5058;
  v23 = *(v20 + 272);
  swift_retain_n();
  *&v8[v19] = v23(KeyPath, v22);
  v24 = qword_1004AB530;
  sub_10000F974(&qword_1004ABB28);
  swift_getKeyPath();
  *&v8[v24] = MutableStateBinding.__allocating_init(_:_:)();
  v25 = qword_1004AB538;
  sub_10000F974(&qword_1004ABB30);
  swift_getKeyPath();
  *&v8[v25] = MutableStateBinding.__allocating_init(_:_:)();
  v26 = qword_1004AB540;
  sub_10000F974(&qword_1004ABB38);
  swift_getKeyPath();
  *&v8[v26] = MutableStateBinding.__allocating_init(_:_:)();
  v27 = qword_1004AB548;
  v28 = sub_10000F974(&unk_1004A6950);
  v29 = swift_getKeyPath();
  *&v8[v27] = (*(v28 + 272))(v29, v22);
  v30 = qword_1004AB550;
  sub_10000F974(&qword_1004ABB40);
  swift_getKeyPath();
  *&v8[v30] = MutableStateValue.__allocating_init(_:_:)();
  v31 = qword_1004AB558;
  sub_10000F974(&qword_1004ABB20);
  swift_getKeyPath();
  type metadata accessor for SpatialGenericPlatter();
  *&v8[v31] = MutableStateValue.__allocating_init(_:_:)();
  *&v8[qword_1004AB560] = _swiftEmptyArrayStorage;
  *&v8[qword_1004AB568] = &_swiftEmptySetSingleton;
  *&v8[qword_1004AB570] = 0;
  v32 = qword_1004AB578;
  v33 = type metadata accessor for IndexPath();
  (*(*(v33 - 8) + 56))(&v8[v32], 1, 1, v33);
  v8[qword_1004AB580] = 0;
  v8[qword_1004AB598] = 0;
  *&v8[qword_1004AB5A8] = 0x4078B00000000000;
  *&v8[qword_1004AB5B0] = 0;
  *&v8[qword_1004AB5B8] = 0;
  swift_unknownObjectWeakInit();
  v8[qword_1004AB5C8] = 0;
  *&v8[qword_1004AB5D0] = &_swiftEmptySetSingleton;
  *&v8[qword_1004AB5D8] = &_swiftEmptySetSingleton;
  *&v8[qword_1004AB5E0] = 0;
  *&v8[qword_1004AB5E8] = 0;
  *&v8[qword_1004AB5F0] = 0;
  v77 = ObjectType;
  v34 = qword_1004D4F40;
  v8[qword_1004D4F40] = 0;
  v8[qword_1004AB600] = 1;
  v8[qword_1004AB608] = 1;
  v8[qword_1004AB610] = 1;
  v8[qword_1004AB618] = 0;
  v35 = &v8[qword_1004AB620];
  *v35 = 0;
  v35[8] = 1;
  swift_unknownObjectWeakInit();
  v36 = qword_1004AB630;
  sub_100018630(0, &qword_1004A3F00);
  static DispatchQoS.userInteractive.getter();
  v89 = _swiftEmptyArrayStorage;
  sub_10015941C(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0);
  sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v81 + 104))(v80, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
  *&v8[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v8[qword_1004AB638] = 0;
  *&v8[qword_1004AB640] = 0;
  v38 = v84;
  v37 = v85;
  *&v8[qword_1004AB5A0] = v84;
  v39 = &v8[qword_1004AB588];
  *v39 = a4;
  v39[1] = a5;
  v39[2] = a6;
  v39[3] = a7;
  *&v8[qword_1004AB5F8] = v37;
  v8[v34] = v83 & 1;
  v40 = objc_allocWithZone(type metadata accessor for HistoryView());
  v41 = v38;

  v42 = [v40 initWithFrame:{a4, a5, a6, a7}];
  *&v8[qword_1004AB508] = v42;
  v43 = *&v42[OBJC_IVAR____TtC7Measure11HistoryView_tableView];
  v44 = objc_allocWithZone(type metadata accessor for CardContainerView());
  v45 = sub_100172FE8(v43, v43);
  v46 = qword_1004AB510;
  *&v8[qword_1004AB510] = v45;
  swift_unknownObjectWeakAssign();
  v47 = *&v8[v46];
  v48 = objc_allocWithZone(type metadata accessor for CardContainerController());
  *&v8[qword_1004AB590] = sub_10018E2F0(v47);
  v88.receiver = v8;
  v88.super_class = v77;
  v49 = objc_msgSendSuper2(&v88, "init");
  type metadata accessor for ViewController();
  swift_dynamicCastClassUnconditional();
  v50 = objc_allocWithZone(type metadata accessor for HistoryDetailSheetViewController());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v51 = type metadata accessor for MeasurementDetailSheetViewController();
  v87.receiver = v50;
  v87.super_class = v51;
  v52 = v49;
  v53 = objc_msgSendSuper2(&v87, "initWithNibName:bundle:", 0, 0);
  v54 = *&v52[qword_1004AB518];
  *&v52[qword_1004AB518] = v53;

  swift_dynamicCastClassUnconditional();
  v55 = objc_allocWithZone(v51);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v86.receiver = v55;
  v86.super_class = v51;
  v56 = objc_msgSendSuper2(&v86, "initWithNibName:bundle:", 0, 0);
  v57 = *&v52[qword_1004AB520];
  *&v52[qword_1004AB520] = v56;

  v58 = qword_1004AB508;
  v59 = *&v52[qword_1004AB508];
  v60 = qword_1004AB510;
  v61 = *&v52[qword_1004AB510];
  [v59 addSubview:v61];
  v62 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
  [*&v59[OBJC_IVAR____TtC7Measure11HistoryView_tableView] setDataSource:v52];
  [*&v59[v62] setDelegate:v52];
  [*(v61 + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton) addTarget:v52 action:"copyToPasteboard" forControlEvents:64];
  v63 = v52;
  sub_100173DD8(v61, v63);

  v64 = qword_1004AB590;
  sub_10018E0E0(*&v52[v58]);
  [*&v52[v60] setTranslatesAutoresizingMaskIntoConstraints:0];

  v65 = StateValue.publisher.getter();

  v89 = v65;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000F974(&qword_1004ABB48);
  sub_10001D47C(&unk_1004ABB50, &qword_1004ABB48);
  v66 = Publisher<>.sink(receiveValue:)();

  *&v63[qword_1004AB5B0] = v66;

  v89 = v85;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = v41;
  v69 = v41;
  sub_10000F974(&unk_1004A7520);
  sub_10001D47C(&qword_1004A73C0, &unk_1004A7520);
  v70 = Publisher<>.sink(receiveValue:)();

  *&v63[qword_1004AB5B8] = v70;

  v71 = *&v63[v64];
  v72 = *&v71[OBJC_IVAR____TtC7Measure23CardContainerController_containerView];
  v73 = v71;
  v74 = [v72 superview];
  [v74 setNeedsLayout];
  [v74 layoutIfNeeded];

  v63[qword_1004D4F40] = 0;

  return v63;
}

uint64_t sub_10014C0A0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MeasurementsHistory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = Contexts.UIKit.init()();
    v25 = v6;
    v15 = v14;
    sub_1001594B8(a1, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementsHistory);
    v16 = *(v10 + 80);
    v24 = v3;
    v17 = v2;
    v18 = (v16 + 16) & ~v16;
    v19 = swift_allocObject();
    sub_10015A540(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for MeasurementsHistory);
    *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    aBlock[4] = sub_100159FD8;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046F990;
    v20 = _Block_copy(aBlock);
    v21 = v15;
    v22 = v13;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10015941C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v24 + 8))(v5, v17);
    (*(v26 + 8))(v8, v25);
  }

  return result;
}

size_t sub_10014C488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABAD0);
  __chkstk_darwin(v4 - 8);
  v6 = (v40 - v5 + 56);
  v7 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - v8 + 56;
  v10 = type metadata accessor for MeasurementHistoryItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  __chkstk_darwin(v14);
  v16 = (v40 - v15 + 56);
  v17 = type metadata accessor for MeasurementsHistory();
  sub_10006C92C(a1 + *(v17 + 24), v9, &qword_1004A28C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100018F04(v9, &qword_1004A28C0);
  }

  sub_10015A540(v9, v16, type metadata accessor for MeasurementHistoryItem);
  v19 = *(**(a2 + qword_1004AB550) + 144);

  v19(v40, v20);

  v21 = *v16;
  v22 = v16[1];
  v23 = sub_10009F2F8(*v16, v22, v40[0]);

  if (v23)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  v24 = qword_1004AB568;
  swift_beginAccess();
  v25 = *(a2 + v24);

  v26 = sub_10009F2F8(v21, v22, v25);

  if ((v26 & 1) == 0)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  v27 = qword_1004AB560;
  v28 = swift_beginAccess();
  v29 = &v39;
  v30 = *(a2 + v27);
  __chkstk_darwin(v28);
  *(&v39 - 2) = v16;

  v31 = sub_10009FF4C(sub_1000A4E88, (&v39 - 4), v30);
  LODWORD(v33) = v32;

  if (v33)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v33 = *(a2 + v27);
  if (v31 >= *(v33 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = *(type metadata accessor for SpatialPlattersHistoryItem() - 8);
  v30 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v29 = *(v34 + 72) * v31;
  sub_1001594B8(v33 + v30 + v29, v13, type metadata accessor for MeasurementHistoryItem);
  LODWORD(v33) = sub_1001B2584(v13, v16);
  sub_10015A064(v13, type metadata accessor for MeasurementHistoryItem);
  if (v33)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  v35 = *(a2 + v27);
  if (v31 >= *(v35 + 16))
  {
    goto LABEL_20;
  }

  sub_10006C92C(v35 + v30 + *(v10 + 24) + v29, v6, &unk_1004ABAD0);
  v36 = type metadata accessor for MeasurementCapture();
  LODWORD(v33) = (*(*(v36 - 8) + 48))(v6, 1, v36);
  sub_100018F04(v6, &unk_1004ABAD0);
  swift_beginAccess();
  v6 = *(a2 + v27);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v27) = v6;
  if ((result & 1) == 0)
  {
LABEL_21:
    result = sub_10006B8DC(v6);
    v6 = result;
    *(a2 + v27) = result;
  }

  if (v31 >= v6[2])
  {
    __break(1u);
    return result;
  }

  sub_1000A4EEC(v16, v6 + v30 + v29);
  *(a2 + v27) = v6;
  swift_endAccess();
  if (*(a2 + qword_1004AB5C8))
  {
    v37 = *v16;
    v38 = v16[1];
    swift_beginAccess();

    sub_100199990(&v39, v37, v38);
    swift_endAccess();

    if (v33 == 1)
    {
      swift_beginAccess();

      sub_100199990(&v39, v37, v38);
      swift_endAccess();
    }
  }

  else
  {
    sub_10014CA74(v31, v16, v33 != 1);
  }

  return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
}

size_t sub_10014CA74(unint64_t a1, uint64_t a2, int a3)
{
  v55 = a3;
  v53 = type metadata accessor for SpatialPlattersHistoryItem();
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000F974(&unk_1004ABAD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  v9 = type metadata accessor for MeasurementCapture();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v52 - v17;
  IndexPath.init(row:section:)();
  v18 = type metadata accessor for MeasurementHistoryItem();
  sub_10006C92C(a2 + *(v18 + 24), v8, &unk_1004ABAD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100018F04(v8, &unk_1004ABAD0);
LABEL_5:
    v19 = v58;
    v20 = *(*(v58 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
    v12 = v57;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v22 = [v20 cellForRowAtIndexPath:isa];

    v23 = v13;
    if (!v22)
    {
      return (*(v14 + 8))(v12, v23);
    }

    ObjectType = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {

      return (*(v14 + 8))(v12, v23);
    }

    v26 = v25;
    v27 = qword_1004AB560;
    swift_beginAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v19 + v27);
      if (*(v28 + 16) > a1)
      {
        v29 = v54;
        sub_1001594B8(v28 + ((v56[80] + 32) & ~v56[80]) + *(v56 + 9) * a1, v54, type metadata accessor for SpatialPlattersHistoryItem);
        (*(v26 + 16))(v29, ObjectType, v26);

        v30 = type metadata accessor for SpatialPlattersHistoryItem;
        v31 = v29;
LABEL_16:
        sub_10015A064(v31, v30);
        return (*(v14 + 8))(v12, v23);
      }
    }

    __break(1u);
LABEL_21:
    result = sub_10006B8DC(ObjectType);
    ObjectType = result;
    *(v58 + v19) = result;
    v23 = v13;
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  sub_10015A540(v8, v12, type metadata accessor for MeasurementCapture);
  if (v55)
  {
    sub_10015A064(v12, type metadata accessor for MeasurementCapture);
    goto LABEL_5;
  }

  v19 = qword_1004AB560;
  v32 = v58;
  swift_beginAccess();
  ObjectType = *(v32 + v19);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + v19) = ObjectType;
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  v23 = v13;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  if (ObjectType[2] > a1)
  {
    v34 = ObjectType + ((v56[80] + 32) & ~v56[80]) + *(v56 + 9) * a1;
    v56 = v12;
    URL.path.getter();
    v35 = objc_allocWithZone(UIImage);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v35 initWithContentsOfFile:v36];
    v38 = *(v53 + 20);
    v39 = *(v34 + v38);
    *(v34 + v38) = v37;
    v40 = v58;
    *(v58 + v19) = ObjectType;
    swift_endAccess();

    v41 = *(v40 + qword_1004AB508);
    v42 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
    v43 = *(v41 + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
    sub_10000F974(&qword_1004ABB60);
    v44 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1003D5360;
    v12 = v57;
    (*(v14 + 16))(v45 + v44, v57, v23);
    v46 = v43;
    v47 = Array._bridgeToObjectiveC()().super.isa;

    [v46 reloadRowsAtIndexPaths:v47 withRowAnimation:0];

    if (*(*(v40 + v19) + 16) >= 2uLL)
    {
      v48 = *(v41 + v42);
      v49 = v52;
      IndexPath.init(row:section:)();
      v50 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v49, v23);
      [v48 scrollToRowAtIndexPath:v50 atScrollPosition:1 animated:0];
    }

    v51 = [*(*(v40 + qword_1004AB590) + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) superview];
    [v51 setNeedsLayout];
    [v51 layoutIfNeeded];

    v30 = type metadata accessor for MeasurementCapture;
    v31 = v56;
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_10014D174(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [a3 presentedViewController];
  if (!v6)
  {
LABEL_8:
    sub_100159044(1);

    return;
  }

  v7 = v6;
  type metadata accessor for HistoryDetailSheetViewController();
  if (![v7 isKindOfClass:swift_getObjCClassFromMetadata()])
  {

    goto LABEL_8;
  }

  v8 = *&v5[qword_1004AB518];
  if (v8)
  {
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  [*(*&v5[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
  v9 = *(**&v5[qword_1004AB540] + 400);

  v10 = v9(v12);
  *(v11 + 4) = 0;
  v10(v12, 0);
}

void sub_10014D318()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v25[1] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = qword_1004AB500;
  *(v1 + v7) = [objc_allocWithZone(UIView) init];
  *(v1 + qword_1004AB518) = 0;
  *(v1 + qword_1004AB520) = 0;
  v8 = qword_1004AB528;
  v9 = sub_10000F974(&unk_1004A6940);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v8) = v12(KeyPath, v11);
  v13 = qword_1004AB530;
  sub_10000F974(&qword_1004ABB28);
  swift_getKeyPath();
  *(v1 + v13) = MutableStateBinding.__allocating_init(_:_:)();
  v14 = qword_1004AB538;
  sub_10000F974(&qword_1004ABB30);
  swift_getKeyPath();
  *(v1 + v14) = MutableStateBinding.__allocating_init(_:_:)();
  v15 = qword_1004AB540;
  sub_10000F974(&qword_1004ABB38);
  swift_getKeyPath();
  *(v1 + v15) = MutableStateBinding.__allocating_init(_:_:)();
  v16 = qword_1004AB548;
  v17 = sub_10000F974(&unk_1004A6950);
  v18 = swift_getKeyPath();
  *(v1 + v16) = (*(v17 + 272))(v18, v11);
  v19 = qword_1004AB550;
  sub_10000F974(&qword_1004ABB40);
  swift_getKeyPath();
  *(v1 + v19) = MutableStateValue.__allocating_init(_:_:)();
  v20 = qword_1004AB558;
  sub_10000F974(&qword_1004ABB20);
  swift_getKeyPath();
  type metadata accessor for SpatialGenericPlatter();
  *(v1 + v20) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + qword_1004AB560) = _swiftEmptyArrayStorage;
  *(v1 + qword_1004AB568) = &_swiftEmptySetSingleton;
  *(v1 + qword_1004AB570) = 0;
  v21 = qword_1004AB578;
  v22 = type metadata accessor for IndexPath();
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  *(v1 + qword_1004AB580) = 0;
  *(v1 + qword_1004AB598) = 0;
  *(v1 + qword_1004AB5A8) = 0x4078B00000000000;
  *(v1 + qword_1004AB5B0) = 0;
  *(v1 + qword_1004AB5B8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1004AB5C8) = 0;
  *(v1 + qword_1004AB5D0) = &_swiftEmptySetSingleton;
  *(v1 + qword_1004AB5D8) = &_swiftEmptySetSingleton;
  *(v1 + qword_1004AB5E0) = 0;
  *(v1 + qword_1004AB5E8) = 0;
  *(v1 + qword_1004AB5F0) = 0;
  *(v1 + qword_1004D4F40) = 0;
  *(v1 + qword_1004AB600) = 1;
  *(v1 + qword_1004AB608) = 1;
  *(v1 + qword_1004AB610) = 1;
  *(v1 + qword_1004AB618) = 0;
  v23 = v1 + qword_1004AB620;
  *v23 = 0;
  *(v23 + 8) = 1;
  swift_unknownObjectWeakInit();
  v24 = qword_1004AB630;
  sub_100018630(0, &qword_1004A3F00);
  static DispatchQoS.userInteractive.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10015941C(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0);
  sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(v1 + v24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + qword_1004AB638) = 0;
  *(v1 + qword_1004AB640) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10014D9B8()
{
  v1 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-v2];
  v4 = type metadata accessor for MeasurementHistoryItem();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_10014DB40(v3);
  sub_100018F04(v3, &qword_1004A28C0);
  v5 = *(**(v0 + qword_1004AB540) + 200);

  v7 = v5(v6);

  v10 = v0;
  (*(*v7 + 296))(sub_10015AC10, v9);
}

uint64_t sub_10014DB40(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v88 = v4;
  v89 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v92 = &v85 - v6;
  v7 = type metadata accessor for MeasurementHistoryItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v86 = v9;
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = (&v85 - v11);
  v12 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v97 = type metadata accessor for MeasurementsHistory();
  __chkstk_darwin(v97);
  v93 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v85 - v24;
  v94 = v8;
  v26 = *(v8 + 48);
  v96 = a1;
  if ((v26)(a1, 1, v7, v23) != 1 || (v85 = v17, , StateValue.wrappedValue.getter(), , sub_10006C92C(&v25[v97[5]], v20, &qword_1004A28C0), sub_10015A064(v25, type metadata accessor for MeasurementsHistory), v27 = v26(v20, 1, v7), v17 = v85, result = sub_100018F04(v20, &qword_1004A28C0), v27 != 1) && (v1[qword_1004D4F40] & 1) == 0)
  {
    sub_10006C92C(v96, v14, &qword_1004A28C0);
    v29 = v7;
    if (v26(v14, 1, v7) == 1)
    {
      v30 = v1;

      v31 = v93;
      StateValue.wrappedValue.getter();

      sub_10006C92C(v31 + v97[5], v17, &qword_1004A28C0);
      sub_10015A064(v31, type metadata accessor for MeasurementsHistory);
      if (v26(v14, 1, v29) != 1)
      {
        sub_100018F04(v14, &qword_1004A28C0);
      }
    }

    else
    {
      v30 = v1;
      sub_10015A540(v14, v17, type metadata accessor for MeasurementHistoryItem);
      (*(v94 + 56))(v17, 0, 1, v7);
    }

    if (v26(v17, 1, v29) == 1)
    {
      return sub_100018F04(v17, &qword_1004A28C0);
    }

    else
    {
      v32 = v95;
      sub_10015A540(v17, v95, type metadata accessor for MeasurementHistoryItem);
      v33 = *(**&v30[qword_1004AB550] + 144);

      v33(v98, v34);

      v35 = *v32;
      v36 = v32[1];
      v37 = sub_10009F2F8(*v32, v36, v98[0]);

      if (v37)
      {
        return sub_10015A064(v32, type metadata accessor for MeasurementHistoryItem);
      }

      v38 = qword_1004AB568;
      swift_beginAccess();
      v39 = *&v30[v38];

      v40 = sub_10009F2F8(v35, v36, v39);

      if (v40)
      {
        return sub_10015A064(v32, type metadata accessor for MeasurementHistoryItem);
      }

      else
      {
        v96 = v29;
        v41 = v30;
        if (v30[qword_1004AB598] == 1)
        {
          v30[qword_1004AB598] = 0;
        }

        v42 = v92;
        IndexPath.init(row:section:)();
        v43 = *&v30[qword_1004AB508];
        v44 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
        v97 = *(v43 + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
        v45 = v87;
        sub_1001594B8(v32, v87, type metadata accessor for MeasurementHistoryItem);
        v47 = v89;
        v46 = v90;
        v48 = v91;
        (*(v90 + 16))(v89, v42, v91);
        v49 = (*(v94 + 80) + 24) & ~*(v94 + 80);
        v50 = (v86 + *(v46 + 80) + v49) & ~*(v46 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = v41;
        v52 = v45;
        v53 = v51;
        sub_10015A540(v52, v51 + v49, type metadata accessor for MeasurementHistoryItem);
        (*(v46 + 32))(v53 + v50, v47, v48);
        v54 = swift_allocObject();
        *(v54 + 16) = sub_10015A458;
        *(v54 + 24) = v53;
        v98[4] = sub_100089BB8;
        v98[5] = v54;
        v98[0] = _NSConcreteStackBlock;
        v98[1] = 1107296256;
        v98[2] = sub_1000DC708;
        v98[3] = &unk_10046FA08;
        v55 = _Block_copy(v98);
        v56 = v97;
        v57 = v41;
        v58 = v43;
        v59 = v57;

        v60 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v98[4] = sub_10015A538;
        v98[5] = v60;
        v98[0] = _NSConcreteStackBlock;
        v98[1] = 1107296256;
        v98[2] = sub_1001514AC;
        v98[3] = &unk_10046FA30;
        v61 = _Block_copy(v98);

        [v56 performBatchUpdates:v55 completion:v61];
        _Block_release(v61);
        _Block_release(v55);

        v62 = *(v58 + v44);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v62 rectForRowAtIndexPath:isa];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v99.origin.x = v65;
        v99.origin.y = v67;
        v99.size.width = v69;
        v99.size.height = v71;
        Height = CGRectGetHeight(v99);
        v73 = &v59[qword_1004AB620];
        if (v59[qword_1004AB620 + 8] == 1)
        {
          v74 = Height;
          memcpy(v98, v95 + *(v96 + 28), 0x346uLL);
          if (!sub_1000218D8(v98))
          {
            sub_1000218E4(v98);
            *v73 = v74;
            *(v73 + 8) = 0;
          }
        }

        v75 = qword_1004AB560;
        swift_beginAccess();
        if (*(*&v59[v75] + 16) >= 2uLL)
        {
          v76 = *(v58 + v44);
          v77 = v89;
          IndexPath.init(row:section:)();
          v78 = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v90 + 8))(v77, v91);
          [v76 scrollToRowAtIndexPath:v78 atScrollPosition:1 animated:1];
        }

        v79 = qword_1004AB618;
        if ((v59[qword_1004AB618] & 1) == 0)
        {
          v80 = [*(*&v59[qword_1004AB590] + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) superview];
          [v80 setNeedsLayout];
          [v80 layoutIfNeeded];

          v59[v79] = 1;
        }

        v81 = *(*&v59[v75] + 16);
        v82 = *(**&v59[qword_1004AB530] + 400);

        v83 = v82(v98);
        *v84 = v81;
        v83(v98, 0);

        (*(v90 + 8))(v92, v91);
        sub_10015A064(v95, type metadata accessor for MeasurementHistoryItem);
      }
    }
  }

  return result;
}

void sub_10014E608()
{
  isEscapingClosureAtFileLocation = v0;
  if (*(v0 + qword_1004AB608))
  {
    *(v0 + qword_1004AB608) = 0;
    return;
  }

  sub_100018630(0, &qword_1004A1930);
  p_cb = &OBJC_PROTOCOL___MTLRenderPipelineState.cb;
  if (static UIDevice.isIPhone()())
  {
    v3 = *(**(v0 + qword_1004AB540) + 144);

    v3(&v20, v4);

    if (BYTE3(v20) == 1)
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = isEscapingClosureAtFileLocation;
      p_cb = swift_allocObject();
      p_cb[2] = sub_10015AC98;
      p_cb[3] = v6;
      v24 = sub_100089BB8;
      v25 = p_cb;
      v20 = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_1000DC708;
      v23 = &unk_10046FC60;
      v7 = _Block_copy(&v20);
      v8 = isEscapingClosureAtFileLocation;

      [v5 performWithoutAnimation:v7];
      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }

  v9 = *(**(isEscapingClosureAtFileLocation + p_cb[168]) + 144);

  v9(&v20, v10);

  if (BYTE3(v20))
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  [*(isEscapingClosureAtFileLocation + qword_1004AB508) alpha];
  if (v12 != v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = isEscapingClosureAtFileLocation;
    *(v13 + 24) = v11;
    v14 = objc_allocWithZone(UIViewPropertyAnimator);
    v24 = sub_10015AC78;
    v25 = v13;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100041180;
    v23 = &unk_10046FBE8;
    v15 = _Block_copy(&v20);
    v16 = isEscapingClosureAtFileLocation;

    v17 = [v14 initWithDuration:v15 dampingRatio:0.5 animations:0.6];
    _Block_release(v15);
    [v17 setInterruptible:0];
    [v17 startAnimation];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_10014E9A4()
{
  v1 = v0;
  if (v0[qword_1004AB610])
  {
    v0[qword_1004AB610] = 0;
    return;
  }

  v2 = qword_1004AB540;
  v3 = *(**&v0[qword_1004AB540] + 144);

  v3(v19, v4);

  if (LOBYTE(v19[0]))
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_10015AC38;
    *(v7 + 24) = v6;
    v19[4] = sub_100089BB8;
    v19[5] = v7;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_1000DC708;
    v19[3] = &unk_10046FB98;
    v8 = _Block_copy(v19);
    v9 = v1;

    [v5 performWithoutAnimation:v8];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
      return;
    }

    sub_10014EF54(v9);
    v10 = sub_10015AC38;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(**&v1[v2] + 144);

  v11(v19, v12);

  if (BYTE3(v19[0]) == 1)
  {
    sub_10014EF54(v1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(**&v1[v2] + 144);

    v15(v19, v16);

    if (LOBYTE(v19[0]) == 2 || (v17 = *(**&v1[v2] + 144), v18 = , v17(v19, v18), , LOBYTE(v19[0]) == 1))
    {
      [v14 dismissViewControllerAnimated:0 completion:0];
    }
  }

  sub_1000223C4(v10);
}

void sub_10014ECB8(uint64_t a1)
{
  v2 = sub_10000F974(&unk_1004ABA88);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v6 = *(a1 + qword_1004AB570);
  if (v6)
  {
    v7 = v6;
    sub_1001938F0(0);
    v8 = *(**(a1 + qword_1004AB558) + 400);

    v9 = v8(v17);
    swift_unknownObjectWeakAssign();
    v9(v17, 0);

    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_1001501AC(0, v5, 1);

    sub_100018F04(v5, &unk_1004ABA88);
  }

  v11 = *(a1 + qword_1004AB518);
  if (v11)
  {
    [v11 dismissViewControllerAnimated:1 completion:{0, v3}];
  }

  [*(*(a1 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
  v12 = *(**(a1 + qword_1004AB540) + 400);

  v13 = v12(v17);
  *(v14 + 4) = 0;
  v13(v17, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10014EF54(uint64_t a1)
{
  v1 = *(a1 + qword_1004AB5A0);
  v2 = [v1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    sub_100018630(0, &qword_1004ABB88);
    if ([v3 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) != 0 || (sub_100018630(0, &unk_1004ABB90), (objc_msgSend(v3, "isKindOfClass:", swift_getObjCClassFromMetadata())) || (type metadata accessor for MeasurementDetailSheetViewController(), (objc_msgSend(v3, "isKindOfClass:", swift_getObjCClassFromMetadata())) || (type metadata accessor for HistoryDetailSheetViewController(), objc_msgSend(v3, "isKindOfClass:", swift_getObjCClassFromMetadata())))
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_10014F080(uint64_t a1)
{
  v2 = sub_10000F974(&unk_1004ABA88);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v16[-v4];
  v6 = *(a1 + qword_1004AB570);
  if (v6)
  {
    v7 = v6;
    sub_1001938F0(0);
    v8 = *(**(a1 + qword_1004AB558) + 400);

    v9 = v8(v16);
    swift_unknownObjectWeakAssign();
    v9(v16, 0);

    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_1001501AC(0, v5, 1);

    sub_100018F04(v5, &unk_1004ABA88);
  }

  v11 = *(a1 + qword_1004AB518);
  if (v11)
  {
    [v11 dismissViewControllerAnimated:1 completion:{0, v3}];
  }

  [*(*(a1 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
  v12 = *(**(a1 + qword_1004AB540) + 400);

  v13 = v12(v16);
  *(v14 + 4) = 0;
  v13(v16, 0);
}

uint64_t sub_10014F314()
{
  v1 = v0;
  v2 = type metadata accessor for SpatialPlattersHistoryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = qword_1004AB560;
  swift_beginAccess();
  v7 = *&v1[v6];
  v8 = *(v7 + 16);
  if (v8)
  {
    v30 = *&v1[v6];
    v31 = v6;
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v32 = *(v3 + 72);
    v33 = qword_1004AB550;

    do
    {
      sub_1001594B8(v9, v5, type metadata accessor for SpatialPlattersHistoryItem);
      v10 = *v5;
      v11 = v5[1];
      v12 = v1;
      v13 = *(**&v1[v33] + 400);

      v14 = v13(&aBlock);
      v16 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v16;
      *v16 = 0x8000000000000000;
      sub_100158D14(v10, v11, isUniquelyReferenced_nonNull_native);

      *v16 = v40;

      v14(&aBlock, 0);
      v1 = v12;

      sub_10015A064(v5, type metadata accessor for SpatialPlattersHistoryItem);
      v9 += v32;
      --v8;
    }

    while (v8);

    v6 = v31;
  }

  *&v1[v6] = _swiftEmptyArrayStorage;

  v18 = *&v1[qword_1004AB530];
  aBlock = 0;
  LOWORD(v35) = 1;
  v19 = *(*v18 + 392);

  v19(&aBlock);

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1001593F4;
  *(v22 + 24) = v21;
  v38 = sub_100031688;
  v39 = v22;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000DC708;
  v37 = &unk_10046F8F0;
  v23 = _Block_copy(&aBlock);
  v24 = v1;

  [v20 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v26 = *&v24[qword_1004AB518];
    if (v26)
    {
      [v26 dismissViewControllerAnimated:1 completion:0];
    }

    [*(*&v24[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
    v27 = *(**&v24[qword_1004AB540] + 400);

    v28 = v27(&aBlock);
    *(v29 + 4) = 0;
    v28(&aBlock, 0);
  }

  return result;
}

void sub_10014F7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1004AB518);
    if (!v7)
    {
LABEL_10:

      return;
    }

    v8 = v7;
    v9 = [v8 navigationItem];
    v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v6 action:"closeHistory"];
    [v9 setRightBarButtonItem:v10];

    v11 = [objc_opt_self() mainBundle];
    v27._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x5F59524F54534948;
    v12._object = 0xED0000454C544954;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v27);

    v14 = String._bridgeToObjectiveC()();

    [v8 setTitle:v14];

    [v8 setView:*&v6[qword_1004AB508]];
    v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
    v16 = [v15 presentationController];
    if (v16)
    {
      v17 = v16;
      [v16 setDelegate:v6];
    }

    sub_100018630(0, &qword_1004A1930);
    v18 = v15;
    if (static UIDevice.isIPhone()())
    {
      v18 = [v15 sheetPresentationController];

      if (!v18)
      {
LABEL_9:

        v6 = v15;
        goto LABEL_10;
      }

      sub_10000F974(&unk_1004A3F10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1003D6280;
      v20 = objc_opt_self();
      *(v19 + 32) = [v20 mediumDetent];
      *(v19 + 40) = [v20 largeDetent];
      sub_100018630(0, &qword_1004A6920);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 setDetents:isa];

      [v18 setPrefersGrabberVisible:1];
      [v18 setPrefersScrollingExpandsWhenScrolledToEdge:0];
    }

    v22 = *&v6[qword_1004AB5A0];
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    aBlock[4] = sub_100158C30;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046F710;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    sub_100038EBC(a2);

    [v25 presentViewController:v15 animated:1 completion:v24];
    _Block_release(v24);

    v6 = v8;
    v8 = v15;
    v15 = v25;
    goto LABEL_9;
  }
}

void sub_10014FBDC(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + qword_1004AB5A0);
  v6 = [v5 presentedViewController];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for MeasurementDetailSheetViewController();
    if ([v7 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;
      v10[4] = sub_10015ACF4;
      v10[5] = v8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100041180;
      v10[3] = &unk_10046F6C0;
      v9 = _Block_copy(v10);
      sub_100038EBC(a1);

      [v5 dismissViewControllerAnimated:1 completion:v9];
      _Block_release(v9);

      return;
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_10014FD38(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[qword_1004AB570];
  if (v3)
  {
    v4 = *&v2[qword_1004AB518];
    if (v4)
    {
      v5 = *&v2[qword_1004AB520];
      if (v5)
      {
        v8 = swift_allocObject();
        v8[2] = v5;
        v8[3] = v3;
        v8[4] = v2;
        v8[5] = a1;
        v8[6] = a2;
        v16[4] = sub_100158BD0;
        v16[5] = v8;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1107296256;
        v16[2] = sub_100041180;
        v16[3] = &unk_10046F5F8;
        v9 = _Block_copy(v16);
        v10 = v3;
        v11 = v5;
        v12 = v10;
        v13 = v11;
        v14 = v4;
        v15 = v2;
        sub_100038EBC(a1);

        [v14 dismissViewControllerAnimated:1 completion:v9];
        _Block_release(v9);
      }
    }
  }
}

void sub_10014FEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + qword_1004ADDB8);
  if (v5)
  {
    [a1 setView:*(v5 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView)];
    sub_1001937D8(a1);
    v19 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
    v10 = [v19 presentationController];
    if (v10)
    {
      v11 = v10;
      [v10 setDelegate:a3];
    }

    sub_100018630(0, &qword_1004A1930);
    v12 = v19;
    if ((static UIDevice.isIPhone()() & 1) == 0)
    {
      goto LABEL_7;
    }

    v12 = [v19 sheetPresentationController];

    if (v12)
    {
      sub_10000F974(&unk_1004A3F10);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1003D6280;
      v14 = objc_opt_self();
      *(v13 + 32) = [v14 mediumDetent];
      *(v13 + 40) = [v14 largeDetent];
      sub_100018630(0, &qword_1004A6920);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 setDetents:isa];

      [v12 setPrefersGrabberVisible:1];
LABEL_7:

      v16 = *(a3 + qword_1004AB5A0);
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;
      aBlock[4] = sub_10015ACF4;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_10046F648;
      v18 = _Block_copy(aBlock);
      sub_100038EBC(a4);

      [v16 presentViewController:v19 animated:1 completion:v18];
      _Block_release(v18);

      return;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001501AC(char a1, uint64_t a2, char a3)
{
  v7 = sub_10000F974(&unk_1004ABA88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = aBlock - v10;
  v12 = *&v3[qword_1004AB570];
  if (v12)
  {
    if (a1)
    {
      *&v12[qword_1004ADDC8 + 8] = &off_10046F4F8;
      swift_unknownObjectWeakAssign();
      sub_10006C92C(a2, v11, &unk_1004ABA88);
      v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v14 = swift_allocObject();
      sub_100158B04(v11, v14 + v13);
      *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
      v15 = v12;
      v16 = v3;
      sub_10014FD38(sub_100158B74, v14);
    }

    else
    {
      v17 = *&v3[qword_1004AB520];
      if (!v17)
      {
        return;
      }

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = a3 & 1;
      aBlock[4] = sub_100158AE0;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_10046F580;
      v20 = _Block_copy(aBlock);
      v21 = v12;
      v22 = v17;

      [v22 dismissViewControllerAnimated:1 completion:v20];
      _Block_release(v20);
    }

    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v12);
  }
}

uint64_t sub_100150444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C92C(a1, v6, &unk_1004ABA88);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100018F04(v6, &unk_1004ABA88);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = *(*(a2 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v12 deselectRowAtIndexPath:isa animated:0];

  return (*(v8 + 8))(v10, v7);
}

void sub_100150630(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100150714();
    if (a2)
    {
    }

    else
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = v5;

      sub_10014FBDC(sub_100158BE4, v6);
    }
  }
}

uint64_t sub_100150714()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = qword_1004AB570;
  v6 = *(v0 + qword_1004AB570);
  if (v6)
  {
    v7 = qword_1004ADE30;
    v8 = *(**&v6[qword_1004ADE30] + 144);
    v9 = v6;

    v8(v20, v10);

    v11 = &v9[qword_1004ADDB0];
    LOBYTE(v8) = sub_10009F2F8(*&v9[qword_1004ADDB0], *&v9[qword_1004ADDB0 + 8], v20[0]);

    if (v8)
    {
      v12 = *v11;
      v13 = v11[1];
      v14 = *(**&v6[v7] + 400);

      v15 = v14(v20);
      sub_10009F3F0(v12, v13);

      v15(v20, 0);
    }

    [v9 removeFromSuperview];

    v16 = *(v0 + v5);
  }

  else
  {
    v16 = 0;
  }

  *(v0 + v5) = 0;

  v17 = type metadata accessor for IndexPath();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = qword_1004AB578;
  swift_beginAccess();
  sub_100158C64(v4, v1 + v18);
  return swift_endAccess();
}

void sub_10015094C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_10000F974(&qword_1004A3E60);
  __chkstk_darwin(v5 - 8);
  v39 = &v38 - v6;
  v7 = sub_10000F974(&unk_1004ABAD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for MeasurementCapture();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MeasurementHistoryItem();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpatialPlattersHistoryItem();
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  sub_1001594B8(a2, v16, type metadata accessor for MeasurementHistoryItem);
  v21 = *(v18 + 28);
  sub_1001594B8(v16, v20, type metadata accessor for MeasurementHistoryItem);
  sub_10006C92C(&v16[*(v14 + 32)], v9, &unk_1004ABAD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
    sub_100018F04(v9, &unk_1004ABAD0);
    v22 = 0;
  }

  else
  {
    v23 = v38;
    sub_10015A540(v9, v38, type metadata accessor for MeasurementCapture);
    URL.path.getter();
    v24 = objc_allocWithZone(UIImage);
    v25 = String._bridgeToObjectiveC()();

    v22 = [v24 initWithContentsOfFile:v25];

    sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
    sub_10015A064(v23, type metadata accessor for MeasurementCapture);
  }

  *&v20[v21] = v22;
  swift_beginAccess();
  v26 = v39;
  sub_10015A540(v20, v39, type metadata accessor for SpatialPlattersHistoryItem);
  sub_100069484(0, 0, v26);
  swift_endAccess();
  v27 = *v40;
  v28 = v40[1];
  v29 = qword_1004AB568;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a1 + v29);
  *(a1 + v29) = 0x8000000000000000;
  sub_100158D14(v27, v28, isUniquelyReferenced_nonNull_native);

  *(a1 + v29) = v42;
  swift_endAccess();
  v31 = *(*(a1 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
  sub_10000F974(&qword_1004ABB60);
  v32 = type metadata accessor for IndexPath();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1003D5360;
  (*(v33 + 16))(v35 + v34, v41, v32);
  v36 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 insertRowsAtIndexPaths:isa withRowAnimation:0];
}

void sub_100150E88(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      *v5 = Contexts.UIKit.init()();
      (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
      v8 = _dispatchPreconditionTest(_:)();
      (*(v3 + 8))(v5, v2);
      if ((v8 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_100150FCC();
    }
  }
}

uint64_t sub_100150FCC()
{
  v1 = type metadata accessor for MeasurementHistoryItem();
  __chkstk_darwin(v1 - 8);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SpatialPlattersHistoryItem();
  v52 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = Contexts.UIKit.init()();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v12 = qword_1004AB5D0;
  result = swift_beginAccess();
  v13 = *(v0 + v12);
  if (*(v13 + 16))
  {
    v43 = v12;
    v14 = v13 + 56;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 56);
    v18 = qword_1004AB560;
    v19 = qword_1004AB5D8;

    v49 = v18;
    swift_beginAccess();
    v45 = v19;
    result = swift_beginAccess();
    v20 = 0;
    v21 = (v15 + 63) >> 6;
    v50 = v0;
    v51 = v5;
    v46 = v21;
    v47 = v13 + 56;
    v48 = v13;
    while (v17)
    {
LABEL_13:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = (*(v13 + 48) + ((v20 << 10) | (16 * v23)));
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v0 + v49);
      v28 = *(v27 + 16);

      if (v28)
      {
        v29 = 0;
        while (v29 < *(v27 + 16))
        {
          v30 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v31 = *(v52 + 72) * v29;
          sub_1001594B8(v27 + v30 + v31, v5, type metadata accessor for SpatialPlattersHistoryItem);
          if (*v5 == v26 && v5[1] == v25)
          {
            sub_10015A064(v5, type metadata accessor for SpatialPlattersHistoryItem);
LABEL_24:

            v36 = *(v50 + v49);
            if (v29 >= *(v36 + 16))
            {
              goto LABEL_30;
            }

            v37 = v36 + v30 + v31;
            v38 = v44;
            sub_1001594B8(v37, v44, type metadata accessor for MeasurementHistoryItem);
            v39 = *(v50 + v45);

            v40 = sub_10009F2F8(v26, v25, v39);

            v0 = v50;

            sub_10014CA74(v29, v38, (v40 & 1) == 0);
            result = sub_10015A064(v38, type metadata accessor for MeasurementHistoryItem);
            v5 = v51;
            goto LABEL_7;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v34 = v5;
          v35 = v33;
          result = sub_10015A064(v34, type metadata accessor for SpatialPlattersHistoryItem);
          if (v35)
          {
            goto LABEL_24;
          }

          ++v29;
          v5 = v51;
          if (v28 == v29)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v0 = v50;
LABEL_7:
      v14 = v47;
      v13 = v48;
      v21 = v46;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        *(v0 + v43) = &_swiftEmptySetSingleton;

        v41 = v45;
        swift_beginAccess();
        *(v0 + v41) = &_swiftEmptySetSingleton;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v20 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1001514AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100151500(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A28C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for MeasurementHistoryItem();
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = (v6 + 56);
    v12 = *(v6 + 72);
    v13 = a1 + v10 + v12 * (v9 - 1);
    v14 = -v12;
    do
    {
      --v9;
      sub_1001594B8(v13, v8, type metadata accessor for MeasurementHistoryItem);
      sub_1001594B8(v8, v4, type metadata accessor for MeasurementHistoryItem);
      (*v11)(v4, 0, 1, v5);
      sub_10014DB40(v4);
      sub_100018F04(v4, &qword_1004A28C0);
      sub_10015A064(v8, type metadata accessor for MeasurementHistoryItem);
      v13 += v14;
    }

    while (v9);
  }
}

uint64_t sub_1001516D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = sub_100158FB8;
  v13[4] = v12;
  aBlock[4] = sub_100159038;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046F788;
  v14 = _Block_copy(aBlock);

  v15 = a3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10015941C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

unint64_t sub_1001519E8(uint64_t a1, void (*a2)(double *, void), uint64_t a3)
{
  v157[2] = a3;
  v158 = a2;
  v165 = type metadata accessor for UTType();
  v4 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000F974(&unk_1004ABAD0);
  __chkstk_darwin(v6 - 8);
  v175 = v157 - v7;
  v174 = type metadata accessor for MeasurementCapture();
  v8 = *(v174 - 8);
  __chkstk_darwin(v174);
  v10 = v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for MeasurementHistoryItem();
  __chkstk_darwin(v178);
  v12 = v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SpatialPlattersHistoryItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1004AB560;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = *(v18 + 16);
  if (!v19)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_43:
    v158(v23, 0);
  }

  v20 = v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v21 = *(v14 + 72);
  v163 = "RECTANGLE_LENGTH";
  v162 = "accessibilitySeparator";
  v159 = NSFontAttributeName;
  v173 = (v8 + 48);
  v170 = 0x8000000100409820;
  v160 = (v4 + 8);
  v157[1] = v18;

  v22 = v19 - 1;
  v23 = _swiftEmptyArrayStorage;
  v176 = _swiftEmptyDictionarySingleton;
  v169 = xmmword_1003D5360;
  v161 = xmmword_1003D5EE0;
  v167 = v12;
  v168 = v10;
  v24 = v178;
  v171 = v21;
  v172 = v16;
  while (1)
  {
    sub_1001594B8(v20, v16, type metadata accessor for SpatialPlattersHistoryItem);
    sub_1001594B8(v16, v12, type metadata accessor for MeasurementHistoryItem);
    sub_10015A064(v16, type metadata accessor for SpatialPlattersHistoryItem);
    v25 = *(v24 + 28);
    memcpy(v184, &v12[v25], 0x346uLL);
    v26 = sub_1000218D8(v184);
    if (v26)
    {
      if (v26 == 1)
      {
        sub_1000218E4(v184);
        memcpy(v183, &v12[v25], 0x346uLL);
        if (sub_1000218D8(v183) != 1)
        {
          goto LABEL_39;
        }

        v180 = v20;
        v27 = sub_1000218E4(v183);
        v28 = sub_1001935F8();
        v179 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v28];

        sub_10000F974(&unk_1004AF710);
        v29 = swift_allocObject();
        *(v29 + 16) = v161;
        v30 = objc_opt_self();
        v177 = v22;
        v31 = v30;
        v32 = [v30 mainBundle];
        v33._countAndFlagsBits = 0xD000000000000010;
        v193._object = 0xE000000000000000;
        v33._object = (v162 | 0x8000000000000000);
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        v193._countAndFlagsBits = 0;
        v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v193);

        *(v29 + 56) = &type metadata for String;
        v36 = sub_1000192D0();
        *(v29 + 64) = v36;
        *(v29 + 32) = v35;
        v37 = *(v27 + 80);
        v191[4] = *(v27 + 64);
        v191[5] = v37;
        v192[0] = *(v27 + 96);
        v38 = *(v27 + 110);
        v166 = v23;
        *(v192 + 14) = v38;
        v39 = *(v27 + 16);
        v191[0] = *v27;
        v191[1] = v39;
        v40 = *(v27 + 48);
        v191[2] = *(v27 + 32);
        v191[3] = v40;
        v41 = sub_10001912C(v191);
        *(v29 + 96) = &type metadata for String;
        *(v29 + 104) = v36;
        *(v29 + 72) = v41;
        *(v29 + 80) = v42;
        v43 = [v31 mainBundle];
        v194._object = 0xE000000000000000;
        v44._countAndFlagsBits = 0x4C474E4154434552;
        v44._object = 0xEF48544449575F45;
        v45._countAndFlagsBits = 0;
        v45._object = 0xE000000000000000;
        v194._countAndFlagsBits = 0;
        v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v194);

        *(v29 + 136) = &type metadata for String;
        *(v29 + 144) = v36;
        *(v29 + 112) = v46;
        v47 = *(v27 + 200);
        v189[4] = *(v27 + 184);
        v189[5] = v47;
        v190[0] = *(v27 + 216);
        *(v190 + 14) = *(v27 + 230);
        v48 = *(v27 + 136);
        v189[0] = *(v27 + 120);
        v189[1] = v48;
        v49 = *(v27 + 168);
        v189[2] = *(v27 + 152);
        v189[3] = v49;
        v50 = sub_10001912C(v189);
        *(v29 + 176) = &type metadata for String;
        *(v29 + 184) = v36;
        *(v29 + 152) = v50;
        *(v29 + 160) = v51;
        v52 = [v31 mainBundle];
        v195._object = 0xE000000000000000;
        v53._countAndFlagsBits = 0x4C414E4F47414944;
        v53._object = 0xE800000000000000;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        v195._countAndFlagsBits = 0;
        v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v195);

        *(v29 + 216) = &type metadata for String;
        *(v29 + 224) = v36;
        *(v29 + 192) = v55;
        v56 = *(v27 + 320);
        v187[4] = *(v27 + 304);
        v187[5] = v56;
        v188[0] = *(v27 + 336);
        *(v188 + 14) = *(v27 + 350);
        v57 = *(v27 + 256);
        v187[0] = *(v27 + 240);
        v187[1] = v57;
        v58 = *(v27 + 288);
        v187[2] = *(v27 + 272);
        v187[3] = v58;
        v59 = sub_10001912C(v187);
        *(v29 + 256) = &type metadata for String;
        *(v29 + 264) = v36;
        *(v29 + 232) = v59;
        *(v29 + 240) = v60;
        v61 = v31;
        v22 = v177;
        v62 = [v61 mainBundle];
        v196._object = 0xE000000000000000;
        v63._countAndFlagsBits = 0x5F45434146525553;
        v63._object = 0xEC00000041455241;
        v64._countAndFlagsBits = 0;
        v64._object = 0xE000000000000000;
        v196._countAndFlagsBits = 0;
        v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v196);

        v23 = v166;
        *(v29 + 296) = &type metadata for String;
        *(v29 + 304) = v36;
        *(v29 + 272) = v65;
        v67 = *(v27 + 360);
        v66 = *(v27 + 368);
        *(v29 + 336) = &type metadata for String;
        *(v29 + 344) = v36;
        *(v29 + 312) = v67;
        *(v29 + 320) = v66;
        v68 = *(v27 + 440);
        v69 = *(v27 + 448);
        *(v29 + 376) = &type metadata for String;
        *(v29 + 384) = v36;
        v24 = v178;
        *(v29 + 352) = v68;
        *(v29 + 360) = v69;

        v70._countAndFlagsBits = String.init(format:_:)();
        v181 = 10;
        v182 = 0xE100000000000000;
        String.append(_:)(v70);

        v71 = objc_allocWithZone(NSAttributedString);
        v72 = String._bridgeToObjectiveC()();

        v73 = [v71 initWithString:v72];

        v74 = v179;
        [v179 appendAttributedString:v73];

        v75 = v74;
      }

      else
      {
        sub_1000218E4(v184);
        v75 = sub_1001A3074(v12);
        if (!v75)
        {
          goto LABEL_39;
        }

        v180 = v20;
      }

      v97 = v75;
    }

    else
    {
      sub_1000218E4(v184);
      memcpy(v183, &v12[v25], 0x346uLL);
      if (sub_1000218D8(v183))
      {
        goto LABEL_39;
      }

      v180 = v20;
      v76 = sub_1000218E4(v183);
      sub_10000F974(&qword_1004ABAE8);
      v77 = swift_allocObject();
      *(v77 + 16) = v169;
      v78 = v22;
      v79 = v23;
      v80 = v159;
      *(v77 + 32) = v159;
      v81 = objc_opt_self();
      v82 = v80;
      v23 = v79;
      v22 = v78;
      v12 = v167;
      [v81 systemFontSize];
      *(v77 + 40) = [v81 systemFontOfSize:? weight:?];
      v83 = sub_10019A388(v77);
      swift_setDeallocating();
      sub_100018F04(v77 + 32, &unk_1004ABAF0);
      swift_deallocClassInstance();
      sub_100193DC8(v83);

      v84 = objc_allocWithZone(NSAttributedString);
      v85 = String._bridgeToObjectiveC()();
      type metadata accessor for Key(0);
      sub_10015941C(&qword_1004A72A0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v87 = [v84 initWithString:v85 attributes:isa];

      v88 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v87];
      v89 = *(v76 + 80);
      v185[4] = *(v76 + 64);
      v185[5] = v89;
      v186[0] = *(v76 + 96);
      *(v186 + 14) = *(v76 + 110);
      v90 = *(v76 + 16);
      v185[0] = *v76;
      v185[1] = v90;
      v91 = *(v76 + 48);
      v185[2] = *(v76 + 32);
      v185[3] = v91;
      v92._countAndFlagsBits = sub_10001912C(v185);
      v181 = 10;
      v182 = 0xE100000000000000;
      String.append(_:)(v92);

      v93 = objc_allocWithZone(NSAttributedString);
      v94 = String._bridgeToObjectiveC()();

      v95 = v93;
      v24 = v178;
      v96 = [v95 initWithString:v94];

      [v88 appendAttributedString:v96];
      v97 = v88;
    }

    v98 = v97;
    v99 = objc_allocWithZone(NSMutableAttributedString);
    v179 = v98;
    v100 = [v99 initWithAttributedString:v98];
    v101 = objc_allocWithZone(NSAttributedString);
    v102 = String._bridgeToObjectiveC()();
    v103 = [v101 initWithString:v102];

    [v100 appendAttributedString:v103];
    v104 = v175;
    sub_10006C92C(&v12[*(v24 + 24)], v175, &unk_1004ABAD0);
    v105 = v174;
    if ((*v173)(v104, 1, v174) == 1)
    {
      break;
    }

    v122 = v168;
    sub_10015A540(v104, v168, type metadata accessor for MeasurementCapture);
    v123 = *(v105 + 20);
    v124 = v176;
    if (v176[2])
    {
      result = sub_100198770(v123 + v122);
      if (v125)
      {
        v126 = *(v124[7] + 8 * result);
        if ((v126 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v126 >= *(v23 + 2))
        {
          goto LABEL_47;
        }

        v127 = v23[v126 + 4];
        if (*(*&v127 + 16))
        {

          v128 = sub_100198230(0xD00000000000001ALL, v170);
          if (v129)
          {
            sub_10000FE60(*(*&v127 + 56) + 32 * v128, v183);

            sub_100018630(0, &qword_1004ABA98);
            if (swift_dynamicCast())
            {
              v130 = v181;
              [v181 appendAttributedString:v100];

              v131 = v179;
              sub_10015A064(v122, type metadata accessor for MeasurementCapture);
LABEL_38:
              v21 = v171;
              v16 = v172;
              v20 = v180;
              goto LABEL_39;
            }
          }

          else
          {
          }
        }
      }
    }

    v166 = v123;
    URL.path.getter();
    v132 = objc_allocWithZone(UIImage);
    v133 = String._bridgeToObjectiveC()();

    v134 = [v132 initWithContentsOfFile:v133];

    if (!v134)
    {
      sub_10015A064(v122, type metadata accessor for MeasurementCapture);

      v156 = v179;
      goto LABEL_38;
    }

    v177 = v22;
    sub_10000F974(&qword_1004A7558);
    v135 = swift_allocObject();
    *(v135 + 16) = v169;
    v136 = v23;
    v137 = v164;
    static UTType.png.getter();
    v138 = UTType.identifier.getter();
    v140 = v139;
    (*v160)(v137, v165);
    *(v135 + 32) = v138;
    *(v135 + 40) = v140;
    *(v135 + 72) = sub_100018630(0, &qword_1004ABAE0);
    *(v135 + 48) = v134;
    v141 = v134;
    v142 = sub_10019AC90(v135);
    swift_setDeallocating();
    sub_100018F04(v135 + 32, &qword_1004A7560);
    swift_deallocClassInstance();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_100068884(0, *(v136 + 2) + 1, 1, v136);
    }

    v144 = *(v136 + 2);
    v143 = *(v136 + 3);
    v145 = v136;
    if (v144 >= v143 >> 1)
    {
      v145 = sub_100068884((v143 > 1), v144 + 1, 1, v136);
    }

    v146 = v145;
    *(v145 + 2) = v144 + 1;
    *&v145[v144 + 4] = v142;
    v147 = swift_allocObject();
    *(v147 + 16) = v169;
    *(v147 + 32) = 0xD00000000000001ALL;
    *(v147 + 40) = v170;
    *(v147 + 72) = sub_100018630(0, &qword_1004ABA98);
    *(v147 + 48) = v100;
    v148 = v100;
    v149 = sub_10019AC90(v147);
    swift_setDeallocating();
    sub_100018F04(v147 + 32, &qword_1004A7560);
    v23 = v146;
    swift_deallocClassInstance();
    v151 = *(v146 + 2);
    v150 = *(v146 + 3);
    if (v151 >= v150 >> 1)
    {
      v23 = sub_100068884((v150 > 1), v151 + 1, 1, v146);
    }

    v20 = v180;
    *(v23 + 2) = v151 + 1;
    *&v23[v151 + 4] = v149;
    v152 = v176;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183[0] = v152;
    v154 = v168;
    sub_1000BC434(v151, v166 + v168, isUniquelyReferenced_nonNull_native);

    v155 = v179;
    sub_10015A064(v154, type metadata accessor for MeasurementCapture);
    v176 = *&v183[0];
    v22 = v177;
    v24 = v178;
    v21 = v171;
    v16 = v172;
LABEL_39:
    sub_10015A064(v12, type metadata accessor for MeasurementHistoryItem);
    if (!v22)
    {

      goto LABEL_43;
    }

    --v22;
    v20 += v21;
  }

  v106 = v22;
  sub_100018F04(v104, &unk_1004ABAD0);
  sub_10000F974(&qword_1004A7558);
  v107 = swift_allocObject();
  v107[4] = 0xD00000000000001ALL;
  v107[5] = v170;
  v107[9] = sub_100018630(0, &qword_1004ABA98);
  v107[6] = v100;
  sub_10000F974(&qword_1004AE100);
  v108 = static _DictionaryStorage.allocate(capacity:)();
  v109 = v100;

  sub_10006C92C((v107 + 4), v183, &qword_1004A7560);
  v110 = v183[0];
  result = sub_100198230(*&v183[0], *(&v183[0] + 1));
  if ((v112 & 1) == 0)
  {
    v108[(result >> 6) + 8] |= 1 << result;
    *(v108[6] + 16 * result) = v110;
    result = sub_1000C0FAC(&v183[1], (v108[7] + 32 * result));
    v113 = v108[2];
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (v114)
    {
      goto LABEL_45;
    }

    v108[2] = v115;

    swift_setDeallocating();
    sub_100018F04((v107 + 4), &qword_1004A7560);
    swift_deallocClassInstance();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100068884(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = v180;
    v21 = v171;
    v116 = v23;
    v117 = *(v23 + 2);
    v118 = v116;
    v119 = *(v116 + 3);
    if (v117 >= v119 >> 1)
    {
      v118 = sub_100068884((v119 > 1), v117 + 1, 1, v118);
    }

    v120 = v179;
    *(v118 + 2) = v117 + 1;
    v121 = &v118[v117];
    v23 = v118;
    *(v121 + 4) = v108;
    v24 = v178;
    v16 = v172;
    v22 = v106;
    v12 = v167;
    goto LABEL_39;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}