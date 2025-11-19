uint64_t sub_10047E894@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v85 = sub_100796CF4();
  v4 = *(v85 - 8);
  v5 = __chkstk_darwin(v85);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v73 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v73 - v16;
  switch(v3)
  {
    case 0:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v14, v17, v10);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      sub_100796C94();
      v20 = sub_1007A22B4();
      v21 = v4;
      v22 = v20;
      v24 = v23;
      (*(v21 + 8))(v9, v85);
      goto LABEL_8;
    case 1:
    case 4:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      sub_1007A2154();
      sub_100796C94();
      (*(v11 + 16))(v14, v17, v10);
      type metadata accessor for BundleFinder();
      v68 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v68];
      v69 = v85;
      (*(v4 + 16))(v7, v9, v85);
      v70 = sub_1007A22D4();
      v71 = v4;
      v22 = v70;
      v24 = v72;
      (*(v71 + 8))(v9, v69);
      goto LABEL_8;
    case 2:
      sub_1007A2154();
      sub_100796C94();
      v84 = v17;
      v25 = *(v11 + 16);
      v79 = (v11 + 16);
      v80 = v25;
      v25(v14, v17, v10);
      type metadata accessor for BundleFinder();
      v26 = swift_getObjCClassFromMetadata();
      v78 = v26;
      v77 = objc_opt_self();
      v27 = [v77 bundleForClass:v26];
      v75 = *(v4 + 16);
      v76 = v4 + 16;
      v28 = v85;
      v75(v7, v9, v85);
      v29 = sub_1007A22D4();
      v30 = v4;
      v22 = v29;
      v24 = v31;
      v74 = *(v30 + 8);
      v81 = (v30 + 8);
      v74(v9, v28);
      v83 = *(v11 + 8);
      v32 = v84;
      (v83)(v84, v10);
      sub_1007A2154();
      sub_100796C94();
      v80(v14, v32, v10);
      v33 = [v77 bundleForClass:v78];
      v34 = v85;
      v75(v7, v9, v85);
      v35 = sub_1007A22D4();
      v37 = v36;
      v74(v9, v34);
      (v83)(v84, v10);

      goto LABEL_9;
    case 3:
      sub_1007A2154();
      sub_100796C94();
      v38 = *(v11 + 16);
      v80 = (v11 + 16);
      v81 = v38;
      v82 = v10;
      v38(v14, v17, v10);
      type metadata accessor for BundleFinder();
      v39 = swift_getObjCClassFromMetadata();
      v78 = v39;
      v77 = objc_opt_self();
      v40 = [v77 bundleForClass:v39];
      v41 = v4;
      v42 = v85;
      (*(v4 + 16))(v7, v9, v85);
      v22 = sub_1007A22D4();
      v24 = v43;
      v79 = *(v41 + 8);
      v79(v9, v42);
      v44 = v11 + 8;
      v45 = *(v11 + 8);
      v83 = v44;
      v46 = v17;
      v47 = v17;
      v48 = v82;
      v45(v47, v82);
      v84 = v46;
      sub_1007A2154();
      sub_100796C94();
      v81(v14, v46, v48);
      v49 = [v77 bundleForClass:v78];
      sub_100796C94();
      v50 = sub_1007A22B4();
      v52 = v51;
      v79(v9, v85);
      v45(v84, v82);

      v35 = 0;
      v37 = 0;
      goto LABEL_10;
    case 5:
      sub_1007A2154();
      sub_100796C94();
      v83 = v11;
      v54 = *(v11 + 16);
      v79 = (v11 + 16);
      v80 = v54;
      v54(v14, v17, v10);
      type metadata accessor for BundleFinder();
      v55 = swift_getObjCClassFromMetadata();
      v78 = v55;
      v77 = objc_opt_self();
      v56 = [v77 bundleForClass:v55];
      v57 = v17;
      v75 = *(v4 + 16);
      v76 = v4 + 16;
      v58 = v85;
      v75(v7, v9, v85);
      v59 = sub_1007A22D4();
      v60 = v4;
      v22 = v59;
      v24 = v61;
      v62 = *(v60 + 8);
      v81 = (v60 + 8);
      v62(v9, v58);
      v63 = *(v83 + 8);
      v82 = v10;
      v83 += 8;
      v74 = v63;
      v63(v57, v10);
      v84 = v57;
      sub_1007A2154();
      sub_100796C94();
      v80(v14, v57, v10);
      v64 = [v77 bundleForClass:v78];
      v75(v7, v9, v85);
      v65 = sub_1007A22D4();
      v67 = v66;
      v62(v9, v85);
      result = (v74)(v84, v82);
      goto LABEL_13;
    case 7:
      sub_1007A2154();
      (*(v11 + 16))(v14, v17, v10);
      sub_100796C94();
      v22 = sub_1007A22B4();
      v24 = v53;
LABEL_8:
      (*(v11 + 8))(v17, v10);

      v35 = 0;
      v37 = 0;
LABEL_9:
      v50 = 0;
      v52 = 0;
LABEL_10:
      v65 = v22;
      v67 = v24;
      break;
    default:
      v22 = 0;
      v24 = 0;
      v65 = 0;
      v67 = 0;
LABEL_13:
      v35 = 0;
      v37 = 0;
      v50 = 0;
      v52 = 0;
      break;
  }

  *a2 = v22;
  a2[1] = v24;
  a2[2] = v65;
  a2[3] = v67;
  a2[4] = v35;
  a2[5] = v37;
  a2[6] = v50;
  a2[7] = v52;
  return result;
}

double sub_10047F800@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 0xE90000000000006CLL;
  v4 = 0x6C69662E656D6F68;
  v5 = 1701670760;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v2 = 0xE300000000000000;
      v3 = 0xE800000000000000;
      v4 = 0x6C6C69662E676162;
      v5 = 6775138;
      break;
    case 2:
    case 9:
      v3 = 0xEA00000000007365;
      v4 = 0x6E6F687064616568;
      goto LABEL_4;
    case 3:
      v3 = 0xEA00000000006C6CLL;
      v2 = 0xE500000000000000;
      v5 = 0x61676E616DLL;
      v4 = 0x69662E61676E616DLL;
      break;
    case 4:
      v3 = 0xEF7373616C67676ELL;
      v4 = 0x697966696E67616DLL;
      goto LABEL_11;
    case 5:
      v3 = 0x80000001008D6AE0;
      v4 = 0xD000000000000013;
      v2 = 0xEE006C6163697472;
      v5 = 0x65762E736B6F6F62;
      break;
    case 6:
      v3 = 0x80000001008C25E0;
      v4 = 0xD000000000000014;
      goto LABEL_11;
    case 7:
      v4 = 0xD000000000000010;
      v3 = 0x80000001008C2680;
      v5 = 0xD000000000000010;
      v2 = 0x80000001008C2680;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v4 = 1802465122;
      v5 = 1802465122;
      break;
    case 10:
      v3 = 0xE800000000000000;
      v4 = 0x747865742E636F64;
      v5 = 0x747865742E636F64;
      v2 = 0xE800000000000000;
      break;
    case 11:
      v3 = 0xEA00000000007365;
      v4 = 0x6761702E6B6F6F62;
LABEL_4:
      v5 = v4;
      v2 = 0xEA00000000007365;
      break;
    case 12:
      v3 = 0x80000001008C2920;
      v4 = 0xD000000000000015;
LABEL_11:
      v5 = v4;
      v2 = v3;
      break;
    case 13:
      v3 = 0xE400000000000000;
      v4 = 1937075312;
      v5 = 1937075312;
      break;
    default:
      v4 = 0;
      v3 = 0;
      v5 = 0;
      v2 = 0;
      break;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

uint64_t sub_10047FA38(unsigned __int8 a1)
{
  v43 = sub_100796CF4();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_100799234();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  if (a1 > 2u)
  {
    if (a1 != 3 && a1 != 4 && a1 != 5)
    {
      return v20;
    }

LABEL_10:
    sub_1007A2154();
    v28 = v6;
    sub_100796C94();
    v29 = v8;
    v25 = v10;
    v31 = v13;
    v26 = v13;
    v33 = v7;
    (*(v8 + 16))(v25, v26, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v35 = v43;
    (*(v2 + 16))(v42, v28, v43);
LABEL_14:
    v20 = sub_1007A22D4();
    (*(v2 + 8))(v28, v35);
    (*(v29 + 8))(v31, v33);
    return v20;
  }

  if (a1 < 2u)
  {
    goto LABEL_10;
  }

  if (a1 == 2)
  {
    v40 = v7;
    v41 = v2;
    v21 = v16;
    v38 = *(v15 + 104);
    v38(v19, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v16, v17);
    v22 = sub_100799134();
    v23 = *(v15 + 8);
    v39 = v21;
    v23(v19, v21);
    if ((v22 & 1) == 0)
    {
      v24 = v39;
      (v38)(v19, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v39);
      sub_100799134();
      v23(v19, v24);
    }

    sub_1007A2154();
    v28 = v6;
    sub_100796C94();
    v29 = v8;
    v30 = v10;
    v31 = v13;
    v32 = v13;
    v33 = v40;
    (*(v8 + 16))(v30, v32, v40);
    type metadata accessor for BundleFinder();
    v34 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v34];
    v2 = v41;
    v35 = v43;
    (*(v41 + 16))(v42, v28, v43);
    goto LABEL_14;
  }

  return v20;
}

uint64_t sub_100480324(char a1)
{
  v2 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(a1);
  v3 = v1;
  if (v2 == 0x736B6F6F62 && v1 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v4 = sub_1007A3AB4();

  if (v4)
  {
    return 1;
  }

  if (v2 == 0x6F6F626F69647561 && v3 == 0xEA0000000000736BLL)
  {
    goto LABEL_3;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
    return 1;
  }

  if (v2 == 0x61676E616DLL && v3 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v7 = sub_1007A3AB4();

  if (v7)
  {
    return 1;
  }

  if (v2 == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {
LABEL_3:

    return 1;
  }

  v8 = sub_1007A3AB4();

  return v8 & 1;
}

uint64_t sub_10048048C(char a1)
{
  v2 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(a1);
  v3 = v1;
  if (v2 == 0x686372616573 && v1 == 0xE600000000000000)
  {
    goto LABEL_3;
  }

  v4 = sub_1007A3AB4();

  if (v4)
  {
    return 1;
  }

  if (v2 == 1701670760 && v3 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
    return 1;
  }

  if (v2 == 0x736B6F6F62 && v3 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v7 = sub_1007A3AB4();

  if (v7)
  {
    return 1;
  }

  if (v2 == 0x6F6F626F69647561 && v3 == 0xEA0000000000736BLL)
  {
    goto LABEL_3;
  }

  v8 = sub_1007A3AB4();

  if (v8)
  {
    return 1;
  }

  if (v2 == 0x61676E616DLL && v3 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v9 = sub_1007A3AB4();

  if (v9)
  {
    return 1;
  }

  if (v2 == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {
LABEL_3:

    return 1;
  }

  v10 = sub_1007A3AB4();

  return v10 & 1;
}

unint64_t sub_100480680(char a1)
{
  result = 0x6F6F626F69647561;
  switch(a1)
  {
    case 1:
      result = 0x726F74536B6F6F62;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61676E616DLL;
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x417972617262696CLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x467972617262696CLL;
      break;
    case 8:
      result = 0x427972617262696CLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x507972617262696CLL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 1701670760;
      break;
  }

  return result;
}

uint64_t sub_100480858(char *a1, char *a2)
{
  v2 = *a2;
  v3 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(*a1);
  v5 = v4;
  if (v3 == _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

Swift::Int sub_1004808E0()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_100480944()
{
  _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(*v0);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100480998()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1004809F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100480A28@<X0>(unint64_t *a1@<X8>)
{
  result = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100480E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (!*(*a1 + 16) || (v8 = sub_10000E53C(25705, 0xE200000000000000), (v9 & 1) == 0) || (sub_100007484(*(v5 + 56) + 32 * v8, v56), (swift_dynamicCast() & 1) == 0))
  {
    result = 0;
    goto LABEL_13;
  }

  v10 = v55;
  v57 = v55;
  if (a3 && (a2 == 28778 && a3 == 0xE200000000000000 || (v11 = sub_1007A3AB4(), v10 = v57, (v11 & 1) != 0)))
  {
    if (v54 == 0x7972617262696CLL && v10 == 0xE700000000000000)
    {
      v12 = 1;
      if (!*(v5 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = sub_1007A3AB4();
      if (!*(v5 + 16))
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v12 = 0;
    if (!*(v5 + 16))
    {
      goto LABEL_26;
    }
  }

  v14 = sub_10000E53C(7107189, 0xE300000000000000);
  if (v15)
  {
    sub_100007484(*(v5 + 56) + 32 * v14, v56);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v54;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v55;
    }

    else
    {
      v18 = 0;
    }

    v50 = v18;
    v51 = v17;
    if (!*(v5 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_26:
  v50 = 0;
  v51 = 0;
  if (!*(v5 + 16))
  {
    goto LABEL_36;
  }

LABEL_27:
  v19 = sub_10000E53C(0x656C746974, 0xE500000000000000);
  if (v20)
  {
    sub_100007484(*(v5 + 56) + 32 * v19, v56);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v54;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v55;
    }

    else
    {
      v23 = 0;
    }

    v48 = v23;
    v49 = v22;
    if (!*(v5 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

LABEL_36:
  v48 = 0;
  v49 = 0;
  if (!*(v5 + 16))
  {
    goto LABEL_46;
  }

LABEL_37:
  v24 = sub_10000E53C(0x656D614E6E6F6369, 0xE800000000000000);
  if (v25)
  {
    sub_100007484(*(v5 + 56) + 32 * v24, v56);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v54;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v55;
    }

    else
    {
      v28 = 0;
    }

    v46 = v28;
    v47 = v27;
    if (!*(v5 + 16))
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_46:
  v46 = 0;
  v47 = 0;
  if (!*(v5 + 16))
  {
    goto LABEL_56;
  }

LABEL_47:
  v29 = sub_10000E53C(0xD000000000000010, 0x80000001008D6D40);
  if (v30)
  {
    sub_100007484(*(v5 + 56) + 32 * v29, v56);
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = v54;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v55;
    }

    else
    {
      v33 = 0;
    }

    v44 = v33;
    v45 = v32;
    if ((v12 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_57:
    v52 = a2;
    v34 = v54;

    goto LABEL_58;
  }

LABEL_56:
  v44 = 0;
  v45 = 0;
  if (v12)
  {
    goto LABEL_57;
  }

LABEL_55:
  v34 = v54;
  v52 = 0;
  a3 = 0;
LABEL_58:
  v35 = type metadata accessor for RootBarItem();
  v36 = objc_allocWithZone(v35);
  v37 = v57;
  if (v34 == 0x5F676E6964616572 && v57 == 0xEB00000000776F6ELL || (sub_1007A3AB4() & 1) != 0 || v34 == 0x776F6E5F64616572 && v37 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
  {
    v34 = 1701670760;

    v37 = 0xE400000000000000;
  }

  v38 = &v36[OBJC_IVAR___BKRootBarItem_identifier];
  *v38 = v34;
  v38[1] = v37;
  v36[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 0;
  v39 = &v36[OBJC_IVAR___BKRootBarItem_url];
  *v39 = v51;
  v39[1] = v50;
  v40 = &v36[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v40 = v49;
  v40[1] = v48;
  v41 = &v36[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v41 = v47;
  v41[1] = v46;
  v42 = &v36[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v42 = v45;
  v42[1] = v44;
  v43 = &v36[OBJC_IVAR___BKRootBarItem_countryCode];
  *v43 = v52;
  v43[1] = a3;
  v36[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v53.receiver = v36;
  v53.super_class = v35;
  result = objc_msgSendSuper2(&v53, "init");
LABEL_13:
  *a4 = result;
  return result;
}

uint64_t static RootBarItemsProvider.isDefaultCollection(for:)(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    LOBYTE(v5) = 0;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    v5 = 0x1FE0u >> v6;
    if (v6 > 0x10u)
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5 & 1;
}

uint64_t sub_100481554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1007A2254();
  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

uint64_t sub_1004815B0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v5)
  {

    v6 = 14;
  }

  else
  {

    LODWORD(v6) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v6 == 16)
    {
      v6 = 15;
    }

    else
    {
      v6 = v6;
    }
  }

  return a3(v6);
}

uint64_t sub_10048164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1007A2254();
  v7 = v6;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v5, v6);
  if (v8)
  {

    v9 = 14;
  }

  else
  {
    LODWORD(v9) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v5, v7);
    if (v9 == 16)
    {
      v9 = 15;
    }

    else
    {
      v9 = v9;
    }
  }

  return a4(v9) & 1;
}

uint64_t static RootBarItemsProvider.requiresURL(for:)(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    LOBYTE(v5) = 1;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    v5 = 0x1E01Fu >> v6;
    if (v6 > 0x10u)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

double sub_100481A94()
{
  *&xmmword_100AE5618 = 0xD00000000000001CLL;
  *(&xmmword_100AE5618 + 1) = 0x80000001008D6AA0;
  qword_100AE5628 = 0xD000000000000017;
  unk_100AE5630 = 0x80000001008D6AC0;
  result = 0.0;
  xmmword_100AE5638 = 0u;
  unk_100AE5648 = 0u;
  return result;
}

double static RootBarItemsProvider.selectedIconName(for:countryCode:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  sub_1004838C0(a1, a2, a3, a4, v9);
  v6 = v9[1];
  *a5 = v9[0];
  a5[1] = v6;
  result = *&v10;
  v8 = v11;
  a5[2] = v10;
  a5[3] = v8;
  return result;
}

uint64_t sub_100481C3C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v5)
  {

    v6 = 14;
  }

  else
  {

    LODWORD(v6) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v6 == 16)
    {
      v6 = 15;
    }

    else
    {
      v6 = v6;
    }
  }

  return a3(v6);
}

id RootBarItemsProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootBarItemsProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id RootBarItemsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootBarItemsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL static RootBarItemsProvider.InterfaceDependentValue<A>.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A3454();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  v63 = TupleTypeMetadata2;
  __chkstk_darwin(TupleTypeMetadata2);
  v61 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  if ((sub_1007A2124() & 1) == 0)
  {
    return 0;
  }

  v59 = v16;
  v22 = a2;
  v23 = type metadata accessor for RootBarItemsProvider.InterfaceDependentValue();
  if ((sub_1007A2124() & 1) == 0)
  {
    return 0;
  }

  v53 = v10;
  v54 = a4;
  v56 = v23;
  v57 = v12;
  v24 = *(v23 + 32);
  v25 = *(v63 + 48);
  v26 = v12 + 16;
  v27 = *(v12 + 16);
  v55 = a1;
  v28 = a1 + v24;
  v29 = v25;
  v27(v21, v28, v11);
  v27(&v21[v29], v22 + v24, v11);
  v58 = v8;
  v30 = *(v8 + 48);
  v31 = v22;
  if (v30(v21, 1, a3) != 1)
  {
    v33 = v59;
    v27(v59, v21, v11);
    if (v30(&v21[v29], 1, a3) != 1)
    {
      v50 = v30;
      v51 = v26;
      v52 = v27;
      v34 = v58;
      v35 = v53;
      (*(v58 + 32))(v53, &v21[v29], a3);
      v36 = sub_1007A2124();
      v37 = *(v34 + 8);
      v37(v35, a3);
      v37(v33, a3);
      v32 = *(v57 + 8);
      v32(v21, v11);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v58 + 8))(v33, a3);
LABEL_8:
    (*(v62 + 8))(v21, v63);
    return 0;
  }

  v51 = v26;
  v52 = v27;
  if (v30(&v21[v29], 1, a3) != 1)
  {
    goto LABEL_8;
  }

  v50 = v30;
  v32 = *(v57 + 8);
  v32(v21, v11);
LABEL_10:
  v38 = *(v56 + 36);
  v39 = *(v63 + 48);
  v40 = v61;
  v41 = v52;
  v52(v61, v55 + v38, v11);
  v41(&v40[v39], v31 + v38, v11);
  v42 = v50;
  if (v50(v40, 1, a3) == 1)
  {
    if (v42(&v40[v39], 1, a3) == 1)
    {
      v32(v40, v11);
      return 1;
    }

    goto LABEL_15;
  }

  v43 = v60;
  v41(v60, v40, v11);
  if (v42(&v40[v39], 1, a3) == 1)
  {
    (*(v58 + 8))(v43, a3);
LABEL_15:
    (*(v62 + 8))(v40, v63);
    return 0;
  }

  v45 = v58;
  v46 = &v40[v39];
  v47 = v53;
  (*(v58 + 32))(v53, v46, a3);
  v48 = sub_1007A2124();
  v49 = *(v45 + 8);
  v49(v47, a3);
  v49(v43, a3);
  v32(v40, v11);
  return (v48 & 1) != 0;
}

uint64_t _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v11 = a1;
  v12 = a2;
  sub_1003A84C4();
  sub_100367368();
  if (sub_1007A20A4())
  {
    v12 = a2;

    v4 = sub_1007A23A4();
    sub_1003A56A8(v4);
    return a1;
  }

  else
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AE4D38);

    v7 = sub_10079ACC4();
    v8 = sub_1007A29A4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000070F4(a1, a2, &v11);
      _os_log_impl(&_mh_execute_header, v7, v8, "Can't extract collectionID from identifier: %s", v9, 0xCu);
      sub_1000074E0(v10);
    }

    return 0;
  }
}

uint64_t _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0BB08;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

uint64_t _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0()
{
  sub_1001F1160(&unk_100AD8160);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100811380;
  v1 = type metadata accessor for RootBarItem();
  v2 = objc_allocWithZone(v1);
  if ((sub_1007A3AB4() & 1) == 0)
  {
    sub_1007A3AB4();
  }

  v3 = 0x7972617262696CLL;
  v4 = &v2[OBJC_IVAR___BKRootBarItem_identifier];
  *v4 = 1701670760;
  v4[1] = 0xE400000000000000;
  v2[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v5 = &v2[OBJC_IVAR___BKRootBarItem_url];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR___BKRootBarItem_countryCode];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v50.receiver = v2;
  v50.super_class = v1;
  *(v0 + 32) = objc_msgSendSuper2(&v50, "init");
  v10 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (v11 = 0xE700000000000000, (sub_1007A3AB4()))
  {
    v11 = 0xE400000000000000;
    v3 = 1701670760;
  }

  v12 = 0x736B6F6F62;
  v13 = &v10[OBJC_IVAR___BKRootBarItem_identifier];
  *v13 = v3;
  v13[1] = v11;
  v10[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v14 = &v10[OBJC_IVAR___BKRootBarItem_url];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v10[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v10[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v10[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v10[OBJC_IVAR___BKRootBarItem_countryCode];
  *v18 = 0;
  v18[1] = 0;
  v10[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v49.receiver = v10;
  v49.super_class = v1;
  *(v0 + 40) = objc_msgSendSuper2(&v49, "init");
  v19 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (v20 = 0xE500000000000000, (sub_1007A3AB4()))
  {
    v20 = 0xE400000000000000;
    v12 = 1701670760;
  }

  v21 = 0xEA0000000000736BLL;
  v22 = 0x6F6F626F69647561;
  v23 = &v19[OBJC_IVAR___BKRootBarItem_identifier];
  *v23 = v12;
  v23[1] = v20;
  v19[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v24 = &v19[OBJC_IVAR___BKRootBarItem_url];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v19[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v19[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v19[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v19[OBJC_IVAR___BKRootBarItem_countryCode];
  *v28 = 0;
  v28[1] = 0;
  v19[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v48.receiver = v19;
  v48.super_class = v1;
  *(v0 + 48) = objc_msgSendSuper2(&v48, "init");
  v29 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (sub_1007A3AB4())
  {
    v21 = 0xE400000000000000;
    v22 = 1701670760;
  }

  v30 = 0x686372616573;
  v31 = &v29[OBJC_IVAR___BKRootBarItem_identifier];
  *v31 = v22;
  v31[1] = v21;
  v29[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v32 = &v29[OBJC_IVAR___BKRootBarItem_url];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v29[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v29[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v29[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v29[OBJC_IVAR___BKRootBarItem_countryCode];
  *v36 = 0;
  v36[1] = 0;
  v29[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v47.receiver = v29;
  v47.super_class = v1;
  *(v0 + 56) = objc_msgSendSuper2(&v47, "init");
  v37 = objc_allocWithZone(v1);
  if (sub_1007A3AB4() & 1) != 0 || (v38 = 0xE600000000000000, (sub_1007A3AB4()))
  {
    v38 = 0xE400000000000000;
    v30 = 1701670760;
  }

  v39 = &v37[OBJC_IVAR___BKRootBarItem_identifier];
  *v39 = v30;
  v39[1] = v38;
  v37[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 1;
  v40 = &v37[OBJC_IVAR___BKRootBarItem_url];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v37[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v41 = 0;
  v41[1] = 0;
  v42 = &v37[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v37[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v37[OBJC_IVAR___BKRootBarItem_countryCode];
  *v44 = 0;
  v44[1] = 0;
  v37[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
  v46.receiver = v37;
  v46.super_class = v1;
  *(v0 + 64) = objc_msgSendSuper2(&v46, "init");
  return v0;
}

uint64_t _s5Books20RootBarItemsProviderC19isLibraryCollection3forSbSS_tFZ_0(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v7 > 0x10u || ((0x1E01Fu >> v7) & 1) == 0)
    {
      return 1;
    }

    v5 = byte_100828742[v7];
  }

  if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v5) == 0x6D6F74737563 && v6 == 0xE600000000000000)
  {

    return 1;
  }

  v9 = sub_1007A3AB4();

  return v9 & 1;
}

unint64_t _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0()
{
  v0 = 0x7972617262696CLL;
  v1 = sub_1007A2254();
  v3 = v2;
  if (v1 == sub_1007A2254() && v3 == v4)
  {
    goto LABEL_30;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
    return v0;
  }

  v7 = sub_1007A2254();
  v9 = v8;
  if (v7 == sub_1007A2254() && v9 == v10)
  {

    return 0xD000000000000011;
  }

  v12 = sub_1007A3AB4();

  if (v12)
  {
    return 0xD000000000000011;
  }

  v0 = 0x467972617262696CLL;
  v13 = sub_1007A2254();
  v15 = v14;
  if (v13 == sub_1007A2254() && v15 == v16)
  {
    goto LABEL_30;
  }

  v18 = sub_1007A3AB4();

  if ((v18 & 1) == 0)
  {
    v0 = 0x427972617262696CLL;
    v19 = sub_1007A2254();
    v21 = v20;
    if (v19 == sub_1007A2254() && v21 == v22)
    {
      goto LABEL_30;
    }

    v23 = sub_1007A3AB4();

    if ((v23 & 1) == 0)
    {
      v24 = sub_1007A2254();
      v26 = v25;
      if (v24 == sub_1007A2254() && v26 == v27)
      {

        return 0xD000000000000011;
      }

      v28 = sub_1007A3AB4();

      if (v28)
      {
        return 0xD000000000000011;
      }

      v0 = 0x507972617262696CLL;
      v29 = sub_1007A2254();
      v31 = v30;
      if (v29 == sub_1007A2254() && v31 == v32)
      {
LABEL_30:

        return v0;
      }

      v33 = sub_1007A3AB4();

      if (v33)
      {
        return v0;
      }

      v34 = sub_1007A2254();
      v36 = v35;
      if (v34 == sub_1007A2254() && v36 == v37)
      {

        return 0xD000000000000010;
      }

      v38 = sub_1007A3AB4();

      if (v38)
      {
        return 0xD000000000000010;
      }

      v39 = sub_1007A2254();
      v41 = v40;
      if (v39 == sub_1007A2254() && v41 == v42)
      {
      }

      else
      {
        v43 = sub_1007A3AB4();

        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }

      return 0xD000000000000011;
    }
  }

  return v0;
}

uint64_t _s5Books20RootBarItemsProviderC18isCustomCollection3forSbSS_tFZ_0(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    v5 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v5 == 16)
    {
      v5 = 15;
    }
  }

  if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v5) == 0x6D6F74737563 && v6 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v8 = sub_1007A3AB4();

    return v8 & 1;
  }
}

id _s5Books20RootBarItemsProviderC19defaultCollectionID18fromItemIdentifierSo09BCDefaultgH0aSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultAll;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001008BF5F0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDWantToRead;
  }

  else if (a1 == 0x467972617262696CLL && a2 == 0xEF64656873696E69 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDFinished;
  }

  else if (a1 == 0x427972617262696CLL && a2 == 0xEC000000736B6F6FLL || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDBooks;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001008BF620 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDAudiobooks;
  }

  else if (a1 == 0x507972617262696CLL && a2 == 0xEA00000000004644 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDPDFs;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008BF640 == a2 || (sub_1007A3AB4() & 1) != 0)
  {
    v4 = &kBKCollectionDefaultIDSamples;
  }

  else
  {
    if ((a1 != 0xD000000000000011 || 0x80000001008BF660 != a2) && (sub_1007A3AB4() & 1) == 0)
    {
      return 0;
    }

    v4 = &kBKCollectionDefaultIDDownloaded;
  }

  v5 = *v4;
  v6 = *v4;
  return v5;
}

uint64_t _s5Books20RootBarItemsProviderC08standardD7FromBag4with11countryCodeSayAA0bC4ItemCGSayypG_SSSgtFZ_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(result + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = result + 32;
    do
    {
      sub_100007484(v7, v16);
      sub_1000076D4(v16, v14);
      sub_1001F1160(&qword_100AD6710);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = v15;
        if (v15)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10066B4D0(0, v6[2] + 1, 1, v6);
            v6 = result;
          }

          v10 = v6[2];
          v9 = v6[3];
          if (v10 >= v9 >> 1)
          {
            result = sub_10066B4D0((v9 > 1), v10 + 1, 1, v6);
            v6 = result;
          }

          v6[2] = v10 + 1;
          v6[v10 + 4] = v8;
        }
      }

      v7 += 32;
      --v5;
    }

    while (v5);
  }

  v11 = _swiftEmptyArrayStorage;
  *&v16[0] = _swiftEmptyArrayStorage;
  v12 = v6[2];
  if (v12)
  {
    v13 = 0;
    while (v13 < v6[2])
    {
      *&v14[0] = v6[v13 + 4];

      sub_100480E6C(v14, a2, a3, &v15);

      if (v15)
      {
        sub_1007A25C4();
        if (*((*&v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v16[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        result = sub_1007A2644();
        v11 = *&v16[0];
      }

      if (v12 == ++v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return v11;
  }

  return result;
}

uint64_t _s5Books20RootBarItemsProviderC8isSearch3forSbSS_tFZ_0(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    v5 = 14;
  }

  else
  {

    v5 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v5 == 16)
    {
      v5 = 15;
    }
  }

  if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v5) == 0x686372616573 && v6 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v8 = sub_1007A3AB4();

    return v8 & 1;
  }
}

uint64_t _s5Books20RootBarItemsProviderC11canBeHidden3forSbSS_tFZ_0(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (!v4)
  {

    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v7 < 0x11u && ((0x1E01Fu >> v7) & 1) != 0)
    {
      goto LABEL_3;
    }

    if (_s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v7) != 0x7972617262696CLL || v8 != 0xE700000000000000)
    {
      v9 = sub_1007A3AB4();

      v5 = v9 ^ 1;
      return v5 & 1;
    }
  }

LABEL_3:
  v5 = 0;
  return v5 & 1;
}

double sub_1004838C0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  if (a4 && (a3 == 28778 && a4 == 0xE200000000000000 || (sub_1007A3AB4() & 1) != 0) && (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0))
  {
    if (qword_100AD16F8 != -1)
    {
      swift_once();
    }

    v14[0] = xmmword_100AE5618;
    v14[1] = *&qword_100AE5628;
    v14[2] = xmmword_100AE5638;
    v14[3] = unk_100AE5648;
    v15 = xmmword_100AE5618;
    v16 = *&qword_100AE5628;
    v17 = xmmword_100AE5638;
    v18 = unk_100AE5648;
    sub_1003A8518(v14, &v13);
  }

  else
  {
    _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
    if (v8)
    {

      v9 = 14;
    }

    else
    {

      v9 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
      if (v9 == 16)
      {
        v9 = 15;
      }
    }

    sub_10047F800(v9, &v15);
  }

  v10 = v16;
  *a5 = v15;
  a5[1] = v10;
  result = *&v17;
  v12 = v18;
  a5[2] = v17;
  a5[3] = v12;
  return result;
}

uint64_t _s5Books20RootBarItemsProviderC7tabType3for13BookAnalytics010BridgedTabG0OSS_tFZ_0(uint64_t a1, void *a2)
{
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(a1, a2);
  if (v4)
  {

    return 2;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(a1, a2);
    if (v6 > 0xEu)
    {
      return 0;
    }

    else
    {
      return qword_100828758[v6];
    }
  }
}

unint64_t sub_100483AC4()
{
  result = qword_100AE5658;
  if (!qword_100AE5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5658);
  }

  return result;
}

uint64_t sub_100483B18()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1007A3454();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100483BA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  if (v6)
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 <= v6)
  {
    return (*(v5 + 48))();
  }

  v10 = *(v5 + 80);
  v11 = ((v8 + v10 + ((v7 + v10 + ((v7 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_25:
      if (v6)
      {
        return (*(v5 + 48))();
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v6 + (v11 | v15) + 1;
}

char *sub_100483D10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = (v7 + v8 + ((v7 + v8) & ~v8)) & ~v8;
  if (!v6)
  {
    ++v7;
  }

  v10 = ((v7 + v8 + v9) & ~v8) + v7;
  v11 = a3 >= v6;
  v12 = a3 - v6;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v6 < a2)
  {
    v14 = ~v6 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_41:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v21 = *(v5 + 56);

  return v21();
}

uint64_t getEnumTagSinglePayload for RootBarItemsProvider.ItemKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RootBarItemsProvider.ItemKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1004840D0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1007A38D4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1007A38D4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100489F94(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1004841C8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10066A980(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004842F0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1007A38D4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1007A38D4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100489F94(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100484418(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10048452C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10066BB24(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100484624(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10000B3D8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1005D886C(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_10000B3D8((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_10004DC54();
  *v1 = v4;
  return result;
}

uint64_t sub_1004848E0(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = sub_1007A38D4();
  v7 = __OFADD__(v16, v5);
  result = v16 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_100489F94(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  result = sub_1005D8870(&v34, v3 + 8 * v9 + 32, v10, v4);
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v7 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v19 = (v12 + 64) >> 6;
      while (1)
      {
        v20 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v20 >= v19)
        {
          goto LABEL_8;
        }

        v21 = *(v11 + 8 * v20);
        ++v3;
        if (v21)
        {
          v17 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          v3 = v20;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v15;
  }

  result = v34;
  if (v13 != v10)
  {
LABEL_8:
    result = sub_10004DC54();
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v11 = v35;
  v12 = v36;
  v3 = v37;
  v33 = v35;
  if (!v38)
  {
    goto LABEL_16;
  }

  v17 = (v38 - 1) & v38;
  v18 = __clz(__rbit64(v38)) | (v37 << 6);
  v19 = (v36 + 64) >> 6;
LABEL_21:
  v22 = result;
  v23 = *(*(result + 56) + 8 * v18);
  v24 = v23;
  v25 = v23;
  v26 = v33;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v25;
      sub_1007A2614();
      v25 = v32;
      v26 = v33;
    }

    v2 = *v1;
    v27 = *v1 & 0xFFFFFFFFFFFFFF8;
    v28 = *(v27 + 0x18) >> 1;
    if (v4 < v28)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v27 + 32 + 8 * v4++) = v25;
    if (!v17)
    {
      break;
    }

    result = v22;
LABEL_33:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = *(*(result + 56) + ((v3 << 9) | (8 * v31)));
    v26 = v33;
    if (v4 == v28)
    {
      v4 = v28;
      *(v27 + 16) = v28;
      goto LABEL_23;
    }
  }

  v29 = v3;
  result = v22;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v27 + 16) = v4;
      goto LABEL_8;
    }

    v17 = *(v26 + 8 * v30);
    ++v29;
    if (v17)
    {
      v3 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100484B94(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10000B3D8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100484CE0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_100484EB0()
{
  result = qword_100AE5710;
  if (!qword_100AE5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5710);
  }

  return result;
}

unint64_t sub_100484F08()
{
  result = qword_100AE5718;
  if (!qword_100AE5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5718);
  }

  return result;
}

uint64_t sub_100484F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100485008(uint64_t a1, void *a2)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_1007A2CD4();
}

uint64_t sub_10048509C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10048AB84;
  *(v2 + 24) = v1;
  v5[4] = sub_10048ABE0;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1004091A8;
  v5[3] = &unk_100A1E320;
  v3 = _Block_copy(v5);

  [v0 performBlockInUIContext:v3];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10048521C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004852B4(a1);
    sub_1004856A8(a1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void sub_1004852B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC;
  if (!*&v1[OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC])
  {
    v4 = objc_allocWithZone(NSFetchRequest);
    v5 = sub_1007A2214();
    v6 = [v4 initWithEntityName:v5];

    v7 = [objc_opt_self() predicateForSelectableDefaultCollections];
    [v6 setPredicate:v7];

    [v6 setReturnsObjectsAsFaults:0];
    sub_10000A7C4(0, &unk_100AE9A50);
    isa = sub_1007A25D4().super.isa;
    [v6 setSortDescriptors:isa];

    v9 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v6 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
    v28 = 0;
    if ([v9 performFetch:&v28])
    {
      v10 = v28;
      v11 = [v9 fetchedObjects];
      if (v11)
      {
        v12 = v11;
        sub_10000A7C4(0, &qword_100AE5840);
        v13 = sub_1007A25E4();

        v14 = sub_10048A5B4(v13);

        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v14;
        v15 = v1;
        sub_10079B9B4();
      }
    }

    else
    {
      v27 = v1;
      v16 = v28;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v17 = sub_10079ACE4();
      sub_100008B98(v17, qword_100AE7000);
      swift_errorRetain();
      v18 = sub_10079ACC4();
      v19 = sub_1007A29B4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_1007A3B84();
        v24 = sub_1000070F4(v22, v23, &v28);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to fetch default collections: %s", v20, 0xCu);
        sub_1000074E0(v21);
      }

      else
      {
      }

      v1 = v27;
    }

    v25 = *&v1[v2];
    *&v1[v2] = v9;
    v26 = v9;

    [v26 setDelegate:v1];
  }
}

void sub_1004856A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC;
  if (!*&v1[OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC])
  {
    v4 = objc_allocWithZone(NSFetchRequest);
    v5 = sub_1007A2214();
    v6 = [v4 initWithEntityName:v5];

    v7 = [objc_opt_self() predicateForNonDeletedUserCollections];
    [v6 setPredicate:v7];

    [v6 setReturnsObjectsAsFaults:0];
    sub_1001F1160(&unk_100AD8160);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100811390;
    v9 = objc_allocWithZone(NSSortDescriptor);
    v10 = sub_1007A2214();
    v11 = [v9 initWithKey:v10 ascending:1];

    *(v8 + 32) = v11;
    sub_10000A7C4(0, &unk_100AE9A50);
    isa = sub_1007A25D4().super.isa;

    [v6 setSortDescriptors:isa];

    v13 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v6 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
    v32 = 0;
    if ([v13 performFetch:&v32])
    {
      v14 = v32;
      v15 = [v13 fetchedObjects];
      if (v15)
      {
        v16 = v15;
        sub_10000A7C4(0, &qword_100AE5840);
        v17 = sub_1007A25E4();

        v18 = sub_100489930(v17);

        swift_getKeyPath();
        swift_getKeyPath();
        v32 = v18;
        v19 = v1;
        sub_10079B9B4();
      }
    }

    else
    {
      v31 = v1;
      v20 = v32;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v21 = sub_10079ACE4();
      sub_100008B98(v21, qword_100AE7000);
      swift_errorRetain();
      v22 = sub_10079ACC4();
      v23 = sub_1007A29B4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        swift_getErrorValue();
        v26 = sub_1007A3B84();
        v28 = sub_1000070F4(v26, v27, &v32);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Unable to fetch user collections: %s", v24, 0xCu);
        sub_1000074E0(v25);
      }

      else
      {
      }

      v1 = v31;
    }

    v29 = *&v1[v2];
    *&v1[v2] = v13;
    v30 = v13;

    [v30 setDelegate:v1];
  }
}

uint64_t sub_100485B20()
{
  v0 = sub_100796CF4();
  v71 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v74 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v64 - v3;
  v5 = sub_1007A21D4();
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v64 - v10;
  v12 = sub_1007A1D04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10);
  *v15 = sub_1007A2D74();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1007A1D34();
  v18 = *(v13 + 8);
  v17 = v13 + 8;
  v18(v15, v12);
  if (v16)
  {
    sub_1007A2154();
    sub_100796C94();
    v19 = v5;
    v75 = v5;
    v20 = v6;
    *&v70 = *(v6 + 16);
    (v70)(v9, v11, v19);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = ObjCClassFromMetadata;
    v68 = objc_opt_self();
    v22 = [v68 bundleForClass:ObjCClassFromMetadata];
    v23 = v71;
    v67 = *(v71 + 16);
    v24 = v74;
    v67(v74, v4, v0);
    v64 = sub_1007A22D4();
    v72 = v25;
    v66 = *(v23 + 8);
    v66(v4, v0);
    v65 = *(v20 + 8);
    v26 = v75;
    v65(v11, v75);
    sub_1007A2154();
    sub_100796C94();
    (v70)(v9, v11, v26);
    v27 = [v68 bundleForClass:v69];
    v67(v24, v4, v0);
    v71 = sub_1007A22D4();
    v74 = v28;
    v66(v4, v0);
    v65(v11, v75);
    v75 = [objc_allocWithZone(NSNumberFormatter) init];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v16 = v78;
    v17 = v78 & 0xFFFFFFFFFFFFFF8;
    if (!(v78 >> 62))
    {
      v29 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_4;
      }

LABEL_24:
      v31 = &_swiftEmptyArrayStorage;
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v29 = sub_1007A38D4();
  if (!v29)
  {
    goto LABEL_24;
  }

LABEL_4:
  v30 = 0;
  v31 = &_swiftEmptyArrayStorage;
  do
  {
    v32 = v30;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v33 = sub_1007A3784();
      }

      else
      {
        if (v32 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v33 = *(v16 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v35 = [v33 title];
      if (v35)
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_25;
      }
    }

    v36 = v35;
    v37 = sub_1007A2254();
    v73 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10000B3D8(0, *(v31 + 2) + 1, 1, v31);
    }

    v40 = *(v31 + 2);
    v39 = *(v31 + 3);
    if (v40 >= v39 >> 1)
    {
      v31 = sub_10000B3D8((v39 > 1), v40 + 1, 1, v31);
    }

    *(v31 + 2) = v40 + 1;
    v41 = &v31[16 * v40];
    v42 = v73;
    *(v41 + 4) = v37;
    *(v41 + 5) = v42;
  }

  while (v30 != v29);
LABEL_25:

  v43 = 0;
  v44 = *(v31 + 2);
  v73 = v31 + 40;
  v45 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  v46 = &selRef_keyboardWillShow_;
  v47 = &selRef_setUserInteractionEnabled_;
  v70 = xmmword_10080B690;
LABEL_26:
  v78 = v43;
  v48 = sub_1007A3A74();
  v50 = v49;
  v51 = [objc_allocWithZone(v45[301]) v46[34]];
  v52 = [v75 v47[392]];

  if (v52)
  {

    v48 = sub_1007A2254();
    v50 = v53;
  }

  if (v43)
  {
    sub_1001F1160(&unk_100AD5090);
    v54 = swift_allocObject();
    *(v54 + 16) = v70;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10000E4C4();
    *(v54 + 32) = v48;
    *(v54 + 40) = v50;
    result = sub_1007A2284();
    v56 = result;
    v58 = v57;
  }

  else
  {

    v58 = v72;

    v56 = v64;
  }

  v59 = 0;
  v60 = v73;
  while (1)
  {
    if (v44 == v59)
    {

      return v56;
    }

    if (v59 >= *(v31 + 2))
    {
      break;
    }

    ++v59;
    v61 = v60 + 16;
    v62 = *v60;
    v78 = *(v60 - 1);
    v79 = v62;
    v76 = v56;
    v77 = v58;
    sub_100206ECC();
    result = sub_1007A34B4();
    v60 = v61;
    if (!result)
    {

      v63 = v43++ == v44;
      v45 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
      v46 = &selRef_keyboardWillShow_;
      v47 = &selRef_setUserInteractionEnabled_;
      if (!v63)
      {
        goto LABEL_26;
      }

      return v64;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100486350(void *a1, char a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10048A368;
  *(v6 + 24) = v5;
  v10[4] = sub_10048ABE0;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1004091A8;
  v10[3] = &unk_100A1DFB0;
  v7 = _Block_copy(v10);
  v8 = a1;

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1004864D4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = [v4 collectionController];

  v18 = 0;
  v6 = [v5 mutableCollectionWithCollectionID:a2 inManagedObjectContext:a1 error:&v18];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = v18;
    isa = sub_1007A2684().super.super.isa;
    [v6 setHidden:isa];
  }

  else
  {
    v9 = v18;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AE7000);
    swift_errorRetain();
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1007A3B84();
      v17 = sub_1000070F4(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to fetch and modify default collection: %s", v13, 0xCu);
      sub_1000074E0(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10048675C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100486768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultManager];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10048A03C;
  *(v10 + 24) = v9;
  v13[4] = sub_10048ABE0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1004091A8;
  v13[3] = &unk_100A1DF10;
  v11 = _Block_copy(v13);

  [v8 performBlockInUIContext:v11];

  _Block_release(v11);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

void sub_100486908(uint64_t a1)
{

  sub_10048A2C0(255);

  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 collectionController];

  v4 = sub_1007A2214();
  v17 = 0;
  v5 = [v3 mutableCollectionWithCollectionID:v4 inManagedObjectContext:a1 error:&v17];
  swift_unknownObjectRelease();

  if (v5)
  {
    v6 = v17;
    sub_1007A2334();

    v7 = sub_1007A2214();

    [v5 setTitle:v7];
  }

  else
  {
    v8 = v17;

    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100AE7000);
    swift_errorRetain();
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1007A3B84();
      v16 = sub_1000070F4(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to fetch and modify user collections: %s", v12, 0xCu);
      sub_1000074E0(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_100486C1C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10048A034;
  *(v6 + 24) = v5;
  v9[4] = sub_1002C70B8;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004091A8;
  v9[3] = &unk_100A1DE98;
  v7 = _Block_copy(v9);

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_100486DA0(uint64_t a1)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 collectionController];

  v4 = sub_1007A2214();
  v16 = 0;
  LODWORD(a1) = [v3 deleteCollectionWithCollectionID:v4 inManagedObjectContext:a1 error:&v16];
  swift_unknownObjectRelease();

  v5 = v16;
  if (a1)
  {

    v6 = v5;
  }

  else
  {
    v7 = v16;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AE7000);
    swift_errorRetain();
    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1007A3B84();
      v15 = sub_1000070F4(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to delete user collections: %s", v11, 0xCu);
      sub_1000074E0(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_10048704C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = _swiftEmptyArrayStorage;
  v71 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v6 = v67;
  if (v67 >> 62)
  {
LABEL_28:
    v7 = sub_1007A38D4();
    v62 = a2;
    v63 = v4;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_29:
    v9 = _swiftEmptyDictionarySingleton;
LABEL_30:

    v70 = v5;
    v31 = *(v62 + 16);
    if (v31)
    {
      v32 = (v62 + 40);
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;
        v35 = v9[2];

        if (v35 && (v36 = sub_10000E53C(v34, v33), (v37 & 1) != 0))
        {
          v38 = *(v9[7] + 8 * v36);
          sub_1007A25C4();
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1007A2614();
          }

          sub_1007A2644();
          v39 = sub_10000E53C(v34, v33);
          v41 = v40;

          if (v41)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1002F1F6C();
            }

            sub_1002F9CFC(v39, v9);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10000B3D8(0, *(v5 + 2) + 1, 1, v5);
          }

          v43 = *(v5 + 2);
          v42 = *(v5 + 3);
          if (v43 >= v42 >> 1)
          {
            v5 = sub_10000B3D8((v42 > 1), v43 + 1, 1, v5);
          }

          *(v5 + 2) = v43 + 1;
          v44 = &v5[16 * v43];
          *(v44 + 4) = v34;
          *(v44 + 5) = v33;
        }

        v32 += 2;
        --v31;
      }

      while (v31);
    }

    sub_100484624(v45);
    if (*(v5 + 2) || *(v70 + 2))
    {
      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v46 = sub_10079ACE4();
      sub_100008B98(v46, qword_100AE7000);
      v47 = sub_10079ACC4();
      v48 = sub_1007A29C4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v49 = 136315394;

        v50 = sub_1007A25F4();
        v52 = v51;

        v53 = sub_1000070F4(v50, v52, &v69);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        swift_beginAccess();

        v54 = sub_1007A25F4();
        v56 = v55;

        v57 = sub_1000070F4(v54, v56, &v69);

        *(v49 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v47, v48, "The reordered collection ID list does not match the existing list. Only in reordered list: %s; only in original list: %s", v49, 0x16u);
        swift_arrayDestroy();
      }
    }

    sub_1004848E0(v58);
    if (v71 >> 62)
    {

      sub_1001F1160(&unk_100AE5800);
      sub_1007A38C4();
    }

    else
    {

      sub_1007A3AD4();
    }

    v59 = objc_opt_self();
    sub_1001F1160(&unk_100AE5800);
    isa = sub_1007A25D4().super.isa;

    v61 = [objc_opt_self() defaultManager];
    [v59 saveSortedCollectionsArray:isa inLibraryManager:v61];
  }

  v7 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v62 = a2;
  v63 = v4;
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_4:
  v8 = 0;
  v65 = v6 & 0xFFFFFFFFFFFFFF8;
  v66 = v6 & 0xC000000000000001;
  v9 = _swiftEmptyDictionarySingleton;
  v64 = v6;
  while (1)
  {
    if (v66)
    {
      v12 = sub_1007A3784();
    }

    else
    {
      if (v8 >= *(v65 + 16))
      {
        goto LABEL_25;
      }

      v12 = *(v6 + 8 * v8 + 32);
    }

    v13 = v12;
    a2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = v9;
    v15 = [v12 collectionID];
    if (!v15)
    {
      break;
    }

    v4 = v15;
    v6 = sub_1007A2254();
    v17 = v16;

    v5 = v13;
    v18 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v14;
    v21 = sub_10000E53C(v6, v17);
    v22 = v18[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_26;
    }

    v4 = v20;
    if (v18[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1002F1F6C();
        if (v4)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1003D5E90(v24, isUniquelyReferenced_nonNull_native);
      v25 = sub_10000E53C(v6, v17);
      if ((v4 & 1) != (v26 & 1))
      {
        goto LABEL_60;
      }

      v21 = v25;
      if (v4)
      {
LABEL_5:

        v9 = v68;
        v10 = v68[7];
        v11 = *(v10 + 8 * v21);
        *(v10 + 8 * v21) = v5;

        goto LABEL_6;
      }
    }

    v68[(v21 >> 6) + 8] |= 1 << v21;
    v27 = (v68[6] + 16 * v21);
    *v27 = v6;
    v27[1] = v17;
    v9 = v68;
    *(v68[7] + 8 * v21) = v5;

    v28 = v68[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_27;
    }

    v68[2] = v30;
LABEL_6:
    ++v8;
    v5 = _swiftEmptyArrayStorage;
    v6 = v64;
    if (a2 == v7)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void sub_1004877A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v5;
    sub_10079B9A4();

    if (aBlock[0] >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v7 = 0;
      while (1)
      {
        if ((aBlock[0] & 0xC000000000000001) != 0)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v7 >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(aBlock[0] + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 collectionID];
        if (v11)
        {
          v12 = a3;
          v13 = v11;
          v14 = sub_1007A2254();
          v16 = v15;

          if (v14 == a2 && v16 == v12)
          {

LABEL_19:

            v19 = [objc_opt_self() defaultManager];
            v20 = [v19 collectionController];

            sub_10000A7C4(0, &qword_100ADA990);
            isa = sub_1007A25D4().super.isa;
            aBlock[4] = sub_100487BC0;
            aBlock[5] = 0;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1002D63C0;
            aBlock[3] = &unk_100A1DE20;
            v22 = _Block_copy(aBlock);
            v23 = v9;
            [v20 addBooks:isa toCollection:v23 forceToTop:1 completion:v22];
            _Block_release(v22);

            swift_unknownObjectRelease();
            return;
          }

          a3 = v12;
          v18 = sub_1007A3AB4();

          if (v18)
          {
            goto LABEL_19;
          }
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v24 = sub_10079ACE4();
    sub_100008B98(v24, qword_100AE7000);

    v25 = sub_10079ACC4();
    v26 = sub_1007A29B4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000070F4(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to add books to user collections: collection ID %s not found", v27, 0xCu);
      sub_1000074E0(v28);
    }
  }
}

void sub_100487BCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v33 = a4;
  v34 = v7;
  if (aBlock[0] >> 62)
  {
LABEL_26:
    v8 = sub_1007A38D4();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_27:

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v28 = sub_10079ACE4();
    sub_100008B98(v28, qword_100AE7000);

    v29 = sub_10079ACC4();
    v30 = sub_1007A29B4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000070F4(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to add storeIDs to user collections: collection ID %s not found", v31, 0xCu);
      sub_1000074E0(v32);
    }

    goto LABEL_32;
  }

  v8 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((aBlock[0] & 0xC000000000000001) != 0)
    {
      v10 = sub_1007A3784();
    }

    else
    {
      if (v9 >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v10 = *(aBlock[0] + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = [v10 collectionID];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = a3;
    v15 = v13;
    v16 = sub_1007A2254();
    v18 = v17;

    a3 = v14;
    if (v16 == a2 && v18 == v14)
    {
      break;
    }

    v20 = sub_1007A3AB4();

    if (v20)
    {

      goto LABEL_20;
    }

LABEL_6:
    ++v9;
    if (v12 == v8)
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  v21 = [objc_opt_self() defaultManager];
  v22 = [v21 collectionController];

  v23 = *(v33 + 16);
  if (v23)
  {
    v24 = v33 + 40;
    do
    {

      v25 = sub_1007A2214();

      v26 = sub_1007A2214();
      aBlock[4] = sub_100488018;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D63C0;
      aBlock[3] = &unk_100A1DDF8;
      v27 = _Block_copy(aBlock);
      [v22 addStoreID:v25 toCollectionID:v26 forceToTop:1 completion:v27];
      _Block_release(v27);

      v24 += 16;
      --v23;
    }

    while (v23);
  }

  swift_unknownObjectRelease();
LABEL_32:
}

void sub_100488024(uint64_t a1, uint64_t a2, const char *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AE7000);
    swift_errorRetain();
    oslog = sub_10079ACC4();
    v5 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1007A3B84();
      v10 = sub_1000070F4(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, a3, v6, 0xCu);
      sub_1000074E0(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1004881E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_10000A7C4(0, &qword_100AD1E10);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v17[7] = a8;
  v17[8] = sub_10048A378;
  v17[9] = v15;

  sub_1007A2CD4();
}

void sub_100488338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, void (*a7)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v30 = a7;
    if (!a3)
    {
      sub_100485B20();
    }

    sub_10048A2C0(255);

    v13 = sub_1007A2334();
    v15 = v14;

    v16 = [objc_opt_self() defaultManager];
    v17 = [v16 collectionController];

    if (a5)
    {
      a5 = sub_1007A2214();
    }

    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = v15;
    v18[4] = a6;
    v33 = sub_10048A3D0;
    v34 = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_1002166B8;
    *(&v32 + 1) = &unk_100A1E0A0;
    v19 = _Block_copy(&aBlock);

    v20 = [v17 insertNewCollectionSyncOnMainQueueWithCollectionID:a5 newCollectionBlock:v19];
    swift_unknownObjectRelease();
    _Block_release(v19);

    if (v20)
    {
      v21 = [v20 collectionID];
      if (!v21)
      {
        __break(1u);
        return;
      }

      v22 = v21;
      v23 = sub_1007A2254();
      v25 = v24;

      *&aBlock = v23;
      *(&aBlock + 1) = v25;
      *&v32 = v13;
      *(&v32 + 1) = v15;
      LOBYTE(v33) = 0;
      v30(&aBlock);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_100AD1768 != -1)
      {
        swift_once();
      }

      v26 = sub_10079ACE4();
      sub_100008B98(v26, qword_100AE7000);
      v27 = sub_10079ACC4();
      v28 = sub_1007A29B4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create new collection", v29, 2u);
      }

      aBlock = 0u;
      v32 = 0u;
      LOBYTE(v33) = 1;
      v30(&aBlock);
    }
  }
}

void sub_1004886B4(void *a1)
{
  if (a1)
  {
    v2 = sub_1007A2214();
    [a1 setTitle:v2];

    sub_10000A7C4(0, &qword_100ADA990);
    isa = sub_1007A25D4().super.isa;
    [a1 addLibraryAssets:isa];
  }
}

void sub_100488768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_1007A2214();
  v7 = [v5 initWithEntityName:v6];

  v8 = objc_opt_self();
  v9 = sub_1007A2214();
  v10 = [v8 predicateForCollectionMembersInCollectionID:v9 hideUnownedItems:0];

  [v7 setPredicate:v10];
  sub_10000A7C4(0, &unk_100AE5830);
  v11 = sub_1007A2F24();

  *a4 = v11;
  *(a4 + 8) = 0;
}

uint64_t sub_100488B60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100488BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001F1160(&qword_100AE5810);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  v13 = *v4;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100ADAA10);
  swift_allocObject();

  v15 = v13;

  v18[1] = sub_10079B954();
  sub_100005920(&qword_100AE5818, &qword_100ADAA10);
  sub_10079BA74();

  sub_100005920(&unk_100AE5820, &qword_100AE5810);
  v16 = sub_10079BA14();
  (*(v10 + 8))(v12, v9);
  return v16;
}

uint64_t sub_100488E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1007A2CD4();
}

uint64_t sub_100488EEC(uint64_t a1, uint64_t a2)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1007A2CD4();
}

uint64_t sub_100488F8C(uint64_t a1)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_1007A2CD4();
}

uint64_t sub_1004890A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A7C4(0, &qword_100AD1E10);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a1;

  sub_1007A2CD4();
}

uint64_t sub_100489194(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = a1;
  sub_1001F1160(&qword_100ADAA10);
  swift_allocObject();
  v5 = v3;

  return sub_10079B954();
}

void sub_100489254()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC);
  if (v2 && (sub_10000A7C4(0, &qword_100ADAF70), v3 = v2, v4 = sub_1007A3184(), v3, (v4 & 1) != 0))
  {

    sub_100489350();
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC);
    if (v5)
    {
      sub_10000A7C4(0, &qword_100ADAF70);
      v6 = v5;
      v7 = sub_1007A3184();

      if (v7)
      {

        sub_10048960C();
      }
    }
  }
}

void sub_100489350()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC);
  if (v1 && (v2 = [v1 fetchedObjects]) != 0)
  {
    v3 = v2;
    sub_10000A7C4(0, &qword_100AE5840);
    v4 = sub_1007A25E4();

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE7000);
    v6 = sub_10079ACC4();
    v7 = sub_1007A29D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got updated default collections", v8, 2u);
    }

    sub_10000A7C4(0, &qword_100AD1E10);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;

    sub_1007A2CD4();
  }

  else
  {
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE7000);
    oslog = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Can't get fetched objects from updated defaultCollectionsFRC", v13, 2u);
    }
  }
}

void sub_10048960C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC);
  if (v1 && (v2 = [v1 fetchedObjects]) != 0)
  {
    v3 = v2;
    sub_10000A7C4(0, &qword_100AE5840);
    v4 = sub_1007A25E4();

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AE7000);
    v6 = sub_10079ACC4();
    v7 = sub_1007A29D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got updated user collections", v8, 2u);
    }

    sub_10000A7C4(0, &qword_100AD1E10);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;

    sub_1007A2CD4();
  }

  else
  {
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE7000);
    oslog = sub_10079ACC4();
    v12 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Can't get fetched objects from updated userCollectionsFRC", v13, 2u);
    }
  }
}

void *sub_100489930(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v10 = &_swiftEmptyArrayStorage;
    sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = v6;
      sub_100489A90(&v8, &v9);

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v5 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_100489A90(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 title];
  if (v4)
  {

    v5 = [v3 title];
    if (!v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = v5;
    v7 = sub_1007A2254();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      goto LABEL_13;
    }
  }

  if (qword_100AD1768 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100AE7000);
  v12 = v3;
  v13 = sub_10079ACC4();
  v14 = sub_1007A29B4();
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_12;
  }

  v24 = a2;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v25 = v16;
  *v15 = 136315138;
  v17 = [v12 collectionID];

  if (v17)
  {
    v18 = sub_1007A2254();
    v20 = v19;

    v21 = sub_1000070F4(v18, v20, &v25);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "User collection %s has empty title, use fallback instead", v15, 0xCu);
    sub_1000074E0(v16);

    a2 = v24;
LABEL_12:
    sub_100485B20();
    v22 = sub_1007A2214();

    [v12 setTitle:v22];

LABEL_13:
    *a2 = v3;
    v23 = v3;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100489CF8(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10048A5B4(a2);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

uint64_t sub_100489D90(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100489930(a2);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

uint64_t sub_100489E28@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100489EA8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_100489F20(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_100489F94(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1007A38D4();
LABEL_9:
  result = sub_1007A3794();
  *v1 = result;
  return result;
}

void sub_10048A048(void *a1, char a2)
{
  v4 = _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v4, v5);
  if (v6 <= 0x10u && ((1 << v6) & 0x1E01F) != 0)
  {
    goto LABEL_6;
  }

  if (RootBarItemsProvider.ItemKind.rawValue.getter() == 0x7972617262696CLL && v16 == 0xE700000000000000)
  {

LABEL_6:
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AE7000);
    v9 = a1;
    oslog = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      v13 = sub_1007A2254();
      v15 = sub_1000070F4(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Collection %s does not support setting isHidden", v11, 0xCu);
      sub_1000074E0(v12);
    }

    return;
  }

  v17 = sub_1007A3AB4();

  if (v17)
  {
    goto LABEL_6;
  }

  sub_10000A7C4(0, &qword_100AD1E10);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2 & 1;
  v19 = a1;
  sub_1007A2CD4();
}

uint64_t sub_10048A2C0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1007A23C4();

    return sub_1007A24B4();
  }

  return result;
}

uint64_t sub_10048A378(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_10048A3DC()
{

  return swift_deallocObject();
}

uint64_t sub_10048A41C()
{

  return swift_deallocObject();
}

void *sub_10048A46C()
{
  sub_1001F1160(&qword_100AE5848);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1008287D0;
  v1 = kBKCollectionDefaultAll;
  v2 = kBKCollectionDefaultIDWantToRead;
  *(inited + 32) = kBKCollectionDefaultAll;
  *(inited + 40) = v2;
  v3 = kBKCollectionDefaultIDFinished;
  v4 = kBKCollectionDefaultIDBooks;
  *(inited + 48) = kBKCollectionDefaultIDFinished;
  *(inited + 56) = v4;
  v5 = kBKCollectionDefaultIDAudiobooks;
  v6 = kBKCollectionDefaultIDPDFs;
  *(inited + 64) = kBKCollectionDefaultIDAudiobooks;
  *(inited + 72) = v6;
  v7 = kBKCollectionDefaultIDSamples;
  *(inited + 80) = kBKCollectionDefaultIDSamples;
  v8 = kBKCollectionDefaultIDDownloaded;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result = sub_10066BB64(1, 8, 1, inited);
  result[2] = 8;
  result[11] = v16;
  return result;
}

void *sub_10048A5B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_27:
    v4 = &_swiftEmptyDictionarySingleton;
LABEL_28:
    v25 = sub_10048A46C();
    v26 = v25[2];
    if (!v26)
    {
      goto LABEL_40;
    }

    v27 = 0;
LABEL_30:
    v28 = v27;
    while (1)
    {
      if (v28 >= v26)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_42;
      }

      if (v4[2])
      {
        v29 = v25[v28 + 4];
        v30 = sub_1002F9CF4(v29);
        if (v31)
        {
          v32 = *(v4[7] + 8 * v30);

          sub_1007A25C4();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1007A2614();
          }

          sub_1007A2644();
          if (v27 == v26)
          {
LABEL_40:

            return &_swiftEmptyArrayStorage;
          }

          goto LABEL_30;
        }
      }

      ++v28;
      if (v27 == v26)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_3:
  v3 = 0;
  v4 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007A3784();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v2 = sub_1007A38D4();
      if (!v2)
      {
        goto LABEL_27;
      }

      goto LABEL_3;
    }

    v10 = [v7 collectionID];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v4;
    v14 = sub_1002F9CF4(v11);
    v16 = v4[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v4[3] < v19)
    {
      sub_1003D5BCC(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1002F9CF4(v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_44;
      }

LABEL_16:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v24 = v14;
    sub_1002F1E0C();
    v14 = v24;
    v4 = v34;
    if (v20)
    {
LABEL_4:
      v5 = v4[7];
      v6 = *(v5 + 8 * v14);
      *(v5 + 8 * v14) = v12;

      goto LABEL_5;
    }

LABEL_17:
    v4[(v14 >> 6) + 8] |= 1 << v14;
    *(v4[6] + 8 * v14) = v11;
    *(v4[7] + 8 * v14) = v12;

    v22 = v4[2];
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v23;
LABEL_5:
    ++v3;
    if (v9 == v2)
    {
      goto LABEL_28;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  type metadata accessor for BCDefaultCollectionID(0);
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_10048A8D8(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 1;
  v4 = [objc_opt_self() defaultManager];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10048AAC4;
  *(v6 + 24) = v5;
  v11[4] = sub_10048ABE0;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1004091A8;
  v11[3] = &unk_100A1E208;
  v7 = _Block_copy(v11);

  [v4 performBlockInUIContext:v7];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      sub_10048AAD0();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();
    }

    else
    {
      isEscapingClosureAtFileLocation = v12;
    }

    return isEscapingClosureAtFileLocation;
  }

  return result;
}

unint64_t sub_10048AAD0()
{
  result = qword_100AF4D80;
  if (!qword_100AF4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4D80);
  }

  return result;
}

uint64_t sub_10048AB2C()
{

  return swift_deallocObject();
}

uint64_t sub_10048ABE4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002F4960(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 32 * a1 + 32), (v3 + 32 * a1 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_10048AC84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002F49B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10048AD24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002F4988(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10048ADB0()
{
  _s5Books18PropertyValueActorV9ActorTypeCMa_1();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100AE5858 = v0;
  return result;
}

uint64_t *NSNotificationName.markedAsFinished.unsafeMutableAddressor()
{
  if (qword_100AD1710 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.markedAsFinished;
}

id static NSNotificationName.markedAsFinished.getter()
{
  if (qword_100AD1710 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.markedAsFinished;

  return v1;
}

void PersonalizationEventDonor.donate(with:context:donationComplete:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_1007998D4();
  if (a3)
  {
    if (v14 == a2 && v15 == a3)
    {
      goto LABEL_4;
    }

    v18 = sub_1007A3AB4();

    if (v18)
    {
      goto LABEL_10;
    }

    if (sub_1007998C4() == a2 && v26 == a3)
    {
LABEL_4:

LABEL_10:
      v19 = sub_1007A2744();
      (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
      v20 = qword_100AD1708;
      v21 = v5;
      v22 = a1;

      if (v20 != -1)
      {
        swift_once();
      }

      v23 = qword_100AE5858;
      v24 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1);
      v25 = swift_allocObject();
      v25[2] = v23;
      v25[3] = v24;
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = a4;
      v25[7] = a5;

      sub_1003457A0(0, 0, v13, &unk_100828B70, v25);

      return;
    }

    v27 = sub_1007A3AB4();

    if (v27)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1007998C4();
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v33 = -1;
  v16 = objc_allocWithZone(sub_1007997D4());
  v29 = sub_1007997C4();
  a4();
  v17 = v29;
}

uint64_t sub_10048B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v8 = sub_100799754();
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  if (qword_100AD1708 != -1)
  {
    swift_once();
  }

  v9 = qword_100AE5858;

  return _swift_task_switch(sub_10048B3A8, v9, 0);
}

uint64_t sub_10048B3A8()
{
  v1 = *(v0 + 248);
  v2 = sub_100799814();
  v4 = v3;
  v5 = OBJC_IVAR___BKPersonalizationEventDonor_cachedEnagagementPropertyValues;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_10000E53C(v2, v4);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);

      v54 = v10;

      v12 = sub_100401CC0(v11);
      v14 = v13;

      if (v14)
      {
        v52 = v14;
        v53 = v12;
        result = sub_1002EF384(v12, v14);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v16 = result;
        v17 = *(v0 + 304);
        v18 = *(v0 + 288);
        v49 = *(v0 + 280);
        v19 = sub_100799814();
        v21 = v20;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = *(v1 + v5);
        *(v1 + v5) = 0x8000000000000000;
        sub_1002F6130(v10, v19, v21, isUniquelyReferenced_nonNull_native);

        *(v1 + v5) = v55;
        swift_endAccess();
        v23 = enum case for CDProperty.SpecialPlistKeys.assetID(_:);
        v24 = v49;
        v51 = *(v18 + 104);
        v51(v17, enum case for CDProperty.SpecialPlistKeys.assetID(_:), v49);
        v25 = sub_100799744();
        v27 = v26;
        v50 = *(v18 + 8);
        v50(v17, v24);
        v28 = v16;
        if (*(v16 + 16))
        {
          v29 = sub_10000E53C(v25, v27);
          v31 = v30;

          if (v31)
          {
            sub_100007484(*(v16 + 56) + 32 * v29, v0 + 112);
            v32 = swift_dynamicCast();
            if (v32)
            {
              v33 = *(v0 + 224);
            }

            else
            {
              v33 = 0;
            }

            if (v32)
            {
              v34 = *(v0 + 232);
            }

            else
            {
              v34 = 0;
            }

LABEL_19:
            v39 = *(v0 + 296);
            v40 = *(v0 + 280);
            v48 = *(v0 + 264);
            v51(v39, v23, v40);
            v41 = sub_100799744();
            v43 = v42;
            v50(v39, v40);
            sub_1002EEBD0(v41, v43, (v0 + 144));

            sub_100007840(v0 + 144, &unk_100AD5B40);
            v44 = sub_100581680(v28);

            *(v0 + 16) = v53;
            *(v0 + 24) = v52;
            *(v0 + 32) = v33;
            *(v0 + 40) = v34;
            *(v0 + 48) = v44;
            *(v0 + 56) = 2;
            v45 = objc_allocWithZone(sub_1007997D4());
            v46 = sub_1007997C4();
            v48();

            *(v0 + 240) = v54;
            sub_1001F1160(&qword_100AE5870);
            sub_100005920(&qword_100AE59E8, &qword_100AE5870);
            v47 = sub_1007A28A4();

            if (v47)
            {
              [*(v0 + 248) propertyDidChange:*(v0 + 248) propertyConfiguration:*(v0 + 256)];
            }

            goto LABEL_14;
          }
        }

        else
        {
        }

        v33 = 0;
        v34 = 0;
        goto LABEL_19;
      }
    }
  }

  v35 = *(v0 + 264);
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 104) = -1;
  v36 = objc_allocWithZone(sub_1007997D4());
  v37 = sub_1007997C4();
  v35();

LABEL_14:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10048B844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10048B2A4(a1, v4, v5, v6, v7, v9, v8);
}

char *PersonalizationEventDonor.dictPathValues(_:path:)(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  if (!a2[2])
  {
    return _swiftEmptyArrayStorage;
  }

  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2[4];
  v4 = a2[5];

  v6 = sub_10000E53C(v3, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007484(*(a1 + 56) + 32 * v6, v31);
  sub_1000076D4(v31, v32);
  v30 = a2;

  sub_10048AD24(0);

  if (!a2[2])
  {

    sub_1001F1160(&qword_100AD7FB0);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_10080B690;
    sub_100007484(v32, (v10 + 4));
    goto LABEL_9;
  }

  sub_100007484(v32, v31);
  sub_1001F1160(&qword_100AD6710);
  v9 = &type metadata for Any;
  if (swift_dynamicCast())
  {
    v10 = PersonalizationEventDonor.dictPathValues(_:path:)(v28, a2);

LABEL_9:
    sub_1000074E0(v32);
    return v10;
  }

  sub_100007484(v32, v31);
  sub_1001F1160(&qword_100ADEC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    sub_1000074E0(v32);

    return _swiftEmptyArrayStorage;
  }

  if (!a2[2] || (a2[4] != 42 || a2[5] != 0xE100000000000000) && (sub_1007A3AB4() & 1) == 0)
  {

    goto LABEL_40;
  }

  sub_10048AD24(0);

  v11 = *(v28 + 16);
  if (!v11)
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_45:
    sub_1000074E0(v32);

    return v10;
  }

  v12 = v28 + 32;
  v10 = _swiftEmptyArrayStorage;
  v13 = &type metadata for String;
  while (1)
  {
    sub_100007484(v12, v31);
    sub_100007484(v31, &v28);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_100007484(v31, &v28);
    if (swift_dynamicCast())
    {
      v29 = v13;
      v28 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10066A640(0, v10[2] + 1, 1, v10);
      }

      v26 = v10[2];
      v25 = v10[3];
      if (v26 >= v25 >> 1)
      {
        v10 = sub_10066A640((v25 > 1), v26 + 1, 1, v10);
      }

      sub_1000074E0(v31);
      v10[2] = v26 + 1;
      sub_1000076D4(&v28, &v10[4 * v26 + 4]);
      goto LABEL_19;
    }

LABEL_18:
    sub_1000074E0(v31);
LABEL_19:
    v12 += 32;
    if (!--v11)
    {

      goto LABEL_45;
    }
  }

  v15 = v9;
  v16 = v13;
  v17 = PersonalizationEventDonor.dictPathValues(_:path:)(v27, v30);

  v18 = *(v17 + 16);
  v19 = v10[2];
  v20 = v19 + v18;
  if (!__OFADD__(v19, v18))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v20 > v10[3] >> 1)
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_10066A640(result, v21, 1, v10);
      v10 = result;
    }

    v13 = v16;
    v9 = v15;
    if (*(v17 + 16))
    {
      if ((v10[3] >> 1) - v10[2] < v18)
      {
        goto LABEL_48;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v22 = v10[2];
        v23 = __OFADD__(v22, v18);
        v24 = v22 + v18;
        if (v23)
        {
          goto LABEL_49;
        }

        v10[2] = v24;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t PersonalizationEventDonor.expressionWrapper(_:matches:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v4 = sub_10000E53C(0x6973736572707865, 0xEA00000000006E6FLL), (v5 & 1) != 0) && (sub_100007484(*(a1 + 56) + 32 * v4, v10), sub_1001F1160(&qword_100AD6710), (swift_dynamicCast() & 1) != 0))
  {
    _s5Books25PersonalizationEventDonorC10expression_7matchesSbSDySSypG_yptF_0(v9, a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id PersonalizationEventDonor.process<A>(processEvent:)(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100797B24();
  v137 = *(v4 - 8);
  __chkstk_darwin(v4);
  v140 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v139 = &v117 - v7;
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v143 = &v117 - v13;
  __chkstk_darwin(v14);
  v141 = &v117 - v15;
  v136 = sub_100796BB4();
  v138 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100797B04();
  v18 = 0;
  v19 = sub_100797BD4();
  v142 = v8;
  v24 = v19;
  v26 = v25;

  v27 = objc_opt_self();
  isa = sub_1007969C4().super.isa;
  v147 = 0;
  v29 = [v27 JSONObjectWithData:isa options:0 error:&v147];

  if (v29)
  {
    v30 = v147;
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AD6710);
    if (swift_dynamicCast())
    {
      v23 = v146[0];
    }

    else
    {
      v23 = sub_100019158(_swiftEmptyArrayStorage);
    }

    sub_10000ADCC(v24, v26);
  }

  else
  {
    v31 = v147;
    v32 = sub_1007967D4();

    swift_willThrow();
    sub_10000ADCC(v24, v26);
    v18 = 0;
    v33 = v142;
    sub_10079AC84();
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v134 = v32;
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Invalid event JSON", v22, 2u);
      v18 = 0;
    }

    (*(v9 + 8))(v11, v33);
    v23 = _swiftEmptyDictionarySingleton;
  }

  v34 = sub_100797B14();
  sub_10048D520(v34, v35, v23);

  v36 = sub_100797B14();
  v38 = v37;
  v39 = *&v2[OBJC_IVAR___BKPersonalizationEventDonor_config];
  if (!*(v39 + 16))
  {
    goto LABEL_102;
  }

  v40 = v36;

  v41 = sub_10000E53C(v40, v38);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_100007484(*(v39 + 56) + 32 * v41, &v147);

  sub_1001F1160(&qword_100AD6710);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v127 = v2;
  v44 = v9;
  v45 = v146[0];
  v46 = "setupCollections";
  v47 = v146[0][2];
  v126 = "setupCollections";
  if (v47 && (v48 = sub_10000E53C(0xD000000000000013, 0x80000001008D7140), (v49 & 1) != 0))
  {
    sub_100007484(v45[7] + 32 * v48, &v147);
    v50 = swift_dynamicCast();
    v51 = v142;
    if (v50)
    {
      v134 = v146[1];
      v52 = v45[2];
      v133 = v44;
      if (v52 && (v46 = v146[0], v53 = sub_10000E53C(0x746E656D75677261, 0xE900000000000073), (v54 & 1) != 0) && (sub_100007484(v45[7] + 32 * v53, &v147), sub_1001F1160(&qword_100AE5870), (swift_dynamicCast() & 1) != 0))
      {
        v125 = v146[0];
        v55 = [v127 eventConfigurations];
        sub_100799824();
        v44 = sub_1007A25E4();

        if (v44 >> 62)
        {
          goto LABEL_117;
        }

        v56 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v56)
        {
          goto LABEL_22;
        }

LABEL_118:
        v61 = v51;
LABEL_119:

        v51 = v61;
      }

      else
      {
      }

      v44 = v133;
      if (!v45[2])
      {
        goto LABEL_102;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v51 = v142;
  }

  if (!v45[2])
  {
LABEL_102:
  }

LABEL_37:
  v62 = sub_10000E53C(1702060387, 0xE400000000000000);
  if ((v63 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_100007484(v45[7] + 32 * v62, &v147);

  sub_1001F1160(&qword_100ADE598);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v134 = v146[0][2];
  if (!v134)
  {
    goto LABEL_102;
  }

  v65 = 0;
  v133 = v146[0] + 4;
  v123 = (v138 + 1);
  v132 = (v137 + 2);
  ++v137;
  v131 = v44 + 8;
  *&v64 = 136315138;
  v129 = v64;
  v45 = v141;
  v130 = v23;
  v66 = v146[0];
  v128 = a1;
  while (v65 < v66[2])
  {
    v138 = v65;
    v46 = v133[v65];
    if (*(v46 + 2))
    {

      v68 = sub_10000E53C(0x61567265746C6966, 0xEC0000007365756CLL);
      if (v69)
      {
        sub_100007484(*(v46 + 7) + 32 * v68, &v147);
        sub_1001F1160(&qword_100ADEC60);
        if (swift_dynamicCast())
        {
          v44 = v146[0];
          if (*(v46 + 2) && (v70 = sub_10000E53C(0x61507265746C6966, 0xEA00000000006874), (v71 & 1) != 0) && (sub_100007484(*(v46 + 7) + 32 * v70, &v147), sub_1001F1160(&unk_100AD61F0), (swift_dynamicCast() & 1) != 0))
          {
            v72 = PersonalizationEventDonor.dictPathValues(_:path:)(v23, v146[0]);

            if (!*(v72 + 2))
            {

              v45 = v141;
              v51 = v142;
              v67 = v138;
              goto LABEL_42;
            }

            sub_100007484((v72 + 32), &v147);

            if (*(v46 + 2) && (v73 = sub_10000E53C(0xD000000000000013, v126 | 0x8000000000000000), (v74 & 1) != 0))
            {
              sub_100007484(*(v46 + 7) + 32 * v73, v146);
              v75 = swift_dynamicCast();
              v45 = v141;
              if (v75)
              {
                v125 = v145;
                v51 = v142;
                if (*(v46 + 2) && (v124 = v144, v76 = sub_10000E53C(0x746E656D75677261, 0xE900000000000073), (v77 & 1) != 0))
                {
                  sub_100007484(*(v46 + 7) + 32 * v76, v146);
                  sub_1001F1160(&qword_100AE5870);
                  if (swift_dynamicCast())
                  {
                    v117 = v144;
                    v78 = [v127 eventConfigurations];
                    sub_100799824();
                    v79 = sub_1007A25E4();

                    v80 = v79;
                    if (v79 >> 62)
                    {
                      result = sub_1007A38D4();
                      if (!result)
                      {
LABEL_98:
                        v86 = v142;
LABEL_99:

                        sub_1000074E0(&v147);
                        v45 = v141;
                        v67 = v138;
                        v51 = v86;
                        goto LABEL_42;
                      }
                    }

                    else
                    {
                      result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (!result)
                      {
                        goto LABEL_98;
                      }
                    }

                    v82 = 0;
                    v122 = v79 & 0xC000000000000001;
                    v121 = v79 & 0xFFFFFFFFFFFFFF8;
                    v120 = v44;
                    v119 = v79;
                    v118 = result;
                    while (1)
                    {
                      if (v122)
                      {
                        result = sub_1007A3784();
                      }

                      else
                      {
                        if (v82 >= *(v121 + 16))
                        {
                          __break(1u);
LABEL_121:
                          __break(1u);
                          return result;
                        }

                        result = *(v80 + 8 * v82 + 32);
                      }

                      v83 = result;
                      v84 = (v82 + 1);
                      if (__OFADD__(v82, 1))
                      {
                        goto LABEL_121;
                      }

                      if (sub_100799814() == v124 && v85 == v125)
                      {
                        v122 = v66;

                        goto LABEL_87;
                      }

                      v44 = sub_1007A3AB4();

                      if (v44)
                      {
                        break;
                      }

                      ++v82;
                      result = v118;
                      v60 = v84 == v118;
                      a1 = v128;
                      v86 = v142;
                      v44 = v120;
                      v80 = v119;
                      if (v60)
                      {
                        goto LABEL_99;
                      }
                    }

                    v122 = v66;
LABEL_87:

                    if (*(v46 + 2) && (v107 = sub_10000E53C(0x72416F6475657370, 0xEF73746E656D7567), (v108 & 1) != 0))
                    {
                      sub_100007484(*(v46 + 7) + 32 * v107, v146);

                      sub_1001F1160(&qword_100AE5878);
                      if (swift_dynamicCast())
                      {
                        v46 = v144;
                      }

                      else
                      {
                        v46 = 0;
                      }
                    }

                    else
                    {

                      v46 = 0;
                    }

                    a1 = v128;
                    v109 = sub_100797B14();
                    v111 = _s5Books25PersonalizationEventDonorC5value_19matchesFilterValues05debugC4NameSbyp_SayypGSSSgtF_0(&v147, v120, v109, v110);

                    if (v111)
                    {
                      v112 = v135;
                      sub_100797AF4();
                      v23 = v130;
                      v44 = v125;
                      sub_10048D6DC(v130, v112, v124, v125, v117, v46, v83);

                      (*v123)(v112, v136);
                      sub_1000074E0(&v147);
                      v45 = v141;
                      v51 = v142;
                    }

                    else
                    {
                      sub_1000074E0(&v147);

                      v45 = v141;
                      v51 = v142;
                      v23 = v130;
                    }

                    v66 = v122;
                  }

                  else
                  {
                    sub_1000074E0(&v147);
                  }
                }

                else
                {

                  sub_1000074E0(&v147);
                }

                goto LABEL_78;
              }

              sub_1000074E0(&v147);
            }

            else
            {

              sub_1000074E0(&v147);
              v45 = v141;
            }

            v51 = v142;
          }

          else
          {
            v125 = v18;

            sub_10079AC84();
            v99 = v139;
            (*v132)(v139, a1, v4);
            v100 = v45;
            v101 = sub_10079ACC4();
            v102 = sub_1007A29B4();
            if (os_log_type_enabled(v101, v102))
            {
              v46 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v147 = v124;
              *v46 = v129;
              v103 = sub_100797B14();
              v105 = v104;
              (*v137)(v99, v4);
              v44 = sub_1000070F4(v103, v105, &v147);

              *(v46 + 4) = v44;
              v106 = v102;
              v51 = v142;
              _os_log_impl(&_mh_execute_header, v101, v106, "Filter path components for case in event %s missing or not strings", v46, 0xCu);
              sub_1000074E0(v124);

              (*v131)(v100, v51);
            }

            else
            {

              (*v137)(v99, v4);
              v51 = v142;
              (*v131)(v100, v142);
            }

            v45 = v100;
            v18 = v125;
            v23 = v130;
          }

LABEL_78:
          v67 = v138;
          goto LABEL_42;
        }
      }
    }

    v44 = v23;
    v87 = v66;
    v88 = v51;
    v89 = v143;
    sub_10079AC84();
    v46 = v140;
    (*v132)(v140, a1, v4);
    v90 = sub_10079ACC4();
    v91 = sub_1007A29B4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = v46;
      v46 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v147 = v44;
      *v46 = v129;
      v93 = v18;
      v94 = sub_100797B14();
      v96 = v95;
      (*v137)(v92, v4);
      v97 = v94;
      v18 = v93;
      v66 = v87;
      v98 = sub_1000070F4(v97, v96, &v147);
      a1 = v128;
      v23 = v130;

      *(v46 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "Filter values for case in event %s missing", v46, 0xCu);
      sub_1000074E0(v44);
      v51 = v142;

      (*v131)(v143, v51);
      v45 = v141;
      goto LABEL_78;
    }

    (*v137)(v46, v4);
    v51 = v88;
    (*v131)(v89, v88);
    v45 = v141;
    v67 = v138;
    v66 = v87;
    v23 = v44;
LABEL_42:
    v65 = v67 + 1;
    if (v65 == v134)
    {
      goto LABEL_102;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v56 = sub_1007A38D4();
  if (!v56)
  {
    goto LABEL_118;
  }

LABEL_22:
  v51 = 0;
  v132 = (v44 & 0xC000000000000001);
  v131 = v44 & 0xFFFFFFFFFFFFFF8;
  v128 = a1;
  v130 = v44;
  *&v129 = v56;
  while (1)
  {
    if (v132)
    {
      v57 = sub_1007A3784();
    }

    else
    {
      if (v51 >= *(v131 + 16))
      {
        goto LABEL_116;
      }

      v57 = *(v44 + 8 * v51 + 32);
    }

    v44 = v57;
    a1 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_115;
    }

    if (sub_100799814() == v46 && v58 == v134)
    {
      break;
    }

    v59 = sub_1007A3AB4();

    if (v59)
    {
      goto LABEL_107;
    }

    ++v51;
    v60 = a1 == v129;
    a1 = v128;
    v61 = v142;
    v44 = v130;
    if (v60)
    {
      goto LABEL_119;
    }
  }

LABEL_107:

  if (v45[2] && (v113 = sub_10000E53C(0x72416F6475657370, 0xEF73746E656D7567), (v114 & 1) != 0))
  {
    sub_100007484(v45[7] + 32 * v113, &v147);

    sub_1001F1160(&qword_100AE5878);
    if (swift_dynamicCast())
    {
      v115 = v146[0];
    }

    else
    {
      v115 = 0;
    }
  }

  else
  {

    v115 = 0;
  }

  v116 = v135;
  sub_100797AF4();
  sub_10048D6DC(v23, v116, v46, v134, v125, v115, v44);

  return (v138[1])(v116, v136);
}

uint64_t sub_10048D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100493070(a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((a1 != 0xD000000000000014 || 0x80000001008D73C0 != a2) && (sub_1007A3AB4() & 1) == 0 && (a1 == 0xD000000000000017 && 0x80000001008D73E0 == a2 || (sub_1007A3AB4() & 1) != 0 || (a1 != 0xD000000000000014 || 0x80000001008D7400 != a2) && (sub_1007A3AB4() & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    if (!v11 || (sub_100491ABC(v9, v11, v5, v7) & 1) == 0)
    {
      swift_beginAccess();

      sub_1005E912C(v9, v11, v5, v7);
      swift_endAccess();
    }

    goto LABEL_11;
  }

LABEL_12:
}

uint64_t sub_10048D6DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v8 = v7;
  v175 = a7;
  v182 = a6;
  v181 = a4;
  v179 = a3;
  v171 = a2;
  v180 = a1;
  ObjectType = swift_getObjectType();
  v178 = sub_10079ACE4();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v173 = &v163 - v12;
  v170 = sub_100796AD4();
  __chkstk_darwin(v170);
  v169 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5 + 64;
  v16 = 1 << *(a5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a5 + 64);
  v168 = OBJC_IVAR___BKPersonalizationEventDonor_finishingBookAutomatically;
  v19 = (v16 + 63) >> 6;
  v186 = "events-controller";
  v167 = (v13 + 8);
  v189 = a5;

  v20 = 0;
  v172 = 0;
  v21 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyDictionarySingleton;
  v187 = _swiftEmptyArrayStorage;
  v183 = v7;
LABEL_4:
  v185 = v22;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_5:
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v23 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v20;
    if (v18)
    {
      v20 = v23;
      while (1)
      {
LABEL_9:
        v24 = __clz(__rbit64(v18)) | (v20 << 6);
        v25 = *(v189 + 7);
        v26 = (*(v189 + 6) + 16 * v24);
        v27 = v26[1];
        v190 = *v26;
        v28 = *(v25 + 8 * v24);
        v29 = *(v28 + 16);
        *&v191 = v27;

        if (!v29)
        {
          v188 = 0;
          if (!*(v28 + 16))
          {
            goto LABEL_28;
          }

LABEL_21:
          v34 = sub_10000E53C(0x746C694674736F70, 0xEA00000000007265);
          if (v35)
          {
            sub_100007484(*(v28 + 56) + 32 * v34, v198);
            if (swift_dynamicCast())
            {
              v36 = v195;
              v37 = v196;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v184 = v29;
              v39 = v21;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v187 = sub_10066BCBC(0, v187[2] + 1, 1, v187);
              }

              v41 = v187[2];
              v40 = v187[3];
              if (v41 >= v40 >> 1)
              {
                v187 = sub_10066BCBC((v40 > 1), v41 + 1, 1, v187);
              }

              v42 = v187;
              v187[2] = v41 + 1;
              v43 = &v42[4 * v41];
              v44 = v191;
              *(v43 + 4) = v190;
              *(v43 + 5) = v44;
              v43[6] = v36;
              *(v43 + 7) = v37;
              v21 = v39;
              v8 = v183;
              v29 = v184;
            }
          }

          goto LABEL_28;
        }

        v30 = sub_10000E53C(0xD000000000000012, v186 | 0x8000000000000000);
        if ((v31 & 1) == 0)
        {
          v188 = 0;
          v29 = 0;
          if (!*(v28 + 16))
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        sub_100007484(*(v28 + 56) + 32 * v30, v198);
        v32 = swift_dynamicCast();
        v33 = *&v195;
        if (!v32)
        {
          v33 = 0;
        }

        v188 = v33;
        if (v32)
        {
          v29 = v196;
        }

        else
        {
          v29 = 0;
        }

        if (*(v28 + 16))
        {
          goto LABEL_21;
        }

LABEL_28:
        v18 &= v18 - 1;
        if (*(v28 + 16))
        {
          v45 = sub_10000E53C(1752457584, 0xE400000000000000);
          if (v46)
          {
            break;
          }
        }

LABEL_37:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000B3D8(0, *(v21 + 2) + 1, 1, v21);
        }

        v50 = *(v21 + 2);
        v49 = *(v21 + 3);
        v51 = v50 + 1;
        if (v50 < v49 >> 1)
        {
          goto LABEL_40;
        }

LABEL_35:
        v21 = sub_10000B3D8((v49 > 1), v51, 1, v21);
LABEL_40:
        *(v21 + 2) = v51;
        v52 = &v21[16 * v50];
        v53 = v191;
        *(v52 + 4) = v190;
        *(v52 + 5) = v53;
        if (!v18)
        {
          goto LABEL_5;
        }
      }

      sub_100007484(*(v28 + 56) + 32 * v45, v198);

      sub_1001F1160(&unk_100AD61F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      v184 = v29;
      v47 = v8;
      v48 = PersonalizationEventDonor.dictPathValues(_:path:)(v180, *&v195);

      v198[0] = v48;
      sub_1001F1160(&qword_100ADEC60);
      sub_100005920(&qword_100AE59E0, &qword_100ADEC60);
      if ((sub_1007A28A4() & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000B3D8(0, *(v21 + 2) + 1, 1, v21);
        }

        v8 = v47;
        v50 = *(v21 + 2);
        v49 = *(v21 + 3);
        v51 = v50 + 1;
        if (v50 < v49 >> 1)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }

      v54 = v184;
      v164 = *(v48 + 2);
      if (v164)
      {
        v55 = 0;
        v56 = (v48 + 32);
        v163 = v48;
        while (1)
        {
          if (v55 >= *(v48 + 2))
          {
            goto LABEL_144;
          }

          v166 = v55;
          v165 = v56;
          sub_100007484(v56, v198);
          v197 = &type metadata for String;
          v195 = 0.0;
          v196 = 0xE000000000000000;
          sub_100007484(v198, &v194);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_100007484(v198, &v194);
          if (swift_dynamicCast())
          {
            goto LABEL_52;
          }

          sub_100007484(v198, &v194);
          if (swift_dynamicCast())
          {
            goto LABEL_52;
          }

          sub_100007484(v198, &v194);
          if (swift_dynamicCast())
          {
            goto LABEL_52;
          }

LABEL_53:
          if (!v54)
          {
            goto LABEL_88;
          }

          v57._rawValue = &off_100A0D260;
          v199._countAndFlagsBits = v188;
          v199._object = v54;
          v58 = sub_1007A3964(v57, v199);

          if (v58 > 1)
          {
            if (v58 == 2)
            {
              sub_100007484(v198, &v194);
              if (!swift_dynamicCast())
              {
                goto LABEL_88;
              }

              v71 = *v193;
              sub_1000074E0(&v195);
              v72 = v71 / 100.0;
              v197 = &type metadata for Double;
              goto LABEL_87;
            }

            if (v58 == 3)
            {
              sub_1000074E0(&v195);
              v63 = v47[v168];
              v64 = 0x796C6C61756E616DLL;
              if (v63)
              {
                v64 = 0x6974616D6F747561;
              }

              v65 = 0xE800000000000000;
              if (v63)
              {
                v65 = 0xED0000796C6C6163;
              }

              v66 = v63 == 2;
              *&v67 = 1.35580621e-306;
              if (!v66)
              {
                v67 = v64;
              }

              v197 = &type metadata for String;
              v68 = 0xE700000000000000;
              if (!v66)
              {
                v68 = v65;
              }

              v195 = *&v67;
              v196 = v68;
              v47[v168] = 2;
            }
          }

          else
          {
            if (!v58)
            {
              sub_1000074E0(&v195);
              v69 = v169;
              sub_1007963F4();
              v197 = &type metadata for String;
              sub_100492E14(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle);
              v70 = v170;
              sub_100796B94();
              (*v167)(v69, v70);
              goto LABEL_88;
            }

            if (v58 == 1)
            {
              sub_100007484(v198, &v194);
              v59 = swift_dynamicCast();
              if (v59)
              {
                v60 = v193[1];
                v193[0] = 0;
                __chkstk_darwin(v59);
                *(&v163 - 2) = v193;
                if ((v60 & 0x1000000000000000) != 0)
                {
                  goto LABEL_106;
                }

                if ((v60 & 0x2000000000000000) != 0)
                {
                  *&v194 = v61;
                  *(&v194 + 1) = v60 & 0xFFFFFFFFFFFFFFLL;
                  if (v61 < 0x21u && ((0x100003E01uLL >> v61) & 1) != 0)
                  {
                    goto LABEL_80;
                  }

LABEL_81:
                  v74 = _swift_stdlib_strtod_clocale();
                  if (v74)
                  {
                    v73 = *v74 == 0;
                  }

                  else
                  {
                    v73 = 0;
                  }

LABEL_84:
                  v192 = v73;
                }

                else
                {
                  if ((v61 & 0x1000000000000000) != 0)
                  {
                    v62 = *((v60 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                    if (v62 >= 0x21 || ((0x100003E01uLL >> v62) & 1) == 0)
                    {
                      goto LABEL_81;
                    }

LABEL_80:
                    v73 = 0;
                    goto LABEL_84;
                  }

LABEL_106:
                  v99 = v172;
                  sub_1007A3714();
                  v172 = v99;
                }

                if (!v192)
                {
                  goto LABEL_88;
                }

                v75 = *v193;
                sub_1000074E0(&v195);
                v72 = v75 / 5.0;
                v197 = &type metadata for Double;
LABEL_87:
                v195 = v72;
              }
            }
          }

LABEL_88:
          v76 = v185;
          if (v185[2])
          {
            v77 = v21;
            v78 = sub_10000E53C(v190, v191);
            if (v79)
            {
              v80 = *(*(v76 + 56) + 8 * v78);

              goto LABEL_93;
            }
          }

          else
          {
            v77 = v21;
          }

          v80 = _swiftEmptyArrayStorage;
LABEL_93:
          sub_100007484(&v195, &v194);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_10066A640(0, *(v80 + 2) + 1, 1, v80);
          }

          v82 = *(v80 + 2);
          v81 = *(v80 + 3);
          if (v82 >= v81 >> 1)
          {
            v80 = sub_10066A640((v81 > 1), v82 + 1, 1, v80);
          }

          *(v80 + 2) = v82 + 1;
          sub_1000076D4(&v194, &v80[32 * v82 + 32]);
          v83 = v185;
          v84 = swift_isUniquelyReferenced_nonNull_native();
          *&v194 = v83;
          v86 = sub_10000E53C(v190, v191);
          v87 = *(v83 + 16);
          v88 = (v85 & 1) == 0;
          v89 = v87 + v88;
          if (__OFADD__(v87, v88))
          {
            goto LABEL_145;
          }

          v90 = v85;
          if (*(v83 + 24) >= v89)
          {
            if ((v84 & 1) == 0)
            {
              sub_1002F1F80();
            }
          }

          else
          {
            sub_1003D5ECC(v89, v84);
            v91 = sub_10000E53C(v190, v191);
            if ((v90 & 1) != (v92 & 1))
            {
              goto LABEL_149;
            }

            v86 = v91;
          }

          v93 = v194;
          v185 = v194;
          if (v90)
          {
            *(*(v194 + 56) + 8 * v86) = v80;

            sub_1000074E0(v198);
          }

          else
          {
            *(v194 + 8 * (v86 >> 6) + 64) |= 1 << v86;
            v94 = (v93[6] + 16 * v86);
            v95 = v191;
            *v94 = v190;
            v94[1] = v95;
            *(v93[7] + 8 * v86) = v80;

            sub_1000074E0(v198);
            v96 = v93[2];
            v97 = __OFADD__(v96, 1);
            v98 = v96 + 1;
            if (v97)
            {
              goto LABEL_146;
            }

            v93[2] = v98;
          }

          v21 = v77;
          v54 = v184;
          v55 = v166 + 1;
          sub_1000074E0(&v195);
          v56 = v165 + 32;
          v47 = v183;
          v48 = v163;
          if (v164 == v55)
          {
            goto LABEL_107;
          }
        }

LABEL_52:
        sub_100492E5C(&v195, v198);
        goto LABEL_53;
      }

LABEL_107:

      v22 = v185;
      v8 = v47;
      goto LABEL_4;
    }
  }

  if (v182)
  {
    v100 = v182;
  }

  else
  {
    v100 = sub_1001EEBD8(_swiftEmptyArrayStorage);
  }

  v101 = 1 << *(v100 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(v100 + 64);
  v104 = OBJC_IVAR___BKPersonalizationEventDonor_booksPersonalizationSectionIDs;
  v105 = (v101 + 63) >> 6;

  v106 = 0;
  v191 = xmmword_10080B690;
  if (!v103)
  {
LABEL_116:
    while (1)
    {
      v113 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_143;
      }

      if (v113 >= v105)
      {

        if (*(v21 + 2))
        {

          v144 = v176;
          sub_10079AC84();
          v145 = v181;

          v146 = sub_10079ACC4();
          v147 = sub_1007A29B4();

          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            v198[0] = swift_slowAlloc();
            *v148 = 136315394;
            *(v148 + 4) = sub_1000070F4(v179, v145, v198);
            *(v148 + 12) = 2080;

            v149 = sub_1007A25F4();
            v151 = v150;

            v152 = sub_1000070F4(v149, v151, v198);

            *(v148 + 14) = v152;
            _os_log_impl(&_mh_execute_header, v146, v147, "Event %s with missing arguments %s", v148, 0x16u);
            swift_arrayDestroy();
          }

          (*(v177 + 8))(v144, v178);
        }

        else
        {
          v154 = _s5Books25PersonalizationEventDonorC11listOfDicts08fromDictF5ListsSaySDySSypGGSDySSSayypGG_tF_0(v185);
          v155 = sub_1007A2744();
          v156 = v173;
          (*(*(v155 - 8) + 56))(v173, 1, 1, v155);
          v157 = swift_allocObject();
          v157[2] = 0;
          v157[3] = 0;
          v157[4] = v154;
          v157[5] = v8;
          v158 = v179;
          v157[6] = v187;
          v157[7] = v158;
          v159 = v8;
          v160 = v175;
          v157[8] = v181;
          v157[9] = v160;
          v157[10] = ObjectType;
          v161 = v159;

          v162 = v160;
          sub_1003457A0(0, 0, v156, &unk_100828CB8, v157);
        }
      }

      v103 = *(v100 + 64 + 8 * v113);
      ++v106;
      if (v103)
      {
        v106 = v113;
        goto LABEL_114;
      }
    }
  }

  while (1)
  {
LABEL_114:
    while (1)
    {
      v107 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
      v108 = (*(v100 + 48) + ((v106 << 10) | (16 * v107)));
      v109 = *v108;
      v110 = v108[1];

      v111._rawValue = &off_100A0D2E0;
      v200._countAndFlagsBits = v109;
      v200._object = v110;
      v112 = sub_1007A3964(v111, v200);

      if (!v112)
      {
        break;
      }

      if (!v103)
      {
        goto LABEL_116;
      }
    }

    v190 = v104;
    v189 = v21;
    sub_1001F1160(&qword_100AD7FB0);
    v114 = swift_allocObject();
    *(v114 + 16) = v191;
    v115 = sub_100493070(v180);
    v119 = v118;
    if (v117)
    {
      v120 = v116;
      v121 = v117;

      v115 = v120;
      v119 = v121;
    }

    v122 = sub_100491970(v115, v119);
    v124 = v123;

    if (v124)
    {
      v186 = &v163;
      v188 = v114;
      v126 = *&v8[v190];
      v198[0] = v122;
      v198[1] = v124;
      __chkstk_darwin(v125);
      *(&v163 - 2) = v198;

      v127 = v172;
      v128 = sub_100580218(sub_100266288, (&v163 - 4), v126);
      v172 = v127;

      v114 = v188;
    }

    else
    {
      v128 = 0;
    }

    *(v114 + 56) = &type metadata for Bool;
    *(v114 + 32) = v128 & 1;
    v129 = v185;
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v198[0] = v129;
    v131 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
    v133 = *(v129 + 16);
    v134 = (v132 & 1) == 0;
    v97 = __OFADD__(v133, v134);
    v135 = v133 + v134;
    if (v97)
    {
      break;
    }

    v136 = v132;
    v8 = v183;
    if (*(v129 + 24) >= v135)
    {
      if ((v130 & 1) == 0)
      {
        v142 = v114;
        v143 = v131;
        sub_1002F1F80();
        v131 = v143;
        v114 = v142;
      }
    }

    else
    {
      sub_1003D5ECC(v135, v130);
      v131 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
      if ((v136 & 1) != (v137 & 1))
      {
        goto LABEL_149;
      }
    }

    v104 = v190;
    v138 = v198[0];
    v185 = v198[0];
    if (v136)
    {
      *(*(v198[0] + 56) + 8 * v131) = v114;
    }

    else
    {
      *(v198[0] + 8 * (v131 >> 6) + 64) |= 1 << v131;
      v139 = v138[6] + 16 * v131;
      strcpy(v139, "weRecommended");
      *(v139 + 14) = -4864;
      *(v138[7] + 8 * v131) = v114;
      v140 = v138[2];
      v97 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v97)
      {
        goto LABEL_148;
      }

      v138[2] = v141;
    }

    v21 = v189;
    if (!v103)
    {
      goto LABEL_116;
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_10048EB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = sub_100796AD4();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_100796BB4();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  if (qword_100AD1708 != -1)
  {
    swift_once();
  }

  v11 = qword_100AE5858;

  return _swift_task_switch(sub_10048EC5C, v11, 0);
}

uint64_t sub_10048EC5C()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[11];
  sub_100796BA4();
  sub_1007963F4();
  sub_100492E14(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle);
  sub_100796B94();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[8];
  v8 = v0[9];
  v10 = OBJC_IVAR___BKPersonalizationEventDonor_cachedEnagagementPropertyValues;
  swift_beginAccess();
  v11 = *(v7 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v13 = v0[12];
  v12 = v0[13];

  v14 = sub_10000E53C(v13, v12);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    v16 = sub_1001EEBEC(_swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  v16 = *(*(v11 + 56) + 8 * v14);

LABEL_6:
  v17 = v0[11];
  v18 = (v17 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedPropertyTimestamp);
  v19 = *(v17 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedPropertyTimestamp + 8);
  v34 = v16;
  if (v19 && ((result = *v18, *v18 == v9) ? (v21 = v19 == v8) : (v21 = 0), v21 || (result = sub_1007A3AB4(), v17 = v0[11], (result & 1) != 0)))
  {
    v22 = OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex;
    v23 = *(v17 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      __break(1u);
      return result;
    }

    *(v17 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex) = v25;
    v37._countAndFlagsBits = 45;
    v37._object = 0xE100000000000000;
    sub_1007A23D4(v37);
    v0[10] = *(v17 + v22);
    v38._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v38);
  }

  else
  {
    *(v17 + OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex) = 0;
    *v18 = v9;
    v18[1] = v8;
  }

  v26 = v0[14];
  v33 = v0[15];
  v27 = v0[12];
  v28 = v0[13];
  v29 = v0[11];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002F616C(v26, v9, v8, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v7 + v10);
  *(v7 + v10) = 0x8000000000000000;
  sub_1002F6130(v34, v27, v28, v31);

  *(v7 + v10) = v35;
  swift_endAccess();
  [v29 propertyDidChange:v29 propertyConfiguration:v33];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10048EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a8;
  v8[54] = v12;
  v8[51] = a6;
  v8[52] = a7;
  v8[49] = a4;
  v8[50] = a5;
  sub_1001F1160(&qword_100AD67D0);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v9 = sub_10079ACE4();
  v8[57] = v9;
  v8[58] = *(v9 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();

  return _swift_task_switch(sub_10048F0C0, 0, 0);
}

uint64_t sub_10048F0C0()
{
  v79 = v0;
  v1 = *(*(v0 + 392) + 16);
  *(v0 + 488) = v1;
  if (v1)
  {
    v2 = 0x4165726F74537369;
    v3 = OBJC_IVAR___BKPersonalizationEventDonor_libraryAssetProvider;
    *(v0 + 496) = *(*(v0 + 408) + 16);
    *(v0 + 504) = v3;
    swift_beginAccess();
    for (i = 0; ; i = *(v0 + 512) + 1)
    {
      *(v0 + 512) = i;
      v6 = *(v0 + 496);
      v5 = *(v0 + 504);
      v7 = *(v0 + 400);
      *(v0 + 520) = *(*(v0 + 392) + 8 * i + 32);
      sub_1000077D8(v7 + v5, v0 + 16, &qword_100AE59C8);

      if (v6)
      {
        break;
      }

LABEL_47:
      v36 = *(v0 + 448);
      v37 = *(v0 + 432);
      v38 = *(v0 + 400);
      v39 = sub_1007A2744();
      v75 = *(v39 - 8);
      (*(v75 + 56))(v36, 1, 1, v39);
      v40 = qword_100AD1708;

      v41 = v38;
      v42 = v37;
      if (v40 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 440);
      v71 = *(v0 + 520);
      v73 = *(v0 + 448);
      v44 = *(v0 + 424);
      v45 = *(v0 + 432);
      v46 = *(v0 + 416);
      v47 = *(v0 + 400);
      v48 = qword_100AE5858;
      v49 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1);
      v50 = swift_allocObject();
      v50[2] = v48;
      v50[3] = v49;
      v50[4] = v47;
      v50[5] = v46;
      v50[6] = v44;
      v50[7] = v71;
      v50[8] = v45;
      sub_1000077D8(v73, v43, &qword_100AD67D0);
      LODWORD(v43) = (*(v75 + 48))(v43, 1, v39);

      v51 = *(v0 + 440);
      if (v43 == 1)
      {
        sub_100007840(*(v0 + 440), &qword_100AD67D0);
      }

      else
      {
        sub_1007A2734();
        (*(v75 + 8))(v51, v39);
      }

      v52 = v50[2];
      swift_unknownObjectRetain();

      v2 = 0x4165726F74537369;
      if (v52)
      {
        swift_getObjectType();
        v53 = sub_1007A2694();
        v55 = v54;
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      sub_100007840(*(v0 + 448), &qword_100AD67D0);
      v56 = swift_allocObject();
      *(v56 + 16) = &unk_100828CC8;
      *(v56 + 24) = v50;
      if (v55 | v53)
      {
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v53;
        *(v0 + 232) = v55;
      }

      swift_task_create();

LABEL_59:
      v57 = *(v0 + 488);
      v58 = *(v0 + 512) + 1;
      sub_100007840(v0 + 16, &qword_100AE59C8);
      if (v58 == v57)
      {
        goto LABEL_61;
      }
    }

    v9 = 0;
    v10 = 1;
    while (1)
    {
      while (1)
      {
        *(v0 + 568) = v10 & 1;
        v12 = (*(v0 + 408) + 32 * v9);
        v14 = v12[4];
        v13 = v12[5];
        v15 = v12[6];
        v16 = v12[7];
        v17 = __OFADD__(v9++, 1);
        *(v0 + 528) = v9;
        if (v17)
        {
          __break(1u);
          return result;
        }

        if (*(*(v0 + 520) + 16))
        {

          v18 = sub_10000E53C(v14, v13);
          v20 = v19;

          if (v20)
          {
            sub_100007484(*(*(v0 + 520) + 56) + 32 * v18, v0 + 176);
          }

          else
          {
            *(v0 + 176) = 0u;
            *(v0 + 192) = 0u;
          }
        }

        else
        {
          *(v0 + 176) = 0u;
          *(v0 + 192) = 0u;
        }

        v21 = &unk_100AD5B40;
        v22 = v15 == 0x4165726F74537369 && v16 == 0xEE00444974657373;
        if (!v22 && (sub_1007A3AB4() & 1) == 0)
        {
          break;
        }

        sub_1000077D8(v0 + 176, v0 + 272, &unk_100AD5B40);
        if (*(v0 + 296))
        {
          if (swift_dynamicCast())
          {

            v23 = *(v0 + 344);
            v21 = *(v0 + 352);
            *(v0 + 536) = v21;
            sub_1000077D8(v0 + 16, v0 + 136, &qword_100AE59C8);
            v24 = *(v0 + 160);
            if (v24)
            {
              v60 = *(v0 + 168);
              sub_10000E3E8((v0 + 136), *(v0 + 160));
              v76 = (*(v60 + 24) + **(v60 + 24));
              v61 = swift_task_alloc();
              *(v0 + 544) = v61;
              *v61 = v0;
              v61[1] = sub_10048FCA4;
              v62 = v23;
              v63 = v21;
              v64 = v24;
              v65 = v60;
              v66 = v76;

              return v66(v62, v63, v64, v65);
            }

            sub_100007840(v0 + 176, &unk_100AD5B40);

            result = sub_100007840(v0 + 136, &qword_100AE59C8);
            if ((v10 & 1) == 0)
            {
              v9 = *(v0 + 528);
            }

            goto LABEL_29;
          }
        }

        else
        {
          sub_100007840(v0 + 272, &unk_100AD5B40);
        }

        sub_10079AC84();

        v21 = sub_10079ACC4();
        v25 = sub_1007A29B4();

        v26 = os_log_type_enabled(v21, v25);
        v27 = *(v0 + 480);
LABEL_25:
        v74 = *(v0 + 456);
        v28 = (*(v0 + 464) + 8);
        if (v26)
        {
          v29 = *(v0 + 416);
          v70 = *(v0 + 424);
          v72 = v27;
          v30 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v30 = 136315394;
          *(v30 + 4) = sub_1000070F4(v29, v70, &v78);
          *(v30 + 12) = 2080;
          v31 = sub_1000070F4(v15, v16, &v78);

          *(v30 + 14) = v31;
          _os_log_impl(&_mh_execute_header, v21, v25, "Event %s with non-String for validation %s", v30, 0x16u);
          swift_arrayDestroy();
          v2 = 0x4165726F74537369;

          (*v28)(v72, v74);
        }

        else
        {

          (*v28)(v27, v74);
        }

        result = sub_100007840(v0 + 176, &unk_100AD5B40);
LABEL_29:
        v32 = *(v0 + 496);
        if (v9 == v32)
        {
          goto LABEL_51;
        }

LABEL_30:
        v10 = 0;
        if (v9 >= v32)
        {
LABEL_67:
          __break(1u);
LABEL_68:
          sub_100009864(v0 + 56, v0 + 96);
          sub_100007840(v0 + 56, &qword_100AE59C8);
          v67 = *(v0 + 120);
          v68 = *(v0 + 128);
          sub_10000E3E8((v0 + 96), v67);
          v77 = (*(v68 + 16) + **(v68 + 16));
          v69 = swift_task_alloc();
          *(v0 + 560) = v69;
          *v69 = v0;
          v69[1] = sub_100490B20;
          v62 = v2;
          v63 = v21;
          v64 = v67;
          v65 = v68;
          v66 = v77;

          return v66(v62, v63, v64, v65);
        }
      }

      v33 = v15 == 0xD000000000000016 && 0x80000001008D7380 == v16;
      if (v33 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1000077D8(v0 + 176, v0 + 240, &unk_100AD5B40);
        if (*(v0 + 264))
        {
          if (swift_dynamicCast())
          {
            v34 = *(v0 + 504);
            v35 = *(v0 + 400);

            v2 = *(v0 + 328);
            v21 = *(v0 + 336);
            *(v0 + 552) = v21;
            sub_1000077D8(v35 + v34, v0 + 56, &qword_100AE59C8);
            if (*(v0 + 80))
            {
              goto LABEL_68;
            }

            sub_100007840(v0 + 176, &unk_100AD5B40);

            result = sub_100007840(v0 + 56, &qword_100AE59C8);
            if ((v10 & 1) == 0)
            {
              v9 = *(v0 + 528);
            }

            v32 = *(v0 + 496);
            v2 = 0x4165726F74537369;
            if (v9 == v32)
            {
              goto LABEL_51;
            }

            goto LABEL_30;
          }
        }

        else
        {
          sub_100007840(v0 + 240, &unk_100AD5B40);
        }

        sub_10079AC84();

        v21 = sub_10079ACC4();
        v25 = sub_1007A29B4();

        v26 = os_log_type_enabled(v21, v25);
        v27 = *(v0 + 472);
        goto LABEL_25;
      }

      sub_100007840(v0 + 176, &unk_100AD5B40);

      v9 = *(v0 + 528);
      v11 = *(v0 + 496);
      if (v9 == v11)
      {
        if (v10)
        {
          goto LABEL_47;
        }

LABEL_51:

        goto LABEL_59;
      }

      if (v9 >= v11)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_61:

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_10048FCA4(char a1)
{
  v2 = *v1;
  *(v2 + 368) = a1;
  *(v2 + 360) = v1;

  return _swift_task_switch(sub_10048FDC4, 0, 0);
}

uint64_t sub_10048FDC4()
{
  v97 = v0;
  v1 = *(v0 + 568);
  sub_100007840(v0 + 176, &unk_100AD5B40);
  sub_1000074E0(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 368);
    goto LABEL_52;
  }

LABEL_46:
  v29 = *(v0 + 528);
  v46 = *(v0 + 496);
  if (v29 == v46)
  {
LABEL_54:

    goto LABEL_73;
  }

LABEL_59:
  v2 = 0;
  do
  {
    if (v29 >= v46)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_76:
    v30 = 32 * v29;
    while (1)
    {
      *(v0 + 568) = v2 & 1;
      v5 = (*(v0 + 408) + v30);
      v7 = v5[4];
      v6 = v5[5];
      v9 = v5[6];
      v8 = v5[7];
      *(v0 + 528) = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_62;
      }

      v90 = v29 + 1;
      v92 = v30;
      if (*(*(v0 + 520) + 16))
      {

        v10 = sub_10000E53C(v7, v6);
        v12 = v11;

        if (v12)
        {
          sub_100007484(*(*(v0 + 520) + 56) + 32 * v10, v0 + 176);
        }

        else
        {
          *(v0 + 176) = 0u;
          *(v0 + 192) = 0u;
        }
      }

      else
      {
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
      }

      v13 = v9 == 0x4165726F74537369 && v8 == 0xEE00444974657373;
      if (v13 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1000077D8(v0 + 176, v0 + 272, &unk_100AD5B40);
        if (*(v0 + 296))
        {
          if (swift_dynamicCast())
          {

            v14 = *(v0 + 344);
            v15 = *(v0 + 352);
            *(v0 + 536) = v15;
            sub_1000077D8(v0 + 16, v0 + 136, &qword_100AE59C8);
            v16 = *(v0 + 160);
            if (v16)
            {
              v47 = *(v0 + 168);
              sub_10000E3E8((v0 + 136), *(v0 + 160));
              v93 = (*(v47 + 24) + **(v47 + 24));
              v48 = swift_task_alloc();
              *(v0 + 544) = v48;
              *v48 = v0;
              v48[1] = sub_10048FCA4;
              v49 = v14;
              v50 = v15;
              v51 = v16;
              v52 = v47;
              v53 = v93;

              return v53(v49, v50, v51, v52);
            }

            sub_100007840(v0 + 176, &unk_100AD5B40);

            sub_100007840(v0 + 136, &qword_100AE59C8);
            if ((v2 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          }
        }

        else
        {
          sub_100007840(v0 + 272, &unk_100AD5B40);
        }

        sub_10079AC84();

        v17 = sub_10079ACC4();
        v18 = sub_1007A29B4();

        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 480);
        v87 = *(v0 + 456);
        v21 = (*(v0 + 464) + 8);
        if (v19)
        {
          v23 = *(v0 + 416);
          v22 = *(v0 + 424);
          v85 = *(v0 + 480);
          v24 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v24 = 136315394;
          *(v24 + 4) = sub_1000070F4(v23, v22, &v96);
          *(v24 + 12) = 2080;
          v25 = sub_1000070F4(v9, v8, &v96);

          *(v24 + 14) = v25;
          _os_log_impl(&_mh_execute_header, v17, v18, "Event %s with non-String for validation %s", v24, 0x16u);
          swift_arrayDestroy();

          (*v21)(v85, v87);
        }

        else
        {

          (*v21)(v20, v87);
        }

        sub_100007840(v0 + 176, &unk_100AD5B40);
LABEL_27:
        v26 = *(v0 + 496);
        v27 = v29 + 1;
        v28 = v90 == v26;
        goto LABEL_28;
      }

      v31 = v9 == 0xD000000000000016 && 0x80000001008D7380 == v8;
      if (!v31 && (sub_1007A3AB4() & 1) == 0)
      {
        break;
      }

      v86 = v29;
      sub_1000077D8(v0 + 176, v0 + 240, &unk_100AD5B40);
      if (!*(v0 + 264))
      {
        sub_100007840(v0 + 240, &unk_100AD5B40);
LABEL_42:
        sub_10079AC84();

        v36 = sub_10079ACC4();
        v37 = sub_1007A29B4();

        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 472);
        v40 = *(v0 + 456);
        v41 = (*(v0 + 464) + 8);
        if (v38)
        {
          v43 = *(v0 + 416);
          v42 = *(v0 + 424);
          v88 = *(v0 + 456);
          v44 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v44 = 136315394;
          *(v44 + 4) = sub_1000070F4(v43, v42, &v96);
          *(v44 + 12) = 2080;
          v45 = sub_1000070F4(v9, v8, &v96);

          *(v44 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v36, v37, "Event %s with non-String for validation %s", v44, 0x16u);
          swift_arrayDestroy();

          (*v41)(v39, v88);
        }

        else
        {

          (*v41)(v39, v40);
        }

        sub_100007840(v0 + 176, &unk_100AD5B40);
        v26 = *(v0 + 496);
        v27 = v90;
        v28 = v90 == v26;
        v29 = v86;
        goto LABEL_28;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_42;
      }

      v32 = *(v0 + 504);
      v33 = *(v0 + 400);

      v34 = *(v0 + 328);
      v35 = *(v0 + 336);
      *(v0 + 552) = v35;
      sub_1000077D8(v33 + v32, v0 + 56, &qword_100AE59C8);
      if (*(v0 + 80))
      {
        sub_100009864(v0 + 56, v0 + 96);
        sub_100007840(v0 + 56, &qword_100AE59C8);
        v54 = *(v0 + 120);
        v55 = *(v0 + 128);
        sub_10000E3E8((v0 + 96), v54);
        v94 = (*(v55 + 16) + **(v55 + 16));
        v56 = swift_task_alloc();
        *(v0 + 560) = v56;
        *v56 = v0;
        v56[1] = sub_100490B20;
        v49 = v34;
        v50 = v35;
        v51 = v54;
        v52 = v55;
        v53 = v94;

        return v53(v49, v50, v51, v52);
      }

      sub_100007840(v0 + 176, &unk_100AD5B40);

      sub_100007840(v0 + 56, &qword_100AE59C8);
      if ((v2 & 1) == 0)
      {
        v29 = *(v0 + 528);
        v46 = *(v0 + 496);
        if (v29 == v46)
        {
          goto LABEL_54;
        }

        goto LABEL_59;
      }

      v26 = *(v0 + 496);
      v27 = v29 + 1;
      v28 = v90 == v26;
LABEL_28:
      if (v28)
      {
        goto LABEL_54;
      }

      v2 = 0;
      ++v29;
      v30 = v92 + 32;
      if (v27 >= v26)
      {
        goto LABEL_61;
      }
    }

    sub_100007840(v0 + 176, &unk_100AD5B40);

LABEL_52:
    v29 = *(v0 + 528);
    v46 = *(v0 + 496);
  }

  while (v29 != v46);
  if ((v2 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_63:
  while (2)
  {
    v57 = *(v0 + 448);
    v58 = *(v0 + 432);
    v59 = *(v0 + 400);
    v60 = sub_1007A2744();
    v89 = *(v60 - 8);
    v91 = v60;
    (*(v89 + 56))(v57, 1, 1);
    v61 = qword_100AD1708;

    v62 = v59;
    v63 = v58;
    if (v61 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 520);
    v65 = *(v0 + 440);
    v95 = *(v0 + 448);
    v66 = *(v0 + 424);
    v67 = *(v0 + 432);
    v68 = *(v0 + 416);
    v69 = *(v0 + 400);
    v70 = qword_100AE5858;
    v71 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1);
    v72 = swift_allocObject();
    v72[2] = v70;
    v72[3] = v71;
    v72[4] = v69;
    v72[5] = v68;
    v72[6] = v66;
    v72[7] = v64;
    v72[8] = v67;
    sub_1000077D8(v95, v65, &qword_100AD67D0);
    LODWORD(v65) = (*(v89 + 48))(v65, 1, v91);

    v73 = *(v0 + 440);
    if (v65 == 1)
    {
      sub_100007840(*(v0 + 440), &qword_100AD67D0);
    }

    else
    {
      sub_1007A2734();
      (*(v89 + 8))(v73, v91);
    }

    v74 = v72[2];
    swift_unknownObjectRetain();

    v75 = 0;
    v76 = 0;
    if (v74)
    {
      swift_getObjectType();
      v75 = sub_1007A2694();
      v76 = v77;
      swift_unknownObjectRelease();
    }

    sub_100007840(*(v0 + 448), &qword_100AD67D0);
    v78 = swift_allocObject();
    *(v78 + 16) = &unk_100828CC8;
    *(v78 + 24) = v72;
    if (v76 | v75)
    {
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = v75;
      *(v0 + 232) = v76;
    }

    swift_task_create();

LABEL_73:
    v79 = *(v0 + 488);
    v80 = *(v0 + 512) + 1;
    sub_100007840(v0 + 16, &qword_100AE59C8);
    if (v80 != v79)
    {
      v81 = *(v0 + 504);
      v82 = *(v0 + 512) + 1;
      *(v0 + 512) = v82;
      v83 = *(v0 + 496);
      v84 = *(v0 + 400);
      *(v0 + 520) = *(*(v0 + 392) + 8 * v82 + 32);
      sub_1000077D8(v84 + v81, v0 + 16, &qword_100AE59C8);

      if (!v83)
      {
        continue;
      }

      v29 = 0;
      v2 = 1;
      goto LABEL_76;
    }

    break;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100490B20(char a1)
{
  v2 = *v1;
  *(v2 + 384) = a1;
  *(v2 + 376) = v1;

  return _swift_task_switch(sub_100490C40, 0, 0);
}

uint64_t sub_100490C40()
{
  v88 = v2;
  v3 = *(v2 + 568);
  sub_100007840(v2 + 176, &unk_100AD5B40);
  sub_1000074E0(v2 + 96);
  if ((v3 & 1) == 0)
  {
LABEL_46:
    v10 = *(v2 + 528);
    v36 = *(v2 + 496);
    if (v10 == v36)
    {
      goto LABEL_56;
    }

    v4 = 0;
LABEL_48:
    if (v10 < v36)
    {
      goto LABEL_74;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    v37 = *(v2 + 168);
    sub_10000E3E8((v2 + 136), v1);
    v84 = (*(v37 + 24) + **(v37 + 24));
    v38 = swift_task_alloc();
    *(v2 + 544) = v38;
    *v38 = v2;
    v38[1] = sub_10048FCA4;
    v39 = v0;
    v40 = v3;
    v41 = v1;
    v42 = v37;
    v43 = v84;

    return v43(v39, v40, v41, v42);
  }

  v4 = *(v2 + 384) ^ 1;
LABEL_54:
  v10 = *(v2 + 528);
  v36 = *(v2 + 496);
  if (v10 != v36)
  {
    goto LABEL_48;
  }

  if (v4)
  {
    goto LABEL_61;
  }

LABEL_56:

  while (1)
  {
    v69 = *(v2 + 488);
    v70 = *(v2 + 512) + 1;
    sub_100007840(v2 + 16, &qword_100AE59C8);
    if (v70 == v69)
    {
      break;
    }

    v71 = *(v2 + 504);
    v72 = *(v2 + 512) + 1;
    *(v2 + 512) = v72;
    v73 = *(v2 + 496);
    v74 = *(v2 + 400);
    *(v2 + 520) = *(*(v2 + 392) + 8 * v72 + 32);
    sub_1000077D8(v74 + v71, v2 + 16, &qword_100AE59C8);

    if (v73)
    {
      v10 = 0;
      v4 = 1;
LABEL_74:
      v11 = 32 * v10;
      while (2)
      {
        *(v2 + 568) = v4 & 1;
        v12 = (*(v2 + 408) + v11);
        v1 = v12[4];
        v13 = v12[5];
        v15 = v12[6];
        v14 = v12[7];
        *(v2 + 528) = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_61;
        }

        v81 = v10 + 1;
        v83 = v11;
        if (*(*(v2 + 520) + 16))
        {

          v16 = sub_10000E53C(v1, v13);
          v1 = v17;

          if (v1)
          {
            sub_100007484(*(*(v2 + 520) + 56) + 32 * v16, v2 + 176);
          }

          else
          {
            *(v2 + 176) = 0u;
            *(v2 + 192) = 0u;
          }
        }

        else
        {
          *(v2 + 176) = 0u;
          *(v2 + 192) = 0u;
        }

        v18 = v15 == 0x4165726F74537369 && v14 == 0xEE00444974657373;
        v3 = &unk_100AD5B40;
        v0 = &unk_100811300;
        if (v18 || (sub_1007A3AB4() & 1) != 0)
        {
          sub_1000077D8(v2 + 176, v2 + 272, &unk_100AD5B40);
          if (*(v2 + 296))
          {
            if (swift_dynamicCast())
            {

              v0 = *(v2 + 344);
              v3 = *(v2 + 352);
              *(v2 + 536) = v3;
              sub_1000077D8(v2 + 16, v2 + 136, &qword_100AE59C8);
              v1 = *(v2 + 160);
              if (v1)
              {
                goto LABEL_50;
              }

              sub_100007840(v2 + 176, &unk_100AD5B40);

              sub_100007840(v2 + 136, &qword_100AE59C8);
              if ((v4 & 1) == 0)
              {
                goto LABEL_46;
              }

LABEL_8:
              v7 = *(v2 + 496);
              v8 = v10 + 1;
              v9 = v83;
              if (v81 == v7)
              {
                goto LABEL_56;
              }

LABEL_9:
              v4 = 0;
              ++v10;
              v11 = v9 + 32;
              if (v8 >= v7)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          else
          {
            sub_100007840(v2 + 272, &unk_100AD5B40);
          }

          sub_10079AC84();

          v3 = sub_10079ACC4();
          v1 = sub_1007A29B4();

          v19 = os_log_type_enabled(v3, v1);
          v20 = *(v2 + 480);
          v78 = *(v2 + 456);
          v0 = (*(v2 + 464) + 8);
          if (v19)
          {
            v22 = *(v2 + 416);
            v21 = *(v2 + 424);
            v75 = *(v2 + 480);
            v23 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *v23 = 136315394;
            *(v23 + 4) = sub_1000070F4(v22, v21, &v87);
            *(v23 + 12) = 2080;
            v24 = sub_1000070F4(v15, v14, &v87);

            *(v23 + 14) = v24;
            _os_log_impl(&_mh_execute_header, v3, v1, "Event %s with non-String for validation %s", v23, 0x16u);
            swift_arrayDestroy();

            (*v0)(v75, v78);
          }

          else
          {

            (*v0)(v20, v78);
          }

          sub_100007840(v2 + 176, &unk_100AD5B40);
          goto LABEL_8;
        }

        break;
      }

      v25 = v15 == 0xD000000000000016 && 0x80000001008D7380 == v14;
      if (!v25 && (sub_1007A3AB4() & 1) == 0)
      {
        sub_100007840(v2 + 176, &unk_100AD5B40);

        goto LABEL_54;
      }

      v77 = v10;
      sub_1000077D8(v2 + 176, v2 + 240, &unk_100AD5B40);
      if (*(v2 + 264))
      {
        if (swift_dynamicCast())
        {
          v26 = *(v2 + 504);
          v27 = *(v2 + 400);

          v0 = *(v2 + 328);
          v3 = *(v2 + 336);
          *(v2 + 552) = v3;
          v28 = v27 + v26;
          v1 = &qword_100AE59C8;
          sub_1000077D8(v28, v2 + 56, &qword_100AE59C8);
          if (*(v2 + 80))
          {
            sub_100009864(v2 + 56, v2 + 96);
            sub_100007840(v2 + 56, &qword_100AE59C8);
            v44 = *(v2 + 120);
            v45 = *(v2 + 128);
            sub_10000E3E8((v2 + 96), v44);
            v85 = (*(v45 + 16) + **(v45 + 16));
            v46 = swift_task_alloc();
            *(v2 + 560) = v46;
            *v46 = v2;
            v46[1] = sub_100490B20;
            v39 = v0;
            v40 = v3;
            v41 = v44;
            v42 = v45;
            v43 = v85;

            return v43(v39, v40, v41, v42);
          }

          sub_100007840(v2 + 176, &unk_100AD5B40);

          sub_100007840(v2 + 56, &qword_100AE59C8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      else
      {
        sub_100007840(v2 + 240, &unk_100AD5B40);
      }

      sub_10079AC84();

      v3 = sub_10079ACC4();
      v1 = sub_1007A29B4();

      v29 = os_log_type_enabled(v3, v1);
      v0 = *(v2 + 472);
      v30 = *(v2 + 456);
      v31 = (*(v2 + 464) + 8);
      if (v29)
      {
        v33 = *(v2 + 416);
        v32 = *(v2 + 424);
        v79 = *(v2 + 456);
        v34 = swift_slowAlloc();
        v76 = v0;
        v0 = swift_slowAlloc();
        v87 = v0;
        *v34 = 136315394;
        *(v34 + 4) = sub_1000070F4(v33, v32, &v87);
        *(v34 + 12) = 2080;
        v35 = sub_1000070F4(v15, v14, &v87);

        *(v34 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v3, v1, "Event %s with non-String for validation %s", v34, 0x16u);
        swift_arrayDestroy();

        (*v31)(v76, v79);
      }

      else
      {

        (*v31)(v0, v30);
      }

      sub_100007840(v2 + 176, &unk_100AD5B40);
LABEL_44:
      v7 = *(v2 + 496);
      v8 = v81;
      v10 = v77;
      v9 = v83;
      if (v81 == v7)
      {
        goto LABEL_56;
      }

      goto LABEL_9;
    }

LABEL_61:
    v47 = *(v2 + 448);
    v48 = *(v2 + 432);
    v49 = *(v2 + 400);
    v50 = sub_1007A2744();
    v80 = *(v50 - 8);
    v82 = v50;
    (*(v80 + 56))(v47, 1, 1);
    v51 = qword_100AD1708;

    v52 = v49;
    v53 = v48;
    if (v51 != -1)
    {
      swift_once();
    }

    v54 = *(v2 + 520);
    v55 = *(v2 + 440);
    v86 = *(v2 + 448);
    v56 = *(v2 + 424);
    v57 = *(v2 + 432);
    v58 = *(v2 + 416);
    v59 = *(v2 + 400);
    v60 = qword_100AE5858;
    v61 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1);
    v62 = swift_allocObject();
    v62[2] = v60;
    v62[3] = v61;
    v62[4] = v59;
    v62[5] = v58;
    v62[6] = v56;
    v62[7] = v54;
    v62[8] = v57;
    sub_1000077D8(v86, v55, &qword_100AD67D0);
    LODWORD(v55) = (*(v80 + 48))(v55, 1, v82);

    v63 = *(v2 + 440);
    if (v55 == 1)
    {
      sub_100007840(*(v2 + 440), &qword_100AD67D0);
    }

    else
    {
      sub_1007A2734();
      (*(v80 + 8))(v63, v82);
    }

    v64 = v62[2];
    swift_unknownObjectRetain();

    v65 = 0;
    v66 = 0;
    if (v64)
    {
      swift_getObjectType();
      v65 = sub_1007A2694();
      v66 = v67;
      swift_unknownObjectRelease();
    }

    sub_100007840(*(v2 + 448), &qword_100AD67D0);
    v68 = swift_allocObject();
    *(v68 + 16) = &unk_100828CC8;
    *(v68 + 24) = v62;
    if (v66 | v65)
    {
      *(v2 + 208) = 0;
      *(v2 + 216) = 0;
      *(v2 + 224) = v65;
      *(v2 + 232) = v66;
    }

    swift_task_create();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_100491970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = OBJC_IVAR___BKPersonalizationEventDonor_sectionLinks;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16))
    {

      v7 = sub_10000E53C(a1, a2);
      if (v8)
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v11 = *v9;
        v10 = v9[1];

        v12 = v11 == a1 && v10 == a2;
        if (v12 || (sub_1007A3AB4() & 1) != 0)
        {

          return a1;
        }
      }

      else
      {

        v11 = 0;
        v10 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v13 = sub_100491970(v11, v10);
    v15 = v14;

    if (v15)
    {

      return v13;
    }
  }

  return a1;
}

uint64_t sub_100491ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___BKPersonalizationEventDonor_sectionLinks;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_10000E53C(a1, a2);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    if (a1 != a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (a1 != a3)
    {
      goto LABEL_9;
    }
  }

  if (a2 == a4)
  {
LABEL_10:

    v17 = 1;
    return v17 & 1;
  }

LABEL_9:
  if (sub_1007A3AB4())
  {
    goto LABEL_10;
  }

  if (v16)
  {
    if ((v15 != a1 || v16 != a2) && (sub_1007A3AB4() & 1) == 0)
    {
      v17 = sub_100491ABC(v15, v16, a3, a4);

      return v17 & 1;
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t PersonalizationEventDonor.finishedBook(_:)()
{
  v1 = v0;
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_1007A36B4();
  if (!*(v3 + 16) || (v4 = sub_10000E2A4(v11), (v5 & 1) == 0))
  {

    sub_10002899C(v11);
LABEL_10:
    v12 = 0u;
    v13 = 0u;
    return sub_100007840(&v12, &unk_100AD5B40);
  }

  sub_100007484(*(v3 + 56) + 32 * v4, &v12);
  sub_10002899C(v11);

  if (!*(&v13 + 1))
  {
    return sub_100007840(&v12, &unk_100AD5B40);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v8 = v11[0];
    v7 = v11[1];
    if (v8 == sub_1007A2254() && v7 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1007A3AB4();
    }

    *(v1 + OBJC_IVAR___BKPersonalizationEventDonor_finishingBookAutomatically) = v10 & 1;
  }

  return result;
}

id PersonalizationEventProcessor.__allocating_init(donor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BKPersonalizationEventProcessor_donor] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id PersonalizationEventProcessor.init(donor:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___BKPersonalizationEventProcessor_donor] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonalizationEventProcessor();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100491EF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100491F5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  _Block_copy(a5);
  v14 = sub_1007998D4();
  if (a3)
  {
    if (v14 == a2 && v15 == a3)
    {
      goto LABEL_4;
    }

    v18 = sub_1007A3AB4();

    if (v18)
    {
      goto LABEL_10;
    }

    if (sub_1007998C4() == a2 && v26 == a3)
    {
LABEL_4:

LABEL_10:
      v19 = sub_1007A2744();
      (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
      v20 = qword_100AD1708;
      v21 = a4;
      v22 = a1;

      if (v20 != -1)
      {
        swift_once();
      }

      v23 = qword_100AE5858;
      v24 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1);
      v25 = swift_allocObject();
      v25[2] = v23;
      v25[3] = v24;
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = sub_10037A74C;
      v25[7] = v13;

      sub_1003457A0(0, 0, v12, &unk_100828C90, v25);

      return;
    }

    v27 = sub_1007A3AB4();

    if (v27)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1007998C4();
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v33 = -1;
  v16 = objc_allocWithZone(sub_1007997D4());
  v29 = sub_1007997C4();
  a5[2](a5, v29);

  v17 = v29;
}

void *_s5Books25PersonalizationEventDonorC11listOfDicts08fromDictF5ListsSaySDySSypGGSDySSSayypGG_tF_0(uint64_t a1)
{
  v1 = a1;
  v46 = 0;
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(*(a1 + 56) + ((v8 << 9) | (8 * v9))) + 16);
      v11 = v46;
      if (v10 > v46)
      {
        v11 = v10;
      }

      v46 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      result = sub_1007A3B24();
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  if (!v46)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v48 = v13;
    v49 = v12;
    v47 = v12 + 1;
    v14 = 1 << *(v1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v21 = v18;
LABEL_26:
      v22 = __clz(__rbit64(v16)) | (v21 << 6);
      v23 = *(*(v1 + 56) + 8 * v22);
      v24 = *(v23 + 16);
      if (!v24)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v25 = v1;
      v26 = (*(v1 + 48) + 16 * v22);
      v28 = *v26;
      v27 = v26[1];
      v29 = v24 - 1;
      if (v24 - 1 >= v49)
      {
        v29 = v49;
      }

      sub_100007484(v23 + 32 * v29 + 32, v51);
      sub_100007484(v51, v50);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_10000E53C(v28, v27);
      v33 = _swiftEmptyDictionarySingleton[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_48;
      }

      v37 = v32;
      if (_swiftEmptyDictionarySingleton[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v31;
          sub_1002F0EA0();
          v31 = v42;
        }
      }

      else
      {
        sub_1003D4168(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_10000E53C(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_51;
        }
      }

      v16 &= v16 - 1;
      if (v37)
      {
        v19 = v31;

        v20 = (_swiftEmptyDictionarySingleton[7] + 32 * v19);
        sub_1000074E0(v20);
        sub_1000076D4(v50, v20);
        sub_1000074E0(v51);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v31 >> 6) + 8] |= 1 << v31;
        v39 = (_swiftEmptyDictionarySingleton[6] + 16 * v31);
        *v39 = v28;
        v39[1] = v27;
        sub_1000076D4(v50, (_swiftEmptyDictionarySingleton[7] + 32 * v31));
        sub_1000074E0(v51);
        v40 = _swiftEmptyDictionarySingleton[2];
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_50;
        }

        _swiftEmptyDictionarySingleton[2] = v41;
      }

      v18 = v21;
      v1 = v25;
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= v17)
      {
        break;
      }

      v16 = *(v3 + 8 * v21);
      ++v18;
      if (v16)
      {
        goto LABEL_26;
      }
    }

    v13 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10066B4D0(0, v48[2] + 1, 1, v48);
    }

    v44 = v13[2];
    v43 = v13[3];
    if (v44 >= v43 >> 1)
    {
      v13 = sub_10066B4D0((v43 > 1), v44 + 1, 1, v13);
    }

    v13[2] = v44 + 1;
    v13[v44 + 4] = _swiftEmptyDictionarySingleton;
    v12 = v47;
  }

  while (v47 != v46);
  return v13;
}

void _s5Books25PersonalizationEventDonorC10expression_7matchesSbSDySSypG_yptF_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &type metadata for Any;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    v15._rawValue = &off_100A0D1F8;
    v27._countAndFlagsBits = v14;
    v27._object = v13;
    v16 = sub_1007A3964(v15, v27);
    if (v16 >= 3)
    {
    }

    else
    {
      v17 = v9;
      if (*(a1 + 16))
      {
        v24 = v16;
        v18 = sub_10000E53C(v14, v13);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_19;
        }

        sub_100007484(*(a1 + 56) + 32 * v18, v26);
        sub_10000A7C4(0, &qword_100AD6750);
        v9 = v17;
        if (swift_dynamicCast())
        {
          sub_100007484(a2, v26);
          if (swift_dynamicCast())
          {
            v21 = [v25 compare:v25];

            if (v24)
            {
              if (v24 == 1)
              {
                v22 = v21 == 1;
              }

              else
              {
                v22 = v21 + 1 == 0;
              }

              v9 = v17;
              if (v22)
              {
LABEL_26:

                return;
              }
            }

            else
            {
              v9 = v17;
              if (!v21)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
          }
        }
      }

      else
      {

LABEL_19:
        v9 = v17;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_26;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}