uint64_t sub_248B8()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 52));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v5;
}

uint64_t sub_24960()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 52));
  v3 = *v1;
  v4 = *(v1 + 1);

  return v3 & 1;
}

uint64_t sub_249AC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView() + 52);
  v4 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_24A5C()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 56));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v5 & 1;
}

uint64_t sub_24AEC()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 56));
  v3 = *v1;
  v4 = *(v1 + 1);

  v5[0] = v3;
  v6 = v4;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v5);
}

uint64_t sub_24BA4()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 56));
  v3 = *v1;
  v4 = *(v1 + 1);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v5;
}

uint64_t sub_24C4C()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 56));
  v3 = *v1;
  v4 = *(v1 + 1);

  return v3 & 1;
}

uint64_t sub_24C98(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView() + 56);
  v4 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_24CF4(uint64_t a1, uint64_t a2)
{
  sub_24E34(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_22FC(&qword_B5310, &qword_9B640);
  sub_998D0();
  sub_8F94(a1);
  return v6;
}

uint64_t sub_24E34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t (*sub_24EDC())()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 60));
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  sub_25040(*v1);

  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998E0();
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    v4 = sub_25110;
  }

  else
  {
    v4 = 0;
  }

  sub_25074(v5);

  return v4;
}

uint64_t sub_25040(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25074(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_250D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2511C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(type metadata accessor for UpdateAvailableView() + 60));
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  sub_25040(*v3);

  sub_25040(v6);

  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  sub_24E34(a1);
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998F0();
  sub_252B8(v11);
  sub_25074(v6);

  return sub_8F94(a1);
}

void *sub_252B8(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  v2 = a1[2];

  return a1;
}

uint64_t sub_25304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2535C()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 60));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_25040(*v1);

  sub_22FC(&qword_B5318, &qword_9B648);
  sub_99900();
  sub_25074(v3);

  return v6;
}

uint64_t sub_25430()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView() + 60));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_25040(*v1);

  return v3;
}

uint64_t sub_2548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25040(a1);

  v4 = (v3 + *(type metadata accessor for UpdateAvailableView() + 60));
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  sub_25074(v5);

  sub_25074(a1);
}

void *sub_25518()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView() + 64));
  _objc_retain(v2);
  return v2;
}

uint64_t sub_25584@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v12 = sub_26AF0;
  v23 = sub_28248;
  v31 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v50 = 0;
  v49 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v5 = *(updated - 8);
  v19 = v5;
  v20 = *(v5 + 64);
  v6 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v22 = &v5 - v6;
  v27 = sub_22FC(&qword_B5320, &qword_9B650);
  v7 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v26 = &v5 - v7;
  v38 = sub_22FC(&qword_B5328, &qword_9B658);
  v32 = *(v38 - 8);
  v33 = v38 - 8;
  v8 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v36 = &v5 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v8);
  v37 = &v5 - v9;
  v50 = &v5 - v9;
  v49 = v1;
  v10 = &v41;
  v42 = v1;
  v11 = sub_22FC(&qword_B5330, &qword_9B660);
  sub_26AF8();
  sub_998B0();
  v3 = v1 + *(updated + 20);
  v14 = *v3;
  v15 = *(v3 + 8);
  sub_2B30(v14, v15 & 1);
  v47[2] = v14;
  v48 = v15 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v16 = v47[1];
  sub_2B78(v14, v15 & 1);
  v17 = sub_4E140();
  _objc_release(v16);
  v25 = v47;
  v47[0] = v17;
  sub_10D38(v18, v22);
  v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = swift_allocObject();
  sub_27ED8(v22, (v24 + v21));
  v29 = sub_28878();
  v30 = sub_28910();
  v28 = &unk_AD520;
  sub_2885C();
  sub_99860();

  sub_28988(v25);
  sub_289B4(v26);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_71A0(v36, v38, v37);
  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v40(v36, v38);
  (*(v32 + 16))(v36, v37, v38);
  sub_8408(v36, v38, v34);
  v40(v36, v38);
  return (v40)(v37, v38);
}

uint64_t sub_25AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v94 = a1;
  v51 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>;
  v52 = &opaque type descriptor for <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v102 = 0;
  v100 = 0;
  v53 = sub_22FC(&qword_B5410, &qword_9B6F0);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v57 = &v19 - v56;
  v58 = sub_22FC(&qword_B53C8, &qword_9B6A8);
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v60 = &v19 - v59;
  v61 = sub_22FC(&qword_B53B8, &qword_9B6A0);
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v63 = &v19 - v62;
  v64 = sub_22FC(&qword_B53A8, &qword_9B698);
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v66 = &v19 - v65;
  v67 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v65);
  v68 = &v19 - v67;
  v69 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v67);
  v70 = &v19 - v69;
  v109 = &v19 - v69;
  v71 = sub_22FC(&qword_B5388, &qword_9B688);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v73 = &v19 - v72;
  v74 = sub_22FC(&qword_B5378, &qword_9B680);
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v76 = &v19 - v75;
  v77 = sub_22FC(&qword_B5368, &qword_9B678);
  v78 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v79 = &v19 - v78;
  v80 = sub_22FC(&qword_B5358, &qword_9B670);
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v82 = &v19 - v81;
  v83 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v81);
  v84 = &v19 - v83;
  v85 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v83);
  v86 = &v19 - v85;
  v108 = &v19 - v85;
  v87 = sub_22FC(&qword_B5330, &qword_9B660);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v94);
  v89 = &v19 - v88;
  v90 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v91 = &v19 - v90;
  v92 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v93 = &v19 - v92;
  v107 = &v19 - v92;
  v106 = v10;
  updated = type metadata accessor for UpdateAvailableView();
  v11 = v94 + *(updated + 20);
  v96 = *v11;
  v97 = *(v11 + 8);
  sub_2B30(v96, v97 & 1);
  v104[2] = v96;
  v105 = v97 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v98 = v104[1];
  sub_2B78(v96, v97 & 1);
  v99 = sub_4D884();
  _objc_release(v98);
  if (v99)
  {
    sub_272FC();
    v42 = sub_99660();
    sub_26E28();
    v43 = 0;
    sub_99830();
    sub_4A0D4(v73);
    v44 = sub_99620();
    sub_26D84();
    sub_99830();
    sub_4A21C(v76);
    v12 = sub_99890();
    v48 = &v101;
    v101 = v12;
    v46 = sub_26CE0();
    v45 = &type metadata for Color;
    v47 = &protocol witness table for Color;
    sub_27390();
    sub_99760();
    sub_49E70(v48);
    sub_4A364(v79);
    v49 = sub_26C38();
    sub_71A0(v84, v80, v86);
    sub_4A4AC(v84);
    v100 = v84;
    sub_4A61C(v86, v82);
    sub_8408(v82, v80, v84);
    sub_4A4AC(v82);
    sub_4A61C(v84, v82);
    v13 = sub_26F38();
    sub_18978(v82, v80, v64, v49, v13, v89);
    sub_4A4AC(v82);
    v41 = sub_22FC(&qword_B5348, &qword_9B668);
    (*(*(v41 - 8) + 56))(v89, 0, 1);
    sub_26B90();
    sub_846C(v89, v41, v91);
    sub_49210(v89);
    sub_49468(v91, v93);
    sub_4A4AC(v84);
    sub_4A4AC(v86);
  }

  else
  {
    v40 = *(v94 + *(updated + 64));
    _objc_retain(v40);
    v104[0] = v40;
    v39 = v40 != 0;
    v38 = v39;
    sub_127E0(v104);
    if (v38)
    {
      sub_273B8(v57);
      v30 = sub_99660();
      v25 = sub_87B4(&qword_B53D0, &unk_9B6B0);
      v26 = sub_87B4(&qword_B4C38, &qword_9A950);
      v22 = sub_87B4(&qword_B53D8, &unk_9B6C0);
      v23 = sub_87B4(&qword_B4CB0, &qword_9A998);
      v24 = sub_27274();
      v28 = sub_CE78();
      v14 = sub_DCAC();
      v103[9] = v22;
      v103[10] = v26;
      v103[11] = v23;
      v103[12] = v24;
      v103[13] = v28;
      v103[14] = v14;
      v29 = 1;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v15 = sub_CE00();
      v103[1] = v25;
      v103[2] = &type metadata for String;
      v103[3] = v26;
      v103[4] = &type metadata for Text;
      v103[5] = OpaqueTypeConformance2;
      v103[6] = v15;
      v103[7] = v28;
      v103[8] = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v31 = 0;
      sub_99830();
      (*(v54 + 8))(v57, v53);
      v32 = sub_99620();
      sub_27084();
      sub_99830();
      sub_49E08(v60);
      v16 = sub_99890();
      v36 = v103;
      v103[0] = v16;
      v34 = sub_26FE0();
      v33 = &type metadata for Color;
      v35 = &protocol witness table for Color;
      sub_27390();
      sub_99760();
      sub_49E70(v36);
      sub_49E9C(v63);
      v37 = sub_26F38();
      sub_71A0(v68, v64, v70);
      sub_49F04(v68);
      v102 = v68;
      sub_49F94(v70, v66);
      sub_8408(v66, v64, v68);
      sub_49F04(v66);
      sub_49F94(v68, v66);
      v17 = sub_26C38();
      sub_18A88(v66, v80, v64, v17, v37, v89);
      sub_49F04(v66);
      v21 = sub_22FC(&qword_B5348, &qword_9B668);
      (*(*(v21 - 8) + 56))(v89, 0, 1);
      sub_26B90();
      sub_846C(v89, v21, v91);
      sub_49210(v89);
      sub_49468(v91, v93);
      sub_49F04(v68);
      sub_49F04(v70);
    }

    else
    {
      v20 = sub_22FC(&qword_B5348, &qword_9B668);
      (*(*(v20 - 8) + 56))(v89, 1);
      sub_26B90();
      sub_846C(v89, v20, v91);
      sub_49210(v89);
      sub_49468(v91, v93);
    }
  }

  sub_498B4(v93, v91);
  sub_26AF8();
  sub_8408(v91, v87, v50);
  sub_49210(v91);
  return sub_49210(v93);
}

unint64_t sub_26AF8()
{
  v2 = qword_B5338;
  if (!qword_B5338)
  {
    sub_87B4(&qword_B5330, &qword_9B660);
    sub_26B90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B90()
{
  v2 = qword_B5340;
  if (!qword_B5340)
  {
    sub_87B4(&qword_B5348, &qword_9B668);
    sub_26C38();
    sub_26F38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26C38()
{
  v2 = qword_B5350;
  if (!qword_B5350)
  {
    sub_87B4(&qword_B5358, &qword_9B670);
    sub_26CE0();
    sub_26EB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26CE0()
{
  v2 = qword_B5360;
  if (!qword_B5360)
  {
    sub_87B4(&qword_B5368, &qword_9B678);
    sub_26D84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26D84()
{
  v2 = qword_B5370;
  if (!qword_B5370)
  {
    sub_87B4(&qword_B5378, &qword_9B680);
    sub_26E28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26E28()
{
  v2 = qword_B5380;
  if (!qword_B5380)
  {
    sub_87B4(&qword_B5388, &qword_9B688);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26EB0()
{
  v2 = qword_B5390;
  if (!qword_B5390)
  {
    sub_87B4(&qword_B5398, &qword_9B690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26F38()
{
  v2 = qword_B53A0;
  if (!qword_B53A0)
  {
    sub_87B4(&qword_B53A8, &qword_9B698);
    sub_26FE0();
    sub_26EB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B53A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26FE0()
{
  v2 = qword_B53B0;
  if (!qword_B53B0)
  {
    sub_87B4(&qword_B53B8, &qword_9B6A0);
    sub_27084();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B53B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_27084()
{
  v2 = qword_B53C0;
  if (!qword_B53C0)
  {
    sub_87B4(&qword_B53C8, &qword_9B6A8);
    sub_87B4(&qword_B53D0, &unk_9B6B0);
    sub_87B4(&qword_B4C38, &qword_9A950);
    sub_87B4(&qword_B53D8, &unk_9B6C0);
    sub_87B4(&qword_B4CB0, &qword_9A998);
    sub_27274();
    sub_CE78();
    sub_DCAC();
    swift_getOpaqueTypeConformance2();
    sub_CE00();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B53C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_27274()
{
  v2 = qword_B53E0;
  if (!qword_B53E0)
  {
    sub_87B4(&qword_B53D8, &unk_9B6C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B53E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_272FC()
{
  sub_995A0();
  sub_22FC(&qword_B5418, &qword_9B6F8);
  sub_291D0();
  return sub_999A0();
}

uint64_t sub_273B8@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v65 = 0;
  v20 = sub_2B0F8;
  v34 = sub_2EB30;
  v31 = sub_3076C;
  v56 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>;
  v62 = sub_31708;
  v64 = sub_3225C;
  v106 = 0;
  v44 = 0;
  v16 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v46 = &v15 - v16;
  v2 = sub_99B10();
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v43 = &v15 - v17;
  v52 = sub_22FC(&qword_B53D8, &unk_9B6C0);
  v18 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v41 = &v15 - v18;
  v71 = sub_22FC(&qword_B53D0, &unk_9B6B0);
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v19 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v72 = &v15 - v19;
  v106 = v1;
  v23 = sub_995A0();
  v21 = &v75;
  v76 = v1;
  v22 = sub_22FC(&qword_B5428, &qword_9B700);
  sub_2B100();
  sub_999A0();
  *&v42[1] = 1;
  sub_99B90("Use Cellular Data to Download?", 0x1EuLL, 1);
  v28 = sub_99580();
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = *sub_98A68();
  _objc_retain(v27);
  v103 = 0;
  v104 = 0;
  v105 = *v42 & 0x100;
  v99 = sub_996F0();
  v100 = v6;
  v101 = v7;
  v102 = v8;
  v37 = v99;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  updated = type metadata accessor for UpdateAvailableView();
  v9 = (v1 + *(updated + 32));
  v29 = *v9;
  v30 = *(v9 + 1);

  v97 = v29;
  v98 = v30;
  v48 = sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();
  v35 = v94;
  v36 = v95;
  v33 = v96;

  v74[6] = v51;
  v32 = v74;
  v74[2] = v51;
  v57 = sub_22FC(&qword_B4C38, &qword_9A950);
  v53 = sub_22FC(&qword_B4CB0, &qword_9A998);
  v54 = sub_27274();
  v59 = sub_CE78();
  v55 = sub_DCAC();
  v90 = v37;
  v91 = v38;
  v92 = v39 & 1 & v42[1];
  v93 = v40;
  sub_997F0();
  v10 = v51;

  sub_88E0(v37, v38, v39 & 1);

  sub_30774(v41);
  sub_99B90("Install and turn on background security improvements?", 0x35uLL, v42[1] & 1);
  sub_99B00();
  v45 = *sub_98A68();
  _objc_retain(v45);
  sub_B928();
  v88[2] = 0;
  v88[3] = 0;
  v89 = *v42 & 0x100;
  v11 = sub_99B40();
  v68 = v88;
  v88[0] = v11;
  v88[1] = v12;
  v13 = (v10 + *(updated + 56));
  v49 = *v13;
  v50 = *(v13 + 1);

  v86 = v49;
  v87 = v50;
  sub_99900();
  v66 = v83;
  v67 = v84;
  v61 = v85;

  v63 = v73;
  v73[2] = v51;
  v77 = v52;
  v78 = v57;
  v79 = v53;
  v80 = v54;
  v81 = v59;
  v82 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_CE00();
  sub_99800();

  sub_CF00(v68);
  return (*(v69 + 8))(v72, v71);
}

uint64_t sub_27B60()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

__n128 sub_27ED8(char *a1, char *a2)
{
  v21 = sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v21 - 8) + 64));
  }

  updated = type metadata accessor for UpdateAvailableView();
  v3 = &a2[updated[5]];
  v4 = &a1[updated[5]];
  *v3 = *v4;
  v3[8] = v4[8];
  v5 = &a2[updated[6]];
  v6 = &a1[updated[6]];
  *v5 = *v6;
  v5[8] = v6[8];
  *&a2[updated[7]] = *&a1[updated[7]];
  *&a2[updated[8]] = *&a1[updated[8]];
  v7 = &a2[updated[9]];
  v8 = updated[9];
  *v7 = *&a1[v8];
  *(v7 + 2) = *&a1[v8 + 16];
  __dst = &a2[updated[10]];
  __src = &a1[updated[10]];
  v17 = sub_22FC(&qword_B4E08, &unk_9B630);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(__src, 1))
  {
    v9 = sub_22FC(&qword_B4E18, &qword_9AC88);
    memcpy(__dst, __src, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(__dst, __src, v17);
    (*(v18 + 56))(__dst, 0, 1, v17);
  }

  v10 = sub_22FC(&qword_B4E10, &qword_9AC80);
  *&__dst[*(v10 + 28)] = *&__src[*(v10 + 28)];
  *&a2[updated[11]] = *&a1[updated[11]];
  *&a2[updated[12]] = *&a1[updated[12]];
  *&a2[updated[13]] = *&a1[updated[13]];
  *&a2[updated[14]] = *&a1[updated[14]];
  v11 = &a2[updated[15]];
  v12 = updated[15];
  result = *&a1[v12];
  *v11 = result;
  v11[1].n128_u64[0] = *&a1[v12 + 16];
  *&a2[updated[16]] = *&a1[updated[16]];
  a2[updated[17]] = a1[updated[17]];
  return result;
}

uint64_t sub_28248(uint64_t *a1, unint64_t *a2)
{
  updated = type metadata accessor for UpdateAvailableView();
  v4 = v2 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_27B10(a1, a2);
}

uint64_t sub_282C8(unint64_t a1)
{
  v59 = 0;
  v60 = a1;
  v34 = a1 >> 62;
  if (v34 <= 2 || a1 == 0xC000000000000000 || a1 == 0xC000000000000008)
  {
    goto LABEL_11;
  }

  switch(a1)
  {
    case 0xC000000000000010:
      updated = type metadata accessor for UpdateAvailableView();
      v1 = (v33 + *(updated + 48));
      v28 = *v1;
      v29 = *(v1 + 1);

      v38[0] = v28;
      v39 = v29;
      v37 = 0;
      sub_22FC(&qword_B4B60, &qword_9A8D0);
      sub_998F0();
      sub_352C(v38);

      v2 = (v33 + *(updated + 52));
      v31 = *v2;
      v32 = *(v2 + 1);

      v35[0] = v31;
      v36 = v32;
      sub_998F0();
      sub_352C(v35);

    case 0xC000000000000018:
LABEL_11:
      v20 = type metadata accessor for UpdateAvailableView();
      v5 = (v33 + *(v20 + 44));
      v18 = *v5;
      v19 = *(v5 + 1);

      v49[0] = v18;
      v50 = v19;
      v48 = 0;
      sub_22FC(&qword_B4B60, &qword_9A8D0);
      sub_998F0();
      sub_352C(v49);

      v6 = (v33 + *(v20 + 48));
      v21 = *v6;
      v22 = *(v6 + 1);

      v46[0] = v21;
      v47 = v22;
      sub_998F0();
      sub_352C(v46);

    case 0xC000000000000028:
      v25 = type metadata accessor for UpdateAvailableView();
      v3 = (v33 + *(v25 + 44));
      v23 = *v3;
      v24 = *(v3 + 1);

      v44[0] = v23;
      v45 = v24;
      v43 = 0;
      sub_22FC(&qword_B4B60, &qword_9A8D0);
      sub_998F0();
      sub_352C(v44);

      v4 = (v33 + *(v25 + 52));
      v26 = *v4;
      v27 = *(v4 + 1);

      v41[0] = v26;
      v42 = v27;
      v40 = 0;
      sub_998F0();
      sub_352C(v41);

    default:
      v15 = type metadata accessor for UpdateAvailableView();
      v7 = (v33 + v15[11]);
      v11 = *v7;
      v12 = *(v7 + 1);

      v57[0] = v11;
      v58 = v12;
      v56 = 0;
      sub_22FC(&qword_B4B60, &qword_9A8D0);
      sub_998F0();
      sub_352C(v57);

      v8 = (v33 + v15[12]);
      v13 = *v8;
      v14 = *(v8 + 1);

      v54[0] = v13;
      v55 = v14;
      v53 = 0;
      sub_998F0();
      sub_352C(v54);

      v9 = (v33 + v15[13]);
      v16 = *v9;
      v17 = *(v9 + 1);

      v51[0] = v16;
      v52 = v17;
      sub_998F0();
      sub_352C(v51);
  }
}

unint64_t sub_28878()
{
  v2 = qword_B53E8;
  if (!qword_B53E8)
  {
    sub_87B4(&qword_B5320, &qword_9B650);
    sub_26AF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B53E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_28910()
{
  v2 = qword_B53F0;
  if (!qword_B53F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B53F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_289B4(uint64_t a1)
{
  v1 = sub_22FC(&qword_B5348, &qword_9B668);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_22FC(&qword_B53F8, &qword_9B6D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_22FC(&qword_B5410, &qword_9B6F0);
      (*(*(v7 - 8) + 8))(a1);
      v8 = *(a1 + *(sub_22FC(&qword_B53A8, &qword_9B698) + 36));
    }

    else
    {
      v12 = a1 + *(sub_22FC(&qword_B5400, &qword_9B6D8) + 44);
      sub_88E0(*(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);
      v2 = *(v12 + 48);

      sub_88E0(*(v12 + 56), *(v12 + 64), *(v12 + 72) & 1);
      v3 = *(v12 + 80);

      v11 = sub_22FC(&qword_B5408, &unk_9B6E0);
      v10 = v12 + *(v11 + 48);
      v4 = sub_999D0();
      (*(*(v4 - 8) + 8))(v10);
      v13 = v12 + *(v11 + 64);
      v5 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v5 - 8) + 8))(v13);
      v6 = *(a1 + *(sub_22FC(&qword_B5358, &qword_9B670) + 36));
    }
  }

  return a1;
}

uint64_t sub_28C0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v23 = a1;
  v30 = 0;
  v16 = sub_29258;
  v31 = sub_489E4;
  v29 = sub_2ACC0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v53 = __b;
  v21 = 88;
  memset(__b, 0, sizeof(__b));
  v15 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v9 = *(updated - 8);
  v24 = v9;
  v25 = *(v9 + 64);
  v10 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v27 = &v9 - v10;
  v45 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v34 = *(v45 - 8);
  v35 = v45 - 8;
  v11 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v15);
  v42 = &v9 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v48 = &v9 - v12;
  v65 = &v9 - v12;
  v50 = sub_999D0();
  v32 = *(v50 - 8);
  v33 = v50 - 8;
  v13 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v23);
  v43 = &v9 - v13;
  v14 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v49 = &v9 - v14;
  v64 = &v9 - v14;
  v63 = v7;
  v18 = sub_995A0();
  v17 = sub_22FC(&qword_B5700, &qword_9BD80);
  sub_484F0();
  v19 = &v61;
  sub_999A0();
  v20 = __dst;
  memcpy(__dst, v19, v21);
  v22 = v60;
  memcpy(v60, v20, v21);
  v36 = sub_22FC(&qword_B5710, &qword_9BD88);
  v37 = sub_48578();
  sub_71A0(v22, v36, v53);
  sub_48600(v22);
  sub_999C0();
  v38 = sub_44DB0();
  sub_71A0(v43, v50, v49);
  v52 = *(v32 + 8);
  v51 = v32 + 8;
  v52(v43, v50);
  sub_10D38(v23, v27);
  v26 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = swift_allocObject();
  sub_27ED8(v27, (v28 + v26));
  sub_99920();
  v39 = sub_11928();
  sub_71A0(v42, v45, v48);
  v47 = *(v34 + 8);
  v46 = v34 + 8;
  v47(v42, v45);
  v44 = v58;
  sub_48A48(v53, v58);
  v41 = v59;
  v59[0] = v44;
  (*(v32 + 16))(v43, v49, v50);
  v59[1] = v43;
  (*(v34 + 16))(v42, v48, v45);
  v59[2] = v42;
  v57[0] = v36;
  v57[1] = v50;
  v57[2] = v45;
  v54 = v37;
  v55 = v38;
  v56 = v39;
  sub_84B8(v41, 3uLL, v57, v40);
  v47(v42, v45);
  v52(v43, v50);
  sub_48600(v44);
  v47(v48, v45);
  v52(v49, v50);
  return sub_48600(v53);
}

unint64_t sub_291D0()
{
  v2 = qword_B5420;
  if (!qword_B5420)
  {
    sub_87B4(&qword_B5418, &qword_9B6F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29258@<X0>(uint64_t a1@<X8>)
{
  memset(v73, 0, sizeof(v73));
  memset(v54, 0, 32);
  HIBYTE(v29) = 1;
  sub_99B90("Software Update Required", 0x18uLL, 1);
  sub_99580();
  v14 = *sub_98A68();
  _objc_retain(v14);
  v70 = 0;
  v71 = 0;
  v72 = v29 & 0x100;
  v66 = sub_996F0();
  v67 = v1;
  v68 = v2;
  v69 = v3;
  v15 = v66;
  v16 = v1;
  v17 = v2;
  v18 = v3;
  sub_996B0();
  v62 = v15;
  v63 = v16;
  v64 = v17 & 1;
  v65 = v18;
  v58 = sub_996E0();
  v59 = v4;
  v60 = v5;
  v61 = v6;
  v19 = v58;
  v20 = v4;
  v21 = v5;
  v22 = v6;

  sub_88E0(v15, v16, v17 & 1);

  v55[0] = v19;
  v55[1] = v20;
  v56 = v21 & 1;
  v57 = v22;
  sub_71A0(v55, &type metadata for Text, v73);
  sub_10440(v55);
  sub_99B90("Background Security Improvements require the latest version of OSName.", 0x46uLL, 1);
  sub_99580();
  v23 = *sub_98A68();
  _objc_retain(v23);
  v51 = 0;
  v52 = 0;
  v53 = v29 & 0x100;
  v47 = sub_996F0();
  v48 = v7;
  v49 = v8;
  v50 = v9;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  sub_99670();
  v43 = v47;
  v44 = v24;
  v45 = v25 & 1;
  v46 = v26;
  v39 = sub_996E0();
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v27 = v10;
  v28 = v11;
  v30 = v12;

  sub_88E0(v47, v24, v25 & 1);

  v36[0] = v39;
  v36[1] = v27;
  v37 = v28 & 1;
  v38 = v30;
  sub_71A0(v36, &type metadata for Text, v54);
  sub_10440(v36);
  sub_10488(v73, v34);
  v35[0] = v34;
  sub_10488(v54, v33);
  v35[1] = v33;
  v32[0] = &type metadata for Text;
  v32[1] = &type metadata for Text;
  sub_84B8(v35, 2uLL, v32, a1);
  sub_10440(v33);
  sub_10440(v34);
  sub_10440(v54);
  return sub_10440(v73);
}

uint64_t sub_296DC(void *a1)
{
  v14 = a1;
  v18 = &protocol witness table for MainActor;
  v23 = &unk_9BD98;
  v25 = 0;
  v21 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v11 = *(updated - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v20 = &v10 - v12;
  v13 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_99D00();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_10D38(v14, v20);
  sub_99CD0();
  v17 = sub_99CC0();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_27ED8(v8, (v7 + v6));
  sub_2A6F4(v21, v21, v22, v23, v24, &type metadata for () + 8);
}

uint64_t sub_29908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v5 = *(*(sub_22FC(&qword_B4B40, &unk_9A850) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = sub_991C0();
  v4[6] = v6;
  v11 = *(v6 - 8);
  v4[7] = v11;
  v7 = *(v11 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[3] = a4;
  v4[9] = sub_99CD0();
  v4[10] = sub_99CC0();
  v13 = sub_99CA0();
  v4[11] = v13;
  v4[12] = v8;
  v9 = v4[2];

  return _swift_task_switch(sub_29A84, v13);
}

uint64_t sub_29A84()
{
  v16 = v0[7];
  v18 = v0[6];
  v17 = v0[5];
  v0[2] = v0;
  sub_99B90("settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK", 0x45uLL, 1);
  sub_991B0();

  if ((*(v16 + 48))(v17, 1, v18) == 1)
  {
    sub_4910C(v15[5]);
    v1 = v15[10];
    v13 = v15[8];
    v14 = v15[5];

    v2 = *(v15[2] + 8);
    v3 = v15[2];

    return v2();
  }

  else
  {
    v10 = v15[8];
    v5 = v15[6];
    v6 = v15[5];
    v9 = v15[4];
    (*(v15[7] + 32))();
    v11 = swift_task_alloc();
    v15[13] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    sub_2A4D4();
    v7 = swift_task_alloc();
    v15[14] = v7;
    *v7 = v15[2];
    v7[1] = sub_29D04;
    v8 = v15[9];

    return sub_2A4E8(v12, &type metadata for () + 8, sub_491B4, v11);
  }
}

uint64_t sub_29D04()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(v2 + 16) = *v1;
  v12 = (v2 + 16);
  v13 = (v2 + 16);

  if (v0)
  {
    v9 = *v13;
    v10 = v12[10];
    v7 = v12[9];
    v8 = sub_29F54;
  }

  else
  {
    v4 = v12[11];

    v5 = *v13;
    v6 = v12[10];
    v7 = v12[9];
    v8 = sub_29E80;
  }

  return _swift_task_switch(v8, v7);
}

uint64_t sub_29E80()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[6];
  v0[2] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = v0[10];
  v8 = v0[8];
  v9 = v0[5];

  v5 = *(v0[2] + 8);
  v6 = v0[2];

  return v5();
}

uint64_t sub_29F54()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = v0;
}

uint64_t sub_29FA0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v36 = a1;
  v49 = 0;
  v58 = 0;
  v57 = 0;
  v46 = sub_993B0();
  v31 = v46;
  v32 = *(v46 - 8);
  v45 = v32;
  v33 = v32;
  v2 = *(v32 + 64);
  __chkstk_darwin(v46 - 8);
  v41 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v41;
  v38 = sub_22FC(&qword_B52F8, &unk_9B560);
  v35 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v4 = (v14 - v35);
  v39 = (v14 - v35);
  v44 = sub_99450();
  v37 = *(v44 - 8);
  v42 = v37;
  v5 = *(v37 + 64);
  v6 = __chkstk_darwin(v36);
  v43 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v6;
  v57 = v8;
  sub_21DD0(v6, v4);
  sub_99400();
  sub_21EA4(v39);
  sub_99440();
  v9 = v41;
  (*(v42 + 8))(v43, v44);
  v10 = sub_81788();
  (*(v45 + 16))(v9, v10, v46);
  v51 = sub_99390();
  v47 = v51;
  v50 = sub_99D60();
  v48 = v50;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v52 = sub_99F80();
  if (os_log_type_enabled(v51, v50))
  {
    v28 = v30;
    v20 = sub_99E40();
    v16 = v20;
    v17 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v18 = 0;
    v21 = sub_F444(0);
    v19 = v21;
    v22 = sub_F444(v18);
    v56 = v20;
    v55 = v21;
    v54 = v22;
    v23 = 0;
    v24 = &v56;
    sub_F498(0, &v56);
    sub_F498(v23, v24);
    v53 = v52;
    v25 = v14;
    __chkstk_darwin(v14);
    v26 = &v14[-6];
    v14[-4] = v11;
    v14[-3] = &v55;
    v14[-2] = &v54;
    v27 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    v12 = v28;
    sub_99C20();
    v29 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v47, v48, "Navigating to Software Update settings for Splombo update", v16, 2u);
      v14[1] = 0;
      sub_F5B0(v19);
      sub_F5B0(v22);
      sub_99E20();

      v15 = v29;
    }
  }

  else
  {

    v15 = v30;
  }

  v14[0] = v15;

  return (*(v33 + 8))(v34, v31);
}

uint64_t sub_2A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  v6 = v5[2];
  return _swift_task_switch(sub_2A52C, 0);
}

uint64_t sub_2A52C()
{
  v4 = v0[6];
  v0[2] = v0;
  v0[7] = sub_99CC0();
  v1 = sub_99CA0();
  v2 = v0[2];

  return _swift_task_switch(sub_2A5C4, v1);
}

uint64_t sub_2A5C4()
{
  v1 = v0[7];
  v2 = v0[5];
  v8 = v0[4];
  v7 = v0[3];
  v0[2] = v0;

  v8(v3);
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t sub_2A6F4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &unk_9BC68;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  sub_3D538(v55, v58);
  v59 = sub_99D00();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    sub_3D660(v58);
    v45 = 0;
  }

  else
  {
    v44 = sub_99CF0();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = sub_99CA0();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = sub_99B70();

    v8 = *(v27 + 16);
    sub_3D708(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    sub_3D660(v55);

    v19 = v17;
  }

  else
  {

    sub_3D660(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

uint64_t sub_2ACC0@<X0>(uint64_t a1@<X8>)
{
  v41 = 0u;
  v42 = 0u;
  HIBYTE(v17) = 1;
  sub_99B90("Go to Software Update", 0x15uLL, 1);
  sub_99580();
  v8 = *sub_98A68();
  _objc_retain(v8);
  v38 = 0;
  v39 = 0;
  v40 = v17 & 0x100;
  v34 = sub_996F0();
  v35 = v1;
  v36 = v2;
  v37 = v3;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  sub_99880();
  v30 = v34;
  v31 = v9;
  v32 = v10 & 1;
  v33 = v11;
  v26 = sub_996D0();
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v12 = v4;
  v13 = v5;
  v14 = v6;

  sub_88E0(v34, v9, v10 & 1);

  v23[0] = v26;
  v23[1] = v12;
  v24 = v13 & 1;
  v25 = v14;
  sub_71A0(v23, &type metadata for Text, &v41);
  sub_10440(v23);
  v15 = v41;
  v16 = v42;
  v18 = *(&v42 + 1);
  sub_F84C(v41, *(&v41 + 1), v42 & 1);

  v20 = v15;
  v21 = v16 & 1;
  v22 = v18;
  sub_8408(&v20, &type metadata for Text, a1);
  sub_10440(&v20);
  return sub_10440(&v41);
}

uint64_t sub_2AF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v8 = a1;
  v9 = sub_43970;
  v21 = 0;
  v20 = 0;
  v14 = sub_22FC(&qword_B5428, &qword_9B700);
  v6 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v16 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v17 = &v6 - v7;
  v21 = &v6 - v7;
  v20 = v4;
  v12 = sub_995A0();
  v10 = &v18;
  v19 = v8;
  v11 = sub_22FC(&qword_B5628, &unk_9BD10);
  sub_43978();
  sub_999A0();
  v15 = sub_2B100();
  sub_71A0(v16, v14, v17);
  sub_43A00(v16);
  sub_44090(v17, v16);
  sub_8408(v16, v14, v13);
  sub_43A00(v16);
  return sub_43A00(v17);
}

unint64_t sub_2B100()
{
  v2 = qword_B5430;
  if (!qword_B5430)
  {
    sub_87B4(&qword_B5428, &qword_9B700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2B188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v177 = a1;
  v168 = sub_44B60;
  v89 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:)>>;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v204 = 0;
  v198 = 0;
  v193 = 0;
  v188 = 0;
  v90 = sub_22FC(&qword_B5638, &qword_9BD20);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v92 = v36 - v91;
  v93 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v91);
  v94 = v36 - v93;
  v221 = v36 - v93;
  v95 = sub_22FC(&qword_B54E0, &qword_9B7B8);
  v96 = (*(*(v95 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v97 = v36 - v96;
  v98 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v96);
  v99 = v36 - v98;
  v220 = v36 - v98;
  v100 = sub_22FC(&qword_B5640, &qword_9BD28);
  v101 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v102 = v36 - v101;
  v103 = sub_22FC(&qword_B5648, &qword_9BD30);
  v104 = (*(*(v103 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v103);
  v105 = v36 - v104;
  v106 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v104);
  v107 = v36 - v106;
  v219 = v36 - v106;
  v108 = sub_22FC(&qword_B54C8, &qword_9B7A0);
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v108);
  v112 = v36 - v111;
  v113 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v111);
  v114 = v36 - v113;
  v218 = v36 - v113;
  v115 = sub_22FC(&qword_B5650, &qword_9BD38);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v115);
  v117 = v36 - v116;
  v118 = sub_22FC(&qword_B5658, &qword_9BD40);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v120 = v36 - v119;
  v121 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v119);
  v122 = v36 - v121;
  v217 = v36 - v121;
  v123 = sub_22FC(&qword_B54B8, &qword_9B790);
  v124 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123);
  v125 = v36 - v124;
  v126 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v124);
  v127 = v36 - v126;
  v216 = v36 - v126;
  v128 = sub_22FC(&qword_B5660, &qword_9BD48);
  v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v128);
  v130 = v36 - v129;
  v131 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v129);
  v132 = v36 - v131;
  v215 = v36 - v131;
  v133 = sub_22FC(&qword_B54A0, &qword_9B778);
  v134 = (*(*(v133 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v135 = v36 - v134;
  v136 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v134);
  v137 = v36 - v136;
  v214 = v36 - v136;
  v138 = sub_22FC(&qword_B5668, &qword_9BD50);
  v139 = (*(*(v138 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v138);
  v140 = v36 - v139;
  v141 = sub_22FC(&qword_B5670, &qword_9BD58);
  v142 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v141);
  v143 = v36 - v142;
  v144 = sub_22FC(&qword_B5678, &qword_9BD60);
  v145 = (*(*(v144 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144);
  v146 = v36 - v145;
  v147 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v145);
  v148 = v36 - v147;
  v213 = v36 - v147;
  v149 = sub_22FC(&qword_B5488, &qword_9B760);
  v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v149);
  v151 = v36 - v150;
  v152 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v150);
  v153 = v36 - v152;
  v212 = v36 - v152;
  v176 = 0;
  v154 = sub_999D0();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v154);
  v158 = v36 - v157;
  v159 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v157);
  v160 = v36 - v159;
  v211 = v36 - v159;
  v161 = sub_22FC(&qword_B5680, &qword_9BD68);
  v162 = (*(*(v161 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v161);
  v163 = v36 - v162;
  v164 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36 - v162);
  v165 = v36 - v164;
  v210 = v36 - v164;
  v173 = sub_22FC(&qword_B5688, &qword_9BD70);
  v166 = (*(*(v173 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v177);
  v175 = v36 - v166;
  v167 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __chkstk_darwin(v14);
  v172 = v36 - v167;
  v209 = v36 - v167;
  v208 = v16;
  v171 = sub_995A0();
  v169 = v183;
  v183[2] = v177;
  v170 = sub_22FC(&qword_B5690, &qword_9BD78);
  sub_44B68();
  sub_999A0();
  v174 = sub_44BF0();
  sub_71A0(v175, v173, v172);
  sub_44C78(v175);
  v17 = v177 + *(type metadata accessor for UpdateAvailableView() + 20);
  v178 = *v17;
  v179 = *(v17 + 8);
  sub_2B30(v178, v179 & 1);
  v206 = v178;
  v207 = v179 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v180 = v205;
  sub_2B78(v178, v179 & 1);
  v181 = sub_4E140();
  _objc_release(v180);
  v182 = v181 >> 62;
  switch(v182)
  {
    case 0:
      v87 = v181;

LABEL_20:
      v204 = v160;
      sub_999C0();
      v38 = sub_44DB0();
      sub_71A0(v158, v154, v160);
      v43 = *(v155 + 8);
      v42 = v155 + 8;
      v43(v158, v154);
      sub_2E210(v97);
      v39 = sub_36ABC();
      sub_71A0(v97, v95, v99);
      sub_36B64(v97);
      (*(v155 + 16))(v158, v160, v154);
      v40 = v203;
      v203[0] = v158;
      sub_44E30(v99, v97);
      v203[1] = v97;
      v202[0] = v154;
      v202[1] = v95;
      v201[2] = v38;
      v201[3] = v39;
      sub_84B8(v40, 2uLL, v202, v94);
      sub_36B64(v97);
      v43(v158, v154);
      sub_44F20(v94, v92);
      v33 = sub_45084();
      sub_18A88(v92, &type metadata for EmptyView, v90, &protocol witness table for EmptyView, v33, v102);
      sub_4510C(v92);
      v41 = sub_4520C();
      v34 = sub_45624();
      sub_18A88(v102, v141, v100, v41, v34, v163);
      sub_456C8(v102);
      sub_457F4(v163, v165);
      sub_4510C(v94);
      sub_36B64(v99);
      v43(v160, v154);
      goto LABEL_21;
    case 1:
      v86 = v181 & 0x3FFFFFFFFFFFFFFFLL;

      goto LABEL_20;
    case 2:
      v85 = v181 & 0x3FFFFFFFFFFFFFFFLL;

      goto LABEL_20;
  }

  switch(v181)
  {
    case 0xC000000000000000:
    case 0xC000000000000008:
      goto LABEL_19;
    case 0xC000000000000010:
      v193 = v160;
      sub_999C0();
      v61 = sub_44DB0();
      sub_71A0(v158, v154, v160);
      v68 = *(v155 + 8);
      v67 = v155 + 8;
      v68(v158, v154);
      sub_2D828(v125);
      v62 = sub_3CCDC();
      sub_71A0(v125, v123, v127);
      sub_4762C(v125);
      (*(v155 + 16))(v158, v160, v154);
      v63 = v192;
      v192[0] = v158;
      sub_476D0(v127, v125);
      v192[1] = v125;
      v191[0] = v154;
      v191[1] = v123;
      v189 = v61;
      v190 = v62;
      sub_84B8(v63, 2uLL, v191, v122);
      sub_4762C(v125);
      v68(v158, v154);
      sub_477FC(v122, v120);
      v64 = sub_45514();
      v24 = sub_4559C();
      sub_18978(v120, v118, v103, v64, v24, v117);
      sub_47998(v120);
      v65 = sub_452B4();
      v25 = sub_4546C();
      sub_18A88(v117, v138, v115, v65, v25, v143);
      sub_47074(v117);
      v66 = sub_4520C();
      v26 = sub_45624();
      sub_18978(v143, v141, v100, v66, v26, v163);
      sub_47244(v143);
      sub_457F4(v163, v165);
      sub_47998(v122);
      sub_4762C(v127);
      v68(v160, v154);
      break;
    case 0xC000000000000018:
LABEL_19:
      sub_99A10();
      v44 = &type metadata for EmptyView;
      v45 = &protocol witness table for EmptyView;
      sub_71A0(v46, &type metadata for EmptyView, v46);
      sub_8408(v46, v44, v46);
      v31 = sub_45084();
      sub_18978(v46, v44, v90, v45, v31, v102);
      v47 = sub_4520C();
      v32 = sub_45624();
      sub_18A88(v102, v141, v100, v47, v32, v163);
      sub_456C8(v102);
      sub_457F4(v163, v165);
      break;
    case 0xC000000000000020:
      v188 = v160;
      sub_999C0();
      v69 = sub_44DB0();
      sub_71A0(v158, v154, v160);
      v76 = *(v155 + 8);
      v75 = v155 + 8;
      v76(v158, v154);
      sub_2D6CC(v135);
      v70 = sub_3CC1C();
      sub_71A0(v135, v133, v137);
      sub_47A98(v135);
      (*(v155 + 16))(v158, v160, v154);
      v71 = v187;
      v187[0] = v158;
      sub_47B3C(v137, v135);
      v187[1] = v135;
      v186[0] = v154;
      v186[1] = v133;
      v185[2] = v69;
      v185[3] = v70;
      sub_84B8(v71, 2uLL, v186, v132);
      sub_47A98(v135);
      v76(v158, v154);
      sub_47C2C(v132, v130);
      v72 = sub_4535C();
      v21 = sub_453E4();
      sub_18A88(v130, v144, v128, v72, v21, v140);
      sub_47D90(v130);
      v73 = sub_452B4();
      v22 = sub_4546C();
      sub_18978(v140, v138, v115, v73, v22, v143);
      sub_47E90(v140);
      v74 = sub_4520C();
      v23 = sub_45624();
      sub_18978(v143, v141, v100, v74, v23, v163);
      sub_47244(v143);
      sub_457F4(v163, v165);
      sub_47D90(v132);
      sub_47A98(v137);
      v76(v160, v154);
      break;
    case 0xC000000000000028:
      v198 = v160;
      sub_999C0();
      v51 = sub_44DB0();
      sub_71A0(v158, v154, v160);
      v60 = *(v155 + 8);
      v59 = v155 + 8;
      v60(v158, v154);
      sub_2DB64(v112);
      v48 = sub_87B4(&qword_B4C38, &qword_9A950);
      v49 = sub_36ABC();
      v50 = sub_CE00();
      v27 = sub_CE78();
      v197[2] = v95;
      v197[3] = &type metadata for String;
      v197[4] = v48;
      v197[5] = v49;
      v197[6] = v50;
      v197[7] = v27;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_71A0(v112, v108, v114);
      v58 = *(v109 + 8);
      v57 = v109 + 8;
      v58(v112, v108);
      (*(v155 + 16))(v158, v160, v154);
      v53 = v197;
      v197[0] = v158;
      (*(v109 + 16))(v112, v114, v108);
      v197[1] = v112;
      v196[0] = v154;
      v196[1] = v108;
      v194 = v51;
      v195 = OpaqueTypeConformance2;
      sub_84B8(v53, 2uLL, v196, v107);
      v58(v112, v108);
      v60(v158, v154);
      sub_46ED0(v107, v105);
      v54 = sub_45514();
      v28 = sub_4559C();
      sub_18A88(v105, v118, v103, v54, v28, v117);
      sub_46FB0(v105);
      v55 = sub_452B4();
      v29 = sub_4546C();
      sub_18A88(v117, v138, v115, v55, v29, v143);
      sub_47074(v117);
      v56 = sub_4520C();
      v30 = sub_45624();
      sub_18978(v143, v141, v100, v56, v30, v163);
      sub_47244(v143);
      sub_457F4(v163, v165);
      sub_46FB0(v107);
      v58(v114, v108);
      v60(v160, v154);
      break;
    case 0xC000000000000030:
      sub_999C0();
      v77 = sub_44DB0();
      sub_71A0(v158, v154, v160);
      v84 = *(v155 + 8);
      v83 = v155 + 8;
      v84(v158, v154);
      sub_2D570(v151);
      v78 = sub_3CB5C();
      sub_71A0(v151, v149, v153);
      sub_48098(v151);
      (*(v155 + 16))(v158, v160, v154);
      v79 = v185;
      v185[0] = v158;
      sub_4813C(v153, v151);
      v185[1] = v151;
      v184[0] = v154;
      v184[1] = v149;
      v183[3] = v77;
      v183[4] = v78;
      sub_84B8(v79, 2uLL, v184, v148);
      sub_48098(v151);
      v84(v158, v154);
      sub_4822C(v148, v146);
      v80 = sub_4535C();
      v18 = sub_453E4();
      sub_18978(v146, v144, v128, v80, v18, v140);
      sub_48390(v146);
      v81 = sub_452B4();
      v19 = sub_4546C();
      sub_18978(v140, v138, v115, v81, v19, v143);
      sub_47E90(v140);
      v82 = sub_4520C();
      v20 = sub_45624();
      sub_18978(v143, v141, v100, v82, v20, v163);
      sub_47244(v143);
      sub_457F4(v163, v165);
      sub_48390(v148);
      sub_48098(v153);
      v84(v160, v154);
      break;
    default:
      goto LABEL_19;
  }

LABEL_21:
  sub_45EC0(v172, v175);
  v37 = v201;
  v201[0] = v175;
  sub_46150(v165, v163);
  v201[1] = v163;
  v36[0] = v200;
  v200[0] = v173;
  v200[1] = v161;
  v36[1] = v199;
  v199[0] = v174;
  v199[1] = sub_46904();
  sub_84B8(v37, 2uLL, v36[0], v88);
  sub_469AC(v163);
  sub_44C78(v175);
  sub_469AC(v165);
  return sub_44C78(v172);
}

uint64_t sub_2CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = v133;
  v74 = a2;
  v101 = a1;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  memset(v133, 0, 32);
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v98 = 0;
  v75 = sub_99350();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v79 = v21 - v78;
  v80 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v84 = v21 - v83;
  v85 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21 - v83);
  v86 = v21 - v85;
  v87 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21 - v85);
  v88 = v21 - v87;
  v136 = v21 - v87;
  v89 = sub_22FC(&qword_B4E98, &qword_9AD70);
  v90 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v98);
  v91 = v21 - v90;
  v92 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v93 = v21 - v92;
  v94 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v95 = v21 - v94;
  v135 = v21 - v94;
  v96 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v97 = v21 - v96;
  v99 = (*(*(sub_99B10() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v100 = v21 - v99;
  v134 = v8;
  updated = type metadata accessor for UpdateAvailableView();
  v103 = *(v101 + *(updated + 64));
  _objc_retain(v103);
  if (v103)
  {
    v72 = v103;
    v68 = v103;
    v9 = [v103 humanReadableUpdateName];
    v69 = v9;
    if (v9)
    {
      v67 = v69;
      v62 = v69;
      v63 = sub_99B30();
      v64 = v10;
      _objc_release(v62);
      v65 = v63;
      v66 = v64;
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    v61 = v66;
    v60 = v65;
    _objc_release(v68);
    v70 = v60;
    v71 = v61;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v129 = v70;
  v130 = v71;
  if (v71)
  {
    v131 = v129;
    v132 = v130;
  }

  else
  {
    *&v58[1] = 1;
    sub_99B90("Security Update", 0xFuLL, 1);
    sub_99B00();
    v59 = *sub_98A68();
    _objc_retain(v59);
    sub_B928();
    v127[2] = 0;
    v127[3] = 0;
    v128 = *v58 & 0x100;
    v131 = sub_99B40();
    v132 = v11;
    if (v130)
    {
      sub_48490(&v129);
    }
  }

  v45 = v127;
  v127[0] = v131;
  v127[1] = v132;
  sub_CE00();
  v123 = sub_99700();
  v124 = v12;
  v125 = v13;
  v126 = v14;
  v47 = v123;
  v48 = v12;
  v49 = v13;
  v50 = v14;
  v46 = sub_996B0();
  v119 = v47;
  v120 = v48;
  v54 = 1;
  v121 = v49 & 1;
  v122 = v50;
  v115 = sub_996E0();
  v116 = v15;
  v117 = v16;
  v118 = v17;
  v51 = v115;
  v52 = v15;
  v53 = v16;
  v55 = v17;

  sub_88E0(v47, v48, v49 & 1);

  v56 = v112;
  v112[0] = v51;
  v112[1] = v52;
  v113 = v53 & 1 & v54;
  v114 = v55;
  sub_71A0(v112, &type metadata for Text, v133);
  sub_10440(v56);
  v57 = *(v101 + *(updated + 64));
  _objc_retain(v57);
  if (!v57)
  {
    goto LABEL_25;
  }

  v44 = v57;
  v43 = v57;
  v18 = [v57 documentation];
  v104 = v18;
  if (!v18)
  {
    sub_484BC(&v104);
    _objc_release(v43);
LABEL_25:
    v32 = 0;
    v33 = 0xF000000000000000;
    goto LABEL_22;
  }

  v40 = &v104;
  v41 = v104;
  _objc_retain(v104);
  sub_484BC(v40);
  _objc_release(v43);
  v42 = [v41 releaseNotesSummary];
  _objc_release(v41);
  if (v42)
  {
    v39 = v42;
    v34 = v42;
    v35 = sub_991E0();
    v36 = v19;
    _objc_release(v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0xF000000000000000;
  }

  v32 = v37;
  v33 = v38;
LABEL_22:
  v30 = v33;
  v31 = v32;
  if ((v33 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(v81 + 56))(v91, 1, 1, v80);
    sub_19AB8();
    sub_846C(v91, v80, v93);
    sub_1A1C0(v91);
    sub_1A270(v93, v95);
  }

  else
  {
    v28 = v31;
    v29 = v30;
    v26 = v30;
    v25 = v31;
    v106 = v31;
    v107 = v30;
    sub_1A538(v31, v30);
    sub_99340();
    sub_19B5C();
    sub_99820();
    (*(v76 + 8))(v79, v75);
    v27 = sub_19AB8();
    sub_71A0(v86, v80, v88);
    sub_1A5B4(v86);
    v105 = v86;
    sub_1A610(v88, v84);
    sub_8408(v84, v80, v86);
    sub_1A5B4(v84);
    sub_1A610(v86, v91);
    (*(v81 + 56))(v91, 0, 1, v80);
    sub_846C(v91, v80, v93);
    sub_1A1C0(v91);
    sub_1A270(v93, v95);
    sub_1A5B4(v86);
    sub_1A5B4(v88);
    sub_1A6B0(v25, v26);
  }

  v24 = v133;
  v23 = v110;
  sub_10488(v133, v110);
  v22 = v111;
  v111[0] = v23;
  sub_1A3D4(v95, v93);
  v111[1] = v93;
  v21[0] = v109;
  v109[0] = &type metadata for Text;
  v109[1] = v89;
  v21[1] = v108;
  v108[0] = &protocol witness table for Text;
  v108[1] = sub_19A20();
  sub_84B8(v22, 2uLL, v21[0], v74);
  sub_1A1C0(v93);
  sub_10440(v23);
  sub_1A1C0(v95);
  return sub_10440(v24);
}

uint64_t sub_2D570@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v6 = 0;
  v8 = nullsub_4;
  v5 = sub_32430;
  v14 = 0;
  v13 = sub_22FC(&qword_B5480, &qword_9B758);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v3 - v4;
  v14 = v1;
  v7 = sub_22FC(&qword_B54E8, &qword_9B7C0);
  sub_32A40();
  sub_99920();
  sub_32AC8();
  sub_99840();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_2D6CC@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v6 = 0;
  v8 = nullsub_5;
  v5 = sub_32B54;
  v14 = 0;
  v13 = sub_22FC(&qword_B5498, &qword_9B770);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v3 - v4;
  v14 = v1;
  v7 = sub_22FC(&qword_B5500, &qword_9B7C8);
  sub_32CD0();
  sub_99920();
  sub_32D58();
  sub_99840();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_2D828@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v16 = sub_34044;
  v15 = sub_34674;
  v34 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v6 = *(updated - 8);
  v10 = v6;
  v11 = *(v6 + 64);
  v7 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v13 = &v6 - v7;
  v22 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v8 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v21 = &v6 - v8;
  v28 = sub_22FC(&qword_B5518, &unk_9B7D0);
  v9 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v18);
  v29 = &v6 - v9;
  v34 = v1;
  sub_10D38(v1, v2);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_27ED8(v13, (v14 + v12));
  v30 = v18;
  sub_99920();
  v17 = sub_99640();
  sub_11928();
  sub_99830();
  v3 = v18;
  (*(v19 + 8))(v21, v22);
  v4 = (v3 + *(updated + 44));
  v24 = *v4;
  v25 = *(v4 + 1);

  v32 = v24;
  v33 = v25;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();
  v27 = v31;

  sub_3467C();
  sub_99840();
  return sub_34720(v29);
}

uint64_t sub_2DB64@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v22 = 0;
  v23 = sub_35E04;
  v21 = sub_36124;
  v46 = sub_36AB4;
  v65 = 0;
  v33 = 0;
  v10 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &v9 - v10;
  v11 = (*(*(sub_99B10() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v9 - v11;
  updated = type metadata accessor for UpdateAvailableView();
  v12 = *(updated - 8);
  v16 = v12;
  v17 = *(v12 + 64);
  v13 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v19 = &v9 - v13;
  v30 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v9 - v14;
  v48 = sub_22FC(&qword_B54E0, &qword_9B7B8);
  v15 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v52 = &v9 - v15;
  v65 = v1;
  sub_10D38(v1, v2);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  sub_27ED8(v19, (v20 + v18));
  sub_99920();
  v3 = v1 + *(updated + 48);
  v24 = *v3;
  v25 = *(v3 + 1);

  v63 = v24;
  v64 = v25;
  v37 = sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();
  v26 = v62;

  sub_11928();
  *&v31[1] = 1;
  sub_99840();
  v4 = v40;
  (*(v27 + 8))(v29, v30);
  sub_99B90("Your ProductFamilyName will restart to install this Background Security Improvement.", 0x54uLL, v31[1] & 1);
  sub_99B00();
  v34 = *sub_98A68();
  _objc_retain(v34);
  sub_B928();
  v60[2] = 0;
  v60[3] = 0;
  v61 = *v31 & 0x100;
  v5 = sub_99B40();
  v51 = v60;
  v60[0] = v5;
  v60[1] = v6;
  v7 = (v4 + *(updated + 28));
  v38 = *v7;
  v39 = *(v7 + 1);

  v58 = v38;
  v59 = v39;
  sub_99900();
  v49 = v55;
  v50 = v56;
  v45 = v57;

  v47 = &v53;
  v54 = v40;
  v41 = sub_22FC(&qword_B4C38, &qword_9A950);
  v42 = sub_36ABC();
  v43 = sub_CE00();
  sub_CE78();
  sub_99810();

  sub_CF00(v51);
  return sub_36B64(v52);
}

uint64_t sub_2E210@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v15 = sub_396F4;
  v14 = sub_39D24;
  v29 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v6 = *(updated - 8);
  v9 = v6;
  v10 = *(v6 + 64);
  v7 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v12 = &v5 - v7;
  v24 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v8 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v23 = &v5 - v8;
  v29 = v1;
  sub_10D38(v1, v2);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_27ED8(v12, (v13 + v11));
  v25 = v1;
  sub_99920();
  v3 = v1 + *(updated + 52);
  v17 = *v3;
  v18 = *(v3 + 1);

  v27 = v17;
  v28 = v18;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();
  v20 = v26;

  sub_11928();
  sub_99840();
  return (*(v21 + 8))(v23, v24);
}

uint64_t sub_2E498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v40 = a1;
  v50 = sub_42958;
  v28 = sub_42D34;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v38 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v29 = *(updated - 8);
  v41 = v29;
  v42 = *(v29 + 64);
  v30 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v45 = v19 - v30;
  v3 = sub_22FC(&qword_B4E20, &unk_9AC90);
  v31 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v49 = v19 - v31;
  v57 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v32 = (v55[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v40);
  v33 = v19 - v32;
  v34 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v35 = v19 - v34;
  v36 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v60 = v19 - v36;
  v37 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v53 = v19 - v37;
  v67 = v19 - v37;
  v66 = v10;
  v39 = 1;
  sub_99B90("Cancel", 6uLL, 1);
  v52 = sub_99580();
  v46 = v11;
  v47 = v12;
  v48 = v13;
  sub_993D0();
  v14 = sub_993F0();
  (*(*(v14 - 8) + 56))(v49, 0, v39);
  sub_10D38(v40, v45);
  v43 = *(v41 + 80);
  v44 = (v43 + 16) & ~v43;
  v51 = swift_allocObject();
  sub_27ED8(v45, (v51 + v44));
  sub_99930();
  v54 = sub_11928();
  sub_71A0(v60, v57, v53);
  v58 = v55[1];
  v59 = v55 + 1;
  v58(v60, v57);
  v65 = v60;
  sub_99B90("Continue", 8uLL, 1);
  v23 = sub_99580();
  v19[1] = v15;
  v20 = v16;
  v21 = v17;
  sub_10D38(v40, v45);
  v19[0] = (v43 + 16) & ~v43;
  v22 = swift_allocObject();
  sub_27ED8(v45, (v22 + v19[0]));
  sub_99950();
  sub_71A0(v35, v57, v60);
  v58(v35, v57);
  v25 = v55[2];
  v24 = v55 + 2;
  v25(v35, v53, v57);
  v26 = v64;
  v64[0] = v35;
  v25(v33, v60, v57);
  v64[1] = v33;
  v63[0] = v57;
  v63[1] = v57;
  v61 = v54;
  v62 = v54;
  sub_84B8(v26, 2uLL, v63, v27);
  v58(v33, v57);
  v58(v35, v57);
  v58(v60, v57);
  return (v58)(v53, v57);
}

uint64_t sub_2EB38(void *a1)
{
  v43 = a1;
  v52 = 0;
  v60 = 0;
  v36 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v37 = *(updated - 8);
  v38 = v37;
  v39 = *(v37 + 64);
  __chkstk_darwin(updated - 8);
  v40 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v42 = &v16 - v41;
  v49 = sub_993B0();
  v44 = v49;
  v45 = *(v49 - 8);
  v48 = v45;
  v46 = v45;
  v3 = *(v45 + 64);
  v4 = __chkstk_darwin(v43);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  v60 = v4;
  v7 = sub_81788();
  (*(v48 + 16))(v6, v7, v49);
  v54 = sub_99390();
  v50 = v54;
  v53 = sub_99D60();
  v51 = v53;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v55 = sub_99F80();
  if (os_log_type_enabled(v54, v53))
  {
    v8 = v36;
    v27 = sub_99E40();
    v23 = v27;
    v24 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v25 = 0;
    v28 = sub_F444(0);
    v26 = v28;
    v29 = sub_F444(v25);
    v59 = v27;
    v58 = v28;
    v57 = v29;
    v30 = 0;
    v31 = &v59;
    sub_F498(0, &v59);
    sub_F498(v30, v31);
    v56 = v55;
    v32 = &v16;
    __chkstk_darwin(&v16);
    v33 = &v16 - 6;
    *(&v16 - 4) = v9;
    *(&v16 - 3) = &v58;
    *(&v16 - 2) = &v57;
    v34 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v35 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v50, v51, "User cancelled cellular download", v23, 2u);
      v21 = 0;
      sub_F5B0(v26);
      sub_F5B0(v29);
      sub_99E20();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v46 + 8))(v47, v44);
  v19 = 0;
  v10 = sub_99D00();
  (*(*(v10 - 8) + 56))(v42, 1);
  sub_10D38(v43, v40);
  sub_99CD0();
  v17 = sub_99CC0();
  v18 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v11 = swift_allocObject();
  v12 = v18;
  v13 = v11;
  v14 = v40;
  v20 = v13;
  *(v13 + 16) = v17;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_27ED8(v14, (v13 + v12));
  sub_2A6F4(v19, v19, v42, &unk_9BD08, v20, &type metadata for () + 8);
}

uint64_t sub_2F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[10] = v4;
  v4[11] = 0;
  v5 = sub_22FC(&qword_B4E08, &unk_9B630);
  v4[14] = v5;
  v12 = *(v5 - 8);
  v4[15] = v12;
  v6 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v7 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v4[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v13 = *(*(sub_22FC(&qword_B4E18, &qword_9AC88) - 8) + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[11] = a4;
  sub_99CD0();
  v4[22] = sub_99CC0();
  v9 = sub_99CA0();
  v10 = v4[10];

  return _swift_task_switch(sub_2F2F0, v9);
}

uint64_t sub_2F2F0()
{
  v36 = *(v0 + 104);
  *(v0 + 80) = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v36 + updated[8]);
  v33 = *v1;
  v34 = *(v1 + 1);

  *(v0 + 16) = v33;
  *(v0 + 24) = v34;
  *(v0 + 73) = 0;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 16);

  v2 = v36 + updated[5];
  v37 = *v2;
  v38 = *(v2 + 8);
  sub_2B30(*v2, v38 & 1);
  *(v0 + 64) = v37;
  *(v0 + 72) = v38 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v39 = *(v0 + 96);
  sub_2B78(v37, v38 & 1);
  v40 = sub_4E140();
  if (((v40 >> 62) & 3) == 3 && v40 == 0xC000000000000010)
  {
    v26 = *(v32 + 104);
    _objc_release(v39);
    v4 = (v26 + updated[11]);
    v27 = *v4;
    v28 = *(v4 + 1);

    *(v32 + 48) = v27;
    *(v32 + 56) = v28;
    *(v32 + 76) = 0;
    sub_998F0();
    sub_352C(v32 + 48);
  }

  else
  {
    v29 = *(v32 + 104);
    sub_109F4(v40);
    _objc_release(v39);
    v3 = (v29 + updated[13]);
    v30 = *v3;
    v31 = *(v3 + 1);

    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    *(v32 + 74) = 0;
    sub_998F0();
    sub_352C(v32 + 32);
  }

  v25 = *(v32 + 168);
  v22 = *(v32 + 144);
  v21 = *(v32 + 136);
  v24 = *(v32 + 112);
  v23 = *(v32 + 120);
  sub_23948((*(v32 + 104) + updated[10]), v22);
  sub_998E0();
  sub_23AB8(v22);
  if ((*(v23 + 48))(v25, 1, v24))
  {
    sub_237D4(*(v32 + 168));
  }

  else
  {
    v17 = *(v32 + 168);
    v19 = *(v32 + 128);
    v20 = *(v32 + 112);
    v18 = *(v32 + 120);
    (*(v18 + 16))(v19);
    sub_237D4(v17);
    *(v32 + 75) = 0;
    sub_99CB0();
    (*(v18 + 8))(v19, v20);
  }

  v12 = *(v32 + 176);
  v13 = *(v32 + 168);
  v14 = *(v32 + 160);
  v15 = *(v32 + 152);
  v5 = *(v32 + 144);
  v11 = *(v32 + 136);
  v16 = *(v32 + 128);
  v6 = *(v32 + 112);
  v10 = *(v32 + 104);
  (*(*(v32 + 120) + 56))();
  sub_23948((v10 + updated[10]), v5);
  sub_236A0(v14, v15);
  sub_998F0();
  sub_23AB8(v5);
  sub_237D4(v14);

  v7 = *(*(v32 + 80) + 8);
  v8 = *(v32 + 80);

  return v7();
}

uint64_t sub_2F7F4(void *a1)
{
  v43 = a1;
  v52 = 0;
  v60 = 0;
  v36 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v37 = *(updated - 8);
  v38 = v37;
  v39 = *(v37 + 64);
  __chkstk_darwin(updated - 8);
  v40 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v42 = &v16 - v41;
  v49 = sub_993B0();
  v44 = v49;
  v45 = *(v49 - 8);
  v48 = v45;
  v46 = v45;
  v3 = *(v45 + 64);
  v4 = __chkstk_darwin(v43);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  v60 = v4;
  v7 = sub_81788();
  (*(v48 + 16))(v6, v7, v49);
  v54 = sub_99390();
  v50 = v54;
  v53 = sub_99D60();
  v51 = v53;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v55 = sub_99F80();
  if (os_log_type_enabled(v54, v53))
  {
    v8 = v36;
    v27 = sub_99E40();
    v23 = v27;
    v24 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v25 = 0;
    v28 = sub_F444(0);
    v26 = v28;
    v29 = sub_F444(v25);
    v59 = v27;
    v58 = v28;
    v57 = v29;
    v30 = 0;
    v31 = &v59;
    sub_F498(0, &v59);
    sub_F498(v30, v31);
    v56 = v55;
    v32 = &v16;
    __chkstk_darwin(&v16);
    v33 = &v16 - 6;
    *(&v16 - 4) = v9;
    *(&v16 - 3) = &v58;
    *(&v16 - 2) = &v57;
    v34 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v35 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v50, v51, "User approved cellular download", v23, 2u);
      v21 = 0;
      sub_F5B0(v26);
      sub_F5B0(v29);
      sub_99E20();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v46 + 8))(v47, v44);
  v19 = 0;
  v10 = sub_99D00();
  (*(*(v10 - 8) + 56))(v42, 1);
  sub_10D38(v43, v40);
  sub_99CD0();
  v17 = sub_99CC0();
  v18 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v11 = swift_allocObject();
  v12 = v18;
  v13 = v11;
  v14 = v40;
  v20 = v13;
  *(v13 + 16) = v17;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_27ED8(v14, (v13 + v12));
  sub_2A6F4(v19, v19, v42, &unk_9BCF8, v20, &type metadata for () + 8);
}

uint64_t sub_2FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[4] = v4;
  v4[5] = 0;
  v5 = sub_22FC(&qword_B4E08, &unk_9B630);
  v4[7] = v5;
  v12 = *(v5 - 8);
  v4[8] = v12;
  v6 = *(v12 + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v4[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = *(*(sub_22FC(&qword_B4E18, &qword_9AC88) - 8) + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[5] = a4;
  sub_99CD0();
  v4[15] = sub_99CC0();
  v9 = sub_99CA0();
  v10 = v4[4];

  return _swift_task_switch(sub_2FFAC, v9);
}

uint64_t sub_2FFAC()
{
  v27 = *(v0 + 112);
  v24 = *(v0 + 88);
  v23 = *(v0 + 80);
  v25 = *(v0 + 64);
  v26 = *(v0 + 56);
  v22 = *(v0 + 48);
  *(v0 + 32) = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v22 + *(updated + 32));
  v19 = *v1;
  v20 = *(v1 + 1);

  *(v0 + 16) = v19;
  *(v0 + 24) = v20;
  *(v0 + 128) = 0;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 16);

  sub_23948((v22 + *(updated + 40)), v24);
  sub_998E0();
  sub_23AB8(v24);
  if ((*(v25 + 48))(v27, 1, v26))
  {
    sub_237D4(*(v18 + 112));
  }

  else
  {
    v14 = *(v18 + 112);
    v16 = *(v18 + 72);
    v17 = *(v18 + 56);
    v15 = *(v18 + 64);
    (*(v15 + 16))(v16);
    sub_237D4(v14);
    *(v18 + 129) = 1;
    sub_99CB0();
    (*(v15 + 8))(v16, v17);
  }

  v9 = *(v18 + 120);
  v10 = *(v18 + 112);
  v11 = *(v18 + 104);
  v12 = *(v18 + 96);
  v2 = *(v18 + 88);
  v8 = *(v18 + 80);
  v13 = *(v18 + 72);
  v3 = *(v18 + 56);
  v7 = *(v18 + 48);
  (*(*(v18 + 64) + 56))();
  sub_23948((v7 + *(updated + 40)), v2);
  sub_236A0(v11, v12);
  sub_998F0();
  sub_23AB8(v2);
  sub_237D4(v11);

  v4 = *(*(v18 + 32) + 8);
  v5 = *(v18 + 32);

  return v4();
}

uint64_t sub_302D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = 0u;
  v55 = 0u;
  v42 = 0u;
  v43 = 0u;
  v68 = a1;
  v2 = a1 + *(type metadata accessor for UpdateAvailableView() + 20);
  v29 = *v2;
  v30 = *(v2 + 8);
  sub_2B30(*v2, v30 & 1);
  v62[2] = v29;
  v63 = v30 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  sub_2B78(v29, v30 & 1);
  v31 = sub_4CE5C();
  _objc_release(v62[1]);
  v62[0] = v31;
  sub_127E0(v62);
  if (v31)
  {
    HIBYTE(v15) = 1;
    sub_99B90("If you download the security response over your cellular network, additional usage fees may apply.", 0x62uLL, 1);
    sub_99580();
    v12 = *sub_98A68();
    _objc_retain(v12);
    v51 = 0;
    v52 = 0;
    v53 = v15 & 0x100;
    v47 = sub_996F0();
    v48 = v3;
    v49 = v4;
    v50 = v5;
    v44[0] = v47;
    v44[1] = v3;
    v45 = v4 & 1;
    v46 = v5;
    sub_71A0(v44, &type metadata for Text, &v54);
    sub_10440(v44);
    v13 = v54;
    v14 = v55;
    v16 = *(&v55 + 1);
    sub_F84C(v54, *(&v54 + 1), v55 & 1);

    v39 = v13;
    v40 = v14 & 1;
    v41 = v16;
    sub_8408(&v39, &type metadata for Text, &v42);
    sub_10440(&v39);
    v18 = v42;
    v17 = v43;
    v19 = *(&v43 + 1);
    sub_F84C(v42, *(&v42 + 1), v43 & 1);

    v32 = v18;
    v33 = v17 & 1;
    v34 = v19;
    sub_846C(&v32, &type metadata for Text, &v35);
    sub_10510(&v32);
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    sub_103E4(v35, v36, v37, v38);
    v64 = v20;
    v65 = v21;
    v66 = v22;
    v67 = v23;
    sub_10440(&v42);
    sub_10440(&v54);
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
  }

  else
  {
    memset(v57, 0, sizeof(v57));
    sub_846C(v57, &type metadata for Text, &v58);
    v8 = v58;
    v9 = v59;
    v10 = v60;
    v11 = v61;
    sub_103E4(v58, v59, v60, v61);
    v64 = v8;
    v65 = v9;
    v66 = v10;
    v67 = v11;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
  }

  v56[0] = v24;
  v56[1] = v25;
  v56[2] = v26;
  v56[3] = v27;
  v7 = sub_22FC(&qword_B4CB0, &qword_9A998);
  sub_DCAC();
  sub_8408(v56, v7, a2);
  sub_10510(v56);
  return sub_10510(&v64);
}

uint64_t sub_30774(uint64_t a1)
{
  v33 = *(sub_22FC(&qword_B5438, &qword_9B708) + 44);
  v34 = *(sub_22FC(&qword_B5440, &qword_9B710) + 44);
  v36 = *(sub_22FC(&qword_B5448, &qword_9B718) + 44);
  v37 = a1 + v33 + v34 + v36;
  sub_88E0(*v37, *(v37 + 8), *(v37 + 16) & 1);
  v1 = *(v37 + 24);

  v38 = *(sub_22FC(&qword_B5450, &unk_9B720) + 48);
  v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  if (!(*(*(v2 - 8) + 48))(v37 + v38, 1))
  {
    v3 = sub_99350();
    (*(*(v3 - 8) + 8))(a1 + v33 + v34 + v36 + v38);
  }

  v32 = a1 + v33 + v34 + *(sub_22FC(&qword_B5458, &qword_9B730) + 48);
  sub_22FC(&qword_B5460, &qword_9B738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22FC(&qword_B54D0, &qword_9B7A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_999D0();
      (*(*(v18 - 8) + 8))(v32);
      v23 = v32 + *(sub_22FC(&qword_B54D8, &qword_9B7B0) + 48);
      v19 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v19 - 8) + 8))(v23);
      v24 = (v23 + *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36));
      v20 = *v24;

      v21 = v24[2];
    }
  }

  else
  {
    sub_22FC(&qword_B5468, &qword_9B740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FC(&qword_B54A8, &qword_9B780);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_999D0();
        (*(*(v16 - 8) + 8))(v32);
        v25 = v32 + *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
        v17 = sub_22FC(&qword_B54C8, &qword_9B7A0);
        (*(*(v17 - 8) + 8))(v25);
      }

      else
      {
        v12 = sub_999D0();
        (*(*(v12 - 8) + 8))(v32);
        v26 = v32 + *(sub_22FC(&qword_B54B0, &qword_9B788) + 48);
        v13 = sub_22FC(&qword_B4E28, &qword_9AD50);
        (*(*(v13 - 8) + 8))(v26);
        v27 = (v26 + *(sub_22FC(&qword_B54B8, &qword_9B790) + 36));
        v14 = *v27;

        v15 = v27[2];
      }
    }

    else
    {
      sub_22FC(&qword_B5470, &qword_9B748);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = sub_999D0();
        (*(*(v8 - 8) + 8))(v32);
        v28 = v32 + *(sub_22FC(&qword_B5490, &qword_9B768) + 48);
        v9 = sub_22FC(&qword_B5498, &qword_9B770);
        (*(*(v9 - 8) + 8))(v28);
        v29 = (v28 + *(sub_22FC(&qword_B54A0, &qword_9B778) + 36));
        v10 = *v29;

        v11 = v29[2];
      }

      else
      {
        v4 = sub_999D0();
        (*(*(v4 - 8) + 8))(v32);
        v30 = v32 + *(sub_22FC(&qword_B5478, &qword_9B750) + 48);
        v5 = sub_22FC(&qword_B5480, &qword_9B758);
        (*(*(v5 - 8) + 8))(v30);
        v31 = (v30 + *(sub_22FC(&qword_B5488, &qword_9B760) + 36));
        v6 = *v31;

        v7 = v31[2];
      }
    }
  }

  return a1;
}

uint64_t sub_30E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v44 = a1;
  v51 = sub_41B58;
  v26 = sub_41F34;
  v73 = 0;
  v72 = 0;
  v69 = 0;
  v2 = sub_22FC(&qword_B4E20, &unk_9AC90);
  v27 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v28 = v17 - v27;
  v41 = 0;
  v29 = *(type metadata accessor for UpdateAvailableView() - 8);
  v45 = v29;
  v46 = *(v29 + 64);
  v30 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v50 = v17 - v30;
  v31 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v43 = v17 - v31;
  v3 = sub_99B10();
  v32 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v40 = v17 - v32;
  v59 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v33 = (v57[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v44);
  v34 = v17 - v33;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v36 = v17 - v35;
  v37 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v62 = v17 - v37;
  v38 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v55 = v17 - v38;
  v73 = v17 - v38;
  v72 = v10;
  v47 = 7;
  *&v39[1] = 1;
  sub_99B90("Turn On", 7uLL, 1);
  sub_99B00();
  v42 = *sub_98A68();
  _objc_retain(v42);
  sub_B928();
  v70[2] = 0;
  v70[3] = 0;
  v71 = *v39 & 0x100;
  v11 = sub_99B40();
  v53 = v70;
  v70[0] = v11;
  v70[1] = v12;
  sub_10D38(v44, v50);
  v48 = *(v45 + 80);
  v49 = (v48 + 16) & ~v48;
  v52 = swift_allocObject();
  sub_27ED8(v50, (v52 + v49));
  v54 = sub_CE00();
  sub_99960();
  v56 = sub_11928();
  sub_71A0(v62, v59, v55);
  v60 = v57[1];
  v61 = v57 + 1;
  v60(v62, v59);
  v69 = v62;
  *&v18[1] = 1;
  sub_99B90("Cancel", 6uLL, 1);
  sub_99B00();
  v17[0] = *sub_98A68();
  _objc_retain(v17[0]);
  sub_B928();
  v17[1] = 0;
  v67[2] = 0;
  v67[3] = 0;
  v68 = *v18 & 0x100;
  v13 = sub_99B40();
  v21 = v67;
  v67[0] = v13;
  v67[1] = v14;
  sub_993D0();
  v15 = sub_993F0();
  (*(*(v15 - 8) + 56))(v28, 0, *&v18[1]);
  sub_10D38(v44, v50);
  v19 = (v48 + 16) & ~v48;
  v20 = swift_allocObject();
  sub_27ED8(v50, (v20 + v19));
  sub_99940();
  sub_71A0(v36, v59, v62);
  v60(v36, v59);
  v23 = v57[2];
  v22 = v57 + 2;
  v23(v36, v55, v59);
  v24 = v66;
  v66[0] = v36;
  v23(v34, v62, v59);
  v66[1] = v34;
  v65[0] = v59;
  v65[1] = v59;
  v63 = v56;
  v64 = v56;
  sub_84B8(v24, 2uLL, v65, v25);
  v60(v34, v59);
  v60(v36, v59);
  v60(v62, v59);
  return (v60)(v55, v59);
}

uint64_t sub_31710(uint64_t a1)
{
  v29 = a1;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (a1 + *(updated + 24));
  v14 = *v1;
  v13 = *(v1 + 8);

  v27[3] = v14;
  v28 = v13 & 1;
  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();

  (*(*v27[2] + 248))(1);

  v2 = (a1 + *(updated + 60));
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  sub_25040(*v2);

  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998E0();
  v20 = v23;
  if (v22)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v22;
    *(v3 + 24) = v20;
    v11 = sub_425D4;
    v12 = v3;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  sub_25074(v17);

  v27[0] = v11;
  v27[1] = v12;
  if (v11)
  {
    v10 = v27[0];

    v4 = sub_42554(v27);
    v10(v4);
  }

  else
  {
    sub_42554(v27);
  }

  v5 = *(updated + 60);
  v8 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 16);
  sub_25040(v8);

  sub_25040(v8);

  v21[0] = v8;
  v21[1] = v7;
  v21[2] = v9;
  sub_24E34(0);
  sub_998F0();
  sub_252B8(v21);
  sub_25074(v8);

  return sub_8F94(0);
}

uint64_t sub_31A50(void *a1)
{
  v14 = a1;
  v18 = &protocol witness table for MainActor;
  v23 = &unk_9BCE8;
  v25 = 0;
  v21 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v11 = *(updated - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v20 = &v10 - v12;
  v13 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_99D00();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_10D38(v14, v20);
  sub_99CD0();
  v17 = sub_99CC0();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_27ED8(v8, (v7 + v6));
  sub_2A6F4(v21, v21, v22, v23, v24, &type metadata for () + 8);
}

uint64_t sub_31C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[17] = v4;
  v4[18] = 0;
  v4[18] = a4;
  sub_99CD0();
  v4[22] = sub_99CC0();
  v5 = sub_99CA0();
  v6 = v4[17];

  return _swift_task_switch(sub_31D30, v5);
}

uint64_t sub_31D30()
{
  v29 = *(v0 + 168);
  *(v0 + 136) = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = v29 + updated[5];
  v31 = *v1;
  v32 = *(v1 + 8);
  sub_2B30(*v1, v32 & 1);
  *(v0 + 104) = v31;
  *(v0 + 112) = v32 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v33 = *(v0 + 152);
  sub_2B78(v31, v32 & 1);
  v34 = sub_4E140();
  if (((v34 >> 62) & 3) == 3 && v34 == 0xC000000000000010)
  {
    v20 = *(v28 + 168);
    _objc_release(v33);
    v3 = (v20 + updated[11]);
    v21 = *v3;
    v22 = *(v3 + 1);

    *(v28 + 88) = v21;
    *(v28 + 96) = v22;
    *(v28 + 115) = 0;
    sub_22FC(&qword_B4B60, &qword_9A8D0);
    sub_998F0();
    sub_352C(v28 + 88);
  }

  else
  {
    v23 = *(v28 + 168);
    sub_109F4(v34);
    _objc_release(v33);
    v2 = v23 + updated[5];
    v24 = *v2;
    v25 = *(v2 + 8);
    sub_2B30(*v2, v25 & 1);
    *(v28 + 120) = v24;
    *(v28 + 128) = v25 & 1;
    sub_99400();
    v26 = *(v28 + 160);
    sub_2B78(v24, v25 & 1);
    v27 = sub_4E140();
    if (((v27 >> 62) & 3) == 3 && v27 == 0xC000000000000028)
    {
      v14 = *(v28 + 168);
      _objc_release(v26);
      v5 = (v14 + updated[12]);
      v15 = *v5;
      v16 = *(v5 + 1);

      *(v28 + 72) = v15;
      *(v28 + 80) = v16;
      *(v28 + 114) = 0;
      sub_22FC(&qword_B4B60, &qword_9A8D0);
      sub_998F0();
      sub_352C(v28 + 72);
    }

    else
    {
      v17 = *(v28 + 168);
      sub_109F4(v27);
      _objc_release(v26);
      v4 = (v17 + updated[13]);
      v18 = *v4;
      v19 = *(v4 + 1);

      *(v28 + 40) = v18;
      *(v28 + 48) = v19;
      *(v28 + 113) = 0;
      sub_22FC(&qword_B4B60, &qword_9A8D0);
      sub_998F0();
      sub_352C(v28 + 40);
    }
  }

  v13 = *(v28 + 176);
  v6 = (*(v28 + 168) + updated[15]);
  v11 = *v6;
  v10 = v6[1];
  v12 = v6[2];
  sub_25040(*v6);

  sub_25040(v11);

  *(v28 + 16) = v11;
  *(v28 + 24) = v10;
  *(v28 + 32) = v12;
  sub_24E34(0);
  *(v28 + 56) = 0;
  *(v28 + 64) = 0;
  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998F0();
  sub_252B8((v28 + 16));
  sub_25074(v11);

  sub_8F94(0);

  v7 = *(*(v28 + 136) + 8);
  v8 = *(v28 + 136);

  return v7();
}

uint64_t sub_3225C@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_99B90("Install and turn on background security improvements?", 0x35uLL, 1);
  sub_99580();
  v5 = *sub_98A68();
  _objc_retain(v5);
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_996F0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_71A0(v14, &type metadata for Text, &v24);
  sub_10440(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_F84C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_8408(&v11, &type metadata for Text, a1);
  sub_10440(&v11);
  return sub_10440(&v24);
}

uint64_t sub_32430@<X0>(uint64_t a1@<X8>)
{
  v13 = v85;
  v56 = a1;
  v45 = &opaque type descriptor for <<opaque return type of View.progressViewStyle<A>(_:)>>;
  v86 = 0;
  v61 = v85;
  memset(v85, 0, 32);
  v22 = 0;
  v42 = sub_99600();
  v35 = *(v42 - 8);
  v36 = v42 - 8;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v37 = &v13 - v14;
  v41 = sub_22FC(&qword_B4F10, &qword_9ADC8);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v15 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v13 - v15;
  v51 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v16 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v50 = &v13 - v16;
  v53 = sub_22FC(&qword_B4F08, &qword_9ADC0);
  v17 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v58 = &v13 - v17;
  v18 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v17);
  v60 = &v13 - v18;
  v86 = &v13 - v18;
  HIDWORD(v32) = 1;
  sub_99B90("Installing", 0xAuLL, 1);
  v24 = sub_99580();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v23 = *sub_98A68();
  _objc_retain(v23);
  v82 = 0;
  v83 = 0;
  v84 = *(&v32 + 3) & 0x100;
  v78 = sub_996F0();
  v79 = v5;
  v80 = v6;
  v81 = v7;
  v26 = v78;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v25 = sub_998A0();
  v74 = v26;
  v75 = v27;
  v76 = v28 & 1 & BYTE4(v32);
  v77 = v29;
  v70 = sub_996D0();
  v71 = v8;
  v72 = v9;
  v73 = v10;
  v30 = v70;
  v31 = v8;
  LODWORD(v32) = v9;
  v33 = v10;

  sub_88E0(v26, v27, v28 & 1);

  v34 = v67;
  v67[0] = v30;
  v67[1] = v31;
  v68 = v32 & 1 & BYTE4(v32);
  v69 = v33;
  v52 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  sub_71A0(v67, &type metadata for Text, v61);
  sub_10440(v34);
  sub_99430();
  sub_998A0();
  sub_995F0();
  v43 = sub_18634();
  v44 = sub_186BC();
  sub_99750();
  (*(v35 + 8))(v37, v42);
  (*(v38 + 8))(v40, v41);
  v66[2] = v41;
  v66[3] = v42;
  v66[4] = v43;
  v66[5] = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_18954();
  v47 = v11;
  sub_99790();
  (*(v48 + 8))(v50, v51);
  v55 = sub_18518();
  sub_71A0(v58, v53, v60);
  sub_416CC(v58);
  v59 = v65;
  sub_10488(v61, v65);
  v57 = v66;
  v66[0] = v59;
  sub_41734(v60, v58);
  v66[1] = v58;
  v64[0] = v52;
  v64[1] = v53;
  v62 = v54;
  v63 = v55;
  sub_84B8(v57, 2uLL, v64, v56);
  sub_416CC(v58);
  sub_10440(v59);
  sub_416CC(v60);
  return sub_10440(v61);
}

unint64_t sub_32A40()
{
  v2 = qword_B54F0;
  if (!qword_B54F0)
  {
    sub_87B4(&qword_B54E8, &qword_9B7C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B54F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_32AC8()
{
  v2 = qword_B54F8;
  if (!qword_B54F8)
  {
    sub_87B4(&qword_B5480, &qword_9B758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B54F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_32B54@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v6 = 0;
  v5 = sub_32DE0;
  v14 = 0;
  v10 = sub_22FC(&qword_B5500, &qword_9B7C8);
  v3 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v13 = &v3 - v4;
  v14 = &v3 - v4;
  v7 = sub_22FC(&qword_B54E8, &qword_9B7C0);
  v8 = sub_32A40();
  sub_143F4();
  sub_99970();
  v11 = sub_32CD0();
  sub_71A0(v12, v10, v13);
  sub_41460(v12);
  sub_41534(v13, v12);
  sub_8408(v12, v10, v9);
  sub_41460(v12);
  return sub_41460(v13);
}

unint64_t sub_32CD0()
{
  v2 = qword_B5508;
  if (!qword_B5508)
  {
    sub_87B4(&qword_B5500, &qword_9B7C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_32D58()
{
  v2 = qword_B5510;
  if (!qword_B5510)
  {
    sub_87B4(&qword_B5498, &qword_9B770);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_32DE0@<X0>(uint64_t a1@<X8>)
{
  v13 = v85;
  v56 = a1;
  v45 = &opaque type descriptor for <<opaque return type of View.progressViewStyle<A>(_:)>>;
  v86 = 0;
  v61 = v85;
  memset(v85, 0, 32);
  v22 = 0;
  v42 = sub_99600();
  v35 = *(v42 - 8);
  v36 = v42 - 8;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v37 = &v13 - v14;
  v41 = sub_22FC(&qword_B4F10, &qword_9ADC8);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v15 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v13 - v15;
  v51 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v16 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v50 = &v13 - v16;
  v53 = sub_22FC(&qword_B4F08, &qword_9ADC0);
  v17 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v58 = &v13 - v17;
  v18 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v17);
  v60 = &v13 - v18;
  v86 = &v13 - v18;
  HIDWORD(v32) = 1;
  sub_99B90("Downloading", 0xBuLL, 1);
  v24 = sub_99580();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v23 = *sub_98A68();
  _objc_retain(v23);
  v82 = 0;
  v83 = 0;
  v84 = *(&v32 + 3) & 0x100;
  v78 = sub_996F0();
  v79 = v5;
  v80 = v6;
  v81 = v7;
  v26 = v78;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v25 = sub_998A0();
  v74 = v26;
  v75 = v27;
  v76 = v28 & 1 & BYTE4(v32);
  v77 = v29;
  v70 = sub_996D0();
  v71 = v8;
  v72 = v9;
  v73 = v10;
  v30 = v70;
  v31 = v8;
  LODWORD(v32) = v9;
  v33 = v10;

  sub_88E0(v26, v27, v28 & 1);

  v34 = v67;
  v67[0] = v30;
  v67[1] = v31;
  v68 = v32 & 1 & BYTE4(v32);
  v69 = v33;
  v52 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  sub_71A0(v67, &type metadata for Text, v61);
  sub_10440(v34);
  sub_99430();
  sub_998A0();
  sub_995F0();
  v43 = sub_18634();
  v44 = sub_186BC();
  sub_99750();
  (*(v35 + 8))(v37, v42);
  (*(v38 + 8))(v40, v41);
  v66[2] = v41;
  v66[3] = v42;
  v66[4] = v43;
  v66[5] = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_18954();
  v47 = v11;
  sub_99790();
  (*(v48 + 8))(v50, v51);
  v55 = sub_18518();
  sub_71A0(v58, v53, v60);
  sub_416CC(v58);
  v59 = v65;
  sub_10488(v61, v65);
  v57 = v66;
  v66[0] = v59;
  sub_41734(v60, v58);
  v66[1] = v58;
  v64[0] = v52;
  v64[1] = v53;
  v62 = v54;
  v63 = v55;
  sub_84B8(v57, 2uLL, v64, v56);
  sub_416CC(v58);
  sub_10440(v59);
  sub_416CC(v60);
  return sub_10440(v61);
}

uint64_t sub_333F0(void *a1)
{
  v53 = a1;
  v68 = 0;
  v88 = 0;
  v46 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v47 = updated;
  v48 = *(updated - 8);
  v49 = v48;
  v50 = *(v48 + 64);
  __chkstk_darwin(0);
  v51 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_993B0();
  v54 = v65;
  v55 = *(v65 - 8);
  v64 = v55;
  v56 = v55;
  v57 = *(v55 + 64);
  v2 = __chkstk_darwin(v53);
  v61 = &v17 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v61;
  v88 = v2;
  v4 = (v2 + *(v3 + 44));
  v59 = *v4;
  v63 = *(v4 + 1);

  v86 = v59;
  v87 = v63;
  v85 = 1;
  v60 = sub_22FC(&qword_B4B60, &qword_9A8D0);
  v62 = &v86;
  sub_998F0();
  v5 = v61;
  sub_352C(v62);

  v6 = sub_81788();
  (*(v64 + 16))(v5, v6, v65);
  v70 = sub_99390();
  v66 = v70;
  v69 = sub_99D60();
  v67 = v69;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v71 = sub_99F80();
  if (os_log_type_enabled(v70, v69))
  {
    v7 = v46;
    v37 = sub_99E40();
    v33 = v37;
    v34 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v35 = 0;
    v38 = sub_F444(0);
    v36 = v38;
    v39 = sub_F444(v35);
    v75 = v37;
    v74 = v38;
    v73 = v39;
    v40 = 0;
    v41 = &v75;
    sub_F498(0, &v75);
    sub_F498(v40, v41);
    v72 = v71;
    v42 = &v17;
    __chkstk_darwin(&v17);
    v43 = &v17 - 6;
    *(&v17 - 4) = v8;
    *(&v17 - 3) = &v74;
    *(&v17 - 2) = &v73;
    v44 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v45 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v66, v67, "User Action: Clicked 'Install' Action in UpdateAvailableView", v33, 2u);
      v31 = 0;
      sub_F5B0(v36);
      sub_F5B0(v39);
      sub_99E20();

      v32 = v45;
    }
  }

  else
  {

    v32 = v46;
  }

  (*(v56 + 8))(v58, v54);
  v9 = v53 + v47[6];
  v28 = *v9;
  v27 = v9[8];

  v83 = v28;
  v84 = v27;
  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();
  v10 = v82;
  v29 = v82;

  v30 = (*(*v10 + 184))(v11);

  if (v30)
  {
    return sub_340A8();
  }

  sub_10D38(v53, v51);
  v17 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v23 = swift_allocObject();
  sub_27ED8(v51, (v23 + v17));
  v13 = (v53 + v47[15]);
  v20 = *v13;
  v19 = v13[1];
  v21 = v13[2];
  sub_25040(v20);

  sub_25040(v20);

  v81[0] = v20;
  v81[1] = v19;
  v81[2] = v21;
  v22 = sub_41380;
  sub_24E34(sub_41380);
  v14 = swift_allocObject();
  v15 = v23;
  *(v14 + 16) = v22;
  *(v14 + 24) = v15;
  v79 = sub_41424;
  v80 = v14;
  sub_22FC(&qword_B5318, &qword_9B648);
  v18 = v81;
  sub_998F0();
  sub_252B8(v18);
  sub_25074(v20);

  sub_8F94(v22);
  v16 = v53 + v47[14];
  v24 = *v16;
  v26 = *(v16 + 1);

  v77 = v24;
  v78 = v26;
  v76 = 1;
  v25 = &v77;
  sub_998F0();
  sub_352C(v25);
}

uint64_t sub_33CCC()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_34044()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_333F0(v2);
}

uint64_t sub_340A8()
{
  v14 = &unk_9B7E8;
  v29 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v6 = *(updated - 8);
  v10 = v6;
  v11 = *(v6 + 64);
  v7 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v6 - v7;
  v29 = v0;
  v1 = v0 + *(__chkstk_darwin(updated) + 20);
  v8 = *v1;
  v9 = *(v1 + 8);
  v21 = 1;
  sub_2B30(v8, v9 & 1);
  v27 = v8;
  v28 = v9 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v17 = v26;
  sub_2B78(v8, v9 & 1);
  sub_10D38(v15, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_27ED8(v13, (v16 + v12));
  sub_501D4(v14, v16);
  v2 = v15;

  _objc_release(v17);
  v3 = v2 + *(updated + 24);
  v20 = *v3;
  v19 = v3[8];

  v24 = v20;
  v25 = v19 & 1 & v21;
  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();
  v4 = v23;
  v22 = v23;

  (*(*v4 + 248))(v21 & 1);
}

uint64_t sub_34350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = 0u;
  v42 = 0u;
  v43 = a1;
  if (*(a1 + *(type metadata accessor for UpdateAvailableView() + 68)))
  {
    sub_99B90("Reinstall", 9uLL, 1);
  }

  else
  {
    sub_99B90("Install", 7uLL, 1);
  }

  sub_99580();
  v9 = *sub_98A68();
  _objc_retain(v9);
  v38 = 0;
  v39 = 0;
  v40 = 256;
  v34 = sub_996F0();
  v35 = v2;
  v36 = v3;
  v37 = v4;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_99880();
  v30 = v34;
  v31 = v10;
  v32 = v11 & 1;
  v33 = v12;
  v26 = sub_996D0();
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v13 = v5;
  v14 = v6;
  v15 = v7;

  sub_88E0(v34, v10, v11 & 1);

  v23[0] = v26;
  v23[1] = v13;
  v24 = v14 & 1;
  v25 = v15;
  sub_71A0(v23, &type metadata for Text, &v41);
  sub_10440(v23);
  v16 = v41;
  v17 = v42;
  v18 = *(&v42 + 1);
  sub_F84C(v41, *(&v41 + 1), v42 & 1);

  v20 = v16;
  v21 = v17 & 1;
  v22 = v18;
  sub_8408(&v20, &type metadata for Text, a2);
  sub_10440(&v20);
  return sub_10440(&v41);
}

unint64_t sub_3467C()
{
  v2 = qword_B5520;
  if (!qword_B5520)
  {
    sub_87B4(&qword_B5518, &unk_9B7D0);
    sub_11928();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_34720(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4E28, &qword_9AD50);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_34788(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  v2 = v1[2];
  return _swift_task_switch(sub_347C4, 0);
}

uint64_t sub_347C4()
{
  v5 = v0[4];
  v0[2] = v0;
  v7 = sub_99B90("performInstallAction()", 0x16uLL, 1);
  v8 = v1;
  v0[5] = v1;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *(v9 + 16) = v5;
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v6 + 56) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_348F4;

  return withCheckedContinuation<A>(isolation:function:_:)(v6 + 64, 0, 0, v7, v8, sub_3EC08, v9, &type metadata for Bool);
}

uint64_t sub_348F4()
{
  v6 = *v0;
  v1 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  *(v6 + 16) = *v0;

  v2 = *(v6 + 16);

  return _swift_task_switch(sub_34A4C, 0);
}

uint64_t sub_34A4C()
{
  *(v0 + 16) = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);
  return v2(v1 & 1);
}

uint64_t sub_34A94(uint64_t a1, void *a2)
{
  v19 = a1;
  v18 = a2;
  v25 = &protocol witness table for MainActor;
  v35 = &unk_9BCA0;
  v38 = 0;
  v37 = 0;
  v32 = sub_22FC(&qword_B4E08, &unk_9B630);
  v28 = *(v32 - 8);
  v29 = v32 - 8;
  v22 = v28;
  v23 = *(v28 + 64);
  v14 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v13 - v14;
  v33 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v15 = *(updated - 8);
  v20 = v15;
  v21 = *(v15 + 64);
  v16 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v27 = &v13 - v16;
  v17 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v34 = &v13 - v17;
  v38 = v3;
  v37 = v4;
  v5 = sub_99D00();
  (*(*(v5 - 8) + 56))(v34, 1);
  sub_10D38(v18, v27);
  (*(v28 + 16))(v31, v19, v32);
  sub_99CD0();
  v24 = sub_99CC0();
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v30 = (v26 + v21 + *(v22 + 80)) & ~*(v22 + 80);
  v6 = swift_allocObject();
  v7 = v25;
  v8 = v26;
  v9 = v6;
  v10 = v27;
  v36 = v9;
  *(v9 + 16) = v24;
  *(v9 + 24) = v7;
  v11 = sub_27ED8(v10, (v9 + v8));
  (*(v28 + 32))(v36 + v30, v31, v32, v11);
  sub_2A6F4(v33, v33, v34, v35, v36, &type metadata for () + 8);
}

uint64_t sub_34DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v5[7] = a4;
  v5[4] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v6 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(*(sub_22FC(&qword_B4E18, &qword_9AC88) - 8) + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  sub_99CD0();
  v5[13] = sub_99CC0();
  v8 = sub_99CA0();
  v9 = v5[4];

  return _swift_task_switch(sub_34F74, v8);
}

uint64_t sub_34F74()
{
  v13 = *(v0 + 104);
  v14 = *(v0 + 96);
  v15 = *(v0 + 88);
  v16 = *(v0 + 80);
  v12 = *(v0 + 72);
  v7 = *(v0 + 64);
  v11 = *(v0 + 56);
  *(v0 + 32) = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v11 + *(updated + 32));
  v5 = *v1;
  v6 = *(v1 + 1);

  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 112) = 1;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 16);

  v9 = sub_22FC(&qword_B4E08, &unk_9B630);
  v8 = *(v9 - 8);
  (*(v8 + 16))(v14, v7);
  (*(v8 + 56))(v14, 0, 1, v9);
  sub_23948((v11 + *(updated + 40)), v16);
  sub_236A0(v14, v15);
  sub_998F0();
  sub_23AB8(v16);
  sub_237D4(v14);

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

void sub_351B0(void *a1)
{
  v52 = a1;
  v67 = 0;
  v87 = 0;
  v45 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v46 = updated;
  v47 = *(updated - 8);
  v48 = v47;
  v49 = *(v47 + 64);
  __chkstk_darwin(0);
  v50 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_993B0();
  v53 = v64;
  v54 = *(v64 - 8);
  v63 = v54;
  v55 = v54;
  v56 = *(v54 + 64);
  v2 = __chkstk_darwin(v52);
  v60 = &v16 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v60;
  v87 = v2;
  v4 = (v2 + *(v3 + 48));
  v58 = *v4;
  v62 = *(v4 + 1);

  v85 = v58;
  v86 = v62;
  v84 = 1;
  v59 = sub_22FC(&qword_B4B60, &qword_9A8D0);
  v61 = &v85;
  sub_998F0();
  v5 = v60;
  sub_352C(v61);

  v6 = sub_81788();
  (*(v63 + 16))(v5, v6, v64);
  v69 = sub_99390();
  v65 = v69;
  v68 = sub_99D60();
  v66 = v68;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v70 = sub_99F80();
  if (os_log_type_enabled(v69, v68))
  {
    v7 = v45;
    v36 = sub_99E40();
    v32 = v36;
    v33 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v34 = 0;
    v37 = sub_F444(0);
    v35 = v37;
    v38 = sub_F444(v34);
    v74 = v36;
    v73 = v37;
    v72 = v38;
    v39 = 0;
    v40 = &v74;
    sub_F498(0, &v74);
    sub_F498(v39, v40);
    v71 = v70;
    v41 = &v16;
    __chkstk_darwin(&v16);
    v42 = &v16 - 6;
    *(&v16 - 4) = v8;
    *(&v16 - 3) = &v73;
    *(&v16 - 2) = &v72;
    v43 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v44 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v65, v66, "User Action: Clicked 'Restart & Install' Action in UpdateAvailableView", v32, 2u);
      v30 = 0;
      sub_F5B0(v35);
      sub_F5B0(v38);
      sub_99E20();

      v31 = v44;
    }
  }

  else
  {

    v31 = v45;
  }

  (*(v55 + 8))(v57, v53);
  v9 = v52 + v46[6];
  v27 = *v9;
  v26 = v9[8];

  v82 = v27;
  v83 = v26;
  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();
  v10 = v81;
  v28 = v81;

  v29 = (*(*v10 + 184))(v11);

  if (v29)
  {
    sub_35E68();
  }

  else
  {
    sub_10D38(v52, v50);
    v16 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v22 = swift_allocObject();
    sub_27ED8(v50, (v22 + v16));
    v12 = (v52 + v46[15]);
    v19 = *v12;
    v18 = v12[1];
    v20 = v12[2];
    sub_25040(v19);

    sub_25040(v19);

    v80[0] = v19;
    v80[1] = v18;
    v80[2] = v20;
    v21 = sub_40F28;
    sub_24E34(sub_40F28);
    v13 = swift_allocObject();
    v14 = v22;
    *(v13 + 16) = v21;
    *(v13 + 24) = v14;
    v78 = sub_40FCC;
    v79 = v13;
    sub_22FC(&qword_B5318, &qword_9B648);
    v17 = v80;
    sub_998F0();
    sub_252B8(v17);
    sub_25074(v19);

    sub_8F94(v21);
    v15 = v52 + v46[14];
    v23 = *v15;
    v25 = *(v15 + 1);

    v76 = v23;
    v77 = v25;
    v75 = 1;
    v24 = &v76;
    sub_998F0();
    sub_352C(v24);
  }
}

uint64_t sub_35A8C()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

void sub_35E04()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_351B0(v2);
}

void sub_35E68()
{
  v24 = sub_3A640;
  v22 = sub_3AA38;
  v30 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v8 = *(updated - 8);
  v13 = v8;
  v18 = *(v8 + 64);
  v9 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(updated);
  v21 = &v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v15 = &v7 - v10;
  v30 = v0;
  v5 = v0 + *(v4 + 20);
  v11 = *v5;
  v12 = *(v5 + 8);
  sub_2B30(v11, v12 & 1);
  v28 = v11;
  v29 = v12 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v26 = v27;
  sub_2B78(v11, v12 & 1);
  sub_10D38(v16, v15);
  v17 = *(v13 + 80);
  v14 = (v17 + 16) & ~v17;
  v19 = 7;
  v25 = swift_allocObject();
  sub_27ED8(v15, (v25 + v14));
  sub_10D38(v16, v21);
  v20 = (v17 + 16) & ~v17;
  v23 = swift_allocObject();
  sub_27ED8(v21, (v23 + v20));
  v6 = sub_561D0();
  sub_561DC(v6 & 1, v24, v25, v22, v23);
  sub_3AA9C(v22);
  sub_3AAD0(v24);
  _objc_release(v26);
}

uint64_t sub_36124@<X0>(uint64_t a1@<X8>)
{
  v41 = 0u;
  v42 = 0u;
  HIBYTE(v17) = 1;
  sub_99B90("Restart & Install", 0x11uLL, 1);
  sub_99580();
  v8 = *sub_98A68();
  _objc_retain(v8);
  v38 = 0;
  v39 = 0;
  v40 = v17 & 0x100;
  v34 = sub_996F0();
  v35 = v1;
  v36 = v2;
  v37 = v3;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  sub_99880();
  v30 = v34;
  v31 = v9;
  v32 = v10 & 1;
  v33 = v11;
  v26 = sub_996D0();
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v12 = v4;
  v13 = v5;
  v14 = v6;

  sub_88E0(v34, v9, v10 & 1);

  v23[0] = v26;
  v23[1] = v12;
  v24 = v13 & 1;
  v25 = v14;
  sub_71A0(v23, &type metadata for Text, &v41);
  sub_10440(v23);
  v15 = v41;
  v16 = v42;
  v18 = *(&v42 + 1);
  sub_F84C(v41, *(&v41 + 1), v42 & 1);

  v20 = v15;
  v21 = v16 & 1;
  v22 = v18;
  sub_8408(&v20, &type metadata for Text, a1);
  sub_10440(&v20);
  return sub_10440(&v41);
}

uint64_t sub_363C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v46 = a1;
  v56 = sub_3FAB8;
  v31 = sub_3FE94;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v41 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v32 = *(updated - 8);
  v47 = v32;
  v48 = *(v32 + 64);
  v33 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v51 = &v19[-v33];
  v3 = sub_22FC(&qword_B4E20, &unk_9AC90);
  v34 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v55 = &v19[-v34];
  v63 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v35 = (v61[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v46);
  v36 = &v19[-v35];
  v37 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v38 = &v19[-v37];
  v39 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v66 = &v19[-v39];
  v40 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v59 = &v19[-v40];
  v73 = &v19[-v40];
  v72 = v10;
  v42 = 1;
  sub_99B90("Cancel", 6uLL, 1);
  v58 = sub_99580();
  v52 = v11;
  v53 = v12;
  v54 = v13;
  sub_993D0();
  v43 = sub_993F0();
  v14 = *(v43 - 8);
  v44 = *(v14 + 56);
  v45 = v14 + 56;
  v44(v55, 0, v42);
  sub_10D38(v46, v51);
  v49 = *(v47 + 80);
  v50 = (v49 + 16) & ~v49;
  v57 = swift_allocObject();
  sub_27ED8(v51, (v57 + v50));
  sub_99930();
  v60 = sub_11928();
  sub_71A0(v66, v63, v59);
  v64 = v61[1];
  v65 = v61 + 1;
  v64(v66, v63);
  v71 = v66;
  v20 = 1;
  sub_99B90("Restart & Install", 0x11uLL, 1);
  v26 = sub_99580();
  v22 = v15;
  v23 = v16;
  v24 = v17;
  sub_993E0();
  (v44)(v55, 0, v20, v43);
  sub_10D38(v46, v51);
  v21 = (v49 + 16) & ~v49;
  v25 = swift_allocObject();
  sub_27ED8(v51, (v25 + v21));
  sub_99930();
  sub_71A0(v38, v63, v66);
  v64(v38, v63);
  v28 = v61[2];
  v27 = v61 + 2;
  v28(v38, v59, v63);
  v29 = v70;
  v70[0] = v38;
  v28(v36, v66, v63);
  v70[1] = v36;
  v69[0] = v63;
  v69[1] = v63;
  v67 = v60;
  v68 = v60;
  sub_84B8(v29, 2uLL, v69, v30);
  v64(v36, v63);
  v64(v38, v63);
  v64(v66, v63);
  return (v64)(v59, v63);
}

unint64_t sub_36ABC()
{
  v2 = qword_B5528;
  if (!qword_B5528)
  {
    sub_87B4(&qword_B54E0, &qword_9B7B8);
    sub_11928();
    sub_C0B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_36B64(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4E28, &qword_9AD50);
  (*(*(v1 - 8) + 8))(a1);
  v5 = (a1 + *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36));
  v2 = *v5;

  v3 = v5[2];

  return a1;
}

uint64_t sub_36C08(void *a1)
{
  v43 = a1;
  v52 = 0;
  v60 = 0;
  v36 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v37 = *(updated - 8);
  v38 = v37;
  v39 = *(v37 + 64);
  __chkstk_darwin(updated - 8);
  v40 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v42 = &v16 - v41;
  v49 = sub_993B0();
  v44 = v49;
  v45 = *(v49 - 8);
  v48 = v45;
  v46 = v45;
  v3 = *(v45 + 64);
  v4 = __chkstk_darwin(v43);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  v60 = v4;
  v7 = sub_81788();
  (*(v48 + 16))(v6, v7, v49);
  v54 = sub_99390();
  v50 = v54;
  v53 = sub_99D60();
  v51 = v53;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v55 = sub_99F80();
  if (os_log_type_enabled(v54, v53))
  {
    v8 = v36;
    v27 = sub_99E40();
    v23 = v27;
    v24 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v25 = 0;
    v28 = sub_F444(0);
    v26 = v28;
    v29 = sub_F444(v25);
    v59 = v27;
    v58 = v28;
    v57 = v29;
    v30 = 0;
    v31 = &v59;
    sub_F498(0, &v59);
    sub_F498(v30, v31);
    v56 = v55;
    v32 = &v16;
    __chkstk_darwin(&v16);
    v33 = &v16 - 6;
    *(&v16 - 4) = v9;
    *(&v16 - 3) = &v58;
    *(&v16 - 2) = &v57;
    v34 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v35 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v50, v51, "User cancelled restart and install action", v23, 2u);
      v21 = 0;
      sub_F5B0(v26);
      sub_F5B0(v29);
      sub_99E20();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v46 + 8))(v47, v44);
  v19 = 0;
  v10 = sub_99D00();
  (*(*(v10 - 8) + 56))(v42, 1);
  sub_10D38(v43, v40);
  sub_99CD0();
  v17 = sub_99CC0();
  v18 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v11 = swift_allocObject();
  v12 = v18;
  v13 = v11;
  v14 = v40;
  v20 = v13;
  *(v13 + 16) = v17;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_27ED8(v14, (v13 + v12));
  sub_2A6F4(v19, v19, v42, &unk_9BCC0, v20, &type metadata for () + 8);
}

uint64_t sub_371E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v4[21] = v4;
  v4[22] = 0;
  v4[22] = a4;
  sub_99CD0();
  v4[24] = sub_99CC0();
  v5 = sub_99CA0();
  v6 = v4[21];

  return _swift_task_switch(sub_37294, v5);
}

uint64_t sub_37294()
{
  v25 = *(v0 + 184);
  *(v0 + 168) = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v25 + updated[12]);
  v22 = *v1;
  v23 = *(v1 + 1);

  *(v0 + 88) = v22;
  *(v0 + 96) = v23;
  *(v0 + 200) = 0;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 88);

  v2 = (v25 + updated[9]);
  v26 = *v2;
  v27 = v2[1];
  v28 = v2[2];
  sub_230F8(*v2);

  *(v0 + 16) = v26;
  *(v0 + 24) = v27;
  *(v0 + 32) = v28;
  sub_22FC(&qword_B5308, &unk_9B620);
  sub_998E0();
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  if (v29)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v29;
    *(v3 + 24) = v30;
    v19 = sub_40BA0;
    v20 = v3;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  sub_2312C(v26);

  v21[13] = v19;
  v21[14] = v20;
  if (v21[13])
  {
    v17 = v21[13];
    v18 = v21[14];

    sub_404E4(v21 + 13);
    v17(0);
  }

  else
  {
    sub_404E4(v21 + 13);
  }

  v16 = v21[24];
  v12 = v21[23];
  v4 = updated[9];
  v10 = *(v12 + v4);
  v9 = *(v12 + v4 + 8);
  v11 = *(v12 + v4 + 16);
  sub_230F8(v10);

  sub_230F8(v10);

  v21[5] = v10;
  v21[6] = v9;
  v21[7] = v11;
  sub_22EB0(0);
  v21[17] = 0;
  v21[18] = 0;
  sub_998F0();
  sub_23388(v21 + 5);
  sub_2312C(v10);

  sub_22EE4(0);
  v5 = updated[15];
  v14 = *(v12 + v5);
  v13 = *(v12 + v5 + 8);
  v15 = *(v12 + v5 + 16);
  sub_25040(v14);

  sub_25040(v14);

  v21[8] = v14;
  v21[9] = v13;
  v21[10] = v15;
  sub_24E34(0);
  v21[19] = 0;
  v21[20] = 0;
  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998F0();
  sub_252B8(v21 + 8);
  sub_25074(v14);

  sub_8F94(0);

  v6 = *(v21[21] + 8);
  v7 = v21[21];

  return v6();
}

uint64_t sub_3772C(void *a1)
{
  v43 = a1;
  v52 = 0;
  v60 = 0;
  v36 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v37 = *(updated - 8);
  v38 = v37;
  v39 = *(v37 + 64);
  __chkstk_darwin(updated - 8);
  v40 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v42 = &v16 - v41;
  v49 = sub_993B0();
  v44 = v49;
  v45 = *(v49 - 8);
  v48 = v45;
  v46 = v45;
  v3 = *(v45 + 64);
  v4 = __chkstk_darwin(v43);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  v60 = v4;
  v7 = sub_81788();
  (*(v48 + 16))(v6, v7, v49);
  v54 = sub_99390();
  v50 = v54;
  v53 = sub_99D60();
  v51 = v53;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v55 = sub_99F80();
  if (os_log_type_enabled(v54, v53))
  {
    v8 = v36;
    v27 = sub_99E40();
    v23 = v27;
    v24 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v25 = 0;
    v28 = sub_F444(0);
    v26 = v28;
    v29 = sub_F444(v25);
    v59 = v27;
    v58 = v28;
    v57 = v29;
    v30 = 0;
    v31 = &v59;
    sub_F498(0, &v59);
    sub_F498(v30, v31);
    v56 = v55;
    v32 = &v16;
    __chkstk_darwin(&v16);
    v33 = &v16 - 6;
    *(&v16 - 4) = v9;
    *(&v16 - 3) = &v58;
    *(&v16 - 2) = &v57;
    v34 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v35 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v50, v51, "User confirmed restart and install action", v23, 2u);
      v21 = 0;
      sub_F5B0(v26);
      sub_F5B0(v29);
      sub_99E20();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v46 + 8))(v47, v44);
  v19 = 0;
  v10 = sub_99D00();
  (*(*(v10 - 8) + 56))(v42, 1);
  sub_10D38(v43, v40);
  sub_99CD0();
  v17 = sub_99CC0();
  v18 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v11 = swift_allocObject();
  v12 = v18;
  v13 = v11;
  v14 = v40;
  v20 = v13;
  *(v13 + 16) = v17;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_27ED8(v14, (v13 + v12));
  sub_2A6F4(v19, v19, v42, &unk_9BCB0, v20, &type metadata for () + 8);
}

uint64_t sub_37D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v4[14] = v4;
  v4[15] = 0;
  v4[15] = a4;
  sub_99CD0();
  v4[17] = sub_99CC0();
  v5 = sub_99CA0();
  v6 = v4[14];

  return _swift_task_switch(sub_37DB8, v5);
}

uint64_t sub_37DB8()
{
  v16 = v0[16];
  v0[14] = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v16 + *(updated + 36));
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  sub_230F8(*v1);

  v0[2] = v18;
  v0[3] = v19;
  v0[4] = v20;
  sub_22FC(&qword_B5308, &unk_9B620);
  sub_998E0();
  v21 = v0[10];
  v22 = v0[11];
  if (v21)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v21;
    *(v2 + 24) = v22;
    v13 = sub_40564;
    v14 = v2;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  sub_2312C(v18);

  v15[8] = v13;
  v15[9] = v14;
  if (v15[8])
  {
    v11 = v15[8];
    v12 = v15[9];

    sub_404E4(v15 + 8);
    v11(1);
  }

  else
  {
    sub_404E4(v15 + 8);
  }

  v10 = v15[17];
  v3 = (v15[16] + *(updated + 36));
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  sub_230F8(*v3);

  sub_230F8(v8);

  v15[5] = v8;
  v15[6] = v7;
  v15[7] = v9;
  sub_22EB0(0);
  v15[12] = 0;
  v15[13] = 0;
  sub_998F0();
  sub_23388(v15 + 5);
  sub_2312C(v8);

  sub_22EE4(0);

  v4 = *(v15[14] + 8);
  v5 = v15[14];

  return v4();
}

uint64_t sub_380F0(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a1;
  v31 = a2;
  v23 = a3;
  v27 = &protocol witness table for MainActor;
  v34 = &unk_9BC90;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v32 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v20 = *(updated - 8);
  v24 = v20;
  v25 = *(v20 + 64);
  v21 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v29 = &v20 - v21;
  v22 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v33 = &v20 - v22;
  v38 = v4;
  v39 = v5;
  v37 = v6;
  v7 = sub_99D00();
  (*(*(v7 - 8) + 56))(v33, 1);
  sub_10D38(v23, v29);

  sub_99CD0();
  v26 = sub_99CC0();
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = (v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v9 = v27;
  v10 = v28;
  v11 = v8;
  v12 = v29;
  v35 = v11;
  *(v11 + 16) = v26;
  *(v11 + 24) = v9;
  sub_27ED8(v12, (v11 + v10));
  v13 = v31;
  v14 = v32;
  v15 = v33;
  v16 = v34;
  v17 = v35;
  v18 = (v35 + v30);
  *v18 = v36;
  v18[1] = v13;
  sub_2A6F4(v14, v14, v15, v16, v17, &type metadata for () + 8);
}

uint64_t sub_38374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a6;
  v6[14] = a5;
  v6[13] = a4;
  v6[11] = v6;
  v6[12] = 0;
  v6[5] = 0;
  v6[6] = 0;
  v6[12] = a4;
  v6[5] = a5;
  v6[6] = a6;
  sub_99CD0();
  v6[16] = sub_99CC0();
  v7 = sub_99CA0();
  v8 = v6[11];

  return _swift_task_switch(sub_3844C, v7);
}

uint64_t sub_3844C()
{
  v16 = *(v0 + 128);
  v11 = *(v0 + 120);
  v10 = *(v0 + 112);
  v13 = *(v0 + 104);
  *(v0 + 88) = v0;

  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v13 + *(updated + 36));
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  sub_230F8(*v1);

  sub_230F8(v8);

  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  sub_22EB0(v10);
  v2 = swift_allocObject();
  *(v2 + 16) = v10;
  *(v2 + 24) = v11;
  *(v0 + 56) = sub_3EBFC;
  *(v0 + 64) = v2;
  sub_22FC(&qword_B5308, &unk_9B620);
  sub_998F0();
  sub_23388((v0 + 16));
  sub_2312C(v8);

  sub_22EE4(v10);
  v3 = (v13 + *(updated + 28));
  v14 = *v3;
  v15 = *(v3 + 1);

  *(v0 + 72) = v14;
  *(v0 + 80) = v15;
  *(v0 + 136) = 1;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 72);

  v4 = *(*(v0 + 88) + 8);
  v5 = *(v0 + 88);

  return v4();
}

uint64_t sub_386A0(void *a1)
{
  v14 = a1;
  v18 = &protocol witness table for MainActor;
  v23 = &unk_9BC80;
  v25 = 0;
  v21 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v11 = *(updated - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v20 = &v10 - v12;
  v13 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_99D00();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_10D38(v14, v20);
  sub_99CD0();
  v17 = sub_99CC0();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_27ED8(v8, (v7 + v6));
  sub_2A6F4(v21, v21, v22, v23, v24, &type metadata for () + 8);
}

uint64_t sub_388CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  sub_99CD0();
  v4[7] = sub_99CC0();
  v5 = sub_99CA0();
  v6 = v4[4];

  return _swift_task_switch(sub_38980, v5);
}

uint64_t sub_38980()
{
  v8 = *(v0 + 56);
  v5 = *(v0 + 48);
  *(v0 + 32) = v0;
  v1 = (v5 + *(type metadata accessor for UpdateAvailableView() + 48));
  v6 = *v1;
  v7 = *(v1 + 1);

  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 64) = 0;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 16);

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

uint64_t sub_38AA0(void *a1)
{
  v53 = a1;
  v68 = 0;
  v88 = 0;
  v46 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v47 = updated;
  v48 = *(updated - 8);
  v49 = v48;
  v50 = *(v48 + 64);
  __chkstk_darwin(0);
  v51 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_993B0();
  v54 = v65;
  v55 = *(v65 - 8);
  v64 = v55;
  v56 = v55;
  v57 = *(v55 + 64);
  v2 = __chkstk_darwin(v53);
  v61 = &v17 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v61;
  v88 = v2;
  v4 = (v2 + *(v3 + 52));
  v59 = *v4;
  v63 = *(v4 + 1);

  v86 = v59;
  v87 = v63;
  v85 = 1;
  v60 = sub_22FC(&qword_B4B60, &qword_9A8D0);
  v62 = &v86;
  sub_998F0();
  v5 = v61;
  sub_352C(v62);

  v6 = sub_81788();
  (*(v64 + 16))(v5, v6, v65);
  v70 = sub_99390();
  v66 = v70;
  v69 = sub_99D60();
  v67 = v69;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v71 = sub_99F80();
  if (os_log_type_enabled(v70, v69))
  {
    v7 = v46;
    v37 = sub_99E40();
    v33 = v37;
    v34 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v35 = 0;
    v38 = sub_F444(0);
    v36 = v38;
    v39 = sub_F444(v35);
    v75 = v37;
    v74 = v38;
    v73 = v39;
    v40 = 0;
    v41 = &v75;
    sub_F498(0, &v75);
    sub_F498(v40, v41);
    v72 = v71;
    v42 = &v17;
    __chkstk_darwin(&v17);
    v43 = &v17 - 6;
    *(&v17 - 4) = v8;
    *(&v17 - 3) = &v74;
    *(&v17 - 2) = &v73;
    v44 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v45 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v66, v67, "User Action: Clicked 'Install' Action in UpdateAvailableView", v33, 2u);
      v31 = 0;
      sub_F5B0(v36);
      sub_F5B0(v39);
      sub_99E20();

      v32 = v45;
    }
  }

  else
  {

    v32 = v46;
  }

  (*(v56 + 8))(v58, v54);
  v9 = v53 + v47[6];
  v28 = *v9;
  v27 = v9[8];

  v83 = v28;
  v84 = v27;
  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();
  v10 = v82;
  v29 = v82;

  v30 = (*(*v10 + 184))(v11);

  if (v30)
  {
    return sub_39758();
  }

  sub_10D38(v53, v51);
  v17 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v23 = swift_allocObject();
  sub_27ED8(v51, (v23 + v17));
  v13 = (v53 + v47[15]);
  v20 = *v13;
  v19 = v13[1];
  v21 = v13[2];
  sub_25040(v20);

  sub_25040(v20);

  v81[0] = v20;
  v81[1] = v19;
  v81[2] = v21;
  v22 = sub_3F660;
  sub_24E34(sub_3F660);
  v14 = swift_allocObject();
  v15 = v23;
  *(v14 + 16) = v22;
  *(v14 + 24) = v15;
  v79 = sub_3F704;
  v80 = v14;
  sub_22FC(&qword_B5318, &qword_9B648);
  v18 = v81;
  sub_998F0();
  sub_252B8(v18);
  sub_25074(v20);

  sub_8F94(v22);
  v16 = v53 + v47[14];
  v24 = *v16;
  v26 = *(v16 + 1);

  v77 = v24;
  v78 = v26;
  v76 = 1;
  v25 = &v77;
  sub_998F0();
  sub_352C(v25);
}

uint64_t sub_3937C()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_396F4()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_38AA0(v2);
}

uint64_t sub_39758()
{
  v14 = &unk_9B7F8;
  v29 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v6 = *(updated - 8);
  v10 = v6;
  v11 = *(v6 + 64);
  v7 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v6 - v7;
  v29 = v0;
  v1 = v0 + *(__chkstk_darwin(updated) + 20);
  v8 = *v1;
  v9 = *(v1 + 8);
  v21 = 1;
  sub_2B30(v8, v9 & 1);
  v27 = v8;
  v28 = v9 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v17 = v26;
  sub_2B78(v8, v9 & 1);
  sub_10D38(v15, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_27ED8(v13, (v16 + v12));
  sub_501D4(v14, v16);
  v2 = v15;

  _objc_release(v17);
  v3 = v2 + *(updated + 24);
  v20 = *v3;
  v19 = v3[8];

  v24 = v20;
  v25 = v19 & 1 & v21;
  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();
  v4 = v23;
  v22 = v23;

  (*(*v4 + 248))(v21 & 1);
}

uint64_t sub_39A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = 0u;
  v42 = 0u;
  v43 = a1;
  if (*(a1 + *(type metadata accessor for UpdateAvailableView() + 68)))
  {
    sub_99B90("Reinstall", 9uLL, 1);
  }

  else
  {
    sub_99B90("Install", 7uLL, 1);
  }

  sub_99580();
  v9 = *sub_98A68();
  _objc_retain(v9);
  v38 = 0;
  v39 = 0;
  v40 = 256;
  v34 = sub_996F0();
  v35 = v2;
  v36 = v3;
  v37 = v4;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_99880();
  v30 = v34;
  v31 = v10;
  v32 = v11 & 1;
  v33 = v12;
  v26 = sub_996D0();
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v13 = v5;
  v14 = v6;
  v15 = v7;

  sub_88E0(v34, v10, v11 & 1);

  v23[0] = v26;
  v23[1] = v13;
  v24 = v14 & 1;
  v25 = v15;
  sub_71A0(v23, &type metadata for Text, &v41);
  sub_10440(v23);
  v16 = v41;
  v17 = v42;
  v18 = *(&v42 + 1);
  sub_F84C(v41, *(&v41 + 1), v42 & 1);

  v20 = v16;
  v21 = v17 & 1;
  v22 = v18;
  sub_8408(&v20, &type metadata for Text, a2);
  sub_10440(&v20);
  return sub_10440(&v41);
}

uint64_t sub_39D2C()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3A0A4()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(type metadata accessor for UpdateAvailableView() - 8);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3A198;

  return sub_34788(v0 + v6);
}

uint64_t sub_3A198(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_3A2C8()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3A640(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateAvailableView();
  v4 = (v2 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80)));

  return sub_380F0(a1, a2, v4);
}

uint64_t sub_3A6C0()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3AA38()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_386A0(v2);
}

uint64_t sub_3AA9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3AAD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3AB04(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  v2 = v1[2];
  return _swift_task_switch(sub_3AB40, 0);
}

uint64_t sub_3AB40()
{
  v5 = v0[4];
  v0[2] = v0;
  v7 = sub_99B90("performFailedStateInstallAction()", 0x21uLL, 1);
  v8 = v1;
  v0[5] = v1;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *(v9 + 16) = v5;
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v6 + 56) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_3AC70;

  return withCheckedContinuation<A>(isolation:function:_:)(v6 + 64, 0, 0, v7, v8, sub_3CE58, v9, &type metadata for Bool);
}

uint64_t sub_3AC70()
{
  v6 = *v0;
  v1 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  *(v6 + 16) = *v0;

  v2 = *(v6 + 16);

  return _swift_task_switch(sub_3ADC8, 0);
}

uint64_t sub_3ADC8()
{
  *(v0 + 16) = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);
  return v2(v1 & 1);
}

uint64_t sub_3AE10()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3B188()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(type metadata accessor for UpdateAvailableView() - 8);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3B27C;

  return sub_3AB04(v0 + v6);
}

uint64_t sub_3B27C(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_3B3AC(uint64_t a1, void *a2)
{
  v19 = a1;
  v18 = a2;
  v25 = &protocol witness table for MainActor;
  v35 = &unk_9BC58;
  v38 = 0;
  v37 = 0;
  v32 = sub_22FC(&qword_B4E08, &unk_9B630);
  v28 = *(v32 - 8);
  v29 = v32 - 8;
  v22 = v28;
  v23 = *(v28 + 64);
  v14 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v13 - v14;
  v33 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v15 = *(updated - 8);
  v20 = v15;
  v21 = *(v15 + 64);
  v16 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v27 = &v13 - v16;
  v17 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v34 = &v13 - v17;
  v38 = v3;
  v37 = v4;
  v5 = sub_99D00();
  (*(*(v5 - 8) + 56))(v34, 1);
  sub_10D38(v18, v27);
  (*(v28 + 16))(v31, v19, v32);
  sub_99CD0();
  v24 = sub_99CC0();
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v30 = (v26 + v21 + *(v22 + 80)) & ~*(v22 + 80);
  v6 = swift_allocObject();
  v7 = v25;
  v8 = v26;
  v9 = v6;
  v10 = v27;
  v36 = v9;
  *(v9 + 16) = v24;
  *(v9 + 24) = v7;
  v11 = sub_27ED8(v10, (v9 + v8));
  (*(v28 + 32))(v36 + v30, v31, v32, v11);
  sub_2A6F4(v33, v33, v34, v35, v36, &type metadata for () + 8);
}

uint64_t sub_3B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v5[7] = a4;
  v5[4] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v6 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(*(sub_22FC(&qword_B4E18, &qword_9AC88) - 8) + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  sub_99CD0();
  v5[13] = sub_99CC0();
  v8 = sub_99CA0();
  v9 = v5[4];

  return _swift_task_switch(sub_3B88C, v8);
}

uint64_t sub_3B88C()
{
  v13 = *(v0 + 104);
  v14 = *(v0 + 96);
  v15 = *(v0 + 88);
  v16 = *(v0 + 80);
  v12 = *(v0 + 72);
  v7 = *(v0 + 64);
  v11 = *(v0 + 56);
  *(v0 + 32) = v0;
  updated = type metadata accessor for UpdateAvailableView();
  v1 = (v11 + *(updated + 32));
  v5 = *v1;
  v6 = *(v1 + 1);

  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 112) = 1;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v0 + 16);

  v9 = sub_22FC(&qword_B4E08, &unk_9B630);
  v8 = *(v9 - 8);
  (*(v8 + 16))(v14, v7);
  (*(v8 + 56))(v14, 0, 1, v9);
  sub_23948((v11 + *(updated + 40)), v16);
  sub_236A0(v14, v15);
  sub_998F0();
  sub_23AB8(v16);
  sub_237D4(v14);

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

int *sub_3BAC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v66 = a1;
  v69 = a2;
  v3 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v48 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v56 = &v48 - v48;
  v4 = sub_22FC(&qword_B4E18, &qword_9AC88);
  v49 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v55 = &v48 - v49;
  swift_getKeyPath();
  sub_99420();
  v64 = 0;
  updated = type metadata accessor for UpdateAvailableView();
  v50 = updated[5];
  swift_getKeyPath();
  sub_99420();
  v51 = updated[6];
  swift_getKeyPath();
  sub_99420();
  v52 = updated[7];
  v61 = 0;
  v62 = 1;
  v5 = sub_22798();
  v6 = updated;
  v7 = v67 + v52;
  *v7 = v5 & v62;
  *(v7 + 8) = v8;
  v53 = v6[8];
  v9 = sub_22A84();
  v10 = updated;
  v12 = v11;
  v13 = v64;
  v14 = v67 + v53;
  *v14 = v9 & v62;
  *(v14 + 8) = v12;
  v54 = v10[9];
  v15 = sub_22D70(v13, v13);
  v16 = updated;
  v17 = (v67 + v54);
  *v17 = v15;
  v17[1] = v18;
  v17[2] = v19;
  v57 = v16[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  (*(*(v20 - 8) + 56))(v55, v62);
  sub_235E8(v55, v56);
  sub_3BE98(v56, (v67 + v57));
  v58 = updated[11];
  v21 = sub_24144();
  v22 = updated;
  v23 = v67 + v58;
  *v23 = v21 & v62;
  *(v23 + 8) = v24;
  v59 = v22[12];
  v25 = sub_24430();
  v26 = updated;
  v27 = v67 + v59;
  *v27 = v25 & v62;
  *(v27 + 8) = v28;
  v60 = v26[13];
  v29 = sub_2471C();
  v30 = updated;
  v31 = v67 + v60;
  *v31 = v29 & v62;
  *(v31 + 8) = v32;
  v63 = v30[14];
  v33 = sub_24A08();
  v34 = updated;
  v36 = v35;
  v37 = v64;
  v38 = v67 + v63;
  *v38 = v33 & v62;
  *(v38 + 8) = v36;
  v65 = v34[15];
  v39 = sub_24CF4(v37, v37);
  v40 = v66;
  v41 = v67;
  v42 = v39;
  result = updated;
  v45 = v44;
  LOBYTE(v44) = v69;
  v46 = (v67 + v65);
  *v46 = v42;
  v46[1] = v45;
  v46[2] = v47;
  *(v41 + result[16]) = v40;
  *(v41 + result[17]) = v44;
  return result;
}

char *sub_3BE98(char *a1, char *a2)
{
  v7 = sub_22FC(&qword_B4E08, &unk_9B630);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4E18, &qword_9AC88);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  v3 = sub_22FC(&qword_B4E10, &qword_9AC80);
  result = a2;
  *&a2[*(v3 + 28)] = *&a1[*(v3 + 28)];
  return result;
}

uint64_t sub_3C0B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = sub_22FC(&qword_B52F8, &unk_9B560);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 28) + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 28) + 8);
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_22FC(&qword_B4E10, &qword_9AC80);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 40), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_3C2B8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_22FC(&qword_B52F8, &unk_9B560);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  else
  {
    result = sub_22FC(&qword_B4E10, &qword_9AC80);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 40), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_3C460()
{
  v9 = sub_3C6B4();
  if (v0 <= 0x3F)
  {
    v9 = sub_FE14();
    if (v1 <= 0x3F)
    {
      v9 = sub_FEB0();
      if (v2 <= 0x3F)
      {
        v9 = sub_100E8();
        if (v3 <= 0x3F)
        {
          v9 = sub_3C750();
          if (v4 <= 0x3F)
          {
            v9 = sub_3C7F4();
            if (v5 <= 0x3F)
            {
              v9 = sub_3C898();
              if (v6 <= 0x3F)
              {
                v9 = sub_FF4C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_3C6B4()
{
  v4 = qword_B5588;
  if (!qword_B5588)
  {
    sub_99450();
    v3 = sub_99410();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_B5588);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_3C750()
{
  v4 = qword_B5590;
  if (!qword_B5590)
  {
    sub_87B4(&qword_B5300, &qword_9B618);
    v3 = sub_99910();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_B5590);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_3C7F4()
{
  v4 = qword_B5598;
  if (!qword_B5598)
  {
    sub_87B4(&qword_B4E18, &qword_9AC88);
    v3 = sub_99910();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_B5598);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_3C898()
{
  v4 = qword_B55A0;
  if (!qword_B55A0)
  {
    sub_87B4(&qword_B5310, &qword_9B640);
    v3 = sub_99910();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_B55A0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_3C93C()
{
  sub_87B4(&qword_B5320, &qword_9B650);
  sub_28878();
  sub_28910();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3C9E0()
{
  sub_87B4(&qword_B53D0, &unk_9B6B0);
  sub_87B4(&qword_B4C38, &qword_9A950);
  sub_87B4(&qword_B53D8, &unk_9B6C0);
  sub_87B4(&qword_B4CB0, &qword_9A998);
  sub_27274();
  sub_CE78();
  sub_DCAC();
  swift_getOpaqueTypeConformance2();
  sub_CE00();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3CB5C()
{
  v2 = qword_B5600;
  if (!qword_B5600)
  {
    sub_87B4(&qword_B5488, &qword_9B760);
    sub_32AC8();
    sub_C0B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3CC1C()
{
  v2 = qword_B5608;
  if (!qword_B5608)
  {
    sub_87B4(&qword_B54A0, &qword_9B778);
    sub_32D58();
    sub_C0B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3CCDC()
{
  v2 = qword_B5610;
  if (!qword_B5610)
  {
    sub_87B4(&qword_B54B8, &qword_9B790);
    sub_3467C();
    sub_C0B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3CD84()
{
  sub_87B4(&qword_B54E0, &qword_9B7B8);
  sub_87B4(&qword_B4C38, &qword_9A950);
  sub_36ABC();
  sub_CE00();
  sub_CE78();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3CE60()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v29 = (v1 + 32) & ~v1;
  v24 = v29 + *(*(updated - 1) + 64);
  v25 = sub_22FC(&qword_B4E08, &unk_9B630);
  v26 = *(v25 - 8);
  v27 = (v24 + *(v26 + 80)) & ~*(v26 + 80);
  v28 = v27 + *(v26 + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v22 + v29);
  }

  else
  {
    v3 = *(v22 + v29);
  }

  v5 = v22 + v29 + updated[5];
  sub_2B78(*v5, *(v5 + 8) & 1);
  v6 = *(v22 + v29 + updated[6]);

  v7 = *(v22 + v29 + updated[7] + 8);

  v8 = *(v22 + v29 + updated[8] + 8);

  v21 = (v22 + v29 + updated[9]);
  if (*v21)
  {
    v9 = v21[1];
  }

  v10 = v21[2];

  v20 = v22 + v29 + updated[10];
  if (!(*(v26 + 48))())
  {
    (*(v26 + 8))(v20, v25);
  }

  v11 = *(v20 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v12 = *(v22 + v29 + updated[11] + 8);

  v13 = *(v22 + v29 + updated[12] + 8);

  v14 = *(v22 + v29 + updated[13] + 8);

  v15 = *(v22 + v29 + updated[14] + 8);

  v19 = (v22 + v29 + updated[15]);
  if (*v19)
  {
    v16 = v19[1];
  }

  v17 = v19[2];

  _objc_release(*(v22 + v29 + updated[16]));
  (*(v26 + 8))(v22 + v27, v25);
  return swift_deallocObject();
}

uint64_t sub_3D27C(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v6 = *(type metadata accessor for UpdateAvailableView() - 8);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v7 = v11 + *(v6 + 64);
  v3 = sub_22FC(&qword_B4E08, &unk_9B630);
  v12 = (v7 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v8 + 24) = v4;
  *v4 = *(v8 + 16);
  v4[1] = sub_3D410;

  return sub_3B714(a1, v9, v10, v1 + v11, v1 + v12);
}

uint64_t sub_3D410()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_3D538(const void *a1, void *a2)
{
  v6 = sub_99D00();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_22FC(&unk_B5960, &qword_9BC48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_3D660(uint64_t a1)
{
  v3 = sub_99D00();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_3D708@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_99EF0();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_3D8C8(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_3D9DC;

  return v7(a1);
}

uint64_t sub_3D9DC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3DB08()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_3DB50(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3DC44;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_3DC44()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3DD6C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_3DDB4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3DEA8;

  return sub_3D8C8(a1, v6);
}

uint64_t sub_3DEA8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3DFD0()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v26 = (v1 + 32) & ~v1;
  v25 = v26 + *(*(updated - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v23 + v26);
  }

  else
  {
    v3 = *(v23 + v26);
  }

  sub_2B78(*(v23 + v26 + updated[5]), *(v23 + v26 + updated[5] + 8) & 1);
  v5 = *(v23 + v26 + updated[6]);

  v6 = *(v23 + v26 + updated[7] + 8);

  v7 = *(v23 + v26 + updated[8] + 8);

  v22 = (v23 + v26 + updated[9]);
  if (*v22)
  {
    v8 = v22[1];
  }

  v9 = v22[2];

  v19 = v23 + v26 + updated[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1))
  {
    (*(v21 + 8))(v19, v20);
  }

  v10 = *(v19 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v23 + v26 + updated[11] + 8);

  v12 = *(v23 + v26 + updated[12] + 8);

  v13 = *(v23 + v26 + updated[13] + 8);

  v14 = *(v23 + v26 + updated[14] + 8);

  v18 = (v23 + v26 + updated[15]);
  if (*v18)
  {
    v15 = v18[1];
  }

  v16 = v18[2];

  _objc_release(*(v23 + v26 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3E350(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for UpdateAvailableView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_3E464;

  return sub_388CC(a1, v7, v8, v1 + v9);
}

uint64_t sub_3E464()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3E58C()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v27 = (v1 + 32) & ~v1;
  v26 = (v27 + *(*(updated - 1) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v24 + v27);
  }

  else
  {
    v3 = *(v24 + v27);
  }

  sub_2B78(*(v24 + v27 + updated[5]), *(v24 + v27 + updated[5] + 8) & 1);
  v5 = *(v24 + v27 + updated[6]);

  v6 = *(v24 + v27 + updated[7] + 8);

  v7 = *(v24 + v27 + updated[8] + 8);

  v23 = (v24 + v27 + updated[9]);
  if (*v23)
  {
    v8 = v23[1];
  }

  v9 = v23[2];

  v20 = v24 + v27 + updated[10];
  v21 = sub_22FC(&qword_B4E08, &unk_9B630);
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v20, 1))
  {
    (*(v22 + 8))(v20, v21);
  }

  v10 = *(v20 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v24 + v27 + updated[11] + 8);

  v12 = *(v24 + v27 + updated[12] + 8);

  v13 = *(v24 + v27 + updated[13] + 8);

  v14 = *(v24 + v27 + updated[14] + 8);

  v19 = (v24 + v27 + updated[15]);
  if (*v19)
  {
    v15 = v19[1];
  }

  v16 = v19[2];

  _objc_release(*(v24 + v27 + updated[16]));
  v17 = *(v24 + v26 + 8);

  return swift_deallocObject();
}

uint64_t sub_3E934(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(type metadata accessor for UpdateAvailableView() - 8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v3 = (v1 + ((v10 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v3;
  v12 = v3[1];
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_3EA94;

  return sub_38374(a1, v8, v9, v1 + v10, v11, v12);
}

uint64_t sub_3EA94()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3EBBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EC10()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v29 = (v1 + 32) & ~v1;
  v24 = v29 + *(*(updated - 1) + 64);
  v25 = sub_22FC(&qword_B4E08, &unk_9B630);
  v26 = *(v25 - 8);
  v27 = (v24 + *(v26 + 80)) & ~*(v26 + 80);
  v28 = v27 + *(v26 + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v22 + v29);
  }

  else
  {
    v3 = *(v22 + v29);
  }

  v5 = v22 + v29 + updated[5];
  sub_2B78(*v5, *(v5 + 8) & 1);
  v6 = *(v22 + v29 + updated[6]);

  v7 = *(v22 + v29 + updated[7] + 8);

  v8 = *(v22 + v29 + updated[8] + 8);

  v21 = (v22 + v29 + updated[9]);
  if (*v21)
  {
    v9 = v21[1];
  }

  v10 = v21[2];

  v20 = v22 + v29 + updated[10];
  if (!(*(v26 + 48))())
  {
    (*(v26 + 8))(v20, v25);
  }

  v11 = *(v20 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v12 = *(v22 + v29 + updated[11] + 8);

  v13 = *(v22 + v29 + updated[12] + 8);

  v14 = *(v22 + v29 + updated[13] + 8);

  v15 = *(v22 + v29 + updated[14] + 8);

  v19 = (v22 + v29 + updated[15]);
  if (*v19)
  {
    v16 = v19[1];
  }

  v17 = v19[2];

  _objc_release(*(v22 + v29 + updated[16]));
  (*(v26 + 8))(v22 + v27, v25);
  return swift_deallocObject();
}

uint64_t sub_3F02C(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v6 = *(type metadata accessor for UpdateAvailableView() - 8);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v7 = v11 + *(v6 + 64);
  v3 = sub_22FC(&qword_B4E08, &unk_9B630);
  v12 = (v7 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v8 + 24) = v4;
  *v4 = *(v8 + 16);
  v4[1] = sub_3F1C0;

  return sub_34DFC(a1, v9, v10, v1 + v11, v1 + v12);
}

uint64_t sub_3F1C0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3F2E8()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3F660()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_399C8();
}

uint64_t sub_3F6C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F740()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3FAB8()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_36C08(v2);
}

uint64_t sub_3FB1C()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_3FE94()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_3772C(v2);
}

uint64_t sub_3FEF8()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v26 = (v1 + 32) & ~v1;
  v25 = v26 + *(*(updated - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v23 + v26);
  }

  else
  {
    v3 = *(v23 + v26);
  }

  sub_2B78(*(v23 + v26 + updated[5]), *(v23 + v26 + updated[5] + 8) & 1);
  v5 = *(v23 + v26 + updated[6]);

  v6 = *(v23 + v26 + updated[7] + 8);

  v7 = *(v23 + v26 + updated[8] + 8);

  v22 = (v23 + v26 + updated[9]);
  if (*v22)
  {
    v8 = v22[1];
  }

  v9 = v22[2];

  v19 = v23 + v26 + updated[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1))
  {
    (*(v21 + 8))(v19, v20);
  }

  v10 = *(v19 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v23 + v26 + updated[11] + 8);

  v12 = *(v23 + v26 + updated[12] + 8);

  v13 = *(v23 + v26 + updated[13] + 8);

  v14 = *(v23 + v26 + updated[14] + 8);

  v18 = (v23 + v26 + updated[15]);
  if (*v18)
  {
    v15 = v18[1];
  }

  v16 = v18[2];

  _objc_release(*(v23 + v26 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_40278(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for UpdateAvailableView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4038C;

  return sub_37D04(a1, v7, v8, v1 + v9);
}

uint64_t sub_4038C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_404E4(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  return a1;
}

uint64_t sub_40524()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40574()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v26 = (v1 + 32) & ~v1;
  v25 = v26 + *(*(updated - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v23 + v26);
  }

  else
  {
    v3 = *(v23 + v26);
  }

  sub_2B78(*(v23 + v26 + updated[5]), *(v23 + v26 + updated[5] + 8) & 1);
  v5 = *(v23 + v26 + updated[6]);

  v6 = *(v23 + v26 + updated[7] + 8);

  v7 = *(v23 + v26 + updated[8] + 8);

  v22 = (v23 + v26 + updated[9]);
  if (*v22)
  {
    v8 = v22[1];
  }

  v9 = v22[2];

  v19 = v23 + v26 + updated[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1))
  {
    (*(v21 + 8))(v19, v20);
  }

  v10 = *(v19 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v23 + v26 + updated[11] + 8);

  v12 = *(v23 + v26 + updated[12] + 8);

  v13 = *(v23 + v26 + updated[13] + 8);

  v14 = *(v23 + v26 + updated[14] + 8);

  v18 = (v23 + v26 + updated[15]);
  if (*v18)
  {
    v15 = v18[1];
  }

  v16 = v18[2];

  _objc_release(*(v23 + v26 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_408F4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for UpdateAvailableView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_40A08;

  return sub_371E0(a1, v7, v8, v1 + v9);
}

uint64_t sub_40A08()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_40B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40BB0()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

void sub_40F28()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_360EC();
}

uint64_t sub_40F8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_41008()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_41380()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_34318();
}

uint64_t sub_413E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_41460(uint64_t a1)
{
  v4 = a1 + *(sub_22FC(&qword_B5618, &qword_9BCC8) + 44);
  sub_88E0(*v4, *(v4 + 8), *(v4 + 16) & 1);
  v1 = *(v4 + 24);

  v5 = *(sub_22FC(&qword_B5620, &unk_9BCD0) + 48);
  v2 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

__n128 sub_41534(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = *(sub_22FC(&qword_B5618, &qword_9BCC8) + 44);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = *(a1 + v8 + 16);
  sub_F84C(v9, v10, v11 & 1);
  v13 = a2 + v8;
  *v13 = v9;
  *(v13 + 8) = v10;
  *(v13 + 16) = v11 & 1;
  v12 = *(a1 + v8 + 24);

  *(v13 + 24) = v12;
  v14 = *(sub_22FC(&qword_B5620, &unk_9BCD0) + 48);
  v2 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  (*(*(v2 - 8) + 16))();
  v3 = sub_22FC(&qword_B4F08, &qword_9ADC0);
  v4 = a1 + v8 + v14 + *(v3 + 36);
  v5 = a2 + v8 + v14 + *(v3 + 36);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

uint64_t sub_416CC(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

__n128 sub_41734(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_22FC(&qword_B4F08, &qword_9ADC0);
  v4 = a1 + *(v3 + 36);
  v5 = a2 + *(v3 + 36);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

uint64_t sub_417E0()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_41B58()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_31710(v2);
}

uint64_t sub_41BBC()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_41F34()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_31A50(v2);
}

uint64_t sub_41F98()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v26 = (v1 + 32) & ~v1;
  v25 = v26 + *(*(updated - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v23 + v26);
  }

  else
  {
    v3 = *(v23 + v26);
  }

  sub_2B78(*(v23 + v26 + updated[5]), *(v23 + v26 + updated[5] + 8) & 1);
  v5 = *(v23 + v26 + updated[6]);

  v6 = *(v23 + v26 + updated[7] + 8);

  v7 = *(v23 + v26 + updated[8] + 8);

  v22 = (v23 + v26 + updated[9]);
  if (*v22)
  {
    v8 = v22[1];
  }

  v9 = v22[2];

  v19 = v23 + v26 + updated[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1))
  {
    (*(v21 + 8))(v19, v20);
  }

  v10 = *(v19 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v23 + v26 + updated[11] + 8);

  v12 = *(v23 + v26 + updated[12] + 8);

  v13 = *(v23 + v26 + updated[13] + 8);

  v14 = *(v23 + v26 + updated[14] + 8);

  v18 = (v23 + v26 + updated[15]);
  if (*v18)
  {
    v15 = v18[1];
  }

  v16 = v18[2];

  _objc_release(*(v23 + v26 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_42318(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for UpdateAvailableView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4242C;

  return sub_31C7C(a1, v7, v8, v1 + v9);
}

uint64_t sub_4242C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_42554(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  return a1;
}

uint64_t sub_42594()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_425E0()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_42958()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2EB38(v2);
}

uint64_t sub_429BC()
{
  updated = type metadata accessor for UpdateAvailableView();
  v0 = *(*(updated - 1) + 80);
  v24 = (v0 + 16) & ~v0;
  v23 = v24 + *(*(updated - 1) + 64);
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 8))(v21 + v24);
  }

  else
  {
    v1 = *(v21 + v24);
  }

  sub_2B78(*(v21 + v24 + updated[5]), *(v21 + v24 + updated[5] + 8) & 1);
  v3 = *(v21 + v24 + updated[6]);

  v4 = *(v21 + v24 + updated[7] + 8);

  v5 = *(v21 + v24 + updated[8] + 8);

  v20 = (v21 + v24 + updated[9]);
  if (*v20)
  {
    v6 = v20[1];
  }

  v7 = v20[2];

  v17 = v21 + v24 + updated[10];
  v18 = sub_22FC(&qword_B4E08, &unk_9B630);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1))
  {
    (*(v19 + 8))(v17, v18);
  }

  v8 = *(v17 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v9 = *(v21 + v24 + updated[11] + 8);

  v10 = *(v21 + v24 + updated[12] + 8);

  v11 = *(v21 + v24 + updated[13] + 8);

  v12 = *(v21 + v24 + updated[14] + 8);

  v16 = (v21 + v24 + updated[15]);
  if (*v16)
  {
    v13 = v16[1];
  }

  v14 = v16[2];

  _objc_release(*(v21 + v24 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_42D34()
{
  v1 = *(type metadata accessor for UpdateAvailableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2F7F4(v2);
}

uint64_t sub_42D98()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v26 = (v1 + 32) & ~v1;
  v25 = v26 + *(*(updated - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v23 + v26);
  }

  else
  {
    v3 = *(v23 + v26);
  }

  sub_2B78(*(v23 + v26 + updated[5]), *(v23 + v26 + updated[5] + 8) & 1);
  v5 = *(v23 + v26 + updated[6]);

  v6 = *(v23 + v26 + updated[7] + 8);

  v7 = *(v23 + v26 + updated[8] + 8);

  v22 = (v23 + v26 + updated[9]);
  if (*v22)
  {
    v8 = v22[1];
  }

  v9 = v22[2];

  v19 = v23 + v26 + updated[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1))
  {
    (*(v21 + 8))(v19, v20);
  }

  v10 = *(v19 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v23 + v26 + updated[11] + 8);

  v12 = *(v23 + v26 + updated[12] + 8);

  v13 = *(v23 + v26 + updated[13] + 8);

  v14 = *(v23 + v26 + updated[14] + 8);

  v18 = (v23 + v26 + updated[15]);
  if (*v18)
  {
    v15 = v18[1];
  }

  v16 = v18[2];

  _objc_release(*(v23 + v26 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_43118(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for UpdateAvailableView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4322C;

  return sub_2FDCC(a1, v7, v8, v1 + v9);
}

uint64_t sub_4322C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_43384()
{
  updated = type metadata accessor for UpdateAvailableView();
  v1 = *(*(updated - 1) + 80);
  v26 = (v1 + 32) & ~v1;
  v25 = v26 + *(*(updated - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_99450();
    (*(*(v4 - 8) + 8))(v23 + v26);
  }

  else
  {
    v3 = *(v23 + v26);
  }

  sub_2B78(*(v23 + v26 + updated[5]), *(v23 + v26 + updated[5] + 8) & 1);
  v5 = *(v23 + v26 + updated[6]);

  v6 = *(v23 + v26 + updated[7] + 8);

  v7 = *(v23 + v26 + updated[8] + 8);

  v22 = (v23 + v26 + updated[9]);
  if (*v22)
  {
    v8 = v22[1];
  }

  v9 = v22[2];

  v19 = v23 + v26 + updated[10];
  v20 = sub_22FC(&qword_B4E08, &unk_9B630);
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1))
  {
    (*(v21 + 8))(v19, v20);
  }

  v10 = *(v19 + *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28));

  v11 = *(v23 + v26 + updated[11] + 8);

  v12 = *(v23 + v26 + updated[12] + 8);

  v13 = *(v23 + v26 + updated[13] + 8);

  v14 = *(v23 + v26 + updated[14] + 8);

  v18 = (v23 + v26 + updated[15]);
  if (*v18)
  {
    v15 = v18[1];
  }

  v16 = v18[2];

  _objc_release(*(v23 + v26 + updated[16]));
  return swift_deallocObject();
}

uint64_t sub_43704(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for UpdateAvailableView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_43818;

  return sub_2F110(a1, v7, v8, v1 + v9);
}

uint64_t sub_43818()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_43978()
{
  v2 = qword_B5630;
  if (!qword_B5630)
  {
    sub_87B4(&qword_B5628, &unk_9BD10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5630);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_43A00(uint64_t a1)
{
  v33 = *(sub_22FC(&qword_B5440, &qword_9B710) + 44);
  v35 = *(sub_22FC(&qword_B5448, &qword_9B718) + 44);
  v36 = a1 + v33 + v35;
  sub_88E0(*v36, *(v36 + 8), *(v36 + 16) & 1);
  v1 = *(v36 + 24);

  v37 = *(sub_22FC(&qword_B5450, &unk_9B720) + 48);
  v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  if (!(*(*(v2 - 8) + 48))(v36 + v37, 1))
  {
    v3 = sub_99350();
    (*(*(v3 - 8) + 8))(a1 + v33 + v35 + v37);
  }

  v32 = a1 + v33 + *(sub_22FC(&qword_B5458, &qword_9B730) + 48);
  sub_22FC(&qword_B5460, &qword_9B738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22FC(&qword_B54D0, &qword_9B7A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_999D0();
      (*(*(v18 - 8) + 8))(v32);
      v23 = v32 + *(sub_22FC(&qword_B54D8, &qword_9B7B0) + 48);
      v19 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v19 - 8) + 8))(v23);
      v24 = (v23 + *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36));
      v20 = *v24;

      v21 = v24[2];
    }
  }

  else
  {
    sub_22FC(&qword_B5468, &qword_9B740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FC(&qword_B54A8, &qword_9B780);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_999D0();
        (*(*(v16 - 8) + 8))(v32);
        v25 = v32 + *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
        v17 = sub_22FC(&qword_B54C8, &qword_9B7A0);
        (*(*(v17 - 8) + 8))(v25);
      }

      else
      {
        v12 = sub_999D0();
        (*(*(v12 - 8) + 8))(v32);
        v26 = v32 + *(sub_22FC(&qword_B54B0, &qword_9B788) + 48);
        v13 = sub_22FC(&qword_B4E28, &qword_9AD50);
        (*(*(v13 - 8) + 8))(v26);
        v27 = (v26 + *(sub_22FC(&qword_B54B8, &qword_9B790) + 36));
        v14 = *v27;

        v15 = v27[2];
      }
    }

    else
    {
      sub_22FC(&qword_B5470, &qword_9B748);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = sub_999D0();
        (*(*(v8 - 8) + 8))(v32);
        v28 = v32 + *(sub_22FC(&qword_B5490, &qword_9B768) + 48);
        v9 = sub_22FC(&qword_B5498, &qword_9B770);
        (*(*(v9 - 8) + 8))(v28);
        v29 = (v28 + *(sub_22FC(&qword_B54A0, &qword_9B778) + 36));
        v10 = *v29;

        v11 = v29[2];
      }

      else
      {
        v4 = sub_999D0();
        (*(*(v4 - 8) + 8))(v32);
        v30 = v32 + *(sub_22FC(&qword_B5478, &qword_9B750) + 48);
        v5 = sub_22FC(&qword_B5480, &qword_9B758);
        (*(*(v5 - 8) + 8))(v30);
        v31 = (v30 + *(sub_22FC(&qword_B5488, &qword_9B760) + 36));
        v6 = *v31;

        v7 = v31[2];
      }
    }
  }

  return a1;
}

uint64_t sub_44090(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v62 = *(sub_22FC(&qword_B5440, &qword_9B710) + 44);
  v63 = a2 + v62;
  *v63 = *(a1 + v62);
  *(v63 + 16) = *(a1 + v62 + 16);
  v64 = *(sub_22FC(&qword_B5448, &qword_9B718) + 44);
  v71 = a1 + v62 + v64;
  v65 = *v71;
  v66 = *(v71 + 8);
  v67 = *(v71 + 16);
  sub_F84C(*v71, v66, v67 & 1);
  v68 = a2 + v62 + v64;
  *v68 = v65;
  *(v68 + 8) = v66;
  *(v68 + 16) = v67 & 1;
  v69 = *(v71 + 24);

  *(v68 + 24) = v69;
  v70 = *(sub_22FC(&qword_B5450, &unk_9B720) + 48);
  v72 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v71 + v70, 1))
  {
    v3 = sub_22FC(&qword_B4E98, &qword_9AD70);
    memcpy((a2 + v62 + v64 + v70), (a1 + v62 + v64 + v70), *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_99350();
    v59 = a2 + v62 + v64 + v70;
    (*(*(v2 - 8) + 16))();
    memcpy((v59 + *(v72 + 36)), (a1 + v62 + v64 + v70 + *(v72 + 36)), 0x29uLL);
    (*(v73 + 56))(v59, 0, 1, v72);
  }

  v4 = sub_22FC(&qword_B5458, &qword_9B730);
  v57 = (a2 + v62 + *(v4 + 48));
  v58 = (a1 + v62 + *(v4 + 48));
  sub_22FC(&qword_B5460, &qword_9B738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_22FC(&qword_B54D0, &qword_9B7A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = sub_999D0();
      (*(*(v21 - 8) + 16))(v57, v58);
      v22 = sub_22FC(&qword_B54D8, &qword_9B7B0);
      v26 = &v57[*(v22 + 48)];
      v27 = &v58[*(v22 + 48)];
      v23 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v23 - 8) + 16))(v26, v27);
      v24 = sub_22FC(&qword_B54E0, &qword_9B7B8);
      v31 = &v26[*(v24 + 36)];
      v29 = &v27[*(v24 + 36)];
      v28 = *v29;

      *v31 = v28;
      v30 = *(v29 + 1);
      v32 = *(v29 + 2);

      *(v31 + 1) = v30;
      *(v31 + 2) = v32;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v57, v58, *(*(v33 - 8) + 64));
    }
  }

  else
  {
    sub_22FC(&qword_B5468, &qword_9B740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FC(&qword_B54A8, &qword_9B780);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = sub_999D0();
        (*(*(v18 - 8) + 16))(v57, v58);
        v19 = sub_22FC(&qword_B54C0, &qword_9B798);
        v35 = &v57[*(v19 + 48)];
        v34 = &v58[*(v19 + 48)];
        v20 = sub_22FC(&qword_B54C8, &qword_9B7A0);
        (*(*(v20 - 8) + 16))(v35, v34);
      }

      else
      {
        v13 = sub_999D0();
        (*(*(v13 - 8) + 16))(v57, v58);
        v14 = sub_22FC(&qword_B54B0, &qword_9B788);
        v36 = &v57[*(v14 + 48)];
        v37 = &v58[*(v14 + 48)];
        v15 = sub_22FC(&qword_B4E28, &qword_9AD50);
        (*(*(v15 - 8) + 16))(v36, v37);
        v16 = sub_22FC(&qword_B5518, &unk_9B7D0);
        memcpy(&v36[*(v16 + 36)], &v37[*(v16 + 36)], 0x29uLL);
        v17 = sub_22FC(&qword_B54B8, &qword_9B790);
        v41 = &v36[*(v17 + 36)];
        v39 = &v37[*(v17 + 36)];
        v38 = *v39;

        *v41 = v38;
        v40 = *(v39 + 1);
        v42 = *(v39 + 2);

        *(v41 + 1) = v40;
        *(v41 + 2) = v42;
      }
    }

    else
    {
      sub_22FC(&qword_B5470, &qword_9B748);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_999D0();
        (*(*(v9 - 8) + 16))(v57, v58);
        v10 = sub_22FC(&qword_B5490, &qword_9B768);
        v43 = &v57[*(v10 + 48)];
        v44 = &v58[*(v10 + 48)];
        v11 = sub_22FC(&qword_B5498, &qword_9B770);
        (*(*(v11 - 8) + 16))(v43, v44);
        v12 = sub_22FC(&qword_B54A0, &qword_9B778);
        v48 = &v43[*(v12 + 36)];
        v46 = &v44[*(v12 + 36)];
        v45 = *v46;

        *v48 = v45;
        v47 = *(v46 + 1);
        v49 = *(v46 + 2);

        *(v48 + 1) = v47;
        *(v48 + 2) = v49;
      }

      else
      {
        v5 = sub_999D0();
        (*(*(v5 - 8) + 16))(v57, v58);
        v6 = sub_22FC(&qword_B5478, &qword_9B750);
        v50 = &v57[*(v6 + 48)];
        v51 = &v58[*(v6 + 48)];
        v7 = sub_22FC(&qword_B5480, &qword_9B758);
        (*(*(v7 - 8) + 16))(v50, v51);
        v8 = sub_22FC(&qword_B5488, &qword_9B760);
        v55 = &v50[*(v8 + 36)];
        v53 = &v51[*(v8 + 36)];
        v52 = *v53;

        *v55 = v52;
        v54 = *(v53 + 1);
        v56 = *(v53 + 2);

        *(v55 + 1) = v54;
        *(v55 + 2) = v56;
      }
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_44B68()
{
  v2 = qword_B5698;
  if (!qword_B5698)
  {
    sub_87B4(&qword_B5690, &qword_9BD78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_44BF0()
{
  v2 = qword_B56A0;
  if (!qword_B56A0)
  {
    sub_87B4(&qword_B5688, &qword_9BD70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_44C78(uint64_t a1)
{
  v6 = *(sub_22FC(&qword_B5448, &qword_9B718) + 44);
  sub_88E0(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16) & 1);
  v1 = *(a1 + v6 + 24);

  v7 = *(sub_22FC(&qword_B5450, &unk_9B720) + 48);
  v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  if (!(*(*(v2 - 8) + 48))(a1 + v6 + v7, 1))
  {
    v3 = sub_99350();
    (*(*(v3 - 8) + 8))(a1 + v6 + v7);
  }

  return a1;
}

unint64_t sub_44DB0()
{
  v2 = qword_B56A8;
  if (!qword_B56A8)
  {
    sub_999D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_44E30(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FC(&qword_B4E28, &qword_9AD50);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36);
  v6 = *(a1 + v5);

  v9 = a2 + v5;
  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);

  result = a2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  return result;
}

uint64_t sub_44F20(uint64_t a1, uint64_t a2)
{
  v2 = sub_999D0();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_22FC(&qword_B54D8, &qword_9B7B0) + 48);
  v3 = sub_22FC(&qword_B4E28, &qword_9AD50);
  (*(*(v3 - 8) + 16))();
  v7 = *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36);
  v9 = (a1 + v5 + v7);
  v8 = *v9;

  v12 = (a2 + v5 + v7);
  *v12 = v8;
  v11 = v9[1];
  v13 = v9[2];

  result = a2;
  v12[1] = v11;
  v12[2] = v13;
  return result;
}

unint64_t sub_45084()
{
  v2 = qword_B56B0;
  if (!qword_B56B0)
  {
    sub_87B4(&qword_B5638, &qword_9BD20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4510C(uint64_t a1)
{
  v1 = sub_999D0();
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(sub_22FC(&qword_B54D8, &qword_9B7B0) + 48);
  v2 = sub_22FC(&qword_B4E28, &qword_9AD50);
  (*(*(v2 - 8) + 8))();
  v7 = (a1 + v6 + *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36));
  v3 = *v7;

  v4 = v7[2];

  return a1;
}

unint64_t sub_4520C()
{
  v2 = qword_B56B8;
  if (!qword_B56B8)
  {
    sub_87B4(&qword_B5670, &qword_9BD58);
    sub_452B4();
    sub_4546C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_452B4()
{
  v2 = qword_B56C0;
  if (!qword_B56C0)
  {
    sub_87B4(&qword_B5668, &qword_9BD50);
    sub_4535C();
    sub_453E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4535C()
{
  v2 = qword_B56C8;
  if (!qword_B56C8)
  {
    sub_87B4(&qword_B5678, &qword_9BD60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_453E4()
{
  v2 = qword_B56D0;
  if (!qword_B56D0)
  {
    sub_87B4(&qword_B5660, &qword_9BD48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4546C()
{
  v2 = qword_B56D8;
  if (!qword_B56D8)
  {
    sub_87B4(&qword_B5650, &qword_9BD38);
    sub_45514();
    sub_4559C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_45514()
{
  v2 = qword_B56E0;
  if (!qword_B56E0)
  {
    sub_87B4(&qword_B5658, &qword_9BD40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4559C()
{
  v2 = qword_B56E8;
  if (!qword_B56E8)
  {
    sub_87B4(&qword_B5648, &qword_9BD30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_45624()
{
  v2 = qword_B56F0;
  if (!qword_B56F0)
  {
    sub_87B4(&qword_B5640, &qword_9BD28);
    sub_45084();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_456C8(uint64_t a1)
{
  sub_22FC(&qword_B54D0, &qword_9B7A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_999D0();
    (*(*(v1 - 8) + 8))(a1);
    v6 = a1 + *(sub_22FC(&qword_B54D8, &qword_9B7B0) + 48);
    v2 = sub_22FC(&qword_B4E28, &qword_9AD50);
    (*(*(v2 - 8) + 8))(v6);
    v7 = (v6 + *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36));
    v3 = *v7;

    v4 = v7[2];
  }

  return a1;
}

char *sub_457F4(char *a1, char *a2)
{
  sub_22FC(&qword_B5460, &qword_9B738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_22FC(&qword_B54D0, &qword_9B7A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = sub_999D0();
      (*(*(v22 - 8) + 32))(a2, a1);
      v23 = sub_22FC(&qword_B54D8, &qword_9B7B0);
      v29 = &a2[*(v23 + 48)];
      v30 = &a1[*(v23 + 48)];
      v24 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v24 - 8) + 32))(v29, v30);
      v25 = sub_22FC(&qword_B54E0, &qword_9B7B8);
      v26 = &v29[*(v25 + 36)];
      v27 = &v30[*(v25 + 36)];
      *v26 = *v27;
      *(v26 + 2) = *(v27 + 2);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v31 - 8) + 64));
    }
  }

  else
  {
    sub_22FC(&qword_B5468, &qword_9B740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FC(&qword_B54A8, &qword_9B780);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = sub_999D0();
        (*(*(v19 - 8) + 32))(a2, a1);
        v20 = sub_22FC(&qword_B54C0, &qword_9B798);
        v33 = &a2[*(v20 + 48)];
        v32 = &a1[*(v20 + 48)];
        v21 = sub_22FC(&qword_B54C8, &qword_9B7A0);
        (*(*(v21 - 8) + 32))(v33, v32);
      }

      else
      {
        v12 = sub_999D0();
        (*(*(v12 - 8) + 32))(a2, a1);
        v13 = sub_22FC(&qword_B54B0, &qword_9B788);
        v34 = &a2[*(v13 + 48)];
        v35 = &a1[*(v13 + 48)];
        v14 = sub_22FC(&qword_B4E28, &qword_9AD50);
        (*(*(v14 - 8) + 32))(v34, v35);
        v15 = sub_22FC(&qword_B5518, &unk_9B7D0);
        memcpy(&v34[*(v15 + 36)], &v35[*(v15 + 36)], 0x29uLL);
        v16 = sub_22FC(&qword_B54B8, &qword_9B790);
        v17 = &v34[*(v16 + 36)];
        v18 = &v35[*(v16 + 36)];
        *v17 = *v18;
        *(v17 + 2) = *(v18 + 2);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_22FC(&qword_B5470, &qword_9B748);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = sub_999D0();
        (*(*(v8 - 8) + 32))(a2, a1);
        v9 = sub_22FC(&qword_B5490, &qword_9B768);
        v36 = &a2[*(v9 + 48)];
        v37 = &a1[*(v9 + 48)];
        v10 = sub_22FC(&qword_B5498, &qword_9B770);
        (*(*(v10 - 8) + 32))(v36, v37);
        v11 = sub_22FC(&qword_B54A0, &qword_9B778);
        v6 = &v36[*(v11 + 36)];
        v7 = &v37[*(v11 + 36)];
      }

      else
      {
        v2 = sub_999D0();
        (*(*(v2 - 8) + 32))(a2, a1);
        v3 = sub_22FC(&qword_B5478, &qword_9B750);
        v38 = &a2[*(v3 + 48)];
        v39 = &a1[*(v3 + 48)];
        v4 = sub_22FC(&qword_B5480, &qword_9B758);
        (*(*(v4 - 8) + 32))(v38, v39);
        v5 = sub_22FC(&qword_B5488, &qword_9B760);
        v6 = &v38[*(v5 + 36)];
        v7 = &v39[*(v5 + 36)];
      }

      *v6 = *v7;
      *(v6 + 2) = *(v7 + 2);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_45EC0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = *(sub_22FC(&qword_B5448, &qword_9B718) + 44);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = *(a1 + v8 + 16);
  sub_F84C(v9, v10, v11 & 1);
  v12 = a2 + v8;
  *v12 = v9;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11 & 1;
  v13 = *(a1 + v8 + 24);

  *(v12 + 24) = v13;
  v14 = *(sub_22FC(&qword_B5450, &unk_9B720) + 48);
  v15 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1 + v8 + v14, 1))
  {
    v3 = sub_22FC(&qword_B4E98, &qword_9AD70);
    memcpy((a2 + v8 + v14), (a1 + v8 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_99350();
    v5 = a2 + v8 + v14;
    (*(*(v2 - 8) + 16))();
    memcpy((v5 + *(v15 + 36)), (a1 + v8 + v14 + *(v15 + 36)), 0x29uLL);
    (*(v16 + 56))(v5, 0, 1, v15);
  }

  return a2;
}

char *sub_46150(char *a1, char *a2)
{
  sub_22FC(&qword_B5460, &qword_9B738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_22FC(&qword_B54D0, &qword_9B7A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_999D0();
      (*(*(v18 - 8) + 16))(a2, a1);
      v19 = sub_22FC(&qword_B54D8, &qword_9B7B0);
      v23 = &a2[*(v19 + 48)];
      v24 = &a1[*(v19 + 48)];
      v20 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v20 - 8) + 16))(v23, v24);
      v21 = sub_22FC(&qword_B54E0, &qword_9B7B8);
      v28 = &v23[*(v21 + 36)];
      v26 = &v24[*(v21 + 36)];
      v25 = *v26;

      *v28 = v25;
      v27 = *(v26 + 1);
      v29 = *(v26 + 2);

      *(v28 + 1) = v27;
      *(v28 + 2) = v29;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v30 - 8) + 64));
    }
  }

  else
  {
    sub_22FC(&qword_B5468, &qword_9B740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FC(&qword_B54A8, &qword_9B780);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_999D0();
        (*(*(v15 - 8) + 16))(a2, a1);
        v16 = sub_22FC(&qword_B54C0, &qword_9B798);
        v32 = &a2[*(v16 + 48)];
        v31 = &a1[*(v16 + 48)];
        v17 = sub_22FC(&qword_B54C8, &qword_9B7A0);
        (*(*(v17 - 8) + 16))(v32, v31);
      }

      else
      {
        v10 = sub_999D0();
        (*(*(v10 - 8) + 16))(a2, a1);
        v11 = sub_22FC(&qword_B54B0, &qword_9B788);
        v33 = &a2[*(v11 + 48)];
        v34 = &a1[*(v11 + 48)];
        v12 = sub_22FC(&qword_B4E28, &qword_9AD50);
        (*(*(v12 - 8) + 16))(v33, v34);
        v13 = sub_22FC(&qword_B5518, &unk_9B7D0);
        memcpy(&v33[*(v13 + 36)], &v34[*(v13 + 36)], 0x29uLL);
        v14 = sub_22FC(&qword_B54B8, &qword_9B790);
        v38 = &v33[*(v14 + 36)];
        v36 = &v34[*(v14 + 36)];
        v35 = *v36;

        *v38 = v35;
        v37 = *(v36 + 1);
        v39 = *(v36 + 2);

        *(v38 + 1) = v37;
        *(v38 + 2) = v39;
      }
    }

    else
    {
      sub_22FC(&qword_B5470, &qword_9B748);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v6 = sub_999D0();
        (*(*(v6 - 8) + 16))(a2, a1);
        v7 = sub_22FC(&qword_B5490, &qword_9B768);
        v40 = &a2[*(v7 + 48)];
        v41 = &a1[*(v7 + 48)];
        v8 = sub_22FC(&qword_B5498, &qword_9B770);
        (*(*(v8 - 8) + 16))(v40, v41);
        v9 = sub_22FC(&qword_B54A0, &qword_9B778);
        v45 = &v40[*(v9 + 36)];
        v43 = &v41[*(v9 + 36)];
        v42 = *v43;

        *v45 = v42;
        v44 = *(v43 + 1);
        v46 = *(v43 + 2);

        *(v45 + 1) = v44;
        *(v45 + 2) = v46;
      }

      else
      {
        v2 = sub_999D0();
        (*(*(v2 - 8) + 16))(a2, a1);
        v3 = sub_22FC(&qword_B5478, &qword_9B750);
        v47 = &a2[*(v3 + 48)];
        v48 = &a1[*(v3 + 48)];
        v4 = sub_22FC(&qword_B5480, &qword_9B758);
        (*(*(v4 - 8) + 16))(v47, v48);
        v5 = sub_22FC(&qword_B5488, &qword_9B760);
        v52 = &v47[*(v5 + 36)];
        v50 = &v48[*(v5 + 36)];
        v49 = *v50;

        *v52 = v49;
        v51 = *(v50 + 1);
        v53 = *(v50 + 2);

        *(v52 + 1) = v51;
        *(v52 + 2) = v53;
      }
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_46904()
{
  v2 = qword_B56F8;
  if (!qword_B56F8)
  {
    sub_87B4(&qword_B5680, &qword_9BD68);
    sub_4520C();
    sub_45624();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B56F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_469AC(uint64_t a1)
{
  sub_22FC(&qword_B5460, &qword_9B738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22FC(&qword_B54D0, &qword_9B7A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_999D0();
      (*(*(v15 - 8) + 8))(a1);
      v20 = a1 + *(sub_22FC(&qword_B54D8, &qword_9B7B0) + 48);
      v16 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v16 - 8) + 8))(v20);
      v21 = (v20 + *(sub_22FC(&qword_B54E0, &qword_9B7B8) + 36));
      v17 = *v21;

      v18 = v21[2];
    }
  }

  else
  {
    sub_22FC(&qword_B5468, &qword_9B740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FC(&qword_B54A8, &qword_9B780);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = sub_999D0();
        (*(*(v13 - 8) + 8))(a1);
        v22 = a1 + *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
        v14 = sub_22FC(&qword_B54C8, &qword_9B7A0);
        (*(*(v14 - 8) + 8))(v22);
      }

      else
      {
        v9 = sub_999D0();
        (*(*(v9 - 8) + 8))(a1);
        v23 = a1 + *(sub_22FC(&qword_B54B0, &qword_9B788) + 48);
        v10 = sub_22FC(&qword_B4E28, &qword_9AD50);
        (*(*(v10 - 8) + 8))(v23);
        v24 = (v23 + *(sub_22FC(&qword_B54B8, &qword_9B790) + 36));
        v11 = *v24;

        v12 = v24[2];
      }
    }

    else
    {
      sub_22FC(&qword_B5470, &qword_9B748);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v5 = sub_999D0();
        (*(*(v5 - 8) + 8))(a1);
        v25 = a1 + *(sub_22FC(&qword_B5490, &qword_9B768) + 48);
        v6 = sub_22FC(&qword_B5498, &qword_9B770);
        (*(*(v6 - 8) + 8))(v25);
        v26 = (v25 + *(sub_22FC(&qword_B54A0, &qword_9B778) + 36));
        v7 = *v26;

        v8 = v26[2];
      }

      else
      {
        v1 = sub_999D0();
        (*(*(v1 - 8) + 8))(a1);
        v27 = a1 + *(sub_22FC(&qword_B5478, &qword_9B750) + 48);
        v2 = sub_22FC(&qword_B5480, &qword_9B758);
        (*(*(v2 - 8) + 8))(v27);
        v28 = (v27 + *(sub_22FC(&qword_B5488, &qword_9B760) + 36));
        v3 = *v28;

        v4 = v28[2];
      }
    }
  }

  return a1;
}

uint64_t sub_46ED0(uint64_t a1, uint64_t a2)
{
  v2 = sub_999D0();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
  v3 = sub_22FC(&qword_B54C8, &qword_9B7A0);
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_46FB0(uint64_t a1)
{
  v1 = sub_999D0();
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
  v2 = sub_22FC(&qword_B54C8, &qword_9B7A0);
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_47074(uint64_t a1)
{
  sub_22FC(&qword_B54A8, &qword_9B780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_999D0();
    (*(*(v5 - 8) + 8))(a1);
    v8 = a1 + *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
    v6 = sub_22FC(&qword_B54C8, &qword_9B7A0);
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
    v1 = sub_999D0();
    (*(*(v1 - 8) + 8))(a1);
    v9 = a1 + *(sub_22FC(&qword_B54B0, &qword_9B788) + 48);
    v2 = sub_22FC(&qword_B4E28, &qword_9AD50);
    (*(*(v2 - 8) + 8))(v9);
    v10 = (v9 + *(sub_22FC(&qword_B54B8, &qword_9B790) + 36));
    v3 = *v10;

    v4 = v10[2];
  }

  return a1;
}

uint64_t sub_47244(uint64_t a1)
{
  sub_22FC(&qword_B5468, &qword_9B740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22FC(&qword_B54A8, &qword_9B780);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_999D0();
      (*(*(v13 - 8) + 8))(a1);
      v16 = a1 + *(sub_22FC(&qword_B54C0, &qword_9B798) + 48);
      v14 = sub_22FC(&qword_B54C8, &qword_9B7A0);
      (*(*(v14 - 8) + 8))(v16);
    }

    else
    {
      v9 = sub_999D0();
      (*(*(v9 - 8) + 8))(a1);
      v17 = a1 + *(sub_22FC(&qword_B54B0, &qword_9B788) + 48);
      v10 = sub_22FC(&qword_B4E28, &qword_9AD50);
      (*(*(v10 - 8) + 8))(v17);
      v18 = (v17 + *(sub_22FC(&qword_B54B8, &qword_9B790) + 36));
      v11 = *v18;

      v12 = v18[2];
    }
  }

  else
  {
    sub_22FC(&qword_B5470, &qword_9B748);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_999D0();
      (*(*(v5 - 8) + 8))(a1);
      v19 = a1 + *(sub_22FC(&qword_B5490, &qword_9B768) + 48);
      v6 = sub_22FC(&qword_B5498, &qword_9B770);
      (*(*(v6 - 8) + 8))(v19);
      v20 = (v19 + *(sub_22FC(&qword_B54A0, &qword_9B778) + 36));
      v7 = *v20;

      v8 = v20[2];
    }

    else
    {
      v1 = sub_999D0();
      (*(*(v1 - 8) + 8))(a1);
      v21 = a1 + *(sub_22FC(&qword_B5478, &qword_9B750) + 48);
      v2 = sub_22FC(&qword_B5480, &qword_9B758);
      (*(*(v2 - 8) + 8))(v21);
      v22 = (v21 + *(sub_22FC(&qword_B5488, &qword_9B760) + 36));
      v3 = *v22;

      v4 = v22[2];
    }
  }

  return a1;
}