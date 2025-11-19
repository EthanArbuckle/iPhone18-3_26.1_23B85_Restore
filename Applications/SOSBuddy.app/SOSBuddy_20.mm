unint64_t sub_1001C7BE0()
{
  result = qword_1003650F8;
  if (!qword_1003650F8)
  {
    type metadata accessor for BorderedButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003650F8);
  }

  return result;
}

uint64_t sub_1001C7C38()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001C7CBC()
{
  result = qword_1003653F8;
  if (!qword_1003653F8)
  {
    sub_100008CF0(&qword_1003653F0);
    sub_1001C7D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653F8);
  }

  return result;
}

unint64_t sub_1001C7D48()
{
  result = qword_100365400;
  if (!qword_100365400)
  {
    sub_100008CF0(&qword_100365408);
    sub_1000503F8();
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365400);
  }

  return result;
}

unint64_t sub_1001C7E1C()
{
  result = qword_100365410;
  if (!qword_100365410)
  {
    sub_100008CF0(&qword_100365350);
    sub_1001C7EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365410);
  }

  return result;
}

unint64_t sub_1001C7EA8()
{
  result = qword_100365418;
  if (!qword_100365418)
  {
    sub_100008CF0(&qword_100365340);
    sub_100009274(&qword_100365420, &qword_100365428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365418);
  }

  return result;
}

uint64_t ConnectionAssistantConeRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C86CC(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

void ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, float32x4_t a9, float32x4_t a10)
{
  ConnectionAssistantCone.project(from:camera:)(a2, v122, a9);
  if ((v133 & 1) == 0)
  {
    v97 = a3;
    v98 = a5;
    v18 = v124;
    v19 = v125;
    v20 = v126;
    v21 = v128;
    v22 = v130;
    v23 = v131;
    v24 = v127;
    v25 = v132;
    v26 = *(a1 + 16);
    v27 = vmulq_f32(v26, v26);
    *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v28);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
    v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v30 = vsubq_f32(0, *(a2 + 80));
    v31 = 0;
    v30.f32[2] = 0.0 - COERCE_FLOAT(*(a2 + 88));
    v32 = vmulq_f32(v29, v30);
    v32.f32[0] = fminf(fmaxf(((v32.f32[2] + vaddv_f32(*v32.f32)) + 0.1) / 0.2, 0.0), 1.0);
    v107 = (v32.f32[0] * v32.f32[0]) * ((v32.f32[0] * -2.0) + 3.0);
    v33 = *(a2 + 128);
    v34 = *(a2 + 144);
    v35 = *(a2 + 160);
    v36 = *(a2 + 176);
    v114 = vaddq_f32(v36, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v29.f32[0]), v34, *v29.f32, 1), v35, v29, 2));
    v119 = vaddq_f32(v36, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, a10.f32[0]), v34, *a10.f32, 1), v35, a10, 2));
    v112 = *a2;
    v109 = *(a2 + 8);
    v37 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a2, v109, *(a2 + 16));
    if (v24)
    {
      v38 = -1;
    }

    else
    {
      v38 = 0;
    }

    v39 = vdup_n_s32(v38);
    v91 = v20;
    v92 = v19;
    v93 = v18;
    v104 = vbic_s8(v18, v39);
    v105 = vbic_s8(v20, v39);
    v103 = vbic_s8(v19, v39);
    v135 = v122[0];
    v136 = v122[1];
    v137 = v123;
    if (v25)
    {
      v40 = -1;
    }

    else
    {
      v40 = 0;
    }

    v94 = v23;
    if (v25)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v23;
    }

    v102 = v41;
    v42 = vdup_n_s32(v40);
    if ((*(a1 + 112) & 1) == 0)
    {
      v31 = *(a1 + 80);
    }

    v95 = v22;
    v96 = v21;
    v101 = vbic_s8(v21, v42);
    v43 = vbic_s8(v22, v42);
    if (*(a1 + 112))
    {
      v44 = -1;
    }

    else
    {
      v44 = 0;
    }

    v45 = v119;
    v45.i32[3] = 0;
    v120 = v45;
    v46 = v114;
    v46.i32[3] = 0;
    v115 = v46;
    v47 = *(a2 + 32);
    v99 = *(a1 + 48);
    v100 = vbicq_s8(*(a1 + 96), vdupq_n_s32(v44));
    v48 = v107 * *(a1 + 64);
    v49 = v135;
    v50 = *(&v136 + 1);
    v51 = v137;
    v52 = [swift_unknownObjectRetain() contents];
    v53 = a7;
    *v52 = v120;
    *(v52 + 1) = v115;
    v121 = v37;
    v52[8] = v37;
    *(v52 + 9) = v47;
    *(v52 + 3) = v99;
    v116 = v48;
    v52[16] = v48;
    *(v52 + 9) = v104;
    *(v52 + 10) = v103;
    *(v52 + 11) = v105;
    *(v52 + 12) = v49;
    *(v52 + 13) = v50;
    *(v52 + 28) = v51;
    *(v52 + 30) = v31;
    *(v52 + 16) = v101;
    *(v52 + 17) = v43;
    v52[36] = v102;
    *(v52 + 10) = v100;
    v54 = sub_100254A80(5);
    if (v54)
    {
      v55 = v54;
      v56 = String._bridgeToObjectiveC()();
      [a4 setLabel:v56];

      [a4 setRenderPipelineState:v55];
      v60 = ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter();
      v61 = *v58.i8;
      if ((v24 & 1) == 0)
      {
        *v58.i8 = v92;
        *v57.f32 = v93;
        *v59.f32 = v91;
        v60 = vminnm_f32(v60, COERCE_FLOAT32X2_T(ConnectionAssistantRendererProjection.Triangle.boundingBox.getter(v57, v58, v59)));
        v61 = vmaxnm_f32(v61, v62);
      }

      if ((v25 & 1) == 0)
      {
        v139 = v129;
        v138 = v96;
        v140 = v95;
        v141 = v94;
        v60 = vminnm_f32(v60, ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter());
        v61 = vmaxnm_f32(v61, v63);
      }

      swift_beginAccess();
      *v64.i32 = (v37 * *(a6 + 188)) * 2.8;
      v65 = vdup_lane_s32(v64, 0);
      v66 = vsub_f32(v60, v65);
      v67 = vadd_f32(v61, v65);
      v68 = [v97 width];
      v69 = [v97 height];
      v70 = 1.0;
      v71.i32[0] = 1.0;
      if (v112)
      {
        v71.i32[0] = 1.0;
        if (v109)
        {
          v72 = v112 / v109;
          v70 = fminf(v72, 1.0);
          v71.f32[0] = fmaxf(v72, 1.0);
        }
      }

      v71.f32[1] = 1.0 / v70;
      v134[0] = sub_1000FFA74(v68, v69, v66, v67, v71);
      v134[1] = v73;
      v134[2] = v74;
      v134[3] = v75;
      [a4 setScissorRect:v134];
      [a4 setVertexBuffer:*(v98 + 24) offset:0 atIndex:0];
      [a4 setVertexBuffer:*(v98 + 32) offset:0 atIndex:1];
      [a4 setFragmentBuffer:a7 offset:0 atIndex:0];
      [a4 drawPrimitives:4 vertexStart:0 vertexCount:4];
      swift_unknownObjectRelease();
    }

    sub_1001C8800(a1, v134);
    v76 = a8[9];
    if (v76)
    {
      v78 = a8[10];
      v77 = a8[11];
      v79 = a8[7];
      sub_1000231A8(a8[8], a8[9]);
      v80 = [swift_unknownObjectRetain() contents];
      v81 = v79;
      *v80 = v116;
      v82 = 1.0;
      LODWORD(v83) = 1.0;
      if (v112)
      {
        LODWORD(v83) = 1.0;
        if (v109)
        {
          v84 = v112 / v109;
          v82 = fminf(v84, 1.0);
          *&v83 = fmaxf(v84, 1.0);
        }
      }

      *(&v83 + 1) = 1.0 / v82;
      v113 = *(a2 + 336);
      v117 = *(a2 + 320);
      v110 = *(a2 + 352);
      v106 = v83;
      v108 = *(a2 + 368);
      v85 = a8[6];
      v86 = [swift_unknownObjectRetain() contents];
      v87 = v85;
      *v86 = a9;
      *(v86 + 2) = v106;
      v86[6] = v121;
      *(v86 + 2) = v117;
      *(v86 + 3) = v113;
      *(v86 + 4) = v110;
      *(v86 + 5) = v108;
      v88 = sub_100254A80(0);
      if (v88)
      {
        v89 = v88;
        v90 = String._bridgeToObjectiveC()();
        [a4 setLabel:v90];

        [a4 setRenderPipelineState:v89];
        [a4 setVertexBuffer:v85 offset:0 atIndex:0];
        [a4 setVertexBuffer:v76 offset:0 atIndex:1];
        [a4 setVertexBuffer:v77 offset:0 atIndex:2];
        [a4 setFragmentBuffer:v79 offset:0 atIndex:0];
        [a4 drawPrimitives:3 vertexStart:0 vertexCount:v78];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001C86CC(void *a1, uint64_t a2, uint64_t a3)
{

  v7 = [swift_unknownObjectRetain() newBufferWithLength:176 options:1];
  swift_unknownObjectRelease();
  if (v7)
  {
    type metadata accessor for ConnectionAssistantStarsRenderer();
    swift_allocObject();
    ConnectionAssistantStarsRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
    if (v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  return a2;
}

double sub_1001C8800@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18 = *a1;
  v5 = vmulq_f32(v4, v4);
  v5.f32[0] = v5.f32[2] + vaddv_f32(*v5.f32);
  v6 = vrsqrte_f32(v5.u32[0]);
  v7 = vmul_f32(v6, vrsqrts_f32(v5.u32[0], vmul_f32(v6, v6)));
  v17 = vmulq_n_f32(v4, vmul_f32(v7, vrsqrts_f32(v5.u32[0], vmul_f32(v7, v7))).f32[0]);
  v8 = COERCE_UNSIGNED_INT(atan2f(a1[2].f32[0], sqrtf(v5.f32[0])));
  __asm { FMOV            V1.4S, #1.0 }

  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15 = vmlaq_f32(a1[3], v14, vsubq_f32(_Q1, a1[3]));
  *a2 = 100;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v8 | 0x3B03126F00000000;
  *(a2 + 56) = xmmword_10028E100;
  *(a2 + 72) = 0;
  *(a2 + 80) = v15;
  *(a2 + 96) = 0;
  result = 2.00000047;
  *(a2 + 100) = xmmword_10028E110;
  return result;
}

uint64_t sub_1001C88E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C8928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1001C8988(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  sub_1000040A8(&qword_100365430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  *(inited + 64) = sub_1000040A8(&qword_100365438);
  *(inited + 40) = a1;
  v5 = UIFontDescriptorTraitsAttribute;

  sub_100256190(inited);
  swift_setDeallocating();
  sub_1001C8AF4(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_1001C8B5C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v3 fontDescriptorByAddingAttributes:isa];

  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v8;
}

uint64_t sub_1001C8AF4(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10036A0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001C8B5C()
{
  result = qword_1003549C0;
  if (!qword_1003549C0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003549C0);
  }

  return result;
}

id sub_1001C8BC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = type metadata accessor for ShadowView();
  v15.receiver = v3;
  v15.super_class = v8;
  v9 = objc_msgSendSuper2(&v15, "actionForLayer:forKey:", a1, v7);

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (a2 == 0x6150776F64616873 && a3 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x6F43776F64616873 && a3 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x664F776F64616873 && a3 == 0xEC00000074657366 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x704F776F64616873 && a3 == 0xED00007974696361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a2 == 0x6152776F64616873 && a3 == 0xEC00000073756964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = String._bridgeToObjectiveC()();
        v14.receiver = v3;
        v14.super_class = v8;
        v11 = objc_msgSendSuper2(&v14, "actionForLayer:forKey:", a1, v10);

        v12 = sub_10024DBEC(a2, a3, a1, v11);
        swift_unknownObjectRelease();
        if (v12)
        {
          swift_unknownObjectRelease();
          return v12;
        }
      }
    }
  }

  return v9;
}

id sub_1001C8FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1001C9010(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_1001C908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a2;
  v110 = a1;
  v6 = sub_1000040A8(&qword_100365468);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v107 = &v82 - v8;
  v9 = sub_1000040A8(&qword_100365470);
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v95 = (&v82 - v10);
  v11 = sub_1000040A8(&qword_100365478);
  __chkstk_darwin(v11 - 8);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v82 - v14;
  v103 = type metadata accessor for OpacityTransition();
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100357818);
  v101 = *(v16 - 8);
  v102 = v16;
  __chkstk_darwin(v16);
  v98 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v82 - v19;
  v20 = type metadata accessor for Font.Leading();
  v96 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000040A8(&qword_100365480);
  __chkstk_darwin(v23 - 8);
  v109 = &v82 - v24;
  if (a3)
  {
    v25 = a3[9];
    v26 = a3[10];
    sub_1000088DC(a3 + 6, v25);
    (*(v26 + 8))(v148, v25, v26);
    if (v110)
    {
      v27 = *(v110 + 48);
      if (v27)
      {
        v28 = *(v27 + 24);
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = *(v27 + 16);
          if ((v29 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_17;
          }

LABEL_9:
          v83._countAndFlagsBits = v29;
          v83._object = v28;
          v88 = v7;
          v89 = v6;
          v90 = a4;
          v30 = v28;

          sub_1001DE260();
          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = 0;
          }

          v82 = v33;
          v34 = 0xE000000000000000;
          if (v32)
          {
            v34 = v32;
          }

          v85 = v34;
          v112[0] = v29;
          v112[1] = v30;
          sub_100031770();

          v35 = Text.init<A>(_:)();
          v37 = v36;
          v39 = v38;
          static Font.body.getter();
          static Font.Weight.medium.getter();
          Font.weight(_:)();

          v40 = v96;
          (*(v96 + 104))(v22, enum case for Font.Leading.tight(_:), v20);
          Font.leading(_:)();

          (*(v40 + 8))(v22, v20);
          v41 = Text.font(_:)();
          v43 = v42;
          v45 = v44;

          sub_1000317C4(v35, v37, v39 & 1);

          static Color.white.getter();
          v46 = Text.foregroundColor(_:)();
          v93 = v47;
          v94 = v46;
          LOBYTE(v37) = v48;
          v96 = v49;

          sub_1000317C4(v41, v43, v45 & 1);

          KeyPath = swift_getKeyPath();
          v92 = swift_getKeyPath();
          v91 = v37 & 1;
          LOBYTE(v112[0]) = v37 & 1;
          LOBYTE(v111[0]) = 0;
          v87 = swift_getKeyPath();
          v86 = static Edge.Set.top.getter();
          EdgeInsets.init(_all:)();
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v145 = 0;
          static Alignment.leading.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          *&v147[55] = v152;
          *&v147[71] = v153;
          *&v147[87] = v154;
          *&v147[103] = v155;
          *&v147[7] = v149;
          *&v147[23] = v150;
          *&v147[39] = v151;
          v58 = v97;
          OpacityTransition.init()();
          static Animation.easeInOut.getter();
          v59 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition);
          v60 = v99;
          v61 = v103;
          Transition.animation(_:)();

          (*(v100 + 8))(v58, v61);
          v63 = v101;
          v62 = v102;
          (*(v101 + 16))(v98, v60, v102);
          v112[0] = v61;
          v112[1] = v59;
          swift_getOpaqueTypeConformance2();
          v64 = AnyTransition.init<A>(_:)();
          (*(v63 + 8))(v60, v62);
          strcpy(v112, "GuidanceText-");
          HIWORD(v112[1]) = -4864;
          String.append(_:)(v83);

          v65 = v112[0];
          v103 = v112[1];
          v66 = *(v110 + 48);

          if (v66)
          {
            v67 = *(v66 + 72);
            if (v67)
            {

LABEL_19:
              v69 = static Alignment.top.getter();
              v70 = v95;
              *v95 = v69;
              *(v70 + 8) = v71;
              v72 = sub_1000040A8(&qword_100365498);
              sub_1001C9D64(v67, v148, v82, v85, v70 + *(v72 + 44));

              v73 = v108;
              sub_10000CF4C(v70, v108, &qword_100365470);
              v74 = 0;
LABEL_21:
              (*(v104 + 56))(v73, v74, 1, v105);
              v75 = v106;
              sub_100006C20(v73, v106, &qword_100365478);
              v111[0] = v94;
              v111[1] = v93;
              LOBYTE(v111[2]) = v91;
              *(&v111[2] + 1) = *v143;
              HIDWORD(v111[2]) = *&v143[3];
              v76 = KeyPath;
              v111[3] = v96;
              v111[4] = KeyPath;
              v111[5] = 3;
              LOBYTE(v111[6]) = 0;
              *(&v111[6] + 1) = *v142;
              HIDWORD(v111[6]) = *&v142[3];
              v111[7] = v92;
              LOBYTE(v111[8]) = 0;
              HIDWORD(v111[8]) = *&v144[3];
              *(&v111[8] + 1) = *v144;
              v77 = v87;
              v111[9] = v87;
              v111[10] = 0x3FE0000000000000;
              v78 = v86;
              LOBYTE(v111[11]) = v86;
              *(&v111[11] + 1) = *v146;
              HIDWORD(v111[11]) = *&v146[3];
              v111[12] = v51;
              v111[13] = v53;
              v111[14] = v55;
              v111[15] = v57;
              LOBYTE(v111[16]) = 0;
              *(&v111[22] + 1) = *&v147[48];
              *(&v111[20] + 1) = *&v147[32];
              *(&v111[18] + 1) = *&v147[16];
              *(&v111[16] + 1) = *v147;
              v111[30] = *&v147[111];
              v111[31] = v64;
              *(&v111[28] + 1) = *&v147[96];
              *(&v111[26] + 1) = *&v147[80];
              *(&v111[24] + 1) = *&v147[64];
              v102 = v65;
              v111[32] = v65;
              v111[33] = v103;
              v79 = v107;
              memcpy(v107, v111, 0x110uLL);
              v80 = sub_1000040A8(&qword_100365488);
              sub_100006C20(v75, v79 + *(v80 + 48), &qword_100365478);
              sub_100006C20(v111, v112, &qword_100365490);
              sub_100008FA0(v108, &qword_100365478);
              sub_100008FA0(v75, &qword_100365478);
              v112[0] = v94;
              v112[1] = v93;
              v113 = v91;
              *v114 = *v143;
              *&v114[3] = *&v143[3];
              v115 = v96;
              v116 = v76;
              v117 = 3;
              v118 = 0;
              *v119 = *v142;
              *&v119[3] = *&v142[3];
              v120 = v92;
              v121 = 0;
              *&v122[3] = *&v144[3];
              *v122 = *v144;
              v123 = v77;
              v124 = 0x3FE0000000000000;
              v125 = v78;
              *v126 = *v146;
              *&v126[3] = *&v146[3];
              v127 = v51;
              v128 = v53;
              v129 = v55;
              v130 = v57;
              v131 = 0;
              v135 = *&v147[48];
              v134 = *&v147[32];
              v133 = *&v147[16];
              v132 = *v147;
              *&v138[15] = *&v147[111];
              *v138 = *&v147[96];
              v137 = *&v147[80];
              v136 = *&v147[64];
              v139 = v64;
              v140 = v102;
              v141 = v103;
              sub_100008FA0(v112, &qword_100365490);
              v68 = v109;
              sub_10000CF4C(v79, v109, &qword_100365468);
              (*(v88 + 56))(v68, 0, 1, v89);
              a4 = v90;
              goto LABEL_22;
            }

            v67 = sub_10020327C();

            if (v67)
            {
              goto LABEL_19;
            }
          }

          v74 = 1;
          v73 = v108;
          goto LABEL_21;
        }

        if ((v28 & 0xF00000000000000) != 0)
        {
          v29 = *(v27 + 16);
          goto LABEL_9;
        }
      }

LABEL_17:
      v68 = v109;
      (*(v7 + 56))(v109, 1, 1, v6);
LABEL_22:
      sub_10000CF4C(v68, a4, &qword_100365480);
      return sub_100008964(v148);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001CADA4(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for GuidanceMessagesModel();
  sub_1001CADA4(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001C9D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v80._countAndFlagsBits = a3;
  v80._object = a4;
  v77 = a5;
  v76 = type metadata accessor for OpacityTransition();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000040A8(&qword_100357818);
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v70 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v71 = &v63[-v11];
  v79 = type metadata accessor for Font.Leading();
  v12 = *(v79 - 8);
  __chkstk_darwin(v79);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000040A8(&qword_1003654A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63[-v17];
  v19 = sub_1000040A8(&qword_1003654A8);
  __chkstk_darwin(v19 - 8);
  v81 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v82 = &v63[-v22];
  if (*(a1 + 16) < 2uLL)
  {
    (*(v16 + 56))(v82, 1, 1, v15);
  }

  else
  {
    v83[0] = a1;
    KeyPath = swift_getKeyPath();
    sub_1000089B0(a2, &v84);
    v23 = swift_allocObject();
    sub_100008A18(&v84._countAndFlagsBits, v23 + 16);

    v69 = sub_1000040A8(&qword_100355E30);
    sub_1000040A8(&qword_1003654B8);
    sub_100009274(&qword_100357870, &qword_100355E30);
    sub_1001CABD0();
    ForEach<>.init(_:id:content:)();
    v24 = v82;
    (*(v16 + 32))(v82, v18, v15);
    (*(v16 + 56))(v24, 0, 1, v15);
  }

  v84 = v80;
  sub_100031770();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v30 = v79;
  (*(v12 + 104))(v14, enum case for Font.Leading.tight(_:), v79);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v30);
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v30) = v34;

  sub_1000317C4(v25, v27, v29 & 1);

  v35 = [objc_opt_self() secondaryLabelColor];
  Color.init(_:)();
  KeyPath = Text.foregroundColor(_:)();
  v79 = v36;
  v69 = v37;
  LOBYTE(v25) = v38;

  sub_1000317C4(v31, v33, v30 & 1);

  v39 = swift_getKeyPath();
  v65 = v39;
  v68 = swift_getKeyPath();
  LOBYTE(v84._countAndFlagsBits) = v25 & 1;
  LOBYTE(v33) = v25 & 1;
  v64 = v25 & 1;
  LOBYTE(v83[0]) = 0;
  v67 = swift_getKeyPath();
  v66 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v117 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v119[3] + 7) = *(&v119[10] + 8);
  *(&v119[4] + 7) = *(&v119[11] + 8);
  *(&v119[5] + 7) = *(&v119[12] + 8);
  *(&v119[6] + 7) = *(&v119[13] + 8);
  *(v119 + 7) = *(&v119[7] + 8);
  *(&v119[1] + 7) = *(&v119[8] + 8);
  *(&v119[2] + 7) = *(&v119[9] + 8);
  v48 = v72;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v49 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v50 = v71;
  v51 = v76;
  Transition.animation(_:)();

  (*(v73 + 8))(v48, v51);
  v53 = v74;
  v52 = v75;
  (*(v74 + 16))(v70, v50, v75);
  v84._countAndFlagsBits = v51;
  v84._object = v49;
  swift_getOpaqueTypeConformance2();
  v76 = AnyTransition.init<A>(_:)();
  (*(v53 + 8))(v50, v52);
  v84._countAndFlagsBits = 0xD000000000000010;
  v84._object = 0x8000000100298BF0;
  String.append(_:)(v80);
  v80._countAndFlagsBits = v84._object;
  v80._object = v84._countAndFlagsBits;
  v54 = v81;
  sub_100006C20(v82, v81, &qword_1003654A8);
  v55 = v77;
  sub_100006C20(v54, v77, &qword_1003654A8);
  v56 = *(sub_1000040A8(&qword_1003654B0) + 48);
  v57 = v69;
  v83[0] = KeyPath;
  v83[1] = v69;
  LOBYTE(v83[2]) = v33;
  *(&v83[2] + 1) = *v115;
  HIDWORD(v83[2]) = *&v115[3];
  v83[3] = v79;
  v83[4] = v39;
  v83[5] = 3;
  LOBYTE(v83[6]) = 0;
  *(&v83[6] + 1) = *v114;
  HIDWORD(v83[6]) = *&v114[3];
  v59 = v67;
  v58 = v68;
  v83[7] = v68;
  LOBYTE(v83[8]) = 0;
  HIDWORD(v83[8]) = *&v116[3];
  *(&v83[8] + 1) = *v116;
  v83[9] = v67;
  v83[10] = 0x3FE0000000000000;
  LOBYTE(v52) = v66;
  LOBYTE(v83[11]) = v66;
  HIDWORD(v83[11]) = *&v118[3];
  *(&v83[11] + 1) = *v118;
  v83[12] = v41;
  v83[13] = v43;
  v83[14] = v45;
  v83[15] = v47;
  LOBYTE(v83[16]) = 0;
  *(&v83[22] + 1) = v119[3];
  *(&v83[20] + 1) = v119[2];
  *(&v83[18] + 1) = v119[1];
  *(&v83[16] + 1) = v119[0];
  v83[30] = *(&v119[6] + 15);
  *(&v83[28] + 1) = v119[6];
  *(&v83[26] + 1) = v119[5];
  *(&v83[24] + 1) = v119[4];
  v60 = v76;
  v61 = v80;
  v83[31] = v76;
  v83[32] = v80._object;
  v83[33] = v80._countAndFlagsBits;
  memcpy((v55 + v56), v83, 0x110uLL);
  sub_100006C20(v83, &v84, &qword_100365490);
  sub_100008FA0(v82, &qword_1003654A8);
  v84._countAndFlagsBits = KeyPath;
  v84._object = v57;
  v85 = v64;
  *v86 = *v115;
  *&v86[3] = *&v115[3];
  v87 = v79;
  v88 = v65;
  v89 = 3;
  v90 = 0;
  *v91 = *v114;
  *&v91[3] = *&v114[3];
  v92 = v58;
  v93 = 0;
  *&v94[3] = *&v116[3];
  *v94 = *v116;
  v95 = v59;
  v96 = 0x3FE0000000000000;
  v97 = v52;
  *&v98[3] = *&v118[3];
  *v98 = *v118;
  v99 = v41;
  v100 = v43;
  v101 = v45;
  v102 = v47;
  v103 = 0;
  v107 = v119[3];
  v106 = v119[2];
  v105 = v119[1];
  v104 = v119[0];
  *&v110[15] = *(&v119[6] + 15);
  *v110 = v119[6];
  v109 = v119[5];
  v108 = v119[4];
  v111 = v60;
  object = v61._object;
  countAndFlagsBits = v61._countAndFlagsBits;
  sub_100008FA0(&v84, &qword_100365490);
  return sub_100008FA0(v81, &qword_1003654A8);
}

uint64_t sub_1001CA7D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v37[0] = v7;
  v37[1] = v8;
  sub_100031770();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v35[0] = v14;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1000317C4(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  LOBYTE(v37[0]) = v19 & 1;
  LOBYTE(v36[0]) = 0;
  v24 = swift_getKeyPath();
  v25 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v38 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v39[6] + 7) = *&v39[21];
  *(&v39[8] + 7) = *&v39[23];
  *(&v39[10] + 7) = *&v39[25];
  *(&v39[12] + 7) = v40;
  *(v39 + 7) = *&v39[15];
  *(&v39[2] + 7) = *&v39[17];
  *(&v39[4] + 7) = *&v39[19];
  v36[0] = v15;
  v36[1] = v17;
  LOBYTE(v36[2]) = v19 & 1;
  v36[3] = v21;
  v36[4] = KeyPath;
  v36[5] = 3;
  LOBYTE(v36[6]) = 0;
  v36[7] = v23;
  LOBYTE(v36[8]) = 0;
  v36[9] = v24;
  v36[10] = 0x3FE0000000000000;
  LOBYTE(v36[11]) = v25;
  v36[12] = v27;
  v36[13] = v29;
  v36[14] = v31;
  v36[15] = v33;
  LOBYTE(v36[16]) = 0;
  *(&v36[24] + 1) = *&v39[8];
  *(&v36[26] + 1) = *&v39[10];
  *(&v36[28] + 1) = *&v39[12];
  *(&v36[16] + 1) = *v39;
  *(&v36[18] + 1) = *&v39[2];
  *(&v36[20] + 1) = *&v39[4];
  *(&v36[22] + 1) = *&v39[6];
  v36[30] = *(&v40 + 1);
  v36[31] = 0;
  LOBYTE(v36[32]) = 0;
  sub_1000040A8(&qword_1003654D0);
  sub_1001CAC8C();
  View.accessibilityHidden(_:)();
  memcpy(v37, v36, 0x101uLL);
  return sub_100008FA0(v37, &qword_1003654D0);
}

uint64_t sub_1001CAB90()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1001CABD0()
{
  result = qword_1003654C0;
  if (!qword_1003654C0)
  {
    sub_100008CF0(&qword_1003654B8);
    sub_1001CAC8C();
    sub_1001CADA4(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654C0);
  }

  return result;
}

unint64_t sub_1001CAC8C()
{
  result = qword_1003654C8;
  if (!qword_1003654C8)
  {
    sub_100008CF0(&qword_1003654D0);
    sub_1001CAD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654C8);
  }

  return result;
}

unint64_t sub_1001CAD18()
{
  result = qword_1003654D8;
  if (!qword_1003654D8)
  {
    sub_100008CF0(&qword_1003654E0);
    sub_10015A3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654D8);
  }

  return result;
}

uint64_t sub_1001CADA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001CADF0()
{
  result = qword_1003654E8;
  if (!qword_1003654E8)
  {
    sub_100008CF0(&qword_100365480);
    sub_100009274(&unk_1003654F0, &qword_100365468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003654E8);
  }

  return result;
}

unint64_t sub_1001CAEA0()
{
  v1 = *v0;
  v2 = 0x697261657070612ELL;
  v3 = 0x657070617369642ELL;
  if (v1 != 4)
  {
    v3 = 0x657070617369642ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 1)
  {
    v2 = 0x657261657070612ELL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001CAF7C(void *a1)
{
  _StringGuts.grow(_:)(55);
  v2._countAndFlagsBits = 0x746E657365727028;
  v2._object = 0xEE00203A656C6261;
  String.append(_:)(v2);
  v3 = a1;
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3A6567617473202CLL;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001002A3140;
  v10._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v10);
  sub_1000040A8(&unk_1003655D0);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

void sub_1001CB10C(void *a1, __int16 a2)
{
  v3 = v2 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable;
  v4 = *(v2 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable);
  *v3 = a1;
  *(v3 + 8) = a2;
  if (v4)
  {
    if (a1)
    {

      _objc_release_x2();
    }

    else
    {
      v6 = v4;
      PassthroughSubject.send(_:)();
    }
  }

  else if (a1)
  {
    v5 = a1;
    PassthroughSubject.send(_:)();
  }
}

void (*sub_1001CB1C4(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = v1 + v2;
  v4 = *v3;
  LOWORD(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  v5 = v4;
  return sub_1001CB228;
}

void sub_1001CB228(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = v2;
    sub_1001CB10C(v2, v3);
LABEL_12:

    return;
  }

  v4 = *(a1 + 16) + *(a1 + 24);
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;
  if (!v5)
  {
    if (!v2)
    {
      return;
    }

    *(a1 + 10) = 1;
    v6 = v2;
    goto LABEL_11;
  }

  if (!v2)
  {
    *(a1 + 10) = 0;
    v6 = v5;
LABEL_11:
    PassthroughSubject.send(_:)();
    goto LABEL_12;
  }

  _objc_release_x1();
}

char *sub_1001CB32C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_bannerTapped;
  sub_1000040A8(&unk_100365630);
  swift_allocObject();
  *&v2[v6] = PassthroughSubject.init()();
  v7 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_bannerDismissedByUser;
  swift_allocObject();
  *&v2[v7] = PassthroughSubject.init()();
  v8 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_anyBannerPresentedChanged;
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  *&v2[v8] = PassthroughSubject.init()();
  v9 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_preferredBannerSizeWillChange;
  sub_1000040A8(&qword_100365640);
  swift_allocObject();
  *&v2[v9] = PassthroughSubject.init()();
  v10 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent_preferredBannerSizeDidChange;
  swift_allocObject();
  *&v2[v10] = PassthroughSubject.init()();
  v11 = &unk_100365000;
  v12 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource;
  *&v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource] = 0;
  *&v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__contentProducer + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  *v13 = 0;
  *(v13 + 4) = 0;
  v14 = &v2[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
  *v14 = a1;
  v14[1] = a2;

  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v15];

  v17 = *&v3[v12];
  *&v3[v12] = v16;

  v37.receiver = v3;
  v37.super_class = type metadata accessor for BannerAgent();
  v18 = objc_msgSendSuper2(&v37, "init");
  v19 = qword_100353A10;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381C80);

  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v35 = a1;
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v25 = 136446466;
    v26 = v22;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10017C9E8(v28, v30, &v36);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = sub_10017C9E8(v35, a2, &v36);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] init for '%s'", v25, 0x16u);
    swift_arrayDestroy();
    v11 = &unk_100365000;
  }

  else
  {
  }

  v33 = *&v22[v11[166]];
  if (v33)
  {
    [v33 setDelegate:v22];
  }

  return v22;
}

id sub_1001CB6F8()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = v2;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10017C9E8(v8, v10, &v18);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = &v6[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
    v13 = *&v6[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
    v14 = *(v12 + 1);

    v15 = sub_10017C9E8(v13, v14, &v18);

    *(v5 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit for '%s'", v5, 0x16u);
    swift_arrayDestroy();
  }

  v16 = type metadata accessor for BannerAgent();
  v19.receiver = v2;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, "dealloc");
}

void sub_1001CB9D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable);
    if (v7)
    {
      if (*(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8) >= 3u)
      {
        v8 = v7;
        v10 = sub_1001CB1C4(v13);
        if (*v9)
        {
          *(v9 + 9) = 1;
        }

        v10(v13, 0);
      }
    }

    else
    {
      v11 = sub_1001CBB74();
      sub_1001CB10C(v11, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1001CBB74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v2 = "Banner.ConnectionAssistant";
    if (qword_100353A28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = v2 - 32;
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v55 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10017C9E8(0xD00000000000001ALL, v7 | 0x8000000000000000, &v55);
    _os_log_impl(&_mh_execute_header, v9, v10, "_presentBanner for '%{public}s'", v11, 0xCu);
    sub_100008964(v12);
  }

  v13 = *&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource];
  if (!v13)
  {
    v36 = v1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_10017C9E8(*&v36[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId], *&v36[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId + 8], &v55);
      _os_log_impl(&_mh_execute_header, v37, v38, "_presentBanner: _bannerSource for '%{public}s' has expired", v39, 0xCu);
      sub_100008964(v40);
    }

    goto LABEL_16;
  }

  v14 = &v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__contentProducer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v37 = v13;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_10017C9E8(0xD00000000000001ALL, v7 | 0x8000000000000000, &v55);
      _os_log_impl(&_mh_execute_header, v41, v42, "contentProducer for '%{public}s' has expired", v43, 0xCu);
      sub_100008964(v44);
    }

LABEL_16:
    return 0;
  }

  v16 = Strong;
  v17 = *(v14 + 1);
  v18 = *&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId];
  v19 = *&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId + 8];
  v20 = objc_allocWithZone(type metadata accessor for BannerViewController());
  v21 = v13;

  swift_unknownObjectRetain();
  v22 = sub_1001CEEBC(v18, v19, 0xD00000000000001ALL, v7 | 0x8000000000000000, v16, v17, v1, v20);
  sub_1000040A8(&unk_1003655F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v24;
  sub_10001D630(0, &qword_10035CF30);
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  sub_1002557F0(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_100365600);
  v25 = v22;
  v26 = v22;
  sub_1000040A8(&unk_10035CF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v55 = 0;
  LODWORD(v19) = [v21 postPresentable:v26 options:1 userInfo:isa error:&v55];

  v28 = v55;
  if (!v19)
  {
    v45 = v55;
    v46 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v49 = 136446210;
      v54[1] = v46;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v51 = String.init<A>(describing:)();
      v53 = sub_10017C9E8(v51, v52, &v55);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "_presentBanner failed: %{public}s", v49, 0xCu);
      sub_100008964(v50);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v29 = v26;
  v30 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543362;
    *(v33 + 4) = v29;
    *v34 = v25;
    _os_log_impl(&_mh_execute_header, v31, v32, "_presentBanner: presenting '%{public}@'", v33, 0xCu);
    sub_100008FA0(v34, &qword_100359B00);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v25;
}

void sub_1001CC394(void *a1, int a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_14:
    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381CC8);
    v35 = v4;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v94[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_10017C9E8(*&v35[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId], *&v35[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__requesterId + 8], v94);
      _os_log_impl(&_mh_execute_header, v36, v37, "_revokeBanner: _bannerSource for '%{public}s' has expired", v38, 0xCu);
      sub_100008964(v39);
    }

    goto LABEL_21;
  }

  v13 = *&v4[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource];
  if (!v13)
  {
    if (qword_100353A28 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  v14 = &v4[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  v15 = *&v4[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  if (!v15)
  {
    v40 = qword_100353A28;
    v36 = v13;
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000F53C(v41, qword_100381CC8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "_revokeBanner when no presentable is active, ignoring", v44, 2u);
    }

LABEL_21:
    return;
  }

  LODWORD(v90) = a2;
  v91 = a3;
  v92 = v4;
  v16 = *(v14 + 4);
  v17 = v13;
  v18 = v15;
  v19 = [v18 requestIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = [a1 requestIdentifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v20 == v24 && v22 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000F53C(v29, qword_100381CC8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_41;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "_revokeBanner for non-active presentable, ignoring";
LABEL_40:
      _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_41:

LABEL_53:
      return;
    }
  }

  v46 = sub_1001CB1C4(v94);
  if (*v45)
  {
    *(v45 + 9) = 2;
  }

  v46(v94, 0);
  if (v16 >= 3u)
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000F53C(v67, qword_100381CC8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_41;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "_revokeBanner for presentable for which revoke is already in progress, ignoring";
    goto LABEL_40;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = sub_10000F53C(v47, qword_100381CC8);
  v49 = a1;
  v89 = v48;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v94[0] = v87;
    *v52 = 136446210;
    v53 = v49;
    v88 = v17;
    v54 = v53;
    v55 = v49;
    v56 = [v53 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v18;
    v60 = v59;

    v17 = v88;
    v49 = v55;
    v61 = sub_10017C9E8(v57, v60, v94);
    v18 = v58;

    *(v52 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v50, v51, "_revokeBanner: revoking %{public}s", v52, 0xCu);
    sub_100008964(v87);
  }

  v62 = [v49 requestIdentifier];
  v94[0] = 0;
  v63 = [v17 revokePresentableWithRequestIdentifier:v62 reason:v91 animated:v90 & 1 userInfo:0 error:v94];

  if (v63)
  {
    v64 = v94[0];

    if (*v14 && !v14[8])
    {
      if (qword_1003539A0 != -1)
      {
        swift_once();
      }

      sub_1001CCDE0(v49, qword_100381C50);
    }

    else
    {
      v66 = sub_1001CB1C4(v94);
      if (*v65)
      {
        *(v65 + 8) = 3;
      }

      v66(v94, 0);
    }

    goto LABEL_53;
  }

  v91 = v18;
  v68 = v94[0];
  v69 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v70 = v49;
  swift_errorRetain();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v73 = 136446466;
    v74 = v70;
    v75 = v17;
    v76 = [v74 description];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v70;
    v79 = v78;

    v17 = v75;
    v80 = sub_10017C9E8(v77, v79, v94);

    *(v73 + 4) = v80;
    *(v73 + 12) = 2082;
    v93 = v69;
    swift_errorRetain();
    sub_1000040A8(&qword_100355DA0);
    v81 = String.init<A>(describing:)();
    v83 = sub_10017C9E8(v81, v82, v94);

    *(v73 + 14) = v83;
    v70 = v90;
    _os_log_impl(&_mh_execute_header, v71, v72, "_revokeBanner(%{public}s) failed: %{public}s", v73, 0x16u);
    swift_arrayDestroy();
  }

  v84 = _convertErrorToNSError(_:)();
  v85 = [v84 code];

  if (v85 == 3)
  {
    if (qword_100353998 != -1)
    {
      swift_once();
    }

    sub_1001CCDE0(v70, qword_100381C48);
  }
}

void sub_1001CCDE0(void *a1, void *a2)
{
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchPredicate();
  v8 = *(v71 - 8);
  __chkstk_darwin(v71);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  v13 = a1;
  v14 = a2;
  v15 = v2;
  v70 = v12;
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v69 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v20 = 136446722;
    v21 = [v16 requestIdentifier];
    v63 = v15;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v16;
    v24 = v23;
    v26 = v25;

    v27 = sub_10017C9E8(v24, v26, &v72);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2082;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = sub_10017C9E8(v28, v29, &v72);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2082;
    v15 = v63;
    v31 = *&v63[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    aBlock = *&v63[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    LOWORD(v74) = v31;
    v32 = aBlock;
    sub_1000040A8(&unk_1003655E0);
    v33 = String.init<A>(describing:)();
    v35 = sub_10017C9E8(v33, v34, &v72);

    *(v20 + 24) = v35;
    v16 = v62;
    _os_log_impl(&_mh_execute_header, v17, v18, "didDisappear: for %{public}s, for reason '%{public}s', active presentable == %{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v10 = static OS_dispatch_queue.main.getter();
  v36 = v71;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v71);
  v37 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v36);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v38 = &v15[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  if (*v38)
  {
    v39 = *v38;
    v40 = [v39 requestIdentifier];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = [v16 requestIdentifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if (!v43)
  {

    goto LABEL_18;
  }

  if (v41 == v45 && v43 == v47)
  {

    goto LABEL_15;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v48 & 1) == 0)
  {
LABEL_18:
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Received didDisappear for non-active presentable", v51, 2u);
    }

    goto LABEL_20;
  }

LABEL_15:
  v49 = *v38;
  if (*v38)
  {
    if (v38[9] << 8 == 512)
    {
      *v38 = 0;
      *(v38 + 4) = 0;
      LOBYTE(aBlock) = 0;
      PassthroughSubject.send(_:)();
LABEL_20:

      return;
    }

    v53 = sub_1001CB1C4(&aBlock);
    if (*v52)
    {
      *(v52 + 8) = 5;
    }

    v53(&aBlock, 0);
    v54 = v69;
    v55 = static OS_dispatch_queue.main.getter();
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = sub_1001CEE9C;
    v78 = v56;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1001D2438;
    v76 = &unk_100336D38;
    v57 = _Block_copy(&aBlock);

    v58 = v65;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100071864();
    sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v59 = v67;
    v60 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);

    (*(v54 + 8))(v59, v60);
    (*(v66 + 8))(v58, v68);
  }

  else
  {
    *(v38 + 4) = 0;
  }
}

void sub_1001CD628(void *a1, const char *a2, int a3, const char *a4)
{
  v55 = a3;
  v56 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  v13 = a1;
  v14 = v4;
  v57 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v51 = v15;
    v18 = v17;
    v52 = swift_slowAlloc();
    v58 = v52;
    *v18 = 136446466;
    v19 = [v13 requestIdentifier];
    v50 = v16;
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v13;
    v54 = a4;
    v22 = v21;
    v24 = v23;

    v25 = sub_10017C9E8(v22, v24, &v58);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    v26 = *&v14[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    v59 = *&v14[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    v60 = v26;
    v27 = v59;
    sub_1000040A8(&unk_1003655E0);
    v28 = String.init<A>(describing:)();
    v30 = sub_10017C9E8(v28, v29, &v58);
    v13 = v53;

    *(v18 + 14) = v30;
    a4 = v54;
    v31 = v51;
    _os_log_impl(&_mh_execute_header, v51, v50, v56, v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10001D630(0, &qword_10035BA10);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v33 = *&v14[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
  if (v33)
  {
    v34 = v33;
    v35 = [v34 requestIdentifier];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = [v13 requestIdentifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v38)
  {
    if (v36 == v40 && v38 == v42)
    {

LABEL_16:
      v45 = sub_1001CB1C4(&v59);
      if (*v44)
      {
        *(v44 + 8) = v55;
      }

      v45(&v59, 0);
      return;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, a4, v48, 2u);
  }
}

void sub_1001CDAE8(void *a1, void *a2)
{
  v59 = type metadata accessor for DispatchPredicate();
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = (v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000F53C(v8, qword_100381CC8);
  v10 = a1;
  v11 = a2;
  v12 = v2;
  v58[2] = v9;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v60 = v10;
  v15 = &unk_100365000;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v58[1] = v11;
    v17 = v16;
    v58[0] = swift_slowAlloc();
    v61 = v58[0];
    *v17 = 136446722;
    v18 = [v60 requestIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10017C9E8(v19, v21, &v61);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = sub_10017C9E8(v23, v24, &v61);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2082;
    v15 = &unk_100365000;
    v26 = *&v12[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    v62 = *&v12[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    LOWORD(v63) = v26;
    v27 = v62;
    sub_1000040A8(&unk_1003655E0);
    v28 = String.init<A>(describing:)();
    v30 = sub_10017C9E8(v28, v29, &v61);

    *(v17 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v13, v14, "willDisappear: for %{public}s, for reason '%{public}s', active presentable == %{public}s", v17, 0x20u);
    swift_arrayDestroy();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  v31 = v59;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v59);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v31);
  if (v32)
  {
    v33 = *&v12[v15[168]];
    if (v33)
    {
      v34 = v33;
      v35 = [v34 requestIdentifier];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = [v60 requestIdentifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v38)
    {
      if (v36 == v40 && v38 == v42)
      {

        goto LABEL_15;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v43)
      {
LABEL_15:
        v45 = sub_1001CB1C4(&v62);
        if (*v44)
        {
          *(v44 + 8) = 4;
        }

        v45(&v62, 0);
        if (qword_1003539B0 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Received willDisappear for non-active presentable", v52, 2u);
    }

    return;
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_18:
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
      return;
    }
  }

  v54 = [v60 requestIdentifier];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v62 = v55;
  v63 = v57;
  PassthroughSubject.send(_:)();
}

void sub_1001CE0B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001CE104();
  }
}

void sub_1001CE104()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "executePendingStateUpdate", v9, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v11 = &v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    if (*&v1[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable] && *(v11 + 4) == 5)
    {
      if ((*(v11 + 4) & 0xFF00) == 0x200)
      {
        v12 = v1;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v38 = v16;
          *v15 = 136446210;
          v17 = *(v11 + 4);
          v36 = *v11;
          v37 = v17;
          v18 = v36;
          sub_1000040A8(&unk_1003655E0);
          v19 = String.init<A>(describing:)();
          v21 = sub_10017C9E8(v19, v20, &v38);

          *(v15 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "executePendingStateUpdate request expired, current presentable == %{public}s", v15, 0xCu);
          sub_100008964(v16);
        }

        v22 = *v11;
        *v11 = 0;
        *(v11 + 4) = 0;
        if (v22)
        {
          LOBYTE(v36) = 0;
          PassthroughSubject.send(_:)();
        }
      }

      else
      {
        v33 = sub_1001CBB74();
        sub_1001CB10C(v33, v34);
      }
    }

    else
    {
      v23 = v1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38 = v27;
        *v26 = 136446210;
        v28 = *(v11 + 4);
        v36 = *v11;
        v37 = v28;
        v29 = v36;
        sub_1000040A8(&unk_1003655E0);
        v30 = String.init<A>(describing:)();
        v32 = sub_10017C9E8(v30, v31, &v38);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "executePendingStateUpdate request overridden, current presentable == %{public}s", v26, 0xCu);
        sub_100008964(v27);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001CE55C(void *a1, void *a2)
{
  v56 = type metadata accessor for DispatchPredicate();
  v5 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000F53C(v8, qword_100381CC8);
  v10 = a1;
  v11 = a2;
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v54 = v9;
    v17 = v16;
    v53 = swift_slowAlloc();
    v59 = v53;
    *v17 = 136446722;
    v18 = [v10 requestIdentifier];
    v55 = v12;
    v19 = v10;
    v20 = v18;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, &v59);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = sub_10017C9E8(v25, v26, &v59);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2082;
    v10 = v19;
    v12 = v55;
    v28 = *&v55[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable + 8];
    v57 = *&v55[OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable];
    v58 = v28;
    v29 = v57;
    sub_1000040A8(&unk_1003655E0);
    v30 = String.init<A>(describing:)();
    v32 = sub_10017C9E8(v30, v31, &v59);

    *(v17 + 24) = v32;
    v15 = &selRef_setShouldIgnoreDoNotDisturb_;
    _os_log_impl(&_mh_execute_header, v13, v14, "willNotAppear: for %{public}s, for reason '%{public}s', active presentable == %{public}s", v17, 0x20u);
    swift_arrayDestroy();

    v33 = &unk_100365000;
  }

  else
  {

    v33 = &unk_100365000;
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  v34 = v56;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v56);
  v35 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v34);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v36 = *&v12[v33[168]];
  if (v36)
  {
    v37 = v36;
    v38 = v15;
    v39 = [v37 v15[57]];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v15 = v38;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = [v10 v15[57]];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  if (v42)
  {
    if (v40 == v44 && v42 == v46)
    {

      goto LABEL_16;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
LABEL_16:
      if (qword_1003539B0 == -1)
      {
LABEL_17:
        v48 = qword_100381C60;
        sub_1001CDAE8(v10, qword_100381C60);
        sub_1001CCDE0(v10, v48);
        return;
      }

LABEL_22:
      swift_once();
      goto LABEL_17;
    }
  }

  else
  {
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Received willNotAppear for non-active presentable", v51, 2u);
  }
}

uint64_t sub_1001CEA70(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleTap: %{public}@", v10, 0xCu);
    sub_100008FA0(v11, &qword_100359B00);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v13)
  {
    v15 = [v7 requestIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19[0] = v16;
    v19[1] = v18;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001CEDB8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1001CEDCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001CEE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001CEE64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CEEA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001CEEBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v66 = a7;
  v15 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v15 - 8);
  v62 = &v57 - v16;
  v17 = sub_1000040A8(&qword_1003560A0);
  v64 = *(v17 - 8);
  v65 = v17;
  __chkstk_darwin(v17);
  v63 = &v57 - v18;
  v19 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_contentProducer];
  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_contentProducer + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_delegate];
  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC8SOSBuddy20BannerViewController_tapGesture;
  *&a8[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v22 = &_swiftEmptySetSingleton;
  }

  *&a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_subscriptions] = v22;
  v23 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_requesterId];
  *v23 = a1;
  v23[1] = a2;
  v24 = &a8[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_requestId];
  *v24 = a3;
  v24[1] = a4;
  *(v19 + 1) = a6;
  swift_unknownObjectWeakAssign();
  *(v20 + 1) = &off_100336CB8;
  swift_unknownObjectWeakAssign();
  v25 = type metadata accessor for BannerViewController();
  v68.receiver = a8;
  v68.super_class = v25;

  v26 = objc_msgSendSuper2(&v68, "initWithNibName:bundle:", 0, 0);
  v27 = qword_100353A28;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000F53C(v29, qword_100381CC8);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67[0] = v60;
    *v32 = 136446722;
    v33 = v28;
    v61 = v28;
    v34 = v33;
    v35 = [v33 description];
    v58 = a3;
    v36 = v35;
    v37 = a5;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v31;
    v40 = v39;

    v41 = v38;
    a5 = v37;
    v42 = sub_10017C9E8(v41, v40, v67);

    *(v32 + 4) = v42;
    *(v32 + 12) = 2080;
    v43 = sub_10017C9E8(a1, a2, v67);

    *(v32 + 14) = v43;
    *(v32 + 22) = 2080;
    v28 = v61;
    v44 = sub_10017C9E8(v58, a4, v67);

    *(v32 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v30, v59, "[%{public}s] init for '%s' and %s", v32, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = *(a5 + 48);
  v46 = *(v45 + 32);
  v47 = *(v45 + 40);
  v48 = v28;
  [v48 setPreferredContentSize:{v46, v47}];
  v67[0] = *(a5 + 360);
  sub_10001D630(0, &qword_10035BA10);

  v49 = static OS_dispatch_queue.main.getter();
  v67[3] = v49;
  v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v51 = v62;
  (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  v52 = v63;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v51, &unk_10035CF50);

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v54 = swift_allocObject();
  *(v54 + 16) = sub_1001CF6A0;
  *(v54 + 24) = v53;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);
  v55 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v52, v55);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();

  return v48;
}

void sub_1001CF5A4()
{
  v1 = v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "bannerSourceDidInvalidate", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__bannerSource) = 0;
}

uint64_t sub_1001CF6A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001CF6F4()
{
  result = qword_100365648;
  if (!qword_100365648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365648);
  }

  return result;
}

id sub_1001CF74C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_contentSizeCategoryDidChange;
  sub_1000040A8(&qword_100359008);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_observers] = _swiftEmptyArrayStorage;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AccessibilitySettingsSource();
  v2 = objc_msgSendSuper2(&v18, "init");
  v3 = qword_100353A10;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = v4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  else
  {
  }

  return v4;
}

id sub_1001CF978()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for AccessibilitySettingsSource();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1001CFBB8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AccessibilitySettingsSource::start", v10, 2u);
  }

  v11 = [objc_opt_self() defaultCenter];
  v12 = [objc_opt_self() mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001D0554;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100223018;
  aBlock[3] = &unk_100336E68;
  v14 = _Block_copy(aBlock);

  v15 = [v11 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  v16 = OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

uint64_t sub_1001CFF1C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381ED8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136446210;
    sub_1001D0574();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_10017C9E8(v11, v13, v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "AccessibilitySettingsSource::UIContentSizeCategory changed to %{public}s", v9, 0xCu);
    sub_100008964(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v18 = [objc_opt_self() currentTraitCollection];
      v19 = [v18 preferredContentSizeCategory];
    }

    else
    {
      v19 = UIContentSizeCategoryUnspecified;
    }

    v20[1] = v19;
    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1001D0230()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AccessibilitySettingsSource::stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v1 + v11) = _swiftEmptyArrayStorage;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  result = objc_opt_self();
  if (v13 >= 1)
  {
    v15 = result;
    v19 = v1;

    v16 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      ++v16;
      v18 = [v15 defaultCenter];
      [v18 removeObserver:v17];
      swift_unknownObjectRelease();
    }

    while (v13 != v16);

    v1 = v19;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D051C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D055C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001D0574()
{
  result = qword_100365688;
  if (!qword_100365688)
  {
    type metadata accessor for Notification();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365688);
  }

  return result;
}

void ConnectionAssistantCone.init(baseOffset:height:tilt:towards:radius:color:)(void *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, float a7@<S4>)
{
  v11 = vmulq_f32(a3, a3);
  *&v13 = *&v11.i32[2] + vaddv_f32(*v11.i8);
  v14 = vrsqrte_f32(v13);
  v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
  *v11.i8 = vmul_f32(v15, v15);
  v33 = vmulq_n_f32(a3, vmul_f32(v15, vrsqrts_f32(v13, *v11.i8)).f32[0]);
  *v16.i64 = sub_1001D0E24(v33, a6, v11);
  *v17.i64 = sub_100016564(v33, v16);
  sub_100016890(v17, a5);
  v19 = vmulq_f32(v18, xmmword_100278430);
  v20 = vnegq_f32(v19);
  v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
  v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v20, 8uLL), *v33.f32, 1), vextq_s8(v21, v21, 8uLL), v33.f32[0]);
  v23 = vrev64q_s32(v19);
  v23.i32[0] = v20.i32[1];
  v23.i32[3] = v20.i32[2];
  v24 = vmlaq_laneq_f32(v22, v23, v33, 2);
  v25 = vnegq_f32(v24);
  v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
  v27 = vrev64q_s32(v24);
  v27.i32[0] = v25.i32[1];
  v27.i32[3] = v25.i32[2];
  v34 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v18, 3), v27, v18, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v18.f32, 1), vextq_s8(v26, v26, 8uLL), v18.f32[0]));
  v38 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v35 = 0.0;
  [a1 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];

  v28.f64[0] = v38;
  v29.f64[0] = v36;
  v28.f64[1] = v37;
  v29.f64[1] = v35;
  v30 = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v29);
  *&v29.f64[0] = vmulq_n_f32(v34, a4).u64[0];
  *&v29.f64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a4, v34, 2));
  *a2 = a3;
  *(a2 + 16) = v29;
  *(a2 + 32) = a7;
  *(a2 + 48) = v30;
  *(a2 + 64) = 1065353216;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 1;
}

float ConnectionAssistantCone.Pulse.init(progress:color:)(void *a1, float a2)
{
  v3 = sub_1001D0EFC(a1, a2);

  return v3;
}

double ConnectionAssistantCone.init(baseOffset:topOffset:radius:color:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, float a4@<S2>, __n128 a5@<Q3>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = a5;
  *(a1 + 64) = 1065353216;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  return result;
}

void ConnectionAssistantCone.project(from:camera:)(int32x4_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v6 = v3[1];
  v7 = vaddq_f32(*v3, a3);
  v8 = v7.f32[2];
  v9 = vmulq_f32(v6, v6);
  v37 = v7;
  v38 = 0;
  *&v10 = v9.n128_f32[2] + vaddv_f32(v9.n128_u64[0]);
  v9.n128_u64[0] = vrsqrte_f32(v10);
  v9.n128_u64[0] = vmul_f32(v9.n128_u64[0], vrsqrts_f32(v10, vmul_f32(v9.n128_u64[0], v9.n128_u64[0])));
  v11 = vmulq_n_f32(v6, vmul_f32(v9.n128_u64[0], vrsqrts_f32(v10, vmul_f32(v9.n128_u64[0], v9.n128_u64[0]))).f32[0]);
  v9.n128_u64[0] = vadd_f32(*v7.f32, *v6.f32);
  v35 = v11;
  v36 = *v6.f32;
  LODWORD(v12) = v3[1].i64[1];
  v9.n128_f32[2] = v7.f32[2] + v6.f32[2];
  v9.n128_u32[3] = 0;
  v13 = v3[2].f32[0];
  sub_10025D404(a1, &v39, v9, v11, v13);
  if (v44)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 0uLL;
  }

  else
  {
    v22 = v40;
    v23 = v41;
    v25 = v42;
    v27 = v37;
    v27.i32[3] = 0;
    v28 = v43;
    v38 = v39;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v15 = sub_1001D0B74(a1->i64, v27);
    v16 = v29;
    v17 = v30;
    v32 = v31;
    if (v3[7].i8[0])
    {
      v18 = 0;
      v21 = 0uLL;
      v19 = 1;
      v26 = 0uLL;
    }

    else
    {
      v33 = v3[5].f32[0];
      v34.n128_u64[0] = vadd_f32(*v37.f32, vmul_n_f32(v36, v33));
      v34.n128_f32[2] = v8 + (v12 * v33);
      v34.n128_u32[3] = 0;
      sub_10025D404(a1, v45, v34, v35, v13 * v33);
      v21 = v45[0];
      v26 = v45[1];
      v18 = v46;
      v19 = v47;
    }

    v24 = 0;
    v20 = v32 & 1;
    v14 = v28;
  }

  *a2 = v38;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v14;
  *(a2 + 36) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v20;
  *(a2 + 72) = v21;
  *(a2 + 88) = v26;
  *(a2 + 108) = v19;
  *(a2 + 104) = v18;
  *(a2 + 109) = v24;
}

double ConnectionAssistantCone.Projection.boundingBox.getter()
{
  v4 = ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter();
  if ((*(v0 + 64) & 1) == 0)
  {
    v2.i64[0] = *(v0 + 48);
    v3.i64[0] = *(v0 + 56);
    v1.i64[0] = *(v0 + 40);
    v4 = vminnm_f32(v4, COERCE_FLOAT32X2_T(ConnectionAssistantRendererProjection.Triangle.boundingBox.getter(v1, v2, v3)));
  }

  if ((*(v0 + 108) & 1) == 0)
  {
    v4 = vminnm_f32(v4, ConnectionAssistantRendererProjection.Ellipse.boundingBox.getter());
  }

  return *&v4;
}

__n128 ConnectionAssistantCone.pulse.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ConnectionAssistantCone.pulse.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  *(v1 + 112) = *(a1 + 32);
  return result;
}

__n128 ConnectionAssistantCone.Projection.ellipse.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[0];
  v4 = v1[1].n128_u64[1];
  v5 = v1[2].n128_u32[0];
  *a1 = *v1;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_u32[0] = v5;
  return result;
}

__n128 ConnectionAssistantCone.Projection.pulse.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 108);
  result = *(v1 + 72);
  v5 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 36) = v3;
  return result;
}

uint64_t sub_1001D0B74(uint64_t *a1, float32x4_t a2)
{
  v3 = ConnectionAssistantCamera.projectNormalized(point:)(a2);
  if (v4)
  {
    return 0;
  }

  v5.i32[0] = v3;
  if (*a1 && (v6 = a1[1]) != 0)
  {
    v7 = *a1 / v6;
    if (v7 >= 1.0)
    {
      v5.f32[0] = v7 * *&v3;
    }

    v8 = *(&v3 + 1);
    v9 = fminf(v7, 1.0);
  }

  else
  {
    v8 = *(&v3 + 1);
    v9 = 1.0;
  }

  v5.f32[1] = v8 / v9;
  v12 = v5;
  ConnectionAssistantRendererProjection.Ellipse.tangents(from:)(v5);
  if (v10)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_1001D0C40(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v12[6] = a1[6];
  v13 = a1[7].i8[0];
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = a2[7].i8[0];
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s8SOSBuddy23ConnectionAssistantConeV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14) & 1;
}

uint64_t _s8SOSBuddy23ConnectionAssistantConeV5PulseV23__derived_struct_equalsySbAE_AEtFZ_0(float32_t a1, float32x4_t a2, float32_t a3, float32x4_t a4)
{
  v4 = a2;
  v4.f32[3] = a1;
  v5 = vceqq_f32(a2, a4);
  a4.f32[3] = a3;
  return vminv_u16(vmovn_s32(vceqq_f32(v4, a4))) & vmovn_s32(v5).u16[3] & 1;
}

uint64_t _s8SOSBuddy23ConnectionAssistantConeV23__derived_struct_equalsySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmovn_s32(vceqq_f32(*a1, *a2));
  if ((v2.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v2.i16[1] & v2.i16[2] & 1) == 0)
  {
    return 0;
  }

  v3 = vmovn_s32(vceqq_f32(a1[1], a2[1]));
  if ((v3.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v3.i16[1] & v3.i16[2] & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f32[0] != a2[2].f32[0])
  {
    return 0;
  }

  v4 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
  if ((v4.i16[0] & v4.i16[1] & 1) == 0 || (v4.i16[2] & v4.i16[3] & 1) == 0 || a1[4].f32[0] != a2[4].f32[0])
  {
    return 0;
  }

  v5 = a1[7].i8[0] & a2[7].i8[0];
  if ((a1[7].i8[0] & 1) == 0 && (a2[7].i8[0] & 1) == 0)
  {
    v6 = a1[6];
    v7 = a2[6];
    v8 = vextq_s8(v6, v6, 0xCuLL);
    v8.i32[0] = a1[5].i32[0];
    v8.i32[1] = v6.i32[0];
    v9 = vextq_s8(v6, v7, 0xCuLL);
    v9.i32[0] = a2[5].i32[0];
    v9.i32[1] = v7.i32[0];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v8, v9))) & 1) == 0)
    {
      return 0;
    }

    v5 = vmovn_s32(vceqq_f32(v6, v7)).i8[6];
  }

  return v5 & 1;
}

double sub_1001D0E24(int32x4_t a1, float a2, int32x4_t a3)
{
  *a3.i32 = -*&a1.i32[2];
  *(a3.i64 + 4) = a1.i64[0];
  v3 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
  v4 = vnegq_f32(a1);
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), v4), a3, v3);
  v5 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), v4), v5, v3);
  v6 = __sincosf_stret(a2);
  v7.i32[0] = vextq_s8(v14, v14, 8uLL).u32[0];
  v7.i32[1] = v14.i32[0];
  v8 = vmul_n_f32(v7, v6.__sinval);
  v7.i32[0] = vextq_s8(v13, v13, 8uLL).u32[0];
  v7.i32[1] = v13.i32[0];
  *v9.f32 = vadd_f32(v8, vmul_n_f32(v7, v6.__cosval));
  v9.f32[2] = vmuls_lane_f32(v6.__sinval, *v14.i8, 1) + vmuls_lane_f32(v6.__cosval, *v13.i8, 1);
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  *&result = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]).u64[0];
  return result;
}

float sub_1001D0EFC(void *a1, float a2)
{
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return a2;
}

__n128 sub_1001D0FA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001D0FCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 113))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D0FEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
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

  *(result + 113) = v3;
  return result;
}

__n128 sub_1001D1058(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001D1084(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 109))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D10A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
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

  *(result + 109) = v3;
  return result;
}

__n128 sub_1001D1100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1001D112C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D1174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1001D1208@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.center.getter();
  v37 = 1;
  sub_1001D140C(v1, &v25);
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v38 = v25;
  v39 = v26;
  v44[2] = v27;
  v44[3] = v28;
  v44[4] = v29;
  v44[5] = v30;
  v44[0] = v25;
  v44[1] = v26;
  sub_100006C20(&v38, v35, &qword_100365690);
  sub_100008FA0(v44, &qword_100365690);
  *&v36[39] = v40;
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[7] = v38;
  *&v36[23] = v39;
  v5 = v37;
  v6 = *(v1 + 104);
  *&v25 = *(v1 + 96);
  *(&v25 + 1) = v6;
  sub_1000040A8(&qword_10035D788);
  State.wrappedValue.getter();
  v7 = v35[0];
  sub_1000382E4(v1, &v25);
  v8 = swift_allocObject();
  v9 = v32;
  v8[7] = v31;
  v8[8] = v9;
  v10 = v34;
  v8[9] = v33;
  v8[10] = v10;
  v11 = v28;
  v8[3] = v27;
  v8[4] = v11;
  v12 = v30;
  v8[5] = v29;
  v8[6] = v12;
  v13 = v26;
  v8[1] = v25;
  v8[2] = v13;
  sub_1000382E4(v2, &v25);
  v14 = swift_allocObject();
  v15 = v32;
  v14[7] = v31;
  v14[8] = v15;
  v16 = v34;
  v14[9] = v33;
  v14[10] = v16;
  v17 = v28;
  v14[3] = v27;
  v14[4] = v17;
  v18 = v30;
  v14[5] = v29;
  v14[6] = v18;
  v19 = v26;
  v14[1] = v25;
  v14[2] = v19;
  v20 = *&v36[32];
  *(a1 + 65) = *&v36[48];
  v21 = *&v36[80];
  *(a1 + 81) = *&v36[64];
  *(a1 + 97) = v21;
  result = *v36;
  v23 = *&v36[16];
  *(a1 + 17) = *v36;
  *(a1 + 33) = v23;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  v24 = *&v36[95];
  *(a1 + 49) = v20;
  *(a1 + 112) = v24;
  *(a1 + 120) = v7;
  *(a1 + 128) = sub_1001D21AC;
  *(a1 + 136) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = sub_1001D21B4;
  *(a1 + 168) = v14;
  return result;
}

uint64_t sub_1001D140C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v27._object = 0x80000001002A3210;
  v5._countAndFlagsBits = 0x6961674120797254;
  v6.value._object = 0x80000001002962C0;
  v27._countAndFlagsBits = 0xD00000000000005CLL;
  v5._object = 0xE90000000000006ELL;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v27);

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  LOBYTE(v25[0]) = v9;
  *(&v25[0] + 1) = v10;
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (v26)
  {
    v11 = 1;
  }

  else
  {
    v12 = *(a1 + 88);
    LOBYTE(v25[0]) = *(a1 + 80);
    *(&v25[0] + 1) = v12;
    State.wrappedValue.getter();
    v11 = v26;
  }

  sub_1000382E4(a1, v25);
  v13 = swift_allocObject();
  v14 = v25[7];
  v13[7] = v25[6];
  v13[8] = v14;
  v15 = v25[9];
  v13[9] = v25[8];
  v13[10] = v15;
  v16 = v25[3];
  v13[3] = v25[2];
  v13[4] = v16;
  v17 = v25[5];
  v13[5] = v25[4];
  v13[6] = v17;
  v18 = v25[1];
  v13[1] = v25[0];
  v13[2] = v18;
  type metadata accessor for UIMetrics();
  sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics);
  v19 = EnvironmentObject.init()();
  v21 = v20;
  LOBYTE(v25[0]) = v9;
  *(&v25[0] + 1) = v10;
  State.wrappedValue.getter();
  v22 = v26;
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v22;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = v11;
  *(a2 + 56) = sub_1001D21D8;
  *(a2 + 64) = v13;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = sub_100073CA8;
  *(a2 + 88) = result;
  return result;
}

uint64_t sub_1001D1678()
{
  if (*v0)
  {
    *&v10[0] = *(v0 + 32);

    PassthroughSubject.send(_:)();

    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    LOBYTE(v10[0]) = v1;
    *(&v10[0] + 1) = v2;
    sub_1000040A8(&qword_100354AA8);
    result = State.wrappedValue.getter();
    if ((v11 & 1) == 0)
    {
      State.wrappedValue.getter();
      LOBYTE(v10[0]) = v1;
      *(&v10[0] + 1) = v2;
      LOBYTE(v11) = 1;
      State.wrappedValue.setter();
      sub_1000382E4(v0, v10);
      v4 = swift_allocObject();
      v5 = v10[7];
      v4[7] = v10[6];
      v4[8] = v5;
      v6 = v10[9];
      v4[9] = v10[8];
      v4[10] = v6;
      v7 = v10[3];
      v4[3] = v10[2];
      v4[4] = v7;
      v8 = v10[5];
      v4[5] = v10[4];
      v4[6] = v8;
      v9 = v10[1];
      v4[1] = v10[0];
      v4[2] = v9;
      v11 = sub_1001D22A4;
      v12 = v4;

      PassthroughSubject.send(_:)();

      return sub_1001D1D44();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000518A8(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D1858(uint64_t a1, uint64_t a2)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E48);
  sub_1000382E4(a2, v18);
  sub_1000382E4(a2, v16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446467;
    v7 = sub_1000B9A7C();
    v9 = v8;
    sub_100038340(v18);
    v10 = sub_10017C9E8(v7, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    v11 = *(v17 + 16);
    v12 = *(v17 + 24);

    sub_100038340(v16);
    v13 = sub_10017C9E8(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] Throttle timer fired for %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038340(v18);
    sub_100038340(v16);
  }

  return sub_1001D1A40();
}

uint64_t sub_1001D1A40()
{
  v1 = v0;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E48);
  sub_1000382E4(v0, v18);
  sub_1000382E4(v0, v16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446467;
    v6 = sub_1000B9A7C();
    v8 = v7;
    sub_100038340(v18);
    v9 = sub_10017C9E8(v6, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2081;
    v10 = *(v17 + 16);
    v11 = *(v17 + 24);

    sub_100038340(v16);
    v12 = sub_10017C9E8(v10, v11, &v15);

    *(v5 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] _cancelThrottleTimer for %{private}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038340(v18);
    sub_100038340(v16);
  }

  sub_1000040A8(&qword_10035D790);
  State.wrappedValue.getter();
  if (v20)
  {
    sub_1000089B0(v18, v16);
    sub_100008FA0(v18, &qword_100356B58);
    sub_1000088DC(v16, v16[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100008964(v16);
  }

  else
  {
    sub_100008FA0(v18, &qword_100356B58);
  }

  v13 = *(v1 + 88);
  v18[0] = *(v1 + 80);
  v19 = v13;
  LOBYTE(v16[0]) = 0;
  sub_1000040A8(&qword_100354AA8);
  return State.wrappedValue.setter();
}

uint64_t sub_1001D1D44()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381E48);
  sub_1000382E4(v0, &v27);
  sub_1000382E4(v0, v25);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136446467;
    v9 = sub_1000B9A7C();
    v11 = v10;
    sub_100038340(&v27);
    v12 = sub_10017C9E8(v9, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2081;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    sub_100038340(v25);
    v15 = sub_10017C9E8(v13, v14, &v24);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] _resetThrottleTimer for %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038340(&v27);
    sub_100038340(v25);
  }

  sub_1000040A8(&qword_10035D790);
  State.wrappedValue.getter();
  if (v29)
  {
    sub_1000089B0(&v27, v25);
    sub_100008FA0(&v27, &qword_100356B58);
    sub_1000088DC(v25, v25[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100008964(v25);
  }

  else
  {
    sub_100008FA0(&v27, &qword_100356B58);
  }

  sub_100038298();
  v16 = [objc_opt_self() mainRunLoop];
  v17 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100008FA0(v4, &qword_100356A90);
  v20 = *(v1 + 104);
  v27 = *(v1 + 96);
  v19 = v27;
  v28 = v20;
  v25[0] = v18;
  sub_1000040A8(&qword_10035D788);
  State.wrappedValue.setter();
  v27 = v19;
  v28 = v20;
  State.wrappedValue.getter();
  NSTimer.TimerPublisher.connect()();

  sub_100006C20(&v27, v25, &qword_100356B58);
  State.wrappedValue.setter();
  sub_100008FA0(&v27, &qword_100356B58);
  v21 = *(v1 + 88);
  LOBYTE(v27) = *(v1 + 80);
  v28 = v21;
  LOBYTE(v25[0]) = 1;
  sub_1000040A8(&qword_100354AA8);
  return State.wrappedValue.setter();
}

uint64_t sub_1001D2214()
{

  if (*(v0 + 152))
  {
    sub_100008964(v0 + 128);
  }

  return _swift_deallocObject(v0, 176, 7);
}

unint64_t sub_1001D22B0()
{
  result = qword_100365698;
  if (!qword_100365698)
  {
    sub_100008CF0(&qword_1003656A0);
    sub_1001D233C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365698);
  }

  return result;
}

unint64_t sub_1001D233C()
{
  result = qword_1003656A8;
  if (!qword_1003656A8)
  {
    sub_100008CF0(&unk_1003656B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003656A8);
  }

  return result;
}

uint64_t sub_1001D2438(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1001D24A0(unsigned __int8 a1)
{
  v1 = 0x697261657070612ELL;
  v2 = 0x657070617369642ELL;
  if (a1 != 4)
  {
    v2 = 0x657070617369642ELL;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000010;
  }

  if (a1 != 1)
  {
    v1 = 0x657261657070612ELL;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1001D25A8()
{
  Hasher.init(_seed:)();
  ConnectionAssistantRendererEarthOutline.Error.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1001D25FC()
{
  _StringGuts.grow(_:)(52);
  v0._countAndFlagsBits = 0x746E657365727028;
  v0._object = 0xEE00203A656C6261;
  String.append(_:)(v0);
  swift_unknownObjectRetain();
  sub_1000040A8(&qword_10035CF78);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3A6567617473202CLL;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  type metadata accessor for SessionBannerAgent.Stage();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._object = 0x80000001002A33F0;
  v3._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v3);
  type metadata accessor for SessionBannerAgent.State();
  type metadata accessor for Optional();
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0;
}

uint64_t sub_1001D27A0()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    swift_beginAccess();
    type metadata accessor for SessionBannerAgent.Stage();
    type metadata accessor for Optional();
    v6 = String.init<A>(describing:)();
    v8 = sub_10017C9E8(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    type metadata accessor for SessionBannerAgent.State();
    type metadata accessor for Optional();
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "_activePresentable changed: stage = %{public}s: pendingStateUpdate = %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = sub_1001D300C() & 1;
  v13 = v2[qword_100365788];
  v2[qword_100365788] = v12;
  return sub_1001D2AD0(v13);
}

uint64_t (*sub_1001D2A28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001D2A8C;
}

uint64_t sub_1001D2A8C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1001D27A0();
  }

  return result;
}

uint64_t sub_1001D2AD0(uint64_t result)
{
  v2 = *(v1 + qword_100365788);
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 == 2)
  {
    LOBYTE(v2) = 0;
  }

  else if (((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CC8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "isAnyBannerPresented changed to %{BOOL,public}d", v6, 8u);
  }

  return PassthroughSubject.send(_:)();
}

uint64_t sub_1001D2C24(char a1)
{
  v2 = *(v1 + qword_100365788);
  *(v1 + qword_100365788) = a1;
  return sub_1001D2AD0(v2);
}

id sub_1001D2C3C()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = v2;
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = type metadata accessor for SessionBannerAgent();
    swift_getWitnessTable();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10017C9E8(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *&v2[qword_100365760];
    v11 = *&v2[qword_100365760 + 8];

    v12 = sub_10017C9E8(v10, v11, &v15);

    *(v5 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit for '%s'", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v6 = type metadata accessor for SessionBannerAgent();
  }

  v16.receiver = v2;
  v16.super_class = v6;
  return objc_msgSendSuper2(&v16, "dealloc", v14, v15);
}

uint64_t sub_1001D2EA4(uint64_t a1)
{

  sub_10002B558(a1 + qword_100365770);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001D2F94()
{
  v1 = sub_1001D300C() & 1;
  v2 = *(v0 + qword_100365788);
  *(v0 + qword_100365788) = v1;

  return sub_1001D2AD0(v2);
}

uint64_t sub_1001D300C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + qword_100365780);
    if ((v8 == 2 || (v8 & 1) == 0) && (v9 = v1 + qword_100365778, swift_beginAccess(), *v9))
    {
      if (*(*v9 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode) == 4)
      {
        return 1;
      }

      else
      {
        return HIBYTE(*(v9 + 16)) & 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D3198(uint64_t result)
{
  v2 = v1[qword_100365798];
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 != 2 && ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CC8);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    type metadata accessor for SessionBannerAgent.State();
    type metadata accessor for Optional();
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "_activeBannerLayout changed from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

uint64_t sub_1001D3434(char a1)
{
  v2 = *(v1 + qword_100365798);
  *(v1 + qword_100365798) = a1;
  return sub_1001D3198(v2);
}

void sub_1001D344C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1001D5768();
  swift_unknownObjectRelease();
}

uint64_t sub_1001D34AC(int a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    LODWORD(v65) = a1;
    v9 = "Banner.ConnectionAssistant";
    if (qword_100353A28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = v9 - 32;
  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10017C9E8(0xD00000000000001ALL, v10 | 0x8000000000000000, &v67);
    _os_log_impl(&_mh_execute_header, v13, v14, "presentBanner for '%{public}s'", v15, 0xCu);
    sub_100008964(v16);
  }

  v17 = *&v2[qword_100365768];
  if (!v17)
  {
    v45 = v2;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v67 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_10017C9E8(*&v45[qword_100365760], *&v45[qword_100365760 + 8], &v67);
      _os_log_impl(&_mh_execute_header, v46, v47, "_bannerSource for '%{public}s' has expired", v48, 0xCu);
      sub_100008964(v49);
    }

    goto LABEL_16;
  }

  v64 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v46 = v17;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67 = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_10017C9E8(0xD00000000000001ALL, v10 | 0x8000000000000000, &v67);
      _os_log_impl(&_mh_execute_header, v50, v51, "contentProducer for '%{public}s' has expired", v52, 0xCu);
      sub_100008964(v53);
    }

LABEL_16:
    return 0;
  }

  v19 = Strong;
  v21 = *&v2[qword_100365760];
  v20 = *&v2[qword_100365760 + 8];
  v22 = *(v4 + 80);
  v23 = *(v4 + 88);
  v24 = *(v23 + 16);
  v25 = v17;
  v26 = v24(v21, v20, 0xD00000000000001ALL, v10 | 0x8000000000000000, v19, v65 & 1, v2, &off_100337350, v22, v23);
  v65 = v27;
  sub_1000040A8(&unk_1003655F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v29;
  sub_10001D630(0, &qword_10035CF30);
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v30;
  *(inited + 72) = NSNumber.init(integerLiteral:)(1);
  sub_1002557F0(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_100365600);
  swift_arrayDestroy();
  sub_1000040A8(&unk_10035CF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = 0;
  LODWORD(inited) = [v25 postPresentable:v26 options:1 userInfo:isa error:&v67];

  v32 = v67;
  if (!inited)
  {
    v54 = v67;
    v55 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v58 = 136446210;
      v66 = v55;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v60 = String.init<A>(describing:)();
      v62 = v25;
      v63 = sub_10017C9E8(v60, v61, &v67);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "presentBanner failed: %{public}s", v58, 0xCu);
      sub_100008964(v59);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    return 0;
  }

  swift_unknownObjectRetain_n();
  v33 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v34, v35))
  {
    swift_unknownObjectRelease_n();

    goto LABEL_22;
  }

  v36 = v25;
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v67 = v38;
  *v37 = 136446210;
  v39 = [v26 requestIdentifier];
  result = swift_unknownObjectRelease();
  if (v39)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_10017C9E8(v41, v43, &v67);

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "presentBanner: presenting '%{public}s'", v37, 0xCu);
    sub_100008964(v38);

    swift_unknownObjectRelease();

LABEL_22:
    swift_unknownObjectRelease();
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D3DDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001D3E30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001D3E6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001D3E80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D3EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D3F20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001D3F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D3FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001D3FFC(void *a1, uint64_t a2, const char *a3, int a4, const char *a5)
{
  v50 = a5;
  v49 = a4;
  v52 = a3;
  v51 = swift_isaMask & *v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000F53C(v11, qword_100381CC8);
  swift_unknownObjectRetain();
  v13 = v5;
  v53 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56[0] = v47;
    *v16 = 136446466;
    v17 = a1;
    v18 = [a1 requestIdentifier];

    v48 = v17;
    swift_unknownObjectRelease();
    if (!v18)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10017C9E8(v19, v21, v56);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13 + qword_100365778;
    swift_beginAccess();
    v24 = *(v23 + 8);
    v54 = *v23;
    v55 = v24;
    type metadata accessor for SessionBannerAgent.ActivePresentable();
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    v25 = String.init<A>(describing:)();
    v27 = sub_10017C9E8(v25, v26, v56);

    *(v16 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v14, v15, v52, v16, 0x16u);
    swift_arrayDestroy();

    a1 = v48;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v28 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v29 = qword_100365778;
  swift_beginAccess();
  v30 = *(v13 + v29);
  if (v30)
  {
    v31 = &selRef_setShouldIgnoreDoNotDisturb_;
    v32 = [swift_unknownObjectRetain() requestIdentifier];
    swift_unknownObjectRelease();
    if (v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v34;
    }

    else
    {
      v33 = 0;
      v30 = 0;
    }
  }

  else
  {
    v33 = 0;
    v31 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  v35 = [a1 v31[57]];
  if (!v35)
  {
    if (!v30)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v36 = v35;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (!v30)
  {
    if (!v39)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (!v39)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v33 == v37 && v30 == v39)
  {

LABEL_27:
    v45 = sub_1001D2A28(&v54);
    if (*v44)
    {
      *(v44 + 16) = v49;
    }

    v45(&v54, 0);
    return;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_27;
  }

LABEL_23:
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, v50, v42, 2u);
  }
}

void sub_1001D455C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001D45B0();
  }
}

void sub_1001D45B0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "executePendingStateUpdate", v9, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v11 = &v1[qword_100365778];
    swift_beginAccess();
    if (*v11 && v11[16] == 5)
    {
      v12 = &v1[qword_100365778];
      swift_beginAccess();
      if (*v12 && (v13 = *(v12 + 8), v13 >> 8 != 2))
      {
        v34 = sub_1001D34AC((v13 >> 8) & 1);
        sub_1001D56D0(v34, v35, v36);
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = v1;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v39 = v18;
          *v17 = 136446210;
          v19 = &v14[qword_100365778];
          swift_beginAccess();
          v20 = *(v19 + 8);
          v37 = *v19;
          v38 = v20;
          type metadata accessor for SessionBannerAgent.ActivePresentable();
          type metadata accessor for Optional();
          swift_unknownObjectRetain();
          v21 = String.init<A>(describing:)();
          v23 = sub_10017C9E8(v21, v22, &v39);

          *(v17 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v15, v16, "executePendingStateUpdate request expired, current presentable == %{public}s", v17, 0xCu);
          sub_100008964(v18);
        }

        sub_1001D56D0(0, 0, 0);
      }
    }

    else
    {
      v24 = v1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v37 = v28;
        *v27 = 136446210;
        v29 = &v24[qword_100365778];
        swift_beginAccess();
        v30 = *(v29 + 8);
        v40 = *v29;
        v41 = v30;
        type metadata accessor for SessionBannerAgent.ActivePresentable();
        type metadata accessor for Optional();
        swift_unknownObjectRetain();
        v31 = String.init<A>(describing:)();
        v33 = sub_10017C9E8(v31, v32, &v37);

        *(v27 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v25, v26, "executePendingStateUpdate request overridden, current presentable == %{public}s", v27, 0xCu);
        sub_100008964(v28);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D4AD8(char a1, char a2)
{
  v3 = v2;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240448;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 1026;
    *(v9 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "didChangeLayout: present - %{BOOL,public}d, expanded - %{BOOL,public}d", v9, 0xEu);
  }

  if (a1)
  {
    v10 = a2 & 1;
    if (*(v3 + qword_100365790) != 2)
    {
      *(v3 + qword_100365790) = v10;
    }
  }

  else
  {
    v10 = 2;
  }

  v11 = *(v3 + qword_100365798);
  *(v3 + qword_100365798) = v10;
  sub_1001D3198(v11);
  v12 = sub_1001D300C() & 1;
  v13 = *(v3 + qword_100365788);
  *(v3 + qword_100365788) = v12;

  return sub_1001D2AD0(v13);
}

id sub_1001D4C4C(void *a1, uint64_t a2, int a3, const char *a4, uint64_t a5)
{
  v36 = a4;
  v7 = v5;
  LODWORD(v8) = a3;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381CC8);
  swift_unknownObjectRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v32 = v10;
    v33 = v7;
    v34 = a5;
    v35 = v8;
    v17 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = [a1 requestIdentifier];
    result = swift_unknownObjectRelease();
    if (!v18)
    {
      goto LABEL_12;
    }

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10017C9E8(v8, v21, v38);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    LOBYTE(v8) = v35;
    v37 = v35;
    sub_1000040A8(&unk_1003655D0);
    v23 = String.init<A>(describing:)();
    v25 = sub_10017C9E8(v23, v24, v38);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, v36, v17, 0x16u);
    swift_arrayDestroy();

    v10 = v32;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v26 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v26)
  {
    result = [a1 requestIdentifier];
    if (result)
    {
      v27 = result;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v38[0] = v28;
      v38[1] = v30;
      v39 = v8;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1001D4FB4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v9, v10))
  {
    v25 = v4;
    v26 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136446210;
    v14 = [a1 requestIdentifier];
    result = swift_unknownObjectRelease();
    if (!v14)
    {
      goto LABEL_12;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10017C9E8(v16, v18, v27);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "wasRemoved: %{public}s", v12, 0xCu);
    sub_100008964(v13);

    v4 = v25;
    v2 = v26;
    v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v20)
  {
    *(v2 + qword_100365790) = 2;
    sub_1001D56D0(0, 0, 0);
    result = [a1 v11[57]];
    if (result)
    {
      v21 = result;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v27[0] = v22;
      v27[1] = v24;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1001D52D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v9, v10))
  {
    v25[0] = v4;
    v25[1] = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136446210;
    v14 = [a1 requestIdentifier];
    result = swift_unknownObjectRelease();
    if (!v14)
    {
      goto LABEL_12;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10017C9E8(v16, v18, v26);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "handleTap: %{public}s", v12, 0xCu);
    sub_100008964(v13);

    v4 = v25[0];
    v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v20)
  {
    result = [a1 v11[57]];
    if (result)
    {
      v21 = result;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v26[0] = v22;
      v26[1] = v24;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001D56D0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = v3 + qword_100365778;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_1001D27A0();
}

void sub_1001D5768()
{
  v1 = v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "bannerSourceDidInvalidate", v5, 2u);
  }

  v6 = *(v1 + qword_100365768);
  *(v1 + qword_100365768) = 0;
}

void sub_1001D5864(void *a1)
{
  v73 = swift_isaMask & *v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v3 - 8);
  __chkstk_darwin(v3);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchTime();
  v65 = *(v71 - 8);
  __chkstk_darwin(v71);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000F53C(v13, qword_100381CC8);
  swift_unknownObjectRetain();
  v15 = v1;
  v72 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v62 = v3;
    v18 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v79[0] = v60;
    *v18 = 136446466;
    v19 = [a1 requestIdentifier];

    v61 = a1;
    swift_unknownObjectRelease();
    if (!v19)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v20 = v15;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, v79);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v25 = v20;
    v26 = v20 + qword_100365778;
    swift_beginAccess();
    v27 = *(v26 + 8);
    aBlock = *v26;
    LOWORD(v75) = v27;
    type metadata accessor for SessionBannerAgent.ActivePresentable();
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    v28 = String.init<A>(describing:)();
    v30 = sub_10017C9E8(v28, v29, v79);

    *(v18 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "didDisappear: for %{public}s, active presentable == %{public}s", v18, 0x16u);
    swift_arrayDestroy();

    v3 = v62;
    v15 = v25;
    a1 = v61;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v31 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v32 = qword_100365778;
  swift_beginAccess();
  v33 = *(v15 + v32);
  if (v33)
  {
    v34 = &selRef_setShouldIgnoreDoNotDisturb_;
    v35 = [swift_unknownObjectRetain() requestIdentifier];
    swift_unknownObjectRelease();
    if (v35)
    {
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v37;
    }

    else
    {
      v36 = 0;
      v33 = 0;
    }
  }

  else
  {
    v36 = 0;
    v34 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  v38 = [a1 v34[57]];
  if (!v38)
  {
    if (!v33)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v39 = v15;
  v40 = v38;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (!v33)
  {
    v15 = v39;
    if (!v43)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (!v43)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = v39;
  if (v36 == v41 && v33 == v43)
  {

LABEL_27:
    v48 = v15 + qword_100365778;
    swift_beginAccess();
    if (*v48 && v48[17] << 8 != 512)
    {
      v50 = sub_1001D2A28(&aBlock);
      if (*v49)
      {
        *(v49 + 16) = 5;
      }

      v50(&aBlock, 0);
      v51 = static OS_dispatch_queue.main.getter();
      v52 = v63;
      static DispatchTime.now()();
      v53 = v64;
      + infix(_:_:)();
      v72 = *(v65 + 8);
      v72(v52, v71);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v56 = v73;
      v55[2] = *(v73 + 80);
      v55[3] = *(v56 + 88);
      v55[4] = v54;
      v77 = sub_1001D627C;
      v78 = v55;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v75 = sub_1001D2438;
      v76 = &unk_100337418;
      v57 = _Block_copy(&aBlock);

      v58 = v66;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_100071864();
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v59 = v68;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v57);

      (*(v70 + 8))(v59, v3);
      (*(v67 + 8))(v58, v69);
      v72(v53, v71);
    }

    else
    {
      sub_1001D56D0(0, 0, 0);
    }

    return;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    goto LABEL_27;
  }

LABEL_23:
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Received didDisappear for non-active presentable", v46, 2u);
  }
}

uint64_t sub_1001D620C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D6244()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D6288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D62D0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v11, v12))
  {
    v44[1] = v3;
    v46 = v9;
    v14 = v10;
    v15 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    v49[0] = v44[0];
    *v15 = 136446466;
    v16 = [a1 requestIdentifier];
    v17 = v14;

    v45 = a1;
    swift_unknownObjectRelease();
    if (!v16)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10017C9E8(v18, v20, v49);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v22 = v17 + qword_100365778;
    swift_beginAccess();
    v23 = *(v22 + 8);
    v47 = *v22;
    v48 = v23;
    type metadata accessor for SessionBannerAgent.ActivePresentable();
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    v24 = String.init<A>(describing:)();
    v26 = sub_10017C9E8(v24, v25, v49);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v11, v12, "willDisappear: for %{public}s, active presentable == %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    a1 = v45;
    v10 = v17;
    v13 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = qword_100365778;
  swift_beginAccess();
  if (*(v10 + v28) && (v29 = [swift_unknownObjectRetain() v13[57]], swift_unknownObjectRelease(), v29))
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [a1 v13[57]];
  if (!v33)
  {
    if (!v32)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (!v32)
  {
    if (!v37)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (!v37)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v30 == v35 && v32 == v37)
  {

LABEL_26:
    v43 = sub_1001D2A28(&v47);
    if (*v42)
    {
      *(v42 + 16) = 4;
    }

    v43(&v47, 0);
    return;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_26;
  }

LABEL_22:
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Received willDisappear for non-active presentable", v40, 2u);
  }
}

uint64_t sub_1001D6874@<X0>(uint64_t a1@<X8>)
{
  v46 = type metadata accessor for SOSConnectionEndedView();
  __chkstk_darwin(v46);
  v4 = (v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v5 - 8);
  v7 = v42 - v6;
  v8 = type metadata accessor for ConnectionClosed(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000040A8(&qword_100365AF0);
  __chkstk_darwin(v47);
  v12 = v42 - v11;
  v45 = sub_1000040A8(&qword_100365AF8);
  __chkstk_darwin(v45);
  v14 = (v42 - v13);
  v15 = sub_1000040A8(&qword_100365B00);
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v18 = v1[4];
  if (v18)
  {
    if (*(v18 + 56) < -512)
    {
      type metadata accessor for AppEvents();
      sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
      v19 = EnvironmentObject.init()();
      v21 = v20;
      type metadata accessor for UIMetrics();
      sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
      v22 = EnvironmentObject.init()();
      *v14 = v19;
      v14[1] = v21;
      v14[2] = v22;
      v14[3] = v23;
      swift_storeEnumTagMultiPayload();
      sub_1001D7288();
      sub_1001D7330(&qword_100365B20, type metadata accessor for SOSConnectionEndedView);

      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v17, v12, &qword_100365B00);
      swift_storeEnumTagMultiPayload();
      sub_1001D71CC();
      sub_1001D72DC();
      _ConditionalContent<>.init(storage:)();

      sub_100008FA0(v17, &qword_100365B00);
      goto LABEL_11;
    }

    v42[1] = v15;
    v43 = a1;
    v24 = *v1;
    if (*v1)
    {
      v25 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
      swift_beginAccess();
      sub_100006C20(v24 + v25, v7, &qword_100356510);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        v34 = v44;
        sub_1001DCEA0(v7, v44, type metadata accessor for ConnectionClosed);
        sub_1001D7378(v34, v4 + *(v46 + 28), type metadata accessor for ConnectionClosed);
        type metadata accessor for AppEvents();
        sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
        *v4 = EnvironmentObject.init()();
        v4[1] = v35;
        type metadata accessor for RoadsideAssistanceModel();
        sub_1001D7330(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
        v4[2] = EnvironmentObject.init()();
        v4[3] = v36;
        type metadata accessor for UIMetrics();
        sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
        v4[4] = EnvironmentObject.init()();
        v4[5] = v37;
        sub_1001D7378(v4, v14, type metadata accessor for SOSConnectionEndedView);
        swift_storeEnumTagMultiPayload();
        sub_1001D7288();
        sub_1001D7330(&qword_100365B20, type metadata accessor for SOSConnectionEndedView);
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(v17, v12, &qword_100365B00);
        swift_storeEnumTagMultiPayload();
        sub_1001D71CC();
        sub_1001D72DC();
        a1 = v43;
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(v17, &qword_100365B00);
        sub_1001D73E0(v4, type metadata accessor for SOSConnectionEndedView);
        sub_1001D73E0(v34, type metadata accessor for ConnectionClosed);
        goto LABEL_11;
      }

      sub_100008FA0(v7, &qword_100356510);
      v26 = v1[2];
      a1 = v43;
      if (v26)
      {
        v27 = 1;
        if (!*(v26 + 64))
        {
          goto LABEL_12;
        }

        v28 = *(v26 + 56);
        if (v28 == 5)
        {
          goto LABEL_12;
        }

        type metadata accessor for AppEvents();
        sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
        v29 = EnvironmentObject.init()();
        v31 = v30;
        type metadata accessor for UIMetrics();
        sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
        v32 = EnvironmentObject.init()();
        *v12 = v29;
        *(v12 + 1) = v31;
        *(v12 + 2) = v32;
        *(v12 + 3) = v33;
        v12[32] = v28;
        swift_storeEnumTagMultiPayload();
        sub_1001D71CC();
        sub_1001D72DC();
        _ConditionalContent<>.init(storage:)();
LABEL_11:
        v27 = 0;
LABEL_12:
        v38 = sub_1000040A8(&qword_100365B08);
        return (*(*(v38 - 8) + 56))(a1, v27, 1, v38);
      }

      type metadata accessor for StewieModel(0);
      v40 = &qword_1003561B8;
      v41 = type metadata accessor for StewieModel;
    }

    else
    {
      type metadata accessor for ConnectionClosedModel(0);
      v40 = &qword_10035B1A8;
      v41 = type metadata accessor for ConnectionClosedModel;
    }
  }

  else
  {
    type metadata accessor for TryOutModel();
    v40 = &qword_100357990;
    v41 = type metadata accessor for TryOutModel;
  }

  sub_1001D7330(v40, v41);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SOSConnectionEndedView()
{
  result = qword_100365B88;
  if (!qword_100365B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001D71CC()
{
  result = qword_100365B10;
  if (!qword_100365B10)
  {
    sub_100008CF0(&qword_100365B00);
    sub_1001D7288();
    sub_1001D7330(&qword_100365B20, type metadata accessor for SOSConnectionEndedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365B10);
  }

  return result;
}

unint64_t sub_1001D7288()
{
  result = qword_100365B18;
  if (!qword_100365B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365B18);
  }

  return result;
}

unint64_t sub_1001D72DC()
{
  result = qword_100365B28;
  if (!qword_100365B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365B28);
  }

  return result;
}

uint64_t sub_1001D7330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D7378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D73E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D7440(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001D749C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001D7518(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ConnectionClosed(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1001D75E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ConnectionClosed(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001D7688()
{
  sub_10007B2FC();
  if (v0 <= 0x3F)
  {
    sub_1001D77AC(319, &unk_100365B98, type metadata accessor for RoadsideAssistanceModel, &qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    if (v1 <= 0x3F)
    {
      sub_1001D77AC(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ConnectionClosed(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001D77AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1001D7330(a4, a5);
    v8 = type metadata accessor for EnvironmentObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1001D7854()
{
  result = qword_100365BD0;
  if (!qword_100365BD0)
  {
    sub_100008CF0(&qword_100365BD8);
    sub_1001D78D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365BD0);
  }

  return result;
}

unint64_t sub_1001D78D8()
{
  result = qword_100365BE0;
  if (!qword_100365BE0)
  {
    sub_100008CF0(&qword_100365B08);
    sub_1001D71CC();
    sub_1001D72DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365BE0);
  }

  return result;
}

uint64_t sub_1001D7980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = type metadata accessor for SOSConnectionEndedView();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  sub_1000089B0(a1, &v44);
  sub_1001D7378(a2, v11, type metadata accessor for SOSConnectionEndedView);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  sub_100008A18(&v44, v13 + 16);
  sub_1001DCEA0(v11, v13 + ((v12 + 56) & ~v12), type metadata accessor for SOSConnectionEndedView);
  sub_1001D7378(a2, v8, type metadata accessor for SOSConnectionEndedView);
  sub_1000089B0(a1, &v42);
  v14 = (v12 + 16) & ~v12;
  v15 = swift_allocObject();
  sub_1001DCEA0(v8, v15 + v14, type metadata accessor for SOSConnectionEndedView);
  sub_100008A18(&v42, v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for UIMetrics();
  sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
  v16 = EnvironmentObject.init()();
  v37 = v17;
  v38 = v16;
  type metadata accessor for CGSize(0);
  v40 = 0;
  v41 = 0;
  State.init(wrappedValue:)();
  v18 = *(a2 + 32);
  if (v18)
  {
    v19 = v42;
    v20 = v43;
    sub_1000089B0(v18 + 48, &v44);
    v21 = v45;
    v22 = v46;
    sub_1000088DC(&v44, v45);
    v23 = a2 + *(v39 + 28);
    v24 = type metadata accessor for ConnectionClosed(0);
    v25 = (*(v22 + 184))(*(v23 + *(v24 + 24)), v21, v22);
    v27 = v26;
    v28 = (a3 + *(sub_1000040A8(&qword_100365C40) + 36));
    v29 = v28 + *(sub_1000040A8(&qword_100365C68) + 36);
    v30 = sub_1000040A8(&qword_100365C70);
    v31 = *(v30 + 36);
    v32 = type metadata accessor for ToolbarItemPlacement();
    (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
    *v29 = 0;
    v33 = &v29[*(v30 + 40)];
    *v33 = sub_1001DDAA8;
    v33[1] = 0;
    *v28 = v25;
    v28[1] = v27;
    v34 = v37;
    *a3 = v38;
    *(a3 + 8) = v34;
    *(a3 + 16) = sub_1001DCF08;
    *(a3 + 24) = v13;
    *(a3 + 32) = sub_1001DD0F0;
    *(a3 + 40) = v15;
    *(a3 + 48) = v19;
    *(a3 + 64) = v20;
    return sub_100008964(&v44);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1001D7D38(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = static HorizontalAlignment.center.getter();
  v11 = 0;
  sub_1001D7E50(v2);
  memcpy(__dst, __src, 0x3C2uLL);
  memcpy(v13, __src, 0x3C2uLL);
  sub_100006C20(__dst, &v8, &qword_100365CD8);
  sub_100008FA0(v13, &qword_100365CD8);
  memcpy(&v10[7], __dst, 0x3C2uLL);
  LOBYTE(v2) = v11;
  v6 = static Edge.Set.all.getter();
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v2;
  memcpy((v4 + 17), v10, 0x3C9uLL);
  *(v4 + 992) = v6;
  result = 0.0;
  *(v4 + 1000) = 0u;
  *(v4 + 1016) = 0u;
  *(v4 + 1032) = 0;
  return result;
}

uint64_t sub_1001D7E50(uint64_t a1)
{
  __chkstk_darwin(a1);
  *&v129 = v1;
  v3 = v2;
  v119 = v4;
  *&v130 = type metadata accessor for Font.Leading();
  v5 = *(v130 - 8);
  __chkstk_darwin(v130);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v208._object = 0x80000001002A0100;
  v9._object = 0x80000001002A00E0;
  v208._countAndFlagsBits = 0xD00000000000003DLL;
  v9._countAndFlagsBits = 0xD000000000000010;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v208);

  v139[0] = v11;
  v120 = sub_100031770();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  *&v148 = v12;
  *(&v148 + 1) = v13;
  v16 = v15 & 1;
  LOBYTE(v149) = v15 & 1;
  *(&v149 + 1) = v17;
  v121 = v3;
  v18 = v3;
  v19 = v129;
  sub_1001D8FE4(&v148, v18, v129, v139);
  sub_1000317C4(v12, v14, v16);

  v192 = v139[6];
  v193 = v139[7];
  v194 = v139[8];
  v195 = v139[9];
  v188 = v139[2];
  v189 = v139[3];
  v190 = v139[4];
  v191 = v139[5];
  v186 = v139[0];
  v187 = v139[1];
  v196[6] = v139[6];
  v196[7] = v139[7];
  v196[8] = v139[8];
  v197 = v139[9];
  v196[2] = v139[2];
  v196[3] = v139[3];
  v196[4] = v139[4];
  v196[5] = v139[5];
  v196[0] = v139[0];
  v196[1] = v139[1];
  sub_100006C20(&v186, v134, &qword_100365CE0);
  sub_100008FA0(v196, &qword_100365CE0);
  static Font.title3.getter();
  Font.bold()();

  v20 = v130;
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v130);
  v21 = Font.leading(_:)();

  (*(v5 + 8))(v7, v20);
  KeyPath = swift_getKeyPath();
  v204 = v192;
  v205 = v193;
  v206 = v194;
  LOBYTE(v207) = v195;
  v200 = v188;
  v201 = v189;
  v202 = v190;
  v203 = v191;
  v198 = v186;
  v199 = v187;
  v22 = *(v19 + 32);
  if (v22)
  {
    sub_1000089B0(v22 + 48, v139);
    v23 = *(&v139[1] + 1);
    v24 = *&v139[2];
    sub_1000088DC(v139, *(&v139[1] + 1));
    v126 = (*(v24 + 80))(v23, v24);
    v125 = swift_getKeyPath();
    sub_100008964(v139);
    v25 = *(v22 + 112);
    v118 = static UIContentSizeCategory.>= infix(_:_:)();

    v124 = swift_getKeyPath();
    v26 = *(v22 + 112);
    static Alignment.center.getter();
    v27 = static UIContentSizeCategory.>= infix(_:_:)();
    v128 = v21;
    if (v27)
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v181 = v204;
    v182 = v205;
    v183 = v206;
    v184 = v207;
    v177 = v200;
    v178 = v201;
    v179 = v202;
    v180 = v203;
    v175 = v198;
    v176 = v199;
    *(&v185[6] + 7) = *&v185[21];
    *(&v185[8] + 7) = *&v185[23];
    *(&v185[10] + 7) = *&v185[25];
    *(&v185[12] + 7) = *&v185[27];
    *(v185 + 7) = *&v185[15];
    *(&v185[2] + 7) = *&v185[17];
    *(&v185[4] + 7) = *&v185[19];
    v28 = *(v22 + 112);
    v117 = static UIContentSizeCategory.>= infix(_:_:)();

    v123 = swift_getKeyPath();
    sub_1000089B0(v22 + 48, v139);
    v29 = *&v139[2];
    sub_1000088DC(v139, *(&v139[1] + 1));
    v30 = type metadata accessor for SOSConnectionEndedView();
    v31 = *(v29 + 152);
    v122 = v19 + *(v30 + 28);
    *&v134[0] = v31();
    *(&v134[0] + 1) = v32;
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    sub_100008964(v139);
    static Font.largeTitle.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v38 = Text.font(_:)();
    *&v129 = UIContentSizeCategoryAccessibilityExtraLarge;
    v40 = v39;
    v42 = v41;
    v114 = v43;

    sub_1000317C4(v33, v35, v37 & 1);

    sub_1000089B0(v22 + 48, v139);
    v44 = *(&v139[1] + 1);
    v45 = *&v139[2];
    sub_1000088DC(v139, *(&v139[1] + 1));
    (*(v45 + 80))(v44, v45);
    v46 = Text.foregroundColor(_:)();
    v115 = v47;
    v116 = v46;
    v49 = v48;
    v51 = v50;
    sub_1000317C4(v38, v40, v42 & 1);

    sub_100008964(v139);
    v52 = *(v22 + 112);
    v53 = static UIContentSizeCategory.>= infix(_:_:)();

    v54 = (v53 & 1) == 0;
    v55 = swift_getKeyPath();
    *&v130 = v22;
    v56 = *(v22 + 112);
    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v173[55] = *&v185[35];
    *&v173[71] = *&v185[37];
    *&v173[87] = *&v185[39];
    *&v173[103] = *&v185[41];
    *&v173[7] = *&v185[29];
    *&v173[23] = *&v185[31];
    v174 = v49 & 1;
    *&v173[39] = *&v185[33];
    v57 = *(v130 + 112);
    v58 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v58)
    {
      v59 = 1.0;
    }

    else
    {
      v59 = 0.5;
    }

    v60 = swift_getKeyPath();
    *(&v145[4] + 9) = *&v173[64];
    *(&v145[5] + 9) = *&v173[80];
    *(&v145[6] + 9) = *&v173[96];
    *(v145 + 9) = *v173;
    *(&v145[1] + 9) = *&v173[16];
    *(&v145[2] + 9) = *&v173[32];
    *&v143 = v116;
    *(&v143 + 1) = v115;
    LOBYTE(v144) = v49 & 1;
    *(&v144 + 1) = v51;
    *&v145[0] = v55;
    BYTE8(v145[0]) = v54;
    *(&v145[3] + 9) = *&v173[48];
    *(&v145[7] + 1) = *&v173[111];
    *&v146 = v60;
    *(&v146 + 1) = v59;
    v61 = sub_1000088DC(v121, v121[3]);
    v62 = *v61;
    v63 = *(*v61 + 184);
    v115 = *(*v61 + 192);
    v116 = v63;
    v64 = *(v62 + 200);
    v114 = *(v62 + 208);
    v65 = static Edge.Set.all.getter();
    v134[8] = v145[6];
    v134[9] = v145[7];
    v134[10] = v146;
    v134[4] = v145[2];
    v134[5] = v145[3];
    v134[6] = v145[4];
    v134[7] = v145[5];
    v134[0] = v143;
    v134[1] = v144;
    v134[2] = v145[0];
    v134[3] = v145[1];
    LOBYTE(v148) = 0;
    sub_100006C20(&v143, v139, &qword_100356C48);
    v66 = static Edge.Set.top.getter();
    LOBYTE(v139[0]) = 1;
    v67 = static Edge.Set.bottom.getter();
    sub_100008FA0(&v143, &qword_100356C48);
    v147[8] = v134[8];
    v147[9] = v134[9];
    v147[10] = v134[10];
    v147[4] = v134[4];
    v147[5] = v134[5];
    v147[6] = v134[6];
    v147[7] = v134[7];
    v147[0] = v134[0];
    v147[1] = v134[1];
    v147[2] = v134[2];
    v147[3] = v134[3];
    v148 = v134[0];
    v149 = v134[1];
    v152 = v134[4];
    v153 = v134[5];
    LOBYTE(v142[0]) = 1;
    LOBYTE(v147[11]) = v65;
    *(&v147[11] + 1) = v116;
    *&v147[12] = v115;
    *(&v147[12] + 1) = v64;
    *&v147[13] = v114;
    BYTE8(v147[13]) = 0;
    LOBYTE(v147[14]) = v66;
    v150 = v134[2];
    v151 = v134[3];
    v68 = v130;
    v157 = v134[9];
    v158 = v134[10];
    *(&v147[14] + 8) = 0u;
    *(&v147[15] + 8) = 0u;
    BYTE8(v147[16]) = 1;
    LOBYTE(v147[17]) = v67;
    *(&v147[17] + 8) = 0u;
    *(&v147[18] + 8) = 0u;
    BYTE8(v147[19]) = 1;
    v155 = v134[7];
    v156 = v134[8];
    v154 = v134[6];
    v159 = v65;
    v160 = v116;
    v161 = v115;
    v162 = v64;
    v163 = v114;
    v164 = 0;
    v165 = v66;
    v166 = 0u;
    v167 = 0u;
    v168 = 1;
    v169 = v67;
    v170 = 0u;
    v171 = 0u;
    v172 = 1;
    sub_100006C20(v147, v139, &qword_100365C30);
    sub_100008FA0(&v148, &qword_100365C30);
    sub_1000089B0(v68 + 48, v139);
    v69 = *(&v139[1] + 1);
    v70 = *&v139[2];
    sub_1000088DC(v139, *(&v139[1] + 1));
    v71 = (*(v70 + 160))(v122, v69, v70);
    v73 = v72;
    sub_100008964(v139);
    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      *&v139[0] = v71;
      *(&v139[0] + 1) = v73;
      v75 = Text.init<A>(_:)();
      v77 = v76;
      v79 = v78;
      sub_1000089B0(v68 + 48, v139);
      v80 = *(&v139[1] + 1);
      v81 = *&v139[2];
      sub_1000088DC(v139, *(&v139[1] + 1));
      (*(v81 + 64))(v80, v81);
      v82 = Text.font(_:)();
      v84 = v83;
      LOBYTE(v80) = v85;
      sub_1000317C4(v75, v77, v79 & 1);

      sub_100008964(v139);
      v86 = v130;
      sub_1000089B0(v130 + 48, v139);
      v87 = *(&v139[1] + 1);
      v88 = *&v139[2];
      sub_1000088DC(v139, *(&v139[1] + 1));
      (*(v88 + 80))(v87, v88);
      v120 = Text.foregroundColor(_:)();
      v115 = v90;
      v116 = v89;
      v92 = v91;
      sub_1000317C4(v82, v84, v80 & 1);

      sub_100008964(v139);
      v93 = *(v86 + 112);
      LOBYTE(v80) = static UIContentSizeCategory.>= infix(_:_:)();

      v94 = (v80 & 1) == 0;
      v95 = swift_getKeyPath();
      v96 = *(v86 + 112);
      static Alignment.center.getter();
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static Alignment.center.getter();
        if (static Alignment.== infix(_:_:)())
        {
          static Alignment.leading.getter();
        }
      }

      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v141[55] = *&v185[49];
      *&v141[71] = *&v185[51];
      *&v141[87] = *&v185[53];
      *&v141[103] = *&v185[55];
      *&v141[7] = *&v185[43];
      *&v141[23] = *&v185[45];
      v97 = v92 & 1;
      v136[0] = v92 & 1;
      *&v141[39] = *&v185[47];
      v98 = *(v130 + 112);
      v99 = static UIContentSizeCategory.>= infix(_:_:)();

      if (v99)
      {
        v100 = 1.0;
      }

      else
      {
        v100 = 0.5;
      }

      v101 = swift_getKeyPath();
      v102 = sub_1000088DC(v121, v121[3]);
      v103 = *(*v102 + 184);
      v129 = *(*v102 + 200);
      v130 = v103;
      v104 = static Edge.Set.all.getter();
      v137[0] = 0;
      v105 = static Edge.Set.top.getter();
      v138[0] = 1;
      v106 = static Edge.Set.bottom.getter();
      *(&v139[6] + 9) = *&v141[64];
      *(&v139[7] + 9) = *&v141[80];
      *(&v139[8] + 9) = *&v141[96];
      *(&v139[2] + 9) = *v141;
      *(&v139[3] + 9) = *&v141[16];
      *(&v139[4] + 9) = *&v141[32];
      LOBYTE(v134[0]) = 1;
      *&v139[0] = v120;
      *(&v139[0] + 1) = v116;
      LOBYTE(v139[1]) = v97;
      *(&v139[1] + 1) = v115;
      *&v139[2] = v95;
      BYTE8(v139[2]) = v94;
      *(&v139[5] + 9) = *&v141[48];
      *(&v139[9] + 1) = *&v141[111];
      *&v139[10] = v101;
      *(&v139[10] + 1) = v100;
      LOBYTE(v139[11]) = v104;
      *(&v139[12] + 8) = v129;
      *(&v139[11] + 8) = v130;
      BYTE8(v139[13]) = 0;
      LOBYTE(v139[14]) = v105;
      *(&v139[14] + 8) = 0u;
      *(&v139[15] + 8) = 0u;
      BYTE8(v139[16]) = 1;
      LOBYTE(v139[17]) = v106;
      *(&v139[17] + 8) = 0u;
      *(&v139[18] + 8) = 0u;
      BYTE8(v139[19]) = 1;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v139);
      memcpy(v142, v139, 0x139uLL);
    }

    else
    {

      sub_1001A152C(v142);
    }

    if (v117)
    {
      v107 = 1.0;
    }

    else
    {
      v107 = 0.5;
    }

    v108 = (v118 & 1) == 0;
    LODWORD(v130) = v108;
    v109 = type metadata accessor for ConnectionClosed(0);
    v110 = sub_100071A54(4, *(v122 + *(v109 + 24)));
    memcpy(v133, v147, sizeof(v133));
    memcpy(v137, v142, 0x139uLL);
    v134[6] = v181;
    v134[7] = v182;
    v134[8] = v183;
    v134[2] = v177;
    v134[3] = v178;
    v134[4] = v179;
    v134[5] = v180;
    v134[0] = v175;
    v134[1] = v176;
    *(&v134[16] + 1) = *&v185[8];
    *(&v134[17] + 1) = *&v185[10];
    *(&v134[18] + 1) = *&v185[12];
    *(&v134[12] + 1) = *v185;
    *(&v134[13] + 1) = *&v185[2];
    *(&v134[14] + 1) = *&v185[4];
    *&v134[9] = v184;
    *(&v134[9] + 1) = KeyPath;
    *&v134[10] = v128;
    *(&v134[10] + 1) = v125;
    *&v134[11] = v126;
    *(&v134[11] + 1) = v124;
    LOBYTE(v134[12]) = v108;
    *(&v134[15] + 1) = *&v185[6];
    *&v134[19] = *(&v185[13] + 7);
    *(&v134[19] + 1) = v123;
    *&v134[20] = v107;
    memcpy(v132, v134, 0x148uLL);
    memcpy(v135, v147, 0x139uLL);
    memcpy(&v132[328], v147, 0x139uLL);
    memcpy(v136, v142, 0x139uLL);
    memcpy(&v132[648], v142, 0x139uLL);
    v111 = (v110 & 1) == 0;
    v131 = v111;
    v112 = v119;
    memcpy(v119, v132, 0x3C1uLL);
    v112[961] = v111;
    sub_100006C20(v134, v139, &qword_100365CE8);
    sub_100006C20(v135, v139, &qword_100365C30);
    sub_100006C20(v136, v139, &qword_100365CF0);
    sub_100008FA0(v137, &qword_100365CF0);
    memcpy(v138, v133, 0x139uLL);
    sub_100008FA0(v138, &qword_100365C30);
    v139[6] = v181;
    v139[7] = v182;
    v139[8] = v183;
    v139[2] = v177;
    v139[3] = v178;
    v139[4] = v179;
    v139[5] = v180;
    v139[0] = v175;
    v139[1] = v176;
    *(&v139[16] + 1) = *&v185[8];
    *(&v139[17] + 1) = *&v185[10];
    *(&v139[18] + 1) = *&v185[12];
    *(&v139[12] + 1) = *v185;
    *(&v139[13] + 1) = *&v185[2];
    *(&v139[14] + 1) = *&v185[4];
    *&v139[9] = v184;
    *(&v139[9] + 1) = KeyPath;
    *&v139[10] = v128;
    *(&v139[10] + 1) = v125;
    *&v139[11] = v126;
    *(&v139[11] + 1) = v124;
    LOBYTE(v139[12]) = v130;
    *(&v139[15] + 1) = *&v185[6];
    *&v139[19] = *(&v185[13] + 7);
    *(&v139[19] + 1) = v123;
    v140 = v107;
    return sub_100008FA0(v139, &qword_100365CE8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D8FE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_1000088DC(a2, a2[3]);
  v26 = *(*v11 + 200);
  v27 = *(*v11 + 184);
  v12 = static Edge.Set.all.getter();

  sub_1001B3BD8(v7, v8, v9);
  v13 = static Edge.Set.bottom.getter();
  sub_1000088DC(a2, a2[3]);
  EdgeInsets.init(_all:)();
  v18 = *(a3 + 32);
  if (v18)
  {
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = *(v18 + 112);
    v24 = static UIContentSizeCategory.>= infix(_:_:)();

    result = swift_getKeyPath();
    *a4 = v7;
    *(a4 + 8) = v8;
    *(a4 + 16) = v9;
    *(a4 + 24) = v10;
    *(a4 + 32) = v12;
    *(a4 + 56) = v26;
    *(a4 + 40) = v27;
    *(a4 + 72) = 0;
    *(a4 + 80) = v13;
    *(a4 + 88) = v19;
    *(a4 + 96) = v20;
    *(a4 + 104) = v21;
    *(a4 + 112) = v22;
    *(a4 + 120) = 0;
    *(a4 + 128) = result;
    *(a4 + 136) = (v24 & 1) == 0;
    *(a4 + 144) = v24 & 1;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1001D91A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v18 = 0;
  sub_1001D92E4(a1, &v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 11) = *(v16 + 11);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 11) = *(v16 + 11);
  sub_100006C20(&v19, &v10, &qword_100365C78);
  sub_100008FA0(v25, &qword_100365C78);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[98] = *(v24 + 11);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v17[96];
  v6 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v6;
  result = *&v17[32];
  v8 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 129) = *&v17[112];
  *(a2 + 65) = v8;
  return result;
}

uint64_t sub_1001D92E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SOSConnectionEndedView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = a1 + *(v7 + 36);
  v9 = *(v8 + *(type metadata accessor for ConnectionClosed(0) + 24));
  if (sub_100071A54(0, v9))
  {
    sub_1001D7378(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SOSConnectionEndedView);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    sub_1001DCEA0(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SOSConnectionEndedView);
    v12 = static Edge.Set.top.getter();
    v38 = 1;
    v13 = static Edge.Set.all.getter();
    LOBYTE(v44) = 0;
    *&v39 = sub_1001DD6CC;
    *(&v39 + 1) = v11;
    LOBYTE(v40[0]) = v12;
    *(v40 + 8) = 0u;
    *(&v40[1] + 8) = 0u;
    BYTE8(v40[2]) = v38;
    v41[0] = v13;
    memset(&v41[8], 0, 33);
    *&v58 = sub_1001DD6CC;
    *(&v58 + 1) = v11;
    v59[0] = v12;
    memset(&v59[8], 0, 32);
    v59[40] = v38;
    LOBYTE(v60[0]) = v13;
    memset(v60 + 8, 0, 33);
    sub_100006C20(&v39, &v51, &qword_100365CA0);
    sub_100008FA0(&v58, &qword_100365CA0);
    v54 = v40[2];
    v55 = *v41;
    *v56 = *&v41[16];
    *&v56[9] = *&v41[25];
    v51 = v39;
    v52 = v40[0];
    v53 = v40[1];
    v42 = 0;
    v56[25] = 0;
LABEL_3:
    sub_100006C20(&v39, &v44, &qword_100365CA0);
    sub_1000040A8(&qword_100365CA0);
    sub_1001DD29C(&qword_100365C98, &qword_100365CA0, &unk_10028EEA0, sub_1001DD23C);
    _ConditionalContent<>.init(storage:)();
    v48 = v37[0];
    *v49 = v37[1];
    *&v49[10] = *(&v37[1] + 10);
    v44 = v35;
    v45 = v36[0];
    v46 = v36[1];
    v47 = v36[2];
    v43 = 0;
    v50 = 0;
    sub_1000040A8(&qword_100365C88);
    sub_1000040A8(&qword_100365C80);
    sub_1001DD18C();
    sub_1001DD29C(&qword_100365CB8, &qword_100365C80, &unk_10028EE90, sub_1001DD26C);
    _ConditionalContent<>.init(storage:)();
    result = sub_100008FA0(&v39, &qword_100365CA0);
    goto LABEL_9;
  }

  if ((sub_100071A54(1, v9) & 1) == 0)
  {
LABEL_7:
    result = sub_100071A54(4, v9);
    if ((result & 1) == 0)
    {
      v27 = 0;
      v21 = 0uLL;
      v28 = 16711680;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      goto LABEL_10;
    }

    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
    v16 = EnvironmentObject.init()();
    v18 = v17;
    v19 = static Edge.Set.top.getter();
    LOBYTE(v51) = 1;
    v20 = static Edge.Set.all.getter();
    LOBYTE(v44) = 0;
    *&v58 = v16;
    *(&v58 + 1) = v18;
    v59[0] = v19;
    memset(&v59[8], 0, 32);
    v59[40] = 1;
    LOBYTE(v60[0]) = v20;
    memset(v60 + 8, 0, 33);
    *&v35 = v16;
    *(&v35 + 1) = v18;
    LOBYTE(v36[0]) = v19;
    *(v36 + 8) = 0u;
    *(&v36[1] + 8) = 0u;
    BYTE8(v36[2]) = 1;
    LOBYTE(v37[0]) = v20;
    *(v37 + 8) = 0u;
    *(&v37[1] + 8) = 0u;
    BYTE8(v37[2]) = 0;
    sub_100006C20(&v58, &v51, &qword_100365C80);
    sub_100008FA0(&v35, &qword_100365C80);
    v48 = v60[0];
    *v49 = v60[1];
    *&v49[9] = *(&v60[1] + 9);
    v44 = v58;
    v45 = *v59;
    v46 = *&v59[16];
    v47 = *&v59[32];
    LOBYTE(v39) = 1;
    v50 = 1;
    sub_1000040A8(&qword_100365C88);
    sub_1000040A8(&qword_100365C80);
    sub_1001DD18C();
    sub_1001DD29C(&qword_100365CB8, &qword_100365C80, &unk_10028EE90, sub_1001DD26C);
    result = _ConditionalContent<>.init(storage:)();
LABEL_9:
    v21 = v51;
    v22 = v52;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v26 = *v56;
    v27 = *&v56[16];
    v28 = *&v56[24] | (v57 << 16);
LABEL_10:
    *a2 = v21;
    *(a2 + 16) = v22;
    *(a2 + 32) = v23;
    *(a2 + 48) = v24;
    *(a2 + 64) = v25;
    *(a2 + 80) = v26;
    *(a2 + 96) = v27;
    *(a2 + 104) = v28;
    *(a2 + 106) = BYTE2(v28);
    return result;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    if ((*(v15 + 184) & 1) == 0)
    {
      v29 = *(v15 + 176);
      sub_1001D7378(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SOSConnectionEndedView);
      v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v31 = swift_allocObject();
      sub_1001DCEA0(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for SOSConnectionEndedView);
      *(v31 + ((v6 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
      v32 = static Edge.Set.top.getter();
      v38 = 1;
      v33 = static Edge.Set.all.getter();
      LOBYTE(v44) = 0;
      *&v39 = sub_1001DD4E0;
      *(&v39 + 1) = v31;
      LOBYTE(v40[0]) = v32;
      *(v40 + 8) = 0u;
      *(&v40[1] + 8) = 0u;
      BYTE8(v40[2]) = v38;
      v41[0] = v33;
      memset(&v41[8], 0, 33);
      *&v58 = sub_1001DD4E0;
      *(&v58 + 1) = v31;
      v59[0] = v32;
      memset(&v59[8], 0, 32);
      v59[40] = v38;
      LOBYTE(v60[0]) = v33;
      memset(v60 + 8, 0, 33);
      sub_100006C20(&v39, &v51, &qword_100365CA0);
      sub_100008FA0(&v58, &qword_100365CA0);
      v55 = *v41;
      *v56 = *&v41[16];
      *&v56[9] = *&v41[25];
      v51 = v39;
      v52 = v40[0];
      v53 = v40[1];
      v54 = v40[2];
      v42 = 1;
      v56[25] = 1;
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  type metadata accessor for RoadsideAssistanceModel();
  sub_1001D7330(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001D99EC(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D9B04(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D9BDC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_1000089B0(v1 + 48, v6);
    v2 = v7;
    v3 = v8;
    sub_1000088DC(v6, v7);
    (*(v3 + 32))(v9, v2, v3);
    v4 = sub_100008964(v6);
    __chkstk_darwin(v4);
    sub_1000040A8(&qword_100365C40);
    sub_1001DCC54();
    NavigationStack.init<>(root:)();
    return sub_100008964(v9);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D9D40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3[9];
    v5 = a3[10];
    sub_1000088DC(a3 + 6, v4);
    v6 = *(v5 + 32);

    v6(v12, v4, v5);

    v7 = a3[9];
    v8 = a3[10];
    sub_1000088DC(a3 + 6, v7);
    v9 = (*(v8 + 24))(v11, v7, v8);
    __chkstk_darwin(v9);
    sub_1000040A8(&qword_100365BE8);
    sub_1001DC838();
    NavigationStack.init<>(root:)();
    sub_100008964(v11);
    return sub_100008964(v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1001D9EFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1000089B0(a5, v25);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  sub_100008A18(v25, (v13 + 6));
  sub_1000089B0(a6, v25);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  sub_100008A18(v25, (v14 + 6));
  type metadata accessor for UIMetrics();
  sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
  swift_retain_n();
  swift_retain_n();
  v15 = EnvironmentObject.init()();
  v17 = v16;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v18 = [objc_opt_self() mainBundle];
  v26._object = 0x800000010029FB70;
  v19._object = 0x800000010029C8E0;
  v26._countAndFlagsBits = 0xD00000000000004ELL;
  v19._countAndFlagsBits = 0xD000000000000012;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v26);

  *a7 = v15;
  *(a7 + 8) = v17;
  *(a7 + 16) = sub_1001DC948;
  *(a7 + 24) = v13;
  *(a7 + 32) = sub_1001DC9A0;
  *(a7 + 40) = v14;
  *(a7 + 48) = v22;
  *(a7 + 56) = v23;
  *(a7 + 64) = v24;
  *(a7 + 72) = v21;
}

uint64_t sub_1001DA11C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = static HorizontalAlignment.center.getter();
  v9[0] = 0;
  sub_1001DA308(v4, v2, __src);
  memcpy(__dst, __src, 0x221uLL);
  memcpy(v13, __src, 0x221uLL);
  sub_100006C20(__dst, v14, &qword_100365C20);
  sub_100008FA0(v13, &qword_100365C20);
  memcpy(&v11[7], __dst, 0x221uLL);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v10[624] = 1;
  v14[0] = v7;
  v14[1] = 0;
  LOBYTE(v14[2]) = 0;
  memcpy(&v14[2] + 1, v11, 0x228uLL);
  LOBYTE(v14[72]) = v2;
  memset(&v14[73], 0, 33);
  memcpy(&v10[7], v14, 0x269uLL);
  *v6 = 0;
  *(v6 + 8) = 1;
  memcpy((v6 + 9), v10, 0x270uLL);
  __src[0] = v7;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v11, 0x228uLL);
  v16 = v2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  sub_100006C20(v14, v9, &qword_100365C28);
  return sub_100008FA0(__src, &qword_100365C28);
}

uint64_t sub_1001DA308@<X0>(uint64_t a1@<X2>, void *a2@<X4>, void *a3@<X8>)
{
  v55 = a2;
  v59 = a3;
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v58 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);

    sub_1000088DC((a1 + 48), v8);
    v10 = *(v9 + 24);
    swift_retain_n();
    v10(v112, v8, v9);
    sub_100008964(v112);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v113[54] = v123;
    *&v113[70] = v124;
    *&v113[86] = v125;
    *&v113[102] = v126;
    *&v113[6] = v120;
    *&v113[22] = v121;
    v114 = 1;
    *&v113[38] = v122;
    v56 = static Edge.Set.top.getter();
    v115 = 1;
    v57 = static Edge.Set.bottom.getter();
    v117 = 1;
    LocalizedStringKey.init(stringLiteral:)();
    v11 = Text.init(_:tableName:bundle:comment:)();
    v13 = v12;
    v15 = v14;

    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    sub_1000088DC((a1 + 48), v16);
    (*(v17 + 72))(v16, v17);
    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;
    v52[1] = v23;
    sub_1000317C4(v11, v13, v15 & 1);

    v24 = *(a1 + 72);
    v25 = *(a1 + 80);
    sub_1000088DC((a1 + 48), v24);
    (*(v25 + 80))(v24, v25);
    v26 = Text.foregroundColor(_:)();
    v53 = v27;
    v54 = v26;
    v29 = v28;
    v31 = v30;
    sub_1000317C4(v18, v20, v22 & 1);

    v32 = *(a1 + 112);

    v33 = static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    v35 = *(a1 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    v36 = (v33 & 1) == 0;
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v110[55] = v130;
    *&v110[71] = v131;
    *&v110[87] = v132;
    *&v110[103] = v133;
    *&v110[7] = v127;
    *&v110[23] = v128;
    v37 = v29 & 1;
    v111 = v29 & 1;
    *&v110[39] = v129;
    v38 = *(a1 + 112);

    v39 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v39)
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.5;
    }

    v41 = swift_getKeyPath();
    *(&v84[4] + 9) = *&v110[64];
    *(&v84[5] + 9) = *&v110[80];
    *(&v84[6] + 9) = *&v110[96];
    *(v84 + 9) = *v110;
    *(&v84[1] + 9) = *&v110[16];
    *(&v84[2] + 9) = *&v110[32];
    *&v82 = v54;
    *(&v82 + 1) = v53;
    LOBYTE(v83) = v37;
    *(&v83 + 1) = v31;
    *&v84[0] = KeyPath;
    BYTE8(v84[0]) = v36;
    *(&v84[3] + 9) = *&v110[48];
    *(&v84[7] + 1) = *&v110[111];
    *&v85 = v41;
    *(&v85 + 1) = v40;
    v42 = sub_1000088DC(v55, v55[3]);
    v43 = *(*v42 + 184);
    v44 = *(*v42 + 192);
    v46 = *(*v42 + 200);
    v45 = *(*v42 + 208);
    v47 = static Edge.Set.all.getter();
    v108[8] = v84[6];
    v108[9] = v84[7];
    v108[10] = v85;
    v108[4] = v84[2];
    v108[5] = v84[3];
    v108[7] = v84[5];
    v108[6] = v84[4];
    v108[0] = v82;
    v108[1] = v83;
    v108[3] = v84[1];
    v108[2] = v84[0];
    LOBYTE(v87[0]) = 0;
    sub_100006C20(&v82, v109, &qword_100356C48);
    v48 = static Edge.Set.top.getter();
    v109[0] = 1;
    v49 = static Edge.Set.bottom.getter();
    sub_100008FA0(&v82, &qword_100356C48);
    v86[8] = v108[8];
    v86[9] = v108[9];
    v86[10] = v108[10];
    v86[4] = v108[4];
    v86[5] = v108[5];
    v86[7] = v108[7];
    v86[6] = v108[6];
    v86[0] = v108[0];
    v86[1] = v108[1];
    v86[3] = v108[3];
    v86[2] = v108[2];
    v87[1] = v108[1];
    v87[0] = v108[0];
    v87[5] = v108[5];
    v87[4] = v108[4];
    v87[2] = v108[2];
    v87[3] = v108[3];
    LOBYTE(v60[0]) = 1;
    LOBYTE(v86[11]) = v47;
    *(&v86[11] + 1) = v43;
    *&v86[12] = v44;
    *(&v86[12] + 1) = v46;
    *&v86[13] = v45;
    BYTE8(v86[13]) = 0;
    LOBYTE(v86[14]) = v48;
    v87[10] = v108[10];
    *(&v86[14] + 8) = 0u;
    *(&v86[15] + 8) = 0u;
    BYTE8(v86[16]) = 1;
    LOBYTE(v86[17]) = v49;
    *(&v86[17] + 8) = 0u;
    *(&v86[18] + 8) = 0u;
    BYTE8(v86[19]) = 1;
    v87[9] = v108[9];
    v87[8] = v108[8];
    v87[6] = v108[6];
    v87[7] = v108[7];
    v88 = v47;
    v89 = v43;
    v90 = v44;
    v91 = v46;
    v92 = v45;
    v93 = 0;
    v94 = v48;
    v95 = 0u;
    v96 = 0u;
    v97 = 1;
    v98 = v49;
    v99 = 0u;
    v100 = 0u;
    v101 = 1;
    sub_100006C20(v86, v109, &qword_100365C30);
    sub_100008FA0(v87, &qword_100365C30);
    memcpy(v109, v86, 0x139uLL);
    v50 = v58;
    v102[0] = v58;
    v102[1] = 0;
    LOWORD(v103[0]) = 1;
    *(&v103[4] + 2) = *&v113[64];
    *(&v103[5] + 2) = *&v113[80];
    *(&v103[6] + 2) = *&v113[96];
    *&v103[7] = *&v113[110];
    *(v103 + 2) = *v113;
    *(&v103[1] + 2) = *&v113[16];
    *(&v103[2] + 2) = *&v113[32];
    *(&v103[3] + 2) = *&v113[48];
    LOBYTE(v46) = v56;
    LOBYTE(v45) = v57;
    BYTE8(v103[7]) = v56;
    *(&v103[7] + 9) = *v116;
    HIDWORD(v103[7]) = *&v116[3];
    memset(&v103[8], 0, 32);
    LOBYTE(v104) = 1;
    *(&v104 + 1) = *v119;
    DWORD1(v104) = *&v119[3];
    BYTE8(v104) = v57;
    HIDWORD(v104) = *&v118[3];
    *(&v104 + 9) = *v118;
    v105 = 0u;
    v106 = 0u;
    v107 = 1;
    LOBYTE(v81[14]) = 1;
    v81[0] = v58;
    v81[1] = v103[0];
    v81[4] = v103[3];
    v81[5] = v103[4];
    v81[2] = v103[1];
    v81[3] = v103[2];
    v81[8] = v103[7];
    memset(&v81[9], 0, 32);
    v81[6] = v103[5];
    v81[7] = v103[6];
    v81[11] = v104;
    memset(&v81[12], 0, 32);
    memcpy(v108, v86, 0x139uLL);
    memcpy(&v81[14] + 8, v86, 0x139uLL);
    memcpy(v59, v81, 0x221uLL);
    sub_100006C20(v102, v60, &qword_100365C38);
    sub_100006C20(v108, v60, &qword_100365C30);
    sub_100008FA0(v109, &qword_100365C30);
    v67 = *&v113[64];
    v68 = *&v113[80];
    *v69 = *&v113[96];
    v63 = *v113;
    v64 = *&v113[16];
    v65 = *&v113[32];
    v60[0] = v50;
    v60[1] = 0;
    v61 = 1;
    v62 = 0;
    *&v69[14] = *&v113[110];
    v66 = *&v113[48];
    v70 = v46;
    *v71 = *v116;
    *&v71[3] = *&v116[3];
    v72 = 0u;
    v73 = 0u;
    v74 = 1;
    *v75 = *v119;
    *&v75[3] = *&v119[3];
    v76 = v45;
    *&v77[3] = *&v118[3];
    *v77 = *v118;
    v78 = 0u;
    v79 = 0u;
    v80 = 1;
    return sub_100008FA0(v60, &qword_100365C38);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 sub_1001DAD3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = [objc_opt_self() mainBundle];
  v79._object = 0x80000001002A3430;
  v11._countAndFlagsBits = 0x6553206F74206F47;
  v11._object = 0xEE0073676E697474;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v79._countAndFlagsBits = 0xD000000000000064;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v79);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();

  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  *&v36 = KeyPath;
  BYTE8(v36) = 0;
  *&v37 = v16;
  BYTE8(v37) = 0;
  v38 = v13;
  v39.n128_u64[0] = sub_1001DC9F0;
  v39.n128_u64[1] = v14;
  LOBYTE(v40) = v61[0];
  *(&v40 + 1) = *(&v61[0] + 1);
  LOBYTE(v41) = v61[0];
  *(&v41 + 1) = *(&v61[0] + 1);
  v17 = static Edge.Set.top.getter();
  v47 = v13;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  LOBYTE(v51) = 1;
  sub_1000775A0(&v36, v61);
  v18 = static Edge.Set.all.getter();
  LOBYTE(v61[0]) = 0;
  v19 = static Edge.Set.bottom.getter();
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1001DCB3C(&v36);
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v51 = v45;
  v52 = v46;
  v35[240] = 0;
  v57[0] = v17;
  *&v57[1] = *v44;
  *&v57[4] = *&v44[3];
  v61[2] = v47;
  v61[3] = v48;
  memset(&v57[8], 0, 32);
  v57[40] = 1;
  *&v57[44] = *&v43[3];
  *&v57[41] = *v43;
  v58[0] = v18;
  *&v58[4] = *&v42[3];
  *&v58[1] = *v42;
  v61[4] = v49;
  v61[5] = v50;
  *&v58[8] = xmmword_100277A70;
  *&v58[24] = xmmword_100277A70;
  v58[40] = 0;
  LOBYTE(v59) = v19;
  *(&v59 + 1) = v21;
  *v60 = v23;
  *&v60[8] = v25;
  *&v60[16] = v27;
  v60[24] = 0;
  v61[0] = v45;
  v61[1] = v46;
  v62 = v17;
  *&v63[3] = *&v44[3];
  *v63 = *v44;
  v65 = 0u;
  v64 = 0u;
  v66 = 1;
  *&v67[3] = *&v43[3];
  *v67 = *v43;
  v68 = v18;
  *&v69[3] = *&v42[3];
  *v69 = *v42;
  v70 = xmmword_100277A70;
  v71 = xmmword_100277A70;
  v72 = 0;
  v73 = v19;
  v74 = v21;
  v75 = v23;
  v76 = v25;
  v77 = v27;
  v78 = 0;
  sub_100006C20(&v51, v35, &qword_100365C10);
  sub_100008FA0(v61, &qword_100365C10);
  v28 = *v60;
  *(a5 + 192) = v59;
  *(a5 + 208) = v28;
  *(a5 + 217) = *&v60[9];
  v29 = *v58;
  *(a5 + 128) = *&v57[32];
  *(a5 + 144) = v29;
  v30 = *&v58[32];
  *(a5 + 160) = *&v58[16];
  *(a5 + 176) = v30;
  v31 = v56;
  *(a5 + 64) = v55;
  *(a5 + 80) = v31;
  v32 = *&v57[16];
  *(a5 + 96) = *v57;
  *(a5 + 112) = v32;
  v33 = v52;
  *a5 = v51;
  *(a5 + 16) = v33;
  result = v54;
  *(a5 + 32) = v53;
  *(a5 + 48) = result;
  return result;
}

uint64_t sub_1001DB130(uint64_t a1)
{
  if (a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DB1DC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1[9];
    v3 = v1[10];
    sub_1000088DC(v1 + 6, v2);
    v4 = *(v3 + 32);

    v4(v10, v2, v3);

    v5 = [objc_opt_self() mainBundle];
    v11._object = 0x8000000100296930;
    v6._object = 0x8000000100296910;
    v11._countAndFlagsBits = 0xD00000000000008ALL;
    v6._countAndFlagsBits = 0xD000000000000014;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v11);

    __chkstk_darwin(v8);
    sub_1000040A8(&qword_100365CF8);
    sub_1001DD860();
    NavigationStack.init<>(root:)();

    return sub_100008964(v10);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DB3DC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v36 = a1[1];
  v37 = v14;
  sub_1000089B0(a2, v38);
  v15 = swift_allocObject();
  v16 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  sub_100008A18(v38, v15 + 56);
  sub_100006C20(&v37, &v29, &qword_100357580);
  sub_100006C20(&v36, &v29, &qword_100360020);
  type metadata accessor for UIMetrics();
  sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
  v17 = EnvironmentObject.init()();
  v19 = v18;
  type metadata accessor for CGSize(0);
  v34 = 0;
  v35 = 0;
  State.init(wrappedValue:)();
  v20 = v30;
  v21 = v29;
  *&v29 = v17;
  *(&v29 + 1) = v19;
  *&v30 = sub_1001DD9D0;
  *(&v30 + 1) = v15;
  *&v31 = sub_1001DC718;
  *(&v31 + 1) = 0;
  v32 = v21;
  v33 = v20;
  (*(v11 + 104))(v13, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v10);
  sub_1000040A8(&qword_100365D08);
  sub_100009274(&qword_100365D10, &qword_100365D08);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v11 + 8))(v13, v10);
  v38[2] = v31;
  v38[3] = v32;
  v39 = v33;
  v38[0] = v29;
  v38[1] = v30;
  sub_100008FA0(v38, &qword_100365D08);
  v22 = (a5 + *(sub_1000040A8(&qword_100365CF8) + 36));
  v23 = v22 + *(sub_1000040A8(&qword_100365C68) + 36);
  v24 = sub_1000040A8(&qword_100365C70);
  v25 = *(v24 + 36);
  v26 = type metadata accessor for ToolbarItemPlacement();
  (*(*(v26 - 8) + 56))(&v23[v25], 1, 1, v26);
  *v23 = 0;
  v27 = &v23[*(v24 + 40)];
  *v27 = sub_1001DDAA8;
  v27[1] = 0;
  *v22 = a3;
  v22[1] = a4;
}

double sub_1001DB788@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_100365D18);
  sub_1001DB824(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100365D20) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_1001DB824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v143 = a2;
  v144 = a3;
  v4 = sub_1000040A8(&qword_100357C48);
  __chkstk_darwin(v4 - 8);
  v129 = &v116 - v5;
  v128 = sub_1000040A8(&qword_100365D28);
  __chkstk_darwin(v128);
  v131 = &v116 - v6;
  v130 = sub_1000040A8(&qword_100365D30);
  __chkstk_darwin(v130);
  v133 = &v116 - v7;
  v132 = sub_1000040A8(&qword_100365D38);
  __chkstk_darwin(v132);
  v135 = &v116 - v8;
  v134 = sub_1000040A8(&qword_100365D40);
  __chkstk_darwin(v134);
  *&v137 = &v116 - v9;
  v136 = sub_1000040A8(&qword_100365D48);
  __chkstk_darwin(v136);
  v140 = &v116 - v10;
  v139 = sub_1000040A8(&qword_100365D50);
  __chkstk_darwin(v139);
  v142 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v116 - v13;
  *&v123 = type metadata accessor for AccessibilityTraits();
  *&v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100356C40);
  __chkstk_darwin(v15 - 8);
  v127 = &v116 - v16;
  v126 = sub_1000040A8(&qword_100365D58);
  __chkstk_darwin(v126);
  v138 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v145 = &v116 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v20 + 72);
    v22 = *(v20 + 80);
    swift_retain_n();
    sub_1000088DC((v20 + 48), v21);
    v23 = *(v22 + 176);
    v24 = *(a1 + 32);
    swift_retain_n();
    v25 = v23(v24, v21, v22);
    v124 = v26;
    v125 = v25;
    v27 = *(v20 + 72);
    v28 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v27);
    *&v150[0] = (*(v28 + 168))(v24, v27, v28);
    *(&v150[0] + 1) = v29;
    v120 = sub_100031770();
    v30 = Text.init<A>(_:)();
    v32 = v31;
    LOBYTE(v22) = v33;
    v34 = *(v20 + 72);
    v35 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v34);
    (*(v35 + 72))(v34, v35);
    v36 = Text.font(_:)();
    v38 = v37;
    LOBYTE(v35) = v39;
    v116 = v40;
    sub_1000317C4(v30, v32, v22 & 1);

    v41 = *(v20 + 72);
    v42 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v41);
    (*(v42 + 80))(v41, v42);
    v43 = Text.foregroundColor(_:)();
    v118 = v44;
    v119 = v43;
    v46 = v45;
    v117 = v47;
    sub_1000317C4(v36, v38, v35 & 1);

    v48 = *(v20 + 112);

    LOBYTE(v42) = static UIContentSizeCategory.>= infix(_:_:)();

    v49 = (v42 & 1) == 0;
    KeyPath = swift_getKeyPath();
    v51 = *(v20 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v151[55] = v156;
    *&v151[71] = v157;
    *&v151[87] = v158;
    *&v151[103] = v159;
    *&v151[7] = v153;
    *&v151[23] = v154;
    v52 = v46 & 1;
    v152 = v46 & 1;
    *&v151[39] = v155;
    v53 = *(v20 + 112);

    v54 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v54)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = 0.5;
    }

    v56 = swift_getKeyPath();
    *(&v148[4] + 9) = *&v151[64];
    *(&v148[5] + 9) = *&v151[80];
    *(&v148[6] + 9) = *&v151[96];
    *(v148 + 9) = *v151;
    *(&v148[1] + 9) = *&v151[16];
    *(&v148[2] + 9) = *&v151[32];
    *&v146 = v119;
    *(&v146 + 1) = v118;
    LOBYTE(v147) = v52;
    *(&v147 + 1) = v117;
    *&v148[0] = KeyPath;
    BYTE8(v148[0]) = v49;
    *(&v148[3] + 9) = *&v151[48];
    *(&v148[7] + 1) = *&v151[111];
    *&v149 = v56;
    *(&v149 + 1) = v55;
    v57 = v121;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48);
    sub_10003BE30();
    v58 = v127;
    View.accessibility(addTraits:)();
    (*(v122 + 8))(v57, v123);
    v150[8] = v148[6];
    v150[9] = v148[7];
    v150[10] = v149;
    v150[4] = v148[2];
    v150[5] = v148[3];
    v150[6] = v148[4];
    v150[7] = v148[5];
    v150[0] = v146;
    v150[1] = v147;
    v150[2] = v148[0];
    v150[3] = v148[1];
    sub_100008FA0(v150, &qword_100356C48);
    v59 = v143;
    v60 = sub_1000088DC(v143, *(v143 + 24));
    v61 = *(*v60 + 184);
    v122 = *(*v60 + 200);
    v123 = v61;
    v62 = static Edge.Set.all.getter();
    v63 = v145;
    sub_100006C20(v58, v145, &qword_100356C40);
    v64 = v63 + *(sub_1000040A8(&qword_100365D60) + 36);
    *v64 = v62;
    v65 = v123;
    *(v64 + 24) = v122;
    *(v64 + 8) = v65;
    *(v64 + 40) = 0;
    v66 = static Edge.Set.top.getter();
    v67 = v63 + *(sub_1000040A8(&qword_100365D68) + 36);
    *v67 = v66;
    *(v67 + 8) = 0u;
    *(v67 + 24) = 0u;
    *(v67 + 40) = 1;
    v68 = static Edge.Set.bottom.getter();
    sub_100008FA0(v58, &qword_100356C40);
    v69 = v63 + *(v126 + 36);
    *v69 = v68;
    *(v69 + 8) = 0u;
    *(v69 + 24) = 0u;
    *(v69 + 40) = 1;
    *&v146 = v125;
    *(&v146 + 1) = v124;

    v70 = Text.init<A>(_:)();
    v72 = v71;
    *&v146 = v70;
    *(&v146 + 1) = v71;
    LOBYTE(v58) = v73 & 1;
    LOBYTE(v147) = v73 & 1;
    *(&v147 + 1) = v74;

    v75 = v129;
    View.accessibility(hidden:)();
    sub_1000317C4(v70, v72, v58);

    v76 = *(v20 + 72);
    v77 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v76);
    v78 = (*(v77 + 64))(v76, v77);
    v79 = swift_getKeyPath();
    v80 = v131;
    sub_10000CF4C(v75, v131, &qword_100357C48);

    v81 = (v80 + *(v128 + 36));
    *v81 = v79;
    v81[1] = v78;
    v82 = *(v20 + 72);
    v83 = *(v20 + 80);
    sub_1000088DC((v20 + 48), v82);
    v84 = (*(v83 + 80))(v82, v83);
    v85 = swift_getKeyPath();
    v86 = v133;
    sub_10000CF4C(v80, v133, &qword_100365D28);
    v87 = (v86 + *(v130 + 36));
    *v87 = v85;
    v87[1] = v84;
    v88 = *(v20 + 112);

    LOBYTE(v85) = static UIContentSizeCategory.>= infix(_:_:)();

    v89 = swift_getKeyPath();
    v90 = v135;
    sub_10000CF4C(v86, v135, &qword_100365D30);
    v91 = v90 + *(v132 + 36);
    *v91 = v89;
    *(v91 + 8) = (v85 & 1) == 0;
    v92 = *(v20 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v93 = v137;
    sub_10000CF4C(v90, v137, &qword_100365D38);
    v94 = (v93 + *(v134 + 36));
    v95 = v148[3];
    v94[4] = v148[2];
    v94[5] = v95;
    v94[6] = v148[4];
    v96 = v147;
    *v94 = v146;
    v94[1] = v96;
    v97 = v148[1];
    v94[2] = v148[0];
    v94[3] = v97;
    v98 = *(v20 + 112);

    v99 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v99)
    {
      v100 = 1.0;
    }

    else
    {
      v100 = 0.5;
    }

    v101 = swift_getKeyPath();
    v102 = v140;
    sub_10000CF4C(v93, v140, &qword_100365D40);
    v103 = v102 + *(v136 + 36);
    *v103 = v101;
    *(v103 + 8) = v100;
    v104 = sub_1000088DC(v59, v59[3]);
    v105 = *v104;
    v143 = *(*v104 + 184);
    v137 = *(v105 + 200);
    LOBYTE(v101) = static Edge.Set.all.getter();
    v106 = v141;
    sub_100006C20(v102, v141, &qword_100365D48);
    v107 = v106 + *(sub_1000040A8(&qword_100365D70) + 36);
    *v107 = v101;
    *(v107 + 24) = v137;
    *(v107 + 8) = v143;
    *(v107 + 40) = 0;
    LOBYTE(v101) = static Edge.Set.top.getter();
    v108 = v106 + *(sub_1000040A8(&qword_100365D78) + 36);
    *v108 = v101;
    *(v108 + 8) = 0u;
    *(v108 + 24) = 0u;
    *(v108 + 40) = 1;
    LOBYTE(v101) = static Edge.Set.bottom.getter();
    sub_100008FA0(v102, &qword_100365D48);
    v109 = v138;
    v110 = v106 + *(v139 + 36);
    *v110 = v101;
    *(v110 + 8) = 0u;
    *(v110 + 24) = 0u;
    *(v110 + 40) = 1;
    v111 = v145;
    sub_100006C20(v145, v109, &qword_100365D58);
    v112 = v142;
    sub_100006C20(v106, v142, &qword_100365D50);
    v113 = v144;
    sub_100006C20(v109, v144, &qword_100365D58);
    v114 = sub_1000040A8(&qword_100365D80);
    sub_100006C20(v112, v113 + *(v114 + 64), &qword_100365D50);
    sub_100008FA0(v106, &qword_100365D50);
    sub_100008FA0(v111, &qword_100365D58);
    sub_100008FA0(v112, &qword_100365D50);
    return sub_100008FA0(v109, &qword_100365D58);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001D7330(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DC718@<X0>(uint64_t a1@<X8>)
{
  result = static HorizontalAlignment.center.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1001DC744@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1001D7330(&qword_100354D48, type metadata accessor for AppEvents);
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001DC838()
{
  result = qword_100365BF0;
  if (!qword_100365BF0)
  {
    sub_100008CF0(&qword_100365BE8);
    sub_100009274(&qword_100365BF8, &qword_100365C00);
    sub_1001DC8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365BF0);
  }

  return result;
}

unint64_t sub_1001DC8F0()
{
  result = qword_100365C08;
  if (!qword_100365C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C08);
  }

  return result;
}

uint64_t sub_1001DC958()
{

  sub_100008964(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001DC9B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DCA04@<X0>(_BYTE *a1@<X8>)
{
  sub_1001DCB90();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001DCA54@<X0>(_BYTE *a1@<X8>)
{
  sub_1001DCB90();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1001DCB90()
{
  result = qword_100365C18;
  if (!qword_100365C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C18);
  }

  return result;
}

uint64_t sub_1001DCBE4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1001DCC54()
{
  result = qword_100365C48;
  if (!qword_100365C48)
  {
    sub_100008CF0(&qword_100365C40);
    sub_100009274(&qword_100365C50, &qword_100365C58);
    sub_100009274(&qword_100365C60, &qword_100365C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C48);
  }

  return result;
}

uint64_t sub_1001DCD38()
{
  v1 = (type metadata accessor for SOSConnectionEndedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  sub_100008964(v0 + 16);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001DCEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1001DCF08()
{
  type metadata accessor for SOSConnectionEndedView();

  return sub_1001D7D38(v0 + 16);
}

uint64_t sub_1001DCF7C()
{
  v1 = (type metadata accessor for SOSConnectionEndedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100008964(v0 + v9);

  return _swift_deallocObject(v0, v9 + 40, v2 | 7);
}

double sub_1001DD0F0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SOSConnectionEndedView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001D91A8(v4, a1);
}

unint64_t sub_1001DD18C()
{
  result = qword_100365C90;
  if (!qword_100365C90)
  {
    sub_100008CF0(&qword_100365C88);
    sub_1001DD29C(&qword_100365C98, &qword_100365CA0, &unk_10028EEA0, sub_1001DD23C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365C90);
  }

  return result;
}

uint64_t sub_1001DD29C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DD320()
{
  result = qword_100365CD0;
  if (!qword_100365CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365CD0);
  }

  return result;
}

uint64_t sub_1001DD374()
{
  v1 = (type metadata accessor for SOSConnectionEndedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1001DD4E0()
{
  v1 = *(type metadata accessor for SOSConnectionEndedView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1001D9B04(v2);
}

uint64_t sub_1001DD56C()
{
  v1 = (type metadata accessor for SOSConnectionEndedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001DD6CC()
{
  v1 = *(type metadata accessor for SOSConnectionEndedView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1001D99EC(v2);
}

uint64_t sub_1001DD734@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001DD78C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1001DD7C0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001DD860()
{
  result = qword_100365D00;
  if (!qword_100365D00)
  {
    sub_100008CF0(&qword_100365CF8);
    sub_100008CF0(&qword_100365D08);
    sub_100009274(&qword_100365D10, &qword_100365D08);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100365C60, &qword_100365C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365D00);
  }

  return result;
}

uint64_t sub_1001DD988()
{

  sub_100008964(v0 + 56);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001DDADC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TransmissionProgress(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v11 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = *(v4 + 56);
    v12(v9, 1, 1, v3);
    v13 = v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
    swift_beginAccess();
    v14 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      v15 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
      swift_beginAccess();
      sub_100006C20(v1 + v15, a1, &qword_100354FD8);
    }

    else
    {
      sub_1002031B4(v13 + *(v14 + 20), v6, type metadata accessor for TransmissionProgress);
      sub_100204258(v6, a1, type metadata accessor for TransmissionProgress);
      v12(a1, 0, 1, v3);
    }

    result = (*(v4 + 48))(v9, 1, v3);
    if (result != 1)
    {
      return sub_100008FA0(v9, &qword_100354FD8);
    }
  }

  else
  {
    sub_1002031B4(v10 + *(v11 + 20), v9, type metadata accessor for TransmissionProgress);
    v16 = *(v4 + 56);
    v16(v9, 0, 1, v3);
    sub_100204258(v9, a1, type metadata accessor for TransmissionProgress);
    return (v16)(a1, 0, 1, v3);
  }

  return result;
}

Swift::Int sub_1001DDE34(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DDFD0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1001DE0C0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1001DE1DC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1001DE260()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    if (*(v1 + 72))
    {
      v2 = *(v1 + 72);
    }

    else
    {

      v2 = sub_10020327C();

      if (!v2)
      {
        return;
      }
    }

    v3 = *(v2 + 16);
    if ((*(v0 + 64) & 1) != 0 || (v4 = *(v0 + 56), v4 >= v3))
    {
      if (v3)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
    }
  }
}

void sub_1001DE340()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v7 = *(v1 + 104);
  if (v7)
  {
    *(v1 + 104) = v7 - 1;
    sub_1001F4988();
    return;
  }

  if (qword_100353A20 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CB0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "onConnectionGuidanceDisappear called when _connectionGuidancePresent == 0", v11, 2u);
  }
}

uint64_t sub_1001DE534()
{
  v1 = *(*(v0 + 48) + 136);
  if (v1 > 4)
  {
    if (*(*(v0 + 48) + 136) <= 6u)
    {
      if (v1 == 5)
      {
        return 3;
      }

      return 1;
    }

    if (v1 - 7 >= 2)
    {
      return 0;
    }

    else if (*(v0 + 56))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (*(*(v0 + 48) + 136) > 2u)
    {
      return 2;
    }

    if (*(*(v0 + 48) + 136))
    {
      if (v1 == 1)
      {
        return 4;
      }

      return 1;
    }

    return 5;
  }
}

uint64_t sub_1001DE5B8()
{
  v1 = *(*(v0 + 48) + 136);
  if (v1 <= 4)
  {
    if (*(*(v0 + 48) + 136) <= 1u)
    {
      if (!*(*(v0 + 48) + 136))
      {
        v13 = objc_opt_self();
        v14 = [v13 mainBundle];
        v36._object = 0x80000001002A4A70;
        v15._countAndFlagsBits = 0x455443454E4E4F43;
        v15._object = 0xE900000000000044;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        v36._countAndFlagsBits = 0xD000000000000035;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36)._countAndFlagsBits;

        v8 = [v13 mainBundle];
        v34 = 0x80000001002A4A70;
        v9 = 0x657463656E6E6F43;
        v10 = 0xE900000000000064;
        v17.super.isa = v8;
        v18 = 0;
        v19 = 0xE000000000000000;
        v11 = 0xD000000000000035;
LABEL_22:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, 0, v17, *&v18, *&v11);

        return countAndFlagsBits;
      }

      v24 = objc_opt_self();
      v25 = [v24 mainBundle];
      v38._object = 0x80000001002A49F0;
      v26._countAndFlagsBits = 0x4E4F4320524F4F50;
      v26._object = 0xEF4E4F495443454ELL;
      v38._countAndFlagsBits = 0xD000000000000079;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v38)._countAndFlagsBits;

      v8 = [v24 mainBundle];
      v34 = 0x80000001002A49F0;
      v9 = 0x6E6F4320726F6F50;
      v10 = 0xEF6E6F697463656ELL;
      v11 = 0xD000000000000079;
    }

    else
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          v2 = *(v0 + 57);
          v3 = objc_opt_self();
          v4 = [v3 mainBundle];
          if (v2 == 1)
          {
            v35._object = 0x80000001002A4960;
            v5._countAndFlagsBits = 0x495443454E4E4F43;
            v5._object = 0xAD0000A680E2474ELL;
            v35._countAndFlagsBits = 0xD00000000000004DLL;
            v6._countAndFlagsBits = 0;
            v6._object = 0xE000000000000000;
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v35)._countAndFlagsBits;

            v8 = [v3 mainBundle];
            v34 = 0x80000001002A4960;
            v9 = 0x697463656E6E6F43;
            v10 = 0xAD0000A680E2676ELL;
            v11 = 0xD00000000000004DLL;
          }

          else
          {
            v40._object = 0x80000001002A48F0;
            v32._countAndFlagsBits = 0x43454E4E4F434552;
            v32._object = 0xAFA680E2474E4954;
            v40._countAndFlagsBits = 0xD000000000000064;
            v33._countAndFlagsBits = 0;
            v33._object = 0xE000000000000000;
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v4, v33, v40)._countAndFlagsBits;

            v8 = [v3 mainBundle];
            v34 = 0x80000001002A48F0;
            v9 = 0x63656E6E6F636552;
            v10 = 0xAFA680E2676E6974;
            v11 = 0xD000000000000064;
          }

          goto LABEL_21;
        }

        return sub_100020564();
      }

      v20 = objc_opt_self();
      v21 = [v20 mainBundle];
      v37._object = 0x80000001002A49B0;
      v22._countAndFlagsBits = 0x4E4E4F4320544F4ELL;
      v22._object = 0xED00004445544345;
      v37._countAndFlagsBits = 0xD000000000000039;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v37)._countAndFlagsBits;

      v8 = [v20 mainBundle];
      v34 = 0x80000001002A49B0;
      v9 = 0x6E6E6F4320746F4ELL;
      v10 = 0xED00006465746365;
      v11 = 0xD000000000000039;
    }

LABEL_21:
    v17.super.isa = v8;
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (*(*(v0 + 48) + 136) <= 6u)
  {
    if (v1 == 5)
    {
      return sub_100020688();
    }

    v28 = objc_opt_self();
    v29 = [v28 mainBundle];
    v39._object = 0x80000001002A4890;
    v30._countAndFlagsBits = 0x4E4E4F4320544F4ELL;
    v30._object = 0xED00004445544345;
    v39._countAndFlagsBits = 0xD000000000000051;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v39)._countAndFlagsBits;

    v8 = [v28 mainBundle];
    v34 = 0x80000001002A4890;
    v9 = 0x6E6E6F4320746F4ELL;
    v10 = 0xED00006465746365;
    v11 = 0xD000000000000051;
    goto LABEL_21;
  }

  if (v1 == 7)
  {
    return sub_100020564();
  }

  if (v1 == 8)
  {
    return sub_1000207B4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DEB60(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100361B80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v18[-v6];
  v8 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    static DispatchTime.now()();
    v13 = type metadata accessor for DispatchTime();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_responseReceivedAt;
    swift_beginAccess();
    sub_1000C6F74(v10, v12 + v14, &qword_100356518);
    swift_endAccess();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtCC8SOSBuddy23ServicePredictionsModel7Request_model);

    sub_100006C20(a1, v7, &qword_100361B80);
    v17 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
    swift_beginAccess();
    sub_100006C20(v16 + v17, v5, &qword_100361B80);
    sub_1001FD1B0(v7);
    swift_beginAccess();
    sub_10017E5D8(v7, v16 + v17, &qword_100361B80);
    swift_endAccess();
    sub_1001FD588(v5);

    sub_100008FA0(v5, &qword_100361B80);
    return sub_100008FA0(v7, &qword_100361B80);
  }

  return result;
}

uint64_t sub_1001DEDEC()
{
  result = 13;
  v2 = 1 << *(*(v0 + 48) + 136);
  if ((v2 & 0x367) == 0)
  {
    if ((v2 & 0x88) != 0)
    {
      if (*(v0 + 56))
      {
        return 13;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      return 8;
    }
  }

  return result;
}

void *sub_1001DEE3C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100367C28);
  v133 = *(v2 - 8);
  v134 = v2;
  __chkstk_darwin(v2);
  v132 = &v101 - v3;
  v128 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_100367C30);
  v130 = *(v5 - 8);
  v131 = v5;
  __chkstk_darwin(v5);
  v129 = &v101 - v6;
  v117 = sub_1000040A8(&qword_100367C38);
  v125 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v115 = &v101 - v9;
  __chkstk_darwin(v10);
  v116 = &v101 - v11;
  __chkstk_darwin(v12);
  v118 = &v101 - v13;
  __chkstk_darwin(v14);
  v119 = &v101 - v15;
  __chkstk_darwin(v16);
  v120 = &v101 - v17;
  __chkstk_darwin(v18);
  v121 = &v101 - v19;
  v124 = sub_1000040A8(&qword_100367C40);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v101 - v20;
  v110 = sub_1000040A8(&qword_100367C48);
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v113 = &v101 - v21;
  v112 = sub_1000040A8(&qword_100367C50);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v101 - v22;
  v101 = sub_1000040A8(&qword_100367C58);
  v106 = *(v101 - 8);
  __chkstk_darwin(v101);
  v105 = &v101 - v23;
  v24 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v24 - 8);
  v135 = &v101 - v25;
  v104 = sub_1000040A8(&qword_100367C60);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v101 - v26;
  type metadata accessor for SystemSettingsModel();
  v27 = swift_allocObject();
  *(v27 + 32) = 0;
  *(v27 + 40) = 33685504;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v27 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v27 + 24) = PassthroughSubject.init()();
  *(v0 + 16) = v27;
  type metadata accessor for OrientationModel();
  v28 = swift_allocObject();
  v147 = 1;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0;
  *(v28 + 104) = 1;
  swift_allocObject();
  *(v28 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v28 + 24) = PassthroughSubject.init()();
  *(v0 + 24) = v28;
  type metadata accessor for StewieModel(0);
  v29 = swift_allocObject();
  sub_1001FB4A4();
  *(v1 + 32) = v29;
  type metadata accessor for TargetModel(0);
  v30 = swift_allocObject();
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = 0;
  *(v30 + 88) = 1;
  v31 = OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
  v32 = type metadata accessor for LinkState(0);
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_allocObject();
  *(v30 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v30 + 24) = PassthroughSubject.init()();
  *(v1 + 40) = v30;
  type metadata accessor for LocationModel();
  v33 = swift_allocObject();
  *(v33 + 32) = 0;
  *(v33 + 40) = 0x1000000;
  swift_allocObject();
  *(v33 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v33 + 24) = PassthroughSubject.init()();
  *(v1 + 48) = v33;
  type metadata accessor for GuidanceModel(0);
  swift_allocObject();
  *(v1 + 56) = sub_1001F3904();
  type metadata accessor for GuidanceMessagesModel();
  v34 = swift_allocObject();
  sub_1001F6EB0();
  *(v1 + 64) = v34;
  type metadata accessor for ConnectionModel(0);
  swift_allocObject();
  *(v1 + 72) = sub_1001EC638();
  type metadata accessor for ConversationModel();
  v35 = swift_allocObject();
  *(v35 + 48) = 0;
  *(v35 + 56) = 0;
  *(v35 + 64) = xmmword_10028F0B0;
  *(v35 + 80) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  swift_allocObject();
  *(v35 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v35 + 24) = PassthroughSubject.init()();
  *(v1 + 80) = v35;
  type metadata accessor for RoadsideAssistanceConversationModel();
  v36 = swift_allocObject();
  *(v36 + 48) = xmmword_10027C560;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 72) = 0;
  *(v36 + 80) = 0;
  *(v36 + 64) = 0;
  *(v36 + 88) = 0;
  swift_allocObject();
  *(v36 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v36 + 24) = PassthroughSubject.init()();
  *(v1 + 88) = v36;
  type metadata accessor for ConnectivityModel();
  swift_allocObject();
  *(v1 + 96) = sub_1001F73AC();
  type metadata accessor for CountryModel();
  v37 = swift_allocObject();
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0;
  *(v37 + 64) = 0;
  swift_allocObject();
  *(v37 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v37 + 24) = PassthroughSubject.init()();
  *(v1 + 104) = v37;
  type metadata accessor for ConnectionClosedModel(0);
  v38 = swift_allocObject();
  sub_1001F9CD8();
  *(v1 + 112) = v38;
  type metadata accessor for PartnerModel();
  v39 = swift_allocObject();
  sub_1001F8D58();
  *(v1 + 120) = v39;
  type metadata accessor for ServiceOutageModel(0);
  v40 = swift_allocObject();
  sub_1001EC244();
  *(v1 + 128) = v40;
  type metadata accessor for ServicePredictionsModel(0);
  v41 = swift_allocObject();
  sub_1001FF068();
  *(v1 + 136) = v41;
  type metadata accessor for DeviceOrientationSource(0);
  swift_allocObject();
  *(v1 + 144) = sub_100194500();
  *(v1 + 152) = [objc_allocWithZone(type metadata accessor for TargetConnectionSource(0)) init];
  type metadata accessor for DeviceUIOrientationSource();
  swift_allocObject();
  *(v1 + 160) = sub_1001138E8();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v42 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v42 = &_swiftEmptySetSingleton;
  }

  *(v1 + 168) = v42;
  swift_allocObject();
  *(v1 + 176) = PassthroughSubject.init()();
  *(v1 + 184) = 0;
  v43 = sub_1000040A8(&unk_100365630);
  swift_allocObject();
  *(v1 + 192) = PassthroughSubject.init()();
  v107 = v43;
  swift_allocObject();
  v44 = PassthroughSubject.init()();
  v144 = v1 + 168;
  *(v1 + 200) = v44;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000F53C(v45, qword_100381C80);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v145 = v49;
    *v48 = 136446210;
    v146 = v1;
    type metadata accessor for ConnectionAssistantModels();

    v50 = String.init<A>(describing:)();
    v52 = v1;
    v53 = sub_10017C9E8(v50, v51, &v145);

    *(v48 + 4) = v53;
    v1 = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "[%{public}s] init", v48, 0xCu);
    sub_100008964(v49);
  }

  v145 = *(*(v1 + 144) + 16);
  v54 = sub_10001D630(0, &qword_10035BA10);

  v137 = v54;
  v55 = static OS_dispatch_queue.main.getter();
  v146 = v55;
  v139 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v56 = *(v139 - 8);
  v143 = *(v56 + 56);
  v140 = v56 + 56;
  v57 = v135;
  v143(v135, 1, 1, v139);
  sub_1000040A8(&qword_100363990);
  v141 = &protocol conformance descriptor for PassthroughSubject<A, B>;
  sub_100009274(&qword_100367C68, &qword_100363990);
  v142 = sub_10002683C();
  v58 = v102;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v57, &unk_10035CF50);

  swift_allocObject();
  swift_weakInit();
  v138 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100009274(&qword_100367C70, &qword_100367C60);
  v136 = v1;

  v59 = v104;
  Publisher<>.sink(receiveValue:)();

  (*(v103 + 8))(v58, v59);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v145 = *(*(v1 + 144) + 24);

  v60 = static OS_dispatch_queue.main.getter();
  v146 = v60;
  v61 = v57;
  v143(v57, 1, 1, v139);
  sub_1000040A8(&unk_100363998);
  sub_100009274(&qword_100367C78, &unk_100363998);
  v62 = v105;
  Publisher.receive<A>(on:options:)();
  v63 = v61;
  sub_100008FA0(v61, &unk_10035CF50);

  swift_allocObject();
  v64 = v136;
  swift_weakInit();
  sub_100009274(&qword_100367C80, &qword_100367C58);
  v65 = v101;
  Publisher<>.sink(receiveValue:)();

  (*(v106 + 8))(v62, v65);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v145 = *(v64[19] + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource_connectionDidChange);

  v66 = static OS_dispatch_queue.main.getter();
  v146 = v66;
  v143(v61, 1, 1, v139);
  sub_1000040A8(&qword_10035E430);
  sub_100009274(&qword_100367C88, &qword_10035E430);
  v67 = v109;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v63, &unk_10035CF50);

  swift_allocObject();
  v68 = v136;
  swift_weakInit();
  sub_100009274(&qword_100367C90, &qword_100367C50);
  v69 = v112;
  Publisher<>.sink(receiveValue:)();

  (*(v111 + 8))(v67, v69);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v145 = *(v68[19] + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource_carrierNamesDidChange);

  v70 = static OS_dispatch_queue.main.getter();
  v146 = v70;
  v143(v63, 1, 1, v139);
  sub_1000040A8(&qword_10035E438);
  sub_100009274(&qword_100367C98, &qword_10035E438);
  v71 = v113;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v63, &unk_10035CF50);

  swift_allocObject();
  v72 = v136;
  swift_weakInit();
  sub_100009274(&qword_100367CA0, &qword_100367C48);
  v73 = v110;
  Publisher<>.sink(receiveValue:)();

  (*(v108 + 8))(v71, v73);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v72[4];
  v75 = v72;
  v145 = *(v72[3] + 24);
  v146 = *(v74 + 24);
  v113 = sub_100009274(&qword_10035CF60, &unk_100365610);
  v76 = v114;
  Publisher.merge(with:)();
  v145 = *(v72[5] + 24);
  v77 = v115;
  v78 = v117;
  Publishers.MergeMany.merge(with:)();
  v79 = *(v125 + 8);
  v79(v76, v78);
  v145 = *(v72[9] + 24);
  v80 = v116;
  Publishers.MergeMany.merge(with:)();
  v79(v77, v78);
  v145 = *(v72[6] + 24);
  v81 = v118;
  Publishers.MergeMany.merge(with:)();
  v79(v80, v78);
  v145 = *(v72[16] + 24);
  v82 = v119;
  Publishers.MergeMany.merge(with:)();
  v79(v81, v78);
  v145 = *(v72[17] + 24);
  v83 = v120;
  Publishers.MergeMany.merge(with:)();
  v79(v82, v78);
  v145 = v72[22];
  v84 = v121;
  Publishers.MergeMany.merge(with:)();
  v79(v83, v78);
  v85 = static OS_dispatch_queue.main.getter();
  v145 = v85;
  v86 = v135;
  v143(v135, 1, 1, v139);
  v143 = sub_100009274(&qword_100367CA8, &qword_100367C38);
  v87 = v122;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v86, &unk_10035CF50);

  v79(v84, v78);
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = swift_allocObject();
  *(v89 + 16) = sub_100204428;
  *(v89 + 24) = v88;
  sub_100009274(&qword_100367CB0, &qword_100367C40);
  v90 = v124;
  Publisher<>.sink(receiveValue:)();

  (*(v123 + 8))(v87, v90);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v145 = *(v75[3] + 24);
  v146 = *(v75[7] + 24);
  Publisher.merge(with:)();
  v91 = v126;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
  v92 = static OS_dispatch_queue.main.getter();
  v145 = v92;
  v93 = v129;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v127 + 8))(v91, v128);
  v79(v84, v78);
  v94 = swift_allocObject();
  swift_weakInit();

  v95 = swift_allocObject();
  *(v95 + 16) = sub_100204468;
  *(v95 + 24) = v94;
  sub_100009274(&qword_100367CB8, &qword_100367C30);
  v96 = v131;
  Publisher<>.sink(receiveValue:)();

  (*(v130 + 8))(v93, v96);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v145 = v75[24];
  sub_100009274(&qword_100361AA0, &unk_100365630);
  v97 = v132;
  Publisher<>.removeDuplicates()();
  sub_100009274(&qword_100367CC0, &qword_100367C28);
  v98 = v134;
  Publisher<>.sink(receiveValue:)();
  v99 = *(v133 + 8);
  v99(v97, v98);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v145 = v75[25];
  Publisher<>.removeDuplicates()();
  Publisher<>.sink(receiveValue:)();
  v99(v97, v98);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v75;
}