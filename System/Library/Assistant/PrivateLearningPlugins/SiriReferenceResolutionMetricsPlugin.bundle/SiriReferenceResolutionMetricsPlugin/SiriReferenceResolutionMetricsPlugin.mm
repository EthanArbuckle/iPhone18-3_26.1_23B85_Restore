id sub_1DE8()
{
  result = [objc_allocWithZone(SiriLinkRRProvisionalLinkEntityPresent) init];
  if (result)
  {
    v2 = result;
    v3 = v0[10];
    v4 = v0[11];
    v5 = sub_D9FC();
    [v2 setSourceBundleId:v5];

    v6 = v0[8];
    v7 = v0[9];
    v8 = sub_D9FC();
    [v2 setLinkEntityType:v8];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E7C()
{
  v0 = sub_D9CC();
  sub_2224(v0, qword_196A8);
  sub_21EC(v0, qword_196A8);
  type metadata accessor for SiriReferenceResolutionMetricsPlugin();
  return sub_D96C();
}

void sub_1ED8(uint64_t a1)
{
  v2 = sub_D72C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_18F20 != -1)
  {
    swift_once();
  }

  v8 = sub_D9CC();
  sub_21EC(v8, qword_196A8);
  v9 = sub_D9BC();
  v10 = sub_DB6C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Emiting Link Entity Reference Resolution Instrumentation.", v11, 2u);
  }

  v12 = [objc_allocWithZone(SiriLinkRRProvisionalSRRLinkMetricClientEvent) init];
  if (v12)
  {
    v13 = v12;
    [v12 setLinkEntityPresent:a1];
    v14 = [objc_opt_self() sharedAnalytics];
    v15 = [v14 defaultMessageStream];

    sub_D71C();
    isa = sub_D70C().super.isa;
    (*(v3 + 8))(v7, v2);
    [v15 emitMessage:v13 isolatedStreamUUID:isa];
  }
}

void sub_2100(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_DC3C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_DBEC();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      sub_1ED8(v4);
    }
  }
}

uint64_t variable initialization expression of SiriReferenceResolutionMetricsPlugin.logger()
{
  type metadata accessor for SiriReferenceResolutionMetricsPlugin();

  return sub_D96C();
}

uint64_t sub_21EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_2224(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_2288()
{
  v1 = [v0 eventData];
  v2 = sub_D6AC();
  v4 = v3;

  v5 = objc_allocWithZone(SISchemaAnyEvent);
  v6 = sub_2BE0(v2, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 unwrap];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 event]) == 0)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v11 unwrap];

  if (!v13)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_2394()
{
  *(v0 + 16) = xmmword_E9F0;
  *(v0 + 32) = [objc_allocWithZone(BMSiriPrivateLearningSELFEventStream) init];
  return v0;
}

uint64_t sub_23D4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_2A5C(&qword_19178, &qword_EA80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_D9EC();
  v15 = [*(v4 + 32) publisherFromStartTime:a2 + -300.0];
  sub_2A5C(&qword_19180, &qword_EA88);
  sub_D78C();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = v4;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  sub_2B34();

  (*(v9 + 8))(v13, v8);
  swift_beginAccess();
  v17 = *(v14 + 16);

  return v17;
}

BOOL sub_2614(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_D72C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v49 - v17;
  [a1 timestamp];
  v20 = v19;
  v21 = a2 + 900.0;
  if (v21 >= v19)
  {
    v22 = [a1 eventBody];
    if (v22)
    {
      v23 = v22;
      v24 = sub_2288();

      if (v24)
      {
        if ([v24 getAnyEventType] == 9)
        {
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            v26 = v25;
            v27 = [v25 target];
            if (v27)
            {
              v28 = v27;
              v29 = [v27 component];

              if (v29 == 1)
              {
                v30 = [v26 source];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v30 component];

                  if (v32 == 3)
                  {
                    v33 = [v26 target];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = [v33 uuid];

                      if (v35)
                      {
                        sub_DB4C();

                        v36 = sub_D6FC();
                        v38 = v37;
                        v50 = *(v10 + 8);
                        v39 = v50(v18, v9);
                        v51 = v36;
                        v53[0] = v36;
                        v53[1] = v38;
                        __chkstk_darwin(v39, v40);
                        *(&v49 - 2) = v53;
                        if (sub_2C98(sub_2E54, (&v49 - 4), a4))
                        {
                          v41 = [v26 source];
                          if (v41)
                          {
                            v42 = v41;
                            v43 = [v41 uuid];

                            if (v43)
                            {
                              sub_DB4C();

                              v43 = sub_D6FC();
                              v45 = v44;
                              v50(v15, v9);
LABEL_19:
                              swift_beginAccess();
                              if (v45)
                              {
                                v46 = *(a5 + 16);
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                v52 = *(a5 + 16);
                                sub_B7A0(v43, v45, v51, v38, isUniquelyReferenced_nonNull_native);
                                *(a5 + 16) = v52;
                              }

                              else
                              {
                                sub_2D48(v51, v38);
                              }

                              swift_endAccess();
                              goto LABEL_23;
                            }
                          }

                          else
                          {
                            v43 = 0;
                          }

                          v45 = 0;
                          goto LABEL_19;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_23:
      }
    }
  }

  return v21 >= v20;
}

uint64_t sub_2A00()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_2A5C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2AA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2ADC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_2B34()
{
  result = qword_19188;
  if (!qword_19188)
  {
    sub_2B98(&qword_19178, &qword_EA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19188);
  }

  return result;
}

uint64_t sub_2B98(uint64_t *a1, uint64_t *a2)
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

id sub_2BE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_D69C().super.isa;
    sub_2E74(a1, a2);
  }

  v6 = [v2 initWithData:isa];

  return v6;
}

uint64_t sub_2C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_DC7C() & 1;
  }
}

BOOL sub_2C98(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2D48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_B674(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v10 = *(*v3 + 24);
  sub_2A5C(&qword_19190, &qword_EA90);
  sub_DC1C(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v16 + 48) + 16 * v7 + 8);

  v12 = (*(v16 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_DC2C();
  *v3 = v16;
  return v13;
}

uint64_t sub_2E74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2E88(a1, a2);
  }

  return a1;
}

uint64_t sub_2E88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2EE0()
{
  sub_6974();
  v0 = sub_D8BC();
  v1 = sub_68A4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_68B8();
  v9 = v8 - v7;
  v10 = sub_2A5C(&qword_19388, &qword_EBD8);
  v11 = sub_690C(v10);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v33 - v19;
  v21 = sub_D90C();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v34 = v20;
    v35 = v17;
    v24 = 0;
    v25 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v36 = v3;
    v26 = (v3 + 8);
    while (v24 < *(v22 + 16))
    {
      v27 = v0;
      (*(v36 + 16))(v9, v25 + *(v36 + 72) * v24, v0);
      v28 = sub_D8AC();
      if (v29)
      {
        if (v28 == 0x69746E655F707061 && v29 == 0xEF657079745F7974)
        {

LABEL_14:

          v3 = v36;
          v20 = v34;
          v0 = v27;
          (*(v36 + 32))(v34, v9, v27);
          v32 = 0;
          v17 = v35;
          goto LABEL_15;
        }

        v31 = sub_DC7C();

        if (v31)
        {
          goto LABEL_14;
        }
      }

      ++v24;
      v0 = v27;
      (*v26)(v9, v27);
      if (v23 == v24)
      {

        v32 = 1;
        v17 = v35;
        v3 = v36;
        v20 = v34;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v32 = 1;
LABEL_15:
    sub_5268(v20, v32, 1, v0);
    sub_5290(v20, v17);
    if (sub_5300(v17, 1, v0) == 1)
    {
      sub_698C(v20);
      sub_698C(v17);
    }

    else
    {
      sub_D89C();
      sub_640C(v20, &qword_19388, &qword_EBD8);
      (*(v3 + 8))(v17, v0);
    }

    sub_6930();
  }
}

uint64_t sub_31E8()
{
  v0 = sub_2A5C(&qword_19388, &qword_EBD8);
  sub_690C(v0);
  v2 = *(v1 + 64);
  sub_6968();
  __chkstk_darwin(v3, v4);
  v6 = &v13 - v5;
  v7 = sub_D90C();
  sub_32F8(v7, v6);

  v8 = sub_D8BC();
  v9 = sub_695C();
  if (sub_5300(v9, v10, v8) == 1)
  {
    sub_640C(v6, &qword_19388, &qword_EBD8);
    return 0;
  }

  else
  {
    v11 = sub_D88C();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v11;
}

uint64_t sub_32F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_D8BC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_5268(a2, v7, 1, v6);
}

void sub_33A0()
{
  sub_6974();
  v0 = sub_D8BC();
  v1 = sub_68A4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_68B8();
  v9 = v8 - v7;
  v10 = sub_2A5C(&qword_19388, &qword_EBD8);
  v11 = sub_690C(v10);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v33 - v19;
  v21 = sub_D90C();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v34 = v20;
    v35 = v17;
    v24 = 0;
    v25 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v36 = v3;
    v26 = (v3 + 8);
    while (v24 < *(v22 + 16))
    {
      v27 = v0;
      (*(v36 + 16))(v9, v25 + *(v36 + 72) * v24, v0);
      v28 = sub_D8AC();
      if (v29)
      {
        if (v28 == 0x64695F6D657469 && v29 == 0xE700000000000000)
        {

LABEL_14:

          v3 = v36;
          v20 = v34;
          v0 = v27;
          (*(v36 + 32))(v34, v9, v27);
          v32 = 0;
          v17 = v35;
          goto LABEL_15;
        }

        v31 = sub_DC7C();

        if (v31)
        {
          goto LABEL_14;
        }
      }

      ++v24;
      v0 = v27;
      (*v26)(v9, v27);
      if (v23 == v24)
      {

        v32 = 1;
        v17 = v35;
        v3 = v36;
        v20 = v34;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v32 = 1;
LABEL_15:
    sub_5268(v20, v32, 1, v0);
    sub_5290(v20, v17);
    if (sub_5300(v17, 1, v0) == 1)
    {
      sub_698C(v20);
      sub_698C(v17);
    }

    else
    {
      sub_D89C();
      sub_640C(v20, &qword_19388, &qword_EBD8);
      (*(v3 + 8))(v17, v0);
    }

    sub_6930();
  }
}

uint64_t sub_36A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_DC7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_DC7C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_37B0(char a1)
{
  sub_DCAC();
  sub_DCBC(a1 & 1);
  return sub_DCCC();
}

uint64_t sub_3804(char a1)
{
  if (a1)
  {
    return 0x65727574616566;
  }

  else
  {
    return 0x7463617265746E69;
  }
}

Swift::Int sub_3864()
{
  v1 = *v0;
  sub_DCAC();
  sub_DCBC(v1);
  return sub_DCCC();
}

uint64_t sub_38B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_36A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_38F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3770();
  *a1 = result;
  return result;
}

uint64_t sub_3920(uint64_t a1)
{
  v2 = sub_654C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_395C(uint64_t a1)
{
  v2 = sub_654C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a4;
  v18[1] = a5;
  v7 = sub_2A5C(&qword_193C8, &qword_EC90);
  sub_68A4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_6968();
  __chkstk_darwin(v12, v13);
  v15 = v18 - v14;
  v16 = a1[4];
  sub_6508(a1, a1[3]);
  sub_654C();
  sub_DCEC();
  v20 = 0;
  sub_DC5C();
  if (!v5)
  {
    v19 = 1;
    sub_DC5C();
  }

  return (*(v9 + 8))(v15, v7);
}

uint64_t sub_3B00(uint64_t *a1)
{
  v3 = sub_2A5C(&qword_193B8, &qword_EC88);
  sub_68A4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_6968();
  __chkstk_darwin();
  v8 = a1[4];
  sub_6508(a1, a1[3]);
  sub_654C();
  sub_DCDC();
  if (!v1)
  {
    v8 = sub_DC4C();
    sub_DC4C();
    v10 = *(v5 + 8);
    v11 = sub_6900();
    v12(v11);
  }

  sub_65A0(a1);
  return v8;
}

uint64_t sub_3CC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_3B00(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_3D18()
{
  sub_6974();
  v2 = v1;
  v3 = sub_D94C();
  v4 = sub_690C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_68B8();
  v8 = sub_2A5C(&qword_19670, &qword_EBE8);
  sub_690C(v8);
  v10 = *(v9 + 64);
  sub_6968();
  __chkstk_darwin(v11, v12);
  v14 = v34 - v13;
  sub_5D9C(v0);
  if (v15 >> 60 == 15)
  {
    sub_D86C();
    sub_695C();
    sub_6930();

    sub_5268(v16, v17, v18, v19);
  }

  else
  {
    v21 = sub_D5FC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_D5EC();
    sub_6370();
    sub_D5DC();

    v24 = v34[3];
    sub_D68C();
    if (v25 >> 60 == 15)
    {
      v26 = sub_6900();
      sub_2E74(v26, v27);

      sub_D86C();
      v28 = sub_695C();
    }

    else
    {
      v34[0] = v24;
      v31 = sub_D86C();
      sub_D93C();
      sub_63C4(&qword_193B0, 255, &type metadata accessor for Siri_Nlu_External_Cdm_NluRequest);
      sub_D95C();
      v32 = sub_6900();
      sub_2E74(v32, v33);

      sub_5268(v14, 0, 1, v31);
      (*(*(v31 - 8) + 32))(v2, v14, v31);
      v28 = v2;
      v29 = 0;
      v30 = v31;
    }

    sub_5268(v28, v29, 1, v30);
    sub_6930();
  }
}

uint64_t sub_4024()
{
  v0 = sub_D9CC();
  sub_2224(v0, qword_196C0);
  sub_21EC(v0, qword_196C0);
  type metadata accessor for SiriReferenceResolutionMetricsPlugin();
  return sub_D96C();
}

uint64_t sub_4080()
{
  sub_D8CC();
  v0 = sub_D8FC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_D8EC();
  qword_196D8 = result;
  return result;
}

void sub_40CC()
{
  sub_6974();
  v0 = sub_D7DC();
  v1 = sub_68A4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_68B8();
  v9 = v8 - v7;
  sub_D85C();
  sub_D7CC();
  (*(v3 + 8))(v9, v0);
  sub_5328();
  v10 = sub_DB9C();

  if (v10[2])
  {
    v11 = v10[4];
    v12 = v10[5];
    v14 = v10[6];
    v13 = v10[7];
    v15 = sub_42A4(v10);
    v17 = v16;
    v19 = v18;

    if (v19)
    {
      sub_DA2C();

      if ((v15 ^ v17) >= 0x4000)
      {
        v20 = sub_6918();
        sub_5E00(v20, v21, v22, v23, v24);
        if ((v25 & 0x100) != 0)
        {
          v26 = sub_6918();
          sub_537C(v26, v27, v28, v29, v30);
        }
      }
    }
  }

  sub_6930();
}

uint64_t sub_42A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_4308(double a1)
{
  v81 = sub_D79C();
  v2 = sub_68A4(v81);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_68B8();
  v84 = sub_D83C();
  v6 = sub_68A4(v84);
  v86 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_68B8();
  v13 = v12 - v11;
  v14 = sub_D7BC();
  v15 = sub_68A4(v14);
  v87 = v16;
  v89 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15, v19);
  sub_68B8();
  v22 = v21 - v20;
  v23 = sub_D81C();
  v24 = sub_68A4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24, v29);
  sub_68B8();
  v32 = v31 - v30;
  v33 = sub_D7FC();
  v34 = sub_68A4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34, v39);
  sub_68B8();
  v42 = v41 - v40;
  v92 = _swiftEmptyArrayStorage;
  sub_40CC();
  v82 = v45;
  v83 = v44;
  v85 = v46;
  if (!v46)
  {
    return 0;
  }

  if (v43)
  {

    return 0;
  }

  sub_D84C();
  sub_D7EC();
  (*(v36 + 8))(v42, v33);
  sub_D80C();
  (*(v26 + 8))(v32, v23);
  v48 = sub_D7AC();
  (*(v87 + 8))(v22, v89);
  v49 = *(v48 + 16);
  if (v49)
  {
    v90 = *(v86 + 16);
    v50 = v48 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v88 = *(v86 + 72);
    v79 = _swiftEmptyArrayStorage;
    v51 = v84;
    while (1)
    {
      v90(v13, v50, v51);
      sub_D82C();
      (*(v86 + 8))(v13, v51);
      if (qword_18F30 != -1)
      {
        swift_once();
      }

      sub_D87C();
      v52 = sub_6948();
      v53(v52);
      v54 = sub_D8DC();
      if (v54)
      {
        break;
      }

LABEL_33:
      v50 += v88;
      if (!--v49)
      {

        v73 = v79;
        goto LABEL_36;
      }
    }

    v55 = v54;
    if (sub_D91C() == 0xD000000000000010 && 0x80000000000100B0 == v56)
    {
    }

    else
    {
      v58 = sub_DC7C();

      if ((v58 & 1) == 0)
      {

LABEL_32:
        v51 = v84;
        goto LABEL_33;
      }
    }

    type metadata accessor for LinkEntityRecord();
    swift_allocObject();

    if (sub_4BF4(v83, v85, v82, v55, a1))
    {
      if (qword_18F28 != -1)
      {
        sub_68C8();
        swift_once();
      }

      v59 = sub_D9CC();
      sub_21EC(v59, qword_196C0);

      v60 = sub_D9BC();
      v61 = sub_DB6C();

      v80 = v60;
      if (os_log_type_enabled(v60, v61))
      {
        v75 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v91[0] = v77;
        *v75 = 136315138;

        v74 = v61;
        v62 = sub_4DCC();
        v64 = v63;

        v65 = sub_7B44(v62, v64, v91);

        *(v75 + 4) = v65;
        _os_log_impl(&dword_0, v80, v74, "Creating linkEntityRecord: %s", v75, 0xCu);
        sub_65A0(v77);
        sub_69A4();
        sub_69A4();
      }

      sub_DAEC();
      if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_DAFC();
      }

      sub_DB0C();

      v79 = v92;
    }

    else
    {
      if (qword_18F28 != -1)
      {
        sub_68C8();
        swift_once();
      }

      v66 = sub_D9CC();
      sub_21EC(v66, qword_196C0);

      v67 = sub_D9BC();
      v68 = sub_DB7C();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v91[0] = v78;
        *v69 = 136315138;
        sub_D92C();
        v76 = v68;

        v70 = sub_DA1C();
        v72 = sub_7B44(v70, v71, v91);

        *(v69 + 4) = v72;
        _os_log_impl(&dword_0, v67, v76, "Failed to create record from: %s", v69, 0xCu);
        sub_65A0(v78);
        sub_69A4();
        sub_69A4();
      }

      else
      {
      }
    }

    goto LABEL_32;
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_36:
  type metadata accessor for NLRequestEntityRecordWrapper();
  result = swift_allocObject();
  *(result + 16) = v83;
  *(result + 24) = v85;
  *(result + 32) = v82;
  *(result + 40) = a1;
  *(result + 48) = v73;
  return result;
}

uint64_t sub_4B74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_4B9C()
{
  sub_4B74();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_4BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  *(v5 + 24) = a2;
  v7 = (v5 + 24);
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 16) = a1;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 96) = a4;

  v8 = sub_31E8();
  if (!v9)
  {

LABEL_9:
    v18 = *v7;

    v19 = *(v5 + 96);

    v20 = *(v5 + 112);

    v21 = *(v5 + 128);

    v22 = *(v5 + 144);

    type metadata accessor for LinkEntityRecord();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v5 + 88) = v9;
  *(v5 + 80) = v8;
  sub_2EE0();
  if (!v11)
  {

LABEL_8:
    v17 = *v7;

    v7 = (v5 + 88);
    goto LABEL_9;
  }

  *(v5 + 72) = v11;
  *(v5 + 64) = v10;
  sub_33A0();
  v13 = v12;
  v15 = v14;

  if (!v15)
  {
    v16 = *v7;

    v7 = (v5 + 72);
    goto LABEL_8;
  }

  *(v5 + 48) = v13;
  *(v5 + 56) = v15;
  return v6;
}

void *sub_4D1C()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return v0;
}

uint64_t sub_4D74()
{
  sub_4D1C();

  return _swift_deallocClassInstance(v0, 152, 7);
}

uint64_t sub_4DCC()
{
  v1 = 7104878;
  sub_DBDC(183);
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x800000000000FFF0;
  sub_DA5C(v10);
  sub_DA5C(v0[1]);
  v11._countAndFlagsBits = 0xD000000000000014;
  v11._object = 0x8000000000010010;
  sub_DA5C(v11);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v12._countAndFlagsBits = sub_DC6C();
  sub_DA5C(v12);

  v13._countAndFlagsBits = 0x736575716572202CLL;
  v13._object = 0xEE003A656D695474;
  sub_DA5C(v13);
  object = v0[2]._object;
  sub_DB1C();
  sub_68DC(", sourceBundleId:");
  sub_DA5C(v0[5]);
  sub_68DC(", linkEntityType:");
  sub_DA5C(v0[4]);
  v14._countAndFlagsBits = 0x6E456B6E696C202CLL;
  v14._object = 0xEF3A644979746974;
  sub_DA5C(v14);
  sub_DA5C(v0[3]);
  sub_68DC(" executionFlowId:");
  if (v0[7]._countAndFlagsBits)
  {
    v3 = v0[6]._object;
    v4 = v0[7]._countAndFlagsBits;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  v15._countAndFlagsBits = v3;
  v15._object = v4;
  sub_DA5C(v15);

  v16._countAndFlagsBits = 0x737261506C6E202CLL;
  v16._object = 0xEC0000003A644965;
  sub_DA5C(v16);
  if (v0[9]._countAndFlagsBits)
  {
    v5 = v0[8]._object;
    v6 = v0[9]._countAndFlagsBits;
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  v17._countAndFlagsBits = v5;
  v17._object = v6;
  sub_DA5C(v17);

  v18._countAndFlagsBits = 0xD000000000000019;
  v18._object = 0x8000000000010090;
  sub_DA5C(v18);
  if (v0[8]._countAndFlagsBits)
  {
    v1 = v0[7]._object;
    v7 = v0[8]._countAndFlagsBits;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v19._countAndFlagsBits = v1;
  v19._object = v7;
  sub_DA5C(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  sub_DA5C(v20);
  return 0;
}

Swift::Int sub_50BC()
{
  sub_DCAC();
  sub_DCBC(v0);
  return sub_DCCC();
}

Swift::Int sub_514C()
{
  sub_DCAC();
  v1 = *v0;
  sub_5090();
  return sub_DCCC();
}

void *sub_51F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2A5C(&qword_193A0, &qword_EBE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_5290(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A5C(&qword_19388, &qword_EBD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5328()
{
  result = qword_19390;
  if (!qword_19390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19390);
  }

  return result;
}

unsigned __int8 *sub_537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_5EDC();

  result = sub_DACC();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_5910(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_DC0C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_5910(uint64_t a1, unint64_t a2)
{
  v2 = sub_597C(sub_5978, 0, a1, a2);
  v6 = sub_59B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_597C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return String.subscript.getter(15, v5 | (v4 << 16));
}

uint64_t sub_59B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_DA3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_DB8C();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_51F8(v9, 0);
  v12 = sub_5B10(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_DA3C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_DC0C();
LABEL_4:

  return sub_DA3C();
}

unint64_t sub_5B10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_5D20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_DAAC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_DC0C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_5D20(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_DA7C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_5D20(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_DABC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_DA8C();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_5D9C(void *a1)
{
  v1 = [a1 json];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_D6AC();

  return v3;
}

uint64_t sub_5E00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_DC0C();
  }

  result = sub_5F34(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_5EDC()
{
  result = qword_19398;
  if (!qword_19398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19398);
  }

  return result;
}

uint64_t sub_5F34(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_5D20(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_DA9C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_5D20(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_5D20(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_DA9C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_6370()
{
  result = qword_193A8;
  if (!qword_193A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_193A8);
  }

  return result;
}

uint64_t sub_63C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_640C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2A5C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_646C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_6478(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_6508(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_654C()
{
  result = qword_193C0;
  if (!qword_193C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_193C0);
  }

  return result;
}

uint64_t sub_65A0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for FSFFeatureSwiftStruct.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FSFFeatureSwiftStruct.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x6750);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_67A0()
{
  result = qword_193D0;
  if (!qword_193D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_193D0);
  }

  return result;
}

unint64_t sub_67F8()
{
  result = qword_193D8;
  if (!qword_193D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_193D8);
  }

  return result;
}

unint64_t sub_6850()
{
  result = qword_193E0;
  if (!qword_193E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_193E0);
  }

  return result;
}

void sub_68DC(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_DA5C(v2);
}

uint64_t sub_698C(uint64_t a1)
{

  return sub_640C(a1, v1, v2);
}

uint64_t sub_69A4()
{
}

uint64_t sub_69BC(unint64_t a1)
{
  v3 = sub_7B20(a1);
  v4 = sub_7B20(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_8044(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_8114(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t SiriReferenceResolutionMetricsPlugin.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_D96C();
  return v3;
}

uint64_t SiriReferenceResolutionMetricsPlugin.init()()
{
  type metadata accessor for SiriReferenceResolutionMetricsPlugin();
  sub_D96C();
  return v0;
}

uint64_t type metadata accessor for SiriReferenceResolutionMetricsPlugin()
{
  result = qword_19430;
  if (!qword_19430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriReferenceResolutionMetricsPlugin.run(context:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v170 = a3;
  v172 = a2;
  v4 = sub_D98C();
  v5 = sub_68A4(v4);
  v173 = v6;
  v174 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_68B8();
  v171 = v11 - v10;
  v12 = sub_2A5C(&qword_19680, &qword_EDB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  sub_85B4();
  v158 = (v15 - v16);
  __chkstk_darwin(v17, v18);
  sub_85C4(&v153 - v19);
  v20 = sub_D75C();
  v21 = sub_68A4(v20);
  v167 = v22;
  v168 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21, v25);
  sub_68B8();
  v165 = v27 - v26;
  v166 = sub_D76C();
  v28 = sub_68A4(v166);
  v164 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28, v32);
  sub_68B8();
  v35 = v34 - v33;
  v36 = sub_2A5C(&unk_193E8, &unk_EDB8);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8, v38);
  sub_85C4(&v153 - v39);
  v169 = sub_D6EC();
  v40 = sub_68A4(v169);
  v162 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40, v44);
  sub_85B4();
  v159 = v45 - v46;
  v49 = __chkstk_darwin(v47, v48);
  v51 = &v153 - v50;
  __chkstk_darwin(v49, v52);
  sub_85C4(&v153 - v53);
  v54 = sub_D9AC();
  v55 = sub_68A4(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  __chkstk_darwin(v55, v60);
  sub_85B4();
  v63 = v61 - v62;
  __chkstk_darwin(v64, v65);
  v67 = &v153 - v66;
  (*(v57 + 104))(&v153 - v66, enum case for PrivateLearningPluginRunContext.maintenance(_:), v54);
  v68 = sub_D99C();
  v69 = v57 + 8;
  v70 = *(v57 + 8);
  v70(v67, v54);
  if ((v68 & 1) == 0)
  {
    (*(v57 + 16))(v63, a1, v54);
    v84 = sub_D9BC();
    v85 = sub_DB5C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v176[0] = v87;
      *v86 = 136315138;
      sub_8368();
      v88 = sub_DC6C();
      v90 = v89;
      v70(v63, v54);
      v91 = sub_7B44(v88, v90, v176);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_0, v84, v85, "Skipping SiriReferenceResolutionMetricsPlugin: context is %s", v86, 0xCu);
      sub_65A0(v87);
      sub_69A4();
      sub_69A4();
    }

    else
    {

      v70(v63, v54);
    }

    v97 = v171;
    sub_85D4();
    v98(v97);
    v172(v97);
    return (*(v63 + 8))(v97, v69);
  }

  v157 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin36SiriReferenceResolutionMetricsPlugin_logger;
  v71 = sub_D9BC();
  v72 = sub_DB6C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "About to start SiriReferenceResolutionMetricsPlugin run", v73, 2u);
    sub_69A4();
  }

  sub_D74C();
  v75 = v167;
  v74 = v168;
  v76 = v165;
  (v167[13])(v165, enum case for Calendar.Component.day(_:), v168);
  sub_D6DC();
  v77 = v163;
  sub_D73C();
  v78 = v77;
  v79 = v162;
  v80 = *(v162 + 8);
  v81 = v169;
  v82 = v162 + 8;
  (v80)(v51, v169);
  v75[1](v76, v74);
  (*(v164 + 8))(v35, v166);
  if (sub_5300(v78, 1, v81) == 1)
  {
    return sub_83C0(v78, &unk_193E8, &unk_EDB8);
  }

  v92 = v161;
  (*(v79 + 32))(v161, v78, v81);
  (*(v79 + 16))(v159, v92, v81);
  v93 = sub_D66C();
  sub_5268(v160, 1, 1, v93);
  v94 = type metadata accessor for MetricsCollector();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  sub_8628();
  v100 = v99;
  v101 = sub_ACD4();
  v102 = 0;
  v103 = v82;
  v114 = v101;
  v163 = v93;
  v164 = v100;
  if (!v101)
  {
    goto LABEL_68;
  }

  v154 = v80;
  v115 = v101 + 64;
  v116 = 1 << *(v101 + 32);
  v117 = -1;
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  v118 = v117 & *(v101 + 64);
  v162 = (v116 + 63) >> 6;

  v119 = 0;
  v120 = _swiftEmptyArrayStorage;
  v155 = v103;
  v121 = &unk_193F8;
  v165 = v114;
  v156 = v114 + 64;
  while (v118)
  {
LABEL_24:
    v123 = *(*(*(v114 + 56) + ((v119 << 9) | (8 * __clz(__rbit64(v118))))) + 48);
    if (v123 >> 62)
    {
      v124 = sub_DC3C();
    }

    else
    {
      v124 = *(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8));
    }

    v125 = v120 >> 62;
    v167 = v102;
    if (v120 >> 62)
    {
      result = sub_DC3C();
    }

    else
    {
      result = *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8));
    }

    v126 = result + v124;
    if (__OFADD__(result, v124))
    {
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
LABEL_78:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v168 = v124;
    if (!result)
    {
      if (v125)
      {
LABEL_36:
        sub_DC3C();
      }

      else
      {
        v127 = v120 & 0xFFFFFFFFFFFFFF8;
LABEL_35:
        v128 = *(v127 + 16);
      }

      result = sub_DBFC();
      v120 = result;
      v127 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_38;
    }

    if (v125)
    {
      goto LABEL_36;
    }

    v127 = v120 & 0xFFFFFFFFFFFFFF8;
    if (v126 > *(&dword_18 + (v120 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      goto LABEL_35;
    }

LABEL_38:
    v118 &= v118 - 1;
    v129 = *(v127 + 16);
    v130 = (*(v127 + 24) >> 1) - v129;
    v131 = v127 + 8 * v129;
    v166 = v127;
    if (v123 >> 62)
    {
      v133 = sub_DC3C();
      if (!v133)
      {
        goto LABEL_52;
      }

      v134 = v133;
      result = sub_DC3C();
      if (v130 < result)
      {
        goto LABEL_76;
      }

      v159 = result;
      v160 = v120;
      if (v134 < 1)
      {
        goto LABEL_77;
      }

      v135 = v131 + 32;
      sub_84F0(&unk_19400, v121, &unk_EDC0);
      for (i = 0; i != v134; ++i)
      {
        sub_2A5C(v121, &unk_EDC0);
        v137 = sub_82F8(v176, i, v123);
        v138 = v121;
        v140 = *v139;

        (v137)(v176, 0);
        *(v135 + 8 * i) = v140;
        v121 = v138;
      }

      v120 = v160;
      v114 = v165;
      v115 = v156;
      v132 = v159;
LABEL_48:

      v102 = v167;
      if (v132 < v168)
      {
        goto LABEL_73;
      }

      if (v132 > 0)
      {
        v141 = *(v166 + 16);
        v142 = __OFADD__(v141, v132);
        v143 = v141 + v132;
        if (v142)
        {
          goto LABEL_74;
        }

        *(v166 + 16) = v143;
      }
    }

    else
    {
      v132 = *(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8));
      if (v132)
      {
        if (v130 < v132)
        {
          goto LABEL_75;
        }

        type metadata accessor for LinkEntityRecord();
        swift_arrayInitWithCopy();
        v114 = v165;
        goto LABEL_48;
      }

LABEL_52:

      v102 = v167;
      v114 = v165;
      if (v168 > 0)
      {
        goto LABEL_73;
      }
    }
  }

  while (1)
  {
    v122 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v122 >= v162)
    {
      break;
    }

    v118 = *(v115 + 8 * v122);
    ++v119;
    if (v118)
    {
      v119 = v122;
      goto LABEL_24;
    }
  }

  v167 = v102;

  v176[0] = _swiftEmptyArrayStorage;
  result = sub_7B20(v120);
  if (result)
  {
    v144 = result;
    if (result < 1)
    {
      goto LABEL_78;
    }

    v145 = 0;
    v168 = v120 & 0xC000000000000001;
    v146 = v120;
    do
    {
      if (v168)
      {
        v147 = sub_DBEC();
      }

      else
      {
        v147 = *(v120 + 8 * v145 + 32);
      }

      v175 = _swiftEmptyArrayStorage;
      v148 = sub_1DE8();
      [v148 setExecutionStage:1];
      [v148 setEntityPresent:1];
      v149 = v148;
      sub_DAEC();
      if (*(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v175 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_DAFC();
      }

      sub_DB0C();
      v150 = sub_1DE8();
      [v150 setExecutionStage:7];
      [v150 setEntityPresent:*(v147 + 128) != 0];
      sub_DAEC();
      if (*(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v175 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_DAFC();
      }

      ++v145;
      sub_DB0C();
      v151 = v175;

      sub_69BC(v151);

      v120 = v146;
    }

    while (v144 != v145);
  }

  sub_2100(v176[0]);

  v81 = v169;
  v80 = v154;
  v102 = v167;
LABEL_68:
  v104 = v158;
  sub_5268(v158, 1, 1, v163);
  v106 = v102;
  sub_93B8();
  if (v102)
  {
    sub_83C0(v104, &qword_19680, &qword_EDB0);

    swift_errorRetain();
    v104 = sub_D9BC();
    v105 = sub_DB7C();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = v80;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v176[0] = v108;
      *v107 = 136315138;
      swift_getErrorValue();
      v109 = sub_DC9C();
      v111 = sub_7B44(v109, v110, v176);

      *(v107 + 4) = v111;
      _os_log_impl(&dword_0, v104, v105, "Failed with %s", v107, 0xCu);
      sub_65A0(v108);
      sub_69A4();
      v80 = v106;
      sub_69A4();
    }

    v112 = v171;
    sub_D97C();
    sub_85D4();
    v113(v112);
    v172(v112);
  }

  else
  {
    sub_83C0(v104, &qword_19680, &qword_EDB0);
    sub_85D4();
    v112 = v171;
    v152(v171);
    v172(v112);
  }

  v106[1](v112, v104);
  return (v80)(v161, v81);
}

uint64_t SiriReferenceResolutionMetricsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin36SiriReferenceResolutionMetricsPlugin_logger;
  v2 = sub_D9CC();
  sub_85A0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t SiriReferenceResolutionMetricsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin36SiriReferenceResolutionMetricsPlugin_logger;
  v2 = sub_D9CC();
  sub_85A0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_7B20(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_DC3C();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t sub_7B44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7C08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_8544(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_65A0(v11);
  return v7;
}

unint64_t sub_7C08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_7D08(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_DC0C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_7D08(uint64_t a1, unint64_t a2)
{
  v4 = sub_7D54(a1, a2);
  sub_7E6C(&off_149E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_7D54(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_DA6C())
  {
    result = sub_51F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_DBCC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_DC0C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_7E6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_7F50(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_7F50(char *result, int64_t a2, char a3, char *a4)
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
    sub_2A5C(&qword_193A0, &qword_EBE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_8044(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_DC3C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_DBFC();
  *v1 = result;
  return result;
}

unint64_t sub_80F0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_8114(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_DC3C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_7B20(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_84AC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_84F0(&unk_194D0, &qword_194C8, &qword_EE28);
        for (i = 0; i != v7; ++i)
        {
          sub_2A5C(&qword_194C8, &qword_EE28);
          v9 = sub_8288(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_8288(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_85E4(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = sub_DBEC();
  }

  *v3 = v7;
  return sub_82F0;
}

uint64_t (*sub_82F8(uint64_t a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  sub_85E4(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = sub_DBEC();
  }

  *v3 = v8;
  return sub_8360;
}

unint64_t sub_8368()
{
  result = qword_193F0;
  if (!qword_193F0)
  {
    sub_D9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_193F0);
  }

  return result;
}

uint64_t sub_83C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2A5C(a2, a3);
  sub_85A0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_841C()
{
  result = sub_D9CC();
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

unint64_t sub_84AC()
{
  result = qword_194C0;
  if (!qword_194C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_194C0);
  }

  return result;
}

uint64_t sub_84F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2B98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_85E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_80E4(a3);

  return sub_80F0(a2, v5, a3);
}

void sub_8628()
{
  sub_C09C();
  v75 = v1;
  v2 = v0;
  v78 = v3;
  v72 = v4;
  v73 = v5;
  v7 = v6;
  v8 = sub_2A5C(&qword_19680, &qword_EDB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v62 - v11;
  v13 = sub_D66C();
  v14 = sub_68A4(v13);
  v74 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_85B4();
  v71 = v19 - v20;
  v23 = __chkstk_darwin(v21, v22);
  v70 = &v62 - v24;
  __chkstk_darwin(v23, v25);
  v69 = &v62 - v26;
  v27 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_logger;
  type metadata accessor for SiriReferenceResolutionMetricsPlugin();
  v65 = v27;
  sub_D96C();
  v28 = (v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlStreamId);
  *v28 = 0xD000000000000014;
  v28[1] = 0x80000000000102C0;
  v68 = v28;
  v29 = (v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlBookmarkFileName);
  *v29 = 0xD000000000000020;
  v29[1] = 0x80000000000102E0;
  v66 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark;
  v67 = v29;
  *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark) = 0;
  v30 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_fromDate;
  v31 = sub_D6EC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v64 = v30;
  v76 = v31;
  v77 = v7;
  v33(v2 + v30, v7);
  type metadata accessor for FlowIdBiomeBackedProvider();
  swift_allocObject();
  v34 = sub_2394();
  v63 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_flowIdLookup;
  *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_flowIdLookup) = v34;
  type metadata accessor for NLRequestEntityRecordWrapper();
  v35 = sub_D9EC();
  v36 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest;
  *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest) = v35;
  v37 = (v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_requestIdForTestingFixtures);
  v38 = v73;
  *v37 = v72;
  v37[1] = v38;
  v39 = sub_D9EC();
  v40 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_testFixtures;
  *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_testFixtures) = v39;
  sub_BB34(v78, v12);
  if (sub_5300(v12, 1, v13) == 1)
  {
    v41 = v74;
    sub_83C0(v12, &qword_19680, &qword_EDB0);
    v73 = type metadata accessor for MetricsCollector();
    v42 = v75;
    sub_8B94();
    v43 = v42;
    if (v42)
    {
      sub_83C0(v78, &qword_19680, &qword_EDB0);
      v44 = *(v32 + 8);
      v45 = v76;
      v44(v77, v76);
      v46 = sub_D9CC();
      sub_85A0(v46);
      (*(v47 + 8))(v2 + v65);
      v44(v2 + v64, v45);
      v48 = *(v2 + v36);

      v49 = v37[1];

      v50 = *(v2 + v40);

      v51 = v68[1];

      v52 = v67[1];

      v53 = *(v2 + v66);
      swift_unknownObjectRelease();
      v54 = *(v2 + v63);

      v55 = *(*v2 + 48);
      v56 = *(*v2 + 52);
      swift_deallocPartialClassInstance();
      goto LABEL_8;
    }

    v60 = v41;
    (*(v41 + 32))(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_bookmarkFolderURL, v70, v13);
  }

  else
  {
    v57 = v74;
    v58 = *(v74 + 32);
    v59 = v69;
    v58(v69, v12, v13);
    v58((v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_bookmarkFolderURL), v59, v13);
    v43 = v75;
    v60 = v57;
  }

  v61 = v71;
  (*(v60 + 16))(v71, v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_bookmarkFolderURL, v13);
  sub_8DEC();
  sub_83C0(v78, &qword_19680, &qword_EDB0);
  (*(v32 + 8))(v77, v76);
  (*(v60 + 8))(v61, v13);
  if (v43)
  {
  }

LABEL_8:
  sub_C064();
}

void sub_8B94()
{
  sub_C09C();
  v1 = sub_D66C();
  v2 = sub_68A4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_85B4();
  v10 = (v8 - v9);
  __chkstk_darwin(v11, v12);
  sub_BF38();
  __chkstk_darwin(v13, v14);
  v16 = v23 - v15;
  v17 = [objc_opt_self() defaultManager];
  v23[0] = 0;
  v18 = [v17 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v23];

  v19 = v23[0];
  if (v18)
  {
    sub_D64C();
    v20 = v19;

    sub_D62C();
    sub_D62C();
    v21 = *(v4 + 8);
    v21(v10, v1);
    sub_D62C();
    v21(v0, v1);
    v21(v16, v1);
  }

  else
  {
    v22 = v23[0];
    sub_D60C();

    swift_willThrow();
  }

  sub_C064();
}

void sub_8DEC()
{
  sub_C09C();
  v78 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_D66C();
  v6 = sub_68A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_85B4();
  __chkstk_darwin(v12, v13);
  v15 = (&v73 - v14);
  v16 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_logger;
  v17 = *(v8 + 16);
  v77 = v4;
  v17(&v73 - v14, v4, v5);
  v18 = sub_D9BC();
  v19 = sub_DB6C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_C000();
    v76 = v8;
    v21 = v20;
    v74 = sub_BFE8();
    v80[0] = v74;
    *v21 = 136315138;
    sub_BF20();
    sub_BED0(v22, v23);
    v24 = sub_DC6C();
    v75 = v16;
    v16 = v2;
    v26 = v25;
    v27 = sub_C044(v76);
    v28(v27);
    v29 = sub_7B44(v24, v26, v80);
    v2 = v16;
    LOBYTE(v16) = v75;

    *(v21 + 4) = v29;
    _os_log_impl(&dword_0, v18, v19, "Loading bookmarks from: %s", v21, 0xCu);
    sub_65A0(v74);
    sub_69A4();
    sub_69A4();
  }

  else
  {

    v30 = sub_C044(v8);
    v31(v30);
  }

  v32 = *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlBookmarkFileName);
  v33 = *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlBookmarkFileName + 8);
  sub_D63C();
  v34 = v78;
  v35 = sub_D67C();
  if (!v34)
  {
    v42 = v36;
    v78 = v2;
    v43 = v35;
    v44 = sub_BFD0();
    v15(v44);
    v45 = objc_opt_self();
    v46 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
    sub_DB3C();

    sub_BFD0();
    v47 = v43;
    isa = sub_DB2C().super.isa;

    v49 = sub_D69C().super.isa;
    v80[0] = 0;
    v50 = [v45 unarchivedObjectOfClasses:isa fromData:v49 error:v80];

    v51 = v42;
    if (!v50)
    {
      v70 = v80[0];
      sub_D60C();

      swift_willThrow();
      sub_2E88(v47, v42);
      goto LABEL_26;
    }

    v52 = v47;
    v53 = v80[0];
    sub_DBAC();
    swift_unknownObjectRelease();
    sub_2A5C(&qword_19698, qword_EED0);
    if (swift_dynamicCast())
    {
      v54 = v79;
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        v57 = v16;
        swift_unknownObjectRetain();
        v58 = [v56 streamId];
        v59 = sub_DA0C();
        v61 = v60;

        v62 = v78;
        if (v59 == *(v78 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlStreamId) && v61 == *(v78 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlStreamId + 8))
        {
        }

        else
        {
          v64 = sub_DC7C();

          if ((v64 & 1) == 0)
          {
            swift_unknownObjectRelease();
            v65 = v62 + v57;
            v66 = sub_D9BC();
            v67 = sub_DB7C();
            if (sub_BF4C(v67))
            {
              v68 = sub_C018();
              *v68 = 0;
              v69 = "nlRequestBiomeBookmark using incorrect streamId";
LABEL_21:
              _os_log_impl(&dword_0, v66, v65, v69, v68, 2u);
              sub_69A4();
              goto LABEL_22;
            }

            goto LABEL_22;
          }
        }

        sub_2E88(v52, v51);
        swift_unknownObjectRelease();
        v72 = *(v62 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark);
        *(v62 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark) = v54;
        goto LABEL_25;
      }
    }

    v65 = v78 + v16;
    v66 = sub_D9BC();
    v71 = sub_DB7C();
    if (sub_BF4C(v71))
    {
      v68 = sub_C018();
      *v68 = 0;
      v69 = "Failed to convert nlRequestBiomeBookmark to BMStoreBookmark";
      goto LABEL_21;
    }

LABEL_22:
    sub_2E88(v52, v51);

LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v37 = sub_BFD0();
  v15(v37);
  v38 = sub_D9BC();
  v39 = sub_DB5C();
  if (sub_BF4C(v39))
  {
    *sub_C018() = 0;
    sub_BF68(&dword_0, v40, v41, "No NLRequest Bookmark to load");
    sub_69A4();
  }

LABEL_26:
  sub_C064();
}

void sub_93B8()
{
  sub_C09C();
  v3 = v1;
  v81 = v0;
  v5 = v4;
  v6 = sub_2A5C(&qword_19680, &qword_EDB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = v77 - v9;
  v11 = sub_D66C();
  v12 = sub_68A4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_85B4();
  v20 = v18 - v19;
  v23 = __chkstk_darwin(v21, v22);
  v25 = v77 - v24;
  __chkstk_darwin(v23, v26);
  sub_BF38();
  __chkstk_darwin(v27, v28);
  v30 = v77 - v29;
  sub_BB34(v5, v10);
  if (sub_5300(v10, 1, v11) != 1 || (sub_83C0(v10, &qword_19680, &qword_EDB0), type metadata accessor for MetricsCollector(), sub_8B94(), v10 = v2, !v1))
  {
    (*(v14 + 32))(v30, v10, v11);
    v31 = [objc_allocWithZone(NSFileManager) init];
    sub_D61C(v32);
    v34 = v33;
    v82[0] = 0;
    v35 = [v31 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v82];

    v36 = v82[0];
    if (v35)
    {
      v80 = v20;
      v37 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_logger;
      (*(v14 + 16))(v25, v30, v11);
      v38 = v36;
      v39 = v81;
      v77[1] = v37;
      v40 = sub_D9BC();
      v41 = sub_DB7C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = sub_C000();
        v78 = v14;
        v43 = v42;
        v77[0] = sub_BFE8();
        v82[0] = v77[0];
        *v43 = 136315138;
        sub_BF20();
        sub_BED0(v44, v45);
        v46 = sub_DC6C();
        v48 = v47;
        v49 = sub_C030(v78);
        v50(v49);
        v51 = sub_7B44(v46, v48, v82);
        v39 = v81;

        *(v43 + 4) = v51;
        _os_log_impl(&dword_0, v40, v41, "Saving bookmarks to: %s", v43, 0xCu);
        sub_65A0(v77[0]);
        sub_69A4();
        sub_69A4();
      }

      else
      {

        v56 = sub_C030(v14);
        v57(v56);
      }

      v58 = *(v39 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark);
      v59 = v80;
      if (v58)
      {
        v60 = objc_opt_self();
        v82[0] = 0;
        swift_unknownObjectRetain();
        v61 = [v60 archivedDataWithRootObject:v58 requiringSecureCoding:1 error:v82];
        v62 = v82[0];
        if (!v61)
        {
          v74 = v62;
          sub_D60C();

          swift_willThrow();
          swift_unknownObjectRelease();
          v75 = sub_BFDC();
          v79(v75);
          goto LABEL_18;
        }

        v63 = sub_D6AC();
        v65 = v64;

        v66 = *(v81 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlBookmarkFileName);
        v67 = *(v81 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlBookmarkFileName + 8);
        sub_D62C();
        sub_D6BC();
        if (v3)
        {
          sub_2E88(v63, v65);
          swift_unknownObjectRelease();
          v68 = v79;
          (v79)(v59, v11);
          v69 = sub_BFDC();
          v68(v69);
          goto LABEL_18;
        }

        sub_2E88(v63, v65);
        swift_unknownObjectRelease();
        v73 = v79;
        (v79)(v59, v11);
      }

      else
      {
        v70 = sub_D9BC();
        v71 = sub_DB5C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = sub_C018();
          *v72 = 0;
          _os_log_impl(&dword_0, v70, v71, "No NLRequest Bookmark to save", v72, 2u);
          sub_69A4();
        }

        v73 = v79;
      }

      v76 = sub_BFDC();
      v73(v76);
      goto LABEL_18;
    }

    v52 = v82[0];
    sub_D60C();

    swift_willThrow();
    v53 = *(v14 + 8);
    v54 = sub_BFDC();
    v55(v54);
  }

LABEL_18:
  sub_C064();
}

void sub_9980()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest;
  sub_C058();
  swift_beginAccess();
  v3 = *(v0 + v2);

  v5 = sub_9DBC(v4);

  v6 = sub_A000(v5);
  v8 = v7;
  v9 = sub_A044(v5);
  v11 = v10;

  if (v8 & 1) != 0 || (v11)
  {
    v12 = sub_D9BC();
    v13 = sub_DB7C();
    if (sub_BF4C(v13))
    {
      *sub_C018() = 0;
      sub_BF68(&dword_0, v14, v15, "Unable to calculate request times");
      sub_69A4();
    }

    return;
  }

  v16 = *&v9;
  v17 = *(v1 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_flowIdLookup);
  v18 = *(v1 + v2);

  v20 = sub_A088(v19);
  v21 = sub_23D4(v20, *&v6, v16);

  v22 = *(v1 + v2);
  v24 = *(v22 + 64);
  v23 = v22 + 64;
  v25 = *(v22 + 32);
  sub_BFB4();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;

  v31 = 0;
  v55 = v22;
  v56 = v21;
  v54 = v22 + 64;
  while (v28)
  {
    v32 = v28;
LABEL_13:
    v28 = (v32 - 1) & v32;
    if (*(v21 + 16))
    {
      v34 = __clz(__rbit64(v32)) | (v31 << 6);
      v35 = (*(v22 + 48) + 16 * v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(*(v22 + 56) + 8 * v34);

      v39 = sub_B674(v36, v37);
      if (v40)
      {
        v57 = v28;
        v58 = v38;
        v41 = (*(v21 + 56) + 16 * v39);
        v42 = *v41;
        v43 = v41[1];

        v44 = sub_D9BC();
        v45 = sub_DB6C();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v46 = 136315394;
          *(v46 + 4) = sub_7B44(v42, v43, &v59);
          *(v46 + 12) = 2080;
          v47 = sub_7B44(v36, v37, &v59);

          *(v46 + 14) = v47;
          _os_log_impl(&dword_0, v44, v45, "Found flowId: %s for orchRequestId %s", v46, 0x16u);
          swift_arrayDestroy();
          sub_69A4();
          sub_69A4();
        }

        else
        {
        }

        v48 = *(v58 + 48);
        if (v48 >> 62)
        {
          if (v48 < 0)
          {
            v53 = *(v58 + 48);
          }

          v49 = sub_DC3C();
          if (!v49)
          {
LABEL_31:

            goto LABEL_32;
          }
        }

        else
        {
          v49 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
          if (!v49)
          {
            goto LABEL_31;
          }
        }

        if (v49 < 1)
        {
          goto LABEL_35;
        }

        v50 = 0;
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v51 = sub_DBEC();
          }

          else
          {
            v51 = *(v48 + 8 * v50 + 32);
          }

          ++v50;
          v52 = *(v51 + 112);
          *(v51 + 104) = v42;
          *(v51 + 112) = v43;
        }

        while (v49 != v50);

LABEL_32:
        v22 = v55;
        v21 = v56;
        v23 = v54;
        v28 = v57;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {

      return;
    }

    v32 = *(v23 + 8 * v33);
    ++v31;
    if (v32)
    {
      v31 = v33;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_9DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_BBA4(0, v1, 0);
  result = sub_BE84(a1);
  v5 = result;
  v7 = v6;
  v8 = v24;
  v9 = 0;
  v10 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v5 < 1 << *(a1 + 32))
    {
      v11 = v5 >> 6;
      if ((*(v10 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_24;
      }

      v12 = *(*(*(a1 + 56) + 8 * v5) + 40);
      v14 = *(&_swiftEmptyArrayStorage + 2);
      v13 = *(&_swiftEmptyArrayStorage + 3);
      if (v14 >= v13 >> 1)
      {
        v23 = v4;
        result = sub_BBA4((v13 > 1), v14 + 1, 1);
        v4 = v23;
        v10 = a1 + 64;
        v8 = v24;
      }

      *(&_swiftEmptyArrayStorage + 2) = v14 + 1;
      *(&_swiftEmptyArrayStorage + v14 + 4) = v12;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_25;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 72 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_BEC4(v5, v7, v4 & 1);
            v10 = a1 + 64;
            v8 = v24;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_BEC4(v5, v7, v4 & 1);
        v10 = a1 + 64;
        v8 = v24;
      }

LABEL_18:
      if (++v9 == v8)
      {
        return &_swiftEmptyArrayStorage;
      }

      v4 = 0;
      v7 = *(a1 + 36);
      v5 = v15;
      if (v15 < 0)
      {
        break;
      }
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
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_A000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_A044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void *sub_A088(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_B5F8(*(a1 + 16), 0);
  v4 = sub_BD20(&v6, v3 + 4, v2, a1);
  sub_BE7C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_A118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_B674(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

id sub_A168()
{
  v2 = v0;
  v3 = sub_D66C();
  v4 = sub_68A4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2A5C(&qword_19680, &qword_EDB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  sub_85B4();
  v17 = v15 - v16;
  __chkstk_darwin(v18, v19);
  sub_BF38();
  __chkstk_darwin(v20, v21);
  v23 = &v36 - v22;
  v24 = [objc_opt_self() getStreamURL];
  if (v24)
  {
    v25 = v24;
    sub_D64C();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_5268(v1, v26, 1, v3);
  sub_BAC4(v1, v23);
  sub_BB34(v23, v17);
  if (sub_5300(v17, 1, v3) == 1)
  {
    sub_83C0(v23, &qword_19680, &qword_EDB0);
    sub_83C0(v17, &qword_19680, &qword_EDB0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v17, v3);
    v28 = objc_opt_self();
    v29 = sub_D65C();
    v31 = sub_BCC4(v29, v30, v28);
    v32 = v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlStreamId;
    v33 = *(v2 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlStreamId);
    v34 = *(v32 + 8);
    objc_allocWithZone(BMStoreStream);

    v27 = sub_B594(v33, v34, v31);
    (*(v6 + 8))(v11, v3);
    sub_83C0(v23, &qword_19680, &qword_EDB0);
  }

  return v27;
}

uint64_t sub_A3FC(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  v5 = a1[3];
  v6 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest;
  sub_C058();
  swift_beginAccess();
  v7 = *(v1 + v6);

  v8 = sub_A118(v4, v5, v7);

  if (v8)
  {
    if (a1[4] >= *(v8 + 32))
    {
      sub_C07C();

      v9 = *(v2 + v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_BF88(isUniquelyReferenced_nonNull_native);
      *(v2 + v6) = v14;
      swift_endAccess();
    }
  }

  else
  {
    sub_C07C();

    v12 = *(v2 + v6);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_BF88(v13);
    *(v2 + v6) = v14;
    return swift_endAccess();
  }
}

id sub_A4F4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_D6EC();
  v6 = sub_68A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_A168();
  if (result)
  {
    v15 = result;
    sub_D6CC();
    v16 = [v15 publisherFromStartTime:?];
    v50 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark;
    v51 = v16;
    v17 = *(v1 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark);
    v52 = v15;
    if (v17)
    {
      swift_unknownObjectRetain();
      v18 = sub_D9BC();
      v19 = sub_DB5C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = sub_C000();
        v49 = sub_BFE8();
        aBlock = v49;
        *v20 = 136315138;
        v21 = [v17 description];
        v22 = sub_DA0C();
        v24 = v23;

        v25 = sub_7B44(v22, v24, &aBlock);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_0, v18, v19, "Reading stream with %s", v20, 0xCu);
        sub_65A0(v49);
        sub_69A4();
        sub_69A4();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v8 + 16))(v13, a1, v5);
      v26 = sub_D9BC();
      v27 = sub_DB5C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = sub_C000();
        v49 = v2;
        v29 = v28;
        v48 = sub_BFE8();
        aBlock = v48;
        *v29 = 136315138;
        sub_BED0(&qword_19668, &type metadata accessor for Date);
        v30 = sub_DC6C();
        v32 = v31;
        v33 = *(v8 + 8);
        v34 = sub_BFD0();
        v35(v34);
        v36 = sub_7B44(v30, v32, &aBlock);

        *(v29 + 4) = v36;
        _os_log_impl(&dword_0, v26, v27, "nlRequestBiomeBookmark nil. Reading stream from date: %s", v29, 0xCu);
        sub_65A0(v48);
        sub_69A4();
        sub_69A4();
      }

      else
      {

        v37 = *(v8 + 8);
        v38 = sub_BFD0();
        v39(v38);
      }
    }

    v40 = *(v3 + v50);
    v57 = sub_B56C;
    v58 = v3;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_AA04;
    v56 = &unk_14B68;
    v41 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v57 = sub_B58C;
    v58 = v3;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_AC6C;
    v56 = &unk_14B90;
    v42 = _Block_copy(&aBlock);

    v43 = v51;
    v44 = [v51 sinkWithBookmark:v40 completion:v41 receiveInput:v42];

    _Block_release(v42);
    _Block_release(v41);

    swift_unknownObjectRelease();
    v45 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest;
    sub_C058();
    swift_beginAccess();
    v46 = *(v3 + v45);
  }

  return result;
}

uint64_t sub_A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark);
  *(a3 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_AA04(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_AA8C(void *a1)
{
  v2 = sub_2A5C(&qword_19670, &qword_EBE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v18 - v5;
  v7 = sub_D86C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 eventBody];
  if (!v13)
  {
    sub_5268(v6, 1, 1, v7);
    return sub_83C0(v6, &qword_19670, &qword_EBE8);
  }

  v14 = v13;
  sub_3D18();

  if (sub_5300(v6, 1, v7) == 1)
  {
    return sub_83C0(v6, &qword_19670, &qword_EBE8);
  }

  (*(v8 + 32))(v12, v6, v7);
  [a1 timestamp];
  v16 = sub_4308(v15);
  if (v16)
  {
    sub_A3FC(v16);
  }

  return (*(v8 + 8))(v12, v7);
}

void sub_AC6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_ACD4()
{
  v2 = v0;
  result = sub_A4F4(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_fromDate);
  if (!v1)
  {
    if (result)
    {
      v4 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_logger;

      v5 = sub_D9BC();
      v6 = sub_DB5C();

      v58 = v4;
      v59 = v2;
      if (os_log_type_enabled(v5, v6))
      {
        v7 = sub_C000();
        v8 = sub_BFE8();
        v62[0] = v8;
        *v7 = 136315138;
        type metadata accessor for NLRequestEntityRecordWrapper();
        v9 = sub_D9DC();
        v11 = sub_7B44(v9, v10, v62);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v5, v6, "Found salientLinkEntities: %s", v7, 0xCu);
        sub_65A0(v8);
        v2 = v59;
        sub_69A4();
        sub_69A4();
      }

      sub_9980();

      v16 = sub_D9BC();
      v17 = sub_DB6C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = sub_C000();
        v19 = sub_BFE8();
        v62[0] = v19;
        *v18 = 136315138;
        type metadata accessor for NLRequestEntityRecordWrapper();
        v20 = sub_D9DC();
        v22 = v21;

        v23 = v20;
        v4 = v58;
        v24 = sub_7B44(v23, v22, v62);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_0, v16, v17, "salientLinkEntities after FlowId lookup: %s", v18, 0xCu);
        sub_65A0(v19);
        v2 = v59;
        sub_69A4();
        sub_69A4();
      }

      else
      {
      }

      v25 = sub_D9BC();
      v26 = sub_DB6C();
      if (sub_BF4C(v26))
      {
        v27 = sub_C018();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, (v2 + v4), "After processing:", v27, 2u);
        sub_69A4();
      }

      v28 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest;
      sub_C058();
      swift_beginAccess();
      v53 = v28;
      v29 = *(v2 + v28);
      v31 = v29 + 64;
      v30 = *(v29 + 64);
      v32 = *(v29 + 32);
      sub_BFB4();
      v35 = v34 & v33;
      v37 = (v36 + 63) >> 6;

      v38 = 0;
      v55 = v29 + 64;
      v56 = v29;
      v54 = v37;
      while (v35)
      {
LABEL_20:
        result = *(*(v29 + 56) + ((v38 << 9) | (8 * __clz(__rbit64(v35)))));
        v40 = *(result + 48);
        v57 = v40;
        if (v40 >> 62)
        {
          v51 = result;
          v40 = *(result + 48);
          v41 = sub_DC3C();
          result = v51;
        }

        else
        {
          v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
        }

        v35 &= v35 - 1;
        if (v41)
        {
          if (v41 < 1)
          {
            goto LABEL_36;
          }

          v60 = v40 & 0xC000000000000001;

          v42 = 0;
          v61 = v41;
          do
          {
            if (v60)
            {
              sub_BFDC();
              sub_DBEC();
            }

            else
            {
              v43 = *(v40 + 8 * v42 + 32);
            }

            v44 = sub_D9BC();
            v45 = sub_DB6C();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = sub_C000();
              v47 = sub_BFE8();
              v63 = v47;
              *v46 = 136315138;
              v48 = sub_4DCC();
              v50 = sub_7B44(v48, v49, &v63);

              *(v46 + 4) = v50;
              _os_log_impl(&dword_0, v44, v45, "%s", v46, 0xCu);
              sub_65A0(v47);
              v40 = v57;
              sub_69A4();
              v2 = v59;
              sub_69A4();
            }

            else
            {
            }

            ++v42;
          }

          while (v61 != v42);

          v31 = v55;
          v29 = v56;
          v37 = v54;
        }
      }

      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {

          v52 = *(v2 + v53);
        }

        v35 = *(v31 + 8 * v39);
        ++v38;
        if (v35)
        {
          v38 = v39;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
      v12 = sub_D9BC();
      v13 = sub_DB5C();
      if (sub_BF4C(v13))
      {
        *sub_C018() = 0;
        sub_BF68(&dword_0, v14, v15, "Found no salientLinkEntities. Exiting");
        sub_69A4();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_B248()
{
  v1 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_logger;
  v2 = sub_D9CC();
  sub_85A0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_fromDate;
  v5 = sub_D6EC();
  sub_85A0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_entitiesByRequest);

  v8 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_requestIdForTestingFixtures + 8);

  v9 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_testFixtures);

  v10 = OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_bookmarkFolderURL;
  v11 = sub_D66C();
  sub_85A0(v11);
  (*(v12 + 8))(v0 + v10);
  v13 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlStreamId + 8);

  v14 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlBookmarkFileName + 8);

  v15 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_nlRequestBiomeBookmark);
  swift_unknownObjectRelease();
  v16 = *(v0 + OBJC_IVAR____TtC36SiriReferenceResolutionMetricsPlugin16MetricsCollector_flowIdLookup);

  return v0;
}

uint64_t sub_B380()
{
  sub_B248();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MetricsCollector()
{
  result = qword_19508;
  if (!qword_19508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B42C()
{
  result = sub_D9CC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_D6EC();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_D66C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_B574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_B594(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_D9FC();

  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:a3];

  return v6;
}

void *sub_B5F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2A5C(&qword_19688, &qword_EEC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_B674(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_DCAC();
  sub_DA4C();
  v6 = sub_DCCC();

  return sub_B6EC(a1, a2, v6);
}

unint64_t sub_B6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_DC7C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_B674(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_2A5C(&qword_19190, &qword_EA90);
  if (!sub_DC1C(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_B674(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_DC8C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_BA30(v18, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_B8F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_B674(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_2A5C(&qword_19678, &unk_EEB0);
  if (!sub_DC1C(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_B674(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_DC8C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_BA7C(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_BA30(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_BA7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_BAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A5C(&qword_19680, &qword_EDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A5C(&qword_19680, &qword_EDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_BBA4(char *a1, int64_t a2, char a3)
{
  result = sub_BBC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_BBC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2A5C(&qword_19690, &qword_EEC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

id sub_BCC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_D9FC();

  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath:v4];

  return v5;
}

uint64_t sub_BD20(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_BE84(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_DBBC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_BEC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_BED0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_BF4C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_BF68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_BF88(char a1)
{
  v8 = *(v1 + v5);

  return sub_B8F4(v4, v2, v3, a1);
}

uint64_t sub_BFE8()
{

  return swift_slowAlloc();
}

uint64_t sub_C000()
{

  return swift_slowAlloc();
}

uint64_t sub_C018()
{

  return swift_slowAlloc();
}

uint64_t sub_C030@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 120) = *(a1 + 8);
  return result;
}

uint64_t sub_C044@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  v3 = *(a1 + 8);
  return result;
}

uint64_t sub_C07C()
{

  return swift_beginAccess();
}

uint64_t SiriLinkRRProvisionalLinkEntityPresentReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v31 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v31 & 0x7F) << v6;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v32 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v32 & 0x7F) << v24;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_51;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_51:
        [a1 setExecutionStage:v30];
        continue;
      }

      if (v14 == 4)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_47;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_47:
        [a1 setEntityPresent:v22];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setSourceBundleId:v15];
        goto LABEL_36;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setLinkEntityType:v15];
LABEL_36:

        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkRRProvisionalSRRLinkMetricClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = objc_alloc_init(SiriLinkRRProvisionalLinkEntityPresent);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SiriLinkRRProvisionalLinkEntityPresentReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLinkEntityPresent:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}