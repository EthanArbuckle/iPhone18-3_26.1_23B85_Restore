uint64_t sub_100038A3C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_10002A748(*(v0 + 16), *(v0 + 24), v1);
  }

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100038A9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038AD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038B0C()
{
  v1 = *(type metadata accessor for PrimarySettingsListFamilyLink() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for FamilyRowStatus();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + *(type metadata accessor for PrimarySettingsListFamilyLinkModel() + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100038BFC()
{
  sub_100045DB4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100038C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100038CB4()
{
  result = qword_10015BAA0;
  if (!qword_10015BAA0)
  {
    sub_100052374(&qword_10015BAA8, &qword_1001115F0);
    sub_1000525A0(&qword_10015BAB0, &qword_10015BAB8, &qword_1001115F8);
    sub_1000525A0(&qword_10015BAC0, &qword_10015BAC8, &qword_100111600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAA0);
  }

  return result;
}

unint64_t sub_100038D94()
{
  result = qword_10015BAD0;
  if (!qword_10015BAD0)
  {
    sub_100052374(&qword_10015BAD8, &qword_100111608);
    sub_100038E4C();
    sub_1000525A0(&qword_10015BAE8, &qword_10015BAF0, &qword_100111610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAD0);
  }

  return result;
}

unint64_t sub_100038E4C()
{
  result = qword_10015BAE0;
  if (!qword_10015BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAE0);
  }

  return result;
}

unint64_t sub_100038EA0()
{
  result = qword_10015BA90;
  if (!qword_10015BA90)
  {
    sub_100052374(&qword_10015BA98, &qword_1001115E8);
    sub_100038CB4();
    sub_100038D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA90);
  }

  return result;
}

unint64_t sub_100038F2C()
{
  result = qword_10015BB08;
  if (!qword_10015BB08)
  {
    sub_100052374(&qword_10015BB10, &qword_100111620);
    sub_1000525A0(&qword_10015BB18, &qword_10015BB20, &qword_100111628);
    sub_1000525A0(&qword_10015BB28, &qword_10015BB30, &qword_100111630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB08);
  }

  return result;
}

unint64_t sub_10003900C()
{
  result = qword_10015BAF8;
  if (!qword_10015BAF8)
  {
    sub_100052374(&qword_10015BB00, &qword_100111618);
    sub_100038F2C();
    sub_100039098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BAF8);
  }

  return result;
}

unint64_t sub_100039098()
{
  result = qword_10015BB38;
  if (!qword_10015BB38)
  {
    sub_100052374(&qword_10015BB40, &qword_100111638);
    sub_1000525A0(&qword_10015BB48, &qword_10015BB50, &qword_100111640);
    sub_1000525A0(&qword_10015BB58, &qword_10015BB60, &qword_100111648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB38);
  }

  return result;
}

unint64_t sub_100039178()
{
  result = qword_10015BB68;
  if (!qword_10015BB68)
  {
    sub_100052374(&qword_10015BA40, &qword_1001115C0);
    sub_100039230();
    sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB68);
  }

  return result;
}

unint64_t sub_100039230()
{
  result = qword_10015BA58;
  if (!qword_10015BA58)
  {
    sub_100052374(&qword_10015BA38, &qword_1001115B8);
    sub_1000525A0(&qword_10015BA60, &qword_10015BA68, &qword_1001115D8);
    sub_1000354E8(&qword_10015BA70, type metadata accessor for PrimarySettingsListFollowUpHeader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA58);
  }

  return result;
}

uint64_t sub_100039318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_10004DED0(&qword_10015E940, &unk_100113180);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  if ((sub_10003373C(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(a1 + 32);
  v18 = *(a2 + 32);
  if (v17)
  {
    if (!v18 || (*(a1 + 24) != *(a2 + 24) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v18)
  {
    goto LABEL_15;
  }

  v27 = type metadata accessor for PrimarySettingsListSectionModel();
  v19 = *(v27 + 24);
  v20 = *(v13 + 48);
  sub_10002C98C(a1 + v19, v16);
  sub_10002C98C(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1000068B0(v16, &unk_10015FB70, &unk_100112010);
LABEL_18:
      v22 = sub_100039FD0(*(a1 + *(v27 + 28)), *(a2 + *(v27 + 28)));
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_10002C98C(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_1000068B0(v16, &qword_10015E940, &unk_100113180);
    goto LABEL_15;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_10006115C();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_1000068B0(v16, &unk_10015FB70, &unk_100112010);
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

id sub_100039F14(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppQuickAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100039FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = v24 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_10002EA10(v14, v11, type metadata accessor for PrimarySettingsListItemModel);
    if (!v12)
    {
      break;
    }

    sub_10002EA10(v15, v8, type metadata accessor for PrimarySettingsListItemModel);
    v18 = *(v11 + 1);
    v24[0] = *v11;
    v24[1] = v18;
    v25 = v11[32];
    v19 = v8[1];
    v26[0] = *v8;
    v26[1] = v19;
    v27 = v8[2].i8[0];
    if ((sub_10002BB48(v24, v26) & 1) == 0 || (sub_10003A2B4(&v11[*(v4 + 20)], v8->i64 + *(v4 + 20)) & 1) == 0)
    {
      sub_10002E8E8(v8, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E8E8(v11, type metadata accessor for PrimarySettingsListItemModel);
      return 0;
    }

    v20 = *(v4 + 24);
    v21 = *&v11[v20];
    v22 = *(v8->i64 + v20);
    sub_10002E8E8(v8, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E8E8(v11, type metadata accessor for PrimarySettingsListItemModel);
    result = v21 == v22;
    v23 = v21 != v22 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v23)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10003A204(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

BOOL sub_10003A218(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v12 = a2[2].i8[0];
  return (sub_10002BB48(v9, v11) & 1) != 0 && (sub_10003A2B4(a1 + *(a3 + 20), a2->i64 + *(a3 + 20)) & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2->i64 + *(a3 + 24));
}

uint64_t sub_10003A2B4(uint64_t a1, uint64_t a2)
{
  v142 = a1;
  v3 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v141 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrimarySettingsListItemViewType();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v139 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v140 = &v135 - v11;
  v12 = __chkstk_darwin(v10);
  v138 = &v135 - v13;
  v14 = __chkstk_darwin(v12);
  v137 = &v135 - v15;
  v16 = __chkstk_darwin(v14);
  v136 = (&v135 - v17);
  v18 = __chkstk_darwin(v16);
  v135 = &v135 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = (&v135 - v21);
  v23 = __chkstk_darwin(v20);
  v25 = (&v135 - v24);
  v26 = __chkstk_darwin(v23);
  v28 = (&v135 - v27);
  v29 = __chkstk_darwin(v26);
  v31 = &v135 - v30;
  __chkstk_darwin(v29);
  v33 = &v135 - v32;
  v34 = sub_10004DED0(&qword_10015B438, &qword_100110900);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v38 = &v135 - v37;
  v39 = &v135 + *(v36 + 56) - v37;
  sub_10003B29C(v142, &v135 - v37);
  v40 = a2;
  v41 = v39;
  sub_10003B29C(v40, v39);
  v142 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v43 = v142;
        if (EnumCaseMultiPayload == 6)
        {
          v44 = v136;
          sub_10003B29C(v142, v136);
          v45 = v44[1];
          v143 = *v44;
          v144[0] = v45;
          v144[1] = v44[2];
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v46 = *(v39 + 1);
            v145 = *v39;
            v146[0] = v46;
            v146[1] = *(v39 + 2);
            v47 = sub_1000547D0(&v143, &v145);
            v150 = v145;
            v151 = v146[0];
            sub_100043088(&v150);
            v149 = *(v146 + 8);
            sub_10004322C(&v149);
            v153 = v143;
            v154 = v144[0];
            sub_100043088(&v153);
            v152 = *(v144 + 8);
            v48 = &v152;
LABEL_47:
            sub_10004322C(v48);
            goto LABEL_48;
          }

          v145 = *v44;
          LOBYTE(v146[0]) = *(v44 + 16);
          sub_100043088(&v145);
          v153 = *(v144 + 8);
          sub_10004322C(&v153);
          goto LABEL_66;
        }

        v90 = v137;
        sub_10003B29C(v142, v137);
        v91 = *(v90 + 16);
        v143 = *v90;
        v144[0] = v91;
        v144[1] = *(v90 + 32);
        *&v144[2] = *(v90 + 48);
        v92 = swift_getEnumCaseMultiPayload();
        if (v92 == 7)
        {
          goto LABEL_45;
        }

        v145 = *v90;
        v106 = *(v90 + 16);
        goto LABEL_62;
      }

      v43 = v142;
      v65 = v135;
      sub_10003B29C(v142, v135);
      v67 = *v65;
      v66 = *(v65 + 8);
      v68 = *(v65 + 16);
      v70 = *(v65 + 24);
      v69 = *(v65 + 32);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v72 = *v39;
        v71 = *(v39 + 1);
        v73 = v39[16];
        v74 = *(v39 + 3);
        v75 = *(v41 + 4);
        if (v68 <= 1)
        {
          if (!v68)
          {
            if (v73)
            {
              v76 = v72;
              v77 = v71;
              v78 = v73;
LABEL_128:
              sub_10002A748(v76, v77, v78);

              v130 = v67;
              v131 = v66;
              v132 = 0;
              goto LABEL_129;
            }

            v141 = v71;
            sub_1000548F0();
            v140 = v69;
            v133 = static NSObject.== infix(_:_:)();
            v69 = v140;
            v71 = v141;
            if ((v133 & 1) == 0)
            {
              v76 = v72;
              v77 = v141;
              v78 = 0;
              goto LABEL_128;
            }

            goto LABEL_132;
          }

          if (v73 != 1)
          {
            v125 = v72;
            v126 = v71;
            v127 = v73;
            goto LABEL_125;
          }

          if (v67 != v72 || v66 != v71)
          {
            v141 = v71;
            v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v71 = v141;
            if ((v124 & 1) == 0)
            {
              v125 = v72;
              v126 = v141;
              v127 = 1;
LABEL_125:
              sub_10002A748(v125, v126, v127);

              v130 = v67;
              v131 = v66;
              v132 = 1;
              goto LABEL_129;
            }
          }

LABEL_132:
          if (v70 == v74 && v69 == v75)
          {
            sub_10002A748(v72, v71, v73);

            sub_10002A748(v67, v66, v68);
            goto LABEL_135;
          }

          v134 = v71;
          v129 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10002A748(v72, v134, v73);

          sub_10002A748(v67, v66, v68);
LABEL_140:

          v122 = v142;
          if ((v129 & 1) == 0)
          {
            goto LABEL_138;
          }

LABEL_141:
          sub_10002C698(v122, type metadata accessor for PrimarySettingsListItemViewType);
          v47 = 1;
          return v47 & 1;
        }

        if (v68 == 2)
        {
          if (v73 == 2)
          {
            if (v67 == v72 && v66 == v71)
            {
              goto LABEL_132;
            }

            v141 = v71;
            v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v71 = v141;
            if (v117)
            {
              goto LABEL_132;
            }

            v118 = v72;
            v119 = v141;
            v120 = 2;
          }

          else
          {
            v118 = v72;
            v119 = v71;
            v120 = v73;
          }

          sub_10002A748(v118, v119, v120);

          v130 = v67;
          v131 = v66;
          v132 = 2;
LABEL_129:
          sub_10002A748(v130, v131, v132);
          goto LABEL_137;
        }

        if (v67 | v66)
        {
          if (v73 == 3 && v72 == 1 && !v71)
          {
            goto LABEL_132;
          }
        }

        else if (v73 == 3 && !(v71 | v72))
        {
          goto LABEL_132;
        }

        sub_10002A748(v72, v71, v73);

        goto LABEL_137;
      }

      sub_10002A748(v67, v66, v68);
LABEL_65:

      goto LABEL_66;
    }

    v56 = v39;
    if (EnumCaseMultiPayload == 8)
    {
      v43 = v142;
      v79 = v138;
      sub_10003B29C(v142, v138);
      v80 = *(v79 + 16);
      v143 = *v79;
      v144[0] = v80;
      v144[1] = *(v79 + 32);
      *&v144[2] = *(v79 + 48);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_45:
        v93 = *(v39 + 1);
        v145 = *v39;
        v146[0] = v93;
        v146[1] = *(v39 + 2);
        *&v146[2] = *(v39 + 6);
        v47 = sub_1000430DC(&v143, &v145);
        v150 = v145;
        v151 = v146[0];
        sub_100043088(&v150);
        v148 = *(v146 + 8);
        sub_10004322C(&v148);
        v147 = *(&v146[1] + 8);
        sub_10004322C(&v147);
        v153 = v143;
        v154 = v144[0];
        sub_100043088(&v153);
        goto LABEL_46;
      }

      v145 = *v79;
      v106 = *(v79 + 16);
LABEL_62:
      LOBYTE(v146[0]) = v106;
      sub_100043088(&v145);
LABEL_63:
      v153 = *(v144 + 8);
      sub_10004322C(&v153);
      v150 = *(&v144[1] + 8);
      sub_10004322C(&v150);
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v43 = v142;
      v57 = v140;
      sub_10003B29C(v142, v140);
      v58 = *(v57 + 16);
      v143 = *v57;
      v144[0] = v58;
      v144[1] = *(v57 + 32);
      *&v144[2] = *(v57 + 48);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v59 = *(v39 + 1);
        v145 = *v39;
        v146[0] = v59;
        v146[1] = *(v39 + 2);
        *&v146[2] = *(v39 + 6);
        v47 = sub_10005502C(&v143, &v145);
        v150 = v145;
        v151 = v146[0];
        sub_1000068B0(&v150, &qword_10015B440, &qword_100110908);
        v148 = *(v146 + 8);
        sub_10004322C(&v148);
        v147 = *(&v146[1] + 8);
        sub_10004322C(&v147);
        v153 = v143;
        v154 = v144[0];
        sub_1000068B0(&v153, &qword_10015B440, &qword_100110908);
LABEL_46:
        v152 = *(v144 + 8);
        sub_10004322C(&v152);
        v149 = *(&v144[1] + 8);
        v48 = &v149;
        goto LABEL_47;
      }

      v145 = *v57;
      LOBYTE(v146[0]) = *(v57 + 16);
      sub_1000068B0(&v145, &qword_10015B440, &qword_100110908);
      goto LABEL_63;
    }

    v43 = v142;
    v94 = v139;
    sub_10003B29C(v142, v139);
    v96 = *v94;
    v95 = *(v94 + 8);
    v97 = *(v94 + 16);
    v99 = *(v94 + 24);
    v98 = *(v94 + 32);
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      sub_100054F18(v96, v95, v97);
      goto LABEL_65;
    }

    v101 = *v56;
    v100 = *(v56 + 1);
    v102 = v56[16];
    v103 = *(v56 + 3);
    v104 = *(v56 + 4);
    if (v97 == 255)
    {
      v141 = v104;
      if (v102 != 255)
      {

        sub_100054F18(v101, v100, v102);
        goto LABEL_137;
      }
    }

    else
    {
      if (v102 == 255)
      {
        sub_100054F18(v96, v95, v97);

        goto LABEL_137;
      }

      v140 = v103;
      v141 = v104;
      sub_100039F14(v101, v100, v102);
      v105 = sub_10006F358(v96, v95, v97, v101, v100, v102);
      sub_100054F18(v101, v100, v102);
      v103 = v140;
      if ((v105 & 1) == 0)
      {
        sub_100054F18(v101, v100, v102);

        sub_100054F18(v96, v95, v97);
LABEL_137:

        v122 = v142;
LABEL_138:
        sub_10002C698(v122, type metadata accessor for PrimarySettingsListItemViewType);
        goto LABEL_67;
      }
    }

    if (v99 == v103 && v98 == v141)
    {
      sub_100054F18(v101, v100, v102);

      sub_100054F18(v96, v95, v97);
LABEL_135:

      v122 = v142;
      goto LABEL_141;
    }

    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100054F18(v101, v100, v102);

    sub_100054F18(v96, v95, v97);
    goto LABEL_140;
  }

  v49 = v141;
  if (EnumCaseMultiPayload <= 1)
  {
    v43 = v142;
    if (EnumCaseMultiPayload)
    {
      sub_10003B29C(v142, v31);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100057574(v39, v49);
        v47 = sub_100054B20(v31, v49);
        sub_10002C698(v49, type metadata accessor for PrimarySettingsListFamilyLinkModel);
        sub_10002C698(v31, type metadata accessor for PrimarySettingsListFamilyLinkModel);
        goto LABEL_48;
      }

      sub_10002C698(v31, type metadata accessor for PrimarySettingsListFamilyLinkModel);
    }

    else
    {
      sub_10003B29C(v142, v33);
      v60 = *v33;
      v61 = *(v33 + 1);
      v62 = v33[16];
      if (!swift_getEnumCaseMultiPayload())
      {
        v108 = *v41;
        v109 = *(v41 + 1);
        v110 = v41[16];
        v111 = v62 >> 6;
        if (v62 >> 6 > 1)
        {
          if (v111 == 2)
          {
            if ((v110 & 0xC0) == 0x80)
            {
              if (v60 != v108 || v61 != v109)
              {
                goto LABEL_144;
              }

              goto LABEL_87;
            }
          }

          else
          {
            v128 = v110 >= 0xC0 && (v109 | v108) == 0;
            if (v128 && v110 == 192)
            {
              goto LABEL_87;
            }
          }
        }

        else if (v111)
        {
          if ((v110 & 0xC0) == 0x40)
          {
            if (v60 != v108)
            {
              goto LABEL_144;
            }

            goto LABEL_87;
          }
        }

        else
        {
          if (v110 < 0x40)
          {
            if (v60 == v108 && v61 == v109)
            {
              v115 = v41[16];
              sub_100045DB4(v60, v61, v110);
              sub_100045DB4(v60, v61, v62);
            }

            else
            {
              v113 = *v41;
              v114 = *(v41 + 1);
              v115 = v41[16];
              v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100045DB4(v113, v114, v115);
              sub_100045DB4(v60, v61, v62);
              if ((v116 & 1) == 0)
              {
                goto LABEL_144;
              }
            }

            if ((v62 ^ v115))
            {
              goto LABEL_144;
            }

            goto LABEL_87;
          }

          sub_100045DB4(v108, v109, v110);
          v108 = v60;
          v109 = v61;
          LOBYTE(v110) = v62;
        }

        sub_100045DB4(v108, v109, v110);
        goto LABEL_144;
      }

      sub_100045DB4(v60, v61, v62);
    }

LABEL_66:
    sub_1000068B0(v43, &qword_10015B438, &qword_100110900);
LABEL_67:
    v47 = 0;
    return v47 & 1;
  }

  v43 = v142;
  if (EnumCaseMultiPayload != 2)
  {
    v50 = v39;
    if (EnumCaseMultiPayload == 3)
    {
      sub_10003B29C(v142, v25);
      v52 = *v25;
      v51 = v25[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_65;
      }

      if (v52 == *v39 && v51 == *(v39 + 1))
      {

        goto LABEL_87;
      }

      v54 = *(v39 + 1);
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {
LABEL_87:
        v122 = v43;
        goto LABEL_141;
      }
    }

    else
    {
      v81 = v22;
      sub_10003B29C(v142, v22);
      v83 = *v22;
      v82 = v22[1];
      v84 = v81[2];
      v85 = swift_getEnumCaseMultiPayload();
      if (v85 != 4)
      {
        goto LABEL_65;
      }

      v86 = v50[2];
      if (v83 == *v50 && v82 == v50[1])
      {
        v121 = v50[1];
      }

      else
      {
        v88 = v50[1];
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v89 & 1) == 0)
        {
          goto LABEL_144;
        }
      }

      if (v84 == v86)
      {
        goto LABEL_87;
      }
    }

LABEL_144:
    sub_10002C698(v43, type metadata accessor for PrimarySettingsListItemViewType);
    goto LABEL_67;
  }

  sub_10003B29C(v142, v28);
  v63 = v28[1];
  v143 = *v28;
  v144[0] = v63;
  v144[1] = v28[2];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v145 = *v28;
    LOBYTE(v146[0]) = *(v28 + 16);
    sub_100043088(&v145);
    v153 = *(v144 + 8);
    sub_10004322C(&v153);

    goto LABEL_66;
  }

  v64 = *(v39 + 1);
  v145 = *v39;
  v146[0] = v64;
  v146[1] = *(v39 + 2);
  v47 = sub_1000547D0(&v143, &v145);
  v150 = v145;
  v151 = v146[0];
  sub_100043088(&v150);
  v149 = *(v146 + 8);
  sub_10004322C(&v149);

  v153 = v143;
  v154 = v144[0];
  sub_100043088(&v153);
  v152 = *(v144 + 8);
  sub_10004322C(&v152);

LABEL_48:
  sub_10002C698(v43, type metadata accessor for PrimarySettingsListItemViewType);
  return v47 & 1;
}

id sub_10003B21C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for SettingsAppDebugMenuGestureProxyView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC11SettingsAppP33_F16170C8CD22B033163CFC9AD59D599336SettingsAppDebugMenuGestureProxyView_perform];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10003B29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemViewType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B33C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SettingsNavigationSplitView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10003B3D8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100059CA0(a1, v5, &qword_10015EF28, &qword_100116590);
  sub_10003B4BC(v5);
}

uint64_t sub_10003B4BC(uint64_t a1)
{
  v3 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  sub_100059CA0(v1 + v10, v9, &qword_10015EF28, &qword_100116590);
  v11 = sub_10003B724(v9, a1);
  sub_1000068B0(v9, &qword_10015EF28, &qword_100116590);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[2] = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_100059CA0(a1, v9, &qword_10015EF28, &qword_100116590);
    sub_100059CA0(v1 + v10, v7, &qword_10015EF28, &qword_100116590);
    swift_beginAccess();
    sub_10003BBC0(v9, v1 + v10, &qword_10015EF28, &qword_100116590);
    swift_endAccess();
    sub_10003BC28(v7);
    sub_1000068B0(v7, &qword_10015EF28, &qword_100116590);
    sub_1000068B0(v9, &qword_10015EF28, &qword_100116590);
  }

  return sub_1000068B0(a1, &qword_10015EF28, &qword_100116590);
}

uint64_t sub_10003B724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100059CA0(a1, &v24 - v16, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(a2, &v17[v18], &qword_10015EF28, &qword_100116590);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100059CA0(v17, v12, &qword_10015EF28, &qword_100116590);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000068B0(v17, &qword_10015EF28, &qword_100116590);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1000068B0(v17, &qword_10015EF20, &unk_100116140);
    v20 = 1;
    return v20 & 1;
  }

  sub_1000068B0(v17, &qword_10015EF28, &qword_100116590);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10003BA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_100059CA0(a2, &v13[-v9], &qword_10015EF28, &qword_100116590);
  v11 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  sub_100059CA0(a1 + v11, v8, &qword_10015EF28, &qword_100116590);
  swift_beginAccess();
  sub_10003BBC0(v10, a1 + v11, &qword_10015EF28, &qword_100116590);
  swift_endAccess();
  sub_10003BC28(v8);
  sub_1000068B0(v8, &qword_10015EF28, &qword_100116590);
  return sub_1000068B0(v10, &qword_10015EF28, &qword_100116590);
}

uint64_t sub_10003BBC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003BC28(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  swift_getKeyPath();
  v26 = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  v17 = *(v12 + 56);
  sub_100059CA0(v25, v15, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v2 + v16, &v15[v17], &qword_10015EF28, &qword_100116590);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    if (v18(&v15[v17], 1, v3) == 1)
    {
      return sub_1000068B0(v15, &qword_10015EF28, &qword_100116590);
    }

    goto LABEL_6;
  }

  sub_100059CA0(v15, v10, &qword_10015EF28, &qword_100116590);
  if (v18(&v15[v17], 1, v3) == 1)
  {
    (*(v4 + 8))(v10, v3);
LABEL_6:
    sub_1000068B0(v15, &qword_10015EF20, &unk_100116140);
    return sub_10003C054();
  }

  v20 = v24;
  (*(v4 + 32))(v24, &v15[v17], v3);
  sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v4 + 8);
  v22(v20, v3);
  v22(v10, v3);
  result = sub_1000068B0(v15, &qword_10015EF28, &qword_100116590);
  if ((v21 & 1) == 0)
  {
    return sub_10003C054();
  }

  return result;
}

uint64_t sub_10003C054()
{
  v1 = v0;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015EF20, &unk_100116140);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  swift_getKeyPath();
  v37[0] = v0;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  swift_beginAccess();
  (*(v3 + 104))(v16, enum case for UserInterfaceSizeClass.regular(_:), v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v18 = *(v7 + 56);
  v35 = v1;
  sub_100059CA0(v1 + v17, v10, &qword_10015EF28, &qword_100116590);
  sub_100059CA0(v16, &v10[v18], &qword_10015EF28, &qword_100116590);
  v19 = *(v3 + 48);
  if (v19(v10, 1, v2) != 1)
  {
    v20 = v36;
    sub_100059CA0(v10, v36, &qword_10015EF28, &qword_100116590);
    if (v19(&v10[v18], 1, v2) != 1)
    {
      v22 = v34;
      (*(v3 + 32))(v34, &v10[v18], v2);
      sub_100018684(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v3 + 8);
      v24(v22, v2);
      sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
      v24(v20, v2);
      result = sub_1000068B0(v10, &qword_10015EF28, &qword_100116590);
      if ((v23 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
    (*(v3 + 8))(v20, v2);
    return sub_1000068B0(v10, &qword_10015EF20, &unk_100116140);
  }

  sub_1000068B0(v16, &qword_10015EF28, &qword_100116590);
  if (v19(&v10[v18], 1, v2) != 1)
  {
    return sub_1000068B0(v10, &qword_10015EF20, &unk_100116140);
  }

  sub_1000068B0(v10, &qword_10015EF28, &qword_100116590);
LABEL_8:
  v25 = v35;
  v26 = sub_100010CD0();
  swift_getKeyPath();
  v37[0] = v26;
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *&v26[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
  v28 = *&v26[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
  v29 = *&v26[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
  v30 = *&v26[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
  v31 = v26[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
  sub_100031DF8(v27, v28, v29, v30, v26[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32]);

  if (v31 != 255)
  {
    return sub_100032660(v27, v28, v29, v30, v31);
  }

  v32 = *(v25 + 24);
  v37[0] = 15;
  memset(&v37[1], 0, 24);
  v38 = 6;

  sub_1000954AC(v37);
}

uint64_t sub_10003C5CC(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v7 = type metadata accessor for ScenePhase();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  sub_10003C720(v5);
}

uint64_t sub_10003C720(uint64_t a1)
{
  v3 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
  swift_beginAccess();
  sub_100059CA0(v1 + v10, v9, &qword_10015EFB0, &qword_100116220);
  v11 = sub_10003C990(v9, a1);
  sub_1000068B0(v9, &qword_10015EFB0, &qword_100116220);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[2] = v1;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_100059CA0(a1, v9, &qword_10015EFB0, &qword_100116220);
    sub_100059CA0(v1 + v10, v7, &qword_10015EFB0, &qword_100116220);
    sub_10003CE34(v9);
    swift_beginAccess();
    sub_10003BBC0(v9, v1 + v10, &qword_10015EFB0, &qword_100116220);
    swift_endAccess();
    sub_10003E800(v7);
    sub_1000068B0(v7, &qword_10015EFB0, &qword_100116220);
    sub_1000068B0(v9, &qword_10015EFB0, &qword_100116220);
  }

  return sub_1000068B0(a1, &qword_10015EFB0, &qword_100116220);
}

uint64_t sub_10003C990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10004DED0(&qword_10015EFD0, &qword_100116260);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100059CA0(a1, &v24 - v16, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(a2, &v17[v18], &qword_10015EFB0, &qword_100116220);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100059CA0(v17, v12, &qword_10015EFB0, &qword_100116220);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000068B0(v17, &qword_10015EFB0, &qword_100116220);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1000068B0(v17, &qword_10015EFD0, &qword_100116260);
    v20 = 1;
    return v20 & 1;
  }

  sub_1000068B0(v17, &qword_10015EFB0, &qword_100116220);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10003CCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_100059CA0(a2, &v13[-v9], &qword_10015EFB0, &qword_100116220);
  v11 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
  swift_beginAccess();
  sub_100059CA0(a1 + v11, v8, &qword_10015EFB0, &qword_100116220);
  sub_10003CE34(v10);
  swift_beginAccess();
  sub_10003BBC0(v10, a1 + v11, &qword_10015EFB0, &qword_100116220);
  swift_endAccess();
  sub_10003E800(v8);
  sub_1000068B0(v8, &qword_10015EFB0, &qword_100116220);
  return sub_1000068B0(v10, &qword_10015EFB0, &qword_100116220);
}

void sub_10003CE34(uint64_t a1)
{
  v159 = a1;
  v1 = type metadata accessor for ScenePhase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v149 = &v134[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v164 = sub_10004DED0(&qword_10015EFD0, &qword_100116260);
  v5 = *(*(v164 - 8) + 64);
  v6 = __chkstk_darwin(v164);
  v140 = &v134[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v148 = &v134[-v9];
  v10 = __chkstk_darwin(v8);
  v142 = &v134[-v11];
  v12 = __chkstk_darwin(v10);
  v163 = &v134[-v13];
  v14 = __chkstk_darwin(v12);
  v151 = &v134[-v15];
  __chkstk_darwin(v14);
  v17 = &v134[-v16];
  v162 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v18 = *(*(v162 - 1) + 64);
  v19 = __chkstk_darwin(v162);
  v136 = &v134[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v23 = &v134[-v22];
  v24 = __chkstk_darwin(v21);
  v143 = &v134[-v25];
  v26 = __chkstk_darwin(v24);
  v153 = &v134[-v27];
  v28 = __chkstk_darwin(v26);
  v137 = &v134[-v29];
  v30 = __chkstk_darwin(v28);
  v32 = &v134[-v31];
  v33 = __chkstk_darwin(v30);
  v144 = &v134[-v34];
  v35 = __chkstk_darwin(v33);
  v152 = &v134[-v36];
  v37 = __chkstk_darwin(v35);
  v138 = &v134[-v38];
  v39 = __chkstk_darwin(v37);
  v147 = &v134[-v40];
  v41 = __chkstk_darwin(v39);
  v146 = &v134[-v42];
  v43 = __chkstk_darwin(v41);
  v154 = &v134[-v44];
  v45 = __chkstk_darwin(v43);
  v47 = &v134[-v46];
  __chkstk_darwin(v45);
  v49 = &v134[-v48];
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000659C(v50, qword_100169640);
  sub_100059CA0(v159, v49, &qword_10015EFB0, &qword_100116220);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  LODWORD(v161) = v52;
  v53 = os_log_type_enabled(v51, v52);
  v54 = &unk_10015E000;
  v55 = &unk_10015E000;
  v158 = v2;
  v139 = v23;
  v145 = v32;
  if (v53)
  {
    v56 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v168 = v157;
    *v56 = 136315394;
    swift_getKeyPath();
    v57 = v165;
    v166 = v165;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v160 = v17;
    v58 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
    swift_beginAccess();
    sub_100059CA0(v57 + v58, v47, &qword_10015EFB0, &qword_100116220);
    v59 = String.init<A>(describing:)();
    v61 = sub_100025CF0(v59, v60, &v168);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    sub_100059CA0(v49, v47, &qword_10015EFB0, &qword_100116220);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    v2 = v158;
    sub_1000068B0(v49, &qword_10015EFB0, &qword_100116220);
    v65 = v62;
    v55 = &unk_10015E000;
    v17 = v160;
    v66 = sub_100025CF0(v65, v64, &v168);

    *(v56 + 14) = v66;
    v54 = &unk_10015E000;
    _os_log_impl(&_mh_execute_header, v51, v161, "Scene phase will change from '%s' to '%s'.", v56, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000068B0(v49, &qword_10015EFB0, &qword_100116220);
  }

  swift_getKeyPath();
  v67 = v54[372];
  v68 = v165;
  v168 = v165;
  v69 = sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  v157 = v67;
  v155 = v69;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70 = v55[371];
  swift_beginAccess();
  v71 = *(v2 + 104);
  v72 = v154;
  v141 = enum case for ScenePhase.active(_:);
  v162 = v71;
  v71(v154);
  v160 = *(v2 + 56);
  v161 = v2 + 56;
  (v160)(v72, 0, 1, v1);
  v73 = *(v164 + 48);
  v156 = v70;
  sub_100059CA0(v68 + v70, v17, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v72, &v17[v73], &qword_10015EFB0, &qword_100116220);
  v74 = *(v2 + 48);
  v75 = v74(v17, 1, v1);
  v150 = v2 + 104;
  if (v75 == 1)
  {
    sub_1000068B0(v72, &qword_10015EFB0, &qword_100116220);
    if (v74(&v17[v73], 1, v1) != 1)
    {
LABEL_19:
      sub_1000068B0(v17, &qword_10015EFD0, &qword_100116260);
      goto LABEL_20;
    }

    sub_1000068B0(v17, &qword_10015EFB0, &qword_100116220);
  }

  else
  {
    v76 = v146;
    sub_100059CA0(v17, v146, &qword_10015EFB0, &qword_100116220);
    if (v74(&v17[v73], 1, v1) == 1)
    {
      v77 = v154;
LABEL_17:
      sub_1000068B0(v77, &qword_10015EFB0, &qword_100116220);
      (*(v2 + 8))(v76, v1);
      goto LABEL_19;
    }

    v78 = &v17[v73];
    v79 = v149;
    (*(v2 + 32))(v149, v78, v1);
    sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
    v135 = dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = *(v2 + 8);
    v80(v79, v1);
    sub_1000068B0(v154, &qword_10015EFB0, &qword_100116220);
    v80(v76, v1);
    sub_1000068B0(v17, &qword_10015EFB0, &qword_100116220);
    if ((v135 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v81 = v147;
  (v162)(v147, enum case for ScenePhase.inactive(_:), v1);
  (v160)(v81, 0, 1, v1);
  v82 = *(v164 + 48);
  v83 = v151;
  sub_100059CA0(v159, v151, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v81, &v83[v82], &qword_10015EFB0, &qword_100116220);
  if (v74(v83, 1, v1) == 1)
  {
    sub_1000068B0(v81, &qword_10015EFB0, &qword_100116220);
    if (v74(&v151[v82], 1, v1) == 1)
    {
      sub_1000068B0(v151, &qword_10015EFB0, &qword_100116220);
LABEL_48:
      sub_100045E64();
      return;
    }

    v17 = v151;
    goto LABEL_19;
  }

  v84 = v151;
  v76 = v138;
  sub_100059CA0(v151, v138, &qword_10015EFB0, &qword_100116220);
  if (v74(&v84[v82], 1, v1) == 1)
  {
    v77 = v147;
    v17 = v151;
    v2 = v158;
    goto LABEL_17;
  }

  v120 = v158;
  v121 = v151;
  v122 = &v151[v82];
  v123 = v149;
  (*(v158 + 32))(v149, v122, v1);
  sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
  LODWORD(v154) = dispatch thunk of static Equatable.== infix(_:_:)();
  v124 = *(v120 + 8);
  v124(v123, v1);
  sub_1000068B0(v147, &qword_10015EFB0, &qword_100116220);
  v124(v76, v1);
  sub_1000068B0(v121, &qword_10015EFB0, &qword_100116220);
  if (v154)
  {
    goto LABEL_48;
  }

LABEL_20:
  swift_getKeyPath();
  v85 = v165;
  v167 = v165;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = v152;
  LODWORD(v154) = enum case for ScenePhase.inactive(_:);
  (v162)(v152);
  (v160)(v86, 0, 1, v1);
  v87 = *(v164 + 48);
  v88 = v163;
  sub_100059CA0(v85 + v156, v163, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v86, &v88[v87], &qword_10015EFB0, &qword_100116220);
  if (v74(v88, 1, v1) == 1)
  {
    sub_1000068B0(v86, &qword_10015EFB0, &qword_100116220);
    if (v74(&v163[v87], 1, v1) != 1)
    {
LABEL_32:
      v89 = v153;
LABEL_33:
      sub_1000068B0(v163, &qword_10015EFD0, &qword_100116260);
      goto LABEL_34;
    }

    sub_1000068B0(v163, &qword_10015EFB0, &qword_100116220);
    v89 = v153;
  }

  else
  {
    v90 = v163;
    v91 = v144;
    sub_100059CA0(v163, v144, &qword_10015EFB0, &qword_100116220);
    if (v74(&v90[v87], 1, v1) == 1)
    {
      v92 = v152;
      v93 = v158;
LABEL_31:
      sub_1000068B0(v92, &qword_10015EFB0, &qword_100116220);
      (*(v93 + 8))(v91, v1);
      goto LABEL_32;
    }

    v94 = v158;
    v95 = v163;
    v96 = &v163[v87];
    v97 = v149;
    (*(v158 + 32))(v149, v96, v1);
    sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
    v98 = v91;
    v99 = dispatch thunk of static Equatable.== infix(_:_:)();
    v100 = *(v94 + 8);
    v100(v97, v1);
    sub_1000068B0(v152, &qword_10015EFB0, &qword_100116220);
    v100(v98, v1);
    sub_1000068B0(v95, &qword_10015EFB0, &qword_100116220);
    v89 = v153;
    if ((v99 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v101 = v74;
  v102 = v145;
  (v162)(v145, v141, v1);
  (v160)(v102, 0, 1, v1);
  v103 = *(v164 + 48);
  v104 = v142;
  sub_100059CA0(v159, v142, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v102, &v104[v103], &qword_10015EFB0, &qword_100116220);
  if (v101(v104, 1, v1) == 1)
  {
    sub_1000068B0(v102, &qword_10015EFB0, &qword_100116220);
    if (v101(&v104[v103], 1, v1) == 1)
    {
      sub_1000068B0(v104, &qword_10015EFB0, &qword_100116220);
LABEL_51:
      sub_1000AA050();
      return;
    }

    v74 = v101;
    v163 = v104;
    goto LABEL_33;
  }

  v91 = v137;
  sub_100059CA0(v104, v137, &qword_10015EFB0, &qword_100116220);
  v105 = v101(&v104[v103], 1, v1);
  v93 = v158;
  v74 = v101;
  if (v105 == 1)
  {
    v92 = v145;
    v163 = v104;
    goto LABEL_31;
  }

  v125 = &v104[v103];
  v126 = v149;
  (*(v158 + 32))(v149, v125, v1);
  sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
  v127 = dispatch thunk of static Equatable.== infix(_:_:)();
  v128 = *(v93 + 8);
  v128(v126, v1);
  sub_1000068B0(v145, &qword_10015EFB0, &qword_100116220);
  v128(v91, v1);
  sub_1000068B0(v104, &qword_10015EFB0, &qword_100116220);
  v89 = v153;
  if (v127)
  {
    goto LABEL_51;
  }

LABEL_34:
  swift_getKeyPath();
  v106 = v165;
  v167 = v165;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  (v162)(v89, enum case for ScenePhase.background(_:), v1);
  (v160)(v89, 0, 1, v1);
  v107 = *(v164 + 48);
  v108 = v148;
  sub_100059CA0(v106 + v156, v148, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v89, &v108[v107], &qword_10015EFB0, &qword_100116220);
  if (v74(v108, 1, v1) == 1)
  {
    sub_1000068B0(v89, &qword_10015EFB0, &qword_100116220);
    if (v74(&v108[v107], 1, v1) == 1)
    {
      sub_1000068B0(v108, &qword_10015EFB0, &qword_100116220);
      goto LABEL_41;
    }

LABEL_39:
    sub_1000068B0(v108, &qword_10015EFD0, &qword_100116260);
    return;
  }

  v109 = v143;
  sub_100059CA0(v108, v143, &qword_10015EFB0, &qword_100116220);
  v110 = v74(&v108[v107], 1, v1);
  v111 = v158;
  if (v110 == 1)
  {
    sub_1000068B0(v153, &qword_10015EFB0, &qword_100116220);
    (*(v111 + 8))(v109, v1);
    goto LABEL_39;
  }

  v112 = &v108[v107];
  v113 = v149;
  (*(v158 + 32))(v149, v112, v1);
  sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
  v114 = dispatch thunk of static Equatable.== infix(_:_:)();
  v115 = *(v111 + 8);
  v115(v113, v1);
  sub_1000068B0(v153, &qword_10015EFB0, &qword_100116220);
  v115(v109, v1);
  sub_1000068B0(v108, &qword_10015EFB0, &qword_100116220);
  if ((v114 & 1) == 0)
  {
    return;
  }

LABEL_41:
  v116 = v139;
  (v162)(v139, v154, v1);
  (v160)(v116, 0, 1, v1);
  v117 = *(v164 + 48);
  v118 = v140;
  sub_100059CA0(v159, v140, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v116, &v118[v117], &qword_10015EFB0, &qword_100116220);
  if (v74(v118, 1, v1) != 1)
  {
    v119 = v136;
    sub_100059CA0(v118, v136, &qword_10015EFB0, &qword_100116220);
    if (v74(&v118[v117], 1, v1) != 1)
    {
      v129 = v158;
      v130 = &v118[v117];
      v131 = v149;
      (*(v158 + 32))(v149, v130, v1);
      sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
      v132 = dispatch thunk of static Equatable.== infix(_:_:)();
      v133 = *(v129 + 8);
      v133(v131, v1);
      sub_1000068B0(v116, &qword_10015EFB0, &qword_100116220);
      v133(v119, v1);
      sub_1000068B0(v118, &qword_10015EFB0, &qword_100116220);
      if ((v132 & 1) == 0)
      {
        return;
      }

      goto LABEL_53;
    }

    sub_1000068B0(v116, &qword_10015EFB0, &qword_100116220);
    (*(v158 + 8))(v119, v1);
LABEL_46:
    sub_1000068B0(v118, &qword_10015EFD0, &qword_100116260);
    return;
  }

  sub_1000068B0(v116, &qword_10015EFB0, &qword_100116220);
  if (v74(&v118[v117], 1, v1) != 1)
  {
    goto LABEL_46;
  }

  sub_1000068B0(v118, &qword_10015EFB0, &qword_100116220);
LABEL_53:
  sub_1000AA5E4();
}

uint64_t sub_10003E5F0()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_100169640);
  sub_10000659C(v0, qword_100169640);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003E67C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == enum case for ScenePhase.background(_:))
  {
    return 0x756F72676B636162;
  }

  if (v6 == enum case for ScenePhase.inactive(_:))
  {
    return 0x6576697463616E69;
  }

  if (v6 == enum case for ScenePhase.active(_:))
  {
    return 0x657669746361;
  }

  (*(v2 + 8))(v5, a1);
  return 0x6E776F6E6B6E75;
}

void sub_10003E800(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for ScenePhase();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v53);
  v50 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_10004DED0(&qword_10015EFD0, &qword_100116260);
  v7 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v9 = &v46[-v8];
  v52 = sub_10004DED0(&qword_10015EFB0, &qword_100116220);
  v10 = *(*(v52 - 8) + 64);
  v11 = __chkstk_darwin(v52);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v55 = &v46[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v46[-v17];
  __chkstk_darwin(v16);
  v20 = &v46[-v19];
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v51 = v13;
  v21 = type metadata accessor for Logger();
  sub_10000659C(v21, qword_100169640);
  sub_100059CA0(a1, v20, &qword_10015EFB0, &qword_100116220);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = &unk_10015E000;
  v25 = &unk_10015E000;
  if (os_log_type_enabled(v22, v23))
  {
    v26 = swift_slowAlloc();
    v49 = v4;
    v27 = v26;
    v48 = swift_slowAlloc();
    v57[0] = v48;
    *v27 = 136315394;
    v47 = v23;
    sub_100059CA0(v20, v18, &qword_10015EFB0, &qword_100116220);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_1000068B0(v20, &qword_10015EFB0, &qword_100116220);
    v31 = sub_100025CF0(v28, v30, v57);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    swift_getKeyPath();
    v56 = v2;
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
    swift_beginAccess();
    sub_100059CA0(v2 + v32, v18, &qword_10015EFB0, &qword_100116220);
    v33 = String.init<A>(describing:)();
    v35 = sub_100025CF0(v33, v34, v57);
    v24 = &unk_10015E000;

    *(v27 + 14) = v35;
    v25 = &unk_10015E000;
    _os_log_impl(&_mh_execute_header, v22, v47, "Scene phase did change from '%s' to '%s'.", v27, 0x16u);
    swift_arrayDestroy();

    v4 = v49;
  }

  else
  {

    sub_1000068B0(v20, &qword_10015EFB0, &qword_100116220);
  }

  swift_getKeyPath();
  v36 = v24[372];
  v57[0] = v2;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = v25[371];
  swift_beginAccess();
  v38 = v55;
  v39 = v53;
  (*(v4 + 104))(v55, enum case for ScenePhase.background(_:), v53);
  (*(v4 + 56))(v38, 0, 1, v39);
  v40 = *(v54 + 48);
  sub_100059CA0(v2 + v37, v9, &qword_10015EFB0, &qword_100116220);
  sub_100059CA0(v38, &v9[v40], &qword_10015EFB0, &qword_100116220);
  v41 = *(v4 + 48);
  if (v41(v9, 1, v39) != 1)
  {
    v42 = v51;
    sub_100059CA0(v9, v51, &qword_10015EFB0, &qword_100116220);
    if (v41(&v9[v40], 1, v39) != 1)
    {
      v43 = v50;
      (*(v4 + 32))(v50, &v9[v40], v39);
      sub_100018684(&qword_10015EFD8, &type metadata accessor for ScenePhase);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v4 + 8);
      v45(v43, v39);
      sub_1000068B0(v38, &qword_10015EFB0, &qword_100116220);
      v45(v42, v39);
      sub_1000068B0(v9, &qword_10015EFB0, &qword_100116220);
      if ((v44 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1000068B0(v38, &qword_10015EFB0, &qword_100116220);
    (*(v4 + 8))(v42, v39);
LABEL_11:
    sub_1000068B0(v9, &qword_10015EFD0, &qword_100116260);
    return;
  }

  sub_1000068B0(v38, &qword_10015EFB0, &qword_100116220);
  if (v41(&v9[v40], 1, v39) != 1)
  {
    goto LABEL_11;
  }

  sub_1000068B0(v9, &qword_10015EFB0, &qword_100116220);
LABEL_13:
  sub_1000AABD0();
}

uint64_t sub_10003EF74(uint64_t (*a1)(uint64_t))
{

  sub_10004DED0(&qword_10015DE48, &qword_100114978);
  State.wrappedValue.getter();
  if (v4)
  {
  }

  State.wrappedValue.setter();

  return a1(v3);
}

uint64_t sub_10003F038()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_10003EF74(*(v0 + 16));
}

uint64_t sub_10003F048(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsNavigationSplitView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10003F0D4(uint64_t a1)
{
  v2 = type metadata accessor for WithCurrentHostingControllerAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1 + *(type metadata accessor for SettingsNavigationSplitView() + 28);
  sub_1000C3560(&qword_10015B0D8, &qword_10010FB60, &type metadata accessor for WithCurrentHostingControllerAction, v6);
  v10 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_10003F1FC(void *a1)
{
  v2 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v3 = sub_100010CD0();

  v4 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = a1;
  v6 = a1;
}

void sub_10003F320(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SettingsAppDebugMenuGestureProxyView();
  objc_msgSendSuper2(&v9, "willMoveToWindow:", a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 statusBarManager];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_10008F608;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_10000411C;
        v8[3] = &unk_10014FFC8;
        v7 = _Block_copy(v8);

        [v5 setDebugMenuHandler:v7];
        _Block_release(v7);
      }
    }
  }
}

uint64_t sub_10003F464()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F4F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for Button();
  sub_100052374(&qword_10015DE00, &qword_100114828);
  swift_getWitnessTable();
  sub_1000525A0(&qword_10015DE08, &qword_10015DE00, &qword_100114828);
  swift_getOpaqueTypeMetadata2();
  sub_100052374(&qword_10015DE10, &qword_100114830);
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigationLink();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable();
}

__n128 sub_10003F748(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003F764@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for Button();
  v6 = sub_100052374(&qword_10015DE00, &qword_100114828);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1000525A0(&qword_10015DE08, &qword_10015DE00, &qword_100114828);
  swift_getOpaqueTypeMetadata2();
  sub_100052374(&qword_10015DE10, &qword_100114830);
  type metadata accessor for ModifiedContent();
  v34 = v4;
  v35 = &type metadata for Never;
  v36 = v3;
  v37 = &protocol witness table for Never;
  type metadata accessor for NavigationLink();
  v9 = type metadata accessor for _ConditionalContent();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v34 = v5;
  v35 = v6;
  v36 = WitnessTable;
  v37 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830);
  v32 = OpaqueTypeConformance2;
  v33 = v14;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v30 = v15;
  v31 = v16;
  swift_getWitnessTable();
  v17 = type metadata accessor for _UnaryViewAdaptor();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v28 - v23;
  sub_10003FB48(a1, v12);
  _UnaryViewAdaptor.init(_:)();
  swift_getWitnessTable();
  v25 = v18[2];
  v25(v24, v22, v17);
  v26 = v18[1];
  v26(v22, v17);
  v25(v29, v24, v17);
  return (v26)(v24, v17);
}

uint64_t sub_10003FB04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v4 = *v2;
  v5 = v2[1];
  return sub_10003F764(a1, a2);
}

uint64_t sub_10003FB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v84 = a1;
  v98 = v3;
  v99 = &type metadata for Never;
  v100 = v4;
  v101 = &protocol witness table for Never;
  v5 = type metadata accessor for NavigationLink();
  v86 = *(v5 - 8);
  v6 = v86[8];
  v7 = __chkstk_darwin(v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v75 - v10;
  v11 = sub_10004DED0(&qword_10015DE00, &qword_100114828);
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v11);
  v81 = &v75 - v13;
  v14 = type metadata accessor for Button();
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  __chkstk_darwin(v14);
  v78 = &v75 - v16;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1000525A0(&qword_10015DE08, &qword_10015DE00, &qword_100114828);
  v95 = v14;
  v98 = v14;
  v99 = v11;
  v90 = v11;
  v93 = v18;
  v94 = WitnessTable;
  v100 = WitnessTable;
  v101 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v77 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v75 - v21;
  sub_100052374(&qword_10015DE10, &qword_100114830);
  v23 = type metadata accessor for ModifiedContent();
  v83 = *(v23 - 8);
  v24 = *(v83 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v76 = &v75 - v29;
  __chkstk_darwin(v28);
  v79 = &v75 - v30;
  v91 = v5;
  v89 = type metadata accessor for _ConditionalContent();
  v88 = *(v89 - 8);
  v31 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = &v75 - v32;
  if ((*(v2 + 56) & 4) != 0)
  {
    v51 = swift_allocObject();
    v86 = &v75;
    *(v51 + 16) = v3;
    *(v51 + 24) = v4;
    v52 = *(v2 + 48);
    *(v51 + 64) = *(v2 + 32);
    *(v51 + 80) = v52;
    *(v51 + 96) = *(v2 + 64);
    v53 = *(v2 + 16);
    *(v51 + 32) = *v2;
    *(v51 + 48) = v53;
    __chkstk_darwin(v51);
    *(&v75 - 4) = v3;
    *(&v75 - 3) = v4;
    *(&v75 - 2) = v2;
    (*(*(v84 - 8) + 16))(&v98, v2);
    v54 = v78;
    Button.init(action:label:)();
    v86 = v27;
    v55 = v81;
    static PrimitiveButtonStyle<>.navigationLink.getter();
    v57 = v94;
    v56 = v95;
    v47 = v90;
    v58 = v93;
    View.buttonStyle<A>(_:)();
    (*(v82 + 8))(v55, v47);
    (*(v80 + 8))(v54, v56);
    v98 = v56;
    v99 = v47;
    v100 = v57;
    v101 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v76;
    sub_1000407F0();
    (*(v77 + 8))(v22, OpaqueTypeMetadata2);
    v61 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830);
    v96 = OpaqueTypeConformance2;
    v97 = v61;
    v85 = swift_getWitnessTable();
    v62 = v83;
    v63 = *(v83 + 16);
    v64 = v79;
    v63(v79, v60, v23);
    v65 = *(v62 + 8);
    v65(v60, v23);
    v66 = v23;
    v67 = v86;
    v63(v86, v64, v66);
    swift_getWitnessTable();
    v50 = v87;
    sub_1000408B8(v67, v66);
    v65(v67, v66);
    v65(v64, v66);
  }

  else
  {
    v33 = *(v2 + 24);
    v34 = *(v2 + 32);
    v35 = *(v2 + 40);
    v36 = *(v2 + 48);
    v98 = *(v2 + 16);
    v99 = v33;
    v100 = v34;
    v101 = v35;
    v102 = v36;
    v37 = __chkstk_darwin(v98);
    *(&v75 - 4) = v3;
    *(&v75 - 3) = v4;
    *(&v75 - 2) = v2;
    sub_100029920(v37, v38, v39, v40, v41);
    sub_100032144();
    NavigationLink<>.init<A>(value:label:)();
    v42 = v91;
    v84 = swift_getWitnessTable();
    v43 = v86;
    v44 = v86[2];
    v45 = v85;
    v44(v85, v9, v42);
    v46 = v43[1];
    v46(v9, v42);
    v44(v9, v45, v42);
    v47 = v90;
    v98 = v95;
    v99 = v90;
    v100 = v94;
    v101 = v93;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830);
    v107 = v48;
    v108 = v49;
    swift_getWitnessTable();
    v50 = v87;
    sub_100043320(v9, v23, v42);
    v46(v9, v42);
    v46(v45, v42);
  }

  v98 = v95;
  v99 = v47;
  v100 = v94;
  v101 = v93;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_1000525A0(&qword_10015DE18, &qword_10015DE10, &qword_100114830);
  v105 = v68;
  v106 = v69;
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v103 = v70;
  v104 = v71;
  v72 = v89;
  swift_getWitnessTable();
  v73 = v88;
  (*(v88 + 16))(v92, v50, v72);
  return (*(v73 + 8))(v50, v72);
}

uint64_t sub_10004062C()
{
  v1 = *(v0 + 32);

  sub_10002C5C0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004067C@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_10004069C(v1[2], a1);
}

uint64_t sub_10004069C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12 = *(v9 + 72);
  (*(v9 + 64))();
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_1000407DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_10002C7B8(v2, v3, v4);
}

uint64_t sub_1000407F0()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_100040864@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.navigationIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000408B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void sub_100040AB0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_10004DED0(&qword_10015B6B8, &qword_100110F08);
  sub_100040B1C(v3, v4, v5, a1 + *(v6 + 44));
}

void sub_100040B1C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_10004DED0(&qword_10015B6C0, &qword_100110F10);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v17[-v13];
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = *(sub_10004DED0(&qword_10015B6C8, &qword_100110F18) + 44);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  sub_10004DED0(&qword_10015B6D0, &qword_100110F20);
  sub_1000525A0(&qword_10015B6D8, &qword_10015B6D0, &qword_100110F20);
  LabelGroup.init(content:)();
  sub_10005879C(v14, v12);
  *a4 = xmmword_100110E00;
  *(a4 + 16) = 3;
  v16 = sub_10004DED0(&qword_10015B6E0, &qword_100110F28);
  sub_10005879C(v12, a4 + *(v16 + 48));
  sub_100039F14(1, 0, 3);
  sub_10005880C(v14);
  sub_10005880C(v12);
  sub_10002A748(1, 0, 3);
}

uint64_t sub_100040CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  sub_100057CEC(a1, a2, a3, &v24);
  v22 = v25;
  v23 = v24;
  v20 = v27;
  v21 = v26;
  v7 = HIBYTE(v28);
  v19 = v28;
  static Font.title3.getter();
  v18 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v30 = v7;
  sub_100058024(a1, a3, &v24);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v29;
  v14 = v28;
  v15 = static Font.footnote.getter();
  v17 = swift_getKeyPath();
  LOBYTE(v24) = v13;
  *a4 = v23;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  *(a4 + 24) = v20;
  *(a4 + 32) = v19;
  *(a4 + 33) = v30;
  *(a4 + 40) = KeyPath;
  *(a4 + 48) = v18;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  *(a4 + 72) = v11;
  *(a4 + 80) = v12;
  *(a4 + 88) = v14;
  *(a4 + 90) = v13;
  *(a4 + 96) = v17;
  *(a4 + 104) = v15;
  sub_100058874(v23, v22, v21);

  sub_1000588B8(v9, v10, v11, v12, v14, v13, sub_100041078, sub_10005887C);

  sub_1000588B8(v9, v10, v11, v12, v14, v13, sub_1000410CC, sub_1000588D4);

  sub_100058910(v23, v22, v21);
}

uint64_t sub_100040F0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100040F38(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_100040F70()
{
  result = qword_10015B700;
  if (!qword_10015B700)
  {
    sub_100052374(&qword_10015B6F0, &qword_100113BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B700);
  }

  return result;
}

unint64_t sub_100040FEC()
{
  result = qword_10015B6F8;
  if (!qword_10015B6F8)
  {
    sub_100052374(&qword_10015B6E8, &unk_100110F60);
    sub_100040F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B6F8);
  }

  return result;
}

uint64_t sub_100041078(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_100009670(a1, a2, a3 & 1);
  }

  else
  {

    return sub_10005887C(a1, a2, a3);
  }
}

uint64_t sub_1000410CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_100009680(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1000588D4(a1, a2, a3);
  }
}

uint64_t sub_100041120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v45 = sub_10004DED0(&qword_10015CE40, &qword_100113480);
  v7 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = &v41 - v8;
  v41 = sub_10004DED0(&qword_10015CE48, &qword_100113488);
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = &v41 - v10;
  v12 = sub_10004DED0(&qword_10015CE50, &qword_100113490);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v42 = sub_10004DED0(&qword_10015CE58, &qword_100113498);
  v16 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v18 = &v41 - v17;
  v44 = sub_10004DED0(&qword_10015CE60, &qword_1001134A0);
  v19 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v43 = &v41 - v20;
  v21 = sub_10004DED0(&qword_10015CE68, &qword_1001134A8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v41 - v24;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v26 = a1;
      v48 = Image.init(uiImage:)();
      v49 = 0;
      sub_100041CEC();

      _ConditionalContent<>.init(storage:)();
      v27 = v51;
      *v11 = v50;
      v11[16] = v27;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015CE90, &qword_1001134B0);
      sub_100041D40();
      sub_100041DF0();
      v28 = v43;
      _ConditionalContent<>.init(storage:)();
      sub_100059CA0(v28, v46, &qword_10015CE60, &qword_1001134A0);
      swift_storeEnumTagMultiPayload();
      sub_100041E7C();
      _ConditionalContent<>.init(storage:)();

      return sub_1000068B0(v28, &qword_10015CE60, &qword_1001134A0);
    }

    v32 = objc_allocWithZone(ISIcon);
    v33 = String._bridgeToObjectiveC()();
    [v32 initWithBundleIdentifier:v33];

    if (qword_10015AA18 == -1)
    {
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
LABEL_8:
    v34 = qword_100169590;
    AsyncIconImage.init<>(icon:descriptor:)();
    (*(v22 + 16))(v15, v25, v21);
    swift_storeEnumTagMultiPayload();
    sub_1000525A0(&qword_10015CE80, &qword_10015CE68, &qword_1001134A8);
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v18, v11, &qword_10015CE58, &qword_100113498);
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015CE90, &qword_1001134B0);
    sub_100041D40();
    sub_100041DF0();
    v35 = v43;
    _ConditionalContent<>.init(storage:)();
    sub_1000068B0(v18, &qword_10015CE58, &qword_100113498);
    sub_100059CA0(v35, v46, &qword_10015CE60, &qword_1001134A0);
    swift_storeEnumTagMultiPayload();
    sub_100041E7C();
    _ConditionalContent<>.init(storage:)();
    sub_1000068B0(v35, &qword_10015CE60, &qword_1001134A0);
    return (*(v22 + 8))(v25, v21);
  }

  if (a3 == 2)
  {
    v30 = objc_allocWithZone(ISIcon);
    v31 = String._bridgeToObjectiveC()();
    [v30 initWithType:v31];

    if (qword_10015AA18 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (a1 | a2)
  {
    v36 = type metadata accessor for PrimaryAppleAccountAvatarState();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    *&v48 = sub_100041A48();
    State.init(wrappedValue:)();
    v48 = v50;
    v49 = 1;
    sub_100041CEC();

    _ConditionalContent<>.init(storage:)();
    v39 = v51;
    *v11 = v50;
    v11[16] = v39;
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015CE90, &qword_1001134B0);
    sub_100041D40();
    sub_100041DF0();
    v40 = v43;
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v40, v46, &qword_10015CE60, &qword_1001134A0);
    swift_storeEnumTagMultiPayload();
    sub_100041E7C();
    _ConditionalContent<>.init(storage:)();

    return sub_1000068B0(v40, &qword_10015CE60, &qword_1001134A0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100041E7C();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t type metadata accessor for PrimaryAppleAccountAvatarState()
{
  result = qword_10015CEE0;
  if (!qword_10015CEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000419AC()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100041A48()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  ObservationRegistrar.init()();
  v6 = [objc_allocWithZone(AAAppleAccountInformationCache) init];
  *(v0 + 16) = sub_100041C64();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;

  sub_100094AF4(0, 0, v5, &unk_1001135C0, v10);

  return v1;
}

uint64_t sub_100041BEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041C24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041C64()
{
  if ([v0 primaryAccountSignInState] && (v1 = objc_msgSend(v0, "profilePictureCacheURL")) != 0 && (v2 = v1, v3 = objc_msgSend(objc_allocWithZone(UIImage), "initWithContentsOfFile:", v1), v2, v3))
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0x8000000000000000;
  }
}

unint64_t sub_100041CEC()
{
  result = qword_10015CE98;
  if (!qword_10015CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE98);
  }

  return result;
}

unint64_t sub_100041D40()
{
  result = qword_10015CE78;
  if (!qword_10015CE78)
  {
    sub_100052374(&qword_10015CE58, &qword_100113498);
    sub_1000525A0(&qword_10015CE80, &qword_10015CE68, &qword_1001134A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE78);
  }

  return result;
}

unint64_t sub_100041DF0()
{
  result = qword_10015CE88;
  if (!qword_10015CE88)
  {
    sub_100052374(&qword_10015CE90, &qword_1001134B0);
    sub_100041CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE88);
  }

  return result;
}

unint64_t sub_100041E7C()
{
  result = qword_10015CE70;
  if (!qword_10015CE70)
  {
    sub_100052374(&qword_10015CE60, &qword_1001134A0);
    sub_100041D40();
    sub_100041DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE70);
  }

  return result;
}

unint64_t sub_100041F28()
{
  result = qword_10015D010;
  if (!qword_10015D010)
  {
    sub_100052374(&qword_10015CF98, &qword_1001136D0);
    sub_1000525A0(&qword_10015D018, &qword_10015D020, &qword_100113718);
    sub_100042010(&qword_10015D028, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D010);
  }

  return result;
}

uint64_t sub_100042010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042058(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1000420A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10004DED0(&qword_10015CFA8, &qword_1001136E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = a1;
  *(&v39 + 1) = a2;
  sub_10004DED0(&qword_10015CFA0, &qword_1001136D8);
  State.wrappedValue.getter();
  v15 = v36;
  swift_getKeyPath();
  *&v39 = v15;
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 16);
  sub_100042AF8(v16);

  if (v16 >> 62)
  {
    if (v16 >> 62 == 1)
    {
      (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
      v17 = Image.resizable(capInsets:resizingMode:)();
      (*(v11 + 8))(v14, v10);
      v37 = 0;
      v36 = v17;
      LOBYTE(v38) = 0;

      sub_10004DED0(&qword_10015CFB0, &qword_1001136E8);
      sub_100042C58();
      _ConditionalContent<>.init(storage:)();
      v18 = v39;
      v19 = v40;
      v20 = v41;
      v36 = v39;
      v37 = v40;
      LOBYTE(v38) = v41;
      HIBYTE(v38) = 1;
      sub_100070C40(v39, *(&v39 + 1), v40, v41);
      sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
      sub_10004DED0(&qword_10015CFD8, &qword_100113700);
      sub_100042BCC();
      sub_100042D10();
      _ConditionalContent<>.init(storage:)();
      sub_100070BD0(v16);
      sub_100070C88(v18, *(&v18 + 1), v19, v20);
    }

    else
    {
      if (v16 == 0x8000000000000000)
      {
        Image.init(_internalSystemName:)();
        (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
        Image.resizable(capInsets:resizingMode:)();

        (*(v11 + 8))(v14, v10);
        static SymbolRenderingMode.hierarchical.getter();
        v24 = type metadata accessor for SymbolRenderingMode();
        (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
        v25 = Image.symbolRenderingMode(_:)();

        sub_1000068B0(v9, &qword_10015CFA8, &qword_1001136E0);
        v26 = static Color.blue.getter();
        *&v36 = v25;
        *(&v36 + 1) = v26;
        LOBYTE(v37) = 0;

        sub_10004DED0(&qword_10015CFF0, &qword_100113708);
        sub_100042B14();
        _ConditionalContent<>.init(storage:)();
        v36 = v39;
        v37 = v40;
        v38 = 0;
        sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
        sub_10004DED0(&qword_10015CFD8, &qword_100113700);
        sub_100042BCC();
        sub_100042D10();
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        Image.init(systemName:)();
        (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
        Image.resizable(capInsets:resizingMode:)();

        (*(v11 + 8))(v14, v10);
        static SymbolRenderingMode.palette.getter();
        v27 = type metadata accessor for SymbolRenderingMode();
        (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
        v28 = Image.symbolRenderingMode(_:)();

        sub_1000068B0(v9, &qword_10015CFA8, &qword_1001136E0);
        v29 = static Color.white.getter();
        v30 = [objc_opt_self() lightGrayColor];
        v31 = Color.init(uiColor:)();
        *&v36 = v28;
        *(&v36 + 1) = v29;
        v37 = v31;
        LOBYTE(v38) = 1;

        sub_10004DED0(&qword_10015CFB0, &qword_1001136E8);
        sub_100042C58();
        _ConditionalContent<>.init(storage:)();
        v36 = v39;
        v37 = v40;
        LOBYTE(v38) = v41;
        HIBYTE(v38) = 1;
        sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
        sub_10004DED0(&qword_10015CFD8, &qword_100113700);
        sub_100042BCC();
        sub_100042D10();
        _ConditionalContent<>.init(storage:)();
      }
    }
  }

  else
  {
    (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v10);
    v21 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v14, v10);
    v36 = v21;
    LOBYTE(v37) = 1;

    sub_10004DED0(&qword_10015CFF0, &qword_100113708);
    sub_100042B14();
    _ConditionalContent<>.init(storage:)();
    v22 = v39;
    v23 = v40;
    v36 = v39;
    v37 = v40;
    v38 = 0;
    sub_100070CEC(v39, *(&v39 + 1), v40);
    sub_10004DED0(&qword_10015CFD0, &qword_1001136F8);
    sub_10004DED0(&qword_10015CFD8, &qword_100113700);
    sub_100042BCC();
    sub_100042D10();
    _ConditionalContent<>.init(storage:)();
    sub_100070BD0(v16);
    sub_100070D28(v22, *(&v22 + 1), v23);
  }

  result = *&v39;
  v33 = v40;
  v34 = v41;
  v35 = v42;
  *a3 = v39;
  *(a3 + 16) = v33;
  *(a3 + 24) = v34;
  *(a3 + 25) = v35;
  return result;
}

__n128 sub_10004294C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000420A0(a1, a2, &v15);
  v13 = v15;
  v6 = v16;
  v7 = BYTE8(v16);
  v8 = BYTE9(v16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v14[4] = v15;
  *&v14[20] = v16;
  *&v14[36] = v17;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = (a3 + *(sub_10004DED0(&qword_10015CF98, &qword_1001136D0) + 36));
  v11 = *(type metadata accessor for _TaskModifier() + 20);

  static TaskPriority.userInitiated.getter();
  *v10 = &unk_1001136C8;
  v10[1] = v9;
  *a3 = v13;
  *(a3 + 28) = *v14;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 25) = v8;
  *(a3 + 26) = 256;
  *(a3 + 44) = *&v14[16];
  result = *&v14[32];
  *(a3 + 60) = *&v14[32];
  *(a3 + 76) = *&v14[48];
  *(a3 + 80) = 1;
  return result;
}

uint64_t sub_100042AA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100042AF8(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_100042B14()
{
  result = qword_10015CFE8;
  if (!qword_10015CFE8)
  {
    sub_100052374(&qword_10015CFF0, &qword_100113708);
    sub_1000525A0(&qword_10015CFF8, &qword_10015D000, &qword_100113710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CFE8);
  }

  return result;
}

unint64_t sub_100042BCC()
{
  result = qword_10015CFE0;
  if (!qword_10015CFE0)
  {
    sub_100052374(&qword_10015CFD0, &qword_1001136F8);
    sub_100042B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CFE0);
  }

  return result;
}

unint64_t sub_100042C58()
{
  result = qword_10015CFB8;
  if (!qword_10015CFB8)
  {
    sub_100052374(&qword_10015CFB0, &qword_1001136E8);
    sub_1000525A0(&qword_10015CFC0, &qword_10015CFC8, &qword_1001136F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CFB8);
  }

  return result;
}

unint64_t sub_100042D10()
{
  result = qword_10015D008;
  if (!qword_10015D008)
  {
    sub_100052374(&qword_10015CFD8, &qword_100113700);
    sub_100042C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D008);
  }

  return result;
}

uint64_t sub_100042DC8()
{
  sub_100052374(&qword_10015BBB0, &qword_100111998);
  sub_1000525A0(&qword_10015BBB8, &qword_10015BBB0, &qword_100111998);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100042E74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_10005A2D8(a1);
}

unint64_t sub_100042EB8()
{
  result = qword_10015B748;
  if (!qword_10015B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B748);
  }

  return result;
}

uint64_t sub_100042F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_10002EAE0();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

id sub_100043008@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_100039F14(v3, v4, v5);
}

id sub_100043020()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  result = [v0 setDrawBorder:1];
  qword_100169590 = v0;
  return result;
}

uint64_t sub_1000430DC(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_1000548F0();
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_26;
        }
      }

      return 0;
    }

    if (v8 != 1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a1 + 16) == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_10:
    if (v5 != v7 || v4 != v6)
    {
      v10 = *a1;
      v11 = *a2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_26;
  }

  if (v5 | v4)
  {
    if (v8 != 3)
    {
      return 0;
    }

    result = 0;
    if (v7 != 1 || v6)
    {
      return result;
    }
  }

  else if (v8 != 3 || (v6 | v7) != 0)
  {
    return 0;
  }

LABEL_26:
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000432A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v8 = *(a1 + 16);
  *(a2 + 16) = v8;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  sub_100039F14(v3, v2, v8);
}

__n128 sub_100043304(uint64_t a1, uint64_t a2)
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

uint64_t sub_100043320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

unint64_t sub_100043448()
{
  result = qword_10015BBD0;
  if (!qword_10015BBD0)
  {
    sub_100052374(&qword_10015BBD8, &unk_100111AF0);
    sub_100043558();
    sub_1000434D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BBD0);
  }

  return result;
}

unint64_t sub_1000434D4()
{
  result = qword_10015BBC8;
  if (!qword_10015BBC8)
  {
    sub_100052374(&qword_10015BBC0, &qword_100111AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BBC8);
  }

  return result;
}

unint64_t sub_100043558()
{
  result = qword_10015B750;
  if (!qword_10015B750)
  {
    sub_100052374(&qword_10015B740, &qword_100111160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B750);
  }

  return result;
}

uint64_t sub_1000435BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_10004DED0(&qword_10015B740, &qword_100111160);
  sub_10004DED0(&qword_10015BBC0, &qword_100111AE8);
  sub_100043558();
  sub_1000434D4();
  return LabeledContent<>.init(content:label:)();
}

uint64_t sub_100043694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  sub_10002EAE0();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static HierarchicalShapeStyle.secondary.getter();
  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100009680(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = sub_10005A7CC;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  sub_100039F14(v3, v2, v6);
}

__n128 sub_1000437F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100043818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000430DC(v5, v7) & 1;
}

uint64_t sub_100043894()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_100042EB8();
  return Label.init(title:icon:)();
}

uint64_t sub_100043930()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000A924;

  return sub_1000439C8(v2, v3);
}

uint64_t sub_1000439C8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100045200, v4, v3);
}

uint64_t sub_100043A60(char a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = *a2;
    v11 = *(a2 + 8);

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v9, v4);
      v10 = *&v16[0];
    }

    v13 = *(v10 + 24);

    sub_100010CD0();

    v14 = a2 + *(type metadata accessor for PrimarySettingsListItem() + 20);
    v17 = *(v14 + 32);
    v15 = *(v14 + 16);
    v16[0] = *v14;
    v16[1] = v15;
    sub_100043DBC(v16);
  }

  return result;
}

uint64_t sub_100043C08(char a1)
{
  v3 = *(type metadata accessor for PrimarySettingsListItem() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100043A60(a1, v4);
}

uint64_t sub_100043C78(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[4];
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      if (v4 | v3)
      {
        if (v9 == 3)
        {
          result = 0;
          if (v8 != 1 || v7)
          {
            return result;
          }

          goto LABEL_27;
        }
      }

      else if (v9 == 3 && (v7 | v8) == 0)
      {
        goto LABEL_27;
      }

      return 0;
    }

    if (v9 != 2)
    {
      return 0;
    }

LABEL_10:
    if (v4 == v8 && v3 == v7)
    {
      goto LABEL_27;
    }

    v13 = *a1;
    v14 = *a2;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (*(a1 + 16))
  {
    if (v9 != 1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  sub_1000548F0();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100043DBC(uint64_t a1)
{
  v2 = v1;
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696D0);

  sub_10002698C(a1, &v45);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_100026A04(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v45.i64[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = *v1;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, v45.i64);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v45.i64);
    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    v13 = sub_100026A58(v12);
    v15 = sub_100025CF0(v13, v14, v45.i64);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), item: %{public}s…", v7, 0x20u);
    swift_arrayDestroy();
  }

  v49 = 0x11uLL;
  v50 = 0;
  v51 = 0;
  v52 = 6;
  if (sub_10002BB48(a1, &v49))
  {
    type metadata accessor for Preloader();
    v16 = static Preloader.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    v18 = *(a1 + 16);
    *(v17 + 24) = *a1;
    *(v17 + 40) = v18;
    *(v17 + 56) = *(a1 + 32);

    sub_10002698C(a1, &v45);
    dispatch thunk of Preloader.preloadResources(completion:)();
  }

  else
  {

    sub_10002698C(a1, &v45);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    sub_100026A04(a1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45.i64[0] = swift_slowAlloc();
      *v21 = 136315650;
      v22 = *v1;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100025CF0(v23, v24, v45.i64);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v45.i64);
      *(v21 + 14) = v26;
      *(v21 + 22) = 2082;
      v27 = sub_100026A58(v26);
      v29 = sub_100025CF0(v27, v28, v45.i64);

      *(v21 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "…Complete (%s.%s), item: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
    }

    v47 = &type metadata for SettingsAppFeatureFlags;
    v48 = sub_10000631C();
    v45.i8[0] = 4;
    v30 = isFeatureEnabled(_:)();
    sub_10000665C(v45.i64);
    if (v30)
    {
      v45 = 0xFuLL;
      v46 = 0;
      v47 = 0;
      LOBYTE(v48) = 6;
      if (sub_10002BB48(a1, &v45))
      {
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        v32 = *(a1 + 16);
        *(v31 + 24) = *a1;
        *(v31 + 40) = v32;
        *(v31 + 56) = *(a1 + 32);

        sub_10002698C(a1, v44);
        sub_100044438(sub_1000A5228, v31);
      }

      else
      {

        sub_10002698C(a1, v44);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        sub_100026A04(a1);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v44[0] = swift_slowAlloc();
          *v35 = 136315650;
          v36 = *v2;
          v37 = _typeName(_:qualified:)();
          v39 = sub_100025CF0(v37, v38, v44);

          *(v35 + 4) = v39;
          *(v35 + 12) = 2080;
          v40 = sub_100025CF0(0xD000000000000019, 0x8000000100124120, v44);
          *(v35 + 14) = v40;
          *(v35 + 22) = 2082;
          v41 = sub_100026A58(v40);
          v43 = sub_100025CF0(v41, v42, v44);

          *(v35 + 24) = v43;
          _os_log_impl(&_mh_execute_header, v33, v34, "…Complete (%s.%s), item: %{public}s", v35, 0x20u);
          swift_arrayDestroy();
        }
      }
    }
  }
}

void sub_100044438(uint64_t a1, uint64_t a2)
{
  if ((byte_1001697D0 & 1) == 0)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

    v7 = [objc_allocWithZone(AMSEngagement) initWithBag:v6];
    v8 = objc_allocWithZone(AMSEngagementPlacementInfo);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithPlacement:v9 context:0];

    sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100115DD0;
    *(v11 + 32) = v10;
    v12 = objc_allocWithZone(AMSEngagementMessageEvent);
    v13 = v10;
    v14 = String._bridgeToObjectiveC()();
    sub_100008294(0, &qword_10015EB48, AMSEngagementPlacementInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = [v12 initWithServiceType:v14 placementInfo:isa];

    v17 = [v7 enqueueMessageEvent:v16];
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v20[4] = sub_1000A5748;
    v20[5] = v18;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100017078;
    v20[3] = &unk_1001504D8;
    v19 = _Block_copy(v20);
    sub_1000499DC(a1);

    [v17 addFinishBlock:v19];
    _Block_release(v19);
  }
}

uint64_t sub_10004470C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004474C()
{
  v1 = (type metadata accessor for SettingsApp() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = *(v0 + v3 + v1[8]);

  v10 = (v0 + v3 + v1[9]);
  v11 = *v10;

  v12 = v10[1];

  v13 = (v0 + v3 + v1[10]);
  v14 = *v13;

  v15 = v13[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044890()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044924()
{
  v1 = type metadata accessor for SettingsApplicationDebugRoot();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044A44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100044A84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044AC4()
{
  v1 = (type metadata accessor for PrimarySettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1000943D8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = *(v0 + v3 + 16);

  v6 = v1[8];
  v7 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000C3788, 0, 0);
}

uint64_t sub_100044CC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A924;

  return sub_100015138(a1, v5);
}

uint64_t sub_100044D7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100098CC4(9u);
  }

  return result;
}

uint64_t sub_100044DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_100044F14(a1, v4, v5, v6);
}

uint64_t sub_100044E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshots;
  v5 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100044F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_10015CF70, &qword_1001135D0);
  v4[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v9;
  v4[15] = v8;

  return _swift_task_switch(sub_100045024, v9, v8);
}

uint64_t sub_100045024()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = [objc_opt_self() defaultCenter];
  v5 = NSNotificationCenter.notifications(named:object:)();

  v0[6] = v5;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_100042010(&qword_10015CF78, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncSequence.debounce<>(for:tolerance:)();

  v6 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[16] = v6;
  sub_1000068B0(v1, &qword_10015CF70, &qword_1001135D0);
  v0[5] = v6;
  swift_beginAccess();
  v7 = v0[12];
  v0[17] = static MainActor.shared.getter();
  v8 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v9 = swift_task_alloc();
  v0[18] = v9;
  v10 = sub_10004DED0(&qword_10015CF80, &unk_1001135D8);
  *v9 = v0;
  v9[1] = sub_10007034C;
  v11 = v0[9];

  return AsyncDebounceSequence.Iterator.next()(v11, v10);
}

uint64_t sub_100045200()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  sub_10004DED0(&qword_10015CFA0, &qword_1001136D8);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10006F474;

  return sub_100045328();
}

uint64_t sub_100045328()
{
  v1[31] = v0;
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v3;
  v1[34] = v2;

  return _swift_task_switch(sub_1000455B8, v3, v2);
}

void sub_1000453C0()
{
  v1 = v0;
  swift_getKeyPath();
  v12 = v0;
  sub_10004573C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch;
  v3 = *(v0 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 type];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v13._countAndFlagsBits = v6;
    v13._object = v8;
    if (sub_10004DE84(v13) != 4)
    {
      if (*(v1 + v2))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v12 = v1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v10 = *(v1 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__selectedQuickActionSubject);
      v11 = qword_10015AB30;

      if (v11 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100020FC4(v10, v12);

      PassthroughSubject.send(_:)();
    }
  }
}

uint64_t sub_1000455B8()
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v1 = [objc_opt_self() defaultStore], (v0[35] = v1) == 0))
  {
    v4 = v0[32];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_100045C84;
    v3 = swift_continuation_init();
    v0[25] = sub_10004DED0(&qword_10015C468, &unk_100112460);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10001F6FC;
    v0[21] = &unk_10014F108;
    v0[22] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }
}

unint64_t sub_10004573C()
{
  result = qword_10015D480;
  if (!qword_10015D480)
  {
    type metadata accessor for SettingsAppSceneDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D480);
  }

  return result;
}

uint64_t sub_100045794(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_100045888()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = String._bridgeToObjectiveC()();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_100045920(uint64_t result, int a2, int a3)
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

uint64_t sub_100045960(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000459A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100045B58(uint64_t a1, int a2)
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

uint64_t sub_100045BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CellularTelephonyStateSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellularTelephonyStateSnapshot(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100045C84()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 272);
  v5 = *(v1 + 264);
  if (v3)
  {
    v6 = sub_10006FD5C;
  }

  else
  {
    v6 = sub_10006F618;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100045DB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }

  return result;
}

void sub_100045DCC()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = String._bridgeToObjectiveC()();
  [v0 postNotificationName:v1 object:0];
}

void sub_100045E64()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000659C(v10, qword_100169640);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v2;
    v37[0] = v33;
    *v13 = 136315394;
    v14 = *v1;
    v15 = _typeName(_:qualified:)();
    v17 = v3;
    v18 = sub_100025CF0(v15, v16, v37);

    *(v13 + 4) = v18;
    v3 = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245B0, v37);
    _os_log_impl(&_mh_execute_header, v11, v12, "Start (%s.%s)…", v13, 0x16u);
    swift_arrayDestroy();
    v2 = v34;
  }

  swift_getKeyPath();
  v37[0] = v1;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v20 = type metadata accessor for SettingsAppDetailContent(0);
  sub_10000822C(&v19[*(v20 + 20)], v9, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v9;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v3;
      v26 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2113;
      v27 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
      *(v24 + 14) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Calling will resign active on %{private,mask.hash}@.", v24, 0x16u);
      sub_1000068B0(v26, &unk_10015F9C0, &unk_100115230);
      v3 = v34;
    }

    v28 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    if ([v28 respondsToSelector:"willResignActive"])
    {
      [v28 willResignActive];
    }

    else
    {
    }
  }

  else
  {
    sub_100046460(v9, type metadata accessor for SettingsAppDetailContent.ContentType);
  }

  swift_getKeyPath();
  v36 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v30 = v1 + v29;
  v31 = v35;
  (*(v3 + 16))(v35, v30, v2);
  NavigationPath.withCollectionProxy(_:)();
  (*(v3 + 8))(v31, v2);
  sub_100046A58(v1);
}

uint64_t sub_100046400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100046460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000464C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100046520(uint64_t a1, const char *a2, SEL *a3)
{
  v40 = a2;
  v5 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for PreferencesControllerRecipe();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v19 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v20 = *(v15 + 44);
  v21 = v9;
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v18[v20] != v46[0])
  {
    v44 = (v10 + 32);
    v45 = (v10 + 56);
    v43 = (v10 + 8);
    *&v22 = 141558275;
    v37 = v22;
    v38 = v8;
    v39 = a3;
    v41 = v13;
    v42 = v9;
    do
    {
      v24 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v25, v47);
      v24(v46, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v47, v46);
      sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
      v26 = swift_dynamicCast();
      v27 = *v45;
      if (v26)
      {
        v27(v8, 0, 1, v21);
        (*v44)(v13, v8, v21);
        v28 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
        if (v28)
        {
          v29 = v28;
          if (qword_10015AA98 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_10000659C(v30, qword_100169640);
          v31 = v29;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v34 = v37;
            *(v34 + 4) = 1752392040;
            *(v34 + 12) = 2113;
            *(v34 + 14) = v31;
            *v35 = v29;
            v36 = v31;
            _os_log_impl(&_mh_execute_header, v32, v33, v40, v34, 0x16u);
            sub_1000068B0(v35, &unk_10015F9C0, &unk_100115230);
            a3 = v39;

            v8 = v38;
          }

          if ([v31 respondsToSelector:*a3])
          {
            [v31 *a3];
          }

          v21 = v42;
          v13 = v41;
          (*v43)(v41, v42);
        }

        else
        {
          (*v43)(v13, v21);
        }
      }

      else
      {
        v27(v8, 1, 1, v21);
        sub_1000068B0(v8, &qword_10015EEE0, &qword_1001160B0);
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v18[v20] != v46[0]);
  }

  return sub_1000068B0(v18, &qword_10015EF00, &qword_1001160C8);
}

uint64_t sub_100046A2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100046A58(uint64_t *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169640);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245B0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s)", v4, 0x16u);
    swift_arrayDestroy();
  }
}

void *sub_100046C64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100046C78@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100046CA4(uint64_t a1, int a2)
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

uint64_t sub_100046CC4(uint64_t result, int a2, int a3)
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

uint64_t sub_100046D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
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

    return (v10 + 1);
  }
}

uint64_t sub_100046DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100046F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B090, &qword_10010FAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046FF8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B090, &qword_10010FAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004708C()
{
  v1 = (type metadata accessor for SettingsApp() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_10004DED0(&qword_10015AE88, &qword_10010F900);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + v1[7]);
  v8 = *v7;

  v9 = v7[1];

  v10 = *(v0 + v3 + v1[8]);

  v11 = (v0 + v3 + v1[9]);
  v12 = *v11;

  v13 = v11[1];

  v14 = (v0 + v3 + v1[10]);
  v15 = *v14;

  v16 = v14[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

BOOL sub_1000471F0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100020ABC();
  *a2 = result;
  return result;
}

uint64_t sub_100047224()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004725C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000472AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FamilyRowStatus();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004736C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FamilyRowStatus();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004747C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000474E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100047568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015B840, &qword_100111370);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015B848, &qword_100111378);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000476A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015B840, &qword_100111370);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015B848, &qword_100111378);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100047830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrimarySettingsListItemModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000478D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PrimarySettingsListItemModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000479C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrimarySettingsListSectionModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100047B50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PrimarySettingsListSectionModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100047BF0()
{
  v1 = (type metadata accessor for PrimarySettingsListSection() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = v0 + v3 + v1[7];
  sub_100025CD8(*v7, *(v7 + 8), *(v7 + 16));
  v8 = *(v7 + 32);

  v9 = type metadata accessor for PrimarySettingsListSectionModel();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = *(v7 + *(v9 + 28));

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_100047E0C()
{
  v1 = (sub_10004DED0(&qword_10015CDC8, &qword_100113218) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015CDD8, &qword_100113228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  v13 = sub_10004DED0(&qword_10015C918, &qword_100112B80);
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = *(v0 + v3 + *(sub_10004DED0(&qword_10015CDB8, &qword_100113208) + 36) + 8);

  v15 = sub_10004DED0(&qword_10015CDC0, &qword_100113210);
  v16 = v12 + *(v15 + 68);
  v17 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = *(v16 + *(sub_10004DED0(&qword_10015CDB0, &qword_100113200) + 36) + 8);

  v19 = v12 + *(v15 + 72);
  v20 = sub_10004DED0(&qword_10015C7D8, &unk_100113240);
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(sub_10004DED0(&qword_10015CDA8, &unk_1001131F0) + 36) + 8);

  v22 = v12 + v1[15];
  v23 = sub_10004DED0(&qword_10015C448, qword_1001123D8);
  (*(*(v23 - 8) + 8))(v22, v23);
  v24 = *(v22 + *(sub_10004DED0(&qword_10015CDA0, &qword_1001131E8) + 36) + 8);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

void sub_100048134(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x80000001001225B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100048164()
{
  sub_100052374(&qword_10015D030, &qword_1001137D8);
  sub_1000525A0(&qword_10015D048, &qword_10015D030, &qword_1001137D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000481FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000482C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_10004839C()
{
  sub_100052374(&qword_10015D128, &qword_100113920);
  sub_1000525A0(&qword_10015D168, &qword_10015D128, &qword_100113920);
  return swift_getOpaqueTypeConformance2();
}

double sub_10004843C@<D0>(uint64_t a1@<X8>)
{
  result = 5.99244987e175;
  *a1 = xmmword_100113AA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

void sub_10004845C(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x8000000100122730;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_10004848C()
{
  sub_100052374(&qword_10015D278, &qword_100113B78);
  sub_100052374(&qword_10015D270, &qword_100113B70);
  sub_100052374(&qword_10015D268, &qword_100113B68);
  sub_1000525A0(&qword_10015D290, &qword_10015D268, &qword_100113B68);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000485A4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000485F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048638(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_10004DED0(&qword_10015D500, &qword_100113D80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10004DED0(&qword_10015D508, &qword_100113D88);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for SettingsNavigationEventRecord();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1000487B4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_10004DED0(&qword_10015D500, &qword_100113D80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10004DED0(&qword_10015D508, &qword_100113D88);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for SettingsNavigationEventRecord();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100048934()
{
  v1 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  sub_10004DED0(&qword_10015B070, &qword_10010FA60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[6];
  sub_10004DED0(&qword_10015B078, &unk_100113E10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[7];
  v14 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048B0C()
{
  sub_10002A748(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100048B60@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100048B94(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.listRowSpacing.setter();
}

uint64_t sub_100048BC4()
{
  sub_100052374(&qword_10015D5D0, &qword_100113F38);
  sub_10007A904();
  sub_10007AAA0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100048C44()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048CCC()
{
  v1 = type metadata accessor for PPTTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048E1C()
{
  v1 = type metadata accessor for SettingsSearchResultItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048F38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048F74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000490E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100049210()
{
  v1 = type metadata accessor for AMSEngagementSheet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[*(v1 + 20)];
  swift_unknownObjectRelease();
  v9 = *(v1 + 24);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
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

    return (v10 + 1);
  }
}

uint64_t sub_100049438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&qword_10015DAE0, &unk_1001138A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000494FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  sub_10002C5C0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v3 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100049554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015DE70, &qword_100115220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100049610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004DED0(&qword_10015DE70, &qword_100115220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000496CC()
{
  v1 = type metadata accessor for TapToRadarDraft();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 48))
  {

    v9 = v6[8];
  }

  v10 = v6[10];

  v11 = v6[13];

  v12 = v6[16];

  v13 = v6[18];

  v14 = v6[20];

  v15 = v6[22];

  v16 = v6[24];

  v17 = v6[25];

  v18 = v6 + v1[11];
  v19 = *(v18 + 1);

  v20 = *(sub_10004DED0(&qword_10015DE70, &qword_100115220) + 36);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(&v18[v20], 1, v21))
  {
    (*(v22 + 8))(&v18[v20], v21);
  }

  v23 = v6 + v1[12];
  v24 = *(v23 + 1);

  v25 = *(v23 + 2);

  v26 = v6 + v1[13];
  v27 = *(v26 + 1);

  v28 = *(v26 + 2);

  v29 = v6 + v1[14];
  v30 = *(v29 + 1);

  v31 = *(v29 + 2);

  v32 = *(v6 + v1[15] + 8);

  v33 = v6 + v1[16];
  v34 = *(v33 + 1);

  v35 = *(v33 + 2);

  v36 = v6 + v1[17];
  v37 = *(v36 + 1);

  v38 = *(v36 + 2);

  v39 = v6 + v1[18];
  v40 = *(v39 + 1);

  v41 = *(v39 + 2);

  v42 = *(v6 + v1[19] + 8);

  v43 = *(v6 + v1[20] + 8);

  v44 = *(v6 + v1[21] + 8);

  v45 = v6 + v1[22];
  v46 = *(v45 + 1);

  v47 = *(v45 + 2);

  v48 = v6 + v1[23];
  v49 = *(v48 + 1);

  v50 = *(v48 + 3);

  v51 = v6 + v1[24];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000499A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000499DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000499F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100049AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100049B58()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049BE8()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PrimarySettingsList() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1000943D8(*(v0 + v8), *(v0 + v8 + 8));
  v11 = *(v0 + v8 + 16);

  v12 = v6[8];
  v13 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100049E34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049E6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  sub_10002C5C0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_100049ED4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A010()
{
  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10004A050()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A090()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A0D4()
{
  v1 = type metadata accessor for SettingsAppDetailContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for SettingsURLDestination(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v28 = *(*(v5 - 8) + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v3;
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    sub_10002C5C0(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), v10);
  }

  v11 = v7 & ~v6;
  v12 = (v9 + *(v1 + 20));
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_7;
    }

    v14 = type metadata accessor for SettingsPaneRecipe();
    (*(*(v14 - 8) + 8))(v12, v14);
    v12 = (v12 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));
  }

  v15 = *v12;

LABEL_7:
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v11, v16);
  v18 = v0 + v11 + *(v5 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 3)
  {
    if (v19 <= 5)
    {
      if (v19 != 4)
      {
        v20 = *(v18 + 8);

        v21 = *(v18 + 24);

        v22 = v18 + *(type metadata accessor for EngagementLinkData() + 24);
LABEL_15:
        v17(v22, v16);
        goto LABEL_20;
      }

LABEL_14:
      v22 = v18;
      goto LABEL_15;
    }

    if (v19 != 6)
    {
      if (v19 == 7)
      {
        v23 = *(v18 + 8);

        v24 = *(v18 + 24);
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_10002C5C0(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));
    goto LABEL_20;
  }

  if (v19 == 1)
  {
    goto LABEL_19;
  }

  if (v19 == 2 || v19 == 3)
  {
    goto LABEL_14;
  }

LABEL_20:
  v25 = (v28 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v11 + *(v5 + 24));

  sub_10002C5C0(*(v0 + v25), *(v0 + v25 + 8), *(v0 + v25 + 16), *(v0 + v25 + 24), *(v0 + v25 + 32));

  return _swift_deallocObject(v0, v25 + 33, v2 | v6 | 7);
}

uint64_t sub_10004A3D4()
{
  v1 = type metadata accessor for SettingsURLDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v0 + v3 + *(v1 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v9 = *(v7 + 8);

        v10 = *(v7 + 24);

        v11 = v7 + *(type metadata accessor for EngagementLinkData() + 24);
LABEL_9:
        v6(v11, v5);
        goto LABEL_14;
      }

LABEL_8:
      v11 = v7;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v12 = *(v7 + 8);

        v13 = *(v7 + 24);
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10002C5C0(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

LABEL_14:
  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v3 + *(v1 + 24));

  v16 = *(v0 + v14);

  return _swift_deallocObject(v0, v14 + 8, v2 | 7);
}

uint64_t sub_10004A5B4()
{
  v1 = type metadata accessor for SettingsAppDetailContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for SettingsURLDestination(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v28 = *(*(v5 - 8) + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v3;
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    sub_10002C5C0(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), v10);
  }

  v11 = v7 & ~v6;
  v12 = (v9 + *(v1 + 20));
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_7;
    }

    v14 = type metadata accessor for SettingsPaneRecipe();
    (*(*(v14 - 8) + 8))(v12, v14);
    v12 = (v12 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));
  }

  v15 = *v12;

LABEL_7:
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v11, v16);
  v18 = v0 + v11 + *(v5 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 3)
  {
    if (v19 <= 5)
    {
      if (v19 != 4)
      {
        v20 = *(v18 + 8);

        v21 = *(v18 + 24);

        v22 = v18 + *(type metadata accessor for EngagementLinkData() + 24);
LABEL_15:
        v17(v22, v16);
        goto LABEL_20;
      }

LABEL_14:
      v22 = v18;
      goto LABEL_15;
    }

    if (v19 != 6)
    {
      if (v19 == 7)
      {
        v23 = *(v18 + 8);

        v24 = *(v18 + 24);
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_10002C5C0(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));
    goto LABEL_20;
  }

  if (v19 == 1)
  {
    goto LABEL_19;
  }

  if (v19 == 2 || v19 == 3)
  {
    goto LABEL_14;
  }

LABEL_20:
  v25 = (v11 + v28) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v11 + *(v5 + 24));

  sub_10002C5C0(*(v0 + v25 + 8), *(v0 + v25 + 16), *(v0 + v25 + 24), *(v0 + v25 + 32), *(v0 + v25 + 40));

  return _swift_deallocObject(v0, v25 + 41, v2 | v6 | 7);
}

uint64_t sub_10004A8B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A8E8()
{
  v1 = type metadata accessor for SettingsURLDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = v0 + v3 + *(v1 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v10 = *(v8 + 8);

        v11 = *(v8 + 24);

        v12 = v8 + *(type metadata accessor for EngagementLinkData() + 24);
LABEL_9:
        v7(v12, v6);
        goto LABEL_14;
      }

LABEL_8:
      v12 = v8;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v13 = *(v8 + 8);

        v14 = *(v8 + 24);
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10002C5C0(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

LABEL_14:
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v3 + *(v1 + 24));

  v18 = *(v0 + v15);

  v19 = *(v0 + v16);

  return _swift_deallocObject(v0, v16 + 8, v2 | 7);
}

uint64_t sub_10004AAD8()
{
  v1 = type metadata accessor for SettingsURLDestination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v9 = v0 + v3 + *(v1 + 20);
  type metadata accessor for SettingsURLDestination.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v11 = *(v9 + 8);

        v12 = *(v9 + 24);

        v13 = v9 + *(type metadata accessor for EngagementLinkData() + 24);
LABEL_9:
        v8(v13, v7);
        goto LABEL_14;
      }

LABEL_8:
      v13 = v9;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v14 = *(v9 + 8);

        v15 = *(v9 + 24);
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10002C5C0(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

LABEL_14:
  v16 = (v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v3 + *(v1 + 24));

  v18 = *(v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10002C5C0(*(v0 + v16), *(v0 + v16 + 8), *(v0 + v16 + 16), *(v0 + v16 + 24), *(v0 + v16 + 32));

  return _swift_deallocObject(v0, v16 + 33, v2 | 7);
}

uint64_t sub_10004AD08()
{
  v1 = *(v0 + 16);

  sub_10002C5C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10004AD50()
{
  v1 = (type metadata accessor for EngagementLinkData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AE4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AE98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015F010, &qword_100116390);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015F018, &qword_100116398);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004AFD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10004DED0(&qword_10015F010, &qword_100116390);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004DED0(&qword_10015F018, &qword_100116398);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004B138()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_10002C5C0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10004B188()
{
  v1 = type metadata accessor for SettingsNavigationSplitView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 16);

  v10 = v1[7];
  sub_10004DED0(&qword_10015B0D8, &qword_10010FB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = *(v6 + v1[8]);

  v14 = v1[10];
  v15 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  (*(*(v15 - 8) + 8))(v6 + v14, v15);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004B324()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004B384()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B3BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B3FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B434()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004B518()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B558()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004B6C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B6F8()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004B7DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B81C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004B984()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004B9D0()
{
  v1 = sub_10004DED0(&unk_10015FCD8, &qword_100117348);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004BB38()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004BC08()
{
  v1 = (sub_10004DED0(&qword_10015FF60, &qword_100117580) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015FF70, &unk_100117590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  v13 = sub_10004DED0(&unk_1001600D0, &unk_100117720);
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = v1[19];
  v15 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = v1[20];
  v17 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10004BE2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004BE6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BEA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004BEEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BF50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BF8C()
{
  v1 = sub_10004DED0(&qword_1001602F0, &qword_100117908);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C024()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C06C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004C0A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 settingsUIVisible];
  *a2 = result;
  return result;
}

uint64_t sub_10004C0D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C128()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C168()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C1A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004C1E8()
{
  v1 = sub_10004DED0(&qword_100160758, &unk_100117C60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C2B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C2F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C330()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C370()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C3B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C3F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C444()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004C51C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004C554()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C58C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004C670()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C6C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C6FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004C874(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004C8EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10004C978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10004C9FC()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t sub_10004CA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

void sub_10004CC90(uint64_t a1)
{
  v2 = +[NSThread isMainThread];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[2];
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {

    dispatch_async(&_dispatch_main_q, v3);
  }
}

NSArray *__cdecl sub_10004CEA8(id a1, ACAccount *a2)
{
  v2 = [(ACAccount *)a2 identifier];
  v3 = [NSArray na_arrayWithSafeObject:v2];

  return v3;
}

void sub_10004CF08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained groupsForPrimaryAccount:*(a1 + 32) secondaryAccounts:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  (*(*(a1 + 48) + 16))();
}

Swift::Int sub_10004CF90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004D050()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10004D0FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004D1B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004DE84(*a1);
  *a2 = result;
  return result;
}

void sub_10004D1E8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000068;
  v3 = 0x746F6F7465756C62;
  v4 = 0xE800000000000000;
  v5 = 0x72616C756C6C6563;
  if (*v1 != 2)
  {
    v5 = 0x79726574746162;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1768319351;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10004D26C(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10004D2C0(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10004D318@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_10004D340(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10004D3B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10004D438@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10004D47C(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE30, type metadata accessor for CSSearchQueryError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004D4E8(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE30, type metadata accessor for CSSearchQueryError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004D558(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10004D5DC(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10004D648(uint64_t a1)
{
  v2 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10004D6B4(void *a1, uint64_t a2)
{
  v4 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10004D768(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10004D7E4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004D844()
{
  sub_10004E018(&qword_10015AD78, type metadata accessor for Name);
  sub_10004E018(&qword_10015AD80, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004D900()
{
  sub_10004E018(&qword_10015D3B0, type metadata accessor for LaunchOptionsKey);
  sub_10004E018(&qword_10015AD60, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004D9BC()
{
  v2 = *v0;
  sub_10004E018(&qword_10015ACD8, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_10004E018(&qword_10015ACE0, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004DA78()
{
  sub_10004E018(&qword_10015AE78, type metadata accessor for OpenExternalURLOptionsKey);
  sub_10004E018(&qword_10015AE80, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004DB34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10004DB7C()
{
  sub_10004E018(&qword_10015AD68, type metadata accessor for FLItemGroup);
  sub_10004E018(&qword_10015AD70, type metadata accessor for FLItemGroup);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10004DC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004E018(&qword_10015AE68, type metadata accessor for CSSearchQueryError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10004DCBC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10004DCF8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10004DD4C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10004DDFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_10004DE84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CB68, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004DED0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10004DF34()
{
  result = qword_10015ACB8;
  if (!qword_10015ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015ACB8);
  }

  return result;
}

uint64_t sub_10004E018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004E0D0(uint64_t a1, int a2)
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

uint64_t sub_10004E0F0(uint64_t result, int a2, int a3)
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

unint64_t sub_10004E674()
{
  result = qword_10015AE58;
  if (!qword_10015AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015AE58);
  }

  return result;
}

void sub_10004E7E0()
{
  v0 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010011EB70;
  v1._countAndFlagsBits = 0x746F6F7465756C42;
  v1._object = 0xE900000000000068;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v9);

  if (qword_10015A9E0 != -1)
  {
    swift_once();
  }

  v3 = qword_100169528;
  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithType:v6 localizedTitle:v7 localizedSubtitle:0 icon:v5 userInfo:0];

  qword_100169508 = v8;
}

void sub_10004EAE8()
{
  v0 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010011EB70;
  v1._countAndFlagsBits = 0x72616C756C6C6543;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v9);

  if (qword_10015A9F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100169538;
  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithType:v6 localizedTitle:v7 localizedSubtitle:0 icon:v5 userInfo:0];

  qword_100169518 = v8;
}

void sub_10004EC4C()
{
  v0 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010011EB70;
  v1._countAndFlagsBits = 0x79726574746142;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v9);

  if (qword_10015A9F8 != -1)
  {
    swift_once();
  }

  v3 = qword_100169540;
  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithType:v6 localizedTitle:v7 localizedSubtitle:0 icon:v5 userInfo:0];

  qword_100169520 = v8;
}

void sub_10004EDB0()
{
  v0 = objc_allocWithZone(SBSApplicationShortcutSystemPrivateIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSystemImageName:v1];

  v3 = [objc_allocWithZone(UIApplicationShortcutIcon) initWithSBSApplicationShortcutIcon:v2];
  qword_100169528 = v3;
}

void sub_10004EE5C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() iconWithSystemImageName:v0];

  qword_100169538 = v1;
}

void sub_10004EEF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() iconWithSystemImageName:v5];

  *a4 = v6;
}

uint64_t sub_10004EF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for SettingsApp();
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  v5 = v3 - 8;
  v59 = v3 - 8;
  v63 = v4;
  __chkstk_darwin(v3 - 8);
  v61 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsNavigationSplitView();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004DED0(&qword_10015AF88, &qword_10010F978);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v55 - v14;
  v16 = sub_10004DED0(&qword_10015AF80, &qword_10010F970);
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v60 = v55 - v19;
  v20 = sub_10004DED0(&qword_10015AF78, &qword_10010F968);
  v21 = *(v20 - 8);
  v69 = v20;
  v70 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v62 = v55 - v23;
  v24 = (a1 + *(v5 + 40));
  v25 = v24[1];
  v72 = *v24;
  v73 = v25;
  v26 = v72;
  v56 = v72;
  v55[1] = sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  v27 = *(v76 + 24);

  *v10 = swift_getKeyPath();
  *(v10 + 1) = swift_getKeyPath();
  v28 = type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  v29 = sub_100004C44(&qword_10015AF98, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
  v57 = v28;
  v58 = v29;
  *(v10 + 2) = Environment.init<A>(_:)();
  v10[24] = v30 & 1;
  v31 = v7[7];
  *&v10[v31] = swift_getKeyPath();
  sub_10004DED0(&qword_10015B0D8, &qword_10010FB60);
  swift_storeEnumTagMultiPayload();
  v32 = &v10[v7[8]];
  type metadata accessor for SettingsAppModel();
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  *v32 = Environment.init<A>(_:)();
  v32[8] = v33 & 1;
  *&v10[v7[9]] = 0;
  v34 = v7[10];
  type metadata accessor for SettingsAppNavigationModel();
  sub_100004C44(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  Bindable<A>.init(wrappedValue:)();
  v72 = v26;
  v73 = v25;
  State.wrappedValue.getter();
  v35 = sub_100004C44(&qword_10015AF90, type metadata accessor for SettingsNavigationSplitView);
  View.onOpenURL(perform:)();

  sub_10000C3C0(v10);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v61;
  sub_1000095A8(a1, v61);
  v37 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v38 = swift_allocObject();
  sub_10000960C(v36, v38 + v37);
  v72 = v7;
  v73 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v60;
  v41 = v65;
  View.onContinueUserActivity(_:perform:)();

  (*(v66 + 8))(v15, v41);
  v42 = (a1 + *(v59 + 36));
  v44 = *v42;
  v43 = v42[1];
  v72 = v44;
  v73 = v43;
  sub_10004DED0(&qword_10015B050, &qword_10010FA28);
  State.wrappedValue.getter();
  v72 = v41;
  v73 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v67;
  v49 = v57;
  v48 = v58;
  View.environment<A>(_:)();

  v50 = v47;
  (*(v68 + 8))(v40, v47);
  v72 = v56;
  v73 = v25;
  State.wrappedValue.getter();
  v51 = *(v76 + 24);

  v52 = *(v51 + 16);

  type metadata accessor for SettingsOmniSearchViewModel();
  v72 = v50;
  v73 = v49;
  v74 = v45;
  v75 = v48;
  swift_getOpaqueTypeConformance2();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  v53 = v69;
  View.environment<A>(_:)();

  return (*(v70 + 8))(v46, v53);
}

uint64_t sub_10004F6F4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApp();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000095A8(a2, v7);
  type metadata accessor for MainActor();
  v13 = a1;
  v14 = static MainActor.shared.getter();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  sub_10000960C(v7, v16 + v15);
  sub_100094AF4(0, 0, v11, &unk_10010FB70, v16);
}

uint64_t sub_10004F8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for URL();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = *(*(sub_10004DED0(&qword_10015B0E8, &qword_100118670) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[27] = v11;
  v5[28] = v10;

  return _swift_task_switch(sub_10004FA0C, v11, v10);
}

uint64_t sub_10004FA0C()
{
  v1 = [*(v0 + 144) userInfo];
  if (!v1)
  {
    v16 = *(v0 + 208);

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = v4;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v5 = sub_100017DC0(v0 + 16), (v6 & 1) == 0))
  {

    sub_100017E04(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_10;
  }

  sub_10001EE30(*(v3 + 56) + 32 * v5, v0 + 56);
  sub_100017E04(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_10:
    v15 = *(v0 + 208);

LABEL_12:
    sub_1000068B0(v0 + 56, &qword_10015C8D0, &unk_100116750);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v7 = *(v0 + 152);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    *(v0 + 232) = v8;
    v10 = type metadata accessor for SettingsApp();
    *(v0 + 240) = v10;
    v11 = *(v7 + *(v10 + 24));
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_10004FC60;
    v13 = *(v0 + 200);

    return sub_10007DA2C(v13, v9, v8);
  }

  v22 = *(v0 + 208);

LABEL_13:
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10004FC60()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 232);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return _swift_task_switch(sub_10004FDA4, v5, v4);
}

uint64_t sub_10004FDA4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  sub_1000527CC(v2, v3);
  v4 = type metadata accessor for SettingsSearchResultItem();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[24];
    sub_1000068B0(v0[25], &qword_10015B0E8, &qword_100118670);
  }

  else
  {
    v7 = v0[30];
    v8 = v0[24];
    v24 = v0[25];
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[20];
    v12 = v0[21];
    v13 = v0[19];
    SettingsSearchResultItem.url.getter();
    (*(v5 + 8))(v8, v4);
    (*(v12 + 32))(v9, v10, v11);
    v14 = (v13 + *(v7 + 32));
    v16 = *v14;
    v15 = v14[1];
    v0[15] = v16;
    v0[16] = v15;
    sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
    State.wrappedValue.getter();
    v17 = v0[17];
    sub_10005294C(v9);
    v6 = v24;

    (*(v12 + 8))(v9, v11);
  }

  sub_1000068B0(v6, &qword_10015B0E8, &qword_100118670);
  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[22];
  v20 = v0[23];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10004FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v53 = sub_10004DED0(&qword_10015AFD0, &qword_10010F990);
  v3 = *(*(v53 - 1) + 64);
  __chkstk_darwin(v53);
  v46 = &v38 - v4;
  v5 = sub_10004DED0(&qword_10015AFD8, &qword_10010F998);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v44 = &v38 - v7;
  v47 = sub_10004DED0(&qword_10015AFE0, &qword_10010F9A0);
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v47);
  v41 = &v38 - v9;
  v43 = sub_10004DED0(&qword_10015AFE8, &qword_10010F9A8);
  v42 = *(v43 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v43);
  v12 = &v38 - v11;
  v13 = type metadata accessor for CommandGroupPlacement();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004DED0(&qword_10015AFF0, &qword_10010F9B0);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  static CommandGroupPlacement.appSettings.getter();
  v56 = a1;
  sub_10004DED0(&qword_10015AFF8, &qword_10010F9B8);
  sub_1000525A0(&qword_10015B000, &qword_10015AFF8, &qword_10010F9B8);
  v40 = v18;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.newItem.getter();
  v55 = a1;
  sub_10004DED0(&qword_10015B008, &qword_10010F9C0);
  v19 = sub_100052374(&qword_10015B010, &qword_10010F9C8);
  v20 = type metadata accessor for SettingsAppModel();
  v21 = sub_1000525A0(&qword_10015B018, &qword_10015B010, &qword_10010F9C8);
  v22 = sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = v22;
  swift_getOpaqueTypeConformance2();
  v39 = v12;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  v54 = a1;
  sub_10004DED0(&qword_10015B020, &qword_10010F9D0);
  v23 = sub_100052374(&qword_10015B028, &unk_100113980);
  v24 = sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  v57 = v23;
  v58 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v41;
  CommandGroup.init(before:addition:)();
  static CommandGroupPlacement.textFormatting.getter();
  v26 = v44;
  CommandGroup.init(replacing:addition:)();
  v27 = v53[12];
  v28 = v53[16];
  v29 = v53[20];
  v30 = v46;
  (*(v51 + 16))(v46, v18, v52);
  v31 = v42;
  v32 = v43;
  (*(v42 + 16))(&v30[v27], v12, v43);
  v33 = v45;
  v34 = v47;
  (*(v45 + 16))(&v30[v28], v25, v47);
  v36 = v48;
  v35 = v49;
  (*(v48 + 16))(&v30[v29], v26, v49);
  TupleCommandContent.init(_:)();
  (*(v36 + 8))(v26, v35);
  (*(v33 + 8))(v25, v34);
  (*(v31 + 8))(v39, v32);
  return (*(v51 + 8))(v40, v52);
}

id sub_100050674@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for KeyEquivalent();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015B080, &qword_10010FA98);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v51 = &v49 - v8;
  v9 = sub_10004DED0(&qword_10015B088, &qword_10010FAA0);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  __chkstk_darwin(v9);
  v50 = &v49 - v11;
  v12 = sub_10004DED0(&qword_10015B090, &qword_10010FAA8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v63 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v49 - v16;
  v17 = type metadata accessor for SettingsApp();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v57 = sub_10004DED0(&qword_10015B098, &qword_10010FAB0);
  v20 = *(v57 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v57);
  v59 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v49 - v24;
  sub_1000095A8(a1, &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v27 = swift_allocObject();
  sub_10000960C(&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v49 = a1;
  v65 = a1;
  sub_10004DED0(&qword_10015B0A0, &qword_10010FAB8);
  sub_1000525A0(&qword_10015B0A8, &qword_10015B0A0, &qword_10010FAB8);
  v58 = v25;
  Button.init(action:label:)();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v29 = result;
    appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

    if (appleInternalInstallCapability)
    {
      sub_1000095A8(v49, &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = swift_allocObject();
      sub_10000960C(&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v26);
      sub_10004DED0(&qword_10015B0B8, &qword_100111410);
      sub_1000525A0(&qword_10015B0C0, &qword_10015B0B8, &qword_100111410);
      v32 = v51;
      Button.init(action:label:)();
      v33 = v54;
      KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
      v34 = static EventModifiers.command.getter();
      EventModifiers.init(rawValue:)();
      EventModifiers.init(rawValue:)();
      if (EventModifiers.init(rawValue:)() != v34)
      {
        EventModifiers.init(rawValue:)();
      }

      sub_1000525A0(&qword_10015B0C8, &qword_10015B080, &qword_10010FA98);
      v35 = v50;
      v36 = v53;
      View.keyboardShortcut(_:modifiers:)();
      (*(v55 + 8))(v33, v56);
      (*(v52 + 8))(v32, v36);
      v38 = v60;
      v37 = v61;
      v39 = v62;
      (*(v61 + 32))(v60, v35, v62);
      v40 = 0;
    }

    else
    {
      v40 = 1;
      v37 = v61;
      v39 = v62;
      v38 = v60;
    }

    (*(v37 + 56))(v38, v40, 1, v39);
    v41 = v20[2];
    v43 = v58;
    v42 = v59;
    v44 = v57;
    v41(v59, v58, v57);
    v45 = v63;
    sub_100046F88(v38, v63);
    v46 = v64;
    v41(v64, v42, v44);
    v47 = sub_10004DED0(&qword_10015B0B0, &qword_10010FAC0);
    sub_100046F88(v45, &v46[*(v47 + 48)]);
    sub_100046FF8(v38);
    v48 = v20[1];
    v48(v43, v44);
    sub_100046FF8(v45);
    return (v48)(v42, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100050D58(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v12 - v4;
  v6 = (a1 + *(type metadata accessor for SettingsApp() + 32));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v5, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10005294C(v5);

    return (*(v10 + 8))(v5, v9);
  }

  return result;
}

uint64_t sub_100050EE8()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType._currentDevice.getter();
  UTType.identifier.getter();
  (*(v1 + 8))(v4, v0);
  sub_100052614();
  v5 = sub_100051F04();
  v6 = [v5 name];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_10005115C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SettingsApp() + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  v4 = *(v11 + 24);

  v5 = sub_100010CD0();

  swift_getKeyPath();
  sub_100004C44(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier];

  State.wrappedValue.getter();
  if (v6 == 3)
  {
    v7 = v11;
    v8 = 10;
  }

  else
  {
    v7 = v11;
    v8 = 3;
  }

  v9 = *(v7 + 24);

  sub_100010CD0();

  sub_1000951B0(v8);
}

uint64_t sub_1000512F8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10010F8B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0xD000000000000013;
  *(a1 + 40) = 0x800000010011EC60;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  sub_100009670(0x654D206775626544, 0xEA0000000000756ELL, 0);

  sub_100009670(0xD000000000000013, 0x800000010011EC60, 0);

  sub_100009680(0xD000000000000013, 0x800000010011EC60, 0);

  sub_100009680(0x654D206775626544, 0xEA0000000000756ELL, 0);
}

uint64_t sub_1000513F8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B010, &qword_10010F9C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v12 = a1;
  sub_10004DED0(&qword_10015B038, &qword_100116910);
  sub_100007108();
  Menu.init(content:label:)();
  v7 = (a1 + *(type metadata accessor for SettingsApp() + 32));
  v9 = *v7;
  v8 = v7[1];
  v13 = v9;
  v14 = v8;
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  type metadata accessor for SettingsAppModel();
  sub_1000525A0(&qword_10015B018, &qword_10015B010, &qword_10010F9C8);
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  View.environment<A>(_:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10005161C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SettingsApp() + 28));
  v3 = *v1;
  v4 = v1[1];
  sub_10004DED0(&qword_10015B050, &qword_10010FA28);
  State.wrappedValue.getter();
  SettingsZeroKeywordNavigationItemsProvider.recents.getter();

  sub_10004DED0(&qword_10015B058, &qword_100116920);
  type metadata accessor for URL();
  type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  sub_1000525A0(&qword_10015B060, &qword_10015B058, &qword_100116920);
  sub_100004C44(&qword_10015B048, type metadata accessor for SettingsSearchZeroKeywordListRecentItem);
  sub_100004C44(&qword_10015B068, &type metadata accessor for SettingsNavigationEventRecord);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000517B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  v5 = v4[7];
  v6 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for SettingsAppModel();
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v7 & 1;
  v8 = v4[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B070, &qword_10010FA60);
  swift_storeEnumTagMultiPayload();
  v9 = v4[6];
  *(a2 + v9) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B078, &unk_100113E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100051930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for KeyEquivalent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsApp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  sub_1000095A8(a1, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_10000960C(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  View.keyboardShortcut(_:modifiers:)();
  (*(v4 + 8))(v7, v3);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100051BFC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SettingsApp() + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  v4 = *(v15 + 24);

  v5 = *(v4 + 16);

  swift_getKeyPath();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 24);
  v7 = *(v5 + 32);

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    State.wrappedValue.getter();
    v9 = *(v15 + 24);

    v10 = *(v9 + 16);

    sub_1000EE9F4(0, 0xE000000000000000);
  }

  State.wrappedValue.getter();
  v11 = *(v15 + 24);

  v12 = *(v11 + 16);

  if (*(v12 + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100051E94@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_100051F04()
{
  v0 = String._bridgeToObjectiveC()();

  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v0 error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t ScenePhase.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ScenePhase.background(_:))
  {
    return 0x756F72676B636162;
  }

  if (v7 == enum case for ScenePhase.inactive(_:))
  {
    return 0x6576697463616E69;
  }

  if (v7 == enum case for ScenePhase.active(_:))
  {
    return 0x657669746361;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t sub_100052234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_100052304@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004EF5C(v4, a1);
}

uint64_t sub_100052374(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000523F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000EE9F4(v2, v3);
}

uint64_t sub_10005252C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsApp() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000525A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100052374(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000525E8@<X0>(uint64_t *a1@<X8>)
{
  sub_100050EE8();
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_100052614()
{
  result = qword_10015B0D0;
  if (!qword_10015B0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015B0D0);
  }

  return result;
}

uint64_t sub_100052664(void *a1)
{
  v3 = *(type metadata accessor for SettingsApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004F6F4(a1, v4);
}

uint64_t sub_1000526D4(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsApp() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_10004F8C8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000527CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005283C()
{
  v1 = OBJC_IVAR____TtC11SettingsApp24SettingsAppLaunchActions___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_1000528E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

id sub_10005294C(_BYTE *a1)
{
  v2 = type metadata accessor for EngagementLinkData();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v153 = &v150[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v154 = &v150[-v7];
  v158 = type metadata accessor for SettingsURLDestination.Action(0);
  v8 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v159 = &v150[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = type metadata accessor for SettingsURLDestination(0);
  v10 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v160 = &v150[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SettingsURLRoute();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v164 = &v150[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v165 = &v150[-v17];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v161 = &v150[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v152 = &v150[-v24];
  v25 = __chkstk_darwin(v23);
  v155 = &v150[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v150[-v28];
  v30 = __chkstk_darwin(v27);
  v162 = &v150[-v31];
  v32 = __chkstk_darwin(v30);
  v166 = &v150[-v33];
  v34 = __chkstk_darwin(v32);
  v167 = &v150[-v35];
  v36 = __chkstk_darwin(v34);
  v38 = &v150[-v37];
  __chkstk_darwin(v36);
  v40 = &v150[-v39];
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_10000659C(v41, qword_1001696A0);
  v43 = v19[2];
  v168 = a1;
  v171 = v43;
  *&v172 = v19 + 2;
  v43(v40, a1, v18);

  v170 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = os_log_type_enabled(v44, v45);
  v169 = v38;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v163 = v18;
    v48 = v173;
    v49 = v29;
    v50 = v47;
    *&v175 = swift_slowAlloc();
    *v50 = 136315907;
    v51 = *v48;
    v52 = _typeName(_:qualified:)();
    v54 = sub_100025CF0(v52, v53, &v175);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_100025CF0(0x5255656C646E6168, 0xED0000293A5F284CLL, &v175);
    *(v50 + 22) = 2160;
    *(v50 + 24) = 1752392040;
    *(v50 + 32) = 2081;
    v55 = URL.absoluteString.getter();
    v57 = v56;
    v58 = v19[1];
    v58(v40, v163);
    v59 = sub_100025CF0(v55, v57, &v175);

    *(v50 + 34) = v59;
    _os_log_impl(&_mh_execute_header, v44, v45, "Start (%s.%s) url: '%{private,mask.hash}s'…", v50, 0x2Au);
    swift_arrayDestroy();
    v38 = v169;

    v29 = v49;
    v18 = v163;
  }

  else
  {

    v58 = v19[1];
    v58(v40, v18);
  }

  v60 = v19;
  v61 = v173[4];
  sub_1000543E4(&qword_10015B290, &type metadata accessor for URL);
  v62 = v168;
  v63 = v165;
  Array.first<A, B>(for:)();
  v64 = (v60[6])(v63, 1, v18);
  v65 = v166;
  if (v64 == 1)
  {
    sub_1000541DC(v63);
    v66 = (v171)(v38, v62, v18);
  }

  else
  {
    v67 = v167;
    v165 = v60[4];
    (v165)(v167, v63, v18);
    v68 = v62;
    v69 = v171;
    v171(v65, v68, v18);
    v70 = v162;
    v69(v162, v67, v18);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    v73 = os_log_type_enabled(v71, v72);
    v156 = v60;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v151 = v72;
      v75 = v74;
      v163 = swift_slowAlloc();
      *&v175 = v163;
      *v75 = 141558787;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      v76 = URL.absoluteString.getter();
      v77 = v65;
      v78 = v70;
      v79 = v58;
      v81 = v80;
      v168 = v29;
      v79(v77, v18);
      v82 = sub_100025CF0(v76, v81, &v175);

      *(v75 + 14) = v82;
      *(v75 + 22) = 2160;
      *(v75 + 24) = 1752392040;
      *(v75 + 32) = 2081;
      v83 = URL.absoluteString.getter();
      v85 = v84;
      v79(v78, v18);
      v29 = v168;
      v86 = sub_100025CF0(v83, v85, &v175);
      v58 = v79;

      *(v75 + 34) = v86;
      _os_log_impl(&_mh_execute_header, v71, v151, "Transformed URL: from '%{private,mask.hash}s' to '%{private,mask.hash}s'", v75, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v58(v70, v18);
      v58(v65, v18);
    }

    v38 = v169;
    v66 = (v165)(v169, v167, v18);
    v60 = v156;
  }

  v87 = v173[5];
  __chkstk_darwin(v66);
  *&v150[-16] = v38;
  v89 = sub_100053F1C(sub_100054244, &v150[-32], v88);
  if (!v89)
  {
    v29 = v161;
    v171(v161, v38, v18);
    v93 = Logger.logObject.getter();
    v104 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v93, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v175 = v106;
      *v105 = 136446210;
      v107 = URL.absoluteString.getter();
      v108 = v58;
      v110 = v109;
      v108(v29, v18);
      v111 = sub_100025CF0(v107, v110, &v175);
      v58 = v108;

      *(v105 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v93, v104, "No route provider found for url '%{public}s'", v105, 0xCu);
      sub_10000665C(v106);
      goto LABEL_18;
    }

LABEL_19:

    v58(v29, v18);
    goto LABEL_43;
  }

  v91 = v164;
  (*(v90 + 16))(v38, v89, v90);
  v92 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
  {
    v171(v29, v38, v18);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v172 = v58;
      *&v175 = v96;
      *v95 = 136446466;
      swift_getMetatypeMetadata();
      v97 = _typeName(_:qualified:)();
      v99 = sub_100025CF0(v97, v98, &v175);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2082;
      v100 = URL.absoluteString.getter();
      v102 = v101;
      (v172)(v29, v18);
      v103 = sub_100025CF0(v100, v102, &v175);

      *(v95 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v93, v94, "Route provider %{public}s discarded url '%{public}s'.", v95, 0x16u);
      swift_arrayDestroy();
      v58 = v172;
LABEL_18:

LABEL_43:
      sub_100053C28(v173, v38);
      return (v58)(v38, v18);
    }

    goto LABEL_19;
  }

  v112 = v160;
  sub_1000307EC(v91, v160, type metadata accessor for SettingsURLDestination);
  v113 = v159;
  sub_100054360(&v112[*(v157 + 20)], v159);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_100046400(v113, type metadata accessor for SettingsURLDestination.Action);
        v140 = v173[3];
        sub_1000A59A0(v112);
      }

      else
      {
        v125 = v173[3];
        v126 = *v113;
        sub_100010CD0();
        sub_1000951B0(v126);
      }

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v141 = v155;
      (v60[4])(v155, v113, v18);
      v142 = [objc_opt_self() defaultCenter];
      isa = SSScriptSafariViewControllerDataUpdateNotification.super.isa;
      URL._bridgeToObjectiveC()(&SSScriptSafariViewControllerDataUpdateNotification);
      v145 = v144;
      [v142 postNotificationName:isa object:v144];

      v58(v141, v18);
      v124 = v112;
      goto LABEL_42;
    }

    v127 = v155;
    (v60[4])(v155, v113, v18);
    v128 = v173[2];
    v129 = qword_10015AB30;

    if (v129 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_1000188C0(v128, v175, &qword_10015B2A0, &qword_10010FCB0);

    PassthroughSubject.send(_:)();

    v130 = v127;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v177 = v113[32];
      v137 = *(v113 + 1);
      v175 = *v113;
      v176 = v137;
      v138 = *(v173[3] + 16);
      KeyPath = swift_getKeyPath();
      v163 = v18;
      *&v172 = v150;
      __chkstk_darwin(KeyPath);
      v150[-16] = 0;
      *&v150[-8] = v138;
      v174 = v138;
      sub_1000543E4(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v18 = v163;
      sub_1000A57A4(&v175);
      sub_100026A04(&v175);
      v124 = v160;
      goto LABEL_42;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v172 = *v113;
      v156 = v60;
      v115 = v112;
      v116 = *(v113 + 2);
      v117 = *(v113 + 3);
      v118 = v173[3];
      v119 = type metadata accessor for TaskPriority();
      v120 = v154;
      (*(*(v119 - 8) + 56))(v154, 1, 1, v119);
      v121 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();

      v122 = static MainActor.shared.getter();
      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      *(v123 + 24) = &protocol witness table for MainActor;
      *(v123 + 32) = v121;
      *(v123 + 40) = v172;
      *(v123 + 56) = v116;
      *(v123 + 64) = v117;

      sub_100094AF4(0, 0, v120, &unk_10010FCA8, v123);

      v124 = v115;
LABEL_42:
      sub_100046400(v124, type metadata accessor for SettingsURLDestination);
      goto LABEL_43;
    }

    v146 = v173[3];
    v175 = 0u;
    v176 = 0u;
    v177 = 6;
    sub_1000A57A4(&v175);
LABEL_41:
    v124 = v112;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v147 = v113;
    v148 = v153;
    sub_1000307EC(v147, v153, type metadata accessor for EngagementLinkData);
    v149 = v173[3];
    sub_1000A71BC(v148);
    sub_100046400(v148, type metadata accessor for EngagementLinkData);
    goto LABEL_41;
  }

  v131 = v152;
  (v60[4])(v152, v113, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v134 = result;
    URL._bridgeToObjectiveC()(v133);
    v136 = v135;
    [v134 handleOAuthRedirectURL:v135];

    v130 = v131;
LABEL_35:
    v58(v130, v18);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_100053C28(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000659C(v9, qword_1001696A0);
  (*(v5 + 16))(v8, a2, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136315907;
    v13 = *a1;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100025CF0(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100025CF0(0x5255656C646E6168, 0xED0000293A5F284CLL, &v22);
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v17 = URL.absoluteString.getter();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_100025CF0(v17, v19, &v22);

    *(v12 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "…Complete (%s.%s) url: '%{private,mask.hash}s'", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100053F1C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100053FA0()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = OBJC_IVAR____TtC11SettingsApp16SettingsAppModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_100054064()
{
  v0[2] = swift_getKeyPath();
  v1 = type metadata accessor for SettingsAppNavigationModel();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[3] = sub_100007814();
  v0[4] = static Transforming<>.toSettingsNavigation.getter();
  sub_10004DED0(&qword_10015B288, &unk_10010FC60);
  v4 = swift_allocObject();
  *(v4 + 32) = &type metadata for OAuthURLRoute;
  *(v4 + 40) = &off_1001524B8;
  *(v4 + 48) = &type metadata for ESIMProvisioningURLRoute;
  *(v4 + 56) = &off_100152368;
  *(v4 + 64) = &type metadata for FinanceScriptURLRoute;
  *(v4 + 72) = &off_1001523A0;
  *(v4 + 80) = &type metadata for FinishSetupURLRoute;
  *(v4 + 88) = &off_1001523D8;
  *(v4 + 96) = &type metadata for InternetAccountsSettingsURLRoute;
  *(v4 + 104) = &off_100152480;
  *(v4 + 112) = &type metadata for FollowUpURLRoute;
  *(v4 + 120) = &off_100152410;
  *(v4 + 128) = &type metadata for HealthToHealthDataRedirectRoute;
  *(v4 + 136) = &off_100152448;
  *(v4 + 144) = &type metadata for AppInstallationSettingsURLRoute;
  *(v4 + 152) = &off_100152330;
  *(v4 + 160) = &type metadata for PaymentsAndContactlessRedirectRoute;
  *(v4 + 168) = &off_1001524F0;
  *(v4 + 176) = &type metadata for AMSEngagementURLRoute;
  *(v4 + 184) = &off_1001522F8;
  *(v4 + 16) = xmmword_10010FBE0;
  *(v4 + 192) = &type metadata for SettingsNavigationURLRoute;
  *(v4 + 200) = &off_100152550;
  v0[5] = v4;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1000541DC(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054290(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000543E4(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100054360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000543E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005442C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000A924;

  return sub_1000B2F84(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100054520(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v10 == 2)
    {
      if ((v9 & 0xC0) != 0x80 || v4 != v7 || v5 != v8)
      {
        return 0;
      }
    }

    else
    {
      v15 = v9 >= 0xC0 && (v8 | v7) == 0;
      if (!v15 || v9 != 192)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    if ((v9 & 0xC0) != 0x40 || v4 != v7)
    {
      return 0;
    }
  }

  else
  {
    if (v9 >= 0x40)
    {
      return 0;
    }

    v11 = v4 == v7 && v5 == v8;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v6 ^ v9) & 1) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000545EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100054640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

BOOL sub_100054694(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1000546F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100054738(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL sub_100054788(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1000547D0(v7, v8);
}

BOOL sub_1000547D0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_1000548F0();
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_26;
        }
      }

      return 0;
    }

    if (v8 != 1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a1 + 16) == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_10:
    if (v5 != v7 || v4 != v6)
    {
      v10 = *a1;
      v11 = *a2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_26:
    if (a1[3] == a2[3] && a1[4] == a2[4] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return a1[5] == a2[5];
    }

    return 0;
  }

  if (!(v5 | v4))
  {
    if (v8 != 3 || (v6 | v7) != 0)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (v8 != 3)
  {
    return 0;
  }

  result = 0;
  if (v7 == 1 && !v6)
  {
    goto LABEL_26;
  }

  return result;
}

unint64_t sub_1000548F0()
{
  result = qword_10015EF70;
  if (!qword_10015EF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015EF70);
  }

  return result;
}

__n128 sub_10005493C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100054950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100054998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FamilyRowStatus();
  sub_100054C28();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v17 == v15 && v18 == v16)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = *(a3 + 20);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100054B20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FamilyRowStatus();
  sub_100054C28();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = *(type metadata accessor for PrimarySettingsListFamilyLinkModel() + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}