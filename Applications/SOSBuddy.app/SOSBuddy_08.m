uint64_t sub_1000B0BD4()
{
  v0 = [objc_opt_self() mainBundle];
  v30._object = 0x800000010029B4A0;
  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x800000010029B960;
  v2.value._object = 0x800000010029B460;
  v30._countAndFlagsBits = 0xD00000000000002BLL;
  v2.value._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v30);

  v26 = v4;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  *&v28 = _swiftEmptyArrayStorage;
  type metadata accessor for BuiltInCondition();
  v29 = 0uLL;
  *(&v28 + 1) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 7;
  type metadata accessor for Question();
  v6 = swift_allocObject();
  v7 = v27;
  *(v6 + 72) = v26;
  *(v6 + 88) = v7;
  v8 = v29;
  *(v6 + 104) = v28;
  *(v6 + 16) = 0x505F5443454C4553;
  *(v6 + 24) = 0xEF52454449564F52;
  *(v6 + 32) = 3;
  *(v6 + 40) = _swiftEmptyArrayStorage;
  *(v6 + 48) = v5;
  *(v6 + 56) = &off_100321BE0;
  *(v6 + 64) = 4;
  *(v6 + 120) = v8;
  sub_1000B4E30(&v26, v25);
  v9 = sub_1000924D0(_swiftEmptyArrayStorage, &v26);
  *(v6 + 136) = v9;
  if (*(&v28 + 1))
  {
    v10 = v9;
    v25[0] = _swiftEmptyArrayStorage;
    v11 = *(v9 + 2);
    v12 = 0;
    v13 =  + 40;
    v14 = _swiftEmptyArrayStorage;
LABEL_3:
    v15 = (v13 + 16 * v12);
    while (1)
    {
      if (v11 == v12)
      {

        goto LABEL_12;
      }

      if (v12 >= *(v10 + 2))
      {
        break;
      }

      ++v12;
      v16 = *v15;
      v15 += 16;
      if (v16 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v25[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v6 + 144) = v14;
    v14 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {

      sub_1000B4E8C(&v26);
LABEL_16:
      v17 = 0;
LABEL_17:
      *(v6 + 152) = v17;
      return v6;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v26);

      goto LABEL_16;
    }
  }

  v19 = v29;
  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  v22 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v17 = result;
    v24 = *(result + 16) == v19 && v14 == *(result + 24);
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v26);
      goto LABEL_17;
    }

    ++v22;
    if (v23 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B0F2C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v78._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x800000010029B840;
  v3.value._object = 0x800000010029B460;
  v78._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v78);

  v75 = v5;
  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  *v77 = &off_100321C08;
  *&v77[8] = xmmword_100281620;
  *&v77[24] = 0xEA00000000005245;
  sub_1000040A8(&qword_1003681A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100281630;
  v7 = [v0 mainBundle];
  v79._object = 0x800000010029B870;
  v8._countAndFlagsBits = 0x4F2064656B636F4CLL;
  v9.value._object = 0x800000010029B460;
  v79._countAndFlagsBits = 0xD00000000000003BLL;
  v8._object = 0xEA00000000007475;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v79);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v11;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = v12;
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4B434C5F45505954;
  *(v14 + 24) = 0xE900000000000044;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v16._countAndFlagsBits = 0xD000000000000011;
  v80._object = 0x800000010029B870;
  v16._object = 0x800000010029B8B0;
  v17.value._object = 0x800000010029B460;
  v80._countAndFlagsBits = 0xD00000000000003BLL;
  v17.value._countAndFlagsBits = 0xD000000000000017;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v80);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  v21[1] = v19;
  v21[3]._countAndFlagsBits = 0;
  v21[3]._object = 0;
  v21[4]._countAndFlagsBits = v20;
  v21[2]._countAndFlagsBits = 0;
  v21[2]._object = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x4555465F45505954;
  *(v22 + 24) = 0xE90000000000004CLL;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  v23 = [v0 mainBundle];
  v81._object = 0x800000010029B870;
  v24._countAndFlagsBits = 0x7269542074616C46;
  v24._object = 0xE900000000000065;
  v25.value._object = 0x800000010029B460;
  v81._countAndFlagsBits = 0xD00000000000003BLL;
  v25.value._countAndFlagsBits = 0xD000000000000017;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v81);

  v28 = static Color.clear.getter();
  v29 = swift_allocObject();
  v29[1] = v27;
  v29[3]._countAndFlagsBits = 0;
  v29[3]._object = 0;
  v29[4]._countAndFlagsBits = v28;
  v29[2]._countAndFlagsBits = 0;
  v29[2]._object = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x414C465F45505954;
  *(v30 + 24) = 0xE900000000000054;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  *(v30 + 48) = 40;
  *(v6 + 48) = v30;
  v31 = [v0 mainBundle];
  v32._countAndFlagsBits = 0xD000000000000016;
  v82._object = 0x800000010029B870;
  v32._object = 0x800000010029B8D0;
  v33.value._object = 0x800000010029B460;
  v82._countAndFlagsBits = 0xD00000000000003BLL;
  v33.value._countAndFlagsBits = 0xD000000000000017;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v82);

  v36 = static Color.clear.getter();
  v37 = swift_allocObject();
  v37[1] = v35;
  v37[3]._countAndFlagsBits = 0;
  v37[3]._object = 0;
  v37[4]._countAndFlagsBits = v36;
  v37[2]._countAndFlagsBits = 0;
  v37[2]._object = 0;
  v38 = swift_allocObject();
  strcpy((v38 + 16), "TYPE_WONTSTRT");
  *(v38 + 30) = -4864;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  *(v38 + 48) = 40;
  *(v6 + 56) = v38;
  v39 = [v0 mainBundle];
  v83._object = 0x800000010029B870;
  v40._countAndFlagsBits = 0x20656C6369686556;
  v40._object = 0xED00006B63757453;
  v41.value._object = 0x800000010029B460;
  v83._countAndFlagsBits = 0xD00000000000003BLL;
  v41.value._countAndFlagsBits = 0xD000000000000017;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v83);

  v44 = static Color.clear.getter();
  v45 = swift_allocObject();
  v45[1] = v43;
  v45[3]._countAndFlagsBits = 0;
  v45[3]._object = 0;
  v45[4]._countAndFlagsBits = v44;
  v45[2]._countAndFlagsBits = 0;
  v45[2]._object = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 0x5554535F45505954;
  *(v46 + 24) = 0xEA00000000004B43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  *(v46 + 48) = 40;
  *(v6 + 64) = v46;
  v47 = [v0 mainBundle];
  v84._object = 0x800000010029B8F0;
  v48._countAndFlagsBits = 0x734920726568744FLL;
  v48._object = 0xEB00000000657573;
  v49.value._object = 0x800000010029B460;
  v84._countAndFlagsBits = 0xD000000000000066;
  v49.value._countAndFlagsBits = 0xD000000000000017;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v84);

  v52 = static Color.clear.getter();
  v53 = swift_allocObject();
  v53[1] = v51;
  v53[3]._countAndFlagsBits = 0;
  v53[3]._object = 0;
  v53[4]._countAndFlagsBits = v52;
  v53[2]._countAndFlagsBits = 0;
  v53[2]._object = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0x48544F5F45505954;
  *(v54 + 24) = 0xEA00000000005245;
  *(v54 + 32) = v53;
  *(v54 + 40) = 0;
  *(v54 + 48) = 40;
  *(v6 + 72) = v54;
  type metadata accessor for NoPrerequisites();
  v55 = swift_allocObject();
  type metadata accessor for Question();
  v56 = swift_allocObject();
  v57 = v76;
  *(v56 + 72) = v75;
  *(v56 + 88) = v57;
  v58 = *&v77[16];
  *(v56 + 104) = *v77;
  *(v56 + 16) = 1162893652;
  *(v56 + 24) = 0xE400000000000000;
  *(v56 + 32) = 0;
  *(v56 + 40) = v6;
  *(v56 + 48) = v55;
  *(v56 + 56) = &off_100321C30;
  *(v56 + 64) = 8;
  *(v56 + 120) = v58;

  sub_1000B4E30(&v75, v74);
  v59 = sub_1000924D0(v6, &v75);
  *(v56 + 136) = v59;
  if (*&v77[8])
  {
    v60 = v59;
    v61 = _swiftEmptyArrayStorage;
    v74[0] = _swiftEmptyArrayStorage;
    v62 = *(v59 + 2);

    v64 = 0;
    v65 = result + 40;
LABEL_3:
    v66 = (v65 + 16 * v64);
    while (1)
    {
      if (v62 == v64)
      {

        goto LABEL_12;
      }

      if (v64 >= *(v60 + 2))
      {
        break;
      }

      ++v64;
      v67 = *v66;
      v66 += 16;
      if (v67 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v61 = v74[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v61 = v6;
LABEL_12:
    *(v56 + 144) = v61;
    v68 = *&v77[24];
    if (*&v77[24])
    {
      v69 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
        v70 = 0;
        v71 = *&v77[16];
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v70 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v72 = *(v6 + 8 * v70 + 32);
          }

          v73 = *(v72 + 16) == v71 && v68 == *(v72 + 24);
          if (v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v70;

          if (v69 == v70)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v75);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v75);

        v72 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v75);
      v72 = 0;
    }

    *(v56 + 152) = v72;
    return v56;
  }

  return result;
}

uint64_t sub_1000B1840()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v47._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x800000010029B7D0;
  v3.value._object = 0x800000010029B460;
  v47._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v47);

  v43 = v5;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v45 = _swiftEmptyArrayStorage;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v48._object = 0x800000010029B800;
  v9._countAndFlagsBits = 0x492064656B636F4CLL;
  v9._object = 0xED0000656469736ELL;
  v10.value._object = 0x800000010029B460;
  v48._countAndFlagsBits = 0xD000000000000036;
  v10.value._countAndFlagsBits = 0xD000000000000017;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v48);

  v13 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v14 = swift_allocObject();
  v14[1] = v12;
  v14[3]._countAndFlagsBits = 0;
  v14[3]._object = 0;
  v14[4]._countAndFlagsBits = v13;
  type metadata accessor for Option();
  v14[2]._countAndFlagsBits = 0;
  v14[2]._object = 0;
  v15 = swift_allocObject();
  strcpy((v15 + 16), "LCKD_KEYS_VHCL");
  *(v15 + 31) = -18;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  *(v15 + 48) = 40;
  *(v7 + 32) = v15;
  v16 = [v0 mainBundle];
  v49._object = 0x800000010029B800;
  v17._countAndFlagsBits = 0x72656877656D6F53;
  v17._object = 0xEE0065736C452065;
  v18.value._object = 0x800000010029B460;
  v49._countAndFlagsBits = 0xD000000000000036;
  v18.value._countAndFlagsBits = 0xD000000000000017;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v49);

  v21 = static Color.clear.getter();
  v22 = swift_allocObject();
  v22[1] = v20;
  v22[3]._countAndFlagsBits = 0;
  v22[3]._object = 0;
  v22[4]._countAndFlagsBits = v21;
  v22[2]._countAndFlagsBits = 0;
  v22[2]._object = 0;
  v23 = swift_allocObject();
  strcpy((v23 + 16), "LCKD_KEYS_LOST");
  *(v23 + 31) = -18;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  *(v23 + 48) = 40;
  *(v7 + 40) = v23;
  type metadata accessor for OptionSelected();
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4B434C5F45505954;
  *(v24 + 24) = 0xE900000000000044;
  type metadata accessor for Question();
  v25 = swift_allocObject();
  v26 = v44;
  *(v25 + 72) = v43;
  *(v25 + 88) = v26;
  v27 = v46;
  *(v25 + 104) = v45;
  *(v25 + 16) = 0x59454B5F444B434CLL;
  *(v25 + 24) = 0xE900000000000053;
  *(v25 + 32) = 0;
  *(v25 + 40) = v7;
  *(v25 + 48) = v24;
  *(v25 + 56) = &off_100321C58;
  *(v25 + 64) = 8;
  *(v25 + 120) = v27;

  sub_1000B4E30(&v43, v42);
  v28 = sub_1000924D0(v7, &v43);
  *(v25 + 136) = v28;
  if (*(&v45 + 1))
  {
    v29 = v28;
    v42[0] = _swiftEmptyArrayStorage;
    v30 = *(v28 + 2);

    v32 = 0;
    v33 = result + 40;
LABEL_3:
    v34 = (v33 + 16 * v32);
    while (1)
    {
      if (v30 == v32)
      {

        goto LABEL_12;
      }

      if (v32 >= *(v29 + 2))
      {
        break;
      }

      ++v32;
      v35 = *v34;
      v34 += 16;
      if (v35 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v42[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v25 + 144) = v6;
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v37 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        v38 = 0;
        v39 = v46;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v40 = *(v7 + 8 * v38 + 32);
          }

          v41 = *(v40 + 16) == v39 && v36 == *(v40 + 24);
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v38;

          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v43);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v43);

        v40 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v43);
      v40 = 0;
    }

    *(v25 + 152) = v40;
    return v25;
  }

  return result;
}

uint64_t sub_1000B1DD0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v47._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000027;
  v2._object = 0x800000010029B760;
  v3.value._object = 0x800000010029B460;
  v47._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v47);

  v43 = v5;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  *&v45 = _swiftEmptyArrayStorage;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002811B0;
  v7 = [v0 mainBundle];
  v8._countAndFlagsBits = 0xD000000000000015;
  v48._object = 0x800000010029B660;
  v8._object = 0x800000010029B790;
  v9.value._object = 0x800000010029B460;
  v48._countAndFlagsBits = 0xD00000000000002DLL;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v48);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v11;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = v12;
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "FLAT_SPARE_YES");
  *(v14 + 31) = -18;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v16._countAndFlagsBits = 0xD000000000000014;
  v49._object = 0x800000010029B660;
  v16._object = 0x800000010029B7B0;
  v17.value._object = 0x800000010029B460;
  v49._countAndFlagsBits = 0xD00000000000002DLL;
  v17.value._countAndFlagsBits = 0xD000000000000017;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v49);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  v21[1] = v19;
  v21[3]._countAndFlagsBits = 0;
  v21[3]._object = 0;
  v21[4]._countAndFlagsBits = v20;
  v21[2]._countAndFlagsBits = 0;
  v21[2]._object = 0;
  v22 = swift_allocObject();
  strcpy((v22 + 16), "FLAT_SPARE_NO");
  *(v22 + 30) = -4864;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  type metadata accessor for OptionSelected();
  v23 = swift_allocObject();
  *(v23 + 16) = 0x414C465F45505954;
  *(v23 + 24) = 0xE900000000000054;
  type metadata accessor for Question();
  v24 = swift_allocObject();
  v25 = v44;
  *(v24 + 72) = v43;
  *(v24 + 88) = v25;
  v26 = v46;
  *(v24 + 104) = v45;
  *(v24 + 16) = 0x4150535F54414C46;
  *(v24 + 24) = 0xEA00000000004552;
  *(v24 + 32) = 0;
  *(v24 + 40) = v6;
  *(v24 + 48) = v23;
  *(v24 + 56) = &off_100321C80;
  *(v24 + 64) = 8;
  *(v24 + 120) = v26;

  sub_1000B4E30(&v43, v42);
  v27 = sub_1000924D0(v6, &v43);
  *(v24 + 136) = v27;
  if (*(&v45 + 1))
  {
    v28 = v27;
    v29 = _swiftEmptyArrayStorage;
    v42[0] = _swiftEmptyArrayStorage;
    v30 = *(v27 + 2);

    v32 = 0;
    v33 = result + 40;
LABEL_3:
    v34 = (v33 + 16 * v32);
    while (1)
    {
      if (v30 == v32)
      {

        goto LABEL_12;
      }

      if (v32 >= *(v28 + 2))
      {
        break;
      }

      ++v32;
      v35 = *v34;
      v34 += 16;
      if (v35 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v42[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v29 = v6;
LABEL_12:
    *(v24 + 144) = v29;
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v37 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        v38 = 0;
        v39 = v46;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v40 = *(v6 + 8 * v38 + 32);
          }

          v41 = *(v40 + 16) == v39 && v36 == *(v40 + 24);
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v38;

          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v43);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v43);

        v40 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v43);
      v40 = 0;
    }

    *(v24 + 152) = v40;
    return v24;
  }

  return result;
}

uint64_t sub_1000B2344()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v63._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x800000010029B6E0;
  v3.value._object = 0x800000010029B460;
  v63._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v63);

  v59 = v5;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  *&v61 = _swiftEmptyArrayStorage;
  *(&v61 + 1) = 0;
  v62 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100281640;
  v7 = [v0 mainBundle];
  v64._object = 0x800000010029B710;
  v8._countAndFlagsBits = 0x656E696C6F736147;
  v9.value._object = 0x800000010029B460;
  v64._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0xE800000000000000;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v64);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v11;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = v12;
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "FUEL_TYPE_GAS");
  *(v14 + 30) = -4864;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v65._object = 0x800000010029B710;
  v16._countAndFlagsBits = 0x6C6573656944;
  v17.value._object = 0x800000010029B460;
  v65._countAndFlagsBits = 0xD00000000000002CLL;
  v16._object = 0xE600000000000000;
  v17.value._countAndFlagsBits = 0xD000000000000017;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v65);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  v21[1] = v19;
  v21[3]._countAndFlagsBits = 0;
  v21[3]._object = 0;
  v21[4]._countAndFlagsBits = v20;
  v21[2]._countAndFlagsBits = 0;
  v21[2]._object = 0;
  v22 = swift_allocObject();
  strcpy((v22 + 16), "FUEL_TYPE_DSL");
  *(v22 + 30) = -4864;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  v23 = [v0 mainBundle];
  v66._object = 0x800000010029B710;
  v24._countAndFlagsBits = 0x6369727463656C45;
  v25.value._object = 0x800000010029B460;
  v66._countAndFlagsBits = 0xD00000000000002CLL;
  v24._object = 0xE800000000000000;
  v25.value._countAndFlagsBits = 0xD000000000000017;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v66);

  v28 = static Color.clear.getter();
  v29 = swift_allocObject();
  v29[1] = v27;
  v29[3]._countAndFlagsBits = 0;
  v29[3]._object = 0;
  v29[4]._countAndFlagsBits = v28;
  v29[2]._countAndFlagsBits = 0;
  v29[2]._object = 0;
  v30 = swift_allocObject();
  strcpy((v30 + 16), "FUEL_TYPE_EV");
  *(v30 + 29) = 0;
  *(v30 + 30) = -5120;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  *(v30 + 48) = 40;
  *(v6 + 48) = v30;
  v31 = [v0 mainBundle];
  v32._countAndFlagsBits = 0xD000000000000011;
  v67._object = 0x800000010029B710;
  v32._object = 0x800000010029B740;
  v33.value._object = 0x800000010029B460;
  v67._countAndFlagsBits = 0xD00000000000002CLL;
  v33.value._countAndFlagsBits = 0xD000000000000017;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v67);

  v36 = static Color.clear.getter();
  v37 = swift_allocObject();
  v37[1] = v35;
  v37[3]._countAndFlagsBits = 0;
  v37[3]._object = 0;
  v37[4]._countAndFlagsBits = v36;
  v37[2]._countAndFlagsBits = 0;
  v37[2]._object = 0;
  v38 = swift_allocObject();
  strcpy((v38 + 16), "FUEL_TYPE_OTHR");
  *(v38 + 31) = -18;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  *(v38 + 48) = 40;
  *(v6 + 56) = v38;
  type metadata accessor for OptionSelected();
  v39 = swift_allocObject();
  *(v39 + 16) = 0x4555465F45505954;
  *(v39 + 24) = 0xE90000000000004CLL;
  type metadata accessor for Question();
  v40 = swift_allocObject();
  v41 = v60;
  *(v40 + 72) = v59;
  *(v40 + 88) = v41;
  v42 = v62;
  *(v40 + 104) = v61;
  *(v40 + 16) = 0x5059545F4C455546;
  *(v40 + 24) = 0xE900000000000045;
  *(v40 + 32) = 0;
  *(v40 + 40) = v6;
  *(v40 + 48) = v39;
  *(v40 + 56) = &off_100321CA8;
  *(v40 + 64) = 8;
  *(v40 + 120) = v42;

  sub_1000B4E30(&v59, v58);
  v43 = sub_1000924D0(v6, &v59);
  *(v40 + 136) = v43;
  if (*(&v61 + 1))
  {
    v44 = v43;
    v45 = _swiftEmptyArrayStorage;
    v58[0] = _swiftEmptyArrayStorage;
    v46 = *(v43 + 2);

    v48 = 0;
    v49 = result + 40;
LABEL_3:
    v50 = (v49 + 16 * v48);
    while (1)
    {
      if (v46 == v48)
      {

        goto LABEL_12;
      }

      if (v48 >= *(v44 + 2))
      {
        break;
      }

      ++v48;
      v51 = *v50;
      v50 += 16;
      if (v51 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v45 = v58[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v45 = v6;
LABEL_12:
    *(v40 + 144) = v45;
    v52 = *(&v62 + 1);
    if (*(&v62 + 1))
    {
      v53 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        v54 = 0;
        v55 = v62;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v54 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v56 = *(v6 + 8 * v54 + 32);
          }

          v57 = *(v56 + 16) == v55 && v52 == *(v56 + 24);
          if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v54;

          if (v53 == v54)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v59);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v59);

        v56 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v59);
      v56 = 0;
    }

    *(v40 + 152) = v56;
    return v40;
  }

  return result;
}

uint64_t sub_1000B2A64()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v47._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x800000010029B6B0;
  v3.value._object = 0x800000010029B460;
  v47._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v47);

  v43 = v5;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  *&v45 = _swiftEmptyArrayStorage;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002811B0;
  v7 = [v0 mainBundle];
  v48._object = 0x800000010029B660;
  v8._countAndFlagsBits = 0x724420656C696857;
  v8._object = 0xED0000676E697669;
  v9.value._object = 0x800000010029B460;
  v48._countAndFlagsBits = 0xD00000000000002DLL;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v48);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v11;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = v12;
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000010;
  *(v14 + 24) = 0x800000010029B5F0;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v49._object = 0x800000010029B660;
  v16._countAndFlagsBits = 0x745320656C696857;
  v16._object = 0xED0000646570706FLL;
  v17.value._object = 0x800000010029B460;
  v49._countAndFlagsBits = 0xD00000000000002DLL;
  v17.value._countAndFlagsBits = 0xD000000000000017;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v49);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  v21[1] = v19;
  v21[3]._countAndFlagsBits = 0;
  v21[3]._object = 0;
  v21[4]._countAndFlagsBits = v20;
  v21[2]._countAndFlagsBits = 0;
  v21[2]._object = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x54525453544E4F57;
  *(v22 + 24) = 0xEF4F4E5F5652445FLL;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  type metadata accessor for OptionSelected();
  v23 = swift_allocObject();
  strcpy((v23 + 16), "TYPE_WONTSTRT");
  *(v23 + 30) = -4864;
  type metadata accessor for Question();
  v24 = swift_allocObject();
  v25 = v44;
  *(v24 + 72) = v43;
  *(v24 + 88) = v25;
  v26 = v46;
  *(v24 + 104) = v45;
  strcpy((v24 + 16), "WONTSTRT_DRV");
  *(v24 + 29) = 0;
  *(v24 + 30) = -5120;
  *(v24 + 32) = 0;
  *(v24 + 40) = v6;
  *(v24 + 48) = v23;
  *(v24 + 56) = &off_100321CD0;
  *(v24 + 64) = 8;
  *(v24 + 120) = v26;

  sub_1000B4E30(&v43, v42);
  v27 = sub_1000924D0(v6, &v43);
  *(v24 + 136) = v27;
  if (*(&v45 + 1))
  {
    v28 = v27;
    v29 = _swiftEmptyArrayStorage;
    v42[0] = _swiftEmptyArrayStorage;
    v30 = *(v27 + 2);

    v32 = 0;
    v33 = result + 40;
LABEL_3:
    v34 = (v33 + 16 * v32);
    while (1)
    {
      if (v30 == v32)
      {

        goto LABEL_12;
      }

      if (v32 >= *(v28 + 2))
      {
        break;
      }

      ++v32;
      v35 = *v34;
      v34 += 16;
      if (v35 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v42[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v29 = v6;
LABEL_12:
    *(v24 + 144) = v29;
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v37 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        v38 = 0;
        v39 = v46;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v40 = *(v6 + 8 * v38 + 32);
          }

          v41 = *(v40 + 16) == v39 && v36 == *(v40 + 24);
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v38;

          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v43);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v43);

        v40 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v43);
      v40 = 0;
    }

    *(v24 + 152) = v40;
    return v24;
  }

  return result;
}

uint64_t sub_1000B3000()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v55._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x800000010029B610;
  v3.value._object = 0x800000010029B460;
  v55._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v55);

  v51 = v5;
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  *&v53 = _swiftEmptyArrayStorage;
  *(&v53 + 1) = 0;
  v54 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002811B0;
  v7 = [v0 mainBundle];
  v56._object = 0x800000010029B660;
  v8._object = 0x800000010029B640;
  v9.value._object = 0x800000010029B460;
  v56._countAndFlagsBits = 0xD00000000000002DLL;
  v8._countAndFlagsBits = 0xD000000000000011;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v56);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v11;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = v12;
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x5345595F574F54;
  *(v14 + 24) = 0xE700000000000000;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v57._object = 0x800000010029B660;
  v16._object = 0x800000010029B690;
  v17.value._object = 0x800000010029B460;
  v57._countAndFlagsBits = 0xD00000000000002DLL;
  v16._countAndFlagsBits = 0xD000000000000011;
  v17.value._countAndFlagsBits = 0xD000000000000017;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v57);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  v21[1] = v19;
  v21[3]._countAndFlagsBits = 0;
  v21[3]._object = 0;
  v21[4]._countAndFlagsBits = v20;
  v21[2]._countAndFlagsBits = 0;
  v21[2]._object = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x4F4E5F574F54;
  *(v22 + 24) = 0xE600000000000000;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100281650;
  type metadata accessor for OptionSelected();
  v24 = swift_allocObject();
  strcpy((v24 + 16), "LCKD_KEYS_LOST");
  *(v24 + 31) = -18;
  *(v23 + 32) = v24;
  v25 = swift_allocObject();
  strcpy((v25 + 16), "FLAT_SPARE_NO");
  *(v25 + 30) = -4864;
  *(v23 + 40) = v25;
  v26 = swift_allocObject();
  strcpy((v26 + 16), "FUEL_TYPE_EV");
  *(v26 + 29) = 0;
  *(v26 + 30) = -5120;
  *(v23 + 48) = v26;
  v27 = swift_allocObject();
  strcpy((v27 + 16), "FUEL_TYPE_OTHR");
  *(v27 + 31) = -18;
  *(v23 + 56) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = 0xD000000000000010;
  *(v28 + 24) = 0x800000010029B5F0;
  *(v23 + 64) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = 0x5554535F45505954;
  *(v29 + 24) = 0xEA00000000004B43;
  *(v23 + 72) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x48544F5F45505954;
  *(v30 + 24) = 0xEA00000000005245;
  *(v23 + 80) = v30;
  type metadata accessor for OrCondition();
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  *(v31 + 24) = v23;
  type metadata accessor for Question();
  v32 = swift_allocObject();
  v33 = v52;
  *(v32 + 72) = v51;
  *(v32 + 88) = v33;
  v34 = v54;
  *(v32 + 104) = v53;
  *(v32 + 16) = 5721940;
  *(v32 + 24) = 0xE300000000000000;
  *(v32 + 32) = 0;
  *(v32 + 40) = v6;
  *(v32 + 48) = v31;
  *(v32 + 56) = &off_100321CF8;
  *(v32 + 64) = 8;
  *(v32 + 120) = v34;

  sub_1000B4E30(&v51, v50);
  v35 = sub_1000924D0(v6, &v51);
  *(v32 + 136) = v35;
  if (*(&v53 + 1))
  {
    v36 = v35;
    v37 = _swiftEmptyArrayStorage;
    v50[0] = _swiftEmptyArrayStorage;
    v38 = *(v35 + 2);

    v40 = 0;
    v41 = result + 40;
LABEL_3:
    v42 = (v41 + 16 * v40);
    while (1)
    {
      if (v38 == v40)
      {

        goto LABEL_12;
      }

      if (v40 >= *(v36 + 2))
      {
        break;
      }

      ++v40;
      v43 = *v42;
      v42 += 16;
      if (v43 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v50[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v37 = v6;
LABEL_12:
    *(v32 + 144) = v37;
    v44 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      v45 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        v46 = 0;
        v47 = v54;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v46 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v48 = *(v6 + 8 * v46 + 32);
          }

          v49 = *(v48 + 16) == v47 && v44 == *(v48 + 24);
          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v46;

          if (v45 == v46)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v51);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v51);

        v48 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v51);
      v48 = 0;
    }

    *(v32 + 152) = v48;
    return v32;
  }

  return result;
}

uint64_t sub_1000B36E0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v63._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x800000010029B550;
  v3.value._object = 0x800000010029B460;
  v63._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v63);

  v59 = v5;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  *&v61 = _swiftEmptyArrayStorage;
  *(&v61 + 1) = 0;
  v62 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100281640;
  v7 = [v0 mainBundle];
  v64._object = 0x800000010029B580;
  v8._countAndFlagsBits = 0x6E6F737265502031;
  v9.value._object = 0x800000010029B460;
  v64._countAndFlagsBits = 0xD00000000000004DLL;
  v8._object = 0xE800000000000000;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v64);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v11;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = v12;
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x5F45444952574F54;
  *(v14 + 24) = 0xE900000000000031;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v65._object = 0x800000010029B580;
  v16._countAndFlagsBits = 0x656C706F65502032;
  v17.value._object = 0x800000010029B460;
  v65._countAndFlagsBits = 0xD00000000000004DLL;
  v16._object = 0xE800000000000000;
  v17.value._countAndFlagsBits = 0xD000000000000017;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v65);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  v21[1] = v19;
  v21[3]._countAndFlagsBits = 0;
  v21[3]._object = 0;
  v21[4]._countAndFlagsBits = v20;
  v21[2]._countAndFlagsBits = 0;
  v21[2]._object = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x5F45444952574F54;
  *(v22 + 24) = 0xE900000000000032;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  v23 = [v0 mainBundle];
  v24._countAndFlagsBits = 0xD000000000000010;
  v66._object = 0x800000010029B580;
  v24._object = 0x800000010029B5D0;
  v25.value._object = 0x800000010029B460;
  v66._countAndFlagsBits = 0xD00000000000004DLL;
  v25.value._countAndFlagsBits = 0xD000000000000017;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v66);

  v28 = static Color.clear.getter();
  v29 = swift_allocObject();
  v29[1] = v27;
  v29[3]._countAndFlagsBits = 0;
  v29[3]._object = 0;
  v29[4]._countAndFlagsBits = v28;
  v29[2]._countAndFlagsBits = 0;
  v29[2]._object = 0;
  v30 = swift_allocObject();
  strcpy((v30 + 16), "TOWRIDE_3PLUS");
  *(v30 + 30) = -4864;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  *(v30 + 48) = 40;
  *(v6 + 48) = v30;
  v31 = [v0 mainBundle];
  v67._object = 0x800000010029B580;
  v32._countAndFlagsBits = 0x2065646952206F4ELL;
  v32._object = 0xEE0064656465654ELL;
  v33.value._object = 0x800000010029B460;
  v67._countAndFlagsBits = 0xD00000000000004DLL;
  v33.value._countAndFlagsBits = 0xD000000000000017;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v67);

  v36 = static Color.clear.getter();
  v37 = swift_allocObject();
  v37[1] = v35;
  v37[3]._countAndFlagsBits = 0;
  v37[3]._object = 0;
  v37[4]._countAndFlagsBits = v36;
  v37[2]._countAndFlagsBits = 0;
  v37[2]._object = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0x5F45444952574F54;
  *(v38 + 24) = 0xEA00000000004F4ELL;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  *(v38 + 48) = 40;
  *(v6 + 56) = v38;
  type metadata accessor for QuestionCondition();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 5721940;
  *(v39 + 32) = 0xE300000000000000;
  type metadata accessor for Question();
  v40 = swift_allocObject();
  v41 = v60;
  *(v40 + 72) = v59;
  *(v40 + 88) = v41;
  v42 = v62;
  *(v40 + 104) = v61;
  *(v40 + 16) = 0x45444952574F54;
  *(v40 + 24) = 0xE700000000000000;
  *(v40 + 32) = 0;
  *(v40 + 40) = v6;
  *(v40 + 48) = v39;
  *(v40 + 56) = &off_100321D20;
  *(v40 + 64) = 8;
  *(v40 + 120) = v42;

  sub_1000B4E30(&v59, v58);
  v43 = sub_1000924D0(v6, &v59);
  *(v40 + 136) = v43;
  if (*(&v61 + 1))
  {
    v44 = v43;
    v45 = _swiftEmptyArrayStorage;
    v58[0] = _swiftEmptyArrayStorage;
    v46 = *(v43 + 2);

    v48 = 0;
    v49 = result + 40;
LABEL_3:
    v50 = (v49 + 16 * v48);
    while (1)
    {
      if (v46 == v48)
      {

        goto LABEL_12;
      }

      if (v48 >= *(v44 + 2))
      {
        break;
      }

      ++v48;
      v51 = *v50;
      v50 += 16;
      if (v51 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v45 = v58[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v45 = v6;
LABEL_12:
    *(v40 + 144) = v45;
    v52 = *(&v62 + 1);
    if (*(&v62 + 1))
    {
      v53 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        v54 = 0;
        v55 = v62;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v54 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v56 = *(v6 + 8 * v54 + 32);
          }

          v57 = *(v56 + 16) == v55 && v52 == *(v56 + 24);
          if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v54;

          if (v53 == v54)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v59);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v59);

        v56 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v59);
      v56 = 0;
    }

    *(v40 + 152) = v56;
    return v40;
  }

  return result;
}

uint64_t sub_1000B3E30()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v36._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v2._object = 0x800000010029B480;
  v3.value._object = 0x800000010029B460;
  v36._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v36);

  v6 = [v0 mainBundle];
  v37._object = 0x800000010029B520;
  v7._countAndFlagsBits = 0xD00000000000004FLL;
  v7._object = 0x800000010029B4D0;
  v8.value._object = 0x800000010029B460;
  v37._countAndFlagsBits = 0xD000000000000024;
  v8.value._countAndFlagsBits = 0xD000000000000017;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v37);

  v32 = v5;
  v33 = v10;
  *&v34 = _swiftEmptyArrayStorage;
  type metadata accessor for BuiltInCondition();
  v35 = 0uLL;
  *(&v34 + 1) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 8;
  type metadata accessor for Question();
  v12 = swift_allocObject();
  v13 = v33;
  *(v12 + 72) = v32;
  *(v12 + 88) = v13;
  v14 = v35;
  *(v12 + 104) = v34;
  strcpy((v12 + 16), "SELECT_PHNUM");
  *(v12 + 29) = 0;
  *(v12 + 30) = -5120;
  *(v12 + 32) = 3;
  *(v12 + 40) = _swiftEmptyArrayStorage;
  *(v12 + 48) = v11;
  *(v12 + 56) = _swiftEmptyArrayStorage;
  *(v12 + 64) = 5;
  *(v12 + 120) = v14;
  sub_1000B4E30(&v32, v31);
  v15 = sub_1000924D0(_swiftEmptyArrayStorage, &v32);
  *(v12 + 136) = v15;
  if (*(&v34 + 1))
  {
    v16 = v15;
    v31[0] = _swiftEmptyArrayStorage;
    v17 = *(v15 + 2);
    v18 = 0;
    v19 =  + 40;
    v20 = _swiftEmptyArrayStorage;
LABEL_3:
    v21 = (v19 + 16 * v18);
    while (1)
    {
      if (v17 == v18)
      {

        goto LABEL_12;
      }

      if (v18 >= *(v16 + 2))
      {
        break;
      }

      ++v18;
      v22 = *v21;
      v21 += 16;
      if (v22 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = v31[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v12 + 144) = v20;
    v20 = *(&v35 + 1);
    if (!*(&v35 + 1))
    {

      sub_1000B4E8C(&v32);
LABEL_16:
      v23 = 0;
LABEL_17:
      *(v12 + 152) = v23;
      return v12;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v32);

      goto LABEL_16;
    }
  }

  v25 = v35;
  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  v28 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v23 = result;
    v30 = *(result + 16) == v25 && v20 == *(result + 24);
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v32);
      goto LABEL_17;
    }

    ++v28;
    if (v29 == v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B41E8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v43._object = 0x800000010029B4A0;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v2._object = 0x800000010029B480;
  v3.value._object = 0x800000010029B460;
  v43._countAndFlagsBits = 0xD00000000000002BLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v43);

  v6 = [v0 mainBundle];
  v44._object = 0x800000010029B520;
  v7._countAndFlagsBits = 0xD00000000000004FLL;
  v7._object = 0x800000010029B4D0;
  v8.value._object = 0x800000010029B460;
  v44._countAndFlagsBits = 0xD000000000000024;
  v8.value._countAndFlagsBits = 0xD000000000000017;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v44);

  v39 = v5;
  v40 = v10;
  *&v41 = _swiftEmptyArrayStorage;
  *(&v41 + 1) = 0;
  v42 = 0uLL;
  sub_1000040A8(&qword_1003681A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002811B0;
  type metadata accessor for QuestionCondition();
  v12 = swift_allocObject();
  *(v12 + 16) = 2;
  strcpy((v12 + 24), "SELECT_PHNUM");
  *(v12 + 37) = 0;
  *(v12 + 38) = -5120;
  type metadata accessor for NotCondition();
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100281610;
  *(v14 + 32) = v12;
  *(v13 + 16) = 2;
  *(v13 + 24) = v14;
  *(v11 + 32) = v13;
  type metadata accessor for BuiltInCondition();
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100281610;
  *(v17 + 32) = v15;
  *(v16 + 16) = 2;
  *(v16 + 24) = v17;
  *(v11 + 40) = v16;
  type metadata accessor for AndCondition();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = v11;
  type metadata accessor for Question();
  v19 = swift_allocObject();
  v20 = v40;
  *(v19 + 72) = v39;
  *(v19 + 88) = v20;
  v21 = v42;
  *(v19 + 104) = v41;
  *(v19 + 16) = 0x48505F5245544E45;
  *(v19 + 24) = 0xEB000000004D554ELL;
  *(v19 + 32) = 3;
  *(v19 + 40) = _swiftEmptyArrayStorage;
  *(v19 + 48) = v18;
  *(v19 + 56) = _swiftEmptyArrayStorage;
  *(v19 + 64) = 6;
  *(v19 + 120) = v21;
  sub_1000B4E30(&v39, v38);
  v22 = sub_1000924D0(_swiftEmptyArrayStorage, &v39);
  *(v19 + 136) = v22;
  if (*(&v41 + 1))
  {
    v23 = v22;
    v38[0] = _swiftEmptyArrayStorage;
    v24 = *(v22 + 2);
    v25 = 0;
    v26 =  + 40;
    v27 = _swiftEmptyArrayStorage;
LABEL_3:
    v28 = (v26 + 16 * v25);
    while (1)
    {
      if (v24 == v25)
      {

        goto LABEL_12;
      }

      if (v25 >= *(v23 + 2))
      {
        break;
      }

      ++v25;
      v29 = *v28;
      v28 += 16;
      if (v29 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v27 = v38[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v19 + 144) = v27;
    v27 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      sub_1000B4E8C(&v39);
LABEL_16:
      v30 = 0;
LABEL_17:
      *(v19 + 152) = v30;
      return v19;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v39);

      goto LABEL_16;
    }
  }

  v32 = v42;
  v33 = _CocoaArrayWrapper.endIndex.getter();
  if (!v33)
  {
    goto LABEL_14;
  }

  v34 = v33;
  v35 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v30 = result;
    v37 = *(result + 16) == v32 && v27 == *(result + 24);
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v39);
      goto LABEL_17;
    }

    ++v35;
    if (v36 == v34)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B46B8()
{
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  *&v23 = _swiftEmptyArrayStorage;
  type metadata accessor for BuiltInCondition();
  v24 = 0uLL;
  *(&v23 + 1) = 0;
  v0 = swift_allocObject();
  *(v0 + 16) = 10;
  type metadata accessor for Question();
  v1 = swift_allocObject();
  v2 = v22;
  *(v1 + 72) = v21;
  *(v1 + 88) = v2;
  v3 = v24;
  *(v1 + 104) = v23;
  *(v1 + 16) = 0x59524D53415352;
  *(v1 + 24) = 0xE700000000000000;
  *(v1 + 32) = 3;
  *(v1 + 40) = _swiftEmptyArrayStorage;
  *(v1 + 48) = v0;
  *(v1 + 56) = &off_100321D48;
  *(v1 + 64) = 7;
  *(v1 + 120) = v3;
  sub_1000B4E30(&v21, v20);
  v4 = sub_1000924D0(_swiftEmptyArrayStorage, &v21);
  *(v1 + 136) = v4;
  if (*(&v23 + 1))
  {
    v5 = v4;
    v20[0] = _swiftEmptyArrayStorage;
    v6 = *(v4 + 2);
    v7 = 0;
    v8 =  + 40;
    v9 = _swiftEmptyArrayStorage;
LABEL_3:
    v10 = (v8 + 16 * v7);
    while (1)
    {
      if (v6 == v7)
      {

        goto LABEL_12;
      }

      if (v7 >= *(v5 + 2))
      {
        break;
      }

      ++v7;
      v11 = *v10;
      v10 += 16;
      if (v11 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = v20[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v1 + 144) = v9;
    v9 = *(&v24 + 1);
    if (!*(&v24 + 1))
    {

      sub_1000B4E8C(&v21);
LABEL_16:
      v12 = 0;
LABEL_17:
      *(v1 + 152) = v12;
      return v1;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v21);

      goto LABEL_16;
    }
  }

  v14 = v24;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v12 = result;
    v19 = *(result + 16) == v14 && v9 == *(result + 24);
    if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v21);
      goto LABEL_17;
    }

    ++v17;
    if (v18 == v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B4978()
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381E48);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating built-in roadside assistance Questionnaire instance", v3, 2u);
  }

  v6[0] = 1;
  v7 = 0xD000000000000017;
  v8 = 0x800000010029B460;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 1;
  sub_1000040A8(&qword_1003681A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100281660;
  *(v4 + 32) = sub_1000B07C0();
  *(v4 + 40) = sub_1000B0BD4();
  *(v4 + 48) = sub_1000B0F2C();
  *(v4 + 56) = sub_1000B1840();
  *(v4 + 64) = sub_1000B1DD0();
  *(v4 + 72) = sub_1000B2344();
  *(v4 + 80) = sub_1000B2A64();
  *(v4 + 88) = sub_1000B3000();
  *(v4 + 96) = sub_1000B36E0();
  *(v4 + 104) = sub_1000B3E30();
  *(v4 + 112) = sub_1000B41E8();
  *(v4 + 120) = sub_1000B46B8();
  type metadata accessor for Questionnaire();
  swift_allocObject();
  return sub_10008B90C(2, 0, v6, 0, v4);
}

uint64_t sub_1000B4CA8()
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381E48);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;

    sub_1000040A8(&qword_1003566A0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating roadside assistance Questionnaire instance from bundle: %{public}s", v3, 0xCu);
    sub_100008964(v4);
  }

  return sub_1000B4978();
}

uint64_t sub_1000B4F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v65 = a5;
  v11 = sub_1000040A8(&qword_10035BC40);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v64 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = sub_1000040A8(&qword_10035BC48);
  sub_1000B54D4(a1, a2, a3, a4, &v16[*(v17 + 44)], a6);
  v18 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v16[*(sub_1000040A8(&qword_10035BC50) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v16[*(sub_1000040A8(&qword_10035BC58) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = &v16[*(v12 + 44)];
  *v38 = 0x7453726564616548;
  *(v38 + 1) = 0xEB000000006B6361;
  v39 = static HorizontalAlignment.center.getter();
  v67 = 0;
  sub_1000B63A8(a2, a3, &v85);
  v76 = *&v86[112];
  v77 = *&v86[128];
  v72 = *&v86[48];
  v73 = *&v86[64];
  v74 = *&v86[80];
  v75 = *&v86[96];
  v68 = v85;
  v69 = *v86;
  v70 = *&v86[16];
  v71 = *&v86[32];
  v79[7] = *&v86[96];
  v79[8] = *&v86[112];
  v79[9] = *&v86[128];
  v79[10] = *&v86[144];
  v79[3] = *&v86[32];
  v79[4] = *&v86[48];
  v79[5] = *&v86[64];
  v79[6] = *&v86[80];
  v78 = *&v86[144];
  v79[0] = v85;
  v79[1] = *v86;
  v79[2] = *&v86[16];
  sub_100006C20(&v68, &v80, &qword_100356C48);
  sub_100008FA0(v79, &qword_100356C48);
  *&v66[119] = v75;
  *&v66[135] = v76;
  *&v66[151] = v77;
  *&v66[167] = v78;
  *&v66[55] = v71;
  *&v66[71] = v72;
  *&v66[87] = v73;
  *&v66[103] = v74;
  *&v66[7] = v68;
  *&v66[23] = v69;
  *&v66[39] = v70;
  v40 = v67;
  LOBYTE(a4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v64;
  sub_100006C20(v16, v64, &qword_10035BC40);
  v50 = v65;
  sub_100006C20(v49, v65, &qword_10035BC40);
  v51 = sub_1000040A8(&qword_10035BC60);
  v52 = *(v51 + 48);
  *(&v81[8] + 1) = *&v66[128];
  *(&v81[9] + 1) = *&v66[144];
  *(&v81[10] + 1) = *&v66[160];
  *(&v81[4] + 1) = *&v66[64];
  *(&v81[5] + 1) = *&v66[80];
  *(&v81[6] + 1) = *&v66[96];
  *(&v81[7] + 1) = *&v66[112];
  *(&v81[1] + 1) = *&v66[16];
  *(&v81[2] + 1) = *&v66[32];
  v53 = v50 + v52;
  v80 = v39;
  LOBYTE(v81[0]) = v40;
  *&v81[11] = *&v66[175];
  *(&v81[3] + 1) = *&v66[48];
  *(v81 + 1) = *v66;
  BYTE8(v81[11]) = a4;
  *&v82 = v42;
  *(&v82 + 1) = v44;
  *&v83 = v46;
  *(&v83 + 1) = v48;
  v84 = 0;
  *(v53 + 240) = 0;
  v54 = v81[8];
  *(v53 + 128) = v81[7];
  *(v53 + 144) = v54;
  v55 = v81[10];
  *(v53 + 160) = v81[9];
  *(v53 + 176) = v55;
  v56 = v81[4];
  *(v53 + 64) = v81[3];
  *(v53 + 80) = v56;
  v57 = v81[6];
  *(v53 + 96) = v81[5];
  *(v53 + 112) = v57;
  v58 = v81[0];
  *v53 = v80;
  *(v53 + 16) = v58;
  v59 = v81[2];
  *(v53 + 32) = v81[1];
  *(v53 + 48) = v59;
  v60 = v82;
  *(v53 + 192) = v81[11];
  *(v53 + 208) = v60;
  *(v53 + 224) = v83;
  v61 = v50 + *(v51 + 64);
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_100006C20(&v80, &v85, &qword_10035BC68);
  sub_100008FA0(v16, &qword_10035BC40);
  *&v86[129] = *&v66[128];
  *&v86[145] = *&v66[144];
  *v87 = *&v66[160];
  *&v86[65] = *&v66[64];
  *&v86[81] = *&v66[80];
  *&v86[97] = *&v66[96];
  *&v86[113] = *&v66[112];
  *&v86[1] = *v66;
  *&v86[17] = *&v66[16];
  *&v86[33] = *&v66[32];
  v85 = v39;
  v86[0] = v40;
  *&v87[15] = *&v66[175];
  *&v86[49] = *&v66[48];
  v88 = a4;
  v89 = v42;
  v90 = v44;
  v91 = v46;
  v92 = v48;
  v93 = 0;
  sub_100008FA0(&v85, &qword_10035BC68);
  return sub_100008FA0(v49, &qword_10035BC40);
}

uint64_t sub_1000B54D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v130 = a3;
  v131 = a4;
  v134 = a5;
  v135 = a2;
  v129 = a1;
  v7 = type metadata accessor for AccessibilityTraits();
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v117 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000040A8(&qword_100356C40);
  __chkstk_darwin(v9 - 8);
  v121 = &v108[-v10];
  v120 = sub_1000040A8(&qword_10035BC70);
  __chkstk_darwin(v120);
  v123 = &v108[-v11];
  v122 = sub_1000040A8(&qword_10035BC78);
  __chkstk_darwin(v122);
  v128 = &v108[-v12];
  v127 = sub_1000040A8(&qword_10035BC80);
  __chkstk_darwin(v127);
  v133 = &v108[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v125 = &v108[-v15];
  __chkstk_darwin(v16);
  v132 = &v108[-v17];
  v18 = type metadata accessor for Font.Leading();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v108[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  static Font.body.getter();
  v27 = *(v19 + 104);
  v112 = enum case for Font.Leading.tight(_:);
  v113 = v19 + 104;
  v111 = v27;
  v27(v21);
  Font.leading(_:)();

  v28 = *(v19 + 8);
  v114 = v21;
  v115 = v18;
  v29 = v21;
  v30 = v135;
  v110 = v28;
  v28(v29, v18);
  v139 = Text.font(_:)();
  v124 = v31;
  v33 = v32;
  v126 = v34;

  sub_1000317C4(v22, v24, v26 & 1);

  if (v30)
  {
    v35 = *(v30 + 72);
    v36 = *(v30 + 80);
    sub_1000088DC((v30 + 48), v35);
    v37 = *(v36 + 24);
    swift_retain_n();
    v37(&v145, v35, v36);
    sub_100008964(&v145);
    v38 = *(v30 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v39 = *(v30 + 72);
    v40 = *(v30 + 80);
    sub_1000088DC((v30 + 48), v39);
    (*(v40 + 24))(&v145, v39, v40);
    static Alignment.leading.getter();
    sub_100008964(&v145);
    v41 = *(v30 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v151[55] = v157;
    *&v151[71] = v158;
    *&v151[87] = v159;
    *&v151[103] = v160;
    *&v151[7] = v154;
    *&v151[23] = v155;
    v116 = v33 & 1;
    v153 = v33 & 1;
    *&v151[39] = v156;
    v42 = *(v30 + 112);

    v109 = static UIContentSizeCategory.>= infix(_:_:)();

    v137 = swift_getKeyPath();
    LocalizedStringKey.init(stringLiteral:)();
    v43 = Text.init(_:tableName:bundle:comment:)();
    v45 = v44;
    v47 = v46;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();
    v136 = UIContentSizeCategoryAccessibilityExtraLarge;

    v49 = v114;
    v48 = v115;
    v111(v114, v112, v115);
    Font.leading(_:)();

    v110(v49, v48);
    v50 = Text.font(_:)();
    v52 = v51;
    LOBYTE(v49) = v53;

    sub_1000317C4(v43, v45, v47 & 1);

    static Color.white.getter();
    v54 = Text.foregroundColor(_:)();
    v114 = v55;
    v115 = v54;
    v57 = v56;
    v59 = v58;

    sub_1000317C4(v50, v52, v49 & 1);
    v60 = v135;

    v61 = *(v60 + 72);
    v62 = *(v60 + 80);
    sub_1000088DC((v60 + 48), v61);
    (*(v62 + 24))(&v145, v61, v62);
    sub_100008964(&v145);
    v63 = *(v60 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    v64 = swift_getKeyPath();
    static Alignment.center.getter();
    v65 = *(v60 + 72);
    v66 = *(v60 + 80);
    sub_1000088DC((v60 + 48), v65);
    (*(v66 + 24))(&v145, v65, v66);
    static Alignment.leading.getter();
    sub_100008964(&v145);
    v67 = *(v60 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    v68 = 0.5;
    if (v109)
    {
      v69 = 1.0;
    }

    else
    {
      v69 = 0.5;
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v149[55] = v164;
    *&v149[71] = v165;
    *&v149[87] = v166;
    *&v149[103] = v167;
    *&v149[7] = v161;
    *&v149[23] = v162;
    v150 = v57 & 1;
    *&v149[39] = v163;
    v70 = *(v60 + 112);

    v71 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v71)
    {
      v68 = 1.0;
    }

    v72 = swift_getKeyPath();
    *(&v147[4] + 9) = *&v149[64];
    *(&v147[5] + 9) = *&v149[80];
    *(&v147[6] + 9) = *&v149[96];
    *(v147 + 9) = *v149;
    *(&v147[1] + 9) = *&v149[16];
    *(&v147[2] + 9) = *&v149[32];
    *&v145 = v115;
    *(&v145 + 1) = v114;
    LOBYTE(v146) = v57 & 1;
    *(&v146 + 1) = v59;
    *&v147[0] = v64;
    BYTE8(v147[0]) = 0;
    *(&v147[3] + 9) = *&v149[48];
    *(&v147[7] + 1) = *&v149[111];
    *&v148 = v72;
    *(&v148 + 1) = v68;
    v73 = v117;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48);
    sub_10003BE30();
    v74 = v121;
    View.accessibility(addTraits:)();
    (*(v118 + 8))(v73, v119);
    v140[8] = v147[6];
    v140[9] = v147[7];
    v140[10] = v148;
    v140[4] = v147[2];
    v140[5] = v147[3];
    v140[6] = v147[4];
    v140[7] = v147[5];
    v140[0] = v145;
    v140[1] = v146;
    v140[2] = v147[0];
    v140[3] = v147[1];
    sub_100008FA0(v140, &qword_100356C48);
    v75 = static Alignment.center.getter();
    v77 = v76;
    v78 = v74;
    v79 = v123;
    sub_10000CF4C(v78, v123, &qword_100356C40);
    v80 = &v79[*(v120 + 36)];
    *v80 = v75;
    v80[1] = v77;
    sub_1000089B0(v129, &v145);
    v81 = swift_allocObject();
    v82 = v130;
    v83 = v131;
    *(v81 + 16) = v60;
    *(v81 + 24) = v82;
    *(v81 + 32) = a6;
    *(v81 + 40) = v83;
    sub_100008A18(&v145, v81 + 48);
    v84 = v128;
    sub_10000CF4C(v79, v128, &qword_10035BC70);
    v85 = &v84[*(v122 + 36)];
    *v85 = sub_1000B6BB4;
    v85[1] = v81;

    LOBYTE(v77) = static Edge.Set.top.getter();
    *&v145 = a6;
    *(&v145 + 1) = v83;
    sub_1000040A8(&qword_100359C08);
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = v125;
    sub_10000CF4C(v84, v125, &qword_10035BC78);
    v95 = &v94[*(v127 + 36)];
    *v95 = v77;
    *(v95 + 1) = v87;
    *(v95 + 2) = v89;
    *(v95 + 3) = v91;
    *(v95 + 4) = v93;
    v95[40] = 0;
    v96 = v132;
    sub_10000CF4C(v94, v132, &qword_10035BC80);
    v97 = v133;
    sub_100006C20(v96, v133, &qword_10035BC80);
    v98 = v124;
    *&v141 = v139;
    *(&v141 + 1) = v124;
    LOBYTE(v83) = v116;
    LOBYTE(v142) = v116;
    *(&v142 + 1) = *v152;
    DWORD1(v142) = *&v152[3];
    v99 = v126;
    *(&v142 + 1) = v126;
    *&v143[0] = KeyPath;
    BYTE8(v143[0]) = 0;
    *(&v143[4] + 9) = *&v151[64];
    *(&v143[5] + 9) = *&v151[80];
    *(&v143[6] + 9) = *&v151[96];
    *(v143 + 9) = *v151;
    *(&v143[1] + 9) = *&v151[16];
    *(&v143[2] + 9) = *&v151[32];
    *(&v143[3] + 9) = *&v151[48];
    *(&v143[7] + 1) = *&v151[111];
    *&v144 = v137;
    *(&v144 + 1) = v69;
    v100 = v143[7];
    v101 = v134;
    v134[8] = v143[6];
    v101[9] = v100;
    v102 = v143[3];
    v101[4] = v143[2];
    v101[5] = v102;
    v103 = v143[5];
    v101[6] = v143[4];
    v101[7] = v103;
    v104 = v142;
    *v101 = v141;
    v101[1] = v104;
    v105 = v143[1];
    v101[2] = v143[0];
    v101[3] = v105;
    v101[10] = v144;
    v106 = sub_1000040A8(&qword_10035BC88);
    sub_100006C20(v97, v101 + *(v106 + 48), &qword_10035BC80);
    sub_100006C20(&v141, &v145, &qword_100356C48);
    sub_100008FA0(v96, &qword_10035BC80);
    sub_100008FA0(v97, &qword_10035BC80);
    *&v145 = v139;
    *(&v145 + 1) = v98;
    LOBYTE(v146) = v83;
    *(&v146 + 1) = *v152;
    DWORD1(v146) = *&v152[3];
    *(&v146 + 1) = v99;
    *&v147[0] = KeyPath;
    BYTE8(v147[0]) = 0;
    *(&v147[4] + 9) = *&v151[64];
    *(&v147[5] + 9) = *&v151[80];
    *(&v147[6] + 9) = *&v151[96];
    *(v147 + 9) = *v151;
    *(&v147[1] + 9) = *&v151[16];
    *(&v147[2] + 9) = *&v151[32];
    *(&v147[3] + 9) = *&v151[48];
    *(&v147[7] + 1) = *&v151[111];
    *&v148 = v137;
    *(&v148 + 1) = v69;
    return sub_100008FA0(&v145, &qword_100356C48);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B62A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *result;
  if (*(*result + 16))
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    sub_1000088DC(a5, a5[3]);
    v10.origin.x = v6;
    v10.origin.y = v7;
    v10.size.width = v8;
    v10.size.height = v9;
    CGRectGetMidY(v10);

    sub_1000040A8(&qword_100359C08);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000B63A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v48 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v11 = v48;
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  v17 = v11;
  v18 = v44;
  sub_1000317C4(v17, v8, v10 & 1);

  static Color.white.getter();
  v19 = Text.foregroundColor(_:)();
  v47 = v20;
  v48 = v19;
  v45 = v21;
  v46 = v22;

  sub_1000317C4(v12, v14, v16 & 1);

  if (v18)
  {
    v23 = *(v18 + 72);
    v24 = *(v18 + 80);
    sub_1000088DC((v18 + 48), v23);
    v25 = *(v24 + 24);

    v25(v51, v23, v24);
    sub_100008964(v51);
    v26 = *(v18 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v28 = *(v18 + 72);
    v29 = *(v18 + 80);
    sub_1000088DC((v18 + 48), v28);
    (*(v29 + 24))(v51, v28, v29);
    static Alignment.leading.getter();
    sub_100008964(v51);
    v30 = *(v18 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v49[55] = v51[3];
    *&v49[71] = v51[4];
    *&v49[87] = v51[5];
    *&v49[103] = v51[6];
    *&v49[7] = v51[0];
    *&v49[23] = v51[1];
    v31 = v45 & 1;
    v50 = v45 & 1;
    *&v49[39] = v51[2];
    v32 = *(v18 + 112);

    v33 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v33)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.5;
    }

    result = swift_getKeyPath();
    v36 = *&v49[80];
    v37 = v43;
    *(v43 + 105) = *&v49[64];
    *(v37 + 121) = v36;
    *(v37 + 137) = *&v49[96];
    v38 = *&v49[16];
    *(v37 + 41) = *v49;
    *(v37 + 57) = v38;
    v39 = *&v49[48];
    *(v37 + 73) = *&v49[32];
    v40 = v47;
    *v37 = v48;
    *(v37 + 8) = v40;
    *(v37 + 16) = v31;
    *(v37 + 24) = v46;
    *(v37 + 32) = KeyPath;
    *(v37 + 40) = 0;
    v41 = *&v49[111];
    *(v37 + 89) = v39;
    *(v37 + 152) = v41;
    *(v37 + 160) = result;
    *(v37 + 168) = v34;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6858@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*v1)
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = v3[9];
    v8 = v3[10];
    sub_1000088DC(v3 + 6, v7);
    (*(v8 + 24))(v11, v7, v8);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v9 = sub_1000040A8(&qword_10035BC38);
    sub_1000B4F0C(v11, v3, v2, v6, a1 + *(v9 + 44), v5);
    return sub_100008964(v11);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6968@<X0>(void *a1@<X8>)
{
  if (qword_1003539D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10035BC30;
}

double sub_1000B6A1C()
{
  v0 = type metadata accessor for NamedCoordinateSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0x7453726564616548;
  v7[1] = 0xEB000000006B6361;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1000B6B6C()
{

  sub_100008964(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1000B6C30()
{
  result = qword_10035BCA0;
  if (!qword_10035BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BCA0);
  }

  return result;
}

uint64_t sub_1000B6C84(uint64_t (*a1)(void))
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Onboarding controller dismissed", v5, 2u);
  }

  return a1();
}

id sub_1000B6D78()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(CKBusinessOnboardingController);
  v8[4] = sub_1000B703C;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001D2438;
  v8[3] = &unk_10032D7C0;
  v5 = _Block_copy(v8);

  v6 = [v4 initWithCompletionHandler:v5];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1000B6EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B6FB0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B6FB0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B6F88()
{
  sub_1000B6FB0();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000B6FB0()
{
  result = qword_10035BCA8;
  if (!qword_10035BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BCA8);
  }

  return result;
}

uint64_t sub_1000B7004()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000B705C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v33 = v8;
      a1(&v27, &v33);
      if (v3)
      {

        return v7;
      }

      if (*(&v27 + 1))
      {
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        v21 = v27;
        v22 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10017BC0C(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_10017BC0C((v10 > 1), v11 + 1, 1, v7);
        }

        v17 = v23;
        v18 = v24;
        v19 = v25;
        v20 = v26;
        v12 = v21;
        v16 = v22;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[88 * v11];
        *(v13 + 3) = v16;
        *(v13 + 14) = v20;
        *(v13 + 5) = v18;
        *(v13 + 6) = v19;
        *(v13 + 4) = v17;
        *(v13 + 2) = v12;
      }

      else
      {
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        v21 = v27;
        v22 = v28;
        sub_100008FA0(&v21, &qword_10035C0A0);
      }

      ++v6;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v8 = *(a3 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000B72BC(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v35 = _swiftEmptyArrayStorage;
  sub_100187254(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v29)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
  }

  v32 = result;
  v33 = v5;
  v34 = v29 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v28 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_36;
      }

      v9 = v32;
      v10 = v34;
      v30 = v33;
      v11 = sub_1000FE57C(v32, v33, v34, a1);
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      v35 = v3;
      v15 = v3[2];
      v14 = v3[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_100187254((v14 > 1), v15 + 1, 1);
        v3 = v35;
      }

      v3[2] = v15 + 1;
      v16 = &v3[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      if (v29)
      {
        if (!v10)
        {
          goto LABEL_41;
        }

        v17 = v3;
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v28;
        sub_1000040A8(&qword_10035C0C0);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(v31, 0);
      }

      else
      {
        if (v10)
        {
          goto LABEL_42;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v17 = v3;
        v18 = 1 << *(a1 + 32);
        if (v9 >= v18)
        {
          goto LABEL_37;
        }

        v19 = v9 >> 6;
        v20 = *(a1 + 56 + 8 * (v9 >> 6));
        if (((v20 >> v9) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v30)
        {
          goto LABEL_39;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v2 = v28;
        }

        else
        {
          v22 = v19 << 6;
          v23 = v19 + 1;
          v24 = (a1 + 64 + 8 * v19);
          v2 = v28;
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_1000C6AF4(v9, v30, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_32;
            }
          }

          result = sub_1000C6AF4(v9, v30, 0);
        }

LABEL_32:
        v27 = *(a1 + 36);
        v32 = v18;
        v33 = v27;
        v34 = 0;
      }

      v3 = v17;
      if (v6 == v2)
      {
        sub_1000C6AF4(v32, v33, v34);
        return v3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *sub_1000B7604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100187254(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 56) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_100187254((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000C6AF4(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000C6AF4(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000B7848(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v32[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_beginAccess();
  sub_10003F3D8(v3 + 48, v33);
  if (!v35)
  {
    sub_10003F434(v33);
    goto LABEL_11;
  }

  sub_1000C6118(&v34, v32);
  sub_10003F434(v33);
  v12 = v32[0];
  v11 = v32[1];

  sub_1000C60E8(v32);
  if (v12 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (qword_100353AA8 == -1)
    {
LABEL_12:
      v15 = type metadata accessor for Logger();
      sub_10000F53C(v15, qword_100381E48);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v33[0] = swift_slowAlloc();
        *v18 = 136446466;
        v19 = sub_1000B9A7C();
        v21 = sub_10017C9E8(v19, v20, v33);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_10017C9E8(a1, a2, v33);
        _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] linkIsAvailable: for expired send token %{public}s", v18, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

LABEL_8:
  sub_10003F3D8(v3 + 48, v33);
  if (v35)
  {
    v14 = v36;
    sub_10003F434(v33);
    if (v14)
    {
      return;
    }
  }

  else
  {
    sub_10003F434(v33);
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381E48);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v25 = 136446466;
    v26 = sub_1000B9A7C();
    v28 = sub_10017C9E8(v26, v27, v33);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_10017C9E8(a1, a2, v33);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] linkIsAvailable: for token %{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + 32))
  {
    *(v3 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v30 = sub_1000B9A08();
  if (*(v29 + 112))
  {
    *(v29 + 168) = 1;
  }

  (v30)(v33, 0);
  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1000B7E14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  v8 = *(v3 + 8);
  v7 = v3 + 8;
  v8(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  sub_10003F3D8(v1 + 48, v19);
  if (!v21[1])
  {
    return sub_10003F434(v19);
  }

  sub_1000C6118(v21, v18);
  sub_10003F434(v19);
  v7 = v18[0];
  v2 = v18[1];

  sub_1000C60E8(v18);
  if (qword_100353AA8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381E48);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = sub_1000B9A7C();
    v15 = sub_10017C9E8(v13, v14, v19);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = sub_10017C9E8(v7, v2, v19);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Resetting current send token %{public}s to nil", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  swift_beginAccess();
  sub_1000C6F74(v19, v1 + 152, &qword_10035C098);
  result = swift_endAccess();
  if (*(v1 + 32))
  {
    *(v1 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1000B8230(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  sub_100006C20(v3 + 152, &v40, &qword_10035C098);
  if (*(&v40 + 1))
  {
    sub_1000C60B0(&v40, v43);
    if ((v43[0] != a1 || v43[1] != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000F53C(v32, qword_100381E48);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *&v40 = swift_slowAlloc();
        *v35 = 136446466;
        v36 = sub_1000B9A7C();
        v38 = sub_10017C9E8(v36, v37, &v40);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_10017C9E8(a1, a2, &v40);
        _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] donePreparingForSend: for expired send token %{public}s", v35, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_25;
    }

    if (qword_100353AA8 == -1)
    {
LABEL_7:
      v11 = type metadata accessor for Logger();
      sub_10000F53C(v11, qword_100381E48);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *&v40 = swift_slowAlloc();
        *v14 = 136446466;
        v15 = sub_1000B9A7C();
        v17 = sub_10017C9E8(v15, v16, &v40);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_10017C9E8(a1, a2, &v40);
        _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] donePreparingForSend: for token %{public}s", v14, 0x16u);
        swift_arrayDestroy();
      }

      if (*(v3 + 32))
      {
        *(v3 + 40) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      v26 = sub_1000B9A7C();
      v28 = v27;
      v29 = v43[7];
      v30 = type metadata accessor for QuestionnaireState.DefaultTextEncoder();
      v31 = swift_allocObject();
      v31[2] = v26;
      v31[3] = v28;
      v31[4] = v29;
      v41 = v30;
      v42 = &off_10032D928;
      *&v40 = v31;
      swift_beginAccess();

      sub_100008964(v3 + 80);
      sub_100008A18(&v40, v3 + 80);
      sub_100008FA0(v3 + 152, &qword_10035C098);
      *(v3 + 152) = 0u;
      *(v3 + 168) = 0u;
      *(v3 + 184) = 0u;
      *(v3 + 200) = 0u;
      *(v3 + 216) = 0;
      swift_endAccess();
      if (*(v3 + 32))
      {
        *(v3 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

LABEL_25:
      sub_1000C60E8(v43);
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_7;
  }

  sub_100008FA0(&v40, &qword_10035C098);
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F53C(v18, qword_100381E48);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43[0] = v22;
    *v21 = 136446210;
    v23 = sub_1000B9A7C();
    v25 = sub_10017C9E8(v23, v24, v43);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] donePreparingForSend: send is not in progress", v21, 0xCu);
    sub_100008964(v22);
  }
}

void *sub_1000B8944(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  LODWORD(v7) = a1;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  sub_10003F3D8(v4 + 48, v55);
  v49 = v7;
  v46 = a3;
  if (v58[1])
  {
    v45 = a2;
    sub_1000C6118(v58, &v53);
    sub_10003F434(v55);
    v16 = v53;
    v17 = v54;

    sub_1000C60E8(&v53);
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000F53C(v18, qword_100381E48);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v7 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v16;
      v55[0] = v21;
      *v7 = 136446466;
      v22 = sub_1000B9A7C();
      v24 = sub_10017C9E8(v22, v23, v55);

      *(v7 + 4) = v24;
      *(v7 + 12) = 2082;
      v25 = sub_10017C9E8(v44, v17, v55);

      *(v7 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] prepareForSend: send token %{public}s is already pending, overriding", v7, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v7) = v49;
    }

    else
    {
    }
  }

  else
  {
    sub_10003F434(v55);
  }

  UUID.init()();
  v14 = UUID.uuidString.getter();
  a3 = v26;
  (*(v47 + 8))(v10, v48);

  v28 = sub_1000B7604(v27);

  v10 = sub_1000C6908(v28);

  v29 = sub_100255F44(_swiftEmptyArrayStorage);
  v55[0] = v14;
  v55[1] = a3;
  v55[3] = v46;
  swift_unknownObjectWeakInit();
  v55[4] = v10;
  v55[5] = 0;
  v55[6] = 0;
  v55[7] = v29;
  v56 = v7 & 1;
  v57 = 0;
  if (qword_100353AA8 != -1)
  {
    goto LABEL_22;
  }

LABEL_11:
  v30 = type metadata accessor for Logger();
  sub_10000F53C(v30, qword_100381E48);
  sub_1000C6118(v55, &v53);
  sub_1000C6118(v55, v52);
  sub_1000C6118(v55, v51);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v10;
    v50 = v34;
    *v33 = 136446978;
    v35 = sub_1000B9A7C();
    v37 = sub_10017C9E8(v35, v36, &v50);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    v38 = v53;
    v39 = v54;

    sub_1000C60E8(&v53);
    v40 = sub_10017C9E8(v38, v39, &v50);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2050;
    v41 = *(v52[4] + 16);
    sub_1000C60E8(v52);
    *(v33 + 24) = v41;
    *(v33 + 32) = 1026;
    LODWORD(v41) = v51[64];
    sub_1000C60E8(v51);
    *(v33 + 34) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] prepareForSend: new send token - %{public}s, texts to compress - %{public}ld, linkIsAvailable - %{BOOL,public}d", v33, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000C60E8(v51);
    sub_1000C60E8(v52);

    sub_1000C60E8(&v53);
  }

  if (*(v4 + 32))
  {
    *(v4 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  sub_1000C6118(v55, &v53);
  swift_beginAccess();
  sub_1000C6F74(&v53, v4 + 152, &qword_10035C098);
  swift_endAccess();
  if (*(v4 + 32))
  {
    *(v4 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  sub_1000C2AD0(v14, a3);

  sub_1000C60E8(v55);
  return v14;
}

void sub_1000B90C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v37[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  swift_beginAccess();
  sub_10003F3D8(v3 + 48, v38);
  if (!v40)
  {
    sub_10003F434(v38);
    goto LABEL_14;
  }

  sub_1000C6118(&v39, v37);
  sub_10003F434(v38);
  v12 = v37[0];
  v11 = v37[1];

  sub_1000C60E8(v37);
  if (v12 == a1 && v11 == a2)
  {

    goto LABEL_8;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
LABEL_14:
    if (qword_100353AA8 == -1)
    {
LABEL_15:
      v23 = type metadata accessor for Logger();
      sub_10000F53C(v23, qword_100381E48);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v16, v17))
      {
LABEL_18:

        return;
      }

      v18 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v18 = 136446466;
      v24 = sub_1000B9A7C();
      v26 = sub_10017C9E8(v24, v25, v38);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_10017C9E8(a1, a2, v38);
      v22 = "[%{public}s] mandatoryWaitBeforeSendHasBeenObserved: for expired send token %{public}s";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v16, v17, v22, v18, 0x16u);
      swift_arrayDestroy();

      goto LABEL_18;
    }

LABEL_33:
    swift_once();
    goto LABEL_15;
  }

LABEL_8:
  sub_10003F3D8(v3 + 48, v38);
  if (v40)
  {
    v14 = v41;
    sub_10003F434(v38);
    if (v14 == 1)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000F53C(v15, qword_100381E48);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_18;
      }

      v18 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v18 = 136446466;
      v19 = sub_1000B9A7C();
      v21 = sub_10017C9E8(v19, v20, v38);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_10017C9E8(a1, a2, v38);
      v22 = "[%{public}s] mandatoryWaitBeforeSendHasBeenObserved: already reported for token %{public}s";
      goto LABEL_17;
    }
  }

  else
  {
    sub_10003F434(v38);
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000F53C(v27, qword_100381E48);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = sub_1000B9A7C();
    v33 = sub_10017C9E8(v31, v32, v38);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_10017C9E8(a1, a2, v38);
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] mandatoryWaitBeforeSendHasBeenObserved: for token %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + 32))
  {
    *(v3 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v35 = sub_1000B9A08();
  if (*(v34 + 112))
  {
    *(v34 + 169) = 1;
  }

  (v35)(v38, 0);
  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1000B97A0(unsigned __int8 a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_37;
  }

  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v4 = *(Strong[9] + 152);
        if (v4 != 1)
        {

          swift_unknownObjectRelease();
          if (!v4)
          {
            return v4 & 1;
          }

          goto LABEL_46;
        }

LABEL_36:
        swift_unknownObjectRelease();
        goto LABEL_37;
      }

      v6 = *(Strong[8] + 32);
      if (!*(v6 + 64))
      {
        goto LABEL_36;
      }

      v7 = *(v6 + 80);
      v8 = 0;
    }

    else
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v5 = sub_10017B194();
          goto LABEL_20;
        }

        v13 = Strong[14];
        if (*(v13 + 248) != 3 && (*(v13 + 232) & 1) == 0 && *(v13 + 224) == 1)
        {
          LODWORD(v4) = byte_100361588;
          swift_unknownObjectRelease();
          LOBYTE(v4) = v4 != 2 && (v4 & 1) == 0;
          return v4 & 1;
        }

        goto LABEL_36;
      }

      v9 = *(Strong[8] + 32);
      if (!*(v9 + 64))
      {
        goto LABEL_36;
      }

      v7 = *(v9 + 80);
      v8 = 1;
    }

    v5 = sub_100071A54(v8, v7);
    goto LABEL_20;
  }

  if (a1 > 7u)
  {
    if (a1 != 8)
    {
      if (a1 != 9)
      {
        if ((*(*(v1 + 344) + 32) & 1) == 0)
        {
          v20 = *(Strong[9] + 128);
          swift_unknownObjectRelease();
          LOBYTE(v4) = (v20 & 0x100) == 0 && v20 != 3;
          return v4 & 1;
        }

        v16 = Strong[14];
        v17 = *(v16 + 248);
        v18 = *(v16 + 249);
        swift_unknownObjectRelease();
        if (v17 != 3 && (v18 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_37:
        LOBYTE(v4) = 0;
        return v4 & 1;
      }

      v5 = sub_10017B278();
LABEL_20:
      v10 = v5;
      swift_unknownObjectRelease();
      return v10 & 1;
    }

    if (*(Strong[14] + 160))
    {
      v4 = *(Strong[14] + 160);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    swift_unknownObjectRelease();
LABEL_46:
    v19 = v4[2];

    LOBYTE(v4) = v19 != 0;
    return v4 & 1;
  }

  if (a1 == 5)
  {
    v12 = Strong[9];
    if (*(v12 + 128) != 3 && (*(v12 + 112) & 1) == 0 && *(v12 + 104) == 8)
    {
      LOBYTE(v4) = byte_100361588;
      swift_unknownObjectRelease();
      return v4 & 1;
    }

    goto LABEL_36;
  }

  if (a1 != 6)
  {
    v14 = Strong[14];
    LOBYTE(v4) = *(v14 + 200);
    v15 = *(v14 + 248);
    swift_unknownObjectRelease();
    if (v15 != 3)
    {
      return v4 & 1;
    }

LABEL_40:
    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  LODWORD(v4) = *(Strong[14] + 248);
  swift_unknownObjectRelease();
  LOBYTE(v4) = v4 == 2;
  return v4 & 1;
}

dispatch_semaphore_t sub_1000B9A58()
{
  result = dispatch_semaphore_create(1);
  qword_10035BCB8 = result;
  return result;
}

uint64_t sub_1000B9A7C()
{
  v1 = 69;
  if (*(*(v0 + 344) + 32))
  {
    v1 = 82;
  }

  v8 = v1;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

uint64_t sub_1000B9B50()
{
  result = swift_beginAccess();
  v2 = *(v0 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + v3 + 31);
    if (v4 > 2)
    {
      return 1;
    }

    if (v4 < 2)
    {
      return 0;
    }

    return v3 != 1 || *(*(v0 + 48) + 16) != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B9BD0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  if (!*(v3 + 16))
  {
    v5 = 0;
LABEL_6:
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  v4 = *(v3 + 32);
  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = *(v1 + 128);
  if (!v5)
  {
    goto LABEL_6;
  }

  LOBYTE(v4) = 2;
LABEL_8:
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v5;
}

char *sub_1000B9C60()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v35 = v2 + 32;

    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    v33 = v3;
    v34 = v2;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v7 = *(v35 + v4);
      if (v7 != 2)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10017BAEC(0, *(v5 + 2) + 1, 1, v5);
        }

        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v5 = sub_10017BAEC((v15 > 1), v16 + 1, 1, v5);
        }

        *(v5 + 2) = v16 + 1;
        v6 = &v5[40 * v16];
        *(v6 + 4) = v1;
        v6[40] = v7;
        *(v6 + 8) = 0;
        *(v6 + 6) = 0;
        goto LABEL_4;
      }

      v8 = *(v1 + 120);
      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (v9)
        {
LABEL_10:
          if (v9 < 1)
          {
            goto LABEL_45;
          }

          v10 = 0;
          do
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v11 = *(v8 + 8 * v10 + 32);
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_10017BAEC(0, *(v5 + 2) + 1, 1, v5);
            }

            v13 = *(v5 + 2);
            v12 = *(v5 + 3);
            if (v13 >= v12 >> 1)
            {
              v5 = sub_10017BAEC((v12 > 1), v13 + 1, 1, v5);
            }

            *(v5 + 2) = v13 + 1;
            v14 = &v5[40 * v13];
            *(v14 + 4) = v1;
            ++v10;
            v14[40] = 2;
            *(v14 + 7) = 0;
            *(v14 + 8) = 0;
            *(v14 + 6) = v11;
          }

          while (v9 != v10);

          v3 = v33;
          v2 = v34;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_10;
        }
      }

      v17 = *(v1 + 136);
      if (!v17)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10017BAEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      if (v19 >= v18 >> 1)
      {
        v5 = sub_10017BAEC((v18 > 1), v19 + 1, 1, v5);
      }

      *(v5 + 2) = v19 + 1;
      v6 = &v5[40 * v19];
      *(v6 + 4) = v1;
      v6[40] = 2;
      *(v6 + 8) = 0;
      *(v6 + 6) = v17;
LABEL_4:
      *(v6 + 7) = 0;
LABEL_5:
      if (++v4 == v3)
      {

        v20 = *(v5 + 2);
        if (v20)
        {
          goto LABEL_36;
        }

        return v5;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage[2];
  if (v20)
  {
LABEL_36:
    v2 = *(v5 + 6);

    sub_1000C70B0(v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v5;
    if (!isUniquelyReferenced_nonNull_native || (v20 - 1) > *(v5 + 3) >> 1)
    {
      v5 = sub_10017BAEC(isUniquelyReferenced_nonNull_native, v20, 1, v5);
      v37 = v5;
    }

    sub_10019E638(0, 1, 0);
    if (qword_100353AA8 != -1)
    {
LABEL_46:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F53C(v22, qword_100381E48);

    sub_1000C70B0(v2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    sub_1000C70F4(v2);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v25 = 136446467;
      v26 = sub_1000B9A7C();
      v28 = sub_10017C9E8(v26, v27, &v36);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2081;

      sub_1000C70B0(v2);
      v29 = String.init<A>(describing:)();
      v31 = sub_10017C9E8(v29, v30, &v36);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] buildNavigationPath: dropping first page: %{private}s", v25, 0x16u);
      swift_arrayDestroy();

      sub_1000C70F4(v2);
    }

    else
    {

      sub_1000C70F4(v2);
    }
  }

  return v5;
}

BOOL sub_1000BA1E4()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2 >= 2 && (v3 = v1 + v2, *(v3 + 30) == 3))
  {
    return *(v3 + 31) == 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA248()
{
  swift_beginAccess();
  sub_10003F3D8(v0 + 48, v4);
  if (v5[1])
  {
    sub_1000C6118(v5, &v3);
    sub_10003F434(v4);
    v1 = v3;

    sub_1000C60E8(&v3);
  }

  else
  {
    sub_10003F434(v4);
    return 0;
  }

  return v1;
}

void sub_1000BA33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v5 = sub_100255B2C(_swiftEmptyArrayStorage);
  v6 = sub_100255C30(_swiftEmptyArrayStorage);
  v7 = sub_100255D28(_swiftEmptyArrayStorage);
  v8 = sub_100255E44(_swiftEmptyArrayStorage);
  v9 = sub_100255F44(_swiftEmptyArrayStorage);
  v10 = type metadata accessor for QuestionnaireState.DefaultTextEncoder();
  v11 = swift_allocObject();
  v11[2] = 63;
  v11[3] = 0xE100000000000000;
  v11[4] = v9;
  *(v3 + 104) = v10;
  *(v3 + 112) = &off_10032D928;
  *(v3 + 72) = v8;
  *(v3 + 80) = v11;
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  *(v3 + 64) = v7;
  *(v3 + 120) = _swiftEmptyArrayStorage;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = &off_100321D70;
  sub_1000C6B00(v14, v3 + 152);
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 328) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 336) = 2;
  if (qword_1003539D8 != -1)
  {
    swift_once();
  }

  OS_dispatch_semaphore.wait()();
  v12 = qword_10035BCB0;
  if (qword_10035BCB0 == -1)
  {
    __break(1u);
  }

  else
  {
    ++qword_10035BCB0;
    OS_dispatch_semaphore.signal()();
    *(v3 + 344) = a1;
    *(v3 + 352) = v12;
    *(v3 + 328) = a3;
    swift_unknownObjectWeakAssign();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    sub_1000040A8(&unk_100365610);
    swift_allocObject();

    *(v3 + 16) = PassthroughSubject.init()();
    swift_allocObject();
    *(v3 + 24) = PassthroughSubject.init()();

    sub_1000BA564(0);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000BA564(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  if (qword_100353AA8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    v5 = sub_10000F53C(v4, qword_100381E48);

    v65 = v5;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v2;
    v63 = v3;
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v72 = v11;
      *v10 = 136446466;
      v12 = sub_1000B9A7C();
      v14 = sub_10017C9E8(v12, v13, &v72);

      *(v10 + 4) = v14;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] State reset(onBackToFirstPage: %{BOOL}d)", v10, 0x12u);
      sub_100008964(v11);
    }

    v87 = 0;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0;
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
    v15 = sub_100255B2C(_swiftEmptyArrayStorage);
    v16 = sub_100255C30(_swiftEmptyArrayStorage);
    v17 = sub_100255D28(_swiftEmptyArrayStorage);
    v18 = sub_100255E44(_swiftEmptyArrayStorage);
    v19 = sub_100255F44(_swiftEmptyArrayStorage);
    v3 = type metadata accessor for QuestionnaireState.DefaultTextEncoder();
    v20 = swift_allocObject();
    v20[2] = 63;
    v20[3] = 0xE100000000000000;
    v20[4] = v19;
    v66 = v3;
    v77 = v3;
    v78 = &off_10032D928;
    v75 = v18;
    v76 = v20;
    v72 = v15;
    v73 = v16;
    v74 = v17;
    v79 = _swiftEmptyArrayStorage;
    v80 = 0;
    v81 = 0;
    v82 = &off_100321AF0;
    v91 = 0;
    v95 = 0;
    swift_beginAccess();
    sub_1000C7078(&v72, v9 + 48);
    swift_endAccess();
    v21 = *(v9 + 344);
    v22 = *(v21 + 96);
    v23 = v9;
    if (!(v22 >> 62))
    {
      v2 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        break;
      }

      goto LABEL_6;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      break;
    }

LABEL_6:
    v62 = v21;
    v24 = 0;
    v67 = v22 & 0xFFFFFFFFFFFFFF8;
    v68 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v68)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        goto LABEL_15;
      }

      if (v24 >= *(v67 + 16))
      {
        goto LABEL_23;
      }

      v3 = *(v22 + 8 * v24 + 32);

      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

LABEL_15:
      v26 = sub_10003F3D8(v23 + 48, &v72);
      v71[0] = v3;
      __chkstk_darwin(v26);
      v61[2] = v71;
      if (sub_1000FA6D4(sub_1000C7280, v61, v27) & 1) != 0 && *(v72 + 16) && (sub_1001921F0(v3), (v28))
      {

        sub_10003F434(&v72);
      }

      else
      {
        v29 = v24;
        sub_10003F434(&v72);
        v30 = *(v3 + 48);
        v31 = *(*v30 + 80);
        v69 = *v30 + 80;
        v70 = v31;

        v32 = v70(v23);

        if (v32)
        {
          goto LABEL_21;
        }

        v24 = v29;
      }

      ++v24;
      if (v25 == v2)
      {
        v3 = 0;
LABEL_21:
        v21 = v62;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v3 = 0;
LABEL_27:
  v33 = *(v23 + 336);
  if (v33 == 2)
  {
    v34 = &off_100321B18;
  }

  else
  {
    v35 = *(v21 + 32) ^ v33;
    v36 = &off_100321B90;
    if (v63)
    {
      v36 = &off_100321B68;
    }

    if (v35)
    {
      v34 = &off_100321B40;
    }

    else
    {
      v34 = v36;
    }
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v64 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v40 = 136446723;
    v41 = sub_1000B9A7C();
    v43 = sub_10017C9E8(v41, v42, v71);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2081;
    if (v3)
    {
      v44 = *(v3 + 16);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v72 = v44;
    v73 = v45;
    sub_1000040A8(&qword_1003566A0);
    v46 = String.init<A>(describing:)();
    v48 = sub_10017C9E8(v46, v47, v71);

    *(v40 + 14) = v48;
    *(v40 + 22) = 2082;
    v49 = Array.description.getter();
    v51 = sub_10017C9E8(v49, v50, v71);

    *(v40 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] First question: %{private}s, initial stage history: %{public}s", v40, 0x20u);
    swift_arrayDestroy();
  }

  v87 = 0;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v92 = 0u;
  v93 = 0u;
  v94 = 0;

  v52 = sub_100255B2C(_swiftEmptyArrayStorage);
  v53 = sub_100255C30(_swiftEmptyArrayStorage);
  v54 = sub_100255D28(_swiftEmptyArrayStorage);
  v55 = sub_100255E44(_swiftEmptyArrayStorage);
  v56 = sub_100255F44(_swiftEmptyArrayStorage);
  v57 = v66;
  v58 = swift_allocObject();
  v58[2] = 63;
  v58[3] = 0xE100000000000000;
  v58[4] = v56;
  v75 = v55;
  v76 = v58;
  v72 = v52;
  v73 = v53;
  v74 = v54;
  v77 = v57;
  v78 = &off_10032D928;
  v79 = _swiftEmptyArrayStorage;
  v80 = v3;
  v81 = v3;
  v82 = v34;
  v91 = 0;
  v95 = 0;
  v59 = v64;
  swift_beginAccess();
  sub_1000C7078(&v72, v59 + 48);
  return swift_endAccess();
}

void sub_1000BAC9C()
{
  if (sub_1000BE580(1u, 2))
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000F53C(v1, qword_100381E48);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19[0] = v5;
      *v4 = 136446210;
      v6 = sub_1000B9A7C();
      v8 = sub_10017C9E8(v6, v7, v19);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Starting", v4, 0xCu);
      sub_100008964(v5);
    }

    swift_beginAccess();
    if (*(v0 + 136))
    {
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136446467;
      v12 = sub_1000B9A7C();
      v14 = sub_10017C9E8(v12, v13, &v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2081;
      sub_1000040A8(&qword_1003566A0);
      v15 = String.init<A>(describing:)();
      v17 = sub_10017C9E8(v15, v16, &v18);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Current question: %{private}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1000BAF8C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 32 + v3 - 1);
    if (v4 == 1)
    {
      return 1;
    }

    else
    {
      v5 = v3 == 2 && v4 == 3;
      if (v5 && *(v2 + 32) == 1 && *(v2 + 33) == 3)
      {
        v6 = *(sub_1000B9C60() + 2);

        return v6 == 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000BB030(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 336);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381E48);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = sub_1000B9A7C();
    v10 = sub_10017C9E8(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_1000040A8(&qword_10035C0D8);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v17);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v17);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] invokedFromScope changed from: %s to %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  *(v1 + 336) = v2;
  result = sub_1000B9B50();
  if ((result & 1) == 0)
  {
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    result = sub_1000BA564(0);
    if (*(v1 + 32))
    {
      *(v1 + 41) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      return Subject<>.send()();
    }
  }

  return result;
}

uint64_t sub_1000BB344(unint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v160 = a3;
  v8 = swift_beginAccess();
  v9 = *(v5 + 144);
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_56;
  }

  LODWORD(v4) = *(v9 + v10 + 31);
  if (v4 != 2)
  {
    if (qword_100353AA8 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_9;
  }

  v159 = a2;
  v11 = *(v5 + 120);
  v163[0] = a1;
  __chkstk_darwin(v8);
  v156 = v163;

  v12 = sub_1000FA6D4(sub_1000C7058, v155, v11);

  if (v12)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F53C(v13, qword_100381E48);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v16 = 136446467;
      v17 = sub_1000B9A7C();
      v19 = sub_10017C9E8(v17, v18, v163);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2081;
      *(v16 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v163);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Question %{private}s is already recorded", v16, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v162 = v5;
  v157 = a1;
  v30 = v159;
  if (v159)
  {
    v31 = *(a1 + 112);
    if (v31)
    {
      v32 = *(v159 + 16);
      v33 = *(v159 + 24);
      v163[0] = v32;
      v163[1] = v33;
      __chkstk_darwin(v159);
      v156 = v163;

      v34 = sub_1000FA628(sub_10001D8F0, v155, v31);

      if (v34)
      {
        v5 = v162;
        v30 = v159;
      }

      else
      {
        if (qword_100353AA8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000F53C(v46, qword_100381E48);
        v47 = v159;

        v48 = v162;

        v30 = v47;
        v4 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v4, v49))
        {
          v50 = swift_slowAlloc();
          LODWORD(v158) = v49;
          v51 = v50;
          v161 = swift_slowAlloc();
          v163[0] = v161;
          *v51 = 136446723;
          v52 = sub_1000B9A7C();
          v54 = sub_10017C9E8(v52, v53, v163);

          *(v51 + 4) = v54;
          a1 = v157;
          *(v51 + 12) = 2081;
          *(v51 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v163);
          *(v51 + 22) = 2081;

          v55 = sub_10017C9E8(v32, v33, v163);

          *(v51 + 24) = v55;
          v30 = v159;
          _os_log_impl(&_mh_execute_header, v4, v158, "[%{public}s] Question %{private}s optionsOrder must contain %{private}s", v51, 0x20u);
          swift_arrayDestroy();
        }

        v5 = v48;
      }
    }

    else
    {
      v30 = v159;
    }

    if (v160)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000F53C(v56, qword_100381E48);
      v57 = v159;

      v30 = v57;
      v58 = v5;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v4 = a1;
        v61 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v163[0] = v161;
        *v61 = 136446979;
        v62 = sub_1000B9A7C();
        v64 = sub_10017C9E8(v62, v63, v163);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2081;
        *(v61 + 14) = sub_10017C9E8(*(v4 + 16), *(v4 + 24), v163);
        *(v61 + 22) = 2081;
        v65 = *(v159 + 16);
        v66 = *(v159 + 24);

        v67 = sub_10017C9E8(v65, v66, v163);

        *(v61 + 24) = v67;
        *(v61 + 32) = 2080;
        LOBYTE(v164) = v160;
        v68 = String.init<A>(describing:)();
        v70 = sub_10017C9E8(v68, v69, v163);
        v30 = v159;

        *(v61 + 34) = v70;
        _os_log_impl(&_mh_execute_header, v59, v60, "[%{public}s] Question %{private}s recorded with option %{private}s, but the provided choice is %s (expected to be .answered)", v61, 0x2Au);
        LOBYTE(v4) = v161;
        swift_arrayDestroy();
      }

      v5 = v58;
    }

    else
    {
    }
  }

  else if (!v160)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000F53C(v35, qword_100381E48);

    v36 = v5;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v4 = a1;
      v39 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v163[0] = v161;
      *v39 = 136446723;
      v40 = sub_1000B9A7C();
      v42 = sub_10017C9E8(v40, v41, v163);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_10017C9E8(*(v4 + 16), *(v4 + 24), v163);
      *(v39 + 22) = 2080;
      LOBYTE(v164) = 0;
      v43 = String.init<A>(describing:)();
      v45 = sub_10017C9E8(v43, v44, v163);

      *(v39 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Question %{private}s recorded with nil option, but the provided choice is %s", v39, 0x20u);
      swift_arrayDestroy();
    }

    v5 = v36;
    v30 = v159;
  }

  v71 = *(v5 + 32);
  v72 = __CFADD__(v71, 1);
  v73 = v71 + 1;
  if (v72)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 32) = v73;
    *(v5 + 40) = 1;
    swift_beginAccess();

    v4 = v157;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = *(v5 + 48);
    *(v5 + 48) = 0x8000000000000000;
    sub_100188C58(v160, v30, v4, isUniquelyReferenced_nonNull_native);

    *(v5 + 48) = v164;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v5 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v5 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_38;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_38:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v75 = *(*(v5 + 344) + 96);
  if (v75 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (v76)
    {
      goto LABEL_40;
    }

LABEL_61:
    v77 = 0;
LABEL_62:
    v84 = v162;
    *(v162 + 136) = v77;

    sub_1000BFC2C();
    if (*(v84 + 32))
    {
      *(v84 + 41) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    p_base_meths = &ConnectionClosedModel.base_meths;
    v86 = qword_100353AA8;
    if (v160 <= 1u)
    {
      if (v160)
      {
        if (qword_100353AA8 != -1)
        {
          swift_once();
        }

        v118 = type metadata accessor for Logger();
        sub_10000F53C(v118, qword_100381E48);

        v119 = v157;

        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v89, v90))
        {
          goto LABEL_95;
        }

        v91 = swift_slowAlloc();
        v163[0] = swift_slowAlloc();
        *v91 = 136446467;
        v120 = sub_1000B9A7C();
        v122 = sub_10017C9E8(v120, v121, v163);

        *(v91 + 4) = v122;
        v84 = v162;
        *(v91 + 12) = 2081;
        *(v91 + 14) = sub_10017C9E8(*(v119 + 16), *(v119 + 24), v163);
        v95 = "[%{public}s] Recorded free form answer for: %{private}s";
      }

      else
      {
        v96 = v159;
        if (v159)
        {

          if (v86 != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for Logger();
          sub_10000F53C(v97, qword_100381E48);

          v98 = v157;

          v89 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v89, v99))
          {
            v100 = swift_slowAlloc();
            v163[0] = swift_slowAlloc();
            *v100 = 136446723;
            v101 = v96;
            v102 = sub_1000B9A7C();
            v104 = sub_10017C9E8(v102, v103, v163);

            *(v100 + 4) = v104;
            *(v100 + 12) = 2081;
            v105 = *(v101 + 16);
            v106 = *(v101 + 24);

            v107 = sub_10017C9E8(v105, v106, v163);

            *(v100 + 14) = v107;
            *(v100 + 22) = 2081;
            *(v100 + 24) = sub_10017C9E8(*(v98 + 16), *(v98 + 24), v163);
            _os_log_impl(&_mh_execute_header, v89, v99, "[%{public}s] Recorded answer: %{private}s for: %{private}s", v100, 0x20u);
            swift_arrayDestroy();
            v84 = v162;

            p_base_meths = (&ConnectionClosedModel + 32);

LABEL_96:
            v128 = *(v84 + 136);
            if (v128)
            {
              v129 = p_base_meths[341];

              if (v129 != -1)
              {
                swift_once();
              }

              v130 = type metadata accessor for Logger();
              sub_10000F53C(v130, qword_100381E48);

              v131 = Logger.logObject.getter();
              v132 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v131, v132))
              {
                v133 = swift_slowAlloc();
                v163[0] = swift_slowAlloc();
                *v133 = 136446467;
                v134 = sub_1000B9A7C();
                v136 = sub_10017C9E8(v134, v135, v163);

                *(v133 + 4) = v136;
                *(v133 + 12) = 2081;
                v137 = *(v128 + 16);
                v138 = *(v128 + 24);

                v139 = sub_10017C9E8(v137, v138, v163);

                *(v133 + 14) = v139;
                _os_log_impl(&_mh_execute_header, v131, v132, "[%{public}s] Next question: %{private}s", v133, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }
            }

            else
            {
              if (p_base_meths[341] != -1)
              {
                swift_once();
              }

              v140 = type metadata accessor for Logger();
              sub_10000F53C(v140, qword_100381E48);

              v141 = Logger.logObject.getter();
              v142 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v163[0] = v144;
                *v143 = 136446210;
                v145 = sub_1000B9A7C();
                v147 = sub_10017C9E8(v145, v146, v163);

                *(v143 + 4) = v147;
                _os_log_impl(&_mh_execute_header, v141, v142, "[%{public}s] Last question was answered or skipped, questionnaire is done", v143, 0xCu);
                sub_100008964(v144);
              }

              if (sub_1000BE580(2u, 4))
              {

                v148 = Logger.logObject.getter();
                v149 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v148, v149))
                {
                  v150 = swift_slowAlloc();
                  v151 = swift_slowAlloc();
                  v163[0] = v151;
                  *v150 = 136446210;
                  v152 = sub_1000B9A7C();
                  v154 = sub_10017C9E8(v152, v153, v163);

                  *(v150 + 4) = v154;
                  _os_log_impl(&_mh_execute_header, v148, v149, "[%{public}s] Questionnaire is ready to send", v150, 0xCu);
                  sub_100008964(v151);
                }
              }
            }

            sub_10021775C();
            return 1;
          }

LABEL_95:

          goto LABEL_96;
        }

        if (qword_100353AA8 != -1)
        {
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        sub_10000F53C(v123, qword_100381E48);

        v124 = v157;

        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v89, v90))
        {
          goto LABEL_95;
        }

        v91 = swift_slowAlloc();
        v163[0] = swift_slowAlloc();
        *v91 = 136446467;
        v125 = sub_1000B9A7C();
        v127 = sub_10017C9E8(v125, v126, v163);

        *(v91 + 4) = v127;
        v84 = v162;
        *(v91 + 12) = 2081;
        *(v91 + 14) = sub_10017C9E8(*(v124 + 16), *(v124 + 24), v163);
        v95 = "[%{public}s] Recorded nil answer for: %{private}s";
      }
    }

    else if (v160 == 2)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      sub_10000F53C(v108, qword_100381E48);

      v109 = v157;

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v89, v90))
      {
        goto LABEL_95;
      }

      v91 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v91 = 136446467;
      v110 = sub_1000B9A7C();
      v112 = sub_10017C9E8(v110, v111, v163);

      *(v91 + 4) = v112;
      v84 = v162;
      *(v91 + 12) = 2081;
      *(v91 + 14) = sub_10017C9E8(*(v109 + 16), *(v109 + 24), v163);
      v95 = "[%{public}s] Recorded multiple choice answer for: %{private}s";
    }

    else if (v160 == 3)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_10000F53C(v87, qword_100381E48);

      v88 = v157;

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v89, v90))
      {
        goto LABEL_95;
      }

      v91 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v91 = 136446467;
      v92 = sub_1000B9A7C();
      v94 = sub_10017C9E8(v92, v93, v163);

      *(v91 + 4) = v94;
      v84 = v162;
      *(v91 + 12) = 2081;
      *(v91 + 14) = sub_10017C9E8(*(v88 + 16), *(v88 + 24), v163);
      v95 = "[%{public}s] Recorded skip for: %{private}s";
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      sub_10000F53C(v113, qword_100381E48);

      v114 = v157;

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v89, v90))
      {
        goto LABEL_95;
      }

      v91 = swift_slowAlloc();
      v163[0] = swift_slowAlloc();
      *v91 = 136446467;
      v115 = sub_1000B9A7C();
      v117 = sub_10017C9E8(v115, v116, v163);

      *(v91 + 4) = v117;
      v84 = v162;
      *(v91 + 12) = 2081;
      *(v91 + 14) = sub_10017C9E8(*(v114 + 16), *(v114 + 24), v163);
      v95 = "[%{public}s] Recorded built-in for: %{private}s";
    }

    _os_log_impl(&_mh_execute_header, v89, v90, v95, v91, 0x16u);
    swift_arrayDestroy();

    goto LABEL_95;
  }

  v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v76)
  {
    goto LABEL_61;
  }

LABEL_40:
  a1 = 0;
  v161 = v75 & 0xC000000000000001;
  v158 = v75 & 0xFFFFFFFFFFFFFF8;
  while (v161)
  {
    v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v78 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_54;
    }

LABEL_49:
    v79 = sub_10003F3D8(v162 + 48, v163);
    v164 = v77;
    __chkstk_darwin(v79);
    v156 = &v164;
    if (sub_1000FA6D4(sub_1000C7280, v155, v80) & 1) != 0 && *(v163[0] + 16) && (sub_1001921F0(v77), (v81))
    {

      sub_10003F434(v163);
    }

    else
    {
      sub_10003F434(v163);
      v82 = *(v77 + 48);
      v83 = *(*v82 + 80);
      v4 = *v82 + 80;

      LOBYTE(v83) = v83(v162);

      if (v83)
      {
        goto LABEL_62;
      }
    }

    ++a1;
    if (v78 == v76)
    {
      goto LABEL_61;
    }
  }

  if (a1 >= *(v158 + 16))
  {
    goto LABEL_55;
  }

  v77 = *(v75 + 8 * a1 + 32);

  v78 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_9:
  v20 = type metadata accessor for Logger();
  sub_10000F53C(v20, qword_100381E48);

  v14 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v21))
  {
    v22 = swift_slowAlloc();
    v163[0] = swift_slowAlloc();
    *v22 = 136446723;
    v23 = sub_1000B9A7C();
    v25 = sub_10017C9E8(v23, v24, v163);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2081;
    *(v22 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v163);
    *(v22 + 22) = 2082;
    LOBYTE(v164) = v4;
    v26 = String.init<A>(describing:)();
    v28 = sub_10017C9E8(v26, v27, v163);

    *(v22 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v14, v21, "[%{public}s] Requested to record answer for question %{private}s on %{public}s stage, ignoring", v22, 0x20u);
LABEL_11:
    swift_arrayDestroy();
  }

LABEL_12:

  return 0;
}

uint64_t sub_1000BCB4C(unint64_t a1)
{
  if (*(a1 + 32) == 2)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381E48);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v5 = 136446467;
      v6 = sub_1000B9A7C();
      v8 = sub_10017C9E8(v6, v7, &v17);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2081;
      *(v5 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v17);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Recording free form answer for: %{private}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    return sub_1000BB344(a1, 0, 1);
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381E48);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v13 = 136446467;
      v14 = sub_1000B9A7C();
      v16 = sub_10017C9E8(v14, v15, &v17);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2081;
      *(v13 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v17);
      _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] Recording free form answer for non-free-form question: %{private}s, ignoring", v13, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }
}

uint64_t sub_1000BCE78(unint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381E48);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v15 = 136446467;
    v16 = sub_1000B9A7C();
    v18 = sub_10017C9E8(v16, v17, v26);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v26);
    v19 = "[%{public}s] Recording multiple choice answer for non-multiple-choice question: %{private}s, ignoring";
    goto LABEL_18;
  }

  swift_beginAccess();
  if (!*(*(v1 + 56) + 16) || (sub_1001921F0(a1), (v3 & 1) == 0))
  {
    if ((sub_1000C10F8(a1, &_swiftEmptySetSingleton) & 1) == 0)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000F53C(v20, qword_100381E48);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_19;
      }

      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v15 = 136446467;
      v21 = sub_1000B9A7C();
      v23 = sub_10017C9E8(v21, v22, &v25);

      *(v15 + 4) = v23;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v25);
      v19 = "[%{public}s] Failed to update multiple choice selection for question: %{private}s, ignoring recording answer";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v13, v14, v19, v15, 0x16u);
      swift_arrayDestroy();

LABEL_19:

      v11 = 0;
      return v11 & 1;
    }
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381E48);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136446467;
    v8 = sub_1000B9A7C();
    v10 = sub_10017C9E8(v8, v9, &v25);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v25);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Recording multiple choice answer for: %{private}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = sub_1000BB344(a1, 0, 2);
  return v11 & 1;
}

uint64_t sub_1000BD2DC()
{
  swift_beginAccess();
  v2 = *(v0 + 144);
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  v1 = *(v2 + v3 + 31);
  if (v1 >= 3)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000F53C(v21, qword_100381E48);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v24 = 136446466;
      v25 = sub_1000B9A7C();
      v27 = sub_10017C9E8(v25, v26, &v39);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = String.init<A>(describing:)();
      v30 = sub_10017C9E8(v28, v29, &v39);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] User inactivity is ignored on stage %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  if (qword_100353AA8 != -1)
  {
    goto LABEL_22;
  }

LABEL_4:
  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381E48);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = sub_1000B9A7C();
    v10 = sub_10017C9E8(v8, v9, &v39);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v39);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] User inactivity is detected on stage %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (*(*(v0 + 344) + 80) & 1) != 0))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136446210;
      v18 = sub_1000B9A7C();
      v20 = sub_10017C9E8(v18, v19, &v39);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Auto send is not supported by this questionnaire scope", v16, 0xCu);
      sub_100008964(v17);
    }

    return 0;
  }

  if (!sub_1000BE580(v1, 3))
  {
    return 0;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v34 = 136446210;
    v36 = sub_1000B9A7C();
    v38 = sub_10017C9E8(v36, v37, &v39);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}s] Starting auto send countdown", v34, 0xCu);
    sub_100008964(v35);
  }

  return 1;
}

uint64_t sub_1000BD80C()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v1 + v2 + 31) == 2)
  {
    if (v2 != 1)
    {
      return 1;
    }

    v3 = *(v0 + 120);
    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v5 = v4 == 0;
      return !v5;
    }

LABEL_14:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_6;
  }

  v5 = v2 == 1;
  return !v5;
}

BOOL sub_1000BD8A4()
{
  if ((sub_1000BD80C() & 1) == 0)
  {
    if (qword_100353AA8 == -1)
    {
LABEL_11:
      v17 = type metadata accessor for Logger();
      sub_10000F53C(v17, qword_100381E48);

      v1 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v1, v18))
      {
LABEL_14:

        return 0;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v62[0] = v20;
      *v19 = 136446210;
      v21 = sub_1000B9A7C();
      v23 = sub_10017C9E8(v21, v22, v62);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v1, v18, "[%{public}s] Going back requested when canGoBack() == false", v19, 0xCu);
      sub_100008964(v20);

LABEL_13:

      goto LABEL_14;
    }

LABEL_44:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v4 = *(v0 + 144);
  v5 = *(v4 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_44;
  }

  v6 = *(v4 + v5 + 31);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      return sub_1000BEB00();
    }

    if (!sub_1000BEB00())
    {
      return 0;
    }

    v4 = *(v0 + 144);
    v5 = *(v4 + 16);
    if (!v5)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else if (v6 < 2)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381E48);

    v1 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v1, v8))
    {
      goto LABEL_14;
    }

    v2 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v2 = 136446466;
    v9 = sub_1000B9A7C();
    v11 = sub_10017C9E8(v9, v10, v61);

    *(v2 + 4) = v11;
    *(v2 + 6) = 2080;
    v12 = *(v0 + 144);
    v13 = *(v12 + 16);
    if (v13)
    {
      LOBYTE(v60) = *(v12 + v13 + 31);
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, v61);

      *(v2 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v1, v8, "[%{public}s] Not expected to go back while on %s stage", v2, 0x16u);
      swift_arrayDestroy();

      goto LABEL_13;
    }

    goto LABEL_46;
  }

  if (*(v4 + v5 + 31) != 2)
  {
    return 1;
  }

  v1 = (v0 + 120);
  v26 = *(v0 + 120);
  if (v26 >> 62)
  {
LABEL_47:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_48:
    if (!sub_1000BEB00())
    {
      if (qword_100353AA8 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_76;
    }

    v42 = *(v0 + 144);
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = *(v42 + v43 + 31);
      if (v44 != 1)
      {
        if (!v44 && swift_unknownObjectWeakLoadStrong())
        {
          v45 = swift_allocObject();
          swift_weakInit();

          sub_10017AC30(v0, sub_1000C7050, v45);

          swift_unknownObjectRelease();
          return 1;
        }

        return 1;
      }

      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000F53C(v55, qword_100381E48);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v61[0] = v50;
        *v49 = 136446210;
        v56 = sub_1000B9A7C();
        v58 = sub_10017C9E8(v56, v57, v61);

        *(v49 + 4) = v58;
        v54 = "[%{public}s] Got back to introduction, resetting the state";
        goto LABEL_61;
      }

      goto LABEL_62;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
LABEL_55:
    v46 = type metadata accessor for Logger();
    sub_10000F53C(v46, qword_100381E48);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61[0] = v50;
      *v49 = 136446210;
      v51 = sub_1000B9A7C();
      v53 = sub_10017C9E8(v51, v52, v61);

      *(v49 + 4) = v53;
      v54 = "[%{public}s] Going back from the first question and cannot go back a stage, resetting the state";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v47, v48, v54, v49, 0xCu);
      sub_100008964(v50);
    }

LABEL_62:

    if (*(v0 + 32))
    {
      *(v0 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    sub_1000BA564(1);
    if (*(v0 + 32))
    {
      v24 = 1;
      *(v0 + 41) = 1;
      return v24;
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    return 1;
  }

LABEL_24:
  if (*(v0 + 32))
  {
    *(v0 + 40) = 1;
  }

  else
  {
    v2 = &unk_100365610;
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  swift_beginAccess();
  if (!(v1->isa >> 62))
  {
    if (*((v1->isa & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_70;
  }

LABEL_29:
  v27 = sub_1000C6854();
  if (v27)
  {
    goto LABEL_33;
  }

  if (v1->isa >> 62)
  {
    v59 = _CocoaArrayWrapper.endIndex.getter();
    v29 = __OFSUB__(v59, 1);
    v30 = v59 - 1;
    if (!v29)
    {
      goto LABEL_32;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v28 = *((v1->isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    goto LABEL_74;
  }

LABEL_32:
  v27 = sub_1000C67C4(v30);
LABEL_33:
  *(v0 + 136) = v27;
  swift_endAccess();

  sub_1000BFC2C();
  if (*(v0 + 32))
  {
    *(v0 + 41) = 1;
    v31 = *(v0 + 136);
    if (v31)
    {
LABEL_35:
      v3 = *(v31 + 16);
      v2 = *(v31 + 24);

      goto LABEL_38;
    }
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    v31 = *(v0 + 136);
    if (v31)
    {
      goto LABEL_35;
    }
  }

  v3 = 0;
  v2 = 0;
LABEL_38:
  if (qword_100353AA8 != -1)
  {
LABEL_71:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000F53C(v32, qword_100381E48);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v35 = 136446467;
    v36 = sub_1000B9A7C();
    v38 = sub_10017C9E8(v36, v37, &v60);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2081;
    v61[0] = v3;
    v61[1] = v2;
    sub_1000040A8(&qword_1003566A0);
    v39 = String.init<A>(describing:)();
    v41 = sub_10017C9E8(v39, v40, &v60);

    *(v35 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] Back to: %{private}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000BE2FC(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381E48);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446466;
      v9 = sub_1000B9A7C();
      v11 = sub_10017C9E8(v9, v10, &v12);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1024;
      *(v7 + 14) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Transitioning to previous questionnaire, success: %{BOOL}d", v7, 0x12u);
      sub_100008964(v8);
    }

    if ((a1 & 1) == 0)
    {
      if (*(v3 + 32))
      {
        *(v3 + 40) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      sub_1000BA564(1);
      if (*(v3 + 32))
      {
        *(v3 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }
    }
  }

  return result;
}

BOOL sub_1000BE580(unsigned __int8 a1, char a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = *(v2 + 144);
  v8 = *(v7 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(v7 + v8 + 31);
  if (v3 == a1)
  {
    if (qword_100353AA8 == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      sub_10000F53C(v9, qword_100381E48);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v12 = 136446722;
        v13 = sub_1000B9A7C();
        v46 = v3;
        v15 = sub_10017C9E8(v13, v14, v47);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2082;
        v48 = a1;
        v16 = String.init<A>(describing:)();
        v18 = sub_10017C9E8(v16, v17, v47);

        *(v12 + 14) = v18;
        *(v12 + 22) = 2082;
        v48 = a2;
        v19 = String.init<A>(describing:)();
        v21 = sub_10017C9E8(v19, v20, v47);

        *(v12 + 24) = v21;
        v3 = v46;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Transitioned from stage %{public}s to %{public}s", v12, 0x20u);
        swift_arrayDestroy();
      }

      if (*(v2 + 32))
      {
        *(v2 + 40) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      swift_beginAccess();
      v41 = *(v2 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 144) = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_10017B64C(0, *(v41 + 2) + 1, 1, v41);
        *(v4 + 144) = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v41 = sub_10017B64C((v43 > 1), v44 + 1, 1, v41);
      }

      *(v41 + 2) = v44 + 1;
      v41[v44 + 32] = a2;
      *(v4 + 144) = v41;
      swift_endAccess();
      sub_1000BEFBC();
      sub_1000BFC2C();
      if (*(v4 + 32))
      {
        *(v4 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      return v3 == a1;
    }

LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381E48);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v25 = 136446978;
    v26 = sub_1000B9A7C();
    v28 = sub_10017C9E8(v26, v27, v47);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    v48 = a1;
    v29 = String.init<A>(describing:)();
    v31 = a2;
    v32 = a1;
    v33 = v3;
    v34 = sub_10017C9E8(v29, v30, v47);

    *(v25 + 14) = v34;
    v3 = v33;
    a1 = v32;
    *(v25 + 22) = 2082;
    v48 = v31;
    v35 = String.init<A>(describing:)();
    v37 = sub_10017C9E8(v35, v36, v47);

    *(v25 + 24) = v37;
    *(v25 + 32) = 2082;
    v48 = v3;
    v38 = String.init<A>(describing:)();
    v40 = sub_10017C9E8(v38, v39, v47);

    *(v25 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Requested transition from stage %{public}s to %{public}s while on stage %{public}s, ignored", v25, 0x2Au);
    swift_arrayDestroy();
  }

  return v3 == a1;
}

BOOL sub_1000BEB00()
{
  v3 = v0;
  swift_beginAccess();
  v4 = *(v0 + 144);
  v5 = *(v4 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_6;
  }

  v1 = *(v4 + v5 + 31);
  if (v5 != 1)
  {
    if (*(v0 + 32))
    {
      *(v0 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    swift_beginAccess();
    v16 = *(v0 + 144);
    if (*(v16 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v17 = *(v16 + 2);
        if (v17)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    v16 = sub_10019CFD8(v16);
    v17 = *(v16 + 2);
    if (v17)
    {
LABEL_12:
      *(v16 + 2) = v17 - 1;
      *(v3 + 144) = v16;
      v18 = swift_endAccess();
      sub_1000BEFBC(v18);
      sub_1000BFC2C();
      if (*(v3 + 32))
      {
        *(v3 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      v19 = *(v3 + 144);
      v20 = *(v19 + 16);
      if (v20)
      {
        v2 = *(v19 + v20 + 31);
        if (qword_100353AA8 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
LABEL_17:
      v21 = type metadata accessor for Logger();
      sub_10000F53C(v21, qword_100381E48);

      v7 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v22))
      {
        v23 = swift_slowAlloc();
        v34[0] = swift_slowAlloc();
        *v23 = 136446722;
        v24 = sub_1000B9A7C();
        v26 = sub_10017C9E8(v24, v25, v34);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2082;
        v35 = v1;
        v27 = String.init<A>(describing:)();
        v29 = sub_10017C9E8(v27, v28, v34);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2082;
        v35 = v2;
        v30 = String.init<A>(describing:)();
        v32 = sub_10017C9E8(v30, v31, v34);

        *(v23 + 24) = v32;
        _os_log_impl(&_mh_execute_header, v7, v22, "[%{public}s] Went back from from stage %{public}s to %{public}s", v23, 0x20u);
        goto LABEL_19;
      }

      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (qword_100353AA8 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E48);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_1000B9A7C();
    v12 = sub_10017C9E8(v10, v11, v34);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v35 = v1;
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, v34);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Requested going back from stage %{public}s, ignored", v9, 0x16u);
LABEL_19:
    swift_arrayDestroy();
  }

LABEL_20:

  return v5 != 1;
}

void sub_1000BEFBC()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v0 + 224;
  if (*(v1 + v2 + 31) == 3)
  {
    sub_100006C20(v3, aBlock, &qword_10035C0C8);
    v4 = v36;
    sub_100008FA0(aBlock, &qword_10035C0C8);
    if (v4)
    {
      return;
    }

    if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), v5 = *(v0 + 344), (*(v5 + 80) & 1) != 0))
    {
      if (qword_100353AA8 == -1)
      {
LABEL_7:
        v6 = type metadata accessor for Logger();
        sub_10000F53C(v6, qword_100381E48);

        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          aBlock[0] = v10;
          *v9 = 136446210;
          v11 = sub_1000B9A7C();
          v13 = sub_10017C9E8(v11, v12, aBlock);

          *(v9 + 4) = v13;
          _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Auto send is not supported by this questionnaire scope", v9, 0xCu);
          sub_100008964(v10);
        }

        return;
      }

LABEL_22:
      swift_once();
      goto LABEL_7;
    }

    v15 = *(v5 + 64);
    v16 = v0;
    v17 = sub_1000B9A7C();
    v19 = v18;
    swift_unknownObjectWeakLoadStrong();
    v20 = type metadata accessor for QuestionnaireStateChimingCountdown();
    v21 = swift_allocObject();
    sub_1000040A8(&unk_100365610);
    swift_allocObject();
    v21[2] = PassthroughSubject.init()();
    swift_allocObject();
    v22 = PassthroughSubject.init()();
    v21[8] = v15;
    v21[9] = 0;
    v21[3] = v22;
    v21[4] = v17;
    v21[5] = v19;
    v21[6] = 0x646E65736F747561;
    v21[7] = 0xE800000000000000;
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    swift_weakInit();
    v37 = sub_1000C72B0;
    v38 = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    v36 = &unk_10032DAF0;
    v25 = _Block_copy(aBlock);

    v26 = [v23 scheduledTimerWithTimeInterval:1 repeats:v25 block:1.0];
    swift_unknownObjectRelease();
    _Block_release(v25);
    v27 = v21[9];
    v21[9] = v26;

    v36 = v20;
    v37 = &off_10033AA70;
    aBlock[0] = v21;
    swift_beginAccess();

    v28 = v16;
    sub_1000C6F74(aBlock, v16 + 224, &qword_10035C0C8);
    swift_endAccess();
    sub_10000F574();
    v29 = static OS_dispatch_queue.main.getter();
    sub_1000040A8(&qword_10035C0D0);
    v30 = swift_allocObject();
    swift_weakInit();
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {

      v31 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {

      v31 = &_swiftEmptySetSingleton;
    }

    *(v30 + 32) = v31;
    swift_weakAssign();
    *(v30 + 24) = v29;

    sub_1001AD5B0(v32, sub_1000C7048, v28);

    v33 = v21[3];

    v34 = sub_1001AD5B0(v33, sub_1000BFA94, 0);

    *(v28 + 264) = v34;
  }

  else
  {
    sub_100006C20(v3, aBlock, &qword_10035C0C8);
    v14 = v36;
    sub_100008FA0(aBlock, &qword_10035C0C8);
    if (v14)
    {
      if (*(v0 + 32))
      {
        *(v0 + 40) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      swift_beginAccess();
      *(v0 + 264) = 0;
      sub_100008FA0(v0 + 224, &qword_10035C0C8);
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0;
      swift_endAccess();

      if (*(v0 + 32))
      {
        *(v0 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }
    }
  }
}

void sub_1000BF64C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381E48);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v8 = 136446210;
    v10 = sub_1000B9A7C();
    v12 = sub_10017C9E8(v10, v11, v34);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] Auto send countdown timer ticked", v8, 0xCu);
    sub_100008964(v9);
  }

  if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (*(a3[43] + 80) & 1) != 0))
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136446210;
      v17 = sub_1000B9A7C();
      v19 = sub_10017C9E8(v17, v18, v34);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Auto send is no longer supported by this questionnaire scope", v15, 0xCu);
      sub_100008964(v16);
    }

    swift_beginAccess();
    v20 = a3[18];
    v21 = *(v20 + 16);
    if (v21)
    {
      if (*(v20 + v21 + 31) != 3 || (sub_1000BD80C() & 1) == 0)
      {
        return;
      }

      v22 = a3[4];
      v23 = __CFADD__(v22, 1);
      v24 = v22 + 1;
      if (!v23)
      {
        a3[4] = v24;
        v25 = sub_1000BD8A4();
        sub_10021775C();
        if (!v25)
        {

          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v33 = v29;
            *v28 = 136446210;
            v30 = sub_1000B9A7C();
            v32 = sub_10017C9E8(v30, v31, &v33);

            *(v28 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] Failed trying to go back", v28, 0xCu);
            sub_100008964(v29);
          }
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (*(a1 + 32))
  {
    *(a1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    if (!*(a1 + 32))
    {
      sub_1000040A8(&unk_100365610);
      Subject<>.send()();
      return;
    }
  }

  *(a1 + 41) = 1;
}

void sub_1000BFA94()
{
  if (sub_1000BE580(3, 4))
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000F53C(v0, qword_100381E48);

    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v8 = v3;
      *v2 = 136446210;
      v4 = sub_1000B9A7C();
      v6 = sub_10017C9E8(v4, v5, &v8);

      *(v2 + 4) = v6;
      _os_log_impl(&_mh_execute_header, oslog, v1, "[%{public}s] Questionnaire is ready to (auto) send", v2, 0xCu);
      sub_100008964(v3);
    }

    else
    {
    }
  }
}

uint64_t sub_1000BFC2C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 144);
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  if (*(v2 + v3 + 31) == 2)
  {
    v4 = *(v0 + 136);
    if (v4)
    {
      if (*(v4 + 64) == 7)
      {
        v5 = *(v4 + 16);
        v6 = *(v4 + 24);
        sub_100006C20(v1 + 272, aBlock, &qword_10035C0C8);
        if (v36)
        {
          return sub_100008FA0(aBlock, &qword_10035C0C8);
        }

        v34 = v5;

        sub_100008FA0(aBlock, &qword_10035C0C8);
        v17 = sub_1000B9A7C();
        v19 = v18;
        swift_unknownObjectWeakLoadStrong();
        v20 = type metadata accessor for QuestionnaireStateTimerCountdown();
        v21 = swift_allocObject();
        sub_1000040A8(&unk_100365610);
        swift_allocObject();
        *(v21 + 16) = PassthroughSubject.init()();
        swift_allocObject();
        *(v21 + 24) = PassthroughSubject.init()();
        *(v21 + 32) = v17;
        *(v21 + 40) = v19;
        *(v21 + 48) = 0x7972616D6D7573;
        *(v21 + 56) = 0xE700000000000000;
        *(v21 + 64) = xmmword_100281A10;
        v22 = objc_opt_self();
        v23 = swift_allocObject();
        swift_weakInit();
        v37 = sub_1000C6F6C;
        v38 = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10008137C;
        v36 = &unk_10032DAA0;
        v24 = _Block_copy(aBlock);

        v25 = [v22 scheduledTimerWithTimeInterval:1 repeats:v24 block:1.0];
        swift_unknownObjectRelease();
        _Block_release(v24);
        v26 = *(v21 + 72);
        *(v21 + 72) = v25;

        v36 = v20;
        v37 = &off_10033AA70;
        aBlock[0] = v21;
        swift_beginAccess();

        sub_1000C6F74(aBlock, v1 + 272, &qword_10035C0C8);
        swift_endAccess();
        sub_10000F574();
        v27 = static OS_dispatch_queue.main.getter();
        sub_1000040A8(&qword_10035C0D0);
        v28 = swift_allocObject();
        swift_weakInit();
        if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {

          v29 = sub_100233B1C(_swiftEmptyArrayStorage);
        }

        else
        {

          v29 = &_swiftEmptySetSingleton;
        }

        *(v28 + 32) = v29;
        swift_weakAssign();
        *(v28 + 24) = v27;

        sub_1001AD5B0(v30, sub_1000C6FDC, v1);

        v31 = swift_allocObject();
        *(v31 + 16) = v34;
        *(v31 + 24) = v6;

        v33 = sub_1001AD5B0(v32, sub_1000C701C, v31);

        *(v1 + 312) = v33;
      }
    }
  }

  sub_100006C20(v0 + 272, aBlock, &qword_10035C0C8);
  v8 = v36;
  result = sub_100008FA0(aBlock, &qword_10035C0C8);
  if (!v8)
  {
    return result;
  }

  if (qword_100353AA8 != -1)
  {
    goto LABEL_22;
  }

LABEL_9:
  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381E48);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446210;
    v14 = sub_1000B9A7C();
    v16 = sub_10017C9E8(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Not on summary countdown anymore, sropping the state", v12, 0xCu);
    sub_100008964(v13);
  }

  if (*(v0 + 32))
  {
    *(v0 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  swift_beginAccess();
  *(v0 + 312) = 0;
  sub_100008FA0(v0 + 272, &qword_10035C0C8);
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  swift_endAccess();

  if (*(v0 + 32))
  {
    *(v0 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1000C0300(uint64_t a1)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E48);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    v7 = sub_1000B9A7C();
    v9 = sub_10017C9E8(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Summary countdown timer ticked", v5, 0xCu);
    sub_100008964(v6);
  }

  if (*(a1 + 32))
  {
    *(a1 + 40) = 1;
LABEL_8:
    *(a1 + 41) = 1;
    return;
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  if (*(a1 + 32))
  {
    goto LABEL_8;
  }

  sub_1000040A8(&unk_100365610);
  Subject<>.send()();
}

void sub_1000C0504(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E48);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_1000B9A7C();
    v12 = sub_10017C9E8(v10, v11, v44);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10017C9E8(a1, a2, v44);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Summary auto send triggered for %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(*(v2 + 344) + 104);
  if (*(v13 + 16) && (v14 = sub_100186A08(a1, a2), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    swift_beginAccess();
    v19 = *(v3 + 136);
    if (v19 && (v17 == *(v19 + 16) ? (v20 = v18 == *(v19 + 24)) : (v20 = 0), v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      if (sub_1000BB344(v21, 0, 4))
      {
      }

      else
      {

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v35 = 136446467;
          v36 = sub_1000B9A7C();
          v38 = sub_10017C9E8(v36, v37, &v43);

          *(v35 + 4) = v38;
          *(v35 + 12) = 2081;
          v39 = *(v16 + 16);
          v40 = *(v16 + 24);

          v41 = sub_10017C9E8(v39, v40, &v43);

          *(v35 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] Failed to record answer for %{private}s", v35, 0x16u);
          swift_arrayDestroy();
        }
      }
    }

    else
    {

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = sub_1000B9A7C();
        v32 = sub_10017C9E8(v30, v31, &v43);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2082;
        *(v29 + 14) = sub_10017C9E8(a1, a2, &v43);
        _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s] Question %{public}s is not a current question, ignoring", v29, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  else
  {

    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_1000B9A7C();
      v26 = sub_10017C9E8(v24, v25, v44);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_10017C9E8(a1, a2, v44);
      _os_log_impl(&_mh_execute_header, oslog, v22, "[%{public}s] Question %{public}s does not exist, ignoring", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

BOOL sub_1000C0AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 64);
  if (v5 != 8)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381E48);
    sub_100006C20(a2, v29, &qword_1003577F8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v10 = 136446723;
      v11 = sub_1000B9A7C();
      v13 = sub_10017C9E8(v11, v12, v26);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2081;
      *(v10 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v26);
      *(v10 + 22) = 2081;
      sub_100006C20(v29, &v27, &qword_1003577F8);
      sub_1000040A8(&qword_1003577F8);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      sub_100008FA0(v29, &qword_1003577F8);
      v17 = sub_10017C9E8(v14, v16, v26);

      *(v10 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] Recording built-in answer for: %{private}s, opaque data: %{private}s", v10, 0x20u);
      swift_arrayDestroy();
      v5 = v5;

      if (*(v3 + 32))
      {
LABEL_6:
        *(v3 + 40) = 1;
        goto LABEL_14;
      }
    }

    else
    {

      sub_100008FA0(v29, &qword_1003577F8);
      if (*(v2 + 32))
      {
        goto LABEL_6;
      }
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
LABEL_14:
    sub_100006C20(a2, &v27, &qword_1003577F8);
    if (v28)
    {
      sub_1000456C8(&v27, v29);
      sub_100048F80(v29, &v27);
      swift_beginAccess();
      sub_10017FCC4(&v27, v5);
      swift_endAccess();
      sub_100008964(v29);
      if (*(v3 + 32))
      {
LABEL_16:
        *(v3 + 41) = 1;
        return v5 != 8;
      }
    }

    else
    {
      sub_100008FA0(&v27, &qword_1003577F8);
      swift_beginAccess();
      sub_1000C1064(v5, v29);
      sub_100008FA0(v29, &qword_1003577F8);
      swift_endAccess();
      if (*(v3 + 32))
      {
        goto LABEL_16;
      }
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    return v5 != 8;
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F53C(v18, qword_100381E48);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *&v29[0] = swift_slowAlloc();
    *v21 = 136446467;
    v22 = sub_1000B9A7C();
    v24 = sub_10017C9E8(v22, v23, v29);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2081;
    *(v21 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v29);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Recording built-in answer for non-built-in question: %{private}s, ignoring", v21, 0x16u);
    swift_arrayDestroy();
  }

  return v5 != 8;
}

double sub_1000C1064@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001921EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000915EC();
      v9 = v11;
    }

    sub_1000456C8((*(v9 + 56) + 32 * v7), a2);
    sub_1001883F4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000C10F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  if (!v5 || ((v6 = *(a1 + 16), v7 = *(a1 + 24), *(v5 + 16) == v6) ? (v8 = *(v5 + 24) == v7) : (v8 = 0), !v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381E48);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v12 = 136446723;
      v13 = sub_1000B9A7C();
      v15 = sub_10017C9E8(v13, v14, &v43);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v43);
      *(v12 + 22) = 2081;
      v16 = *(v2 + 136);
      if (v16)
      {
        v17 = *(v16 + 16);
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v42[0] = v17;
      v42[1] = v18;
      sub_1000040A8(&qword_1003566A0);
      v26 = String.init<A>(describing:)();
      v28 = sub_10017C9E8(v26, v27, &v43);

      *(v12 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] updateMultipleChoiceSelection: trying to update the value for %{private}s when current question is %{private}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000F53C(v19, qword_100381E48);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v22 = 136446467;
      v23 = sub_1000B9A7C();
      v25 = sub_10017C9E8(v23, v24, v42);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_10017C9E8(v6, v7, v42);
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Attempted to update multiple choice selection for non-multiple-choice question: %{private}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_100189098(a2, a1, isUniquelyReferenced_nonNull_native);

  *(v2 + 56) = v43;
  swift_endAccess();
  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000F53C(v31, qword_100381E48);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v34 = 136446723;
    v35 = sub_1000B9A7C();
    v37 = sub_10017C9E8(v35, v36, v42);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2081;
    *(v34 + 14) = sub_10017C9E8(v6, v7, v42);
    *(v34 + 22) = 2081;
    sub_1000B72BC(a2);
    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10017C9E8(v38, v40, v42);

    *(v34 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}s] Updated multiple choice selection for: %{private}s to %{private}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1000C17AC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 136);
  if (!v8 || ((v9 = *(a1 + 16), v10 = *(a1 + 24), *(v8 + 16) == v9) ? (v11 = *(v8 + 24) == v10) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381E48);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v19 = 136446723;
      v20 = sub_1000B9A7C();
      v22 = sub_10017C9E8(v20, v21, &v74);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2081;
      *(v19 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v74);
      *(v19 + 22) = 2081;
      v23 = *(v3 + 136);
      if (v23)
      {
        v24 = *(v23 + 16);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v73[0] = v24;
      v73[1] = v25;
      sub_1000040A8(&qword_1003566A0);
      v55 = String.init<A>(describing:)();
      v57 = sub_10017C9E8(v55, v56, &v74);

      *(v19 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] updateMultipleChoiceSelection: trying to update the value for %{private}s when current question is %{private}s", v19, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F53C(v26, qword_100381E48);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v29 = 136446467;
      v30 = sub_1000B9A7C();
      v32 = sub_10017C9E8(v30, v31, v73);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2081;
      *(v29 + 14) = sub_10017C9E8(v9, v10, v73);
      _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s] Attempted to update multiple choice selection for non-multiple-choice question: %{private}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v12 = *(v3 + 56);
  if (*(v12 + 16) && (v13 = sub_1001921F0(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    v74 = v15;
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
    v74 = &_swiftEmptySetSingleton;
  }

  v33 = sub_10006E24C(a2, v15);

  if ((v33 ^ a3))
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381E48);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v37 = 136446723;
      v71 = v36;
      v38 = sub_1000B9A7C();
      v40 = sub_10017C9E8(v38, v39, v73);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      if (a3)
      {
        v41 = 0x6E697463656C6553;
      }

      else
      {
        v41 = 0x7463656C65736544;
      }

      if (a3)
      {
        v42 = 0xE900000000000067;
      }

      else
      {
        v42 = 0xEB00000000676E69;
      }

      v43 = sub_10017C9E8(v41, v42, v73);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2081;
      *(v37 + 24) = sub_10017C9E8(*(a2 + 16), *(a2 + 24), v73);
      _os_log_impl(&_mh_execute_header, v35, v71, "[%{public}s] %s option %{private}s", v37, 0x20u);
      swift_arrayDestroy();
    }

    if (a3)
    {

      sub_1000FC930(v73, a2);
    }

    else
    {
      sub_100222570(a2);
    }

    if (*(v4 + 32))
    {
      *(v4 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    v58 = v74;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v4 + 56);
    *(v4 + 56) = 0x8000000000000000;
    sub_100189098(v58, a1, isUniquelyReferenced_nonNull_native);

    *(v4 + 56) = v72;
    swift_endAccess();
    if (*(v4 + 32))
    {
      *(v4 + 41) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v62 = 136446723;
      v63 = sub_1000B9A7C();
      v65 = sub_10017C9E8(v63, v64, v73);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2081;
      *(v62 + 14) = sub_10017C9E8(v9, v10, v73);
      *(v62 + 22) = 2081;

      sub_1000B72BC(v66);

      v67 = Array.description.getter();
      v69 = v68;

      v70 = sub_10017C9E8(v67, v69, v73);

      *(v62 + 24) = v70;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%{public}s] Updated multiple choice selection for: %{private}s to %{private}s", v62, 0x20u);
      swift_arrayDestroy();
    }

    return 1;
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000F53C(v44, qword_100381E48);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v47 = 136446723;
      v48 = sub_1000B9A7C();
      v50 = sub_10017C9E8(v48, v49, v73);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2081;
      *(v47 + 14) = sub_10017C9E8(*(a2 + 16), *(a2 + 24), v73);
      *(v47 + 22) = 2080;
      if (a3)
      {
        v51 = 0;
      }

      else
      {
        v51 = 544501614;
      }

      if (a3)
      {
        v52 = 0xE000000000000000;
      }

      else
      {
        v52 = 0xE400000000000000;
      }

      v53 = sub_10017C9E8(v51, v52, v73);

      *(v47 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] Option %{private}s is already %s selected, ignoring", v47, 0x20u);
      swift_arrayDestroy();
    }

    return 1;
  }
}

uint64_t sub_1000C222C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v5 + 136);
  if (!v10)
  {
    v12 = 0;
    v11 = 0;
LABEL_29:
    if (qword_100353AA8 != -1)
    {
LABEL_46:
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381E48);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v33 = 136446979;
      v34 = sub_1000B9A7C();
      v36 = sub_10017C9E8(v34, v35, &v54);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v54);
      *(v33 + 22) = 2081;
      *(v33 + 24) = sub_10017C9E8(*(a2 + 16), *(a2 + 24), &v54);
      *(v33 + 32) = 2081;
      v53[0] = v12;
      v53[1] = v11;
      sub_1000040A8(&qword_1003566A0);
      v37 = String.init<A>(describing:)();
      v39 = sub_10017C9E8(v37, v38, &v54);

      *(v33 + 34) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] updateQuestionsAnsweredInputValue: trying to update the value for %{private}s:%{private}s when current question is %{private}s", v33, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = v12 == v13 && v11 == v14;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_29;
  }

  if (*(a2 + 40) != 1)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F53C(v23, qword_100381E48);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v26 = 136446723;
      v27 = sub_1000B9A7C();
      v29 = sub_10017C9E8(v27, v28, v53);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2081;
      *(v26 + 14) = sub_10017C9E8(v13, v14, v53);
      *(v26 + 22) = 2081;
      *(v26 + 24) = sub_10017C9E8(*(a2 + 16), *(a2 + 24), v53);
      _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] Attempted to update value for non-text option: %{private}s:%{private}s", v26, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v54 = a3;
  v55 = a4;
  v11 = *(a2 + 48);

  v16 = a3;
  v17 = a4;
  v12 = 7;
  while (1)
  {
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x1000000000000000) == 0)
    {
      break;
    }

    v50 = v16;
    v20 = v17;
    v21 = String.UTF8View._foreignCount()();
    v16 = v50;
    v17 = v20;
    if (v11 >= v21)
    {
      goto LABEL_20;
    }

LABEL_16:
    if ((v17 & 0x2000000000000000) != 0)
    {
      if (!v18)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    else if ((v16 & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_45;
    }

    String.index(before:)();
    String.remove(at:)();

    v16 = v54;
    v17 = v55;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 < v19)
  {
    goto LABEL_16;
  }

LABEL_20:
  v51 = v16;
  v22 = v17;
  if (*(v5 + 32))
  {
    *(v5 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v5 + 72);
  *(v5 + 72) = 0x8000000000000000;
  sub_100188DD4(v51, v22, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 72) = v52;
  swift_endAccess();
  if (*(v5 + 32))
  {
    *(v5 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000F53C(v42, qword_100381E48);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v45 = 136446979;
    v46 = sub_1000B9A7C();
    v48 = sub_10017C9E8(v46, v47, v53);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2081;
    *(v45 + 14) = sub_10017C9E8(v13, v14, v53);
    *(v45 + 22) = 2081;
    *(v45 + 24) = sub_10017C9E8(*(a2 + 16), *(a2 + 24), v53);
    *(v45 + 32) = 2081;

    v49 = sub_10017C9E8(v51, v22, v53);

    *(v45 + 34) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%{public}s] Updated value for: %{private}s:%{private}s to '%{private}s'", v45, 0x2Au);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1000C2A00()
{
  sub_10003F434(v0 + 48);
  sub_10002B558(v0 + 320);
}

uint64_t sub_1000C2A38()
{

  sub_10003F434(v0 + 48);
  sub_10002B558(v0 + 320);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C2AD0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  result = sub_1000C34B8(a1, a2);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    static String.Encoding.utf8.getter();
    v55 = String.data(using:allowLossyConversion:)();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v57 = v16;
    if (v19 >> 60 == 15)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v56 = v6;
      v20 = type metadata accessor for Logger();
      sub_10000F53C(v20, qword_100381E48);
      swift_bridgeObjectRetain_n();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v64 = v55;
        *v23 = 136446722;
        v24 = sub_1000B9A7C();
        v26 = sub_10017C9E8(v24, v25, &v64);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2050;
        v27 = v57;
        v28 = String.count.getter();

        *(v23 + 14) = v28;

        *(v23 + 22) = 2082;
        v29 = v63;
        *(v23 + 24) = sub_10017C9E8(v63, a2, &v64);
        _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Failed to convert questionnaire text of length %{public}ld to UTF-8 for token %{public}s", v23, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v29 = v63;
        v27 = v57;
      }

      sub_1000C4ED0(v29, a2, v27, v17, 0, 0, 0, 2);

      sub_10000F574();
      v37 = static OS_dispatch_queue.main.getter();
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v29;
      v39[4] = a2;
      v68 = sub_1000C72B4;
      v69 = v39;
      v64 = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1001D2438;
      v67 = &unk_10032D988;
      v40 = _Block_copy(&v64);

      v41 = v59;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_100071864();
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v42 = v60;
      v43 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
    }

    else
    {
      v54 = v19;
      swift_beginAccess();
      sub_10003F3D8(v3 + 48, &v64);
      if (v70)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_10003F434(&v64);
        if (Strong)
        {
          v31 = swift_allocObject();
          swift_weakInit();
          v32 = swift_allocObject();
          v33 = v63;
          v32[2] = v31;
          v32[3] = v33;
          v34 = v57;
          v32[4] = a2;
          v32[5] = v34;
          v32[6] = v17;

          v35 = v54;
          v36 = v55;
          sub_1002462F4(v55, v54, sub_1000C6A3C, v32);
          swift_unknownObjectRelease();

          return sub_10000F4D4(v36, v35);
        }
      }

      else
      {
        sub_10003F434(&v64);
      }

      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v56 = v6;
      v44 = type metadata accessor for Logger();
      sub_10000F53C(v44, qword_100381E48);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v47 = 136446466;
        v48 = sub_1000B9A7C();
        v50 = sub_10017C9E8(v48, v49, &v64);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2082;
        v51 = v63;
        *(v47 + 14) = sub_10017C9E8(v63, a2, &v64);
        _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] No compressor set for token %{public}s", v47, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v51 = v63;
      }

      sub_1000C4ED0(v51, a2, v57, v17, 0, 0, 0, 2);

      sub_10000F574();
      v37 = static OS_dispatch_queue.main.getter();
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      v53[2] = v52;
      v53[3] = v51;
      v53[4] = a2;
      v68 = sub_1000C72B4;
      v69 = v53;
      v64 = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1001D2438;
      v67 = &unk_10032D9D8;
      v40 = _Block_copy(&v64);

      v41 = v59;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_100071864();
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v42 = v60;
      v43 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      sub_10000F4D4(v55, v54);
    }

    _Block_release(v40);

    (*(v56 + 8))(v42, v43);
    return (*(v61 + 8))(v41, v62);
  }

  return result;
}

uint64_t sub_1000C34B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100353AA8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000F53C(v11, qword_100381E48);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = sub_1000B9A7C();
    v17 = sub_10017C9E8(v15, v16, v60);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_10017C9E8(a1, a2, v60);
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] markNextTextForCompression: for token %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  sub_100006C20(v3 + 152, v59, &qword_10035C098);
  if (!v59[1])
  {
    sub_100008FA0(v59, &qword_10035C098);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60[0] = v29;
      *v28 = 136446210;
      v30 = sub_1000B9A7C();
      v32 = sub_10017C9E8(v30, v31, v60);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] markNextTextForCompression: send is not in progress", v28, 0xCu);
      sub_100008964(v29);
    }

    return 0;
  }

  sub_1000C60B0(v59, v60);
  if ((v60[0] != a1 || v60[1] != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v39 = 136446466;
      v40 = sub_1000B9A7C();
      v42 = sub_10017C9E8(v40, v41, v59);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_10017C9E8(a1, a2, v59);
      _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] markNextTextForCompression: for expired send token %{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_24;
  }

  if (v62)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
LABEL_13:

LABEL_24:
      sub_1000C60E8(v60);
      return 0;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59[0] = v21;
    *v20 = 136446210;
    v22 = sub_1000B9A7C();
    v24 = sub_10017C9E8(v22, v23, v59);

    *(v20 + 4) = v24;
    v25 = "[%{public}s] markNextTextForCompression: already waiting for the compression result, ignoring";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v18, v19, v25, v20, 0xCu);
    sub_100008964(v21);

    goto LABEL_13;
  }

  if (!*(v61 + 16))
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59[0] = v21;
    *v20 = 136446210;
    v44 = sub_1000B9A7C();
    v46 = sub_10017C9E8(v44, v45, v59);

    *(v20 + 4) = v46;
    v25 = "[%{public}s] markNextTextForCompression: no texts to compress";
    goto LABEL_12;
  }

  v33 = sub_1000FA4E8(v61);
  if (!v34)
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59[0] = v50;
      *v49 = 136446210;
      v51 = sub_1000B9A7C();
      v53 = sub_10017C9E8(v51, v52, v59);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}s] markNextTextForCompression: unexpected failure extracting text to compress", v49, 0xCu);
      sub_100008964(v50);
    }

    if (*(v3 + 32))
    {
      *(v3 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    v57 = sub_1000B9A08();
    if (*(v56 + 112))
    {
      v58 = v56;

      *(v58 + 136) = &_swiftEmptySetSingleton;
    }

    (v57)(v59, 0);
    if (*(v3 + 32))
    {
      *(v3 + 41) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    goto LABEL_24;
  }

  v35 = v34;
  v36 = v33;
  if (*(v3 + 32))
  {
    *(v3 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v55 = sub_1000B9A08();
  if (v54[14])
  {
    v54[18] = v36;
    v54[19] = v35;
  }

  (v55)(v59, 0);
  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  sub_1000C60E8(v60);
  return v36;
}

uint64_t sub_1000C3E94()
{
  swift_beginAccess();
  sub_10003F3D8(v0 + 48, &v26);
  v22 = v0;
  v23 = &v26;
  v1 = sub_1000B705C(sub_1000C6E3C, &v21, *(&v30 + 1));
  result = sub_10003F434(&v26);
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage;
    do
    {
      v6 = *(v1 + 2);
      v7 = &v1[88 * v4 + 32];
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
          return result;
        }

        v9 = *(v7 + 32);
        v10 = *(v7 + 48);
        v11 = *(v7 + 80);
        v30 = *(v7 + 64);
        v12 = *(v7 + 16);
        v26 = *v7;
        v27 = v12;
        v31 = v11;
        v28 = v9;
        v29 = v10;
        if ((v30 & 1) == 0)
        {
          v13 = v29 & 0xFFFFFFFFFFFFLL;
          if ((*(&v29 + 1) & 0x2000000000000000) != 0)
          {
            v13 = HIBYTE(*(&v29 + 1)) & 0xFLL;
          }

          if (v13)
          {
            break;
          }
        }

        ++v8;
        v7 += 88;
        if (v3 == v8)
        {
          goto LABEL_17;
        }
      }

      sub_1000C6E58(&v26, v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      v25 = v5;
      if ((result & 1) == 0)
      {
        result = sub_1001872B4(0, v5[2] + 1, 1);
        v5 = v25;
      }

      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1001872B4((v14 > 1), v15 + 1, 1);
        v5 = v25;
      }

      v4 = v8 + 1;
      v5[2] = v15 + 1;
      v16 = &v5[11 * v15];
      v17 = v27;
      *(v16 + 2) = v26;
      *(v16 + 3) = v17;
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v16[14] = v31;
      *(v16 + 5) = v19;
      *(v16 + 6) = v20;
      *(v16 + 4) = v18;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

LABEL_17:

  return v5;
}

uint64_t sub_1000C4070(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(v5 + 344);
  v11 = *(v10 + 88);
  v12 = *(v10 + 32);
  swift_beginAccess();
  sub_10003F3D8(v5 + 48, v41);
  type metadata accessor for BitCollector();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100281A20;
  v41[36] = inited + 16;
  *(inited + 32) = 0;
  sub_1000F9DE0(0, 3u);
  sub_1000F9DE0(v12, 1u);
  do
  {
    if (v11 >= 8)
    {
      v14 = v11 & 7 | 8;
    }

    else
    {
      v14 = v11 & 7;
    }

    sub_1000F9DE0(v14, 4u);
    v15 = v11 > 7;
    v11 >>= 3;
  }

  while (v15);
  v16 = sub_10022B01C(a1, a2, a3, a4);
  do
  {
    if (v16 >= 8)
    {
      v17 = v16 & 7 | 8;
    }

    else
    {
      v17 = v16 & 7;
    }

    v18 = inited;
    sub_1000F9DE0(v17, 4u);
    v15 = v16 > 7;
    v16 >>= 3;
  }

  while (v15);
  v19 = sub_10022B6F8(v41, a5);
  if (v39)
  {
    sub_10003F434(v41);
    swift_setDeallocating();
    sub_10000F4E8(*(inited + 16), *(inited + 24));
  }

  else
  {
    sub_1000FA160(v19);

    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000F53C(v20, qword_100381E48);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v23 = 136446723;
      v24 = sub_1000B9A7C();
      v26 = sub_10017C9E8(v24, v25, v40);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2081;
      swift_beginAccess();
      v27 = *(inited + 16);
      v28 = *(inited + 24);
      v29 = sub_1000F9CFC();
      sub_10000F480(v27, v28);
      v30 = sub_100225AE0(v29, v27, v28);
      v32 = v31;
      sub_10000F4E8(v27, v28);
      v33 = sub_10017C9E8(v30, v32, v40);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2049;
      *(v23 + 24) = sub_1000F9CFC();

      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Bit stream: '%{private}s', bits used: %{private}lu", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10003F434(v41);
    swift_beginAccess();
    v18 = *(inited + 16);
    v34 = *(inited + 24);
    swift_setDeallocating();
    v36 = *(inited + 16);
    v35 = *(inited + 24);
    sub_10000F480(v18, v34);
    sub_10000F4E8(v36, v35);
  }

  return v18;
}

void sub_1000C4434(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 32);
  if (!*(v8 + 16) || (v9 = sub_100186A08(a1, a2), (v10 & 1) == 0))
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F53C(v22, qword_100381E48);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_10017C9E8(*(v4 + 16), *(v4 + 24), &v35);
      *(v25 + 12) = 2050;
      *(v25 + 14) = String.count.getter();

      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Encoding as uncompressed text of %{public}ld bytes", v25, 0x16u);
      sub_100008964(v26);
    }

    else
    {
    }

    v12 = sub_1000C482C(a1, a2);
    v13 = v27;
    v28 = 0;
    v29 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_28;
  }

  v11 = *(v8 + 56) + 32 * v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  sub_10000F480(*v11, v13);
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381E48);
  sub_10000F480(v12, v13);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v17, v18))
  {
    sub_10000F4E8(v12, v13);

LABEL_24:
    if (v15)
    {
      v29 = 0;
    }

    else
    {
      v29 = v14;
    }

    v28 = 1;
LABEL_28:
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v28;
    *(a3 + 24) = v29;
    *(a3 + 32) = v15;
    return;
  }

  v34 = v14;
  v19 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v35 = v33;
  *v19 = 136447234;
  *(v19 + 4) = sub_10017C9E8(*(v4 + 16), *(v4 + 24), &v35);
  *(v19 + 12) = 2050;
  *(v19 + 14) = String.count.getter();

  *(v19 + 22) = 2050;
  v20 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_23;
    }

    v31 = *(v12 + 16);
    v30 = *(v12 + 24);
    v32 = __OFSUB__(v30, v31);
    v21 = v30 - v31;
    if (!v32)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(v13);
LABEL_23:
    *(v19 + 24) = v21;
    *(v19 + 32) = 2050;
    *(v19 + 34) = v34;
    *(v19 + 42) = 1026;
    *(v19 + 44) = v15;
    sub_10000F4E8(v12, v13);
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] Encoding as compressed text - reduced from %{public}ld bytes to %{public}ld bytes, codecId - %{public}lu, preferred - %{BOOL,public}d", v19, 0x30u);
    sub_100008964(v33);

    v14 = v34;

    goto LABEL_24;
  }

  LODWORD(v21) = HIDWORD(v12) - v12;
  if (!__OFSUB__(HIDWORD(v12), v12))
  {
    v21 = v21;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_1000C482C(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1000040A8(&qword_10035C0B0);
  if (swift_dynamicCast())
  {
    sub_100008A18(__src, &v41);
    sub_1000088DC(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100008964(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100008FA0(__src, &qword_10035C0B8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1000C6150(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000C6C9C(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_1000C6218(sub_1000C6EE4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10018A5F8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10018A5F8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10000F4D4(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10000F4D4(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_10000F480(*&__src[0], *(&__src[0] + 1));

  sub_10000F4E8(v32, *(&v32 + 1));
  return v32;
}