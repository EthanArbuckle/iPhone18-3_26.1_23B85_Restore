void sub_66394(void *a1)
{
  v3 = sub_764590();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_940BD8);
  __chkstk_darwin(v6);
  v8 = &v70 - v7;
  v9 = sub_BD88(&qword_940BE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  if (!*(v1 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [Strong collectionView];

  if (!v20)
  {
    return;
  }

  sub_67844();
  v21 = a1;
  v75 = v6;
  v22 = v14;
  v23 = v17;
  v24 = v1;
  v25 = v11;
  v26 = v5;
  v27 = v8;
  v28 = v21;
  v29 = sub_76A1C0();

  v74 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v75;
  if ((v29 & 1) == 0 || *(v33 + 88) != 1)
  {
    return;
  }

  [v74 contentOffset];
  v38 = v37;
  v39 = *(v33 + 32);
  if (v39)
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v39;
    sub_622DF8(v40);
    v43 = v42;

    v44 = v38 / v43;
    if (v38 / v43 >= 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v44 = v37 / 0.0;
    v45 = 1.0;
    if (v37 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v44 < 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

LABEL_13:
  v46 = *(v33 + 40);
  if (v46)
  {

    v46(v47, v45, 0.0);
    sub_F704(v46);
  }

  v48 = *(v33 + 72);
  v49 = v77;
  if (!v48)
  {
    goto LABEL_26;
  }

  v50 = *(v33 + 80);
  v51 = *(v33 + 32);
  v73 = *(v33 + 72);
  v71 = v31;
  v72 = v50;
  if (v51)
  {
    sub_F714(v48);

    sub_7645B0();

    v52 = v76;
    v53 = *(v76 + 56);
    v53(v34, 0, 1, v49);
  }

  else
  {
    v52 = v76;
    v54 = *(v76 + 56);
    v70 = v32;
    v53 = v54;
    v54(v34, 1, 1, v77);
    v32 = v70;
  }

  (*(v52 + 104))(v35, enum case for Uber.Style.inline(_:), v49);
  v53(v35, 0, 1, v49);
  v55 = v49;
  v56 = *(v36 + 48);
  sub_67890(v34, v30);
  sub_67890(v35, v30 + v56);
  v57 = *(v52 + 48);
  if (v57(v30, 1, v55) == 1)
  {
    sub_10A2C(v35, &qword_940BE0);
    sub_10A2C(v34, &qword_940BE0);
    if (v57(v30 + v56, 1, v55) == 1)
    {
      sub_10A2C(v30, &qword_940BE0);
      v59 = v73;
LABEL_28:
      if (v45 >= 0.5)
      {
        v64 = 0.35;
      }

      else
      {
        v64 = 0.2;
      }

      v58.n128_u64[0] = 1.0;
      if (v45 < 0.5)
      {
        v58.n128_f64[0] = 0.0;
      }

      v65 = v59;
      v59(v58, v64);
      sub_66F80(v74, *&v64, 0, v45);
      sub_F704(v65);
      goto LABEL_34;
    }
  }

  else
  {
    sub_67890(v30, v32);
    if (v57(v30 + v56, 1, v55) != 1)
    {
      v60 = v76;
      v61 = v30 + v56;
      v62 = v71;
      (*(v76 + 32))(v71, v61, v55);
      sub_67900();
      LODWORD(v75) = sub_7691C0();
      v63 = *(v60 + 8);
      v63(v62, v55);
      sub_10A2C(v35, &qword_940BE0);
      sub_10A2C(v34, &qword_940BE0);
      v63(v32, v55);
      sub_10A2C(v30, &qword_940BE0);
      v59 = v73;
      if (v75)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_10A2C(v35, &qword_940BE0);
    sub_10A2C(v34, &qword_940BE0);
    (*(v76 + 8))(v32, v55);
  }

  sub_10A2C(v30, &qword_940BD8);
  v59 = v73;
LABEL_25:
  sub_F704(v59);
LABEL_26:
  sub_66F80(v74, 0, 1, v45);
LABEL_34:
  v66 = swift_unknownObjectWeakLoadStrong();
  if (v66)
  {
    v67 = v66;
    v68 = [v66 navigationController];

    if (v68)
    {
      v69 = [v68 navigationBar];

      [v69 _setTitleOpacity:v45];
    }
  }
}

uint64_t sub_66AA0(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_764590();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_940BD8);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = sub_BD88(&qword_940BE0);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - v21;
  __chkstk_darwin(v23);
  v25 = v36 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v36[1] = v6;
    if (*(v6 + 32))
    {

      sub_7645B0();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v36 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_67890(v25, v16);
    sub_67890(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10A2C(v22, &qword_940BE0);
      sub_10A2C(v25, &qword_940BE0);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10A2C(v16, &qword_940BE0);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_67890(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10A2C(v22, &qword_940BE0);
      sub_10A2C(v25, &qword_940BE0);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10A2C(v16, &qword_940BD8);
      goto LABEL_13;
    }

    (*(v11 + 32))(v13, &v16[v28], v10);
    sub_67900();
    v34 = sub_7691C0();
    v35 = *(v11 + 8);
    v35(v13, v10);
    sub_10A2C(v22, &qword_940BE0);
    sub_10A2C(v25, &qword_940BE0);
    v35(v19, v10);
    sub_10A2C(v16, &qword_940BE0);
    if (v34)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = sub_769A00();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_66F80(void *a1, uint64_t a2, char a3, double a4)
{
  v9 = sub_764590();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_940BD8);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_BD88(&qword_940BE0);
  __chkstk_darwin(v15 - 8);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v41 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v44 = v4;
  if (v26)
  {

    sub_7645B0();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_67890(v23, v14);
  sub_67890(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) == 1)
  {
    sub_10A2C(v19, &qword_940BE0);
    sub_10A2C(v23, &qword_940BE0);
    v30 = v29(&v14[v28], 1, v9);
    v31 = v44;
    if (v30 == 1)
    {
      result = sub_10A2C(v14, &qword_940BE0);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v33 = v43;
  sub_67890(v14, v43);
  if (v29(&v14[v28], 1, v9) == 1)
  {
    sub_10A2C(v19, &qword_940BE0);
    sub_10A2C(v23, &qword_940BE0);
    (*(v10 + 8))(v33, v9);
    v31 = v44;
LABEL_12:
    result = sub_10A2C(v14, &qword_940BD8);
    goto LABEL_13;
  }

  v35 = &v14[v28];
  v36 = v42;
  (*(v10 + 32))(v42, v35, v9);
  sub_67900();
  v37 = v33;
  v38 = sub_7691C0();
  v39 = *(v10 + 8);
  v39(v36, v9);
  sub_10A2C(v19, &qword_940BE0);
  sub_10A2C(v23, &qword_940BE0);
  v39(v37, v9);
  result = sub_10A2C(v14, &qword_940BE0);
  v31 = v44;
  if (v38)
  {
LABEL_16:
    v34 = *(v31 + 56);
    if (!v34)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v34 = *(v31 + 40);
  if (!v34)
  {
    return result;
  }

LABEL_17:

  v34(v40, a4, v25);
  return sub_F704(v34);
}

void sub_67464(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_67844();
        v13 = a1;
        v14 = sub_76A1C0();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          if ((sub_66AA0(v16, v18, v19, v20, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v22 = v21;
            [v13 _systemContentInset];
            v24 = v23;
            v25 = swift_unknownObjectWeakLoadStrong();
            v26 = 0.0;
            MaxY = 0.0;
            if (v25)
            {
              v28 = v25;
              v29 = [v25 navigationController];

              if (v29)
              {
                v30 = [v29 navigationBar];

                [v30 frame];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v51.origin.x = v32;
                v51.origin.y = v34;
                v51.size.width = v36;
                v51.size.height = v38;
                MaxY = CGRectGetMaxY(v51);
              }
            }

            v39 = *(v5 + 32);
            if (v39)
            {
              v40 = swift_unknownObjectWeakLoadStrong();
              v41 = v39;
              sub_622DF8(v40);
              v43 = v42;

              v44 = *(v5 + 32);
              if (v44)
              {
                v26 = *(v44 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v43 = 0.0;
            }

            v45 = v43 + v26 - v24;
            v46 = *(a2 + 8);
            if (v45 >= 0.0)
            {
              if (v46 > v45)
              {
                return;
              }
            }

            else
            {
              if (v46 > 0.0)
              {
                return;
              }

              v45 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v47 = 0.07;
            }

            else
            {
              v47 = 0.5;
            }

            v48 = v45 * v47;
            v49 = v45 - MaxY;
            if (v46 <= v48)
            {
              v50 = -(v22 + v24);
            }

            else
            {
              v50 = v49;
            }

            *(a2 + 8) = v50;
          }
        }
      }
    }
  }
}

uint64_t sub_676E4()
{
  sub_13238(v0 + 16);

  sub_F704(*(v0 + 40));
  sub_F704(*(v0 + 56));
  sub_F704(*(v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_67844()
{
  result = qword_940BD0;
  if (!qword_940BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_940BD0);
  }

  return result;
}

uint64_t sub_67890(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_940BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_67900()
{
  result = qword_940BE8;
  if (!qword_940BE8)
  {
    sub_764590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940BE8);
  }

  return result;
}

uint64_t sub_67958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

Swift::Int sub_679EC()
{
  v1 = *v0;
  sub_76AA30();
  sub_76AA40(v1);
  return sub_76AA80();
}

Swift::Int sub_67A60()
{
  v1 = *v0;
  sub_76AA30();
  sub_76AA40(v1);
  return sub_76AA80();
}

void sub_67AA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_68DDC;
  v6[5] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_23F0CC;
  v6[3] = &unk_8818B8;
  v5 = _Block_copy(v6);

  [a1 presentViewController:a2 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_67B80()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_768F60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_67C74(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_760280();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;

  sub_764BF0();
  sub_146CF0(a1, v38, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v23(v15, 1, v16) != 1)
    {
      sub_10A2C(v15, &unk_9442D0);
    }
  }

  else
  {
    sub_61AE8(v15, v22);
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_68DF8(v22, type metadata accessor for FlowDestination);
    return 0;
  }

  v24 = sub_BD88(&qword_955C90);
  sub_10A2C(&v22[*(v24 + 48)], &unk_93FD30);
  sub_758AA0();
  sub_758A90();

  sub_764BF0();
  sub_146CF0(a1, v38, v12);
  if (v23(v12, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v25 = v23(v12, 1, v16);
    v26 = v37;
    if (v25 != 1)
    {
      sub_10A2C(v12, &unk_9442D0);
    }
  }

  else
  {
    sub_61AE8(v12, v19);
    v26 = v37;
  }

  v27 = v33;
  sub_D2028(v33);
  sub_68DF8(v19, type metadata accessor for FlowDestination);
  sub_68DF8(v9, type metadata accessor for FlowPresentationHints);
  v29 = v35;
  v28 = v36;
  (*(v36 + 32))(v35, v27, v26);
  v30 = (*(v28 + 88))(v29, v26);
  result = 1;
  if (v30 != enum case for FlowPresentationContext.presentModal(_:) && v30 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v28 + 8))(v29, v26);
    return 0;
  }

  return result;
}

uint64_t sub_6816C(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_BD88(&qword_955C60) + 64);
    v15 = sub_75C190();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_68DF8(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_68DF8(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_50774(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = sub_7624A0();
  sub_10A2C(v5, &unk_93FD30);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_68398(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v9 - 8);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v66 - v18);
  sub_BD88(&qword_94DDC0);
  v20 = sub_768F90();
  v72 = a2;
  v21 = sub_32CB94(a2);
  if (v21)
  {
    v71 = v20;
    v22 = v21;
    v23 = [v21 traitCollection];
    v79 = v22;
    sub_BE70(0, &unk_94DCA0);
    v73 = v22;
    sub_BD88(&qword_940BF8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v76 = 0;
      aBlock = 0u;
      v75 = 0u;
    }

    sub_764BF0();
    sub_146CF0(a1, v78, v13);
    v24 = *(v15 + 48);
    v25 = v24(v13, 1, v14);
    v66 = v24;
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v14) != 1)
      {
        sub_10A2C(v13, &unk_9442D0);
      }
    }

    else
    {
      sub_61AE8(v13, v19);
    }

    v27 = sub_758A60();
    v29 = v28;
    sub_758A80();
    v30 = sub_471418(v19, v23, v27, v29, v8, &aBlock, a3, 1);

    sub_10A2C(v8, &unk_944FF0);
    sub_68DF8(v19, type metadata accessor for FlowDestination);
    sub_10A2C(&aBlock, &unk_9442E0);
    if (!v30)
    {
      sub_68D1C();
      swift_allocError();
      *v45 = 0;
      v20 = v71;
      sub_768F50();

      return v20;
    }

    v67 = v30;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    v68 = aBlock;
    v31 = [v73 viewControllers];
    sub_BE70(0, &qword_9434E0);
    v32 = sub_769460();

    if (v32 >> 62)
    {
      goto LABEL_48;
    }

    v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    while (v33)
    {
      while (__OFSUB__(v33--, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v33 = sub_76A860();
        if (!v33)
        {
          goto LABEL_49;
        }
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = sub_76A770();
        goto LABEL_19;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v33 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_47;
      }

      v35 = *(v32 + 32 + 8 * v33);
LABEL_19:
      v36 = v35;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v36)
      {

        goto LABEL_23;
      }
    }

LABEL_49:

    v36 = 0;
LABEL_23:
    v37 = [v73 topViewController];
    v20 = v71;
    if (v37)
    {
      v38 = v37;
      v39 = v36;
      if (v36)
      {
        v40 = v39;
        v41 = sub_76A1C0();

        if (v41)
        {
          v76 = sub_6902C;
          v77 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v75 = sub_23F0CC;
          *(&v75 + 1) = &unk_881890;
          v42 = _Block_copy(&aBlock);
          v43 = v40;

          v44 = v67;
          [v43 presentViewController:v67 animated:1 completion:v42];

          _Block_release(v42);

          return v20;
        }
      }

      else
      {
      }
    }

    else if (!v36)
    {
      v46 = 0;
    }

    v47 = v72;
    v48 = [v72 presentedViewController];
    if (v48)
    {
      v49 = v48;
      if (([v48 isBeingDismissed] & 1) == 0)
      {

        sub_764BF0();
        v50 = v70;
        sub_146CF0(a1, &aBlock, v70);
        v51 = v66;
        if (v66(v50, 1, v14) == 1)
        {
          v52 = v51;
          v53 = v69;
          swift_storeEnumTagMultiPayload();
          if (v52(v50, 1, v14) != 1)
          {
            sub_10A2C(v50, &unk_9442D0);
          }
        }

        else
        {
          v53 = v69;
          sub_61AE8(v50, v69);
        }

        v54 = sub_6816C(v49, v53);
        sub_68DF8(v53, type metadata accessor for FlowDestination);
        if (v54)
        {
          type metadata accessor for ArticleContainerViewController();
          v55 = swift_dynamicCastClass();
          if (v55)
          {
            v56 = *(v55 + OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController);
            v57 = v49;
            v58 = [v56 popToRootViewControllerAnimated:0];
          }

          v59 = swift_allocObject();
          v60 = v67;
          v59[2] = v47;
          v59[3] = v60;
          v59[4] = v20;
          v76 = sub_68DD0;
          v77 = v59;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v75 = sub_23F0CC;
          *(&v75 + 1) = &unk_881868;
          v61 = _Block_copy(&aBlock);

          v62 = v47;
          v63 = v60;

          [v49 dismissViewControllerAnimated:1 completion:v61];

          goto LABEL_43;
        }
      }
    }

    v76 = sub_6902C;
    v77 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_23F0CC;
    *(&v75 + 1) = &unk_881818;
    v61 = _Block_copy(&aBlock);

    v64 = v67;
    [v47 presentViewController:v67 animated:1 completion:v61];

LABEL_43:
    _Block_release(v61);

    return v20;
  }

  sub_68D1C();
  swift_allocError();
  *v26 = 1;
  sub_768F50();

  return v20;
}

unint64_t sub_68D1C()
{
  result = qword_940BF0;
  if (!qword_940BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940BF0);
  }

  return result;
}

uint64_t sub_68D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_68D88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_68DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RatingView.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingView.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_68FCC()
{
  result = qword_940C00;
  if (!qword_940C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940C00);
  }

  return result;
}

uint64_t type metadata accessor for TodayCardVideoView()
{
  result = qword_940C08;
  if (!qword_940C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_690DC(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v94 = a7;
  v92 = a6;
  v95 = a5;
  v96 = a4;
  v97 = a3;
  v98 = a2;
  v87 = sub_768C60();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948710);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v17 = sub_75DC30();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7570A0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v77 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v78 = &v77 - v25;
  __chkstk_darwin(v26);
  v28 = &v77 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_99A2B8] = 7;
  v29[qword_99A2C0] = 0;
  v89 = a1;
  sub_59C2C(a1, v103);
  v90 = v22;
  v30 = *(v22 + 16);
  v91 = v21;
  v79 = v30;
  v30(v28, v98, v21);
  v88 = v18;
  v31 = *(v18 + 16);
  v84 = v20;
  v93 = v17;
  v83 = v18 + 16;
  v82 = v31;
  v31(v20, v97, v17);
  v32 = v16;
  sub_1ED18(v96, v16, &unk_948710);
  sub_1ED18(v95, v13, &unk_948710);
  sub_1ED18(v92, v102, &unk_940700);
  swift_weakInit();
  *&v29[qword_940578 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_940580 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_940588 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_940590;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_940598] = 0;
  v29[qword_9405A0] = 0;
  v29[qword_9405A8] = 0;
  *&v29[qword_9405B0] = 0;
  *&v29[qword_9405B8] = 0;
  v34 = qword_9405C0;
  sub_7625F0();
  *&v29[v34] = sub_7625E0();
  v35 = qword_9405C8;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_99A1B0];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_99A1B8];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_99A1C0] = 1;
  v29[qword_9405D0] = 0;
  v40 = &v29[qword_99A1D0];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_99A1E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_99A1E8] = 0;
  v29[qword_99A1F0] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_9405D8] = 0;
  v29[qword_99A208] = 0;
  *&v29[qword_9405E0] = 0;
  v29[qword_9405E8] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_59C2C(v103, &v29[qword_99A1D8]);
  v41 = sub_757080();
  v43 = v42;
  v44 = sub_7650F0();
  v81 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v91;
    }

    else
    {
      v47 = sub_76A950();

      v46 = v91;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    sub_757030();
    v49 = sub_769210();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v77;
      sub_757060();

      v52 = *(v90 + 32);
      v53 = v78;
      v52(v78, v51, v46);
      v52(&v29[qword_99A1C8], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v91;
  }

LABEL_9:
  v79(&v29[qword_99A1C8], v36, v46);
LABEL_10:
  v80 = v32;
  sub_1ED18(v32, &v29[qword_99A198], &unk_948710);
  v54 = v13;
  sub_1ED18(v13, &v29[qword_99A1A0], &unk_948710);
  v55 = v84;
  v56 = v93;
  v82(&v29[qword_99A200], v84, v93);
  sub_1ED18(v102, &v29[qword_99A1A8], &unk_940700);
  v57 = type metadata accessor for VideoView();
  v101.receiver = v29;
  v101.super_class = v57;
  v58 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_940590;
  [*&v58[qword_940590] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = sub_769AA0();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_9405C8;
  [*&v58[qword_9405C8] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  *v67 = sub_5AA60;
  v67[1] = v66;
  v69 = v65;

  sub_F704(v68);

  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  v70 = v85;
  sub_768C10();
  sub_10A2C(v99, &unk_93FBD0);
  sub_10A2C(v100, &unk_93FBD0);
  sub_769E70();
  (*(v86 + 8))(v70, v87);
  [v58 addSubview:*&v58[v64]];
  sub_58B90();

  sub_10A2C(v102, &unk_940700);
  sub_10A2C(v54, &unk_948710);
  sub_10A2C(v80, &unk_948710);
  v71 = *(v88 + 8);
  v71(v55, v56);
  v72 = *(v90 + 8);
  v73 = v91;
  v72(v81, v91);
  sub_1EB60(v103);
  v74 = v58[qword_9405A8];
  v58[qword_9405A8] = 1;
  if (v74)
  {
  }

  else
  {
    v75 = v58;
    sub_53B1C();
  }

  sub_10A2C(v92, &unk_940700);
  sub_10A2C(v95, &unk_948710);
  sub_10A2C(v96, &unk_948710);
  v71(v97, v93);
  v72(v98, v73);
  sub_1EB60(v89);
  return v58;
}

void sub_69D6C()
{
  v1 = v0;
  v2 = qword_99A2B8;
  v3 = *(v0 + qword_99A2B8);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_99A2C0);
    v6 = *(v0 + qword_9405A8);
    *(v0 + qword_9405A8) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_9405A8) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_9405A8);
  *(v0 + qword_9405A8) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_53B1C();
  }

LABEL_9:
  v7 = qword_9405B0;
  v8 = *(v0 + qword_9405B0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_759A70();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = sub_7599E0(), v12, (v13))
    {
      if ((*(v1 + qword_99A2C0) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (sub_7599E0())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_69EEC()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_99A200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_75DB90();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || (sub_7625C0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + qword_99A2B8);
  if (v7 == 7 || v7 == 4)
  {
    return *(v1 + qword_99A2C0);
  }

  else
  {
    return 1;
  }
}

void sub_6A048()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_99A2B8;
  v7 = *(v0 + qword_99A2B8);
  if (v7 == 4)
  {
    v9 = *(v0 + qword_99A2C0);
    v10 = *(v0 + qword_9405A8);
    *(v0 + qword_9405A8) = v9 ^ 1;
    if (v9 & 1) != 0 || (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v7 != 7)
  {
    *(v0 + qword_9405A8) = 0;
    goto LABEL_9;
  }

  v8 = *(v0 + qword_9405A8);
  *(v0 + qword_9405A8) = 1;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    sub_53B1C();
  }

LABEL_9:
  v11 = qword_99A2C0;
  if (*(v0 + qword_99A2C0) == 1 && (v12 = qword_99A200, swift_beginAccess(), (*(v3 + 16))(v5, v1 + v12, v2), LOBYTE(v12) = sub_75DB90(), (*(v3 + 8))(v5, v2), (v12 & 1) != 0) && (sub_7625C0() & 1) != 0 && ((v13 = *(v1 + v6), v13 != 7) && v13 != 4 || *(v1 + v11) == 1))
  {
    sub_525F4();
  }

  else
  {
    v14 = qword_9405B0;
    v15 = *(v1 + qword_9405B0);
    if (v15)
    {
      v16 = v15;
      v17 = sub_759A70();

      if (v17 & 1) != 0 || (v18 = *(v1 + v14)) != 0 && (v19 = v18, v20 = sub_7599E0(), v19, (v20))
      {
        if ((*(v1 + v11) & 1) == 0)
        {
          v21 = *(v1 + v6);
          if (v21 == 7 || v21 == 4)
          {
            v23 = *(v1 + v14);
            if (v23)
            {
              v24 = v23;
              if (sub_7599E0())
              {
                [v24 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_6A2CC()
{
  v1 = *(v0 + qword_99A2B8);
  v2 = v1 == 7 || v1 == 4;
  if (!v2 || *(v0 + qword_99A2C0) == 1)
  {
    sub_525F4();
  }
}

uint64_t sub_6A308()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6A340()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeDownloadPackViewController();
  v7.receiver = v0;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_B170(&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  sub_75A160();
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode:2];
}

uint64_t sub_6A518(char a1)
{
  v2 = v1;
  v4 = sub_7572A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7587B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArcadeDownloadPackViewController();
  v14.receiver = v2;
  v14.super_class = v12;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v8);
  sub_7587C0();
  (*(v9 + 8))(v11, v8);
  result = sub_75A130();
  if (result)
  {
    sub_757290();
    sub_757270();
    (*(v5 + 8))(v7, v4);
    sub_75CAA0();
  }

  return result;
}

uint64_t sub_6A794(char a1)
{
  v2 = v1;
  v4 = sub_7572A0();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_768D60();
  __chkstk_darwin(v7 - 8);
  v8 = sub_BD88(&qword_940CB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArcadeDownloadPackViewController();
  v20.receiver = v2;
  v20.super_class = v15;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v12 + 104))(v14, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v11);
  sub_7587C0();
  (*(v12 + 8))(v14, v11);
  result = sub_75A130();
  if (result)
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v18 + 8))(v6, v19);
    sub_75CAC0();
    v17 = sub_75CAD0();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_75CAB0();
  }

  return result;
}

uint64_t sub_6AB14(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_B170(&v15[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v15[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, *a5, v9);
  sub_7587C0();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_6AC80(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_7587C0();

  return (*(v6 + 8))(v8, v5);
}

void sub_6ADAC()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
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

void sub_6AEDC()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView + 8];
  ObjectType = swift_getObjectType();
  [v5 bounds];
  [v3 convertRect:v5 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v1 view];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v1 buttonTray];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 buttonTray];
  [v16 convertRect:v26 fromCoordinateSpace:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  CGRectGetMinY(v39);
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  CGRectGetMinY(v40);
  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  CGRectGetWidth(v41);
  sub_75A150();
  sub_75F4C0();

  v35 = sub_75A150();
  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    (*(v4 + 8))(v35, v36, ObjectType, v4);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_6B1A0()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setAlpha:0.0];
  v1 = [v0 buttonTray];
  [v1 setAlpha:0.0];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_6BB7C;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_23F0CC;
  v12 = &unk_8819C0;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_6BB9C;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_3D6D80;
  v12 = &unk_881A10;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.2];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_6B370(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setAlpha:1.0];
  v5 = [a1 buttonTray];
  [v5 setAlpha:1.0];
}

void sub_6B558()
{
  v1 = sub_767140();
  __chkstk_darwin(v1 - 8);
  sub_767130();
  v2 = objc_allocWithZone(sub_767160());
  v3 = sub_767150();
  sub_6BA44(v3);

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setHidden:1];
  v4 = [v0 buttonTray];
  [v4 setHidden:1];
}

id sub_6B6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6B784(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_268C8(v5);
  }

  sub_32A6C0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

void sub_6B8C4()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setHidden:0];
  v1 = [v0 buttonTray];
  [v1 setHidden:0];
}

void sub_6B940()
{
  sub_767230();
  sub_6B9EC();
  swift_errorRetain();

  v0 = sub_7671F0();
  sub_6BA44(v0);
}

unint64_t sub_6B9EC()
{
  result = qword_940CA8;
  if (!qword_940CA8)
  {
    sub_75A190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940CA8);
  }

  return result;
}

id sub_6BA44(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController];
  sub_761930();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_761920();
    v9 = *&v1[v3] == 0;

    return [v1 setModalInPresentation:v9];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6BB44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6BB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_766690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6BCA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_766690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration()
{
  result = qword_940D40;
  if (!qword_940D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6BD94()
{
  sub_6BE60();
  if (v0 <= 0x3F)
  {
    sub_396E8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        sub_766690();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_6BE60()
{
  if (!qword_940D50)
  {
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_940D50);
    }
  }
}

uint64_t sub_6BEB0()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99A2D8);
  sub_BE38(v0, qword_99A2D8);
  return sub_7666A0();
}

uint64_t sub_6BF04()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  sub_161DC(v4, qword_99A2F0);
  v5 = sub_BE38(v4, qword_99A2F0);
  if (qword_93C268 != -1)
  {
    swift_once();
  }

  v6 = qword_93C270;
  v7 = qword_940CC0;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_940CD8;
  v11 = xmmword_940CC8;
  sub_7666A0();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_6C0C0()
{
  result = [objc_opt_self() blackColor];
  qword_940CB8 = result;
  return result;
}

uint64_t sub_6C0FC()
{
  sub_396E8();
  result = sub_769FC0();
  qword_940CC0 = result;
  return result;
}

__n128 sub_6C130()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_940CC8 = *&UIEdgeInsetsZero.top;
  unk_940CD8 = v1;
  return result;
}

__n128 sub_6C14C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_758720();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (a1)
  {
    v46 = v13;

    sub_75A300();

    v50 = v5;
    v16 = *(v5 + 88);
    v17 = v16(v15, v4);
    v18 = enum case for AppPlatform.watch(_:);
    v19 = 0.0;
    v20 = 0.0;
    if (v17 != enum case for AppPlatform.watch(_:))
    {
      (*(v50 + 8))(v15, v4);
      v20 = 5.0;
    }

    v49 = sub_75A350();
    v47 = v21;
    v48 = sub_75A340();
    v52.n128_u32[0] = v22;

    sub_75A300();

    if (v16(v11, v4) != v18)
    {
      (*(v50 + 8))(v11, v4);
      v19 = 1.0;
    }

    sub_75A300();
    if (v16(v8, v4) == v18)
    {
      if (qword_93C260 != -1)
      {
        swift_once();
      }

      v23 = qword_940CB8;
    }

    else
    {
      if (qword_93C268 != -1)
      {
        swift_once();
      }

      v23 = qword_940CC0;

      (*(v50 + 8))(v8, v4);
    }

    v30 = v52.n128_u8[0];

    v31 = v46;
    sub_75A300();
    if (v16(v31, v4) == v18)
    {
      v32 = sub_75A340();
      v25 = v23;
      if (v33)
      {
        v28 = v30;
        if (qword_93C250 != -1)
        {
          swift_once();
        }

        v34 = sub_766690();
        sub_BE38(v34, qword_99A2D8);
        sub_766630();
        v36 = v35;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v36 * 15.0;
        v51 = _Q1;
        v52 = _Q1;
        v26 = v48;
        v27 = v49;
        goto LABEL_24;
      }

      v43 = v32;

      v51 = vdupq_n_s64(v43);
      v52 = v51;
      v26 = v48;
      v27 = v49;
    }

    else
    {
      v42 = *&UIEdgeInsetsZero.top;
      v51 = *&UIEdgeInsetsZero.bottom;
      v52 = v42;

      (*(v50 + 8))(v31, v4);
      v26 = v48;
      v27 = v49;
      v25 = v23;
    }

    v28 = v30;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  if (qword_93C268 != -1)
  {
    swift_once();
  }

  v24 = *&UIEdgeInsetsZero.top;
  v51 = *&UIEdgeInsetsZero.bottom;
  v52 = v24;
  v25 = qword_940CC0;
  v26 = 0;
  v27 = 0;
  v20 = 5.0;
  v28 = 1;
  v19 = 1.0;
  v29 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration();
  sub_7666A0();
  *a2 = v20;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 & 1;
  *(a2 + 40) = v19;
  *(a2 + 48) = v25;
  result = v52;
  *(a2 + 72) = v51;
  *(a2 + 56) = result;
  return result;
}

unint64_t sub_6C638()
{
  result = qword_940D98;
  if (!qword_940D98)
  {
    sub_762C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940D98);
  }

  return result;
}

uint64_t sub_6C690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_75FF70();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_32CF48(Strong);

  v24 = v10;
  sub_3C80C();
  v11 = v10;
  sub_BD88(&qword_940AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_6C9A8(&v21);
LABEL_6:
    sub_BD88(&qword_94DDC0);
    sub_6CA10();
    swift_allocError();
    v14 = sub_768F20();

    return v14;
  }

  sub_10914(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_B170(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_BEB8(v25);
    goto LABEL_6;
  }

  sub_BD88(&qword_94DDC0);
  v14 = sub_768F90();
  v15 = sub_75F3B0();
  sub_768900();
  sub_768ED0();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  sub_75FF60();
  v16 = sub_75FF40();
  sub_75B430();
  v17 = sub_75B410();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  sub_75B3E0();

  (*(v6 + 8))(v8, v5);
  sub_BEB8(v25);
  return v14;
}

uint64_t sub_6C9A8(uint64_t a1)
{
  v2 = sub_BD88(&qword_940AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6CA10()
{
  result = qword_940DA0;
  if (!qword_940DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940DA0);
  }

  return result;
}

uint64_t sub_6CA64()
{
  sub_72D58C(*(v0 + 24), 1, *(v0 + 32));
  sub_768F00();
}

unint64_t sub_6CAC4()
{
  result = qword_940DA8;
  if (!qword_940DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940DA8);
  }

  return result;
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_766690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_766690();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_10914(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = sub_766690();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_10914(a3, a7 + v13[6]);
  sub_10914(a4, a7 + v13[7]);
  sub_10914(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_10914(a6, v16);
}

uint64_t sub_6D040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D0FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_6D310(v3, a1);
}

uint64_t sub_6D310(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_943B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_6D718(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10914(a2, a9 + v22[5]);
  sub_10914(a3, a9 + v22[6]);
  sub_10914(a4, a9 + v22[7]);
  sub_10914(a5, a9 + v22[8]);
  sub_10914(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_10914(a11, a9 + v22[13]);
  sub_10914(a12, a9 + v22[14]);
  sub_10914(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_10914(a7, v33);
}

uint64_t sub_6D718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();

  return sub_6FE2C(a1, a4);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1)
{
  swift_getObjectType();

  return sub_6ECA8(a1, v1);
}

uint64_t static AppPromotionCardLayout.prefersAccessibilityLayout(with:)(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_769B50();

  return v2 & 1;
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v160 = a2;
  v154 = COERCE_DOUBLE(sub_75CF00());
  v152 = *(*&v154 - 8);
  __chkstk_darwin(*&v154);
  v151 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_76A920());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_B170((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_766530();
  sub_B170((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_766530();
  sub_B170((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_766530();
  sub_B170(v7, v7[3]);
  sub_33964();
  sub_766700();
  v20 = v19;
  v21 = *(v15 + 8);
  v156 = *&v17;
  v158 = *&v14;
  *&v157 = v15 + 8;
  MaxY = *&v21;
  v21(v17, v14);
  v159 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = a5;
  v171.size.height = a6;
  CGRectGetWidth(v171);
  sub_766660();
  Height = round(v22);
  v172.origin.x = 0.0;
  v172.origin.y = 0.0;
  v172.size.width = a5;
  v172.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v172)) < 1.0)
  {
    v173.origin.x = 0.0;
    v173.origin.y = 0.0;
    v173.size.width = a5;
    v173.size.height = a6;
    Height = CGRectGetHeight(v173);
  }

  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  Width = CGRectGetWidth(v174);
  sub_B170((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_769D20();
  sub_766530();
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = Width;
  v175.size.height = Height;
  v25 = CGRectGetWidth(v175);
  v26 = (v6 + v18[9]);
  sub_B170(v26, v26[3]);
  sub_769D20();
  sub_766530();
  sub_B170((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_B170(v26, v26[3]);
  sub_766520();
  sub_766530();
  sub_6D310(v6 + v18[11], &v169);
  if (v170)
  {
    sub_B170(&v169, v170);
    sub_766530();
    sub_BEB8(&v169);
  }

  else
  {
    sub_70550(&v169);
  }

  sub_6D310(v6 + v18[12], &v169);
  if (v170)
  {
    sub_B170(&v169, v170);
    sub_766530();
    sub_BEB8(&v169);
  }

  else
  {
    sub_70550(&v169);
  }

  sub_6D310(v6 + v18[17], &v167);
  v161 = a5;
  v163 = a4;
  v162 = a3;
  if (!v168)
  {
    sub_70550(&v167);
LABEL_17:
    v27 = 1;
    v28 = 0.0;
    v150 = 0.0;
    v149 = 0.0;
    v153 = 0.0;
    goto LABEL_18;
  }

  sub_10914(&v167, &v169);
  sub_B170(&v169, v170);
  if (sub_766540())
  {
LABEL_16:
    sub_BEB8(&v169);
    goto LABEL_17;
  }

  sub_6D310(v6 + v18[18], &v165);
  if (!v166)
  {
    sub_70550(&v165);
    goto LABEL_16;
  }

  sub_10914(&v165, &v167);
  sub_B170(&v167, v168);
  if (sub_766540())
  {
    sub_BEB8(&v167);
    goto LABEL_16;
  }

  v146 = sub_705B8(0.0, 0.0, a5, a6, 0.0, v20);
  v145 = v118;
  v120 = v119;
  v143 = v121;
  v153 = COERCE_DOUBLE(swift_getObjectType());
  v122 = [a1 traitCollection];
  v123 = [v122 preferredContentSizeCategory];
  v124 = sub_769B50();

  v147 = v20;
  v144 = Width;
  v142 = v25;
  if (v124)
  {
    if (qword_93C6C0 != -1)
    {
      swift_once();
    }

    v125 = qword_99B988;
  }

  else
  {
    if (qword_93C6B8 != -1)
    {
      swift_once();
    }

    v125 = qword_99B970;
  }

  v126 = v154;
  v127 = sub_BE38(*&v154, v125);
  v128 = v152;
  v129 = v151;
  (*(v152 + 16))(v151, v127, COERCE_CGFLOAT(*&v126));
  v130 = [a1 traitCollection];
  v131 = [v130 preferredContentSizeCategory];
  sub_769B50();

  type metadata accessor for SmallLockupView();
  v132 = v143;
  sub_1FE304(v129, a1);
  v134 = ceil(v133);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a5;
  v192.size.height = a6;
  MinX = CGRectGetMinX(v192);
  v193.size.width = v120;
  v141 = v120;
  v135 = v146;
  v193.origin.x = v146;
  v136 = v145;
  v193.origin.y = v145;
  v193.size.height = v132;
  v137 = CGRectGetHeight(v193);
  v153 = v134;
  v138 = v137 - v134;
  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = a5;
  v194.size.height = a6;
  v139 = CGRectGetWidth(v194);
  sub_B170(&v169, v170);
  v150 = v138;
  v149 = v139;
  sub_766530();
  v195.origin.x = v135;
  v195.origin.y = v136;
  v140 = v141;
  v195.size.width = v141;
  v195.size.height = v132;
  CGRectGetMinX(v195);
  v196.origin.x = v135;
  v196.origin.y = v136;
  v196.size.width = v140;
  v196.size.height = v132;
  CGRectGetMinY(v196);
  v197.origin.x = v135;
  v197.origin.y = v136;
  v197.size.width = v140;
  v197.size.height = v132;
  CGRectGetWidth(v197);
  sub_B170(&v167, v168);
  v28 = MinX;
  a5 = v161;
  sub_766530();
  (*(v128 + 8))(v129, COERCE_CGFLOAT(*&v154));
  sub_BEB8(&v167);
  sub_BEB8(&v169);
  v27 = 0;
  v20 = v147;
  Width = v144;
  v25 = v142;
LABEL_18:
  v29 = [a1 traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  v31 = sub_769B50();

  v164 = a6;
  if (v31)
  {
    MinX = v28;
    v32 = sub_705B8(0.0, 0.0, a5, a6, 0.0, v20);
    v156 = v32;
    v158 = v33;
    v35 = v34;
    v37 = v36;
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = v25;
    v176.size.height = Height;
    MaxY = CGRectGetMaxY(v176);
    v38 = (v7 + v18[13]);
    sub_B170(v38, v38[3]);
    v157 = v35;
    v39 = v37;
    sub_7665A0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v159;
    sub_B170((v7 + *(v159 + 24)), *(v7 + *(v159 + 24) + 24));
    sub_766720();
    v48 = v47;
    v177.origin.x = v32;
    v177.origin.y = v158;
    v177.size.width = v35;
    v177.size.height = v39;
    v49 = CGRectGetMinX(v177);
    v50 = MaxY + v48;
    sub_B170(v38, v38[3]);
    sub_769D20();
    sub_766530();
    v178.origin.x = v49;
    v178.origin.y = v50;
    v178.size.width = v41;
    v178.size.height = v43;
    v51 = CGRectGetMaxY(v178) - v45;
    v52 = (v7 + v18[14]);
    sub_B170(v52, v52[3]);
    v53 = v157;
    v54 = v39;
    sub_7665A0();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_B170((v7 + *(v46 + 28)), *(v7 + *(v46 + 28) + 24));
    sub_766720();
    v62 = v61;
    v179.origin.x = v156;
    v179.origin.y = v158;
    v179.size.width = v53;
    MaxY = v54;
    v179.size.height = v54;
    v63 = CGRectGetMinX(v179);
    sub_B170(v52, v52[3]);
    sub_769D20();
    sub_766530();
    v180.origin.x = v63;
    v180.origin.y = v51 + v62;
    v180.size.width = v56;
    v180.size.height = v58;
    v64 = CGRectGetMaxY(v180);
    if (*(v7 + v18[19]) == 1)
    {
      v65 = v64 - v60;
      sub_B170((v7 + *(v46 + 32)), *(v7 + *(v46 + 32) + 24));
      v66 = [a1 traitCollection];
      sub_766710();
      v68 = v67;

      v69 = v65 + v68;
      v70 = (v7 + v18[15]);
      sub_B170(v70, v70[3]);
      v71 = [a1 traitCollection];
      v72 = v157;
      v73 = MaxY;
      sub_7673F0();
      v75 = v74;
      v77 = v76;

      v181.origin.x = v156;
      v181.origin.y = v158;
      v181.size.width = v72;
      v181.size.height = v73;
      v78 = CGRectGetMinX(v181);
      sub_B170(v70, v70[3]);
      sub_769D20();
      v79 = [a1 traitCollection];
      sub_7673E0();

      v182.origin.x = v78;
      v182.origin.y = v69;
      v182.size.width = v75;
      v182.size.height = v77;
      CGRectGetMaxY(v182);
    }

    sub_6D310(v7 + v18[16], &v167);
    if (v168)
    {
      sub_10914(&v167, &v169);
      sub_B170(&v169, v170);
      if ((sub_766540() & 1) == 0 && (v27 & 1) == 0)
      {
        sub_B170(&v169, v170);
        v80 = v157;
        v81 = MaxY;
        sub_7665A0();
        v183.origin.x = MinX;
        v183.origin.y = v150;
        v183.size.width = v149;
        v183.size.height = v153;
        CGRectGetMinY(v183);
        v82 = v156;
        v184.origin.x = v156;
        v83 = v158;
        v184.origin.y = v158;
        v184.size.width = v80;
        v184.size.height = v81;
        CGRectGetMinX(v184);
        v185.origin.x = v82;
        v185.origin.y = v83;
        v185.size.width = v80;
        v185.size.height = v81;
        CGRectGetWidth(v185);
        sub_B170(&v169, v170);
        sub_766530();
      }

      sub_BEB8(&v169);
    }

    else
    {
      sub_70550(&v167);
    }
  }

  else
  {
    v84 = sub_705B8(0.0, 0.0, Width, Height, 0.0, v20);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v159;
    sub_B170((v7 + *(v159 + 36)), *(v7 + *(v159 + 36) + 24));
    v92 = v156;
    sub_33964();
    sub_766700();
    v94 = v93;
    (*&MaxY)(COERCE_CGFLOAT(*&v92), COERCE_CGFLOAT(*&v158));
    v186.origin.x = v84;
    v186.origin.y = v86;
    v186.size.width = v88;
    v186.size.height = v90;
    v95 = CGRectGetHeight(v186) - v94;
    if (*(v7 + v18[19]) == 1)
    {
      v96 = (v7 + v18[15]);
      sub_B170(v96, v96[3]);
      v97 = [a1 traitCollection];
      sub_7673F0();
      v158 = v98;
      v100 = v99;

      v156 = v95 - v100;
      v157 = v100;
      v187.origin.x = v84;
      v187.origin.y = v86;
      v187.size.width = v88;
      v187.size.height = v90;
      MaxY = CGRectGetMinX(v187);
      sub_B170(v96, v96[3]);
      sub_769D20();
      v101 = v84;
      v102 = [a1 traitCollection];
      sub_7673E0();

      sub_B170((v7 + *(v91 + 32)), *(v7 + *(v91 + 32) + 24));
      v103 = [a1 traitCollection];
      sub_766710();
      v105 = v104;

      v188.origin.x = MaxY;
      v188.origin.y = v156;
      v188.size.width = v158;
      v188.size.height = v157;
      v95 = CGRectGetMinY(v188) - v105;
    }

    else
    {
      v101 = v84;
    }

    v106 = (v7 + v18[14]);
    sub_B170(v106, v106[3]);
    sub_7665A0();
    v108 = v107;
    v110 = v109;
    v158 = v111;
    v157 = v112;
    v113 = v112 + v95 - v109;
    v189.origin.x = v101;
    v189.origin.y = v86;
    v153 = v86;
    v189.size.width = v88;
    v189.size.height = v90;
    v114 = CGRectGetMinX(v189);
    v154 = v101;
    v115 = v114;
    sub_B170(v106, v106[3]);
    sub_769D20();
    sub_766530();
    sub_B170((v7 + *(v91 + 28)), *(v7 + *(v91 + 28) + 24));
    sub_766720();
    v190.origin.x = v115;
    v190.origin.y = v113;
    v190.size.width = v108;
    v190.size.height = v110;
    CGRectGetMinY(v190);
    v116 = (v7 + v18[13]);
    sub_B170(v116, v116[3]);
    sub_7665A0();
    v191.origin.x = v154;
    v191.origin.y = v153;
    v191.size.width = v88;
    v191.size.height = v90;
    CGRectGetMinX(v191);
    sub_B170(v116, v116[3]);
    sub_769D20();
    sub_766530();
  }

  return sub_7664B0();
}

double sub_6ECA8(void *a1, void *a2)
{
  v108 = sub_76A920();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_766C30();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_766C50();
  v115 = *(v116 - 1);
  __chkstk_darwin(v116);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_767170();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v95 - v9;
  v102 = sub_75D850();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v95 - v12;
  __chkstk_darwin(v13);
  v98 = &v95 - v14;
  __chkstk_darwin(v15);
  v17 = &v95 - v16;
  v18 = sub_75CF00();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_6D310(a2 + v25[18], &v120);
  v109 = v121;
  sub_70550(&v120);
  v117 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = sub_769B50();

  if (v28)
  {
    v29 = v25[13];
    v30 = v25[14];
    v31 = v25[16];
    v95 = v25[15];
    v103 = v31;
    LODWORD(v99) = *(a2 + v25[19]);
    if (qword_93C6C0 != -1)
    {
      swift_once();
    }

    v96 = (a2 + v29);
    v32 = (a2 + v30);
    v33 = sub_BE38(v18, qword_99B988);
    v100 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v35 = v34;
    v36 = [v117 traitCollection];
    (*(v19 + 16))(v24, v33, v18);
    v37 = sub_75CE70();
    v39 = v105;
    v97 = v32;
    if ((v40 & 1) == 0 && ((v37 | v38) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v41 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v41 = qword_946938;
      }

      v51 = v102;
      v52 = sub_BE38(v102, v41);
      v53 = v101;
      v54 = v98;
      (*(v101 + 16))(v98, v52, v51);
      (*(v53 + 32))(v17, v54, v51);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v53 + 8))(v17, v51);
    }

    sub_75CDB0();
    v56 = v55;

    (*(v19 + 8))(v24, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v35;
    v58 = v110;
    *(inited + 56) = v110;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((inited + 32));
    sub_767180();
    sub_109F98(inited);
    v59 = v117;
    v60 = v108;
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v56 + 16.0 + 16.0);
      v61 = v104;
      sub_767180();
      v62 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_7AADC(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_7AADC((v63 > 1), v64 + 1, 1, v62);
      }

      v121 = v58;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v65 = sub_B1B4(&v120);
      v66 = v107;
      (*(v107 + 16))(v65, v61, v58);
      v62[2] = v64 + 1;
      sub_10914(&v120, &v62[5 * v64 + 4]);
      (*(v66 + 8))(v61, v58);
      *&v118 = v62;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v67 = v114;
    sub_766C40();
    sub_766C20();
    v69 = v68;
    (*(v115 + 8))(v67, v116);
    sub_B170(a2, a2[3]);
    sub_33964();
    sub_766700();
    v116 = *(v106 + 8);
    v116(v39, v60);
    sub_769DA0();
    sub_B170(v96, v96[3]);
    sub_7665A0();
    v71 = v70;
    v72 = v100;
    sub_B170((a2 + *(v100 + 6)), *(a2 + *(v100 + 6) + 24));
    sub_766720();
    *&v120 = v71;
    sub_7666F0();
    sub_B170(v97, v97[3]);
    sub_7665A0();
    v74 = v73;
    sub_B170((a2 + *(v72 + 7)), *(a2 + *(v72 + 7) + 24));
    sub_766720();
    *&v120 = v74;
    sub_7666F0();
    if (v99)
    {
      sub_B170((a2 + v95), *(a2 + v95 + 24));
      v75 = v72;
      v76 = [v59 traitCollection];
      sub_7673F0();

      sub_B170((a2 + *(v75 + 8)), *(a2 + *(v75 + 8) + 24));
      v77 = [v59 traitCollection];
      sub_766710();

      sub_B170((a2 + *(v75 + 9)), *(a2 + *(v75 + 9) + 24));
      sub_33964();
      sub_766700();
      v116(v39, v108);
    }

    sub_6D310(&v103[a2], &v118);
    if (v119)
    {
      sub_10914(&v118, &v120);
      sub_B170(&v120, v121);
      if ((sub_766540() & 1) == 0)
      {
        sub_B170(&v120, v121);
        sub_7665A0();
      }

      sub_BEB8(&v120);
    }

    else
    {
      sub_70550(&v118);
    }
  }

  else
  {
    if (qword_93C6B8 != -1)
    {
      swift_once();
    }

    v42 = sub_BE38(v18, qword_99B970);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v44 = v43;
    v45 = [v117 traitCollection];
    (*(v19 + 16))(v21, v42, v18);
    v46 = sub_75CE70();
    v48 = v110;
    if ((v49 & 1) == 0 && ((v46 | v47) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v50 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v50 = qword_946938;
      }

      v78 = v102;
      v79 = sub_BE38(v102, v50);
      v80 = v101;
      v81 = v99;
      (*(v101 + 16))(v99, v79, v78);
      v82 = v100;
      (*(v80 + 32))(v100, v81, v78);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v80 + 8))(v82, v78);
    }

    sub_75CDB0();
    v84 = v83;

    (*(v19 + 8))(v21, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_77B6D0;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v44;
    *(v85 + 56) = v48;
    *(v85 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((v85 + 32));
    sub_767180();
    sub_109F98(v85);
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v84 + 4.0 + 4.0);
      v86 = v103;
      sub_767180();
      v87 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_7AADC(0, v87[2] + 1, 1, v87);
      }

      v89 = v87[2];
      v88 = v87[3];
      if (v89 >= v88 >> 1)
      {
        v87 = sub_7AADC((v88 > 1), v89 + 1, 1, v87);
      }

      v121 = v48;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v90 = sub_B1B4(&v120);
      v91 = v107;
      (*(v107 + 16))(v90, v86, v48);
      v87[2] = v89 + 1;
      sub_10914(&v120, &v87[5 * v89 + 4]);
      (*(v91 + 8))(v86, v48);
      *&v118 = v87;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v92 = v114;
    sub_766C40();
    sub_766C20();
    v69 = v93;
    (*(v115 + 8))(v92, v116);
  }

  return v69;
}

double sub_6FE2C(uint64_t a1, void *a2)
{
  v48 = sub_766C30();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_766C50();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_767170();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_75D850();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_75CF00();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C6B8 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v13, qword_99B970);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_766660();
  v19 = v18;
  v50 = a2;
  v20 = [a2 traitCollection];
  (*(v14 + 16))(v16, v17, v13);
  v21 = sub_75CE70();
  v23 = v7;
  if ((v24 & 1) == 0 && ((v21 | v22) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v25 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v25 = qword_946938;
    }

    v26 = v42;
    v27 = sub_BE38(v42, v25);
    v28 = v41;
    (*(v8 + 16))(v41, v27, v26);
    (*(v8 + 32))(v12, v28, v26);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v8 + 8))(v12, v26);
  }

  sub_75CDB0();
  v30 = v29;

  (*(v14 + 8))(v16, v13);
  v54 = _swiftEmptyArrayStorage;
  sub_BD88(&qword_941B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v19;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((inited + 32));
  sub_767180();
  sub_109F98(inited);
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = ceil(v30 + 4.0 + 4.0);
  sub_767180();
  v32 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_7AADC(0, v32[2] + 1, 1, v32);
  }

  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_7AADC((v33 > 1), v34 + 1, 1, v32);
  }

  v52 = v5;
  v53 = &protocol witness table for VerticalSpaceMeasurable;
  v35 = sub_B1B4(&v51);
  v36 = v43;
  (*(v43 + 16))(v35, v23, v5);
  v32[2] = v34 + 1;
  sub_10914(&v51, &v32[5 * v34 + 4]);
  (*(v36 + 8))(v23, v5);
  (*(v46 + 104))(v45, enum case for StackMeasurable.Axis.vertical(_:), v48);
  v37 = v44;
  sub_766C40();
  sub_766C20();
  v39 = v38;
  (*(v47 + 8))(v37, v49);
  return v39;
}

uint64_t sub_70550(uint64_t a1)
{
  v2 = sub_BD88(&unk_943B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_705E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_706BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_70778()
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &unk_94E830);
    if (v1 <= 0x3F)
    {
      sub_70898();
      if (v2 <= 0x3F)
      {
        sub_70B18(319, &qword_941880);
        if (v3 <= 0x3F)
        {
          sub_70B18(319, &qword_940E18);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_70898()
{
  if (!qword_94E850)
  {
    sub_133D8(&unk_9418A0);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_94E850);
    }
  }
}

uint64_t sub_70910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_766690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_709D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_766690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_70A74()
{
  result = sub_70B18(319, &qword_943C60);
  if (v1 <= 0x3F)
  {
    result = sub_766690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_70B18(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_70BC0(uint64_t a1)
{
  v2 = sub_76A920();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_766690();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = sub_7656A0();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  sub_7648E0();
  sub_720D0(&unk_940F30, &type metadata accessor for Quote);
  sub_75C750();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  sub_75C7B0();

  sub_7655A0();
  v21(v15, v12);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765590();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  sub_765620();
  sub_769DA0();
  v151._object = 0x80000000007CC420;
  v151._countAndFlagsBits = 0xD000000000000010;
  v152._countAndFlagsBits = 0;
  v152._object = 0xE000000000000000;
  v24 = sub_75B750(v151, v152);
  v26 = sub_3A5CC8(v24, v25);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_93CE50 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_99D5A0;
      }

      else
      {
        if (qword_93CE58 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_99D5F8;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_93CE68 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_99D6A8;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_93CE48 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_99D548;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_93CE60 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_99D650;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_72018(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  sub_75C7B0();

  sub_765620();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_3A5D14(&v147);

  sub_7648B0();
  v43 = v42;
  v44 = sub_BE70(0, &qword_93F900);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = sub_7666D0();
  v45 = sub_BE38(v134, qword_99D700);
  swift_getKeyPath();
  sub_75C7B0();

  v46 = v141[0];
  v124 = v45;
  v47 = sub_769E10();

  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_93C2E0;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_99A440 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_BE70(0, &qword_940F48);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = sub_769210();
  type metadata accessor for Key(0);
  sub_720D0(&qword_93EC10, type metadata accessor for Key);
  isa = sub_7690E0().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_10D028(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = sub_769210();
    v62 = sub_7690E0().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_72078(v144);
  }

  else
  {

    sub_72078(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  sub_75C7B0();

  v71 = sub_7653B0();
  v142 = v71;
  v122 = sub_720D0(&qword_93F9B0, &type metadata accessor for Feature);
  v143 = v122;
  v72 = sub_B1B4(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  sub_765C30();
  sub_BEB8(v141);
  sub_762CA0();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_11A38(v70);
  if (qword_93CE98 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = sub_766CA0();
  sub_BE38(v81, qword_99D730);
  swift_getKeyPath();
  sub_75C7B0();

  sub_766720();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_93CEA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v81, qword_99D748);
  swift_getKeyPath();
  sub_75C7B0();

  v85 = v141[0];
  v86 = sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v87 = swift_allocObject();
  v130 = xmmword_77D9F0;
  *(v87 + 16) = xmmword_77D9F0;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = sub_7671E0();
  sub_7666E0();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  sub_7648C0();
  if (v92)
  {
    if (qword_93CE90 != -1)
    {
      swift_once();
    }

    sub_BE38(v134, qword_99D718);
    swift_getKeyPath();
    sub_75C7B0();

    v142 = v71;
    v143 = v122;
    v93 = sub_B1B4(v141);
    v120(v93, v121, v71);
    sub_765C30();
    sub_BEB8(v141);
    sub_762CB0();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_93CEA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v81, qword_99D760);
    swift_getKeyPath();
    sub_75C7B0();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = sub_7671E0();
    sub_7666E0();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_93CEB0 != -1)
    {
      swift_once();
    }

    sub_BE38(v81, qword_99D778);
    swift_getKeyPath();
    sub_75C7B0();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = sub_7671E0();
    sub_7666E0();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (sub_7648D0())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    v113 = v112;
    if (qword_93CEB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v81, qword_99D790);
    swift_getKeyPath();
    sub_75C7B0();

    v114 = v141[0];
    v115 = v128;
    sub_766470();
    sub_766C70();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_720D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_7211C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_721B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_99A308;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_99A310;
  *&v5[v15] = (*(*(&stru_20.maxprot + (v12 & v11)) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_99A310]];

  return v20;
}

uint64_t sub_723F0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_99A308;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_72448(uint64_t a1)
{
  v3 = qword_99A308;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_72508()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_99A310];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_72574(void *a1)
{
  v1 = a1;
  sub_72508();
}

uint64_t sub_725BC()
{
  type metadata accessor for ScrollablePillView();
  swift_dynamicCastClass();
  return sub_766CC0();
}

double sub_72620(void *a1)
{
  v1 = a1;
  sub_725BC();
  v3 = v2;

  return v3;
}

uint64_t sub_72674()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*(&stru_20.maxprot + (v3 & v2)) + 88))(*(&stru_20.filesize + (v3 & v2)));
}

void sub_72718(void *a1)
{
  v1 = a1;
  sub_72674();
}

id sub_72760(void *a1)
{
  v1 = a1;
  v2 = sub_727A4();

  return v2;
}

uint64_t sub_72998@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  sub_75D3D0();
  v6 = sub_75D400();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_72B04(uint64_t a1)
{
  sub_3A63C(a1 + qword_99A308);
  v2 = *(a1 + qword_99A310);
}

void sub_72B90()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_99A308;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_99A310;
  *(v1 + v6) = (*(*(&stru_20.maxprot + (v3 & v2)) + 72))(0.0, 0.0, 0.0, 0.0);
  sub_76A840();
  __break(1u);
}

uint64_t sub_72CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v11[1];
  v7 = sub_7699D0();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_75D400();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_72E90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_72F3C()
{
  v0 = sub_764A60();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell();
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_76CBC(&qword_9414C8, type metadata accessor for MediumLockupCollectionViewCell);
      sub_76CBC(&qword_9414D0, type metadata accessor for MediumLockupCollectionViewCell);
      v16 = &qword_9414D8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell();
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_76CBC(&qword_9414F8, type metadata accessor for LargeLockupCollectionViewCell);
      sub_76CBC(&qword_941500, type metadata accessor for LargeLockupCollectionViewCell);
      v16 = &qword_941508;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell();
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_76CBC(&qword_941318, type metadata accessor for ProductLockupCollectionViewCell);
      sub_76CBC(&unk_953F90, type metadata accessor for ProductLockupCollectionViewCell);
      v16 = &qword_941320;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell();
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_76CBC(&qword_941580, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
      sub_76CBC(&qword_941588, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
      v16 = &qword_941590;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell();
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_76CBC(&qword_941550, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);
      sub_76CBC(&qword_941558, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell);
      v16 = &qword_941560;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_76CBC(&qword_941100, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);
      sub_76CBC(&qword_941108, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);
      v16 = &qword_941110;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell();
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_76CBC(&qword_9410F0, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);
      sub_76CBC(&qword_9410F8, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);
      v16 = &qword_93F798;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell();
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_76CBC(&qword_941780, type metadata accessor for ActionCollectionViewCell);
      sub_76CBC(&qword_941788, type metadata accessor for ActionCollectionViewCell);
      v16 = &qword_941790;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell();
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_76CBC(&qword_9416D0, type metadata accessor for ArtworkCollectionViewCell);
      sub_76CBC(&qword_9416D8, type metadata accessor for ArtworkCollectionViewCell);
      v16 = &unk_9416E0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell();
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_76CBC(&qword_941690, type metadata accessor for RibbonBarItemCollectionViewCell);
      sub_76CBC(&qword_941698, type metadata accessor for RibbonBarItemCollectionViewCell);
      v16 = &qword_93F380;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell();
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_76CBC(&qword_9414A0, type metadata accessor for ParagraphCollectionViewCell);
      sub_76CBC(&qword_93F728, type metadata accessor for ParagraphCollectionViewCell);
      v16 = &qword_9414A8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v18 = sub_7653B0();
      v30 = v18;
      v31 = sub_76CBC(&qword_93F9B0, &type metadata accessor for Feature);
      v19 = sub_B1B4(v29);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.annotations_update_2025A(_:), v18);
      LOBYTE(v18) = sub_765C30();
      sub_BEB8(v29);
      if (v18)
      {
        v14 = type metadata accessor for AnnotationCollectionViewHostingCell();
        v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
        sub_76CBC(&qword_941768, type metadata accessor for AnnotationCollectionViewHostingCell);
        sub_76CBC(&qword_941770, type metadata accessor for AnnotationCollectionViewHostingCell);
        v16 = &unk_941778;
      }

      else
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell();
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_76CBC(&qword_941750, type metadata accessor for AnnotationCollectionViewCell);
        sub_76CBC(&qword_941758, type metadata accessor for AnnotationCollectionViewCell);
        v16 = &qword_941760;
      }

      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell();
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_76CBC(&qword_941620, type metadata accessor for FootnoteCollectionViewCell);
      sub_76CBC(&qword_941628, type metadata accessor for FootnoteCollectionViewCell);
      v16 = &qword_941630;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell();
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_76CBC(&qword_9411A0, type metadata accessor for TitledParagraphCollectionViewCell);
      sub_76CBC(&qword_94B6B0, type metadata accessor for TitledParagraphCollectionViewCell);
      v16 = &unk_9411A8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell();
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_76CBC(&qword_941678, type metadata accessor for EditorialCardCollectionViewCell);
      sub_76CBC(&qword_941680, type metadata accessor for EditorialCardCollectionViewCell);
      v16 = &qword_941688;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell();
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_76CBC(&qword_941130, type metadata accessor for VideoCardCollectionViewCell);
      sub_76CBC(&qword_941138, type metadata accessor for VideoCardCollectionViewCell);
      v16 = &qword_941140;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell();
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_76CBC(&qword_9416A0, type metadata accessor for BrickCollectionViewCell);
      sub_76CBC(&qword_9416A8, type metadata accessor for BrickCollectionViewCell);
      v16 = &qword_9416B0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell();
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_76CBC(&qword_941260, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
      sub_76CBC(&qword_941268, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
      v16 = &qword_941270;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v20 = sub_7653B0();
      v30 = v20;
      v31 = sub_76CBC(&qword_93F9B0, &type metadata accessor for Feature);
      v21 = sub_B1B4(v29);
      (*(*(v20 - 8) + 104))(v21, enum case for Feature.product_capability_update_2024E(_:), v20);
      LOBYTE(v20) = sub_765C30();
      sub_BEB8(v29);
      if ((v20 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell();
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_76CBC(&qword_9413B8, type metadata accessor for ProductCapabilityCell);
        sub_76CBC(&qword_9413C0, type metadata accessor for ProductCapabilityCell);
        v16 = &qword_9413C8;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell();
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_76CBC(&qword_9412F0, type metadata accessor for ProductReviewCollectionViewCell);
        sub_76CBC(&qword_9412F8, type metadata accessor for ProductReviewCollectionViewCell);
        v16 = &unk_941300;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell();
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_76CBC(&qword_9412D8, type metadata accessor for ReviewSummaryCollectionViewCell);
        sub_76CBC(&qword_9412E0, type metadata accessor for ReviewSummaryCollectionViewCell);
        v16 = &unk_9412E8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell();
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_76CBC(&qword_941638, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
        sub_76CBC(&qword_941640, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
        v16 = &qword_941648;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell();
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_76CBC(&qword_941188, type metadata accessor for BaseTodayCardCollectionViewCell);
        sub_76CBC(&qword_941190, type metadata accessor for BaseTodayCardCollectionViewCell);
        v16 = &qword_941198;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell();
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_76CBC(&qword_9414E0, type metadata accessor for LinkCollectionViewCell);
        sub_76CBC(&qword_9414E8, type metadata accessor for LinkCollectionViewCell);
        v16 = &qword_9414F0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell();
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_76CBC(&qword_941308, type metadata accessor for QuoteCollectionViewCell);
        sub_76CBC(&unk_940F20, type metadata accessor for QuoteCollectionViewCell);
        v16 = &qword_941310;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell();
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_76CBC(&qword_941598, type metadata accessor for HorizontalRuleCollectionViewCell);
        sub_76CBC(&qword_9415A0, type metadata accessor for HorizontalRuleCollectionViewCell);
        v16 = &qword_9415A8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell();
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_76CBC(&qword_941610, type metadata accessor for FramedArtworkCollectionViewCell);
        sub_76CBC(&unk_953950, type metadata accessor for FramedArtworkCollectionViewCell);
        v16 = &qword_941618;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell();
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_76CBC(&qword_941290, type metadata accessor for ScreenshotShelfCollectionViewCell);
        sub_76CBC(&qword_941298, type metadata accessor for ScreenshotShelfCollectionViewCell);
        v16 = &unk_9412A0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell();
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_76CBC(&qword_941390, type metadata accessor for ProductMediaCollectionViewCell);
        sub_76CBC(&qword_941398, type metadata accessor for ProductMediaCollectionViewCell);
        v16 = &qword_9413A0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell();
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_76CBC(&qword_941378, type metadata accessor for ProductMediaItemCollectionViewCell);
        sub_76CBC(&qword_941380, type metadata accessor for ProductMediaItemCollectionViewCell);
        v16 = &unk_941388;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell();
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_76CBC(&qword_941728, type metadata accessor for AppShowcaseCollectionViewCell);
        sub_76CBC(&qword_941730, type metadata accessor for AppShowcaseCollectionViewCell);
        v16 = &qword_941738;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_76CBC(&qword_941568, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell);
        sub_76CBC(&qword_941570, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell);
        v16 = &unk_941578;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell();
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_76CBC(&qword_941710, type metadata accessor for AppTrailerLockupCollectionViewCell);
        sub_76CBC(&qword_941718, type metadata accessor for AppTrailerLockupCollectionViewCell);
        v16 = &unk_941720;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell();
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_76CBC(&qword_941368, type metadata accessor for ProductPageLinkCollectionViewCell);
        sub_76CBC(&unk_95D8E0, type metadata accessor for ProductPageLinkCollectionViewCell);
        v16 = &qword_941370;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell();
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_76CBC(&qword_941358, type metadata accessor for ProductRatingsCollectionViewCell);
        sub_76CBC(&qword_959340, type metadata accessor for ProductRatingsCollectionViewCell);
        v16 = &qword_941360;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell();
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_76CBC(&qword_941340, type metadata accessor for GenericProductReviewCollectionViewCell);
        sub_76CBC(&qword_941348, type metadata accessor for GenericProductReviewCollectionViewCell);
        v16 = &unk_941350;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell();
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_76CBC(&qword_941328, type metadata accessor for GenericProductReviewActionCollectionViewCell);
        sub_76CBC(&qword_941330, type metadata accessor for GenericProductReviewActionCollectionViewCell);
        v16 = &unk_941338;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell();
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_76CBC(&qword_9412C0, type metadata accessor for LinkableTextCollectionViewCell);
        sub_76CBC(&qword_9412C8, type metadata accessor for LinkableTextCollectionViewCell);
        v16 = &qword_9412D0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell();
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_76CBC(&qword_941600, type metadata accessor for FramedVideoCollectionViewCell);
        sub_76CBC(&unk_93EBF0, type metadata accessor for FramedVideoCollectionViewCell);
        v16 = &qword_941608;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell();
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_76CBC(&qword_9413A8, type metadata accessor for ProductDescriptionCollectionViewCell);
        sub_76CBC(&unk_960E60, type metadata accessor for ProductDescriptionCollectionViewCell);
        v16 = &unk_9413B0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell();
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_76CBC(&qword_9416B8, type metadata accessor for BannerCollectionViewCell);
        sub_76CBC(&qword_9416C0, type metadata accessor for BannerCollectionViewCell);
        v16 = &unk_9416C8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell();
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_76CBC(&qword_941278, type metadata accessor for ScreenshotsLockupCollectionViewCell);
        sub_76CBC(&qword_941280, type metadata accessor for ScreenshotsLockupCollectionViewCell);
        v16 = &unk_941288;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell();
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_76CBC(&qword_9412A8, type metadata accessor for RoundedButtonCollectionViewCell);
        sub_76CBC(&qword_9412B0, type metadata accessor for RoundedButtonCollectionViewCell);
        v16 = &unk_9412B8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell();
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_76CBC(&qword_9411B0, type metadata accessor for TitledButtonStackCollectionViewCell);
        sub_76CBC(&qword_9411B8, type metadata accessor for TitledButtonStackCollectionViewCell);
        v16 = &unk_9411C0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell();
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_76CBC(&qword_9411C8, type metadata accessor for BaseTodayBrickCollectionViewCell);
        sub_76CBC(&qword_9411D0, type metadata accessor for BaseTodayBrickCollectionViewCell);
        v16 = &qword_9411D8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell();
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_76CBC(&qword_941510, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
        sub_76CBC(&qword_941518, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
        v16 = &qword_941520;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell();
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_76CBC(&qword_941148, type metadata accessor for UpsellBreakoutCollectionViewCell);
        sub_76CBC(&qword_941150, type metadata accessor for UpsellBreakoutCollectionViewCell);
        v16 = &unk_941158;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell();
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_76CBC(&qword_941220, type metadata accessor for SmallBreakoutCollectionViewCell);
        sub_76CBC(&qword_95F360, type metadata accessor for SmallBreakoutCollectionViewCell);
        v16 = &qword_941228;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell();
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_76CBC(&qword_941650, type metadata accessor for EditorialStoryCardCollectionViewCell);
        sub_76CBC(&qword_941658, type metadata accessor for EditorialStoryCardCollectionViewCell);
        v16 = &unk_941660;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell();
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_76CBC(&qword_9414B0, type metadata accessor for MixedMediaLockupCollectionViewCell);
        sub_76CBC(&qword_9414B8, type metadata accessor for MixedMediaLockupCollectionViewCell);
        v16 = &unk_9414C0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell();
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_76CBC(&qword_9416F8, type metadata accessor for ArcadeFooterCollectionViewCell);
        sub_76CBC(&qword_941700, type metadata accessor for ArcadeFooterCollectionViewCell);
        v16 = &unk_941708;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell();
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_76CBC(&qword_941668, type metadata accessor for EditorialQuoteCollectionViewCell);
        sub_76CBC(&unk_95B140, type metadata accessor for EditorialQuoteCollectionViewCell);
        v16 = &qword_941670;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell();
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_76CBC(&qword_9416E8, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        sub_76CBC(&qword_93F740, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        v16 = &qword_9416F0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell();
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_76CBC(&qword_9415E8, type metadata accessor for GameCenterActivityFeedCollectionViewCell);
        sub_76CBC(&qword_9415F0, type metadata accessor for GameCenterActivityFeedCollectionViewCell);
        v16 = &unk_9415F8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell();
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_76CBC(&qword_9410D8, type metadata accessor for ArcadeDownloadPackCollectionViewCell);
        sub_76CBC(&qword_9410E0, type metadata accessor for ArcadeDownloadPackCollectionViewCell);
        v16 = &qword_9410E8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell();
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_76CBC(&qword_9415C8, type metadata accessor for GameCenterReengagementCollectionViewCell);
        sub_76CBC(&unk_94F070, type metadata accessor for GameCenterReengagementCollectionViewCell);
        v16 = &qword_9415D0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_76CBC(&qword_9411F8, type metadata accessor for SmallGameCenterPlayerCollectionViewCell);
        sub_76CBC(&qword_954B60, type metadata accessor for SmallGameCenterPlayerCollectionViewCell);
        v16 = &unk_941200;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_76CBC(&qword_941528, type metadata accessor for LargeGameCenterPlayerCollectionViewCell);
        sub_76CBC(&qword_941530, type metadata accessor for LargeGameCenterPlayerCollectionViewCell);
        v16 = &unk_941538;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell();
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_76CBC(&qword_9415D8, type metadata accessor for AchievementSummaryCollectionViewCell);
        sub_76CBC(&qword_963E30, type metadata accessor for AchievementSummaryCollectionViewCell);
        v16 = &qword_9415E0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell();
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_76CBC(&qword_941470, type metadata accessor for PosterLockupCollectionViewCell);
        sub_76CBC(&qword_941478, type metadata accessor for PosterLockupCollectionViewCell);
        v16 = &qword_941480;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell();
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_76CBC(&qword_941208, type metadata accessor for SmallContactCardCollectionViewCell);
        sub_76CBC(&qword_941210, type metadata accessor for SmallContactCardCollectionViewCell);
        v16 = &qword_941218;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell();
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_76CBC(&qword_941540, type metadata accessor for InformationRibbonCollectionViewCell);
        sub_76CBC(&qword_941548, type metadata accessor for InformationRibbonCollectionViewCell);
        v16 = &qword_9400A8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell();
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_76CBC(&qword_941448, type metadata accessor for PreorderDisclaimerCollectionViewCell);
        sub_76CBC(&qword_95D970, type metadata accessor for PreorderDisclaimerCollectionViewCell);
        v16 = &qword_941450;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell();
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_76CBC(&qword_9413F8, type metadata accessor for PrivacyHeaderCollectionViewCell);
        sub_76CBC(&qword_958090, type metadata accessor for PrivacyHeaderCollectionViewCell);
        v16 = &qword_941400;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell();
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_76CBC(&qword_941408, type metadata accessor for PrivacyFooterCollectionViewCell);
        sub_76CBC(&qword_94E4F0, type metadata accessor for PrivacyFooterCollectionViewCell);
        v16 = &qword_941410;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell();
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_76CBC(&qword_9413E8, type metadata accessor for PrivacyTypeCollectionViewCell);
        sub_76CBC(&qword_95B480, type metadata accessor for PrivacyTypeCollectionViewCell);
        v16 = &qword_9413F0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell();
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_76CBC(&qword_941430, type metadata accessor for PrivacyCategoryCollectionViewCell);
        sub_76CBC(&qword_941438, type metadata accessor for PrivacyCategoryCollectionViewCell);
        v16 = &qword_941440;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell();
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_76CBC(&qword_941418, type metadata accessor for PrivacyDefinitionCollectionViewCell);
        sub_76CBC(&qword_941420, type metadata accessor for PrivacyDefinitionCollectionViewCell);
        v16 = &qword_941428;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell();
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_76CBC(&qword_941740, type metadata accessor for AppEventCollectionViewCell);
        sub_76CBC(&qword_944D80, type metadata accessor for AppEventCollectionViewCell);
        v16 = &qword_941748;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell();
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_76CBC(&qword_941248, type metadata accessor for SearchResultCollectionViewCell);
        sub_76CBC(&qword_941250, type metadata accessor for SearchResultCollectionViewCell);
        v16 = &unk_941258;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell();
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_76CBC(&qword_941230, type metadata accessor for SearchResultsContextCardCollectionViewCell);
        sub_76CBC(&qword_941238, type metadata accessor for SearchResultsContextCardCollectionViewCell);
        v16 = &qword_941240;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell();
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_76CBC(&qword_941118, type metadata accessor for SegmentedControlCollectionViewCell);
        sub_76CBC(&qword_941120, type metadata accessor for SegmentedControlCollectionViewCell);
        v16 = &qword_941128;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell();
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_76CBC(&qword_9415B0, type metadata accessor for HeroCarouselCollectionViewCell);
        sub_76CBC(&qword_9415B8, type metadata accessor for HeroCarouselCollectionViewCell);
        v16 = &unk_9415C0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell();
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_76CBC(&qword_941178, type metadata accessor for UberCollectionViewCell);
        sub_76CBC(&unk_95EFA0, type metadata accessor for UberCollectionViewCell);
        v16 = &qword_941180;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell();
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_76CBC(&qword_9413D0, type metadata accessor for BadgeCollectionViewCell);
        sub_76CBC(&qword_9413D8, type metadata accessor for BadgeCollectionViewCell);
        v16 = &qword_9413E0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell();
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_76CBC(&qword_941090, type metadata accessor for MediaPageHeaderCollectionViewHostingCell);
        sub_76CBC(&qword_941098, type metadata accessor for MediaPageHeaderCollectionViewHostingCell);
        v16 = &unk_9410A0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell();
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_76CBC(&qword_941488, type metadata accessor for PlaceholderCollectionViewCell);
        sub_76CBC(&qword_941490, type metadata accessor for PlaceholderCollectionViewCell);
        v16 = &unk_941498;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell();
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_76CBC(&qword_941458, type metadata accessor for PrefetchMarkerCollectionViewCell);
        sub_76CBC(&qword_941460, type metadata accessor for PrefetchMarkerCollectionViewCell);
        v16 = &unk_941468;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_76CBC(&qword_941160, type metadata accessor for UnifiedMessageCollectionViewCell);
        sub_76CBC(&qword_941168, type metadata accessor for UnifiedMessageCollectionViewCell);
        v16 = &unk_941170;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        sub_75DA70();
        v22 = v26;
        sub_764A00();
        sub_76CBC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
        v23 = v28;
        v24 = sub_76A520();
        v25 = *(v27 + 8);
        v25(v22, v23);
        v25(v4, v23);
        if ((v24 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_76CBC(&qword_9410C0, type metadata accessor for SwiftUIProductPageCardViewHostingCell);
          sub_76CBC(&qword_9410C8, type metadata accessor for SwiftUIProductPageCardViewHostingCell);
          v16 = &unk_9410D0;
          goto LABEL_26;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell();
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_76CBC(&qword_9410A8, type metadata accessor for SwiftUIViewHostingCell);
    sub_76CBC(&qword_9410B0, type metadata accessor for SwiftUIViewHostingCell);
    v16 = &unk_9410B8;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell();
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_76CBC(&qword_9411E0, type metadata accessor for SmallLockupCollectionViewCell);
  sub_76CBC(&qword_9411E8, type metadata accessor for SmallLockupCollectionViewCell);
  v16 = &qword_9411F0;
LABEL_26:
  sub_76CBC(v16, v15);
  return v14;
}

uint64_t sub_76798(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v2 = sub_75DAB0();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        sub_765B70();
        sub_76CBC(&qword_94CAB0, &type metadata accessor for TodayCard);
        if ((sub_75C770() & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = sub_A2C28();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v16 = sub_3A670C();
      }

      v15 = v16;
      goto LABEL_17;
    }

    sub_765B70();
    sub_76CBC(&qword_94CAB0, &type metadata accessor for TodayCard);
    if (sub_75C770())
    {
      sub_75C750();
      v15 = sub_283ECC(v21, 4);

      goto LABEL_17;
    }

LABEL_14:
    sub_75C720();
    v15 = sub_72F3C();
    (*(v19 + 8))(v4, v20);
    goto LABEL_17;
  }

  sub_765B70();
  sub_76CBC(&qword_94CAB0, &type metadata accessor for TodayCard);
  if ((sub_75C770() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  sub_768860();
  if (v21)
  {

    v14 = sub_352874();
  }

  else
  {
    v14 = 7;
  }

  sub_75C750();
  v15 = sub_283ECC(v21, v14);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v15;
}

uint64_t sub_76CBC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_76D04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell()
{
  result = qword_9417C0;
  if (!qword_9417C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_770E4()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_772DC(a1, a9 + *(v20 + 64));
  sub_10914(a2, a9);
  sub_10914(a3, a9 + 40);
  sub_10914(a4, a9 + 80);
  sub_10914(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_10914(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_10914(a10, a9 + 280);
  v23 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v23;
  *(a9 + 352) = *(a11 + 32);
  v24 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v24;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v25 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v25;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_772DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_10914(a1, (a9 + 4));
  sub_10914(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_BD88(&qword_940AD0);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_10914(a7, a9 + v27[12]);
  sub_10914(a8, a9 + v27[13]);
  sub_10914(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_10914(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_10914(a19, v31);
}

void ProductLockupAccessibilityLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_BEB8(v1 + 32);

  return sub_10914(a1, v1 + 32);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  sub_BEB8(v1 + 72);

  return sub_10914(a1, v1 + 72);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_7830C(v3, a1);
}

uint64_t sub_7830C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_7DC74(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v287 = a2;
  v11 = sub_7664F0();
  v285 = *(v11 - 8);
  v286 = v11;
  __chkstk_darwin(v11);
  v284 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75E870();
  v282 = *(v13 - 8);
  v283 = v13;
  __chkstk_darwin(v13);
  v299 = &v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = sub_75E850();
  v331 = *(v307 - 8);
  __chkstk_darwin(v307);
  v273 = &v270 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v289 = &v270 - v17;
  __chkstk_darwin(v18);
  v271 = &v270 - v19;
  __chkstk_darwin(v20);
  v297 = &v270 - v21;
  __chkstk_darwin(v22);
  v272 = &v270 - v23;
  __chkstk_darwin(v24);
  v288 = &v270 - v25;
  v330 = sub_75E800();
  v337 = *(v330 - 8);
  __chkstk_darwin(v330);
  v310 = &v270 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_75E820();
  v336 = *(v334 - 8);
  __chkstk_darwin(v334);
  v333 = &v270 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_75E840();
  v339 = *(v312 - 8);
  __chkstk_darwin(v312);
  *&v338 = &v270 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_76A920();
  v30 = *(v29 - 8);
  *&v31 = __chkstk_darwin(v29).n128_u64[0];
  v33 = &v270 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a1 traitCollection];
  v300 = sub_7699E0();

  v35 = v340 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_B170(v35 + 4, *(v35 + 7));
  sub_33964();
  sub_766700();
  v37 = v36;
  v38 = *(v30 + 8);
  v38(v33, v29);
  sub_B170(v35 + 9, *(v35 + 12));
  sub_33964();
  sub_766700();
  v40 = v39;
  v302 = v33;
  v303 = v30 + 8;
  v304 = v29;
  v301 = v38;
  v38(v33, v29);
  v41 = v35;
  v42 = *(v35 + 1);
  v43 = v37 + *v35;
  v281 = v40;
  v293 = a3;
  v44 = a3;
  v45 = a4;
  v46 = a4;
  v47 = a5;
  v48 = a5;
  v49 = a6;
  v50 = sub_705B8(v44, v46, v48, a6, v43, v42);
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_1ED18((v340 + 30), v354, &unk_943B10);
  v332 = a1;
  v298 = v56;
  if (v355)
  {
    sub_B170(v354, v355);
    sub_7665B0();
    v290 = v57;
    v59 = v58;
    sub_BEB8(v354);
  }

  else
  {
    sub_10A2C(v354, &unk_943B10);
    v290 = 0.0;
    v59 = 0;
  }

  v274 = v59;
  sub_1ED18((v340 + 30), v354, &unk_943B10);
  v60 = v355;
  sub_10A2C(v354, &unk_943B10);
  v291 = v49;
  v292 = v37;
  v294 = v45;
  v295 = v47;
  if (v60)
  {
    v61 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v35[*(v61 + 48)], *&v35[*(v61 + 48) + 24]);
    v62 = v302;
    sub_33964();
    v63 = v332;
    sub_766700();
    v65 = v64;
    v301(v62, v304);
  }

  else
  {
    v65 = 0.0;
    v63 = v332;
  }

  v66 = [v63 traitCollection];
  v67 = sub_7699F0();

  v362.origin.x = v50;
  v362.origin.y = v52;
  v362.size.width = v54;
  v68 = v298;
  v362.size.height = v298;
  MinX = CGRectGetMinX(v362);
  v70 = v290;
  v71 = v65 + v290 + MinX;
  v363.origin.x = v50;
  v363.origin.y = v52;
  v363.size.width = v54;
  v363.size.height = v68;
  Width = CGRectGetWidth(v363);
  if (v300)
  {
    v73 = Width - v70 - v65;
  }

  else
  {
    v73 = Width;
  }

  if ((v300 & 1 & v67) != 0)
  {
    v74 = v71;
  }

  else
  {
    v74 = MinX;
  }

  v277 = v74;
  v364.origin.x = v50;
  v364.origin.y = v52;
  v364.size.width = v54;
  v364.size.height = v68;
  MinY = CGRectGetMinY(v364);
  v279 = v52;
  v280 = v50;
  v365.origin.x = v50;
  v365.origin.y = v52;
  v278 = v54;
  v365.size.width = v54;
  v365.size.height = v68;
  Height = CGRectGetHeight(v365);
  v76 = v340;
  sub_B170(v340, v340[3]);
  v77 = *(v35 + 15);
  sub_766580();
  v78 = v76[13];
  v335 = v76 + 10;
  sub_B170(v76 + 10, v78);
  sub_7665A0();
  v80 = v79;
  v82 = v81;
  v83 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v84 = v41;
  v85 = &v41[*(v83 + 36)];
  *&v351 = v63;
  v86 = sub_BD88(&qword_940AD0);
  v329 = v85;
  sub_7592B0();
  *&v351 = v354[0];
  sub_766720();
  v88 = v80 - v82 + v87;
  v89 = v76 + 15;
  sub_B170(v76 + 15, v76[18]);
  sub_7665A0();
  v91 = v90;
  v93 = v92;
  v313 = v83;
  v314 = v84;
  *&v351 = v63;
  v305 = v86;
  sub_7592B0();
  *&v351 = v354[0];
  sub_766720();
  v95 = v91 - v93 + v94;
  if (v95 >= v88)
  {
    sub_134D8((v76 + 15), &v351);
    v89 = v335;
  }

  else
  {
    sub_134D8(v335, &v351);
  }

  v96 = v331;
  v97 = v339;
  sub_134D8(v89, &v348);
  v98 = v332;
  *&v345 = v332;
  sub_7592B0();
  v99 = v354[0];
  *&v345 = v98;
  sub_7592B0();
  v100 = v354[0];
  if (v95 >= v88)
  {
    v101 = v354[0];
  }

  else
  {
    v101 = v99;
  }

  *(&v346 + 1) = &type metadata for CGFloat;
  v347 = &protocol witness table for CGFloat;
  *&v345 = v101;
  if (v95 >= v88)
  {
    v100 = v99;
  }

  *(&v343 + 1) = &type metadata for CGFloat;
  v344 = &protocol witness table for CGFloat;
  *&v342 = v100;
  sub_10914(&v351, v354);
  sub_134D8(&v345, &v357);
  sub_10914(&v348, v358);
  sub_10914(&v342, v360);
  sub_BEB8(&v345);
  v102 = v340;
  sub_B170(v340 + 25, v340[28]);
  sub_7665B0();
  v104 = v103;
  sub_BD88(&qword_9417D8);
  v309 = *(v96 + 72);
  v105 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v275 = 2 * v309;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_77DC20;
  v306 = v105;
  v335 = v106;
  v296 = v106 + v105;
  *(&v352 + 1) = &type metadata for CGFloat;
  v353 = &protocol witness table for CGFloat;
  *&v351 = v77;
  v350 = 0;
  v348 = 0u;
  v349 = 0u;
  v315 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v328 = *(*&v97 + 104);
  v329 = *&v97 + 104;
  v328(*&v338);
  v327 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v107 = v336;
  v325 = *(v336 + 104);
  v326 = v336 + 104;
  v108 = v333;
  v325(v333);
  v109 = sub_BD88(&qword_9417E0);
  v110 = v337;
  v111 = *(v337 + 72);
  v322 = *(v337 + 80);
  v323 = v109;
  v324 = (v322 + 32) & ~v322;
  v321 = v324 + v111;
  v112 = swift_allocObject();
  v320 = xmmword_77B6D0;
  *(v112 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  *&v345 = v112;
  v319 = sub_7DDB0(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v318 = sub_BD88(&qword_9417F0);
  v317 = sub_7DCC8();
  v113 = v310;
  v114 = v330;
  sub_76A5A0();
  v115 = v338;
  sub_75E830();
  v308 = *(v110 + 8);
  v308(v113, v114);
  v116 = *(v107 + 8);
  v336 = v107 + 8;
  v311 = v116;
  v116(v108, v334);
  v117 = *(*&v339 + 8);
  *&v339 += 8;
  v316 = v117;
  v118 = v312;
  v117(*&v115, v312);
  sub_10A2C(&v348, &unk_93F9C0);
  sub_BEB8(&v351);
  v119 = v102[8];
  v120 = v102[9];
  v121 = sub_B170(v102 + 5, v119);
  *(&v352 + 1) = v119;
  v353 = *(v120 + 8);
  v122 = sub_B1B4(&v351);
  (*(*(v119 - 8) + 16))(v122, v121, v119);
  v123 = v113;
  v337 = v110 + 8;
  *&v345 = v332;
  sub_7592B0();
  v124 = *&v348;
  sub_B170(v102 + 5, v102[8]);
  sub_7669E0();
  *(&v349 + 1) = &type metadata for CGFloat;
  v350 = &protocol witness table for CGFloat;
  *&v348 = v124 + v125;
  v347 = 0;
  v345 = 0u;
  v346 = 0u;
  v126 = v338;
  v127 = v118;
  (v328)(*&v338, v315, v118);
  v128 = v333;
  v129 = v334;
  (v325)(v333, v327, v334);
  v130 = swift_allocObject();
  *(v130 + 16) = v320;
  sub_75E7D0();
  *&v342 = v130;
  sub_76A5A0();
  v131 = v128;
  sub_75E830();
  v132 = v308;
  v308(v123, v114);
  v133 = v129;
  v311(v131, v129);
  v316(*&v126, v127);
  sub_10A2C(&v345, &unk_93F9C0);
  sub_BEB8(&v348);
  sub_BEB8(&v351);
  v134 = v355;
  v135 = v356;
  v136 = sub_B170(v354, v355);
  *(&v352 + 1) = v134;
  v353 = *(v135 + 8);
  v137 = sub_B1B4(&v351);
  (*(*(v134 - 8) + 16))(v137, v136, v134);
  v350 = 0;
  v348 = 0u;
  v349 = 0u;
  v138 = v127;
  (v328)(*&v126, v315, v127);
  v139 = v333;
  (v325)(v333, v327, v133);
  v140 = swift_allocObject();
  *(v140 + 16) = v320;
  sub_75E7D0();
  *&v345 = v140;
  v141 = v330;
  sub_76A5A0();
  sub_75E830();
  v142 = v141;
  v143 = v133;
  v132(v123, v142);
  v144 = v311;
  v311(v139, v133);
  v145 = v144;
  v146 = v138;
  v316(*&v126, v138);
  sub_10A2C(&v348, &unk_93F9C0);
  sub_BEB8(&v351);
  sub_1ED18((v340 + 20), &v348, &qword_9417D0);
  if (*(&v349 + 1))
  {
    sub_10914(&v348, &v351);
    v147 = *(&v352 + 1);
    v148 = v353;
    v149 = sub_B170(&v351, *(&v352 + 1));
    *(&v349 + 1) = v147;
    v350 = v148[1];
    v150 = sub_B1B4(&v348);
    (*(*(v147 - 8) + 16))(v150, v149, v147);
    *&v342 = v332;
    *(&v346 + 1) = &type metadata for CGFloat;
    v347 = &protocol witness table for CGFloat;
    sub_7592B0();
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v151 = v126;
    (v328)(*&v126, v315, v146);
    v152 = v333;
    (v325)(v333, v327, v143);
    v153 = swift_allocObject();
    *(v153 + 16) = v320;
    sub_75E7D0();
    v341 = v153;
    v154 = v310;
    v155 = v330;
    sub_76A5A0();
    sub_75E830();
    v308(v154, v155);
    v145(v152, v143);
    v316(*&v151, v146);
    sub_10A2C(&v342, &unk_93F9C0);
    sub_BEB8(&v345);
    sub_BEB8(&v348);
    v156 = v335;
    v158 = v335[2];
    v157 = v335[3];
    v159 = v152;
    if (v158 >= v157 >> 1)
    {
      v156 = sub_7C8A8(v157 > 1, v158 + 1, 1, v335, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v161 = v306;
    v160 = v307;
    v156[2] = v158 + 1;
    v335 = v156;
    (*(v331 + 32))(v156 + v161 + v158 * v309, v288, v160);
    sub_BEB8(&v351);
  }

  else
  {
    sub_10A2C(&v348, &qword_9417D0);
    v159 = v333;
  }

  sub_B170(v340 + 25, v340[28]);
  if (sub_766540())
  {
    v162 = v338;
    v163 = v335;
  }

  else
  {
    sub_B170(&v314[*(v313 + 52)], *&v314[*(v313 + 52) + 24]);
    v164 = v302;
    sub_33964();
    sub_766700();
    v166 = v165;
    v167 = v310;
    v301(v164, v304);
    *(&v352 + 1) = &type metadata for CGFloat;
    v353 = &protocol witness table for CGFloat;
    *&v351 = v104 + v166;
    v350 = 0;
    v348 = 0u;
    v349 = 0u;
    v168 = v338;
    v169 = v312;
    (v328)(*&v338, v315, v312);
    v170 = v334;
    (v325)(v159, v327, v334);
    v171 = swift_allocObject();
    *(v171 + 16) = v320;
    sub_75E7D0();
    *&v345 = v171;
    v172 = v330;
    sub_76A5A0();
    v173 = v272;
    sub_75E830();
    v308(v167, v172);
    v162 = v168;
    v311(v159, v170);
    v316(*&v168, v169);
    sub_10A2C(&v348, &unk_93F9C0);
    sub_BEB8(&v351);
    v163 = v335;
    v175 = v335[2];
    v174 = v335[3];
    if (v175 >= v174 >> 1)
    {
      v163 = sub_7C8A8(v174 > 1, v175 + 1, 1, v335, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v176 = v331;
    *(v163 + 2) = v175 + 1;
    (*(v176 + 32))(&v163[v306 + v175 * v309], v173, v307);
  }

  v353 = 0;
  v351 = 0u;
  v352 = 0u;
  v177 = v162;
  v178 = v312;
  (v328)(*&v177, v315, v312);
  v179 = v333;
  v180 = v334;
  (v325)(v333, v327, v334);
  v181 = swift_allocObject();
  *(v181 + 16) = v320;
  sub_75E7D0();
  *&v348 = v181;
  v182 = v310;
  v183 = v330;
  sub_76A5A0();
  sub_75E830();
  v184 = v182;
  v185 = v338;
  v308(v184, v183);
  v311(v179, v180);
  v316(*&v185, v178);
  sub_10A2C(&v351, &unk_93F9C0);
  v187 = *(v163 + 2);
  v186 = *(v163 + 3);
  v188 = v163;
  if (v187 >= v186 >> 1)
  {
    v188 = sub_7C8A8(v186 > 1, v187 + 1, 1, v163, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
  }

  v188[2] = v187 + 1;
  v335 = v188;
  v189 = *(v331 + 32);
  v331 += 32;
  v189(v188 + v306 + v187 * v309, v297, v307);
  sub_1ED18((v340 + 30), &v348, &unk_943B10);
  v190 = v333;
  if (*(&v349 + 1))
  {
    sub_10914(&v348, &v351);
    sub_B170(v340 + 25, v340[28]);
    if (v300 & 1 | ((sub_766540() & 1) == 0))
    {
      sub_BEB8(&v351);
    }

    else
    {
      *(&v349 + 1) = &type metadata for CGFloat;
      v350 = &protocol witness table for CGFloat;
      *&v348 = v274;
      v347 = 0;
      v345 = 0u;
      v346 = 0u;
      v191 = v312;
      (v328)(*&v185, v315, v312);
      v192 = v334;
      (v325)(v190, v327, v334);
      v193 = swift_allocObject();
      *(v193 + 16) = v320;
      sub_75E7D0();
      *&v342 = v193;
      v194 = v310;
      v195 = v330;
      sub_76A5A0();
      v196 = v271;
      sub_75E830();
      v308(v194, v195);
      v311(v190, v192);
      v316(*&v185, v191);
      sub_10A2C(&v345, &unk_93F9C0);
      sub_BEB8(&v348);
      v198 = v335[2];
      v197 = v335[3];
      if (v198 >= v197 >> 1)
      {
        v335 = sub_7C8A8(v197 > 1, v198 + 1, 1, v335, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
      }

      sub_BEB8(&v351);
      v199 = v335;
      v335[2] = v198 + 1;
      v189(&v199[v306 + v198 * v309], v196, v307);
    }
  }

  else
  {
    sub_10A2C(&v348, &unk_943B10);
  }

  sub_1ED18((v340 + 40), &v348, &qword_9417D0);
  if (*(&v349 + 1))
  {
    sub_10914(&v348, &v351);
    v200 = *(&v352 + 1);
    v201 = v353;
    v202 = sub_B170(&v351, *(&v352 + 1));
    *(&v349 + 1) = v200;
    v350 = v201[1];
    v203 = sub_B1B4(&v348);
    (*(*(v200 - 8) + 16))(v203, v202, v200);
    *&v342 = v332;
    *(&v346 + 1) = &type metadata for CGFloat;
    v347 = &protocol witness table for CGFloat;
    sub_7592B0();
    v344 = 0;
    v342 = 0u;
    v343 = 0u;
    v204 = v315;
    v205 = v312;
    (v328)(*&v185, v315, v312);
    v206 = v334;
    (v325)(v190, v327, v334);
    v207 = swift_allocObject();
    *(v207 + 16) = v320;
    sub_75E7D0();
    v341 = v207;
    v208 = v310;
    v209 = v330;
    sub_76A5A0();
    sub_75E830();
    v210 = v208;
    v185 = v338;
    v308(v210, v209);
    v311(v190, v206);
    v316(*&v185, v205);
    sub_10A2C(&v342, &unk_93F9C0);
    sub_BEB8(&v345);
    sub_BEB8(&v348);
    v211 = v335;
    v213 = v335[2];
    v212 = v335[3];
    if (v213 >= v212 >> 1)
    {
      v211 = sub_7C8A8(v212 > 1, v213 + 1, 1, v335, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v211[2] = v213 + 1;
    v335 = v211;
    v189(v211 + v306 + v213 * v309, v289, v307);
    sub_BEB8(&v351);
  }

  else
  {
    sub_10A2C(&v348, &qword_9417D0);
    v204 = v315;
  }

  sub_1ED18((v340 + 45), &v348, &qword_9417D0);
  if (*(&v349 + 1))
  {
    v305 = v189;
    v214 = v312;
    v215 = v190;
    v216 = v310;
    v217 = v334;
    sub_10914(&v348, &v351);
    v218 = *(&v352 + 1);
    v219 = v353;
    v220 = sub_B170(&v351, *(&v352 + 1));
    *(&v349 + 1) = v218;
    v350 = v219[1];
    v221 = sub_B1B4(&v348);
    (*(*(v218 - 8) + 16))(v221, v220, v218);
    v347 = 0;
    v345 = 0u;
    v346 = 0u;
    (v328)(*&v185, v204, v214);
    (v325)(v215, v327, v217);
    v222 = swift_allocObject();
    *(v222 + 16) = v320;
    sub_75E7D0();
    *&v342 = v222;
    v223 = v330;
    sub_76A5A0();
    v224 = v273;
    sub_75E830();
    v308(v216, v223);
    v311(v215, v217);
    v316(*&v185, v214);
    sub_10A2C(&v345, &unk_93F9C0);
    sub_BEB8(&v348);
    v225 = v335;
    v227 = v335[2];
    v226 = v335[3];
    if (v227 >= v226 >> 1)
    {
      v225 = sub_7C8A8(v226 > 1, v227 + 1, 1, v335, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v229 = v305;
    v228 = v306;
    *(v225 + 2) = v227 + 1;
    v229(&v225[v228 + v227 * v309], v224, v307);
    sub_BEB8(&v351);
  }

  else
  {
    sub_10A2C(&v348, &qword_9417D0);
  }

  sub_75E810();
  v230 = v284;
  v232 = MinY;
  v231 = v277;
  sub_75E7C0();
  v233 = v340;
  sub_B170(v340 + 5, v340[8]);
  sub_7665A0();
  v337 = v234;
  v236 = v235;
  sub_B170(v233 + 5, v233[8]);
  sub_766520();
  v237 = CGRectGetMaxY(v366) - v236;
  v367.origin.x = v231;
  v367.origin.y = v232;
  v367.size.width = v73;
  v367.size.height = Height;
  v238 = CGRectGetMinX(v367);
  v368.origin.x = v231;
  v368.origin.y = v232;
  v368.size.width = v73;
  v368.size.height = Height;
  v239 = CGRectGetWidth(v368);
  sub_7664E0();
  v241 = v240;
  v369.origin.x = v231;
  v369.origin.y = v232;
  v369.size.width = v73;
  v369.size.height = Height;
  v242 = v241 + CGRectGetHeight(v369) - v237;
  sub_B170(v358, v359);
  sub_7665A0();
  v338 = v238;
  v370.origin.x = v238;
  v370.origin.y = v237;
  v370.size.width = v239;
  v370.size.height = v242;
  v339 = CGRectGetMinX(v370);
  v371.origin.x = v238;
  v371.origin.y = v237;
  v371.size.width = v239;
  v371.size.height = v242;
  CGRectGetMinY(v371);
  sub_B170(v360, v360[3]);
  sub_766720();
  sub_B170(v358, v359);
  sub_769D20();
  sub_766530();
  sub_1ED18((v233 + 30), &v348, &unk_943B10);
  if (!*(&v349 + 1))
  {
    sub_10A2C(&v348, &unk_943B10);
    v243 = v291;
    v245 = v279;
    v244 = v280;
    goto LABEL_56;
  }

  sub_10914(&v348, &v351);
  v243 = v291;
  v245 = v279;
  v244 = v280;
  if ((v300 & 1) == 0)
  {
    sub_B170(v340 + 25, v340[28]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(v340 + 25, v340[28]);
      sub_766520();
      CGRectGetMidY(v373);
      goto LABEL_58;
    }

    sub_BEB8(&v351);
LABEL_56:
    v246 = v278;
    v247 = v298;
    goto LABEL_59;
  }

  sub_B170(v340 + 5, v340[8]);
  sub_766520();
  CGRectGetMinY(v372);
LABEL_58:
  v374.origin.x = v244;
  v374.origin.y = v245;
  v246 = v278;
  v374.size.width = v278;
  v247 = v298;
  v374.size.height = v298;
  CGRectGetMaxX(v374);
  sub_B170(&v351, *(&v352 + 1));
  v243 = v291;
  sub_769D20();
  sub_766530();
  sub_BEB8(&v351);
LABEL_59:
  v375.origin.x = v244;
  v375.origin.y = v245;
  v375.size.width = v246;
  v375.size.height = v247;
  v248 = CGRectGetWidth(v375);
  v249 = sub_7664C0();
  *v250 = v248;
  v249(&v351, 0);
  v251 = &v314[*(v313 + 68)];
  sub_B170(v251, *(v251 + 3));
  v252 = v302;
  sub_33964();
  sub_766700();
  v254 = v253;
  v301(v252, v304);
  v255 = sub_7664C0();
  *(v256 + 8) = v254 + *(v256 + 8);
  v255(&v351, 0);
  sub_1ED18((v340 + 50), &v348, &unk_943B10);
  if (*(&v349 + 1))
  {
    sub_10914(&v348, &v351);
    sub_B170(&v351, *(&v352 + 1));
    v258 = v293;
    v257 = v294;
    v376.origin.x = v293;
    v376.origin.y = v294;
    v259 = v295;
    v376.size.width = v295;
    v376.size.height = v243;
    CGRectGetMinX(v376);
    v377.origin.x = v258;
    v377.origin.y = v257;
    v377.size.width = v259;
    v377.size.height = v243;
    CGRectGetMinY(v377);
    v378.origin.x = v258;
    v378.origin.y = v257;
    v378.size.width = v259;
    v378.size.height = v243;
    CGRectGetWidth(v378);
    sub_766530();
    sub_BEB8(&v351);
  }

  else
  {
    sub_10A2C(&v348, &unk_943B10);
  }

  sub_1ED18((v340 + 55), &v348, &unk_943B10);
  if (*(&v349 + 1))
  {
    sub_10914(&v348, &v351);
    sub_B170(&v351, *(&v352 + 1));
    v260 = v293;
    v261 = v294;
    v379.origin.x = v293;
    v379.origin.y = v294;
    v262 = v295;
    v379.size.width = v295;
    v379.size.height = v243;
    CGRectGetMinX(v379);
    v380.origin.x = v260;
    v380.origin.y = v261;
    v380.size.width = v262;
    v380.size.height = v243;
    CGRectGetMaxY(v380);
    v263 = v281;
    sub_B170(v251, *(v251 + 3));
    v264 = v302;
    sub_33964();
    sub_766700();
    v301(v264, v304);
    v381.origin.x = v260;
    v381.origin.y = v261;
    v381.size.width = v262;
    v381.size.height = v243;
    CGRectGetWidth(v381);
    sub_766530();
    sub_BEB8(&v351);
  }

  else
  {
    sub_10A2C(&v348, &unk_943B10);
    v263 = v281;
  }

  v265 = sub_7664C0();
  *(v266 + 8) = v292 + *(v266 + 8);
  v265(&v351, 0);
  v267 = sub_7664C0();
  *(v268 + 8) = v263 + *(v268 + 8);
  v267(&v351, 0);
  (*(v282 + 8))(v299, v283);
  sub_BEB8(v361);
  (*(v285 + 32))(v287, v230, v286);
  return sub_10A2C(v354, &qword_94E5E0);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_7CE80(a1, v1);
}

void *sub_7AB00(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_BD88(&unk_941C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&unk_93F5E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7AD2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_7AE54(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9419F0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_7AF58(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_BD88(&qword_941B50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&qword_941B58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B0D8(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941AA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941AA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7B220(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_7B378(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_BD88(&qword_941AB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&qword_941AC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7B4AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941AC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7B5CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7B6D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A00);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_7B874(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

double *sub_7BA48(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_BD88(&qword_941AF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_7BB70(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&unk_941B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7BC8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_95B250);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_7BD90(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7BEA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9419F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7C00C(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941A68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_7C180(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_BD88(&unk_94EC60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&qword_941BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7C2C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_BD88(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

size_t sub_7C3E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_BD88(a5);
  v14 = *(sub_BD88(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_BD88(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_7C5F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_BD88(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_7C74C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_BD88(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_7C8A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_BD88(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_7CAA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_BD88(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double *sub_7CBF4(uint64_t a1, uint64_t a2)
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

  sub_BD88(&qword_941A88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

double *sub_7CC78(uint64_t a1, uint64_t a2)
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

  sub_BD88(&unk_941A18);
  v4 = *(sub_757640() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_7CD74(uint64_t a1, uint64_t a2)
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

  sub_BD88(&qword_95B250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_7CDF8(uint64_t a1, uint64_t a2)
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

  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double sub_7CE80(uint64_t a1, void *a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 35, a2[38]);
  v8 = sub_766540();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_B170(a2 + 35, a2[38]);
    sub_7665A0();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    sub_766720();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_1ED18((a2 + 40), &v48, &qword_9417D0);
  if (v49)
  {
    sub_10914(&v48, v50);
    sub_B170(v50, v51);
    sub_7665A0();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_BD88(&qword_940AD0);
    sub_7592B0();
    v47 = v48;
    v20 = v18;
    sub_766720();
    v22 = v21;
    sub_BEB8(v50);
    v45 = v9;
  }

  else
  {
    sub_10A2C(&v48, &qword_9417D0);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_1ED18((a2 + 45), &v48, &qword_9417D0);
  if (v49)
  {
    sub_10914(&v48, v50);
    sub_B170(v50, v51);
    sub_7665A0();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    sub_33964();
    sub_766700();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    sub_766720();
    v31 = v30;
    sub_BEB8(v50);
    v32 = v9;
  }

  else
  {
    sub_10A2C(&v48, &qword_9417D0);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_B170(a2 + 25, a2[28]);
  sub_7665B0();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_B170(v35 + 9, *(v35 + 12));
  sub_33964();
  sub_766700();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_B170(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  sub_33964();
  sub_766700();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_7D408(void *a1, void *a2, uint64_t a3, double a4)
{
  v87 = a3;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v90 = v10;
  v15 = v12 - v13;
  v85 = v14;
  v86 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = sub_7699E0();

  sub_1ED18((a2 + 30), v102, &unk_943B10);
  if (v103)
  {
    sub_B170(v102, v103);
    sub_7665B0();
    v20 = v19;
    sub_BEB8(v102);
  }

  else
  {
    sub_10A2C(v102, &unk_943B10);
    v20 = 0.0;
  }

  sub_1ED18((a2 + 30), v102, &unk_943B10);
  v21 = v103;
  sub_10A2C(v102, &unk_943B10);
  v88 = v8;
  v89 = v7;
  if (v21)
  {
    v22 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170((v90 + *(v22 + 48)), *(v90 + *(v22 + 48) + 24));
    v23 = v92;
    sub_33964();
    sub_766700();
    v25 = v24;
    (*(v8 + 8))(v23, v7);
    if (v18)
    {
LABEL_6:
      v26 = v15 - v20 - v25;
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v26 = v15;
LABEL_9:
  v91 = v26;
  sub_B170(a2 + 5, a2[8]);
  sub_7665A0();
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v100 = a1;
  sub_BD88(&qword_940AD0);
  v32 = a2;
  v33 = v90;
  sub_7592B0();
  *&v100 = v102[0];
  v82 = v30;
  v83 = v28;
  sub_766720();
  v81 = v34;
  sub_B170(v32 + 5, v32[8]);
  sub_7669E0();
  v80 = v35;
  sub_B170(v32 + 10, v32[13]);
  sub_7665A0();
  v37 = v36;
  v39 = v38;
  v40 = *(v31 + 36);
  *&v100 = a1;
  v79 = v40;
  v41 = v33;
  sub_7592B0();
  *&v100 = v102[0];
  sub_766720();
  v42 = v16;
  v44 = v37 - v39 + v43;
  v45 = (v32 + 15);
  v93 = v32;
  sub_B170(v32 + 15, v32[18]);
  v84 = v42;
  sub_7665A0();
  v47 = v46;
  v49 = v48;
  *&v100 = a1;
  sub_7592B0();
  *&v100 = v102[0];
  sub_766720();
  v51 = v47 - v49 + v50;
  if (v51 >= v44)
  {
    sub_134D8(v45, &v100);
    v45 = (v32 + 10);
  }

  else
  {
    sub_134D8((v32 + 10), &v100);
  }

  sub_134D8(v45, &v98);
  v97[0] = a1;
  sub_7592B0();
  v52 = v102[0];
  v97[0] = a1;
  sub_7592B0();
  v53 = v102[0];
  if (v51 >= v44)
  {
    v54 = v102[0];
  }

  else
  {
    v54 = v52;
  }

  v97[3] = &type metadata for CGFloat;
  v97[4] = &protocol witness table for CGFloat;
  v97[0] = v54;
  if (v51 >= v44)
  {
    v53 = v52;
  }

  v95 = &type metadata for CGFloat;
  v96 = &protocol witness table for CGFloat;
  *&v94 = v53;
  sub_10914(&v100, v102);
  sub_134D8(v97, v104);
  sub_10914(&v98, &v105);
  sub_10914(&v94, &v106);
  sub_BEB8(v97);
  sub_B170(v102, v103);
  sub_7665A0();
  v56 = v55;
  v58 = v57;
  sub_B170(v104, v104[3]);
  sub_766720();
  v60 = v59;
  sub_1ED18((v93 + 20), &v98, &qword_9417D0);
  v61 = v89;
  if (v99)
  {
    sub_10914(&v98, &v100);
    sub_B170(&v100, v101);
    sub_7665A0();
    v63 = v62;
    v65 = v64;
    v97[0] = a1;
    sub_7592B0();
    v97[0] = v98;
    sub_766720();
    v67 = v63 - v65 + v66;
    sub_BEB8(&v100);
  }

  else
  {
    sub_10A2C(&v98, &qword_9417D0);
    v67 = 0.0;
  }

  v68 = v88;
  v69 = v67 + v56 - v58 + v60 + v83 - v82 + v81 + v80 + v41[15];
  sub_B170((v41 + *(v31 + 52)), *(v41 + *(v31 + 52) + 24));
  v70 = v92;
  sub_33964();
  sub_766700();
  v72 = v71;
  v73 = *(v68 + 8);
  v73(v70, v61);
  v74 = v69 + v72 + sub_7CE80(a1, v93);
  sub_B170(v41 + 4, *(v41 + 7));
  sub_33964();
  sub_766700();
  v76 = v75;
  v73(v70, v61);
  v77 = v85 + v86 + v74 + v76;
  sub_10A2C(v102, &qword_94E5E0);
  return v77;
}

double sub_7DC74(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_7D408(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

unint64_t sub_7DCC8()
{
  result = qword_9417F8;
  if (!qword_9417F8)
  {
    sub_133D8(&qword_9417F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9417F8);
  }

  return result;
}

uint64_t sub_7DD2C(uint64_t a1)
{
  *(a1 + 8) = sub_7DDB0(&qword_941800, type metadata accessor for ProductLockupAccessibilityLayout);
  result = sub_7DDB0(&qword_941808, type metadata accessor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_7DDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7DE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7DECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7DF70()
{
  sub_70B18(319, &unk_94E830);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &qword_941880);
    if (v1 <= 0x3F)
    {
      sub_7E0B0(319, &unk_94E840, &unk_941890);
      if (v2 <= 0x3F)
      {
        sub_7E0B0(319, &qword_94E850, &unk_9418A0);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7E0B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_133D8(a3);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7E118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_BD88(&qword_940AD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7E1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_BD88(&qword_940AD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7E298()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &qword_943C60);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_7E378();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_7E378()
{
  if (!qword_941970[0])
  {
    sub_133D8(&qword_93FBE0);
    v0 = sub_7593A0();
    if (!v1)
    {
      atomic_store(v0, qword_941970);
    }
  }
}

uint64_t sub_7E450()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A370);
  sub_BE38(v4, qword_99A370);
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F4D8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7E630()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A3A0);
  sub_BE38(v4, qword_99A3A0);
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F4F0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7E818(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_93F8F0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_7E8B0(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = sub_766690();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_765540();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (sub_769A00())
    {
      goto LABEL_8;
    }

    sub_7655E0();
    if (qword_93C238 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_BE38(v9, qword_99A288);
      sub_7F1AC();
      v14 = sub_7691B0();
      v15 = *(v10 + 8);
      v10 += 8;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &unk_90D000;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_769B50())
      {
        v17 = sub_769B60();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          sub_769B60();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_765580();
  sub_765580();
  if (v4 == 4)
  {
    if (qword_93C280 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_BE38(v5, qword_99A340);
    sub_766660();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_93C278 != -1)
      {
        swift_once();
      }

      v18 = qword_99A328;
    }

    else
    {
      if (qword_93C288 != -1)
      {
        swift_once();
      }

      v18 = qword_99A358;
    }

    v20 = sub_BE38(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    sub_766660();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_7ED24(unsigned __int8 a1, uint64_t a2, void *a3)
{
  LOBYTE(v4) = a1;
  v5 = a1;
  v6 = sub_766690();
  v21 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_765540();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (sub_769A00())
    {
      goto LABEL_8;
    }

    v20 = a3;
    sub_7655E0();
    if (qword_93C238 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_BE38(v9, qword_99A288);
      sub_7F1AC();
      v14 = sub_7691B0();
      (v10[1])(v12, v9);
      a3 = v20;
      if (v14)
      {
        break;
      }

LABEL_8:
      v4 = &unk_90D000;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_769B50())
      {
        v15 = sub_769B60();

        if (v15)
        {
          return;
        }
      }

      else
      {
      }

      v17 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          sub_769B60();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_2A6324(v4);
  sub_765580();
  if (v5 == 4)
  {
    if (qword_93C280 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_BE38(v6, qword_99A340);
    sub_766660();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_93C278 != -1)
      {
        swift_once();
      }

      v16 = qword_99A328;
    }

    else
    {
      if (qword_93C288 != -1)
      {
        swift_once();
      }

      v16 = qword_99A358;
    }

    v18 = sub_BE38(v6, v16);
    v19 = v21;
    (*(v21 + 16))(v8, v18, v6);
    sub_766660();
    (*(v19 + 8))(v8, v6);
  }
}

unint64_t sub_7F1AC()
{
  result = qword_941C40;
  if (!qword_941C40)
  {
    sub_765540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941C40);
  }

  return result;
}

double sub_7F204(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = sub_7664A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_7699B0() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99F4D8);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_B1B4(v26);
  (*(v11 + 16))(v18, v13, v10);
  sub_765C10();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_BEB8(v26);
  sub_766470();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    sub_769600();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

uint64_t sub_7F668(void *a1)
{
  if (*v1 == *a1 && (sub_76A6C0() & 1) != 0 && (type metadata accessor for MenuItemDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && (*(v2 + 56) == *(v1 + 56) ? (v3 = *(v2 + 64) == *(v1 + 64)) : (v3 = 0), v3 || (v4 = v2, v5 = sub_76A950(), v2 = v4, (v5 & 1) != 0)))
  {
    v6 = *(v2 + 72) ^ *(v1 + 72) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_7F74C()
{
  sub_76A6D0();
  sub_769330();
  sub_76AA50(*(v0 + 72));
}

uint64_t sub_7F798()
{
}

uint64_t sub_7F7C8()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_7F854(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_93D788 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99EE90);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[v18] = sub_75BB10();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v25 = sub_75C840();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  v33 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v34 = v33;
  sub_75BA90();

  v35 = *&v30[v32];
  sub_396E8();
  v36 = v35;
  v37 = sub_769FF0();
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v32]];

  return v30;
}

uint64_t sub_7FC84()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760E70();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "layoutSubviews", v8);
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v14[4] = sub_75BB20();
  v14[5] = &protocol witness table for UILabel;
  v14[1] = v11;
  v12 = v11;
  sub_760E50();
  [v0 bounds];
  sub_760E60();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for PreorderDisclaimerCollectionViewCell()
{
  result = qword_941D68;
  if (!qword_941D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7FF3C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7FFDC()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_93D788 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99EE90);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_75BB20());
  *(v1 + v9) = sub_75BB10();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  sub_76A840();
  __break(1u);
}

void sub_80284()
{
  if (qword_93C2B0 != -1)
  {
    swift_once();
  }

  v0 = qword_941D78;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_941D80 = v3;
}

UIColor sub_8031C()
{
  sub_BE70(0, &qword_93E540);
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_76A0C0(v3, v2).super.isa;
  qword_941D88 = result.super.isa;
  return result;
}

uint64_t sub_803B0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_75CB60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75CBD0();
  sub_161DC(v8, qword_99A3D8);
  v33 = sub_BE38(v8, qword_99A3D8);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_93C2B0 != -1)
  {
    swift_once();
  }

  v10 = qword_941D78;
  *v3 = qword_941D78;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = sub_766CA0();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  sub_766CB0();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_93D878 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99F160);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_B1B4(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v61);
  v37(v20, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  if (qword_93D888 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v16, qword_99F190);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_B1B4(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_B1B4(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  sub_766CB0();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  sub_766CB0();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return sub_75CB80();
}