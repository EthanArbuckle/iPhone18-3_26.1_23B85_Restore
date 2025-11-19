double sub_1003FE548(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v48 = a5;
  v40 = a4;
  v41 = a3;
  v37 = sub_10077164C();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076D1AC();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_10076E1EC();
  v10 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076E21C();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076664C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009520A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v45 = sub_10000A5D4(&qword_10094DC40);
  v42 = *(v45 - 8);
  v22 = __chkstk_darwin(v45);
  v24 = &v35 - v23;
  (*(v19 + 16))(v21, v41, v18, v22);
  sub_10076FCFC();
  v41 = v24;
  sub_10076FDBC();
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v18) = sub_10077124C();
  v25 = v17;
  v26 = v38;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v39);
  *v9 = UIFontTextStyleBody;
  v27 = v44;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v44);
  v51 = sub_10076D9AC();
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v50);
  v49[3] = v27;
  v49[4] = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v49);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v43;
    sub_10076E1FC();
    sub_10076E1AC();
    (*(v46 + 8))(v30, v47);
    sub_10000CF78(v50, v51);
    v31 = v35;
    sub_1000FF02C();
    v32 = v48;
    sub_10076D40C();
    (*(v36 + 8))(v31, v37);
    sub_10000CD74(v50);
  }

  else
  {
    v33 = v43;
    sub_10076E1FC();
    v32 = v48;
    sub_10076E1DC();
    (*(v46 + 8))(v33, v47);
  }

  swift_getObjectType();
  sub_1002A7528(v32);
  (*(v42 + 8))(v41, v45);
  return a1;
}

double sub_1003FECB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v32 = a3;
  v5 = sub_10077164C();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076E21C();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520A0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v31 = sub_10000A5D4(&qword_10094DC40);
  v18 = *(v31 - 8);
  v19 = __chkstk_darwin(v31);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  sub_10076FCFC();
  sub_10076FDBC();
  swift_getObjectType();
  sub_1002AC394(a4, v13);
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = sub_10077124C();
  (*(v8 + 8))(v10, v7);
  v22 = sub_1002ADC24(a4);
  if (v17)
  {
    v23 = v22;
    sub_10076E1AC();
    sub_10000CF78(v35, v35[3]);
    v24 = v27;
    sub_1000FF02C();
    sub_10076D40C();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
    sub_10000CD74(v35);
  }

  else
  {
    sub_100770AFC();
    v23 = v25;
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
  }

  return v23;
}

unint64_t sub_1003FF16C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v66 = a5;
  v69 = a3;
  v70 = sub_10076997C();
  v53 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10076502C();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10076504C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D3DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009520A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v61 = sub_10000A5D4(&qword_10094DC40);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v20 = &v52 - v19;
  sub_10000A570(a1, v78);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760F7C();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_10076FCFC();
  v57 = v20;
  sub_10076FDBC();
  v21 = v81;
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v11, qword_1009A1708);
  v23 = [v66 traitCollection];
  v71 = sub_100770B3C();

  (*(v12 + 16))(v14, v22, v11);
  v55 = type metadata accessor for DynamicTypeLinkedLabel();
  v24 = objc_allocWithZone(v55);
  v25 = sub_10050BDFC(v14, 0, 0);
  sub_100760F6C();
  v26 = sub_10076082C();
  v27 = sub_100107BF4(v26, sub_100376A9C);

  v28 = sub_10076081C();
  v54 = v25;
  sub_10050C274(v28, 0, v27);

  result = sub_100760F5C();
  v30 = result;
  if (result >> 62)
  {
    v51 = result;
    result = sub_10077158C();
    v30 = v51;
    v31 = result;
  }

  else
  {
    v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v21;
  if (v31)
  {
    if (v31 < 1)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v68 = v30 & 0xC000000000000001;
    v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v33 = (v53 + 8);
    v34 = _swiftEmptyArrayStorage;
    v69 = v30;
    do
    {
      if (v68)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_100769C3C();
      sub_10076081C();

      v35 = v71;
      v36 = sub_10075F9DC();

      v37 = sub_10076C04C();
      v79 = v37;
      v80 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
      v38 = sub_10000DB7C(v78);
      (*(*(v37 - 8) + 104))(v38, v67, v37);
      v39 = v36;
      v40 = v35;
      sub_10076C90C();
      sub_10000CD74(v78);
      sub_10076993C();
      sub_10076994C();
      (*v33)(v8, v70);
      sub_10000A570(v78, &v75);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_10049D428(0, v34[2] + 1, 1, v34);
      }

      v42 = v34[2];
      v41 = v34[3];
      if (v42 >= v41 >> 1)
      {
        v34 = sub_10049D428((v41 > 1), v42 + 1, 1, v34);
      }

      ++v32;

      sub_10000CD74(v78);
      v34[2] = v42 + 1;
      sub_100012498(&v75, &v34[5 * v42 + 4]);
    }

    while (v31 != v32);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v43 = [v66 traitCollection];
  sub_10076E20C();

  v44 = sub_10076DDDC();
  swift_allocObject();
  v45 = sub_10076DDBC();
  if (qword_10093F7A8 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = sub_10000A61C(v60, qword_10099D0C8);
  (*(v58 + 16))(v62, v47, v46);
  sub_100760F4C();
  v79 = v55;
  v80 = &protocol witness table for UIView;
  v78[0] = v54;
  v48 = v54;
  sub_10016D554(v34);

  v76 = v44;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  *&v75 = v45;
  v73 = v44;
  v72 = v45;
  swift_retain_n();
  v49 = v63;
  sub_10076503C();
  sub_100409428(&unk_100956E70, &type metadata accessor for PrivacyHeaderLayout);
  v50 = v65;
  sub_10076D2AC();

  (*(v64 + 8))(v49, v50);
  (*(v59 + 8))(v57, v61);
}

double sub_1003FFBC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10076523C();
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076525C();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009520A0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v28 = sub_10000A5D4(&qword_10094DC40);
  v16 = *(v28 - 8);
  v17 = __chkstk_darwin(v28);
  v19 = &v27 - v18;
  (*(v13 + 16))(v15, a2, v12, v17);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10065132C(a4, v8);
  swift_getObjectType();
  sub_1006525E0();
  v20 = sub_10076DDDC();
  swift_allocObject();
  v21 = sub_10076DDBC();
  v34 = v20;
  v35 = &protocol witness table for LayoutViewPlaceholder;
  v33 = v21;
  swift_allocObject();
  v22 = sub_10076DDBC();
  v31 = v20;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v22;
  sub_10076524C();
  sub_100409428(&qword_10095FFF0, &type metadata accessor for SmallBreakoutLayout);
  v23 = v29;
  sub_10076D2AC();
  v25 = v24;
  (*(v9 + 8))(v11, v23);
  (*(v16 + 8))(v19, v28);
  return v25;
}

double sub_1003FFF58(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10000A5D4(&qword_10094DC40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10000A570(a1, v19);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076219C();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  v17 = v19[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v19[0] = sub_1001052B0(v17, a5);
  sub_10076DDDC();
  sub_10076D2AC();
  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_1004001C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = sub_10076718C();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1007671AC();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076997C();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_1009520A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - v13;
  v46 = sub_10000A5D4(&qword_10094DC40);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = v41 - v15;
  sub_10000A570(a1, v59);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007636DC();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  v44 = v16;
  sub_10076FDBC();
  v17 = v59[5];
  v18 = sub_100016F40(0, &qword_100942F00);
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v42 = sub_10076D3DC();
  sub_10000A61C(v42, qword_1009A17F8);
  v19 = [a4 traitCollection];
  v20 = sub_100770B3C();

  sub_1007636CC();
  v21 = sub_10076C04C();
  v59[3] = v21;
  v22 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v59[4] = v22;
  v23 = sub_10000DB7C(v59);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(v21 - 8);
  v41[1] = v17;
  v26 = *(v25 + 104);
  v53 = a4;
  v26(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
  v27 = v20;
  v41[0] = v18;
  v28 = v27;
  sub_10076C90C();
  sub_10000CD74(v59);
  v43 = v28;
  sub_10076996C();
  sub_10076994C();
  v29 = *(v55 + 8);
  v55 += 8;
  v29(v10, v54);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v42, qword_1009A1810);
  v30 = [v53 traitCollection];
  v31 = sub_100770B3C();

  sub_1007636BC();
  v58[3] = v21;
  v58[4] = v22;
  v32 = sub_10000DB7C(v58);
  v26(v32, v24, v21);
  v33 = v31;
  sub_10076C90C();
  sub_10000CD74(v58);
  sub_10076996C();
  sub_10076994C();
  v29(v10, v54);
  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v34 = v48;
  v35 = sub_10000A61C(v48, qword_10099F0D0);
  (*(v47 + 16))(v49, v35, v34);
  sub_10000A570(v59, v57);
  sub_10000A570(v58, v56);
  v36 = v50;
  sub_10076719C();
  sub_100409428(&qword_100954110, &type metadata accessor for PrivacyDefinitionLayout);
  v37 = v52;
  sub_10076D2AC();
  v39 = v38;

  (*(v51 + 8))(v36, v37);
  sub_10000CD74(v58);
  sub_10000CD74(v59);
  (*(v45 + 8))(v44, v46);

  return v39;
}

double sub_1004009D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a4;
  v25 = sub_10076997C();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009520A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v24 = sub_10000A5D4(&qword_10094DC40);
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v23 - v14;
  sub_10000A570(a1, v27);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007644DC();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_1007644CC();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  sub_10000A61C(v16, qword_1009A1480);
  v17 = [v26 traitCollection];
  sub_100770B3C();

  v18 = sub_10076C04C();
  v28 = v18;
  v29 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v19 = sub_10000DB7C(v27);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  sub_10076C90C();
  sub_10000CD74(v27);
  sub_10076996C();
  sub_10076994C();
  (*(v6 + 8))(v8, v25);
  sub_10000CF78(v27, v28);
  sub_10076D2BC();
  v21 = v20;
  (*(v13 + 8))(v15, v24);
  sub_10000CD74(v27);

  return v21;
}

double sub_100400E30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = a4;
  v6 = sub_1007693CC();
  __chkstk_darwin(v6 - 8);
  v45 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007693EC();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10076997C();
  v10 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009520A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - v15;
  v17 = sub_10000A5D4(&qword_10094DC40);
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  sub_10000A570(a1, v74);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076686C();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_10076FCFC();
  v42 = v19;
  sub_10076FDBC();
  v56 = v74[5];
  sub_10076682C();
  v20 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v55 = sub_10076D3DC();
  sub_10000A61C(v55, qword_1009A2038);
  v21 = [v49 traitCollection];
  sub_100770B3C();

  v22 = sub_10076C04C();
  v74[3] = v22;
  v54 = sub_100409428(&qword_100943230, &type metadata accessor for Feature);
  v74[4] = v54;
  v23 = sub_10000DB7C(v74);
  v24 = *(*(v22 - 8) + 104);
  v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v52 = v24;
  v24(v23);
  sub_10076C90C();
  v50 = v20;
  sub_10000CD74(v74);
  sub_10076996C();
  sub_10076994C();
  v51 = *(v10 + 8);
  v51(v12, v57);
  sub_10076683C();
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v55, qword_1009A2050);
  v25 = v49;
  v26 = [v49 traitCollection];
  sub_100770B3C();

  v73[3] = v22;
  v73[4] = v54;
  v27 = sub_10000DB7C(v73);
  v52(v27, v53, v22);
  sub_10076C90C();
  sub_10000CD74(v73);
  sub_10076996C();
  sub_10076994C();
  v51(v12, v57);
  sub_10076685C();
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v55, qword_1009A2068);
  v28 = [v25 traitCollection];
  sub_100770B3C();

  v72[3] = v22;
  v72[4] = v54;
  v29 = sub_10000DB7C(v72);
  v52(v29, v53, v22);
  sub_10076C90C();
  sub_10000CD74(v72);
  sub_10076996C();
  sub_10076994C();
  v51(v12, v57);
  v30 = sub_10076DDDC();
  swift_allocObject();
  v31 = sub_10076DDAC();
  v32 = swift_allocObject();
  v32[2] = v56;
  v32[3] = v25;
  v32[4] = v41[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v33 = sub_10076DD9C();
  sub_10013D454(v25, v45);
  v71 = 0;
  *&v69[40] = 0u;
  v70 = 0u;
  sub_10000A570(v74, v69);
  sub_10000A570(v73, &v68);
  sub_10000A570(v72, &v67);
  v65 = v30;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v31;

  v34 = [v25 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v35 = sub_10076DDBC();
  v62 = v30;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v61 = v35;
  v59 = v30;
  v58 = v33;

  v36 = v46;
  sub_1007693DC();
  sub_100409428(&unk_1009544C0, &type metadata accessor for GameCenterReengagementLayout);
  v37 = v48;
  sub_10076D2AC();
  v39 = v38;

  (*(v47 + 8))(v36, v37);
  sub_10000CD74(v72);
  sub_10000CD74(v73);
  sub_10000CD74(v74);
  (*(v43 + 8))(v42, v44);

  return v39;
}

double sub_100401794(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_10077164C();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076E21C();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076664C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520A0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v32 = sub_10000A5D4(&qword_10094DC40);
  v18 = *(v32 - 8);
  v19 = __chkstk_darwin(v32);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = sub_10077124C();
  (*(v11 + 8))(v13, v10);
  swift_getObjectType();
  sub_100079BE0(a4, v9);
  type metadata accessor for InAppPurchaseLockupView();
  v22 = sub_1000CBBB0(a4);
  if (v17)
  {
    v23 = v22;
    sub_10076E1AC();
    sub_10000CF78(v35, v35[3]);
    v24 = v27;
    sub_1000FF02C();
    sub_10076D40C();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v9, v34);
    (*(v18 + 8))(v21, v32);
    sub_10000CD74(v35);
  }

  else
  {
    sub_100770AFC();
    v23 = v25;
    (*(v33 + 8))(v9, v34);
    (*(v18 + 8))(v21, v32);
  }

  return v23;
}

uint64_t sub_100401C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_10000A5D4(&unk_100946700);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760E0C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  (*(v11 + 16))(v13, a2, v10);
  sub_10076FCFC();
  sub_10076F87C();
  v19 = sub_10075FF6C();
  v20 = [v19 length];

  v21 = &selRef_initWithTabBarSystemItem_tag_;
  if (v20 <= 0)
  {
    [*&v6[qword_10094C5D8] setText:0];
    v6[qword_10099D798] = 0;
    v31 = *&v6[qword_10094C5C8];
    [v31 setHidden:1];
    goto LABEL_7;
  }

  v46 = v17;
  v47 = v15;
  v48 = v14;
  v22 = sub_10075FF6C();
  v23 = [a5 traitCollection];
  v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
  v49 = [v22 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1000275EC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_100894448;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  [v22 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = *&v6[qword_10094C5D8];
  [isEscapingClosureAtFileLocation setAttributedText:v29];
  if (qword_10093F9A8 != -1)
  {
LABEL_22:
    swift_once();
  }

  [isEscapingClosureAtFileLocation setTextColor:qword_10099D780];
  v6[qword_10099D798] = 1;
  v31 = *&v6[qword_10094C5C8];
  [v31 setHidden:0];

  v15 = v47;
  v14 = v48;
  v17 = v46;
  v21 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_7:
  v32 = *&v6[qword_10094C5D0];
  sub_10075FF7C();
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v32 v21[250]];

  v35 = sub_10075FF4C();
  v6[qword_10099D790] = (v35 & 1) == 0;
  sub_100027A78(v35);
  if ((sub_10075FF4C() & 1) == 0 && v6[qword_10099D798] != 1)
  {
    sub_10075FD2C();
    sub_10075FBAC();
  }

  sub_1007638EC();
  if (sub_10075FF4C())
  {
    [v31 setBackgroundColor:0];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10);
    v36 = sub_100770D5C();
    [v31 setBackgroundColor:v36];
  }

  if (sub_100760DFC())
  {
    v37 = [v6 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v39 = v38;

    sub_10076BEFC();
    v41 = v40;
    sub_10076BEFC();
    v43 = v42;

    result = (*(v15 + 8))(v17, v14);
    v44 = &v6[qword_1009A3418];
    *v44 = v39;
    v44[1] = v39 * (v41 / v43);
  }

  else
  {

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_100402324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10040233C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_10000A5D4(&unk_100946700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076382C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
    v15 = v2;
    sub_1007637FC();
    v16 = sub_10076FF6C();

    [v14 setText:v16];

    sub_10076381C();
    v17 = sub_1007637EC();
    v18 = sub_10076082C();
    v19 = sub_100107BF4(v18, sub_1000368B8);

    v20 = sub_10076081C();
    v23[0] = v9;
    sub_10050C274(v20, v17, v19);

    v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
    v22 = sub_1007637DC();
    [v21 setTintColor:v22];

    *&v15[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = sub_10076380C();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v23[0]);
  }

  return result;
}

uint64_t sub_100402678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009520C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = sub_10000A5D4(&unk_100946700);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-v10 - 8];
  sub_10000A570(a1, v15);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C0CC();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14;
    (*(v5 + 16))(v7, a2, v4);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1004648B8(v13, 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100402870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009520C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  v10 = sub_10000A5D4(&unk_100946700);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12 - 8];
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007621CC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1007621BC();
    sub_10076260C();

    sub_1007621AC();
    if (v15)
    {
      v16 = sub_10076045C();
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
    *&v3[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = v16;
    v18 = v16;

    sub_10032280C();
    [v3 setNeedsLayout];

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100402AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000A5D4(&unk_100946700);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F1FC();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    sub_10076FCFC();
    sub_10076F87C();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100402D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_10000A5D4(&unk_1009520C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_10000A5D4(&unk_100946700);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F29C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100761EDC();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      sub_10076C52C();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100402F48(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_10000A5D4(&unk_100946700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  sub_10000A570(a1, v19);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760DAC();
  result = swift_dynamicCast();
  if (result)
  {
    v17[1] = v2;
    v14 = v18;
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10000A5D4(&unk_1009467A0);
    sub_10076F64C();
    sub_10076FC1C();
    v18 = v14;
    sub_10075F74C();

    v15 = v19[0];
    if ((~v19[0] & 0xF000000000000007) != 0)
    {
      v16 = v19[1];
    }

    else
    {

      v16 = 0;
      v15 = v14;
    }

    sub_1001B7BA8(v15, v16);
    sub_1000A9094(v15, v16);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1004031D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = sub_10076B6EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10000A5D4(&unk_100946700);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_10000A570(a1, v29);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B51C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10076B4FC();
    if (v18)
    {
      v19 = sub_10076FF6C();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    sub_10076B6AC();
    sub_100409428(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v21 = sub_10077124C();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = sub_10076B50C();
      v23 = &v20[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_1003CE7AC();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100403520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_10076D39C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_10000A5D4(&unk_100946700);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B56C();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    sub_10076FCFC();
    sub_10076F87C();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView];
    v24 = sub_10076B53C();
    sub_1003B2F6C(v24, v25);
    v26 = sub_10076B54C();
    sub_1003B36E0(v26, v27);
    v23[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = sub_10076B52C() & 1;
    sub_1003B3AD0();
    if (sub_10076B55C())
    {
      sub_10076BEFC();
      sub_10076BEFC();
      sub_10076D3AC();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10003837C(v9, &v23[v28], &unk_1009467E0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_100016F40(0, &qword_1009441F0);
      sub_10076422C();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      sub_10076D36C();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10003837C(v9, &v23[v42], &unk_1009467E0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_100403AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A5D4(&unk_1009520C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10000A5D4(&unk_100946700);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F1FC();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10069D2F0(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100403CD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_10000A5D4(&unk_100946700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C1AC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
    v15 = sub_10076C18C();
    v16 = v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_100133E3C(v16);
    v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
    sub_10076C19C();
    v18 = sub_10076FF6C();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100403F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19[0] = a5;
  v9 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10000A5D4(&unk_1009566B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C61C();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v19[2];
    (*(v10 + 16))(v12, a2, v9);
    sub_10076F87C();
    sub_100415110(v18, v16, a3, a4, v19[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100404188(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v104 = a2;
  v5 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v5 - 8);
  v92 = v85 - v6;
  v7 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v9 - 8);
  v93 = v85 - v10;
  v11 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v11 - 8);
  v91 = v85 - v12;
  v13 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v13 - 8);
  v90 = v85 - v14;
  v15 = sub_10076361C();
  __chkstk_darwin(v15 - 8);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10075FEEC();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v18 - 8);
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v85 - v21;
  v22 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v22 - 8);
  v97 = v85 - v23;
  v24 = sub_1007611EC();
  __chkstk_darwin(v24 - 8);
  v96 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v85 - v27;
  v28 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v28 - 8);
  v30 = v85 - v29;
  v31 = sub_10076121C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076481C();
  v102 = *(v35 - 8);
  v103 = v35;
  __chkstk_darwin(v35);
  v105 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_1009520C0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v85 - v39;
  v41 = sub_10000A5D4(&unk_100946700);
  v100 = *(v41 - 8);
  v101 = v41;
  __chkstk_darwin(v41);
  v43 = v85 - v42;
  sub_10000A570(a1, v108);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C88C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v85[0] = v3;
  v45 = v107;
  (*(v38 + 16))(v40, v104, v37);
  sub_10076FCFC();
  v104 = v43;
  sub_10076F87C();
  v85[1] = v45;
  sub_10076C86C();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();

  v46 = sub_10076D39C();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  v47 = v105;
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  v48 = v108[0];
  sub_10076B7CC();
  v49 = v97;
  sub_10076B85C();
  v50 = sub_10075DB7C();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v98;
  sub_10076B81C();
  v52 = v99;
  sub_10076B80C();
  type metadata accessor for VideoView();
  sub_100409428(&qword_100942810, type metadata accessor for VideoView);
  v96 = v48;
  v53 = sub_100762EEC();
  sub_10000CFBC(v52, &unk_10094C030);
  sub_10000CFBC(v51, &unk_10094C030);
  sub_10000CFBC(v49, &unk_1009435D0);
  sub_10000CFBC(v108, &qword_100943310);
  v54 = *(v85[0] + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_100016F40(0, &qword_1009441F0);
      v59 = v54;
      v60 = sub_100770EEC();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v87;
    v65 = v86;
    v66 = v88;
    (*(v87 + 104))(v86, enum case for CornerStyle.continuous(_:), v88);
    sub_1007638AC();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_1009602D8] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView];
  v69 = sub_10076C87C();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v89;
    sub_10076C85C();
    sub_1000C1B9C(v71);
    v72 = *&v54[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView];
    v73 = sub_10000A5D4(&qword_100945590);
    v74 = v90;
    (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
    v75 = sub_10075F78C();
    v76 = v91;
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v77 = sub_1007628DC();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_10000A5D4(&unk_100946750);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = sub_10076C54C();
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    v83 = v72;
    sub_1004D0A60(v70, v83, v74, v106, 0, 0, v76, v78, v82, v80);
    sub_10000CFBC(v82, &unk_100949290);
    v83[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v83 setNeedsLayout];

    sub_10000CFBC(v80, &qword_10094F730);
    sub_10000CFBC(v78, &unk_1009492A0);
    sub_10000CFBC(v76, &unk_10094D210);
    sub_10000CFBC(v74, &unk_100946760);
    (*(v102 + 8))(v105, v103);
  }

  else
  {
    v84 = v68;
    [v84 setHidden:1];

    (*(v102 + 8))(v47, v103);
  }

  return (*(v100 + 8))(v104, v101);
}

uint64_t sub_100404F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v66 = a2;
  v6 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v6 - 8);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  v11 = sub_10000A5D4(&unk_1009520C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = sub_10000A5D4(&qword_10094AA50);
  v68 = *(v15 - 8);
  v69 = v15;
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = sub_10000A5D4(&unk_100956700);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_10075F51C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  sub_10000A570(v25, v71);
  sub_10000A5D4(&qword_1009575A0);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v27);
    v64 = v22;
    v65 = v27;
    (*(v22 + 32))(v24, v20, v27);
    (*(v12 + 16))(v14, v66, v11);
    sub_10076F87C();
    *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = sub_10075F4EC();

    v30 = sub_10075F4FC();
    v31 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
    *v31 = v30;
    v31[1] = v32;

    v33 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];

    v34 = sub_10076FF6C();

    [v33 setText:v34];

    [v4 setNeedsLayout];
    v35 = sub_10075F50C();
    v36 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
    *v36 = v35;
    v36[1] = v37;

    sub_10031C0A4();
    v38 = sub_10075F4CC();
    if (v38)
    {
      v71[0] = v38;
      sub_10076B90C();
      sub_10076F64C();
      sub_100409428(&qword_100956710, &type metadata accessor for Action);
      sub_10076F56C();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v41 = sub_10000A5D4(&qword_100955BD0);
    v42 = 1;
    (*(*(v41 - 8) + 56))(v10, v39, 1, v41);
    v43 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_1000A912C(v10, &v4[v43], &qword_100952650);
    swift_endAccess();
    sub_10031C22C();
    sub_10000CFBC(v10, &qword_100952650);
    sub_100166C0C();
    v44 = v69;
    v45 = v17;
    sub_10076F84C();
    if ((v71[0] & 1) == 0)
    {
      v42 = sub_10075F4DC();
    }

    sub_10031DB84();
    v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = v42 & 1;
    sub_10031BDF8();
    v46 = sub_10075F4CC();
    if (v46)
    {
      v71[0] = v46;
      sub_10076B90C();
      sub_10076F64C();
      sub_100409428(&qword_100956710, &type metadata accessor for Action);
      v47 = v67;
      sub_10076F56C();

      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v67;
    }

    v49 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
    swift_beginAccess();
    sub_1000A912C(v47, &v4[v43], &qword_100952650);
    swift_endAccess();
    sub_10031C22C();
    sub_10000CFBC(v47, &qword_100952650);
    v50 = [v4 traitCollection];
    v51 = sub_1007706CC();

    v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v51 & 1) == 0;
    if (v51)
    {
      v52 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v53 = *&v4[v52];
      v54 = v64;
      if (v53)
      {
        [v53 removeFromSuperview];
        v55 = *&v4[v52];
      }

      else
      {
        v55 = 0;
      }

      v60 = v65;
      *&v4[v52] = 0;

      [v4 setNeedsLayout];
    }

    else
    {
      v56 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v57 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v58 = *&v4[v57];
      if (v58)
      {
        [v58 removeFromSuperview];
        v59 = *&v4[v57];
      }

      else
      {
        v59 = 0;
      }

      *&v4[v57] = v56;
      v61 = v56;

      if (v61)
      {
        sub_100016F40(0, &qword_100942F10);
        v62 = sub_100770CDC();
        [v61 setBackgroundColor:v62];

        v63 = [v4 contentView];
        [v63 addSubview:v61];
      }

      [v4 setNeedsLayout];

      v54 = v64;
      v60 = v65;
    }

    (*(v68 + 8))(v45, v44);
    return (*(v54 + 8))(v24, v60);
  }

  else
  {
    v29(v20, 1, 1, v27);
    return sub_10000CFBC(v20, &unk_100956700);
  }
}

uint64_t sub_1004058A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v7 = sub_10000A5D4(&unk_1009520C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9 + 8;
  v11 = sub_10000A5D4(&unk_100946700);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - v13 + 8;
  sub_10000A570(a1, v17);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076BC0C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100476FB8();

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100405AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100762A3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v23[0] = sub_10000A5D4(&unk_100946700);
  v12 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v14 = v23 - v13;
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076016C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_10076FCFC();
    sub_10076F87C();
    v16 = v23[1];
    sub_10076012C();
    v17 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v5 + 24))(v16 + v17, v7, v4);
    swift_endAccess();
    sub_100496EE4();
    (*(v5 + 8))(v7, v4);
    v18 = sub_10076013C();
    sub_100496C50(v18, v19);
    v20 = sub_10076014C();
    sub_100496C5C(v20, v21);
    *(v16 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_10076015C();

    v22 = sub_10076010C();
    sub_100499334();
    *(v16 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = v22;

    sub_100496C68();

    return (*(v12 + 8))(v14, v23[0]);
  }

  return result;
}

uint64_t sub_100405E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v21 = a4;
  v22 = a5;
  v11 = sub_10000A5D4(&unk_1009520C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = sub_10000A5D4(&unk_100946700);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0);
  a6(0);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    (*(v12 + 16))(v14, a2, v11);
    sub_10076FCFC();
    sub_10076F87C();
    v23(v20, v18, a3, v21, v22);

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_10040601C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_1009567A0);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v75 = &v63 - v10;
  v70 = sub_10076E1EC();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v12 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v63 - v15;
  v16 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_10000A5D4(&unk_1009520C0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - v21;
  v23 = sub_10000A5D4(&unk_100946700);
  v69 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_10000A570(a1, v79);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760F7C();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v78;
    (*(v20 + 16))(v22, a2, v19);
    sub_10076FCFC();
    sub_10076F87C();
    v79[0] = sub_100760F6C();
    sub_10076083C();
    v28 = sub_10076F64C();
    sub_100409428(&qword_1009467D0, &type metadata accessor for LinkableText);
    v73 = v28;
    v74 = a3;
    sub_10076F56C();

    v29 = sub_10000A5D4(&qword_1009459B8);
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    v30 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1000A912C(v18, v4 + v30, &qword_1009459C0);
    swift_endAccess();
    sub_1001063C8();
    sub_10000CFBC(v18, &qword_1009459C0);
    v31 = sub_100760F4C();
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v31 & 1;
    v32 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
    sub_100016F40(0, &qword_100942F10);
    v33 = v25;
    if (v31)
    {
      v34 = sub_100770CFC();
    }

    else
    {
      v34 = sub_100770D1C();
    }

    v35 = *(v32 + qword_10095B640);
    *(v32 + qword_10095B640) = v34;
    v36 = v34;
    if ((sub_100770EEC() & 1) == 0)
    {
      sub_10050C644();
    }

    v37 = sub_100760F5C();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_10077158C();
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v33;
    v65 = v23;
    v66 = v27;
    if (v39)
    {
      v79[0] = _swiftEmptyArrayStorage;
      result = sub_1004BB920(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return result;
      }

      v63 = v4;
      v40 = 0;
      v41 = v79[0];
      v42 = v75;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = sub_10077149C();
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v78 = v43;
        sub_100769C4C();
        sub_100409428(&qword_1009567B0, &type metadata accessor for PrivacyHeaderSupplementaryItem);
        sub_10076F56C();

        v79[0] = v41;
        v45 = v41[2];
        v44 = v41[3];
        if (v45 >= v44 >> 1)
        {
          sub_1004BB920(v44 > 1, v45 + 1, 1);
          v41 = v79[0];
        }

        ++v40;
        v41[2] = v45 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, v42, v76);
      }

      while (v39 != v40);

      v4 = v63;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v46 = v71;
    sub_100107E88();
    v47 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v41;

    sub_10010666C();
    if (sub_100760F4C())
    {
      v48 = *(v72 + 104);
      v72 += 104;
      LODWORD(v77) = enum case for Separator.Position.top(_:);
      v76 = v48;
      v48(v46);
      v75 = sub_10076D67C();
      v80 = v75;
      v81 = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v79);
      sub_10076D66C();
      v49 = v68;
      sub_10076E1FC();
      v50 = sub_10076E21C();
      v51 = v4;
      v52 = *(*(v50 - 8) + 56);
      v53 = 1;
      v52(v49, 0, 1, v50);
      v54 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000A912C(v49, v51 + v54, &unk_1009467C0);
      swift_endAccess();
      sub_100106E28();
      sub_10000CFBC(v49, &unk_1009467C0);
      if (*(*(v51 + v47) + 16))
      {
        v76(v71, v77, v70);
        v80 = v75;
        v81 = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v79);
        sub_10076D66C();
        v55 = v67;
        sub_10076E1FC();
        v53 = 0;
        v56 = v69;
      }

      else
      {
        v56 = v69;
        v55 = v67;
      }

      v52(v55, v53, 1, v50);
      v62 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000A912C(v55, v51 + v62, &unk_1009467C0);
      swift_endAccess();
      sub_100106E3C();

      sub_10000CFBC(v55, &unk_1009467C0);
      return (*(v56 + 8))(v64, v65);
    }

    else
    {
      v57 = sub_10076E21C();
      v58 = *(*(v57 - 8) + 56);
      v59 = v68;
      v58(v68, 1, 1, v57);
      v60 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000A912C(v59, v4 + v60, &unk_1009467C0);
      swift_endAccess();
      sub_100106E28();
      sub_10000CFBC(v59, &unk_1009467C0);
      v58(v59, 1, 1, v57);
      v61 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000A912C(v59, v4 + v61, &unk_1009467C0);
      swift_endAccess();
      sub_100106E3C();

      sub_10000CFBC(v59, &unk_1009467C0);
      return (*(v69 + 8))(v64, v65);
    }
  }

  return result;
}

uint64_t sub_100406AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11 - 8];
  v13 = sub_10000A5D4(&unk_100946700);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15 - 8];
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007616DC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    sub_10076FCFC();
    sub_10076F87C();
    v18 = [v5 contentView];
    [a5 pageMarginInsets];
    [v18 setLayoutMargins:?];

    v19 = sub_1007616CC();
    sub_1004A41D8(v19, v20);
    v21 = sub_1007616BC();
    sub_1004A41E4(v21, v22);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100406D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007617CC();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10000A5D4(&unk_1009520C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10000A5D4(&unk_100946700);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007617FC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1007617EC();
    sub_100067C68(v6);
    v16 = sub_1007617DC();
    sub_100068794(v16);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100406F98(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  v9 = sub_10000A5D4(&unk_100946700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-v11 - 8];
  sub_10000A570(a1, v16);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076219C();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v15;
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    *&v2[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = v14;

    *(*&v2[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = v14;

    sub_100103A50();
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1004071F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v25 = a2;
  v4 = sub_10076CA9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_10000A5D4(&unk_1009520C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = sub_10000A5D4(&unk_100946700);
  v26 = *(v15 - 8);
  v27 = v15;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_10000A570(a1, v30);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007698CC();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v29;
    (*(v12 + 16))(v14, v25, v11);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1007698BC();
    sub_100712610(v10);
    v20 = *(v5 + 8);
    v20(v7, v4);
    sub_10076CB1C();
    v20(v10, v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v28;
    v22[2] = v19;
    v22[3] = v23;
    v22[4] = v21;

    sub_10076CACC();

    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v23;

    sub_10076CAEC();

    return (*(v26 + 8))(v17, v27);
  }

  return result;
}

uint64_t sub_1004075BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10 - 8];
  v12 = sub_10000A5D4(&unk_100946700);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14 - 8];
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F29C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100761EDC();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;

      sub_1002F017C(v18, a3);
    }

    else
    {
      sub_10076C52C();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_7:
        [v4 setNeedsLayout];

        return (*(v13 + 8))(v15, v12);
      }

      v20 = v19;

      sub_1002F0400(v20, a3);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100407848(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009520C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v8 = sub_10000A5D4(&unk_100946700);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10 - 8];
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007636DC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, a2, v4);
    sub_10076FCFC();
    sub_10076F87C();
    v13 = sub_1007636CC();
    sub_100371210(v13, v14);
    v15 = sub_1007636BC();
    sub_10037121C(v15, v16);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100407A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v63 = a5;
  v9 = sub_10000A5D4(&unk_100946740);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_10076545C();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10076C96C();
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v56 - v18;
  v19 = sub_10000A5D4(&unk_1009520C0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_10000A5D4(&unk_100946700);
  v64 = *(v23 - 8);
  v65 = v23;
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  sub_10000A570(a1, v68);
  sub_10000A5D4(&qword_1009575A0);
  sub_100763D9C();
  result = swift_dynamicCast();
  if (result)
  {
    v56 = v11;
    (*(v20 + 16))(v22, a2, v19);
    sub_10076FCFC();
    v57 = v25;
    sub_10076F87C();
    v27 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_100763D8C();
    v69._object = 0x80000001007D1EE0;
    v69._countAndFlagsBits = 0xD000000000000032;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_100767D6C(v69, v28, v70);
    v29 = sub_10076FF6C();

    [v27 setText:v29];

    v30 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = v63;
    v32 = [v63 traitCollection];
    sub_1000BFFCC();

    v33 = sub_10076FF6C();

    [v30 setText:v33];

    v34 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel);
    sub_100763D6C();
    v35 = sub_10076FF6C();

    [v34 setText:v35];

    v36 = sub_100763D5C();
    if (*(v36 + 16))
    {
      v37 = v66;
      v38 = *(v67 + 16);
      v39 = v60;
      v38(v66, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v60);

      v38(v16, v37, v39);
      sub_100763D7C();
      v40 = [v31 traitCollection];
      LOBYTE(v38) = sub_1007706EC();

      v41 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v38 & 1) == 0)
      {
        v41 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v58 + 104))(v14, *v41, v59);
      v42 = objc_allocWithZone(sub_10076546C());
      v43 = sub_10076544C();
      v44 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v45 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v45)
      {
        [v45 removeFromSuperview];
        v46 = *(v6 + v44);
      }

      else
      {
        v46 = 0;
      }

      v50 = v56;
      *(v6 + v44) = v43;
      v51 = v43;

      [*(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v51];
      if (sub_100763D7C() < 2)
      {
        v52 = v57;
        if (qword_10093FAB8 != -1)
        {
          swift_once();
        }

        v53 = qword_10099D918;
      }

      else
      {
        v52 = v57;
        if (qword_10093FAC0 != -1)
        {
          swift_once();
        }

        v53 = qword_10099D930;
      }

      v54 = v62;
      v55 = sub_10000A61C(v62, v53);
      (*(v61 + 16))(v50, v55, v54);
      swift_beginAccess();
      sub_1007675EC();
      swift_endAccess();

      (*(v67 + 8))(v66, v39);
      return (*(v64 + 8))(v52, v65);
    }

    else
    {

      v47 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v48)
      {
        [v48 removeFromSuperview];
        v49 = *(v6 + v47);
      }

      else
      {
        v49 = 0;
      }

      *(v6 + v47) = 0;

      return (*(v64 + 8))(v57, v65);
    }
  }

  return result;
}

uint64_t sub_1004081B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_10000A5D4(&unk_100946800);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10000A5D4(&unk_100946700);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076653C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_10076FCFC();
    sub_10076F87C();
    v19 = sub_10076651C();
    if (v20)
    {
      v21 = sub_10076652C();
      v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_100545FF4(v21, v9, 1, v24);

      sub_10000CFBC(v9, &unk_100946800);
      [v4 layoutIfNeeded];
    }

    else
    {
      sub_100545CF8(v19);
    }

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1004084B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_10000A5D4(&unk_100946700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_10000A570(a1, v17);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007644DC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    v14 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_1007644CC();
    v15 = sub_10076FF6C();

    [v14 setText:v15];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1004086E0(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_10000A5D4(&qword_100956728);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = sub_10076CBBC();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&unk_1009520C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_10000A5D4(&unk_100946700);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076887C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    sub_10076FCFC();
    sub_10076F87C();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    sub_10076886C();
    v40 = v19;
    sub_10076882C();
    sub_10076885C();
    sub_10076884C();
    sub_10076883C();
    v32 = v46;
    v33 = sub_10076881C();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_100409178;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_10000A5D4(&qword_100956738);
    sub_100409198();
    v37 = v48;
    sub_10076EC9C();
    sub_10076ECFC();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_100071820(&unk_100956790, &qword_100956728);
    sub_10000DB7C(v53);
    sub_10076EC8C();
    (*(v50 + 8))(v37, v38);
    sub_1007707FC();

    (*(v43 + 8))(v28, v44);
    sub_10000CFBC(v32, &qword_100956730);
    sub_10000CFBC(v10, &qword_100956730);
    sub_10000CFBC(v13, &qword_100956730);
    sub_10000CFBC(v16, &qword_100956730);
    sub_10000CFBC(v40, &qword_100956730);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_100408CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009520C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_10000A5D4(&unk_100946700);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  sub_10000A570(a1, v14);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076349C();
  swift_dynamicCast();
  (*(v5 + 16))(v7, a2, v4);
  sub_10076FCFC();
  sub_10076F87C();
  if (sub_10076342C())
  {

    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_100408ED0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10000A5D4(&unk_1009520C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5 + 8;
  v7 = sub_10000A5D4(&qword_10094AA50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9 + 8;
  v11 = sub_10075F51C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0);
  swift_dynamicCast();
  (*(v4 + 16))(v6, v17, v3);
  sub_10076F87C();
  if (sub_100318E24())
  {
    sub_100166C0C();
    sub_10076F83C();
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v15;
}

unint64_t sub_100409198()
{
  result = qword_100956740;
  if (!qword_100956740)
  {
    sub_10000CE78(&qword_100956738);
    sub_100409250();
    sub_100071820(&qword_100956780, &qword_10094CE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956740);
  }

  return result;
}

unint64_t sub_100409250()
{
  result = qword_100956748;
  if (!qword_100956748)
  {
    sub_10000CE78(&qword_100956750);
    sub_10000CE78(&qword_100956758);
    sub_10000CE78(&qword_100956760);
    sub_10076F64C();
    sub_10076CB8C();
    sub_100409428(&qword_100956768, &type metadata accessor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100071820(&unk_100956770, &qword_10094CE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956748);
  }

  return result;
}

uint64_t sub_100409428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100409470()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004094A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10040950C(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v4 = sub_10077111C();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v4 = sub_10077111C();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v4 = sub_10077111C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_100409724()
{
  v1 = sub_10077111C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_100409B3C();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = sub_10077112C();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)()
{
  v0 = sub_100409724();
  sub_100770F2C();
  v2 = v1;

  return v2;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v2 = sub_10077111C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v2 = sub_10077111C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1004099D8()
{
  v0 = sub_100409724();
  sub_100770F2C();
  v2 = v1;

  return v2;
}

uint64_t type metadata accessor for ButtonPlaceholder()
{
  result = qword_1009567E8;
  if (!qword_1009567E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100409AA4()
{
  result = sub_10077111C();
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

unint64_t sub_100409B3C()
{
  result = qword_100947240;
  if (!qword_100947240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100947240);
  }

  return result;
}

void *sub_100409B88(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    sub_1007714EC();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_100409D08(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  sub_1004BBAC4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v16, i);
    if (v3)
    {
      break;
    }

    v18 = v5;
    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      sub_1004BBAC4((v9 > 1), v10 + 1, 1);
      v5 = v18;
    }

    v5[2] = v10 + 1;
    v11 = &v5[9 * v10];
    *(v11 + 2) = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v16[3];
    v11[12] = v17;
    *(v11 + 4) = v13;
    *(v11 + 5) = v14;
    *(v11 + 3) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100409E34(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B5BC();
  v9 = (*(*(v8 - 8) + 48))(a1, 1, v8);
  result = 0;
  if (((v9 != 1) & a2) == 1)
  {
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    sub_10000A61C(v11, qword_1009A2380);
    sub_10076D17C();
    sub_10076D40C();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

uint64_t sub_100409FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007621EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076B5BC();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
    return 0;
  }

  v25 = v7;
  v26 = a4;
  v16 = enum case for ShelfBackground.none(_:);
  v17 = *(v11 + 104);
  v17(v13, enum case for ShelfBackground.none(_:), v10);
  v18 = sub_1007621DC();
  v19 = *(v11 + 8);
  v19(v13, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v17(v13, v16, v10);
  sub_10011BB7C();
  v20 = sub_10076FF1C();
  v19(v13, v10);
  if (v20)
  {
    return 0;
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D9AC();
  sub_10000A61C(v21, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v23 = v22;
  (*(v25 + 8))(v9, v6);
  return v23;
}

uint64_t sub_10040A38C(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_10000A5D4(&qword_1009568B0);
  __chkstk_darwin(v15 - 8);
  v17 = v31 - v16;
  v18 = sub_100766E4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076B71C();
  if (v22 >> 62)
  {
    v28 = a6;
    v29 = v22;
    v30 = sub_10077158C();
    v22 = v29;
    a6 = v28;
    if (v30)
    {
LABEL_3:
      v31[1] = a6;
      v23 = v22;
      (*(a8 + 16))(a4 & 1, a5, a7, a8, a1, a2);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        return sub_10000CFBC(v17, &qword_1009568B0);
      }

      else
      {
        v25 = (*(v19 + 32))(v21, v17, v18);
        __chkstk_darwin(v25);
        v31[-2] = v21;
        v26 = sub_100409B88(sub_1000774CC, &v31[-4], v23);

        v27._rawValue = v26;
        sub_100760BAC(v27);

        return (*(v19 + 8))(v21, v18);
      }
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

uint64_t sub_10040B080()
{
  if (sub_10076B71C() >> 62)
  {
    sub_10077158C();
  }
}

void sub_10040B0DC()
{
  sub_10077145C(40);
  sub_1007717CC();

  v0._object = 0x80000001007E4030;
  v0._countAndFlagsBits = 0xD000000000000026;
  sub_1007700CC(v0);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10040B188(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_10002ABBC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &unk_1009568A0);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v8, v11, v5);
    v13 = (*(v6 + 88))(v8, v5);
    if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v13 == enum case for Shelf.ContentType.upsellBreakout(_:) || v13 == enum case for Shelf.ContentType.smallBreakout(_:) || v13 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v13 == enum case for Shelf.ContentType.heroCarousel(_:))
    {
      return 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

uint64_t sub_10040B3D4(uint64_t a1, char a2)
{
  v3 = sub_100766E4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = sub_10076B71C();
  if (v10 >> 62)
  {
    v17 = v10;
    v18 = sub_10077158C();
    v10 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v11 = v10;
    if (a2)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    if (qword_100940348 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D39C();
    sub_10000A61C(v12, qword_10099F728);
    sub_10076D36C();
    sub_100766E2C();
    v13 = (*(v4 + 32))(v9, v6, v3);
    __chkstk_darwin(v13);
    *&v19[-16] = v9;
    v14 = sub_100409B88(sub_1000A9330, &v19[-32], v11);

    v15._rawValue = v14;
    sub_100760BAC(v15);

    return (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_10040B684()
{
  v0 = sub_100766E4C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10076B71C();
  if (v4 >> 62)
  {
    v10 = v4;
    v11 = sub_10077158C();
    v4 = v10;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
    v6 = sub_100766E2C();
    __chkstk_darwin(v6);
    *&v12[-16] = v3;
    v7 = sub_100409B88(sub_1000A9330, &v12[-32], v5);

    v8._rawValue = v7;
    sub_100760BAC(v8);

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_10040B87C()
{
  v0 = sub_100766E4C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10076B71C();
  if (v4 >> 62)
  {
    v11 = v4;
    v12 = sub_10077158C();
    v4 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    if (qword_10093FBE0 != -1)
    {
      swift_once();
    }

    v6 = sub_100763ADC();
    sub_10000A61C(v6, qword_10099DDA0);
    sub_1007639AC();
    v7 = sub_100766E2C();
    __chkstk_darwin(v7);
    *&v13[-16] = v3;
    v8 = sub_100409B88(sub_1000A9330, &v13[-32], v5);

    v9._rawValue = v8;
    sub_100760BAC(v9);

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_10040BA84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_10094CD50);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v8 = sub_10076428C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100766E4C();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076B71C();
  if (v15 >> 62)
  {
    v23 = v12;
    v24 = v15;
    v25 = sub_10077158C();
    v15 = v24;
    v12 = v23;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v27 = v12;
    v16 = v15;
    v17 = [a2 traitCollection];
    v26[1] = a3;
    v18 = v17;
    sub_1002AAFCC(v11);

    sub_10076425C();
    (*(v9 + 8))(v11, v8);
    v30 = a2;
    swift_unknownObjectRetain();
    sub_10075FDCC();
    (*(v28 + 8))(v7, v5);
    swift_unknownObjectRelease();
    v19 = sub_100766E2C();
    __chkstk_darwin(v19);
    v26[-2] = v14;
    v20 = sub_100409B88(sub_1000A9330, &v26[-4], v16);

    v21._rawValue = v20;
    sub_100760BAC(v21);

    return (*(v29 + 8))(v14, v27);
  }
}

uint64_t sub_10040BDF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v5 = sub_10076D39C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100766E4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = sub_10076B71C();
  if (v16 >> 62)
  {
    v22 = v16;
    v23 = sub_10077158C();
    v16 = v22;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v25 = v16;
    if (a2)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    if (qword_100940330 != -1)
    {
      swift_once();
    }

    v17 = sub_1007640EC();
    sub_10000A61C(v17, qword_10099F660);
    sub_1007640DC();
    sub_10076D36C();
    (*(v6 + 8))(v8, v5);
    sub_100766E2C();
    v18 = (*(v10 + 32))(v15, v12, v9);
    __chkstk_darwin(v18);
    *(&v24 - 2) = v15;
    v19 = sub_100409B88(sub_1000A9330, (&v24 - 4), v25);

    v20._rawValue = v19;
    sub_100760BAC(v20);

    return (*(v10 + 8))(v15, v9);
  }
}

void sub_10040C150(void *a1)
{
  sub_10040D8C8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_10040C200(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10040C254;
}

void sub_10040C254(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10040D8C8();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_10040D8C8();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

char *sub_10040C37C(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_10076475C();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  sub_10076F95C();
  sub_10000CFBC(v28, &unk_1009434C0);
  sub_10000CFBC(v29, &unk_1009434C0);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}

id sub_10040C780()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_10075FCEC(v15, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1009602D0);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_10040D8C8();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = 0;

  sub_100124EE0();
  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_10040C974()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_10076D3AC();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_10076D36C();
    v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    [v24 setFrame:{v19, v21, v23, v25}];
    v26 = [v1 contentView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    [v24 setCenter:{MidX, CGRectGetMidY(v49)}];
    (*(v3 + 8))(v5, v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [v1 contentView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v37 setFrame:{v40, v42, v44, v46}];
  }
}

void sub_10040CC98(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v5 = a1;
      v6 = v5;
      if (v4 == 1 && ([v5 size], v8 = v7, objc_msgSend(v6, "size"), v9 < v8) && (v10 = objc_msgSend(v6, "CGImage")) != 0)
      {
        v11 = v10;
        [v6 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];

        v14 = v13;
      }

      else
      {
        v14 = v6;
      }

      v15 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v16 = v14;
      v17 = v15;
      v19.value.super.isa = v14;
      v19.is_nil = 1;
      sub_10075FC5C(v19, v18);
    }
  }
}

id sub_10040CE0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell()
{
  result = qword_1009568E0;
  if (!qword_1009568E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040CF44()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_10076481C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_10040D054(uint64_t **a1))()
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
  v2[4] = sub_10040C200(v2);
  return sub_100019A4C;
}

uint64_t sub_10040D0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10040D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10040D184(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10040D2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10040D340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = sub_10076481C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D39C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v27);
  sub_10000A5D4(&unk_100942830);
  sub_100762A6C();
  result = swift_dynamicCast();
  if (result)
  {
    v26[2] = v26[3];
    v18 = sub_100762A5C();
    if (v18)
    {
      v19 = v18;
      v26[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        v26[0] = v19;
        v22 = qword_1009A2558;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v21[v22], v9);
        sub_10076476C();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v24 = [v3 contentView];
          [v24 bounds];

          sub_10076D30C();
          sub_10076B84C();
          sub_10076BFCC();

          type metadata accessor for VideoView();
          sub_10040D2B0(&unk_100942840, type metadata accessor for VideoView);
          sub_100760B8C();

          return (*(v14 + 8))(v16, v13);
        }

        sub_10000CFBC(v8, &unk_1009467E0);
      }

      else
      {
      }
    }

    if (sub_100762A4C())
    {
      if ((*(v3 + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (sub_10076BD4C() & 1) == 0)
      {
        v25 = [v3 contentView];
        [v25 bounds];

        v23 = [v3 contentView];
        [v23 bounds];
      }

      else
      {
        v23 = [v3 contentView];
        [v23 bounds];
      }

      sub_10076BFCC();
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10000CFBC(v27, &qword_100943310);
    }
  }

  return result;
}

void sub_10040D8C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10040D2B0(&qword_100942810, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1000E7228(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_10040D998()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  sub_10075FD2C();
  sub_10040D2B0(&qword_100951F78, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_10077140C();
  sub_100760BEC();
  sub_100016C74(v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + qword_1009602D0);

    sub_100016F40(0, &qword_10094A280);
    sub_10040DAF8();
    v6 = v5;
    sub_10077140C();
    sub_100760BEC();

    return sub_100016C74(v7);
  }

  return result;
}

unint64_t sub_10040DAF8()
{
  result = qword_100966100;
  if (!qword_100966100)
  {
    sub_100016F40(255, &qword_10094A280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966100);
  }

  return result;
}

uint64_t sub_10040DB60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10040DC08(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940430 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009569A0);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_10076D9AC();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000DB7C(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_10076D9BC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10040DDF4()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009569A0);
  v1 = sub_10000A61C(v0, qword_1009569A0);
  if (qword_100941010 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1E28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10040DF24()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  sub_100768EBC();
  if (v4)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v3 setTitle:v5];

  sub_100413254(&qword_100956A98, v6, type metadata accessor for GenericAccountPageViewController);
  swift_unknownObjectRetain();
  sub_100768E9C();
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v1 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [result setAlwaysBounceVertical:1];

  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_100016F40(0, &unk_100956AA0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    sub_10076FF9C();
    v12 = sub_10076FF6C();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  type metadata accessor for LinkableFooterView();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    sub_10076FF9C();
    v15 = sub_10076FF6C();
  }

  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v16 = result;
  type metadata accessor for HeaderView();
  v17 = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(v17);
  if (!v18)
  {
    sub_10076FF9C();
    v18 = sub_10076FF6C();
  }

  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  result = [v1 tableView];
  if (result)
  {
    v19 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return sub_100760C9C();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10040E4A4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
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

void sub_10040E64C(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (!a1 || ((sub_10077070C() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [a1 preferredContentSizeCategory];
  v11 = sub_10076FF9C();
  v13 = v12;
  if (v11 == sub_10076FF9C() && v13 == v14)
  {

    return;
  }

  v15 = sub_10077167C();

  if ((v15 & 1) == 0)
  {
LABEL_3:
    v6 = [v2 tableView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10040E8F8(void *a1)
{
  v3 = sub_100763D0C();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v114 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v115 = v111 - v6;
  v7 = sub_100763D3C();
  v119 = *(v7 - 1);
  v120 = v7;
  __chkstk_darwin(v7);
  v118 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10077164C();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100956A80);
  __chkstk_darwin(v11 - 8);
  v13 = v111 - v12;
  v14 = sub_1007614FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v111 - v19;
  v111[1] = *&v1[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter];
  sub_100768E3C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_74;
  }

  v121 = v15;
  v122 = v14;
  (*(v15 + 32))(v20, v13, v14);
  v126 = v20;
  v21 = sub_10040FC98(v20);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940430 != -1)
  {
    swift_once();
  }

  v123 = v1;
  v22 = sub_10076D3DC();
  sub_10000A61C(v22, qword_1009569A0);
  v124 = a1;
  v23 = [a1 traitCollection];
  v24 = sub_100770B3C();

  v25 = [v21 textLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setFont:v24];
  }

  v125 = v24;
  v27 = [v21 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setNumberOfLines:0];
  }

  v29 = [v21 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setLineBreakMode:0];
  }

  v31 = [v21 textLabel];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() labelColor];
    [v32 setTextColor:v33];
  }

  v34 = [v21 detailTextLabel];
  if (v34)
  {
    v35 = v34;
    [v34 setFont:v125];
  }

  v36 = [v21 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setNumberOfLines:0];
  }

  v38 = [v21 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setLineBreakMode:0];
  }

  v40 = [v21 detailTextLabel];
  v41 = v123;
  if (v40)
  {
    v42 = v40;
    v43 = [objc_opt_self() labelColor];
    [v42 setTextColor:v43];
  }

  [v21 setAccessoryType:0];
  [v21 setAccessoryView:0];
  v13 = v21;
  [v13 setUserInteractionEnabled:0];
  if (qword_100940418 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_100956928, qword_100956940);
  sub_1000FF02C();
  sub_10076D40C();
  v45 = v44;
  (*(v112 + 8))(v10, v113);
  v46 = v124;
  [v124 layoutMargins];
  v48 = v47;
  [v46 layoutMargins];
  [v13 setLayoutMargins:{v45, v48, v45}];
  v50 = v121;
  v49 = v122;
  (*(v121 + 16))(v17, v126, v122);
  v51 = (*(v50 + 88))(v17, v49);
  if (v51 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v50 + 96))(v17, v49);
    (*(v119 + 32))(v118, v17, v120);
    v52 = [v13 textLabel];
    if (v52)
    {
      v53 = v52;
      sub_100763D2C();
      v54 = sub_10076FF6C();

      [v53 setText:v54];
    }

    sub_100763D1C();
    (*(v116 + 104))(v114, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v117);
    sub_100413254(&qword_100956A88, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    sub_10077018C();
    sub_10077018C();
    v55 = &selRef_initWithTabBarSystemItem_tag_;
    if (aBlock == v133 && v128 == v134)
    {
      v56 = v117;
      v57 = *(v116 + 8);
      v57(v114, v117);
      v57(v115, v56);
    }

    else
    {
      v68 = sub_10077167C();
      v69 = *(v116 + 8);
      v70 = v49;
      v71 = v41;
      v72 = v117;
      v69(v114, v117);
      v73 = v72;
      v41 = v71;
      v49 = v70;
      v55 = &selRef_initWithTabBarSystemItem_tag_;
      v69(v115, v73);

      if ((v68 & 1) == 0)
      {
        v88 = [v13 textLabel];
        v74 = &selRef_initWithTabBarSystemItem_tag_;
        if (v88)
        {
          v89 = v88;
          v90 = [v124 tintColor];
          [v89 setTextColor:v90];
        }

        goto LABEL_37;
      }
    }

    [v13 setAccessoryType:1];
    v74 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_37:
    [v13 v74[257]];

    (*(v119 + 8))(v118, v120);
LABEL_60:
    v64 = &selRef_configurationWithWeight_;
    goto LABEL_61;
  }

  if (v51 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v51 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v51 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v50 + 96))(v17, v49);
        v91 = *(v17 + 1);
        v92 = v17[16];
        sub_100016F40(0, &qword_1009641D0);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = sub_100770F1C();
        v94 = [objc_allocWithZone(UISwitch) initWithFrame:v93 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v95 = sub_100768E7C();
        if (v95 == 2)
        {
          v96 = v92;
        }

        else
        {
          v96 = v95;
        }

        [v94 setOn:v96 & 1];
        [v13 setAccessoryView:v94];
        v97 = [v13 textLabel];
        if (v97)
        {
          v98 = v97;
          v55 = &selRef_initWithTabBarSystemItem_tag_;
          if (v91)
          {
            v99 = sub_10076FF6C();
          }

          else
          {
            v99 = 0;
          }

          [v98 setText:v99];
        }

        else
        {

          v55 = &selRef_initWithTabBarSystemItem_tag_;
        }

        [v13 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v50 + 8))(v17, v49);
      goto LABEL_55;
    }

    (*(v50 + 96))(v17, v49);
    v75 = [v13 textLabel];
    v64 = &selRef_configurationWithWeight_;
    if (v75)
    {
      v76 = v75;
      v77 = [objc_opt_self() secondaryLabelColor];
      [v76 setTextColor:v77];
    }

    v78 = [v13 textLabel];
    v55 = &selRef_initWithTabBarSystemItem_tag_;
    if (!v78)
    {
      goto LABEL_44;
    }

    v120 = v78;
    sub_100763D4C();
    v79 = sub_10076C5AC();

    v80 = [v124 traitCollection];
    v81 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v79];
    v124 = [v79 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v80;
    *(v82 + 32) = v81;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1000275EC;
    *(v83 + 24) = v82;
    v131 = sub_1000ACB04;
    v132 = v83;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_100026610;
    v130 = &unk_100894718;
    v84 = _Block_copy(&aBlock);
    v85 = v80;
    v86 = v81;

    [v79 enumerateAttributesInRange:0 options:v124 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

    if ((v84 & 1) == 0)
    {
      v87 = v120;
      [v120 setAttributedText:v86];

      v49 = v122;
      v41 = v123;
      v50 = v121;
LABEL_55:
      v55 = &selRef_initWithTabBarSystemItem_tag_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10000CFBC(v13, &qword_100956A80);
    result = sub_10077156C();
    __break(1u);
    return result;
  }

  (*(v50 + 96))(v17, v49);
  v58 = [v13 textLabel];
  if (v58)
  {
    v59 = v58;
    sub_10076859C();
    v60 = sub_10076FF6C();

    [v59 setText:v60];
  }

  v61 = [v13 textLabel];
  v55 = &selRef_initWithTabBarSystemItem_tag_;
  if (v61)
  {
    v62 = v61;
    sub_100016F40(0, &qword_100942F10);
    v63 = sub_100770D1C();
    [v62 setTextColor:v63];
  }

  v64 = &selRef_configurationWithWeight_;
  v65 = [v13 detailTextLabel];
  if (v65)
  {
    v66 = v65;
    sub_1007685AC();
    v67 = sub_10076FF6C();

    [v66 setText:v67];

    v64 = &selRef_configurationWithWeight_;
  }

LABEL_44:

LABEL_61:
  v100 = [v13 textLabel];
  if (v100)
  {
    v101 = v100;
    v102 = [v41 v55[274]];
    v103 = sub_10077070C();

    if (v103)
    {
      v104 = 2;
    }

    else
    {
      v104 = 0;
    }

    [v101 setTextAlignment:v104];
  }

  v105 = [v13 v64[105]];
  if (v105)
  {
    v106 = v105;
    v107 = [v41 v55[274]];
    v108 = sub_10077070C();

    if (v108)
    {
      v109 = 2;
    }

    else
    {
      v109 = 0;
    }

    [v106 setTextAlignment:v109];

    (*(v50 + 8))(v126, v49);
  }

  else
  {
    (*(v50 + 8))(v126, v49);
  }

  return v13;
}

void sub_10040FA54(void *a1)
{
  if ([a1 sender])
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_100016F40(0, &qword_100956A90);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;

        [v3 isOn];
        sub_100768E8C();
      }
    }
  }

  else
  {
    sub_10000CFBC(v6, &unk_1009434C0);
  }
}

id sub_10040FC98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007614FC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v5 + 8))(v8, v4);
    result = [v2 tableView];
    if (result)
    {
      v10 = result;
      v11 = sub_10076FF6C();
      v12 = [v10 dequeueReusableCellWithIdentifier:v11];

      if (!v12)
      {
        v13 = objc_allocWithZone(UITableViewCell);
        v14 = sub_10076FF6C();
        v12 = [v13 initWithStyle:1 reuseIdentifier:v14];
      }

      return v12;
    }

    __break(1u);
  }

  else
  {
    result = [v2 tableView];
    if (result)
    {
      v15 = result;
      v16 = sub_10076FF6C();
      v12 = [v15 dequeueReusableCellWithIdentifier:v16];

      if (!v12)
      {
        v17 = objc_allocWithZone(UITableViewCell);
        v18 = sub_10076FF6C();
        v12 = [v17 initWithStyle:0 reuseIdentifier:v18];
      }

      (*(v5 + 8))(v8, v4);
      return v12;
    }
  }

  __break(1u);
  return result;
}

id sub_10040FF58(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_10076FF9C();
    v10 = sub_10076FF6C();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_100410018(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_100768EAC();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_100940428 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_100956978, qword_100956990);
      sub_1000FF02C();
      sub_10076D40C();
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      [a1 layoutMargins];
      v14 = [v2 tableView];
      if (v14)
      {
        v15 = v14;
        [v14 layoutMargins];

        v16 = [v3 tableView];
        if (v16)
        {
          v17 = v16;
          [v16 layoutMargins];

          [a1 frame];
          CGRectGetWidth(v19);
          sub_100412A98(v12, v13, a1);

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
}

void sub_1004102DC(void *a1, void *a2)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v32 = a2;
    v11 = sub_100768EAC();
    if (v12)
    {
      v30[1] = v11;
      v31 = v2;
      v13 = qword_100940428;
      v14 = v32;
      if (v13 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_100956978, qword_100956990);
      sub_1000FF02C();
      sub_10076D40C();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      [a1 layoutMargins];
      v18 = v17;
      [a1 layoutMargins];
      [v10 setLayoutMargins:{0.0, v18, v16}];

      v19 = v14;
      v20 = [v10 textLabel];
      if (v20)
      {
        v21 = v20;
        v22 = sub_10076FF6C();

        [v21 setText:v22];
      }

      else
      {
      }

      v26 = [v10 textLabel];

      if (v26)
      {
        v27 = [v31 traitCollection];
        v28 = sub_10077070C();

        if (v28)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v26 setTextAlignment:v29];
      }
    }

    else
    {
      v23 = [v10 textLabel];
      if (v23)
      {
        v24 = v23;
        [v23 setText:0];
      }

      v25 = v32;
    }
  }
}

uint64_t sub_100410698(void *a1, uint64_t a2)
{
  v5 = sub_100763D0C();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = sub_100763D3C();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100956A80);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = sub_1007614FC();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = sub_10076F13C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter);
  result = sub_100768ECC();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = sub_10075E02C().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_100016F40(0, &qword_1009471F0);
      *v28 = sub_10077068C();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = sub_10076F16C();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_10094FFF8;
      v92 = xmmword_100950008;
      v93 = xmmword_100950018;
      v89 = xmmword_10094FFD8;
      v90 = xmmword_10094FFE8;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_10094FFD8;
      v101[1] = xmmword_10094FFE8;
      v101[3] = xmmword_100950008;
      v101[4] = xmmword_100950018;
      v94 = qword_100950028;
      v100 = v88;
      v102 = qword_100950028;
      v101[2] = xmmword_10094FFF8;
      sub_10014F864(&v89, v81);
      xmmword_10094FFF8 = v97;
      xmmword_100950008 = v98;
      xmmword_100950018 = v99;
      qword_100950028 = v100;
      xmmword_10094FFD8 = v95;
      xmmword_10094FFE8 = v96;
      sub_10000CFBC(v101, &unk_1009505F0);
      v45 = *(v77 + OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph);
      v46 = sub_10000A5D4(&unk_1009428E0);
      sub_1001F9960(&v83, v81);
      sub_10076F5AC();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10000CFBC(v24, &unk_100943200);
      }

      else
      {

        sub_100263BF0(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_10094FFF8;
      v81[3] = xmmword_100950008;
      v81[4] = xmmword_100950018;
      v82 = qword_100950028;
      v81[0] = xmmword_10094FFD8;
      v81[1] = xmmword_10094FFE8;
      xmmword_10094FFD8 = v89;
      xmmword_10094FFE8 = v90;
      xmmword_10094FFF8 = v91;
      xmmword_100950008 = v92;
      xmmword_100950018 = v93;
      qword_100950028 = v94;
      sub_10000CFBC(v81, &unk_1009505F0);
      sub_1001F99BC(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph);
      v49 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10000CFBC(v21, &unk_100943200);
      }

      else
      {

        sub_100263BF0(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    sub_100768E3C();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10000CFBC(v13, &qword_100956A80);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    sub_100763D1C();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_100413254(&qword_100956A88, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    sub_10077018C();
    sub_10077018C();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = sub_10077167C();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = sub_10075E02C().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

id sub_10041120C(void *a1, uint64_t a2)
{
  sub_100411638(a1, a2);
  result = [v2 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result layoutMargins];

  result = [v2 tableView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  [result layoutMargins];

  result = sub_100768EDC();
  if (result)
  {
    [a1 frame];
    CGRectGetWidth(v9);
    v7 = sub_10076080C();
    sub_100412DBC(v7, v8, a1);
  }

  return result;
}

void sub_1004113B4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (sub_100768EDC())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_100411638(a1, a3)}];

      v11 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
      v13 = sub_10076082C();
      v14 = sub_100107BF4(v13, sub_1000368B8);

      v15 = sub_10076081C();
      sub_10050C274(v15, 0, v14);

      v18 = *&v8[v11];
      v16 = [v3 traitCollection];
      LOBYTE(v14) = sub_10077070C();

      if (v14)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      [v18 setTextAlignment:v17];
    }

    else
    {
      v18 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
      sub_10050C548();
    }
  }
}

double sub_100411638(void *a1, uint64_t a2)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100768E6C();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v13[1] = 0x4041800000000000;
    sub_10076D17C();
  }

  else
  {
    if (qword_100940410 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_100956900, qword_100956918);
    sub_1000FF02C();
  }

  sub_10076D40C();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_100940420 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_10000CF78(qword_100956950, qword_100956968);
  sub_1000FF02C();
  sub_10076D40C();
  v11 = v10;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v11;
}

void sub_1004118B0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_100768EBC();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10041198C()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  if (sub_100768E6C())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10076857C();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10076856C();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_10076DE3C();
    v8 = objc_allocWithZone(sub_10076DE6C());
    v9 = sub_10076DE5C();
    v10 = OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10076857C();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10076856C();
      return;
    }
  }

  __break(1u);
}

id sub_100411B84()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
  sub_10076857C();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10076856C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100411D50()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_1009569B8);
  sub_10000A61C(v0, qword_1009569B8);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

char *sub_100411DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v5, qword_1009A1D80);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v3[v9] = sub_10050BDFC(v8, 0, 0);
  if (a2)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
  v17 = qword_100940438;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v20, qword_1009569B8);
  v28[0] = v18;
  v21 = v18;
  sub_10075FDCC();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_100412274()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_100770AAC();
  (*(v3 + 8))(v5, v2);
  sub_10076422C();
  v13 = [v1 contentView];
  sub_10076422C();

  sub_100770A4C();
  return [v7 setFrame:?];
}

uint64_t sub_10041250C(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (!a1 || (result = sub_10077070C(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
    if (qword_100940438 != -1)
    {
      swift_once();
    }

    v8 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v8, qword_1009569B8);
    v10 = v2;
    v9 = v2;
    sub_10075FDCC();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_1004126FC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HeaderView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    sub_10076422C();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();

    sub_100770A4C();
    [v3 setFrame:?];
  }
}

id sub_1004129AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_100412A98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10076997C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100941018 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  sub_10000A61C(v8, qword_1009A1E40);
  v9 = [a3 traitCollection];
  sub_100770B3C();

  v10 = sub_10076C04C();
  v16[3] = v10;
  v16[4] = sub_100413254(&qword_100943230, 255, &type metadata accessor for Feature);
  v11 = sub_10000DB7C(v16);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.measurement_with_labelplaceholder(_:), v10);
  sub_10076C90C();
  sub_10000CD74(v16);

  sub_10076996C();
  sub_100770ACC();
  sub_100413254(&unk_1009511B0, 255, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_10076D2AC();
  sub_100770AEC();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  return v13;
}

double sub_100412DBC(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = a1;
  v19[2] = a2;
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100770ACC();
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  sub_10000A61C(v12, qword_1009A1D80);
  v13 = [a3 traitCollection];
  sub_100770B3C();

  v14 = sub_10076C04C();
  v21 = v14;
  v22 = sub_100413254(&qword_100943230, 255, &type metadata accessor for Feature);
  v15 = sub_10000DB7C(v20);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  sub_10076C90C();
  sub_10000CD74(v20);

  sub_10076996C();
  sub_10076994C();
  (*(v9 + 8))(v11, v8);
  sub_10000CF78(v20, v21);
  sub_10076D2BC();
  sub_100770AEC();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_100770AAC();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_10000CD74(v20);
  return v17;
}

uint64_t sub_1004131A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004131E4()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10041323C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100413254(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10041329C()
{
  v1 = v0;
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.purchasesLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewTableCell();
  }

  if (v7 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return type metadata accessor for MediumLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return type metadata accessor for LargeLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
  {
    return type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
  {
    return type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.action(_:))
  {
    return type metadata accessor for ActionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.artwork(_:))
  {
    return type metadata accessor for ArtworkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.paragraph(_:))
  {
    return type metadata accessor for ParagraphCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.annotation(_:))
  {
    return type metadata accessor for AnnotationCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.footnote(_:))
  {
    return type metadata accessor for FootnoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    return type metadata accessor for TitledParagraphCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    return type metadata accessor for EditorialCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.videoCard(_:))
  {
    return type metadata accessor for VideoCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.brick(_:))
  {
    return type metadata accessor for BrickCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productCapability(_:))
  {
    return type metadata accessor for ProductCapabilityCell();
  }

  if (v7 == enum case for Shelf.ContentType.reviews(_:) || v7 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    return type metadata accessor for ProductReviewCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    return type metadata accessor for LinkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.quote(_:))
  {
    return type metadata accessor for QuoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    return type metadata accessor for HorizontalRuleCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.framedArtwork(_:))
  {
    return type metadata accessor for FramedArtworkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.screenshots(_:))
  {
    return type metadata accessor for ScreenshotShelfCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appShowcase(_:))
  {
    return type metadata accessor for AppShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
  {
    return type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    return type metadata accessor for AppTrailerLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    return type metadata accessor for ProductPageLinkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    return type metadata accessor for FramedVideoCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productDescription(_:))
  {
    return type metadata accessor for ProductDescriptionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.banner(_:))
  {
    return type metadata accessor for BannerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    return type metadata accessor for ScreenshotsLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    return type metadata accessor for RoundedButtonCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    return type metadata accessor for TitledButtonStackCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
  {
    return type metadata accessor for LargeHeroBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.upsellBreakout(_:))
  {
    return type metadata accessor for UpsellBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    return type metadata accessor for SmallBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    return type metadata accessor for EditorialStoryCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    return type metadata accessor for MixedMediaLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    return type metadata accessor for ArcadeFooterCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialQuote(_:))
  {
    return type metadata accessor for EditorialQuoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
    return type metadata accessor for ArcadeShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    return type metadata accessor for GameCenterActivityFeedCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
  {
    return type metadata accessor for ArcadeDownloadPackCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
  {
    return type metadata accessor for GameCenterReengagementCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
  {
    return type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    return type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
  {
    return type metadata accessor for AchievementSummaryCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    return type metadata accessor for PosterLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    return type metadata accessor for SmallContactCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
  {
    return type metadata accessor for PreorderDisclaimerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    return type metadata accessor for PrivacyHeaderCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyFooter(_:))
  {
    return type metadata accessor for PrivacyFooterCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return type metadata accessor for PrivacyTypeCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyCategory(_:))
  {
    return type metadata accessor for PrivacyCategoryCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyDefinition(_:))
  {
    return type metadata accessor for PrivacyDefinitionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    return type metadata accessor for AppEventCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.heroCarousel(_:))
  {
    return type metadata accessor for HeroCarouselCollectionViewCell();
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t Shelf.ContentType.layoutManagedMultiColumnMargin.getter()
{
  v1 = v0;
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.annotation(_:) || v7 == enum case for Shelf.ContentType.productCapability(_:) || v7 == enum case for Shelf.ContentType.productPageLink(_:) || v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return 0x403E000000000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_100413DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1004142F4()
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2368);
  qword_100956AC8 = v0;
  unk_100956AD0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_100956AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1004143B0()
{
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2380);
  qword_100956AF0 = v0;
  unk_100956AF8 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_100956AD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_10041448C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940B70 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1048);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100414674(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_1004146D4()
{
  sub_10000A5D4(&unk_1009566B0);
  sub_100111DA4();
  sub_10076F83C();
  return 3;
}

unint64_t sub_100414750()
{
  result = qword_100949370;
  if (!qword_100949370)
  {
    sub_10076C61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949370);
  }

  return result;
}

unint64_t sub_1004147B0()
{
  result = qword_100956B78;
  if (!qword_100956B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956B78);
  }

  return result;
}

unint64_t sub_100414808()
{
  result = qword_100956B80;
  if (!qword_100956B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956B80);
  }

  return result;
}

BOOL sub_10041485C(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  type metadata accessor for ExpandableTextView();

  return sub_10073E8EC(a1, 3, a2, a3, a4, a5, a6, a7, a8);
}

double sub_100414900(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C5DC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (sub_10076C58C())
  {
    return v13;
  }

  sub_10076C5EC();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v14 != enum case for Paragraph.Style.article(_:))
  {
    if (v14 != enum case for Paragraph.Style.caption(_:) && v14 != enum case for Paragraph.Style.todayCardOverlay(_:) && v14 != enum case for Paragraph.Style.privacyDefinitions(_:))
    {
      (*(v8 + 8))(v11, v7);
      return v13;
    }

LABEL_3:
    if (qword_100940440 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_100956AB0, qword_100956AC8);
    sub_1000FF02C();
    sub_10076D40C();
    v13 = v15;
    v16 = *(v4 + 8);
    v16(v6, v3);
    if (qword_100940448 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_100956AD8, qword_100956AF0);
    sub_1000FF02C();
    sub_10076D40C();
    v16(v6, v3);
    return v13;
  }

  if (qword_100940450 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D9AC();
  sub_10000A61C(v32, qword_100956B00);
  if (qword_100940B70 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  sub_10000A61C(v17, qword_1009A1048);
  v18 = [a2 traitCollection];
  sub_10076D17C();
  sub_100016F40(0, &qword_100942F00);
  v19 = sub_100770B3C();
  sub_10076D97C();
  v21 = v20;
  sub_100770B4C();
  v23 = v22;

  v24 = *(v4 + 8);
  v24(v6, v3);
  v25 = v21 - v23;
  if (qword_100940458 != -1)
  {
    swift_once();
  }

  v13 = ceil(v25);
  sub_10000A61C(v32, qword_100956B18);
  v26 = [a2 traitCollection];
  sub_10076D17C();
  v27 = sub_100770B3C();
  sub_10076D97C();
  [v27 descender];

  v24(v6, v3);
  return v13;
}

void sub_100414E38(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10000A5D4(&unk_1009566C0);
  sub_100111DA4();
  sub_10076FD8C();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = sub_10076C56C();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = sub_10076C5AC();
  swift_getObjectType();
  v11 = [a6 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100027A88;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1003BE1CC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_1008948E8;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v12;

  [v10 enumerateAttributesInRange:0 options:v13 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    [a6 pageMarginInsets];
    sub_1003899C8(v18, v24 & 1, a6, v20, v21, v22, v23, a2, a3);

    sub_100414900(a1, a6);
  }
}

void sub_100415110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v119 = a2;
  v8 = sub_10076C5FC();
  v123 = *(v8 - 8);
  v124 = v8;
  __chkstk_darwin(v8);
  v110 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v107 - v11;
  __chkstk_darwin(v12);
  v108 = &v107 - v13;
  __chkstk_darwin(v14);
  v109 = &v107 - v15;
  v16 = sub_10000A5D4(&unk_100959F50);
  __chkstk_darwin(v16 - 8);
  v114 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v107 - v19;
  __chkstk_darwin(v20);
  v112 = &v107 - v21;
  __chkstk_darwin(v22);
  v113 = &v107 - v23;
  v118 = sub_10076C5DC();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v107 - v27;
  v125 = v5;
  v29 = [v5 contentView];
  [v29 setLayoutMargins:{sub_100414900(a1, a5)}];

  v122 = a1;
  v30 = sub_10076C5AC();
  ObjectType = swift_getObjectType();
  v31 = [a5 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000275EC;
  *(v35 + 24) = v34;
  v130 = sub_1000ACB04;
  v131 = v35;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100026610;
  v129 = &unk_1008947F8;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_51;
  }

  [a5 pageMarginInsets];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v125;
  v48 = [v125 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v50 = v49;
  v52 = v51;

  type metadata accessor for ExpandableTextView();
  v121 = v38;
  LODWORD(ObjectType) = sub_10073E8EC(v38, 3, a5, v40, v42, v44, v46, v50, v52);
  v53 = *&v47[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView];
  sub_10076C5EC();
  v54 = v117;
  v55 = v116;
  v56 = v28;
  v57 = v28;
  v58 = v118;
  (*(v117 + 16))(v116, v57, v118);
  v59 = v54;
  v60 = (*(v54 + 88))(v55, v58);
  v61 = v124;
  v62 = a5;
  if (v60 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v60 == enum case for Paragraph.Style.article(_:))
  {
    sub_100016F40(0, &qword_100942F10);
    v63 = sub_100770D1C();
    goto LABEL_6;
  }

  if (v60 == enum case for Paragraph.Style.caption(_:) || v60 == enum case for Paragraph.Style.todayCardOverlay(_:) || v60 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    sub_100016F40(0, &qword_100942F10);
    v63 = sub_100770CFC();
LABEL_6:
    v64 = v63;
    (*(v59 + 8))(v56, v58);
    goto LABEL_7;
  }

  sub_100016F40(0, &qword_100942F10);
  v64 = sub_100770CFC();
  v98 = *(v59 + 8);
  v98(v56, v58);
  v98(v55, v58);
  v62 = a5;
LABEL_7:
  v65 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
  [*(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setTextColor:v64];

  sub_10000A5D4(&unk_1009566B0);
  sub_100111DA4();
  sub_10076F84C();
  v66 = aBlock;
  v67 = v120;
  v68 = v61;
  if (aBlock == 2)
  {
    v66 = sub_10076C56C();
  }

  v69 = v123;
  if ((v66 & ObjectType & 1) == 0)
  {
    v91 = v121;
    sub_10076C60C();
    (*(v69 + 56))(v67, 0, 1, v68);
    v92 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v93 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = 0;
    v94 = *(v53 + v65);
    v95 = v91;
    [v94 setNumberOfLines:0];
    if (v93 != *(v53 + v92))
    {
      sub_10073D75C();
    }

    v87 = v95;
    sub_10073D114(v95);
    *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v96 = v114;
    sub_100415F48(v67, v114);
    v97 = (*(v69 + 48))(v96, 1, v68);
    v90 = v125;
    if (v97 == 1)
    {
      sub_100415FB8(v96);
LABEL_42:
      [v53 setNeedsLayout];
LABEL_47:

      sub_100415FB8(v67);
      [v90 setNeedsLayout];

      return;
    }

    v99 = v111;
    (*(v69 + 32))(v111, v96, v68);
    v100 = v110;
    (*(v69 + 16))(v110, v99, v68);
    v101 = (*(v69 + 88))(v100, v68);
    if (v101 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v101 == enum case for Paragraph.Alignment.center(_:))
      {
        v102 = 1;
        goto LABEL_41;
      }

      if (v101 == enum case for Paragraph.Alignment.right(_:))
      {
        v102 = 2;
        goto LABEL_41;
      }

      if (v101 == enum case for Paragraph.Alignment.justified(_:))
      {
        v102 = 3;
        goto LABEL_41;
      }

      if (v101 == enum case for Paragraph.Alignment.localized(_:))
      {
        v102 = 4;
        goto LABEL_41;
      }

      (*(v69 + 8))(v100, v68);
    }

    v102 = 0;
LABEL_41:
    [*(v53 + v65) setTextAlignment:v102];
    (*(v69 + 8))(v99, v68);
    goto LABEL_42;
  }

  v120 = v65;
  v70 = sub_10076C57C();
  v71 = [v62 traitCollection];
  v72 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v70];
  v73 = [v70 length];
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = v71;
  *(v74 + 32) = v72;
  *(v74 + 40) = 1;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_100027A88;
  *(v75 + 24) = v74;
  v130 = sub_1003BE1CC;
  v131 = v75;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100026610;
  v129 = &unk_100894870;
  v76 = _Block_copy(&aBlock);
  v77 = v71;
  v78 = v72;

  [v70 enumerateAttributesInRange:0 options:v73 usingBlock:{0x100000, v76}];

  _Block_release(v76);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if ((v70 & 1) == 0)
  {
    v79 = v78;
    v67 = v113;
    sub_10076C60C();
    v81 = v123;
    v80 = v124;
    (*(v123 + 56))(v67, 0, 1, v124);
    v82 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v83 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = 1;
    v84 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
    v85 = *&v120[v53];
    v86 = v79;
    [v85 setNumberOfLines:v84];
    if (v83 != *(v53 + v82))
    {
      sub_10073D75C();
    }

    v87 = v86;
    sub_10073D114(v86);
    *(v53 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v88 = v112;
    sub_100415F48(v67, v112);
    v89 = (*(v81 + 48))(v88, 1, v80);
    v90 = v125;
    if (v89 == 1)
    {
      sub_100415FB8(v88);
LABEL_46:
      [v53 setNeedsLayout];

      goto LABEL_47;
    }

    v103 = v109;
    (*(v81 + 32))(v109, v88, v80);
    v104 = v108;
    (*(v81 + 16))(v108, v103, v80);
    v105 = (*(v81 + 88))(v104, v80);
    if (v105 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v105 == enum case for Paragraph.Alignment.center(_:))
      {
        v106 = 1;
        goto LABEL_45;
      }

      if (v105 == enum case for Paragraph.Alignment.right(_:))
      {
        v106 = 2;
        goto LABEL_45;
      }

      if (v105 == enum case for Paragraph.Alignment.justified(_:))
      {
        v106 = 3;
        goto LABEL_45;
      }

      if (v105 == enum case for Paragraph.Alignment.localized(_:))
      {
        v106 = 4;
        goto LABEL_45;
      }

      (*(v81 + 8))(v104, v80);
    }

    v106 = 0;
LABEL_45:
    [v85 setTextAlignment:v106];
    (*(v81 + 8))(v103, v80);
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_100415F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100415F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100959F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415FB8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100959F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s5StateVwet_0(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1004160FC()
{
  v0 = sub_10000A5D4(&qword_100943118);
  sub_10000DB18(v0, qword_100956B90);
  sub_10000A61C(v0, qword_100956B90);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for UIRectEdge(0);
  return sub_10075FDDC();
}

void sub_1004161A0(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10076F9AC();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] = v15;
  sub_10075F99C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = sub_10076C03C();
  *(&v66 + 1) = v18;
  v67 = sub_1001D7794();
  v19 = sub_10000DB7C(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = sub_10076C90C();
  sub_10000CD74(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_100940460 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A5D4(&qword_100943118);
  sub_10000A61C(v36, qword_100956B90);
  v63 = v22;
  v37 = v22;
  sub_10075FDCC();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView;
  v40 = qword_10093F878;
  v41 = *&v37[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10076BCFC();
  v43 = sub_10000A61C(v42, qword_10099D408);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  sub_10075F97C();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  sub_10075F95C();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  sub_10076F96C();
  sub_10000CFBC(&v65, &unk_1009434C0);
  sub_100770B9C();

  (*(v59 + 8))(v8, v60);
  sub_10000A5D4(&unk_100945BF0);
  v51 = swift_allocObject();
  v60 = xmmword_100783DD0;
  *(v51 + 16) = xmmword_100783DD0;
  *(v51 + 32) = sub_10076E3EC();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  sub_10077095C();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = sub_10076E59C();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  sub_10077095C();

  swift_unknownObjectRelease();
}

void sub_100416A64(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 layoutDirection];

    if (v6 == [a2 layoutDirection])
    {
    }

    else
    {
      v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v7)
      {
        v8 = qword_100940460;
        v9 = v7;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = sub_10000A5D4(&qword_100943118);
        sub_10000A61C(v10, qword_100956B90);
        v11 = v4;
        sub_10075FDCC();

        [v9 setEdges:v12];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100416BC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004199F8();
  }
}

void sub_100416C14(char a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_10000A570(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_10000CF78(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_10000CD74(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_1004198A8(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != 2];
}

void sub_100416E54()
{
  v1 = sub_10076C36C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_10076C38C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_100940280 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  sub_10076C24C();
  v29 = v28;
  LOBYTE(v26) = sub_1007706FC();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_100419BF8(v34);
  (*(v37 + 8))(v12, v25);
}

void *sub_100417368()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_1000B03DC();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1004173EC(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_100419CC0;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1006F5994;
      v17[3] = &unk_100894B98;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100417590(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_10041777C(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100419C54;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006F5994;
  v10[3] = &unk_100894B48;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_100417930()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_100416E54();
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_100417A78()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_1000B03DC();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_1002A0D7C();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_1002A0E00();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100419BAC;
      *(v36 + 24) = v26;
      v46 = sub_1000B9014;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1001C5148;
      v45 = &unk_100894AA8;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_100419BC4;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006F5994;
          v45 = &unk_100894AD0;
          v40 = _Block_copy(&v42);

          v46 = sub_100419BC8;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006F5994;
          v45 = &unk_100894AF8;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100418088(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_100419AD8(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_100419AD8(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_1004182A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_1000B03DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_1002A0D7C();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_1002A0E00();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100419960;
  *(v22 + 24) = v12;
  v34 = sub_1000349FC;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1001C5148;
  v33 = &unk_1008949E0;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_1004199C0;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006F5994;
    v33 = &unk_100894A30;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_1004199C8;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006F5994;
    v33 = &unk_100894A58;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100418760(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10070AFF8();
  v4 = [a3 presentedViewController];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1004187CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {

        v9(v10);

        sub_1000167E0(v9);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

void sub_100418A58(void *a1)
{
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 0:
LABEL_10:
      if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted])
      {
        return;
      }

      v8 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v8 + 24))
      {
        sub_10000A570(v8, &v27);
        v9 = *(&v28 + 1);
        v10 = v29;
        sub_10000CF78(&v27, *(&v28 + 1));
        (v10[4])(v9, v10);
        sub_10000CD74(&v27);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      swift_beginAccess();
      sub_1004198A8(&v27, v8);
      goto LABEL_21;
    case 1:
      sub_10000A5D4(&unk_100942870);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100785D70;
      v13 = [v1 presentedViewController];
      v14 = [v13 view];

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      v16 = v15;
      v17 = v1;
      v18 = sub_100417368();
      if (v18 >> 62)
      {
        sub_1000ACA5C();
        v19 = sub_10077157C();
      }

      else
      {

        sub_10077168C();
        sub_1000ACA5C();
        v19 = v18;
      }

      v20 = v17;
      v21 = [v17 traitCollection];
      *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
      v29 = &off_100889240;
      v22 = swift_allocObject();
      *&v27 = v22;
      *(v22 + 16) = v12;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
      v23 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      sub_1004198A8(&v27, v20 + v23);
LABEL_21:
      swift_endAccess();
      return;
    case 2:
      if (v6 == 1.0)
      {
        goto LABEL_16;
      }

      v24 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v24 + 24))
      {
        sub_10000A570(v24, &v27);
        v25 = *(&v28 + 1);
        v26 = v29;
        sub_10000CF78(&v27, *(&v28 + 1));
        (v26[2])(v25, v26, v6);
        sub_10000CD74(&v27);
      }

      break;
  }
}

void sub_100418EB8(void *a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      sub_10000A5D4(&unk_100942870);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100785D70;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_100417368();
        if (v24 >> 62)
        {
          sub_1000ACA5C();
          v25 = sub_10077157C();
        }

        else
        {

          sub_10077168C();
          sub_1000ACA5C();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_100889240;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_1004198A8(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10000A5D4(&unk_100942870);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100785D70;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_100417368();
        if (v42 >> 62)
        {
          sub_1000ACA5C();
          v43 = sub_10077157C();
        }

        else
        {

          sub_10077168C();
          sub_1000ACA5C();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_100889268;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_10000A570(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_10000CF78(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_10000CD74(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_10000A570(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_10000CF78(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_10000CD74(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_1004198A8(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_100419718(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures);
    v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures] = v1;
    sub_100416C14(v4);
  }
}

uint64_t sub_1004198A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100419918()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100419968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100419980()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1004199F8()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_100419AD8(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_100419C1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100419C78()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100419CCC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100419D04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100419DC8()
{
  v0 = sub_10075ED5C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  sub_10075F29C();
  sub_10041A37C(&qword_1009436A0, &type metadata accessor for AppPromotion);
  sub_10076332C();
  if (!v13[1])
  {
    return 0;
  }

  sub_10075F28C();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell();
    v9 = &unk_100956CF8;
    v10 = type metadata accessor for AppEventCollectionViewCell;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = sub_10077166C();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell();
    v9 = &unk_100956CF0;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
  }

  sub_10041A37C(v9, v10);
  return v8;
}

uint64_t sub_10041A050()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_10000A5D4(&unk_100946720);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_10041A37C(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_100419DC8();
  }

  v12 = sub_10077167C();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_100419DC8();
  }

  return 0;
}

uint64_t sub_10041A37C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10041A480(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v87 = sub_100765A2C();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10076D39C();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076B01C();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B6EC();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_10075FD8C();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076469C();
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076428C();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v102 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076C38C();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  __chkstk_darwin(v16);
  v105 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v81 - v20;
  v22 = sub_10000A5D4(&unk_100946720);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = sub_10076B5BC();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v81 - v31;
  swift_getKeyPath();
  v108 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v33 = v25;
  v34 = v27;
  (*(v23 + 8))(v33, v22);
  if ((*(v27 + 48))(v21, 1, v26) != 1)
  {
    (*(v27 + 32))(v32, v21, v26);
    (*(v27 + 16))(v29, v32, v26);
    v36 = (*(v27 + 88))(v29, v26);
    v37 = v32;
    if (v36 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v38 = v105;
      sub_10076338C();

      sub_10076C2FC();
      (*(v107 + 8))(v38, v106);
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v39 = sub_100763ADC();
      sub_10000A61C(v39, qword_10099DDA0);
      sub_100630CB4();
      sub_100763AFC();
      v40 = &unk_100956D30;
      v41 = &type metadata accessor for SmallLockupLayout;
LABEL_8:
      sub_10041B6AC(v40, v41);
      sub_10076DBDC();
      v35 = v42;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v34 + 8))(v37, v26);
      return v35;
    }

    if (v36 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v43 = v105;
      sub_10076338C();

      sub_10076C2FC();
      (*(v107 + 8))(v43, v106);
      type metadata accessor for MediumLockupCollectionViewCell();
      swift_getKeyPath();
      sub_10076338C();

      v44 = v109;
      v45 = v102;
      sub_1002AAFCC(v102);

      sub_100630CB4();
      sub_1007642AC();
      sub_10041B6AC(&qword_10094FFD0, &type metadata accessor for MediumLockupLayout);
      sub_10076DBDC();
      v35 = v46;
      swift_unknownObjectRelease();
      (*(v103 + 8))(v45, v104);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v47 = v105;
      sub_10076338C();

      sub_10076C2FC();
      (*(v107 + 8))(v47, v106);
      if (qword_10093FD60 != -1)
      {
        swift_once();
      }

      v48 = sub_1007634CC();
      sub_10000A61C(v48, qword_10099E3E8);
      sub_100630CB4();
      sub_1007634EC();
      v40 = &qword_100951200;
      v41 = &type metadata accessor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v36 == enum case for Shelf.ContentType.ribbonBar(_:) || v36 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v53 = v99;
      sub_1007632FC();
      v35 = sub_1002A3018(v53);
      (*(v100 + 8))(v53, v101);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v49 = v105;
      sub_10076338C();

      sub_10076C2FC();
      v51 = v50;
      (*(v107 + 8))(v49, v106);
      if (qword_10093F650 != -1)
      {
        swift_once();
      }

      sub_100630CB4();
      swift_getObjectType();
      type metadata accessor for VideoCardView();
      sub_1000C31A8(v51);
      v35 = v52;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v55 = v92;
      sub_10076338C();

      v56 = v93;
      sub_10076B6AC();
      sub_10041B6AC(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
      v57 = v95;
      v58 = sub_10077124C();
      v59 = *(v94 + 8);
      v59(v56, v57);
      v59(v55, v57);
      if (v58)
      {
        if (qword_100940350 != -1)
        {
          swift_once();
        }

        v60 = qword_10099F740;
      }

      else
      {
        if (qword_100940358 != -1)
        {
          swift_once();
        }

        v60 = qword_10099F758;
      }

      v64 = v98;
      v65 = sub_10000A61C(v98, v60);
      v67 = v96;
      v66 = v97;
      (*(v97 + 16))(v96, v65, v64);
      swift_getKeyPath();
      v68 = v105;
      sub_10076338C();

      sub_10076C2FC();
      (*(v107 + 8))(v68, v106);
      sub_100630CB4();
      sub_10075FDAC();
      sub_10041B6AC(&qword_1009428F8, &type metadata accessor for BrickLayout);
      sub_10076DBDC();
      v35 = v69;
      swift_unknownObjectRelease();
      (*(v66 + 8))(v67, v64);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v61 = v105;
      sub_10076338C();

      sub_10076C2FC();
      (*(v107 + 8))(v61, v106);
      v62 = v89;
      sub_100767EBC();
      sub_100630CB4();
      sub_10076B03C();
      sub_10041B6AC(&qword_100956D28, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout);
      sub_10076DBDC();
      v35 = v63;
      swift_unknownObjectRelease();
      (*(v90 + 8))(v62, v91);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell();
      v70 = sub_1003DE0CC();
      goto LABEL_37;
    }

    if (v36 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell();
    }

    else
    {
      if (v36 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v36 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v72 = v105;
          sub_10076338C();

          sub_10076C2FC();
          (*(v107 + 8))(v72, v106);
          swift_getKeyPath();
          sub_10076338C();

          v73 = v109;
          v74 = v85;
          sub_1004CAB60(v109, v85);
          sub_1007659FC();
          v35 = v75;

          (*(v86 + 8))(v74, v87);
          goto LABEL_22;
        }

        if (v36 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v76 = v99;
          sub_1007632FC();
          v77 = v82;
          sub_10076445C();
          v78 = v105;
          sub_10076460C();
          sub_10076C30C();
          (*(v107 + 8))(v78, v106);
          sub_10076D36C();
          v35 = v79;
          (*(v83 + 8))(v77, v84);
          (*(v100 + 8))(v76, v101);
          goto LABEL_22;
        }

        if (v36 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v36 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v80 = *(v27 + 8);
            v80(v32, v26);
            v80(v29, v26);
            return 0.0;
          }

          goto LABEL_30;
        }

        v70 = sub_10052E3A8(v108, 1);
LABEL_37:
        v35 = v70;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell();
    }

    v71 = v99;
    sub_1007632FC();
    v35 = sub_1000725B0(v71);
    (*(v100 + 8))(v71, v101);
    goto LABEL_22;
  }

  sub_10041B638(v21);
  return 0.0;
}

uint64_t sub_10041B638(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009568A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041B6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_10075DB7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100956D38);
  v9 = sub_10076FCEC();
  sub_100760D9C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1001B82AC(v4);
    sub_10041BA64();
    swift_allocError();
    *v10 = 0;
    sub_10076FCAC();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_100760D8C() & 1) == 0)
  {
    sub_10041BA64();
    swift_allocError();
    *v19 = 1;
    sub_10076FCAC();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  sub_10075DB1C(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_10041BE74;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FA544;
  aBlock[3] = &unk_100894C88;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

unint64_t sub_10041BA64()
{
  result = qword_100956D40;
  if (!qword_100956D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956D40);
  }

  return result;
}

uint64_t sub_10041BAB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10041BAF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10076F08C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076F0CC();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_10076FCAC();
  }

  else
  {
    v26 = v15;
    sub_100085204();
    v25 = v11;
    v24 = sub_10077068C();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_10041C1CC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100894DF8;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10041C1D8(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    v22 = v24;
    sub_10077069C();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

uint64_t sub_10041BE2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10041BE80(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_10041C220(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  sub_10076FCBC();
  sub_1000A9094(v7, v4);
  sub_1000A9094(v7, v4);
}

uint64_t sub_10041BF58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10041C010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10041C06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_10041C128()
{
  result = qword_100956E00;
  if (!qword_100956E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956E00);
  }

  return result;
}

uint64_t sub_10041C17C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10041C1D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10041C220(uint64_t a1, void *a2)
{
  v3 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10075DB7C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760D9C();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_1001B82AC(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((sub_100760D8C() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  sub_10075DB1C(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1008834A8, v23), vceqq_s64(unk_1008834B8, v23)), vuzp1q_s32(vceqq_s64(xmmword_1008834C8, v23), vceqq_s64(unk_1008834D8, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1008834E8, v23), vceqq_s64(unk_1008834F8, v23)), vuzp1q_s32(vceqq_s64(xmmword_100883508, v23), vceqq_s64(unk_100883518, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      sub_10075DB3C();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_100050DA4(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_1001B82AC(v8);
  return v29;
}

uint64_t sub_10041C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10076B5BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_10041B638(v5);
    v17 = sub_100763FDC();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    sub_1001E5A7C(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell();
    sub_10070821C(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = sub_100763FDC();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

unint64_t sub_10041CA70()
{
  result = qword_100956E08;
  if (!qword_100956E08)
  {
    sub_1007655BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956E08);
  }

  return result;
}

uint64_t sub_10041CAC8(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_10076F50C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F2EC();
  __chkstk_darwin(v7 - 8);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076FD4C();
  sub_10000A61C(v8, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v14._object = 0x80000001007E4DE0;
  v14._countAndFlagsBits = 0xD000000000000018;
  sub_10076F2CC(v14);
  v9 = sub_1007618DC();
  v13[3] = v9;
  v10 = sub_10000DB7C(v13);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_10076F29C();
  sub_1000258C0(v13);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10076F2CC(v15);
  sub_10076F2FC();
  sub_10076FBCC();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10041CDB0()
{
  v0 = sub_10076F2EC();
  __chkstk_darwin(v0 - 8);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v6._object = 0x80000001007E4DC0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10076F2CC(v6);
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000DB7C(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_10076F29C();
  sub_1000258C0(v5);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_10076F2CC(v7);
  sub_10076F2FC();
  sub_10076FBEC();

  swift_getObjectType();
  sub_10075EE5C();
  return sub_10076FCAC();
}

uint64_t sub_10041D014()
{
  v0 = sub_10076B96C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  sub_10000A5D4(&qword_100942C70);
  v7 = sub_10076FCEC();
  sub_10076559C();
  sub_1007655AC();
  sub_10076C12C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076FC1C();
  v14 = v15;
  sub_10076C10C();
  (*(v1 + 16))(v3, v6, v0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  (*(v1 + 32))(v10 + v8, v3, v0);
  *(v10 + v9) = v7;
  v11 = sub_100085204();
  swift_retain_n();
  swift_unknownObjectRetain();
  v12 = sub_10077068C();
  v16 = v11;
  v17 = &protocol witness table for OS_dispatch_queue;
  *&v15 = v12;
  sub_10076FC6C();
  swift_unknownObjectRelease();

  (*(v1 + 8))(v6, v0);
  sub_10000CD74(&v15);
  return v7;
}

uint64_t sub_10041D2EC()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10041D3C4()
{
  sub_10076B96C();

  return sub_10041CDB0();
}

uint64_t sub_10041D464@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D39C();
  sub_10000A61C(v3, qword_10099F728);
  sub_10076D36C();
  sub_100766E2C();
  v4 = sub_100766E4C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

double sub_10041D584(double a1)
{
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D39C();
  sub_10000A61C(v2, qword_10099F728);
  sub_10076D36C();
  return a1;
}

id sub_10041D6CC()
{
  v1 = v0;
  v2 = sub_10076B6EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B4FC();
  if (v6)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  sub_10076B6AC();
  sub_10041DC04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v8 = sub_10077124C();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = sub_10076B50C();
    v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_1003CE7AC();
  }

  return result;
}

id sub_10041D868()
{
  v0 = sub_10076B6EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v5 = v4;
  PageTraitEnvironment.pageColumnMargin.getter();
  v7 = v6;
  sub_10076B6AC();
  sub_10041DC04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v8 = sub_10077124C();
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    if (qword_100940350 != -1)
    {
      swift_once();
    }

    v9 = qword_10099F740;
  }

  else
  {
    if (qword_100940358 != -1)
    {
      swift_once();
    }

    v9 = qword_10099F758;
  }

  v10 = ceil((v5 - v7) / 1.5);
  v11 = sub_10075FD8C();
  sub_10000A61C(v11, v9);
  sub_10075FDAC();
  sub_10041DC04(&qword_1009428F8, &type metadata accessor for BrickLayout);
  sub_10076DBDC();
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 absoluteDimension:v10];
  v16 = [v14 absoluteDimension:v13];
  v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [objc_opt_self() itemWithLayoutSize:v17];
  v19 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1007841E0;
  *(v20 + 32) = v18;
  sub_10004B9FC();
  v21 = v18;
  isa = sub_1007701AC().super.isa;

  v23 = [v19 verticalGroupWithLayoutSize:v17 subitems:isa];

  return v23;
}

uint64_t sub_10041DC04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10041DC98(void *a1)
{
  v54 = sub_10076502C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076504C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076997C();
  v7 = *(v66 - 8);
  __chkstk_darwin(v66);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760F7C();
  sub_10041E6C0(&qword_100956E68, &type metadata accessor for PrivacyHeader);
  result = sub_10076332C();
  v56 = v76;
  if (v76)
  {
    v51 = v4;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v11 + 8))(v13, v10);
    sub_10005312C();
    if (qword_100940DB0 != -1)
    {
      swift_once();
    }

    v50 = v6;
    v15 = sub_10076D3DC();
    sub_10000A61C(v15, qword_1009A1708);
    swift_getKeyPath();
    sub_10076338C();

    v16 = v76;
    v17 = sub_100770B3C();

    sub_100760F6C();
    sub_10076081C();

    v18 = sub_10075F9DC();

    v19 = sub_10076C04C();
    v77 = v19;
    v63 = sub_10041E6C0(&qword_100943230, &type metadata accessor for Feature);
    v78 = v63;
    v20 = sub_10000DB7C(&v76);
    v21 = *(v19 - 8);
    v22 = *(v21 + 104);
    v62 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v61 = v22;
    v60 = v21 + 104;
    v22(v20);
    v23 = v18;
    v24 = v17;
    sub_10076C90C();
    sub_10000CD74(&v76);
    v65 = v24;
    sub_10076993C();
    sub_10076994C();
    v25 = *(v7 + 8);
    v64 = v7 + 8;
    v59 = v25;
    v25(v9, v66);
    result = sub_100760F5C();
    v26 = result;
    if (result >> 62)
    {
      v48 = result;
      result = sub_10077158C();
      v26 = v48;
      v27 = result;
    }

    else
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49[1] = a1;
    v52 = v3;
    v49[0] = v23;
    if (v27)
    {
      if (v27 < 1)
      {
        __break(1u);
        return result;
      }

      v28 = 0;
      v57 = v26 & 0xC000000000000001;
      v29 = _swiftEmptyArrayStorage;
      v58 = v26;
      do
      {
        if (v57)
        {
          sub_10077149C();
        }

        else
        {
        }

        sub_100769C3C();
        sub_10076081C();

        v30 = v65;
        v31 = sub_10075F9DC();

        v74 = v19;
        v75 = v63;
        v32 = sub_10000DB7C(v73);
        v61(v32, v62, v19);
        v33 = v30;
        v34 = v31;
        sub_10076C90C();
        sub_10000CD74(v73);
        sub_10076993C();
        sub_10076994C();
        v59(v9, v66);
        sub_10000A570(v73, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10049D428(0, v29[2] + 1, 1, v29);
        }

        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          v29 = sub_10049D428((v35 > 1), v36 + 1, 1, v29);
        }

        ++v28;

        sub_10000CD74(v73);
        v29[2] = v36 + 1;
        sub_10003F19C(&v70, &v29[5 * v36 + 4]);
      }

      while (v27 != v28);
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    sub_10076338C();

    v37 = v73[0];
    sub_10076E20C();

    v38 = sub_10076DDDC();
    swift_allocObject();
    v39 = sub_10076DDBC();
    if (qword_10093F7A8 != -1)
    {
      swift_once();
    }

    v40 = v54;
    v41 = sub_10000A61C(v54, qword_10099D0C8);
    (*(v53 + 16))(v55, v41, v40);
    sub_100760F4C();
    v42 = v77;
    v43 = v78;
    v44 = sub_10000CF78(&v76, v77);
    v74 = v42;
    v75 = *(v43 + 8);
    v45 = sub_10000DB7C(v73);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    sub_10016D554(v29);

    v71 = v38;
    v72 = &protocol witness table for LayoutViewPlaceholder;
    v69 = &protocol witness table for LayoutViewPlaceholder;
    *&v70 = v39;
    v68 = v38;
    v67 = v39;
    swift_retain_n();
    v46 = v50;
    sub_10076503C();
    swift_getKeyPath();
    sub_10076338C();

    sub_10041E6C0(&unk_100956E70, &type metadata accessor for PrivacyHeaderLayout);
    v47 = v52;
    sub_10076D2AC();

    swift_unknownObjectRelease();

    (*(v51 + 8))(v46, v47);
    return sub_10000CD74(&v76);
  }

  return result;
}

uint64_t sub_10041E6C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10041E860(void *a1)
{
  v3 = sub_10076FF6C();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_allocWithZone(UITableViewCell);
    v6 = sub_10076FF6C();
    v4 = [v5 initWithStyle:0 reuseIdentifier:v6];
  }

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33GladiatorValidationViewController_ruleNames);
  v8 = v4;
  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = [v8 textLabel];

  if (v10)
  {
    v11 = sub_10076FF6C();

    [v10 setText:v11];
  }

  else
  {
  }

  return v8;
}

unint64_t sub_10041ECB4()
{
  v1 = v0;
  v2 = sub_10076191C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33GladiatorValidationViewController_rules];
  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v6 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v2);
  v8 = sub_10076C46C();
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33GladiatorValidationViewController_events];
  v10 = type metadata accessor for RuleResultsViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_rule] = v8;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_events] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}