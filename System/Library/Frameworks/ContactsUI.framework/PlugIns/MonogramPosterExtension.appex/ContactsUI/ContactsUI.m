void *sub_100001DE0()
{
  v0[7] = 0x4200000042000000;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = 70;
  v1 = swift_unknownObjectRetain();
  v2 = sub_100010E3C(v1);
  v3 = objc_allocWithZone(MTLRenderPipelineDescriptor);
  swift_retain_n();
  v4 = [v3 init];
  v5 = v2[3];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v2[3];
  swift_unknownObjectRetain();
  v8 = sub_1000269F0();
  v9 = [v5 newFunctionWithName:v8];

  swift_unknownObjectRelease();
  [v6 setVertexFunction:v9];
  swift_unknownObjectRelease();
  v10 = v2[3];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v2[3];
  swift_unknownObjectRetain();
  v12 = sub_1000269F0();
  v13 = [v10 newFunctionWithName:v12];

  swift_unknownObjectRelease();
  [v6 setFragmentFunction:v13];
  swift_unknownObjectRelease();
  v14 = [v6 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 setPixelFormat:v2[10]];

  v16 = v2[2];
  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = 0;
  v17 = [v16 newRenderPipelineStateWithDescriptor:v6 error:&v39];
  v18 = v39;
  if (!v17)
  {
    v19 = v18;
    sub_1000261D0();

    swift_willThrow();

    v17 = 0;
  }

  v20 = v2[8];
  v2[8] = v17;
  swift_unknownObjectRelease();
  v21 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v22 = v2[3];
  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v21;
  v24 = v2[3];
  swift_unknownObjectRetain();
  v25 = sub_1000269F0();
  v26 = [v22 newFunctionWithName:v25];

  swift_unknownObjectRelease();
  [v23 setVertexFunction:v26];
  swift_unknownObjectRelease();
  v27 = v2[3];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v2[3];
  swift_unknownObjectRetain();
  v29 = sub_1000269F0();
  v30 = [v27 newFunctionWithName:v29];

  swift_unknownObjectRelease();
  [v23 setFragmentFunction:v30];
  swift_unknownObjectRelease();
  v31 = [v23 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript:0];

  if (!v32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  [v32 setPixelFormat:v2[10]];

  v33 = v2[2];
  swift_unknownObjectRetain();

  if (!v33)
  {
    goto LABEL_22;
  }

  v39 = 0;
  v34 = [v33 newRenderPipelineStateWithDescriptor:v23 error:&v39];
  swift_unknownObjectRelease();
  v35 = v39;
  if (v34)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = v35;
    sub_1000261D0();

    swift_willThrow();

    swift_unknownObjectRelease();
    v34 = 0;
  }

  v37 = v2[9];
  v2[9] = v34;

  swift_unknownObjectRelease();
  return v2;
}

void sub_100002258(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    if (!v2)
    {
      __break(1u);
      goto LABEL_37;
    }

    swift_unknownObjectRetain();
    v4 = [v2 commandBuffer];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 80) width:objc_msgSend(a1 height:"width") mipmapped:objc_msgSend(a1, "height"), 0];
      [v6 setUsage:7];
      [v6 setStorageMode:2];
      v7 = *(v1 + 16);
      if (v7)
      {
        v8 = [v7 newTextureWithDescriptor:v6];
        v9 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
        v10 = [v9 colorAttachments];
        v11 = [v10 objectAtIndexedSubscript:0];

        if (v11)
        {
          [v11 setTexture:v8];

          v12 = [v5 renderCommandEncoderWithDescriptor:v9];
          if (v12)
          {
            if (!*(v1 + 64))
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v13 = v12;
            [v12 setRenderPipelineState:?];
            [v13 setVertexBuffer:*(v1 + 40) offset:0 atIndex:0];
            [v13 setVertexBuffer:*(v1 + 48) offset:0 atIndex:1];
            [v13 setFragmentTexture:a1 atIndex:0];
            [v13 drawPrimitives:4 vertexStart:0 vertexCount:4];
            [v13 endEncoding];
            swift_unknownObjectRelease();
          }

          v14 = *(v1 + 16);
          if (v14)
          {
            v15 = [v14 newTextureWithDescriptor:v6];
            v16 = [v5 blitCommandEncoder];
            if (v16)
            {
              if (!v8)
              {
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

              if (!v15)
              {
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
                return;
              }

              v17 = v16;
              [v16 copyFromTexture:v8 toTexture:v15];
              [v17 endEncoding];
              swift_unknownObjectRelease();
            }

            v18 = *(v1 + 16);
            if (v18)
            {
              v38 = [objc_allocWithZone(MPSImageMultiply) initWithDevice:v18];
              v19 = *(v1 + 16);
              if (v19)
              {
                v20 = [v19 newTextureWithDescriptor:v6];
                v21 = *(v1 + 56);
                v39 = v5;
                v37 = v9;
                if (v21 >= 1.0)
                {
                  do
                  {
                    v22 = *(v1 + 16);
                    if (!v22)
                    {
                      goto LABEL_34;
                    }

                    v23 = objc_allocWithZone(MPSImageGaussianBlur);
                    *&v24 = v21;
                    v25 = [v23 initWithDevice:v22 sigma:v24];
                    [v25 setEdgeMode:1];
                    if (!v15)
                    {
                      goto LABEL_35;
                    }

                    if (!v20)
                    {
                      __break(1u);
LABEL_33:
                      __break(1u);
LABEL_34:
                      __break(1u);
LABEL_35:
                      __break(1u);
                    }

                    [v25 encodeToCommandBuffer:v5 sourceTexture:v15 destinationTexture:v20];
                    if (!v8)
                    {
                      goto LABEL_33;
                    }

                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    [v38 encodeToCommandBuffer:v5 primaryTexture:v20 secondaryTexture:v8 destinationTexture:v15];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

                    v21 = v21 * 0.5;
                  }

                  while (v21 >= 1.0);
                  v21 = *(v1 + 56);
                }

                *(v1 + 60) = v21;
                v26 = *(v1 + 16);
                if (v26)
                {
                  v27 = [v26 newTextureWithDescriptor:v6];
                  if (v27)
                  {
                    v28 = v27;
                    v36 = 1.0 / [v27 width];
                    v29 = [v28 height];
                    *&v30 = v36;
                    *(&v30 + 1) = 1.0 / v29;
                    *(&v30 + 1) = *(v1 + 60);
                    v40 = v30;
                    v31 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
                    v32 = [v31 colorAttachments];
                    v33 = [v32 objectAtIndexedSubscript:0];

                    if (v33)
                    {
                      [v33 setTexture:v28];

                      v34 = [v39 renderCommandEncoderWithDescriptor:v31];
                      if (!v34)
                      {
LABEL_29:
                        [v39 commit];
                        [v39 waitUntilCompleted];

                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();

                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        return;
                      }

                      if (*(v1 + 72))
                      {
                        v35 = v34;
                        [v34 setRenderPipelineState:?];
                        [v35 setVertexBuffer:*(v1 + 40) offset:0 atIndex:0];
                        [v35 setVertexBuffer:*(v1 + 48) offset:0 atIndex:1];
                        [v35 setFragmentTexture:v15 atIndex:0];
                        [v35 setFragmentTexture:v8 atIndex:1];
                        [v35 setFragmentBytes:&v40 length:16 atIndex:0];
                        [v35 drawPrimitives:4 vertexStart:0 vertexCount:4];
                        [v35 endEncoding];
                        swift_unknownObjectRelease();
                        goto LABEL_29;
                      }

                      goto LABEL_48;
                    }

                    goto LABEL_44;
                  }

LABEL_43:
                  __break(1u);
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000028FC()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  return swift_unknownObjectRelease();
}

void *sub_10000292C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[6];
  swift_unknownObjectRelease();
  v6 = v0[8];
  swift_unknownObjectRelease();
  v7 = v0[9];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10000297C()
{
  sub_10000292C();

  return swift_deallocClassInstance();
}

__n128 sub_1000029D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000029E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002A04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100002A40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100002A54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002A74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 sub_100002AD8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002AE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002B04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100002B60(uint64_t a1, id *a2)
{
  result = sub_100026A00();
  *a2 = 0;
  return result;
}

uint64_t sub_100002BD8(uint64_t a1, id *a2)
{
  v3 = sub_100026A10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002C58@<X0>(void *a1@<X8>)
{
  sub_100026A20();
  v2 = sub_1000269F0();

  *a1 = v2;
  return result;
}

uint64_t sub_100002C9C()
{
  v1 = *v0;
  sub_100026A20();
  v2 = sub_100026AD0();

  return v2;
}

uint64_t sub_100002CD8()
{
  v1 = *v0;
  sub_100026A20();
  sub_100026A90();
}

Swift::Int sub_100002D2C()
{
  v1 = *v0;
  sub_100026A20();
  sub_100026DC0();
  sub_100026A90();
  v2 = sub_100026E10();

  return v2;
}

uint64_t sub_100002DA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100026A20();
  v6 = v5;
  if (v4 == sub_100026A20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100026D60();
  }

  return v9 & 1;
}

uint64_t sub_100002E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000269F0();

  *a2 = v5;
  return result;
}

uint64_t sub_100002E70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100026A20();
  *a1 = result;
  a1[1] = v5;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlassParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_100002EE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002F30(uint64_t a1)
{
  v2 = sub_100003030(&qword_100041F90);
  v3 = sub_100003030(&unk_100040C90);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000030B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100026970();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100026980();
  v5 = sub_100026940();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_100026950();
  sub_100003598(&qword_100040F00, &unk_100028F10);
  v8 = *(sub_100026220() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100028E90;
  sub_1000035E0(&qword_100040F08, &type metadata accessor for PRRenderingConfiguration);

  sub_100026210();
  sub_1000035E0(&qword_100040F10, &type metadata accessor for PREditingConfiguration);

  sub_100026210();

  *a1 = v11;
  return result;
}

id sub_10000330C(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100003350()
{
  [objc_allocWithZone(type metadata accessor for MonogramPosterUpdater()) init];
  v0 = sub_100003598(&qword_100040EF0, &unk_100028EA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_100026960();
  sub_10000365C(&qword_100040EF8);
  sub_100026670();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000034B4();
  sub_10000365C(&qword_100040EE8);
  sub_100026650();
  return 0;
}

unint64_t sub_1000034B4()
{
  result = qword_100040EE0;
  if (!qword_100040EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100040EE0);
  }

  return result;
}

uint64_t sub_100003508(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003598(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000035E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000365C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003508(&qword_100040EF0, &unk_100028EA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000036AC()
{
  v1 = v0;
  v2 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v104 - v4;
  v6 = sub_100026610();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v105 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MonogramPosterBackgroundViewController();
  v109.receiver = v0;
  v109.super_class = v10;
  objc_msgSendSuper2(&v109, "viewDidLoad");
  v11 = objc_opt_self();
  v12 = [v11 currentEnvironment];
  v13 = [v12 featureFlags];

  LODWORD(v12) = [v13 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v12 || (v14 = [v11 currentEnvironment], v15 = objc_msgSend(v14, "featureFlags"), v14, LODWORD(v14) = objc_msgSend(v15, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), !v14))
  {
    v20 = [v0 view];
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = [objc_allocWithZone(type metadata accessor for BackgroundSimulationView(0)) initWithFrame:{v23, v25, v27, v29}];
      v31 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView;
      v32 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
      *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView] = v30;
      v33 = v30;

      if (v33)
      {
        [v33 setAutoresizingMask:18];
      }

      v34 = [v1 view];
      if (v34)
      {
        if (*&v1[v31])
        {
          v35 = v34;
          [v34 addSubview:?];
LABEL_32:

          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  swift_beginAccess();
  sub_100004F70(&v1[v16], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100004FE0(v5);
    v17 = [v1 traitCollection];
    v18 = [v17 userInterfaceStyle];

    v19 = v105;
    if (v18 == 2)
    {
      sub_1000264B0();
    }

    else
    {
      sub_1000264C0();
    }
  }

  else
  {
    v19 = v105;
    (*(v7 + 32))(v105, v5, v6);
  }

  v36 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  v37 = 1.0;
  if (v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32])
  {
    v38 = 1.0;
    goto LABEL_20;
  }

  v39 = v36[3];
  v40 = [v1 view];
  if (!v40)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = v40;
  [v40 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v110.origin.x = v43;
  v110.origin.y = v45;
  v110.size.width = v47;
  v110.size.height = v49;
  v38 = v39 / CGRectGetHeight(v110);
  if (v36[4])
  {
LABEL_20:
    v61 = _s5ModelCMa();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v64 = sub_1000058A8(v19, v38, v37);
    v65 = objc_allocWithZone(sub_100003598(&qword_100040F90, qword_1000290E0));
    v106 = sub_1000052D0;
    v107 = v64;
    v108 = 0;

    v66 = sub_100026800();
    v67 = [v66 view];
    if (v67)
    {
      v68 = v67;
      [v67 setTranslatesAutoresizingMaskIntoConstraints:0];

      v69 = [v1 view];
      if (v69)
      {
        v70 = v69;
        v71 = [v66 view];
        if (v71)
        {
          v72 = v71;
          [v70 addSubview:v71];

          [v1 addChildViewController:v66];
          sub_100003598(&qword_100040F98, &qword_1000293D0);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_100028F20;
          v74 = [v66 view];
          if (v74)
          {
            v75 = v74;
            v76 = [v74 widthAnchor];

            v77 = [v1 view];
            if (v77)
            {
              v78 = v77;
              v79 = [v77 widthAnchor];

              v80 = [v76 constraintEqualToAnchor:v79 multiplier:1.0];
              *(v73 + 32) = v80;
              v81 = [v66 view];
              if (v81)
              {
                v82 = v81;
                v83 = [v81 heightAnchor];

                v84 = [v1 view];
                if (v84)
                {
                  v85 = v84;
                  v86 = [v84 heightAnchor];

                  v87 = [v83 constraintEqualToAnchor:v86 multiplier:1.0];
                  *(v73 + 40) = v87;
                  v88 = [v66 view];
                  if (v88)
                  {
                    v89 = v88;
                    v90 = [v88 centerXAnchor];

                    v91 = [v1 view];
                    if (v91)
                    {
                      v92 = v91;
                      v93 = [v91 centerXAnchor];

                      v94 = [v90 constraintEqualToAnchor:v93];
                      *(v73 + 48) = v94;
                      v95 = [v66 view];

                      if (v95)
                      {
                        v96 = [v95 centerYAnchor];

                        v97 = [v1 view];
                        if (v97)
                        {
                          v98 = v97;
                          v99 = objc_opt_self();
                          v100 = [v98 centerYAnchor];

                          v101 = [v96 constraintEqualToAnchor:v100];
                          *(v73 + 56) = v101;
                          sub_1000052D8();
                          isa = sub_100026B00().super.isa;

                          [v99 activateConstraints:isa];

                          v103 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel];
                          *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel] = v64;

                          v35 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController];
                          *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController] = v66;
                          goto LABEL_32;
                        }

                        goto LABEL_46;
                      }

LABEL_45:
                      __break(1u);
LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v50 = v36[2];
  v51 = [v1 view];
  if (v51)
  {
    v52 = v51;
    [v51 frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v111.origin.x = v54;
    v111.origin.y = v56;
    v111.size.width = v58;
    v111.size.height = v60;
    v37 = v50 / CGRectGetWidth(v111);
    goto LABEL_20;
  }

LABEL_48:
  __break(1u);
}

void sub_10000402C()
{
  v1 = v0;
  v2 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v99 = &v97 - v4;
  v5 = sub_100026610();
  v6 = *(v5 - 8);
  v7 = *(*&v6 + 64);
  v8 = __chkstk_darwin(v5);
  v100 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = &v97 - v10;
  v11 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
  v12 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor;
  v13 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
  v14 = v11;
  v15 = v13;
  v16.f64[0] = sub_10000F6F4();
  v103 = v17;
  *v104 = v16;

  sub_10000FB8C(&off_1000394E0, *v104, v103);
  v103 = v19;
  *v104 = v18;
  v20 = pow(v18.f64[0], 10.0) * 0.1;
  v21 = pow(1.0 - *v104, 10.0);
  *&v22.f64[1] = v104[1];
  v22.f64[0] = *v104 + v21 * 0.1 - v20;
  sub_10000FB8C(&off_100039640, v22, v103);
  v24.f64[0] = sub_10000FD24(0, 0.0, v23);
  v25 = v24;
  __asm { FMOV            V0.2D, #1.0 }

  v31.f64[0] = sub_10000FDD8(_Q0, _Q0.f64[0], v25);
  v103 = v31;
  *v104 = v32;
  v33 = v31.f64[1];
  v34 = v32.f64[1];
  v35 = objc_allocWithZone(UIColor);
  v36 = [v35 initWithRed:v103.f64[0] green:v33 blue:*v104 alpha:v34];
  v37 = *&v1[v12];
  v38 = v14;
  v39 = v37;
  v40 = v36;
  v41 = sub_100026680();
  v42 = sub_100026B90();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412802;
    *(v43 + 4) = v38;
    *(v43 + 12) = 2112;
    *(v43 + 14) = v40;
    *v44 = v38;
    v44[1] = v40;
    *(v43 + 22) = 2112;
    *(v43 + 24) = v39;
    v44[2] = v39;
    v45 = v38;
    v46 = v39;
    v47 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Updating background layer with top color: %@, mid color: %@, bottom color: %@", v43, 0x20u);
    sub_100003598(&qword_100040F88, &qword_1000290D8);
    swift_arrayDestroy();
  }

  v48 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
  if (v48 && (v49 = [v48 layer]) != 0)
  {
    v50 = v49;
    type metadata accessor for BackgroundSimulationLayer(0);
    v51 = swift_dynamicCastClass();
    if (v51)
    {
      v104[0] = v51;
      v52 = v50;
      sub_10000E7D0(v38, v40, v39);
    }

    else
    {
      v104[0] = 0;
    }
  }

  else
  {
    v104[0] = 0;
  }

  v102 = v5;
  v103.f64[0] = v6;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008C70(v38, v40, v39);
    swift_unknownObjectRelease();
  }

  v53 = objc_opt_self();
  v54 = [v53 currentEnvironment];
  v55 = [v54 featureFlags];

  LODWORD(v54) = [v55 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v54)
  {
    v56 = [v53 currentEnvironment];
    v57 = [v56 featureFlags];

    LODWORD(v56) = [v57 isFeatureEnabled:7];
    swift_unknownObjectRelease();
    if (v56)
    {
      if ([v1 isViewLoaded])
      {
        v58 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel];
        if (!v58)
        {
          goto LABEL_36;
        }

        v98 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel;
        v59 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
        swift_beginAccess();
        v60 = v99;
        sub_100004F70(&v1[v59], v99);
        v61 = v102;
        v62 = v103.f64[0];
        v63 = (*(*&v103.f64[0] + 48))(v60, 1, v102);
        v97 = v58;
        if (v63 == 1)
        {

          sub_100004FE0(v60);
          v64 = [v1 traitCollection];
          v65 = [v64 userInterfaceStyle];

          v66 = v101;
          if (v65 == 2)
          {
            sub_1000264B0();
          }

          else
          {
            sub_1000264C0();
          }

          v61 = v102;
        }

        else
        {
          v66 = v101;
          (*(*&v62 + 32))(v101, v60, v61);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        (*(*&v62 + 16))(v100, v66, v61);
        sub_100026720();
        (*(*&v62 + 8))(v66, v61);
        v68 = v98;
        if (!*&v1[v98])
        {
          goto LABEL_36;
        }

        if (v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32])
        {
          v69 = *&v1[v98];

          v70 = 1.0;
        }

        else
        {
          v71 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 24];
          v72 = *&v1[v98];

          v73 = [v1 view];
          if (!v73)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }

          v74 = v73;
          [v73 frame];
          v76 = v75;
          v78 = v77;
          v80 = v79;
          v82 = v81;

          v107.origin.x = v76;
          v107.origin.y = v78;
          v107.size.width = v80;
          v107.size.height = v82;
          v70 = v71 / CGRectGetHeight(v107);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v105 = v70;
        sub_100026720();
        if (!*&v1[v68])
        {
LABEL_36:

          return;
        }

        if (v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32])
        {
          v83 = *&v1[v68];

          v84 = 1.0;
LABEL_35:
          swift_getKeyPath();
          swift_getKeyPath();
          v105 = v84;
          sub_100026720();
          goto LABEL_36;
        }

        v85 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 16];
        v86 = *&v1[v68];

        v87 = [v1 view];
        if (v87)
        {
          v88 = v87;
          [v87 frame];
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v96 = v95;

          v108.origin.x = v90;
          v108.origin.y = v92;
          v108.size.width = v94;
          v108.size.height = v96;
          v84 = v85 / CGRectGetWidth(v108);
          goto LABEL_35;
        }

        goto LABEL_38;
      }
    }
  }

  v67 = *v104;
}

id sub_10000486C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  v7 = sub_100026610();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel] = 0;
  v8 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor;
  v10 = objc_opt_self();
  *&v3[v9] = [v10 grayColor];
  v11 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor;
  *&v3[v11] = [v10 grayColor];
  v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController__backgroundColorLayer] = 0;
  sub_100026690();
  if (a2)
  {
    v12 = sub_1000269F0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for MonogramPosterBackgroundViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_100004AB4(void *a1)
{
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientHostingController] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  v4 = sub_100026610();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel] = 0;
  v5 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor;
  v7 = objc_opt_self();
  *&v1[v6] = [v7 grayColor];
  v8 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor;
  *&v1[v8] = [v7 grayColor];
  v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController__backgroundColorLayer] = 0;
  sub_100026690();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MonogramPosterBackgroundViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_100004C98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MonogramPosterBackgroundViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MonogramPosterBackgroundViewController()
{
  result = qword_100040F70;
  if (!qword_100040F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004E10()
{
  sub_100004F18();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1000266A0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100004F18()
{
  if (!qword_100040F80)
  {
    sub_100026610();
    v0 = sub_100026C30();
    if (!v1)
    {
      atomic_store(v0, &qword_100040F80);
    }
  }
}

uint64_t sub_100004F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004FE0(uint64_t a1)
{
  v2 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005060()
{
  v1 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_100026610();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v17 - v12;
  if (*&v0[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel])
  {
    v14 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
    swift_beginAccess();
    sub_100004F70(&v0[v14], v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_100004FE0(v4);
      v15 = [v0 traitCollection];
      v16 = [v15 userInterfaceStyle];

      if (v16 == 2)
      {
        sub_1000264B0();
      }

      else
      {
        sub_1000264C0();
      }
    }

    else
    {
      (*(v6 + 32))(v13, v4, v5);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v6 + 16))(v10, v13, v5);
    sub_100026720();
    return (*(v6 + 8))(v13, v5);
  }

  return result;
}

unint64_t sub_1000052D8()
{
  result = qword_100041A70;
  if (!qword_100041A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041A70);
  }

  return result;
}

uint64_t sub_10000534C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

double sub_1000053E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

uint64_t sub_100005454()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();
}

uint64_t sub_1000054CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

uint64_t sub_100005540()
{
  v0 = type metadata accessor for MeshGradientTransformer();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100026610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  if (*&v13[0] > 2)
  {
    if (*&v13[0] == 3)
    {
      sub_100006D90(v8);
      goto LABEL_9;
    }

    if (*&v13[0] == 4)
    {
      sub_100006734(v8);
      goto LABEL_9;
    }

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100026710();

    goto LABEL_9;
  }

  if (*&v13[0] != 2)
  {
    goto LABEL_7;
  }

  sub_100005F14(v8);
LABEL_9:
  (*(v5 + 16))(v3, v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v9 = v13[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v10 = v13[0];
  *&v3[*(v0 + 20)] = v9;
  *&v3[*(v0 + 24)] = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v11 = sub_10000BD50(v13[0]);
  sub_100007B88(v3);
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_1000058A8(char *a1, double a2, double a3)
{
  v4 = v3;
  v43 = a1;
  v7 = sub_100026610();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  v9 = (__chkstk_darwin)();
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v36 - v11;
  v38 = sub_100003598(&qword_100041208, &qword_100029300);
  v12 = *(v38 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v15 = &v36 - v14;
  v16 = sub_100003598(&qword_1000411F0, &qword_1000292E8);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  v37 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__lightAngle;
  v21 = type metadata accessor for LightAngleObserver();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = &_swiftEmptySetSingleton;
  v24[2] = &_swiftEmptySetSingleton;
  v24[3] = [objc_allocWithZone(type metadata accessor for DisplayLink()) init];
  v24[4] = 0;
  v45 = 0xBF91DF46A2529D39;
  v46 = 1;
  v47 = 0;
  sub_100026700();
  v45 = v24;
  sub_100026700();
  (*(v17 + 32))(v3 + v37, v20, v16);
  v26 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__interfaceOrientation;
  v45 = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  sub_100026700();
  (*(v12 + 32))(v3 + v26, v15, v38);
  if (&_swiftEmptyArrayStorage >> 62 && sub_100026D20())
  {
    v25 = sub_100007C98(&_swiftEmptyArrayStorage);
  }

  *(v3 + OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model_cancellables) = v25;
  v28 = v41;
  v27 = v42;
  v29 = *(v41 + 16);
  v30 = v39;
  v29(v39, v43, v42);
  swift_beginAccess();
  v29(v40, v30, v27);
  sub_100026700();
  v31 = *(v28 + 8);
  v31(v30, v27);
  swift_endAccess();
  swift_beginAccess();
  v44 = a2;
  sub_100026700();
  swift_endAccess();
  swift_beginAccess();
  v44 = a3;
  sub_100026700();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  sub_100007F2C(&qword_100041210, type metadata accessor for LightAngleObserver);
  v32 = sub_1000266D0();

  v45 = v32;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_100007C1C;
  *(v34 + 24) = v33;
  sub_1000266F0();
  sub_100026740();

  swift_beginAccess();
  sub_1000266B0();
  swift_endAccess();

  v31(v43, v27);
  return v4;
}

uint64_t sub_100005E60()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s5ModelCMa();
    sub_100007F2C(&qword_100041230, _s5ModelCMa);
    sub_1000266D0();

    sub_1000266E0();
  }

  return result;
}

uint64_t sub_100005F14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = sub_1000264A0();
  v40 = *(v44 - 8);
  v4 = *(v40 + 64);
  v5 = __chkstk_darwin(v44);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v33 - v7;
  v8 = sub_100026610();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = a1;
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v13 = sub_1000265A0();
  v14 = *(v9 + 8);
  v14(v12, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v15 = sub_1000265C0();
  v47 = v9 + 8;
  result = (v14)(v12, v8);
  v51 = &_swiftEmptyArrayStorage;
  if (v15 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v45 = v14;
  v46 = v8;
  if (!v15)
  {
LABEL_21:
    sub_100006560();
    return sub_1000265F0();
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v38 = v40 + 16;
    v37 = (v40 + 8);
    v49 = &_swiftEmptyArrayStorage;
    v36 = (v40 + 32);
    v34 = v15;
    v39 = v2;
    v41 = v13;
    while (1)
    {
      v35 = v17;
      if (v13)
      {
        break;
      }

LABEL_5:
      v17 = v35 + 1;
      if (v35 + 1 == v34)
      {
        goto LABEL_21;
      }
    }

    v48 = v17 * v13;
    if ((v17 * v13) >> 64 == (v17 * v13) >> 63)
    {
      v18 = 0;
      while (1)
      {
        v20 = v48 + v18;
        if (__OFADD__(v48, v18))
        {
          break;
        }

        v50 = v18;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100026710();

        v21 = sub_1000265E0();
        v22 = v45;
        v23 = v46;
        v45(v12, v46);
        v24 = *(v21 + 16);

        if (v20 >= v24)
        {
          v19 = v50;
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_100026710();

          v25 = sub_1000265E0();
          result = v22(v12, v23);
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v20 >= *(v25 + 16))
          {
            goto LABEL_24;
          }

          v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v27 = *(v40 + 72);
          (*(v40 + 16))(v42, v25 + v26 + v27 * v20, v44);

          sub_100026450();
          sub_100026450();
          sub_100026460();
          sub_100026480();
          sub_100026470();
          sub_100026490();
          sub_100026430();
          sub_100026410();
          sub_100026400();
          sub_100026440();
          v28 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_100020490(0, v28[2] + 1, 1, v28);
          }

          v19 = v50;
          v30 = v28[2];
          v29 = v28[3];
          if (v30 >= v29 >> 1)
          {
            v49 = sub_100020490(v29 > 1, v30 + 1, 1, v28);
          }

          else
          {
            v49 = v28;
          }

          v31 = v44;
          (*v37)(v42, v44);
          v32 = v49;
          v49[2] = v30 + 1;
          result = (*v36)(&v32[v26 + v30 * v27], v43, v31);
          v51 = v32;
        }

        v18 = v19 + 1;
        v13 = v41;
        if (v41 == v18)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100006560()
{
  v1 = sub_1000264A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(*v0 + 16);
  if (!v7)
  {
    return result;
  }

  v8 = v7 - 1;
  if (v7 == 1)
  {
    return result;
  }

  v9 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  v17 = v0;
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_100007ABC(v6);
    v6 = result;
  }

  v18 = (v2 + 24);
  v19 = v2 + 16;
  v10 = 1;
  while (1)
  {
    v12 = v10 - 1;
    if (v10 - 1 == v8)
    {
      goto LABEL_6;
    }

    v13 = v6[2];
    if (v12 >= v13)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    v16 = &v14[v15 * v12];
    (*(v2 + 16))(v20, v16, v1);
    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    result = (*v18)(v16, &v14[v15 * v8], v1);
    if (v8 >= v6[2])
    {
      break;
    }

    result = (*(v2 + 40))(&v14[v15 * v8], v20, v1);
LABEL_6:
    if (v10++ >= --v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v17 = v6;
  return result;
}

uint64_t sub_100006734@<X0>(uint64_t a1@<X8>)
{
  v47 = sub_1000264A0();
  v43 = *(v47 - 8);
  v3 = *(v43 + 64);
  v4 = __chkstk_darwin(v47);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v37 - v6;
  v7 = sub_100026610();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v12 = v11;

  v13 = sub_1000265A0();
  v14 = *(v8 + 8);
  v14(v11, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v50 = sub_1000265C0();
  v51 = v8 + 8;
  v48 = v14;
  result = (v14)(v11, v7);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

  v37 = a1;
  if (v13)
  {
    if (v50 < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v45 = v11;
    v16 = 0;
    v40 = v43 + 16;
    v39 = (v43 + 8);
    v52 = &_swiftEmptyArrayStorage;
    v38 = (v43 + 32);
    v17 = &unk_100029138;
    v18 = v1;
    v41 = v7;
    v44 = v13;
    while (!v50)
    {
LABEL_5:
      if (++v16 == v13)
      {
        goto LABEL_21;
      }
    }

    v19 = 0;
    v49 = v16;
    while (1)
    {
      v20 = v19 * v13;
      if ((v19 * v13) >> 64 != (v19 * v13) >> 63)
      {
        break;
      }

      v21 = v20 + v16;
      if (__OFADD__(v20, v16))
      {
        goto LABEL_23;
      }

      v53 = v19;
      v22 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100026710();

      v23 = sub_1000265E0();
      v24 = v7;
      v25 = v7;
      v26 = v48;
      v48(v12, v24);
      v27 = *(v23 + 16);

      if (v21 >= v27)
      {
        v17 = v22;
        v7 = v25;
        v16 = v49;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v18;
        sub_100026710();

        v29 = sub_1000265E0();
        result = v26(v12, v25);
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v21 >= *(v29 + 16))
        {
          goto LABEL_25;
        }

        v30 = v42;
        v31 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v32 = *(v43 + 72);
        (*(v43 + 16))(v42, v29 + v31 + v32 * v21, v47);

        sub_100026450();
        sub_100026450();
        sub_100026490();
        sub_100026470();
        sub_100026460();
        sub_100026480();
        sub_100026430();
        sub_100026410();
        sub_100026400();
        sub_100026440();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_100020490(0, *(v52 + 2) + 1, 1, v52);
        }

        v16 = v49;
        v34 = *(v52 + 2);
        v33 = *(v52 + 3);
        if (v34 >= v33 >> 1)
        {
          v52 = sub_100020490(v33 > 1, v34 + 1, 1, v52);
        }

        v35 = v47;
        (*v39)(v30, v47);
        v36 = v52;
        *(v52 + 2) = v34 + 1;
        result = (*v38)(&v36[v31 + v34 * v32], v46, v35);
        v18 = v28;
        v7 = v41;
        v17 = &unk_100029138;
      }

      v19 = v53 + 1;
      v13 = v44;
      if (v50 == v53 + 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v52 = &_swiftEmptyArrayStorage;
LABEL_21:
  sub_1000265F0();
  sub_1000265B0();
  return sub_1000265D0();
}

uint64_t sub_100006D90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = sub_1000264A0();
  v41 = *(v44 - 8);
  v4 = *(v41 + 64);
  v5 = __chkstk_darwin(v44);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = v36 - v7;
  v8 = sub_100026610();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v36[1] = a1;
  v13 = v8;
  sub_100026710();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v14 = sub_1000265A0();
  v15 = v9 + 8;
  v16 = *(v9 + 8);
  v16(v12, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v50 = sub_1000265C0();
  result = (v16)(v12, v13);
  if (v14 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v14)
  {
LABEL_27:
    sub_1000265F0();
    sub_1000265B0();
    return sub_1000265D0();
  }

  if ((v50 & 0x8000000000000000) == 0)
  {
    v46 = v12;
    v48 = v15;
    v39 = v41 + 16;
    v38 = (v41 + 8);
    v37 = (v41 + 32);
    v18 = &_swiftEmptyArrayStorage;
    v19 = v14;
    v40 = v13;
    v47 = v16;
    v45 = v14;
    while (v14 >= v19)
    {
      --v19;
      if (v50)
      {
        v20 = 0;
        v49 = v19;
        while (1)
        {
          v21 = v20 * v14;
          if ((v20 * v14) >> 64 != (v20 * v14) >> 63)
          {
            break;
          }

          v22 = v21 + v19;
          if (__OFADD__(v21, v19))
          {
            goto LABEL_22;
          }

          v51 = v18;
          swift_getKeyPath();
          swift_getKeyPath();
          v23 = v46;
          sub_100026710();

          v24 = sub_1000265E0();
          v25 = v13;
          v26 = v13;
          v27 = v47;
          v47(v23, v25);
          v28 = *(v24 + 16);

          if (v22 >= v28)
          {
            v13 = v26;
            v18 = v51;
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_100026710();

            v29 = sub_1000265E0();
            v27(v23, v26);
            if (v22 < 0)
            {
              goto LABEL_23;
            }

            if (v22 >= *(v29 + 16))
            {
              goto LABEL_24;
            }

            v30 = v2;
            v31 = (*(v41 + 80) + 32) & ~*(v41 + 80);
            v32 = *(v41 + 72);
            (*(v41 + 16))(v42, v29 + v31 + v32 * v22, v44);

            sub_100026450();
            sub_100026450();
            sub_100026470();
            sub_100026490();
            sub_100026480();
            sub_100026460();
            sub_100026430();
            sub_100026410();
            sub_100026400();
            sub_100026440();
            v18 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_100020490(0, v18[2] + 1, 1, v18);
            }

            v34 = v18[2];
            v33 = v18[3];
            if (v34 >= v33 >> 1)
            {
              v18 = sub_100020490(v33 > 1, v34 + 1, 1, v18);
            }

            v35 = v44;
            (*v38)(v42, v44);
            v18[2] = v34 + 1;
            (*v37)(v18 + v31 + v34 * v32, v43, v35);
            v2 = v30;
            v13 = v40;
          }

          ++v20;
          v19 = v49;
          v14 = v45;
          if (v50 == v20)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        break;
      }

LABEL_5:
      if (!v19)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000073C4()
{
  v1 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__lightAngle;
  v2 = sub_100003598(&qword_1000411F0, &qword_1000292E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__verticalTranslation;
  v4 = sub_100003598(&qword_1000411F8, &qword_1000292F0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__horizontalTranslation, v4);
  v6 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__gradientDefinition;
  v7 = sub_100003598(&qword_100041200, &qword_1000292F8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model__interfaceOrientation;
  v9 = sub_100003598(&qword_100041208, &qword_100029300);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCV23MonogramPosterExtension16MeshGradientView5Model_cancellables);

  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s5ModelCMa()
{
  result = qword_100040FF0;
  if (!qword_100040FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000075E4()
{
  sub_1000077D4(319, &qword_100041000, type metadata accessor for LightAngleObserver);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100007784();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1000077D4(319, &qword_100041010, &type metadata accessor for GradientDefinition);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1000077D4(319, &unk_100041018, type metadata accessor for UIInterfaceOrientation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100007784()
{
  if (!qword_100041008)
  {
    v0 = sub_100026730();
    if (!v1)
    {
      atomic_store(v0, &qword_100041008);
    }
  }
}

void sub_1000077D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100026730();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100007834@<X0>(uint64_t *a1@<X8>)
{
  _s5ModelCMa();
  result = sub_1000266D0();
  *a1 = result;
  return result;
}

double sub_1000078B8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100007948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

uint64_t sub_1000079C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  *a2 = v5;
  return result;
}

uint64_t sub_100007A40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

uint64_t sub_100007B88(uint64_t a1)
{
  v2 = type metadata accessor for MeshGradientTransformer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007BE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007C24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100007C98(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_100026D20();
    if (result)
    {
LABEL_3:
      sub_100003598(&qword_100041218, &qword_100029308);
      result = sub_100026C80();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_100026D20();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_100026CA0();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_1000266C0();
    sub_100007F2C(&qword_100041220, &type metadata accessor for AnyCancellable);
    result = sub_1000269B0();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100007F2C(&qword_100041228, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_1000269C0();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100007F2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100007F74(void *a1)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100028F20;
  v6 = [a1 leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 topAnchor];
  v13 = [v2 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_1000052D8();
  isa = sub_100026B00().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_1000081C8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout;
  v4 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout) = a1;
  if (v4)
  {
    v5 = objc_opt_self();
    sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
    isa = sub_100026B00().super.isa;
    [v5 deactivateConstraints:isa];

    v2 = *(v1 + v3);
  }

  if (v2)
  {
    v7 = objc_opt_self();
    sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);

    v8 = sub_100026B00().super.isa;

    [v7 activateConstraints:v8];
  }
}

void sub_1000082D0()
{
  v1 = v0;
  v2 = sub_100026680();
  v3 = sub_100026B90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = *(&v1->isa + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot);

    _os_log_impl(&_mh_execute_header, v2, v3, "Updating monogram layer with isSnapshot: %{BOOL}d", v4, 8u);
  }

  else
  {

    v2 = v1;
  }

  v5 = *(&v1->isa + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView);
  if (v5)
  {
    v6 = *(&v1->isa + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot);
    *(v5 + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot) = v6;
    v7 = *(v5 + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion);
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot);
      *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = v6;
      if (v6 != v8)
      {
        v9 = *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
        if (v6)
        {
          v10 = &selRef_stopDeviceMotionUpdates;
        }

        else
        {
          v10 = &selRef_startDeviceMotionUpdates;
        }

        v11 = *v10;

        [v9 v11];
      }
    }
  }
}

void sub_10000844C()
{
  v1 = sub_100026240();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v72 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100026260();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v69[1] = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026280();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  v9 = __chkstk_darwin(v7);
  v70 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v71 = v69 - v12;
  __chkstk_darwin(v11);
  v73 = v69 - v13;
  v14 = sub_1000262A0();
  v69[0] = *(v14 - 8);
  v15 = *(v69[0] + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v69 - v19;
  v21 = type metadata accessor for MonogramPosterViewController();
  v76.receiver = v0;
  v76.super_class = v21;
  objc_msgSendSuper2(&v76, "viewDidLoad");
  v22 = objc_opt_self();
  v23 = [v22 currentEnvironment];
  v24 = [v23 featureFlags];

  LODWORD(v23) = [v24 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v23 || (v25 = [v22 currentEnvironment], v26 = objc_msgSend(v25, "featureFlags"), v25, LODWORD(v25) = objc_msgSend(v26, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), !v25))
  {
    v47 = [v0 view];
    if (v47)
    {
      v48 = v47;
      [v47 bounds];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = [objc_allocWithZone(type metadata accessor for MonogramSimulationView(0)) initWithFrame:{v50, v52, v54, v56}];
      v58 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView;
      v59 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView];
      *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView] = v57;

      v60 = [v0 view];
      if (v60)
      {
        if (*&v0[v58])
        {
          v44 = v60;
          [v60 addSubview:?];
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] == 1 && ((v27 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8], (v27 & 0x2000000000000000) != 0) ? (v28 = HIBYTE(v27) & 0xF) : (v28 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString] & 0xFFFFFFFFFFFFLL), !v28))
  {
    sub_100026290();
    v61 = objc_allocWithZone(sub_100003598(qword_1000412F0, &unk_1000293E0));
    v62 = v69[0];
    (*(v69[0] + 16))(v18, v20, v14);
    v42 = sub_100026800();
    (*(v62 + 8))(v20, v14);
    v44 = [v42 view];
    [v0 addChildViewController:v42];
    v45 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView;
    v46 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView;
  }

  else
  {
    if (v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] != 1)
    {
LABEL_18:
      sub_10000AC20();
      return;
    }

    v29 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
    v30 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8];

    v31 = sub_1000269F0();
    v32 = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v32)
    {
      v33 = 180.0;
    }

    else
    {
      v33 = 210.0;
    }

    v34 = [*&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
    v35 = [objc_opt_self() fontWithDescriptor:v34 size:v33];

    sub_100026230();
    sub_100026250();
    v36 = v73;
    sub_100026270();
    v38 = v74;
    v37 = v75;
    v39 = *(v74 + 16);
    v40 = v71;
    v39(v71, v36, v75);
    v41 = objc_allocWithZone(sub_100003598(&qword_1000412E8, &qword_1000293D8));
    v39(v70, v40, v37);
    v42 = sub_100026800();
    v43 = *(v38 + 8);
    v43(v40, v37);
    v44 = [v42 view];
    [v0 addChildViewController:v42];
    v43(v36, v37);
    v45 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView;
    v46 = &OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView;
  }

  v63 = *v46;
  v64 = *&v0[v63];
  *&v0[v63] = v42;

  v65 = *&v0[*v45];
  *&v0[*v45] = 0;

  if (!v44)
  {
    goto LABEL_18;
  }

  v66 = [objc_opt_self() clearColor];
  [v44 setBackgroundColor:v66];

  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v67 = [v0 view];
  if (v67)
  {
    v68 = v67;
    [v67 addSubview:v44];

    sub_100008F28();
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
}

void sub_100008C70(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = sub_100026680();
  v11 = sub_100026B90();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315650;
    v31 = v7;
    v13 = [v7 debugDescription];
    v14 = sub_100026A20();
    v16 = v15;

    v17 = sub_100025380(v14, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v8 debugDescription];
    v19 = sub_100026A20();
    v21 = v20;

    v22 = sub_100025380(v19, v21, &v33);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2080;
    v23 = [v9 debugDescription];
    v24 = sub_100026A20();
    v26 = v25;

    v27 = v24;
    v7 = v31;
    v28 = sub_100025380(v27, v26, &v33);

    *(v12 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating monogram layer with top color: %s, mid color: %s, bottom color: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  v29 = *(v4 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView);
  if (v29)
  {
    v30 = [v29 layer];
    if (v30)
    {
      v32 = v30;
      type metadata accessor for BackgroundSimulationLayer(0);
      if (swift_dynamicCastClass())
      {
        sub_10000E7D0(v7, v8, v9);
      }
    }
  }
}

void sub_100008F28()
{
  v1 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView];
    if (!v3)
    {
      return;
    }

    v2 = v3;
  }

  v82 = v2;
  v4 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  if ((v0[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32] & 1) == 0)
  {
    v36 = v4[2];
    v35 = v4[3];
    v38 = *v4;
    v37 = v4[1];
    sub_100003598(&qword_100040F98, &qword_1000293D0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100028F20;
    v40 = v1;
    v41 = [v82 view];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 widthAnchor];

      v44 = [v43 constraintEqualToConstant:v36];
      *(v39 + 32) = v44;
      v45 = [v82 view];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 heightAnchor];

        v48 = [v47 constraintEqualToConstant:v35];
        *(v39 + 40) = v48;
        v49 = [v82 view];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 leadingAnchor];

          v52 = [v0 view];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 leadingAnchor];

            v84.origin.x = v38;
            v84.origin.y = v37;
            v84.size.width = v36;
            v84.size.height = v35;
            v55 = [v51 constraintEqualToAnchor:v54 constant:CGRectGetMinX(v84)];

            *(v39 + 48) = v55;
            v56 = [v82 view];
            if (v56)
            {
              v57 = v56;
              v58 = [v56 topAnchor];

              v59 = [v0 view];
              if (v59)
              {
                v60 = v59;
                v61 = [v59 topAnchor];

                v85.origin.x = v38;
                v85.origin.y = v37;
                v85.size.width = v36;
                v85.size.height = v35;
                v62 = [v58 constraintEqualToAnchor:v61 constant:CGRectGetMinY(v85)];

                *(v39 + 56) = v62;
                sub_1000081C8(v39);
                v63 = [objc_opt_self() standardPreferences];
                v64 = sub_1000269F0();
                LODWORD(v62) = [v63 userHasOptedInToPreference:v64];

                if (!v62)
                {
                  goto LABEL_26;
                }

                v65 = [objc_allocWithZone(UIView) initWithFrame:{v38, v37, v36, v35}];
                v66 = [v65 layer];
                v67 = objc_opt_self();
                v68 = [v67 redColor];
                v69 = [v68 CGColor];

                [v66 setBorderColor:v69];
                v70 = [v65 layer];
                [v70 setBorderWidth:2.0];

                v71 = [v67 clearColor];
                [v65 setBackgroundColor:v71];

                v72 = [v0 view];
                if (v72)
                {
                  v73 = v72;
                  [v72 addSubview:v65];

                  v74 = [v82 view];
                  if (v74)
                  {
                    v75 = v74;
                    v76 = [v74 layer];

                    [v76 setBorderWidth:2.0];
                    v77 = [v82 view];
                    if (v77)
                    {
                      v78 = v77;
                      v79 = [v77 layer];

                      v80 = [v67 purpleColor];
                      v81 = [v80 CGColor];

                      [v79 setBorderColor:v81];
                      goto LABEL_26;
                    }

LABEL_46:
                    __break(1u);
                    return;
                  }

LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

              goto LABEL_41;
            }

            goto LABEL_39;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100028F20;
  v6 = v1;
  v7 = [v82 view];
  if (!v7)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v7;
  v9 = [v7 widthAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v10;
  v12 = [v10 widthAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 multiplier:0.75];
  *(v5 + 32) = v13;
  v14 = [v82 view];
  if (!v14)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = v14;
  v16 = [v14 heightAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = v17;
  v19 = [v17 heightAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 multiplier:0.5];
  *(v5 + 40) = v20;
  v21 = [v82 view];
  if (!v21)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = v24;
  v26 = [v24 centerXAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v5 + 48) = v27;
  v28 = [v82 view];
  if (!v28)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v29 = v28;
  v30 = [v28 centerYAnchor];

  v31 = [v0 view];
  if (!v31)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = v31;
  v33 = [v31 centerYAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v5 + 56) = v34;
  sub_1000081C8(v5);
LABEL_26:
}

void sub_1000097A4()
{
  v1 = v0;
  v2 = sub_100026240();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100026260();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100026280();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000262A0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    Width = CGRectGetWidth(v39);
    v21 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];
    v37 = sub_10001105C(Width);
    v22 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView];
    if (v22)
    {
      v23 = [v22 layer];
      if (v23)
      {
        v24 = v23;
        type metadata accessor for MonogramSimulationLayer(0);
        if (swift_dynamicCastClass())
        {
          sub_100010A04(v37);
        }
      }
    }

    if (v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] == 1 && ((v25 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8], (v25 & 0x2000000000000000) != 0) ? (v26 = HIBYTE(v25) & 0xF) : (v26 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString] & 0xFFFFFFFFFFFFLL), !v26))
    {
      v36 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView];
      if (v36)
      {
        v30 = v36;
        sub_100026290();
LABEL_17:
        sub_100026810();

        return;
      }
    }

    else
    {
      v27 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView];
      if (v27)
      {
        v28 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
        v29 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8];
        v30 = v27;

        v31 = sub_1000269F0();
        v32 = CNStringContainsChineseJapaneseKoreanCharacters();

        if (v32)
        {
          v33 = 180.0;
        }

        else
        {
          v33 = 210.0;
        }

        v34 = [*&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
        v35 = [objc_opt_self() fontWithDescriptor:v34 size:v33];

        sub_100026230();
        sub_100026250();
        sub_100026270();
        goto LABEL_17;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100009B64(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView];
  if (!v3)
  {
    oslog = sub_100026680();
    v63 = sub_100026BB0();
    if (os_log_type_enabled(oslog, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v63, "Simulation view is nil in updateLayout(for: orientation). Aborting layout update.", v64, 2u);
    }

    goto LABEL_26;
  }

  v5 = objc_opt_self();
  v6 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints];
  v7 = *&v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints];
  sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
  v8 = v3;

  isa = sub_100026B00().super.isa;

  [v5 deactivateConstraints:isa];

  v10 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints];
  v11 = *&v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints];

  v12 = sub_100026B00().super.isa;

  [v5 deactivateConstraints:v12];

  v140 = v5;
  if (sub_10000B874(a1))
  {
    v13 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
    v139 = v8;
    if (v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32])
    {
      goto LABEL_6;
    }

    v14 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect];
    if (v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect + 32])
    {
      goto LABEL_6;
    }

    v16 = v13[2];
    v15 = v13[3];
    v18 = *v13;
    v17 = v13[1];
    v20 = v14[2];
    v19 = v14[3];
    v22 = *v14;
    v21 = v14[1];
    v150.origin.x = 0.0;
    v150.origin.y = 0.0;
    v150.size.width = 0.0;
    v150.size.height = 0.0;
    v143.origin.x = *v14;
    v143.origin.y = v21;
    v143.size.width = v20;
    v143.size.height = v19;
    if (CGRectEqualToRect(v143, v150))
    {
LABEL_6:
      v23 = sub_100026680();
      v24 = sub_100026B90();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "No occlusion rect found. Setting default landscape constraints.", v25, 2u);
      }

      sub_100003598(&qword_100040F98, &qword_1000293D0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100028F20;
      v27 = v8;
      v28 = [v27 centerYAnchor];
      v29 = [v2 view];
      if (!v29)
      {
        goto LABEL_43;
      }

      v30 = v29;
      v31 = [v29 centerYAnchor];

      v32 = [v28 constraintEqualToAnchor:v31];
      *(v26 + 32) = v32;
      v33 = [v27 centerXAnchor];
      v34 = [v2 view];
      if (!v34)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v35 = v34;
      v36 = [v34 leadingAnchor];

      v37 = [v2 view];
      if (!v37)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v38 = v37;
      [v37 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v144.origin.x = v40;
      v144.origin.y = v42;
      v144.size.width = v44;
      v144.size.height = v46;
      v47 = [v33 constraintEqualToAnchor:v36 constant:CGRectGetWidth(v144) * 0.25];

      *(v26 + 40) = v47;
      v48 = [v27 widthAnchor];
      v49 = [v2 view];
      if (!v49)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v50 = v49;
      v51 = [v49 widthAnchor];

      v52 = [v48 constraintEqualToAnchor:v51 multiplier:0.5];
      *(v26 + 48) = v52;
      v53 = [v27 heightAnchor];

      v54 = [v2 view];
      if (!v54)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v55 = v54;
      v56 = (v26 + 56);
      v57 = [v54 heightAnchor];

      v58 = [v53 constraintEqualToAnchor:v57];
    }

    else
    {
      v94 = sub_100026680();
      v95 = sub_100026B90();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "Found salient and occlusion rects. Setting landscape constraints accordingly.", v96, 2u);
      }

      v137 = v18;
      v138 = v17;
      v135 = v16;
      v136 = v15;

      v145.origin.x = v22;
      v145.origin.y = v21;
      v145.size.width = v20;
      v145.size.height = v19;
      MinX = CGRectGetMinX(v145);
      v97 = [v2 view];
      if (!v97)
      {
        goto LABEL_48;
      }

      v98 = v97;
      [v97 bounds];
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;

      v146.origin.x = v100;
      v146.origin.y = v102;
      v146.size.width = v104;
      v146.size.height = v106;
      Width = CGRectGetWidth(v146);
      v147.origin.x = v22;
      v147.origin.y = v21;
      v147.size.width = v20;
      v147.size.height = v19;
      v108 = CGRectGetMinX(v147);
      sub_100003598(&qword_100040F98, &qword_1000293D0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100029320;
      v109 = v8;
      v110 = [v109 topAnchor];
      v111 = [v2 view];
      if (!v111)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v112 = v111;
      v113 = [v111 topAnchor];

      v114 = [v110 constraintEqualToAnchor:v113];
      *(v26 + 32) = v114;
      v115 = [v109 bottomAnchor];
      v116 = [v2 view];
      if (!v116)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v117 = v116;
      v118 = [v116 bottomAnchor];

      v119 = [v115 constraintEqualToAnchor:v118];
      *(v26 + 40) = v119;
      v120 = [v109 centerXAnchor];
      v121 = [v2 view];
      if (!v121)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v122 = v121;
      v123 = [v121 leadingAnchor];

      v124 = [v120 constraintEqualToAnchor:v123 constant:v108 * 0.5];
      *(v26 + 48) = v124;
      v125 = [v109 widthAnchor];
      v126 = [v2 view];
      if (!v126)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v127 = v126;
      v128 = [v126 widthAnchor];

      v129 = [v125 constraintEqualToAnchor:v128 multiplier:MinX / Width];
      *(v26 + 56) = v129;
      v130 = [v109 heightAnchor];
      v148.origin.x = v137;
      v148.origin.y = v138;
      v148.size.width = v135;
      v148.size.height = v136;
      v131 = [v130 constraintEqualToConstant:CGRectGetHeight(v148)];

      *(v26 + 64) = v131;
      v53 = [v109 trailingAnchor];

      v132 = [v2 view];
      if (!v132)
      {
LABEL_53:
        __break(1u);
        return;
      }

      v133 = v132;
      v56 = (v26 + 72);
      v57 = [v132 leadingAnchor];

      v149.origin.x = v22;
      v149.origin.y = v21;
      v149.size.width = v20;
      v149.size.height = v19;
      v58 = [v53 constraintLessThanOrEqualToAnchor:v57 constant:CGRectGetMinX(v149)];
    }

    v59 = v58;

    *v56 = v59;
    v60 = *v10;
    *v10 = v26;
    v61 = v139;
    v62 = &stru_10003E000;
  }

  else
  {
    v65 = sub_100026680();
    v66 = sub_100026B90();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Applying portrait constraints", v67, 2u);
    }

    sub_100003598(&qword_100040F98, &qword_1000293D0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_100028F20;
    v61 = v8;
    v69 = v8;
    v70 = [v69 topAnchor];
    v71 = [v2 view];
    if (!v71)
    {
      goto LABEL_39;
    }

    v72 = v71;
    v73 = [v71 topAnchor];

    v74 = [v70 constraintEqualToAnchor:v73];
    *(v68 + 32) = v74;
    v75 = [v69 bottomAnchor];
    v76 = [v2 view];
    if (!v76)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v77 = v76;
    v78 = [v76 bottomAnchor];

    v79 = [v75 constraintEqualToAnchor:v78];
    *(v68 + 40) = v79;
    v80 = [v69 leadingAnchor];
    v81 = [v2 view];
    if (!v81)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v82 = v81;
    v83 = [v81 leadingAnchor];

    v84 = [v80 constraintEqualToAnchor:v83];
    *(v68 + 48) = v84;
    v85 = [v69 trailingAnchor];

    v86 = [v2 view];
    if (!v86)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v87 = v86;
    v88 = [v86 trailingAnchor];

    v89 = [v85 constraintEqualToAnchor:v88];
    *(v68 + 56) = v89;
    v90 = *v6;
    v10 = v6;
    *v6 = v68;
    v62 = &stru_10003E000;
  }

  v91 = *v10;

  v92 = sub_100026B00().super.isa;

  [v140 activateConstraints:v92];

  v93 = [v2 *&v62[60].align];
  if (!v93)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  oslog = v93;
  [v93 setNeedsLayout];

LABEL_26:
}

void sub_10000A840()
{
  v1 = v0;
  if (sub_10000B6B0())
  {
    return;
  }

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];
  [v2 addSubview:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  Height = CGRectGetHeight(v41);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 window];

  if (v18)
  {
    [v18 bounds];
    Height = CGRectGetHeight(v42);
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100029330;
  v20 = [v4 centerXAnchor];
  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v19 + 32) = v24;
  v25 = [v1 view];
  if (v25)
  {
    v26 = sub_10000B82C(0, &qword_1000412E0, UIView_ptr);
  }

  else
  {
    v26 = 0;
    v40[1] = 0;
    v40[2] = 0;
  }

  v40[0] = v25;
  v40[3] = v26;
  sub_1000263F0();
  v28 = v27;
  if (v26)
  {
    v29 = sub_10000B79C(v40, v26);
    v30 = *(v26 - 8);
    v31 = *(v30 + 64);
    __chkstk_darwin(v29);
    v33 = v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33);
    v34 = v4;
    v35 = sub_100026D50();
    (*(v30 + 8))(v33, v26);
    sub_10000B7E0(v40);
  }

  else
  {
    v36 = v4;
    v35 = 0;
  }

  v37 = objc_opt_self();
  v38 = [v37 constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v35 attribute:4 multiplier:1.0 constant:{-(Height * (1.0 - v28)), v40[0]}];

  swift_unknownObjectRelease();
  *(v19 + 40) = v38;
  sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
  isa = sub_100026B00().super.isa;

  [v37 activateConstraints:isa];
}

void sub_10000AC20()
{
  if ((sub_10000B6B0() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel);
    v2 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString);
    v3 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8);

    v4 = sub_1000269F0();

    LODWORD(v3) = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v3)
    {
      v5 = 180.0;
    }

    else
    {
      v5 = 210.0;
    }

    v6 = [*(v0 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont) fontDescriptor];
    v7 = [objc_opt_self() fontWithDescriptor:v6 size:v5];

    [v1 setFont:v7];
    [v1 setTextAlignment:1];
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_self();
    v9 = [v8 whiteColor];
    [v1 setTintColor:v9];

    v10 = [v8 whiteColor];
    [v1 setTextColor:v10];
  }
}

id sub_10000ADF4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView] = 0;
  v6 = objc_opt_self();
  v7 = [v6 pr_defaultTimeFontForRole:PRPosterRoleIncomingCall];
  if (!v7)
  {
    v7 = [v6 pr_defaultTimeFont];
  }

  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] = v7;
  v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] = 1;
  v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] = 0;
  v8 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = 0;
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isIPad;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v3[v9] = v11 == 1;
  sub_100026690();
  v12 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel;
  *&v3[v12] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints] = &_swiftEmptyArrayStorage;
  v13 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  if (a2)
  {
    v15 = sub_1000269F0();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for MonogramPosterViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_10000B0B4(void *a1)
{
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_silhouetteView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_avatarViewLayout] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView] = 0;
  v3 = objc_opt_self();
  v4 = [v3 pr_defaultTimeFontForRole:PRPosterRoleIncomingCall];
  if (!v4)
  {
    v4 = [v3 pr_defaultTimeFont];
  }

  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] = v4;
  v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] = 1;
  v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] = 0;
  v5 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = 0;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isIPad;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v1[v6] = v8 == 1;
  sub_100026690();
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel;
  *&v1[v9] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_portraitSimulationConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_landscapeSimulationConstraints] = &_swiftEmptyArrayStorage;
  v10 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_contentOcclusionRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MonogramPosterViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

id sub_10000B310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MonogramPosterViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MonogramPosterViewController()
{
  result = qword_1000412D0;
  if (!qword_1000412D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B49C()
{
  result = sub_1000266A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10000B57C(void *a1)
{
  v2 = OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont;
  v3 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel);
  v6 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString);
  v7 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8);

  v8 = sub_1000269F0();

  LODWORD(v7) = CNStringContainsChineseJapaneseKoreanCharacters();

  if (v7)
  {
    v9 = 180.0;
  }

  else
  {
    v9 = 210.0;
  }

  v10 = [*(v1 + v2) fontDescriptor];
  v11 = [objc_opt_self() fontWithDescriptor:v10 size:v9];

  [v5 setFont:v11];
}

id sub_10000B6B0()
{
  v0 = objc_opt_self();
  v1 = [v0 currentEnvironment];
  v2 = [v1 featureFlags];

  LODWORD(v1) = [v2 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v3 = [v0 currentEnvironment];
  v4 = [v3 featureFlags];

  v5 = [v4 isFeatureEnabled:7];
  swift_unknownObjectRelease();
  return v5;
}

void *sub_10000B79C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B7E0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000B82C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000B8CC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10000BC38(a1);
  (*(*(*(v2 + qword_100042C28) - 8) + 8))(a1);
  return v5;
}

void *sub_10000B998(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100042C28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_1000267F0();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_10000BAD0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_100042C28);
  v5 = *(v3 + qword_100042C28 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10000BBA4()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_100042C28);
  v3 = *(v1 + qword_100042C28 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10000BC38(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_100042C28) - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_100026800();
}

uint64_t sub_10000BD50(double a1)
{
  v2 = sub_100003598(&qword_100041378, &qword_100029430);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27[-v4];
  v6 = sub_100026570();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100003598(&qword_100041380, &qword_100029438);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27[-v13];
  v15 = sub_1000264A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000C0F8(v14, a1);
  v20 = sub_100003598(&qword_100041388, &unk_100029440);
  if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
  {
    sub_10000C6E0(v14, &qword_100041380, &qword_100029438);
    return sub_1000265E0();
  }

  else
  {
    v22 = *v14;
    v23 = *(v14 + 1);
    (*(v16 + 32))(v19, v14 + *(v20 + 48), v15);
    sub_1000264D0();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000C6E0(v5, &qword_100041378, &qword_100029430);
      v24 = sub_1000265E0();
      (*(v16 + 8))(v19, v15);
      return v24;
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v25 = sub_1000265E0();
      __chkstk_darwin(v25);
      *&v27[-32] = v22;
      *&v27[-24] = v23;
      *&v27[-16] = v19;
      *&v27[-8] = v10;
      v26 = sub_10000C868(sub_10000C844, &v27[-48], v25);

      (*(v7 + 8))(v10, v6);
      (*(v16 + 8))(v19, v15);
      return v26;
    }
  }
}

uint64_t sub_10000C0F8@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v5 = sub_1000264A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  *&sinval = &v63 - v12;
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = sub_100003598(&qword_100041378, &qword_100029430);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v63 - v17;
  v19 = sub_100026570();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000264D0();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000C6E0(v18, &qword_100041378, &qword_100029430);
    v24 = sub_100003598(&qword_100041388, &unk_100029440);
    v25 = *(*(v24 - 8) + 56);
    v26 = a1;
    return v25(v26, 1, 1, v24);
  }

  v68 = v14;
  v69 = v19;
  v70 = a1;
  v71 = v23;
  (*(v20 + 32))(v23, v18, v19);
  v67 = v2;
  result = sub_1000265E0();
  v28 = result;
  v29 = *(result + 16);
  if (!v29)
  {
LABEL_8:

    (*(v20 + 8))(v71, v69);
    v24 = sub_100003598(&qword_100041388, &unk_100029440);
    v25 = *(*(v24 - 8) + 56);
    v26 = v70;
    return v25(v26, 1, 1, v24);
  }

  v30 = 0;
  while (1)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    (*(v6 + 16))(v10, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v5);
    if (sub_100026400())
    {
      break;
    }

    ++v30;
    result = (*(v6 + 8))(v10, v5);
    if (v29 == v30)
    {
      goto LABEL_8;
    }
  }

  v31 = *(v6 + 32);
  v32 = sinval;
  v31(*&sinval, v10, v5);
  v33 = v68;
  v31(v68, *&v32, v5);
  v34 = __sincos_stret(a2);
  sinval = v34.__sinval;
  v35 = v71;
  sub_100026550();
  v37 = v36;
  sub_100026410();
  v39 = v38;
  sub_100026560();
  v66 = v40;
  sub_100026410();
  v65 = v41;
  sub_100026450();
  v43 = v42;
  v44 = type metadata accessor for MeshGradientTransformer();
  v45 = v67;
  v46 = *(v67 + *(v44 + 24));
  sub_100026450();
  v64 = v47;
  v48 = *(v45 + *(v44 + 20));
  sub_100026480();
  v50 = v49;
  result = sub_100026460();
  if (v50 > v51)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v52 = v51;
  v53 = 1.0 / v39;
  v55 = v69;
  v54 = v70;
  if (v50 >= v34.__cosval * v37 * (1.0 / v39) + v43 * v46)
  {
    if ((~*&v50 & 0x7FF0000000000000) == 0 && (*&v50 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v50 = v34.__cosval * v37 * v53 + v43 * v46;
    }
  }

  else
  {
    v50 = v34.__cosval * v37 * v53 + v43 * v46;
  }

  if (v50 <= v51)
  {
    v52 = v50;
  }

  else if ((~*&v51 & 0x7FF0000000000000) == 0 && (*&v51 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v52 = v50;
  }

  sub_100026490();
  v57 = v56;
  sub_100026470();
  v59 = v58;
  result = (*(v20 + 8))(v35, v55);
  if (v57 > v59)
  {
    goto LABEL_37;
  }

  v60 = v64 * v48;
  if (v57 >= sinval * v66 * (1.0 / v65) + v64 * v48)
  {
    if ((~*&v57 & 0x7FF0000000000000) == 0 && (*&v57 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v57 = sinval * v66 * (1.0 / v65) + v60;
    }
  }

  else
  {
    v57 = sinval * v66 * (1.0 / v65) + v60;
  }

  if (v57 <= v59)
  {
    v59 = v57;
  }

  else if ((~*&v59 & 0x7FF0000000000000) == 0 && (*&v59 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v59 = v57;
  }

  v61 = sub_100003598(&qword_100041388, &unk_100029440);
  v62 = *(v61 + 48);
  *v54 = v52;
  v54[1] = v59;
  v31(v54 + v62, v33, v5);
  return (*(*(v61 - 8) + 56))(v54, 0, 1, v61);
}

uint64_t sub_10000C6E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003598(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C740()
{
  if (sub_100026400())
  {
    sub_100026430();
    sub_100026410();
    sub_100026480();
    sub_100026460();
    sub_100026490();
    sub_100026470();
    sub_100026400();
    return sub_100026440();
  }

  else
  {
    sub_100026540();
    return sub_100026420();
  }
}

uint64_t sub_10000C844()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_10000C740();
}

uint64_t sub_10000C868(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_1000264A0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v23 = &_swiftEmptyArrayStorage;
  sub_100015D78(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_100015D78(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    v11[2] = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MeshGradientTransformer()
{
  result = qword_1000413E8;
  if (!qword_1000413E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026610();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000CB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026610();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000CB74()
{
  result = sub_100026610();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10000CBF0()
{
  v1 = v0;
  v2 = sub_1000266A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_logger, v2);
  v7 = sub_100026680();
  v8 = sub_100026BC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deinit", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for BackgroundSimulationView(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

char *sub_10000CE68(double a1, double a2, double a3, double a4)
{
  sub_100026690();
  *&v4[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion] = 0;
  v4[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for BackgroundSimulationView(0);
  v9 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 layer];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  [v10 setContentsScale:v13];
  v14 = [v9 layer];

  [v14 setAllowsDisplayCompositing:0];
  v15 = type metadata accessor for Motion();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_100012C6C();
  v19 = OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion;
  v20 = *&v9[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion];
  *&v9[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion] = v18;

  v21 = *&v9[v19];
  if (v21)
  {
    *(v21 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate + 8) = &off_100039DF0;
    swift_unknownObjectWeakAssign();
  }

  return v9;
}

uint64_t sub_10000D12C()
{
  result = sub_1000266A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000D1D0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v13 = [v4 layer];
  type metadata accessor for BackgroundSimulationLayer(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = (v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix);
    v7 = vdupq_n_s32(0x3CF5C28Fu);
    if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 16), a2)), vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix), a1))), vandq_s8(vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 32), a3)), vcgeq_f32(v7, vabdq_f32(*(v5 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 48), a4))))) & 0x80000000) == 0)
    {
      *v6 = a1;
      v6[1] = a2;
      v6[2] = a3;
      v6[3] = a4;
      v8 = [v4 layer];
      [v8 setNeedsDisplay];
    }
  }
}

uint64_t sub_10000D2D8()
{
  result = sub_100026BD0();
  xmmword_100042C40 = v1;
  *algn_100042C50 = v2;
  xmmword_100042C60 = v3;
  unk_100042C70 = v4;
  return result;
}

void sub_10000D36C()
{
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer] = 0;
  v1 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms];
  sub_10000EB64(v57);
  v2 = v57[7];
  *(v1 + 6) = v57[6];
  *(v1 + 7) = v2;
  *(v1 + 8) = v57[8];
  v1[144] = v58;
  v3 = v57[3];
  *(v1 + 2) = v57[2];
  *(v1 + 3) = v3;
  v4 = v57[5];
  *(v1 + 4) = v57[4];
  *(v1 + 5) = v4;
  v5 = v57[1];
  *v1 = v57[0];
  *(v1 + 1) = v5;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer] = 0;
  v6 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix];
  if (qword_100040930 != -1)
  {
    swift_once();
  }

  v7 = *algn_100042C50;
  v8 = xmmword_100042C60;
  v9 = unk_100042C70;
  v42 = *algn_100042C50;
  v43 = xmmword_100042C40;
  *v6 = xmmword_100042C40;
  v6[1] = v7;
  v40 = v9;
  v41 = v8;
  v6[2] = v8;
  v6[3] = v9;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture] = 0;
  sub_100026690();
  v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused] = 0;
  v56.receiver = v0;
  v56.super_class = type metadata accessor for BackgroundSimulationLayer(0);
  v10 = objc_msgSendSuper2(&v56, "init");
  if (![v10 device])
  {
    [v10 setDevice:MTLCreateSystemDefaultDevice()];
  }

  swift_unknownObjectRelease();
  v11 = [v10 device];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 newCommandQueue];
    v14 = *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue];
    *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue] = v13;
    swift_unknownObjectRelease();
    v15 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
    v16 = *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor];
    *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor] = v15;
    v17 = v15;

    if (v17)
    {
      v18 = [v17 depthAttachment];

      if (v18)
      {
        [v18 setStoreAction:0];

        __asm
        {
          FMOV            V0.2S, #-1.0
          FMOV            V8.2S, #1.0
        }

        v45[0] = -_D0;
        v45[1] = _D8;
        v45[2] = _D0;
        v45[3] = -_D8;
        v25 = [v12 newBufferWithBytes:v45 length:32 options:0];
        v26 = *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer];
        *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer] = v25;
        swift_unknownObjectRelease();
        v44[0] = 0;
        v44[1] = 1065353216;
        v44[2] = 0x3F80000000000000;
        *&v44[3] = _D8;
        v27 = [v12 newBufferWithBytes:v44 length:32 options:0];
        v28 = *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer];
        *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer] = v27;
        swift_unknownObjectRelease();
        v46 = v43;
        v47 = v42;
        v48 = v41;
        v49 = v40;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        sub_10000ED1C(&v46);
        v29 = &v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms];
        swift_beginAccess();
        v30 = v47;
        *v29 = v46;
        *(v29 + 1) = v30;
        v31 = v48;
        v32 = v49;
        v33 = v51;
        *(v29 + 4) = v50;
        *(v29 + 5) = v33;
        *(v29 + 2) = v31;
        *(v29 + 3) = v32;
        v34 = v52;
        v35 = v53;
        v36 = v54;
        v29[144] = v55;
        *(v29 + 7) = v35;
        *(v29 + 8) = v36;
        *(v29 + 6) = v34;
        swift_beginAccess();
        v37 = [v12 newBufferWithBytes:v29 length:144 options:0];
        swift_endAccess();
        v38 = *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer];
        *&v10[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer] = v37;
        swift_unknownObjectRelease();
        v39 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedDisplayP3);
        [v10 setColorspace:v39];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_10000D7B0()
{
  result = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setPurgeableState:4];
  result = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [result setPurgeableState:4];
  result = *&v0[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer];
  if (result)
  {
    [result setPurgeableState:4];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for BackgroundSimulationLayer(0);
    return objc_msgSendSuper2(&v2, "dealloc");
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000D970(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D9D0()
{
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer) = 0;
  v1 = v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms;
  sub_10000EB64(v11);
  v2 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v2;
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v12;
  v3 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v3;
  v4 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer) = 0;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix;
  if (qword_100040930 != -1)
  {
    swift_once();
  }

  v7 = (v0 + v6);
  v8 = *algn_100042C50;
  v9 = xmmword_100042C60;
  v10 = unk_100042C70;
  *v7 = xmmword_100042C40;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture) = 0;
  sub_100026690();
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused) = 0;
  sub_100026D10();
  __break(1u);
}

uint64_t sub_10000DBA0()
{
  sub_100003598(&unk_1000416E0, &unk_1000295A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100029480;
  *(v1 + 32) = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture);
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10000DC20(void *a1)
{
  v3 = sub_10000D308();
  v5 = v4;
  memmove(__dst, v4, 0x91uLL);
  if (sub_10000EB48(__dst) != 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 16);
    v7 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 32);
    v8 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix + 48);
    *v5 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix);
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
  }

  (v3)(v17, 0);
  v9 = sub_10000D308();
  v11 = v10;
  memmove(v17, v10, 0x91uLL);
  if (sub_10000EB48(v17) != 1)
  {
    v12 = [objc_msgSend(a1 "texture")];
    swift_unknownObjectRelease();
    v13 = [objc_msgSend(a1 "texture")];
    swift_unknownObjectRelease();
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v11[4] = v14;
  }

  return (v9)(v16, 0);
}

void sub_10000DD88(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused) & 1) == 0)
  {
    v1 = a1;
    v2 = sub_100026680();
    v3 = sub_100026BA0();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v41 = v5;
      *v4 = 136315138;
      v42 = v1;
      v6 = [v1 debugDescription];
      v7 = sub_100026A20();
      v9 = v8;

      v10 = sub_100025380(v7, v9, &v41);

      *(v4 + 4) = v10;
      v1 = v42;
      _os_log_impl(&_mh_execute_header, v2, v3, "Performing Metal rendering in: %s", v4, 0xCu);
      sub_10000B7E0(v5);
    }

    v11 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue);
    if (v11)
    {
      v12 = [v11 commandBuffer];
      if (v12)
      {
        v13 = v12;
        if ([v1 isDrawableAvailable])
        {
          v14 = [v1 nextDrawable];
          if (v14)
          {
            v15 = v14;
            sub_10000E41C();
            if (v16)
            {
              v17 = v16;
              (*((swift_isaMask & *v1) + 0x188))(v15);
              v18 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer;
              v19 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer);
              if (v19)
              {
                v20 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer);
                v21 = [swift_unknownObjectRetain() contents];
                v22 = v19;
                v23 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms;
                swift_beginAccess();
                memmove(v21, v1 + v23, 0x90uLL);
              }

              v24 = v1;
              v25 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor;
              v42 = v24;
              v26 = *(v24 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor);
              if (!v26)
              {
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

              v27 = [v26 colorAttachments];
              v28 = [v27 objectAtIndexedSubscript:0];

              if (!v28)
              {
LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

              v40 = v18;
              [v28 setTexture:{objc_msgSend(v15, "texture")}];

              swift_unknownObjectRelease();
              v29 = v42;
              if (!*(v42 + v25))
              {
LABEL_30:
                __break(1u);
                return;
              }

              v30 = [v13 renderCommandEncoderWithDescriptor:?];
              if (v30)
              {
                v31 = v30;
                [v30 setRenderPipelineState:v17];
                [v31 setVertexBuffer:*(v29 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer) offset:0 atIndex:0];
                v32 = [v31 setVertexBuffer:*(v29 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer) offset:0 atIndex:1];
                v33 = (*((swift_isaMask & *v29) + 0x178))(v32);
                v34 = *(v33 + 16);
                if (v34)
                {
                  v35 = 0;
                  while (v35 < *(v33 + 16))
                  {
                    v36 = v35 + 1;
                    [v31 setFragmentTexture:*(v33 + 32 + 8 * v35) atIndex:?];
                    v35 = v36;
                    if (v34 == v36)
                    {
                      goto LABEL_19;
                    }
                  }

                  __break(1u);
                  goto LABEL_28;
                }

LABEL_19:

                [v31 setFragmentBuffer:*(v42 + v40) offset:0 atIndex:0];
                [v31 drawPrimitives:4 vertexStart:0 vertexCount:4];
                [v31 endEncoding];
                swift_unknownObjectRelease();
              }

              [v13 presentDrawable:v15];
              [v13 commit];
              [v13 waitUntilCompleted];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v37 = sub_100026680();
          v38 = sub_100026BC0();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "BackgroundSimulationLayer: skipping render because no drawable available", v39, 2u);
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10000E35C()
{
  result = sub_1000266A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000E41C()
{
  v1 = [v0 device];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 newDefaultLibrary];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
      v6 = sub_1000269F0();
      v7 = [v4 newFunctionWithName:v6];

      [v5 setVertexFunction:v7];
      v8 = swift_unknownObjectRelease();
      (*((swift_isaMask & *v0) + 0x180))(v8);
      v9 = sub_1000269F0();

      v10 = [v4 newFunctionWithName:v9];

      [v5 setFragmentFunction:v10];
      swift_unknownObjectRelease();
      v11 = [v5 colorAttachments];
      v12 = [v11 objectAtIndexedSubscript:0];

      if (!v12)
      {
        __break(1u);
        return;
      }

      [v12 setPixelFormat:objc_msgSend(v0, "pixelFormat")];

      v16 = 0;
      v13 = [v2 newRenderPipelineStateWithDescriptor:v5 error:&v16];
      v14 = v16;
      if (v13)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      v15 = v14;
      sub_1000261D0();

      swift_willThrow();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_10000E6A8(void *a1)
{
  v2 = v1;
  v4 = [a1 CGColor];
  v5 = [v2 colorspace];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 CGColor];
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v6, kCGRenderingIntentDefault, v7, 0);

    if (CopyByMatchingToColorSpace)
    {

      v4 = CopyByMatchingToColorSpace;
    }
  }

  v9 = sub_100026B70();
  if (!v9)
  {

    return;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    if (v10 != 1)
    {
      if (v10 >= 3)
      {
        v11 = *(v9 + 32);
        *&v11 = *(v9 + 40);
        v12 = *(v9 + 48);

        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

id sub_10000E7D0(void *a1, void *a2, void *a3)
{
  sub_10000E6A8(a1);
  v39 = v6;
  v7 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms];
  swift_beginAccess();
  v8 = *(v7 + 7);
  v65 = *(v7 + 6);
  v66 = v8;
  v67 = *(v7 + 8);
  v68 = v7[144];
  v9 = *(v7 + 3);
  v64[2] = *(v7 + 2);
  v64[3] = v9;
  v10 = *(v7 + 5);
  v64[4] = *(v7 + 4);
  v64[5] = v10;
  v11 = *(v7 + 1);
  v64[0] = *v7;
  v64[1] = v11;
  result = sub_10000EB48(v64);
  if (result == 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = vmovn_s32(vceqq_f32(v39, v65));
  if (v13.i8[0] & 1) != 0 && (v13.i16[1] & v13.i16[2])
  {
    v14 = 0;
  }

  else
  {
    v15 = *(v7 + 7);
    v60 = *(v7 + 6);
    v61 = v15;
    v62 = *(v7 + 8);
    v63 = v7[144];
    v16 = *(v7 + 3);
    v56 = *(v7 + 2);
    v57 = v16;
    v17 = *(v7 + 5);
    v58 = *(v7 + 4);
    v59 = v17;
    v18 = *(v7 + 1);
    v54 = *v7;
    v55 = v18;
    result = sub_10000EB48(&v54);
    if (result == 1)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    *(v7 + 6) = v39;
    v14 = 1;
  }

  sub_10000E6A8(a2);
  v40 = v19;
  v20 = *(v7 + 7);
  v60 = *(v7 + 6);
  v61 = v20;
  v62 = *(v7 + 8);
  v63 = v7[144];
  v21 = *(v7 + 3);
  v56 = *(v7 + 2);
  v57 = v21;
  v22 = *(v7 + 5);
  v58 = *(v7 + 4);
  v59 = v22;
  v23 = *(v7 + 1);
  v54 = *v7;
  v55 = v23;
  result = sub_10000EB48(&v54);
  if (result == 1)
  {
    goto LABEL_21;
  }

  v24 = vmovn_s32(vceqq_f32(v40, v61));
  if ((v24.i8[0] & 1) == 0 || (v24.i16[1] & v24.i16[2] & 1) == 0)
  {
    v25 = *(v7 + 7);
    v50 = *(v7 + 6);
    v51 = v25;
    v52 = *(v7 + 8);
    v53 = v7[144];
    v26 = *(v7 + 3);
    v46 = *(v7 + 2);
    v47 = v26;
    v27 = *(v7 + 5);
    v48 = *(v7 + 4);
    v49 = v27;
    v28 = *(v7 + 1);
    v44 = *v7;
    v45 = v28;
    result = sub_10000EB48(&v44);
    if (result == 1)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *(v7 + 7) = v40;
    v14 = 1;
  }

  sub_10000E6A8(a3);
  v41 = v29;
  v30 = *(v7 + 7);
  v50 = *(v7 + 6);
  v51 = v30;
  v52 = *(v7 + 8);
  v53 = v7[144];
  v31 = *(v7 + 3);
  v46 = *(v7 + 2);
  v47 = v31;
  v32 = *(v7 + 5);
  v48 = *(v7 + 4);
  v49 = v32;
  v33 = *(v7 + 1);
  v44 = *v7;
  v45 = v33;
  result = sub_10000EB48(&v44);
  if (result == 1)
  {
    goto LABEL_22;
  }

  v34 = vmovn_s32(vceqq_f32(v41, v52));
  if ((v34.i8[0] & 1) == 0 || (v34.i16[1] & v34.i16[2] & 1) == 0)
  {
    v35 = *(v7 + 7);
    v42[6] = *(v7 + 6);
    v42[7] = v35;
    v42[8] = *(v7 + 8);
    v43 = v7[144];
    v36 = *(v7 + 3);
    v42[2] = *(v7 + 2);
    v42[3] = v36;
    v37 = *(v7 + 5);
    v42[4] = *(v7 + 4);
    v42[5] = v37;
    v38 = *(v7 + 1);
    v42[0] = *v7;
    v42[1] = v38;
    result = sub_10000EB48(v42);
    if (result != 1)
    {
      *(v7 + 8) = v41;
      return [v3 setNeedsDisplay];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v14)
  {
    return [v3 setNeedsDisplay];
  }

  return result;
}

__n128 sub_10000EA9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10000EAC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EAE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

uint64_t sub_10000EB48(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_10000EB64(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

void sub_10000EB88()
{
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_renderPassDescriptor) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardVertexCoordsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_cardTextureCoordsBuffer) = 0;
  v1 = v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniforms;
  sub_10000EB64(v11);
  v2 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v2;
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v12;
  v3 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v3;
  v4 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_uniformsBuffer) = 0;
  v6 = OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_rotationMatrix;
  if (qword_100040930 != -1)
  {
    swift_once();
  }

  v7 = (v0 + v6);
  v8 = *algn_100042C50;
  v9 = xmmword_100042C60;
  v10 = unk_100042C70;
  *v7 = xmmword_100042C40;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture) = 0;
  sub_100026690();
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused) = 0;
  sub_100026D10();
  __break(1u);
}

uint64_t sub_10000ED24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

id sub_10000EF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLink();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DisplayLink()
{
  result = qword_100041520;
  if (!qword_100041520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F0A0()
{
  sub_10000F138();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000F138()
{
  if (!qword_100041530)
  {
    sub_100003508(&qword_100041538, &qword_1000295C8);
    v0 = sub_100026730();
    if (!v1)
    {
      atomic_store(v0, &qword_100041530);
    }
  }
}

uint64_t sub_10000F19C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DisplayLink();
  result = sub_1000266D0();
  *a1 = result;
  return result;
}

uint64_t sub_10000F1DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  *a2 = v5;
  return result;
}

uint64_t sub_10000F260(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_100026720();
}

unint64_t sub_10000F2D8()
{
  result = qword_100041548;
  if (!qword_100041548)
  {
    type metadata accessor for DisplayLink();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041548);
  }

  return result;
}

unint64_t sub_10000F330@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003598(&qword_1000415E8, &qword_100029690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1000263D0();
  v7 = *(v6 + 16);
  if (v7)
  {
    result = sub_10000F600(v7);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;
      if (result < *(v6 + 16))
      {
        v10 = sub_1000263C0();
        v11 = *(v10 - 8);
        (*(v11 + 16))(v5, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v10);

        (*(v11 + 56))(v5, 0, 1, v10);
        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

  v10 = sub_1000263C0();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
LABEL_6:
  sub_1000263C0();
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v5, 1, v10) != 1)
  {
    return (*(v12 + 32))(a1, v5, v10);
  }

  sub_10000F68C(v5);
  v13 = objc_opt_self();
  v14 = [v13 grayColor];
  v15 = [v13 grayColor];
  return sub_1000263A0();
}

unint64_t sub_10000F600(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F68C(uint64_t a1)
{
  v2 = sub_100003598(&qword_1000415E8, &qword_100029690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10000F6F4()
{
  v5 = 0.0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  if ([v0 getRed:&v5 green:&v4 blue:&v3 alpha:&v2])
  {
    return v5;
  }

  else
  {
    return 1.0;
  }
}

uint64_t sub_10000F798(char *a1, double a2)
{
  v3 = __sincos_stret(a2 * 3.14159265 + a2 * 3.14159265 + -3.14159265);
  sub_100003598(&qword_100041600, &qword_1000296E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000296B0;
  *(inited + 32) = &off_1000396A8;
  sub_100003598(&qword_100041608, &qword_100029DC0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1000296C0;
  *(v5 + 32) = 0;
  *(v5 + 40) = v3.__cosval + -1.0 + 1.0;
  *(v5 + 48) = -v3.__sinval;
  *(v5 + 56) = 0;
  v6 = (v3.__cosval + -1.0) * 0.5;
  *(v5 + 64) = v3.__sinval * 0.5 - v6;
  *(inited + 40) = v5;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000296C0;
  *(v7 + 32) = 0;
  *(v7 + 40) = v3.__sinval;
  *(v7 + 48) = v3.__cosval + -1.0 + 1.0;
  *(v7 + 56) = 0;
  *(v7 + 64) = v3.__sinval * -0.5 - v6;
  *(inited + 48) = v7;
  *(inited + 56) = &off_1000396F0;
  v8 = sub_100010064(inited, a1);
  swift_setDeallocating();
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_10000F924(char *a1, double a2)
{
  v3 = a2 + a2;
  v4 = 0.5 - (a2 + a2) * 0.5;
  sub_100003598(&qword_100041600, &qword_1000296E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000296B0;
  *(inited + 32) = &off_100039738;
  sub_100003598(&qword_100041608, &qword_100029DC0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1000296C0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = v4;
  *(inited + 40) = v6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000296C0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = v3;
  *(v7 + 56) = 0;
  *(v7 + 64) = v4;
  *(inited + 48) = v7;
  *(inited + 56) = &off_100039780;
  v8 = sub_100010064(inited, a1);
  swift_setDeallocating();
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_10000FA64(char *a1, double a2)
{
  v3 = a2 + a2 + -1.0;
  sub_100003598(&qword_100041600, &qword_1000296E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000296B0;
  sub_100003598(&qword_100041608, &qword_100029DC0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1000296C0;
  *(v5 + 32) = 1.0 - fabs(v3);
  v6 = 0.0;
  if (v3 >= 0.0)
  {
    v6 = v3;
  }

  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = v6;
  *(inited + 32) = v5;
  *(inited + 40) = &off_1000397C8;
  *(inited + 48) = &off_100039810;
  *(inited + 56) = &off_100039858;
  v7 = sub_100010064(inited, a1);
  swift_setDeallocating();
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10000FB8C(void *a1, float64x2_t a2, float64x2_t a3)
{
  result = sub_10000FE98(a1);
  if (*(result + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v4.f64[0] = *(result + 64);
    v4.f64[1] = *(result + 112);
    v7 = vaddq_f64(vmulq_f64(*(result + 128), a2), vmulq_f64(*(result + 144), a3));
    v8 = vaddq_f64(v4, vpaddq_f64(vaddq_f64(vmulq_f64(*(result + 32), a2), vmulq_f64(*(result + 48), a3)), vaddq_f64(vmulq_f64(*(result + 80), a2), vmulq_f64(*(result + 96), a3))));
    v5 = *(result + 160);
    v11 = vaddq_f64(vmulq_f64(*(result + 176), a2), vmulq_f64(*(result + 192), a3));
    v6 = *(result + 208);
  }

  return result;
}

id sub_10000FC6C(uint64_t a1)
{
  v2.f64[0] = sub_10000F6F4();
  v20 = v3;
  v22 = v2;
  v4 = sub_100010460(a1);
  sub_10000FB8C(v4, v22, v20);
  v23 = v5;

  v6.f64[0] = sub_10000FD24(0, 0.0, v23);
  v7 = v6;
  __asm { FMOV            V0.2D, #1.0 }

  v21 = sub_10000FDD8(_Q0, _Q0.f64[0], v7);
  v24 = v13;
  v15 = v14;
  v17 = v16;
  v18 = objc_allocWithZone(UIColor);

  return [v18 initWithRed:v21 green:v15 blue:v24 alpha:v17];
}

float64_t sub_10000FD24(float64x2_t a1, double a2, float64x2_t a3)
{
  v3 = a1.f64[0];
  v4 = vmovn_s64(vcgtq_f64(a1, a3)).u8[0];
  if ((*&a3.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((~*&a3.f64[0] & 0x7FF0000000000000) != 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if (v4)
  {
    a1.f64[0] = v3;
  }

  return a1.f64[0];
}

float64_t sub_10000FDD8(float64x2_t a1, double a2, float64x2_t a3)
{
  v3 = a1.f64[0];
  v4 = vmovn_s64(vmvnq_s8(vcgeq_f64(a3, a1))).u8[0];
  if ((*&a3.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((~*&a3.f64[0] & 0x7FF0000000000000) != 0)
  {
    a1.f64[0] = a3.f64[0];
  }

  if ((v4 & 1) == 0)
  {
    a1.f64[0] = v3;
  }

  return a1.f64[0];
}

uint64_t sub_10000FE98(void *a1)
{
  sub_100003598(&qword_1000415F0, &qword_1000296D8);
  result = sub_100026B20();
  *(result + 16) = 4;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0;
  if (a1[2] < 4uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = a1[4];
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v4 == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 < 3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 == 3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 < 5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  *(result + 32) = *(v3 + 32);
  *(result + 48) = v5;
  *(result + 64) = v6;
  v7 = a1[5];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v8 < 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v8 == 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 < 5)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(v7 + 48);
  v10 = *(v7 + 64);
  *(result + 80) = *(v7 + 32);
  *(result + 96) = v9;
  *(result + 112) = v10;
  v11 = a1[6];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v12 < 3)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v12 == 3)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v12 < 5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = *(v11 + 48);
  v14 = *(v11 + 64);
  *(result + 128) = *(v11 + 32);
  *(result + 144) = v13;
  *(result + 160) = v14;
  v15 = a1[7];
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v16 < 3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v16 == 3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v16 >= 5)
  {
    v17 = *(v15 + 48);
    v18 = *(v15 + 64);
    *(result + 176) = *(v15 + 32);
    *(result + 192) = v17;
    *(result + 208) = v18;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100010064(uint64_t a1, char *a2)
{
  v6 = sub_100026B20();
  *(v6 + 16) = 5;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  sub_100003598(&qword_1000415F8, &qword_1000296E0);
  v7 = sub_100026B20();
  v7[2] = 4;
  v7[4] = v6;
  v7[5] = v6;
  v7[6] = v6;
  v7[7] = v6;
  if (*(a1 + 16) < 4uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*(a2 + 2) < 4uLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v2 = v7;
  v30 = a1;
  v32 = *(a2 + 7);
  v33 = a1 + 32;
  v8 = *(a2 + 6);
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  a1 = v9 + 32;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (2)
  {
    v12 = 0;
    v31 = v11 + 1;
    do
    {
      v13 = *(v33 + 8 * v12);
      if (*(v13 + 16) < 4uLL)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v11 >= *(v32 + 16))
      {
        goto LABEL_35;
      }

      if (v11 >= *(v8 + 16))
      {
        goto LABEL_36;
      }

      if (v11 >= *(v9 + 16))
      {
        goto LABEL_37;
      }

      if (v11 >= *(v10 + 16))
      {
        goto LABEL_38;
      }

      if (v12 >= v2[2])
      {
        goto LABEL_39;
      }

      v3 = *(v32 + 32 + 8 * v11);
      v15 = *(v13 + 48);
      v14 = *(v13 + 56);
      v16 = *(v8 + 32 + 8 * v11);
      v17 = *(a1 + 8 * v11);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *(v10 + 32 + 8 * v11);
      v21 = v2;
      v2 += v12;
      a2 = v2[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a2 = sub_100007C84(a2);
        v2[4] = a2;
      }

      if (v11 >= *(a2 + 2))
      {
        goto LABEL_40;
      }

      v2 = v21;
      ++v12;
      *&a2[8 * v11 + 32] = v14 * v3 + v15 * v16 + v19 * v17 + v18 * v20;
    }

    while (v12 != 4);
    ++v11;
    if (v31 != 5)
    {
      continue;
    }

    break;
  }

  if (*(*v33 + 16) < 5uLL)
  {
    goto LABEL_43;
  }

  if (!v21[2])
  {
    goto LABEL_44;
  }

  v3 = *(*v33 + 64);
  a2 = v21[4];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v21[4] = a2;
  if ((v23 & 1) == 0)
  {
LABEL_45:
    a2 = sub_100007C84(a2);
  }

  if (*(a2 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[4] = a2;
  v24 = v30[5];
  if (*(v24 + 16) < 5uLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v2[2] >= 2uLL)
  {
    v3 = *(v24 + 64);
    a2 = v2[5];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v2[5] = a2;
    if (v25)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  a2 = sub_100007C84(a2);
LABEL_24:
  if (*(a2 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[5] = a2;
  v26 = v30[6];
  if (*(v26 + 16) < 5uLL)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v2[2] >= 3uLL)
  {
    v3 = *(v26 + 64);
    a2 = v2[6];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v2[6] = a2;
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  a2 = sub_100007C84(a2);
LABEL_28:
  if (*(a2 + 2) < 5uLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  *(a2 + 8) = v3 + *(a2 + 8);
  v2[6] = a2;
  v28 = v30[7];
  if (*(v28 + 16) < 5uLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v2[2] >= 4uLL)
  {
    v3 = *(v28 + 64);
    a1 = v2[7];
    result = swift_isUniquelyReferenced_nonNull_native();
    v2[7] = a1;
    if (result)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_100007C84(a1);
  a1 = result;
LABEL_32:
  if (*(a1 + 16) < 5uLL)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 64) = v3 + *(a1 + 64);
    v2[7] = a1;
    return v2;
  }

  return result;
}

uint64_t sub_100010460(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = sub_10000F798(&off_1000394E0, *(a1 + 32));
    v3 = sub_10000F924(v2, *(a1 + 40));

    v4 = sub_10000FA64(v3, *(a1 + 48));

    v5 = sub_100010064(&off_100039640, v4);

    return v5;
  }

  else
  {
    result = sub_100026D10();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001086C()
{
  sub_100003598(&unk_1000416E0, &unk_1000295A8);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture);
  *(v1 + 16) = xmmword_100028E90;
  v3 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

void *sub_10001090C(void *a1)
{
  sub_10000DC20(a1);
  v2 = sub_10000D308();
  v4 = v3;
  memmove(__dst, v3, 0x91uLL);
  if (sub_10000EB48(__dst) == 1)
  {
    return (v2)(v12, 0);
  }

  v6 = OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture;
  result = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = [result width];
  result = *(v1 + v6);
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *&v11 = v7;
  *&v10 = [result height];
  sub_1000263F0();
  DWORD2(v8) = 1056964608;
  *&v8 = __PAIR64__(v10, v11);
  HIDWORD(v8) = v9;
  v4[5] = v8;
  return (v2)(v12, 0);
}

void sub_100010A04(void *a1)
{
  v2 = v1;
  v4 = [v2 device];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      v6 = objc_allocWithZone(MTKTextureLoader);
      v7 = a1;
      v8 = [v6 initWithDevice:v5];
      v27 = 0;
      v9 = [v8 newTextureWithCGImage:v7 options:0 error:&v27];
      v10 = v27;
      if (v9)
      {
        v11 = OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture;
        v12 = *&v2[OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture];
        *&v2[OBJC_IVAR____TtC23MonogramPosterExtension23MonogramSimulationLayer_monogramTexture] = v9;
        v13 = v10;
        swift_unknownObjectRelease();
        if (*&v2[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_commandQueue])
        {
          type metadata accessor for NormalGenerator();
          swift_initStackObject();
          swift_unknownObjectRetain();
          sub_100001DE0()[7] = 0x4080000040000000;
          v14 = *&v2[v11];
          v15 = swift_unknownObjectRetain();
          sub_100002258(v15);
          v17 = v16;
          swift_unknownObjectRelease();
          v18 = *&v2[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture];
          *&v2[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_normalTexture] = v17;
          swift_unknownObjectRelease();
          [v2 setNeedsDisplay];

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v19 = v27;
        sub_1000261D0();

        swift_willThrow();
        swift_errorRetain();
        v20 = sub_100026680();
        v21 = sub_100026BB0();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v27 = v23;
          *v22 = 136315138;
          swift_getErrorValue();
          v24 = sub_100026D70();
          v26 = sub_100025380(v24, v25, &v27);

          *(v22 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v20, v21, "Failed to generate monogram texture from string image with error: %s", v22, 0xCu);
          sub_10000B7E0(v23);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_100010D80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100010E3C(uint64_t a1)
{
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = MTLCreateSystemDefaultDevice();
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [v3 newDefaultLibrary];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  swift_unknownObjectRelease();
  v7 = *(v1 + 24);
  *(v1 + 24) = v6;
  swift_unknownObjectRelease();
  v8 = *(v1 + 32);
  *(v1 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __asm { FMOV            V1.2S, #1.0 }

  v20[0] = 0x3F80000000000000;
  v20[1] = _D1;
  v20[2] = 0;
  v20[3] = 1065353216;
  result = *(v1 + 16);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = [result newBufferWithBytes:v20 length:32 options:0];
  v15 = *(v1 + 48);
  *(v1 + 48) = v14;
  swift_unknownObjectRelease();
  sub_100003598(&unk_1000419B0, &qword_1000297F8);
  v16 = swift_allocObject();
  v16[2] = xmmword_100029750;
  v17 = v16 + 2;
  v16[3] = xmmword_100029760;
  v16[4] = xmmword_100029770;
  v16[5] = xmmword_100029780;
  result = *(v1 + 16);
  if (result)
  {
    v18 = [result newBufferWithBytes:v17 length:64 options:0];
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_deallocClassInstance();
    v19 = *(v1 + 40);
    *(v1 + 40) = v18;
    swift_unknownObjectRelease();
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100010FE0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[6];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_10001105C(double a1)
{
  v3 = [v1 font];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [v1 setHidden:0];
  v5 = a1 + -32.0;
  [v1 _tightBoundingRect];
  IsEmpty = CGRectIsEmpty(v39);
  v7 = &selRef__tightBoundingRectOfFirstLine;
  if (!IsEmpty)
  {
    v7 = &selRef__tightBoundingRect;
  }

  [v1 *v7];
  v9 = v8;
  v11 = v10;
  v14 = fabs(v13);
  v15 = v12 + 32.0 + v14 + v14;
  if (v5 < v15)
  {
    [v4 pointSize];
    v17 = [v4 fontWithSize:v5 / v15 * v16];
    [v1 setFont:v17];

    result = [v1 font];
    if (!result)
    {
      goto LABEL_12;
    }

    v19 = result;

    v4 = v19;
  }

  v20 = fabs(v9);
  v21 = v11 + 32.0 + v20 + v20;
  [v1 _tightBoundingRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1000113E8();
  v30 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v30 setPreferredRange:2];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v30 format:{v15, v21}];
  v32 = swift_allocObject();
  *(v32 + 16) = v15;
  *(v32 + 24) = v21;
  *(v32 + 32) = v23;
  *(v32 + 40) = v25;
  *(v32 + 48) = v27;
  *(v32 + 56) = v29;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  *(v32 + 64) = v1;
  *(v32 + 88) = v15;
  *(v32 + 96) = v21;
  *(v32 + 104) = 0;
  *(v32 + 112) = 0;
  *(v32 + 120) = v15;
  *(v32 + 128) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1000115E8;
  *(v33 + 24) = v32;
  v38[4] = sub_100011640;
  v38[5] = v33;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_100016EDC;
  v38[3] = &unk_100039E50;
  v34 = _Block_copy(v38);
  v35 = v1;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    v37 = [v36 CGImage];

    [v35 setHidden:1];

    return v37;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1000113E8()
{
  result = qword_1000419C0;
  if (!qword_1000419C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000419C0);
  }

  return result;
}

void sub_100011434(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16)
{
  CGAffineTransformMakeTranslation(&v34, (a3 - a7 - a5) * 0.5, (a4 - a8 - a6) * 0.5);
  tx = v34.tx;
  ty = v34.ty;
  v32 = *&v34.c;
  v33 = *&v34.a;
  v28 = [a2 layer];
  *&v34.a = v33;
  *&v34.c = v32;
  v34.tx = tx;
  v34.ty = ty;
  [v28 setAffineTransform:&v34];

  [a2 drawTextInRect:{a9, a10, a11, a12}];
  v29 = [a1 CGContext];
  CGContextSetBlendMode(v29, kCGBlendModeCopy);

  v30 = [a1 CGContext];
  CGContextSetGrayStrokeColor(v30, 0.0, 0.0);

  v31 = [a1 CGContext];
  v35.origin.y = a14;
  v35.origin.x = a13;
  v35.size.width = a15;
  v35.size.height = a16;
  CGContextStrokeRect(v31, v35);
}

uint64_t sub_1000115B0()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100011648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011660()
{
  result = sub_100011680();
  qword_100042CA8 = result;
  return result;
}

uint64_t sub_100011680()
{
  v0 = objc_opt_self();
  v1 = [v0 currentEnvironment];
  v2 = [v1 featureFlags];

  LODWORD(v1) = [v2 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v1 && (v3 = [v0 currentEnvironment], v4 = objc_msgSend(v3, "featureFlags"), v3, LOBYTE(v3) = objc_msgSend(v4, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id sub_100011770()
{
  v1 = OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField;
  *&v0[v1] = [objc_allocWithZone(UITextField) init];
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = *&v0[v1];
  v3 = sub_1000269F0();

  [v2 setText:v3];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MonogramInputViewController();
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

void sub_1000119F0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_100020A34();
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
    v5 = *&v3[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8];
    v6 = v3;

    v7 = sub_1000269F0();

    LODWORD(v5) = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v5)
    {
      v8 = 180.0;
    }

    else
    {
      v8 = 210.0;
    }

    v9 = [*&v6[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
    v10 = [objc_opt_self() fontWithDescriptor:v9 size:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  [v2 setFont:v10];

  [v2 setTextAlignment:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setKeyboardType:13];
  [v2 setAutocorrectionType:1];
  [v2 setReturnKeyType:9];
  [v2 setSpellCheckingType:1];
  [v2 setAutocapitalizationType:3];
  [v2 setDelegate:v0];
  [v2 becomeFirstResponder];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v2 setTintColor:v12];

  [v2 addTarget:v1 action:"textFieldDidChange:" forControlEvents:0x20000];
  v13 = [v11 clearColor];
  [v2 setTextColor:v13];
}

void sub_100011CA4(void *a1)
{
  if ([a1 hasMarkedText])
  {
    goto LABEL_27;
  }

  v2 = [a1 text];
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = [a1 text];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = sub_100026A20();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 text];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    sub_100026A20();

    v11 = sub_100026AA0();
    if (qword_100040938 != -1)
    {
      v20 = v11;
      swift_once();
      v11 = v20;
    }

    if (qword_100042CA8 < v11)
    {
      sub_100026AB0();
      sub_100026AE0();

      sub_100026A80();
    }

    v12 = sub_100026A60();
    v14 = v13;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10001A164(v12, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
LABEL_27:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = [a1 text];
      if (v15)
      {
        v16 = v15;
        v17 = sub_100026A20();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      sub_10001A164(v17, v19);

      swift_unknownObjectRelease();
    }
  }

  sub_1000126BC();
}

void sub_100011FA4()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField];
  [v2 addSubview:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  Height = CGRectGetHeight(v41);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 window];

  if (v18)
  {
    [v18 bounds];
    Height = CGRectGetHeight(v42);
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100029330;
  v20 = [v4 centerXAnchor];
  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v19 + 32) = v24;
  v25 = [v1 view];
  if (v25)
  {
    v26 = sub_10000B82C(0, &qword_1000412E0, UIView_ptr);
  }

  else
  {
    v26 = 0;
    v40[1] = 0;
    v40[2] = 0;
  }

  v40[0] = v25;
  v40[3] = v26;
  sub_1000263F0();
  v28 = v27;
  if (v26)
  {
    v29 = sub_10000B79C(v40, v26);
    v30 = *(v26 - 8);
    v31 = *(v30 + 64);
    __chkstk_darwin(v29);
    v33 = v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33);
    v34 = v4;
    v35 = sub_100026D50();
    (*(v30 + 8))(v33, v26);
    sub_10000B7E0(v40);
  }

  else
  {
    v36 = v4;
    v35 = 0;
  }

  v37 = objc_opt_self();
  v38 = [v37 constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v35 attribute:4 multiplier:1.0 constant:{-(Height * (1.0 - v28)), v40[0]}];

  swift_unknownObjectRelease();
  *(v19 + 40) = v38;
  sub_10000B82C(0, &qword_100041A70, NSLayoutConstraint_ptr);
  isa = sub_100026B00().super.isa;

  [v37 activateConstraints:isa];
}

uint64_t sub_10001237C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    sub_100026A20();
  }

  v8 = objc_allocWithZone(NSString);
  v9 = sub_1000269F0();

  v10 = [v8 initWithString:v9];

  v11 = sub_1000269F0();
  v12 = [v10 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

  v13 = v12;
  if (!v12)
  {
    sub_100026A20();
    v13 = sub_1000269F0();
  }

  v14 = sub_100026A20();
  v16 = v15;
  v17 = sub_100026AA0();
  if (qword_100040938 != -1)
  {
    swift_once();
  }

  v18 = qword_100042CA8;
  v19 = CNStringContainsEmojiCharacters();

  if (([a1 hasMarkedText] & 1) == 0)
  {
    if (v18 < v17 || v19)
    {

      return 0;
    }

LABEL_14:
    v21 = [a1 hasMarkedText];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      if (Strong)
      {
        sub_10001A164(v14, v16);
LABEL_19:

        swift_unknownObjectRelease();
LABEL_21:
        sub_1000126BC();

        return 1;
      }
    }

    else if (Strong)
    {
      v23 = sub_100026A60();
      v25 = v24;

      sub_10001A164(v23, v25);
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v18 >= v17 && (v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  return 1;
}

void sub_1000126BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_100020A34();
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = *&v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
    v4 = *&v2[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8];
    v5 = v2;

    v6 = sub_1000269F0();

    LODWORD(v4) = CNStringContainsChineseJapaneseKoreanCharacters();

    if (v4)
    {
      v7 = 180.0;
    }

    else
    {
      v7 = 210.0;
    }

    v8 = [*&v5[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont] fontDescriptor];
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  [v1 setFont:v9];
}

id sub_100012858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MonogramInputViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000128FC()
{
  v1 = v0;
  v2 = sub_1000266A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_logger, v2);
  v8 = sub_100026680();
  v9 = sub_100026BA0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopping motion updates and invalidating timer", v10, 2u);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion;
  v13 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
  if (v13)
  {
    [v13 stopDeviceMotionUpdates];
    v14 = *(v1 + v12);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 0;

  v15 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer;
  v16 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(v1 + v15);
  }

  else
  {
    v17 = 0;
  }

  *(v1 + v15) = 0;

  v11((v1 + v7), v2);
  sub_100005324(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate);

  return v1;
}

uint64_t sub_100012AF4()
{
  sub_1000128FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Motion()
{
  result = qword_100041AB0;
  if (!qword_100041AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012BA0()
{
  result = sub_1000266A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012C6C()
{
  v1 = v0;
  sub_100026690();
  v2 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion) = 0;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_timer) = 0;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_restingQuaternion) = xmmword_100029860;
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = 0;
  v4 = OBJC_IVAR____TtC23MonogramPosterExtension6Motion_startTime;
  *(v1 + v4) = CFAbsoluteTimeGetCurrent();
  v5 = [objc_allocWithZone(CMMotionManager) init];
  v6 = *(v1 + v2);
  *(v1 + v2) = v5;

  v7 = *(v1 + v2);
  if (v7)
  {
    [v7 startDeviceMotionUpdates];
  }

  v8 = sub_100026680();
  v9 = sub_100026BA0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting device motion updates", v10, 2u);
  }

  v11 = sub_100026680();
  v12 = sub_100026BA0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Scheduling timer to listen for motion updates", v13, 2u);
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  swift_weakInit();
  v20[4] = sub_100013214;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100013174;
  v20[3] = &unk_100039EA0;
  v16 = _Block_copy(v20);

  v17 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:0.0166666667];
  _Block_release(v16);
  v18 = *(v1 + v3);
  *(v1 + v3) = v17;

  return v1;
}

void sub_100012F3C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot))
    {
      v2 = Strong + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        swift_getObjectType();
        if (qword_100040930 != -1)
        {
          swift_once();
        }

        (*(v3 + 8))(xmmword_100042C40, *algn_100042C50, xmmword_100042C60, unk_100042C70);

        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v4 = *(Strong + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
    if (!v4 || (v5 = [v4 deviceMotion]) == 0)
    {
LABEL_12:

      return;
    }

    v6 = v5;
    v7 = [v5 attitude];
    [v7 quaternion];

    v8 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_restingQuaternion);
    sub_100026BD0();
    v18 = v10;
    v19 = v9;
    v16 = v12;
    v17 = v11;
    v13 = v1 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(ObjectType, v14, v19, v18, v17, v16);

LABEL_11:
      swift_unknownObjectRelease();
      return;
    }
  }
}

void sub_100013174(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000131DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001321C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100013240(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001329C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v14 = a4;
  v15 = a5;
  v16 = sub_100026610();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v16);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s5ModelCMa();
  sub_100015F18(&qword_100041230, _s5ModelCMa);
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  v9 = v17 - 3;
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  if (v9 > 1)
  {
    v11 = v15(v10);
  }

  else
  {
    v11 = v14(v10);
  }

  v12 = v11;
  (*(v5 + 8))(v8, v16);
  return v12;
}

uint64_t sub_10001353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = sub_100026910();
  a5[1] = v10;
  v11 = sub_100003598(&qword_100041C20, &qword_100029A08);
  return sub_1000135B4(a2, a3, a4 & 1, a1, a5 + *(v11 + 44));
}

uint64_t sub_1000135B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v173 = a4;
  v181 = a5;
  v179 = sub_100003598(&qword_100041C28, &qword_100029A10);
  v178 = *(v179 - 8);
  v8 = *(v178 + 64);
  __chkstk_darwin(v179);
  v148 = v142 - v9;
  v10 = sub_100003598(&qword_100041C30, &qword_100029A18);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v172 = v142 - v12;
  v175 = sub_100026520();
  v174 = *(v175 - 8);
  v13 = *(v174 + 64);
  __chkstk_darwin(v175);
  v147 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003598(&qword_100041C38, &qword_100029A20);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v180 = v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v142 - v19;
  v146 = sub_1000267D0();
  v145 = *(v146 - 8);
  v21 = *(v145 + 64);
  __chkstk_darwin(v146);
  v143 = v22;
  v144 = v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003598(&qword_100041C40, &qword_100029A28);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v176 = v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v186 = v142 - v27;
  v184 = sub_100026610();
  v187 = *(v184 - 8);
  v28 = *(v187 + 64);
  v29 = __chkstk_darwin(v184);
  v170 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v169 = v142 - v31;
  v167 = sub_100026780();
  v164 = *(v167 - 8);
  v32 = *(v164 + 64);
  __chkstk_darwin(v167);
  v166 = (v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = sub_100026790();
  v155 = *(v156 - 8);
  v34 = *(v155 + 64);
  __chkstk_darwin(v156);
  v160 = (v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = sub_100026900();
  v159 = *(v161 - 8);
  v36 = *(v159 + 64);
  v37 = __chkstk_darwin(v161);
  v154 = v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v153 = v142 - v39;
  v192 = sub_1000264A0();
  v40 = *(v192 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v192);
  v43 = v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1000267A0();
  v162 = *(v163 - 8);
  v44 = *(v162 + 64);
  __chkstk_darwin(v163);
  v157 = v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_100003598(&qword_100041C48, &qword_100029A30);
  v46 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v168 = v142 - v47;
  v158 = sub_100003598(&unk_100041C50, &qword_100029A38);
  v48 = *(*(v158 - 8) + 64);
  v49 = __chkstk_darwin(v158);
  v171 = v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v165 = v142 - v52;
  __chkstk_darwin(v51);
  v185 = v142 - v53;
  v151 = sub_100013310(a1, a2, a3 & 1, &GradientDefinition.height.getter, &GradientDefinition.width.getter);
  v150 = sub_100013310(a1, a2, a3 & 1, &GradientDefinition.width.getter, &GradientDefinition.height.getter);
  v54 = _s5ModelCMa();
  v55 = sub_100015F18(&qword_100041230, _s5ModelCMa);
  v189 = a3;
  v56 = v55;
  v57 = a2;
  sub_100026750();
  v58 = sub_100005540();

  v59 = *(v58 + 16);
  v190 = v54;
  v177 = v20;
  v182 = a2;
  v183 = a1;
  v188 = v56;
  v149 = v40;
  if (v59)
  {
    *&v197 = &_swiftEmptyArrayStorage;
    sub_100015D98(0, v59, 0);
    v60 = v58;
    v61 = v197;
    v62 = v40 + 16;
    v191 = *(v40 + 16);
    v63 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v142[1] = v60;
    v64 = v60 + v63;
    v65 = *(v62 + 56);
    v66 = v192;
    do
    {
      v191(v43, v64, v66);
      sub_100026450();
      v194 = v67;
      sub_100026450();
      v66 = v192;
      v193 = v68;
      (*(v62 - 8))(v43, v192);
      *&v197 = v61;
      v70 = *(v61 + 2);
      v69 = *(v61 + 3);
      if (v70 >= v69 >> 1)
      {
        sub_100015D98((v69 > 1), v70 + 1, 1);
        v66 = v192;
        v61 = v197;
      }

      *&v71.f64[0] = v194;
      *&v71.f64[1] = v193;
      *(v61 + 2) = v70 + 1;
      *(v61 + v70 + 4) = vcvt_f32_f64(v71);
      v64 += v65;
      --v59;
    }

    while (v59);

    v57 = v182;
  }

  else
  {

    v61 = &_swiftEmptyArrayStorage;
  }

  sub_100026750();
  v72 = sub_100005540();

  v73 = *(v72 + 16);
  if (v73)
  {
    *&v197 = &_swiftEmptyArrayStorage;
    sub_100026CE0();
    *&v194 = *(v149 + 16);
    v74 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v191 = v72;
    v75 = v72 + v74;
    *&v193 = *(v149 + 72);
    v76 = (v149 + 8);
    v77 = v192;
    do
    {
      (v194)(v43, v75, v77);
      sub_100026430();
      (*v76)(v43, v77);
      sub_100026CC0();
      v78 = *(v197 + 16);
      sub_100026CF0();
      sub_100026D00();
      sub_100026CD0();
      v75 += v193;
      --v73;
    }

    while (v73);

    v79 = v197;
    v57 = v182;
  }

  else
  {

    v79 = &_swiftEmptyArrayStorage;
  }

  sub_1000268B0();
  v80 = v153;
  sub_1000268F0();
  v81 = v160;
  *v160 = v61;
  (*(v155 + 104))(v81, enum case for MeshGradient.Locations.points(_:), v156);
  v82 = v166;
  *v166 = v79;
  (*(v164 + 104))(v82, enum case for MeshGradient.Colors.colors(_:), v167);
  v83 = v159;
  v84 = v161;
  (*(v159 + 16))(v154, v80, v161);
  v85 = v157;
  sub_100026770();
  (*(v83 + 8))(v80, v84);
  v86 = v183;
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v169;
  sub_100026710();

  v88 = v168;
  v89 = &v168[*(v152 + 52)];
  sub_100026590();
  v90 = *(v187 + 8);
  v187 += 8;
  *&v194 = v90;
  v90(v87, v184);
  (*(v162 + 32))(v88, v85, v163);
  v91 = sub_100026920();
  v92 = v86;
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v57;
  v94 = v165;
  v95 = &v165[*(v158 + 36)];
  v96 = v95 + *(sub_100003598(&qword_100041C60, &qword_100029A88) + 36);
  sub_100026710();

  *v95 = v91;
  v97 = v88;
  v98 = 1;
  sub_100016724(v97, v94, &qword_100041C48, &qword_100029A30);
  v99 = v94;
  v100 = v93;
  sub_100016724(v99, v185, &unk_100041C50, &qword_100029A38);
  v101 = [objc_opt_self() standardPreferences];
  v102 = sub_1000269F0();
  LOBYTE(v81) = [v101 userHasOptedInToPreference:v102];

  v103 = v186;
  if (v81)
  {
    v104 = v189;
    sub_100026750();
    v105 = sub_100005540();

    *&v197 = v105;
    swift_getKeyPath();
    v106 = v145;
    v107 = v144;
    v108 = v146;
    (*(v145 + 16))(v144, v173, v146);
    v109 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v110 = (v143 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    (*(v106 + 32))(v111 + v109, v107, v108);
    v112 = v111 + v110;
    *v112 = v92;
    *(v112 + 8) = v100;
    v113 = v104 & 1;
    v103 = v186;
    *(v112 + 16) = v113;
    sub_1000159D8();
    sub_100003598(&qword_100041C80, &qword_100029AC8);
    sub_100003598(&qword_100041C88, &qword_100029AD0);
    sub_1000166DC(&qword_100041C90, &qword_100041C80, &qword_100029AC8);
    sub_100015F18(&qword_100041C98, &type metadata accessor for MeshGradientPoint);
    sub_100015F60();
    sub_1000268E0();
    v98 = 0;
  }

  v114 = sub_100003598(&qword_100041C68, &qword_100029A90);
  (*(*(v114 - 8) + 56))(v103, v98, 1, v114);
  sub_100026750();
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v170;
  sub_100026710();

  v116 = v172;
  sub_100026530();
  (v194)(v115, v184);
  v117 = v174;
  v118 = v175;
  if ((*(v174 + 48))(v116, 1, v175) == 1)
  {
    sub_10000C6E0(v116, &qword_100041C30, &qword_100029A18);
    v119 = v177;
    (*(v178 + 56))(v177, 1, 1, v179);
  }

  else
  {
    v120 = v147;
    (*(v117 + 32))(v147, v116, v118);
    v121 = sub_1000264F0();
    sub_100026510();
    sub_100026910();
    sub_1000267B0();
    *&v195[6] = v197;
    *&v195[22] = v198;
    *&v195[38] = v199;
    sub_1000264E0();
    v123 = v122;
    sub_1000267C0();
    v125 = v124 * -0.5;
    v126 = *(sub_100003598(&qword_100041C78, &unk_100029AA0) + 36);
    v127 = enum case for BlendMode.multiply(_:);
    v128 = sub_100026930();
    v129 = v148;
    (*(*(v128 - 8) + 104))(&v148[v126], v127, v128);
    v130 = *&v195[16];
    *(v129 + 10) = *v195;
    *v129 = v121;
    *(v129 + 8) = 256;
    *(v129 + 26) = v130;
    *(v129 + 42) = *&v195[32];
    *(v129 + 56) = *&v195[46];
    *(v129 + 64) = v123;
    *(v129 + 72) = 0;
    *(v129 + 73) = *v196;
    *(v129 + 76) = *&v196[3];
    *(v129 + 80) = 0;
    *(v129 + 88) = v125;
    sub_100026500();
    v132 = v131;
    (*(v117 + 8))(v120, v118);
    v133 = v179;
    *(v129 + *(v179 + 36)) = v132;
    v119 = v177;
    sub_100016724(v129, v177, &qword_100041C28, &qword_100029A10);
    (*(v178 + 56))(v119, 0, 1, v133);
  }

  v134 = v185;
  v135 = v171;
  sub_1000161E8(v185, v171, &unk_100041C50, &qword_100029A38);
  v136 = v176;
  sub_1000161E8(v103, v176, &qword_100041C40, &qword_100029A28);
  v137 = v180;
  sub_1000161E8(v119, v180, &qword_100041C38, &qword_100029A20);
  v138 = v181;
  sub_1000161E8(v135, v181, &unk_100041C50, &qword_100029A38);
  v139 = v119;
  v140 = sub_100003598(&qword_100041C70, &qword_100029A98);
  sub_1000161E8(v136, v138 + *(v140 + 48), &qword_100041C40, &qword_100029A28);
  sub_1000161E8(v137, v138 + *(v140 + 64), &qword_100041C38, &qword_100029A20);
  sub_10000C6E0(v139, &qword_100041C38, &qword_100029A20);
  sub_10000C6E0(v186, &qword_100041C40, &qword_100029A28);
  sub_10000C6E0(v134, &unk_100041C50, &qword_100029A38);
  sub_10000C6E0(v137, &qword_100041C38, &qword_100029A20);
  sub_10000C6E0(v136, &qword_100041C40, &qword_100029A28);
  return sub_10000C6E0(v135, &unk_100041C50, &qword_100029A38);
}

uint64_t sub_100014B94@<X0>(uint64_t a1@<X1>, void (*a2)(unint64_t, char *, uint64_t)@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(KeyPath) = a4;
  v105 = a3;
  v103 = a2;
  v115 = a5;
  v116 = a1;
  v5 = sub_100003598(&qword_100041CF8, &qword_100029B00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v95 - v7;
  v9 = sub_100003598(&qword_100041CB0, &qword_100029AD8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v112 = (v95 - v11);
  v12 = sub_1000267D0();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  __chkstk_darwin(v12);
  v97 = v14;
  v98 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003598(&unk_100041D00, &unk_100029B08);
  v109 = *(v15 - 8);
  v110 = v15;
  v16 = *(v109 + 64);
  __chkstk_darwin(v15);
  v107 = (v95 - v17);
  v18 = sub_100003598(&qword_100041378, &qword_100029430);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v95 - v20;
  v22 = sub_100026610();
  v101 = *(v22 - 8);
  v102 = v22;
  v23 = *(v101 + 64);
  __chkstk_darwin(v22);
  v25 = v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100026570();
  v113 = *(v26 - 8);
  v114 = v26;
  v27 = *(v113 + 64);
  v28 = __chkstk_darwin(v26);
  v96 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v106 = v95 - v29;
  v30 = sub_100003598(&qword_100041D10, &qword_100029B18);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v108 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v111 = v95 - v34;
  if (sub_100026400())
  {
    v95[1] = v5;
    v95[2] = v9;
    v35 = sub_100026430();
    sub_100026910();
    sub_1000267B0();
    *&v126[6] = *(&v130[3] + 6);
    *&v126[22] = *(&v130[4] + 6);
    *&v126[38] = *(&v130[5] + 6);
    sub_1000267C0();
    v37 = v36;
    sub_100026450();
    v39 = v37 * v38;
    sub_1000267C0();
    v41 = v40;
    sub_100026450();
    v43 = v41 * v42;
    v44 = sub_1000268A0();
    *&v127[0] = v35;
    WORD4(v127[0]) = 256;
    *(v127 + 10) = *v126;
    *(&v127[1] + 10) = *&v126[16];
    *(&v127[2] + 10) = *&v126[32];
    *(&v127[3] + 1) = *&v126[46];
    *&v128 = v39;
    *(&v128 + 1) = v43;
    *(v129 + 8) = xmmword_1000298F0;
    *&v129[0] = v44;
    *(&v129[1] + 1) = 0x3FF0000000000000;
    _s5ModelCMa();
    sub_100015F18(&qword_100041230, _s5ModelCMa);
    sub_100026750();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100026710();

    sub_1000264D0();
    (*(v101 + 8))(v25, v102);
    if ((*(v113 + 48))(v21, 1, v114) == 1)
    {
      sub_10000C6E0(v21, &qword_100041378, &qword_100029430);
      v45 = v111;
      (*(v109 + 56))(v111, 1, 1, v110);
    }

    else
    {
      v57 = v114;
      v58 = v113;
      v59 = *(v113 + 32);
      v102 = v113 + 32;
      v103 = v59;
      v60 = v106;
      v59(v106, v21, v114);
      sub_100026450();
      v62 = v61;
      v63 = v116;
      sub_1000267C0();
      v65 = v62 * v64;
      sub_100026450();
      v67 = v66;
      sub_1000267C0();
      v69 = v67 * v68;
      v70 = sub_100026910();
      v71 = v107;
      *v107 = v70;
      v71[1] = v72;
      v105 = *(sub_100003598(&qword_100041D20, &qword_100029B28) + 44);
      v125[0] = xmmword_100029900;
      KeyPath = swift_getKeyPath();
      v73 = v58;
      v74 = v96;
      (*(v58 + 16))(v96, v60, v57);
      v76 = v98;
      v75 = v99;
      v77 = v100;
      (*(v99 + 16))(v98, v63, v100);
      v78 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v79 = (v27 + *(v75 + 80) + v78) & ~*(v75 + 80);
      v80 = (v97 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v74;
      v83 = v114;
      v103(v81 + v78, v82, v114);
      (*(v75 + 32))(v81 + v79, v76, v77);
      v84 = (v81 + v80);
      *v84 = v65;
      v84[1] = v69;
      sub_100003598(&qword_100041D28, &qword_100029B48);
      sub_100003598(&qword_100041D30, &qword_100029B50);
      sub_1000164B8();
      sub_100016598();
      v85 = v107;
      sub_1000268E0();
      v45 = v111;
      sub_100016724(v85, v111, &unk_100041D00, &unk_100029B08);
      (*(v109 + 56))(v45, 0, 1, v110);
      (*(v113 + 8))(v106, v83);
    }

    v121 = v128;
    v122 = v129[0];
    v123 = v129[1];
    v117 = v127[0];
    v118 = v127[1];
    v119 = v127[2];
    v120 = v127[3];
    v86 = v108;
    sub_1000161E8(v45, v108, &qword_100041D10, &qword_100029B18);
    v87 = v121;
    v88 = v122;
    v124[4] = v121;
    v124[5] = v122;
    v89 = v123;
    v124[6] = v123;
    v90 = v118;
    v124[0] = v117;
    v124[1] = v118;
    v92 = v119;
    v91 = v120;
    v124[2] = v119;
    v124[3] = v120;
    v93 = v112;
    *v112 = v117;
    v93[1] = v90;
    v93[5] = v88;
    v93[6] = v89;
    v93[2] = v92;
    v93[3] = v91;
    v93[4] = v87;
    v94 = sub_100003598(&qword_100041D18, &qword_100029B20);
    sub_1000161E8(v86, v93 + *(v94 + 48), &qword_100041D10, &qword_100029B18);
    sub_1000161E8(v127, v125, &qword_100041CC0, &qword_100029AE0);
    sub_1000161E8(v124, v125, &qword_100041CC0, &qword_100029AE0);
    sub_10000C6E0(v86, &qword_100041D10, &qword_100029B18);
    v125[4] = v121;
    v125[5] = v122;
    v125[6] = v123;
    v125[0] = v117;
    v125[1] = v118;
    v125[2] = v119;
    v125[3] = v120;
    sub_10000C6E0(v125, &qword_100041CC0, &qword_100029AE0);
    sub_1000161E8(v93, v8, &qword_100041CB0, &qword_100029AD8);
    swift_storeEnumTagMultiPayload();
    sub_100003598(&qword_100041CC0, &qword_100029AE0);
    sub_1000166DC(&qword_100041CA8, &qword_100041CB0, &qword_100029AD8);
    sub_100016018();
    sub_100026820();
    sub_10000C6E0(v127, &qword_100041CC0, &qword_100029AE0);
    sub_10000C6E0(v93, &qword_100041CB0, &qword_100029AD8);
    return sub_10000C6E0(v45, &qword_100041D10, &qword_100029B18);
  }

  else
  {
    v46 = sub_100026430();
    sub_100026910();
    sub_1000267B0();
    *(v130 + 6) = v127[0];
    *(&v130[1] + 6) = v127[1];
    *(&v130[2] + 6) = v127[2];
    sub_1000267C0();
    v48 = v47;
    sub_100026450();
    v50 = v48 * v49;
    sub_1000267C0();
    v52 = v51;
    sub_100026450();
    v54 = v52 * v53;
    v55 = sub_1000268C0();
    *v8 = v46;
    *(v8 + 4) = 256;
    *(v8 + 10) = v130[0];
    *(v8 + 26) = v130[1];
    *(v8 + 42) = v130[2];
    *(v8 + 7) = *(&v130[2] + 14);
    *(v8 + 8) = v50;
    *(v8 + 9) = v54;
    *(v8 + 10) = v55;
    *(v8 + 88) = xmmword_1000298F0;
    *(v8 + 13) = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_100003598(&qword_100041CC0, &qword_100029AE0);
    sub_1000166DC(&qword_100041CA8, &qword_100041CB0, &qword_100029AD8);
    sub_100016018();
    return sub_100026820();
  }
}

double sub_100015720@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *a1;
  sub_100026540();
  sub_1000267C0();
  sub_1000267C0();
  sub_1000268A0();
  v8 = sub_1000268D0();

  sub_100026760();
  v9 = sub_100026910();
  v11 = v10;
  sub_100026910();
  sub_1000267B0();
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v8;
  *(a2 + 48) = 256;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = v18;
  *(a2 + 88) = v19;
  result = *&v20;
  *(a2 + 104) = v20;
  *(a2 + 120) = a3;
  *(a2 + 128) = a4;
  return result;
}

uint64_t sub_1000158B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1000159D8();
  sub_1000267E0();
  sub_100026830();
  sub_100003598(&qword_100041C00, &qword_1000299F8);
  sub_1000159E0();
  sub_100026870();
}

uint64_t sub_100015988()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000159C4();

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_1000159E0()
{
  result = qword_100041C08;
  if (!qword_100041C08)
  {
    sub_100003508(&qword_100041C00, &qword_1000299F8);
    sub_1000166DC(&qword_100041C10, &qword_100041C18, &qword_100029A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041C08);
  }

  return result;
}

uint64_t sub_100015A98(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();
}

uint64_t sub_100015B14(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100026610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_100026720();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100015C84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  *a2 = v5;
  return result;
}

uint64_t sub_100015D04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

size_t sub_100015D78(size_t a1, int64_t a2, char a3)
{
  result = sub_1000167CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015D98(char *a1, int64_t a2, char a3)
{
  result = sub_1000169A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100015DC0()
{
  v1 = sub_1000267D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);
  v7 = *(v0 + v5 + 8);
  v8 = *(v0 + v5 + 16);
  sub_1000159C4();

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100015E64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1000267D0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_100014B94(v1 + v4, v6, v7, v8, a1);
}

uint64_t sub_100015F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100015F60()
{
  result = qword_100041CA0;
  if (!qword_100041CA0)
  {
    sub_100003508(&qword_100041C88, &qword_100029AD0);
    sub_1000166DC(&qword_100041CA8, &qword_100041CB0, &qword_100029AD8);
    sub_100016018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CA0);
  }

  return result;
}

unint64_t sub_100016018()
{
  result = qword_100041CB8;
  if (!qword_100041CB8)
  {
    sub_100003508(&qword_100041CC0, &qword_100029AE0);
    sub_1000160A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CB8);
  }

  return result;
}

unint64_t sub_1000160A4()
{
  result = qword_100041CC8;
  if (!qword_100041CC8)
  {
    sub_100003508(&qword_100041CD0, &qword_100029AE8);
    sub_100016130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CC8);
  }

  return result;
}

unint64_t sub_100016130()
{
  result = qword_100041CD8;
  if (!qword_100041CD8)
  {
    sub_100003508(&qword_100041CE0, &qword_100029AF0);
    sub_1000166DC(&qword_100041CE8, &qword_100041CF0, &qword_100029AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041CD8);
  }

  return result;
}

uint64_t sub_1000161E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003598(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100016250()
{
  v1 = sub_100026570();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000267D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

double sub_1000163A4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100026570() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000267D0() - 8);
  v9 = (v2 + ((*(v8 + 64) + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_100015720(a1, a2, v10, v11);
}

unint64_t sub_1000164B8()
{
  result = qword_100041D38;
  if (!qword_100041D38)
  {
    sub_100003508(&qword_100041D28, &qword_100029B48);
    sub_100016544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D38);
  }

  return result;
}

unint64_t sub_100016544()
{
  result = qword_100041D40;
  if (!qword_100041D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D40);
  }

  return result;
}

unint64_t sub_100016598()
{
  result = qword_100041D48;
  if (!qword_100041D48)
  {
    sub_100003508(&qword_100041D30, &qword_100029B50);
    sub_100016624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D48);
  }

  return result;
}

unint64_t sub_100016624()
{
  result = qword_100041D50;
  if (!qword_100041D50)
  {
    sub_100003508(&qword_100041D58, &qword_100029B58);
    sub_1000166DC(&qword_100041D60, &qword_100041D68, &qword_100029B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D50);
  }

  return result;
}

uint64_t sub_1000166DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003508(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100016724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003598(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id *sub_10001678C(id *a1, int64_t a2, char a3)
{
  result = sub_100016AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000167AC(size_t a1, int64_t a2, char a3)
{
  result = sub_100016BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000167CC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003598(&unk_100041D90, &qword_100029BD8);
  v10 = *(sub_1000264A0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000264A0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000169A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003598(&qword_100041D70, &qword_100029B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_100016AB4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003598(&qword_100041D88, &qword_100029BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100016BC4(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003598(&qword_100041D78, &unk_100029BC0);
  v10 = *(sub_100003598(&qword_100041D80, &qword_100029D10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_100003598(&qword_100041D80, &qword_100029D10) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100016DB4()
{
  sub_100003508(&qword_100041C00, &qword_1000299F8);
  sub_1000159E0();
  return swift_getOpaqueTypeConformance2();
}

id sub_100016E58()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100016EDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

Swift::Int sub_100016F30()
{
  sub_100026DC0();
  sub_100026DD0(0);
  return sub_100026E10();
}

Swift::Int sub_100016F9C()
{
  sub_100026DC0();
  sub_100026DD0(0);
  return sub_100026E10();
}

void sub_100016FEC(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_100026680();
  v7 = sub_100026B90();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_100026A20();
    v13 = v12;

    v14 = sub_100025380(v11, v13, &v37);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing editor with poster environment: %s", v8, 0xCu);
    sub_10000B7E0(v9);
  }

  v15 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor);
  *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor) = a1;

  v16 = a1;
  v17 = [a2 sourceTimeFontConfiguration];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100020A34();
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = PRPosterRoleIncomingCall;
    v21 = v19;
    v22 = [v18 effectiveFontForRole:v20];
    sub_10000B57C(v22);
  }

  sub_100017400(a2);
  sub_100017F14();
  if (*(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_isIPad) == 1)
  {
    v23 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView);
    if (v23)
    {
      v24 = v23;
      v25 = [a2 deviceOrientation];
      *&v24[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v25;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v25;
      v41 = sub_10002261C;
      v42 = v27;
      v37 = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10001F874;
      v40 = &unk_10003A448;
      v28 = _Block_copy(&v37);
      v29 = v24;

      [v26 animateWithDuration:v28 animations:0.2];
      _Block_release(v28);
    }

    v30 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView);
    if (v30)
    {
      v31 = v30;
      v32 = [a2 deviceOrientation];
      *&v31[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v32;
      v33 = objc_opt_self();
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = v32;
      v41 = sub_10002261C;
      v42 = v34;
      v37 = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10001F874;
      v40 = &unk_10003A498;
      v35 = _Block_copy(&v37);
      v36 = v31;

      [v33 animateWithDuration:v35 animations:0.2];
      _Block_release(v35);
    }
  }
}

void sub_100017400(void *a1)
{
  v3 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v87 = &v76 - v5;
  v6 = sub_100026390();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  v8 = __chkstk_darwin(v6);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v76 - v10;
  v80 = sub_1000266A0();
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v80);
  v81 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000262C0();
  v82 = *(v13 - 8);
  v14 = *(v82 + 64);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = [v17 currentEnvironment];
  v19 = [v18 featureFlags];

  LODWORD(v18) = [v19 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v18)
  {
    v20 = [v17 currentEnvironment];
    v21 = [v20 featureFlags];

    LODWORD(v20) = [v21 isFeatureEnabled:7];
    swift_unknownObjectRelease();
    if (v20)
    {
      v22 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_logger;
      swift_unknownObjectRetain();
      v78 = v1;
      v23 = sub_100026680();
      v24 = sub_100026BC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v77 = v22;
        v26 = v25;
        v27 = swift_slowAlloc();
        v90[0] = v27;
        *v26 = 136315138;
        v28 = [a1 description];
        v29 = sub_100026A20();
        v31 = v30;

        v32 = sub_100025380(v29, v31, v90);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "Loading poster configuration from poster environment: %s", v26, 0xCu);
        sub_10000B7E0(v27);

        v22 = v77;
      }

      v33 = [a1 sourceContents];
      v90[0] = 0;
      v34 = [v33 loadUserInfoWithError:v90];
      swift_unknownObjectRelease();
      v35 = v90[0];
      if (v34)
      {
        v36 = sub_1000269A0();
        v37 = v35;

        v38 = v82;
        (*(v82 + 104))(v16, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v13);
        v39 = sub_1000262B0();
        v41 = v40;
        (*(v38 + 8))(v16, v13);
        v88 = v39;
        v89 = v41;
        sub_100026C70();
        if (*(v36 + 16) && (v42 = sub_100024EFC(v90), (v43 & 1) != 0))
        {
          sub_1000223C4(*(v36 + 56) + 32 * v42, v91);
          sub_10002231C(v90);

          if (swift_dynamicCast())
          {
            v44 = v88;
            v45 = v89;
            v46 = v78;
            (*(v79 + 16))(v81, v78 + v22, v80);
            v47 = sub_100026640();
            v48 = *(v47 + 48);
            v49 = *(v47 + 52);
            swift_allocObject();
            v50 = sub_100026620();
            __chkstk_darwin(v50);
            *(&v76 - 4) = v46;
            *(&v76 - 3) = v44;
            *(&v76 - 2) = v45;
            sub_100026630();
            sub_1000221D4(v44, v45);

            return;
          }
        }

        else
        {

          sub_10002231C(v90);
        }

        v51 = v87;
        v52 = sub_100026680();
        v53 = sub_100026BC0();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "No existing posterData found. Creating a new default definition.", v54, 2u);
        }

        sub_100022370();
        swift_allocError();
        swift_willThrow();
      }

      else
      {
        v55 = v90[0];
        sub_1000261D0();

        swift_willThrow();
        v51 = v87;
      }

      swift_errorRetain();
      v56 = sub_100026680();
      v57 = sub_100026BB0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v90[0] = v59;
        *v58 = 136315138;
        swift_getErrorValue();
        v60 = sub_100026D70();
        v62 = sub_100025380(v60, v61, v90);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to load poster configuration: %s, going to a fallback definition!", v58, 0xCu);
        sub_10000B7E0(v59);
      }

      v63 = sub_100026600();
      v64 = *(v63 + 16);
      v65 = v78;
      if (v64)
      {
        v66 = sub_10000F600(v64);
        if ((v66 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v67 = v66;
          if (v66 < *(v63 + 16))
          {
            v68 = sub_100026610();
            v69 = *(v68 - 8);
            (*(v69 + 16))(v51, v63 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67, v68);

            (*(v69 + 56))(v51, 0, 1, v68);
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      v68 = sub_100026610();
      (*(*(v68 - 8) + 56))(v51, 1, 1, v68);
LABEL_25:
      sub_100026610();
      if ((*(*(v68 - 8) + 48))(v51, 1, v68) == 1)
      {
        __break(1u);
      }

      else
      {
        v70 = v83;
        sub_1000262F0();
        v71 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
        swift_beginAccess();
        v73 = v84;
        v72 = v85;
        v74 = v86;
        (*(v85 + 16))(v84, v65 + v71, v86);
        swift_beginAccess();
        (*(v72 + 24))(v65 + v71, v70, v74);
        swift_endAccess();
        sub_10001A438();

        v75 = *(v72 + 8);
        v75(v73, v74);
        v75(v70, v74);
      }

      return;
    }
  }

  sub_10001AA6C(a1);
}

uint64_t sub_100017F14()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10002264C;
  v22 = v2;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10001F17C;
  v20 = &unk_10003A4C0;
  v3 = _Block_copy(&v17);

  v4 = [v1 addObserverForName:NSExtensionHostDidEnterBackgroundNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1000222DC;
  v22 = v5;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10001F17C;
  v20 = &unk_10003A4E8;
  v6 = _Block_copy(&v17);

  v7 = [v1 addObserverForName:NSExtensionHostWillEnterForegroundNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1000222FC;
  v22 = v8;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10001F17C;
  v20 = &unk_10003A510;
  v9 = _Block_copy(&v17);

  v10 = [v1 addObserverForName:NSExtensionHostWillResignActiveNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_100022650;
  v22 = v11;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10001F17C;
  v20 = &unk_10003A538;
  v12 = _Block_copy(&v17);

  v13 = [v1 addObserverForName:NSExtensionHostDidBecomeActiveNotification object:0 queue:0 usingBlock:v12];
  _Block_release(v12);
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100028F20;
  *(v14 + 32) = v4;
  *(v14 + 40) = v7;
  *(v14 + 48) = v10;
  *(v14 + 56) = v13;

  v15 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers);
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers) = v14;
}

id sub_1000183E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100026680();
  v5 = sub_100026B90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = [v3 effectiveFont];
    v9 = [v8 debugDescription];

    v10 = sub_100026A20();
    v12 = v11;

    v13 = sub_100025380(v10, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating editor with font from title label: %s", v6, 0xCu);
    sub_10000B7E0(v7);
  }

  result = sub_100020A34();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = PRPosterRoleIncomingCall;
  v16 = result;
  v17 = [v3 effectiveFontForRole:v15];
  sub_10000B57C(v17);

  result = sub_100020A34();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  sub_1000097A4();

  return [a1 updateActions];
}

uint64_t sub_1000186F4(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_1000262C0();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v6 = sub_100026390();
  v2[43] = v6;
  v7 = *(v6 - 8);
  v2[44] = v7;
  v8 = *(v7 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_100018854, 0, 0);
}

uint64_t sub_100018854()
{
  v75 = v0;
  v1 = v0[38];
  v2 = sub_100026680();
  v3 = sub_100026B90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finalizing editing session", v4, 2u);
  }

  v5 = v0[38];

  v6 = sub_1000261C0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1000261B0();
  sub_100026190();
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
  swift_beginAccess();
  v10 = sub_100026330();
  swift_endAccess();
  v0[34] = v10;
  sub_100003598(&qword_100042040, &qword_100029D90);
  sub_1000220F4();
  v73 = sub_1000261A0();
  v72 = v11;
  v12 = v0[46];
  v13 = v0[43];
  v14 = v0[44];

  v15 = v5;
  v16 = *(v14 + 16);
  v16(v12, v15 + v9, v13);
  sub_100022440(&qword_100042058, &type metadata accessor for MonogramPosterConfiguration);
  v17 = sub_1000261A0();
  v64 = v9;
  v65 = v15;
  v66 = v16;
  v18 = v0[42];
  v68 = v0[41];
  v19 = v0[39];
  v20 = v0[40];
  v21 = v0[37];
  v70 = v17;
  v71 = v22;
  v63 = *(v0[44] + 8);
  v63(v0[46], v0[43]);
  v69 = [objc_msgSend(v21 "environment")];
  swift_unknownObjectRelease();
  sub_100003598(&qword_100042060, &qword_100029D98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028E90;
  v24 = *(v20 + 104);
  v24(v18, enum case for MonogramPosterUserInfoKey.backgroundColorDescription(_:), v19);
  v25 = sub_1000262B0();
  v27 = v26;
  v67 = *(v20 + 8);
  v67(v18, v19);
  v0[30] = v25;
  v0[31] = v27;
  sub_100026C70();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v73;
  *(inited + 80) = v72;
  v24(v68, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v19);
  sub_100022228(v73, v72);
  v28 = sub_1000262B0();
  v30 = v29;
  v67(v68, v19);
  v0[32] = v28;
  v0[33] = v30;
  sub_100026C70();
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v70;
  *(inited + 152) = v71;
  sub_100022228(v70, v71);
  sub_10002123C(inited);
  swift_setDeallocating();
  sub_100003598(&qword_100042068, &qword_100029DA0);
  swift_arrayDestroy();
  isa = sub_100026990().super.isa;

  v0[36] = 0;
  LODWORD(inited) = [v69 storeUserInfo:isa error:v0 + 36];

  v32 = v0[36];
  if (inited)
  {
    v33 = v0[38];
    v34 = v32;
    v35 = v33;
    v36 = sub_100026680();
    v37 = sub_100026B90();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0[45];
      v39 = v0[43];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v74[0] = v41;
      *v40 = 136315138;
      v66(v38, v65 + v64, v39);
      v42 = sub_1000262E0();
      v44 = v43;
      v63(v38, v39);
      v45 = sub_100025380(v42, v44, v74);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Saving poster ocnfiguration: %s", v40, 0xCu);
      sub_10000B7E0(v41);
    }

    sub_1000221D4(v73, v72);
    sub_1000221D4(v70, v71);
  }

  else
  {
    v46 = v32;
    sub_1000261D0();

    swift_willThrow();
    sub_1000221D4(v73, v72);
    sub_1000221D4(v70, v71);

    swift_errorRetain();
    v47 = sub_100026680();
    v48 = sub_100026BB0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v74[0] = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v52 = v0[27];
      v51 = v0[28];
      v53 = v0[29];
      v54 = sub_100026D70();
      v56 = sub_100025380(v54, v55, v74);

      *(v49 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "Error finalizing editing: %s", v49, 0xCu);
      sub_10000B7E0(v50);
    }

    else
    {
    }
  }

  v58 = v0[45];
  v57 = v0[46];
  v60 = v0[41];
  v59 = v0[42];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1000191A4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100019268;

  return sub_1000186F4(v6);
}

uint64_t sub_100019268()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000193C0()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:NSExtensionHostDidEnterBackgroundNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:NSExtensionHostWillEnterForegroundNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:NSExtensionHostWillResignActiveNotification object:0];

  v5 = [v1 defaultCenter];
  [v5 removeObserver:v0 name:NSExtensionHostDidBecomeActiveNotification object:0];

  v6 = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers);
  *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers) = _swiftEmptyArrayStorage;
}

id sub_1000195D0()
{
  v0 = sub_1000261F0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000269E0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = objc_opt_self();
  v5 = [v4 currentEnvironment];
  v6 = [v5 featureFlags];

  LODWORD(v5) = [v6 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (v5 && (v7 = [v4 currentEnvironment], v8 = objc_msgSend(v7, "featureFlags"), v7, LODWORD(v7) = objc_msgSend(v8, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), v7))
  {
    sub_1000269D0();
    sub_1000261E0();
    sub_100026A30();
    sub_10000B82C(0, &qword_100041F88, UIAction_ptr);

    sub_10001BFD4();
    sub_1000269F0();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_100026C20();
    v13 = sub_1000269F0();

    [v12 setAccessibilityLabel:v13];
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000269D0();
    sub_1000261E0();
    v15 = sub_100026A30();
    v17 = v16;
    sub_10000B82C(0, &qword_100041F88, UIAction_ptr);

    sub_10001BFD4();
    sub_1000269F0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v14;
    v19[4] = v15;
    v19[5] = v17;

    v12 = sub_100026C20();
    v13 = sub_1000269F0();

    [v12 setAccessibilityLabel:v13];
  }

  return v12;
}