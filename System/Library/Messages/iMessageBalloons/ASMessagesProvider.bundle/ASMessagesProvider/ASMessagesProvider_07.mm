unint64_t sub_D28D4()
{
  result = qword_944070;
  if (!qword_944070)
  {
    sub_760AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944070);
  }

  return result;
}

uint64_t sub_D292C()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_762840();
  sub_768880();
  v4 = v7[1];
  sub_762830();
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v5 = sub_768F30();

  return v5;
}

id UIView.withAccessibilityIdentifier(_:)()
{
  v1 = v0;
  v2 = sub_769210();
  [v1 setAccessibilityIdentifier:v2];

  return v1;
}

double sub_D2AAC(int a1, int a2, int a3, int a4, int a5, id a6, double a7)
{
  v8 = [a6 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_5DF100(v9, a7);
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_D2BCC@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v4 = sub_765EB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_951340);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_BD88(&qword_9440E0);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - v15;
  a1(v14);
  v17 = sub_D3A1C(&qword_9440E8, &type metadata accessor for ActivityFeedPlatterView);
  sub_768100();
  (*(v5 + 8))(v7, v4);
  v18 = sub_768900();
  v34 = v4;
  v35 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_7680D0();
  (*(v9 + 8))(v11, v8);
  v34 = v8;
  v35 = v18;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v32;
  v21 = v30;
  sub_7680E0();
  (*(v31 + 8))(v16, v21);
  sub_75A110();
  sub_768ED0();
  v22 = v34;
  sub_D3A1C(&unk_9440F0, &type metadata accessor for ArtworkLoader);
  v23 = sub_767C20();
  v24 = (v20 + *(sub_BD88(&unk_951330) + 36));
  *v24 = v23;
  v24[1] = v22;
  KeyPath = swift_getKeyPath();
  v26 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_flowPreview);
  v27 = (v20 + *(sub_BD88(&qword_9440D0) + 36));
  *v27 = KeyPath;
  v27[1] = v26;
}

uint64_t sub_D2FA8@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v27[1] = a2;
  v5 = sub_BD88(&qword_943AB8);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_BD88(&qword_943AB0);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_BD88(&qword_943AA8);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v27 - v13;
  a1(v12);
  v15 = sub_16194(&qword_943AC0, &qword_943AB8);
  sub_768100();
  sub_10A2C(v7, &qword_943AB8);
  v16 = sub_768900();
  v33 = v5;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_7680D0();
  (*(v28 + 8))(v10, v8);
  v33 = v8;
  v34 = v16;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v31;
  sub_7680E0();
  (*(v29 + 8))(v14, v18);
  sub_75A110();
  sub_768ED0();
  v20 = v33;
  sub_D3A1C(&unk_9440F0, &type metadata accessor for ArtworkLoader);
  v21 = sub_767C20();
  v22 = (v19 + *(sub_BD88(&qword_943AA0) + 36));
  *v22 = v21;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v24 = *(v32 + OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_flowPreview);
  v25 = (v19 + *(sub_BD88(&qword_943A88) + 36));
  *v25 = KeyPath;
  v25[1] = v24;
}

uint64_t sub_D3358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_767D90();
  *a1 = result;
  return result;
}

uint64_t sub_D33B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_9440C8);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_BD88(&unk_951310);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  __chkstk_darwin(v19);
  v21 = &v25 - v20;
  v26 = sub_765EE0();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761C20();
  sub_761BE0();
  sub_761C10();
  sub_761C00();
  sub_761BF0();
  sub_761BD0();
  v34 = v23;
  v35 = v28;
  v36 = a3;
  v37 = v21;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  v41 = v9;
  v29 = sub_D3794;
  v30 = &v33;
  v31 = a3;
  v32 = v28;
  sub_BD88(&qword_9440D0);
  sub_D37B4();
  sub_767F90();
  sub_767FF0();
  v42[3] = v4;
  v42[4] = sub_16194(&unk_951370, &qword_9440C8);
  sub_B1B4(v42);
  sub_767F80();
  (*(v27 + 8))(v6, v4);
  sub_769AE0();
  sub_10A2C(v9, &unk_951310);
  sub_10A2C(v12, &unk_951310);
  sub_10A2C(v15, &unk_951310);
  sub_10A2C(v18, &unk_951310);
  sub_10A2C(v21, &unk_951310);
  return (*(v25 + 8))(v23, v26);
}

unint64_t sub_D37B4()
{
  result = qword_951320;
  if (!qword_951320)
  {
    sub_133D8(&qword_9440D0);
    sub_D386C();
    sub_16194(&qword_951360, &qword_943AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951320);
  }

  return result;
}

unint64_t sub_D386C()
{
  result = qword_9440D8;
  if (!qword_9440D8)
  {
    sub_133D8(&unk_951330);
    sub_133D8(&qword_9440E0);
    sub_133D8(&unk_951340);
    sub_768900();
    sub_765EB0();
    sub_D3A1C(&qword_9440E8, &type metadata accessor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_16194(&unk_951350, &qword_943AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9440D8);
  }

  return result;
}

uint64_t sub_D3A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D3A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_767D90();
  *a1 = result;
  return result;
}

uint64_t sub_D3B24@<X0>(uint64_t a1@<X2>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  __chkstk_darwin(v15);
  v17 = v30 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong collectionView];

    if (v20)
    {
      v21 = [v20 indexPathForItemAtPoint:{a3, a4}];
      if (v21)
      {
        v22 = v21;
        sub_757590();

        v30[1] = a1;
        v31 = *(v9 + 32);
        v31(v17, v14, v8);
        isa = sub_757550().super.isa;
        v24 = [v20 cellForItemAtIndexPath:isa];
        v30[0] = v24;

        (*(v9 + 16))(v11, v17, v8);
        swift_getObjectType();
        v25 = v24;
        v26 = sub_760C30();

        (*(v9 + 8))(v17, v8);
        v31(a2, v11, v8);
        v27 = type metadata accessor for PreviewItem();
        *&a2[*(v27 + 20)] = v30[0];
        *&a2[*(v27 + 24)] = v26;
        return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
      }
    }
  }

  v29 = type metadata accessor for PreviewItem();
  return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
}

uint64_t sub_D3E28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v5 = sub_BD88(&unk_9442C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_getObjectType();
    sub_760C40();
    ObjectType = sub_760C20();
    v14 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      v33[1] = 0;
      v33[2] = 0;
    }

    v33[0] = v14;
    v33[3] = ObjectType;
    v18 = sub_760C50();
    sub_10A2C(v33, &unk_93FBD0);
    if (v18)
    {
      v27 = v12;
      v28 = v7;

      v19 = sub_763330();
      v20 = v19;
      v33[0] = _swiftEmptyArrayStorage;
      v29 = v10;
      v30 = a2;
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
LABEL_27:
        v22 = sub_76A860();
      }

      else
      {
        v22 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      }

      v23 = 0;
      v31 = _swiftEmptyArrayStorage;
      while (v22 != v23)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = sub_76A770();
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_26;
          }

          v24 = *(v20 + 8 * v23 + 32);

          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v26 = sub_D50A8(v23, v24, v18, v3, v32);

        ++v23;
        if (v26)
        {
          sub_769440();
          if (*(&dword_10 + (v33[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
          v31 = v33[0];
          v23 = v25;
        }
      }

      v10 = v29;
      v7 = v28;
    }

    sub_1ED18(v10, v7, &unk_9442C0);
    sub_7593F0();

    swift_unknownObjectRelease();
    return sub_10A2C(v10, &unk_9442C0);
  }

  else
  {
    v15 = sub_759420();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

unint64_t sub_D41A0()
{
  v0 = sub_75FB00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_9442C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_75FB30();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759400();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_9442C0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_75FB10();
    v12 = (*(v1 + 88))(v3, v0);
    if (v12 == enum case for FlowPreviewDestination.ContentType.source(_:))
    {
      sub_D66D0();
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    else if (v12 == enum case for FlowPreviewDestination.ContentType.flowDestination(_:))
    {
      v13 = sub_D5B98();
      (*(v8 + 8))(v10, v7);
      return v13;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }
}

UIMenu sub_D44B8()
{
  v0 = sub_759410();
  if (v0 >> 62)
  {
    v6 = sub_76A860();

    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));

  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = sub_759410();
  if (v2 >> 62)
  {
    sub_BE70(0, &qword_944330);
    v3 = sub_76A850();
  }

  else
  {

    sub_76A960();
    sub_BE70(0, &qword_944330);
    v3 = v2;
  }

  sub_BE70(0, &qword_944338);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  v4.value = (&dword_0 + 1);
  return sub_769E30(v9, v10, v8, v4, 0xFFFFFFFFFFFFFFFFLL, v3, v7);
}

id sub_D45F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_D7F40(v4);

  return v6;
}

uint64_t sub_D4658(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v41[0] = v41 - v3;
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v41[1] = v41 - v5;
  v6 = sub_7687B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&unk_9442C0);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = sub_75FB30();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_757640();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_9442B0);
  __chkstk_darwin(v16 - 8);
  v18 = v41 - v17;
  v19 = sub_759420();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v21);
  v24 = *(a1 + *(type metadata accessor for PreviewItem() + 20));
  if (v24)
  {
    v25 = sub_BE70(0, &qword_93E550);
  }

  else
  {
    v25 = 0;
    *(&v46 + 1) = 0;
    *&v47 = 0;
  }

  *&v46 = v24;
  *(&v47 + 1) = v25;
  v26 = v24;
  sub_D3E28(&v46, v18);
  (*(v13 + 8))(v15, v12);
  sub_10A2C(&v46, &unk_93FBD0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v27 = &unk_9442B0;
    v28 = v18;
    return sub_10A2C(v28, v27);
  }

  (*(v20 + 32))(v23, v18, v19);
  sub_759400();
  v30 = v43;
  v29 = v44;
  if ((*(v43 + 48))(v9, 1, v44) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v27 = &unk_9442C0;
    v28 = v9;
    return sub_10A2C(v28, v27);
  }

  v32 = v42;
  (*(v30 + 32))(v42, v9, v29);
  if (!sub_75FAF0())
  {
    (*(v30 + 8))(v32, v29);
    return (*(v20 + 8))(v23, v19);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_764C60();
  sub_764C10();
  sub_764C20();
  sub_759240();
  swift_allocObject();
  v33 = sub_759230();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v36 = v42;
      sub_75FB20();
      sub_75DC90();

      sub_10A2C(&v46, &unk_93FBD0);
      (*(v43 + 8))(v36, v44);
      return (*(v20 + 8))(v23, v19);
    }
  }

  v37 = *(v45 + qword_944118);
  v38 = sub_BD88(&unk_93F630);
  v39 = v41[0];
  sub_768860();
  v40 = *(v38 - 8);
  if ((*(v40 + 48))(v39, 1, v38) != 1)
  {
    sub_32AC48(v33, 1, v37, v39);

    (*(v43 + 8))(v42, v44);
    (*(v20 + 8))(v23, v19);
    return (*(v40 + 8))(v39, v38);
  }

  (*(v43 + 8))(v42, v44);
  (*(v20 + 8))(v23, v19);
  v27 = &unk_93F980;
  v28 = v39;
  return sub_10A2C(v28, v27);
}

void sub_D4E0C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, a5);

  swift_unknownObjectRelease();
}

void sub_D4EAC(void *a1, void (*a2)(void))
{
  if (a1 && a2)
  {
    v3 = a1;
    a2();
  }
}

void sub_D4F14(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_D8C64(v8, a5);

  swift_unknownObjectRelease();
}

id sub_D4FAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_D9214(v6);

  return v9;
}

id sub_D501C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_D9528(v6);

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_D50A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_763300();
  v11 = v10;
  v12 = v9 == a1;
  v13 = sub_763310() == a1;
  return sub_D5128(a2, a3, v12 & ~v11, v13 & ~v14, a5);
}

uint64_t sub_D5128(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v54 = a5;
  v57 = a1;
  v55 = swift_isaMask & *v5;
  v8 = sub_BD88(&unk_9442F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v56 = sub_7613C0();
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v56);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v17 = sub_760C20();
    v52 = v18;
    swift_unknownObjectRelease();
    if (!v17)
    {
      return 0;
    }

    if (a3)
    {
      v55 = v17;
      sub_763320();
      if (a4)
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      sub_7613B0();
      v20 = v56;
      if ((*(v11 + 48))(v10, 1, v56) == 1)
      {
        swift_unknownObjectRelease();

        sub_10A2C(v10, &unk_9442F0);
        return 0;
      }

      v54 = v19;
      v28 = *(v11 + 32);
      v28(v15, v10, v20);
      v29 = sub_761390();
      if (v30 != 1)
      {
        v33 = v29;
        v34 = v30;
        v35 = v31;
        v51 = v32;

        if (v34)
        {
          v50 = v35;
          v36 = sub_764C70();
          v49 = v33;
          if (v36)
          {
            v37 = v36;
            if (sub_765190())
            {
              v57 = sub_759910();
            }

            else if (sub_765180())
            {
              v57 = sub_56EBA8(v37, 0);
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
          }

          v48 = sub_BE70(0, &qword_955FA0);
          v38 = v53;
          (*(v11 + 16))(v53, v15, v20);
          v39 = (*(v11 + 80) + 16) & ~*(v11 + 80);
          v40 = swift_allocObject();
          v47 = v15;
          v41 = v11;
          v42 = v20;
          v43 = v40;
          v28((v40 + v39), v38, v42);
          v44 = (v43 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
          v45 = v52;
          *v44 = v55;
          v44[1] = v45;
          swift_unknownObjectRetain();

          v26 = sub_76A1F0();
          swift_unknownObjectRelease();

          (*(v41 + 8))(v47, v42);
          return v26;
        }

        sub_D9BE4(v33, 0);
      }

      swift_unknownObjectRelease();

      (*(v11 + 8))(v15, v20);
      return 0;
    }

    if (a4)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_BE70(0, &qword_955FA0);
    sub_1ED18(v54, v58, &unk_93FBD0);
    v23 = v17;
    ObjectType = swift_getObjectType();
    v25 = v57;

    swift_unknownObjectRetain();
    v26 = sub_D7B3C(v25, v23, v21, v58, v22, ObjectType, v52);
    if (sub_D7CF8())
    {
      v27 = sub_D56A4();
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {

        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v26;
  }

  return result;
}

uint64_t sub_D56A4()
{
  v26 = sub_7580D0();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FlowDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v25 = sub_764CF0();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758B20();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    memset(v27, 0, sizeof(v27));

    sub_146CF0(v16, v27, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10A2C(v4, &unk_9442D0);
    }

    else
    {
      sub_D9944(v4, v11, type metadata accessor for FlowDestination);
      sub_D9944(v11, v8, type metadata accessor for FlowDestination);
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v17 = sub_BD88(&unk_955C70);
        v18 = v25;
        (*(v12 + 32))(v14, &v8[*(v17 + 48)], v25);
        v19 = sub_7570A0();
        (*(*(v19 - 8) + 8))(v8, v19);
        goto LABEL_9;
      }

      sub_D99AC(v8, type metadata accessor for FlowDestination);
    }
  }

  sub_75D110();
  if (swift_dynamicCastClass())
  {

    sub_75D0E0();

    v18 = v25;
LABEL_9:
    sub_BD88(&unk_944300);
    sub_768900();
    sub_768ED0();
    swift_getObjectType();
    sub_758330();
    swift_getObjectType();
    sub_758220();
    swift_unknownObjectRelease();
    v20 = sub_758070();
    (*(v24 + 8))(v1, v26);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_75BEF0();
      if (swift_dynamicCastClass())
      {
        v21 = sub_75BEE0();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_16:
        (*(v12 + 8))(v14, v18);
        v22 = v20 | v21;
        return v22 & 1;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v21 = 0;
    goto LABEL_16;
  }

  v22 = 0;
  return v22 & 1;
}

unint64_t sub_D5B98()
{
  v1 = swift_isaMask & *v0;
  v103 = v0;
  v100 = v1;
  v2 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = sub_760280();
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v96 = v6;
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v85 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v101 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v11 - 8);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = (&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v104 = &v85 - v20;
  v21 = sub_BD88(&unk_9442C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v85 - v22;
  v24 = sub_75FB30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759400();
  v28 = v24;
  v29 = v25;
  if ((*(v25 + 48))(v23, 1, v28) == 1)
  {
    v30 = &unk_9442C0;
    v31 = v23;
LABEL_6:
    sub_10A2C(v31, v30);
    return 0;
  }

  v92 = v4;
  (*(v25 + 32))(v27, v23, v28);
  v32 = sub_75FAF0();
  v33 = v27;
  if (!v32)
  {
    (*(v25 + 8))(v27, v28);
    return 0;
  }

  v34 = v32;
  v35 = v29;
  v93 = v28;

  sub_75FB20();
  sub_146CF0(v34, v106, v15);
  v36 = *(v17 + 48);
  if (v36(v15, 1, v16) == 1)
  {
    (*(v29 + 8))(v33, v93);

    v30 = &unk_9442D0;
    v31 = v15;
    goto LABEL_6;
  }

  v90 = v36;
  v37 = v104;
  sub_D9944(v15, v104, type metadata accessor for FlowDestination);
  v38 = v103;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_D99AC(v37, type metadata accessor for FlowDestination);
    (*(v35 + 8))(v33, v93);
    return 0;
  }

  v86 = v35;
  v89 = v33;
  v91 = Strong;
  v40 = [Strong traitCollection];

  sub_758AA0();
  sub_758A90();

  sub_D2028(v102);
  v41 = sub_D0BF0();
  v87 = v34;
  v88 = v40;
  if (v41)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v42 = *(v38 + qword_944118);

    sub_764BF0();
    v43 = v94;
    sub_146CF0(v34, v105, v94);
    v44 = v90;
    if (v90(v43, 1, v16) == 1)
    {
      v45 = v95;
      swift_storeEnumTagMultiPayload();
      if (v44(v43, 1, v16) != 1)
      {
        sub_10A2C(v43, &unk_9442D0);
      }
    }

    else
    {
      v45 = v95;
      sub_D9944(v43, v95, type metadata accessor for FlowDestination);
    }

    v48 = sub_758A60();
    v50 = v49;
    v51 = v92;
    sub_758A80();
    v46 = sub_471418(v45, v40, v48, v50, v51, v106, v42, 1);

    sub_10A2C(v51, &unk_944FF0);
    sub_D99AC(v45, type metadata accessor for FlowDestination);
    sub_10A2C(v106, &unk_9442E0);
    if (!v46)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v46 = sub_478964(v34, v40, *(v38 + qword_944118));
    if (!v46)
    {
LABEL_33:
      v74 = v104;
      v75 = v89;
      v76 = v93;
      v61 = v91;
      v67 = v88;
LABEL_39:

      sub_D99AC(v101, type metadata accessor for FlowPresentationHints);
      sub_D99AC(v74, type metadata accessor for FlowDestination);
      (*(v86 + 8))(v75, v76);
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = v97;
      v80 = v98 + 32;
      v79 = *(v98 + 32);
      v81 = v99;
      v79(v97, v102, v99);
      v82 = (*(v80 + 48) + 48) & ~*(v80 + 48);
      v83 = swift_allocObject();
      v84 = v100;
      *(v83 + 2) = *(v100 + 80);
      *(v83 + 3) = *(v84 + 88);
      *(v83 + 4) = v77;
      *(v83 + 5) = v87;
      v79(&v83[v82], v78, v81);
      return v46;
    }
  }

  v52 = v46;
  ObjectType = swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  v55 = v52;
  if (v54)
  {
    v56 = v54;
    (*(v54 + 16))(1, ObjectType, v54);
    v57 = *(v56 + 32);
    v58 = v91;
    v55 = v91;
    v57(v58, ObjectType, v56);
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    goto LABEL_33;
  }

  v60 = v59;
  v61 = v52;
  v62 = [v60 viewControllers];
  sub_BE70(0, &qword_9434E0);
  v63 = sub_769460();

  if (!(v63 >> 62))
  {
    v64 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
    if (v64)
    {
      goto LABEL_25;
    }

LABEL_37:

    v67 = v88;
    v75 = v89;
    v73 = v91;
LABEL_38:

    v74 = v104;
    v76 = v93;
    goto LABEL_39;
  }

  v64 = sub_76A860();
  if (!v64)
  {
    goto LABEL_37;
  }

LABEL_25:
  v65 = __OFSUB__(v64, 1);
  result = v64 - 1;
  if (v65)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((v63 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v66 = sub_76A770();
LABEL_30:
    v67 = v66;

    swift_getObjectType();
    v68 = swift_conformsToProtocol2();
    if (v68 && v67)
    {
      v69 = v68;
      v70 = swift_getObjectType();
      (*(v69 + 16))(1, v70, v69);
      v71 = *(v69 + 32);
      v72 = v91;
      v73 = v91;
      v71(v72, v70, v69);

      v67 = v88;
    }

    else
    {

      v73 = v61;
      v61 = v88;
    }

    v75 = v89;
    goto LABEL_38;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
  {
    v66 = *(v63 + 8 * result + 32);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_D66D0()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_BD88(&unk_9442C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_75FB30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759400();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_9442C0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_75FAF0();
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = *(v1 + 80);
      v11[3] = *(v1 + 88);
      v11[4] = v10;
      v11[5] = v9;
    }
  }

  return 0;
}

uint64_t sub_D6914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = qword_944118;
    v10 = sub_BD88(&unk_93F630);
    sub_768860();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      return sub_10A2C(v6, &unk_93F980);
    }

    else
    {
      v12 = *&v8[v9];

      sub_32AC14(a3, 1, v12, v6);

      return (*(v11 + 8))(v6, v10);
    }
  }

  return result;
}

void sub_D6AB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v83 = a1;
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v80 = &v68 - v5;
  v75 = sub_758B40();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F340();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_760280();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = sub_765490();
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v69 = v8;
  v70 = v7;
  swift_getObjectType();
  v81 = &protocol descriptor for FlowPreviewingViewController;
  v23 = swift_conformsToProtocol2();
  if (v23 && v83)
  {
    v24 = v23;
    v25 = v19;
    v26 = v83;
    ObjectType = swift_getObjectType();
    v28 = v26;
    v29 = v22;
    v30 = *(v24 + 40);
    v31 = v28;
    v30(ObjectType, v24);
    v22 = v29;
    v19 = v25;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = v83;
    v35 = [v33 viewControllers];
    sub_BE70(0, &qword_9434E0);
    v36 = sub_769460();

    if (v36 >> 62)
    {
      v37 = sub_76A860();
      if (v37)
      {
LABEL_8:
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v38)
        {
          __break(1u);
        }

        else if ((v36 & 0xC000000000000001) == 0)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v39 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_48;
          }

          v40 = *(v36 + 8 * v39 + 32);
          goto LABEL_13;
        }

        v40 = sub_76A770();
LABEL_13:
        v41 = v40;

        swift_getObjectType();
        v42 = swift_conformsToProtocol2();
        if (v42 && v41)
        {
          v43 = v42;
          v44 = swift_getObjectType();
          (*(v43 + 40))(v44, v43);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v37 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      if (v37)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_19:
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.viewController(_:), v19);
  v45 = sub_7570A0();
  (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
  v46 = sub_759E30();
  (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
  v68 = sub_BE70(0, &qword_9434E0);
  v85 = v68;
  v84 = v83;
  v47 = v83;
  sub_768790();
  (*(v74 + 16))(v77, v79, v72);
  (*(v69 + 104))(v71, enum case for FlowAnimationBehavior.infer(_:), v70);
  (*(v78 + 104))(v73, enum case for FlowOrigin.inapp(_:), v75);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v48 = sub_758AD0();
  v49 = qword_944118;
  v50 = sub_BD88(&unk_93F630);
  v51 = v80;
  sub_768860();
  v52 = *(v50 - 8);
  if ((*(v52 + 48))(v51, 1, v50) == 1)
  {
    sub_10A2C(v51, &unk_93F980);
  }

  else
  {
    v53 = *&Strong[v49];

    sub_32AC14(v48, 1, v53, v51);

    (*(v52 + 8))(v51, v50);
  }

  swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  if (v54 && v83)
  {
    v55 = v54;
    v56 = swift_getObjectType();
    (*(v55 + 48))(v56, v55);
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

LABEL_40:

    return;
  }

  v58 = v57;
  v19 = v47;
  v59 = [v58 viewControllers];
  v60 = sub_769460();

  if (!(v60 >> 62))
  {
    v61 = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
    if (v61)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  v61 = sub_76A860();
  if (!v61)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_28:
  v38 = __OFSUB__(v61, 1);
  v62 = v61 - 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v63 = sub_76A770();
    goto LABEL_33;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v62 >= *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v63 = *(v60 + 8 * v62 + 32);
LABEL_33:
  v64 = v63;

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (v65)
  {
    if (v64)
    {
      v66 = v65;
      v67 = swift_getObjectType();
      (*(v66 + 48))(v67, v66);
    }
  }
}

uint64_t sub_D7524(uint64_t a1)
{

  sub_13238(a1 + qword_944108);
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_D75C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_D769C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_757640();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for PreviewItem()
{
  result = qword_944258;
  if (!qword_944258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D77A0()
{
  sub_757640();
  if (v0 <= 0x3F)
  {
    sub_D786C(319, qword_944268, &qword_93E550);
    if (v1 <= 0x3F)
    {
      sub_D786C(319, qword_947E90, &qword_93E540);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_D786C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_BE70(255, a3);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_D7918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_BD88(&unk_93F630);
  sub_768860();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10A2C(v7, &unk_93F980);
  }

  sub_32A6C0(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

id sub_D7A5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_D7AAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_BE70(0, &qword_944330);
  v2 = sub_769460();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_D7B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_764C60();
  if (v11)
  {
    v12 = sub_764C70();
    if (v12)
    {
      v13 = v12;
      if (sub_765190())
      {
        sub_759910();
      }

      else if (sub_765180())
      {
        sub_56EBA8(v13, 0);
      }
    }

    sub_1ED18(a4, v18, &unk_93FBD0);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a7;
    *(v15 + 32) = a1;
    v16 = v18[1];
    *(v15 + 40) = v18[0];
    *(v15 + 56) = v16;
    v14 = sub_76A1F0();
    sub_10A2C(a4, &unk_93FBD0);
  }

  else
  {
    sub_10A2C(a4, &unk_93FBD0);

    swift_unknownObjectRelease();
    return 0;
  }

  return v14;
}

BOOL sub_D7CF8()
{
  v0 = sub_765490();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  sub_758B20();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  sub_758AE0();
  (*(v1 + 104))(v3, enum case for FlowPage.writeReview(_:), v0);
  sub_D9D54();
  sub_769430();
  sub_769430();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {

    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);

    return 1;
  }

  v9 = sub_76A950();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);

  if (v9)
  {
    return 1;
  }

LABEL_7:
  sub_75D110();
  return swift_dynamicCastClass() != 0;
}

id sub_D7F40(void *a1)
{
  v2 = v1;
  v4 = sub_757640();
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_9442B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v67 = sub_759420();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v10;
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v58 - v12;
  v13 = sub_BD88(&qword_9442A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 view];
  [a1 locationInView:v20];
  v22 = v21;
  v24 = v23;

  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v26 = result;
  (*(v2 + qword_944100))(v22, v24);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v27 = &qword_9442A8;
    v28 = v15;
    goto LABEL_9;
  }

  v61 = v2;
  v29 = v68;
  sub_D9944(v15, v68, type metadata accessor for PreviewItem);
  v30 = v64;
  (*(v64 + 2))(v6, v29, v4);
  v31 = *(v29 + *(v16 + 20));
  if (v31)
  {
    v32 = sub_BE70(0, &qword_93E550);
    v33 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(&aBlock + 1) = 0;
    *&v71 = 0;
  }

  v34 = v67;
  v35 = v65;
  *&aBlock = v33;
  *(&v71 + 1) = v32;
  v36 = v33;
  sub_D3E28(&aBlock, v9);
  (*(v30 + 1))(v6, v4);
  sub_10A2C(&aBlock, &unk_93FBD0);
  if (v35[6](v9, 1, v34) == 1)
  {
    sub_D99AC(v68, type metadata accessor for PreviewItem);

    v27 = &unk_9442B0;
    v28 = v9;
LABEL_9:
    sub_10A2C(v28, v27);
    return 0;
  }

  v64 = v35[4];
  v64(v66, v9, v34);
  if (v31)
  {
    v37 = v36;
    [v26 convertPoint:v37 toCoordinateSpace:{v22, v24}];
    v38 = [v37 hitTest:0 withEvent:?];
    if (v38)
    {
      v60 = v37;
      v39 = v38;
      sub_BE70(0, &qword_93E550);
      v59 = v39;
      do
      {
        v69 = v39;
        v40 = v39;
        sub_BD88(&qword_944320);
        if (swift_dynamicCast())
        {
          v41 = *(&v71 + 1);
          sub_10A2C(&aBlock, &qword_944328);
          if (v41)
          {

            (*(v65 + 1))(v66, v67);
            sub_D99AC(v68, type metadata accessor for PreviewItem);
            return 0;
          }
        }

        else
        {
          v72 = 0;
          aBlock = 0u;
          v71 = 0u;
          sub_10A2C(&aBlock, &qword_944328);
        }

        v39 = [v40 superview];
      }

      while (v39);

      v34 = v67;
      v35 = v65;
      v37 = v60;
    }
  }

  v42 = v66;
  v43 = sub_D41A0();
  v45 = v44;
  v61 = v44;
  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = v45;
  v65 = v43;
  v48[4] = v47;
  v49 = v63;
  v35[2](v63, v42, v34);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  v64((v51 + v50), v49, v34);
  v64 = objc_opt_self();
  v72 = sub_D9E90;
  v73 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v52 = v35;
  *&v71 = sub_D7A5C;
  *(&v71 + 1) = &unk_883A60;
  v53 = _Block_copy(&aBlock);
  v54 = v43;
  v55 = v61;
  sub_D9FC0(v54, v61);

  v72 = sub_D9F50;
  v73 = v51;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v71 = sub_D7AAC;
  *(&v71 + 1) = &unk_883A88;
  v56 = _Block_copy(&aBlock);

  v57 = [v64 configurationWithIdentifier:0 previewProvider:v53 actionProvider:v56];

  _Block_release(v56);
  _Block_release(v53);

  sub_D9900(v65, v55);
  v52[1](v66, v67);
  sub_D99AC(v68, type metadata accessor for PreviewItem);
  return v57;
}

uint64_t sub_D87BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_9442A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PreviewItem();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  [a1 locationInView:v14];
  v16 = v15;
  v18 = v17;

  (*(v3 + qword_944100))(v16, v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10A2C(v8, &qword_9442A8);
  }

  sub_D9944(v8, v13, type metadata accessor for PreviewItem);
  sub_D4658(v13);
  v20 = *&v13[*(v9 + 20)];
  if (v20)
  {
    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = *(v22 + 16);
      v24 = v22;
      v25 = v20;
      v23(a2, ObjectType, v24);
    }
  }

  return sub_D99AC(v13, type metadata accessor for PreviewItem);
}

uint64_t sub_D8A18(void *a1, uint64_t a2)
{
  v5 = sub_BD88(&qword_9442A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PreviewItem();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 view];
  [a1 locationInView:v13];
  v15 = v14;
  v17 = v16;

  (*(v2 + qword_944100))(v15, v17);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10A2C(v7, &qword_9442A8);
  }

  sub_D9944(v7, v12, type metadata accessor for PreviewItem);
  v19 = *&v12[*(v8 + 20)];
  if (v19)
  {
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = *(v21 + 24);
      v23 = v21;
      v24 = v19;
      v22(a2, ObjectType, v23);
    }
  }

  return sub_D99AC(v12, type metadata accessor for PreviewItem);
}

uint64_t sub_D8C64(void *a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_757640();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9442B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_759420();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_9442A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 view];
  [a1 locationInView:v21];
  v23 = v22;
  v25 = v24;

  (*(v3 + qword_944100))(v23, v25);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10A2C(v15, &qword_9442A8);
  }

  sub_D9944(v15, v20, type metadata accessor for PreviewItem);
  v27 = v47;
  (*(v47 + 16))(v7, v20, v5);
  v28 = *&v20[*(v16 + 20)];
  if (v28)
  {
    v29 = sub_BE70(0, &qword_93E550);
  }

  else
  {
    v29 = 0;
    v52 = 0;
    v53 = 0;
  }

  v30 = v49;
  aBlock = v28;
  v54 = v29;
  v31 = v28;
  sub_D3E28(&aBlock, v10);
  (*(v27 + 8))(v7, v5);
  sub_10A2C(&aBlock, &unk_93FBD0);
  v32 = v50;
  if ((*(v30 + 48))(v10, 1, v50) == 1)
  {
    sub_D99AC(v20, type metadata accessor for PreviewItem);
    return sub_10A2C(v10, &unk_9442B0);
  }

  else
  {
    (*(v30 + 32))(v48, v10, v32);
    v33 = sub_D41A0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (v35 && (v39 = v33, (Strong = v34) != 0) || (Strong = swift_unknownObjectWeakLoadStrong(), v36))
    {

      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    v42 = swift_allocObject();
    v42[2] = Strong;
    v42[3] = v36;
    v42[4] = v41;
    v55 = sub_D98DC;
    v56 = v42;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_23F0CC;
    v54 = &unk_883920;
    v43 = _Block_copy(&aBlock);
    v44 = Strong;
    sub_F714(v36);

    [v46 addCompletion:v43];
    _Block_release(v43);
    sub_F704(v36);

    sub_D9900(v34, v36);
    (*(v30 + 8))(v48, v32);
    return sub_D99AC(v20, type metadata accessor for PreviewItem);
  }
}

id sub_D9214(void *a1)
{
  v3 = sub_BD88(&qword_9442A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_944100))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10A2C(v5, &qword_9442A8);
    return 0;
  }

  else
  {
    sub_D9944(v5, v10, type metadata accessor for PreviewItem);
    v17 = *&v10[*(v6 + 20)];
    if (v17)
    {
      v18 = objc_allocWithZone(UIPreviewParameters);
      v19 = v17;
      v20 = [v18 init];
      [v20 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v22;
        v24 = *(v22 + 8);
        v25 = v19;
        v24(ObjectType, v23);
        v26 = (*(v23 + 40))(ObjectType, v23);
        if (v26)
        {
          v27 = v26;

          v25 = v27;
        }
      }

      else
      {
        v25 = v19;
      }

      v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v25 parameters:v20];

      sub_D99AC(v10, type metadata accessor for PreviewItem);
      return v28;
    }

    else
    {
      sub_D99AC(v10, type metadata accessor for PreviewItem);
      return 0;
    }
  }
}

id sub_D9528(void *a1)
{
  v3 = sub_BD88(&qword_9442A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_944100))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10A2C(v5, &qword_9442A8);
  }

  else
  {
    sub_D9944(v5, v10, type metadata accessor for PreviewItem);
    v16 = *&v10[*(v6 + 20)];
    if (v16)
    {
      v17 = objc_allocWithZone(UIPreviewParameters);
      v18 = v16;
      v19 = [v17 init];
      [v19 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + 32);
        v24 = v18;
        v23(ObjectType, v22);
        v25 = (*(v22 + 40))(ObjectType, v22);
        if (v25)
        {
          v26 = v25;

          v24 = v26;
        }
      }

      else
      {
        v24 = v18;
      }

      v27 = [v24 window];
      if (v27)
      {

        v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v19];
        sub_D99AC(v10, type metadata accessor for PreviewItem);
        return v28;
      }
    }

    sub_D99AC(v10, type metadata accessor for PreviewItem);
  }

  return 0;
}

uint64_t sub_D9894()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D98E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_D9900(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

uint64_t sub_D9944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_D99AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_D9A0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D9A44()
{
  v1 = sub_760280();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_D9B10(void *a1)
{
  v3 = *(sub_760280() - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_D6AB8(a1, v4, v5, v6);
}

uint64_t sub_D9B98()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_D9BE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_D9C2C()
{
  v1 = sub_7613C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

unint64_t sub_D9D54()
{
  result = qword_944310;
  if (!qword_944310)
  {
    sub_765490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944310);
  }

  return result;
}

uint64_t sub_D9DAC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_BEB8(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_D9E48()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_D9E90()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_D9EC8()
{
  v1 = sub_759420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

UIMenu sub_D9F50()
{
  sub_759420();

  return sub_D44B8();
}

void *sub_D9FC0(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_93C348 != -1)
  {
    swift_once();
  }

  v0 = sub_764720();

  return sub_BE38(v0, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
}

char *sub_DA074(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_764720();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_93C348 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v11, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v60 = *(v12 + 16);
  v60(&v4[v14], v15, v11);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v17 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v18 = sub_763C70();
  (*(*(v18 - 8) + 104))(&v5[v16], v17, v18);
  v19 = &v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_id];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v21 = sub_75FC90();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold];
  *v23 = 0;
  v23[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation] = 2;
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel] = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel] = sub_75BB00();
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  sub_396E8();
  v31 = v30;
  v32 = sub_769FF0();
  [v31 setTextColor:v32];

  v33 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel;
  v34 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v35 = sub_769FF0();
  [v34 setTextColor:v35];

  v36 = *&v28[v29];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  v37 = v61;
  v59 = v12 + 16;
  v60(v61, &v28[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v11);
  v38 = v36;
  v39 = sub_764710();
  v40 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v40;
  v40(v37, v11);
  [v38 setNumberOfLines:v39];

  v58 = v29;
  v41 = *&v28[v29];
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v42 = sub_760500();
  v43 = sub_BE38(v42, qword_99BB00);
  v63 = v42;
  v44 = sub_DC39C();
  v64 = v44;
  v45 = sub_B1B4(v62);
  v46 = *(*(v42 - 8) + 16);
  v46(v45, v43, v42);
  sub_75BA60();

  v47 = *&v28[v33];
  v48 = v61;
  v60(v61, &v28[v57], v11);
  v49 = v47;
  v50 = sub_764700();
  v56(v48, v11);
  [v49 setNumberOfLines:v50];

  v51 = *&v28[v33];
  sub_766B40();
  if (qword_93C758 != -1)
  {
    swift_once();
  }

  v52 = sub_BE38(v42, qword_99BB48);
  v63 = v42;
  v64 = v44;
  v53 = sub_B1B4(v62);
  v46(v53, v52, v42);
  sub_75BA60();

  [*&v28[v33] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v28 addSubview:*&v28[v33]];
  [v28 addSubview:*&v28[v58]];

  return v28;
}

uint64_t sub_DA680()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764720();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_764730();
  v9 = *(v19 - 8);
  *&v10 = __chkstk_darwin(v19).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v26 = sub_75BB20();
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  v23 = v26;
  v22 = v14;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v5);
  v15 = v13;
  v16 = v14;
  sub_7646C0();
  sub_75D650();
  sub_7646E0();
  (*(v20 + 8))(v4, v21);
  return (*(v9 + 8))(v12, v19);
}

double sub_DA950()
{
  v1 = sub_764720();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764730();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel);
  v17 = sub_75BB20();
  v18 = &protocol witness table for UILabel;
  v16[4] = &protocol witness table for UILabel;
  v16[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel);
  v16[3] = v17;
  v16[0] = v10;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_metrics, v1);
  v11 = v9;
  v12 = v10;
  sub_7646C0();
  sub_7646D0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  return v14;
}

id sub_DABEC(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5)
{
  v9 = sub_763C70();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  if (a4)
  {
    a4 = sub_769210();
  }

  [v14 setText:{a4, v11}];

  (*(v10 + 16))(v13, a5, v9);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v15], v13, v9);
  swift_endAccess();
  [v5 setNeedsLayout];
  (*(v10 + 8))(v13, v9);
  v16 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  if (a2)
  {
    v17 = sub_7692C0();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAttributedText:v17];

  return [v5 setNeedsLayout];
}

uint64_t sub_DAF30()
{
  v0 = sub_763C70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75D6F0();
  v6 = v5;
  v7 = sub_75D7B0();
  v9 = v8;
  sub_75D760();
  sub_DABEC(v4, v6, v7, v9, v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_DB054()
{
  swift_getObjectType();

  return sub_75FD50();
}

uint64_t sub_DB0A0()
{
  swift_getObjectType();

  return sub_75FD70();
}

uint64_t sub_DB0FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0);
}

uint64_t sub_DB164(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0);
  return swift_endAccess();
}

uint64_t sub_DB240(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_DB30C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  return *v4;
}

uint64_t sub_DB354(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_DB414()
{
  swift_getObjectType();

  return sub_75FD90();
}

uint64_t sub_DB450()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_DB494(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_DB544@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0);
}

uint64_t sub_DB5AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0);
  return swift_endAccess();
}

uint64_t sub_DB67C()
{
  v0 = sub_BD88(&unk_93F5A0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - v2;
  v4 = sub_764720();
  sub_161DC(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_BE38(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_BD88(&qword_93FBE0);
  sub_7593B0();
  v8[3] = v0;
  v8[4] = sub_24128();
  v5 = sub_B1B4(v8);
  (*(v1 + 16))(v5, v3, v0);
  sub_7646F0();
  return (*(v1 + 8))(v3, v0);
}

void sub_DB7F8(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_769B20())
  {

    v5 = 6.0;
    goto LABEL_12;
  }

  v6 = sub_769240();
  v8 = v7;
  if (v6 != sub_769240() || v8 != v9)
  {
    v11 = sub_76A950();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_769B60();

  v5 = 2.0;
  if (v12)
  {
    v5 = 4.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_93C348 != -1)
  {
    swift_once();
  }

  v2 = sub_764720();
  v3 = sub_BE38(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView()
{
  result = qword_944388;
  if (!qword_944388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DBA14()
{
  sub_764720();
  if (v0 <= 0x3F)
  {
    sub_763C70();
    if (v1 <= 0x3F)
    {
      sub_DBB44();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_DBB44()
{
  if (!qword_944398)
  {
    sub_75FC90();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_944398);
    }
  }
}

double sub_DBB9C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v55 = a1;
  v64 = sub_764730();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_766D70();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_767030();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v67 = &v49 - v15;
  v16 = sub_764720();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  if (qword_93C348 != -1)
  {
    swift_once();
  }

  v65 = v7;
  v22 = sub_BE38(v16, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v58 = v17;
  v23 = *(v17 + 16);
  v60 = v16;
  v52 = v17 + 16;
  v51 = v23;
  v23(v21, v22, v16);
  sub_767020();
  sub_766B40();
  v66 = v21;
  if (qword_93C758 != -1)
  {
    swift_once();
  }

  v24 = sub_760500();
  v25 = sub_BE38(v24, qword_99BB48);
  v72 = v24;
  v26 = sub_DC39C();
  v73 = v26;
  v27 = sub_B1B4(&v71);
  v28 = *(*(v24 - 8) + 16);
  v28(v27, v25, v24);
  sub_766F80();
  v54 = v5;
  v29 = *(v5 + 8);
  v29(v10, v4);
  sub_BEB8(&v71);
  sub_764700();
  sub_767010();
  v29(v13, v4);
  sub_767020();
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v24, qword_99BB00);
  v72 = v24;
  v73 = v26;
  v31 = sub_B1B4(&v71);
  v28(v31, v30, v24);
  sub_766F80();
  v29(v10, v4);
  sub_BEB8(&v71);
  sub_764710();
  v32 = v65;
  sub_767010();
  v29(v13, v4);
  sub_75D6F0();
  v50 = v29;
  if (v33)
  {
    v34 = sub_7692C0();
  }

  else
  {
    v34 = 0;
  }

  sub_75D7B0();
  v35 = *(v54 + 16);
  v35(v13, v32, v4);
  sub_766D50();
  v36 = v56;
  sub_766D90();
  v37 = v36;
  sub_766D40();
  v38 = v4;
  v39 = *(v57 + 8);
  v40 = v59;
  v39(v37, v59);
  v35(v13, v67, v38);
  v41 = v34;
  sub_766D50();
  sub_766DB0();
  sub_766D40();
  v39(v37, v40);
  sub_134D8(v70, v69);
  sub_134D8(&v71, v68);
  v42 = v66;
  v43 = v60;
  v51(v53, v66, v60);
  v44 = v61;
  sub_7646C0();
  sub_7646D0();
  v46 = v45;

  (*(v63 + 8))(v44, v64);
  sub_BEB8(v70);
  sub_BEB8(&v71);
  v47 = v50;
  v50(v65, v38);
  v47(v67, v38);
  (*(v58 + 8))(v42, v43);
  return v46;
}

unint64_t sub_DC39C()
{
  result = qword_9443B0;
  if (!qword_9443B0)
  {
    sub_760500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9443B0);
  }

  return result;
}

void sub_DC3F4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_93C348 != -1)
  {
    swift_once();
  }

  v2 = sub_764720();
  v3 = sub_BE38(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v5 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v6 = sub_763C70();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_id;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v9 = sub_75FC90();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation) = 2;
  sub_76A840();
  __break(1u);
}

char *sub_DC5C4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_pageGrid;
  v12 = sub_7656C0();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
  v14 = sub_765120();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
  v16 = sub_7572E0();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView();
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_DC864(char a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*&stru_B8.segname[swift_isaMask & *Strong])(a1 & 1);
  }
}

void sub_DC920(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(&stru_B8.flags + (swift_isaMask & *Strong)))(a1, a2, v7);
  }
}

void sub_DC9F4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&stru_108.segname[(swift_isaMask & *Strong) - 8];
    v5 = Strong;

    v3(v4);
  }
}

void sub_DCAC4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*&stru_108.segname[(swift_isaMask & *Strong) + 16])(a1);
  }
}

uint64_t sub_DCB7C(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_DE0EC(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1ED18(v1 + v6, v5, &unk_955AA0);
    (*(&stru_108.reloff + (swift_isaMask & *v8)))(v5);
  }

  return sub_10A2C(a1, &unk_955AA0);
}

uint64_t sub_DCCD0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  return swift_unknownObjectRelease();
}

void sub_DCDE0(void *a1)
{
  v3 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_1ED18(v1 + v14, v5, &unk_955AA0);
      v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory);

      sub_DDCF4(v9, v10, v11, v12, v13, v5, v15);

      sub_10A2C(v5, &unk_955AA0);
    }
  }
}

void sub_DD008()
{
  v1 = sub_763B00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize];
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics])
  {
    v42 = v2;
    v17 = *v15;
    v16 = v15[1];
    v18 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_1ED18(&v0[v18], v10, &unk_955AA0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10A2C(v10, &unk_955AA0);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory];
      if (v19 != 7)
      {

        v20 = v0;
        sub_2A6324(v19);
        v21 = v42;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v42 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = sub_769470();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded];
        [v20 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [v20 traitCollection];
        v35 = sub_317C38(v34, v27, v29, v31, v33, v17, v16, v24, v25);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        [*&v20[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView] setFrame:{v35, v37, v39, v41}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

void sub_DD420(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = sub_7572E0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_95AA20);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_BD88(&qword_944440);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_1ED18(v31 + v32, v23, &qword_944440);
    sub_1ED18(v29, &v23[v33], &qword_944440);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10A2C(v29, &qword_944440);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10A2C(v23, &qword_944440);
LABEL_11:
        v42 = sub_7656C0();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_DDCF4(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10A2C(v44, &unk_955AA0);
        return;
      }

LABEL_9:
      sub_10A2C(v23, &unk_95AA20);

      return;
    }

    sub_1ED18(v23, v26, &qword_944440);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10A2C(v29, &qword_944440);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_DE094();
    v46 = v35;
    v40 = sub_7691C0();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10A2C(v29, &qword_944440);
    v41(v26, v18);
    v35 = v48;
    sub_10A2C(v23, &qword_944440);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_DD9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView()
{
  result = qword_944420;
  if (!qword_944420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DDB04()
{
  sub_DDCA0(319, qword_942ED0, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_DDCA0(319, &qword_944430, &type metadata accessor for Artwork.URLTemplate);
    if (v1 <= 0x3F)
    {
      sub_DDCA0(319, &qword_944438, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_DDCA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_DDCF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a4;
  v15 = sub_BD88(&unk_955AA0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v43 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView);
  v44 = a1;
  v45 = v19;
  [v19 setImage:{a1, v16}];
  v46 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *&stru_108.segname[(swift_isaMask & *Strong) - 8];
    v43 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = (v8 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize);
  *v24 = a2;
  v24[1] = a3;
  v25 = v47 & 1;
  *(v24 + 16) = v47 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*(&stru_B8.flags + (swift_isaMask & *v26)))(a2, a3, v25);
  }

  sub_1ED18(a6, v18, &unk_955AA0);
  sub_DCB7C(v18);
  v28 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*&stru_108.segname[(swift_isaMask & *v29) + 16])(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v44, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v45 image];
    v37 = *v24;
    v38 = v24[1];
    v39 = *(v24 + 16);
    v40 = *(v8 + v46);
    v41 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_1ED18(v8 + v41, v18, &unk_955AA0);
    v42 = *(v8 + v28);

    sub_DDCF4(v36, v37, v38, v39, v40, v18, v42);

    sub_10A2C(v18, &unk_955AA0);
  }

  sub_DD008();
}

unint64_t sub_DE094()
{
  result = qword_95AA30;
  if (!qword_95AA30)
  {
    sub_7572E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AA30);
  }

  return result;
}

uint64_t sub_DE0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_955AA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_DE15C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_sizeCategory) = 7;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_pageGrid;
  v4 = sub_7656C0();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
  v6 = sub_765120();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
  v8 = sub_7572E0();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_76A840();
  __break(1u);
}

void sub_DE378()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = sub_7623A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457F0);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_75D850();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v21 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v21 = qword_946938;
  }

  v22 = sub_BE38(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_BE2F8();
  sub_760940();
  sub_75D820();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_DE8C8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_759210();
  v12 = sub_759020();
  sub_75CD10();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_7595E0();
  v14 = sub_7595A0();
  v16 = sub_48A70C(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = sub_7595D0();
  v20 = sub_48A70C(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_DEB00@<X0>(uint64_t *a1@<X8>)
{
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_BE140(&xmmword_99A9B0, v101);
  v71 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_BE140(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = sub_759210();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_BE70(0, &qword_950A70);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_BE70(0, &qword_93E550);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_BE19C();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_BE140(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_B170(v97, v98);
  v15 = sub_76A480();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  sub_766510();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_B1B4(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_E02D8(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_B170(v73, v74);
    v23 = sub_76A480();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    sub_7669B0();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_B1B4(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_BEB8(v73);
  }

  else
  {
    sub_E0348(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_E02D8(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_B170(v73, v74);
    v31 = sub_76A480();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    sub_7669B0();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_B1B4(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_BEB8(v73);
  }

  else
  {
    sub_E0348(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_134D8(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_B170(v88, v89);
  v39 = sub_76A480();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  sub_7669B0();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_B1B4(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_E02D8(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_B170(v73, v74);
    v47 = sub_76A480();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    sub_7669B0();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_B1B4(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_BEB8(v73);
  }

  else
  {
    sub_E0348(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_E02D8(v84, &v79[37] + 8);
  sub_E02D8(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_B170(v73, v74);
    v55 = sub_76A480();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    sub_7669A0();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_B1B4(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_BEB8(v73);
  }

  else
  {
    sub_E0348(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_E02D8(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_B170(v73, v74);
    v63 = sub_76A480();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    sub_7669B0();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_E0348(v80);
      sub_E0348(v82);
      sub_E0348(v86);
      sub_E0348(v95);
      sub_BE0EC(v100);
      sub_BEB8(v91);
      sub_E0348(v92);
      sub_E0348(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_B1B4(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_E0348(v80);
      sub_E0348(v82);
      sub_E0348(v86);
      sub_E0348(v95);
      sub_BE0EC(v100);
      sub_BEB8(v91);
      sub_E0348(v92);
      sub_E0348(v84);
    }

    sub_BEB8(v73);
  }

  else
  {
    sub_E0348(v80);
    sub_E0348(v82);
    sub_E0348(v86);
    sub_E0348(v95);
    sub_BE0EC(v100);
    sub_BEB8(v91);
    sub_E0348(v92);
    sub_E0348(v84);
    sub_E0348(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_BE0EC(v101);
  sub_BEB8(v88);
  return sub_BEB8(v97);
}

double sub_DFB08(double a1)
{
  v3 = sub_75D850();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  if (qword_93C330 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (sub_769A00())
  {
    v11 = &xmmword_99AB20;
  }

  else
  {
    v11 = &xmmword_99A9B0;
  }

  sub_BE140(v11, v20);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v12 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v12 = qword_946938;
  }

  v13 = sub_BE38(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_75D800();
    v15 = v14;
    sub_75D800();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_BE0EC(v20);
  return v17;
}

double sub_DFE00()
{
  v1 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_7623A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_9457F0);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v19 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v19 = qword_946938;
  }

  v20 = sub_BE38(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_BE2F8();
  sub_760940();
  sub_75D820();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

uint64_t sub_E01D0()
{
  sub_BEB8((v0 + 4));

  sub_BEB8((v0 + 11));
  sub_BEB8((v0 + 16));
  sub_BEB8((v0 + 21));
  sub_BEB8((v0 + 26));
  sub_BEB8((v0 + 31));
  sub_BEB8((v0 + 39));
  if (v0[50])
  {
    sub_BEB8((v0 + 47));
  }

  if (v0[55])
  {
    sub_BEB8((v0 + 52));
  }

  if (v0[60])
  {
    sub_BEB8((v0 + 57));
  }

  sub_BEB8((v0 + 62));
  if (v0[70])
  {
    sub_BEB8((v0 + 67));
  }

  if (v0[75])
  {
    sub_BEB8((v0 + 72));
  }

  if (v0[80])
  {
    sub_BEB8((v0 + 77));
  }

  if (v0[85])
  {
    sub_BEB8((v0 + 82));
  }

  if (v0[90])
  {
    sub_BEB8((v0 + 87));
  }

  if (v0[95])
  {
    sub_BEB8((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_E02D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9417D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E0348(uint64_t a1)
{
  v2 = sub_BD88(&qword_9417D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_E03B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_759210();
  v3 = sub_759020();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_7595E0();
  v5 = sub_7595A0();
  v7 = sub_48A70C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = sub_7595D0();
  v11 = sub_48A70C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

void sub_E04EC()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
LABEL_8:
        [v5 safeAreaInsets];

        return;
      }

      goto LABEL_11;
    }
  }

  v6 = [v0 parentViewController];
  if (v6)
  {
    v7 = v6;
    v5 = [v6 viewIfLoaded];

    if (v5)
    {
      goto LABEL_8;
    }
  }
}

char *sub_E0630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  *(v3 + qword_9444C0) = 0;
  v7 = v3 + qword_99AE68;
  *(v3 + qword_99AE68 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_759EC0();
  if (!v8)
  {

    sub_13238(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_7634F0();
  sub_768900();
  sub_768ED0();
  *(v3 + qword_9444C8) = v15;
  *(v3 + qword_99AE60) = a2;

  v9 = sub_46D1BC(a1, a3);
  v10 = *&v9[qword_99E1D8];
  v11 = v9;
  v12 = v10;

  sub_75FA40();

  result = [v11 collectionView];
  if (result)
  {
    v14 = result;
    [result setKeyboardDismissMode:1];

    return v11;
  }

  __break(1u);
  return result;
}

id sub_E0844(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = a1;
  v11.super_class = ObjectType;
  v7 = a1;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    memset(v10, 0, sizeof(v10));
    sub_768C20();
    sub_10A2C(v10, &unk_93FBD0);
    sub_769E70();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_E0A18(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

void sub_E0B60(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7634E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_7634A0();
  (*(v11 + 8))(v13, v10);
}

void sub_E0C9C(void *a1, double a2, double a3)
{
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v13[4] = sub_E3B4C;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_6C6800;
  v13[3] = &unk_883C58;
  v11 = _Block_copy(v13);
  v12 = v3;

  [a1 animateAlongsideTransition:v11 completion:0];
  _Block_release(v11);
}

uint64_t sub_E0E00()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_E3BA4;
  *(v2 + 24) = v1;
  v5[4] = sub_2EC28;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1EB578;
  v5[3] = &unk_883CD0;
  v3 = _Block_copy(v5);

  [v0 performWithoutAnimation:v3];
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  return result;
}

void sub_E0F68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    [v2 reloadData];
  }
}

void sub_E0FE4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_E0C9C(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_E1064()
{
  ObjectType = swift_getObjectType();
  v0 = sub_BD88(&qword_944AC0);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_BD88(&qword_944AC8);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_BD88(&qword_944AD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1BB9D4();
  sub_763930();
  sub_BD88(&qword_944AD8);
  sub_16194(&qword_944AE0, &qword_944AD8);
  sub_768710();
  sub_768720();

  sub_BEB8(v18);
  (*(v5 + 8))(v7, v4);
  sub_763950();
  sub_BD88(&qword_944AE8);
  sub_16194(&qword_944AF0, &qword_944AE8);
  sub_768710();
  v8 = v12;
  sub_768720();

  sub_BEB8(v18);
  (*(v13 + 8))(v8, v14);
  sub_763940();
  sub_BD88(&qword_944AF8);
  sub_16194(&qword_944B00, &qword_944AF8);
  sub_768710();
  v9 = v15;
  sub_768720();

  sub_BEB8(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_E149C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_99AE68;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_E152C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_E3B44;
}

uint64_t sub_E1590(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_99AE68;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_E1620(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_E3B04;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B34C4;
}

id sub_E16B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767A10();
  v71 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v66 - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v70 = v66 - v11;
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  sub_763060();
  v15 = v14;
  sub_763080();
  v16 = sub_763070();
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v72 = v15;
  v73 = v17;
  v68 = a1;
  if (v16)
  {
    v67 = v4;
    v18 = sub_764C60();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v66[1] = v20;
    v21 = sub_764C70();
    if (v21)
    {
      v22 = v21;
      if (sub_765190())
      {
        sub_759910();
      }

      else if (sub_765180())
      {
        sub_56EBA8(v22, 0);
      }
    }

    sub_BE70(0, &qword_955FA0);
    v23 = swift_allocObject();
    *(v23 + 16) = v73;
    *(v23 + 24) = v16;

    v16 = sub_76A1F0();
    v4 = v67;
  }

  sub_767A00();

  sub_7679E0();
  sub_7679B0();
  if (v16)
  {
    v24 = v16;
    v25 = [v24 title];
    v26 = sub_769240();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = [v24 title];
      sub_769240();

      v31 = sub_7679F0();
      sub_76A3C0();
      v31(v74, 0);
    }

    v32 = [v24 image];
    if (v32)
    {
      v33 = v32;
      v34 = sub_7679F0();
      sub_76A390();
      v34(v74, 0);
      v35 = sub_7679F0();
      sub_76A290();
      v35(v74, 0);
      v36 = sub_7679F0();
      sub_76A2D0();
      v36(v74, 0);
      v37 = [objc_opt_self() configurationWithScale:1];
      v38 = sub_7679F0();
      sub_76A220();
      v38(v74, 0);
    }

    v39 = v24;
    v40 = sub_7679D0();
    sub_7679C0();
    v40(v74, 0);
  }

  else
  {
  }

  v42 = v70;
  v41 = v71;
  (*(v71 + 32))(v70, v8, v4);
  v43 = sub_763050();
  if (v43)
  {
    v44 = v43;
    v45 = v69;
    (*(v41 + 16))(v69, v42, v4);
    v46 = objc_allocWithZone(type metadata accessor for ContextualContentUnavailableView());
    v47 = v73;

    v48 = sub_34FC28(v45, v44, v47);
  }

  else
  {
    sub_BE70(0, &qword_944B08);
    (*(v41 + 16))(v69, v42, v4);
    v48 = sub_769C20();
  }

  v49 = objc_allocWithZone(sub_75F540());
  v50 = v48;
  v51 = sub_75F530();
  v52 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v53 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v54 = *&v2[v52];
  *&v2[v52] = v51;
  v55 = v51;

  result = [v2 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v74[0] = v59;
    v74[1] = v61;
    v74[2] = v63;
    v74[3] = v65;
    v75 = 0;
    sub_761920();

    return (*(v41 + 8))(v42, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_E1D4C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_E3A98;
}

void sub_E1DD8(void *a1)
{
  v1 = a1;
  sub_E1DB0();
}

uint64_t sub_E1E48(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v6 + v15, v22);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_E20DC(void *a1)
{
  v1 = a1;
  sub_E1E20();
}

uint64_t sub_E2124@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_E3A18(&qword_944AB8, type metadata accessor for SearchResultsDiffablePageViewController);
  v2 = sub_763A60();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_763A50();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_132B4(v18, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v19, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_763A80();
  v10 = type metadata accessor for SearchResultsPageLayoutSectionProvider();
  swift_allocObject();
  sub_134D8(v17, v16);
  sub_134D8(v16, v15);

  v11 = sub_762B60();
  sub_BEB8(v16);
  result = sub_BEB8(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

id sub_E2438()
{
  v1 = v0;
  swift_getObjectType();
  sub_BD88(&qword_93F1E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_782440;
  sub_BD88(&qword_944AA0);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_763BB0();
  v4 = sub_16194(&qword_944AA8, &qword_944AA0);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for SearchResultsCollectionElementsObserver();
  v5 = swift_allocObject();
  v6 = sub_E3A18(&qword_944AB0, type metadata accessor for SearchResultsCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  v8 = sub_E3A18(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  sub_E3A18(&qword_944AB8, type metadata accessor for SearchResultsDiffablePageViewController);
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v2 + 80) = sub_764310();
    *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_7637E0();
    swift_allocObject();
    v10 = sub_7637D0();
    sub_5FC468();
    if (swift_dynamicCastClass())
    {
      sub_7637B0();
      sub_7637C0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_E2764@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchResultsPageShelfLayoutSpacingProvider;
  result = sub_E39C4();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_E2798()
{
  sub_BD88(&qword_944A70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77E280;
  v2 = [v0 collectionView];
  type metadata accessor for SearchResultItemSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v3 + 24) = &off_883AE8;
  swift_unknownObjectWeakAssign();
  v4 = sub_E3A18(&qword_944A78, type metadata accessor for SearchResultItemSupplementaryProvider);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  sub_BD88(&qword_944A80);
  sub_16194(&qword_944A88, &qword_944A80);
  sub_763A80();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_134D8(v9, v5 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v6 = swift_allocObject();
  sub_10914(v9, v6 + 16);
  *(v5 + 56) = v6;
  v7 = sub_E3A18(&qword_944A90, type metadata accessor for GenericPageItemSupplementaryProvider);
  *(v1 + 48) = v5;
  *(v1 + 56) = v7;
  sub_7636F0();
  swift_allocObject();
  return sub_7636E0();
}

void sub_E29B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&qword_944A68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_5FF414(a1);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v5 + 8))(v7, v4);
  if (v8 == a1)
  {
    *(v2 + qword_9444C0) = sub_763980() & 1;
    sub_761120();
    sub_768900();
    sub_768ED0();
    v9 = v10[1];
    sub_7610D0();
  }
}

void sub_E2B50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_769210();
  isa = sub_757550().super.isa;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v11, isa);

  type metadata accessor for SearchTransparencyView();
  if (sub_769BC0() == a3 && v13 == a4)
  {
  }

  else
  {
    v14 = sub_76A950();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a2;
    if (sub_763970())
    {
      v18 = sub_759CF0();
      v19 = sub_22A974(v18, sub_30AE4);

      v20 = sub_759CE0();
      sub_4ED3B8(v20, 0, v19);

      [v16 setNeedsLayout];
    }

    else
    {
    }
  }
}

uint64_t sub_E2D2C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_E2B50(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

id sub_E2E70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_E2FE0(result);

    sub_765550();
    sub_763990();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      sub_7575B0();
      v11 = 0;
    }

    (*(v4 + 8))(v7, v3);
    v12 = sub_757640();
    return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_E2FE0(void *a1)
{
  v2 = sub_75B4F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v7 + 104))(v18 - v12, enum case for PageGrid.Direction.vertical(_:), v6, v11);
  [a1 bounds];
  v18[0] = v14;
  v18[1] = v15;
  sub_E04EC();
  v16 = [a1 traitCollection];
  sub_75B4B0();
  (*(v7 + 16))(v9, v13, v6);
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765670();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v13, v6);
}

double sub_E32C0(void *a1)
{
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763970();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    sub_E2FE0(a1);
    sub_765BE0();
    sub_765630();
    sub_E3618(v9, v8, a1);
    v11 = v10;

    v12 = *(v3 + 8);
    v12(v5, v2);
    if (v11 != 0.0)
    {
      sub_E2FE0(a1);
      sub_765570();
      v14 = v13;
      v12(v5, v2);
      return v11 + v14;
    }
  }

  return v7;
}

uint64_t sub_E342C()
{

  sub_13238(v0 + qword_99AE68);
}

uint64_t sub_E347C(uint64_t a1)
{

  sub_13238(a1 + qword_99AE68);
}

uint64_t type metadata accessor for SearchResultsDiffablePageViewController()
{
  result = qword_9444F8;
  if (!qword_9444F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E35BC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_99E1A8);
  a1[3] = sub_7639B0();
  a1[4] = &protocol witness table for SearchResultsDiffablePagePresenter;
  *a1 = v3;
}

double sub_E3618(double a1, uint64_t a2, void *a3)
{
  v5 = sub_762D10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759CD0();
  sub_BE70(0, &qword_93F900);
  if (qword_93D960 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  sub_BE38(v9, qword_99F418);
  v10 = [a3 traitCollection];
  sub_769E10();

  v11 = sub_7653B0();
  v16 = v11;
  v17 = sub_E3A18(&qword_93F9B0, &type metadata accessor for Feature);
  v12 = sub_B1B4(v15);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_765C30();
  sub_BEB8(v15);
  sub_762D00();
  sub_762CE0();
  (*(v6 + 8))(v8, v5);
  sub_B170(v15, v16);
  sub_7665A0();
  if (qword_93D1E0 != -1)
  {
    swift_once();
  }

  sub_B170(qword_99DE28, qword_99DE40);
  sub_766720();
  if (qword_93D1E8 != -1)
  {
    swift_once();
  }

  sub_B170(qword_99DE50, qword_99DE68);
  sub_7666F0();
  sub_BEB8(v15);
  return a1;
}

unint64_t sub_E39C4()
{
  result = qword_944A98;
  if (!qword_944A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944A98);
  }

  return result;
}

uint64_t sub_E3A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E3A60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E3ABC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E3B0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E3B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E3B6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_E3BD4(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_507AD4;
  aBlock[3] = &unk_883D20;
  v5 = _Block_copy(aBlock);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v6 = objc_msgSendSuper2(&v11, "initWithSectionProvider:configuration:", v5, a3);
  _Block_release(v5);
  type metadata accessor for SearchTransparencyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  sub_769BC0();
  v9 = sub_769210();

  [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v9];

  return v8;
}

double sub_E3DC8()
{
  v1 = v0;
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v27.receiver = v0;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, "collectionViewContentSize");
  v14 = v13;
  v15 = [v0 collectionView];
  if (!v15)
  {
    return v14;
  }

  v16 = v15;
  v17 = [v0 collectionView];
  if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
  {

    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return v14;
  }

  sub_E2FE0(v16);
  swift_unknownObjectRelease();
  (*(v3 + 32))(v11, v8, v2);
  v20 = [v1 collectionView];
  if (!v20 || (v21 = v20, v22 = [v20 delegate], v21, !v22))
  {

LABEL_12:
    (*(v3 + 8))(v11, v2);
    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v23 = sub_763970();
  if (v23)
  {
    v24 = v23;
    sub_E2FE0(v16);
    sub_765BE0();
    sub_765630();
    sub_E3618(v25, v24, v16);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_765570();

  (*(v3 + 8))(v11, v2);
  return v14;
}

void *sub_E4104(double a1)
{
  v2 = v1;
  v61 = sub_BD88(&qword_946A50);
  __chkstk_darwin(v61);
  v5 = &v50 - v4;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v50 - v11;
  v12 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v63 = &v50 - v19;
  v20 = sub_E4BD0(a1);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v67.receiver = v1;
  v67.super_class = v27;
  result = objc_msgSendSuper2(&v67, "layoutAttributesForElementsInRect:", v20, v22, v24, v26);
  if (!result)
  {
    return result;
  }

  v29 = result;
  sub_E59C4();
  v55 = sub_769460();

  v30 = [v2 collectionView];
  if (!v30)
  {
    return v55;
  }

  v31 = v30;
  v32 = [v30 delegate];

  if (!v32)
  {
    return v55;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v55;
  }

  sub_E2E70(v63);
  v66 = _swiftEmptyArrayStorage;
  if (v55 >> 62)
  {
    result = sub_76A860();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_30:
    v49 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unknownObjectRelease();

    sub_10A2C(v63, &unk_94EE60);
    return v49;
  }

  result = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_7:
  v50 = v32;
  v54 = v14;
  v52 = v9;
  v62 = v2;
  if (result >= 1)
  {
    v33 = 0;
    v34 = v55;
    v58 = (v7 + 16);
    v59 = v55 & 0xC000000000000001;
    v57 = (v7 + 56);
    v35 = (v7 + 48);
    v51 = (v7 + 32);
    v64 = (v7 + 8);
    v56 = (v7 + 48);
    v60 = result;
    while (1)
    {
      v36 = v59 ? sub_76A770() : *(v34 + 8 * v33 + 32);
      v37 = v36;
      v38 = [v36 indexPath];
      v39 = v65;
      sub_757590();

      (*v58)(v17, v39, v6);
      (*v57)(v17, 0, 1, v6);
      v40 = *(v61 + 48);
      sub_E5A10(v17, v5);
      sub_E5A10(v63, &v5[v40]);
      v41 = *v35;
      if ((*v35)(v5, 1, v6) == 1)
      {
        break;
      }

      v42 = v54;
      sub_E5A10(v5, v54);
      if (v41(&v5[v40], 1, v6) == 1)
      {
        sub_10A2C(v17, &unk_94EE60);
        (*v64)(v42, v6);
        v34 = v55;
LABEL_17:
        sub_10A2C(v5, &qword_946A50);
        goto LABEL_23;
      }

      v43 = v52;
      (*v51)(v52, &v5[v40], v6);
      sub_E5A80();
      v53 = sub_7691C0();
      v44 = *v64;
      (*v64)(v43, v6);
      sub_10A2C(v17, &unk_94EE60);
      v44(v42, v6);
      sub_10A2C(v5, &unk_94EE60);
      v34 = v55;
      if (v53)
      {
        goto LABEL_19;
      }

LABEL_23:
      sub_E4CE4(v37);
      sub_769440();
      if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v66 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v33 = (v33 + 1);
      sub_769500();

      (*v64)(v65, v6);
      v35 = v56;
      if (v60 == v33)
      {
        v49 = v66;
        goto LABEL_31;
      }
    }

    sub_10A2C(v17, &unk_94EE60);
    if (v41(&v5[v40], 1, v6) == 1)
    {
      sub_10A2C(v5, &unk_94EE60);
LABEL_19:
      type metadata accessor for SearchTransparencyView();
      sub_769BC0();
      v45 = sub_769210();

      isa = sub_757550().super.isa;
      v47 = [v62 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

      if (v47)
      {
        v48 = v47;
        sub_769440();
        if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v66 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_E4BD0(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_E32C0(v4);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_E4CE4(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v27 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (v16 && (v17 = v16, v18 = [v16 delegate], v17, v18))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_E2E70(v5);
        swift_unknownObjectRelease();
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

LABEL_9:
          sub_10A2C(v5, &unk_94EE60);
          goto LABEL_10;
        }

        (*(v7 + 32))(v13, v5, v6);
        v21 = [v28 indexPath];
        sub_757590();

        LOBYTE(v21) = sub_757560();
        v22 = *(v7 + 8);
        v22(v9, v6);
        if ((v21 & 1) == 0)
        {
          v22(v13, v6);

          goto LABEL_10;
        }

        sub_E59C4();
        v23 = sub_76A440();
        v24 = [v2 collectionView];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 delegate];

          if (v26)
          {
            swift_getObjectType();
            if (!swift_conformsToProtocol2())
            {

              swift_unknownObjectRelease();
              goto LABEL_20;
            }

            sub_E32C0(v15);
            swift_unknownObjectRelease();
            [v23 frame];
            [v23 setFrame:?];
          }
        }

LABEL_20:
        v22(v13, v6);
        return v23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

LABEL_10:
  v19 = v28;

  return v19;
}

id sub_E50BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v70 = a1;
  v6 = sub_7656C0();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v63 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v64 = &v59[-v9];
  v10 = sub_757640();
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&qword_946A50);
  __chkstk_darwin(v13);
  v15 = &v59[-v14];
  v16 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v16 - 8);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v59[-v20];
  __chkstk_darwin(v22);
  v24 = &v59[-v23];
  v67 = a3;
  isa = sub_757550().super.isa;
  v26 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v71.receiver = v4;
  v71.super_class = v26;
  v27 = objc_msgSendSuper2(&v71, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v27)
  {
    return 0;
  }

  v28 = [v4 collectionView];
  if (!v28)
  {
    goto LABEL_19;
  }

  v62 = v28;
  v29 = [v4 collectionView];
  if (!v29 || (v30 = v29, v31 = [v29 delegate], v30, !v31))
  {

LABEL_19:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v61 = v31;
  type metadata accessor for SearchTransparencyView();
  if (sub_769BC0() == v70 && v32 == v69)
  {
  }

  else
  {
    v33 = sub_76A950();

    if ((v33 & 1) == 0)
    {
LABEL_18:

      swift_unknownObjectRelease();
      goto LABEL_19;
    }
  }

  v34 = v68;
  (*(v68 + 16))(v24, v67, v10);
  (*(v34 + 56))(v24, 0, 1, v10);
  sub_E2E70(v21);
  v35 = *(v13 + 48);
  sub_E5A10(v24, v15);
  sub_E5A10(v21, &v15[v35]);
  v36 = *(v34 + 48);
  if (v36(v15, 1, v10) != 1)
  {
    sub_E5A10(v15, v18);
    if (v36(&v15[v35], 1, v10) != 1)
    {
      v38 = v68;
      (*(v68 + 32))(v12, &v15[v35], v10);
      sub_E5A80();
      v60 = sub_7691C0();
      v39 = *(v38 + 8);
      v39(v12, v10);
      sub_10A2C(v21, &unk_94EE60);
      sub_10A2C(v24, &unk_94EE60);
      v39(v18, v10);
      sub_10A2C(v15, &unk_94EE60);
      if (v60)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    sub_10A2C(v21, &unk_94EE60);
    sub_10A2C(v24, &unk_94EE60);
    (*(v68 + 8))(v18, v10);
    goto LABEL_17;
  }

  sub_10A2C(v21, &unk_94EE60);
  sub_10A2C(v24, &unk_94EE60);
  if (v36(&v15[v35], 1, v10) != 1)
  {
LABEL_17:
    sub_10A2C(v15, &qword_946A50);
    goto LABEL_18;
  }

  sub_10A2C(v15, &unk_94EE60);
LABEL_22:
  v40 = sub_769210();
  v41 = sub_757550().super.isa;
  v42 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v40 withIndexPath:v41];

  v43 = v64;
  v44 = v62;
  sub_E2FE0(v62);
  sub_765620();
  v46 = v45;
  [v27 frame];
  MaxY = CGRectGetMaxY(v72);
  sub_765570();
  v49 = v48;
  v50 = sub_763970();
  if (v50)
  {
    v51 = v50;
    v52 = v63;
    sub_E2FE0(v44);
    sub_765BE0();
    sub_765630();
    v54 = sub_E3618(v53, v51, v44);
    v56 = v55;

    v58 = v65;
    v57 = v66;
    (*(v65 + 8))(v52, v66);
  }

  else
  {
    v54 = 0.0;
    v56 = 0.0;
    v58 = v65;
    v57 = v66;
  }

  [v42 setFrame:{v46, MaxY + v49, v54, v56}];
  swift_unknownObjectRelease();

  (*(v58 + 8))(v43, v57);
  return v42;
}

id sub_E596C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_E59C4()
{
  result = qword_944B40;
  if (!qword_944B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_944B40);
  }

  return result;
}

uint64_t sub_E5A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94EE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E5A80()
{
  result = qword_944B50;
  if (!qword_944B50)
  {
    sub_757640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944B50);
  }

  return result;
}

uint64_t sub_E5AD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E5B18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_E5B30(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_760AD0();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_75A010();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7664A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_766CA0();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_765770();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_93DB30 != -1)
  {
    swift_once();
  }

  v26 = sub_7666D0();
  v53 = sub_BE38(v26, qword_99F988);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_766CB0();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_B1B4(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_75A030());
  v33 = sub_75A000();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_75BB20());
  *&v34[v35] = sub_75BB10();
  v38 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v34;
  v39 = ObjectType;
  v65.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemBackgroundColor];
  [v42 setBackgroundColor:v43];

  [v42 addSubview:*&v42[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_wordmarkView]];
  v44 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel;
  [v42 addSubview:*&v42[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel]];
  [v42 addSubview:*&v42[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_categoriesView]];
  [*&v42[v44] setNumberOfLines:0];
  v45 = *&v42[v44];
  v46 = [v42 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_769B20();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_BD88(&qword_9477F0);
  v49 = swift_allocObject();
  v63 = xmmword_77B6D0;
  *(v49 + 16) = xmmword_77B6D0;
  *(v49 + 32) = sub_767B80();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v39;
  v66[0] = v42;
  v50 = v42;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_767890();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v39;
  v66[0] = v50;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v66);
  return v50;
}

uint64_t sub_E63EC@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v36 = sub_7672E0();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v38 = (v34 - v5);
  __chkstk_darwin(v6);
  v37 = (v34 - v7);
  __chkstk_darwin(v8);
  v10 = (v34 - v9);
  v11 = sub_766950();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  __chkstk_darwin(v18);
  v35 = v34 - v19;
  *(swift_allocObject() + 16) = v1;
  v20 = v1;
  sub_766930();
  v41 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_wordmarkView];
  sub_75A030();
  sub_7665D0();
  sub_766940();
  sub_BEB8(v44);
  v21 = *(v12 + 8);
  v34[0] = v11;
  v21(v14, v11);
  v34[1] = v12 + 8;
  v22 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v45 = sub_75BB20();
  v46 = &protocol witness table for UILabel;
  v44[0] = v22;
  *(swift_allocObject() + 16) = v20;
  v23 = v20;
  v24 = v22;
  sub_766940();

  v21(v17, v11);
  sub_BEB8(v44);
  v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_categoriesView];
  v42 = type metadata accessor for ArcadeDownloadPackCategoryListView();
  v43 = sub_E71D0();
  v41 = v25;
  *v10 = sub_E69A4;
  v10[1] = 0;
  v26 = *(v2 + 104);
  v27 = v36;
  v26(v10, enum case for Resize.Rule.recalculated(_:), v36);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v26(v37, enum case for Resize.Rule.unchanged(_:), v27);
  v26(v38, v28, v27);
  v26(v39, v28, v27);
  v45 = sub_7672F0();
  v46 = &protocol witness table for Resize;
  sub_B1B4(v44);
  v29 = v25;
  sub_767300();
  v30 = v40;
  v31 = v34[0];
  v40[3] = v34[0];
  v30[4] = &protocol witness table for VerticalStack;
  sub_B1B4(v30);
  v32 = v35;
  sub_766940();
  v21(v32, v31);
  return sub_BEB8(v44);
}

uint64_t sub_E688C(int a1, id a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_769B20();
  return sub_7668E0();
}

uint64_t sub_E690C(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_7699B0();

  return sub_7668C0();
}

id sub_E6A80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel];
  sub_763530();
  v9 = sub_769210();

  [v8 setText:v9];

  v10 = sub_763500();
  sub_6DFF34(v10, a2, a3, a4);

  [v4 setNeedsLayout];
  [v4 invalidateIntrinsicContentSize];
  v11 = [v4 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = sub_769B20();
  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  return [v8 setTextAlignment:v13];
}

id sub_E6BC4()
{
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_769B20();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return [v1 setTextAlignment:v4];
}

id sub_E6E7C()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_769B20();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_769B20();
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  return [v1 setTextAlignment:v7];
}

double sub_E7068()
{
  sub_E63EC(v3);
  sub_B170(v3, v3[3]);
  sub_7673F0();
  v1 = v0;
  sub_BEB8(v3);
  return v1;
}

uint64_t sub_E713C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_E71D0()
{
  result = qword_944B98;
  if (!qword_944B98)
  {
    type metadata accessor for ArcadeDownloadPackCategoryListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944B98);
  }

  return result;
}

void sub_E7228()
{
  v0 = sub_760AD0();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v41 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v38 = &v32 - v3;
  v36 = sub_75A010();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_766CA0();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_765770();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_93DB30 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v32 = sub_BE38(v18, qword_99F988);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v32, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v44 = v5;
  v45 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v43);
  (*(v6 + 16))(v21, v8, v5);
  sub_766CB0();
  (*(v6 + 8))(v8, v5);
  (*(v34 + 104))(v37, enum case for WordmarkView.Alignment.leading(_:), v36);
  v22 = v35;
  v44 = v35;
  v45 = &protocol witness table for StaticDimension;
  v23 = sub_B1B4(v43);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_75A030());
  v25 = sub_75A000();
  (*(v9 + 8))(v11, v22);
  v26 = v42;
  v27 = v32;
  *(v42 + v33) = v25;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v29 = v38;
  v20(v38, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v39 + 104))(v41, enum case for DirectionalTextAlignment.none(_:), v40);
  v30 = objc_allocWithZone(sub_75BB20());
  *(v26 + v28) = sub_75BB10();
  v31 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

unint64_t sub_E7858()
{
  result = qword_944BA0;
  if (!qword_944BA0)
  {
    sub_757B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944BA0);
  }

  return result;
}

uint64_t sub_E78B0(uint64_t a1, uint64_t a2)
{
  v62 = sub_7687C0();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7580D0();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_764CF0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v67 = sub_BD88(&qword_94DDC0);
  v14 = sub_768F90();
  sub_BD88(&unk_944300);
  sub_768900();
  v74 = a2;
  sub_768ED0();
  swift_getObjectType();
  sub_757B30();
  v76 = sub_758330();
  v73 = v15;
  swift_unknownObjectRelease();
  v16 = *(v8 + 8);
  v16(v13, v7);
  if (sub_757AB0())
  {
    sub_759570();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      sub_759550();
      sub_757B30();
      v19 = a1;
      v20 = v74;
      v21 = sub_E8BE0(v13, v10, v19, v74);
      v16(v10, v7);
      v16(v13, v7);
      if (v21)
      {

        swift_unknownObjectRelease();

        return v21;
      }

      else
      {
        sub_759510();
        sub_E836C(v77, &aBlock);
        sub_BEB8(v77);
        sub_759520();

        sub_72D7D8(v18, 1, v20);

        sub_768F00();
        swift_unknownObjectRelease();
      }

      return v14;
    }
  }

  v66 = v14;
  v69 = sub_757AE0();
  v23 = v22;
  v68 = sub_757B00();
  v75 = v24;
  v65 = a1;
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v64 = sub_768FF0();
  v63 = sub_BE38(v64, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_784250;
  sub_768540();
  sub_768540();
  v81 = &type metadata for String;
  aBlock = v69;
  v79 = v23;

  sub_768550();
  v25 = v23;
  sub_10A2C(&aBlock, &unk_93FBD0);
  sub_768540();
  v81 = &type metadata for String;
  aBlock = v68;
  v79 = v75;

  sub_768550();
  sub_10A2C(&aBlock, &unk_93FBD0);
  sub_768E90();

  sub_757B20();
  v27 = v26;
  v64 = sub_757AF0();
  v29 = v28;
  v30 = sub_769210();
  v31 = sub_769210();
  if (v27)
  {
    v32 = sub_769210();
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = sub_769210();
  }

  else
  {
    v33 = 0;
  }

  v34 = v72;
  v35 = [objc_allocWithZone(SKPurchaseIntent) initWithBundleId:v30 productIdentifier:v31 appName:v32 productName:v33];

  sub_757B10();
  if (v36)
  {
    v37 = sub_769210();
  }

  else
  {
    v37 = 0;
  }

  [v35 setAdditionalBuyParams:v37];

  swift_getObjectType();
  sub_758220();
  v39 = v70;
  v38 = v71;
  if ((*(v70 + 88))(v34, v71) == enum case for LegacyAppState.openable(_:))
  {
    (*(v39 + 96))(v34, v38);

    v40 = sub_75E270();
    (*(*(v40 - 8) + 8))(v34, v40);
    sub_757AD0();
    if (v41)
    {
      v42 = sub_757AE0();
      v44 = v43;
      v45 = objc_allocWithZone(LSApplicationRecord);
      v46 = sub_E8AA0(v42, v44, 1);
      if (!v46)
      {

LABEL_30:

        goto LABEL_31;
      }

      v47 = v46;
      v48 = [v46 shortVersionString];
      if (v48)
      {
        v49 = v48;
        sub_769240();

        LOBYTE(v49) = sub_75D070();

        if (v49)
        {
          v50 = swift_allocObject();
          v51 = v68;
          v50[2] = v69;
          v50[3] = v25;
          v52 = v75;
          v50[4] = v51;
          v50[5] = v52;
          v82 = sub_E8BBC;
          v83 = v50;
          aBlock = _NSConcreteStackBlock;
          v79 = 1107296256;
          v80 = sub_23F0CC;
          v81 = &unk_883DF0;
          v53 = _Block_copy(&aBlock);

          [v35 send:v53];
          _Block_release(v53);
          v54 = v61;
          v55 = v60;
          v56 = v62;
          (*(v61 + 104))(v60, enum case for ActionOutcome.performed(_:), v62);
          v14 = v66;
          sub_768F60();
          swift_unknownObjectRelease();

          (*(v54 + 8))(v55, v56);
          return v14;
        }
      }

      else
      {
      }
    }

    goto LABEL_30;
  }

  (*(v39 + 8))(v34, v38);
LABEL_31:
  v57 = sub_757AC0();
  if (v57)
  {
    sub_72D574(v57, 1, v74);
  }

  else
  {
    sub_E8A4C();
    swift_allocError();
    sub_768F20();
  }

  v14 = v66;
  sub_768F00();

  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_E836C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7580D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_getObjectType();
  sub_758230();
  (*(v5 + 16))(v7, v10, v4);
  v11 = (*(v5 + 88))(v7, v4);
  v12 = enum case for LegacyAppState.openable(_:);
  if (v11 == enum case for LegacyAppState.openable(_:))
  {
    (*(v5 + 96))(v7, v4);

    v13 = sub_75E270();
    (*(*(v13 - 8) + 8))(v7, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_132B4(a1, v32);
  sub_BE70(0, &qword_944BB0);
  if (swift_dynamicCast())
  {
    v14 = a2;
    v15 = v30;
    v16 = sub_769210();
    v27 = v15;
    v17 = [v15 valueForKey:v16];

    if (v17)
    {
      sub_76A510();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32[0] = v30;
    v32[1] = v31;
    a2 = v14;
    if (*(&v31 + 1))
    {
      if (swift_dynamicCast())
      {
        v18 = v29;
        if (v11 != v12)
        {
          v20 = v28;
          v21 = sub_BE70(0, &qword_944BB8);
          v22 = v27;
          v23 = a2;
          v24 = sub_769790();
          *&v32[0] = v20;
          *(&v32[0] + 1) = v18;

          v33._object = 0x80000000007CEF50;
          v33._countAndFlagsBits = 0xD000000000000013;
          sub_769370(v33);

          v25 = sub_769210();

          *&v32[0] = 0x6D61726150797562;
          *(&v32[0] + 1) = 0xE900000000000073;
          [v24 __swift_setObject:v25 forKeyedSubscript:sub_76A990()];

          swift_unknownObjectRelease();
          v23[3] = v21;

          *v23 = v24;
          return (*(v5 + 8))(v10, v4);
        }

        (*(v5 + 8))(v10, v4);
      }

      else
      {
        (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
      (*(v5 + 8))(v10, v4);

      sub_10A2C(v32, &unk_93FBD0);
    }
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }

  return sub_132B4(a1, a2);
}

uint64_t sub_E8808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  sub_BE38(v7, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_784250;
  sub_768540();
  sub_768540();
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  sub_768550();
  sub_10A2C(&v10, &unk_93FBD0);
  sub_768540();
  v12 = &type metadata for String;
  v10 = a3;
  v11 = a4;

  sub_768550();
  sub_10A2C(&v10, &unk_93FBD0);
  sub_768E90();
}

unint64_t sub_E8A4C()
{
  result = qword_944BA8;
  if (!qword_944BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944BA8);
  }

  return result;
}

id sub_E8AA0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_769210();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_756F70();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_E8B7C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_E8BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E8BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v54 = a2;
  v52 = a1;
  v5 = sub_BD88(&unk_951310);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_7687B0();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75E270();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_764CF0();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7580D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_757A90();
  v53 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7576E0();
  result = sub_7576C0();
  if (result)
  {
    v50 = v19;
    v37 = v7;
    v38 = v10;
    sub_BD88(&unk_944300);
    sub_768900();
    v39 = a4;
    sub_768ED0();
    v23 = v55;
    swift_getObjectType();
    v51 = sub_758330();
    v49 = v23;
    sub_758330();
    sub_757D70();
    if ((sub_757A80() & 1) != 0 || (swift_getObjectType(), sub_758220(), v24 = sub_758070(), (*(v16 + 8))(v18, v15), (v24)) && (swift_getObjectType(), sub_758220(), v25 = sub_758080(), (*(v16 + 8))(v18, v15), (v25))
    {
      (*(v40 + 16))(v44, v54, v41);
      (*(v42 + 104))(v48, enum case for OpenableDestination.app(_:), v43);
      if (sub_757AC0())
      {
        v26 = v37;
        sub_764C10();

        v28 = v46;
        v27 = v47;
        (*(v46 + 56))(v26, 0, 1, v47);
        (*(v28 + 32))(v38, v26, v27);
        v29 = v50;
      }

      else
      {
        v31 = v46;
        v30 = v47;
        v32 = v37;
        (*(v46 + 56))(v37, 1, 1, v47);
        sub_768790();
        v33 = (*(v31 + 48))(v32, 1, v30);
        v29 = v50;
        if (v33 != 1)
        {
          sub_10A2C(v32, &unk_951310);
        }
      }

      sub_757FC0();
      swift_allocObject();
      v34 = sub_757FA0();
      v35 = sub_72D7C0(v34, 1, v39);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v21, v29);
      return v35;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v53 + 8))(v21, v50);
      return 0;
    }
  }

  return result;
}

unint64_t sub_E9248()
{
  result = qword_944BC0;
  if (!qword_944BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944BC0);
  }

  return result;
}

uint64_t sub_E929C()
{
  v1 = sub_7572A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  if (!*(v0 + 24))
  {
    v16 = v0 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 40))(1, 0, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  sub_758500();
  sub_757290();
  sub_EC14C(&qword_944CD0, &type metadata accessor for Date);
  v8 = sub_7691B0();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = sub_761040();
  v11 = v0 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 40))((v8 & 1) == 0, 0, v13, v12);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v11 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v10 & 1, 0, v15, v14);

    return swift_unknownObjectRelease();
  }
}

uint64_t NotifyMeButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_E929C();
  return swift_unknownObjectRelease();
}

void (*NotifyMeButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_E96A4;
}

void sub_E96A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_E929C();
  }

  free(v3);
}

uint64_t NotifyMeButtonPresenter.__allocating_init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_768940();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v14 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_768900();

  sub_768ED0();
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline, v12, v9);
  *(v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_75A920();

  sub_768ED0();
  *(v13 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_bag) = v18;
  sub_E929C();
  sub_E9C30();
  v15 = [objc_opt_self() defaultCenter];
  sub_761060();

  v16 = sub_760FD0();
  [v15 addObserver:v13 selector:"userNotificationsDidChangeNotification:" name:v16 object:0];

  swift_unknownObjectRelease();

  return v13;
}

uint64_t NotifyMeButtonPresenter.init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_768940();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v15 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_768900();

  sub_768ED0();
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline, v14, v11);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_75A920();

  sub_768ED0();
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_bag) = v19;
  sub_E929C();
  sub_E9C30();
  v16 = [objc_opt_self() defaultCenter];
  sub_761060();

  v17 = sub_760FD0();
  [v16 addObserver:v6 selector:"userNotificationsDidChangeNotification:" name:v17 object:0];

  swift_unknownObjectRelease();

  return v6;
}

void sub_E9C30()
{
  v1 = v0;
  v2 = sub_7572A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (*(v0 + 24))
  {
    sub_758500();
    (*(v3 + 32))(v11, v8, v2);
    sub_757290();
    v12 = sub_757230();
    v13 = *(v3 + 8);
    v13(v5, v2);
    if ((v12 & 1) != 0 && (v14 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer, !*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer)))
    {
      isa = sub_757220().super.isa;

      v16 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v1 target:"displayTimeReached" selector:0 userInfo:0 repeats:0.0];

      v17 = [objc_opt_self() mainRunLoop];
      [v17 addTimer:v16 forMode:NSRunLoopCommonModes];

      v13(v11, v2);
      v18 = *(v1 + v14);
      *(v1 + v14) = v16;
    }

    else
    {
      v13(v11, v2);
    }
  }
}

uint64_t NotifyMeButtonPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline;
  v3 = sub_768940();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_13238(v0 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view);

  return v0;
}

uint64_t NotifyMeButtonPresenter.__deallocating_deinit()
{
  NotifyMeButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NotifyMeButtonPresenter.didTapButton(sender:)(UIButton sender)
{
  v2 = *(v1 + 24);
  if (v2 && (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) & 1) == 0)
  {

    if (sub_75A700())
    {
      if (sub_761040())
      {
        sub_EB67C(v2);
      }

      else
      {
        sub_EBACC(v2);
      }
    }

    else
    {
      sub_761010();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2].super.super.super.super.isa = v4;
      v6[3].super.super.super.super.isa = v5;
      v6[4].super.super.super.super.isa = v2;
      v6[5].super.super.super.super.isa = sender.super.super.super.super.isa;
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      v9 = sub_BE70(0, &qword_940340);
      swift_retain_n();
      v10 = sender.super.super.super.super.isa;

      v11[3] = v9;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = sub_769970();
      sub_768F10();

      sub_BEB8(v11);
    }
  }
}

uint64_t sub_EA200()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_EA238(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v12 = Strong;
    if (v9)
    {

      v13 = sub_761040();

      if (v13)
      {
        sub_EB67C(a4);
      }

      else
      {
        sub_EBACC(a4);
      }

      goto LABEL_11;
    }

    v14 = sub_758530();
    if (!v14)
    {
LABEL_11:
    }

    v15 = v14;
    v16 = sub_BD88(&unk_93F630);
    sub_768860();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {

      return sub_10A2C(v8, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v15, 1, v12, v8);

      return (*(v17 + 8))(v8, v16);
    }
  }

  return result;
}

uint64_t sub_EA480()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_EA4DC()
{
  v0 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_758510();
    if (v5)
    {
      v6 = v5;
      v7 = sub_BD88(&unk_93F630);
      sub_768860();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {

        return sub_10A2C(v2, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v6, 1, v4, v2);

        return (*(v8 + 8))(v2, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_EA68C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_EA6D4(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_761020();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 88))(v8, v5);
    if (v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) || v11 == enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      v13 = sub_758520();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = sub_BD88(&unk_93F630);
          sub_768860();
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v4, 1, v17) == 1)
          {

            sub_10A2C(v4, &unk_93F980);
          }

          else
          {
            sub_32A6C0(v14, 1, v16, v4);

            (*(v18 + 8))(v4, v17);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (v11 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = sub_76A940();
        __break(1u);
        return result;
      }

      v19 = v10 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 32))(0, 0, ObjectType, v20);
        swift_unknownObjectRelease();
      }
    }

    *(v10 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_EAA28(uint64_t a1)
{
  v2 = sub_761020();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) && v8 != enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      if (v8 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        result = sub_76A940();
        __break(1u);
        return result;
      }

      v10 = v7 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(1, 0, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    *(v7 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

uint64_t sub_EABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_758510();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = sub_BD88(&unk_93F630);
        sub_768860();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v8, 1, v15) == 1)
        {

          sub_10A2C(v8, &unk_93F980);
        }

        else
        {
          sub_32A6C0(v12, 1, v14, v8);

          (*(v16 + 8))(v8, v15);
        }
      }

      else
      {
      }
    }

    v17 = v10 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 32))(a5 & 1, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    *(v10 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

void sub_EAE50()
{
  v1 = sub_768380();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v29 = v7;

    v10 = sub_756CD0();
    if (v10)
    {
      v11 = v10;
      sub_761060();
      v30 = sub_760FF0();
      v31 = v12;
      sub_76A6E0();
      if (*(v11 + 16) && (v13 = sub_663E34(aBlock), (v14 & 1) != 0))
      {
        sub_132B4(*(v11 + 56) + 32 * v13, v32);
        sub_1EB60(aBlock);

        if (swift_dynamicCast())
        {
          v15 = v31;
          v28 = v30;
          if (v28 == sub_7584F0() && v15 == v16)
          {
          }

          else
          {
            LODWORD(v28) = sub_76A950();

            if ((v28 & 1) == 0)
            {
LABEL_21:

              return;
            }
          }
        }
      }

      else
      {

        sub_1EB60(aBlock);
      }
    }

    v17 = sub_756CD0();
    if (v17)
    {
      v18 = v17;
      sub_761060();
      v30 = sub_761000();
      v31 = v19;
      sub_76A6E0();
      if (*(v18 + 16) && (v20 = sub_663E34(aBlock), (v21 & 1) != 0))
      {
        sub_132B4(*(v18 + 56) + 32 * v20, v32);
        sub_1EB60(aBlock);

        sub_BE70(0, &qword_93E550);
        if (swift_dynamicCast())
        {
          v22 = v30;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            swift_unknownObjectRelease();

            if (v22 == v24)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_1EB60(aBlock);
      }
    }

    sub_BE70(0, &qword_940340);
    v25 = sub_769970();
    v26 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_EC084;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_883F58;
    v27 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_EC14C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    sub_769980();

    _Block_release(v27);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v29);
  }
}

uint64_t sub_EB36C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_E929C();
  }

  return result;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_EB67C(uint64_t a1)
{
  v24 = sub_768CD0();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_948710);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_768670();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v23 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22[1] = v1;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(0, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_7584E0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &unk_948710);
  }

  else
  {
    v15 = v23;
    (*(v10 + 32))(v23, v8, v9);
    sub_768CB0();
    sub_768930();

    (*(v3 + 8))(v5, v24);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_761050();
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = sub_BE70(0, &qword_940340);

  v20 = sub_769970();
  v25[3] = v19;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v20;
  sub_768F10();

  sub_BEB8(v25);
}

uint64_t sub_EBACC(uint64_t a1)
{
  v28 = sub_768CD0();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_948710);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_768670();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v10;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v10 = v26;
    (*(v13 + 32))(1, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_7584D0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &unk_948710);
  }

  else
  {
    v15 = v27;
    (*(v10 + 32))(v27, v8, v9);
    sub_768CB0();
    sub_768930();

    (*(v3 + 8))(v5, v28);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_761030();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v20;
  v22 = sub_BE70(0, &qword_940340);
  swift_retain_n();

  v23 = sub_769970();
  v29[3] = v22;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v23;
  sub_768F10();

  sub_BEB8(v29);
}

uint64_t type metadata accessor for NotifyMeButtonPresenter()
{
  result = qword_944C10;
  if (!qword_944C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EBFBC()
{
  result = sub_768940();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_EC08C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EC0E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_EC14C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EC1A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_BD88(&qword_944CD8);
  v59 = *(v17 - 8);
  v60 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v58 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView];
  sub_762800();
  v23 = *(v22 + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel);
  v24 = sub_769210();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView];
  sub_7627F0();
  v26 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel);
  v27 = sub_769210();

  [v26 setText:v27];

  v28 = sub_7627C0();
  if (v28)
  {
    v29 = v28;
    sub_764C60();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton);
      v32 = sub_769210();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
      *v34 = sub_ED444;
      v34[1] = v33;

      v36 = v35;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton) setTitle:0 forState:{0, v58}];
  v37 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
  v36 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
  *v37 = 0;
  v37[1] = 0;
LABEL_6:
  sub_F704(v36);
  swift_getObjectType();
  v38 = sub_ED2CC(a4);
  v40 = v39;
  v41 = v38;
  result = sub_16A228(v38, v39);
  if (!*&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v43 = sub_7627E0();
  sub_140C58(v43);

  sub_764250();

  v44 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!v44)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v47 = v58;
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = ObjectType;
  v48 = objc_allocWithZone(sub_BD88(&unk_94A760));

  v49 = v44;
  v50 = sub_767A20();
  v51 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource;
  v52 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource] = v50;
  v53 = v50;

  v54 = swift_allocObject();
  *(v54 + 16) = v41;
  *(v54 + 24) = v40;
  sub_767A30();

  sub_BD88(&unk_93F5C0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_77D9F0;
  *(v55 + 32) = a1;
  swift_getKeyPath();
  sub_ED44C(&unk_94A770, &type metadata accessor for LockupCollectionSearchResult);
  sub_ED44C(&qword_944CE0, &type metadata accessor for Lockup);

  sub_766770();

  v56 = *&v9[v51];
  if (v56)
  {
    v57 = v56;
    sub_767A60();
  }

  [v9 setNeedsLayout];
  return (*(v59 + 8))(v20, v60);
}

uint64_t sub_EC73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void *sub_EC880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_BD88(&unk_948730);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = sub_758C70();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v55 = v13;
  v57 = v27;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_769BD0();
  v28 = sub_769210();

  isa = sub_757550().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_BD88(&qword_944CE8);
    sub_768700();
    v58 = v64;
    if (sub_764EC0())
    {
      sub_75FE70();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = sub_758C60();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = sub_7699E0(), v34, (v35))
      {
        v36 = v57;
        v31(v57, enum case for OfferStyle.white(_:), v18);
        v37 = v36;
        (*(v19 + 56))(v36, 0, 1, v18);
      }

      else
      {
        v37 = v57;
        (*(v19 + 56))(v57, 1, 1, v18);
      }
    }

    else
    {
      v37 = v57;
      (*(v19 + 56))(v57, 1, 1, v18);
    }

    v38 = v56;
    v39 = *(v56 + OBJC_IVAR____TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_BD88(&unk_948740);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = sub_75BD30();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_BD88(&unk_9457F0);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = sub_765870();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_4A18A4(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10A2C(v47, &unk_9457D0);
    v39[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v39 setNeedsLayout];
    sub_10A2C(v45, &unk_94AC40);
    sub_10A2C(v43, &unk_9457E0);
    sub_10A2C(v41, &unk_948730);
    v48 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    sub_759190();
    sub_759210();
    sub_ED44C(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A0C0();
    if (sub_764EE0())
    {
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v50 = sub_75CF00();
      sub_BE38(v50, qword_99B898);
      sub_75CDD0();
      [v49 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v49 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();
      v51 = *&v39[v48];
      sub_75A050();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10A2C(v37, &unk_94A780);
  }

  else
  {

    return 0;
  }

  return v38;
}

uint64_t sub_ED154(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_769210();
  type metadata accessor for SeparatorSpacerReusableView();
  sub_769BD0();
  v9 = sub_769210();

  isa = sub_757550().super.isa;
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = swift_dynamicCastClass();
  v13 = v12;
  if (!v12)
  {

    return v13;
  }

  v14 = v12 + OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_separatorInsets;
  *v14 = xmmword_784490;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  result = sub_7575C0();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || a6 != -1)
  {
    [v13 setHidden:(result + 1) % a6 == 0];
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_ED2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7627E0();
  *a1 = result;
  return result;
}

BOOL sub_ED2CC(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  sub_769A00();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = sub_7699D0();

  return (v1 & 1) == 0;
}

uint64_t sub_ED35C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_ED3C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7627E0();
  *a1 = result;
  return result;
}

uint64_t sub_ED3F8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_ED44C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_ED494()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_ED5C0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_ED5C0()
{
  v0 = sub_75D250();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_75DA20();
  sub_765580();
  v10 = v9;
  v8(v7, v4);
  v11 = sub_75DA30();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, "init");
  if (qword_93D060 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v0, qword_954820);
  __chkstk_darwin(v16);
  *(&v20 - 2) = v15;
  sub_765470();

  sub_75DA40();
  sub_75D270();
  sub_ED900(&qword_944CF0, &type metadata accessor for ArcadeFooterLayout);
  sub_766ED0();
  v18 = v17;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_ED900(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_ED994(uint64_t a1)
{
  v2 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_7656C0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_EDA68(a1, v4);
  v7 = v6;
  sub_5FCD4(v4);
  return v7;
}

uint64_t sub_EDA68(uint64_t a1, id a2)
{
  v124 = a2;
  v3 = sub_BD88(&qword_943918);
  v116 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = &v88 - v4;
  v110 = sub_75E580();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v111 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_75E5A0();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_767030();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v88 - v9;
  v101 = sub_75A480();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_766AF0();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v88 - v13;
  __chkstk_darwin(v14);
  v96 = &v88 - v15;
  v108 = sub_766D70();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v120 = &v88 - v18;
  v119 = sub_756EB0();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_75FA00();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v90 = &v88 - v22;
  v123 = sub_75A430();
  v23 = *(v123 - 8);
  __chkstk_darwin(v123);
  v25 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_BD88(&qword_946810);
  __chkstk_darwin(v26 - 8);
  v127 = sub_BD88(&qword_944CF8);
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v88 - v27;
  v28 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v28 - 8);
  v30 = &v88 - v29;
  v31 = sub_7656C0();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v128 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A450();
  sub_EED78(&qword_944D00, &type metadata accessor for ProductReview);
  v34 = a1;
  result = sub_75C750();
  v125 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v89 = v3;
  sub_5FC64(v124, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v121 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    sub_75C7B0();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_5FCD4(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v128, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  sub_75C800();
  v40 = v126;
  sub_769060();
  sub_75A440();
  v41 = v123;
  v42 = (*(v23 + 88))(v25, v123);
  if (v42 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    goto LABEL_7;
  }

  if (v42 == enum case for ProductReview.ReviewSource.user(_:))
  {
    (*(v23 + 96))(v25, v41);
    v43 = *v25;
    sub_EECB0();
    v44 = v127;
    sub_769030();
    v45 = sub_273218(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v128;
    sub_765630();
    v47 = sub_527DE4();
    swift_getObjectType();
    sub_40FDE0(v43, v45 & 1, v45 & 1, v47);

    swift_unknownObjectRelease();

    (*(v122 + 8))(v40, v44);
    return (*(v121 + 8))(v46, v38);
  }

  if (v42 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
  {
LABEL_7:

    (*(v122 + 8))(v40, v127);
    (*(v121 + 8))(v128, v38);
    return (*(v23 + 8))(v25, v41);
  }

  (*(v23 + 96))(v25, v41);
  v48 = *v25;
  sub_EECB0();
  sub_769030();
  v88 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v49 = v90;
    sub_75C740();
    v50 = v91;
    sub_75F980();
    sub_EED78(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
    v51 = v93;
    sub_76A520();
    v52 = *(v92 + 8);
    v52(v50, v51);
    v52(v49, v51);
  }

  sub_765630();
  swift_getKeyPath();
  sub_75C7B0();

  v53 = v134;
  v54 = v117;
  sub_75A470();
  v55 = sub_657738(v54, 0, v53);
  v118[1](v54, v119);
  v56 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
  v57 = [v55 length];
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v53;
  *(v58 + 32) = v56;
  *(v58 + 40) = 1;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_119AC;
  *(v59 + 24) = v58;
  v132 = sub_2636C;
  v133 = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v131 = &unk_8840E8;
  v60 = _Block_copy(aBlock);
  v124 = v53;
  v61 = v56;

  [v55 enumerateAttributesInRange:0 options:v57 usingBlock:{0x100000, v60}];

  _Block_release(v60);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v63 = v94;
  sub_766AE0();
  v64 = v95;
  sub_766A90();
  v65 = *(v97 + 8);
  v66 = v98;
  v65(v63, v98);
  sub_766AA0();
  v65(v64, v66);
  sub_766D50();
  v119 = v61;
  sub_766DA0();
  v67 = sub_75A4B0();
  v69 = v68;
  v70 = sub_75A460();
  v71 = v99;
  sub_75A490();
  v72 = sub_658400(v67, v69, v70, v71);

  (*(v100 + 8))(v71, v101);
  v118 = v72;
  isEscapingClosureAtFileLocation = v102;
  sub_767020();
  v53 = v115;
  if (qword_93D7B0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v123 = v48;
  v73 = sub_7666D0();
  sub_BE38(v73, qword_99EF08);
  sub_766FF0();
  (*(v104 + 8))(isEscapingClosureAtFileLocation, v105);
  sub_766D50();
  v74 = v106;
  sub_766DB0();
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v75 = v110;
  v76 = sub_BE38(v110, qword_9A0660);
  (*(v109 + 16))(v111, v76, v75);
  v77 = v108;
  v131 = v108;
  v132 = &protocol witness table for LabelPlaceholder;
  v78 = sub_B1B4(aBlock);
  v79 = v107;
  v80 = *(v107 + 16);
  v81 = v120;
  v80(v78, v120, v77);
  v129[3] = v77;
  v129[4] = &protocol witness table for LabelPlaceholder;
  v82 = sub_B1B4(v129);
  v80(v82, v74, v77);
  v83 = v112;
  sub_75E590();
  sub_EED78(&qword_943938, &type metadata accessor for ReviewSummaryLayout);
  v84 = v114;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v85 = v124;
  v86 = v89;
  sub_7673F0();

  (*(v116 + 8))(v53, v86);
  (*(v113 + 8))(v83, v84);
  v87 = *(v79 + 8);
  v87(v74, v77);
  v87(v81, v77);
  (*(v122 + 8))(v126, v127);
  return (*(v121 + 8))(v128, v88);
}

unint64_t sub_EECB0()
{
  result = qword_944D08;
  if (!qword_944D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944D08);
  }

  return result;
}

uint64_t sub_EED08()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_EED60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EED78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EEDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_764970();
  *a1 = result & 1;
  return result;
}

void sub_EEFB8(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_FB844(&qword_93F500, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_EF164(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_20718;
}

id sub_EF1D8()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView];
  sub_26E5C0();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  sub_17CC38();
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppEventCollectionViewCell()
{
  result = qword_944D40;
  if (!qword_944D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_EF3C4(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_EF164(v2);
  return sub_21028;
}

double sub_EF4BC()
{
  [*(*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_EF548()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_EF5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_EF630(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_93F620);
  return swift_endAccess();
}

uint64_t sub_EF708(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_BD88(&qword_944D88);
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = sub_764A60();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&unk_944D90);
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_BD88(&unk_959540);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  sub_75C7E0();
  sub_768760();
  (*(v17 + 8))(v19, v16);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  sub_134D8(v37, v36);
  sub_BD88(&unk_944DA0);
  sub_758700();
  if (swift_dynamicCast())
  {
    v20 = v35;
    v21 = v30;
    (*(v10 + 16))(v12, v15, v30);
    sub_768FA0();
    v22 = v25;
    sub_768B30();
    v23 = v27;
    sub_650D38(v20, v26);
    [v23 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v28 + 8))(v22, v29);
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v30);
  }

  return sub_BEB8(v37);
}

uint64_t sub_EFBC4(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_BD88(&qword_944D88);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v41 = &v31 - v3;
  v4 = sub_764A60();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_BD88(&unk_944D90);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_BD88(&unk_959540);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  sub_75C7E0();
  sub_768760();
  (*(v17 + 8))(v19, v16);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  sub_134D8(v44, v43);
  sub_BD88(&unk_944DA0);
  sub_7587A0();
  if (swift_dynamicCast())
  {
    v32 = v6;
    v20 = v15;
    v21 = v37;
    v22 = *(v10 + 16);
    v31 = v20;
    v22(v12);
    sub_768FA0();
    sub_768B30();
    sub_75B370();
    v23 = swift_dynamicCastClass();
    v24 = v38;
    if (v23)
    {
      v25 = v23;
      v26 = v34;

      sub_27484(v25, v33);
    }

    else
    {
      sub_765860();
      v27 = swift_dynamicCastClass();
      v26 = v34;
      v28 = v21;
      if (!v27)
      {
LABEL_8:
        [v26 setNeedsLayout];

        swift_unknownObjectRelease();
        (*(v35 + 8))(v41, v36);
        (*(v28 + 8))(v32, v24);
        (*(v39 + 8))(v9, v40);
        (*(v10 + 8))(v31, v42);
        return sub_BEB8(v44);
      }

      v29 = v27;

      sub_27698(v29, v33);
    }

    v28 = v21;
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  (*(v37 + 8))(v6, v38);
  (*(v39 + 8))(v9, v40);
  (*(v10 + 8))(v15, v42);
  return sub_BEB8(v44);
}

uint64_t sub_F0150(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v2 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v2 - 8);
  v73 = v56 - v3;
  v71 = sub_7623A0();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_BD88(&unk_9457F0);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v56 - v5;
  v6 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v6 - 8);
  v65 = v56 - v7;
  v64 = sub_763750();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_948730);
  __chkstk_darwin(v9 - 8);
  v66 = v56 - v10;
  v75 = sub_BD88(&qword_944D88);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v77 = v56 - v11;
  v12 = sub_764A60();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_75FA00();
  v15 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_944D90);
  v81 = *(v18 - 8);
  v82 = v18;
  __chkstk_darwin(v18);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v56 - v22;
  v24 = sub_BD88(&unk_959540);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v56 - v26;
  sub_75C7E0();
  sub_768760();
  v28 = v27;
  v29 = v14;
  (*(v25 + 8))(v28, v24);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v30 = sub_527DE4();
  sub_134D8(v84, v83);
  sub_BD88(&unk_944DA0);
  sub_75AAB0();
  if (swift_dynamicCast())
  {
    v59 = v17;
    v60 = v15;
    v31 = *(v81 + 16);
    v58 = v23;
    v31(v20, v23, v82);
    sub_768FA0();
    sub_768B30();
    v32 = v61;
    v33 = [v61 contentView];
    v56[1] = v30;
    [v30 pageMarginInsets];
    [v33 setLayoutMargins:?];

    v34 = sub_75AA50();
    v57 = v29;
    if (v34)
    {
      if (v34 >> 62)
      {
        v38 = v34;
        v39 = sub_76A860();
        v34 = v38;
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_5:
        v35 = v34;
        sub_75A110();
        sub_768900();
        sub_768ED0();
        v36 = v83[0];
        v37 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v37 setHidden:0];
        *&v37[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks] = v35;

        *&v37[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader] = v36;

        sub_533B34(v35, v36);

LABEL_10:
        v56[0] = *&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton];
        v40 = sub_75AA90();
        v41 = sub_75AA70();
        v42 = sub_75AA60();
        v43 = v62;
        v44 = v64;
        (*(v62 + 104))(v63, enum case for OfferButtonPresenterViewAlignment.center(_:), v64);
        (*(v43 + 56))(v65, 1, 1, v44);
        sub_FB844(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v45 = v66;
        sub_760940();
        v46 = sub_BD88(&unk_948740);
        (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        v47 = v67;
        v48 = v71;
        (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.above(_:), v71);
        (*(v47 + 56))(v73, 1, 1, v48);
        sub_FB844(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
        v49 = v69;
        sub_760940();
        sub_1DFEBC(v40, v41, v42, v45, v49, v76, 0, 0);

        (*(v70 + 8))(v49, v72);
        sub_10A2C(v45, &unk_948730);
        sub_761230();
        sub_768900();
        sub_768ED0();
        v50 = v83[0];
        sub_75AA80();
        sub_75AAA0();
        v51 = sub_761190();
        swift_allocObject();
        v52 = v50;
        v53 = sub_761170();
        sub_FB844(&unk_9513A0, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        sub_761180();
        v83[3] = v51;
        v83[0] = v53;
        v54 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_B33C8(v83, &v32[v54], &unk_93FBD0);
        swift_endAccess();
        [v32 setNeedsLayout];

        swift_unknownObjectRelease();

        (*(v74 + 8))(v77, v75);
        (*(v79 + 8))(v57, v80);
        (*(v60 + 8))(v59, v78);
        (*(v81 + 8))(v58, v82);
        return sub_BEB8(v84);
      }
    }

    [*&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  (*(v79 + 8))(v29, v80);
  (*(v15 + 8))(v17, v78);
  (*(v81 + 8))(v23, v82);
  return sub_BEB8(v84);
}

uint64_t sub_F0E88(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, char *, char *, id))
{
  v29 = a4;
  v31 = a3;
  v27 = a2;
  v30 = sub_BD88(&qword_944D88);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v26 - v4;
  v5 = sub_764A60();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75FA00();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BD88(&unk_944D90);
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_BD88(&unk_959540);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_75C7E0();
  sub_768760();
  (*(v18 + 8))(v20, v17);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v21 = sub_527DE4();
  sub_134D8(v39, v38);
  sub_BD88(&unk_944DA0);
  v31(0);
  if (swift_dynamicCast())
  {
    v22 = v37;
    v23 = v32;
    (*(v11 + 16))(v13, v16, v32);
    sub_768FA0();
    v24 = v26;
    sub_768B30();
    v29(v22, v27, v10, v7, v21);
    swift_unknownObjectRelease();

    (*(v28 + 8))(v24, v30);
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v32);
  }

  return sub_BEB8(v39);
}

uint64_t sub_F1364(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v2 = sub_BD88(&qword_944D88);
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = v53 - v3;
  v61 = sub_764A60();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FA00();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_BD88(&unk_944D90);
  v9 = *(v65 - 8);
  __chkstk_darwin(v65);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - v17;
  sub_75C7E0();
  sub_768760();
  v19 = v18;
  v20 = v8;
  (*(v16 + 8))(v19, v15);
  v21 = v5;
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v22 = sub_527DE4();
  sub_134D8(v68, v67);
  sub_BD88(&unk_944DA0);
  sub_757BA0();
  if (swift_dynamicCast())
  {
    v24 = v65;
    v23 = v66;
    (*(v9 + 16))(v11, v14, v65);
    sub_768FA0();
    v25 = v56;
    sub_768B30();
    v26 = v22;
    sub_320474(v23, v57, v20, v21, v22);
    v57 = v23;
    sub_757B90();
    v27 = sub_764EF0();
    v29 = v28;

    if (v29)
    {
      v53[1] = v26;
      v54 = v14;
      v55 = v20;
      v30 = v21;
      v69._countAndFlagsBits = 0x465F4E4F5F444441;
      v69._object = 0xEE005050415F524FLL;
      v70._object = 0x80000000007CF0F0;
      v70._countAndFlagsBits = 0xD000000000000031;
      sub_75B750(v69, v70);
      sub_BD88(&unk_944E30);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_77B6D0;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_FA4CC();
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;

      sub_769270();

      v32 = objc_allocWithZone(NSMutableAttributedString);
      v33 = sub_769210();
      v34 = [v32 initWithString:v33];

      v35 = objc_allocWithZone(NSString);
      v36 = sub_769210();

      v37 = [v35 initWithString:v36];

      v38 = sub_769210();

      v39 = [v37 rangeOfString:v38 options:4];
      v41 = v40;

      v42 = v60;
      v43 = [v60 tintColor];
      v67[0] = v43;
      sub_BD88(&unk_944E40);
      v44 = sub_76A470();

      [v34 addAttribute:NSForegroundColorAttributeName value:v44 range:{v39, v41}];
      swift_unknownObjectRelease();
      v45 = *(*&v42[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel);
      if (v45)
      {
        v46 = v45;
        v47 = v34;
        [v46 setAttributedText:v47];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v48 = v61;
      v49 = v62;
      v51 = v63;
      v50 = v64;
      v21 = v30;
      v24 = v65;
      v20 = v55;
      v14 = v54;
    }

    else
    {
      swift_unknownObjectRelease();
      v48 = v61;
      v49 = v62;
      v51 = v63;
      v50 = v64;
    }

    (*(v58 + 8))(v25, v59);
    (*(v50 + 8))(v21, v48);
    (*(v49 + 8))(v20, v51);
    (*(v9 + 8))(v14, v24);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v64 + 8))(v5, v61);
    (*(v62 + 8))(v8, v63);
    (*(v9 + 8))(v14, v65);
  }

  return sub_BEB8(v68);
}

uint64_t sub_F1AFC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_BD88(&qword_944D88);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - v2;
  v3 = sub_764A60();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FA00();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_944D90);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_75C7E0();
  sub_768760();
  (*(v16 + 8))(v18, v15);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v19 = sub_527DE4();
  sub_134D8(v35, v34);
  sub_BD88(&unk_944DA0);
  sub_75C8C0();
  if (swift_dynamicCast())
  {
    v20 = v33;
    v21 = v28;
    (*(v9 + 16))(v11, v14, v28);
    sub_768FA0();
    v22 = v24;
    sub_768B30();
    sub_25674C(v20, v22, v25, v8, v5, v19);
    swift_unknownObjectRelease();

    (*(v26 + 8))(v22, v27);
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v28);
  }

  return sub_BEB8(v35);
}

uint64_t sub_F1FBC(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_BD88(&qword_944D88);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v35 = &v30 - v3;
  v4 = sub_764A60();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_75FA00();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_75C7E0();
  sub_768760();
  (*(v16 + 8))(v18, v15);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v45, v44);
  sub_BD88(&unk_944DA0);
  sub_75A270();
  if (swift_dynamicCast())
  {
    v31 = v8;
    v33 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v43;
    v30 = v10;
    v23 = *(v10 + 16);
    v32 = v9;
    v23(v34, v14, v9);
    sub_768FA0();
    v24 = v35;
    sub_768B30();
    sub_BD88(&unk_943590);
    sub_768900();
    sub_768ED0();
    v43 = v22;
    sub_758C30();

    v25 = v44[0];
    v26 = v14;
    if ((~v44[0] & 0xF000000000000007) != 0)
    {
      v27 = v44[1];
    }

    else
    {

      v27 = 0;
      v25 = v22;
    }

    v28 = v31;
    sub_4408AC(v25, v27);
    sub_B3204(v25, v27);

    (*(v37 + 8))(v24, v38);
    (*(v20 + 8))(v33, v21);
    (*(v42 + 8))(v28, v19);
    (*(v30 + 8))(v26, v32);
  }

  else
  {
    (*(v40 + 8))(v6, v41);
    (*(v42 + 8))(v8, v39);
    (*(v10 + 8))(v14, v9);
  }

  return sub_BEB8(v45);
}

uint64_t sub_F2560(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, char *, uint64_t, char *, char *))
{
  v28 = a4;
  v30 = a3;
  v26 = a2;
  v29 = sub_BD88(&qword_944D88);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v25 - v4;
  v5 = sub_764A60();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75FA00();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&unk_944D90);
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = sub_BD88(&unk_959540);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - v19;
  sub_75C7E0();
  sub_768760();
  (*(v18 + 8))(v20, v17);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  sub_134D8(v38, v37);
  sub_BD88(&unk_944DA0);
  v30(0);
  if (swift_dynamicCast())
  {
    v21 = v36;
    v22 = v31;
    (*(v11 + 16))(v13, v16, v31);
    sub_768FA0();
    v23 = v25;
    sub_768B30();
    v28(v21, v23, v26, v10, v7);
    swift_unknownObjectRelease();

    (*(v27 + 8))(v23, v29);
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v22);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v31);
  }

  return sub_BEB8(v38);
}

uint64_t sub_F2A3C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  ObjectType = swift_getObjectType();
  v28 = sub_BD88(&qword_944D88);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v24 - v2;
  v3 = sub_764A60();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FA00();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_BD88(&unk_944D90);
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_75C7E0();
  sub_768760();
  (*(v16 + 8))(v18, v15);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v19 = sub_527DE4();
  sub_134D8(v37, v35);
  sub_BD88(&unk_944DA0);
  sub_75A3E0();
  if (swift_dynamicCast())
  {
    v36 = v34;
    v20 = v29;
    (*(v9 + 16))(v11, v14, v29);
    sub_768FA0();
    v21 = v24;
    sub_768B30();
    v22 = sub_FB844(&qword_944E58, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v22 + 56))(&v36, v21, v27, v8, v5, v19, ObjectType, v22);
    swift_unknownObjectRelease();
    (*(v25 + 8))(v21, v28);
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v20);
    sub_BEB8(v37);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v29);
    return sub_BEB8(v37);
  }
}

size_t sub_F2F78(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v94 = a2;
  v2 = sub_BD88(&unk_944E60);
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  __chkstk_darwin(v2);
  v91 = &v71 - v4;
  v81 = sub_7674E0();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v10 - 8);
  v80 = &v71 - v11;
  v79 = sub_BD88(&qword_944D88);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v83 = &v71 - v12;
  v13 = sub_764A60();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_75FA00();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_BD88(&unk_944D90);
  v18 = *(v89 - 8);
  __chkstk_darwin(v89);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v24 = sub_BD88(&unk_959540);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v71 - v26;
  sub_75C7E0();
  sub_768760();
  (*(v25 + 8))(v27, v24);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v99, v96);
  sub_BD88(&unk_944DA0);
  sub_75A420();
  if (!swift_dynamicCast())
  {
    (*(v86 + 8))(v15, v87);
    (*(v84 + 8))(v17, v85);
    (*(v18 + 8))(v23, v89);
    return sub_BEB8(v99);
  }

  v72 = v17;
  v73 = v15;
  v28 = v95;
  (*(v18 + 16))(v20, v23, v89);
  sub_768FA0();
  v29 = v28;
  sub_768B30();
  v96[0] = sub_75A410();
  sub_759D00();
  v30 = sub_768900();
  sub_FB844(&qword_9513B0, &type metadata accessor for LinkableText);
  v31 = v80;
  v90 = v30;
  sub_768820();

  v32 = sub_BD88(&unk_944E80);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyText;
  v34 = v88;
  swift_beginAccess();
  sub_FB88C(v31, v34 + v33, &unk_944E70);
  swift_endAccess();
  sub_4FAAAC();
  sub_10A2C(v31, &unk_944E70);
  v35 = sub_75A3F0();
  *(v34 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_isDetailHeader) = v35 & 1;
  v36 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_BE70(0, &qword_93E540);
  v71 = v23;
  if (v35)
  {
    v37 = sub_769FD0();
  }

  else
  {
    v37 = sub_769FF0();
  }

  v38 = *(v36 + qword_9580B0);
  *(v36 + qword_9580B0) = v37;
  v39 = v37;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_4ED788();
  }

  v80 = v29;
  v40 = sub_75A400();
  v41 = v40;
  if (v40 >> 62)
  {
    v42 = sub_76A860();
  }

  else
  {
    v42 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  }

  v74 = v18;
  if (!v42)
  {

    v45 = _swiftEmptyArrayStorage;
    v51 = v82;
    v50 = v88;
LABEL_21:
    sub_4FC25C();
    v52 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v50 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems) = v45;

    sub_4FAD50();
    if (sub_75A3F0())
    {
      v53 = *(v76 + 104);
      LODWORD(v93) = enum case for Separator.Position.top(_:);
      v92 = v53;
      v53(v51);
      v91 = sub_766970();
      v97 = v91;
      v98 = &protocol witness table for ZeroDimension;
      sub_B1B4(v96);
      sub_766960();
      v54 = v77;
      sub_7674F0();
      v55 = sub_767510();
      v56 = 1;
      v94 = *(*(v55 - 8) + 56);
      v94(v54, 0, 1, v55);
      v57 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_FB88C(v54, v50 + v57, &qword_94C3F0);
      swift_endAccess();
      v58 = v50;
      sub_4FB50C();
      sub_10A2C(v54, &qword_94C3F0);
      if (*(*(v50 + v52) + 16))
      {
        v92(v82, v93, v81);
        v97 = v91;
        v98 = &protocol witness table for ZeroDimension;
        sub_B1B4(v96);
        sub_766960();
        v59 = v75;
        sub_7674F0();
        v56 = 0;
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
      }

      else
      {
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
        v59 = v75;
      }

      v94(v59, v56, 1, v55);
      v69 = v59;
      v70 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_FB88C(v69, v58 + v70, &qword_94C3F0);
      swift_endAccess();
      sub_4FB520();

      sub_10A2C(v69, &qword_94C3F0);
      (*(v63 + 8))(v83, v60);
      (*(v62 + 8))(v73, v61);
    }

    else
    {
      v64 = sub_767510();
      v65 = *(*(v64 - 8) + 56);
      v66 = v77;
      v65(v77, 1, 1, v64);
      v67 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_FB88C(v66, v50 + v67, &qword_94C3F0);
      swift_endAccess();
      sub_4FB50C();
      sub_10A2C(v66, &qword_94C3F0);
      v65(v66, 1, 1, v64);
      v68 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_FB88C(v66, v50 + v68, &qword_94C3F0);
      swift_endAccess();
      sub_4FB520();

      sub_10A2C(v66, &qword_94C3F0);
      (*(v78 + 8))(v83, v79);
      (*(v86 + 8))(v73, v87);
    }

    (*(v84 + 8))(v72, v85);
    (*(v74 + 8))(v71, v89);
    return sub_BEB8(v99);
  }

  v96[0] = _swiftEmptyArrayStorage;
  result = sub_143A98(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v96[0];
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = sub_76A770();
      }

      else
      {
        v46 = *(v41 + 8 * v44 + 32);
      }

      v95 = v46;
      sub_762FF0();
      sub_FB844(&unk_944E90, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v47 = v91;
      sub_768820();

      v96[0] = v45;
      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        sub_143A98(v48 > 1, v49 + 1, 1);
        v45 = v96[0];
      }

      ++v44;
      v45[2] = v49 + 1;
      (*(v93 + 32))(v45 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v49, v47, v92);
    }

    while (v42 != v44);

    v50 = v88;
    v51 = v82;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}