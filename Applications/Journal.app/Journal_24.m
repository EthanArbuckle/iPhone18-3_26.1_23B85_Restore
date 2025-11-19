uint64_t sub_100292DA8(uint64_t a1, unint64_t a2, char a3)
{
  v94 = type metadata accessor for SidebarPreferences.Brick();
  v89 = *(v94 - 8);
  __chkstk_darwin(v94);
  v87 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v88 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000F24EC(&qword_100AD4C60);
  __chkstk_darwin(v83);
  v92 = &v77 - v11;
  v12 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v13 = __chkstk_darwin(v12 - 8);
  v86 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v77 - v15;
  v99 = sub_1000F24EC(&qword_100AD4B48);
  __chkstk_darwin(v99);
  v17 = &v77 - v16;
  v18 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v85 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v93 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v77 - v22;
  v24 = __chkstk_darwin(v21);
  __chkstk_darwin(v24);
  v27 = &v77 - v26;
  v28 = *(*v3 + 16);
  v29 = *(*v3 + 24);
  v84 = v3;
  if (v29 <= v28 || (a3 & 1) == 0)
  {
    v95 = v25;
    if (a3)
    {
      v78 = v10;
      v80 = v8;
      sub_10028E5DC();
    }

    else
    {
      if (v29 > v28)
      {
        sub_10029582C();
        goto LABEL_41;
      }

      v78 = v10;
      v80 = v8;
      sub_1002987E8();
    }

    v30 = *v3;
    Hasher.init(_seed:)();
    sub_100029840(v101);
    v31 = Hasher._finalize()();
    v97 = v30 + 56;
    v98 = v30;
    v32 = -1 << *(v30 + 32);
    a2 = v31 & ~v32;
    if ((*(v30 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v96 = ~v32;
      v90 = (v89 + 8);
      v33 = *(v85 + 72);
      v81 = (v89 + 32);
      v79 = (v88 + 8);
      v77 = (v88 + 32);
      v89 = a1;
      v88 = v33;
      do
      {
        sub_100068B30(*(v98 + 48) + v33 * a2, v27, type metadata accessor for AppNavigationSidebarController.Item);
        v34 = &v17[*(v99 + 48)];
        sub_100068B30(v27, v17, type metadata accessor for AppNavigationSidebarController.Item);
        sub_100068B30(a1, v34, type metadata accessor for AppNavigationSidebarController.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_100068B30(v17, v23, type metadata accessor for AppNavigationSidebarController.Item);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v36 = v87;
              v37 = v94;
              (*v81)(v87, v34, v94);
              sub_100034178(&unk_100AD4B50, &type metadata accessor for SidebarPreferences.Brick);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v38 = *v90;
              (*v90)(v36, v37);
              sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
              v40 = v100;
              v39 = v101[0];
              v38(v23, v37);
              v33 = v88;
              v48 = v39 == v40;
              a1 = v89;
              if (v48)
              {
                goto LABEL_47;
              }

              goto LABEL_38;
            }

            sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
            (*v90)(v23, v94);
          }

          else
          {
            v43 = v93;
            sub_100068B30(v17, v93, type metadata accessor for AppNavigationSidebarController.Item);
            v45 = *v43;
            v44 = v43[1];
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v46 = *v34;
              v47 = *(v34 + 1);
              v48 = v45 == v46 && v44 == v47;
              if (v48)
              {
                goto LABEL_44;
              }

              v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

              sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
              if (v49)
              {
                goto LABEL_47;
              }

              goto LABEL_38;
            }

            sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
          }
        }

        else
        {
          v41 = v23;
          v42 = v95;
          sub_100068B30(v17, v95, type metadata accessor for AppNavigationSidebarController.Item);
          if (!swift_getEnumCaseMultiPayload())
          {
            v50 = v86;
            v51 = v34;
            v52 = v91;
            sub_100048F04(v51, v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            v53 = *(v83 + 48);
            v54 = v42;
            v55 = v92;
            sub_100068B30(v54, v92, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            v82 = v53;
            sub_100068B30(v52, v55 + v53, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            v56 = sub_1000F24EC(&qword_100AD47A0);
            v57 = *(*(v56 - 8) + 48);
            v58 = v57(v55, 2, v56);
            if (v58)
            {
              v23 = v41;
              if (v58 == 1)
              {
                sub_1000691A0(v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
                sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
                v59 = v56;
                v60 = v92;
                v61 = v57(v92 + v82, 2, v59) == 1;
              }

              else
              {
                sub_1000691A0(v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
                sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
                v64 = v56;
                v60 = v92;
                v61 = v57(v92 + v82, 2, v64) == 2;
              }

              a1 = v89;
              v33 = v88;
              if (v61)
              {
LABEL_45:
                v76 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
                sub_1000691A0(v60, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
                goto LABEL_46;
              }

LABEL_36:
              sub_100004F84(v60, &qword_100AD4C60);
            }

            else
            {
              v62 = v92;
              sub_100068B30(v92, v50, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
              v63 = v82;
              if (v57(v62 + v82, 2, v56))
              {
                v23 = v41;
                sub_1000691A0(v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
                sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
                (*v79)(v86, v80);
                a1 = v89;
                v60 = v92;
                v33 = v88;
                goto LABEL_36;
              }

              v65 = v92 + v63;
              v66 = v78;
              v67 = v80;
              (*v77)(v78, v65, v80);
              v68 = v86;
              LODWORD(v82) = static UUID.== infix(_:_:)();
              v69 = *v79;
              (*v79)(v66, v67);
              sub_1000691A0(v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
              sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
              v70 = v68;
              v23 = v41;
              v69(v70, v67);
              a1 = v89;
              v60 = v92;
              v33 = v88;
              if (v82)
              {
                goto LABEL_45;
              }

              sub_1000691A0(v92, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            }

            sub_1000691A0(v95, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
LABEL_38:
            sub_1000691A0(v17, type metadata accessor for AppNavigationSidebarController.Item);
            goto LABEL_12;
          }

          sub_1000691A0(v27, type metadata accessor for AppNavigationSidebarController.Item);
          sub_1000691A0(v42, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v23 = v41;
        }

        sub_100004F84(v17, &qword_100AD4B48);
LABEL_12:
        a2 = (a2 + 1) & v96;
      }

      while (((*(v97 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  v71 = *v84;
  *(*v84 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100048F04(a1, *(v71 + 48) + *(v85 + 72) * a2, type metadata accessor for AppNavigationSidebarController.Item);
  v73 = *(v71 + 16);
  v74 = __OFADD__(v73, 1);
  v75 = v73 + 1;
  if (v74)
  {
    __break(1u);
LABEL_44:

    v76 = type metadata accessor for AppNavigationSidebarController.Item;
    v95 = v27;
LABEL_46:
    sub_1000691A0(v95, v76);
LABEL_47:
    sub_1000691A0(v17, type metadata accessor for AppNavigationSidebarController.Item);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v71 + 16) = v75;
  }

  return result;
}

void sub_100293A04(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_10028FF04(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100295BA4(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100299F84(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100293B88(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for DenylistDescriptor();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028ED54();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100295E40(&type metadata accessor for DenylistDescriptor, &qword_100ADB810);
      goto LABEL_12;
    }

    sub_100298F04();
  }

  v13 = *v3;
  sub_100034178(&qword_100ADB800, &type metadata accessor for DenylistDescriptor);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100034178(&qword_100ADB808, &type metadata accessor for DenylistDescriptor);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100293E50(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10028F2F8();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100295A74(&qword_100ADB818);
        goto LABEL_52;
      }

      sub_100299438();
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_1003E44D0(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE400000000000000;
        v13 = 1954047348;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x64724F7465737361;
            v12 = 0xED0000676E697265;
            break;
          case 2:
            v13 = 0xD000000000000015;
            v12 = 0x80000001008DC330;
            break;
          case 3:
            v12 = 0xE500000000000000;
            v13 = 0x656C746974;
            break;
          case 4:
            v13 = 0x7461447972746E65;
            v12 = 0xE900000000000065;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x6449656C646E7562;
            break;
          case 6:
            v12 = 0xEA00000000006574;
            v13 = 0x6144656C646E7562;
            break;
          case 7:
            v13 = 0x72756F5365746164;
            v12 = 0xEA00000000006563;
            break;
          case 8:
            v12 = 0xE700000000000000;
            v13 = 0x64656767616C66;
            break;
          case 9:
            v12 = 0xE600000000000000;
            v13 = 0x74706D6F7270;
            break;
          case 0xA:
            v13 = 0xD000000000000013;
            v12 = 0x80000001008DC390;
            break;
          case 0xB:
            v13 = 0xD000000000000011;
            v12 = 0x80000001008DC3B0;
            break;
          case 0xC:
            v12 = 0xE500000000000000;
            v13 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v14 = 0xE400000000000000;
        v15 = 1954047348;
        switch(v6)
        {
          case 1:
            v14 = 0xED0000676E697265;
            if (v13 == 0x64724F7465737361)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          case 2:
            v14 = 0x80000001008DC330;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v14 = 0xE500000000000000;
            if (v13 != 0x656C746974)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v14 = 0xE900000000000065;
            if (v13 != 0x7461447972746E65)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v14 = 0xE800000000000000;
            if (v13 != 0x6449656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v14 = 0xEA00000000006574;
            if (v13 != 0x6144656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v14 = 0xEA00000000006563;
            if (v13 != 0x72756F5365746164)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 8:
            v14 = 0xE700000000000000;
            if (v13 != 0x64656767616C66)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v14 = 0xE600000000000000;
            if (v13 != 0x74706D6F7270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v15 = 0xD000000000000013;
            v14 = 0x80000001008DC390;
            goto LABEL_45;
          case 11:
            v14 = 0x80000001008DC3B0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v14 = 0xE500000000000000;
            if (v13 != 0x726568746FLL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v13 != v15)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v12 == v14)
            {
              goto LABEL_55;
            }

LABEL_47:
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
              goto LABEL_56;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_52:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_55:

LABEL_56:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_100294340(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_10028F6D4(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100295BA4(a4);
      goto LABEL_16;
    }

    v12 = a6;
    sub_1002997E4(v10 + 1, a4);
  }

  v13 = *v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10029454C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10028F948();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100295CE4();
      goto LABEL_16;
    }

    sub_100299A30();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Character.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002946CC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028FBA8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100295E40(&type metadata accessor for URL, &qword_100ADB7F0);
      goto LABEL_12;
    }

    sub_100299C68();
  }

  v12 = *v3;
  sub_100034178(&qword_100ADB7E8, &type metadata accessor for URL);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100034178(&unk_100ADE5B0, &type metadata accessor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100294994(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100290124();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100295E40(&type metadata accessor for Date, &qword_100ADB7A8);
      goto LABEL_12;
    }

    sub_10029A190();
  }

  v13 = *v3;
  sub_100034178(&unk_100AEE080, &type metadata accessor for Date);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100034178(&qword_100AD5BF0, &type metadata accessor for Date);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100294C5C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100290480();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100296078();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10029A4AC();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100294D7C()
{
  v1 = v0;
  sub_1000F24EC(&qword_100ADB738);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100294F14()
{
  v1 = v0;
  sub_1000F24EC(&qword_100ADB740);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10029506C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = v3;
  v7 = sub_1000F24EC(a1);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  sub_1000F24EC(a3);
  v10 = *v3;
  v11 = static _SetStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v6;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 56);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_17:
        v25 = *(v27 + 72) * (v22 | (v16 << 6));
        sub_1000082B4(*(v10 + 48) + v25, v9, a1);
        result = sub_100021CEC(v9, *(v12 + 48) + v25, a1);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v26;
        goto LABEL_21;
      }

      v24 = *(v10 + 56 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

void *sub_100295278()
{
  v1 = v0;
  sub_1000F24EC(&qword_100ADB858);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1001A9170(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 10);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x58uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100295414()
{
  v1 = v0;
  v2 = _s14SuggestionInfoVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100ADB758);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100068B30(*(v6 + 48) + v21, v5, _s14SuggestionInfoVMa);
        result = sub_100048F04(v5, *(v8 + 48) + v21, _s14SuggestionInfoVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100295620()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100ADB7F8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100068B30(*(v6 + 48) + v21, v5, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
        result = sub_100048F04(v5, *(v8 + 48) + v21, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10029582C()
{
  v1 = v0;
  v2 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100ADB840);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100068B30(*(v6 + 48) + v21, v5, type metadata accessor for AppNavigationSidebarController.Item);
        result = sub_100048F04(v5, *(v8 + 48) + v21, type metadata accessor for AppNavigationSidebarController.Item);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_100295A74(uint64_t *a1)
{
  v2 = v1;
  sub_1000F24EC(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_100295BA4(uint64_t *a1)
{
  v2 = v1;
  sub_1000F24EC(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_100295CE4()
{
  v1 = v0;
  sub_1000F24EC(&qword_100ADB770);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100295E40(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000F24EC(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_100296078()
{
  v1 = v0;
  sub_1000F24EC(&qword_100ADB880);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1002961B8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F24EC(&qword_100ADB738);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1002963F0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB708);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10029670C()
{
  v1 = v0;
  v2 = type metadata accessor for AssetSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AEED30);
  v42 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v35 - v9;
  v10 = *v0;
  sub_1000F24EC(&qword_100ADB868);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v41 = v2;
    v35 = v0;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v39 = (v3 + 48);
    v40 = v10;
    v36 = (v3 + 8);
    v37 = (v3 + 32);
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v10 + 48);
      v43 = *(v42 + 72);
      v25 = v44;
      sub_1000082B4(v24 + v43 * (v21 | (v13 << 6)), v44, &unk_100AEED30);
      Hasher.init(_seed:)();
      sub_1000082B4(v25, v8, &unk_100AEED30);
      v26 = v41;
      if ((*v39)(v8, 1, v41) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = v38;
        (*v37)(v38, v8, v26);
        Hasher._combine(_:)(1u);
        sub_100034178(&qword_100ADB830, &type metadata accessor for AssetSource);
        dispatch thunk of Hashable.hash(into:)();
        (*v36)(v27, v26);
      }

      result = Hasher._finalize()();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      v10 = v40;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_100021CEC(v44, *(v12 + 48) + v20 * v43, &unk_100AEED30);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v35;
        goto LABEL_29;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v12;
  }

  return result;
}

uint64_t sub_100296B88()
{
  v1 = v0;
  v32 = type metadata accessor for Calendar.Component();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB720);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100ADB710, &type metadata accessor for Calendar.Component);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100296EA4()
{
  v1 = *v0;
  sub_1000F24EC(&qword_100ADB740);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v15 = (*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      v16 = *v15;
      v17 = v15[1];
      Hasher.init(_seed:)();
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      Hasher._combine(_:)(*&v18);
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      Hasher._combine(_:)(*&v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v9 + 8 * v22);
          if (v26 != -1)
          {
            v10 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v10 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + 16 * v10);
      *v11 = v16;
      v11[1] = v17;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_30;
      }

      v14 = *(v1 + 56 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v7 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1002970E8()
{
  v1 = v0;
  v32 = type metadata accessor for AssetType();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB780);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100297404()
{
  v1 = v0;
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE4290);
  v42 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v35 - v9;
  v10 = *v0;
  sub_1000F24EC(&qword_100ADB7B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v41 = v2;
    v35 = v0;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v39 = (v3 + 48);
    v40 = v10;
    v36 = (v3 + 8);
    v37 = (v3 + 32);
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v10 + 48);
      v43 = *(v42 + 72);
      v25 = v44;
      sub_1000082B4(v24 + v43 * (v21 | (v13 << 6)), v44, &qword_100AE4290);
      Hasher.init(_seed:)();
      sub_1000082B4(v25, v8, &qword_100AE4290);
      v26 = v41;
      if ((*v39)(v8, 1, v41) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = v38;
        (*v37)(v38, v8, v26);
        Hasher._combine(_:)(1u);
        sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType);
        dispatch thunk of Hashable.hash(into:)();
        (*v36)(v27, v26);
      }

      result = Hasher._finalize()();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      v10 = v40;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_100021CEC(v44, *(v12 + 48) + v20 * v43, &qword_100AE4290);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v35;
        goto LABEL_29;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v12;
  }

  return result;
}

uint64_t sub_100297880()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F24EC(&qword_100ADB858);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v20 = *(v2 + 48) + 88 * (v17 | (v5 << 6));
      v22 = *(v20 + 48);
      v21 = *(v20 + 64);
      v23 = *(v20 + 32);
      v38 = *(v20 + 80);
      v36 = v22;
      v37 = v21;
      v35 = v23;
      v24 = *(v20 + 16);
      v33 = *v20;
      v34 = v24;
      Hasher.init(_seed:)();
      sub_1001A9170(&v33, v32);
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v4 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v10 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v10 + 8 * v27);
          if (v31 != -1)
          {
            v11 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v26) & ~*(v10 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 88 * v11;
      v13 = v34;
      *v12 = v33;
      v14 = v35;
      v15 = v36;
      v16 = v37;
      *(v12 + 80) = v38;
      *(v12 + 48) = v15;
      *(v12 + 64) = v16;
      *(v12 + 16) = v13;
      *(v12 + 32) = v14;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100297AFC()
{
  v1 = v0;
  v32 = type metadata accessor for TokenTypeIdentifier();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB850);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100297E18()
{
  v1 = v0;
  v2 = _s14SuggestionInfoVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB758);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_100068B30(v19 + v20 * (v16 | (v8 << 6)), v4, _s14SuggestionInfoVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      sub_100034178(&unk_100AEE080, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100048F04(v4, *(v7 + 48) + v15 * v20, _s14SuggestionInfoVMa);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10029819C()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB7F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_100068B30(v19 + v20 * (v16 | (v8 << 6)), v4, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100048F04(v4, *(v7 + 48) + v15 * v20, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1002984CC()
{
  v1 = v0;
  v32 = type metadata accessor for Transcriber.TranscriptionOption();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB7D0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100ADB7C0, &type metadata accessor for Transcriber.TranscriptionOption);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

Swift::Int sub_1002987E8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SidebarPreferences.Brick();
  v6 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v9 = __chkstk_darwin(v8 - 8);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v49 - v11;
  v12 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = __chkstk_darwin(v12);
  v64 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v49 - v15;
  v16 = *v0;
  sub_1000F24EC(&qword_100ADB840);
  v17 = static _SetStorage.resize(original:capacity:move:)();
  result = v16;
  if (*(v16 + 16))
  {
    v51 = v5;
    v52 = v2;
    v53 = v0;
    v19 = 0;
    v20 = result + 56;
    v21 = 1 << *(result + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(result + 56);
    v24 = (v21 + 63) >> 6;
    v54 = (v6 + 8);
    v55 = (v6 + 32);
    v50 = (v3 + 32);
    v49 = (v3 + 8);
    v25 = v17 + 56;
    v26 = v63;
    v60 = result;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v31 = *(v61 + 72);
      sub_100068B30(*(result + 48) + v31 * (v28 | (v19 << 6)), v26, type metadata accessor for AppNavigationSidebarController.Item);
      Hasher.init(_seed:)();
      sub_100068B30(v26, v64, type metadata accessor for AppNavigationSidebarController.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v33 = v56;
          v34 = v57;
          (*v55)(v56, v64, v57);
          Hasher._combine(_:)(1uLL);
          sub_100034178(&unk_100AD4B30, &type metadata accessor for SidebarPreferences.Brick);
          dispatch thunk of Hashable.hash(into:)();
          (*v54)(v33, v34);
        }

        else
        {
          Hasher._combine(_:)(2uLL);
          String.hash(into:)();
        }

        v26 = v63;
      }

      else
      {
        v35 = v59;
        sub_100048F04(v64, v59, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        Hasher._combine(_:)(0);
        v36 = v58;
        sub_100068B30(v35, v58, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v37 = sub_1000F24EC(&qword_100AD47A0);
        v38 = (*(*(v37 - 8) + 48))(v36, 2, v37);
        if (v38)
        {
          Hasher._combine(_:)(v38 != 1);
        }

        else
        {
          v39 = v51;
          v40 = v52;
          (*v50)(v51, v58, v52);
          Hasher._combine(_:)(2uLL);
          sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          v41 = v39;
          v26 = v63;
          (*v49)(v41, v40);
        }

        sub_1000691A0(v59, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      }

      result = Hasher._finalize()();
      v42 = -1 << *(v17 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v25 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v25 + 8 * v44);
          if (v48 != -1)
          {
            v27 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_37;
      }

      v27 = __clz(__rbit64((-1 << v43) & ~*(v25 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      sub_100048F04(v26, *(v17 + 48) + v27 * v31, type metadata accessor for AppNavigationSidebarController.Item);
      ++*(v17 + 16);
      result = v60;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v1 = v53;
        goto LABEL_35;
      }

      v30 = *(v20 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v1 = v17;
  }

  return result;
}

uint64_t sub_100298F04()
{
  v1 = v0;
  v32 = type metadata accessor for DenylistDescriptor();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB810);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100ADB800, &type metadata accessor for DenylistDescriptor);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100299220(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000F24EC(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_100299438()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F24EC(&qword_100ADB818);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1002997E4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000F24EC(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v19 = v18;
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_100299A30()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F24EC(&qword_100ADB770);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      Hasher.init(_seed:)();
      Character.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100299C68()
{
  v1 = v0;
  v32 = type metadata accessor for URL();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB7F0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&qword_100ADB7E8, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100299F84(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000F24EC(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_10029A190()
{
  v1 = v0;
  v32 = type metadata accessor for Date();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000F24EC(&qword_100ADB7A8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100034178(&unk_100AEE080, &type metadata accessor for Date);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10029A4AC()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F24EC(&qword_100ADB880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10029A6C4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return v2(&v6);
}

uint64_t sub_10029A72C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

id sub_10029A780@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v3)
  {
    result = [*(*(v1 + 16) + OBJC_IVAR____TtC7Journal5Asset_assetMO) setIsSlim:*(v1 + 24)];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_10029A7E4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = 2;
  }

  *a1 = result;
  return result;
}

unint64_t sub_10029A84C()
{
  result = qword_100ADB878;
  if (!qword_100ADB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB878);
  }

  return result;
}

void sub_10029A9D4()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 addSubview:v1];
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v1 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    [v6 setConstant:20.0];
    [v6 setActive:1];
  }

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v1 trailingAnchor];
    v10 = [v8 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:-20.0];
    [v11 setActive:1];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 heightAnchor];
  v13 = [v1 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 multiplier:1.0];

  [v14 setActive:1];
  v15 = [v1 superview];
  if (v15)
  {
    v16 = v15;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v1 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    [v19 setActive:1];
  }

  v20 = [v1 layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v46[0] = xmmword_100B30F28;
  v46[1] = *&qword_100B30F38;
  v46[2] = xmmword_100B30F48;
  v46[3] = *&qword_100B30F58;
  [v20 setCornerRadii:v46];

  if (qword_100ACFC18 != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:qword_100B2F7A8];
  type metadata accessor for UnknownAssetView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = v21;
  v23 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v24 = v21[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v21[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 1;
  v25 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v21[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] == 1)
  {
    if (v24 <= 1 && v24)
    {

      goto LABEL_23;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28 = v22;

    if (v27)
    {

      goto LABEL_23;
    }
  }

  else
  {
    v26 = v21;
  }

  v29 = *&v22[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView];
  if (v29)
  {
    v30 = v22[v23];
    v31 = v29;
    sub_10021BE90(v30);
  }

  v22[v25] = 1;

LABEL_23:
  v32 = *&v22[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView];
  if (v32)
  {
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 clearColor];
    [v34 setBackgroundColor:v35];
  }

  [v1 addSubview:v22];
  v36 = [v22 superview];
  if (v36)
  {
    v37 = v36;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v37 centerXAnchor];
    v39 = [v22 centerXAnchor];
    v40 = [v39 constraintEqualToAnchor:v38];

    [v40 setConstant:0.0];
    [v40 setActive:1];
  }

  v41 = [v22 superview];
  if (v41)
  {
    v42 = v41;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [v22 centerYAnchor];
    v44 = [v42 centerYAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    [v45 setConstant:0.0];
    [v45 setActive:1];

    v1 = v45;
    v22 = v42;
  }
}

id sub_10029B140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenUnknownAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10029B198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  (*(a2 + 16))(a1, a2, v5);
  v8 = type metadata accessor for URL();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_1001616C0(v7);
  if (v9 != 1)
  {
    if (!(*(a2 + 32))(a1, a2))
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_10029B2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  (*(a2 + 16))(a1, a2);
  v7 = type metadata accessor for URL();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_1001616C0(v6);
  return v8;
}

id sub_10029B3A8()
{
  v1 = OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController);
  }

  else
  {
    v4 = sub_10029B40C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10029B40C(uint64_t a1)
{
  type metadata accessor for JournalEntryAssetMO();
  v2 = static JournalEntryAssetMO.fetchRequest()();
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithKey:v4 ascending:1];

  sub_1000F24EC(&unk_100AD4780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100941D50;
  *(v6 + 32) = v5;
  sub_1000065A8(0, &qword_100AD5B00);
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:isa];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941D60;
  sub_1000065A8(0, &qword_100ADB900);
  *(v9 + 32) = NSPredicate.init(format:_:)();
  sub_1000F24EC(&unk_100AD5B10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100031B20();
  *(v10 + 32) = 0x4449746E65726170;
  *(v10 + 40) = 0xE800000000000000;
  *(v9 + 40) = NSPredicate.init(format:_:)();
  type metadata accessor for JournalEntryMO();
  v11 = static JournalEntryMO.fetchRequest()();
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() andPredicateWithSubpredicates:v12];

  [v2 setPredicate:v13];
  v14 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v2 managedObjectContext:*(a1 + OBJC_IVAR____TtC7Journal14OrphanAssetsVC_context) sectionNameKeyPath:0 cacheName:0];

  return v14;
}

void sub_10029B6D8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for OrphanAssetsVC();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = sub_10029B3A8();
  [v1 setDelegate:v0];

  if (![v0 tableView])
  {
    __break(1u);
  }

  *(swift_allocObject() + 16) = v0;
  objc_allocWithZone(sub_1000F24EC(&qword_100ADB938));
  v2 = v0;
  v3 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v4 = *&v2[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_dataSource];
  *&v2[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_dataSource] = v3;

  v5 = *&v2[OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController];
  v8 = 0;
  if ([v5 performFetch:&v8])
  {
    v6 = v8;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10029C9DC();
}

id sub_10029B868(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for FileStoreConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v152 = type metadata accessor for UUID();
  v149 = *(v152 - 8);
  __chkstk_darwin(v152);
  v146 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v14 - 8);
  v16 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v142 - v19;
  v21 = [*(a4 + OBJC_IVAR____TtC7Journal14OrphanAssetsVC_context) objectWithID:{*a3, v18}];
  type metadata accessor for JournalEntryAssetMO();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    return [objc_allocWithZone(UITableViewCell) init];
  }

  v23 = v22;
  v142 = v7;
  v143 = v6;
  v144 = v10;
  v145 = v9;
  v24 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  objc_allocWithZone(type metadata accessor for Asset());
  v148 = v21;
  v25 = sub_100038FE8(v23);
  v26 = [v24 textLabel];
  if (v26)
  {
    v27 = v26;
    AssetType.rawValue.getter();
    v28 = String._bridgeToObjectiveC()();

    [v27 setText:v28];
  }

  v151 = v25;
  v29 = [v24 textLabel];
  if (v29)
  {
    v30 = v29;
    v31 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightBold];
    [v30 setFont:v31];
  }

  v32 = [v24 detailTextLabel];
  v33 = v12;
  if (v32)
  {
    v34 = v32;
    [v32 setNumberOfLines:0];
  }

  v35 = [v24 textLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setNumberOfLines:0];
  }

  p_ivar_lyt = 0xD000000000000012;
  v159 = _swiftEmptyArrayStorage;
  v38 = *&v151[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  v150 = v24;
  if (!v38)
  {
    goto LABEL_61;
  }

  v39 = 7104878;
  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  v40 = v38;
  _StringGuts.grow(_:)(21);

  *&v157 = 0xD000000000000013;
  *(&v157 + 1) = 0x80000001008E83E0;
  v41 = [v40 isUploadedToCloud];
  v42 = v41 == 0;
  if (v41)
  {
    v43 = 5457241;
  }

  else
  {
    v43 = 20302;
  }

  v44 = 0xE300000000000000;
  if (v42)
  {
    v45 = 0xE200000000000000;
  }

  else
  {
    v45 = 0xE300000000000000;
  }

  v46 = v45;
  String.append(_:)(*&v43);

  v153._countAndFlagsBits = 0x203A7972746E450ALL;
  v153._object = 0xE800000000000000;
  v47 = [v40 entry];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 CKDescription];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v51;
  }

  else
  {
    v50 = 7104878;
  }

  v52._countAndFlagsBits = v50;
  v52._object = v44;
  String.append(_:)(v52);

  String.append(_:)(v153);

  v153._countAndFlagsBits = 0x49746E657261500ALL;
  v153._object = 0xEB00000000203A64;
  v53 = [v40 parentID];
  if (v53)
  {
    v54 = v53;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v149;
    v56 = *(v149 + 56);
    v57 = v16;
    v58 = 0;
  }

  else
  {
    v55 = v149;
    v56 = *(v149 + 56);
    v57 = v16;
    v58 = 1;
  }

  v59 = v152;
  v56(v57, v58, 1, v152);
  v24 = v150;
  sub_100024EC0(v16, v20);
  if ((*(v55 + 48))(v20, 1, v59))
  {
    sub_10029D1EC(v20);
    v60 = 0xE300000000000000;
  }

  else
  {
    v61 = v146;
    (*(v55 + 16))(v146, v20, v59);
    sub_10029D1EC(v20);
    v39 = UUID.uuidString.getter();
    v60 = v62;
    (*(v55 + 8))(v61, v59);
    p_ivar_lyt = 0xD000000000000012;
  }

  v63._countAndFlagsBits = v39;
  v63._object = v60;
  String.append(_:)(v63);

  String.append(_:)(v153);

  v153._countAndFlagsBits = 0;
  v153._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v153._countAndFlagsBits = 0x7461646174654D0ALL;
  v153._object = 0xEB00000000203A61;
  v64 = [v40 assetMetaData];
  if (!v64)
  {
    v71 = 0xE100000000000000;
    v72 = 48;
    goto LABEL_40;
  }

  v65 = v64;
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = v68;
  v70 = v68 >> 62;
  if ((v68 >> 62) <= 1)
  {
    if (!v70)
    {
      goto LABEL_38;
    }

LABEL_36:
    result = sub_1000340DC(v66, v69);
    if (__OFSUB__(HIDWORD(v66), v66))
    {
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_39;
  }

  if (v70 == 2)
  {
    v74 = *(v66 + 16);
    v73 = *(v66 + 24);
    sub_1000340DC(v66, v69);
    if (!__OFSUB__(v73, v74))
    {
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_38:
  sub_1000340DC(v66, v68);
LABEL_39:
  v72 = sub_100787220();
  v71 = v76;
LABEL_40:
  v77 = v71;
  String.append(_:)(*&v72);

  v78._countAndFlagsBits = 0x736574796220;
  v78._object = 0xE600000000000000;
  String.append(_:)(v78);
  String.append(_:)(v153);

  v153._countAndFlagsBits = 0;
  v153._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v153._countAndFlagsBits = 0xD000000000000012;
  v153._object = 0x80000001008E8400;
  v79 = sub_1000958AC(0);
  if (!v79 || (v80 = v79, v81 = [v79 data], v80, !v81))
  {
    v87 = 0xE100000000000000;
    v88 = 48;
LABEL_54:
    v92 = v87;
    String.append(_:)(*&v88);

    v93._countAndFlagsBits = 0x736574796220;
    v93._object = 0xE600000000000000;
    String.append(_:)(v93);
    String.append(_:)(v153);

    v94 = [v40 fileAttachment];
    if (v94)
    {
      v95 = v94;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = v147;
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*(v142 + 8))(v96, v143);
      v153._countAndFlagsBits = 0;
      v153._object = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v153._countAndFlagsBits = 0xD000000000000019;
      v153._object = 0x80000001008E8420;
      URL.fileSize.getter();
      if (v97)
      {
        v98 = 0xE100000000000000;
        v99 = 48;
      }

      else
      {
        v99 = sub_100787220();
        v98 = v100;
      }

      v101 = v98;
      String.append(_:)(*&v99);

      v102._countAndFlagsBits = 0x736574796220;
      v102._object = 0xE600000000000000;
      String.append(_:)(v102);
      String.append(_:)(v153);

      (*(v144 + 8))(v33, v145);
    }

    v104 = *(&v157 + 1);
    object = v157;
    v105 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
    v107 = *(v105 + 2);
    v106 = *(v105 + 3);
    v108 = v107 + 1;
    if (v107 >= v106 >> 1)
    {
      goto LABEL_88;
    }

    while (1)
    {

      *(v105 + 2) = v108;
      v109 = &v105[16 * v107];
      *(v109 + 4) = object;
      *(v109 + 5) = v104;
      v159 = v105;
LABEL_61:
      v108 = sub_1000F24EC(&unk_100AD9A60);
      inited = swift_initStackObject();
      v152 = xmmword_100940080;
      *(inited + 16) = xmmword_100940080;
      *&v157 = 0;
      *(&v157 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *&v157 = p_ivar_lyt;
      *(&v157 + 1) = 0x80000001008E83C0;
      v40 = OBJC_IVAR____TtC7Journal5Asset_attachments;
      v111 = v151;
      v112 = *&v151[OBJC_IVAR____TtC7Journal5Asset_attachments];
      v113 = v112 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      v153._countAndFlagsBits = v113;
      v114._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v114._object;
      String.append(_:)(v114);

      v115._countAndFlagsBits = 14889;
      v115._object = 0xE200000000000000;
      String.append(_:)(v115);
      v116 = *(&v157 + 1);
      *(inited + 32) = v157;
      *(inited + 40) = v116;
      v105 = &v159;
      sub_1006AD7E8(inited);
      v104 = *&v40[v111];
      if (v104 >> 62)
      {
        v107 = _CocoaArrayWrapper.endIndex.getter();
        if (!v107)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v106 = v104 & 0xFFFFFFFFFFFFFF8;
        v107 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v107)
        {
          goto LABEL_72;
        }
      }

      if (v107 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_88:
      v105 = sub_10009BCC8((v106 > 1), v108, 1, v105);
    }

    v117 = 0;
    do
    {
      if ((v104 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v117;
      v118 = swift_initStackObject();
      *(v118 + 16) = v152;
      *(v118 + 32) = sub_10080F78C();
      *(v118 + 40) = v119;
      sub_1006AD7E8(v118);
    }

    while (v107 != v117);

    v24 = v150;
LABEL_72:
    swift_getObjectType();
    v120 = swift_conformsToProtocol2();
    if (v120 && v111)
    {
      v121 = v120;
      ObjectType = swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v124 = type metadata accessor for Optional();
      v125 = *(v124 - 8);
      __chkstk_darwin(v124);
      v126 = v111;
      v128 = &v142 - v127;
      v129 = v126;
      sub_10078B684(ObjectType, v121, v128);
      v130 = *(AssociatedTypeWitness - 8);
      if ((*(v130 + 48))(v128, 1, AssociatedTypeWitness) == 1)
      {

        (*(v125 + 8))(v128, v124);
      }

      else
      {
        v154 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v156 = swift_getAssociatedConformanceWitness();
        v131 = sub_10001A770(&v153._countAndFlagsBits);
        (*(v130 + 32))(v131, v128, AssociatedTypeWitness);
        sub_10029D1D4(&v153._countAndFlagsBits, &v157);
        sub_10000CA14(&v157, v158);
        v132 = sub_10057634C();
        if (v133)
        {
          v134 = v132;
          v135 = v133;
          v136 = swift_initStackObject();
          *(v136 + 16) = v152;
          v153._countAndFlagsBits = 0x617461646174654DLL;
          v153._object = 0xEA00000000000A3ALL;
          v137._countAndFlagsBits = v134;
          v137._object = v135;
          String.append(_:)(v137);

          v138 = v153._object;
          *(v136 + 32) = v153._countAndFlagsBits;
          *(v136 + 40) = v138;
          sub_1006AD7E8(v136);
        }

        sub_10000BA7C(&v157);
      }

      v24 = v150;
      v111 = v151;
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    }

    v139 = [v24 detailTextLabel];
    if (v139)
    {
      v140 = v139;
      *&v157 = v159;
      sub_1000F24EC(&qword_100AD60A0);
      sub_10009BDD4();
      BidirectionalCollection<>.joined(separator:)();

      v141 = String._bridgeToObjectiveC()();

      [v140 p:v141 ivar:?lyt[420]];
    }

    else
    {
    }

    return v24;
  }

  v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v85 = v84;
  v86 = v84 >> 62;
  if ((v84 >> 62) > 1)
  {
    if (v86 != 2)
    {
LABEL_52:
      sub_1000340DC(v82, v84);
LABEL_53:
      v88 = sub_100787220();
      v87 = v91;
      goto LABEL_54;
    }

    v90 = *(v82 + 16);
    v89 = *(v82 + 24);
    sub_1000340DC(v82, v85);
    if (!__OFSUB__(v89, v90))
    {
      goto LABEL_53;
    }

    __break(1u);
  }

  else if (!v86)
  {
    goto LABEL_52;
  }

  result = sub_1000340DC(v82, v85);
  if (!__OFSUB__(HIDWORD(v82), v82))
  {
    goto LABEL_53;
  }

LABEL_90:
  __break(1u);
  return result;
}

void sub_10029C9DC()
{
  v1 = [v0 navigationItem];
  _StringGuts.grow(_:)(18);

  v2 = sub_10029B3A8();
  v3 = [v2 fetchedObjects];

  if (v3)
  {
    type metadata accessor for JournalEntryAssetMO();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v1 setTitle:v7];
}

id sub_10029CCC8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_dataSource] = 0;
  v3 = OBJC_IVAR____TtC7Journal14OrphanAssetsVC_context;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_cancellable] = 0;
  *&v1[OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for OrphanAssetsVC();
  v5 = v4;
  return objc_msgSendSuper2(&v7, "initWithStyle:", a1);
}

id sub_10029CDC0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_dataSource] = 0;
  v6 = OBJC_IVAR____TtC7Journal14OrphanAssetsVC_context;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController] = 0;
  v8 = v7;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for OrphanAssetsVC();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10029CF38(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_dataSource] = 0;
  v3 = OBJC_IVAR____TtC7Journal14OrphanAssetsVC_context;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7Journal14OrphanAssetsVC_cancellable] = 0;
  *&v1[OBJC_IVAR____TtC7Journal14OrphanAssetsVC____lazy_storage___fetchedResultsController] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for OrphanAssetsVC();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10029D04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrphanAssetsVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10029D124()
{
  result = qword_100ADB8F8;
  if (!qword_100ADB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB8F8);
  }

  return result;
}

unint64_t sub_10029D178()
{
  result = qword_100ADB928;
  if (!qword_100ADB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB928);
  }

  return result;
}

_OWORD *sub_10029D1D4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_10029D1EC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10029D254()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  ceil(ceil(CGRectGetWidth(v9)) * 0.25);
}

void sub_10029D3D8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView;
  v5 = *(v2 + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = sub_1005498EC(a1, 7u);
  v7 = *(v2 + v4);
  *(v2 + v4) = v6;
  v8 = v6;

  v9 = *(v2 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView);
  v10 = v8;
  [v9 addSubview:v10];
  sub_100013178(0.0);

  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v10;

  v13 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100941D50;
  v15 = [v12 heightAnchor];

  v16 = [v12 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:0.5];

  *(v14 + 32) = v17;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];
}

void sub_10029D62C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset);
}

id sub_10029D66C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell()
{
  result = qword_100ADB968;
  if (!qword_100ADB968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10029D788()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView);
  v2 = v1;
  return v1;
}

void *sub_10029D7BC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset);
  v2 = v1;
  return v1;
}

id sub_10029D7F0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = objc_allocWithZone(v0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 _applicationIconImageForBundleIdentifier:v7 format:2];

  v9 = [v3 initWithTitle:v4 detailText:0 appName:v5 icon:v8];
  v10 = v9;
  result = [v10 view];
  if (result)
  {
    v12 = result;
    [result setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

    v13 = [v10 buttonTray];
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor:v14];

    sub_10029DD28();
    sub_10029E2F8();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10029DD28()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAccessibilityViewIsModal:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v5 = String._bridgeToObjectiveC()();

    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    [v0 addBulletedListItemWithTitle:v5 description:v6 symbolName:v7];

    v8 = [v0 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v10 = String._bridgeToObjectiveC()();

      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      [v0 addBulletedListItemWithTitle:v10 description:v11 symbolName:v12];
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    [v0 addBulletedListItemWithTitle:v13 description:v14 symbolName:v15];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    [v0 addBulletedListItemWithTitle:v16 description:v17 symbolName:v18];

    v19 = [objc_opt_self() boldButton];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 systemIndigoColor];
    [v21 setTintColor:v22];

    [v21 addTarget:v0 action:"continueButtonTapped" forControlEvents:64];
    v23 = [objc_opt_self() mainBundle];
    v30._object = 0x80000001008E8860;
    v24._countAndFlagsBits = 0x65756E69746E6F43;
    v30._countAndFlagsBits = 0xD00000000000002BLL;
    v24._object = 0xE800000000000000;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v30);

    v26 = String._bridgeToObjectiveC()();

    [v21 setTitle:v26 forState:0];

    v27 = [v0 buttonTray];
    [v27 addButton:v21];

    v28 = [v0 buttonTray];
    v29 = [v20 clearColor];
    [v28 setBackgroundColor:v29];
  }

  else
  {
    __break(1u);
  }
}

void sub_10029E2F8()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC7Journal24OnboardingViewController_activeAccountStatusTask;
  if (!*(v0 + OBJC_IVAR____TtC7Journal24OnboardingViewController_activeAccountStatusTask))
  {
    *(v0 + OBJC_IVAR____TtC7Journal24OnboardingViewController_needsToShowSyncOnboarding) = 2;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v7 = v0;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;

    *(v7 + v4) = sub_1003E9628(0, 0, v3, &unk_10094B808, v9);
  }
}

uint64_t sub_10029E484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_10029E51C, v6, v5);
}

uint64_t sub_10029E51C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    if (qword_100ACFA38 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v3 = v0[11];

    return _swift_task_switch(sub_10029E648, v2, v3);
  }

  else
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      *&v4[OBJC_IVAR____TtC7Journal24OnboardingViewController_activeAccountStatusTask] = 0;
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10029E648()
{
  v1 = *(v0 + 96);

  v1[OBJC_IVAR____TtC7Journal24OnboardingViewController_needsToShowSyncOnboarding] = 0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC7Journal24OnboardingViewController_activeAccountStatusTask] = 0;
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10029E744()
{
  sub_1001C80F8();
  if (*(v0 + OBJC_IVAR____TtC7Journal24OnboardingViewController_delegate))
  {
    v1 = *(v0 + OBJC_IVAR____TtC7Journal24OnboardingViewController_needsToShowSyncOnboarding);
    swift_unknownObjectRetain();
    sub_1008A1CD8(v1 & 1);

    swift_unknownObjectRelease();
  }
}

id sub_10029E7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtC7Journal24OnboardingViewController_delegate];
  *v11 = 0;
  v11[1] = 0;
  *&v7[OBJC_IVAR____TtC7Journal24OnboardingViewController_activeAccountStatusTask] = 0;
  v7[OBJC_IVAR____TtC7Journal24OnboardingViewController_needsToShowSyncOnboarding] = 2;
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = type metadata accessor for OnboardingViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

id sub_10029E9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = &v6[OBJC_IVAR____TtC7Journal24OnboardingViewController_delegate];
  *v10 = 0;
  v10[1] = 0;
  *&v6[OBJC_IVAR____TtC7Journal24OnboardingViewController_activeAccountStatusTask] = 0;
  v6[OBJC_IVAR____TtC7Journal24OnboardingViewController_needsToShowSyncOnboarding] = 2;
  v11 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v6;
  v15.super_class = type metadata accessor for OnboardingViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v11, v12, a5, a6);

  return v13;
}

id sub_10029EB38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10029EBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10029E484(a1, v4, v5, v6);
}

uint64_t sub_10029EC90()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1006ACA14(v5);
  v9 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD50C0;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  ThirdPartyMediaAssetMetadata.startTime.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

uint64_t sub_10029EF80()
{
  v1 = OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    while ((sub_10005AAB0(4) & 1) == 0)
    {
      v1 = *(v0 + v1);
      if (v1 >> 62)
      {
        v0 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v0 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        type metadata accessor for DrawingAsset();
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v3;
        if (v6 == v0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      if (_CocoaArrayWrapper.endIndex.getter() != 1)
      {
        return 0;
      }
    }
  }

  return 0;
}

void *sub_10029F0D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_hiddenAssets);
  if (v1 >> 62)
  {
LABEL_21:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (((*((swift_isaMask & *v4) + 0x230))() & 1) == 0)
      {
        break;
      }

      ++v3;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }

    if (sub_10005AAB0(512) & 1) == 0 || (sub_10005AAB0(1))
    {

      return 0;
    }
  }

  else
  {
LABEL_13:

    return 0;
  }

  return v5;
}

uint64_t sub_10029F23C()
{
  v1 = sub_1000F24EC(&unk_100ADC5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for PaperMarkup();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets;
  v10 = *(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  if (v10 >> 62)
  {
LABEL_38:
    v23 = v6;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v23;
    if (v24 != 1)
    {
      return 1;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 1;
  }

  v28 = v6;
  if (sub_10005AAB0(4))
  {
    return 1;
  }

  v11 = *(v0 + v9);
  v26 = v3;
  v27 = v5;
  v25 = v8;
  if (v11 >> 62)
  {
LABEL_42:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    goto LABEL_29;
  }

  v12 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v6 = *(v11 + 8 * v12 + 32);
    }

    v13 = v6;
    v5 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = type metadata accessor for DrawingAsset();
    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v12;
    if (v5 == v3)
    {
      goto LABEL_29;
    }
  }

  v14 = *(v0 + v9);
  v15 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
LABEL_29:

    return 1;
  }

  v16 = 0;
  v0 = v14 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v11 = v17;
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v16;
    if (v9 == v15)
    {
      goto LABEL_29;
    }
  }

  v19 = v26;
  sub_1001B845C(v26);
  v20 = v27;
  if ((*(v27 + 6))(v19, 1, v28) == 1)
  {

    sub_1002A03D4(v19);
    return 1;
  }

  v21 = v25;
  (*(v20 + 4))(v25, v19, v28);
  PaperMarkup.contentsRenderFrame.getter();
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 0.0;
  v31.size.height = 0.0;
  if (CGRectEqualToRect(v29, v31))
  {
    (*(v20 + 1))(v21, v28);

    return 1;
  }

  PaperMarkup.contentsRenderFrame.getter();
  v32.origin.x = CGRectNull.origin.x;
  v32.origin.y = CGRectNull.origin.y;
  v32.size.width = CGRectNull.size.width;
  v32.size.height = CGRectNull.size.height;
  v22 = CGRectEqualToRect(v30, v32);

  (*(v20 + 1))(v21, v28);
  return v22;
}

void *sub_10029F620()
{
  v1 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_20:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        type metadata accessor for DrawingAsset();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v5;
        if (v4 == v3)
        {
          goto LABEL_17;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v4 != v3);
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

id sub_10029F7B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(a1 + 24) hasChanges];
  *a2 = result;
  return result;
}

Swift::Int sub_10029F7F0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000341C0(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1000341C0(&unk_100AEE080, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10029F8DC()
{
  type metadata accessor for UUID();
  sub_1000341C0(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1000341C0(&unk_100AEE080, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10029F9B0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000341C0(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1000341C0(&unk_100AEE080, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10029FA98()
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_10029FB00()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v3 = [v0 entity];
  v4 = [v3 managedObjectClassName];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v2;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 23328;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = [v1 objectID];
  v10 = [v9 pl_shortURI];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x7865746E6F63205DLL;
  v15._object = 0xEB00000000203A74;
  String.append(_:)(v15);
  [v1 managedObjectContext];
  sub_1000F24EC(&qword_100ADB9C8);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  return 0;
}

void sub_10029FCB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for JournalFeatureFlags();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v8, v10);
  v13 = JournalFeatureFlags.isEnabled.getter();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    sub_100081D68();
    if (v14)
    {
      v15 = String.count.getter();

      if (v15 >= 1)
      {
        type metadata accessor for CustomAttributeProviderConcrete();
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        Logger.init(subsystem:category:)();
        v17 = v16 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
        *(v17 + 4) = 0;
        *v17 = 2;
        v18 = sub_100789EB0(a4, v16, v5);

        if (v18)
        {
          [v18 mutableCopy];

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_1002A043C();
          if (swift_dynamicCast())
          {
            v19 = v45[2];
            aBlock = [v19 length];
            v47 = 0;
            if (!__OFSUB__(aBlock, 1))
            {
              v20 = [v19 attributesAtIndex:aBlock - 1 effectiveRange:&aBlock];
              type metadata accessor for Key(0);
              sub_1000341C0(&qword_100ADC650, type metadata accessor for Key);
              static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v21 = objc_allocWithZone(NSAttributedString);
              v22 = String._bridgeToObjectiveC()();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v24 = [v21 initWithString:v22 attributes:isa];

              v25 = objc_allocWithZone(NSAttributedString);
              v26 = String._bridgeToObjectiveC()();
              v27 = [v25 initWithString:v26];

              [v19 appendAttributedString:v27];
              [v19 appendAttributedString:v24];
              sub_100780424(v19);

              return;
            }

LABEL_19:
            __break(1u);
          }
        }
      }
    }

    v28 = objc_allocWithZone(NSAttributedString);
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 initWithString:v29];

    v31 = v30;
    v32 = [v31 string];
    if (!v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();
    }

    v33 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v32];

    v34 = [objc_opt_self() labelColor];
    if (a3)
    {
      v35 = sub_10010BBF4(a3);
    }

    else
    {
      v35 = [objc_opt_self() systemFontOfSize:0.0];
    }

    v36 = v35;
    v37 = [v31 length];
    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v38 = v37;
      v45[1] = v5;
      v39 = swift_allocObject();
      v39[2] = v36;
      v39[3] = v34;
      v39[4] = 0;
      v39[5] = 0;
      v39[6] = v33;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_100080490;
      *(v40 + 24) = v39;
      v50 = sub_100080460;
      v51 = v40;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10007F714;
      v49 = &unk_100A62F60;
      v41 = _Block_copy(&aBlock);
      v42 = v36;
      v43 = v34;
      v44 = v33;

      [v31 enumerateAttributesInRange:0 options:v38 usingBlock:{0, v41}];

      _Block_release(v41);
      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if ((v43 & 1) == 0)
      {
        sub_100780424(v44);

        return;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1002A03D4(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100ADC5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002A043C()
{
  result = qword_100ADB9C0;
  if (!qword_100ADB9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADB9C0);
  }

  return result;
}

uint64_t _s14SuggestionInfoVMa()
{
  result = qword_100ADBA28;
  if (!qword_100ADBA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A04FC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1002A05F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StyledMKPointAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StyledMKPointAnnotation()
{
  result = qword_100ADBAB0;
  if (!qword_100ADBAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A0740()
{
  sub_100008F84();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002A07EC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADBAC0);
  sub_10000617C(v0, qword_100ADBAC0);
  return Logger.init(subsystem:category:)();
}

id sub_1002A0860()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for InsightsAdminVC();
  v17.receiver = v0;
  v17.super_class = v4;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v5 = [v0 navigationItem];
  v6 = String._bridgeToObjectiveC()();
  [v5 setTitle:v6];

  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v8 setRefreshControl:v9];

  result = [v0 tableView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result refreshControl];

  if (v11)
  {
    [v11 addTarget:v0 action:"refreshData" forControlEvents:4096];
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v0;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  sub_1003E9628(0, 0, v3, &unk_10094B9A8, v15);

  __chkstk_darwin(v16);
  *(&v17 - 2) = v13;
  return withObservationTracking<A>(_:onChange:)();
}

uint64_t sub_1002A0B30(void *a1)
{
  v2 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v2);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v43 = a1;
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v45 = v6;
  v46 = v8;
  v9._countAndFlagsBits = 0x6F437972746E6520;
  v9._object = 0xEE00203A73746E75;
  String.append(_:)(v9);
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  v10 = qword_100B2FD90;
  v11._countAndFlagsBits = sub_100253774();
  String.append(_:)(v11);

  v12 = v46;
  v40 = v45;
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v47[0] = v45;
  v47[1] = v46;
  v13._object = 0xEE00203A73796144;
  v13._countAndFlagsBits = 0x206576697463410ALL;
  String.append(_:)(v13);
  swift_getKeyPath();
  v42 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v45 = v10;
  v41 = sub_100040780(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = v10 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1002A3140(v14, v4, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v4, type metadata accessor for StreakSummary);
  v39[1] = v2;
  v15 = v47[0];
  v16 = v47[1];
  v47[0] = v40;
  v47[1] = v12;

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v47[1];
  v40 = v47[0];
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v19._object = 0xEF203A736B656557;
  v19._countAndFlagsBits = 0x206576697463410ALL;
  String.append(_:)(v19);
  swift_getKeyPath();
  v44 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = type metadata accessor for InsightsDataManager.Streaks(0);
  sub_1002A3140(v14 + *(v20 + 20), v4, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v4, type metadata accessor for StreakSummary);
  v21 = v47[0];
  v22 = v47[1];
  v47[0] = v40;
  v47[1] = v18;

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  v25 = v47[0];
  v24 = v47[1];
  strcpy(v47, "\nWord Count: ");
  HIWORD(v47[1]) = -4864;
  swift_getKeyPath();
  v44 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v10 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27 = v47[0];
  v28 = v47[1];
  v47[0] = v25;
  v47[1] = v24;

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v31 = v47[0];
  v30 = v47[1];
  if (qword_100ACFBA8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000617C(v32, qword_100ADBAC0);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47[0] = v36;
    *v35 = 136315138;
    v37 = sub_100008458(v31, v30, v47);

    *(v35 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "%s", v35, 0xCu);
    sub_10000BA7C(v36);
  }

  else
  {
  }

  return sub_1002A16B4();
}

uint64_t sub_1002A10EC()
{
  sub_1000F24EC(&unk_100AE88B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100940080;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000001008E8AA0;
  print(_:separator:terminator:)();
}

uint64_t sub_1002A11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1002A126C, v6, v5);
}

uint64_t sub_1002A126C()
{
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1002A1330;

  return sub_1000351A4();
}

uint64_t sub_1002A1330()
{

  return _swift_task_switch(sub_1002A142C, 0, 0);
}

uint64_t sub_1002A142C()
{
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A14B8, v2, v1);
}

uint64_t sub_1002A14B8()
{
  v1 = v0[2];

  v2 = [v1 tableView];
  if (v2)
  {
    v5 = v2;
    v6 = [v2 refreshControl];

    [v6 endRefreshing];
    sub_1002A16B4();
    v3 = v0[5];
    v4 = v0[6];
    v2 = sub_1000EC728;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1002A16B4()
{
  v127 = type metadata accessor for DispatchWorkItemFlags();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v107 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DispatchQoS();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v134);
  v120 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v108 = *(v137 - 8);
  __chkstk_darwin(v137);
  v4 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000F24EC(&qword_100AD1ED0);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v107 - v7;
  v133 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Date.FormatStyle.DateStyle();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Date();
  v11 = *(v110 - 8);
  __chkstk_darwin(v110);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  v14 = qword_100B2FD90;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  aBlock = v14;
  v16 = sub_100040780(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v115 = (v14 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  v17 = *(v14 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount + 24);
  swift_getKeyPath();
  aBlock = v14;
  v129 = v17;

  v135 = v16;
  v136 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v112 = v14 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime;
  v128 = *(v14 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);
  sub_1000F24EC(&qword_100ADBB08);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100942000;
  *(v18 + 32) = 0x72746E45206C6C41;
  *(v18 + 40) = 0xEB00000000736569;
  v132 = v18;
  v131 = sub_1000F24EC(&qword_100AD65B8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10094A930;
  strcpy((v19 + 32), "Last Updated");
  *(v19 + 45) = 0;
  *(v19 + 46) = -5120;
  aBlock = 0;
  v139 = 0xE000000000000000;

  _StringGuts.grow(_:)(16);
  v109 = v139;
  swift_getKeyPath();
  aBlock = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = v14 + OBJC_IVAR____TtC7Journal19InsightsDataManager__lastUpdated;
  swift_beginAccess();
  v21 = v13;
  v22 = v110;
  (*(v11 + 16))(v13, v20, v110);
  v23 = v111;
  static Date.FormatStyle.DateStyle.long.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v24 = Date.formatted(date:time:)();
  v25 = v9;
  v27 = v26;
  (*(v130 + 8))(v25, v133);
  (*(v113 + 8))(v23, v114);
  (*(v11 + 8))(v21, v22);

  aBlock = v24;
  v139 = v27;
  v28._countAndFlagsBits = 0x6F6974617275440ALL;
  v28._object = 0xEB00000000203A6ELL;
  String.append(_:)(v28);
  swift_getKeyPath();
  v144 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  type metadata accessor for InsightsDataManager.LastUpdate(0);
  v29._countAndFlagsBits = sub_1007872F0();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 115;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v139;
  *(v19 + 48) = aBlock;
  *(v19 + 56) = v31;
  *(v19 + 64) = 0x6F43207972746E45;
  *(v19 + 72) = 0xEB00000000746E75;
  swift_getKeyPath();
  aBlock = v14;
  v133 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  aBlock = *(v112 + 16);
  *(v19 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v19 + 88) = v32;
  *(v19 + 96) = 0x7954207465737341;
  *(v19 + 104) = 0xEB00000000736570;
  v130 = v19;
  v33 = v128;
  aBlock = 0;
  v139 = 0xE000000000000000;
  v34 = *(v128 + 16);
  if (v34)
  {
    v147 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v34, 0);
    v35 = v147;
    v36 = v33 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v37 = *(v108 + 72);
    do
    {
      sub_1002A3140(v36, v4, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v144 = 0;
      v145 = 0xE000000000000000;
      v38 = v4[*(v137 + 20)];
      if (v38 <= 4)
      {
        v39 = 0xE500000000000000;
        if (v4[*(v137 + 20)] <= 1u)
        {
          if (v4[*(v137 + 20)])
          {
            v40 = 0x6F65646976;
          }

          else
          {
            v40 = 0x6F746F6870;
          }
        }

        else if (v38 == 2)
        {
          v40 = 0x6F69647561;
        }

        else if (v38 == 3)
        {
          v40 = 0x616964656DLL;
        }

        else
        {
          v40 = 0x6563616C70;
        }
      }

      else if (v4[*(v137 + 20)] > 7u)
      {
        if (v38 == 8)
        {
          v40 = 0x4D664F6574617473;
          v39 = 0xEB00000000646E69;
        }

        else if (v38 == 9)
        {
          v39 = 0xE700000000000000;
          v40 = 0x676E6977617264;
        }

        else
        {
          v39 = 0xE800000000000000;
          v40 = 0x69747465666E6F63;
        }
      }

      else if (v38 == 5)
      {
        v40 = 0x61737265766E6F63;
        v39 = 0xEC0000006E6F6974;
      }

      else if (v38 == 6)
      {
        v39 = 0xE800000000000000;
        v40 = 0x7974697669746361;
      }

      else
      {
        v40 = 0x697463656C666572;
        v39 = 0xEA00000000006E6FLL;
      }

      v41 = v39;
      String.append(_:)(*&v40);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v146 = *&v4[*(v137 + 24)];
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44 = v144;
      v45 = v145;
      sub_1002A31A8(v4, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v147 = v35;
      v47 = v35[2];
      v46 = v35[3];
      if (v47 >= v46 >> 1)
      {
        sub_1001999C0((v46 > 1), v47 + 1, 1);
        v35 = v147;
      }

      v35[2] = v47 + 1;
      v48 = &v35[2 * v47];
      v48[4] = v44;
      v48[5] = v45;
      v36 += v37;
      --v34;
    }

    while (v34);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v144 = v35;
  v49 = sub_1000F24EC(&qword_100AD60A0);
  v50 = sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  v51 = BidirectionalCollection<>.joined(separator:)();
  v53 = v52;

  v54._countAndFlagsBits = v51;
  v54._object = v53;
  String.append(_:)(v54);

  v55 = v139;
  v56 = v130;
  *(v130 + 112) = aBlock;
  v56[15] = v55;
  v56[16] = 0x756F432064726F57;
  v56[17] = 0xEA0000000000746ELL;
  swift_getKeyPath();
  aBlock = v133;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v144 = *v115;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  v57 = v117;
  IntegerFormatStyle.init(locale:)();
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  v58 = v119;
  BinaryInteger.formatted<A>(_:)();
  (*(v118 + 8))(v57, v58);
  v59 = v139;
  v56[18] = aBlock;
  v56[19] = v59;
  v56[20] = 0x64726F5720706F54;
  v56[21] = 0xE900000000000073;
  aBlock = 0;
  v139 = 0xE000000000000000;
  v60 = v129;
  v61 = *(v129 + 16);
  if (v61)
  {
    v128 = v50;
    v137 = v49;
    v147 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v61, 0);
    v62 = v147;
    v63 = (v60 + 48);
    do
    {
      v64 = *(v63 - 1);
      v65 = *v63;
      v144 = *(v63 - 2);
      v145 = v64;
      swift_bridgeObjectRetain_n();
      v66._countAndFlagsBits = 8250;
      v66._object = 0xE200000000000000;
      String.append(_:)(v66);
      v146 = v65;
      v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v67);

      v69 = v144;
      v68 = v145;
      v147 = v62;
      v71 = v62[2];
      v70 = v62[3];
      if (v71 >= v70 >> 1)
      {
        sub_1001999C0((v70 > 1), v71 + 1, 1);
        v62 = v147;
      }

      v63 += 3;
      v62[2] = v71 + 1;
      v72 = &v62[2 * v71];
      v72[4] = v69;
      v72[5] = v68;
      --v61;
    }

    while (v61);
  }

  else
  {

    v62 = _swiftEmptyArrayStorage;
  }

  v144 = v62;
  v73 = BidirectionalCollection<>.joined(separator:)();
  v75 = v74;

  v76._countAndFlagsBits = v73;
  v76._object = v75;
  String.append(_:)(v76);

  v77 = v139;
  v78 = v130;
  *(v130 + 176) = aBlock;
  *(v78 + 184) = v77;
  v79 = v132;
  *(v132 + 48) = v78;
  *(v79 + 56) = 0xD000000000000018;
  *(v79 + 64) = 0x80000001008E8A40;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100941FF0;
  *(v80 + 32) = 0x4420657669746341;
  *(v80 + 40) = 0xEB00000000737961;
  aBlock = 0;
  v139 = 0xE000000000000000;
  swift_getKeyPath();
  v81 = v133;
  v144 = v133;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v82 = v81 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  v137 = v82;
  v83 = v120;
  sub_1002A3140(v82, v120, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v83, type metadata accessor for StreakSummary);
  v84 = v139;
  *(v80 + 48) = aBlock;
  *(v80 + 56) = v84;
  strcpy((v80 + 64), "Active Weeks");
  *(v80 + 77) = 0;
  *(v80 + 78) = -5120;
  aBlock = 0;
  v139 = 0xE000000000000000;
  swift_getKeyPath();
  v147 = v81;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v85 = type metadata accessor for InsightsDataManager.Streaks(0);
  sub_1002A3140(v82 + v85[5], v83, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v83, type metadata accessor for StreakSummary);
  v86 = v139;
  *(v80 + 80) = aBlock;
  *(v80 + 88) = v86;
  *(v80 + 96) = 0x4420746E65636552;
  *(v80 + 104) = 0xEB00000000737961;
  aBlock = 0;
  v139 = 0xE000000000000000;
  swift_getKeyPath();
  v147 = v81;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v130 = v85;
  v87 = v137;
  sub_1002A3140(v137 + v85[6], v83, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v83, type metadata accessor for StreakSummary);
  v88 = v139;
  *(v80 + 112) = aBlock;
  *(v80 + 120) = v88;
  strcpy((v80 + 128), "Recent Weeks");
  *(v80 + 141) = 0;
  *(v80 + 142) = -5120;
  aBlock = 0;
  v139 = 0xE000000000000000;
  swift_getKeyPath();
  v147 = v81;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1002A3140(v87 + v85[7], v83, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v83, type metadata accessor for StreakSummary);
  v89 = v139;
  *(v80 + 144) = aBlock;
  *(v80 + 152) = v89;
  strcpy((v80 + 160), "Longest Days");
  *(v80 + 173) = 0;
  *(v80 + 174) = -5120;
  aBlock = 0;
  v139 = 0xE000000000000000;
  swift_getKeyPath();
  v147 = v81;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v90 = v130;
  sub_1002A3140(v87 + *(v130 + 32), v83, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v83, type metadata accessor for StreakSummary);
  v91 = v139;
  *(v80 + 176) = aBlock;
  *(v80 + 184) = v91;
  strcpy((v80 + 192), "Longest Weeks");
  *(v80 + 206) = -4864;
  aBlock = 0;
  v139 = 0xE000000000000000;
  swift_getKeyPath();
  v147 = v81;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1002A3140(v137 + *(v90 + 36), v83, type metadata accessor for StreakSummary);
  _print_unlocked<A, B>(_:_:)();
  sub_1002A31A8(v83, type metadata accessor for StreakSummary);
  v92 = v139;
  *(v80 + 208) = aBlock;
  *(v80 + 216) = v92;
  v93 = v132;
  *(v132 + 72) = v80;
  *(v93 + 80) = 0xD00000000000001CLL;
  *(v93 + 88) = 0x80000001008E8A60;
  v94 = v93;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100940050;
  *(v95 + 32) = 0xD000000000000016;
  *(v95 + 40) = 0x80000001008E8A80;
  *(v95 + 48) = sub_100253970();
  *(v95 + 56) = v96;
  strcpy((v95 + 64), "Daily Counts");
  *(v95 + 77) = 0;
  *(v95 + 78) = -5120;
  *(v95 + 80) = sub_100253774();
  *(v95 + 88) = v97;
  *(v94 + 96) = v95;
  v98 = v121;
  *&v121[OBJC_IVAR____TtC7Journal15InsightsAdminVC_data] = v94;

  sub_100005508();
  v99 = static OS_dispatch_queue.main.getter();
  v100 = swift_allocObject();
  *(v100 + 16) = v98;
  v142 = sub_1002A3208;
  v143 = v100;
  aBlock = _NSConcreteStackBlock;
  v139 = 1107296256;
  v140 = sub_100006C7C;
  v141 = &unk_100A62FB0;
  v101 = _Block_copy(&aBlock);
  v102 = v98;

  v103 = v122;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100040780(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
  v104 = v124;
  v105 = v127;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v101);

  (*(v126 + 8))(v104, v105);
  return (*(v123 + 8))(v103, v125);
}

void sub_1002A2CB4(void *a1)
{
  v1 = [a1 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

id sub_1002A30D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsAdminVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A3140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A31A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A3210(uint64_t a1)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data);
    if (*(v4 + 16) > a1)
    {
      return *(*(v4 + 24 * a1 + 48) + 16);
    }
  }

  return result;
}

uint64_t sub_1002A3248(uint64_t a1)
{
  v2 = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data);
    if (*(v3 + 16) > a1)
    {
      v2 = *(v3 + 24 * a1 + 32);
    }
  }

  return v2;
}

void sub_1002A32AC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v14 = a1;
    v4 = [v3 textLabel];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() blackColor];
      [v5 setTextColor:v6];
    }

    v7 = [v3 textLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() boldSystemFontOfSize:22.0];
      [v8 setFont:v9];
    }

    v10 = [v3 textLabel];
    if (v10)
    {
      v11 = v10;
      [v3 bounds];
      [v11 setFrame:?];
    }

    v12 = [v3 textLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setTextAlignment:1];
    }
  }
}

id sub_1002A345C()
{
  v1 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  v2 = *(v0 + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data);

  v3 = IndexPath.section.getter();
  if (v3 < 0)
  {
    goto LABEL_15;
  }

  if (v3 >= *(v2 + 16))
  {
    goto LABEL_15;
  }

  v4 = *(v2 + 24 * v3 + 48);

  v5 = IndexPath.row.getter();
  if (v5 < 0 || v5 >= *(v4 + 16))
  {
    goto LABEL_15;
  }

  v6 = [v1 textLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() boldSystemFontOfSize:18.0];
    [v7 setFont:v8];
  }

  v9 = [v1 textLabel];
  if (v9)
  {
    v10 = v9;

    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];
  }

  v12 = [v1 detailTextLabel];
  if (v12)
  {
    v13 = v12;
    [v12 setNumberOfLines:0];
  }

  v14 = [v1 detailTextLabel];
  if (!v14)
  {

LABEL_15:

    return v1;
  }

  v15 = v14;

  v16 = String._bridgeToObjectiveC()();

  [v15 setText:v16];

  return v1;
}

uint64_t sub_1002A369C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1002A11D0(a1, v4, v5, v6);
}

uint64_t sub_1002A3750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1002A11D0(a1, v4, v5, v6);
}

uint64_t sub_1002A3828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000023 && 0x80000001008E8AC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1002A38BC(uint64_t a1)
{
  v2 = sub_1002A41AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002A38F8(uint64_t a1)
{
  v2 = sub_1002A41AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002A3934@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100ADBB60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1002A41AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000BA7C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1002A3AB0(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADBB70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1002A41AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002A3BEC(uint64_t a1)
{
  v2 = sub_1002A3D78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002A3C28(uint64_t a1)
{
  v2 = sub_1002A3D78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioRecordingActivityState.encode(to:)(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADBB10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1002A3D78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1002A3D78()
{
  result = qword_100ADBB18;
  if (!qword_100ADBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB18);
  }

  return result;
}

unint64_t sub_1002A3E64()
{
  result = qword_100ADBB20;
  if (!qword_100ADBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB20);
  }

  return result;
}

unint64_t sub_1002A3EDC()
{
  result = qword_100ADBB28;
  if (!qword_100ADBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB28);
  }

  return result;
}

unint64_t sub_1002A3F34()
{
  result = qword_100ADBB30;
  if (!qword_100ADBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB30);
  }

  return result;
}

uint64_t sub_1002A3F88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

unint64_t sub_1002A3FF8()
{
  result = qword_100ADBB38;
  if (!qword_100ADBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB38);
  }

  return result;
}

unint64_t sub_1002A4050()
{
  result = qword_100ADBB40;
  if (!qword_100ADBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB40);
  }

  return result;
}

unint64_t sub_1002A40A8()
{
  result = qword_100ADBB48;
  if (!qword_100ADBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB48);
  }

  return result;
}

unint64_t sub_1002A4100()
{
  result = qword_100ADBB50;
  if (!qword_100ADBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB50);
  }

  return result;
}

unint64_t sub_1002A4158()
{
  result = qword_100ADBB58;
  if (!qword_100ADBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB58);
  }

  return result;
}

unint64_t sub_1002A41AC()
{
  result = qword_100ADBB68;
  if (!qword_100ADBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB68);
  }

  return result;
}

unint64_t sub_1002A4214()
{
  result = qword_100ADBB78;
  if (!qword_100ADBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB78);
  }

  return result;
}

unint64_t sub_1002A426C()
{
  result = qword_100ADBB80;
  if (!qword_100ADBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB80);
  }

  return result;
}

unint64_t sub_1002A42C4()
{
  result = qword_100ADBB88;
  if (!qword_100ADBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADBB88);
  }

  return result;
}

uint64_t sub_1002A4318()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADBB90);
  v1 = sub_10000617C(v0, qword_100ADBB90);
  if (qword_100AD0280 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30220);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002A43E0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1002A6414(&qword_100ADBD18, type metadata accessor for DeleteJournalViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  return sub_1002A63A4(v5 + v3, a1);
}

uint64_t sub_1002A44A8(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  sub_1002A63A4(v1 + v6, v5);
  v7 = sub_1002A6464(v5, a1);
  sub_100004F84(v5, &unk_100AD4400);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1002A6414(&qword_100ADBD18, type metadata accessor for DeleteJournalViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1002A63A4(a1, v5);
    swift_beginAccess();
    sub_1002A676C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100004F84(a1, &unk_100AD4400);
}

uint64_t sub_1002A4698(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  sub_1002A67F8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1002A4704()
{
  v1 = v0;
  v2 = type metadata accessor for Font.TextStyle();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MergeableJournalAttributes.Icon();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v37);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for JournalSidebarViewModel(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v41 = v0;
  sub_1002A6414(&qword_100ADBD18, type metadata accessor for DeleteJournalViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  sub_1002A63A4(v1 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &unk_100AD4400);
    return 0;
  }

  else
  {
    sub_100132B1C(v12, v16);
    v19 = v16[2];
    v20 = sub_1005215F4();
    v22 = v21;
    v23 = *(v13 + 28);
    v25 = v35;
    v24 = v36;
    (*(v35 + 16))(v7, v16 + v23, v36);
    v26 = (*(v25 + 88))(v7, v24);
    v34 = v16;
    if (v26 == enum case for MergeableJournalAttributes.Icon.emoji(_:))
    {
      (*(v25 + 96))(v7, v24);
      v27 = *v7;
      v28 = v7[1];
    }

    else
    {
      (*(v25 + 8))(v7, v24);
      v27 = 0;
      v28 = 0;
    }

    *v9 = v19;
    *(v9 + 1) = v20;
    *(v9 + 2) = v22;
    *(v9 + 3) = v27;
    *(v9 + 4) = v28;
    v9[40] = 1;
    v40 = 0x4030000000000000;
    v29 = enum case for Font.TextStyle.footnote(_:);
    v30 = *(v38 + 104);
    v31 = v39;
    v30(v4, enum case for Font.TextStyle.footnote(_:), v39);
    sub_10009BA68();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v40 = 0x4038000000000000;
    v30(v4, v29, v31);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v40 = 0x4040000000000000;
    v30(v4, v29, v31);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v32 = [objc_opt_self() currentTraitCollection];
    v33 = sub_1003AC4EC(v32);

    sub_100029324(v9, type metadata accessor for JournalMembershipBadge);
    sub_100029324(v34, type metadata accessor for JournalSidebarViewModel);
    return v33;
  }
}

uint64_t sub_1002A4C44(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  v9 = type metadata accessor for JournalSidebarViewModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v2 + v8, 1, 1, v9);
  v15[1] = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel___observationRegistrar;
  ObservationRegistrar.init()();
  sub_1002A6868(a1, v2 + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel_viewModelForDeletion, type metadata accessor for JournalSidebarViewModel);
  v17 = a1;
  v12 = sub_1007782E4(sub_1002A68D0, v16, a2);
  *(v2 + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel_destinationJournals) = v12;
  if (*(v12 + 16))
  {
    sub_1002A6868(v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v7, type metadata accessor for JournalSidebarViewModel);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v11(v7, v13, 1, v9);
  sub_1002A44A8(v7);
  sub_100029324(a1, type metadata accessor for JournalSidebarViewModel);
  return v2;
}

uint64_t sub_1002A4EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD4C60);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for JournalSidebarViewModel(0) + 24);
  v15 = *(v11 + 56);
  sub_1002A6868(a1 + v14, v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_1002A6868(a2 + v14, &v13[v15], type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v16 = sub_1000F24EC(&qword_100AD47A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    v19 = v25;
    sub_1002A6868(v13, v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (!v17(&v13[v15], 2, v16))
    {
      (*(v19 + 32))(v6, &v13[v15], v4);
      v22 = static UUID.== infix(_:_:)();
      v23 = *(v19 + 8);
      v23(v6, v4);
      v23(v9, v4);
      sub_100029324(v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v20 = v22 ^ 1;
      return v20 & 1;
    }

    (*(v19 + 8))(v9, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v13[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v13[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_100004F84(v13, &qword_100AD4C60);
    v20 = 1;
    return v20 & 1;
  }

  sub_100029324(v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1002A5250()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v81 = v70 - v3;
  v86 = type metadata accessor for ColorResource();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v7 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v85);
  v82 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v70 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v89 = v15;
  v90 = v16;
  __chkstk_darwin(v15);
  v80 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = v70 - v19;
  v20 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v20 - 8);
  v22 = v70 - v21;
  v23 = type metadata accessor for JournalSidebarViewModel(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v87 = (v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v28 = v70 - v27;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1002A6414(&qword_100ADBD18, type metadata accessor for DeleteJournalViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal;
  swift_beginAccess();
  sub_1002A63A4(v1 + v29, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_100004F84(v22, &unk_100AD4400);
  }

  sub_100132B1C(v22, v28);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v31 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  sub_1002A6868(v1 + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel_viewModelForDeletion + *(v23 + 24), v14, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v32 = sub_1000F24EC(&qword_100AD47A0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v33 + 48;
  if (v34(v14, 2, v32))
  {
    sub_100029324(v28, type metadata accessor for JournalSidebarViewModel);
    return sub_100029324(v14, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  }

  else
  {
    v77 = v10;
    v78 = v7;
    v74 = v35;
    v75 = v34;
    v76 = v32;
    v79 = v28;
    v37 = v90 + 32;
    v36 = *(v90 + 32);
    v38 = v88;
    v39 = v14;
    v40 = v89;
    v36(v88, v39, v89);
    v41 = type metadata accessor for JournalMO();
    sub_1002A6414(&qword_100AD4C68, &type metadata accessor for JournalMO);
    v42 = v31;
    v43 = static Identifiable<>.fetch(id:context:)();
    v71 = v36;
    v44 = v42;
    v72 = v37;
    if (v43)
    {
      v70[1] = v41;
      v73 = v43;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v46;
      sub_1000065A8(0, &qword_100AD4C70);
      v48 = v79;
      if (qword_100AD0BE0 != -1)
      {
        swift_once();
      }

      v49 = v86;
      v50 = sub_10000617C(v86, qword_100B312B0);
      (*(v84 + 16))(v83, v50, v49);
      v51 = UIColor.init(resource:)();
      v52 = v87;
      v53 = v87 + *(v23 + 28);
      strcpy(v53, "apple.journal");
      *(v53 + 7) = -4864;
      v54 = enum case for MergeableJournalAttributes.Icon.sfSymbol(_:);
      v55 = type metadata accessor for MergeableJournalAttributes.Icon();
      (*(*(v55 - 8) + 104))(v53, v54, v55);
      if (qword_100ACFF20 != -1)
      {
        swift_once();
      }

      v56 = sub_10000617C(v85, qword_100B2FAE0);
      v57 = *(v23 + 24);
      sub_1002A6868(v56, v52 + v57, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      *v52 = v45;
      v52[1] = v47;
      v52[2] = v51;
      v58 = v90;
      if (*v48 == v45 && v48[1] == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_1000065A8(0, &unk_100AD43A0), (static NSObject.== infix(_:_:)()) && (sub_100524B84(v48 + *(v23 + 24), v52 + v57) & 1) != 0 && (static MergeableJournalAttributes.Icon.== infix(_:_:)())
      {
        sub_100029324(v52, type metadata accessor for JournalSidebarViewModel);
        v59 = v81;
        v60 = v89;
        (*(v58 + 56))(v81, 1, 1, v89);
        v61 = v73;
        v62 = v44;
        static JournalMO.delete(_:moveEntriesToJournalID:context:)();
        sub_100004F84(v59, &qword_100AD1420);
      }

      else
      {
        sub_100029324(v52, type metadata accessor for JournalSidebarViewModel);
        v63 = v82;
        sub_1002A6868(v48 + *(v23 + 24), v82, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        if (v75(v63, 2, v76))
        {
          sub_100029324(v63, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v60 = v89;
          v61 = v73;
          v62 = v44;
        }

        else
        {
          v64 = v80;
          v60 = v89;
          v71(v80, v63, v89);
          v65 = v81;
          (*(v58 + 16))(v81, v64, v60);
          (*(v58 + 56))(v65, 0, 1, v60);
          v61 = v73;
          v62 = v44;
          static JournalMO.delete(_:moveEntriesToJournalID:context:)();
          sub_100004F84(v65, &qword_100AD1420);
          (*(v58 + 8))(v64, v60);
        }
      }

      v66 = swift_allocObject();
      *(v66 + 16) = v62;
      v67 = swift_allocObject();
      *(v67 + 16) = sub_1002A645C;
      *(v67 + 24) = v66;
      aBlock[4] = sub_100028EF4;
      aBlock[5] = v67;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001A7D4;
      aBlock[3] = &unk_100A631C8;
      v68 = _Block_copy(aBlock);
      v69 = v62;

      [v69 performBlockAndWait:v68];
      _Block_release(v68);

      (*(v58 + 8))(v88, v60);
      sub_100029324(v79, type metadata accessor for JournalSidebarViewModel);
      LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

      if (v68)
      {
        __break(1u);
      }
    }

    else
    {
      (*(v90 + 8))(v38, v40);

      return sub_100029324(v79, type metadata accessor for JournalSidebarViewModel);
    }
  }

  return result;
}

void sub_1002A5EE0(void *a1)
{
  v11 = 0;
  v1 = [a1 save:&v11];
  v2 = v11;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFBB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100ADBB90);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Couldn't save after deleting journal: %@", v8, 0xCu);
      sub_100004F84(v9, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

uint64_t sub_1002A60F8()
{
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel__selectedDestinationJournal, &unk_100AD4400);
  sub_100029324(v0 + OBJC_IVAR____TtC7Journal22DeleteJournalViewModel_viewModelForDeletion, type metadata accessor for JournalSidebarViewModel);

  v1 = OBJC_IVAR____TtC7Journal22DeleteJournalViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeleteJournalViewModel()
{
  result = qword_100ADBBE8;
  if (!qword_100ADBBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A623C()
{
  sub_1002A634C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JournalSidebarViewModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002A634C()
{
  if (!qword_100ADBBF8)
  {
    type metadata accessor for JournalSidebarViewModel(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADBBF8);
    }
  }
}

uint64_t sub_1002A63A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A6414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002A6464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalSidebarViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v8 - 8);
  v10 = (&v20 - v9);
  v11 = sub_1000F24EC(&qword_100ADBD20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1002A63A4(a1, &v20 - v13);
  sub_1002A63A4(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100004F84(v14, &unk_100AD4400);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_100004F84(v14, &qword_100ADBD20);
    v17 = 1;
    return v17 & 1;
  }

  sub_1002A63A4(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_100029324(v10, type metadata accessor for JournalSidebarViewModel);
    goto LABEL_6;
  }

  sub_100132B1C(&v14[v15], v7);
  v18 = *v10 == *v7 && v10[1] == v7[1];
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_1000065A8(0, &unk_100AD43A0), (static NSObject.== infix(_:_:)()) && (sub_100524B84(v10 + *(v4 + 24), v7 + *(v4 + 24)))
  {
    v17 = static MergeableJournalAttributes.Icon.== infix(_:_:)() ^ 1;
  }

  else
  {
    v17 = 1;
  }

  sub_100029324(v7, type metadata accessor for JournalSidebarViewModel);
  sub_100029324(v10, type metadata accessor for JournalSidebarViewModel);
  sub_100004F84(v14, &unk_100AD4400);
  return v17 & 1;
}

uint64_t sub_1002A676C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A67F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A6868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A68F0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADBD28);
  v1 = sub_10000617C(v0, qword_100ADBD28);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002A69B8(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 272) = a1;
  v3 = type metadata accessor for JournalFeatureFlags();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 184) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 192) = v5;
  *(v2 + 200) = v4;

  return _swift_task_switch(sub_1002A6AB0, v5, v4);
}

char *sub_1002A6AB0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 272);
  *(v0 + 208) = CFAbsoluteTimeGetCurrent();
  *(v1 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_sizeType) = v2;
  v3 = sub_1006C4C84(v2);
  v5 = v4;
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  if (v2 == 3)
  {
    v10 = -70.0;
  }

  else if (v2 == 7)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 104))(v6, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v9 = JournalFeatureFlags.isEnabled.getter();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      v10 = -145.0;
    }

    else
    {
      v10 = -116.0;
    }
  }

  else
  {
    v10 = -16.0;
  }

  v11 = *(*(v0 + 152) + OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates);
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {

    result = sub_100199E8C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      v16 = v15;
      [v15 coordinate];
      v17 = MKMapPointForCoordinate(v31);

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (*&v19 >= *&v18 >> 1)
      {
        sub_100199E8C((*&v18 > 1uLL), *&v19 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v19 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v19 + 4] = v17;
    }
  }

  *(v0 + 232) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 272);

  v22 = sub_1002A8F08(v21, v20, v3, v5, (v5 + v10) * 0.5);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_1002A6DA4;

  return sub_1002A9548(v22, v24, v26, v28, v3, v5);
}

uint64_t sub_1002A6DA4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_1002A6ECC, v4, v3);
}

uint64_t sub_1002A6ECC()
{
  v1 = *(v0 + 152);
  [*(v0 + 248) _setRendersInBackground:1];
  v2 = OBJC_IVAR____TtC7Journal17RouteMapGenerator_mapSnapshotter;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_mapSnapshotter);
  if (v3)
  {
    [v3 cancel];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 248);
  *(v1 + v2) = 0;

  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  v8 = *(v1 + v2);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = qword_100ACFB90;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_100B2F628;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1002A7120;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_1000F24EC(&qword_100ADBE50);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10039677C;
    *(v0 + 104) = &unk_100A631F0;
    *(v0 + 112) = v12;
    [v10 startWithQueue:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);

    sub_1002A7598(*(v0 + 152));

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1002A7120()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_1002A7340;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_1002A7238;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002A7238()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[18];

  v5 = [objc_opt_self() polylineWithPoints:v3 + 32 count:*(v3 + 16)];

  [v1 mapRect];
  v10 = sub_1002A990C(v5, v4, v6, v7, v8, v9);

  sub_1002A7598(v0[19]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1002A7340()
{
  v17 = v0;
  v1 = v0[32];

  swift_willThrow();

  if (qword_100ACFBB8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100ADBD28);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100008458(*(v9 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_id), *(v9 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_id + 8), &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "RouteMapGenerator [assetId: %s]: error generating snapshot: %@", v10, 0x16u);
    sub_100004F84(v11, &unk_100AD4BB0);

    sub_10000BA7C(v12);
  }

  else
  {
  }

  sub_1002A7598(v0[19]);

  v14 = v0[1];

  return v14(0);
}

void sub_1002A7598(uint64_t a1)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(83);
  v2._object = 0x80000001008E8DB0;
  v2._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v2);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x497465737361202CLL;
  v3._object = 0xEB00000000203A64;
  String.append(_:)(v3);
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_id));
  v4._countAndFlagsBits = 0x73746E696F70202CLL;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  if (*(a1 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6574756365786520;
  v6._object = 0xED0000206E692064;
  String.append(_:)(v6);
  CFAbsoluteTimeGetCurrent();
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 0x73646E6F63657320;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v9 = v16;
  v8 = v17;
  if (qword_100ACFBB8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100ADBD28);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    v15 = sub_100008458(v9, v8, &v16);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000BA7C(v14);
  }

  else
  {
  }
}

void sub_1002A789C(void *a1, id a2, char a3, uint64_t a4, uint64_t a5, CLLocationDegrees a6, CLLocationDegrees a7, double a8, double a9, double a10, double a11, CLLocationDegrees a12, CLLocationDegrees a13)
{
  v84.latitude = a6;
  v84.longitude = a7;
  v24 = [a2 image];
  [v24 size];
  v26 = v25;

  v27 = [a2 image];
  [v27 size];
  v29 = v28;

  v30 = [a2 image];
  [v30 drawInRect:{0.0, 0.0, v26, v29}];

  v85 = sub_1002A9CFC(0, a3);
  v31 = 2.0;
  if ((a3 - 3) <= 4u)
  {
    v31 = dbl_10094BF30[(a3 - 3)];
  }

  v32 = OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates;
  v33 = *(a4 + OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates);
  if (v33 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v48 = *(a4 + v32);
    v49 = type metadata accessor for WorkoutGradientPathRenderer();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC7Journal27WorkoutGradientPathRenderer_routeCoordinates] = v48;
    v86.receiver = v50;
    v86.super_class = v49;

    v51 = objc_msgSendSuper2(&v86, "initWithOverlay:", a5);
    v52 = [a1 CGContext];
    v53 = a2;
    sub_1002AA000(v52, v51, v53, a8, a9, a10, a11, v31);

    v54 = [a1 CGContext];
    CGContextStrokePath(v54);

    v55 = sub_1002A9CFC(1, a3);
    v88.latitude = a12;
    v88.longitude = a13;
    v56 = MKMapPointForCoordinate(v88);
    v57 = [a1 CGContext];
    v58 = MKCoordinateForMapPoint(v56);
    [v53 pointForCoordinate:{v58.latitude, v58.longitude}];
    v60 = v59;
    v62 = v61;
    [v55 bounds];
    v63 = v60 - CGRectGetMidX(v91);
    [v55 centerOffset];
    v65 = v63 + v64;
    [v55 bounds];
    v66 = v62 - CGRectGetMidY(v92);
    [v55 centerOffset];
    v68 = v66 + v67;
    CGContextSaveGState(v57);
    CGContextTranslateCTM(v57, v65, v68);
    [v55 prepareForSnapshotting];
    v69 = [v55 layer];
    [v69 renderInContext:v57];

    CGContextRestoreGState(v57);
    v70 = MKMapPointForCoordinate(v84);
    v71 = [a1 CGContext];
    v72 = MKCoordinateForMapPoint(v70);
    [v53 pointForCoordinate:{v72.latitude, v72.longitude}];
    v74 = v73;
    v76 = v75;
    [v85 bounds];
    v77 = v74 - CGRectGetMidX(v93);
    [v85 centerOffset];
    v79 = v77 + v78;
    [v85 bounds];
    v80 = v76 - CGRectGetMidY(v94);
    [v85 centerOffset];
    v82 = v80 + v81;
    CGContextSaveGState(v71);
    CGContextTranslateCTM(v71, v79, v82);
    [v85 prepareForSnapshotting];
    v83 = [v85 layer];
    [v83 renderInContext:v71];

    CGContextRestoreGState(v71);
    return;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = MKMapPointForCoordinate(v84);
  v35 = [a1 CGContext];
  v36 = MKCoordinateForMapPoint(v34);
  [a2 pointForCoordinate:{v36.latitude, v36.longitude}];
  v38 = v37;
  v40 = v39;
  [v85 bounds];
  v41 = v38 - CGRectGetMidX(v89);
  [v85 centerOffset];
  v43 = v41 + v42;
  [v85 bounds];
  v44 = v40 - CGRectGetMidY(v90);
  [v85 centerOffset];
  v46 = v44 + v45;
  CGContextSaveGState(v35);
  CGContextTranslateCTM(v35, v43, v46);
  [v85 prepareForSnapshotting];
  v47 = [v85 layer];
  [v47 renderInContext:v35];

  CGContextRestoreGState(v35);
}

id sub_1002A7F30(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void (*sub_1002A7FA8(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1002A8C6C(v4, a2);
  return sub_1002A8020;
}

void sub_1002A8020(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_1002A806C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC7Journal29WorkoutLocationAnnotationView_assetSizeType] = a4;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, v10);

  v12 = 7.0;
  if ((a4 - 3) <= 4u)
  {
    v12 = dbl_10094BF58[(a4 - 3)];
  }

  v13 = v11;
  [v13 setFrame:{0.0, 0.0, v12, v12}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setCanShowCallout:1];
  sub_1002A81EC(a1);

  swift_unknownObjectRelease();
  return v15;
}

void sub_1002A81EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_10018D564();
      if (qword_100AD0D70 != -1)
      {
        swift_once();
      }

      v8 = qword_100B31760;
LABEL_10:
      v9 = sub_10000617C(v4, v8);
      (*(v5 + 16))(v7, v9, v4);
      v10 = UIColor.init(resource:)();
      [v2 setTintColor:v10];

      return;
    }

    type metadata accessor for WorkoutEndLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_10018D564();
      if (qword_100AD0D68 != -1)
      {
        swift_once();
      }

      v8 = qword_100B31748;
      goto LABEL_10;
    }
  }

  v13 = [objc_opt_self() whiteColor];
  [v2 setTintColor:v13];
  v11 = v13;
}

void sub_1002A8444(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = 1.0;
    if (v4[OBJC_IVAR____TtC7Journal29WorkoutLocationAnnotationView_assetSizeType] - 3 <= 4)
    {
      v10 = dbl_10094BF80[(v4[OBJC_IVAR____TtC7Journal29WorkoutLocationAnnotationView_assetSizeType] - 3)];
    }

    c = v9;
    CGContextSetLineWidth(v9, v10);
    v11 = [v4 tintColor];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];

      CGContextSetFillColorWithColor(c, v13);
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 CGColor];

      CGContextSetStrokeColorWithColor(c, v15);
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      v19 = CGRectInset(v18, v10, v10);
      CGContextAddEllipseInRect(c, v19);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1002A87D8(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {
      v14 = 0.0;
      v21 = 0.0;
      goto LABEL_26;
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v13 - 1;
    if (v13 != 1)
    {
      v16 = &_swiftEmptyArrayStorage[5];
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (v17 < v14)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }

    v19 = v13;
    if (v13 > 3)
    {
      v20 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = vdupq_lane_s64(*&v19, 0);
      v23 = &_swiftEmptyArrayStorage[6];
      v21 = 0.0;
      v24 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v25 = vdivq_f64(v23[-1], v22);
        v26 = vdivq_f64(*v23, v22);
        v21 = v21 + v25.f64[0] + v25.f64[1] + v26.f64[0] + v26.f64[1];
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v13 == v20)
      {
LABEL_26:
        *&v29 = COERCE_DOUBLE(sub_1000AB2E4(_swiftEmptyArrayStorage));
        v31 = v30;

        if (v31)
        {
          v32 = 0.0;
          if (v21 * 0.9 >= a1)
          {
LABEL_28:
            if (a1 < 0.0 || v21 == 0.0)
            {
LABEL_40:
              v39 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_43:
              v41 = v39;
              v42 = [v39 CGColor];

              return v42;
            }

LABEL_38:
            v34 = (a1 - v14) / (v32 - v14);
            if (v34 >= 0.5)
            {
              v40 = v34 + -0.5 + v34 + -0.5;
              v36 = round(v40 * -179.0 + 255.0);
              v37 = round(v40 * 13.0 + 204.0);
              v38 = v40 * 100.0 + 0.0;
            }

            else
            {
              v35 = v34 + v34;
              v36 = round(v35 * 0.0 + 255.0);
              v37 = round(v35 * 145.0 + 59.0);
              v38 = 48.0 - v35 * 48.0;
            }

            v39 = [objc_allocWithZone(UIColor) initWithRed:v36 / 255.0 green:v37 / 255.0 blue:round(v38) / 255.0 alpha:0.85];
            goto LABEL_43;
          }
        }

        else
        {
          v32 = *&v29;
          if (v21 * 0.9 >= a1)
          {
            goto LABEL_28;
          }
        }

        if (a1 < 0.0)
        {
          goto LABEL_40;
        }

        if (v21 == 0.0 || v21 * 1.1 > a1)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0.0;
    }

    v27 = v13 - v20;
    v28 = 8 * v20 + 32;
    do
    {
      v21 = v21 + *(_swiftEmptyArrayStorage + v28) / v19;
      v28 += 8;
      --v27;
    }

    while (v27);
    goto LABEL_26;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_100199EBC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 speed];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_100199EBC((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1002A8C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_1002A8C6C(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1002A8ED4(v5);
  v5[9] = sub_1002A8D70((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1002A8D10;
}

void sub_1002A8D10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_1002A8D70(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_10009D0BC(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100823B18();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10081F9C8(v14, a3 & 1);
    v9 = sub_10009D0BC(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1002A8E8C;
}