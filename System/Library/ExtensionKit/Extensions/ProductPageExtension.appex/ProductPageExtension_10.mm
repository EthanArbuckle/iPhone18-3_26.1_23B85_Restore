void sub_100129C94()
{
  if (!qword_100949D40)
  {
    sub_10075EDEC();
    sub_10000CE78(&qword_100949D48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D40);
    }
  }
}

void sub_100129D14()
{
  if (!qword_100949D50)
  {
    sub_100767F7C();
    sub_10000CE78(&qword_100949D48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D50);
    }
  }
}

void sub_100129D94()
{
  if (!qword_100949D58)
  {
    sub_100764E1C();
    sub_10000CE78(&qword_100949D48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D58);
    }
  }
}

void sub_100129E14()
{
  if (!qword_100949D60)
  {
    sub_100016F40(255, &qword_1009453B0);
    sub_10075E11C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D60);
    }
  }
}

uint64_t sub_100129E98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100766EDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C684(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xFu:
    case 0x1Bu:
      sub_10005C6E8(v13);
      goto LABEL_14;
    case 3u:
      sub_10000A5D4(&unk_100958DB0);

      v23 = sub_10075DB7C();
      (*(*(v23 - 8) + 8))(v13, v23);
      goto LABEL_14;
    case 4u:
      sub_10005C6E8(v13);
      v14 = &enum case for FlowPresentationContext.select(_:);
      goto LABEL_24;
    case 6u:
      sub_10005C6E8(v13);
      goto LABEL_11;
    case 7u:
      sub_10000A5D4(&qword_1009499F0);

      v22 = sub_10075DB7C();
      (*(*(v22 - 8) + 8))(v13, v22);
      goto LABEL_11;
    case 0xAu:

      v41 = *(sub_10000A5D4(&qword_100958CB0) + 64);
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.presentModalPopover(_:), v4);
      v42 = sub_100762D3C();
      return (*(*(v42 - 8) + 8))(&v13[v41], v42);
    case 0xEu:
      sub_10000A5D4(&qword_1009499C8);

      v33 = ASKDeviceTypeGetCurrent();
      v34 = sub_10076FF9C();
      v36 = v35;
      if (v34 == sub_10076FF9C() && v36 == v37)
      {

        v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v39 = sub_10077167C();

        v40 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
        if (v39)
        {
          v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v7, *v40, v4);
      (*(v5 + 32))(a1, v7, v4);
      return sub_10000CFBC(v13, &unk_1009435D0);
    case 0x11u:

      v15 = sub_10000A5D4(&qword_1009499B8);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = sub_10075DB7C();
      (*(*(v18 - 8) + 8))(&v13[v17], v18);
      v19 = sub_100762FAC();
      (*(*(v19 - 8) + 8))(&v13[v16], v19);
      goto LABEL_14;
    case 0x13u:
    case 0x17u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
      sub_10005C6E8(v13);
      goto LABEL_3;
    case 0x15u:

      v21 = sub_10000A5D4(&qword_100958CE0);
      sub_10000CFBC(&v13[*(v21 + 48)], &unk_1009435D0);
      goto LABEL_3;
    case 0x18u:
      sub_10000A5D4(&qword_100958CD0);

      v20 = sub_10075DB7C();
      (*(*(v20 - 8) + 8))(v13, v20);
LABEL_3:
      v14 = &enum case for FlowPresentationContext.presentModal(_:);
      goto LABEL_24;
    case 0x1Cu:
      sub_10000CFBC(v13, &unk_1009435D0);
LABEL_14:
      v24 = ASKDeviceTypeGetCurrent();
      v25 = sub_10076FF9C();
      v27 = v26;
      if (v25 == sub_10076FF9C() && v27 == v28)
      {

        v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v30 = sub_10077167C();

        v31 = &enum case for FlowPresentationContext.presentModalPageSheet(_:);
        if (v30)
        {
          v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v10, *v31, v4);
      return (*(v5 + 32))(a1, v10, v4);
    case 0x1Fu:
      v14 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      goto LABEL_24;
    case 0x2Du:
LABEL_11:
      v14 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
LABEL_24:
      result = (*(v5 + 104))(a1, *v14, v4);
      break;
    default:
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.push(_:), v4);
      result = sub_10005C6E8(v13);
      break;
  }

  return result;
}

uint64_t sub_10012A5D8()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005C684(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x73657461647075;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v17 = *(sub_10000A5D4(&qword_1009499F8) + 48);
      v18 = sub_10075F65C();
      (*(*(v18 - 8) + 8))(v3 + v17, v18);
      v19 = sub_10075DB7C();
      (*(*(v19 - 8) + 8))(v3, v19);
      return 0x6E776F6E6B6E75;
    case 2:
      sub_10005C6E8(v3);
      return 0x65746973626577;
    case 3:
      sub_10000A5D4(&unk_100958DB0);

      v13 = sub_10075DB7C();
      (*(*(v13 - 8) + 8))(v3, v13);
      return 0x5563696D616E7964;
    case 4:
      sub_10005C6E8(v3);
      return 0x686372616573;
    case 5:

      v21 = sub_10000A5D4(&qword_100958DA0);
      sub_10000CFBC(v3 + *(v21 + 48), &unk_1009435D0);
      return 0xD000000000000019;
    case 6:
      sub_10005C6E8(v3);
      return 0x7972656C6C6167;
    case 7:
      sub_10000A5D4(&qword_1009499F0);

      v28 = sub_10075DB7C();
      (*(*(v28 - 8) + 8))(v3, v28);
      return 0x6F65646976;
    case 8:

      v15 = sub_10000A5D4(&unk_100964150);
      sub_10000CFBC(v3 + *(v15 + 48), &unk_1009435D0);
      return 1701273968;
    case 9:

      v27 = sub_10000A5D4(&qword_1009499E8);
      sub_10000CFBC(v3 + *(v27 + 48), &unk_1009435D0);
      return 0x7472616843706F74;
    case 10:

      v11 = *(sub_10000A5D4(&qword_100958CB0) + 64);
      v12 = sub_100762D3C();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      return 0x6568536572616873;
    case 11:
      sub_10005C6E8(v3);
      return 0x6F4374726F706572;
    case 12:
      sub_10005C6E8(v3);
      return 0xD00000000000001ALL;
    case 13:

      v9 = *(sub_10000A5D4(&qword_1009499D0) + 48);
      v10 = sub_1007615AC();
      (*(*(v10 - 8) + 8))(v3 + v9, v10);
      return 0x656461637261;
    case 14:
      sub_10000A5D4(&qword_1009499C8);

      sub_10000CFBC(v3, &unk_1009435D0);
      return 0x7553656461637261;
    case 15:
    case 33:
      sub_10005C6E8(v3);
      return 0xD000000000000013;
    case 16:

      v7 = *(sub_10000A5D4(&qword_1009499C0) + 48);
      v8 = sub_10075DB7C();
      goto LABEL_29;
    case 17:

      v22 = sub_10000A5D4(&qword_1009499B8);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = sub_10075DB7C();
      (*(*(v25 - 8) + 8))(v3 + v24, v25);
      v26 = sub_100762FAC();
      (*(*(v26 - 8) + 8))(v3 + v23, v26);
      return 0x6557656461637261;
    case 18:
      sub_10005C6E8(v3);
      return 0xD00000000000001CLL;
    case 19:
      sub_10005C6E8(v3);
      return 0x746E6F4377656976;
    case 20:
      v20 = sub_10075DB7C();
      (*(*(v20 - 8) + 8))(v3, v20);
      return 0x7961646F74;
    case 21:

      v31 = sub_10000A5D4(&qword_100958CE0);
      sub_10000CFBC(v3 + *(v31 + 48), &unk_1009435D0);
      return 0x656C6369747261;
    case 22:
      sub_10005C6E8(v3);
      return 0x6573616863727570;
    case 23:
      sub_10005C6E8(v3);
      return 0x6775626564;
    case 24:
      sub_10000A5D4(&qword_100958CD0);

      v16 = sub_10075DB7C();
      (*(*(v16 - 8) + 8))(v3, v16);
      goto LABEL_21;
    case 25:
      v34 = *(sub_10000A5D4(&unk_100958CC0) + 48);
      v35 = sub_10076B96C();
      (*(*(v35 - 8) + 8))(v3 + v34, v35);
      v36 = sub_10075DB7C();
      (*(*(v36 - 8) + 8))(v3, v36);
      return 0x7665526574697277;
    case 26:
      sub_10005C6E8(v3);
      return 0x73776569766572;
    case 27:
      sub_10005C6E8(v3);
      return 0x746E756F636361;
    case 28:
      sub_10000CFBC(v3, &unk_1009435D0);
      return 0x65636E616E6966;
    case 29:
      v29 = sub_10000A5D4(&qword_1009499D8);
      sub_10000CFBC(v3 + *(v29 + 48), &qword_1009499B0);
      v30 = sub_10075DB7C();
      (*(*(v30 - 8) + 8))(v3, v30);
      return 7304045;
    case 30:
      sub_10005C6E8(v3);
      return 0x486E6F6973726576;
    case 31:
      return 0x696472616F626E6FLL;
    case 32:
      sub_10005C6E8(v3);
      return 0x6544776569766572;
    case 34:
      sub_10005C6E8(v3);
      goto LABEL_7;
    case 35:
      sub_10005C6E8(v3);
      return 0xD000000000000017;
    case 36:
      sub_10005C6E8(v3);
      return 0x6D65766569686361;
    case 37:

      v33 = sub_10000A5D4(&unk_100964150);
      sub_10000CFBC(v3 + *(v33 + 48), &unk_1009435D0);
      return 0x4479636176697270;
    case 38:

      v32 = sub_10000A5D4(&unk_100964150);
      sub_10000CFBC(v3 + *(v32 + 48), &unk_1009435D0);
      return 0xD000000000000012;
    case 39:

      v14 = sub_10000A5D4(&unk_100964150);
      sub_10000CFBC(v3 + *(v14 + 48), &unk_1009435D0);
      goto LABEL_21;
    case 40:
      sub_10005C6E8(v3);
      return 0x746E657645707061;
    case 41:
      sub_10005C6E8(v3);
      goto LABEL_46;
    case 42:
      sub_10005C6E8(v3);
      return 0x657449726566666FLL;
    case 43:

      v7 = *(sub_10000A5D4(&unk_100958C90) + 48);
      v8 = sub_10075E11C();
LABEL_29:
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      return 0xD000000000000011;
    case 44:
      return result;
    case 45:
      return 0x75506E6564646968;
    case 46:
      return 0x6F53676E696D6F63;
    case 47:
LABEL_7:
      result = 0xD000000000000016;
      break;
    case 48:
LABEL_46:
      result = 0xD000000000000015;
      break;
    case 49:
LABEL_21:
      result = 0xD000000000000014;
      break;
    case 50:
      result = 0xD000000000000013;
      break;
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 52:
      result = 0x676E697373696DLL;
      break;
    default:
      sub_10000A5D4(&qword_100949A00);

      v6 = sub_10075DB7C();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x746375646F7270;
      break;
  }

  return result;
}

uint64_t sub_10012B484()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C684(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() - 7;
  result = 0;
  switch(v4)
  {
    case 0:
      sub_10000A5D4(&qword_1009499F0);

      goto LABEL_9;
    case 3:

      v9 = *(sub_10000A5D4(&qword_100958CB0) + 64);
      v10 = sub_100762D3C();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      goto LABEL_10;
    case 4:
    case 5:
    case 12:
    case 25:
    case 26:
    case 33:
    case 34:
    case 35:
      sub_10005C6E8(v3);
      return 0;
    case 14:

      v6 = &v3[*(sub_10000A5D4(&qword_100958CE0) + 48)];
      goto LABEL_6;
    case 18:
      v7 = *(sub_10000A5D4(&unk_100958CC0) + 48);
      v8 = sub_10076B96C();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
LABEL_9:
      v11 = sub_10075DB7C();
      (*(*(v11 - 8) + 8))(v3, v11);
LABEL_10:
      result = 0;
      break;
    case 21:
      v6 = v3;
LABEL_6:
      sub_10000CFBC(v6, &unk_1009435D0);
      result = 0;
      break;
    case 24:
      return result;
    default:
      sub_10005C6E8(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_10012B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a2;
  v29 = sub_1007621EC();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15(v11, v8);
  v16 = v27;
  sub_10012B9F4(v30);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  (*(v16 + 8))(v7, v28, a3, v16, v18, v20, v22, v24);
  return (*(v5 + 8))(v7, v29);
}

void sub_10012B9F4(uint64_t a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (sub_1007603BC() & 1) != 0)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v6 = sub_10076D9AC();
    sub_10000A61C(v6, qword_1009A2350);
    sub_10076462C();
    sub_10076D17C();
    sub_10076D40C();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t type metadata accessor for ProductPageLayoutSectionProvider()
{
  result = qword_100949D90;
  if (!qword_100949D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012BC14(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v141 = a8;
  v133 = a7;
  v135 = a6;
  v136 = a5;
  v134 = a4;
  v138 = a3;
  v142 = a10;
  v143 = a2;
  v140 = a9;
  v11 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v11 - 8);
  v122 = &v121 - v12;
  v130 = sub_10076C38C();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1007632CC();
  v128 = *(v131 - 1);
  __chkstk_darwin(v131);
  v127 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076341C();
  v139 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076B5BC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v121 - v22;
  v24 = sub_10000A5D4(&unk_100946720);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v121 - v28;
  v137 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v126 = v19;
  v31 = *(v19 + 88);
  v125 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v139 = &v121;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    sub_10076980C();
    v42 = sub_10076981C();
    v132 = v42(v137, sub_1000F79F4, &v121 - 4, v134, v136, v135, v133, v141, v140, v142);
    v43 = v123;
    sub_10076468C();
    swift_getKeyPath();
    v44 = v124;
    sub_10076F49C();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v143();
      v47 = sub_10075203C(v137, v46, v134, v136, v135, v133, v141, v140, v142);
    }

    else
    {
      v48 = v44;
      v47 = v132;
      v49 = v137;
      v50 = v142;
      v51 = v141;
      v52 = v135;
      v53 = v133;
      v54 = v136;
      v55 = v134;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v143();
        v57 = sub_100753380(v49, v56, v55, v54, v52, v53, v51, v140, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v100 = v126;
          (*(v126 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v132 setOrthogonalScrollingBehavior:2];
      }
    }

    v100 = v126;
LABEL_30:
    (*(v100 + 8))(v125, v33);
    return v47;
  }

  v35 = v143();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v126 = v35;
  v125 = v36;
  if (v36)
  {
    v37 = v35;
    sub_10076B4EC();
    v143 = v139[2];
    v38 = v37 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v39 = v139[9];
    v40 = (v139 + 1);
    v138 = _swiftEmptyArrayStorage;
    (v143)(v17, v38, v15);
    while (1)
    {
      sub_100130950(&qword_100949DE0, &type metadata accessor for Badge);
      sub_10076332C();
      (*v40)(v17, v15);
      if (v146)
      {
        sub_10077019C();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v138 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10077021C();
        }

        sub_10077025C();
        v138 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v143)(v17, v38, v15);
    }
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
  }

  v58 = v128;
  v59 = v127;
  (*(v128 + 104))(v127, enum case for InformationRibbon.Alignment.justified(_:), v131);
  v60 = v129;
  v61 = v137;
  sub_10076460C();
  sub_10076C2FC();
  v63 = v62;
  v65 = v64;
  v66 = v132 + 8;
  v67 = *(v132 + 1);
  v68 = v130;
  v67(v60, v130);
  sub_10076460C();
  sub_10076C24C();
  v70 = v69;
  v67(v60, v68);
  v71 = sub_10076461C();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v145.receiver = v73;
  v145.super_class = v72;
  v75 = objc_msgSendSuper2(&v145, "init");
  sub_10012E9D8(v138, v59, v75, v63, v65);
  v77 = v76;

  (*(v58 + 8))(v59, v131);
  if (!*(v77 + 16))
  {

    sub_100016F40(0, &unk_1009632E0);
    v97 = sub_10076469C();
    v98 = *(v97 - 8);
    v99 = v122;
    (*(v98 + 16))(v122, v61, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    v47 = sub_10077096C();
    sub_10000CFBC(v99, &unk_10095DCF0);

    return v47;
  }

  sub_10076460C();
  sub_10076C2FC();
  v131 = v67;
  v67(v60, v68);
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v78 = sub_100765C9C();
  sub_10000A61C(v78, qword_1009A04D8);
  v79 = sub_10076461C();
  sub_100765BDC();
  v81 = v80;

  v146 = _swiftEmptyArrayStorage;
  v82 = v136;
  v143 = *(v77 + 16);
  v132 = v66;
  if (!v143)
  {
    v88 = 0.0;
LABEL_32:

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v88];
    v104 = [v102 absoluteDimension:v81];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100016F40(0, &qword_100952C70);
    isa = sub_1007701AC().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    sub_100768A7C();
    sub_100016F40(0, &qword_100948C70);
    v108 = sub_1007701AC().super.isa;

    [v47 setBoundarySupplementaryItems:v108];

    sub_100768A6C();
    sub_100016F40(0, &qword_100949DE8);
    v109 = sub_1007701AC().super.isa;

    [v47 setDecorationItems:v109];

    v110 = v129;
    sub_10076460C();
    sub_10076C31C();
    v112 = v111;
    v114 = v113;
    v131(v110, v130);
    sub_10000CF78(v82, v82[3]);
    sub_100768A3C();
    v116 = v115;
    sub_10000CF78(v82, v82[3]);
    sub_100768A5C();
    [v47 setContentInsets:{v116, v112, v117, v114}];
    [v47 setOrthogonalScrollingBehavior:1];
    sub_1007697FC();
    v118 = sub_1007701DC();
    v120 = v119;

    if (v118)
    {
      aBlock[4] = v118;
      aBlock[5] = v120;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100751F08;
      aBlock[3] = &unk_100889728;
      v118 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v118];
    _Block_release(v118);

    return v47;
  }

  v83 = objc_opt_self();
  v138 = objc_opt_self();
  result = objc_opt_self();
  if (v125)
  {
    v85 = result;
    result = v141;
    if (v143 <= v125)
    {
      swift_getObjectType();
      v86 = 0;
      v128 = v77;
      v87 = v77 + 32;
      v88 = 0.0;
      do
      {
        v89 = *(v87 + 8 * v86);
        v90 = [v83 absoluteDimension:v89];
        v91 = [v83 absoluteDimension:v81];
        v92 = [v138 sizeWithWidthDimension:v90 heightDimension:v91];

        sub_10076815C();
        sub_100016F40(0, &unk_10095DD70);
        v93 = v92;
        v94 = sub_1007701AC().super.isa;

        v95 = [v85 itemWithLayoutSize:v93 supplementaryItems:v94];

        v96 = v95;
        sub_10077019C();
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        v86 = (v86 + 1);
        sub_10077025C();

        v88 = v88 + v89;
      }

      while (v143 != v86);
      v82 = v136;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10012CDBC(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6)
{
  LODWORD(v110) = a3;
  v117 = a2;
  v116 = a4;
  v9 = a4;
  v10 = sub_10075DE9C();
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v111 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v108 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v105 - v15;
  v17 = sub_10076D3DC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v114 = v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v109 = v105 - v21;
  __chkstk_darwin(v22);
  v115 = v105 - v23;
  __chkstk_darwin(v24);
  v26 = v105 - v25;
  __chkstk_darwin(v27);
  v29 = v105 - v28;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v107 = v105 - v32;
  v118 = a5;
  v33 = [a5 traitCollection];
  v106 = v26;
  if (v9 == 1)
  {
    v34 = v33;
    v35 = [v33 preferredContentSizeCategory];
    v36 = sub_10077084C();

    if (v36)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v37 = v117;
  v38 = sub_1000400FC(v117);
  v39 = sub_1000403C8(v37);
  [v38 size];
  [v39 size];

LABEL_6:
  v40 = v114;
  if (a1)
  {
    goto LABEL_44;
  }

  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v41._object = 0x80000001007CEC10;
  if (v110)
  {
    v42 = sub_100769B9C(v41);
  }

  else
  {
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    v42 = sub_1007622EC(v41, v122);
  }

  v105[1] = v42;
  v44 = v43;
  v45 = [v118 traitCollection];
  v105[2] = v44;
  if (v117 <= 1u)
  {
    if (v117)
    {
      if (qword_100940D10 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A1528;
    }

    else
    {
      if (qword_100940D08 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A1510;
    }
  }

  else if (v117 == 2)
  {
    if (v116)
    {
      if (qword_100940D30 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A1588;
    }

    else
    {
      if (qword_100940D38 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A15A0;
    }
  }

  else if (v117 == 3)
  {
    if (qword_100940D60 != -1)
    {
      swift_once();
    }

    v46 = qword_1009A1618;
  }

  else
  {
    if (qword_100940D68 != -1)
    {
      swift_once();
    }

    v46 = qword_1009A1630;
  }

  v47 = sub_10000A61C(v17, v46);
  (*(v18 + 16))(v29, v47, v17);
  v48 = v111;
  sub_10075DE6C();
  sub_1000408BC(v117, v16);
  (*(v112 + 8))(v48, v113);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_10000CFBC(v16, &unk_100943250);
    v49 = v107;
    (*(v18 + 32))(v107, v29, v17);
    v40 = v114;
  }

  else
  {
    v105[0] = a6;
    v50 = *(v18 + 32);
    v51 = v106;
    v50(v106, v16, v17);
    v52.super.isa = v45;
    isa = sub_10076D3BC(v52).super.isa;
    [(objc_class *)isa pointSize];
    v55 = v54;
    v56.super.isa = v45;
    v57 = sub_10076D3BC(v56).super.isa;
    [(objc_class *)v57 pointSize];
    v59 = v58;

    v60 = *(v18 + 8);
    if (v59 >= v55)
    {
      v60(v51, v17);
      v49 = v107;
      v61 = v107;
      v62 = v29;
    }

    else
    {
      v60(v29, v17);
      v49 = v107;
      v61 = v107;
      v62 = v51;
    }

    v50(v61, v62, v17);
    v40 = v114;
  }

  v63 = v116;
  v64 = [v118 traitCollection];
  if (v63 == 1)
  {
    v65 = v64;
    v66 = [v64 preferredContentSizeCategory];
    sub_10077084C();
  }

  else
  {
  }

  v67 = sub_10076C04C();
  v120 = v67;
  v121 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
  v68 = sub_10000DB7C(v119);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(v119);
  sub_10076991C();
  v70 = v69;

  (*(v18 + 8))(v49, v17);
  v71 = sub_10076C8CC();
  if (v116)
  {
    if ((v71 & 1) == 0)
    {
LABEL_44:
      v72._object = 0x80000001007CEB90;
      if (v110)
      {
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_100769B9C(v72);
      }

      else
      {
        v123._countAndFlagsBits = 0xD000000000000050;
        v123._object = 0x80000001007CEBB0;
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_1007622EC(v72, v123);
      }

      v75 = v73;
      v76 = v74;
      v77 = v109;
      v78 = [v118 traitCollection];
      v109 = v75;
      v110 = v76;
      if (v117 <= 1u)
      {
        if (v117)
        {
          if (qword_100940D10 != -1)
          {
            swift_once();
          }

          v79 = qword_1009A1528;
        }

        else
        {
          if (qword_100940D08 != -1)
          {
            swift_once();
          }

          v79 = qword_1009A1510;
        }
      }

      else if (v117 == 2)
      {
        if (v116)
        {
          if (qword_100940D30 != -1)
          {
            swift_once();
          }

          v79 = qword_1009A1588;
        }

        else
        {
          if (qword_100940D38 != -1)
          {
            swift_once();
          }

          v79 = qword_1009A15A0;
        }
      }

      else if (v117 == 3)
      {
        if (qword_100940D60 != -1)
        {
          swift_once();
        }

        v79 = qword_1009A1618;
      }

      else
      {
        if (qword_100940D68 != -1)
        {
          swift_once();
        }

        v79 = qword_1009A1630;
      }

      v80 = sub_10000A61C(v17, v79);
      (*(v18 + 16))(v77, v80, v17);
      v81 = v111;
      sub_10075DE6C();
      v82 = v108;
      sub_1000408BC(v117, v108);
      (*(v112 + 8))(v81, v113);
      if ((*(v18 + 48))(v82, 1, v17) == 1)
      {

        sub_10000CFBC(v82, &unk_100943250);
        (*(v18 + 32))(v115, v77, v17);
      }

      else
      {
        v83 = v77;
        v84 = *(v18 + 32);
        v84(v40, v82, v17);
        v85.super.isa = v78;
        v86 = sub_10076D3BC(v85).super.isa;
        [(objc_class *)v86 pointSize];
        v88 = v87;
        v89.super.isa = v78;
        v90 = sub_10076D3BC(v89).super.isa;
        [(objc_class *)v90 pointSize];
        v92 = v91;

        v93 = *(v18 + 8);
        if (v92 >= v88)
        {
          v93(v40, v17);
          v94 = v115;
          v95 = v83;
        }

        else
        {
          v93(v83, v17);
          v94 = v115;
          v95 = v40;
        }

        v84(v94, v95, v17);
      }

      v96 = v116;
      v97 = [v118 traitCollection];
      if (v96 == 1)
      {
        v98 = v97;
        v99 = [v97 preferredContentSizeCategory];
        sub_10077084C();
      }

      else
      {
      }

      v100 = sub_10076C04C();
      v120 = v100;
      v121 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
      v101 = sub_10000DB7C(v119);
      (*(*(v100 - 8) + 104))(v101, enum case for Feature.measurement_with_labelplaceholder(_:), v100);
      sub_10076C90C();
      sub_10000CD74(v119);
      v102 = v115;
      sub_10076991C();
      v70 = v103;

      (*(v18 + 8))(v102, v17);
    }
  }

  return v70;
}

double sub_10012DBC0(char a1, uint64_t a2, int a3, int a4, id a5)
{
  LODWORD(v111) = a3;
  v119 = a2;
  v118 = a4;
  v7 = a4;
  v8 = sub_10075DE9C();
  v114 = *(v8 - 8);
  v115 = v8;
  __chkstk_darwin(v8);
  v113 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v109 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v106 - v13;
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v110 = v106 - v20;
  __chkstk_darwin(v21);
  v117 = v106 - v22;
  __chkstk_darwin(v23);
  v25 = v106 - v24;
  __chkstk_darwin(v26);
  v28 = v106 - v27;
  __chkstk_darwin(v29);
  v108 = v106 - v30;
  v112 = type metadata accessor for EditorsChoiceView();
  v31 = [a5 traitCollection];
  v107 = v25;
  if (v7 == 1)
  {
    v32 = a5;
    v33 = v31;
    v34 = [v31 preferredContentSizeCategory];
    v35 = sub_10077084C();

    a5 = v32;
    if (v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v36 = v119;
  v37 = sub_1000400FC(v119);
  v38 = sub_1000403C8(v36);
  [v37 size];
  [v38 size];

LABEL_6:
  v39 = v18;
  v116 = a5;
  if (a1)
  {
    goto LABEL_44;
  }

  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x80000001007CEC10;
  if (v111)
  {
    v41 = sub_100769B9C(v40);
  }

  else
  {
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v41 = sub_1007622EC(v40, v123);
  }

  v43 = v41;
  v44 = v42;
  v45 = [a5 traitCollection];
  v106[2] = v44;
  v106[1] = v43;
  if (v119 <= 1u)
  {
    if (v119)
    {
      if (qword_100940D10 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A1528;
    }

    else
    {
      if (qword_100940D08 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A1510;
    }
  }

  else if (v119 == 2)
  {
    if (v118)
    {
      if (qword_100940D30 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A1588;
    }

    else
    {
      if (qword_100940D38 != -1)
      {
        swift_once();
      }

      v46 = qword_1009A15A0;
    }
  }

  else if (v119 == 3)
  {
    if (qword_100940D60 != -1)
    {
      swift_once();
    }

    v46 = qword_1009A1618;
  }

  else
  {
    if (qword_100940D68 != -1)
    {
      swift_once();
    }

    v46 = qword_1009A1630;
  }

  v47 = sub_10000A61C(v15, v46);
  (*(v16 + 16))(v28, v47, v15);
  v48 = v113;
  sub_10075DE6C();
  sub_1000408BC(v119, v14);
  (*(v114 + 8))(v48, v115);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_10000CFBC(v14, &unk_100943250);
    v49 = v108;
    (*(v16 + 32))(v108, v28, v15);
    a5 = v116;
  }

  else
  {
    v106[0] = v18;
    v50 = *(v16 + 32);
    v51 = v107;
    v50(v107, v14, v15);
    v52.super.isa = v45;
    isa = sub_10076D3BC(v52).super.isa;
    [(objc_class *)isa pointSize];
    v55 = v54;
    v56.super.isa = v45;
    v57 = sub_10076D3BC(v56).super.isa;
    [(objc_class *)v57 pointSize];
    v59 = v58;

    v60 = *(v16 + 8);
    if (v59 >= v55)
    {
      v60(v51, v15);
      v49 = v108;
      v61 = v108;
      v62 = v28;
    }

    else
    {
      v60(v28, v15);
      v49 = v108;
      v61 = v108;
      v62 = v51;
    }

    v50(v61, v62, v15);
    a5 = v116;
    v39 = v106[0];
  }

  v63 = v118;
  v64 = [a5 traitCollection];
  if (v63 == 1)
  {
    v65 = v64;
    v66 = [v64 preferredContentSizeCategory];
    sub_10077084C();
  }

  else
  {
  }

  v67 = sub_10076C04C();
  v121 = v67;
  v122 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
  v68 = sub_10000DB7C(v120);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(v120);
  sub_10076991C();
  v70 = v69;

  (*(v16 + 8))(v49, v15);
  v71 = sub_10076C8CC();
  if (v118)
  {
    if ((v71 & 1) == 0)
    {
LABEL_44:
      v72._object = 0x80000001007CEB90;
      if (v111)
      {
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_100769B9C(v72);
      }

      else
      {
        v124._countAndFlagsBits = 0xD000000000000050;
        v124._object = 0x80000001007CEBB0;
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_1007622EC(v72, v124);
      }

      v75 = v73;
      v76 = v74;
      v78 = v109;
      v77 = v110;
      v79 = [a5 traitCollection];
      v111 = v75;
      if (v119 <= 1u)
      {
        if (v119)
        {
          v80 = v79;
          if (qword_100940D10 != -1)
          {
            swift_once();
          }

          v81 = qword_1009A1528;
        }

        else
        {
          v80 = v79;
          if (qword_100940D08 != -1)
          {
            swift_once();
          }

          v81 = qword_1009A1510;
        }
      }

      else if (v119 == 2)
      {
        if (v118)
        {
          v80 = v79;
          if (qword_100940D30 != -1)
          {
            swift_once();
          }

          v81 = qword_1009A1588;
        }

        else
        {
          v80 = v79;
          if (qword_100940D38 != -1)
          {
            swift_once();
          }

          v81 = qword_1009A15A0;
        }
      }

      else if (v119 == 3)
      {
        v80 = v79;
        if (qword_100940D60 != -1)
        {
          swift_once();
        }

        v81 = qword_1009A1618;
      }

      else
      {
        v80 = v79;
        if (qword_100940D68 != -1)
        {
          swift_once();
        }

        v81 = qword_1009A1630;
      }

      v82 = sub_10000A61C(v15, v81);
      (*(v16 + 16))(v77, v82, v15);
      v83 = v113;
      sub_10075DE6C();
      sub_1000408BC(v119, v78);
      (*(v114 + 8))(v83, v115);
      if ((*(v16 + 48))(v78, 1, v15) == 1)
      {

        sub_10000CFBC(v78, &unk_100943250);
        (*(v16 + 32))(v117, v77, v15);
      }

      else
      {
        v119 = v76;
        v84 = v77;
        v85 = *(v16 + 32);
        v85(v39, v78, v15);
        v86.super.isa = v80;
        v87 = sub_10076D3BC(v86).super.isa;
        [(objc_class *)v87 pointSize];
        v89 = v88;
        v90.super.isa = v80;
        v91 = sub_10076D3BC(v90).super.isa;
        [(objc_class *)v91 pointSize];
        v93 = v92;

        v94 = *(v16 + 8);
        if (v93 >= v89)
        {
          v94(v39, v15);
          v95 = v117;
          v96 = v84;
        }

        else
        {
          v94(v84, v15);
          v95 = v117;
          v96 = v39;
        }

        v85(v95, v96, v15);
      }

      v97 = v118;
      v98 = [v116 traitCollection];
      if (v97 == 1)
      {
        v99 = v98;
        v100 = [v98 preferredContentSizeCategory];
        sub_10077084C();
      }

      else
      {
      }

      v101 = sub_10076C04C();
      v121 = v101;
      v122 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
      v102 = sub_10000DB7C(v120);
      (*(*(v101 - 8) + 104))(v102, enum case for Feature.measurement_with_labelplaceholder(_:), v101);
      sub_10076C90C();
      sub_10000CD74(v120);
      v103 = v117;
      sub_10076991C();
      v70 = v104;

      (*(v16 + 8))(v103, v15);
    }
  }

  return v70;
}

void sub_10012E9D8(unint64_t a1, char *a2, void *a3, double a4, double a5)
{
  v10 = sub_1007632CC();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = sub_10077071C();

  if (v18)
  {
    if (!v15)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v20 = sub_10077158C();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = sub_10077023C();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_10078C990, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = sub_10077158C();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v19 = floor(a4 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = sub_10077149C();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_10012F018(v29, v27, 0, v21, a3, a4, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10049D1CC(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_10049D1CC((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      *&a2[8 * v15 + 32] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        a4 = a4 - v28;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = a2 + 32;
        v52 = _swiftEmptyArrayStorage;
        sub_1004BBAA4(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = v52[2];
        do
        {
          v36 = *&v14[8 * v34];
          v52 = v35;
          v37 = v35[3];
          if (a3 + v34 >= v37 >> 1)
          {
            sub_1004BBAA4((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          v35[2] = a3 + v34 + 1;
          *&v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = (v35 + 6);
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = *&v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_1004BDB10(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(a4 * (v46 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = sub_10077158C();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = sub_10077023C();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = sub_10077023C();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_10078C980, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10012F000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10012F018(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v122 = a4;
  v131 = a3;
  v133 = a2;
  v119 = sub_10076997C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10076256C();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = (&v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v127 = &v116 - v14;
  v134 = sub_100765C9C();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&qword_100949DF0);
  __chkstk_darwin(v17 - 8);
  v121 = &v116 - v18;
  v135 = sub_100766DEC();
  v141 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v140 = &v116 - v21;
  v137 = sub_10076D3DC();
  v120 = *(v137 - 8);
  __chkstk_darwin(v137);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076048C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10076C45C();
  v139 = *(v142 - 8);
  __chkstk_darwin(v142);
  v125 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v124 = &v116 - v30;
  __chkstk_darwin(v31);
  v33 = &v116 - v32;
  v143 = a1;
  sub_1004FFCD8();
  v136 = a5;
  if (v34)
  {
    if (qword_100940B98 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v137, qword_1009A10C0);
    v35 = sub_10076C04C();
    v147 = v35;
    v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
    v36 = sub_10000DB7C(v146);
    (*(*(v35 - 8) + 104))(v36, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
    sub_10076C90C();
    sub_10000CD74(v146);
    a5 = v136;
    sub_10076991C();
  }

  sub_10076B48C();
  v138 = *(v139 + 88);
  v37 = v138(v33, v142);
  v123 = enum case for BadgeType.rating(_:);
  if (v37 == enum case for BadgeType.rating(_:))
  {
    v38 = [a5 traitCollection];
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    (*(v25 + 104))(v27, enum case for SystemImage.star(_:), v24);
    v40 = [v39 configurationWithTraitCollection:v38];
    v41 = sub_10076046C();

    (*(v25 + 8))(v27, v24);
    [v41 contentInsets];
    [v41 contentInsets];
    [v41 size];
    [v41 contentInsets];
    [v41 contentInsets];
    [v41 size];

    v23 = v134;
    v42 = v132;
    v43 = v135;
LABEL_7:
    v44 = v142;
    goto LABEL_8;
  }

  if (v37 == enum case for BadgeType.contentRating(_:))
  {
    v48 = sub_10076B4CC();
    v49 = sub_10075E2FC();
    v42 = v132;
    v43 = v135;
    if (!*(v48 + 16))
    {

      v23 = v134;
      v44 = v142;
      goto LABEL_8;
    }

    v51 = sub_100561E0C(v49, v50);
    v53 = v52;

    v23 = v134;
    if (v53)
    {
      sub_10000CD08(*(v48 + 56) + 32 * v51, v146);

      if (swift_dynamicCast())
      {
        v54 = sub_1005A5DB8(v144, v145, 0);

        [v54 size];
      }

      goto LABEL_7;
    }

    goto LABEL_69;
  }

  if (v37 == enum case for BadgeType.chartPosition(_:))
  {
    v149._countAndFlagsBits = 0xD000000000000020;
    v149._object = 0x80000001007D52F0;
    v151._countAndFlagsBits = 0;
    v151._object = 0xE000000000000000;
    sub_1007622EC(v149, v151);
    if (qword_100940BA0 != -1)
    {
      goto LABEL_75;
    }

    goto LABEL_24;
  }

  v42 = v132;
  v44 = v142;
  if (v37 == enum case for BadgeType.editorsChoice(_:))
  {
    v150._object = 0x80000001007CEB90;
    v152._countAndFlagsBits = 0xD000000000000050;
    v152._object = 0x80000001007CEBB0;
    v150._countAndFlagsBits = 0xD000000000000017;
    sub_1007622EC(v150, v152);
    v98 = sub_1007700AC();

    v99 = v98 < 19;
    v100 = sub_1000400FC(v98 < 19);
    v101 = sub_1000403C8(v99);
    [v100 size];
    [v101 size];

    sub_10012DBC0(1, v99, 0, 2, a5);
    v23 = v134;
    v43 = v135;
    goto LABEL_8;
  }

  v23 = v134;
  if (v37 != enum case for BadgeType.artwork(_:))
  {
    v43 = v135;
    if (v37 == enum case for BadgeType.paragraph(_:))
    {
      sub_1004FFE94();
      if (qword_100940B90 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v137, qword_1009A10A8);
      v105 = sub_10076C04C();
      v147 = v105;
      v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
      v106 = sub_10000DB7C(v146);
      (*(*(v105 - 8) + 104))(v106, enum case for Feature.measurement_with_labelplaceholder(_:), v105);
      sub_10076C90C();
      sub_10000CD74(v146);
      sub_10076991C();
      v108 = v107;

      v109 = [a5 traitCollection];
      sub_1000182D0(v108, a6);
    }

    else
    {
      if (v37 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v139 + 8))(v33, v142);
        goto LABEL_8;
      }

      v110 = sub_10076B4CC();
      v111 = sub_10075E51C();
      if (!*(v110 + 16))
      {

        goto LABEL_8;
      }

      v113 = sub_100561E0C(v111, v112);
      v115 = v114;

      if ((v115 & 1) == 0)
      {
LABEL_69:

        goto LABEL_7;
      }

      sub_10000CD08(*(v110 + 56) + 32 * v113, v146);

      sub_100016F40(0, &qword_1009441F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v109 = v144;
      [v144 sizeThatFits:{a6, a7}];
    }

    goto LABEL_7;
  }

  v43 = v135;
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v23, qword_1009A04D8);
  sub_100765C3C();
  v102 = [a5 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100770A8C();
  while (1)
  {
LABEL_8:
    v45 = v124;
    sub_10076B48C();
    v46 = v138(v45, v44);
    if (v46 == v123)
    {
      v47 = sub_100500154();
      [v47 frame];
      CGRectGetWidth(v153);

      a5 = v136;
    }

    else
    {
      (*(v139 + 8))(v45, v44);
      if (v122 >= 4)
      {
        sub_10076B3DC();
        if (v55)
        {
          a5 = v136;
LABEL_19:
          if (qword_100940BB0 != -1)
          {
            swift_once();
          }

          sub_10000A61C(v137, qword_1009A1108);
          v57 = sub_10076C04C();
          v147 = v57;
          v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
          v58 = sub_10000DB7C(v146);
          (*(*(v57 - 8) + 104))(v58, enum case for Feature.measurement_with_labelplaceholder(_:), v57);
          sub_10076C90C();
          sub_10000CD74(v146);
          sub_10076991C();

          v44 = v142;
          goto LABEL_27;
        }
      }

      sub_10076B4BC();
      a5 = v136;
      if (v56)
      {
        goto LABEL_19;
      }
    }

LABEL_27:
    (*(v141 + 104))(v140, enum case for BadgeCaptionCappingType.none(_:), v43);
    v71 = sub_10076B4DC();
    if (v72)
    {
      v146[0] = v71;
      v146[1] = v72;
      v73 = v121;
      sub_10075DE6C();
      v74 = sub_10075DE9C();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      sub_10002564C();
      sub_1007711DC();
      sub_10000CFBC(v73, &qword_100949DF0);

      if (qword_100940BB8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v137, qword_1009A1120);
      v75 = sub_10076C04C();
      v147 = v75;
      v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
      v76 = sub_10000DB7C(v146);
      (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
      sub_10076C90C();
      sub_10000CD74(v146);
      sub_10076991C();

      v44 = v142;
    }

    if (qword_100940728 != -1)
    {
      swift_once();
    }

    v77 = sub_10000A61C(v23, qword_1009A04D8);
    (*(v42 + 16))(v16, v77, v23);
    (*(v141 + 16))(v126, v140, v43);
    sub_100765C5C();
    v78 = v125;
    sub_10076B48C();
    if (v138(v78, v44) == enum case for BadgeType.chartPosition(_:))
    {
      v79 = v128;
      *v128 = 0;
      v80 = v129;
      v81 = v130;
      (*(v129 + 104))(v79, enum case for BadgeViewSpacing.spacing(_:), v130);
    }

    else
    {
      v80 = v129;
      v79 = v128;
      v82 = v78;
      v81 = v130;
      (*(v129 + 104))(v128, enum case for BadgeViewSpacing.standard(_:), v130);
      (*(v139 + 8))(v82, v44);
    }

    v83 = v133;
    (*(v80 + 32))(v127, v79, v81);
    sub_100765C1C();
    if (v131)
    {
      goto LABEL_48;
    }

    v84 = [a5 traitCollection];
    v85 = sub_10077070C();
    v86 = v85;
    if (!v83 && (v85 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v122, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (((v122 - 1 == v83) & v85) == 1)
    {
LABEL_41:
      v87 = sub_100765BEC();
      *(v88 + 8) = 0;
      v87(v146, 0);
      v89 = sub_100765C0C();
      *(v90 + 8) = 0;
      v89(v146, 0);
      v43 = v135;
    }

    if (!v83 && ((v86 ^ 1) & 1) == 0)
    {
      goto LABEL_46;
    }

    if (!__OFSUB__(v122, 1))
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
LABEL_24:
    v59 = v137;
    v60 = sub_10000A61C(v137, qword_1009A10D8);
    (*(v120 + 16))(v23, v60, v59);
    v61.super.isa = [a5 traitCollection];
    isa = v61.super.isa;
    v63 = sub_10076D3BC(v61).super.isa;
    v64 = [(objc_class *)v63 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    v43 = v135;
    if (v64)
    {
      v65 = [objc_opt_self() fontWithDescriptor:v64 size:0.0];

      if (v65)
      {
        v66 = sub_10076C04C();
        v147 = v66;
        v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
        v67 = sub_10000DB7C(v146);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
        v68 = v65;
        sub_10076C90C();
        sub_10000CD74(v146);
        v69 = v117;
        sub_10076996C();
        sub_100130950(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
        v70 = v119;
        sub_10076D2AC();

        (*(v118 + 8))(v69, v70);
        goto LABEL_58;
      }
    }

    else
    {
    }

    v103 = sub_10076C04C();
    v147 = v103;
    v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature);
    v104 = sub_10000DB7C(v146);
    (*(*(v103 - 8) + 104))(v104, enum case for Feature.measurement_with_labelplaceholder(_:), v103);
    sub_10076C90C();
    sub_10000CD74(v146);
    sub_10076991C();

LABEL_58:
    (*(v120 + 8))(v23, v137);
    v23 = v134;
    v42 = v132;
    v44 = v142;
  }

  if ((v122 - 1 != v83) | v86 & 1)
  {
    goto LABEL_47;
  }

LABEL_46:
  v91 = sub_100765BEC();
  *(v92 + 24) = 0;
  v91(v146, 0);
  v93 = sub_100765C0C();
  *(v94 + 24) = 0;
  v93(v146, 0);
LABEL_47:

LABEL_48:
  sub_100765BBC();
  v96 = v95;
  (*(v42 + 8))(v16, v23);
  (*(v141 + 8))(v140, v43);
  return v96;
}

uint64_t sub_100130950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100130998(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((sub_1007713EC() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_10077167C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (sub_10077167C() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_100130AB0()
{
  sub_1007713FC();
  sub_10077008C();
  if (*(v0 + 80))
  {
    sub_10077177C(1u);
    sub_10077008C();
  }

  else
  {
    sub_10077177C(0);
  }

  sub_10077177C(*(v0 + 88));
}

uint64_t sub_100130B3C()
{

  v1 = OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&unk_100955860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100130BD0()
{
  sub_100016C74(v0 + 16);

  v1 = OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&unk_100955860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting()
{
  result = qword_100949E20;
  if (!qword_100949E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100130D0C()
{
  sub_100130DBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100130DBC()
{
  if (!qword_100949E30)
  {
    v0 = sub_10076F53C();
    if (!v1)
    {
      atomic_store(v0, &qword_100949E30);
    }
  }
}

char *sub_100130E0C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView;
  sub_10075FD2C();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setAllowsGroupBlending:0];

  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer]];
  return v24;
}

void sub_100131110(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0);
      v9 = v5;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v16 = a1;
  sub_100453A30(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

void (*sub_1001312B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100131354;
}

void sub_100131354(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0);
        v8 = v4;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0);
        v13 = v4;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v31 = v3;
    sub_100453A30(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_1001316DC(uint64_t a1, char *a2)
{
  v64 = a2;
  v3 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v3 - 8);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = v61 - v6;
  v7 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_1007611EC();
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  v15 = sub_10076121C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076481C();
  v65 = *(v19 - 8);
  v66 = v19;
  __chkstk_darwin(v19);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076277C())
  {
    v61[2] = a1;
    (*(v16 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v15);
    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v22 = sub_10076D39C();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v23 = v69[0];
    sub_10076B7CC();
    sub_10076B85C();
    v24 = sub_10075DB7C();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    v25 = v62;
    sub_10076B81C();
    v26 = v63;
    sub_10076B80C();
    v27 = type metadata accessor for VideoView();
    sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView);
    v61[0] = v27;
    v61[1] = v23;
    v28 = sub_100762EEC();
    sub_10000CFBC(v26, &unk_10094C030);
    sub_10000CFBC(v25, &unk_10094C030);
    sub_10000CFBC(v9, &unk_1009435D0);
    sub_10000CFBC(v69, &qword_100943310);
    v29 = *&v67[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer];
    v30 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
    v31 = *(v29 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v64 = v21;
    if (v28)
    {
      v32 = v28;
      v33 = [v32 superview];
      if (v33)
      {
        v34 = v33;
        sub_100016F40(0, &qword_1009441F0);
        v35 = v31;
        v36 = sub_100770EEC();

        if (v36)
        {
          [v32 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v43 = *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v28;
    v44 = v28;
    sub_100453A30(v43);

    v45 = *(*(v29 + v30) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v45 && (v46 = swift_dynamicCastClass()) != 0)
    {
      v47 = v46;
      v48 = v45;
      [v47 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v65 + 8))(v64, v66);
    v38 = v67;
  }

  else
  {
    v37 = sub_10076278C();
    v38 = v67;
    if (v37)
    {

      v39 = *&v38[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView];
      v40 = *(*&v38[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v41 = *(v40 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      *(v40 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v39;
      v42 = v39;
      sub_100453A30(v41);

      sub_1004526E4();
    }
  }

  v49 = sub_10076C03C();
  v69[3] = v49;
  v69[4] = sub_100132938(&qword_100947230, 255, &type metadata accessor for Feature.iOS);
  v50 = sub_10000DB7C(v69);
  (*(*(v49 - 8) + 104))(v50, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v49);
  LOBYTE(v49) = sub_10076C90C();
  sub_10000CD74(v69);
  v51 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  if (v49)
  {
    v52 = *(*(*&v38[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v52)
    {
      type metadata accessor for VideoView();
      if (swift_dynamicCastClass())
      {
        v53 = v52;
        sub_1005ECC94();

        v51 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      }
    }
  }

  v54 = *&v38[v51];
  v55 = sub_10076275C();
  if (!v55)
  {
    v55 = [objc_opt_self() systemBackgroundColor];
  }

  v56 = v55;
  v57 = type metadata accessor for MediaView();
  v68.receiver = v54;
  v68.super_class = v57;
  objc_msgSendSuper2(&v68, "setBackgroundColor:", v56);
  [*(*&v54[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v56];
  v58 = *&v54[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v58)
  {
    v59 = v58;
    [v59 setBackgroundColor:v56];
  }

  [v38 setNeedsLayout];
  return [v38 layoutIfNeeded];
}

void sub_100131F7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_10076481C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D39C();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076277C();
  if (v14)
  {
    v15 = *(*(*(v33 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v15 && (v31[4] = v14, v31[3] = type metadata accessor for VideoView(), (v16 = swift_dynamicCastClass()) != 0))
    {
      v31[0] = v13;
      v31[2] = a2;
      v17 = qword_1009A2558;
      v18 = v11;
      v19 = v16;
      swift_beginAccess();
      v20 = *(v8 + 16);
      v31[1] = v19;
      v21 = v19 + v17;
      v22 = v18;
      v20(v10, v21, v7);
      v23 = v15;
      sub_10076476C();
      (*(v8 + 8))(v10, v7);
      v24 = v32;
      if ((*(v32 + 48))(v6, 1, v22) != 1)
      {
        v30 = v31[0];
        (*(v24 + 32))(v31[0], v6, v22);
        sub_10076D30C();
        sub_10076B84C();
        sub_10076BFCC();

        sub_100132938(&unk_100942840, 255, type metadata accessor for VideoView);
        sub_100760B8C();

        (*(v24 + 8))(v30, v22);
        return;
      }

      sub_10000CFBC(v6, &unk_1009467E0);
    }

    else
    {
    }
  }

  if (sub_10076278C())
  {
    sub_10076BFCC();
    v25 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView;
    v26 = v33;
    v27 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v27 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v26 + v25) setContentMode:2];
    v28 = *(v26 + v25);
    sub_10075FD2C();
    sub_100132938(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v29 = v28;
    sub_100760B8C();
  }
}

id sub_1001324D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100132578()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_1001325EC(uint64_t **a1))()
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
  v2[4] = sub_1001312B8(v2);
  return sub_100019A4C;
}

uint64_t sub_10013265C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1001326B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10013271C(uint64_t *a1))()
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

uint64_t sub_1001327B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_100132938(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100132980()
{
  v1 = type metadata accessor for MediaView();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v3 = type metadata accessor for UberContentContainer();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v5 = &v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v7 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v7 addSubview:?];
  }

  v9 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v8;
  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView;
  sub_10075FD2C();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100132B84()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076172C();
  sub_10000DB18(v4, qword_10099D1B0);
  v19 = sub_10000A61C(v4, qword_10099D1B0);
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v17 = sub_10000A61C(v5, qword_1009A0FE8);
  v6 = *(v5 - 8);
  v16 = *(v6 + 16);
  v18 = v6 + 16;
  v16(v3, v17, v5);
  v7 = enum case for FontSource.useCase(_:);
  v15 = v1[13];
  v15(v3, enum case for FontSource.useCase(_:), v0);
  v8 = sub_10076D9AC();
  v26[3] = v8;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v26);
  v24 = v0;
  v25 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v23);
  v10 = v1[2];
  v10(v9, v3, v0);
  sub_10076D9BC();
  v11 = v1[1];
  v11(v3, v0);
  v16(v3, v17, v5);
  v15(v3, v7, v0);
  v24 = v8;
  v25 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v20);
  v10(v12, v3, v0);
  sub_10076D9BC();
  v11(v3, v0);
  v21 = &type metadata for Double;
  v22 = &protocol witness table for Double;
  v20[0] = 0x4018000000000000;
  return sub_10076171C();
}

uint64_t sub_100132E74()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D1C();
  qword_100949F38 = result;
  return result;
}

uint64_t sub_100132EB8()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D0C();
  qword_100949F40 = result;
  return result;
}

uint64_t sub_100132EFC()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = objc_opt_self();
  v6 = UIFontTextStyleFootnote;
  v7 = [v5 configurationWithTextStyle:v6 scale:1];

  v8 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10099D1C8 = v8;
  return result;
}

char *sub_10013304C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v43 = sub_10076E1EC();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E21C();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076771C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - v21;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted] = 0;
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A0FE8);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v22, v24, v23);
  (*(v25 + 56))(v22, 0, 1, v23);
  (*(v17 + 104))(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v26 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel] = sub_1007626AC();
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v43);
  v48[3] = sub_10076D67C();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v48);
  sub_10076D66C();
  sub_10076E1FC();
  v27 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v29 = *(v44 + 40);
  v30 = v27;
  v29(&v27[v28], v15, v45);
  swift_endAccess();

  *&v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_separatorView] = v30;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel;
  v37 = qword_10093F800;
  v38 = *&v35[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_100949F38];

  v39 = *&v35[v36];
  sub_10076266C();

  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_separatorView]];
  sub_10000A5D4(&unk_100945BF0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100783DD0;
  *(v40 + 32) = sub_10076E3FC();
  *(v40 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v35;
}

double sub_1001336D4()
{
  v1 = sub_10076172C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076174C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v1, qword_10099D1B0);
  (*(v2 + 16))(v4, v9, v1);
  v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel);
  v19[8] = sub_1007626BC();
  v19[9] = &protocol witness table for UILabel;
  v19[5] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView);
  if (v11)
  {
    v12 = sub_100016F40(0, &qword_1009441F0);
    v13 = &protocol witness table for UIView;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v14 = v10;
  v15 = v11;
  sub_10076173C();
  sub_10013405C();
  sub_10076D2AC();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_100133990()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_10076E21C();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076D1FC();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076172C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076174C();
  v36 = *(v38 - 8);
  *&v13 = __chkstk_darwin(v38).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v37 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v13);
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v9, qword_10099D1B0);
  (*(v10 + 16))(v12, v16, v9);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
  v46 = sub_1007626BC();
  v47 = &protocol witness table for UILabel;
  v45 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView];
  if (v18)
  {
    v19 = sub_100016F40(0, &qword_1009441F0);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v18;
  v43 = v19;
  v44 = v20;
  v21 = v17;
  v22 = v18;
  sub_10076173C();
  sub_10076422C();
  sub_10076170C();
  (*(v6 + 8))(v8, v35);
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_separatorView];
  [v1 bounds];
  v24 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v25 = v39;
  (*(v3 + 16))(v5, &v23[v24], v39);
  sub_10076E1CC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 8))(v5, v25);
  [v23 setFrame:{v27, v29, v31, v33}];
  return (*(v36 + 8))(v15, v38);
}

void sub_100133E3C(char a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron])
    {
      v2 = v1;
      if (qword_10093F810 != -1)
      {
        swift_once();
      }

      v3 = [objc_allocWithZone(UIImageView) initWithImage:qword_10099D1C8];
      sub_100016F40(0, &qword_100942F10);
      v4 = sub_100770D4C();
      [v3 setTintColor:v4];

      v5 = OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView;
      v6 = v2;
      v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView];
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v2[v5];
      }

      else
      {
        v8 = 0;
      }

      *&v6[v5] = v3;
      v11 = v3;

      [v6 addSubview:v11];
      [v6 setNeedsLayout];
      v10 = v11;
    }

    else
    {
      v9 = OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView;
      v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView];
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v9];
      }

      *&v1[v9] = 0;
    }
  }
}

unint64_t sub_10013405C()
{
  result = qword_1009566E0;
  if (!qword_1009566E0)
  {
    sub_10076174C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009566E0);
  }

  return result;
}

char *sub_1001340C0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_1002091B8;
  v25[1] = 0;
  v25[2] = sub_1007333BC;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_1002091B8;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_100342B64;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_1001ED0D8(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_100016F40(0, &qword_100944E30);
  sub_10077075C();
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_1003DCA00();

  return v16;
}

id sub_1001344C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_10094D6F0) = v1 & 1;
  sub_1001EE26C();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v3 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning;
  v2[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] = v1 & 1;
  [v2 setHidden:(v2[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v1 ^ 1u)];
  v2[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = (v2[v3] & 1) == 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_1001345C8()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_100312548(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_10033FA50(v24, v17, v19, v21, v23);

  return sub_100138C80(&v26);
}

void sub_10013476C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v57 - v7;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = sub_10077071C(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_100134D68(v12);
      [v1 bounds];
      CGRectGetMidX(v64);
      [v1 bounds];
      CGRectGetMinY(v65);
      [v1 bounds];
      CGRectGetWidth(v66);
      [v1 bounds];
      CGRectGetHeight(v67);
      v35 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v1[v35], v8);
      if (v1[v11])
      {
        v36 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v1[*v36];
      v38 = [v1 traitCollection];
      sub_1003DF8CC(v8, v37, v38);

      sub_10000CFBC(v8, &unk_1009434A0);
      sub_10003BDD4(&v1[v35], v4);
      if (v1[v11])
      {
        v39 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v39 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v40 = v1[*v39];
      v41 = [v1 traitCollection];
      sub_1003DF8CC(v4, v40, v41);

      sub_10000CFBC(v4, &unk_1009434A0);
      sub_100770A3C();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [v9 traitCollection];
      sub_10018E290(v50, v47, v49);

      v68.origin.x = v43;
      v68.origin.y = v45;
      v68.size.width = v47;
      v68.size.height = v49;
      CGRectGetMidX(v68);
      v69.origin.x = v43;
      v69.origin.y = v45;
      v69.size.width = v47;
      v69.size.height = v49;
      CGRectGetMinY(v69);
      v51 = [v1 traitCollection];
      [v1 bounds];
      sub_1007709CC();
      v53 = v52;
      MinY = v54;
      v25 = v55;
      v27 = v56;

      v34 = v53;
    }

    else
    {
      [v1 bounds];
      sub_100134D68(v12);
      MinY = v16;
      [v1 bounds];
      CGRectGetMinX(v58);
      [v1 bounds];
      CGRectGetMinY(v59);
      [v1 bounds];
      CGRectGetWidth(v60);
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v61);
      sub_100770A3C();
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
      v22 = CGRectGetHeight(v62);
      v23 = [v9 traitCollection];
      sub_10018E290(v23, 1.79769313e308, v22);
      v25 = v24;
      v27 = v26;

      if (v1[v11])
      {
        v28 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v28 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      if (v1[*v28] == 4)
      {
        MinY = CGRectGetMinY(*&v29);
      }

      else
      {
        v33 = CGRectGetMidY(*&v29) + v27 * -0.5;
        if (v33 > MinY)
        {
          MinY = v33;
        }
      }

      [v1 bounds];
      v34 = floor(CGRectGetMidX(v63) + v25 * -0.5);
    }

    [v9 setFrame:{v34, MinY, v25, v27}];
  }
}

uint64_t sub_100134D68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v4 - 8);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v60 - v20;
  v22 = [v1 traitCollection];
  v62 = sub_10077071C();

  v23 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v29 = v2[v23];
    if (v2[v23])
    {
      v30 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v30 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v31 = v2[*v30];
    if (v31 != 4)
    {
      if ((v31 != 6) | v62 & 1)
      {
        goto LABEL_39;
      }

      v35 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v2[v35], v17);
      if (v29)
      {
        v36 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v2[*v36];
      v38 = [v2 traitCollection];
      sub_1003DF8CC(v17, v37, v38);

      v39 = v17;
      goto LABEL_57;
    }

    return sub_1007704EC();
  }

  if ((v2[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v24 = [v2 traitCollection], v25 = sub_1007706EC(), v24, (v25 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v32 = v2[v23];
      if (v2[v23])
      {
        v33 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v33 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v34 = v2[*v33];
      if (v34 == 4)
      {
        return sub_1007704EC();
      }

      if ((v34 != 6) | v62 & 1)
      {
LABEL_39:
        if (v2[v23] == 1)
        {
          v44 = [v2 traitCollection];
          sub_10077070C();

          v45 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_10003BDD4(&v2[v45], v11);
          v46 = [v2 traitCollection];
          sub_1003DF334(v11, v46);
          goto LABEL_50;
        }

LABEL_41:
        v47 = [v2 traitCollection];
        v48 = sub_10077070C();

        v49 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        if (v48)
        {
          swift_beginAccess();
          sub_10003BDD4(&v2[v49], v8);
          if (v2[v23])
          {
            v50 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v50 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v51 = v2[*v50];
          v52 = [v2 traitCollection];
          sub_1003DF8CC(v8, v51, v52);

          v11 = v8;
          goto LABEL_51;
        }

        swift_beginAccess();
        v11 = v61;
        sub_10003BDD4(&v2[v49], v61);
        if (v2[v23])
        {
          v53 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v53 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v54 = v2[*v53];
        v46 = [v2 traitCollection];
        sub_1003DF8CC(v11, v54, v46);
LABEL_50:

LABEL_51:
        sub_10000CFBC(v11, &unk_1009434A0);
        return sub_1007704EC();
      }

      v56 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v2[v56], v21);
      if (v32)
      {
        v57 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v57 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v58 = v2[*v57];
      v59 = [v2 traitCollection];
      sub_1003DF8CC(v21, v58, v59);

      v39 = v21;
LABEL_57:
      sub_10000CFBC(v39, &unk_1009434A0);
      return sub_1007704EC();
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v26 = v2[v23];
  if (v2[v23])
  {
    v27 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v27 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v28 = v2[*v27];
  if (v28 != 4)
  {
    if ((v28 != 6) | v62 & 1)
    {
      goto LABEL_39;
    }

    v40 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BDD4(&v2[v40], v14);
    if (v26)
    {
      v41 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v41 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v42 = v2[*v41];
    v43 = [v2 traitCollection];
    sub_1003DF8CC(v14, v42, v43);

    v39 = v14;
    goto LABEL_57;
  }

  return sub_1007704EC();
}

uint64_t sub_100135464()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_10018D438();
  }

  *(v1 + v2) = 0;

  sub_10030D704();
  sub_10071A900(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
}

void sub_100135584()
{
  sub_1003DFB08();
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  [v0 _setContinuousCornerRadius:v2];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v2];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    [v6 _setContinuousCornerRadius:v2];
  }

  *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10094D6E8) = v0[v1];
  sub_1001EDE3C();
  *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isExpanded) = v0[v1];

  sub_1003DCA00();
}

id sub_1001356D0()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10094D6A8) = v3;
    sub_1001EDB98();
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_100135800(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_100138AF4();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_1001EFCF0(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_10018D370(v19);

      sub_10071A900(v20);
      *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

id sub_100135A54(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v171 = a4;
  v9 = sub_100766EBC();
  v168 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v178 = &v154 - v15;
  __chkstk_darwin(v16);
  v177 = &v154 - v17;
  v167 = sub_10076637C();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v176 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v154 - v20;
  v22 = sub_10076C38C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v21, &v5[v24]);
  swift_endAccess();
  sub_1003DC6B0(a2);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10076C70C();
    if (!v27)
    {
      sub_100016F40(0, &qword_100942F10);
      v27 = sub_100770D8C();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  sub_10076C7FC();
  v29 = sub_10075E50C();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    sub_10076C7FC();
    sub_1007652BC();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      sub_10076C7FC();
      sub_10075E2BC();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        sub_10076C7FC();
        sub_10076472C();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return result;
        }
      }
    }
  }

  v163 = v9;
  v174 = v5;
  v35 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v36 = sub_10076C82C();
  v175 = v37;
  v180 = sub_10076C81C();
  v172 = v38;
  v156 = sub_10076C6EC();
  v173 = v39;
  sub_10076C75C();
  v40 = sub_10076C73C();
  v182 = v41;
  v165 = a3;
  v170 = v11;
  v164 = v12;
  v162 = v29;
  v157 = v40;
  if (a2 == 4)
  {
    (*(v12 + 104))(v177, enum case for TodayCard.Style.dark(_:), v11);
    v161 = sub_1000082CC;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v160 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v159 = sub_100342B64;
    v158 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    sub_10076C80C();
    v161 = sub_1000082CC;
    v158 = sub_100733020;
    v42 = sub_1007331DC;
    v160 = sub_100733208;
    v159 = sub_10073304C;
  }

  v179 = a2;
  v43 = a2;
  sub_10076C77C();
  v35[qword_10094D6D8] = 0;
  v44 = *&v35[qword_10094D6C0];
  *(v44 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *&v35[qword_10094D6B8];
  sub_1001E44C4(v36, v175);
  v46 = sub_100766EAC();
  v47 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v48 = *&v45[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v43 == 4 && (v46 & 1) == 0)
  {
    if (([v48 isHidden] & 1) != 0 || (v45[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v45[v47] setHidden:1];
      goto LABEL_27;
    }

    [*&v45[v47] setHidden:1];
    v45[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v49 = [v48 text];
  if (v49)
  {
    v50 = v49;
    sub_10076FF9C();
  }

  v51 = sub_10077002C();
  v52 = v51 & 1;

  if (v52 != [*&v45[v47] isHidden] && (v45[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v51 & 1) == 0)
    {
      [*&v45[v47] setAlpha:0.0];
      v155 = objc_opt_self();
      [v155 inheritedAnimationDuration];
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = v45;
      v187 = sub_100138CF0;
      v188 = v55;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_10009AEDC;
      v186 = &unk_100889880;
      v154 = _Block_copy(&aBlock);
      v56 = v45;

      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      v187 = sub_100138CFC;
      v188 = v57;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_1000513F0;
      v186 = &unk_1008898D0;
      v58 = _Block_copy(&aBlock);
      v59 = v56;

      v60 = v154;
      [v155 animateWithDuration:0 delay:v154 options:v58 animations:v54 completion:0.0];
      _Block_release(v58);
      _Block_release(v60);
    }

    [*&v45[v47] setHidden:v51 & 1];
    v45[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v45 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v45[v47] setHidden:v52];
LABEL_27:
  v61 = &v35[qword_10094D6E0];
  *v61 = v161;
  v61[1] = 0;
  v61[2] = v158;
  v61[3] = 0;
  v61[4] = v42;
  v61[5] = 0;
  v61[6] = v160;
  v61[7] = 0;
  v61[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v61[9] = 0;
  v61[10] = v159;
  v61[11] = 0;

  sub_1001EDE3C();
  v62 = v179;
  v63 = v182;
  if (v172)
  {
    if (v179 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v64 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v65 = *(v44 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v66 = objc_allocWithZone(NSAttributedString);
    v67 = v65;
    v68 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_100138BF8(&qword_100943320, type metadata accessor for Key);
    isa = sub_10076FE3C().super.isa;

    v70 = [v66 initWithString:v68 attributes:isa];

    [v67 setAttributedText:v70];
    [*(v44 + v64) setAdjustsFontSizeToFitWidth:0];
    [*(v44 + v64) setMinimumScaleFactor:0.0];
    [*(v44 + v64) setAttributedText:0];
    if (v173 && v35[qword_10094D6B0] == 4)
    {
      v63 = v182;
      if (v62 == 4)
      {
        v71 = v180;
        v74 = v173;
        v72 = v172;
        v73 = v156;
      }

      else
      {
        v71 = v156;
        v72 = v173;
        v73 = v180;
        v74 = v172;
      }

      sub_1001E45BC(v71, v72, v73, v74);
    }

    else
    {
      sub_1001E44C4(v180, v172);
      v63 = v182;
    }
  }

  v75 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v76 = *(v44 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v77 = [v76 text];
  if (v77 || (v77 = [*(v44 + v75) attributedText]) != 0)
  {
    v78 = v170;

    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v170;
  }

  [v76 setHidden:v79];

  [v35 setNeedsLayout];
  v80 = *&v35[qword_10094D6C8];
  [v80 setImage:0];
  [v80 setHidden:1];
  if (v62 != 4 && (sub_100766E8C() & 1) == 0 && v63)
  {
    v81 = a1;
    v82 = v62;
    v83 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v83 = v157 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v180) = v83 == 0;
    v84 = *&v35[qword_10094D6D0];
    v85 = &v84[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v86 = *&v84[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v84 = *&v35[qword_10094D6D0];
  v85 = &v84[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v86 = *&v84[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v63)
  {
    v81 = a1;
    v82 = v62;
    LODWORD(v180) = 1;
LABEL_49:
    v87 = v86;
    v63 = sub_10076FF6C();
    v62 = v82;
    a1 = v81;
    goto LABEL_51;
  }

  v87 = v86;
  LODWORD(v180) = 1;
LABEL_51:
  [v87 setText:v63];

  v88 = [*v85 isHidden];
  if (v180 == v88 || (v84[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v85 setHidden:v180];
  }

  else
  {
    if ((v180 & 1) == 0)
    {
      [*v85 setAlpha:0.0];
      v89 = objc_opt_self();
      [v89 inheritedAnimationDuration];
      v91 = v90;
      v92 = swift_allocObject();
      *(v92 + 16) = v84;
      v187 = sub_100138AA8;
      v188 = v92;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_10009AEDC;
      v186 = &unk_1008897E0;
      v93 = _Block_copy(&aBlock);
      v94 = v84;

      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      v187 = sub_100138AC8;
      v188 = v95;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_1000513F0;
      v186 = &unk_100889830;
      v96 = _Block_copy(&aBlock);
      v97 = v94;
      v78 = v170;
      v62 = v179;

      [v89 animateWithDuration:0 delay:v93 options:v96 animations:v91 completion:0.0];
      _Block_release(v96);
      _Block_release(v93);
    }

    [*v85 setHidden:v180];
    v84[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v84 setNeedsLayout];
  }

  v98 = v163;
  v99 = 1;
  v100 = v177;
  sub_1001EE35C(v177, 1);
  [v35 setNeedsLayout];

  (*(v168 + 8))(v181, v98);
  v101 = v164;
  v102 = *(v164 + 8);
  v102(v100, v78);
  (*(v166 + 8))(v176, v167);
  sub_10076C80C();
  v103 = v169;
  (*(v101 + 104))(v169, enum case for TodayCard.Style.white(_:), v78);
  sub_100138BF8(&qword_100944B98, &type metadata accessor for TodayCard.Style);
  sub_10077018C();
  sub_10077018C();
  if (aBlock != v189 || v184 != v190)
  {
    if (sub_10077167C())
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }
  }

  v102(v103, v78);
  v102(v178, v78);

  v104 = v174;
  [v174 setOverrideUserInterfaceStyle:v99];
  sub_1005D3598(a1, v165, v62, v171);
  sub_10076C7FC();
  v105 = swift_dynamicCastClass();
  if (v105)
  {
    p_aBlock = v105;
    v107 = sub_10075E4FC();
    v108 = v107;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v107 & 0xFFFFFFFFFFFFFF8;
    if (v107 >> 62)
    {
      goto LABEL_184;
    }

    v110 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

  sub_1007652BC();
  v118 = swift_dynamicCastClass();
  if (v118)
  {
    p_aBlock = v118;
    v119 = sub_1007652AC();
    v108 = v119;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v119 & 0xFFFFFFFFFFFFFF8;
    if (v119 >> 62)
    {
      v120 = sub_10077158C();
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v121 = 0;
    v122 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v120 == v121)
      {
        goto LABEL_112;
      }

      if ((v108 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = sub_10077149C();
      v123 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v124 = sub_10076BB9C();

      ++v121;
      if (v124)
      {
        p_aBlock = &aBlock;
        sub_10077019C();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v122 = aBlock;
        v121 = v123;
      }
    }

    if (v121 >= *(v109 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v108 + 8 * v121 + 32);

    v123 = v121 + 1;
    if (!__OFADD__(v121, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v110 = sub_10077158C();
LABEL_65:
    v111 = 0;
    v112 = _swiftEmptyArrayStorage;
    while (v110 != v111)
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        p_aBlock = sub_10077149C();
        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v111 >= *(v109 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v108 + 8 * v111 + 32);

        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v114 = sub_10076BB9C();

      ++v111;
      if (v114)
      {
        p_aBlock = &aBlock;
        sub_10077019C();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v112 = aBlock;
        v111 = v113;
      }
    }

    v115 = v112 >> 62;
    if (!(v112 >> 62))
    {
      v116 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v116 >= 3)
      {
        v117 = 3;
      }

      else
      {
        v117 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      while (1)
      {
        if (v116 < v117)
        {
          goto LABEL_190;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          sub_10076C02C();

          sub_10077147C(0);
          if (v117 != 1)
          {
            sub_10077147C(1);
            if (v117 != 2)
            {
              sub_10077147C(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_10077159C();
          v111 = v125;
          v115 = v126;
          v117 = v127;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v122 = sub_10077169C();
        swift_unknownObjectRetain_n();
        v128 = swift_dynamicCastClass();
        if (!v128)
        {
          swift_unknownObjectRelease();
          v128 = _swiftEmptyArrayStorage;
        }

        v129 = v128[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v115 = v122 >> 62;
        if (v122 >> 62)
        {
          if (v122 < 0)
          {
            p_aBlock = v122;
          }

          else
          {
            p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          }

          v108 = sub_10077158C();
          if (sub_10077158C() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v134 = sub_10077158C();
LABEL_126:
            v111 = 0;
            v112 = _swiftEmptyArrayStorage;
            while (v134 != v111)
            {
              if ((v108 & 0xC000000000000001) != 0)
              {
                p_aBlock = sub_10077149C();
                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v111 >= *(v109 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v108 + 8 * v111 + 32);

                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              v136 = sub_10076BB9C();

              ++v111;
              if (v136)
              {
                p_aBlock = &aBlock;
                sub_10077019C();
                if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10077021C();
                }

                sub_10077025C();
                v112 = aBlock;
                v111 = v135;
              }
            }

            goto LABEL_148;
          }

          if (v108 >= 3)
          {
            v152 = 3;
          }

          else
          {
            v152 = v108;
          }

          if (v108 >= 0)
          {
            v108 = v152;
          }

          else
          {
            v108 = 3;
          }

          v131 = sub_10077158C();
        }

        else
        {
          v131 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v131 >= 3)
          {
            v108 = 3;
          }

          else
          {
            v108 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v131 < v108)
        {
          goto LABEL_198;
        }

        if ((v122 & 0xC000000000000001) != 0 && v108)
        {
          sub_10076C02C();

          sub_10077147C(0);
          if (v108 != 1)
          {
            sub_10077147C(1);
            if (v108 != 2)
            {
              sub_10077147C(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_10077159C();
          v111 = v137;
          v115 = v138;
          v117 = v139;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          v111 = (v122 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v108) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = sub_10077169C();
        swift_unknownObjectRetain_n();
        v140 = swift_dynamicCastClass();
        if (!v140)
        {
          swift_unknownObjectRelease();
          v140 = _swiftEmptyArrayStorage;
        }

        v129 = v140[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v115 = v112 >> 62;
        if (v112 >> 62)
        {
          if (v112 < 0)
          {
            p_aBlock = v112;
          }

          else
          {
            p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          }

          v117 = sub_10077158C();
          if (sub_10077158C() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v117 >= 3)
          {
            v153 = 3;
          }

          else
          {
            v153 = v117;
          }

          if ((v117 & 0x8000000000000000) == 0)
          {
            v117 = v153;
          }

          else
          {
            v117 = 3;
          }

          v141 = sub_10077158C();
        }

        else
        {
          v141 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v141 >= 3)
          {
            v117 = 3;
          }

          else
          {
            v117 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v141 < v117)
        {
          goto LABEL_205;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          sub_10076C02C();

          sub_10077147C(0);
          if (v117 != 1)
          {
            sub_10077147C(1);
            if (v117 != 2)
            {
              sub_10077147C(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_10077159C();
          v111 = v143;
          v115 = v144;
          v117 = v145;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = sub_10077169C();
        swift_unknownObjectRetain_n();
        v147 = swift_dynamicCastClass();
        if (!v147)
        {
          swift_unknownObjectRelease();
          v147 = _swiftEmptyArrayStorage;
        }

        v129 = v147[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
LABEL_169:
          if (v129 != v130)
          {
            goto LABEL_191;
          }

          v142 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v142)
          {
            swift_unknownObjectRelease();
            v142 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v117 >= 3)
        {
          v151 = 3;
        }

        else
        {
          v151 = v117;
        }

        if ((v117 & 0x8000000000000000) == 0)
        {
          v117 = v151;
        }

        else
        {
          v117 = 3;
        }

        v116 = sub_10077158C();
      }
    }

    if (v112 < 0)
    {
      p_aBlock = v112;
    }

    else
    {
      p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
    }

    v117 = sub_10077158C();
    if ((sub_10077158C() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_1002347C8(p_aBlock, v111, v115, v117);
    v142 = v146;
    swift_unknownObjectRelease();

LABEL_172:
    v104 = v174;
  }

  else
  {
    sub_10076472C();
    v132 = swift_dynamicCastClass();
    if (v132)
    {
      p_aBlock = v132;
      v133 = sub_10076471C();
      v108 = v133;
      aBlock = _swiftEmptyArrayStorage;
      v109 = v133 & 0xFFFFFFFFFFFFFF8;
      if (!(v133 >> 62))
      {
        v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    sub_10075E2BC();
    if (swift_dynamicCastClass())
    {
      sub_10000A5D4(&unk_100942870);
      v142 = swift_allocObject();
      *(v142 + 1) = xmmword_1007841E0;
      v142[4] = sub_10075E2AC();
    }

    else
    {

      v142 = _swiftEmptyArrayStorage;
    }
  }

  v148 = OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks;
  v149 = *&v104[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks];

  v150 = sub_1000CCE04(v142, v149);

  if (v150)
  {
  }

  *&v104[v148] = v142;

  sub_100137524();
  return [v104 setNeedsLayout];
}

uint64_t sub_100137524()
{
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v19 = OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks;
  v20 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v1 >> 62)
  {
LABEL_38:
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = sub_10076135C();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 40) = sub_1000FC990(_swiftEmptyArrayStorage);
  v5 = 3;
  if (v2 < 3)
  {
    v5 = v2;
  }

  *(v4 + 24) = v5;
  *(v4 + 32) = v3 & 1;

  sub_10018D370(v6);
  v7 = *(v20 + v19);
  *&v21[0] = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v12 = sub_10076BE1C();

    ++v9;
    if (v12)
    {
      sub_10077019C();
      if (*((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v10 = *&v21[0];
      v9 = v11;
    }
  }

  sub_10071A900(v10);
  sub_100760C4C();
  sub_10076FC1C();
  v13 = *(v20 + v19);
  if (v13 >> 62)
  {
    v14 = sub_10077158C();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v20 + v19) >> 62)
      {
        sub_10077158C();
      }

      sub_10076BFCC();
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v15;

      sub_100760B7C();

      sub_10000CFBC(v21, &qword_100943310);
      ++v15;
    }

    while (v17 != v14);
  }
}

void sub_1001379B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_10024A754(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_10018D628(a1, a6);
    }
  }
}

uint64_t sub_100137A88()
{
  sub_10076C84C();
  sub_100138BF8(&qword_100947150, &type metadata accessor for TodayCard);
  result = sub_10076332C();
  if (v23)
  {
    sub_10076C7FC();

    sub_10075E50C();
    if (swift_dynamicCastClass())
    {

      if (sub_10075E4FC() >> 62)
      {
LABEL_73:
        sub_10077158C();
      }

      v1 = sub_10075E4FC();
      v2 = v1;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v1 >> 62)
      {
        v4 = sub_10077158C();
        if (v4)
        {
LABEL_11:
          v5 = 0;
          do
          {
            v6 = v5;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                sub_10077149C();
                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v6 >= *(v3 + 16))
                {
                  goto LABEL_68;
                }

                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (sub_10076BB5C())
              {
                break;
              }

              ++v6;
              if (v5 == v4)
              {
                goto LABEL_79;
              }
            }

            sub_10076BFCC();

            sub_10077019C();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
          }

          while (v5 != v4);
        }
      }

      else
      {
        v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      v22._rawValue = _swiftEmptyArrayStorage;
      sub_100760BAC(v22);
    }

    sub_1007652BC();
    if (!swift_dynamicCastClass())
    {
      sub_10076472C();
      if (!swift_dynamicCastClass())
      {
        sub_10075E2BC();
        if (!swift_dynamicCastClass())
        {
        }

        sub_10000A5D4(&unk_100942870);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1007841E0;

        sub_10075E2AC();
        v14 = sub_10076BFCC();

        *(v13 + 32) = v14;
        v15._rawValue = v13;
        sub_100760BAC(v15);
      }

      if (sub_10076471C() >> 62)
      {
        sub_10077158C();
      }

      v16 = sub_10076471C();
      v17 = v16;
      v18 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v19 = sub_10077158C();
        if (!v19)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_79;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
            v20 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v21 >= *(v18 + 16))
            {
              goto LABEL_72;
            }

            v20 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (sub_10076BB5C())
          {
            break;
          }

          ++v21;
          if (v20 == v19)
          {
            goto LABEL_79;
          }
        }

        sub_10076BFCC();

        sub_10077019C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      while (v20 != v19);
      goto LABEL_79;
    }

    if (sub_1007652AC() >> 62)
    {
      sub_10077158C();
    }

    v7 = sub_1007652AC();
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v10 = sub_10077158C();
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v9 + 16))
          {
            goto LABEL_70;
          }

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (sub_10076BB5C())
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_79;
        }
      }

      sub_10076BFCC();

      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    while (v11 != v10);
    goto LABEL_79;
  }

  return result;
}

void sub_1001381E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_1001383A8()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1000167E0(v2);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      swift_getObjectType();
      sub_10076A00C();
    }
  }
}

void sub_1001384F0()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getObjectType();
      sub_100769FFC();
    }
  }
}

uint64_t sub_100138798()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell()
{
  result = qword_100949FF0;
  if (!qword_100949FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001389A8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1001389F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_100138A24()
{
  swift_weakAssign();
}

uint64_t sub_100138A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100138AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100138AF4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_10094D6B0) = v4;
    *(*(v5 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_100138BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100138C40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100138D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B78C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100138D2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B7AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_100138D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_10076469C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (sub_10076FF9C() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_10077167C();

  if (v12)
  {
LABEL_10:
    *(a4 + 24) = sub_10000A5D4(&qword_10094A0F8);
    *(a4 + 32) = sub_100120048(&qword_10094A100, &qword_10094A0F8);
    v21[1] = sub_10000DB7C(a4);
    v21[0] = sub_10076FF9C();
    type metadata accessor for TitleHeaderView(0);
    sub_1007708FC();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_10076A3BC();
    return result;
  }

  sub_10076529C();
  if (sub_10076527C() == a1 && v13 == a2)
  {
    goto LABEL_8;
  }

  v18 = sub_10077167C();

  if (v18)
  {
    goto LABEL_12;
  }

  if (sub_10076528C() == a1 && v19 == a2)
  {
LABEL_8:
  }

  else
  {
    v20 = sub_10077167C();

    if ((v20 & 1) == 0)
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

LABEL_12:
  *(a4 + 24) = sub_10000A5D4(&qword_10094A0E8);
  *(a4 + 32) = sub_100120048(&qword_10094A0F0, &qword_10094A0E8);
  sub_10000DB7C(a4);
  sub_10076526C();
  return result;
}

uint64_t sub_100139080(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946720);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v56 - v14;
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v56 - v20;
  if (((*(v1 + 24))(v19) & 1) == 0)
  {
    return 0;
  }

  v59 = v5;
  v60 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v22 = *(v11 + 8);
  v22(v21, v10);
  v23 = v65;
  if (!v65)
  {
    return 0;
  }

  v24 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v24 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    return 0;
  }

  v58 = v64;
  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v26 = v25;
  v28 = v27;
  (*(v7 + 8))(v9, v6);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v22(v17, v10);
  v29 = v64;
  if (v64)
  {
    sub_10076B8EC();
    v31 = v30;
    v32 = sub_10076461C();
    if (qword_10093F988 != -1)
    {
      swift_once();
    }

    v33 = qword_10094C0F0;
    if (v31)
    {
      v34 = sub_10076FF6C();
    }

    else
    {
      v34 = 0;
    }

    [v33 setTitle:v34 forState:0];

    [v33 setImage:0 forState:0];
    v38 = [v33 titleLabel];
    v39 = v38;
    if (v38)
    {
      v56 = v29;
      v57 = v31;
      v40 = v38;
      v41 = [v40 font];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v32];
      }

      else
      {
        v43 = 0;
      }

      [v40 setFont:v43];
    }

    [v33 sizeThatFits:{v26, v28}];
    v45 = v44;
    v37 = v46;

    v36 = v45 + 0.0;
    [v33 setTitle:0 forState:0];
    [v33 setImage:0 forState:0];
  }

  else
  {
    v36 = 0.0;
    v37 = 0.0;
  }

  v47 = v61;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v22(v47, v10);
  v60 = v64;
  v57 = type metadata accessor for TitleHeaderView(0);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v22(v47, v10);
  v49 = v64;
  v48 = v65;
  v50 = v62;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v22(v50, v10);
  v51 = v63;
  v52 = sub_10013ACE0();
  v53 = v59;
  sub_1001397C4(v59);
  v54 = sub_10076462C();
  swift_getObjectType();
  LOBYTE(v55) = 1;
  sub_1001963E0(v49, v48, v51, v58, v23, v60, 0, 0, v26, v28, v36, v37, 0, 0, v52, v53, v55, v54);

  swift_unknownObjectRelease();

  sub_10013B184(v53, type metadata accessor for TitleHeaderView.Style);
  return *&v26;
}

uint64_t sub_10013976C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B61C();
  *a1 = result;
  return result;
}

uint64_t sub_100139798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B63C();
  *a1 = result;
  return result;
}

uint64_t sub_1001397C4@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v95 = sub_100763BBC();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v2 - 8);
  v94 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v76 - v5;
  v6 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v6 - 8);
  v91 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v76 - v9;
  v79 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v76 - v12;
  __chkstk_darwin(v13);
  v85 = &v76 - v14;
  __chkstk_darwin(v15);
  v90 = (&v76 - v16);
  v17 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v17 - 8);
  v78 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v76 - v20;
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  __chkstk_darwin(v27);
  v96 = &v76 - v28;
  v29 = sub_10000A5D4(&unk_100946720);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v76 - v34;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v36 = *(v30 + 8);
  v36(v35, v29);
  v37 = v98;
  if (v98)
  {
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v36(v32, v29);
  v38 = v98;
  if (v98)
  {
    v39 = v97;

    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_10076034C();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v96, 1, 1, v42);
  v44 = sub_100763BAC();
  v80 = *(v44 - 8);
  v81 = v44;
  (*(v80 + 56))(v92, 1, 1);
  v45 = (v43 + 48);
  v82 = v41;
  if (!v37)
  {
    if (v41)
    {
      v47 = v77;
      sub_100016E2C(v96, v77, &unk_10094BB80);
      if ((*v45)(v47, 1, v42) == 1)
      {
        sub_10000CFBC(v47, &unk_10094BB80);
        v48 = 0;
      }

      else
      {
        v48 = sub_1007602EC();
        (*(v43 + 8))(v47, v42);
      }

      v52 = v84;
      v53 = v79;
      sub_100286F40(v48, v90);

      v54 = v85;
      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v55 = qword_10099DFE8;
      goto LABEL_31;
    }

    v50 = v78;
    sub_100016E2C(v96, v78, &unk_10094BB80);
    if ((*v45)(v50, 1, v42) == 1)
    {
      sub_10000CFBC(v50, &unk_10094BB80);
      v51 = 0;
    }

    else
    {
      v51 = sub_1007602EC();
      (*(v43 + 8))(v50, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_100286F40(v51, v90);

    v54 = v85;
    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_10099DFA0;
LABEL_38:
    v59 = v54;
    goto LABEL_39;
  }

  if (!v41)
  {
    sub_100016E2C(v96, v23, &unk_10094BB80);
    if ((*v45)(v23, 1, v42) == 1)
    {
      sub_10000CFBC(v23, &unk_10094BB80);
      v49 = 0;
    }

    else
    {
      v49 = sub_1007602EC();
      (*(v43 + 8))(v23, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_100286F40(v49, v90);

    v54 = v85;
    if (qword_10093FC58 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_10099DFB8;
    goto LABEL_38;
  }

  sub_100016E2C(v96, v26, &unk_10094BB80);
  if ((*v45)(v26, 1, v42) == 1)
  {
    sub_10000CFBC(v26, &unk_10094BB80);
    v46 = 0;
  }

  else
  {
    v46 = sub_1007602EC();
    (*(v43 + 8))(v26, v42);
  }

  v52 = v84;
  v53 = v79;
  sub_100286F40(v46, v90);

  v54 = v85;
  if (qword_10093FC70 != -1)
  {
    swift_once();
  }

  v55 = qword_10099E000;
LABEL_31:
  v58 = sub_10000A61C(v53, v55);
  sub_10011BA50(v58, v54);
  if (qword_10093FC48 != -1)
  {
    swift_once();
  }

  v56 = 0;
  v57 = qword_10099DF88;
  v59 = v52;
LABEL_39:
  v60 = sub_10000A61C(v53, v57);
  sub_10011BA50(v60, v59);
  (*(v83 + 56))(v52, v56, 1, v53);
  v61 = v90;
  v62 = v86;
  sub_10011BA50(v90, v86);
  v63 = v87;
  sub_10011BA50(v54, v87);
  sub_100016E2C(v52, v91, &qword_100949718);
  v64 = v92;
  sub_100016E2C(v92, v94, &qword_100949710);
  v65 = v89;
  (*(v89 + 104))(v93, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v95);
  sub_1000325F0();
  v66 = sub_100770CDC();
  sub_10000CFBC(v64, &qword_100949710);
  sub_10000CFBC(v52, &qword_100949718);
  sub_10013B184(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B184(v61, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v96, &unk_10094BB80);
  v67 = type metadata accessor for TitleHeaderView.Style(0);
  v68 = v67[8];
  v69 = v88;
  sub_10013B084(v62, v88);
  sub_10013B084(v63, v69 + v67[5]);
  sub_10013B0E8(v91, v69 + v67[6]);
  *(v69 + v67[7]) = 0;
  *(v69 + v68) = 0;
  v70 = v82;
  *(v69 + v67[9]) = v82;
  *(v69 + v67[14]) = 0x4030000000000000;
  *(v69 + v67[12]) = 0;
  *(v69 + v67[13]) = v66;
  v71 = v94;
  (*(v65 + 32))(v69 + v67[11], v93, v95);
  v73 = v80;
  v72 = v81;
  if ((*(v80 + 48))(v71, 1, v81) != 1)
  {
    return (*(v73 + 32))(v69 + v67[10], v71, v72);
  }

  sub_10000CFBC(v71, &qword_100949710);
  if (v70)
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
  }

  else
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
  }

  return (*(v73 + 104))(v69 + v67[10], *v74, v72);
}

uint64_t sub_10013A3B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10013A42C(a1, a6);
  }

  return result;
}

uint64_t sub_10013A42C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076469C();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  __chkstk_darwin(v9);
  v50 = &v47 - v10;
  v11 = sub_10076BEDC();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100946720);
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v57 = a2;
  sub_10076468C();
  sub_100760C4C();
  v54 = v3;
  sub_10076F64C();
  sub_10076FC1C();
  v59 = v61;
  swift_getKeyPath();
  sub_10076F49C();

  v17 = v61;
  v18 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
  v19 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);

  sub_1001903B4(v17);
  *(a1 + v18) = v17;

  sub_1001903C8(v19);

  swift_getKeyPath();
  v60 = v14;
  sub_10076F49C();

  v20 = v61;
  v21 = v62;
  v22 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v24 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v23 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);

  sub_10018FD94(v20, v21);
  *v22 = v20;
  v22[1] = v21;

  sub_10018FE28(v24, v23);

  if (*(a1 + v18))
  {
    v25 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v25)
    {

      v26 = v25;
      sub_10076BEFC();
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v47 + 8))(v13, v48);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_10000D7F8();
      sub_100760B8C();
    }
  }

  swift_getKeyPath();
  sub_10076F49C();

  v27 = v61;
  v28 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  v29 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);

  sub_100190554(v27);
  *(a1 + v28) = v27;

  sub_100190668(v29);

  v30 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_10076F49C();

  if (v62)
  {
    v31 = sub_10076FF6C();
  }

  else
  {
    v31 = 0;
  }

  v49 = v30;
  [v30 setText:v31];

  if (*(a1 + v28))
  {
    v32 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
    if (v32)
    {

      v33 = v32;
      sub_10076BEFC();
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v47 + 8))(v13, v48);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_10000D7F8();
      sub_100760B8C();
    }
  }

  v34 = v53;
  v35 = *(v53 + 16);
  v36 = v50;
  v37 = v55;
  v35(v50, v57, v55);
  v38 = v51;
  v35(v51, v36, v37);
  v39 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v54;
  (*(v34 + 32))(v40 + v39, v36, v37);
  v41 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v41 = sub_10013AFF8;
  v41[1] = v40;

  [v49 setNumberOfLines:sub_10013ACE0()];

  (*(v34 + 8))(v38, v37);
  v42 = v56;
  sub_1001397C4(v56);
  (*((swift_isaMask & *a1) + 0x1C8))(v42);
  v43 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (v43)
  {
    swift_getKeyPath();
    v44 = v43;
    sub_10076F49C();

    if (v62)
    {
      v45 = sub_10076FF6C();
    }

    else
    {
      v45 = 0;
    }

    [v44 setText:v45];
  }

  [a1 setNeedsLayout];

  return (*(v58 + 8))(v16, v60);
}

uint64_t sub_10013AC74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10013ACE0()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = sub_10076461C();
  v5 = sub_10077071C();

  if (v5)
  {
    return 0;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  if (!v7[1])
  {
    return 2;
  }

  return 1;
}

void *sub_10013AE20(uint64_t a1)
{
  v1 = COERCE_DOUBLE(sub_100139080(a1));
  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v1;
  v5 = v2;
  v6 = v2 >= v1 ? v1 : v2;
  if (v6 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:v4];
  v9 = [v7 absoluteDimension:v5];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v10 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000A5D4(&unk_100942870);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007841E0;
  *(v12 + 32) = v11;

  return v12;
}

uint64_t sub_10013AF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B63C();
  *a1 = result;
  return result;
}

uint64_t sub_10013AF98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B78C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10013AFC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B61C();
  *a1 = result;
  return result;
}

uint64_t sub_10013AFF8()
{
  sub_10076469C();

  return sub_10013ACE0();
}

uint64_t sub_10013B058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B7AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10013B084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013B0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013B158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B60C();
  *a1 = result;
  return result;
}

uint64_t sub_10013B184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013B1E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013B21C()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10013B2E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10013A3B8(a1, a2, a3, a4, v10, v11);
}

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013B47C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_10077178C(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_10077178C(*&v3);
}

Swift::Int sub_10013B4CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10077175C();
  sub_10013B47C(v1, v2);
  return sub_1007717AC();
}

Swift::Int sub_10013B528()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10077175C();
  sub_10013B47C(v1, v2);
  return sub_1007717AC();
}

id sub_10013B5A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_10013BAC8(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10013B604()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_10013BAC8(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_10013B664()
{
  sub_10000A5D4(&qword_10094A1E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10078CEA0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_10078CEB0;
  *(v0 + 96) = xmmword_10078CEB0;
  *(v0 + 112) = xmmword_10078CEB0;
  *(v0 + 128) = xmmword_10078CEC0;
  *(v0 + 144) = xmmword_10078CEC0;
  *(v0 + 160) = xmmword_10078CEC0;
  *(v0 + 176) = xmmword_10078CED0;
  *(v0 + 192) = xmmword_10078CED0;
  *(v0 + 208) = xmmword_10078CED0;
  *(v0 + 224) = xmmword_10078CEE0;
  *(v0 + 240) = xmmword_10078CEE0;
  *(v0 + 256) = xmmword_10078CEF0;
  *(v0 + 272) = xmmword_10078CF00;
  *(v0 + 288) = xmmword_10078CF00;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_10078CF10;
  *(v0 + 352) = xmmword_10078CF20;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_10078CF30;
  *(v0 + 400) = xmmword_10078CF40;
  *(v0 + 416) = xmmword_10078CF50;
  *(v0 + 432) = xmmword_10078CF60;
  *(v0 + 448) = xmmword_10078CF70;
  *(v0 + 464) = xmmword_10078CF80;
  *(v0 + 480) = xmmword_10078CF50;
  *(v0 + 496) = xmmword_10078CF80;
  *(v0 + 512) = xmmword_10078CF90;
  *(v0 + 528) = xmmword_10078CFA0;
  *(v0 + 544) = xmmword_10078CFB0;
  *(v0 + 560) = xmmword_10078CFC0;
  *(v0 + 576) = xmmword_10078CFC0;
  *(v0 + 592) = xmmword_10078CFC0;
  *(v0 + 608) = xmmword_10078CFD0;
  *(v0 + 624) = xmmword_10078CFE0;
  *(v0 + 640) = xmmword_10078CFF0;
  *(v0 + 656) = xmmword_10078D000;
  *(v0 + 672) = xmmword_10078D010;
  *(v0 + 688) = xmmword_10078D020;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_10078D030;
  *(v0 + 736) = xmmword_10078D040;
  *(v0 + 752) = xmmword_10078D050;
  *(v0 + 768) = xmmword_10078D050;
  *(v0 + 784) = xmmword_10078D060;
  *(v0 + 800) = xmmword_10078D070;
  *(v0 + 816) = xmmword_10078D080;
  *(v0 + 832) = xmmword_10078D090;
  *(v0 + 848) = xmmword_10078D0A0;
  *(v0 + 864) = xmmword_10078D0A0;
  *(v0 + 880) = xmmword_10078D0A0;
  *(v0 + 896) = xmmword_10078D0B0;
  *(v0 + 912) = xmmword_10078D0B0;
  *(v0 + 928) = xmmword_10078D0B0;
  *(v0 + 944) = xmmword_10078D0C0;
  *(v0 + 960) = xmmword_10078D0C0;
  *(v0 + 976) = xmmword_10078D0D0;
  *(v0 + 992) = xmmword_10078D0E0;
  *(v0 + 1008) = xmmword_10078D0F0;
  *(v0 + 1024) = xmmword_10078D0F0;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_10078D100;
  *(v0 + 1072) = xmmword_10078D110;
  *(v0 + 1088) = xmmword_10078D120;
  *(v0 + 1104) = xmmword_10078D130;
  *(v0 + 1120) = xmmword_10078D140;
  *(v0 + 1136) = xmmword_10078D150;
  *(v0 + 1152) = xmmword_10078D150;
  *(v0 + 1168) = xmmword_10078D150;
  *(v0 + 1184) = xmmword_10078D160;
  *(v0 + 1200) = xmmword_10078D170;
  *(v0 + 1216) = xmmword_10078D160;
  *(v0 + 1232) = xmmword_10078D180;
  *(v0 + 1248) = xmmword_10078D190;
  *(v0 + 1264) = xmmword_10078D1A0;
  *(v0 + 1280) = xmmword_10078D1B0;
  *(v0 + 1296) = xmmword_10078D1C0;
  *(v0 + 1312) = xmmword_10078D1D0;
  *(v0 + 1328) = xmmword_10078D1E0;
  *(v0 + 1344) = xmmword_10078D1F0;
  *(v0 + 1360) = xmmword_10078D200;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_10078D210;
  *(v0 + 1440) = xmmword_10078D210;
  *(v0 + 1456) = xmmword_10078D210;
  *(v0 + 1472) = xmmword_10078D220;
  *(v0 + 1488) = xmmword_10078D220;
  *(v0 + 1504) = xmmword_10078D220;
  *(v0 + 1520) = xmmword_10078D230;
  *(v0 + 1536) = xmmword_10078D240;
  *(v0 + 1552) = xmmword_10078D250;
  *(v0 + 1568) = xmmword_10078D260;
  *(v0 + 1584) = xmmword_10078D270;
  *(v0 + 1600) = xmmword_10078D260;
  *(v0 + 1616) = xmmword_10078D280;
  *(v0 + 1632) = xmmword_10078D290;
  *(v0 + 1648) = xmmword_10078D2A0;
  *(v0 + 1664) = xmmword_10078D290;
  *(v0 + 1680) = xmmword_10078D2B0;
  *(v0 + 1696) = xmmword_10078D2C0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_1000FC894(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_10094A138 = v7;
  return result;
}

uint64_t sub_10013BA64()
{

  return swift_deallocClassInstance();
}

id sub_10013BAC8(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_10093F818 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_10094A138;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(off_10094A138 + 2))
  {
LABEL_4:
    v15 = *(&off_100882508 + v5 + 32);
    v16 = sub_10061029C(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(v7[7] + 32 * v16), *(v7[7] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (v7[2])
    {
      v19 = sub_10061029C(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(v7[7] + 32 * v19), *(v7[7] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (v7[2])
      {
        v22 = sub_10061029C(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(v7[7] + 32 * v22), *(v7[7] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (v7[2])
        {
          v25 = sub_10061029C(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(v7[7] + 32 * v25), *(v7[7] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (v7[2])
          {
            v28 = sub_10061029C(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(v7[7] + 32 * v28), *(v7[7] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (v7[2])
            {
              v31 = sub_10061029C(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(v7[7] + 32 * v31), *(v7[7] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (v7[2])
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_10013BF4C()
{
  result = qword_10094A1F0;
  if (!qword_10094A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A1F0);
  }

  return result;
}

id sub_10013C138()
{
  v2.receiver = v0;
  v2.super_class = _s18PaletteContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10013C1A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10075DDBC();
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v116 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094A288);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_10076CB4C();
  __chkstk_darwin(v16 - 8);
  v17 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge;
  *&v4[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  v24 = sub_10076C9CC();
  sub_10076C97C();
  v25 = enum case for AchievementsTheme.vibrant(_:);
  v26 = sub_10076C9DC();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[v23] = sub_10076C9AC();
  v29 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button;
  sub_10076313C();
  *&v5[v31] = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v32 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  *&v5[v32] = [objc_allocWithZone(UIVisualEffectView) init];
  v33 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_10075FD2C();
  *&v5[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v35 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  v115 = sub_100016F40(0, &qword_1009492C0);
  v36 = sub_1007701BC();

  *&v5[v34] = v36;
  v121.receiver = v5;
  v121.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v121, "initWithFrame:", a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 setOverrideUserInterfaceStyle:2];

  v39 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v40 = *&v37[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  [v42 setPreferredSymbolConfiguration:v43];

  v44 = *&v37[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTintColor:v47];

  v48 = [*&v37[v39] layer];
  v49 = kCAFilterPlusL;
  [v48 setCompositingFilter:kCAFilterPlusL];

  v50 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge;
  v51 = *&v37[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge];
  v52 = [v45 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [*&v37[v50] layer];
  v113 = v49;
  [v53 setCompositingFilter:v49];

  [*&v37[v50] setAdjustsFontForContentSizeCategory:1];
  v114 = v50;
  v54 = qword_1009410C0;
  v55 = *&v37[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = sub_10076D3DC();
  sub_10000A61C(v56, qword_1009A2038);
  v57 = v37;
  v58.super.isa = [v57 traitCollection];
  isa = v58.super.isa;
  v60 = sub_10076D3BC(v58).super.isa;

  v61 = objc_opt_self();
  v62 = [v61 fontWithDescriptor:v60 size:0.0];

  [v55 setFont:v62];
  v63 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title;
  v64 = qword_1009410C8;
  v65 = *&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title];
  if (v64 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v56, qword_1009A2050);
  v66.super.isa = [v57 traitCollection];
  v67 = v66.super.isa;
  v68 = sub_10076D3BC(v66).super.isa;

  v69 = [v61 fontWithDescriptor:v68 size:0.0];
  [v65 setFont:v69];

  v70 = *&v57[v63];
  v71 = [v45 labelColor];
  [v70 setTextColor:v71];

  [*&v57[v63] setAdjustsFontForContentSizeCategory:1];
  v112 = v63;
  v72 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  v73 = qword_1009410D0;
  v74 = *&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  if (v73 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v56, qword_1009A2068);
  v75 = [v57 traitCollection];

  v76.super.isa = v75;
  v77 = sub_10076D3BC(v76).super.isa;

  v78 = [v61 fontWithDescriptor:v77 size:0.0];
  [v74 setFont:v78];

  [*&v57[v72] setNumberOfLines:2];
  [*&v57[v72] setAdjustsFontForContentSizeCategory:1];
  v79 = *&v57[v72];
  v80 = [v45 secondaryLabelColor];
  [v79 setTextColor:v80];

  v81 = [*&v57[v72] layer];
  v82 = v113;
  [v81 setCompositingFilter:v113];

  v83 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator;
  v84 = *&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator];
  v85 = objc_allocWithZone(UIColor);
  v86 = v84;
  v87 = [v85 initWithWhite:1.0 alpha:0.12];
  [v86 setBackgroundColor:v87];

  v88 = [*&v57[v83] layer];
  [v88 setCompositingFilter:v82];

  v89 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  [*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setContentMode:2];
  [*&v57[v89] setClipsToBounds:1];
  v90 = [v57 contentView];
  [v90 addSubview:*&v57[v89]];

  v91 = [v57 contentView];
  v92 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  [v91 addSubview:*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect]];

  v93 = [v57 contentView];
  [v93 addSubview:*&v37[v114]];

  v94 = [v57 contentView];
  [v94 addSubview:*&v57[v112]];

  v95 = [v57 contentView];
  [v95 addSubview:*&v57[v72]];

  v96 = [v57 contentView];
  v97 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  [v96 addSubview:*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent]];

  v98 = [v57 contentView];
  [v98 addSubview:*&v57[v83]];

  v99 = [v57 contentView];
  [v99 addSubview:*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup]];

  v100 = *&v57[v92];

  v101 = sub_1007701AC().super.isa;

  [v100 setBackgroundEffects:v101];

  v119 = 0;
  v120 = 0xE000000000000000;
  sub_10077145C(27);

  v119 = 0xD000000000000019;
  v120 = 0x80000001007D58D0;
  v102 = v116;
  sub_10075DDAC();
  v103 = sub_10075DD8C();
  v105 = v104;
  (*(v117 + 8))(v102, v118);
  v122._countAndFlagsBits = v103;
  v122._object = v105;
  sub_1007700CC(v122);

  v106 = *&v57[v92];
  v107 = sub_10076FF6C();
  [v106 _setGroupName:v107];

  v108 = *&v57[v97];
  sub_10076C99C();

  v109 = *&v57[v97];
  sub_10076C98C();

  return v57;
}

uint64_t sub_10013CEDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007693EC();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007693CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v41 - v13;
  v74.receiver = v1;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v12);
  v15 = swift_unknownObjectRetain();
  sub_10013D454(v15, v14);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v18 = [v17 image];
  if (v18)
  {

    v19 = v17;
    [*&v1[v16] sizeToFit];
    v17 = [v1 contentView];
    [v17 insertSubview:*&v1[v16] belowSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge]];
  }

  else
  {
    [v17 removeFromSuperview];
    v19 = 0;
  }

  (*(v8 + 16))(v10, v14, v7);
  v48 = v7;
  v45 = v14;
  v46 = v8;
  v41 = v10;
  if (v19)
  {
    v20 = sub_100016F40(0, &qword_10094A280);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
  }

  v69 = v19;
  v72 = v20;
  v73 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge];
  v67 = sub_100016F40(0, &qword_100956550);
  v68 = &protocol witness table for UILabel;
  v66 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title];
  v64 = v67;
  v65 = &protocol witness table for UILabel;
  v62 = &protocol witness table for UILabel;
  v63 = v23;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  v61 = v67;
  v60 = v24;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  v58 = sub_10076C9CC();
  v59 = &protocol witness table for UIView;
  v57 = v25;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator];
  v55 = type metadata accessor for SeparatorView();
  v56 = &protocol witness table for UIView;
  v54 = v26;
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup];
  v52 = type metadata accessor for SmallLockupView();
  v53 = &protocol witness table for UIView;
  v51 = v27;
  v28 = v19;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v47;
  sub_1007693DC();
  v36 = [v1 contentView];
  [v36 bounds];

  v37 = v42;
  sub_1007693AC();
  (*(v43 + 8))(v37, v44);
  [v1 frame];
  CGRectGetWidth(v75);
  [v1 frame];
  CGRectGetHeight(v76);
  sub_10075FC8C();
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect];
  [v1 frame];
  Width = CGRectGetWidth(v77);
  [v1 frame];
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v78)}];

  (*(v49 + 8))(v35, v50);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_10013D454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    [a1 pageMarginInsets];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != 1)
    {
      v10 = [a1 traitCollection];
      [v10 userInterfaceIdiom];
    }
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D9AC();
  v12 = sub_10000A61C(v11, qword_1009A2380);
  v82[3] = v11;
  v82[4] = &protocol witness table for StaticDimension;
  v13 = sub_10000DB7C(v82);
  v14 = *(v11 - 8);
  v43 = *(v14 + 16);
  v44 = v12;
  v42 = v14 + 16;
  v43(v13, v12, v11);
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v54 = sub_10000A61C(v15, qword_1009A2038);
  v16 = *(v15 - 8);
  v51 = *(v16 + 16);
  v47 = v16 + 16;
  v51(v7, v54, v15);
  v50 = enum case for FontSource.useCase(_:);
  v46 = v4[13];
  v46(v7);
  v81[3] = v11;
  v81[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v81);
  v79 = v3;
  v80 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v78);
  v18 = v4[2];
  v18(v17, v7, v3);
  sub_10076D9BC();
  v19 = v4[1];
  v19(v7, v3);
  v41 = v15;
  v51(v7, v54, v15);
  v52 = v4 + 13;
  v20 = v46;
  (v46)(v7, v50, v3);
  v21 = v20;
  v40 = v11;
  v79 = v11;
  v80 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v78);
  v76 = v3;
  v77 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v75);
  v53 = v18;
  v54 = (v4 + 2);
  v18(v22, v7, v3);
  v23 = v19;
  sub_10076D9BC();
  v49 = v4 + 1;
  v19(v7, v3);
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  v24 = v41;
  v25 = sub_10000A61C(v41, qword_1009A2050);
  v51(v7, v25, v24);
  (v21)(v7, v50, v3);
  v26 = v40;
  v76 = v40;
  v77 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v75);
  v73 = v3;
  v74 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v72);
  v53(v27, v7, v3);
  sub_10076D9BC();
  v23(v7, v3);
  v48 = v23;
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v24, qword_1009A2068);
  v51(v7, v28, v24);
  (v21)(v7, v50, v3);
  v73 = v26;
  v74 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v72);
  v70 = v3;
  v71 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v69);
  v53(v29, v7, v3);
  sub_10076D9BC();
  v48(v7, v3);
  v70 = v26;
  v71 = &protocol witness table for StaticDimension;
  v30 = sub_10000DB7C(v69);
  v32 = v43;
  v31 = v44;
  v43(v30, v44, v26);
  v68[3] = v26;
  v68[4] = &protocol witness table for StaticDimension;
  v33 = sub_10000DB7C(v68);
  v32(v33, v31, v26);
  *v7 = UIFontTextStyleFootnote;
  LODWORD(v51) = enum case for FontSource.textStyle(_:);
  v21(v7);
  v67[3] = v26;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v67);
  v65 = v3;
  v66 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v64);
  v35 = v53;
  v53(v34, v7, v3);
  v36 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v37 = v48;
  v48(v7, v3);
  *v7 = v36;
  (v46)(v7, v51, v3);
  v65 = v26;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v3;
  v63 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v61);
  v35(v38, v7, v3);
  sub_10076D9BC();
  v37(v7, v3);
  v62 = &type metadata for Double;
  v63 = &protocol witness table for Double;
  v60 = &protocol witness table for Double;
  v61[0] = 0x4077700000000000;
  v59 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v58 = 0x4034000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4077C00000000000;
  return sub_1007693BC();
}

uint64_t sub_10013DC98(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v15, "focusItemsInRect:", a1, a2, a3, a4);
  sub_10000A5D4(&unk_10094A270);
  v11 = sub_1007701BC();

  v16 = v11;
  v12 = *&v5[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button];
  sub_10077019C();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v13 = *&v5[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_10077019C();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v16;
}

uint64_t type metadata accessor for GameCenterReengagementCollectionViewCell()
{
  result = qword_10094A258;
  if (!qword_10094A258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013E008()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013E0D0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094A288);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10076CB4C();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_pageTraits) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge;
  *(v1 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  v13 = sub_10076C9CC();
  sub_10076C97C();
  v14 = enum case for AchievementsTheme.vibrant(_:);
  v15 = sub_10076C9DC();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = objc_allocWithZone(v13);
  *(v1 + v12) = sub_10076C9AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button;
  sub_10076313C();
  *(v1 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v21 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  *(v1 + v21) = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_10075FD2C();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v24 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_100016F40(0, &qword_1009492C0);
  v25 = sub_1007701BC();

  *(v1 + v23) = v25;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10013E4AC()
{
  v0 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&qword_10094A330);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  sub_10076336C();
  sub_10076F87C();
  sub_10013E624();
  sub_10076F83C();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_10013E624()
{
  result = qword_10094A338;
  if (!qword_10094A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A338);
  }

  return result;
}

unint64_t sub_10013E68C()
{
  result = qword_10094A340;
  if (!qword_10094A340)
  {
    sub_1007688BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A340);
  }

  return result;
}

uint64_t sub_10013E6E4()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007688AC();
  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

uint64_t sub_10013E830(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076865C();
  sub_10000DB18(v13, a5);
  sub_10000A61C(v13, a5);
  v17[24] = &type metadata for Double;
  v17[25] = &protocol witness table for Double;
  *&v17[21] = a1;
  v17[19] = &type metadata for Double;
  v17[20] = &protocol witness table for Double;
  *&v17[16] = a2;
  if (qword_100941078 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A1F60);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v17[14] = &type metadata for Double;
  v17[15] = &protocol witness table for Double;
  *&v17[11] = a3;
  v17[9] = &type metadata for Double;
  v17[10] = &protocol witness table for Double;
  v17[6] = 0x4046800000000000;
  v17[5] = &protocol witness table for Double;
  v17[4] = &type metadata for Double;
  v17[1] = 0x4024000000000000;
  return sub_10076864C();
}

char *sub_10013EA5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  if (qword_100941070 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A1F48);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v47[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel] = sub_1007626AC();
  if (qword_100941078 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v15, qword_1009A1F60);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_1007626AC();
  v26 = v47;
  *&v47[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel] = v25;
  *&v26[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_itemViews] = _swiftEmptyArrayStorage;
  v48.receiver = v26;
  v48.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  sub_1000325F0();
  v34 = v33;
  v35 = sub_100770CFC();
  [v34 setTextColor:v35];

  v36 = OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel;
  v37 = *&v31[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
  if (sub_10013EEE8())
  {
    v38 = 3;
  }

  else
  {
    v38 = 4;
  }

  [v37 setNumberOfLines:v38];

  v39 = *&v31[v36];
  v40 = sub_100770D1C();
  [v39 setTextColor:v40];

  sub_10013EFE8();
  [v31 addSubview:*&v31[v32]];
  [v31 addSubview:*&v31[v36]];

  return v31;
}

uint64_t sub_10013EEE8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706EC();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      [v5 frame];
      Width = CGRectGetWidth(v10);
      [v1 bounds];
      v9 = CGRectGetWidth(v11);

      return v9 < Width;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10013EFE8()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  if (v8)
  {
    v10 = enum case for DirectionalTextAlignment.leading(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_10076262C();
    [v9 setNumberOfLines:0];
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
    v11(v6, v10, v2);
    sub_10076262C();
    return [v12 setNumberOfLines:0];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel] setTextAlignment:1];
    [v9 setNumberOfLines:2];
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
    [v14 setTextAlignment:1];
    if (sub_10013EEE8())
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    return [v14 setNumberOfLines:v15];
  }
}

uint64_t sub_10013F260()
{
  ObjectType = swift_getObjectType();
  v23 = sub_10076D1FC();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076865C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076867C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v22[1] = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v11);
  if (sub_10013EEE8())
  {
    if (qword_10093F828 != -1)
    {
      swift_once();
    }

    v14 = qword_10094A360;
  }

  else
  {
    if (qword_10093F820 != -1)
    {
      swift_once();
    }

    v14 = qword_10094A348;
  }

  v15 = sub_10000A61C(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  v28 = sub_1007626BC();
  v29 = &protocol witness table for UILabel;
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
  v26 = &protocol witness table for UILabel;
  v27 = v16;
  v25 = v28;
  v24 = v17;
  swift_beginAccess();
  v18 = v16;
  v19 = v17;

  sub_10016DF4C(v20);

  sub_10076866C();
  sub_10076422C();
  sub_10076863C();
  (*(v2 + 8))(v4, v23);
  return (*(v10 + 8))(v13, v9);
}

double sub_10013F5F0()
{
  v1 = sub_10076865C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076867C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10013EEE8())
  {
    if (qword_10093F828 != -1)
    {
      swift_once();
    }

    v9 = qword_10094A360;
  }

  else
  {
    if (qword_10093F820 != -1)
    {
      swift_once();
    }

    v9 = qword_10094A348;
  }

  v10 = sub_10000A61C(v1, v9);
  (*(v2 + 16))(v4, v10, v1);
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel);
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel);
  v19[8] = &protocol witness table for UILabel;
  v19[9] = v11;
  v19[7] = v20;
  v19[4] = v12;
  swift_beginAccess();
  v13 = v11;
  v14 = v12;

  sub_10016DF4C(v15);

  sub_10076866C();
  sub_10076862C();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_10013F944(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || (result = sub_10077071C(), (result & 1) != (v5 & 1)))
  {
    sub_10013EFE8();
    return [v2 setNeedsLayout];
  }

  return result;
}

objc_class *sub_10013FA60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  sub_10076555C();
  if (v5)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
  sub_10076556C();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_itemViews;
  result = swift_beginAccess();
  v12 = *&v2[v10];
  if (v12 >> 62)
  {
    result = sub_10077158C();
    v13 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_10077149C();
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    [v15 removeFromSuperview];
  }

LABEL_16:
  *&v2[v10] = _swiftEmptyArrayStorage;

  v17 = sub_10076554C();
  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_36:

    return [v3 setNeedsLayout];
  }

  v19 = sub_10077158C();
  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_18:
  type metadata accessor for ArcadeWelcomeItemView();
  result = swift_getObjCClassFromMetadata();
  v29 = result;
  if (v19 >= 1)
  {
    v20 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      v21 = [objc_allocWithZone(v29) init];
      v22 = *&v21[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel];
      sub_100762F9C();
      if (v23)
      {
        v24 = sub_10076FF6C();
      }

      else
      {
        v24 = 0;
      }

      [v22 setText:v24];

      v25 = *&v21[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel];
      sub_100762F7C();
      if (v26)
      {
        v27 = sub_10076FF6C();
      }

      else
      {
        v27 = 0;
      }

      [v25 setText:v27];

      *&v21[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork] = sub_100762F8C();

      *&v21[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader] = a2;

      [v21 setNeedsLayout];
      [v3 addSubview:v21];
      swift_beginAccess();
      v28 = v21;
      sub_10077019C();
      if (*((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      ++v20;
      sub_10077025C();
      swift_endAccess();
    }

    while (v19 != v20);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
  return result;
}

id sub_10013FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = sub_1007616CC();
  sub_1004A41D8(v10, v11);
  v12 = sub_1007616BC();

  return sub_1004A41E4(v12, v13);
}

double sub_10014000C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = sub_1007656EC();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076570C();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076997C();
  v55 = *(v54 - 8);
  *&v10 = __chkstk_darwin(v54).n128_u64[0];
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 pageMarginInsets];
  sub_100770ACC();
  v13 = [a5 traitCollection];
  v14 = sub_1007706EC();

  v15 = 4;
  if ((v14 & 1) == 0)
  {
    v15 = 1;
  }

  v52 = v15;
  v45 = a1;
  sub_1007616CC();
  v44 = v16;
  v17 = sub_10005312C();
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  sub_10000A61C(v18, qword_10099FCC0);
  v19 = [a5 traitCollection];
  sub_100770B3C();

  v20 = sub_10076C04C();
  v62 = v20;
  v21 = sub_10014073C(&qword_100943230, &type metadata accessor for Feature);
  v63 = v21;
  v22 = sub_10000DB7C(v61);
  v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24 = *(v20 - 8);
  v43 = v17;
  v25 = *(v24 + 104);
  v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_10076C90C();
  v53 = a5;
  sub_10000CD74(v61);
  sub_10076996C();
  sub_10076994C();
  v26 = *(v55 + 8);
  v55 += 8;
  v26(v12, v54);
  v45 = sub_1007616BC();
  v44 = v27;
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v18, qword_10099FCD8);
  v28 = [v53 traitCollection];
  sub_100770B3C();

  v59 = v20;
  v60 = v21;
  v29 = sub_10000DB7C(v58);
  v25(v29, v23, v20);
  sub_10076C90C();
  sub_10000CD74(v58);
  sub_10076996C();
  sub_10076994C();
  v26(v12, v54);
  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v30 = v47;
  v31 = sub_10000A61C(v47, qword_10099FCA8);
  (*(v46 + 16))(v48, v31, v30);
  v32 = v62;
  v33 = v63;
  v34 = sub_10000CF78(v61, v62);
  v57[3] = v32;
  v57[4] = *(v33 + 8);
  v35 = sub_10000DB7C(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v59;
  v37 = v60;
  v38 = sub_10000CF78(v58, v59);
  v56[3] = v36;
  v56[4] = *(v37 + 8);
  v39 = sub_10000DB7C(v56);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v49;
  sub_1007656FC();
  sub_10014073C(&unk_100961240, &type metadata accessor for EditorialQuoteLayout);
  v41 = v51;
  sub_10076D2AC();
  (*(v50 + 8))(v40, v41);
  sub_10000CD74(v58);
  sub_10000CD74(v61);
  return a2;
}

uint64_t sub_10014073C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100140784(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(_BYTE *, unint64_t))
{
  v8 = v7;
  v112 = a7;
  v121 = a6;
  v93 = a5;
  v120 = a4;
  v114 = a3;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10076D39C();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_10076350C();
  v113 = *(v17 - 8);
  __chkstk_darwin(v17);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = &v93 - v20;
  __chkstk_darwin(v21);
  v110 = &v93 - v22;
  __chkstk_darwin(v23);
  v117 = &v93 - v24;
  v25 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v25 - 8);
  v96 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v100 = sub_10076357C();
  v111 = *(v100 - 8);
  __chkstk_darwin(v100);
  v105 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v109 = &v93 - v32;
  __chkstk_darwin(v33);
  v102 = &v93 - v34;
  v35 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v119 = v35;
  v36 = *(v7 + v35);
  if (v36 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v107 = v8;
    v115 = v17;
    v99 = a1;
    v108 = v29;
    v38 = &v124;
    v103 = v16;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v94 = a2;

      v39 = 0;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = sub_10077149C();
        }

        else
        {
          v40 = *&v36[8 * v39 + 32];
        }

        v41 = v40;
        ++v39;
        v122[0] = v40;
        type metadata accessor for BorderedScreenshotView();
        sub_100142358(&qword_10094A410, type metadata accessor for BorderedScreenshotView);
        v42 = v41;
        sub_10077140C();
        sub_100760BEC();
        sub_100016C74(v123);
        v43 = *&v42[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        v125.value.super.isa = 0;
        v125.is_nil = 0;
        sub_10075FCEC(v125, v44);
      }

      while (i != v39);

      v8 = v107;
      a2 = v94;
      v17 = v115;
LABEL_11:
      v118 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v46 = Strong;
        [*(Strong + qword_1009602D0) setImage:{0, v93}];
        v122[0] = v46;
        type metadata accessor for VideoView();
        sub_100142358(&qword_100957FA0, type metadata accessor for VideoView);
        v47 = v46;
        v8 = v107;
        v48 = v47;
        sub_10077140C();
        sub_100760BEC();

        sub_100016C74(v123);
      }

      v49 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
      swift_beginAccess();
      v50 = v8;
      v51 = v111;
      v52 = *(v111 + 16);
      v53 = v102;
      i = v100;
      v52(v102, v50 + v49, v100);
      sub_10076356C();
      v54 = *(v51 + 8);
      v54(v53, i);
      v55 = v109;
      v52(v109, v50 + v49, i);
      v56 = v110;
      sub_10076352C();
      v111 = v51 + 8;
      v95 = v54;
      v54(v55, i);
      if (v114)
      {
        v57 = sub_1007601CC();
      }

      else
      {
        v57 = 0;
      }

      a1 = a2;
      v29 = v99;
      v36 = v113;
      v58 = v117;
      v7 = v56;
      sub_10057C9CC(v57, v112, v117);

      v59 = *(v36 + 1);
      v113 = v36 + 8;
      v112 = v59;
      v59(v56, v17);
      v123[3] = &type metadata for CGFloat;
      v123[4] = &protocol witness table for CGFloat;
      v123[0] = 0x4021000000000000;
      sub_10000A570(v123, v122);
      v60 = *(v36 + 2);
      v110 = v36 + 16;
      v109 = v60;
      (v60)(v104, v58, v17);
      v8 = v107;
      if (a2 | v29)
      {
        sub_10076D3AC();
        goto LABEL_24;
      }

      v61 = sub_10057F8EC(v114, v120, 0, 1);
      v35 = v116;
      if (v61 >> 62)
      {
        v91 = v61;
        v92 = sub_10077158C();
        v61 = v91;
        v35 = v116;
        if (v92)
        {
          goto LABEL_19;
        }
      }

      else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        if ((v61 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v62)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      sub_10076D3AC();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v36 = sub_10049D5BC((v38 > 1), v120, 1, v36);
LABEL_27:

    v17 = v115;
LABEL_31:
    v95(v105, i);
    v112(v117, v17);
    sub_10000CFBC(v108, &unk_1009467E0);
    *(v36 + 2) = v120;
    v64 = &v36[16 * v35];
    *(v64 + 4) = v7;
    v64[40] = 0;
    if (a1 | v29)
    {
      break;
    }

LABEL_76:
    v17 = 0;
    v29 = (v36 + 40);
    v16 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    while (v17 < *(v36 + 2))
    {
      a2 = *(v29 - 8);
      a1 = *v29;
      v123[0] = _swiftEmptyArrayStorage;
      v79 = swift_unknownObjectWeakLoadStrong();

      if (v79)
      {
        v80 = v79;
        sub_10077019C();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      v81 = *(v8 + v16);
      if (v81)
      {
        v82 = v81;
        sub_10077019C();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      v83 = *(v8 + v119);
      if (v83 >> 62)
      {
        sub_100016F40(0, &qword_1009441F0);

        v84 = sub_10077157C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_10077168C();
        sub_100016F40(0, &qword_1009441F0);
        v84 = v83;
      }

      v7 = v123;
      sub_1000F9270(v84);
      if (v123[0] >> 62)
      {
        v7 = v123[0];
        v35 = sub_10077158C();
      }

      else
      {
        v35 = *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 < v35)
      {
        v85 = sub_10057D820();
        v7 = v85;
        if ((v85 & 0xC000000000000001) != 0)
        {
          v86 = sub_10077149C();
        }

        else
        {
          if (v17 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v86 = *(v85 + 8 * v17 + 32);
        }

        v87 = v86;

        v122[0] = v87;
        sub_100016F40(0, &qword_1009441F0);
        sub_1001423A0();
        sub_10077140C();
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v88 = swift_allocObject();
        *(v88 + 16) = v35;
        *(v88 + 24) = a1;
        *(v88 + 32) = v17;

        v7 = v121;
        sub_100760B7C();

        sub_10000CFBC(v123, &qword_100943310);
      }

      ++v17;
      v29 += 16;
      if (v120 == v17)
      {
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v36 + 4);

    v65 = sub_10057D820();
    if (v65 >> 62)
    {
      v89 = v65;
      v90 = sub_10077158C();
      v65 = v89;
      if (!v90)
      {
LABEL_107:

        v67 = 0;
        goto LABEL_108;
      }
    }

    else if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v66 = sub_10077149C();
      goto LABEL_37;
    }

    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v65 + 32);
LABEL_37:
      v67 = v66;

LABEL_108:
      v122[0] = v67;
      sub_10000A5D4(&qword_100949D48);
      sub_100142488();
      sub_10077140C();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10000CFBC(v123, &qword_100943310);
    }

    __break(1u);
LABEL_113:
    sub_10077149C();
LABEL_22:

    sub_10076BEFC();
    sub_10076D3AC();

LABEL_24:
    v35 = v116;
LABEL_25:
    a2 = v96;
    sub_100016E2C(v108, v96, &unk_1009467E0);
    sub_10076354C();
    sub_10000CD74(v123);
    v63 = v97;
    sub_10076355C();
    sub_10076D36C();
    (*(v98 + 8))(v63, v101);
    if (a1)
    {

      sub_10076B84C();
      v7 = sub_10076BFCC();
      v36 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v38 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 >= v38 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v29)
    {

      v7 = sub_10076BFCC();
      v36 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v62 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 < v62 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v36 = sub_10049D5BC((v62 > 1), v120, 1, v36);
      goto LABEL_30;
    }

    v68 = sub_1007634FC();
    v7 = sub_10057F8EC(v114, v120, v68, 0);
    result = sub_10076359C();
    v70 = v7;
    if (v7 >> 62)
    {
      result = sub_10077158C();
      v70 = v7;
      i = result;
    }

    else
    {
      i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v94 = 0;
    if (i)
    {
      break;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_74:

    v95(v105, v100);
    v112(v117, v17);
    sub_10000CFBC(v108, &unk_1009467E0);
    v120 = *(v36 + 2);
    if (!v120)
    {
    }

    a1 = v94;
    v29 = v99;
    if (!(v94 | v99))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v104 = (v70 & 0xC000000000000001);
    v103 = (v36 + 88);
    LODWORD(v102) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v98) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v36 = _swiftEmptyArrayStorage;
    v101 = v70;
    while (1)
    {
      if (v104)
      {
        v29 = sub_10077149C();
      }

      else
      {
        v29 = *(v70 + 8 * a2 + 32);
      }

      (v109)(v35, v117, v17);
      v71 = (*v103)(v35, v17);
      if (v71 == v102)
      {
        break;
      }

      if (v71 == v98)
      {
        goto LABEL_49;
      }

      v16 = sub_10076BDCC();
      v112(v35, v17);
LABEL_51:
      if (!v120)
      {
        goto LABEL_62;
      }

      v7 = v120;
      v72 = sub_10076C41C();
      if (v72 >> 62)
      {
        v35 = v72;
        v74 = sub_10077158C();
        v72 = v35;
        if (!v74)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      if ((v72 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }
      }

      sub_10076C02C();
      a1 = sub_10076B84C();
      v73 = sub_10076BE5C();

      if ((v73 & 1) == 0)
      {

LABEL_62:
        if (v114)
        {
          v75 = sub_1007601CC();
        }

        else
        {
          v75 = 0;
        }

        sub_1007601EC();
        a1 = v106;
        sub_10007AFB4(v75, v106);

        sub_100770ACC();
        v7 = sub_10076BFCC();
        sub_100125E90(a1);
        goto LABEL_66;
      }

      v7 = sub_10076BFCC();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_10049D5BC(0, *(v36 + 2) + 1, 1, v36);
      }

      v77 = *(v36 + 2);
      v76 = *(v36 + 3);
      if (v77 >= v76 >> 1)
      {
        v36 = sub_10049D5BC((v76 > 1), v77 + 1, 1, v36);
      }

      ++a2;

      *(v36 + 2) = v77 + 1;
      v78 = &v36[16 * v77];
      *(v78 + 4) = v7;
      v78[40] = v16 & 1;
      v17 = v115;
      v35 = v116;
      v70 = v101;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v112(v35, v17);
LABEL_49:
    v16 = 0;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}

void sub_100141C54(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!a1)
    {
LABEL_16:

      return;
    }

    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    v5 = a1;
    if (v4)
    {
      v6 = v4;
      v17.value.super.isa = a1;
      v17.is_nil = 0;
      sub_10075FCEC(v17, v7);
    }

    v8 = sub_10057D820();
    if (v8 >> 62)
    {
      v15 = v8;
      v16 = sub_10077158C();
      v8 = v15;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_10077149C();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      type metadata accessor for VideoView();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = qword_1009602D0;
        v13 = v11;
        v14 = [*(v11 + qword_1009602D0) layer];
        [v14 removeAllAnimations];

        [*(v13 + v12) setImage:a1];
      }

      goto LABEL_15;
    }

LABEL_15:
    [v3 setNeedsLayout];

    v3 = a1;
    goto LABEL_16;
  }
}

void sub_100141E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      v13 = v12;
      if (a6)
      {
        v14 = [v12 CGImage];
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14;
        [v13 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];
      }

      else
      {
        v17 = v12;
      }

      sub_100580554(v17, a7);

      v11 = v17;
    }
  }
}

unint64_t sub_100141F14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a6;
  v31 = a5;
  v28 = a4;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v10 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v10 - 8);
  v30 = &v27 - v11;
  v12 = sub_10076D39C();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076350C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v29 = sub_10076357C();
  v20 = *(v29 - 8);
  __chkstk_darwin(v29);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  v36[0] = 0x4021000000000000;
  if (a3)
  {
    v23 = sub_1007601CC();
  }

  else
  {
    v23 = 0;
  }

  sub_10057C9CC(v23, a8, v19);

  sub_10000A570(v36, v35);
  (*(v14 + 16))(v16, v19, v13);
  if (v34 != 0)
  {
    goto LABEL_14;
  }

  result = sub_10057F8EC(a3, v28, 0, 1);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v25 = result;
  v26 = sub_10077158C();
  result = v25;
  if (!v26)
  {
LABEL_13:

LABEL_14:
    sub_10076D3AC();
    goto LABEL_15;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_10:

    sub_10076BEFC();
    sub_10076D3AC();

LABEL_15:
    sub_100016E2C(v31, v30, &unk_1009467E0);
    sub_10076354C();
    (*(v14 + 8))(v19, v13);
    sub_10000CD74(v36);
    sub_1007635AC();
    sub_100142358(&qword_10094A408, &type metadata accessor for LockupMediaLayout);
    sub_10076DBDC();
    return (*(v20 + 8))(v22, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_100142358(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001423A0()
{
  result = qword_10094A418;
  if (!qword_10094A418)
  {
    sub_100016F40(255, &qword_1009441F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A418);
  }

  return result;
}

uint64_t sub_100142408()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100142440()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100142488()
{
  result = qword_10094A420;
  if (!qword_10094A420)
  {
    sub_10000CE78(&qword_100949D48);
    sub_1001423A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A420);
  }

  return result;
}

unint64_t sub_100142514(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v215 = a8;
  v222 = a7;
  v225 = a5;
  v226 = a6;
  v218 = a4;
  v223 = a3;
  v229 = a2;
  v12 = sub_10000A5D4(&qword_10094A428);
  __chkstk_darwin(v12 - 8);
  v194 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v205 = &v182 - v15;
  v188 = sub_10075FEEC();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v186 = &v182 - v18;
  v19 = sub_10076BF6C();
  __chkstk_darwin(v19 - 8);
  v184 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v21 - 8);
  v213 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v214 = &v182 - v24;
  v25 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v25 - 8);
  v212 = &v182 - v26;
  v27 = sub_1007611EC();
  __chkstk_darwin(v27 - 8);
  v193 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v182 - v30;
  __chkstk_darwin(v31);
  v209 = &v182 - v32;
  __chkstk_darwin(v33);
  v208 = &v182 - v34;
  v211 = sub_10076121C();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v199 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v207 = &v182 - v37;
  v217 = sub_10076481C();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v201 = &v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v227 = &v182 - v40;
  v221 = sub_1007673CC();
  v41 = *(v221 - 8);
  __chkstk_darwin(v221);
  v43 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ScreenshotDisplayConfiguration();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v183 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v182 - v46;
  v48 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v48 - 8);
  v198 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v182 - v51;
  v220 = sub_10076D39C();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v197 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v55 = sub_10076350C();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v189 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v195 = &v182 - v59;
  __chkstk_darwin(v60);
  v62 = &v182 - v61;
  v224 = sub_10076357C();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v196 = &v182 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v182 - v65;
  v233 = &type metadata for CGFloat;
  v234 = &protocol witness table for CGFloat;
  v232 = 0x4021000000000000;
  sub_10000A570(&v232, v231);
  v190 = v56;
  v68 = *(v56 + 16);
  v67 = (v56 + 16);
  v204 = v55;
  v203 = v67;
  v202 = v68;
  v68(v62, v226, v55);
  v206 = a1;
  if (v229 | a1)
  {
    v69 = v223;
LABEL_11:
    sub_10076D3AC();
    goto LABEL_12;
  }

  v69 = v223;
  result = sub_10057F8EC(v223, v218, 0, 1);
  if (result >> 62)
  {
    v71 = result;
    v72 = sub_10077158C();
    result = v71;
    if (v72)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  sub_10076BEFC();
  sub_10076D3AC();

LABEL_12:
  sub_100016E2C(v225, v52, &unk_1009467E0);
  sub_10076354C();
  sub_10000CD74(&v232);
  v73 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  v74 = v230;
  swift_beginAccess();
  v75 = v228;
  v76 = &v74[v73];
  v77 = v224;
  (*(v228 + 24))(v76, v66, v224);
  swift_endAccess();
  [v74 setNeedsLayout];
  v78 = *(v75 + 8);
  v78(v66, v77);
  v228 = v75 + 8;
  if (v69)
  {
    v79 = sub_1007601CC();
  }

  else
  {
    v79 = 0;
  }

  sub_1007601EC();
  sub_10007AFB4(v79, v47);

  v80 = &v230[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration];
  swift_beginAccess();
  sub_100125E2C(v47, v80);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v47);
  if (v69)
  {
    v81 = sub_1007601CC();
  }

  else
  {
    v81 = 0;
  }

  v82 = v221;
  v47 = v230;
  *&v230[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v81;

  sub_10057DBD4();

  (*(v41 + 16))(v43, v222, v82);
  v83 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v41 + 24))(&v47[v83], v43, v82);
  swift_endAccess();
  [v47 setNeedsLayout];
  (*(v41 + 8))(v43, v82);
  if (v229)
  {
    (*(v210 + 104))(v207, enum case for VideoFillMode.scaleAspectFill(_:), v211);

    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    (*(v219 + 56))(v52, 0, 1, v220);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v84 = v212;
    sub_10076B85C();
    v85 = sub_10075DB7C();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    v86 = v214;
    sub_10076B81C();
    v87 = v213;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_100142358(&qword_100942810, type metadata accessor for VideoView);
    v88 = sub_100762EEC();
    sub_10000CFBC(v87, &unk_10094C030);
    sub_10000CFBC(v86, &unk_10094C030);
    sub_10000CFBC(v84, &unk_1009435D0);
    sub_10000CFBC(&v232, &qword_100943310);
    Strong = swift_unknownObjectWeakLoadStrong();
    v67 = &off_100911000;
    if (Strong)
    {
      v90 = Strong;
      v91 = [Strong superview];
      if (v91)
      {
        v92 = v91;
        sub_100016F40(0, &qword_1009441F0);
        v93 = v47;
        v94 = sub_100770EEC();

        if ((v94 & 1) == 0)
        {
          goto LABEL_25;
        }

        v95 = swift_unknownObjectWeakLoadStrong();
        if (!v95)
        {
          goto LABEL_25;
        }

        v90 = v95;
        [v95 removeFromSuperview];
      }
    }

LABEL_25:
    swift_unknownObjectWeakAssign();
    v96 = swift_unknownObjectWeakLoadStrong();
    if (v96)
    {
      v97 = v96;
      [v47 addSubview:v96];
    }

    sub_10057E5D8();
    [v47 setNeedsLayout];

    v98 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v99 = *&v47[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v100 = v217;
    v101 = v216;
    if (v99)
    {
      [v99 removeFromSuperview];
      v102 = *&v47[v98];
    }

    else
    {
      v102 = 0;
    }

    *&v47[v98] = 0;

    [v47 setNeedsLayout];

    (*(v101 + 8))(v227, v100);
    return [v47 v67[194]];
  }

  if (v206 && (a11 & 1) == 0)
  {
    swift_retain_n();
    v110 = [v47 traitCollection];
    v234 = &protocol witness table for CGFloat;
    v233 = &type metadata for CGFloat;
    v232 = 0x4021000000000000;
    sub_10000A570(&v232, v231);
    v202(v195, v226, v204);
    v111 = v197;
    sub_10076D3AC();
    sub_100016E2C(v225, v52, &unk_1009467E0);
    v112 = v196;
    sub_10076354C();
    sub_10000CD74(&v232);
    sub_10076355C();
    sub_10076D36C();
    (*(v219 + 8))(v111, v220);

    v113 = sub_10076BFCC();
    v114 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_10049D5BC((v115 > 1), v116 + 1, 1, v114);
    }

    v78(v112, v224);
    *(v114 + 2) = v116 + 1;
    v117 = &v114[16 * v116 + 32];
    *v117 = v113;
    *(v117 + 8) = 0;
    v118 = *(v114 + 4);

    v119 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v67 = &off_100911000;
    if (v118)
    {

      sub_10076BF7C();
      sub_10075FCCC();
      [v119 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      [v119 setContentMode:2];
      v120 = v119;
      sub_1007638EC();
      v121 = *(v80 + 48);
      sub_1007638DC();

      v122 = v183;
      sub_100125EEC(v80, v183);
      v123 = *(v122 + 16);
      sub_100125E90(v122);
      v124 = v187;
      v125 = &enum case for CornerStyle.arc(_:);
      if (!v123)
      {
        v125 = &enum case for CornerStyle.continuous(_:);
      }

      v126 = v185;
      v127 = v188;
      (*(v187 + 104))(v185, *v125, v188);
      v128 = v186;
      (*(v124 + 32))(v186, v126, v127);
      sub_10075FD1C();

      (*(v124 + 8))(v128, v127);
    }

    v129 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v130 = *&v47[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v131 = v119;
    if (v130)
    {
      [v130 removeFromSuperview];
      v130 = *&v47[v129];
    }

    *&v47[v129] = v119;
    v156 = v119;

    [v47 addSubview:v156];
    [v47 setNeedsLayout];

    v157 = swift_unknownObjectWeakLoadStrong();
    if (!v157)
    {
      goto LABEL_71;
    }

    v158 = v157;
    sub_100142358(&qword_100942810, type metadata accessor for VideoView);
    v159 = [v158 superview];
    if (v159)
    {
      v160 = v159;
      sub_100016F40(0, &qword_1009441F0);
      v161 = v47;
      v162 = sub_100770EEC();

      if ((v162 & 1) == 0)
      {
        goto LABEL_71;
      }

      v163 = swift_unknownObjectWeakLoadStrong();
      if (!v163)
      {
        goto LABEL_71;
      }

      v158 = v163;
      [v163 removeFromSuperview];
    }

LABEL_71:
    swift_unknownObjectWeakAssign();
    v164 = swift_unknownObjectWeakLoadStrong();
    if (v164)
    {
      v165 = v164;
      [v47 addSubview:v164];
    }

    sub_10057E5D8();
    [v47 setNeedsLayout];

    return [v47 v67[194]];
  }

  v67 = &off_100911000;
  if (!v218)
  {
    goto LABEL_80;
  }

  result = sub_10076C41C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v168 = result;
  v169 = sub_10077158C();
  result = v168;
  if (!v169)
  {
LABEL_79:

LABEL_80:
    v170 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v171 = *&v47[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    if (v171)
    {
      [v171 removeFromSuperview];
      v172 = *&v47[v170];
    }

    else
    {
      v172 = 0;
    }

    *&v47[v170] = 0;

    [v47 v67[194]];
    v173 = swift_unknownObjectWeakLoadStrong();
    if (!v173)
    {
      goto LABEL_89;
    }

    v174 = v173;
    sub_100142358(&qword_100942810, type metadata accessor for VideoView);
    v175 = [v174 superview];
    if (v175)
    {
      v176 = v175;
      sub_100016F40(0, &qword_1009441F0);
      v177 = v47;
      v178 = sub_100770EEC();

      if ((v178 & 1) == 0)
      {
        goto LABEL_89;
      }

      v179 = swift_unknownObjectWeakLoadStrong();
      if (!v179)
      {
        goto LABEL_89;
      }

      v174 = v179;
      [v179 removeFromSuperview];
    }

LABEL_89:
    swift_unknownObjectWeakAssign();
    v180 = swift_unknownObjectWeakLoadStrong();
    if (v180)
    {
      v181 = v180;
      [v47 addSubview:v180];
    }

    sub_10057E5D8();
    [v47 v67[194]];
    return [v47 v67[194]];
  }

LABEL_34:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_37:

    v103 = v189;
    v104 = v204;
    v202(v189, v226, v204);
    v105 = v190;
    v106 = (*(v190 + 88))(v103, v104);
    v107 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v105 + 8))(v103, v104);
    if (v106 == v107)
    {
      v108 = 1;
      v109 = v205;
    }

    else
    {
      v132 = sub_10076C40C();
      v109 = v205;
      sub_10007AFB4(v132, v205);

      v108 = 0;
    }

    v133 = v191;
    v134 = v192;
    (*(v191 + 56))(v109, v108, 1, v192);
    (*(v210 + 104))(v199, enum case for VideoFillMode.scaleAspectFill(_:), v211);
    sub_10076B84C();
    sub_10076BEFC();
    v135 = v198;
    sub_10076D3AC();

    (*(v219 + 56))(v135, 0, 1, v220);
    sub_10076B7EC();
    sub_10076B82C();
    LODWORD(v229) = sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    v136 = v194;
    sub_100016E2C(v109, v194, &qword_10094A428);
    if ((*(v133 + 48))(v136, 1, v134) == 1)
    {
      sub_10000CFBC(v136, &qword_10094A428);
    }

    else
    {
      sub_100125E90(v136);
    }

    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v137 = v232;
    sub_10076B7CC();
    v138 = v212;
    sub_10076B85C();
    v139 = sub_10075DB7C();
    (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
    v140 = v214;
    sub_10076B81C();
    v141 = v213;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_100142358(&qword_100942810, type metadata accessor for VideoView);
    v229 = v137;
    v142 = sub_100762EEC();
    sub_10000CFBC(v141, &unk_10094C030);
    sub_10000CFBC(v140, &unk_10094C030);
    sub_10000CFBC(v138, &unk_1009435D0);
    sub_10000CFBC(&v232, &qword_100943310);
    v143 = swift_unknownObjectWeakLoadStrong();
    v144 = v205;
    if (!v143)
    {
      goto LABEL_61;
    }

    v145 = v143;
    v146 = [v143 superview];
    if (v146)
    {
      v147 = v146;
      sub_100016F40(0, &qword_1009441F0);
      v148 = v47;
      v149 = sub_100770EEC();

      v144 = v205;
      if ((v149 & 1) == 0)
      {
        goto LABEL_61;
      }

      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_61;
      }

      v145 = v150;
      [v150 removeFromSuperview];
    }

LABEL_61:
    swift_unknownObjectWeakAssign();
    v151 = swift_unknownObjectWeakLoadStrong();
    if (v151)
    {
      v152 = v151;
      [v47 addSubview:v151];
    }

    sub_10057E5D8();
    [v47 v67[194]];

    v153 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v154 = *&v47[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    if (v154)
    {
      [v154 removeFromSuperview];
      v155 = *&v47[v153];
    }

    else
    {
      v155 = 0;
    }

    v166 = v217;
    v167 = v216;
    *&v47[v153] = 0;

    [v47 v67[194]];

    (*(v167 + 8))(v201, v166);
    sub_10000CFBC(v144, &qword_10094A428);
    return [v47 v67[194]];
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_37;
  }

  __break(1u);
  return result;
}