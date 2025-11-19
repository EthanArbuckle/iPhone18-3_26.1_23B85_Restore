uint64_t sub_4E43C(__int128 *a1)
{
  v53 = a1;
  v1 = sub_561AC();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  __chkstk_darwin(v1);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5605C();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_561CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = sub_5773C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  v24 = sub_5606C();
  v58 = *(v24 - 8);
  v59 = v24;
  v25 = *(v58 + 64);
  __chkstk_darwin(v24);
  v57 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2AFC(&qword_717B8, &unk_58EF0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_58B30;
  sub_576DC();
  sub_B038();
  v27 = sub_5796C();
  if (!v27)
  {
    v27 = [objc_opt_self() mainBundle];
  }

  v28 = v27;
  sub_561BC();
  (*(v17 + 16))(v20, v23, v16);
  (*(v9 + 16))(v12, v15, v8);
  v29 = [v28 bundleURL];
  v52 = v16;
  v30 = v8;
  v31 = v29;
  sub_560AC();

  (*(v54 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v55);
  v32 = v57;
  sub_5607C();

  (*(v9 + 8))(v15, v30);
  (*(v17 + 8))(v23, v52);
  v33 = v53;
  v67 = *v53;
  v34 = *(v53 + 2);
  v65 = *(v53 + 3);
  v66 = v34;
  v35 = *(v53 + 5);
  v36 = swift_allocObject();
  v37 = v33[1];
  *(v36 + 1) = *v33;
  *(v36 + 2) = v37;
  *(v36 + 3) = v33[2];
  sub_2E28(&v67, v64, &qword_72A08, &qword_5A398);
  sub_2E28(&v66, v64, &qword_72D70, &qword_5AF60);
  sub_2E28(&v65, v64, &qword_734A0, &qword_5AF68);

  v38 = v60;
  sub_5619C();
  v39 = sub_5615C();
  v41 = v40;
  (*(v61 + 8))(v38, v62);
  v42 = type metadata accessor for Choice();
  v43 = objc_allocWithZone(v42);
  v44 = &v43[OBJC_IVAR____TtC13AskToMessages6Choice_setEnabled];
  *v44 = nullsub_1;
  v44[1] = 0;
  v45 = &v43[OBJC_IVAR____TtC13AskToMessages6Choice_id];
  *v45 = v39;
  v45[1] = v41;
  v47 = v58;
  v46 = v59;
  (*(v58 + 16))(&v43[OBJC_IVAR____TtC13AskToMessages6Choice_title], v32, v59);
  v43[OBJC_IVAR____TtC13AskToMessages6Choice_buttonType] = 0;
  *&v43[OBJC_IVAR____TtC13AskToMessages6Choice_tintColor] = 0;
  v48 = &v43[OBJC_IVAR____TtC13AskToMessages6Choice_accessibilityIdentifier];
  *v48 = 0;
  v48[1] = 0;
  v49 = &v43[OBJC_IVAR____TtC13AskToMessages6Choice_action];
  *v49 = sub_52DE0;
  v49[1] = v36;
  v63.receiver = v43;
  v63.super_class = v42;
  v50 = objc_msgSendSuper2(&v63, "init");
  (*(v47 + 8))(v32, v46);
  result = v56;
  *(v56 + 32) = v50;
  return result;
}

uint64_t sub_4EA78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);
  v5 = *(a2 + 16);
  sub_2AFC(&qword_734C8, &qword_5AF80);
  sub_5708C();
  v3();
}

__n128 sub_4EAEC@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v14 = *a1;
  v13 = v3;
  sub_2E28(&v14, &v11, &qword_72A08, &qword_5A398);
  sub_2AFC(&qword_734C8, &qword_5AF80);
  sub_570AC();
  v4 = v11;
  v10 = v12;
  *a2 = swift_getKeyPath();
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for PersonInformationEditContentView();
  v6 = a2 + v5[7];
  LOBYTE(v13) = 0;
  sub_5707C();
  v7 = v12.n128_u64[0];
  *v6 = v11;
  *(v6 + 1) = v7;
  *(a2 + v5[5]) = v14;
  v8 = a2 + v5[6];
  *v8 = v4;
  result = v10;
  *(v8 + 8) = v10;
  return result;
}

uint64_t sub_4EC00(uint64_t a1)
{
  v2 = sub_56AEC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_2AFC(&qword_73490, &qword_5AF58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_56ADC();
  v11 = a1;
  sub_2AFC(&qword_734A8, &qword_5AF70);
  sub_3260(&qword_734B0, &qword_734A8, &qword_5AF70);
  sub_566CC();
  sub_3260(&qword_73498, &qword_73490, &qword_5AF58);
  sub_56B4C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_4EDEC(__int128 *a1)
{
  v10 = *a1;
  v2 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = v2;
  v3 = *(a1 + 5);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  sub_2E28(&v10, v7, &qword_72A08, &qword_5A398);
  sub_2E28(&v9, v7, &qword_72D70, &qword_5AF60);
  sub_2E28(&v8, v7, &qword_734A0, &qword_5AF68);

  sub_2AFC(&qword_734B8, &qword_5AF78);
  sub_3260(&qword_734C0, &qword_734B8, &qword_5AF78);
  return sub_570DC();
}

uint64_t sub_4EF48@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_5605C();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_561CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_5773C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v21 = sub_5606C();
  v35 = *(v21 - 8);
  v36 = v21;
  v22 = *(v35 + 64);
  __chkstk_darwin(v21);
  v34 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_576DC();
  sub_B038();
  v24 = sub_5796C();
  if (!v24)
  {
    v24 = [objc_opt_self() mainBundle];
  }

  v25 = v24;
  sub_561BC();
  (*(v14 + 16))(v17, v20, v13);
  (*(v6 + 16))(v9, v12, v5);
  v26 = [v25 bundleURL];
  v33 = v13;
  v27 = v5;
  v28 = v26;
  sub_560AC();

  (*(v37 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v38);
  v29 = v34;
  sub_5607C();

  (*(v6 + 8))(v12, v27);
  v30 = (*(v14 + 8))(v20, v33);
  __chkstk_darwin(v30);
  *(&v33 - 2) = v29;
  __chkstk_darwin(v31);
  *(&v33 - 2) = 0x6B72616D78;
  *(&v33 - 1) = 0xE500000000000000;
  sub_5706C();
  return (*(v35 + 8))(v29, v36);
}

uint64_t sub_4F3CC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_2AFC(&qword_73470, &qword_5AF40);
  sub_2C70(&qword_73478, &qword_5AF48);
  sub_2C70(&qword_73480, &qword_5AF50);
  sub_3260(&qword_73488, &qword_73478, &qword_5AF48);
  sub_2C70(&qword_73490, &qword_5AF58);
  sub_3260(&qword_73498, &qword_73490, &qword_5AF58);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_5677C();
}

uint64_t sub_4F580()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1(0);
}

uint64_t sub_4F5AC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for PersonInformationEditContentView() + 24);
  v18[1] = *v11;
  v19 = *(v11 + 8);
  sub_2AFC(&qword_735E8, &unk_5B0A8);
  result = sub_5710C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v18[0] + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  (*(v7 + 16))(v10, v18[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v6);

  v13 = sub_5745C();
  v15 = v14;
  result = (*(v7 + 8))(v10, v6);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  *a3 = v16;
  a3[1] = v17;
  return result;
}

uint64_t sub_4F738(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = (a4 + *(type metadata accessor for PersonInformationEditContentView() + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  sub_2AFC(&qword_735E8, &unk_5B0A8);
  sub_5710C();
  v12 = v16;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_53A28(v16);
  v12 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12[2] > a5)
  {
    v14 = *(sub_5748C() - 8);
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a5;

    sub_5746C();
    sub_5711C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_4F8C0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for PersonInformationEditContentView() + 24);
  v16[1] = *v11;
  v17 = *(v11 + 8);
  sub_2AFC(&qword_735E8, &unk_5B0A8);
  result = sub_5710C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v16[0] + 16) > a2)
  {
    (*(v7 + 16))(v10, v16[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v6);

    v13 = sub_5743C();
    v15 = v14;
    result = (*(v7 + 8))(v10, v6);
    *a3 = v13;
    a3[1] = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_4FA3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = (a4 + *(type metadata accessor for PersonInformationEditContentView() + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  sub_2AFC(&qword_735E8, &unk_5B0A8);
  sub_5710C();
  v12 = v16;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_53A28(v16);
  v12 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12[2] > a5)
  {
    v14 = *(sub_5748C() - 8);
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a5;
    sub_5744C();
    sub_5711C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_4FBC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v31 = sub_56B6C();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2AFC(&qword_73598, &qword_5B078);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v34 = sub_2AFC(&qword_735A0, &qword_5B080);
  v37 = *(v34 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v34);
  v30 = &v29 - v12;
  v13 = sub_2AFC(&qword_735A8, &qword_5B088);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v33 = sub_2AFC(&qword_735B0, &qword_5B090);
  v18 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v20 = &v29 - v19;
  v39 = v2;
  sub_2AFC(&qword_735B8, &qword_5B098);
  sub_53300();
  sub_56D7C();
  sub_56C9C();
  sub_56B5C();
  v21 = sub_3260(&qword_735D8, &qword_73598, &qword_5B078);
  sub_56E7C();
  v22 = *(v3 + 8);
  v23 = v31;
  v22(v6, v31);
  (*(v32 + 8))(v10, v7);
  sub_56CCC();
  sub_56B5C();
  v40 = v7;
  v41 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v34;
  v26 = v30;
  sub_56E7C();
  v22(v6, v23);
  (*(v37 + 8))(v26, v25);
  v40 = v25;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_56EDC();
  (*(v36 + 8))(v17, v27);
  *&v20[*(v33 + 36)] = 256;
  sub_533B0();
  sub_56EBC();
  return sub_2E90(v20, &qword_735B0, &qword_5B090);
}

uint64_t sub_50070(uint64_t a1)
{
  v2 = type metadata accessor for PersonInformationEditContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = a1 + *(v5 + 32);
  v12 = *v6;
  v13 = *(v6 + 8);
  sub_2AFC(&qword_735E8, &unk_5B0A8);
  sub_5710C();
  v7 = *(v11 + 16);

  v12 = 0;
  *&v13 = v7;
  swift_getKeyPath();
  sub_53520(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_536E0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2AFC(&qword_729E8, &unk_5A380);
  sub_2AFC(&qword_735D0, &qword_5B0A0);
  sub_30B78();
  sub_3260(&qword_735C8, &qword_735D0, &qword_5B0A0);
  return sub_5718C();
}

uint64_t sub_50264@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_50524(a1, a2, &v28);
  *&v27 = 0x4046000000000000;
  BYTE8(v27) = 0;
  v11 = type metadata accessor for PersonInformationEditContentView();
  v12 = (a1 + *(v11 + 20));
  v14 = *v12;
  v13 = v12[1];
  v15 = a1 + *(v11 + 24);
  *v39 = *v15;
  *&v39[8] = *(v15 + 8);

  sub_2AFC(&qword_735E8, &unk_5B0A8);
  result = sub_5710C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*&v37[0] + 16) > a2)
  {
    (*(v7 + 16))(v10, *&v37[0] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v6);

    v17 = sub_5747C();
    (*(v7 + 8))(v10, v6);
    v18 = v34;
    v37[6] = v33;
    v37[7] = v34;
    v37[8] = v35;
    v19 = v29;
    v20 = v30;
    v37[2] = v29;
    v37[3] = v30;
    v21 = v31;
    v22 = v32;
    v37[4] = v31;
    v37[5] = v32;
    v23 = v27;
    v24 = v28;
    v37[0] = v27;
    v37[1] = v28;
    *(a3 + 96) = v33;
    *(a3 + 112) = v18;
    *(a3 + 128) = v35;
    *(a3 + 32) = v19;
    *(a3 + 48) = v20;
    *(a3 + 64) = v21;
    *(a3 + 80) = v22;
    v25 = v36;
    v38 = v36;
    v26[0] = 0;
    *a3 = v23;
    *(a3 + 16) = v24;
    *(a3 + 144) = v25;
    *(a3 + 152) = 0x4046000000000000;
    *(a3 + 160) = 0;
    *(a3 + 168) = v14;
    *(a3 + 176) = v13;
    *(a3 + 184) = v17;
    sub_2E28(v37, v39, &qword_735F0, &qword_5B0D8);
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    *v39 = v27;
    *&v39[16] = v28;
    return sub_2E90(v39, &qword_735F0, &qword_5B0D8);
  }

  __break(1u);
  return result;
}

__n128 sub_50524@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for PersonInformationEditContentView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_53520(a1, v8);
  sub_578AC();
  v9 = sub_5789C();
  v10 = *(v6 + 80);
  v11 = (v10 + 32) & ~v10;
  v36 = v7 + 7;
  v12 = (v7 + 7 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v13 + v11);
  *(v13 + v12) = a2;
  sub_53520(a1, v8);
  v14 = sub_5789C();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v15 + v11);
  v16 = a2;
  *(v15 + v12) = a2;
  sub_5714C();
  v34 = *(&v37 + 1);
  v35 = v37;
  v32 = v38.n128_i64[1];
  v33 = v38.n128_u64[0];
  sub_53520(a1, v8);
  v17 = sub_5789C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v18 + v11);
  *(v18 + v12) = v16;
  sub_53520(a1, v8);
  v19 = sub_5789C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_536E0(v8, v20 + v11);
  *(v20 + v12) = v16;
  sub_2AFC(&qword_72A08, &qword_5A398);
  sub_5714C();
  v21 = v37;
  v22 = v38;
  sub_53520(a1, v8);
  v23 = (v10 + 16) & ~v10;
  v24 = (v36 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_536E0(v8, v25 + v23);
  *(v25 + v24) = v16;
  sub_53AE4(v35, v34, v33, v32, v21, *(&v21 + 1), v22.n128_i64[0], v22.n128_i64[1], &v37, sub_5398C, v25);
  v26 = v44;
  v27 = v31;
  *(v31 + 96) = v43;
  *(v27 + 112) = v26;
  *(v27 + 128) = v45;
  v28 = v40;
  *(v27 + 32) = v39;
  *(v27 + 48) = v28;
  v29 = v42;
  *(v27 + 64) = v41;
  *(v27 + 80) = v29;
  result = v38;
  *v27 = v37;
  *(v27 + 16) = result;
  return result;
}

uint64_t sub_508A4(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = sub_5600C();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v36 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersonInformationEditContentView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  sub_53520(a2, v11);
  v33[1] = sub_578AC();
  v12 = sub_5789C();
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_536E0(v11, v15 + v13);
  v35 = a3;
  *(v15 + v14) = a3;
  sub_53520(a2, v11);
  v16 = sub_5789C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_536E0(v11, v17 + v13);
  *(v17 + v14) = a3;
  sub_2AFC(&qword_72A08, &qword_5A398);
  sub_5714C();
  v18 = [v39 identifier];
  v19 = sub_5778C();
  v21 = v20;

  v40 = v19;
  v41 = v21;
  sub_2AFC(&qword_735F8, &qword_5B0E0);
  sub_5711C();

  v22 = v34;
  sub_53520(v34, v11);
  v23 = sub_5789C();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_536E0(v11, v24 + v13);
  v25 = v35;
  *(v24 + v14) = v35;
  sub_53520(v22, v11);
  v26 = sub_5789C();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = &protocol witness table for MainActor;
  sub_536E0(v11, v27 + v13);
  *(v27 + v14) = v25;
  sub_5714C();
  v28 = v36;
  sub_25D9C();
  v29 = sub_55FEC();
  v31 = v30;
  (*(v37 + 8))(v28, v38);
  v40 = v29;
  v41 = v31;
  sub_2AFC(&qword_73600, &qword_5B0E8);
  sub_5711C();
}

uint64_t sub_50CD8()
{
  v1 = sub_2AFC(&qword_73610, &qword_5B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  *v4 = sub_5697C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_2AFC(&qword_73618, &unk_5B278);
  sub_50EDC(v0, &v4[*(v5 + 44)]);
  v14 = *(v0 + 64);
  sub_2AFC(&qword_71F40, &unk_59520);
  sub_570AC();
  v6 = swift_allocObject();
  v7 = *(v0 + 112);
  *(v6 + 112) = *(v0 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(v0 + 128);
  v8 = *(v0 + 48);
  *(v6 + 48) = *(v0 + 32);
  *(v6 + 64) = v8;
  v9 = *(v0 + 80);
  *(v6 + 80) = *(v0 + 64);
  *(v6 + 96) = v9;
  v10 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v10;
  sub_541E0(v0, &v13);
  sub_3260(&qword_73620, &qword_73610, &qword_5B270);
  sub_54218();
  sub_56F1C();

  return sub_2E90(v4, &qword_73610, &qword_5B270);
}

uint64_t sub_50EDC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v100 = a2;
  v92 = sub_5605C();
  v90 = *(v92 - 8);
  v2 = *(v90 + 64);
  __chkstk_darwin(v92);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_561CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v85 - v10;
  v12 = sub_5773C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  v20 = sub_5606C();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v89 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2AFC(&qword_73630, &qword_5B288);
  v94 = *(v23 - 8);
  v95 = v23;
  v24 = *(v94 + 64);
  __chkstk_darwin(v23);
  v93 = &v85 - v25;
  v91 = sub_2AFC(&qword_73638, &qword_5B290);
  v26 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  *&v98 = &v85 - v27;
  *&v97 = sub_2AFC(&qword_73640, &qword_5B298);
  v28 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v99 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v96 = &v85 - v31;
  __chkstk_darwin(v32);
  v101 = &v85 - v33;
  v34 = v19;
  sub_576DC();
  sub_B038();
  v35 = sub_5796C();
  if (!v35)
  {
    v35 = [objc_opt_self() mainBundle];
  }

  v36 = v35;
  sub_561BC();
  (*(v13 + 16))(v16, v34, v12);
  (*(v5 + 16))(v8, v11, v4);
  v37 = [v36 bundleURL];
  v85 = v4;
  v86 = v12;
  v38 = v37;
  v39 = v87;
  sub_560AC();

  (*(v90 + 104))(v39, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v92);
  sub_5607C();

  (*(v5 + 8))(v11, v85);
  (*(v13 + 8))(v34, v86);
  v40 = v88;
  v41 = v88[1];
  v114 = *v88;
  v115 = v41;
  v42 = v88[1];
  v102 = *v88;
  v103 = v42;
  sub_2AFC(&qword_73600, &qword_5B0E8);
  sub_5713C();
  v43 = v93;
  sub_5720C();
  v44 = *(v40 + 48);
  v112 = *(v40 + 32);
  v113 = v44;
  v45 = *(v40 + 48);
  v102 = *(v40 + 32);
  v103 = v45;
  sub_2AFC(&qword_735F8, &qword_5B0E0);
  sub_5710C();
  if (v108)
  {

    v46 = sub_56B8C();
  }

  else
  {
    v46 = sub_56B7C();
  }

  v47 = v46;
  v48 = v98;
  (*(v94 + 32))(v98, v43, v95);
  *(v48 + *(v91 + 36)) = v47;
  v102 = v112;
  v103 = v113;
  sub_5710C();
  v49 = v108;
  if (v108)
  {
  }

  v50 = v49 != 0;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  v53 = v96;
  sub_B0DC(v48, v96, &qword_73638, &qword_5B290);
  v54 = (v53 + *(v97 + 36));
  *v54 = KeyPath;
  v54[1] = sub_42274;
  v54[2] = v52;
  sub_B0DC(v53, v101, &qword_73640, &qword_5B298);
  v102 = v114;
  v103 = v115;
  sub_5710C();
  v56 = v107;
  v55 = v108;

  v57 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v57 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57)
  {
    v102 = v112;
    v103 = v113;
    sub_5710C();
    if (!v108)
    {
      v75 = swift_allocObject();
      v76 = *(v40 + 112);
      *(v75 + 112) = *(v40 + 96);
      *(v75 + 128) = v76;
      *(v75 + 144) = *(v40 + 128);
      v77 = *(v40 + 48);
      *(v75 + 48) = *(v40 + 32);
      *(v75 + 64) = v77;
      v78 = *(v40 + 80);
      *(v75 + 80) = *(v40 + 64);
      *(v75 + 96) = v78;
      v79 = *(v40 + 16);
      *(v75 + 16) = *v40;
      *(v75 + 32) = v79;
      v80 = swift_allocObject();
      v81 = *(v40 + 112);
      *(v80 + 112) = *(v40 + 96);
      *(v80 + 128) = v81;
      *(v80 + 144) = *(v40 + 128);
      v82 = *(v40 + 48);
      *(v80 + 48) = *(v40 + 32);
      *(v80 + 64) = v82;
      v83 = *(v40 + 80);
      *(v80 + 80) = *(v40 + 64);
      *(v80 + 96) = v83;
      v84 = *(v40 + 16);
      *(v80 + 16) = *v40;
      *(v80 + 32) = v84;
      v107 = sub_544A8;
      v108 = v75;
      *&v109 = sub_518E8;
      *(&v109 + 1) = 0;
      *&v110 = sub_54578;
      *(&v110 + 1) = v80;
      v111 = 1;
      sub_541E0(v40, &v102);
      goto LABEL_14;
    }
  }

  v58 = swift_allocObject();
  v59 = *(v40 + 112);
  *(v58 + 112) = *(v40 + 96);
  *(v58 + 128) = v59;
  *(v58 + 144) = *(v40 + 128);
  v60 = *(v40 + 48);
  *(v58 + 48) = *(v40 + 32);
  *(v58 + 64) = v60;
  v61 = *(v40 + 80);
  *(v58 + 80) = *(v40 + 64);
  *(v58 + 96) = v61;
  v62 = *(v40 + 16);
  *(v58 + 16) = *v40;
  *(v58 + 32) = v62;
  v107 = sub_5428C;
  v108 = v58;
  v109 = 0u;
  v110 = 0u;
  v111 = 0;
LABEL_14:
  sub_541E0(v40, &v102);
  sub_2AFC(&qword_73648, &qword_5B2D0);
  sub_54294();
  sub_542E8();
  sub_56ABC();
  v97 = v102;
  v98 = v103;
  v63 = v104;
  v64 = v105;
  v65 = v106;
  v66 = v101;
  v67 = v99;
  sub_2E28(v101, v99, &qword_73640, &qword_5B298);
  v68 = v100;
  sub_2E28(v67, v100, &qword_73640, &qword_5B298);
  v69 = v68 + *(sub_2AFC(&qword_73678, &qword_5B2E0) + 48);
  v71 = v97;
  v70 = v98;
  *v69 = v97;
  *(v69 + 16) = v70;
  *(v69 + 32) = v63;
  *(v69 + 40) = v64;
  *(v69 + 48) = v65;
  v72 = v71;
  v73 = v70;
  sub_543F4(v71, *(&v71 + 1), v70, *(&v70 + 1), v63, v64, v65);
  sub_2E90(v66, &qword_73640, &qword_5B298);
  sub_54440(v72, *(&v72 + 1), v73, *(&v73 + 1), v63, v64, v65);
  return sub_2E90(v67, &qword_73640, &qword_5B298);
}

uint64_t sub_5185C(__int128 *a1)
{
  v3 = *a1;
  v5 = a1[1];
  sub_2AFC(&qword_73600, &qword_5B0E8);
  sub_5711C();
  v4 = a1[2];
  v6 = a1[3];
  sub_2AFC(&qword_735F8, &qword_5B0E0);
  return sub_5711C();
}

uint64_t sub_518E8@<X0>(void *a1@<X8>)
{
  v2 = sub_56B1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_56B9C();
  sub_5671C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_519F4(__int128 *a1, uint64_t a2)
{
  v5 = *(a2 + 96);
  v6 = *(a2 + 112);
  v7 = *(a2 + 128);
  v3 = *a1;
  v4 = a1[1];
  sub_2AFC(&qword_73680, &qword_5B2E8);
  return sub_5709C();
}

void sub_51A54(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 80);
    v3 = *(a2 + 88);
    v4 = a1;
    v2();
  }
}

uint64_t sub_51AA8()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_50CD8();
}

uint64_t sub_51AFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_5702C();
  v3 = sub_56FDC();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_51B60()
{
  v1 = sub_567AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_736A8, &qword_5B3E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  sub_2AFC(&qword_736B0, &unk_5B3F0);
  sub_547CC();
  sub_570DC();
  LOBYTE(v10) = sub_56CBC();
  sub_5668C();
  v13 = &v9[*(v6 + 36)];
  *v13 = v10;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_5679C();
  sub_54884();
  sub_5493C();
  sub_56E4C();
  (*(v2 + 8))(v5, v1);
  return sub_2E90(v9, &qword_736A8, &qword_5B3E8);
}

double sub_51D80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_5697C();
  v33 = 1;
  sub_51F44(a1, a2, a3, &v20);
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v46[8] = v28;
  v46[9] = v29;
  v46[10] = v30;
  v46[11] = v31;
  v46[4] = v24;
  v46[5] = v25;
  v46[6] = v26;
  v46[7] = v27;
  v46[0] = v20;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  sub_2E28(&v34, &v19, &qword_73608, &qword_5B230);
  sub_2E90(v46, &qword_73608, &qword_5B230);
  *&v32[135] = v42;
  *&v32[151] = v43;
  *&v32[167] = v44;
  *&v32[183] = v45;
  *&v32[71] = v38;
  *&v32[87] = v39;
  *&v32[103] = v40;
  *&v32[119] = v41;
  *&v32[7] = v34;
  *&v32[23] = v35;
  *&v32[39] = v36;
  *&v32[55] = v37;
  LOBYTE(a2) = v33;
  v9 = sub_56D3C();
  KeyPath = swift_getKeyPath();
  v11 = *&v32[128];
  *(a4 + 161) = *&v32[144];
  v12 = *&v32[176];
  *(a4 + 177) = *&v32[160];
  *(a4 + 193) = v12;
  v13 = *&v32[64];
  *(a4 + 97) = *&v32[80];
  v14 = *&v32[112];
  *(a4 + 113) = *&v32[96];
  *(a4 + 129) = v14;
  *(a4 + 145) = v11;
  v15 = *v32;
  *(a4 + 33) = *&v32[16];
  result = *&v32[32];
  v17 = *&v32[48];
  *(a4 + 49) = *&v32[32];
  *(a4 + 65) = v17;
  *(a4 + 81) = v13;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  v18 = *&v32[191];
  *(a4 + 17) = v15;
  *(a4 + 208) = v18;
  *(a4 + 216) = KeyPath;
  *(a4 + 224) = v9;
  return result;
}

uint64_t sub_51F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v7 = sub_573DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_573EC();
  v12 = sub_52388(a1, a2);
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v75 = v12;
  v76 = v14;
  v49 = sub_2B4C();
  v15 = sub_56E0C();
  v17 = v16;
  LOBYTE(a1) = v18;
  v19 = sub_56DCC();
  v21 = v20;
  LOBYTE(v8) = v22;
  sub_21FDC(v15, v17, a1 & 1);

  sub_56FCC();
  v23 = sub_56DAC();
  v52 = v24;
  v53 = v23;
  v51 = v25;
  v54 = v26;

  sub_21FDC(v19, v21, v8 & 1);

  v75 = sub_34EC();
  v76 = v27;
  v28 = sub_56E0C();
  v30 = v29;
  LOBYTE(a1) = v31;
  sub_56FDC();
  v32 = sub_56DAC();
  v50 = v33;
  LOBYTE(v8) = v34;
  v36 = v35;

  sub_21FDC(v28, v30, a1 & 1);

  sub_571FC();
  sub_567CC();
  v88 = v8 & 1;
  LOBYTE(v28) = v51 & 1;
  v58 = v51 & 1;
  v57 = 1;
  v37 = v50;
  *&v66 = v32;
  *(&v66 + 1) = v50;
  LOBYTE(v67) = v8 & 1;
  *(&v67 + 1) = *v87;
  DWORD1(v67) = *&v87[3];
  *(&v67 + 1) = v36;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v68 = v59;
  v69 = v60;
  v39 = v59;
  v38 = v60;
  v70 = v61;
  v71 = v62;
  v40 = v65;
  *&v56[7] = v66;
  *&v56[71] = v61;
  *&v56[55] = v60;
  *&v56[39] = v59;
  *&v56[23] = v67;
  *&v56[135] = v65;
  *&v56[119] = v64;
  *&v56[103] = v63;
  *&v56[87] = v62;
  v41 = v51 & 1;
  v43 = v52;
  v42 = v53;
  *a4 = v53;
  *(a4 + 8) = v43;
  *(a4 + 16) = v41;
  *(a4 + 24) = v54;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v44 = *&v56[112];
  *(a4 + 137) = *&v56[96];
  *(a4 + 153) = v44;
  *(a4 + 169) = *&v56[128];
  *(a4 + 184) = *&v56[143];
  v45 = *&v56[48];
  *(a4 + 73) = *&v56[32];
  *(a4 + 89) = v45;
  v46 = *&v56[80];
  *(a4 + 105) = *&v56[64];
  *(a4 + 121) = v46;
  v47 = *&v56[16];
  *(a4 + 41) = *v56;
  *(a4 + 57) = v47;
  v75 = v32;
  v76 = v37;
  v77 = v8 & 1;
  *v78 = *v87;
  *&v78[3] = *&v87[3];
  v79 = v36;
  v84 = v63;
  v85 = v64;
  v86 = v40;
  v80 = v39;
  v81 = v38;
  v82 = v61;
  v83 = v62;
  sub_2A33C(v42, v43, v28);

  sub_2E28(&v66, &v55, &qword_72150, &qword_59788);
  sub_2E90(&v75, &qword_72150, &qword_59788);
  sub_21FDC(v42, v43, v28);
}

uint64_t sub_52388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_561CC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_5773C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v12 = sub_573DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v3, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v19 = [objc_opt_self() mainBundle];
    }
  }

  else if (v18 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
  {
    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v20 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    if (v18 != enum case for _CommunicationHandle.Kind.custom(_:))
    {
      (*(v13 + 8))(v17, v12);
    }

    if (a2)
    {

      return a1;
    }

    sub_576DC();
    sub_B038();
    if (!sub_5796C())
    {
      v22 = [objc_opt_self() mainBundle];
    }
  }

  sub_561BC();
  return sub_5779C();
}

uint64_t sub_52734()
{
  v0 = sub_2AFC(&qword_736F0, &qword_5B448);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v19 - v2);
  v4 = sub_5702C();
  v5 = (v3 + *(sub_2AFC(&qword_727F8, &qword_59F08) + 36));
  v6 = *(sub_2AFC(&qword_71678, &qword_58970) + 28);
  v7 = enum case for Image.Scale.large(_:);
  v8 = sub_5704C();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *v3 = v4;
  v9 = (v3 + *(sub_2AFC(&qword_73708, &qword_5B450) + 36));
  v10 = *(sub_2AFC(&qword_73720, &qword_5B458) + 28);
  sub_56A3C();
  v11 = sub_56A4C();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  v14 = sub_56F5C();
  v15 = [v12 secondarySystemFillColor];
  v16 = sub_56F5C();
  v17 = (v3 + *(v0 + 36));
  *v17 = v14;
  v17[1] = v16;
  sub_56D0C();
  sub_5499C();
  sub_56E3C();
  return sub_2E90(v3, &qword_736F0, &qword_5B448);
}

uint64_t sub_5299C()
{
  v1 = sub_567AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_736E0, &qword_5B438);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  sub_2AFC(&qword_736E8, &qword_5B440);
  v13 = sub_2C70(&qword_736F0, &qword_5B448);
  v14 = sub_5499C();
  v21[0] = v13;
  v21[1] = v14;
  swift_getOpaqueTypeConformance2();
  sub_570DC();
  LOBYTE(v10) = sub_56CBC();
  sub_5668C();
  v15 = &v9[*(v6 + 36)];
  *v15 = v10;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_5679C();
  sub_54BC4();
  sub_5493C();
  sub_56E4C();
  (*(v2 + 8))(v5, v1);
  return sub_2E90(v9, &qword_736E0, &qword_5B438);
}

uint64_t sub_52BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5606C();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  result = sub_56DFC();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_52CDC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = sub_5702C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PersonInformationEditContentView()
{
  result = qword_73538;
  if (!qword_73538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_52D90()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_52DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2AFC(&qword_734D8, &qword_5AFC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_52EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2AFC(&qword_734D8, &qword_5AFC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_52FA4()
{
  sub_530A0();
  if (v0 <= 0x3F)
  {
    sub_5315C(319, &qword_71E20, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_530F8();
      if (v2 <= 0x3F)
      {
        sub_5315C(319, &unk_71E48, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_530A0()
{
  if (!qword_73548)
  {
    sub_5670C();
    v0 = sub_5669C();
    if (!v1)
    {
      atomic_store(v0, &qword_73548);
    }
  }
}

void sub_530F8()
{
  if (!qword_73550)
  {
    sub_2C70(&qword_72D70, &qword_5AF60);
    v0 = sub_5715C();
    if (!v1)
    {
      atomic_store(v0, &qword_73550);
    }
  }
}

void sub_5315C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_531AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_531FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_53250(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_53268(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_53300()
{
  result = qword_735C0;
  if (!qword_735C0)
  {
    sub_2C70(&qword_735B8, &qword_5B098);
    sub_3260(&qword_735C8, &qword_735D0, &qword_5B0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_735C0);
  }

  return result;
}

unint64_t sub_533B0()
{
  result = qword_735E0;
  if (!qword_735E0)
  {
    sub_2C70(&qword_735B0, &qword_5B090);
    sub_2C70(&qword_735A8, &qword_5B088);
    sub_2C70(&qword_735A0, &qword_5B080);
    sub_2C70(&qword_73598, &qword_5B078);
    sub_3260(&qword_735D8, &qword_73598, &qword_5B078);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_735E0);
  }

  return result;
}

uint64_t sub_53520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInformationEditContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53584()
{
  v1 = type metadata accessor for PersonInformationEditContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5670C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = (v5 + v1[6]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v9[2];

  v13 = *(v5 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_536E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonInformationEditContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_53744@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for PersonInformationEditContentView() - 8);
  sub_50264(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), *a1, v13);
  v6 = v21;
  a2[8] = v20;
  a2[9] = v6;
  v7 = v23;
  a2[10] = v22;
  a2[11] = v7;
  v8 = v17;
  a2[4] = v16;
  a2[5] = v8;
  v9 = v19;
  a2[6] = v18;
  a2[7] = v9;
  v10 = v13[1];
  *a2 = v13[0];
  a2[1] = v10;
  result = *&v14;
  v12 = v15;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_5382C()
{
  v1 = type metadata accessor for PersonInformationEditContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5670C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + v1[5] + 8);

  v10 = (v5 + v1[6]);
  v11 = *v10;

  v12 = v10[1];

  v13 = v10[2];

  v14 = *(v5 + v1[7] + 8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_5398C(void *a1)
{
  v3 = *(type metadata accessor for PersonInformationEditContentView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_508A4(a1, v1 + v4, v5);
}

uint64_t sub_53A3C(uint64_t a1)
{
  v2 = sub_2AFC(&qword_73750, &qword_5B4D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_2E28(a1, &v6 - v4, &qword_73750, &qword_5B4D0);
  return sub_568AC();
}

__n128 sub_53AE4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_5707C();
  type metadata accessor for CGRect(0);
  sub_5707C();
  result = v21;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v21.n128_u8[0];
  *(a9 + 72) = v21.n128_u64[1];
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = v21;
  *(a9 + 112) = v22;
  *(a9 + 128) = v23;
  return result;
}

uint64_t sub_53BC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PersonInformationEditContentView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_4F8C0(v1 + v4, v5, a1);
}

uint64_t sub_53C60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PersonInformationEditContentView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_4F5AC(v1 + v4, v5, a1);
}

uint64_t sub_53D00()
{
  v1 = type metadata accessor for PersonInformationEditContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  sub_2AFC(&qword_734D0, &unk_5AFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_5670C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v6 + v1[5] + 8);

  v11 = (v6 + v1[6]);
  v12 = *v11;

  v13 = v11[1];

  v14 = v11[2];

  v15 = *(v6 + v1[7] + 8);

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_53E68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PersonInformationEditContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

__n128 sub_53F1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_53F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_53F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_53FC8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_53FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_54044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_540B4()
{
  sub_2C70(&qword_735B0, &qword_5B090);
  sub_533B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5415C@<X0>(void (**a1)(void *a1)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 128);
  *(v3 + 112) = *(v1 + 112);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v1 + 144);
  v5 = *(v1 + 64);
  *(v3 + 48) = *(v1 + 48);
  *(v3 + 64) = v5;
  v6 = *(v1 + 96);
  *(v3 + 80) = *(v1 + 80);
  *(v3 + 96) = v6;
  v7 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = v7;
  *a1 = sub_5426C;
  a1[1] = v3;
  return sub_541E0(v1 + 16, v9);
}

unint64_t sub_54218()
{
  result = qword_73628;
  if (!qword_73628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73628);
  }

  return result;
}

unint64_t sub_54294()
{
  result = qword_73650;
  if (!qword_73650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73650);
  }

  return result;
}

unint64_t sub_542E8()
{
  result = qword_73658;
  if (!qword_73658)
  {
    sub_2C70(&qword_73648, &qword_5B2D0);
    sub_543A0();
    sub_3260(&qword_73668, &qword_73670, &qword_5B2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73658);
  }

  return result;
}

unint64_t sub_543A0()
{
  result = qword_73660;
  if (!qword_73660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73660);
  }

  return result;
}

uint64_t sub_543F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v7 = vars8;
  }
}

uint64_t sub_54440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

uint64_t sub_544A8()
{
  v2 = *(v0 + 80);
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

uint64_t sub_54500()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[11];

  v8 = v0[13];

  v9 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_545A4()
{
  result = qword_73688;
  if (!qword_73688)
  {
    sub_2C70(&qword_73690, &qword_5B330);
    sub_3260(&qword_73698, &qword_736A0, &unk_5B338);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73688);
  }

  return result;
}

uint64_t sub_54688()
{
  sub_2C70(&qword_73610, &qword_5B270);
  sub_3260(&qword_73620, &qword_73610, &qword_5B270);
  sub_54218();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5476C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_547A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_547CC()
{
  result = qword_736B8;
  if (!qword_736B8)
  {
    sub_2C70(&qword_736B0, &unk_5B3F0);
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736B8);
  }

  return result;
}

unint64_t sub_54884()
{
  result = qword_736C0;
  if (!qword_736C0)
  {
    sub_2C70(&qword_736A8, &qword_5B3E8);
    sub_3260(&qword_736C8, &qword_736D0, &qword_5B400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736C0);
  }

  return result;
}

unint64_t sub_5493C()
{
  result = qword_736D8;
  if (!qword_736D8)
  {
    sub_567AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736D8);
  }

  return result;
}

unint64_t sub_5499C()
{
  result = qword_736F8;
  if (!qword_736F8)
  {
    sub_2C70(&qword_736F0, &qword_5B448);
    sub_54A54();
    sub_3260(&qword_73728, &qword_73730, &qword_5B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_736F8);
  }

  return result;
}

unint64_t sub_54A54()
{
  result = qword_73700;
  if (!qword_73700)
  {
    sub_2C70(&qword_73708, &qword_5B450);
    sub_54B0C();
    sub_3260(&qword_73718, &qword_73720, &qword_5B458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73700);
  }

  return result;
}

unint64_t sub_54B0C()
{
  result = qword_73710;
  if (!qword_73710)
  {
    sub_2C70(&qword_727F8, &qword_59F08);
    sub_3260(&qword_71760, &qword_71678, &qword_58970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73710);
  }

  return result;
}

unint64_t sub_54BC4()
{
  result = qword_73738;
  if (!qword_73738)
  {
    sub_2C70(&qword_736E0, &qword_5B438);
    sub_3260(&qword_73740, &qword_73748, &qword_5B468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73738);
  }

  return result;
}

uint64_t sub_54CFC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  sub_2C70(a2, a3);
  sub_567AC();
  a4();
  sub_5493C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for RenderingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_54F28(char a1)
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v16._countAndFlagsBits = 0x800000000005D0E0;
  v19._countAndFlagsBits = 0xD000000000000019;
  v19._object = 0x800000000005D0E0;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v5.super.isa = v4;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v6 = sub_55EFC(v19, v21, v5, v22, v16);

  v18 = v6;
  v7 = [v3 bundleForClass:ObjCClassFromMetadata];
  if (a1)
  {
    if (a1 == 1)
    {
      v8._object = 0x800000000005D120;
      v17._countAndFlagsBits = 0x800000000005D120;
      v8._countAndFlagsBits = 0xD00000000000001CLL;
    }

    else
    {
      v8._object = 0x800000000005D100;
      v17._countAndFlagsBits = 0x800000000005D100;
      v8._countAndFlagsBits = 0xD00000000000001ELL;
    }

    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10.super.isa = v7;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
  }

  else
  {
    v8._object = 0x800000000005D140;
    v17._countAndFlagsBits = 0x800000000005D140;
    v8._countAndFlagsBits = 0xD000000000000018;
    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10.super.isa = v7;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
  }

  v12 = sub_55EFC(v8, v9, v10, v11, v17);
  v14 = v13;

  v20._countAndFlagsBits = v12;
  v20._object = v14;
  sub_577DC(v20);

  return v18;
}

unint64_t sub_550F8()
{
  result = qword_73758;
  if (!qword_73758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73758);
  }

  return result;
}

uint64_t sub_5514C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_55194(uint64_t result, int a2, int a3)
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

double sub_55200@<D0>(uint64_t a1@<X8>)
{
  v36 = sub_5697C();
  LOBYTE(v49[0]) = 1;
  sub_554E8(v38);
  v32 = v38[1];
  v33 = v38[0];
  v2 = v39;
  v34 = v41;
  v35 = v40;
  v3 = v42;
  v37 = v43;
  LOBYTE(v38[0]) = v39;
  LOBYTE(v48[0]) = v42;
  v30 = v49[0];
  sub_56CDC();
  sub_56D0C();
  v31 = sub_56D2C();

  KeyPath = swift_getKeyPath();
  v28 = sub_56FDC();
  v27 = swift_getKeyPath();
  v4 = sub_56CCC();
  sub_5668C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(v49[0]) = 0;
  v13 = sub_56C9C();
  LOBYTE(v38[0]) = 1;
  v14 = [objc_opt_self() quaternarySystemFillColor];
  v15 = sub_56FEC();
  v16 = sub_56CAC();
  v17 = (a1 + *(sub_2AFC(&qword_73768, &qword_5B680) + 36));
  v18 = *(sub_567BC() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_56A0C();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v17 = _Q0;
  *&v17[*(sub_2AFC(&qword_71668, &qword_58960) + 36)] = 256;
  *a1 = v36;
  *(a1 + 8) = 0;
  *(a1 + 16) = v30;
  *(a1 + 17) = v38[0];
  *(a1 + 20) = *(v38 + 3);
  *(a1 + 24) = v33;
  *(a1 + 32) = v32;
  *(a1 + 40) = v2;
  *(a1 + 41) = v49[0];
  *(a1 + 44) = *(v49 + 3);
  *(a1 + 48) = v35;
  *(a1 + 56) = v34;
  *(a1 + 64) = v3;
  *(a1 + 68) = *(v48 + 3);
  *(a1 + 65) = v48[0];
  *(a1 + 72) = v37;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v31;
  *(a1 + 96) = v27;
  *(a1 + 104) = v28;
  *(a1 + 112) = v4;
  *(a1 + 116) = *&v47[3];
  *(a1 + 113) = *v47;
  *(a1 + 120) = v6;
  *(a1 + 128) = v8;
  *(a1 + 136) = v10;
  *(a1 + 144) = v12;
  *(a1 + 152) = 0;
  *(a1 + 153) = *v46;
  *(a1 + 156) = *&v46[3];
  *(a1 + 160) = v13;
  *(a1 + 161) = *v45;
  *(a1 + 164) = *&v45[3];
  result = 0.0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 201) = *v44;
  *(a1 + 204) = *&v44[3];
  *(a1 + 208) = v15;
  *(a1 + 216) = v16;
  return result;
}

uint64_t sub_554E8@<X0>(uint64_t a1@<X8>)
{
  sub_2B4C();

  v2 = sub_56E0C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_5702C();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_2A33C(v2, v4, v6);

  sub_21FDC(v2, v4, v6);
}

uint64_t sub_555CC@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = sub_567AC();
  v2 = *(v18[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_73760, &qword_5B678);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v15[5] = v14;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v13;
  v18[7] = v14;

  sub_2AFC(&qword_73768, &qword_5B680);
  sub_558AC();
  sub_570DC();
  sub_5679C();
  sub_3260(&qword_737D8, &qword_73760, &qword_5B678);
  sub_5493C();
  v16 = v18[0];
  sub_56E4C();
  (*(v2 + 8))(v5, v16);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_55838()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_55878()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

double sub_558A0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_55200(a1);
}

unint64_t sub_558AC()
{
  result = qword_73770;
  if (!qword_73770)
  {
    sub_2C70(&qword_73768, &qword_5B680);
    sub_55964();
    sub_3260(&qword_71758, &qword_71668, &qword_58960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73770);
  }

  return result;
}

unint64_t sub_55964()
{
  result = qword_73778;
  if (!qword_73778)
  {
    sub_2C70(&qword_73780, &qword_5B688);
    sub_55A78(&qword_73788, &qword_73790, &qword_5B690, sub_55A48);
    sub_3260(&qword_71748, &qword_71750, &qword_58A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73778);
  }

  return result;
}

uint64_t sub_55A78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2C70(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_55AFC()
{
  result = qword_737A8;
  if (!qword_737A8)
  {
    sub_2C70(&qword_737B0, &qword_5B6A0);
    sub_55BB4();
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737A8);
  }

  return result;
}

unint64_t sub_55BB4()
{
  result = qword_737B8;
  if (!qword_737B8)
  {
    sub_2C70(&qword_737C0, &qword_5B6A8);
    sub_3260(&qword_737C8, &qword_737D0, &unk_5B6B0);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737B8);
  }

  return result;
}

uint64_t sub_55CA8()
{
  sub_2C70(&qword_73760, &qword_5B678);
  sub_567AC();
  sub_3260(&qword_737D8, &qword_73760, &qword_5B678);
  sub_5493C();
  return swift_getOpaqueTypeConformance2();
}