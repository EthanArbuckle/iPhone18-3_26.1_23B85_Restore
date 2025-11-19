uint64_t sub_49F15C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_757BA0();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_956690, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_956698, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4D0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49F85C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_762810();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_9566A0, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&unk_9566A8, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4D0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49FF5C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_7583C0();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_93F5B0, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_9566B8, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4D0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_4A065C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4A06B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4A0700(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_759D00();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_9513B0, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&unk_9566D0, &type metadata accessor for LinkableText);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4B0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

void sub_4A0E3C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchTransparencyView();
  if (sub_769BC0() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_76A950();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v17 = a1;
    v12 = sub_75FFF0();
    if (v12)
    {
      v13 = v12;
      v14 = sub_759CF0();
      v15 = sub_22A974(v14, sub_30AE4);

      v16 = sub_759CE0();
      sub_4ED3B8(v16, 0, v15);

      [v11 setNeedsLayout];
      sub_49A870(v13, v17, v3);
    }
  }
}

uint64_t sub_4A0FE8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_759D00();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_9513B0, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&unk_9566D0, &type metadata accessor for LinkableText);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4D0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

id sub_4A16F0(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_769240();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_76A950();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_769210();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_769240();
    }

    v15 = sub_7692D0();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_4A18A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v131 = a7;
  LODWORD(v132) = a6;
  v129 = a5;
  v138 = a4;
  v133 = a3;
  v130 = a10;
  v122 = sub_75F740();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_764CF0();
  v136 = *(v14 - 8);
  v137 = v14;
  __chkstk_darwin(v14);
  v125 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v119 - v17;
  __chkstk_darwin(v18);
  v123 = &v119 - v19;
  v139 = sub_75B490();
  v134 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v127 = &v119 - v22;
  v23 = sub_BD88(&unk_95F4E0);
  __chkstk_darwin(v23 - 8);
  v126 = &v119 - v24;
  v25 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v25 - 8);
  v27 = &v119 - v26;
  v28 = sub_7623A0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v124 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v31 - 8);
  v33 = &v119 - v32;
  v34 = sub_BD88(&unk_9457F0);
  v141 = *(v34 - 8);
  v142 = v34;
  __chkstk_darwin(v34);
  v143 = &v119 - v35;
  v140 = a1;
  v36 = sub_764F30();
  if (v37)
  {
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v119 = a8;
      sub_396E8();
      v39 = sub_769FD0();
      sub_3E3874(1, v39);

      v40 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
      if (v40)
      {
        v41 = v40;
        v42 = sub_769210();

        [v41 setText:v42];
      }

      else
      {
      }

      a8 = v119;
      goto LABEL_13;
    }
  }

  v43 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v44 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  if (v44)
  {
    [v44 setHidden:1];
    v45 = *&a2[v43];
    if (v45)
    {
      [v45 setText:0];
    }
  }

LABEL_13:
  v46 = sub_764EF0();
  sub_3E304C(v46, v47);
  v48 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel];
  sub_764F40();
  if (v49)
  {
    v50 = sub_769210();
  }

  else
  {
    v50 = 0;
  }

  [v48 setText:v50];

  sub_1ED18(v130, v33, &unk_94AC40);
  v52 = v141;
  v51 = v142;
  if ((*(v141 + 48))(v33, 1, v142) == 1)
  {
    sub_10A2C(v33, &unk_94AC40);
    v53 = *(v29 + 104);
    v53(v124, enum case for OfferButtonSubtitlePosition.below(_:), v28);
    v53(v27, enum case for OfferButtonSubtitlePosition.right(_:), v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    sub_4A2A44(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    sub_760940();
  }

  else
  {
    (*(v52 + 32))(v143, v33, v51);
  }

  v54 = v139;
  v55 = v134;
  v56 = sub_764EC0();
  v57 = v131;
  if (!v56)
  {
    goto LABEL_24;
  }

  v58 = sub_758C70();
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    v59 = sub_75BD30();
    if ((*(*(v59 - 8) + 48))(a8, 1, v59) == 1)
    {
      v60 = sub_765870();
      if ((*(*(v60 - 8) + 48))(a9, 1, v60) == 1)
      {

LABEL_24:
        v61 = sub_764EC0();
        goto LABEL_26;
      }
    }
  }

  v62 = v126;
  (*(v55 + 56))(v126, 1, 1, v54);
  v144 = 0u;
  v145 = 0u;
  v61 = sub_75FE10();

  sub_10A2C(&v144, &unk_93FBD0);
  sub_10A2C(v62, &unk_95F4E0);
LABEL_26:

  v63 = sub_764DB0();
  v64 = sub_764E00();
  sub_1DFEBC(v61, v63, 0, v133, v143, v138, v132 & 1, v64 & 1);

  sub_BD88(&unk_944300);
  sub_768900();
  sub_768ED0();
  v134 = *(&v144 + 1);
  v139 = v144;
  if (v61)
  {
    v65 = v61;
    v66 = v127;
    sub_75FE40();
    v67 = v128;
    (*(v55 + 104))(v128, enum case for OfferLabelStyle.none(_:), v54);
    sub_4A2A44(&unk_9535D0, &type metadata accessor for OfferLabelStyle);
    v68 = sub_7691C0();
    v69 = *(v55 + 8);
    v69(v67, v54);
    v69(v66, v54);
    if ((v68 & 1) == 0)
    {

      sub_75FE80();
      sub_75A920();
      swift_unknownObjectRetain();
      sub_768ED0();
      sub_75A7D0();

      v71 = sub_75E260();
      swift_allocObject();
      v72 = sub_75E240();
      *(&v145 + 1) = v71;
      *&v144 = v72;
      v73 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_12C2F8(&v144, &a2[v73]);
      swift_endAccess();
      [*&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] frame];
      v147.origin.x = 0.0;
      v147.origin.y = 0.0;
      v147.size.width = 0.0;
      v147.size.height = 0.0;
      v61 = v65;
      if (CGRectEqualToRect(v146, v147))
      {
        v74 = objc_opt_self();
        v75 = [v74 areAnimationsEnabled];
        [v74 setAnimationsEnabled:0];
        sub_4A2A44(&qword_9566E0, type metadata accessor for BaseLockupView);
        swift_unknownObjectRetain();
        sub_75E250();
        [a2 layoutIfNeeded];
        [v74 setAnimationsEnabled:v75];
      }

      else
      {
        sub_4A2A44(&qword_9566E0, type metadata accessor for BaseLockupView);
        swift_unknownObjectRetain();
        sub_75E250();
      }

      goto LABEL_34;
    }

    v61 = v65;
  }

  v144 = 0u;
  v145 = 0u;
  v70 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_12C2F8(&v144, &a2[v70]);
  swift_endAccess();
  sub_4A16F0(0, 0);
LABEL_34:
  v76 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v77 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  v78 = &selRef_absoluteDimension_;
  if (v77 && ([v77 isHidden] & 1) == 0 && (v79 = *&a2[v76]) != 0)
  {
    v80 = [v79 hasContent];
  }

  else
  {
    v80 = 0;
  }

  v81 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_1ED18(&a2[v81], &v144, &unk_93FBD0);
  v82 = *(&v145 + 1);
  LODWORD(v138) = *(&v145 + 1) != 0;
  sub_10A2C(&v144, &unk_93FBD0);
  v83 = sub_764DD0();
  if (!v84)
  {
LABEL_45:
    v86 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
    v87 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v87)
    {
      [v87 setHidden:1];
      v88 = *&a2[v86];
      if (v88)
      {
        [v88 setText:0];
      }
    }

    goto LABEL_54;
  }

  if (v82)
  {
    v85 = v80;
  }

  else
  {
    v85 = 0;
  }

  if (v85)
  {

    goto LABEL_45;
  }

  v133 = v83;
  v89 = v84;
  sub_3E3B34();
  sub_764E80();
  v90 = sub_769490();

  v91 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (v90)
  {
    if (v91)
    {
      v132 = v91;
      v92 = sub_764E80();
      v93 = v120;
      sub_764EB0();
      v94 = v132;
      sub_252AF0(v92, v133, v89, v93);

      v95 = v93;
      v78 = &selRef_absoluteDimension_;
      (*(v121 + 8))(v95, v122);
      goto LABEL_54;
    }
  }

  else if (v91)
  {
    v96 = v91;
    v97 = sub_769210();

    [v96 setText:v97];

    v78 = &selRef_absoluteDimension_;
    goto LABEL_54;
  }

LABEL_54:
  v98 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  sub_764F70();
  if (v99)
  {
    v100 = sub_769210();
  }

  else
  {
    v100 = 0;
  }

  [v98 setText:v100];

  v101 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v102 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (v102)
  {
    v103 = [v102 isHidden];
    v104 = v141;
    if ((v103 & 1) != 0 || (v105 = *&a2[v101]) == 0)
    {
      v106 = 0;
    }

    else
    {
      v106 = [v105 v78[327]];
    }
  }

  else
  {
    v106 = 0;
    v104 = v141;
  }

  if (![v98 v78[327]])
  {
    goto LABEL_69;
  }

  if (v106)
  {
    if (v82)
    {
      v107 = 1;
    }

    else
    {
      v107 = v80;
    }

    if (v107)
    {
LABEL_69:
      v108 = 1;
      goto LABEL_72;
    }
  }

  else
  {
    v108 = v138;
    if (v80)
    {
      goto LABEL_72;
    }
  }

  v108 = 0;
LABEL_72:
  [v98 setHidden:v108];
  v109 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  if (sub_764EE0())
  {

    v110 = v129;
  }

  else
  {
    v110 = 1;
  }

  [v109 setHidden:v110 & 1];
  v111 = sub_764E00();
  if (v61 && (v111 & 1) != 0)
  {
    v112 = v125;
    sub_75FE80();
    (*(v136 + 32))(v135, v112, v137);
    swift_getObjectType();
    v113 = sub_758330();
    v115 = v114;
    v116 = &a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_758210();
      swift_unknownObjectRelease();
    }

    *v116 = v113;
    v116[1] = v115;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_3E3FD8();
    swift_unknownObjectRelease();
    (*(v136 + 8))(v135, v137);
  }

  else
  {
    v117 = &a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_758210();
      swift_unknownObjectRelease();
    }

    *v117 = 0;
    *(v117 + 1) = 0;
    swift_unknownObjectRelease();
    sub_3E3FD8();
  }

  [a2 setNeedsLayout];
  swift_unknownObjectRelease();

  return (*(v104 + 8))(v143, v142);
}

uint64_t sub_4A2A44(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_4A2A8C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer;
  *&v2[v4] = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_riverViewStyling;
  v67 = sub_75C100();
  v69 = *(v67 - 8);
  (*(v69 + 16))(&v2[v8], a1, v67);
  v9 = sub_4A6934(0.0, 0.0, 1.0, 0.0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_leftMaskLayer;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_leftMaskLayer] = v9;
  v11 = v10;
  v64 = v10;
  v12 = sub_4A6934(1.0, 0.0, 0.0, 0.0);
  v70 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_rightMaskLayer;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_rightMaskLayer] = v12;
  v13 = sub_4A6934(0.0, 0.0, 0.0, 1.0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topMaskLayer;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topMaskLayer] = v13;
  v15 = sub_4A6934(0.0, 1.0, 0.0, 0.0);
  v65 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomMaskLayer;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomMaskLayer] = v15;
  v16 = *&v2[v14];
  v17 = *&v2[v11];
  v18 = objc_allocWithZone(CAGradientLayer);
  v19 = v16;
  v20 = v17;
  v21 = [v18 init];
  [v21 setType:kCAGradientLayerAxial];
  sub_BD88(&unk_93F5C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77B6C0;
  sub_BE70(0, &qword_945820);
  *(v22 + 32) = sub_76A190(0.25);
  *(v22 + 40) = sub_76A190(0.75);
  isa = sub_769450().super.isa;

  [v21 setLocations:isa];

  [v21 setStartPoint:{0.0, 0.0}];
  [v21 setEndPoint:{1.0, 1.0}];
  [v19 setMask:v20];
  [v21 setMask:v19];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer] = v21;
  v24 = *&v2[v14];
  v25 = *&v2[v70];
  v26 = objc_allocWithZone(CAGradientLayer);
  v27 = v24;
  v28 = v25;
  v29 = [v26 init];
  [v29 setType:kCAGradientLayerAxial];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77B6C0;
  *(v30 + 32) = sub_76A190(0.25);
  *(v30 + 40) = sub_76A190(0.75);
  v31 = sub_769450().super.isa;

  [v29 setLocations:v31];

  [v29 setStartPoint:{1.0, 0.0}];
  [v29 setEndPoint:{0.0, 1.0}];
  [v27 setMask:v28];
  [v29 setMask:v27];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topRightGradientLayer] = v29;
  v32 = *&v2[v65];
  v33 = *&v2[v64];
  v34 = objc_allocWithZone(CAGradientLayer);
  v35 = v32;
  v36 = v33;
  v37 = [v34 init];
  [v37 setType:kCAGradientLayerAxial];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_77B6C0;
  *(v38 + 32) = sub_76A190(0.25);
  *(v38 + 40) = sub_76A190(0.75);
  v39 = sub_769450().super.isa;

  [v37 setLocations:v39];

  [v37 setStartPoint:{0.0, 1.0}];
  [v37 setEndPoint:{1.0, 0.0}];
  [v35 setMask:v36];
  [v37 setMask:v35];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomLeftGradientLayer] = v37;
  v40 = *&v2[v65];
  v41 = *&v2[v70];
  v42 = objc_allocWithZone(CAGradientLayer);
  v43 = v40;
  v44 = v41;
  v45 = [v42 init];
  [v45 setType:kCAGradientLayerAxial];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_77B6C0;
  *(v46 + 32) = sub_76A190(0.25);
  *(v46 + 40) = sub_76A190(0.75);
  v47 = sub_769450().super.isa;

  [v45 setLocations:v47];

  [v45 setStartPoint:{1.0, 1.0}];
  [v45 setEndPoint:{0.0, 0.0}];
  [v43 setMask:v44];
  [v45 setMask:v43];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomRightGradientLayer] = v45;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_overlayLayer] = sub_4A6B60();
  v72.receiver = v2;
  v72.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 whiteColor];
  [v50 setBackgroundColor:v51];

  v52 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView]];
  v53 = [*&v50[v52] layer];

  v54 = sub_3B79AC();

  [v53 setMeshTransform:v54];

  v55 = [*&v50[v52] layer];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer;
  [v55 addSublayer:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer]];

  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_overlayLayer]];
  v50[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = 1;
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  [v58 addObserver:v50 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v59 = [v57 defaultCenter];
  [v59 addObserver:v50 selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v60 = [v57 defaultCenter];
  [v60 addObserver:v50 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_BD88(&qword_9477F0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_77B6D0;
  *(v61 + 32) = sub_767B80();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v71[3] = ObjectType;
  v71[0] = v50;
  v62 = v50;
  sub_769F30();

  swift_unknownObjectRelease();

  (*(v69 + 8))(a1, v67);
  sub_BEB8(v71);
  return v62;
}

void sub_4A348C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();

  LOBYTE(a1) = sub_11724C(v4, a1);

  if (a1)
  {
    return;
  }

  v5 = *&v1[v3];
  if (v5 >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_4A35A0();
    return;
  }

  if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] == 1 && (v6 = [v1 window]) != 0 && (v6, (objc_msgSend(v1, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_4A3868();
    sub_4A35A0();
    sub_4A4320();
    sub_4A4898();
    sub_4A49DC();
    sub_4A4518();
  }

  else
  {
    sub_4A3868();
  }
}

uint64_t sub_4A35A0()
{
  sub_BD88(&unk_93F5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79F6E0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topRightGradientLayer];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomRightGradientLayer];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  *(inited + 72) = [v7 layer];
  *(inited + 80) = [v0 layer];
  v13 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_23;
  }

  for (i = *(inited + 32); ; i = sub_76A770())
  {
    v15 = i;
    [i removeAllAnimations];

    if (v13)
    {
      v16 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_23;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 removeAllAnimations];

    if (v13)
    {
      v18 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
        goto LABEL_23;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 removeAllAnimations];

    if (v13)
    {
      v20 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 4uLL)
      {
        goto LABEL_23;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 removeAllAnimations];

    if (v13)
    {
      v22 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 5uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 removeAllAnimations];

    if (v13)
    {
      v24 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 6uLL)
      {
        goto LABEL_23;
      }

      v24 = *(inited + 72);
    }

    v25 = v24;
    [v24 removeAllAnimations];

    if (v13)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 7uLL)
    {
      v26 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v26 = sub_76A770();
LABEL_22:
  v27 = v26;
  [v26 removeAllAnimations];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_4A3868()
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) < 4)
    {
      return;
    }

LABEL_3:
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer);
    swift_beginAccess();
    v5 = *(v0 + v2);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v42 = v4;
      v8 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v5 + 32);
      v7 = v4;
      v8 = v6;
    }

    v9 = v8;
    swift_endAccess();
    sub_BD88(&unk_93F5C0);
    inited = swift_initStackObject();
    v46 = xmmword_77B6C0;
    *(inited + 16) = xmmword_77B6C0;
    v1 = &selRef_absoluteDimension_;
    *(inited + 32) = [v9 CGColor];
    v11 = [v9 colorWithAlphaComponent:0.0];
    v12 = [v11 CGColor];

    *(inited + 40) = v12;
    sub_140730(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_769450().super.isa;

    [v4 setColors:isa];

    v14 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topRightGradientLayer);
    swift_beginAccess();
    v15 = *(v0 + v2);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v43 = v14;
      v18 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        __break(1u);
        goto LABEL_24;
      }

      v16 = *(v15 + 40);
      v17 = v14;
      v18 = v16;
    }

    v19 = v18;
    swift_endAccess();
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_77B6C0;
    *(v20 + 32) = [v19 CGColor];
    v21 = [v19 colorWithAlphaComponent:0.0];
    v22 = [v21 CGColor];

    *(v20 + 40) = v22;
    sub_140730(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v23 = sub_769450().super.isa;

    [v14 setColors:v23];

    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomLeftGradientLayer);
    swift_beginAccess();
    v24 = *(v0 + v2);
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v24 + 48);
      v26 = v4;
      v27 = v25;
      goto LABEL_12;
    }

LABEL_22:
    v44 = v4;
    v27 = sub_76A770();
LABEL_12:
    v28 = v27;
    swift_endAccess();
    v29 = swift_initStackObject();
    *(v29 + 16) = v46;
    *(v29 + 32) = [v28 v1[235]];
    v30 = [v28 colorWithAlphaComponent:0.0];
    v31 = [v30 v1[235]];

    *(v29 + 40) = v31;
    sub_140730(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = sub_769450().super.isa;

    [v4 setColors:v32];

    v14 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomRightGradientLayer);
    swift_beginAccess();
    v33 = *(v0 + v2);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= 4uLL)
      {
        v34 = *(v33 + 56);
        v35 = v14;
        v36 = v34;
LABEL_15:
        v37 = v36;
        swift_endAccess();
        v38 = swift_initStackObject();
        *(v38 + 16) = v46;
        *(v38 + 32) = [v37 v1[235]];
        v39 = [v37 colorWithAlphaComponent:0.0];
        v40 = [v39 v1[235]];

        *(v38 + 40) = v40;
        sub_140730(v38);
        swift_setDeallocating();
        swift_arrayDestroy();
        v41 = sub_769450().super.isa;

        [v14 setColors:v41];

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    v45 = v14;
    v36 = sub_76A770();
    goto LABEL_15;
  }

  if (sub_76A860() >= 4)
  {
    goto LABEL_3;
  }
}

void sub_4A3E2C()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] == 1 && (v1 = [v0 window]) != 0 && (v1, (objc_msgSend(v0, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer];
    v6 = sub_769210();
    v7 = [v5 animationForKey:v6];

    if (v7)
    {
    }

    else
    {
      sub_4A3868();
      sub_4A35A0();
      sub_4A4320();
      sub_4A4898();
      sub_4A49DC();
    }

    sub_4A4518();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer];
    v3 = sub_769210();
    v4 = [v2 animationForKey:v3];

    if (v4)
    {

      sub_4A471C();
    }
  }
}

id sub_4A3FA8()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView];
  [v0 bounds];
  v2 = -CGRectGetMidY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  [v0 bounds];
  Height = CGRectGetHeight(v26);
  [v1 setFrame:{0.0, v2, Width, Height + Height}];
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer];
  [v0 bounds];
  [v5 frame];
  [v5 setFrame:?];
  [v0 bounds];
  MidY = CGRectGetMidY(v27);
  [v5 frame];
  [v5 setFrame:{0.0, MidY}];
  [v0 bounds];
  v7 = CGRectGetWidth(v28);
  [v0 bounds];
  v8 = CGRectGetHeight(v29);
  v9 = hypot(v7, v8) * 1.2;
  [v0 bounds];
  v10 = CGRectGetWidth(v30);
  v11 = v10 + v10;
  if (v11 > v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  [v0 bounds];
  v13 = CGRectGetHeight(v31);
  v14 = v13 + v13;
  if (v14 > v9)
  {
    v9 = v14;
  }

  [v0 bounds];
  v15 = (v12 - CGRectGetWidth(v32)) * -0.5;
  [v0 bounds];
  v16 = (v9 - CGRectGetHeight(v33)) * -0.5;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_overlayLayer] setFrame:{v15, v16, v12, v9}];
  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topMaskLayer];
  [*&v0[v17] bounds];
  [v18 setFrame:?];
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomMaskLayer];
  [*&v0[v17] bounds];
  [v19 setFrame:?];
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_leftMaskLayer];
  [*&v0[v17] bounds];
  [v20 setFrame:?];
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_rightMaskLayer];
  [*&v0[v17] bounds];
  return [v21 setFrame:?];
}

void sub_4A4320()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CABasicAnimation) init];
  v3 = sub_769210();
  [v2 setKeyPath:v3];

  v4 = sub_3B79AC();
  [v2 setFromValue:v4];

  v5 = sub_3B7A0C();
  [v2 setToValue:v5];

  v6 = v2;
  [v6 setDuration:3.5];
  [v6 setAutoreverses:1];
  LODWORD(v7) = 2139095039;
  [v6 setRepeatCount:v7];
  v8 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v9) = 1054280253;
  LODWORD(v10) = 1056293519;
  LODWORD(v11) = 1.0;
  v12 = [v8 initWithControlPoints:v9 :0.0 :v10 :v11];
  [v6 setTimingFunction:v12];

  v13 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView) layer];
  v14 = sub_769210();
  [v13 addAnimation:v6 forKey:v14];
}

void sub_4A4518()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 1.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = sub_769210();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 timeOffset];
      v9 = v8;

      v10 = [v0 layer];
      LODWORD(v11) = 1.0;
      [v10 setSpeed:v11];

      v12 = [v0 layer];
      [v12 setTimeOffset:0.0];

      v13 = [v0 layer];
      [v13 setBeginTime:0.0];

      v14 = [v0 layer];
      [v14 convertTime:0 fromLayer:CACurrentMediaTime()];
      v16 = v15;

      v17 = [v0 layer];
      [v17 setBeginTime:v16 - v9];
    }
  }
}

void sub_4A471C()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = sub_769210();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 convertTime:0 fromLayer:CACurrentMediaTime()];
      v9 = v8;

      v10 = [v0 layer];
      [v10 setSpeed:0.0];

      v11 = [v0 layer];
      [v11 setTimeOffset:v9];
    }
  }
}

void sub_4A4898()
{
  v1 = [objc_allocWithZone(CABasicAnimation) init];
  v2 = sub_769210();
  [v1 setKeyPath:v2];

  isa = sub_7695E0().super.super.isa;
  [v1 setToValue:isa];

  v4 = v1;
  [v4 setDuration:20.0];
  LODWORD(v5) = 2139095039;
  [v4 setRepeatCount:v5];

  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer);
  v7 = sub_769210();
  [v6 addAnimation:v4 forKey:v7];
}

void sub_4A49DC()
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v101 = v0;
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    goto LABEL_155;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= 4)
  {
LABEL_3:
    v6 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_riverViewStyling;
    v7 = v101;
    sub_75C0D0();
    v9 = v8;
    sub_75C0F0();
    v11 = v10;
    v12 = &v101[v6];
    sub_75C090();
    v14 = v13;
    v15 = *&v101[v4];
    if (!(v15 >> 62))
    {
      v7 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      v12 = v7 >> 1;
      goto LABEL_5;
    }

    v97 = sub_76A860();
    if (v97 < -1)
    {
      __break(1u);
LABEL_159:
      if (v6 < 0)
      {
        v1 = v6;
      }

      else
      {
        v1 = v16;
      }

      v97 = sub_76A860();
      if (v97 < 0)
      {
        __break(1u);
        goto LABEL_181;
      }

      if (sub_76A860() >= v12)
      {
        goto LABEL_7;
      }

LABEL_164:
      __break(1u);
LABEL_165:
      v30 = sub_76A860();
      if (v30 >= v12)
      {
        goto LABEL_26;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    while (1)
    {
      v7 = v97;
      v12 = v97 / 2;
LABEL_5:
      swift_beginAccess();
      v6 = *&v101[v4];
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v2 = v6 >> 62;
      if (v6 >> 62)
      {
        goto LABEL_159;
      }

      if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) < v12)
      {
        goto LABEL_164;
      }

LABEL_7:
      if ((v6 & 0xC000000000000001) != 0 && v7 + 1 > 2)
      {
        sub_BE70(0, &qword_93E540);

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          sub_76A750(v17);
          v17 = v18;
        }

        while (v12 != v18);
        if (!v2)
        {
LABEL_12:
          v19 = 0;
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          v1 = v20 + 32;
          v21 = (2 * v12) | 1;
          goto LABEL_15;
        }
      }

      else
      {

        if (!v2)
        {
          goto LABEL_12;
        }
      }

      v20 = sub_76A870();
      v1 = v22;
      v19 = v23;
      v21 = v24;
LABEL_15:
      swift_endAccess();
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v3 = sub_76A970();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = v26[2];

      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
LABEL_177:
        swift_unknownObjectRelease();
LABEL_16:
        sub_4A5FDC(v20, v1, v19, v21);
        v7 = v25;
        goto LABEL_23;
      }

      if (v27 != (v21 >> 1) - v19)
      {
        goto LABEL_177;
      }

      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
        goto LABEL_24;
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v104 = v7;
      v28 = *&v101[v4];
      if (v28 >> 62)
      {
        goto LABEL_165;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFF8;
      v30 = *(v29 + 16);
      if (v30 < v12)
      {
        goto LABEL_166;
      }

LABEL_26:
      swift_beginAccess();
      v7 = *&v101[v4];
      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v4 = v7 >> 62;
      if (!(v7 >> 62))
      {
        v31 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (v31 >= v12)
        {
          if (v31 >= v30)
          {
LABEL_29:
            if ((v7 & 0xC000000000000001) == 0 || v12 == v30)
            {

              if (!v4)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v12 >= v30)
              {
                __break(1u);
                goto LABEL_178;
              }

              sub_BE70(0, &qword_93E540);

              v32 = v12;
              do
              {
                v33 = v32 + 1;
                sub_76A750(v32);
                v32 = v33;
              }

              while (v30 != v33);
              if (!v4)
              {
LABEL_36:
                v7 &= 0xFFFFFFFFFFFFFF8uLL;
                v1 = v7 + 32;
                v30 = (2 * v30) | 1;
                goto LABEL_39;
              }
            }

            v7 = sub_76A870();
            v1 = v34;
            v12 = v35;
            v30 = v36;
LABEL_39:
            swift_endAccess();
            if ((v30 & 1) == 0)
            {
LABEL_40:
              sub_4A5FDC(v7, v1, v12, v30);
              v38 = v37;
              goto LABEL_47;
            }

            sub_76A970();
            swift_unknownObjectRetain_n();
            v39 = swift_dynamicCastClass();
            if (!v39)
            {
              swift_unknownObjectRelease();
              v39 = _swiftEmptyArrayStorage;
            }

            v40 = v39[2];

            if (__OFSUB__(v30 >> 1, v12))
            {
LABEL_178:
              __break(1u);
            }

            else if (v40 == (v30 >> 1) - v12)
            {
              v38 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v38)
              {
                v38 = _swiftEmptyArrayStorage;
LABEL_47:
                swift_unknownObjectRelease();
              }

              v103 = v38;
              sub_4A58A0(2);
              sub_4A58A0(2);
              v12 = *&v101[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topLeftGradientLayer];
              v30 = v104;
              v3 = (v104 & 0xFFFFFFFFFFFFFF8);
              if (!(v104 >> 62))
              {
                v2 = *(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8));
LABEL_50:
                v4 = v30 & 0xC000000000000001;
                v98 = v12;
                v102 = v3;
                if (!v2)
                {
LABEL_71:
                  v50 = (v11 + v14) / v9;
                  v51 = (v50 + v50) * 0.15;
                  v52 = _swiftEmptyArrayStorage[2];
                  if (v52)
                  {
                    sub_76A7C0();
                    v53 = 5;
                    v54 = v30;
                    do
                    {
                      v55 = _swiftEmptyArrayStorage[v53];
                      sub_76A7A0();
                      sub_76A7D0();
                      sub_76A7E0();
                      sub_76A7B0();
                      v53 += 2;
                      --v52;
                    }

                    while (v52);
                  }

                  else
                  {

                    v54 = v30;
                  }

                  v1 = 0xEE006E6F6974616DLL;
                  v56 = sub_4A70E4(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 * 0.5);

                  v57 = sub_769210();
                  [v98 addAnimation:v56 forKey:v57];

                  v99 = *&v101[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_topRightGradientLayer];
                  if (v2)
                  {
                    v58 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v59 = sub_76A770();
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      else
                      {
                        if (v58 >= v3[2])
                        {
                          goto LABEL_149;
                        }

                        v59 = *(v54 + 8 * v58 + 32);
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      if (v58)
                      {
                        v1 = v59;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_143C3C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v62 = _swiftEmptyArrayStorage[2];
                        v61 = _swiftEmptyArrayStorage[3];
                        v63 = v1;
                        if (v62 >= v61 >> 1)
                        {
                          sub_143C3C((v61 > 1), v62 + 1, 1);
                          v63 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v62 + 1;
                        v64 = &_swiftEmptyArrayStorage[2 * v62];
                        v64[4] = v58;
                        v64[5] = v63;
                        v3 = v102;
                        if (v60 == v2)
                        {
                          break;
                        }

                        v58 = v60;
                      }

                      else
                      {

                        ++v58;
                        if (v60 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v1 = _swiftEmptyArrayStorage[2];
                  if (v1)
                  {
                    sub_76A7C0();
                    v65 = 5;
                    v66 = v99;
                    do
                    {
                      v67 = _swiftEmptyArrayStorage[v65];
                      sub_76A7A0();
                      sub_76A7D0();
                      sub_76A7E0();
                      sub_76A7B0();
                      v65 += 2;
                      --v1;
                    }

                    while (v1);
                  }

                  else
                  {

                    v66 = v99;
                  }

                  v68 = sub_4A70E4(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + v50 * 0.5);

                  v69 = sub_769210();
                  [v66 addAnimation:v68 forKey:v69];

                  v70 = *&v101[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
                  if (v103 >> 62)
                  {
                    v2 = sub_76A860();
                  }

                  else
                  {
                    v2 = *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8));
                  }

                  v4 = v103 & 0xC000000000000001;
                  v100 = v70;
                  if (v2)
                  {
                    v1 = 0;
                    v3 = (v103 + 32);
                    do
                    {
                      v71 = v1;
                      if (v4)
                      {
                        v73 = sub_76A770();
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      else
                      {
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v1 >= *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)))
                        {
                          goto LABEL_150;
                        }

                        v73 = v3[v1];
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      if (v1)
                      {

                        if (v74 == v2)
                        {
                          break;
                        }

                        if (v4)
                        {
                          v75 = sub_76A770();
                        }

                        else
                        {
                          if (v74 >= *(v72 + 16))
                          {
                            goto LABEL_150;
                          }

                          v75 = v3[v74];
                        }

                        v73 = v75;
                        v1 = v74 | 1;
                      }

                      else
                      {
                        v1 = v74;
                        v74 = v71;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_143C3C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                      }

                      v77 = _swiftEmptyArrayStorage[2];
                      v76 = _swiftEmptyArrayStorage[3];
                      if (v77 >= v76 >> 1)
                      {
                        sub_143C3C((v76 > 1), v77 + 1, 1);
                      }

                      _swiftEmptyArrayStorage[2] = v77 + 1;
                      v78 = &_swiftEmptyArrayStorage[2 * v77];
                      v78[4] = v74;
                      v78[5] = v73;
                    }

                    while (v1 != v2);
                  }

                  v79 = _swiftEmptyArrayStorage[2];
                  if (v79)
                  {
                    sub_76A7C0();
                    v1 = 40;
                    do
                    {
                      v80 = *(_swiftEmptyArrayStorage + v1);
                      sub_76A7A0();
                      sub_76A7D0();
                      sub_76A7E0();
                      sub_76A7B0();
                      v1 += 16;
                      --v79;
                    }

                    while (v79);
                  }

                  v81 = sub_4A70E4(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, 0.0);

                  v82 = sub_769210();
                  [v100 addAnimation:v81 forKey:v82];

                  v83 = *&v101[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_bottomRightGradientLayer];
                  v84 = v103 & 0xFFFFFFFFFFFFFF8;
                  if (v2)
                  {
                    v3 = _swiftEmptyArrayStorage;
                    v85 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v86 = sub_76A770();
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v85 >= *(v84 + 16))
                        {
                          goto LABEL_152;
                        }

                        v86 = *(v103 + 8 * v85 + 32);
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      if (v85)
                      {
                        v1 = v86;
                        v101 = v83;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_143C3C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v89 = _swiftEmptyArrayStorage[2];
                        v88 = _swiftEmptyArrayStorage[3];
                        v90 = v1;
                        if (v89 >= v88 >> 1)
                        {
                          sub_143C3C((v88 > 1), v89 + 1, 1);
                          v90 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v89 + 1;
                        v91 = &_swiftEmptyArrayStorage[2 * v89];
                        v91[4] = v85;
                        v91[5] = v90;
                        v84 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v87 == v2)
                        {
                          break;
                        }

                        v85 = v87;
                      }

                      else
                      {

                        ++v85;
                        if (v87 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v92 = _swiftEmptyArrayStorage[2];
                  if (v92)
                  {
                    sub_76A7C0();
                    v93 = 5;
                    do
                    {
                      v94 = _swiftEmptyArrayStorage[v93];
                      sub_76A7A0();
                      sub_76A7D0();
                      sub_76A7E0();
                      sub_76A7B0();
                      v93 += 2;
                      --v92;
                    }

                    while (v92);
                  }

                  v95 = sub_4A70E4(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + 0.0);

                  v96 = sub_769210();
                  [v83 addAnimation:v95 forKey:v96];

                  return;
                }

                v41 = 0;
                v42 = v30 + 32;
                while (1)
                {
                  if (v4)
                  {
                    v43 = sub_76A770();
                  }

                  else
                  {
                    if (v41 >= v3[2])
                    {
                      goto LABEL_147;
                    }

                    v43 = *(v42 + 8 * v41);
                  }

                  v44 = v43;
                  v45 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v41)
                  {

                    if (v45 == v2)
                    {
                      goto LABEL_71;
                    }

                    if (v4)
                    {
                      v46 = sub_76A770();
                    }

                    else
                    {
                      if (v45 >= v3[2])
                      {
LABEL_147:
                        __break(1u);
LABEL_148:
                        __break(1u);
LABEL_149:
                        __break(1u);
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        if (sub_76A860() < 4)
                        {
                          return;
                        }

                        goto LABEL_3;
                      }

                      v46 = *(v42 + 8 * v45);
                    }

                    v44 = v46;
                    v1 = v45 | 1;
                  }

                  else
                  {
                    v1 = v41 + 1;
                    v45 = v41;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_143C3C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v48 = _swiftEmptyArrayStorage[2];
                  v47 = _swiftEmptyArrayStorage[3];
                  if (v48 >= v47 >> 1)
                  {
                    sub_143C3C((v47 > 1), v48 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v48 + 1;
                  v49 = &_swiftEmptyArrayStorage[2 * v48];
                  v49[4] = v45;
                  v49[5] = v44;
                  v41 = v1;
                  v3 = v102;
                  if (v1 == v2)
                  {
                    goto LABEL_71;
                  }
                }
              }

LABEL_174:
              v2 = sub_76A860();
              goto LABEL_50;
            }

            swift_unknownObjectRelease();
            goto LABEL_40;
          }

LABEL_172:
          __break(1u);
        }

        __break(1u);
        goto LABEL_174;
      }

LABEL_167:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v1 = v7;
      }

      else
      {
        v1 = v29;
      }

      v97 = sub_76A860();
      if (v97 >= v12)
      {
        if (sub_76A860() >= v30)
        {
          goto LABEL_29;
        }

        goto LABEL_172;
      }

LABEL_181:
      __break(1u);
    }
  }
}

uint64_t sub_4A58A0(uint64_t a1)
{
  v5 = v1;
  v7 = *v5;
  v8 = *v5 >> 62;
  if (!v8)
  {
    result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
    if (result <= a1)
    {
      return result;
    }

LABEL_3:
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v7 < 0)
        {
          v2 = v7;
        }

        else
        {
          v2 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v3 = sub_76A860();
        if (sub_76A860() < 0)
        {
          goto LABEL_54;
        }

        if (v3 >= a1)
        {
          v13 = a1;
        }

        else
        {
          v13 = v3;
        }

        if (v3 < 0)
        {
          v13 = a1;
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v13;
        }

        else
        {
          v3 = 0;
        }

        v10 = sub_76A860();
      }

      else
      {
        v10 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (v10 >= a1)
        {
          v11 = a1;
        }

        else
        {
          v11 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v11;
        }

        else
        {
          v3 = 0;
        }
      }

      if (v10 >= v3)
      {
        if ((v7 & 0xC000000000000001) != 0 && v3)
        {
          sub_BE70(0, &qword_93E540);

          v14 = 0;
          do
          {
            v15 = v14 + 1;
            sub_76A750(v14);
            v14 = v15;
          }

          while (v3 != v15);
          if (!v8)
          {
LABEL_30:
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
            v2 = v7 + 32;
            v3 = (2 * v3) | 1;
            v8 = 0;
            if (v12)
            {
              goto LABEL_38;
            }

            result = *(v7 + 16);
            if (result < 0)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }
        }

        else
        {

          if (!v8)
          {
            goto LABEL_30;
          }
        }

        v7 = sub_76A870();
        v2 = v16;
        v8 = v17;
        v3 = v18;
        if (v12)
        {
          goto LABEL_38;
        }

        result = sub_76A860();
        if (result < 0)
        {
LABEL_37:
          sub_4A7E5C(0, a1, sub_10F864, &qword_93E540);
LABEL_38:
          v4 = *v5;
          if ((v3 & 1) == 0)
          {
            swift_unknownObjectRetain();
LABEL_40:
            sub_4A5FDC(v7, v2, v8, v3);
            v20 = v19;
            goto LABEL_47;
          }

          sub_76A970();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = _swiftEmptyArrayStorage;
          }

          v22 = v21[2];

          if (!__OFSUB__(v3 >> 1, v8))
          {
            if (v22 == (v3 >> 1) - v8)
            {
              v20 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v20)
              {
LABEL_48:
                sub_10A474(v20);
                result = swift_unknownObjectRelease();
                *v5 = v4;
                return result;
              }

              v20 = _swiftEmptyArrayStorage;
LABEL_47:
              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

LABEL_36:
        if (result < a1)
        {
          __break(1u);
          return result;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = sub_76A860();
  if (result > a1)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_4A5BFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_756CE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for RiverTodayCardBackgroundView()
{
  result = qword_956788;
  if (!qword_956788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4A5EF0()
{
  result = sub_75C100();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_4A5FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_BE70(0, &qword_93E540);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_BD88(&unk_93F5C0);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_4A60E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_BD88(&unk_93F5C0);
      v9 = swift_allocObject();
      v10 = j__malloc_size_0(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_4A61FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_BD88(&qword_941A38);
      v8 = swift_allocObject();
      v9 = j__malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_4A62BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_BD88(&qword_941AE8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_BD88(&qword_941AE0);
      v7 = swift_allocObject();
      v8 = j__malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_4A63D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_BD88(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size_0(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_4A6574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_BD88(&qword_941B88);
      v8 = swift_allocObject();
      v9 = j__malloc_size_0(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      *(v8 + 2) = v5;
      *(v8 + 3) = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_4A6644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_759210();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_76A860();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_76A860();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_4A6744(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_76A860();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_76A860();
  }

  else
  {
    v9 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10F864(result, 1);

  return sub_4A6644(v4, v2, 0);
}

unint64_t sub_4A681C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_BD88(&qword_93F348);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

id sub_4A6934(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(CAGradientLayer) init];
  sub_BD88(&unk_93F5C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6C0;
  sub_BE70(0, &qword_945820);
  *(v9 + 32) = sub_76A190(0.25);
  *(v9 + 40) = sub_76A190(0.75);
  isa = sub_769450().super.isa;

  [v8 setLocations:isa];

  [v8 setStartPoint:{a1, a2}];
  [v8 setEndPoint:{a3, a4}];
  sub_BD88(&qword_941C10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77E280;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 clearColor];
  v18 = [v17 CGColor];

  *(v11 + 88) = v16;
  *(v11 + 64) = v18;
  v19 = sub_769450().super.isa;

  [v8 setColors:v19];

  return v8;
}

char *sub_4A6B60()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_BD88(&unk_93F5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_78D690;
  v2 = objc_opt_self();
  *(inited + 32) = [v2 blackColor];
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *(inited + 40) = v4;
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  *(inited + 48) = v6;
  v35 = _swiftEmptyArrayStorage;
  result = sub_143958(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v9 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = sub_76A770();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
    {
      __break(1u);
      return result;
    }

    v10 = *(inited + 32);
  }

  v11 = v10;
  v12 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  v34 = v13;

  *&v33 = v12;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_143958((v15 > 1), v16 + 1, 1);
    v8 = v35;
  }

  v8[2] = v16 + 1;
  sub_13310(&v33, &v8[4 * v16 + 4]);
  if (v9)
  {
    v17 = sub_76A770();
  }

  else
  {
    v17 = *(inited + 40);
  }

  v18 = v17;
  v19 = [v17 CGColor];
  v34 = v14;

  *&v33 = v19;
  v35 = v8;
  v21 = v8[2];
  v20 = v8[3];
  if (v21 >= v20 >> 1)
  {
    sub_143958((v20 > 1), v21 + 1, 1);
    v8 = v35;
  }

  v8[2] = v21 + 1;
  sub_13310(&v33, &v8[4 * v21 + 4]);
  if (v9)
  {
    v22 = sub_76A770();
  }

  else
  {
    v22 = *(inited + 48);
  }

  v23 = v22;
  v24 = [v22 CGColor];
  v34 = v14;

  *&v33 = v24;
  v35 = v8;
  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    sub_143958((v25 > 1), v26 + 1, 1);
    v8 = v35;
  }

  v8[2] = v26 + 1;
  sub_13310(&v33, &v8[4 * v26 + 4]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = sub_769450().super.isa;

  [v0 setColors:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  sub_BE70(0, &qword_945820);
  *(v28 + 32) = sub_76A1A0(0);
  *(v28 + 40) = sub_76A190(0.4);
  *(v28 + 48) = sub_76A190(1.0);
  v29 = sub_769450().super.isa;

  [v0 setLocations:v29];

  [v0 setStartPoint:{0.0, 1.0}];
  [v0 setEndPoint:{1.0, 0.0}];
  v30 = v0;
  LODWORD(v31) = 1045220557;
  [v30 setOpacity:v31];
  [v30 setCompositingFilter:kCAFilterPlusD];

  return v30;
}

uint64_t sub_4A6FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_BE70(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_76A860();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_76A860();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_4A70E4(unint64_t a1, double a2, double a3, double a4)
{
  v7 = a1;
  v64 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v9 = &v71;
    v68 = v7;
    if (i)
    {
      v67 = (v7 & 0xC000000000000001);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v10 = *(v7 + 32);
      }

      v72[0] = v10;
      v70 = _swiftEmptyArrayStorage;
      if (!v10)
      {
        v63 = _swiftEmptyArrayStorage;
LABEL_12:
        sub_4A79C4(v9 + 32);
        v13 = 0;
        v70 = _swiftEmptyArrayStorage;
        v66 = v7 & 0xFFFFFFFFFFFFFF8;
        v65 = i;
        while (1)
        {
          if (v67)
          {
            v14 = sub_76A770();
          }

          else
          {
            if (v13 >= *(v66 + 16))
            {
              goto LABEL_66;
            }

            v14 = *(v7 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          sub_BD88(&qword_941A08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_77E280;
          sub_BD88(&unk_93F5C0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_77B6C0;
          *(v18 + 32) = [v15 CGColor];
          v19 = [v15 colorWithAlphaComponent:0.0];
          v20 = [v19 CGColor];

          *(v18 + 40) = v20;
          *(inited + 32) = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_77B6C0;
          *(v21 + 32) = [v15 CGColor];
          v22 = [v15 colorWithAlphaComponent:0.0];
          v23 = [v22 CGColor];

          v7 = v68;
          *(v21 + 40) = v23;
          *(inited + 40) = v21;

          sub_10A370(inited);
          ++v13;
          if (v16 == v65)
          {
            i = _swiftEmptyArrayStorage;
            v12 = v63;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v11 = v10;
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_9:
        sub_769500();
        v63 = v70;
        goto LABEL_12;
      }

LABEL_74:
      sub_7694C0();
      goto LABEL_9;
    }

    v72[0] = 0;
    sub_4A79C4(v72);
    v12 = _swiftEmptyArrayStorage;
    i = _swiftEmptyArrayStorage;
LABEL_20:
    if (v12 >> 62)
    {
      v62 = v12;
      v9 = sub_76A860();
      v12 = v62;
    }

    else
    {
      v9 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    if (v9)
    {
      v24 = v12;
      v70 = _swiftEmptyArrayStorage;
      sub_143BFC(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        goto LABEL_73;
      }

      v67 = _swiftEmptyArrayStorage;
      v25 = 0;
      v26 = v24;
      v27 = v24 & 0xC000000000000001;
      v28 = v24;
      do
      {
        if (v27)
        {
          v29 = sub_76A770();
        }

        else
        {
          v29 = *(v26 + 8 * v25 + 32);
        }

        v30 = v29;
        sub_BD88(&unk_93F5C0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_77B6C0;
        *(v31 + 32) = [v30 CGColor];
        v32 = [v30 colorWithAlphaComponent:0.0];
        v33 = [v32 CGColor];

        *(v31 + 40) = v33;
        v35 = _swiftEmptyArrayStorage[2];
        v34 = _swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_143BFC((v34 > 1), v35 + 1, 1);
        }

        ++v25;
        _swiftEmptyArrayStorage[2] = v35 + 1;
        _swiftEmptyArrayStorage[v35 + 4] = v31;
        v26 = v28;
      }

      while (v9 != v25);

      v7 = v68;
    }

    else
    {
    }

    sub_10A370(_swiftEmptyArrayStorage);
    v36 = v64 ? sub_76A860() : *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    a3 = a2 + a3;
    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
      break;
    }

    v69 = v36;
    v38 = sub_7B6D8(0, 1, 1, _swiftEmptyArrayStorage);
    for (j = 0; j != v37; ++j)
    {
      if (j)
      {
        v40 = a3 * (j >> 1) + a2;
      }

      else
      {
        v40 = a3 * (j >> 1);
      }

      v42 = *(v38 + 2);
      v41 = *(v38 + 3);
      v7 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v38 = sub_7B6D8((v41 > 1), v42 + 1, 1, v38);
      }

      *(v38 + 2) = v7;
      *&v38[8 * v42 + 32] = v40;
    }

LABEL_47:
    v70 = _swiftEmptyArrayStorage;
    sub_143BDC(0, v7, 0);
    v43 = *(v38 + 2);
    if (v43)
    {
      a2 = *(v38 + 4);
      v45 = _swiftEmptyArrayStorage[2];
      v44 = _swiftEmptyArrayStorage[3];
      if (v45 >= v44 >> 1)
      {
        sub_143BDC((v44 > 1), v45 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v45 + 1;
      *&_swiftEmptyArrayStorage[v45 + 4] = a2;
      v46 = v7 - 1;
      if (v7 == 1)
      {
LABEL_51:

        v47 = v69;
        goto LABEL_52;
      }

      v51 = 0;
      v52 = v43 - 1;
      while (v52 != v51)
      {
        if ((v51 + 1) >= *(v38 + 2))
        {
          goto LABEL_68;
        }

        a2 = *&v38[8 * v51 + 40];
        v70 = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[3];
        v7 = v45 + v51 + 2;
        if (v51 + 1 + v45 >= v53 >> 1)
        {
          sub_143BDC((v53 > 1), v45 + v51 + 2, 1);
        }

        _swiftEmptyArrayStorage[2] = v7;
        *&_swiftEmptyArrayStorage[v45 + 5 + v51++] = a2 + a4;
        if (v46 == v51)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    v69 = v36;
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v61 = v36;

  v47 = v61;
LABEL_52:
  v48 = a3 * v47 + a4;
  v49 = _swiftEmptyArrayStorage[2];
  if (v49)
  {
    sub_76A7C0();
    v50 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:*&_swiftEmptyArrayStorage[v50] / v48];
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      ++v50;
      --v49;
    }

    while (v49);
  }

  v54 = sub_769210();
  v55 = [objc_opt_self() animationWithKeyPath:v54];

  sub_1408FC(_swiftEmptyArrayStorage);

  isa = sub_769450().super.isa;

  [v55 setValues:isa];

  sub_BE70(0, &qword_945820);
  v57 = sub_769450().super.isa;

  [v55 setKeyTimes:v57];

  v58 = v55;
  [v58 setDuration:v48];
  LODWORD(v59) = 2139095039;
  [v58 setRepeatCount:v59];
  [v58 setCalculationMode:kCAAnimationLinear];
  [v58 setRemovedOnCompletion:0];

  return v58;
}

uint64_t sub_4A79C4(uint64_t a1)
{
  v2 = sub_BD88(&unk_944E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_4A7A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_BE70(0, &qword_947490);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_76A860();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_76A860();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_4A7B58(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_76A860();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_76A860();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_10F864(result, 1);

  return sub_4A7A2C(v6, v5, 1, v3);
}

unint64_t sub_4A7C44(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  sub_BD88(&qword_941A68);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_4A7D5C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_4A7E5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_76A860();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_76A860();
  }

  else
  {
    v13 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_4A6FDC(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_4A7F50(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_4A7FF8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating) = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_gradientBackingLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + v3) = v4;
  sub_76A840();
  __break(1u);
}

uint64_t sub_4A80EC(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return type metadata accessor for TodayCardArcadeLockupOverlayView();
      }

      if (a1 != 7)
      {
        goto LABEL_17;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 4)
    {
      return type metadata accessor for TodayCardActionOverlayView();
    }

    else
    {
      return type metadata accessor for TodayCardThreeLineOverlayView();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return type metadata accessor for TodayCardMarketingLockupOverlayView();
        }

LABEL_17:
        result = sub_76A840();
        __break(1u);
        return result;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 2)
    {
      return type metadata accessor for TodayCardChinLockupListView(0);
    }

    else
    {
      return type metadata accessor for TodayCardParagraphOverlayView();
    }
  }
}

id sub_4A8220()
{
  swift_getWitnessTable();
  v0 = LinkPresentationProvider.deinit();

  return v0;
}

uint64_t sub_4A831C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a6;
  v26 = a5;
  v24 = a3;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_76A480();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  sub_134D8(a1, v28);
  sub_BD88(&unk_944DA0);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    (*(a9 + 128))(v20, a2, v24, v25, v26, v27, a7, a9);
    return (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v22(v16, 1, 1, AssociatedTypeWitness);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_4A8580(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_4A85FC(a1, a2, a3 & 1, a4, v8, WitnessTable);
}

uint64_t sub_4A85FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  sub_BD88(&qword_956798);
  result = swift_dynamicCast();
  if (result)
  {
    (*(a6 + 136))(v10, a3 & 1, a4, a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_4A86EC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    if (a3)
    {
      swift_unknownObjectRetain();
      sub_1133D8(v5);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t sub_4A87A4()
{
  swift_getObjectType();

  return swift_dynamicCastClass();
}

uint64_t sub_4A8888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_134D8(a1, v17);
  sub_BD88(&unk_944DA0);
  a9(0);
  result = swift_dynamicCast();
  if (result)
  {
    a10(v16, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_4A8954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0);
  sub_7600A0();
  if (swift_dynamicCast())
  {
    v6[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_sizeCategory] = a5;
    v9 = a5;
    [v6 setNeedsLayout];
    sub_4E0248(a2);
    sub_3E5798(v10);
    v11 = sub_765AE0();
    [v6 setBackgroundColor:v11];

    v12 = [v6 traitCollection];
    if (v9 != 4)
    {
      sub_765650();
      sub_765650();
    }

    [v12 layoutDirection];
    sub_769BB0();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v6 setLayoutMargins:{v14, v16, v18, 15.0}];
    v19 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider26TodayCardActionOverlayView_label];
    sub_760090();
    sub_764C60();
    v21 = v20;

    if (v21)
    {
      v22 = sub_769210();
    }

    else
    {
      v22 = 0;
    }

    [v19 setText:v22];
  }
}

uint64_t sub_4A8B74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v9 = sub_765920();
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_9497A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_765B10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0);
  sub_7618E0();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v51 = v9;
  v19 = a4;
  v54 = aBlock[6];
  sub_7618C0();
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    (*(v15 + 16))(v17, a3, v14);
    if (v20(v13, 1, v14) != 1)
    {
      sub_4A982C(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  v21 = v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v21 == 7)
    {
      goto LABEL_11;
    }
  }

  else if (v21 != 7)
  {
    switch(a4)
    {
      case 6u:
        if (v21 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 5u:
        if (v21 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 4u:
        if (v21 == 4)
        {
          goto LABEL_11;
        }

        break;
      default:
        if ((v21 - 7) <= 0xFFFFFFFC && v21 == a4)
        {
          goto LABEL_11;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_11:
  v52 = v15;
  v53 = v14;
  v22 = sub_765AE0();
  [v5 setBackgroundColor:v22];

  v23 = [v5 traitCollection];
  if (v19 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v23 layoutDirection];
  sub_769BB0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v5 setLayoutMargins:{v25, v27, v29, v31}];
  sub_7618D0();
  v50 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label];
  v32 = sub_7658D0();
  v33 = [v5 traitCollection];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = v33;
  *(v36 + 32) = v34;
  *(v36 + 40) = 1;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_119AC;
  *(v37 + 24) = v36;
  aBlock[4] = sub_2636C;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_8933D8;
  v38 = _Block_copy(aBlock);
  v39 = v33;
  v40 = v34;

  [v32 enumerateAttributesInRange:0 options:v35 usingBlock:{0x100000, v38}];

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    v41 = v50;
    [v50 setAttributedText:v40];

    v42 = v55;
    sub_765930();
    v43 = v56;
    v44 = v51;
    v45 = (*(v56 + 88))(v42, v51);
    if (v45 == enum case for Paragraph.Alignment.left(_:))
    {
      v46 = 0;
      v48 = v52;
      v47 = v53;
    }

    else
    {
      v48 = v52;
      v47 = v53;
      if (v45 == enum case for Paragraph.Alignment.center(_:))
      {
        v46 = 1;
      }

      else if (v45 == enum case for Paragraph.Alignment.right(_:))
      {
        v46 = 2;
      }

      else if (v45 == enum case for Paragraph.Alignment.justified(_:))
      {
        v46 = 3;
      }

      else if (v45 == enum case for Paragraph.Alignment.localized(_:))
      {
        v46 = 4;
      }

      else
      {
        (*(v43 + 8))(v42, v44);
        v46 = 0;
      }
    }

    [v41 setTextAlignment:v46];
    v49 = sub_765AF0();
    [v41 setTextColor:v49];

    return (*(v48 + 8))(v17, v47);
  }

  return result;
}

uint64_t sub_4A9284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v11 = sub_765B10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v32);
  sub_BD88(&unk_944DA0);
  sub_762A80();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v16 = v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v16 != 7)
  {
    switch(a5)
    {
      case 6u:
        if (v16 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5u:
        if (v16 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4u:
        if (v16 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v16 - 7) <= 0xFFFFFFFC && v16 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v17 = [v5 traitCollection];
  if (a5 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v17 layoutDirection];
  sub_769BB0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_4C0AA4(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v14, enum case for TodayCard.Style.white(_:), v11);
  sub_5FC0C();
  sub_769430();
  sub_769430();
  if (v32[0] == v31[1] && v32[1] == v31[2])
  {
    v27 = 1;
  }

  else if (sub_76A950())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v14, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = sub_762A70();
  sub_579E1C(v29, a2);

  sub_32BB58();
}

uint64_t sub_4A9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0);
  sub_762A80();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v9 = v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v9 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v9 != 7)
  {
    switch(a5)
    {
      case 6u:
        if (v9 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5u:
        if (v9 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4u:
        if (v9 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v9 - 7) <= 0xFFFFFFFC && v9 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v10 = [v5 traitCollection];
  if (a5 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v10 layoutDirection];
  sub_769BB0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v5 setLayoutMargins:{v12, v14, v16, v18}];
  v19 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v20 = sub_762A70();
  sub_579E1C(v20, a2);
}

uint64_t sub_4A982C(uint64_t a1)
{
  v2 = sub_BD88(&qword_9497A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4A9894()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_4A98EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_4A9908(double a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientEndY;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientEndY] = a1;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView];
  v4 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() endPoint];
  v6 = v5;

  v7 = *&v1[v2];
  v8 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  v9 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  return [v1 setNeedsDisplay];
}

id sub_4A9A6C(uint64_t a1, uint64_t a2, double a3)
{
  v28 = a2;
  v6 = sub_7593D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v10);
  v13 = &v25[-v12];
  v14 = *(v7 + 16);
  v27 = a1;
  v14(&v25[-v12], a1, v6, v11);
  v15 = (*(v7 + 88))(v13, v6);
  v26 = enum case for CornerStyle.continuous(_:);
  if (v15 == enum case for CornerStyle.continuous(_:))
  {
    v16 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setContinuousCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setContinuousCornerRadius:a3];
  }

  else
  {
    v18 = v15;
    v19 = enum case for CornerStyle.arc(_:);
    v16 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setCornerRadius:a3];
    if (v18 != v19)
    {
      (*(v7 + 8))(v13, v6);
    }
  }

  v20 = [v16 layer];
  [v20 setMaskedCorners:sub_7697E0()];

  v21 = [v17 layer];
  [v21 setMaskedCorners:sub_7697E0()];

  v22 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurView);
  (*(v7 + 104))(v9, v26, v6);
  v23 = sub_7593C0();
  (*(v7 + 8))(v9, v6);
  return [v22 _setCornerRadius:v23 & 1 continuous:sub_7697E0() maskedCorners:a3];
}

void *sub_4A9D50(char a1)
{
  v1 = off_893490[a1];
  v2 = v1[2];
  if (v2)
  {
    sub_76A7C0();
    v3 = objc_opt_self();
    v4 = 4;
    do
    {
      v5 = *&v1[v4];
      v6 = [v3 blackColor];
      v7 = [v6 colorWithAlphaComponent:v5];

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      ++v4;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_4A9E80(void *a1, char a2)
{
  v2 = off_8934A8[a2];
  v3 = v2[2];
  if (v3)
  {
    sub_76A7C0();
    v5 = 4;
    do
    {
      v6 = [a1 colorWithAlphaComponent:*&v2[v5]];
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      ++v5;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_4A9F74(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = &unk_87D8D0;
  if (a2 != 1)
  {
    v3 = &_swiftEmptyArrayStorage[2];
  }

  v4 = *v3;
  if (*v3)
  {
    sub_76A7C0();
    if (v2 == 1)
    {
      v6 = &unk_87D8E0;
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage[4];
    }

    do
    {
      v7 = *v6++;
      v8 = [a1 colorWithAlphaComponent:v7];
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

void sub_4AA084()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView);
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_style);
    v5 = v1;
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = sub_4A9F74(v5, v3);

    sub_4AC204();
    [v2 setHidden:0];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView);

    [v4 setHidden:1];
  }
}

void *sub_4AA18C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_style];
  if (!v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_style])
  {
    v4 = objc_opt_self();
    if (v2 == &dword_0 + 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    if (v2 == &dword_0 + 2)
    {
LABEL_4:
      v5 = [v4 blackColor];
LABEL_9:
      v6 = v5;
      goto LABEL_10;
    }

LABEL_8:
    v5 = [v4 whiteColor];
    goto LABEL_9;
  }

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_todayCardStyleColor];
LABEL_10:
  v7 = v6;
  v8 = sub_4A9E80(v7, v3);

  return v8;
}

id sub_4AA2A4()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  sub_75D650();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_7697A0();
  v11 = sub_705B8(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] setFrame:?];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] setFrame:{v11, v13, v15, v17}];
  sub_75D650();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_7697A0();
  v28 = sub_705B8(v19, v21, v23, v25, v26, v27);
  v29 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurView];
  [v29 setFrame:v28];
  v30 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView];
  [v29 bounds];
  return [v30 setFrame:?];
}

unint64_t sub_4AA600()
{
  result = qword_956838;
  if (!qword_956838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956838);
  }

  return result;
}

char *sub_4AA654(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_todayCardStyleColor;
  *&v1[v4] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurUserInterfaceStyle] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor] = 0;
  v5 = objc_opt_self();
  if (!a1)
  {
LABEL_5:
    v5 = [v5 effectWithBlurRadius:30.0];
    if (!v5)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
LABEL_7:
    v5 = [v5 effectWithStyle:6];
    goto LABEL_8;
  }

  v5 = [v5 effectWithBlurRadius:20.0];
  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v6 = v5;
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurView] = v7;
  v8 = type metadata accessor for GradientView();
  v9 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView] = v9;
  v10 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] = v10;
  v11 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] = v11;
  v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_style] = a1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientEndY] = 0x3FF0000000000000;
  v53.receiver = v1;
  v53.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
  v20 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView];
  *&v20[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = sub_4A9D50(a1);

  sub_4AC204();

  v21 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY];
  v22 = *&v16[v19];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v21}];

  v24 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY];
  v25 = *&v16[v19];
  v26 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v24}];

  v27 = a1;
  v28 = off_8934C0[a1];
  v29 = *&v16[v19];
  sub_4AC060(v28);

  v30 = [*&v16[v17] layer];
  v31 = [*&v16[v19] layer];
  objc_opt_self();
  [v30 setMask:swift_dynamicCastObjCClassUnconditional()];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
  v33 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView];
  *(v33 + OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors) = sub_4AA18C();

  sub_4AC204();
  v34 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY;
  v35 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY];
  v36 = *&v16[v32];
  v37 = [v36 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v35}];

  v38 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientEndY;
  v39 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientEndY];
  v40 = *&v16[v32];
  v41 = [v40 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v39}];

  v42 = off_8934D8[v27];
  v43 = *&v16[v32];
  sub_4AC060(v42);

  [v16 addSubview:*&v16[v32]];
  sub_4AA084();
  v44 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView;
  v45 = *&v16[v34];
  v46 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView];
  v47 = [v46 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v45}];

  v48 = *&v16[v38];
  v49 = *&v16[v44];
  v50 = [v49 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v48}];

  v51 = *&v16[v44];
  sub_4AC060(v42);

  [v16 addSubview:*&v16[v44]];
  return v16;
}

void sub_4AACF4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_todayCardStyleColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurUserInterfaceStyle) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_4AAE0C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D960 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F418);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_766CA0();
  *a3 = &protocol witness table for StaticDimension;
  sub_B1B4(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_B1B4(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_766CB0();
  return (*(v8 + 8))(v10, v7);
}

char *sub_4AAFF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider22SearchTransparencyView_linkedLabel;
  if (qword_93D960 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v10, qword_99F418);
  (*(v11 + 16))(v13, v15, v10);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v14] = sub_4ECF40(v13, 0, 0);
  v17 = type metadata accessor for SearchTransparencyView();
  v26.receiver = v5;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider22SearchTransparencyView_linkedLabel;
  v20 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider22SearchTransparencyView_linkedLabel];
  v21 = v18;
  [v21 addSubview:v20];
  [v21 setLayoutMargins:{0.0, 32.0, 0.0, 32.0}];
  sub_396E8();
  v22 = sub_76A070();
  [v21 setBackgroundColor:v22];

  [v21 _setCornerRadius:10.0];
  v23 = *&v18[v19];
  v24 = sub_769FF0();
  [v23 setTextColor:v24];

  [*&v18[v19] setTextAlignment:1];
  return v21;
}

id sub_4AB540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTransparencyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4AB5A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 48;
    while (v6 < *(v3 + 16))
    {
      swift_unknownObjectRetain();
      v8 = sub_75C230();
      v9 = sub_75C230();
      result = swift_unknownObjectRelease();
      if (v8 == v9)
      {

        swift_beginAccess();
        v11 = sub_362278(v6);
        v13 = v12;
        swift_endAccess();
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 136);
        swift_unknownObjectRetain();
        v15(ObjectType, v13);
        swift_unknownObjectRelease();
        return v11;
      }

      ++v6;
      v7 += 24;
      if (v4 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_4A80EC(a1);
    return (*(v10 + 8))();
  }

  return result;
}

uint64_t sub_4AB724(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    if ((a4 & 1) == 0)
    {
      v7 = result;
      result = swift_beginAccess();
      v8 = *(v4 + 24);
      v9 = *(v8 + 2) + 1;
      if (v9 < *(v4 + 16))
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_7B4AC(0, v9, 1, v8);
          *(v4 + 24) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_7B4AC((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v8 = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[24 * v11];
        *(v14 + 4) = v7;
        *(v14 + 5) = a2;
        *(v14 + 6) = a3;
        *(v4 + 24) = v8;
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_4AB838(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = _swiftEmptyArrayStorage;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  return v1;
}

uint64_t sub_4ABA1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_4ABCD0(void *a1, uint64_t a2)
{
  v5 = sub_BD88(&qword_9569B8);
  __chkstk_darwin(v5 - 8);
  v11 = a1;
  sub_127C1C();
  a1;
  sub_BD88(&qword_9569C0);
  if (swift_dynamicCast())
  {
    sub_10914(v9, v12);
    v6 = v13;
    v7 = v14;
    sub_B170(v12, v13);
    (*(v7 + 8))(a2, *(v2 + 16), v6, v7);
    sub_769AF0();
    return sub_BEB8(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_4ABE18(v9);
  }
}

uint64_t sub_4ABE18(uint64_t a1)
{
  v2 = sub_BD88(&qword_9569C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_4ABE80()
{
  swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_kind] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GradientView();
  v1 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4AC204();
  sub_BD88(&qword_9477F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77B6D0;
  *(v2 + 32) = sub_7677C0();
  *(v2 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();

  swift_unknownObjectRelease();

  return v1;
}

void sub_4AC060(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if (v6)
    {
      v10 = _swiftEmptyArrayStorage;
      sub_76A7C0();
      v7 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v7)];
        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    sub_BE70(0, &qword_945820);
    isa = sub_769450().super.isa;

    [v5 setLocations:{isa, isa, v10}];
  }

  else
  {
    [v4 setLocations:{0, 0, v10}];
  }
}

char *sub_4AC204()
{
  v1 = v0;
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  isa = *&v0[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors];
  if (!isa)
  {
    goto LABEL_15;
  }

  v15 = v3;
  if (isa >> 62)
  {
    v5 = sub_76A860();
  }

  else
  {
    v5 = *(&dword_10 + (isa & 0xFFFFFFFFFFFFFF8));
  }

  if (!v5)
  {
LABEL_14:
    isa = sub_769450().super.isa;

    v3 = v15;
LABEL_15:
    [v3 setColors:{isa, v15, v16}];

    return [v1 setNeedsDisplay];
  }

  v18 = _swiftEmptyArrayStorage;

  result = sub_143958(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v18;
    do
    {
      if ((isa & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        v9 = *(isa + v7 + 4);
      }

      v10 = v9;
      v11 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v17 = v12;

      *&v16 = v11;
      v18 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_143958((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      ++v7;
      v8[2] = v14 + 1;
      sub_13310(&v16, &v8[4 * v14 + 4]);
    }

    while (v5 != v7);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_4AC434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_4AC4B0()
{
  result = qword_956A08;
  if (!qword_956A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956A08);
  }

  return result;
}

uint64_t sub_4AC528()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99DE78);
  sub_BE38(v0, qword_99DE78);
  return sub_768800();
}

uint64_t sub_4AC5A0()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99DE90);
  sub_BE38(v0, qword_99DE90);
  return sub_768800();
}

uint64_t sub_4AC618()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99DEA8);
  sub_BE38(v0, qword_99DEA8);
  return sub_768800();
}

uint64_t sub_4AC690()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99DEC0);
  sub_BE38(v0, qword_99DEC0);
  return sub_768800();
}

uint64_t sub_4AC708()
{
  v0 = sub_7572E0();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_945000);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x80000000007E3980;
  if (qword_93D1F0 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v4, qword_99DE78);
  v63 = sub_7689F0();
  v9 = sub_7689C0();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  sub_7572D0();
  v15 = sub_7572B0();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  sub_76A6E0();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x80000000007E39F0;
  v20 = v3;
  if (qword_93D1F8 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v4, qword_99DE90);
  v22 = sub_7689C0();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x80000000007E39D0;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  sub_7572D0();
  v28 = sub_7572B0();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  sub_76A6E0();
  v62(v7, v4);

  if (qword_93D200 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v4, qword_99DEA8);
  v32 = sub_7689C0();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x80000000007E3A30;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x80000000007E3A50;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  sub_7572D0();
  v36 = sub_7572B0();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  sub_76A6E0();
  v62(v7, v4);

  v57 = v20;
  if (qword_93D208 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v4, qword_99DEC0);
  v40 = sub_7689C0();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x80000000007E3AC0;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x80000000007E3AE0;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  sub_7572D0();
  v45 = sub_7572B0();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  sub_76A6E0();
  v62(v7, v4);

  sub_BD88(&unk_93F5C0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_77D9F0;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_77FA60;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  sub_7572D0();
  v52 = sub_7572B0();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_4ACF7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4AD068(void *a1, uint64_t a2)
{
  v4 = ASKBuildTypeGetCurrent();
  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
    v11 = sub_769240();
    v13 = v12;
    if (v11 != sub_769240() || v13 != v14)
    {
      v16 = sub_76A950();

      if (v16)
      {
        goto LABEL_6;
      }

      v17 = sub_769240();
      v19 = v18;
      if (v17 == sub_769240() && v19 == v20)
      {
      }

      else
      {
        v24 = sub_76A950();

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_7689F0();
      sub_7689E0();
      if (qword_93E0D8 != -1)
      {
        swift_once();
      }

      v25 = sub_BD88(&unk_945000);
      sub_BE38(v25, qword_9A07A8);
      sub_7686D0();

      if (v27 != 2 && (v27 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v22 = 0;
      return v22 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  sub_7689F0();
  sub_7689C0();
  if (*a1 != -1)
  {
    swift_once();
  }

  v21 = sub_BD88(&unk_945000);
  sub_BE38(v21, a2);
  sub_7686D0();

  v22 = v26;
  return v22 & 1;
}

unint64_t sub_4AD340()
{
  result = qword_9410F8;
  if (!qword_9410F8)
  {
    type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9410F8);
  }

  return result;
}

double sub_4AD398()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  v4 = sub_75DA30();
  sub_5D539C(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_4AD4AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &v4[*a3];
  *v7 = a1;
  *(v7 + 1) = a2;

  v8 = *&v4[*a4];
  if (a2)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText:v9];

  v10 = sub_7692D0();

  [v8 setHidden:v10 & 1];

  return [v4 setNeedsLayout];
}

id sub_4AD59C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueText];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueText + 8])
  {
    if (!v4)
    {
      type metadata accessor for FadeableDynamicTypeLabel(0);
      v5 = sub_75BB00();
      sub_4B1514(v5);

      v6 = *&v0[v3];
      if (v6)
      {
        [v6 setLineBreakMode:2];
      }
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeFromSuperview];
      v7 = *&v0[v3];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v3] = 0;

    [v0 setNeedsLayout];
  }

  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (v8)
  {
    if (*(v2 + 1))
    {
      v9 = v8;

      v10 = sub_769210();
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    [v9 setText:v10];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_4AD6F8(uint64_t a1)
{
  v3 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_action;
  swift_beginAccess();
  sub_13EA74(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_tapGestureRecognizer);
  sub_1ED18(v1 + v6, v5, &qword_94EC40);
  v8 = sub_BD88(&unk_950960);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  v10 = v7;
  sub_10A2C(v5, &qword_94EC40);
  [v10 setEnabled:v9];

  return sub_10A2C(a1, &qword_94EC40);
}

uint64_t sub_4AD86C()
{
  v58 = sub_7601A0();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v44[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = sub_765790();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v57 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_760190();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v55 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_75B9D0();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_75F070();
  sub_161DC(v11, qword_99DED8);
  v49 = sub_BE38(v11, qword_99DED8);
  if (qword_93D668 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99EB30);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v16 = v14 + 16;
  v15(v10, v13, v12);
  v17 = v8[13];
  v18 = enum case for FontSource.useCase(_:);
  v68 = v8 + 13;
  v65 = v17;
  v17(v10);
  v19 = sub_766CA0();
  v86[3] = v19;
  v86[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v86);
  v84 = v7;
  v85 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v83);
  v21 = v8[2];
  v69 = v8 + 2;
  v67 = v21;
  v21(v20, v10, v7);
  sub_766CB0();
  v22 = v8[1];
  v66 = v8 + 1;
  v63 = v22;
  v22(v10, v7);
  if (qword_93D660 != -1)
  {
    swift_once();
  }

  v60 = sub_BE38(v12, qword_99EB18);
  v15(v10, v60, v12);
  v45 = v18;
  v65(v10, v18, v7);
  v84 = v19;
  v85 = &protocol witness table for StaticDimension;
  sub_B1B4(v83);
  v23 = v16;
  v24 = v15;
  v81 = v7;
  v82 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v80);
  v26 = v67;
  v67(v25, v10, v7);
  sub_766CB0();
  v27 = v63;
  v63(v10, v7);
  v64 = v12;
  v61 = v23;
  v62 = v24;
  v24(v10, v60, v12);
  v28 = v45;
  v29 = v65;
  v65(v10, v45, v7);
  v81 = v19;
  v82 = &protocol witness table for StaticDimension;
  sub_B1B4(v80);
  v78 = v7;
  v79 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v77);
  v26(v30, v10, v7);
  sub_766CB0();
  v27(v10, v7);
  v31 = v28;
  v32 = v19;
  v33 = v29;
  if (qword_93D648 != -1)
  {
    swift_once();
  }

  v34 = v64;
  v46 = sub_BE38(v64, qword_99EAD0);
  v35 = v62;
  v62(v10, v46, v34);
  v33(v10, v28, v7);
  v78 = v32;
  v79 = &protocol witness table for StaticDimension;
  sub_B1B4(v77);
  v36 = v33;
  v60 = v32;
  v75 = v7;
  v76 = &protocol witness table for FontSource;
  v37 = sub_B1B4(v74);
  v67(v37, v10, v7);
  sub_766CB0();
  v63(v10, v7);
  v38 = v46;
  v35(v10, v46, v64);
  v36(v10, v28, v7);
  v75 = v60;
  v76 = &protocol witness table for StaticDimension;
  sub_B1B4(v74);
  v72 = v7;
  v73 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v71);
  v40 = v67;
  v67(v39, v10, v7);
  sub_766CB0();
  v41 = v63;
  v63(v10, v7);
  v62(v10, v38, v64);
  v65(v10, v31, v7);
  v72 = v60;
  v73 = &protocol witness table for StaticDimension;
  sub_B1B4(v71);
  v70[3] = v7;
  v70[4] = &protocol witness table for FontSource;
  v42 = sub_B1B4(v70);
  v40(v42, v10, v7);
  sub_766CB0();
  v41(v10, v7);
  (*(v47 + 104))(v52, enum case for BadgeViewSpacing.standard(_:), v48);
  (*(v50 + 104))(v55, enum case for BadgeCaptionCappingType.none(_:), v51);
  (*(v53 + 104))(v57, enum case for BadgeType.chartPosition(_:), v54);
  (*(v56 + 104))(v59, enum case for BadgeValueViewAlignment.baseline(_:), v58);
  return sub_75F000();
}

char *sub_4AE1B4(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_leadingValue;
  v13 = enum case for BadgeLeadingValue.infer(_:);
  v14 = sub_75C430();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_caption];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView] = 0;
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_heading];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueText];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_isTruncatable] = 1;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionCappingType;
  v19 = enum case for BadgeCaptionCappingType.none(_:);
  v20 = sub_760190();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_requiresRemainingWidth] = 0;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueViewAlignment;
  v22 = enum case for BadgeValueViewAlignment.baseline(_:);
  v23 = sub_7601A0();
  (*(*(v23 - 8) + 104))(&v4[v21], v22, v23);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_spacing;
  v25 = enum case for BadgeViewSpacing.standard(_:);
  v26 = sub_75B9D0();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_action;
  v28 = sub_BD88(&unk_950960);
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgeType;
  v30 = enum case for BadgeType.custom(_:);
  v31 = sub_765790();
  (*(*(v31 - 8) + 104))(&v4[v29], v30, v31);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView] = 0;
  v32 = &v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgePositionInRibbon];
  *v32 = 0;
  v32[8] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_overallBadgeCount] = 0;
  v33 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_tapGestureRecognizer;
  *&v4[v33] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v34] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel;
  *&v4[v36] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v37 = type metadata accessor for BadgeView(0);
  v61.receiver = v4;
  v61.super_class = v37;
  v38 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 systemGrayColor];
  [v44 setTintColor:v45];

  v46 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_tapGestureRecognizer;
  [*&v44[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_tapGestureRecognizer] setEnabled:0];
  v47 = *&v44[v46];
  [v47 addTarget:v44 action:"didTapBadgeView:"];

  [v44 addGestureRecognizer:*&v44[v46]];
  v48 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel;
  [*&v44[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel] setNumberOfLines:1];
  [*&v44[v48] setTextAlignment:1];
  [*&v44[v48] setLineBreakMode:2];
  v49 = qword_93D660;
  v50 = *&v44[v48];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = sub_7666D0();
  v52 = sub_BE38(v51, qword_99EB18);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v54(v11, v52, v51);
  v55 = *(v53 + 56);
  v55(v11, 0, 1, v51);
  sub_75BA40();

  [v44 addSubview:*&v44[v48]];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel;
  [*&v44[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel] setNumberOfLines:1];
  [*&v44[v56] setTextAlignment:1];
  [*&v44[v56] setLineBreakMode:2];
  v57 = qword_93D668;
  v58 = *&v44[v56];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_BE38(v51, qword_99EB30);
  v54(v11, v59, v51);
  v55(v11, 0, 1, v51);
  sub_75BA40();

  [v44 addSubview:*&v44[v56]];
  sub_4AF130();
  sub_4AF520();

  return v44;
}

id sub_4AE8C8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BadgeView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_4AEC2C()
{
  v1 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v1 - 8);
  v32 = &v30 - v2;
  v31 = sub_760190();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75C430();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for BadgeLeadingValue.infer(_:), v6, v8);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_leadingValue;
  swift_beginAccess();
  (*(v7 + 24))(&v0[v11], v10, v6);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v7 + 8))(v10, v6);
  v12 = &v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_caption];
  *v12 = 0;
  *(v12 + 1) = 0;

  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel];
  [v13 setText:0];

  LOBYTE(v10) = sub_7692D0();

  [v13 setHidden:v10 & 1];
  [v0 setNeedsLayout];
  v14 = &v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_heading];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel];
  [v15 setText:0];

  LOBYTE(v7) = sub_7692D0();

  [v15 setHidden:v7 & 1];
  [v0 setNeedsLayout];
  v16 = &v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueText];
  *v16 = 0;
  *(v16 + 1) = 0;

  sub_4AD59C();
  v17 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel;
  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v0[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v0[v17] = 0;

  [v0 setNeedsLayout];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView;
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView];
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *&v0[v20];
  }

  else
  {
    v22 = 0;
  }

  *&v0[v20] = 0;

  [v0 setNeedsLayout];
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView] = 0;

  v24 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment] = 4;
  [*&v0[v17] setTextAlignment:4];
  [v13 setTextAlignment:*&v0[v24]];
  [v15 setTextAlignment:*&v0[v24]];
  [v0 setNeedsLayout];
  v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_isTruncatable] = 1;
  [v0 setNeedsLayout];
  v25 = v31;
  (*(v3 + 104))(v5, enum case for BadgeCaptionCappingType.none(_:), v31);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v3 + 24))(&v0[v26], v5, v25);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v3 + 8))(v5, v25);
  v27 = sub_BD88(&unk_950960);
  v28 = v32;
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  return sub_4AD6F8(v28);
}

void sub_4AF130()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_93D648 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99EAD0);
  v7.super.isa = [v1 traitCollection];
  isa = v7.super.isa;
  v9 = sub_7666B0(v7).super.isa;
  v10 = [(objc_class *)v9 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v10)
  {
    v18 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

    if (v18)
    {
      v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
      if (v11)
      {
        v12 = v11;
        [v12 setFont:v18];
      }

      v13 = v18;

      return;
    }
  }

  else
  {
  }

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (v14)
  {
    v15 = *(v5 - 8);
    (*(v15 + 16))(v4, v6, v5);
    (*(v15 + 56))(v4, 0, 1, v5);
    v16 = v14;
    sub_75BA40();
  }
}

void sub_4AF398()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tintColor];
    [v2 setTintColor:v3];
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 tintColor];
    [v5 setTextColor:v6];
  }
}

void sub_4AF520()
{
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v1 systemGrayColor];
  [v0 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel];
  v5 = [v1 systemGrayColor];
  [v4 setTextColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel];
  sub_BE70(0, &qword_93E540);
  v7 = [objc_allocWithZone(UIColor) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.4];
  v8.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.5];
  v9.super.isa = v7;
  isa = sub_76A0C0(v9, v8).super.isa;
  [v6 setTextColor:isa];
}

void sub_4AF6C0(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = sub_765790();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_75B9D0();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75C430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v44 = sub_7601A0();
  v11 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760190();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v18 = sub_75F070();
  v19 = sub_BE38(v18, qword_99DED8);
  (*(*(v18 - 8) + 16))(a1, v19, v18);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v15 + 16))(v17, &v2[v20], v14);
  sub_75F030();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v2[v21], v44);
  sub_75EFD0();
  sub_75F050();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_leadingValue;
  swift_beginAccess();
  v23 = v45;
  (*(v7 + 16))(v45, &v2[v22], v6);
  v24 = v46;
  (*(v7 + 104))(v46, enum case for BadgeLeadingValue.view(_:), v6);
  sub_4B1CB8(&qword_956B28, &type metadata accessor for BadgeLeadingValue);
  sub_7691C0();
  v25 = *(v7 + 8);
  v25(v24, v6);
  v25(v23, v6);
  sub_75F020();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_spacing;
  swift_beginAccess();
  (*(v48 + 16))(v47, &v2[v26], v49);
  sub_75EFF0();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgeType;
  swift_beginAccess();
  (*(v51 + 16))(v50, &v2[v27], v52);
  sub_75F060();
  v28 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView];
  if (v28)
  {
    v29 = v28;
    sub_759130();
  }

  sub_75F040();
  if ((v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgePositionInRibbon + 8] & 1) == 0)
  {
    v30 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgePositionInRibbon];
    v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_overallBadgeCount];
    v32 = [v2 traitCollection];
    v33 = sub_7699F0();
    v34 = v33;
    if (!v30 && (v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (__OFSUB__(v31, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (((v30 == v31 - 1) & v33) == 1)
    {
LABEL_10:
      v35 = sub_75EFC0();
      *(v36 + 8) = 0;
      v35(v53, 0);
      v37 = sub_75EFE0();
      *(v38 + 8) = 0;
      v37(v53, 0);
    }

    if (!v30 && ((v34 ^ 1) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v31, 1))
    {
      if ((v30 != v31 - 1) | v34 & 1)
      {
LABEL_16:

        return;
      }

LABEL_15:
      v39 = sub_75EFC0();
      *(v40 + 24) = 0;
      v39(v53, 0);
      v41 = sub_75EFE0();
      *(v42 + 24) = 0;
      v41(v53, 0);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_4AFE04()
{
  v27 = sub_7664F0();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75F070();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_75F090();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeView(0);
  v44.receiver = v0;
  v44.super_class = v9;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  sub_4AF6C0(v5);
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel];
  v11 = sub_75BB20();
  v42 = v11;
  v43 = &protocol witness table for UILabel;
  v41 = v10;
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView];
  v13 = sub_BE70(0, &qword_93E550);
  v39 = v13;
  v40 = &protocol witness table for UIView;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel];
  }

  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (v15)
  {
    v16 = &protocol witness table for UILabel;
    v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  }

  else
  {
    v17 = 0;
    v11 = 0;
    v16 = 0;
    v34 = 0;
    v35 = 0;
  }

  v33 = v17;
  v36 = v11;
  v37 = v16;
  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView];
  if (v18)
  {
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v29 = 0;
    v30 = 0;
  }

  v28 = v18;
  v31 = v13;
  v32 = v19;
  v20 = v15;
  v21 = v18;
  v22 = v10;
  v23 = v12;
  sub_75F080();
  sub_75D650();
  sub_75EFA0();
  (*(v26 + 8))(v2, v27);
  return (*(v6 + 8))(v8, v25);
}

double sub_4B0164()
{
  v1 = sub_75F070();
  __chkstk_darwin(v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75F090();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4AF6C0(v3);
  v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel);
  v9 = sub_75BB20();
  v25[18] = v9;
  v25[19] = &protocol witness table for UILabel;
  v25[15] = v8;
  v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView);
  v11 = sub_BE70(0, &qword_93E550);
  v25[13] = v11;
  v25[14] = &protocol witness table for UIView;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel);
  }

  v25[10] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel);
  if (v13)
  {
    v14 = &protocol witness table for UILabel;
    v15 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel);
  }

  else
  {
    v15 = 0;
    v9 = 0;
    v14 = 0;
    v25[6] = 0;
    v25[7] = 0;
  }

  v25[5] = v15;
  v25[8] = v9;
  v25[9] = v14;
  v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView);
  if (v16)
  {
    v17 = &protocol witness table for UIView;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v16;
  v25[3] = v11;
  v25[4] = v17;
  v18 = v13;
  v19 = v16;
  v20 = v8;
  v21 = v10;
  sub_75F080();
  sub_4B1CB8(&qword_956B30, &type metadata accessor for BadgeViewRibbonLayout);
  sub_7665A0();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  return v23;
}

void sub_4B0458(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = sub_769A00();

  v6 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment] = v7;
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel] setTextAlignment:?];
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel] setTextAlignment:*&v2[v6]];
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel] setTextAlignment:*&v2[v6]];
  [v2 setNeedsLayout];
  sub_4AF130();
}

void sub_4B0658()
{
  sub_75C430();
  if (v0 <= 0x3F)
  {
    sub_760190();
    if (v1 <= 0x3F)
    {
      sub_7601A0();
      if (v2 <= 0x3F)
      {
        sub_75B9D0();
        if (v3 <= 0x3F)
        {
          sub_2F1CA0();
          if (v4 <= 0x3F)
          {
            sub_765790();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_4B0908()
{
  if (v0[qword_956AA8] == 1)
  {
    if (*&v0[qword_956AB0])
    {
      return;
    }

    v2 = *&v0[qword_956AB8];
    v3 = *&v0[qword_956A88];
    if (v2 == -1)
    {
      v6 = v3;
      v7 = [v0 traitCollection];
      v4 = sub_7699F0();
    }

    else
    {
      v4 = v2 == 1;
      v5 = v3;
    }

    v8 = sub_53E42C(v3, v4 & 1);

    v1 = v8;
  }

  else
  {
    v1 = 0;
  }

  sub_4B09F8(v1);
}

void sub_4B09F8(void *a1)
{
  v3 = qword_956AB0;
  v4 = *&v1[qword_956AB0];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v10 = a1;

  v6 = [v1 layer];
  [v6 setMasksToBounds:0];

  v7 = *&v1[v3];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 layer];
    [v9 addSublayer:v8];
  }
}

id sub_4B0AE4(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, "text");
  if (v2)
  {
    v3 = v2;
    sub_769240();

    v4 = sub_769210();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_4B0B98(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_769240();
    v4 = a1;

    v5 = sub_769210();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v10, "setText:", v5);

  sub_75E140();
  sub_75E0F0();
  sub_75E0E0();
  v7 = sub_75E160();
  if (v7)
  {
    v8 = v7;
    [a1 bounds];
    CGRectGetWidth(v11);
    [a1 lineBreakMode];
    v9 = sub_75E100();
  }

  else
  {
    v9 = -1;
  }

  *&a1[qword_956AB8] = v9;
}

id sub_4B0CE0(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = objc_msgSendSuper2(&v3, "attributedText");

  return v1;
}

void sub_4B0D3C(void *a1, uint64_t a2, void *a3)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v4 = v11.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v11, "setAttributedText:", v5);
  if (v5)
  {
    v6 = sub_75E140();
    v7 = v5;
    sub_75E0E0();
    v8 = objc_allocWithZone(v6);
    v9 = sub_75E150();
    [v4 bounds];
    CGRectGetWidth(v12);
    [v4 lineBreakMode];
    v10 = sub_75E100();
  }

  else
  {
    v10 = -1;
  }

  *&v4[qword_956AB8] = v10;
}

void sub_4B0E5C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (v0[qword_956AA0] == 1)
  {
    [v0 frame];
    [v0 sizeThatFits:{v1, v2}];
    v4 = v3;
    [v0 frame];
    v5 = floor(v4 - CGRectGetWidth(v12)) > COERCE_DOUBLE(1);
    v6 = qword_956AA8;
    v0[qword_956AA8] = v5;
    sub_4B0908();
    v7 = *&v0[qword_956AB0];
    if (v7)
    {
      if (v0[v6] == 1)
      {
        v8 = v7;
        [v0 frame];
        CGRectGetWidth(v13);
        [v0 bounds];
        CGRectGetMaxX(v14);
        [v0 bounds];
        CGRectGetMinY(v15);
        [v0 bounds];
        CGRectGetHeight(v16);
        v9 = *&v0[qword_956AB8];
        v10 = v8;
        [v0 bounds];
        if (v9 == -1)
        {
          sub_769D20();
        }

        else
        {
          sub_769D30();
        }

        [v10 setFrame:?];
      }
    }
  }
}

void sub_4B1038(void *a1)
{
  v1 = a1;
  sub_4B0E5C();
}

void sub_4B1080()
{
  if (*&v0[qword_956AB0])
  {
    v1 = *&v0[qword_956AB8];
    v2 = *&v0[qword_956A88];
    if (v1 == -1)
    {
      v5 = v2;
      v6 = [v0 traitCollection];
      v3 = sub_7699F0();
    }

    else
    {
      v3 = v1 == 1;
      v4 = v2;
    }

    v7 = sub_53E42C(v2, v3 & 1);

    sub_4B09F8(v7);
  }
}

void sub_4B1154(void *a1)
{
  v1 = a1;
  sub_4B1080();
}

uint64_t sub_4B119C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v22[1] = a4;
  v23 = a2;
  v24 = a3;
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = v22 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_956A88;
  sub_BE70(0, &qword_93E540);
  *&v18[v19] = sub_76A000();
  *&v18[qword_956A90] = 0x3FD0000000000000;
  *&v18[qword_956A98] = 0x4034000000000000;
  v18[qword_956AA0] = 1;
  v18[qword_956AA8] = 0;
  *&v18[qword_956AB0] = 0;
  *&v18[qword_956AB8] = -1;
  sub_1ED18(a1, v17, &unk_93E530);
  (*(v12 + 16))(v14, a6, v11);
  v20 = sub_75BB10();
  (*(v12 + 8))(a6, v11);
  sub_10A2C(a1, &unk_93E530);
  return v20;
}

void sub_4B13E0()
{
  v1 = *(v0 + qword_956AB0);
}

id sub_4B1420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4B1458(uint64_t a1)
{
  v2 = *(a1 + qword_956AB0);
}

unint64_t sub_4B14C0()
{
  result = qword_956B20;
  if (!qword_956B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956B20);
  }

  return result;
}

id sub_4B1514(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v6;
    [v7 setNumberOfLines:1];
    [v7 setLineBreakMode:2];
    [v7 setTextAlignment:1];
    v8 = [v1 tintColor];
    [v7 setTextColor:v8];

    [v1 addSubview:v7];
    sub_4AF130();
  }

  return [v1 setNeedsLayout];
}

void sub_4B162C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_leadingValue;
  v2 = enum case for BadgeLeadingValue.infer(_:);
  v3 = sub_75C430();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_caption);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView) = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_heading);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_isTruncatable) = 1;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionCappingType;
  v8 = enum case for BadgeCaptionCappingType.none(_:);
  v9 = sub_760190();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_requiresRemainingWidth) = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueViewAlignment;
  v11 = enum case for BadgeValueViewAlignment.baseline(_:);
  v12 = sub_7601A0();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_spacing;
  v14 = enum case for BadgeViewSpacing.standard(_:);
  v15 = sub_75B9D0();
  (*(*(v15 - 8) + 104))(v0 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_action;
  v17 = sub_BD88(&unk_950960);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgeType;
  v19 = enum case for BadgeType.custom(_:);
  v20 = sub_765790();
  (*(*(v20 - 8) + 104))(v0 + v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView) = 0;
  v21 = v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgePositionInRibbon;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_overallBadgeCount) = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_tapGestureRecognizer;
  *(v0 + v22) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v23) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel;
  *(v0 + v25) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_4B1984()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_BD88(&unk_950960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_action;
  swift_beginAccess();
  sub_1ED18(v0 + v11, v6, &qword_94EC40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_94EC40;
    v13 = v6;
    return sub_10A2C(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_75B460();
  v14 = sub_BD88(&unk_93F630);
  sub_768860();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_93F980;
    v13 = v3;
    return sub_10A2C(v13, v12);
  }

  sub_75B470();
  v17 = sub_75B460();
  sub_32A6C0(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

uint64_t sub_4B1CB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4B1D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v136 = a5;
  v141 = a4;
  v139 = a3;
  v138 = a2;
  v10 = sub_768C60();
  v143 = *(v10 - 8);
  v144 = v10;
  __chkstk_darwin(v10);
  v142 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v12 - 8);
  v134 = &v116 - v13;
  v132 = sub_75B9D0();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v130 = &v116 - v16;
  v145 = sub_765790();
  v148 = *(v145 - 8);
  __chkstk_darwin(v145);
  v137 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v133 = &v116 - v19;
  __chkstk_darwin(v20);
  v128 = &v116 - v21;
  __chkstk_darwin(v22);
  v123 = &v116 - v23;
  v126 = sub_7601A0();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v116 - v26;
  v27 = sub_BD88(&qword_945F18);
  __chkstk_darwin(v27 - 8);
  v117 = &v116 - v28;
  v135 = sub_75C430();
  v29 = *(v135 - 1);
  __chkstk_darwin(v135);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_760190();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v122 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v116 - v36;
  sub_75A110();
  v38 = sub_768900();
  v119 = a6;
  v118 = v38;
  sub_768ED0();
  v39 = *&v151[0];
  v121 = sub_4B4884();
  v120 = v40;

  v41 = sub_4B5080(a1, v39);
  v140 = v39;

  v149 = v33;
  v42 = *(v33 + 104);
  v146 = v37;
  v147 = v32;
  v42(v37, enum case for BadgeCaptionCappingType.none(_:), v32);
  sub_764770();
  v43 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_leadingValue;
  swift_beginAccess();
  v44 = v135;
  (*(v29 + 24))(&v7[v43], v31, v135);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v29 + 8))(v31, v44);
  v45 = &v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueText];
  v46 = v120;
  *v45 = v121;
  *(v45 + 1) = v46;

  sub_4AD59C();
  v47 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView;
  v48 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueView];
  v49 = v41;
  if (v48)
  {
    [v48 removeFromSuperview];
    v48 = *&v7[v47];
  }

  *&v7[v47] = v41;
  v50 = v49;

  v51 = v147;
  v52 = v125;
  if (v41)
  {
    v53 = [v7 tintColor];
    [v50 setTintColor:v53];

    [v7 addSubview:v50];
  }

  [v7 setNeedsLayout];
  v135 = v50;

  v54 = sub_764850();
  if (v55)
  {
    *&v151[0] = v54;
    *(&v151[0] + 1) = v55;
    v56 = v117;
    sub_757390();
    v57 = sub_7573C0();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    sub_12EC40();
    v58 = sub_76A4B0();
    v60 = v59;
    sub_10A2C(v56, &qword_945F18);

    v54 = v58;
  }

  else
  {
    v60 = 0;
  }

  v61 = v127;
  sub_4AD498(v54, v60);
  v62 = [v7 traitCollection];
  v63 = sub_769A00();

  if (v63)
  {
    v64 = 4;
  }

  else
  {
    v64 = 1;
  }

  v65 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment;
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_alignment] = v64;
  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueLabel] setTextAlignment:?];
  v66 = *&v7[v65];
  v121 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionLabel];
  [v121 setTextAlignment:v66];
  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_headingLabel] setTextAlignment:*&v7[v65]];
  [v7 setNeedsLayout];
  v67 = v149;
  v68 = v122;
  (*(v149 + 16))(v122, v146, v51);
  v69 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v67 + 24))(&v7[v69], v68, v51);
  swift_endAccess();
  [v7 setNeedsLayout];
  v70 = *(v67 + 8);
  v149 = v67 + 8;
  v127 = v70;
  (v70)(v68, v51);
  v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_isTruncatable] = sub_764780() & 1;
  [v7 setNeedsLayout];
  v71 = v123;
  sub_764800();
  v72 = v145;
  v73 = *(v148 + 88);
  v74 = v73(v71, v145);
  if (v74 == enum case for BadgeType.contentRating(_:))
  {
    v75 = v126;
    (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.center(_:), v126);
    v76 = enum case for BadgeType.chartPosition(_:);
  }

  else
  {
    v76 = enum case for BadgeType.chartPosition(_:);
    v75 = v126;
    if (v74 == enum case for BadgeType.chartPosition(_:))
    {
      v76 = v74;
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.topOfValueLabel(_:), v126);
    }

    else if (v74 == enum case for BadgeType.artwork(_:))
    {
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.centerOfView(_:), v126);
    }

    else
    {
      v77 = *(v52 + 104);
      if (v74 == enum case for BadgeType.paragraph(_:))
      {
        v77(v61, enum case for BadgeValueViewAlignment.topOfView(_:), v126);
      }

      else
      {
        v77(v61, enum case for BadgeValueViewAlignment.baseline(_:), v126);
        (*(v148 + 8))(v71, v72);
      }
    }
  }

  v78 = v124;
  (*(v52 + 32))(v124, v61, v75);
  v79 = v75;
  v80 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v52 + 24))(&v7[v80], v78, v79);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v52 + 8))(v78, v79);
  v81 = v128;
  sub_764800();
  v82 = v73;
  if (v73(v81, v72) == v76)
  {
    v83 = v129;
    *v129 = 0;
    v84 = v131;
    v85 = v132;
    (*(v131 + 104))(v83, enum case for BadgeViewSpacing.spacing(_:), v132);
  }

  else
  {
    v84 = v131;
    v83 = v129;
    v85 = v132;
    (*(v131 + 104))(v129, enum case for BadgeViewSpacing.standard(_:), v132);
    (*(v148 + 8))(v81, v72);
  }

  v86 = v134;
  v87 = v130;
  (*(v84 + 32))(v130, v83, v85);
  v88 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_spacing;
  swift_beginAccess();
  (*(v84 + 24))(&v7[v88], v87, v85);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v84 + 8))(v87, v85);
  v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_requiresRemainingWidth] = sub_4B6398() & 1;
  if (v136)
  {
    *&v151[0] = v136;
    sub_764C80();
    sub_4B6574(&qword_951430, &type metadata accessor for Action);

    v72 = v145;
    sub_768820();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = sub_BD88(&unk_950960);
  (*(*(v90 - 8) + 56))(v86, v89, 1, v90);
  sub_4AD6F8(v86);
  v91 = v133;
  sub_764800();
  v92 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgeType;
  swift_beginAccess();
  v93 = v148;
  (*(v148 + 40))(&v7[v92], v91, v72);
  swift_endAccess();
  v94 = &v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_badgePositionInRibbon];
  *v94 = v138;
  v94[8] = v139 & 1;
  v95 = v72;
  v96 = v141;
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_overallBadgeCount] = v141;
  v97 = v137;
  sub_764800();
  v98 = v97;
  v99 = v82(v97, v95);
  v100 = v147;
  if (v99 == enum case for BadgeType.rating(_:))
  {
    v101 = sub_4B4D00();
    v102 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView;
    v103 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView];
    v104 = v101;
    if (v103)
    {
      [v103 removeFromSuperview];
      v103 = *&v7[v102];
    }

    *&v7[v102] = v101;
    v108 = v101;

    [v7 addSubview:v108];
    [v7 setNeedsLayout];

    v109 = &v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_caption];
    *v109 = 0;
    *(v109 + 1) = 0;

    v110 = v121;
    [v121 setText:0];

    v111 = sub_7692D0();

    [v110 setHidden:v111 & 1];
    [v7 setNeedsLayout];
  }

  else
  {
    (*(v93 + 8))(v98, v95);
    v105 = OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView;
    v106 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_captionView];
    if (v106)
    {
      [v106 removeFromSuperview];
      v107 = *&v7[v105];
    }

    else
    {
      v107 = 0;
    }

    *&v7[v105] = 0;

    if (v96 < 4 || (v112 = sub_764750(), !v113))
    {
      v112 = sub_764830();
    }

    sub_4AD484(v112, v113);
  }

  sub_4AF520();
  [v7 setNeedsLayout];
  *&v151[0] = 0x2E6567646162;
  *(&v151[0] + 1) = 0xE600000000000000;
  v152._countAndFlagsBits = sub_7647C0();
  sub_769370(v152);

  memset(v151, 0, sizeof(v151));
  memset(v150, 0, sizeof(v150));
  v114 = v142;
  sub_768BD0();

  sub_10A2C(v150, &unk_93FBD0);
  sub_10A2C(v151, &unk_93FBD0);
  sub_769E70();

  (*(v143 + 8))(v114, v144);
  return (v127)(v146, v100);
}

void sub_4B2E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_BD88(&qword_944448);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-v9 - 8];
  sub_35FDF4(a3, &v28[-v9 - 8]);
  v11 = sub_765120();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10A2C(v10, &qword_944448);
  }

  else
  {
    v16 = sub_7650E0();
    (*(v12 + 8))(v10, v11);
    if (v16)
    {
      if (a1)
      {
        v17 = [a1 imageByApplyingSymbolConfiguration:a5];
        if (v17)
        {
          v18 = v17;
          [v17 size];
          v20 = v19;
          v22 = v21;

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            v25 = sub_759150();
            *(v26 + 16) = v20;
            *(v26 + 24) = v22;
            v25(v28, 0);
          }
        }
      }
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v15 = v13;
    v29.value.super.isa = a1;
    v29.is_nil = 0;
    sub_759140(v29, v14);
  }
}

double sub_4B3048(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v124 = a9;
  v143 = a5;
  v127 = a4;
  v135 = a3;
  v123 = sub_762D10();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_75B9D0();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v120 - v17;
  v142 = sub_75F070();
  v136 = *(v142 - 8);
  __chkstk_darwin(v142);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_945F18);
  __chkstk_darwin(v20 - 8);
  v126 = &v120 - v21;
  v138 = sub_760190();
  v146 = *(v138 - 8);
  __chkstk_darwin(v138);
  v130 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v145 = &v120 - v24;
  v139 = sub_7666D0();
  v125 = *(v139 - 8);
  __chkstk_darwin(v139);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_759950();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_765790();
  v141 = *(v147 - 8);
  __chkstk_darwin(v147);
  v129 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v128 = &v120 - v33;
  __chkstk_darwin(v34);
  v36 = &v120 - v35;
  v144 = a1;
  sub_4B4884();
  v137 = a2;
  v132 = v15;
  if (v37)
  {
    if (qword_93D648 != -1)
    {
      swift_once();
    }

    sub_BE38(v139, qword_99EAD0);
    v38 = sub_7653B0();
    v151 = v38;
    v152 = sub_4B6574(&qword_93F9B0, &type metadata accessor for Feature);
    v39 = sub_B1B4(v150);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    sub_765C30();
    sub_BEB8(v150);
    sub_762CB0();
  }

  sub_764800();
  v140 = *(v141 + 88);
  v40 = v140(v36, v147);
  v41 = enum case for BadgeType.rating(_:);
  if (v40 != enum case for BadgeType.rating(_:))
  {
    if (v40 == enum case for BadgeType.contentRating(_:))
    {
      v49 = sub_764840();
      v50 = sub_757820();
      v47 = v136;
      v48 = v138;
      if (!*(v49 + 16))
      {

        goto LABEL_38;
      }

      v52 = sub_3DF2F8(v50, v51);
      v54 = v53;

      if (v54)
      {
        sub_132B4(*(v49 + 56) + 32 * v52, v150);

        if (swift_dynamicCast())
        {
          v55 = sub_56E958(v148, v149, 0);

          [v55 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v48 = v138;
    if (v40 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v47) = enum case for BadgeType.rating(_:);
      v153._object = 0x80000000007E3E90;
      v153._countAndFlagsBits = 0xD000000000000020;
      v154._countAndFlagsBits = 0;
      v154._object = 0xE000000000000000;
      v124 = sub_75B750(v153, v154);
      if (qword_93D650 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v47 = v136;
    if (v40 == enum case for BadgeType.editorsChoice(_:))
    {
      v68 = type metadata accessor for EditorsChoiceView();
      sub_549E78(0, v143, v68);
      goto LABEL_38;
    }

    v69 = v143;
    v70 = v147;
    if (v40 == enum case for BadgeType.artwork(_:))
    {
      if (qword_93D210 != -1)
      {
        swift_once();
      }

      sub_BE38(v142, qword_99DED8);
      sub_75F010();
      v71 = [v69 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_769D60();
      goto LABEL_39;
    }

    if (v40 == enum case for BadgeType.paragraph(_:))
    {
      sub_4B4A40();
      if (qword_93D640 != -1)
      {
        swift_once();
      }

      sub_BE38(v139, qword_99EAB8);
      v74 = sub_7653B0();
      v151 = v74;
      v152 = sub_4B6574(&qword_93F9B0, &type metadata accessor for Feature);
      v75 = sub_B1B4(v150);
      (*(*(v74 - 8) + 104))(v75, enum case for Feature.measurement_with_labelplaceholder(_:), v74);
      sub_765C30();
      sub_BEB8(v150);
      sub_762CB0();
      v77 = v76;

      v78 = [v69 traitCollection];
      sub_64409C(v77, a6);
    }

    else
    {
      if (v40 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v141 + 8))(v36, v147);
        goto LABEL_39;
      }

      v79 = sub_764840();
      v80 = sub_757A40();
      if (!*(v79 + 16))
      {

        goto LABEL_39;
      }

      v82 = sub_3DF2F8(v80, v81);
      v84 = v83;

      if ((v84 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_132B4(*(v79 + 56) + 32 * v82, v150);

      sub_BE70(0, &qword_93E550);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v78 = v148;
      [v148 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v42 = [v143 traitCollection];
  v43 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v28 + 104))(v30, enum case for SystemImage.star(_:), v27);
  v44 = v41;
  v45 = [v43 configurationWithTraitCollection:v42];
  v46 = sub_759930();

  v41 = v44;
  (*(v28 + 8))(v30, v27);
  [v46 contentInsets];
  [v46 contentInsets];
  [v46 size];
  [v46 contentInsets];
  [v46 contentInsets];
  [v46 size];

  v47 = v136;
  v48 = v138;
  while (1)
  {
LABEL_38:
    v70 = v147;
LABEL_39:
    v85 = v128;
    sub_764800();
    if (v140(v85, v70) == v41)
    {
      v86 = sub_4B4D00();
      [v86 frame];
      CGRectGetWidth(v155);

      v87 = v143;
    }

    else
    {
      (*(v141 + 8))(v85, v70);
      if (v127 >= 4)
      {
        sub_764750();
        if (v88)
        {
          v87 = v143;
LABEL_45:
          if (qword_93D660 != -1)
          {
            swift_once();
          }

          sub_BE38(v139, qword_99EB18);
          v90 = sub_7653B0();
          v151 = v90;
          v152 = sub_4B6574(&qword_93F9B0, &type metadata accessor for Feature);
          v91 = sub_B1B4(v150);
          (*(*(v90 - 8) + 104))(v91, enum case for Feature.measurement_with_labelplaceholder(_:), v90);
          sub_765C30();
          sub_BEB8(v150);
          sub_762CB0();

          v70 = v147;
          goto LABEL_48;
        }
      }

      sub_764830();
      v87 = v143;
      if (v89)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v146 + 104))(v145, enum case for BadgeCaptionCappingType.none(_:), v48);
    v92 = sub_764850();
    if (v93)
    {
      v94 = v48;
      v150[0] = v92;
      v150[1] = v93;
      v95 = v126;
      sub_757390();
      v96 = sub_7573C0();
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      sub_12EC40();
      sub_76A4B0();
      sub_10A2C(v95, &qword_945F18);

      if (qword_93D668 != -1)
      {
        swift_once();
      }

      sub_BE38(v139, qword_99EB30);
      v97 = sub_7653B0();
      v151 = v97;
      v152 = sub_4B6574(&qword_93F9B0, &type metadata accessor for Feature);
      v98 = sub_B1B4(v150);
      (*(*(v97 - 8) + 104))(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
      sub_765C30();
      sub_BEB8(v150);
      sub_762CB0();

      v70 = v147;
      v48 = v94;
    }

    v99 = v134;
    if (qword_93D210 != -1)
    {
      swift_once();
    }

    v100 = v142;
    v101 = sub_BE38(v142, qword_99DED8);
    (*(v47 + 16))(v19, v101, v100);
    v26 = v48;
    (*(v146 + 16))(v130, v145, v48);
    sub_75F030();
    v102 = v129;
    sub_764800();
    if (v140(v102, v70) == enum case for BadgeType.chartPosition(_:))
    {
      v103 = v132;
      *v132 = 0;
      v104 = v133;
      (*(v133 + 104))(v103, enum case for BadgeViewSpacing.spacing(_:), v99);
    }

    else
    {
      v104 = v133;
      v103 = v132;
      (*(v133 + 104))(v132, enum case for BadgeViewSpacing.standard(_:), v99);
      (*(v141 + 8))(v102, v70);
    }

    v105 = v137;
    (*(v104 + 32))(v131, v103, v99);
    sub_75EFF0();
    v48 = v26;
    if (v135)
    {
      goto LABEL_69;
    }

    v106 = [v87 traitCollection];
    v107 = sub_7699F0();
    v108 = v107;
    if (!v105 && (v107 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v127, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v127 - 1 == v105) & v107) == 1)
    {
LABEL_62:
      v109 = sub_75EFC0();
      *(v110 + 8) = 0;
      v109(v150, 0);
      v111 = sub_75EFE0();
      *(v112 + 8) = 0;
      v111(v150, 0);
      v48 = v138;
    }

    if (!v105 && ((v108 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v127, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v56 = v139;
    v57 = sub_BE38(v139, qword_99EAE8);
    (*(v125 + 16))(v26, v57, v56);
    v58.super.isa = [v143 traitCollection];
    isa = v58.super.isa;
    v60 = sub_7666B0(v58).super.isa;
    v61 = [(objc_class *)v60 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v61)
    {
      v62 = [objc_opt_self() fontWithDescriptor:v61 size:0.0];

      v41 = v47;
      if (v62)
      {
        v63 = sub_7653B0();
        v151 = v63;
        v152 = sub_4B6574(&qword_93F9B0, &type metadata accessor for Feature);
        v64 = sub_B1B4(v150);
        (*(*(v63 - 8) + 104))(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
        v65 = v62;
        sub_765C30();
        sub_BEB8(v150);
        v66 = v121;
        sub_762D00();
        sub_4B6574(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
        v67 = v123;
        sub_7665A0();

        (*(v122 + 8))(v66, v67);
        goto LABEL_26;
      }
    }

    else
    {

      v41 = v47;
    }

    v72 = sub_7653B0();
    v151 = v72;
    v152 = sub_4B6574(&qword_93F9B0, &type metadata accessor for Feature);
    v73 = sub_B1B4(v150);
    (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
    sub_765C30();
    sub_BEB8(v150);
    sub_762CB0();

LABEL_26:
    (*(v125 + 8))(v26, v139);
    v47 = v136;
  }

  if ((v127 - 1 != v105) | v108 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v113 = sub_75EFC0();
  *(v114 + 24) = 0;
  v113(v150, 0);
  v115 = sub_75EFE0();
  *(v116 + 24) = 0;
  v115(v150, 0);
LABEL_68:

LABEL_69:
  sub_75EF90();
  v118 = v117;
  (*(v47 + 8))(v19, v142);
  (*(v146 + 8))(v145, v48);
  return v118;
}

uint64_t sub_4B4884()
{
  v0 = sub_765790();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_764800();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for BadgeType.contentRating(_:))
  {
    v5 = sub_764840();
    v6 = sub_757830();
    goto LABEL_5;
  }

  if (v4 == enum case for BadgeType.chartPosition(_:))
  {
    v5 = sub_764840();
    v6 = sub_762600();
LABEL_5:
    if (*(v5 + 16))
    {
      v8 = sub_3DF2F8(v6, v7);
      v10 = v9;

      if (v10)
      {
        sub_132B4(*(v5 + 56) + 32 * v8, v12);

        if (swift_dynamicCast())
        {
          return v13;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:
    v13 = 0;
    v14 = 0;
    return v13;
  }

  v13 = 0;
  v14 = 0;
  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_4B4A40()
{
  v0 = sub_765790();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  sub_764800();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_4B6574(&qword_955938, &type metadata accessor for BadgeType);
  sub_769430();
  sub_769430();
  if (v17[0] == v18 && v17[1] == v19)
  {
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);
  }

  else
  {
    v8 = sub_76A950();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_764840();
  v11 = sub_762610();
  if (!*(v10 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_3DF2F8(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_132B4(*(v10 + 56) + 32 * v13, v17);

  if (swift_dynamicCast())
  {
    return v18;
  }

  return 0;
}

char *sub_4B4D00()
{
  v0 = type metadata accessor for RatingView();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
  v2 = &v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  *v2 = 0;
  v2[8] = 1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = 5;
  if (qword_93D100 != -1)
  {
    swift_once();
  }

  v3 = qword_9552A8;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
  v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = 1;
  *v2 = 0;
  v2[8] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 1;
  v4 = type metadata accessor for StarRow();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(5, 1, 1, 0, 1, 0, 1);
  v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
  v7 = objc_allocWithZone(v4);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = sub_43DC44(5, 0, 1, 0, 1, 0, 1);
  v26.receiver = v1;
  v26.super_class = v0;
  v8 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_43B880();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
  v10 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  *&v10[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
  v12 = v10;
  sub_43C36C(v11);

  if (*&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView])
  {
    [v8 addSubview:?];
  }

  [v8 addSubview:*&v8[v9]];

  v13 = sub_764840();
  v14 = sub_75EF80();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_3DF2F8(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_132B4(*(v13 + 56) + 32 * v16, v25);

  sub_BE70(0, &qword_945820);
  if (swift_dynamicCast())
  {
    v19 = v24;
    [v24 floatValue];
    sub_43B74C(v20);
    goto LABEL_14;
  }

LABEL_11:
  sub_43B74C(0.0);
  v21 = [objc_opt_self() systemMidGrayColor];
  v19 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = v21;
  sub_BE70(0, &qword_93E540);
  v22 = v21;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_43B880();
  }

LABEL_14:
  return v8;
}

char *sub_4B5080(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v2 = sub_7636D0();
  __chkstk_darwin(v2 - 8);
  v132 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760AD0();
  v142 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v9 = &v132 - v8;
  v10 = sub_7652D0();
  __chkstk_darwin(v10 - 8);
  v138 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_765240();
  v136 = *(v12 - 8);
  v137 = v12;
  __chkstk_darwin(v12);
  v135 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_94CBB8);
  __chkstk_darwin(v14 - 8);
  v134 = &v132 - v15;
  v139 = sub_766690();
  v141 = *(v139 - 8);
  __chkstk_darwin(v139);
  v140 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75F070();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_765790();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764800();
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for BadgeType.rating(_:))
  {
    v26 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v27 = sub_764840();
    v28 = sub_762F70();
    if (*(v27 + 16))
    {
      v30 = sub_3DF2F8(v28, v29);
      v32 = v31;

      if (v32)
      {
        sub_132B4(*(v27 + 56) + 32 * v30, v146);

        if (swift_dynamicCast())
        {
          v33 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
          v34 = sub_769210();
          v35 = v33;
LABEL_22:
          [v35 setText:v34];

          v43 = v26;
          [v43 setNeedsLayout];

LABEL_23:

          return v43;
        }

LABEL_21:
        v34 = 0;
        v35 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  if (v25 == enum case for BadgeType.contentRating(_:))
  {
    v36 = sub_764840();
    v37 = sub_757820();
    if (*(v36 + 16))
    {
      v39 = sub_3DF2F8(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_132B4(*(v36 + 56) + 32 * v39, v146);

        if (swift_dynamicCast())
        {
          v42 = sub_56E958(v144, v145, 0);

          v43 = [objc_allocWithZone(UIImageView) initWithImage:v42];
          [v43 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

          return v43;
        }

        return 0;
      }

LABEL_51:

      return 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (v25 == enum case for BadgeType.chartPosition(_:))
  {
    if (qword_93D650 != -1)
    {
      swift_once();
    }

    v44 = sub_7666D0();
    v45 = sub_BE38(v44, qword_99EAE8);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v9, v45, v44);
    (*(v46 + 56))(v9, 0, 1, v44);
    v142[13](v6, enum case for DirectionalTextAlignment.none(_:), v4);
    v47 = objc_allocWithZone(sub_75BB20());
    v48 = sub_75BB10();
    v49.super.isa = [v143 traitCollection];
    isa = v49.super.isa;
    v51 = sub_7666B0(v49).super.isa;
    v52 = [(objc_class *)v51 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v52)
    {
      v53 = [objc_opt_self() fontWithDescriptor:v52 size:0.0];

      if (!v53)
      {
LABEL_18:
        [v48 setTextAlignment:1];
        v148._countAndFlagsBits = 0xD000000000000020;
        v148._object = 0x80000000007E3E90;
        v150._countAndFlagsBits = 0;
        v150._object = 0xE000000000000000;
        sub_75B750(v148, v150);
        v54 = sub_769210();

        [v48 setText:v54];

        v55 = objc_opt_self();
        v43 = v48;
        v56 = [v55 systemGrayColor];
        [v43 setTextColor:v56];

        return v43;
      }

      [v48 setFont:v53];
      isa = v53;
    }

    goto LABEL_18;
  }

  if (v25 == enum case for BadgeType.editorsChoice(_:))
  {
    v149._object = 0x80000000007D9F40;
    v151._countAndFlagsBits = 0xD000000000000050;
    v151._object = 0x80000000007D9F60;
    v149._countAndFlagsBits = 0xD000000000000017;
    sub_75B750(v149, v151);
    v57 = sub_769350();

    v58 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
    return sub_2E0BE8(v57 < 19, 1, 0, 0, 2u);
  }

  if (v25 == enum case for BadgeType.artwork(_:))
  {
    v59 = sub_764820();
    if (!v59)
    {
      return 0;
    }

    v60 = v59;
    v61 = v143;
    sub_4AF6C0(v20);
    sub_75F010();
    (*(v18 + 8))(v20, v17);
    v62 = [v61 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_769D60();
    v64 = v63;
    v66 = v65;
    sub_765260();
    v67 = v140;
    sub_7666A0();
    LOBYTE(v62) = sub_7665F0();
    v68 = v141 + 8;
    v69 = *(v141 + 8);
    v70 = v139;
    v69(v67, v139);
    v141 = v68;
    if (v62)
    {
      sub_765260();
      sub_7666A0();
      sub_766600();
      v64 = v71;
      v66 = v72;
      v69(v67, v70);
    }

    v73 = v134;
    v43 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v64, v66}];
    sub_7650C0();
    v74 = sub_7650B0();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_10A2C(v73, &qword_94CBB8);
      v76 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
    }

    else
    {
      v101 = sub_7650A0();
      (*(v75 + 8))(v73, v74);
      v76 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1 scale:v101];
    }

    v142 = v76;
    sub_759120();
    v102 = v135;
    sub_765250();
    sub_765210();
    (*(v136 + 8))(v102, v137);
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v43 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    v103 = objc_opt_self();
    v104 = [v103 clearColor];
    sub_759070();
    if (sub_764760())
    {
      v105 = [v103 secondaryLabelColor];
      sub_7590A0();
      [v43 setAccessibilityIgnoresInvertColors:0];
    }

    if (sub_765180())
    {
      v106 = sub_56EBA8(v60, 0);
      v107 = v106;
      sub_759190();
      if (v106)
      {
        [v107 size];
        v108 = v140;
        sub_7666A0();
        v109 = v69;
        v110 = sub_7665E0();
        v109(v108, v70);
        [v107 size];
        sub_7666A0();
        if (v110)
        {
          sub_766610();
          v112 = v111;
          v114 = v113;
          v109(v108, v70);
          v115 = sub_759150();
          *(v116 + 16) = v112;
          *(v116 + 24) = v114;
          v115(v146, 0);

          v61 = v143;
LABEL_71:
          v127 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView];
          *&v61[OBJC_IVAR____TtC18ASMessagesProvider9BadgeView_artworkView] = v43;
          v128 = v43;

          return v43;
        }

        sub_766600();
        v121 = v123;
        v122 = v124;
        v109(v108, v70);
        v61 = v143;
      }

      else
      {
        v121 = 0;
        v122 = 0;
      }

      v125 = sub_759150();
      *(v126 + 16) = v121;
      *(v126 + 24) = v122;
      v125(v146, 0);
    }

    else if (v133)
    {
      v147 = 0;
      memset(v146, 0, sizeof(v146));
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v118 = swift_allocObject();
      v119 = v142;
      *(v118 + 16) = v142;
      *(v118 + 24) = v117;
      v120 = v119;

      sub_75A040();

      sub_10A2C(v146, &unk_9443A0);
LABEL_70:

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v25 == enum case for BadgeType.paragraph(_:))
  {
    v43 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_4B4A40();
    if (!v77)
    {
      return v43;
    }

    v78 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
    v79 = sub_769210();
    [v78 setText:v79];

    [v43 setNeedsLayout];
    goto LABEL_23;
  }

  if (v25 != enum case for BadgeType.friendsPlaying(_:))
  {
    (*(v22 + 8))(v24, v21);
    return 0;
  }

  v80 = sub_764840();
  v81 = sub_763F70();
  if (!*(v80 + 16))
  {
    goto LABEL_50;
  }

  v83 = sub_3DF2F8(v81, v82);
  v85 = v84;

  if ((v85 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_132B4(*(v80 + 56) + 32 * v83, v146);

  sub_BE70(0, &qword_945820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v86 = v144;
  v87 = [v144 integerValue];

  v88 = sub_764840();
  v89 = sub_75C620();
  if (!*(v88 + 16))
  {
    goto LABEL_50;
  }

  v91 = sub_3DF2F8(v89, v90);
  v93 = v92;

  if ((v93 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_132B4(*(v88 + 56) + 32 * v91, v146);

  sub_BD88(&qword_956B38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v94 = v144;
  if (!v133)
  {
    goto LABEL_51;
  }

  v95 = (v144 >> 62);
  if (v144 >> 62)
  {
LABEL_88:
    v96 = sub_76A860();
  }

  else
  {
    v96 = *(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8));
  }

  if (v96 >= v87)
  {
    v97 = v87;
  }

  else
  {
    v97 = v96;
  }

  v98 = v132;
  sub_7636C0();
  v99 = objc_allocWithZone(type metadata accessor for AvatarShowcaseView());
  v43 = sub_4F983C(v97, v98);
  *&v146[0] = _swiftEmptyArrayStorage;
  if (v95)
  {
    v87 = sub_76A860();
  }

  else
  {
    v87 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
  }

  v129 = 0;
  v95 = _swiftEmptyArrayStorage;
  while (v87 != v129)
  {
    if ((v94 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v129 >= *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_87;
      }

      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    v131 = sub_75BB80();

    ++v129;
    if (v131)
    {
      sub_769440();
      if (*(&dword_10 + (*&v146[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v146[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v95 = *&v146[0];
      v129 = v130;
    }
  }

  sub_4F9BAC(v95, v133);

  return v43;
}

uint64_t sub_4B6398()
{
  v0 = sub_765790();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_764800();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_4B6574(&qword_955938, &type metadata accessor for BadgeType);
  sub_769430();
  sub_769430();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_76A950();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_4B6574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4B65BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4B65F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4B663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75FB00();
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_765490();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_93FF28);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = a2;
    v42 = a1;
    sub_762D30();

    v20 = sub_BD88(&unk_959540);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v22 = &qword_93FF28;
      v23 = v16;
LABEL_11:
      sub_10A2C(v23, v22);
      a2 = v19;
      goto LABEL_16;
    }

    sub_768760();
    (*(v21 + 8))(v16, v20);
    sub_10914(&v48, v50);
    sub_134D8(v50, v46);
    sub_BD88(&unk_944DA0);
    sub_BD88(&qword_94BBC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_BEB8(v50);
      v22 = &qword_94BBD0;
      v23 = &v43;
      goto LABEL_11;
    }

    sub_10914(&v43, &v48);
    sub_B170(&v48, v49);
    a2 = v19;
    if (sub_75AAD0())
    {
      sub_758B20();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v39;
        v37 = v24;
        sub_758AE0();
        v26 = sub_765480();
        (*(v40 + 8))(v25, v41);
        if ((v26 & 1) == 0)
        {
          sub_BEB8(v50);

          goto LABEL_15;
        }

        sub_134D8(v50, v46);
        sub_765B70();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_B170(&v48, v49);

          sub_75AAE0();
          sub_4B6FA4(v50, v38);
          sub_75FAE0();

          sub_BEB8(v50);
          v36 = sub_75FB30();
          (*(*(v36 - 8) + 56))(a2, 0, 1, v36);
          return sub_BEB8(&v48);
        }
      }
    }

    sub_BEB8(v50);
LABEL_15:
    sub_BEB8(&v48);
  }

LABEL_16:
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_29:
    v34 = sub_75FB30();
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v28 = v27;
  sub_7575D0();
  sub_7575B0();
  sub_762D30();

  (*(v5 + 8))(v7, v4);
  v29 = sub_BD88(&unk_959540);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10A2C(v13, &qword_93FF28);
    goto LABEL_29;
  }

  sub_768760();
  (*(v30 + 8))(v13, v29);
  sub_10914(&v48, v50);
  sub_134D8(v50, v46);
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956C68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_BEB8(v50);
    sub_10A2C(&v43, &qword_956C70);
    goto LABEL_29;
  }

  sub_10914(&v43, &v48);
  sub_B170(&v48, v49);
  sub_7575C0();
  sub_761550();
  if (!v43)
  {
    sub_BEB8(v50);
    sub_10A2C(&v43, &qword_956C78);
    sub_BEB8(&v48);
    goto LABEL_29;
  }

  v46[0] = v43;
  v46[1] = v44;
  v47 = v45;
  sub_1ED18(v46, &v43, &unk_959590);
  sub_758B20();
  if (!swift_dynamicCastClass())
  {

    sub_10A2C(v46, &unk_959590);
    sub_BEB8(v50);
    sub_10A2C(&v43 + 8, &unk_93FBD0);
LABEL_28:
    sub_BEB8(&v48);
    goto LABEL_29;
  }

  sub_10A2C(&v43 + 8, &unk_93FBD0);
  v31 = v39;
  sub_758AE0();
  v32 = sub_765480();
  (*(v40 + 8))(v31, v41);
  if ((v32 & 1) == 0)
  {

    sub_10A2C(v46, &unk_959590);
    sub_BEB8(v50);
    goto LABEL_28;
  }

  sub_1ED18(v46, &v43, &unk_959590);

  sub_4B6FA4(v50, v38);
  sub_75FAE0();

  sub_10A2C(v46, &unk_959590);
  sub_BEB8(v50);
  v33 = sub_75FB30();
  (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  return sub_BEB8(&v48);
}