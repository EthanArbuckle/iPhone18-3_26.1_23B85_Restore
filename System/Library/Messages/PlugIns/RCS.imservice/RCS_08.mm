uint64_t RCSParticipantChange.imdChangeContexts(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 36);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = (*(v6 + 24))(v7, v6);
  v22 = *(v2 + *(a2 + 44));
  v17 = v7;
  v18 = v6;
  v19 = v2;
  v20 = v8;
  v21 = a1;
  v15[2] = v7;
  v15[3] = v6;
  v15[4] = sub_127D4;
  v15[5] = &v16;

  v9 = sub_388C8(&qword_129548, &qword_F50D0);
  v10 = type metadata accessor for RCSParticipantChange.IMDChangeContext();
  v11 = sub_B8DE8();
  v13 = sub_B82C0(sub_12808, v15, v9, v10, &type metadata for Never, v11, &protocol witness table for Never, v12);

  return v13;
}

uint64_t sub_B8808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v80 = a6;
  v16 = a9;
  v17 = type metadata accessor for RCSParticipantChange();
  v18 = v17[13];
  v81 = a5;
  v19 = (a5 + v18);
  v20 = *v19;
  v21 = v19[1];
  if (v21)
  {
    v22 = v20 == a1 && v21 == a2;
    if (v22 || (v23 = *v19, v24 = v19[1], (sub_F122C() & 1) != 0))
    {
      v25 = [objc_allocWithZone(IMDChatStatusChangeContext) init];
      v26 = sub_F07BC();
      [v25 setMessageID:v26];

      if (*(v81 + v17[10]))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      [v25 setChatStatus:v27];
      v28 = v17[9];
      (*(a9 + 16))(a8, a9);
      if (v29)
      {
        v30 = sub_F07BC();
      }

      else
      {
        v30 = 0;
      }

      [v25 setChatIdentifier:v30];

      [v25 setChatStyle:v80];
      [v25 setAccount:a7];
      return v25;
    }
  }

  v78 = a2;
  v79 = a1;
  v76 = v21;
  v75 = *(v81 + v17[10]);
  v77 = a4;
  v74 = v20;
  if (!static RCSParticipantChange.ChangeType.__derived_enum_equals(_:_:)(v75, 1))
  {

    v33 = a7;
    LOBYTE(a7) = v80;
    v38 = v81;
    goto LABEL_32;
  }

  v31 = v17[9];
  v32 = (*(a9 + 32))(a8, a9);
  v33 = a7;
  v34 = a3;
  if (!v32)
  {

    LOBYTE(a7) = v80;
    v38 = v81;
    goto LABEL_32;
  }

  v82[0] = v79;
  v82[1] = v78;
  __chkstk_darwin(v32);
  v68[2] = v82;
  v36 = v35;
  result = sub_400F0(sub_1285C, v68, v35);
  a7 = v80;
  if (result)
  {

    v38 = v81;
LABEL_32:
    v53 = v75;
    v54 = [objc_allocWithZone(IMDChatMemberStatusChangeContext) init];
    v25 = v54;
    if (v53)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    [v54 setStatus:{v55, v69}];
    v56 = sub_F07BC();

    [v25 setHandleID:v56];

    v57 = (v38 + v17[12]);
    v58 = v57[1];
    if (v58)
    {
      v59 = *v57;
      v60 = v57[1];
      v61 = sub_F07BC();
    }

    else
    {
      v61 = 0;
    }

    [v25 setFromHandleID:v61];

    v62 = v17[9];
    (*(v16 + 16))(a8, v16);
    if (v63)
    {
      v64 = sub_F07BC();
    }

    else
    {
      v64 = 0;
    }

    [v25 setChatIdentifier:v64];

    [v25 setStyle:a7];
    if (v76)
    {
      v65 = sub_F07BC();
    }

    else
    {
      v65 = 0;
    }

    [v25 setDestinationCallerID:v65];

    v66 = sub_F07BC();
    [v25 setMessageID:v66];

    if (v58)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(v38 + v17[14]) ^ 1;
    }

    [v25 setUnattributed:v67 & 1];
    [v25 setAccount:v33];
    return v25;
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v69 = v33;
  v70 = v39;
  if (!v39)
  {
LABEL_29:

    v33 = v69;
    v38 = v81;
    goto LABEL_32;
  }

  v41 = 0;
  v42 = (v36 + 40);
  v72 = a9;
  v73 = a8;
  v71 = v34;
  while (v41 < *(v40 + 16))
  {
    v43 = v17;
    v44 = a7;
    a7 = *(v42 - 1);
    v45 = *v42;

    v46 = sub_F07BC();
    v47 = [v46 im_stripCategoryLabel];

    v48 = sub_F07EC();
    v50 = v49;

    if (v48 == v79 && v50 == v78)
    {

LABEL_31:

      v79 = a7;
      v33 = v69;
      v38 = v81;
      LOBYTE(a7) = v44;
      v17 = v43;
      v16 = v72;
      a8 = v73;
      goto LABEL_32;
    }

    v52 = sub_F122C();

    if (v52)
    {
      goto LABEL_31;
    }

    ++v41;

    v42 += 2;
    a7 = v44;
    v17 = v43;
    v16 = v72;
    a8 = v73;
    if (v70 == v41)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_B8DE8()
{
  result = qword_129550[0];
  if (!qword_129550[0])
  {
    sub_3CB70(&qword_129548, &qword_F50D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_129550);
  }

  return result;
}

uint64_t sub_B8E4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B8E94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B8EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Int RCSParticipantChange.ChangeType.hashValue.getter(char a1)
{
  sub_F12FC();
  sub_F130C(a1 & 1);
  return sub_F132C();
}

Swift::Int sub_B9250()
{
  sub_F12FC();
  RCSParticipantChange.ChangeType.hash(into:)(v2, *v0);
  return sub_F132C();
}

uint64_t RCSParticipantChange.fromHandle.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RCSParticipantChange.toID.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t RCSParticipantChange.init(chat:toIdentifier:changedParticipants:changedBy:changeType:fromMe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v91 = a7;
  v93 = a5;
  v98 = a3;
  v90 = a2;
  sub_F034C();
  v16 = type metadata accessor for RCSParticipantChange();
  v17 = *(v16 + 36);
  v95 = *(a8 - 8);
  v18 = *(v95 + 16);
  v92 = v17;
  v96 = a1;
  v99 = a8;
  v18(a9 + v17, a1, a8);
  v100 = v16;
  v19 = *(v16 + 40);
  v94 = a9;
  *(a9 + v19) = a6 & 1;
  v97 = a4;
  v20 = [a4 memberList];
  sub_BC3F4();
  v21 = sub_F09FC();

  if (v21 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v23 = v21;
    v109 = _swiftEmptyArrayStorage;
    sub_6EB68(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_47;
    }

    v24 = 0;
    v21 = v109;
    v25 = v23;
    v105 = v23;
    v106 = (v23 & 0xC000000000000001);
    v104 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v106)
      {
        v27 = v21;
        v28 = sub_F0FCC();
      }

      else
      {
        if (v24 >= *(v104 + 16))
        {
          goto LABEL_17;
        }

        v27 = v21;
        v28 = *(v25 + 8 * v24 + 32);
      }

      v29 = v28;
      v30 = [v28 member];
      v31 = sub_F07EC();
      v33 = v32;

      v34._countAndFlagsBits = v31;
      v34._object = v33;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v107, v34, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (v35)
      {
        v41 = *(v95 + 8);
        v42 = v99;
        v41(v96, v99);

        v43 = 0;
        v44 = v94;
        goto LABEL_38;
      }

      v103 = 0;

      countAndFlagsBits = v107.id._countAndFlagsBits;
      object = v107.id._object;

      sub_3CAB8(&v107);
      v21 = v27;
      v109 = v27;
      v39 = v27[2];
      v38 = v27[3];
      if (v39 >= v38 >> 1)
      {
        sub_6EB68((v38 > 1), v39 + 1, 1);
        v21 = v109;
      }

      *(v21 + 16) = v39 + 1;
      v40 = v21 + 16 * v39;
      *(v40 + 32) = countAndFlagsBits;
      *(v40 + 40) = object;
      ++v24;
      v10 = v103;
      v25 = v105;
      if (v26 == i)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v103 = v10;

  v21 = _swiftEmptyArrayStorage;
LABEL_20:
  v45 = sub_E7CB4(_swiftEmptyArrayStorage);
  v102 = *(v21 + 16);
  if (!v102)
  {
LABEL_35:

    v44 = v94;
    *(v94 + *(v100 + 44)) = v45;
    v74 = v93;
    if (v93)
    {
      v75 = [v93 member];
      v76 = sub_F07EC();
      v78 = v77;

      v79._countAndFlagsBits = v76;
      v79._object = v78;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v108, v79, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      v42 = v99;
      if (v80)
      {

        v41 = *(v95 + 8);
        v41(v96, v42);
        v43 = 1;
LABEL_38:
        v81 = sub_F035C();
        (*(*(v81 - 8) + 8))(v44, v81);
        result = (v41)(v44 + v92, v42);
        if (v43)
        {
          v83 = *(v44 + *(v100 + 44));
        }

        return result;
      }

      (*(v95 + 8))(v96, v42);
      v84 = v108.id._countAndFlagsBits;
      v85 = v108.id._object;

      result = sub_3CAB8(&v108);
    }

    else
    {

      result = (*(v95 + 8))(v96, v99);
      v84 = 0;
      v85 = 0;
    }

    v86 = v98;
    v87 = v100;
    v88 = (v44 + *(v100 + 48));
    *v88 = v84;
    v88[1] = v85;
    v89 = (v44 + *(v87 + 52));
    *v89 = v90;
    v89[1] = v86;
    *(v44 + *(v87 + 56)) = v91 & 1;
    return result;
  }

  v46 = 0;
  v47 = (v21 + 40);
  v101 = v21;
  while (v46 < *(v21 + 16))
  {
    v104 = v47;
    v105 = v46;
    v50 = *(v47 - 1);
    v51 = *v47;
    v52 = sub_F035C();
    v106 = &v90;
    v53 = *(v52 - 8);
    v54 = *(v53 + 64);
    __chkstk_darwin(v52);
    v56 = &v90 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_F034C();
    v57 = sub_F032C();
    v59 = v58;
    (*(v53 + 8))(v56, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v45;
    v62 = sub_51FEC(v50, v51);
    v63 = v45[2];
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_45;
    }

    v66 = v61;
    if (v45[3] < v65)
    {
      sub_BA3A8(v65, isUniquelyReferenced_nonNull_native);
      v67 = sub_51FEC(v50, v51);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_48;
      }

      v62 = v67;
      goto LABEL_29;
    }

    v21 = v101;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BC80C();
LABEL_29:
      v21 = v101;
    }

    v45 = v109;
    if (v66)
    {
      v48 = (v109[7] + 16 * v62);
      v49 = v48[1];
      *v48 = v57;
      v48[1] = v59;
    }

    else
    {
      v109[(v62 >> 6) + 8] |= 1 << v62;
      v69 = (v45[6] + 16 * v62);
      *v69 = v50;
      v69[1] = v51;
      v70 = (v45[7] + 16 * v62);
      *v70 = v57;
      v70[1] = v59;
      v71 = v45[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        goto LABEL_46;
      }

      v45[2] = v73;
    }

    v46 = v105 + 1;
    v47 = (v104 + 16);
    if (v102 == v105 + 1)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a8;
  v61 = a6;
  v62 = a7;
  v58 = a4;
  v59 = a5;
  sub_F034C();
  v14 = type metadata accessor for RCSParticipantChange();
  v15 = *(v14 + 36);
  v54 = *(a10 - 8);
  v16 = *(v54 + 16);
  v56 = a10;
  v57 = a1;
  v16(a9 + v15, a1, a10);
  v55 = v14;
  v17 = *(v14 + 40);
  v60 = a9;
  *(a9 + v17) = a2 & 1;
  v18 = sub_E7CB4(_swiftEmptyArrayStorage);
  v65 = *(a3 + 16);
  if (!v65)
  {
LABEL_17:

    result = (*(v54 + 8))(v57, v56);
    v49 = v55;
    v50 = v60;
    *(v60 + v55[11]) = v18;
    v51 = (v50 + v49[12]);
    *v51 = v58;
    v51[1] = v59;
    v52 = (v50 + v49[13]);
    *v52 = v61;
    v52[1] = v62;
    *(v50 + v49[14]) = v63 & 1;
    return result;
  }

  v19 = 0;
  v20 = (a3 + 40);
  v64 = a3;
  while (v19 < *(a3 + 16))
  {
    v66 = v19;
    v24 = *(v20 - 1);
    v23 = *v20;
    v25 = sub_F035C();
    v67 = &v53;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    __chkstk_darwin(v25);
    v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_F034C();
    v30 = sub_F032C();
    v32 = v31;
    (*(v26 + 8))(v29, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v18;
    v34 = v24;
    v36 = sub_51FEC(v24, v23);
    v37 = v18[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_19;
    }

    v40 = v35;
    if (v18[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v68;
        if (v35)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_BC80C();
        v18 = v68;
        if (v40)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_BA3A8(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_51FEC(v34, v23);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_21;
      }

      v36 = v41;
      v18 = v68;
      if (v40)
      {
LABEL_3:
        v21 = (v18[7] + 16 * v36);
        v22 = v21[1];
        *v21 = v30;
        v21[1] = v32;

        goto LABEL_4;
      }
    }

    v18[(v36 >> 6) + 8] |= 1 << v36;
    v43 = (v18[6] + 16 * v36);
    *v43 = v34;
    v43[1] = v23;
    v44 = (v18[7] + 16 * v36);
    *v44 = v30;
    v44[1] = v32;
    v45 = v18[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_20;
    }

    v18[2] = v47;
LABEL_4:
    v19 = v66 + 1;
    v20 += 2;
    a3 = v64;
    if (v65 == v66 + 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_F034C();
  v18 = type metadata accessor for RCSParticipantChange();
  result = (*(*(a10 - 8) + 32))(a9 + v18[9], a1, a10);
  *(a9 + v18[10]) = a2 & 1;
  *(a9 + v18[11]) = a3;
  v20 = (a9 + v18[12]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + v18[13]);
  *v21 = a6;
  v21[1] = a7;
  *(a9 + v18[14]) = a8;
  return result;
}

uint64_t RCSParticipantChange.debugDescription.getter(uint64_t a1)
{
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_F0F9C(73);
  v25 = 0;
  v26 = 0xE000000000000000;
  v27._object = 0x8000000000100130;
  v27._countAndFlagsBits = 0xD000000000000016;
  sub_F08CC(v27);
  sub_F035C();
  sub_5F9D4();
  v28._countAndFlagsBits = sub_F11EC();
  sub_F08CC(v28);

  v29._countAndFlagsBits = 0x3D6570797420;
  v29._object = 0xE600000000000000;
  sub_F08CC(v29);
  LOBYTE(v24[0]) = *(v1 + *(a1 + 40));
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RCSParticipantChange.ChangeType();
  swift_getWitnessTable();
  sub_F120C();
  v30._countAndFlagsBits = 0x3D7461686320;
  v30._object = 0xE600000000000000;
  sub_F08CC(v30);
  v5 = *(a1 + 36);
  v6._countAndFlagsBits = (*(v4 + 8))(v3, v4);
  if (v6._object)
  {
    object = v6._object;
  }

  else
  {
    v6._countAndFlagsBits = 0x296C6C756E28;
    object = 0xE600000000000000;
  }

  v6._object = object;
  sub_F08CC(v6);

  v31._countAndFlagsBits = 0x6963697472617020;
  v31._object = 0xEF5B3D73746E6170;
  sub_F08CC(v31);
  v8 = *(v1 + *(a1 + 44));
  v9 = *(v8 + 16);
  if (v9 && (v10 = sub_9D6B8(v9, 0), v11 = sub_374E0(v24, v10 + 4, v9, v8), , result = sub_66138(), v11 != v9))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_F0A0C();
    v15 = v14;

    v32._countAndFlagsBits = v13;
    v32._object = v15;
    sub_F08CC(v32);

    v33._countAndFlagsBits = 0x3D6D6F7266205DLL;
    v33._object = 0xE700000000000000;
    sub_F08CC(v33);
    v16 = (v1 + *(a1 + 48));
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
    }

    else
    {
      v18 = 0x296C6C756E28;
    }

    if (v17)
    {
      v19 = v16[1];
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v34._countAndFlagsBits = v18;
    v34._object = v19;
    sub_F08CC(v34);

    v35._countAndFlagsBits = 1030714400;
    v35._object = 0xE400000000000000;
    sub_F08CC(v35);
    v20 = (v1 + *(a1 + 52));
    v21 = v20[1];
    if (v21)
    {
      v22 = *v20;
    }

    else
    {
      v22 = 0x296C6C756E28;
    }

    if (v21)
    {
      v23 = v20[1];
    }

    else
    {
      v23 = 0xE600000000000000;
    }

    v36._countAndFlagsBits = v22;
    v36._object = v23;
    sub_F08CC(v36);

    v37._countAndFlagsBits = 62;
    v37._object = 0xE100000000000000;
    sub_F08CC(v37);
    return v25;
  }

  return result;
}

uint64_t RCSParticipantChange.ChangeType.description.getter(char a1)
{
  if (a1)
  {
    return 0x65766F6D6552;
  }

  else
  {
    return 6579265;
  }
}

void *sub_BA324(uint64_t a1, uint64_t a2)
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

  sub_388C8(&qword_129390, &unk_F52C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

uint64_t sub_BA3A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_129710, &qword_F52D0);
  v40 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_BA668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_1296F0, &qword_F5B90);
  v38 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_BA910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_129718, &qword_F52D8);
  v7 = sub_F10FC();
  v8 = v7;
  if (*(v5 + 16))
  {
    v58 = v2;
    v9 = 0;
    v59 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v62 = v5;
    v63 = v7 + 64;
    v60 = v13;
    v61 = v7;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
LABEL_17:
      v23 = v18 | (v9 << 6);
      v69 = v19;
      if (a2)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + (v23 << 6);
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v73 = *(v25 + 24);
        v70 = *(v25 + 40);
        v71 = *(v25 + 56);
        v72 = *(v25 + 48);
        v29 = (v24 + 16 * v23);
        v67 = v29[1];
        v68 = *v29;
      }

      else
      {
        v30 = (*(v5 + 48) + (v23 << 6));
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        *&v78[25] = *(v30 + 41);
        *v78 = v32;
        *&v78[16] = v33;
        v77 = v31;
        v34 = (*(v5 + 56) + 16 * v23);
        v35 = v34[1];
        v68 = *v34;
        v71 = v78[40];
        v70 = *(&v33 + 1);
        v72 = *&v78[32];
        v27 = *(&v31 + 1);
        v28 = v32;
        v73 = *&v78[8];
        v26 = v31;
        sub_38910(&v77, v75);
        v67 = v35;
      }

      v36 = *(v8 + 40);
      sub_F12FC();
      v64 = v27;
      v65 = v26;
      sub_F089C();
      v66 = v28;
      sub_F089C();
      v37 = 1 << *(*(&v73 + 1) + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(*(&v73 + 1) + 64);
      v40 = (v37 + 63) >> 6;

      v41 = 0;
      v42 = 0;
      while (v39)
      {
        v74 = v41;
LABEL_32:
        v44 = __clz(__rbit64(v39)) | (v42 << 6);
        v45 = *(*(*(&v73 + 1) + 48) + v44);
        v46 = (*(*(&v73 + 1) + 56) + 16 * v44);
        v47 = *v46;
        v48 = v46[1];
        v39 &= v39 - 1;
        v75[2] = *&v78[16];
        v75[3] = *&v78[32];
        v76 = v79;
        v75[0] = v77;
        v75[1] = *v78;

        sub_F089C();

        if (v48)
        {
          sub_F131C(1u);
          sub_F089C();
        }

        else
        {
          sub_F131C(0);
        }

        result = sub_F132C();
        v41 = result ^ v74;
      }

      while (1)
      {
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v43 >= v40)
        {
          break;
        }

        v39 = *(*(&v73 + 1) + 64 + 8 * v43);
        ++v42;
        if (v39)
        {
          v74 = v41;
          v42 = v43;
          goto LABEL_32;
        }
      }

      sub_F130C(v41);
      if (v72)
      {
        sub_F131C(1u);
        v49 = v70;
        sub_F089C();
        v8 = v61;
        v5 = v62;
      }

      else
      {
        sub_F131C(0);
        v8 = v61;
        v5 = v62;
        v49 = v70;
      }

      sub_F130C(v71);
      result = sub_F132C();
      v50 = -1 << *(v8 + 32);
      v51 = result & ~v50;
      v52 = v51 >> 6;
      if (((-1 << v51) & ~*(v63 + 8 * (v51 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v50) >> 6;
        v15 = v73;
        while (++v52 != v54 || (v53 & 1) == 0)
        {
          v55 = v52 == v54;
          if (v52 == v54)
          {
            v52 = 0;
          }

          v53 |= v55;
          v56 = *(v63 + 8 * v52);
          if (v56 != -1)
          {
            v14 = __clz(__rbit64(~v56)) + (v52 << 6);
            goto LABEL_9;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v51) & ~*(v63 + 8 * (v51 >> 6)))) | v51 & 0x7FFFFFFFFFFFFFC0;
      v15 = v73;
LABEL_9:
      *(v63 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = *(v8 + 48) + (v14 << 6);
      *v16 = v65;
      *(v16 + 8) = v64;
      *(v16 + 16) = v66;
      *(v16 + 24) = v15;
      *(v16 + 40) = v49;
      *(v16 + 48) = v72;
      *(v16 + 56) = v71;
      v17 = (*(v8 + 56) + 16 * v14);
      *v17 = v68;
      v17[1] = v67;
      ++*(v8 + 16);
      v13 = v60;
      v12 = v69;
    }

    v20 = v9;
    result = v59;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v9 >= v13)
      {
        break;
      }

      v22 = v59[v9];
      ++v20;
      if (v22)
      {
        v18 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v58;
      goto LABEL_53;
    }

    v57 = 1 << *(v5 + 32);
    v3 = v58;
    if (v57 >= 64)
    {
      bzero(v59, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v59 = -1 << v57;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v8;
  return result;
}

uint64_t sub_BAEA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_129720, qword_F52E0);
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v32 = *(*(v5 + 56) + 16 * v23);
      if ((a2 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();

      result = sub_F132C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 16 * v19) = v32;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_BB1C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_129708, &qword_F52B8);
  v34 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v3;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 56) + 16 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      if ((v34 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_BB46C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_129700, &qword_F52B0);
  v39 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_BB710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_1296F8, &unk_F52A0);
  v38 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_BB9B8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TypingIndicator();
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_388C8(&qword_1296E8, &qword_F5298);
  v77 = a2;
  v12 = sub_F10FC();
  v13 = v12;
  if (*(v10 + 16))
  {
    v69 = v2;
    v14 = 0;
    v15 = *(v10 + 64);
    v70 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v72 = v12 + 64;
    v75 = v10;
    v73 = v9;
    v74 = v12;
    v71 = v19;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v26 = (v18 - 1) & v18;
LABEL_17:
      v30 = v25 | (v14 << 6);
      v82 = v26;
      if (v77)
      {
        v31 = *(v10 + 56);
        v32 = *(v10 + 48) + (v30 << 6);
        v33 = *v32;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        v86 = *(v32 + 24);
        v83 = *(v32 + 40);
        v85 = *(v32 + 48);
        v84 = *(v32 + 56);
        v81 = *(v76 + 72);
        sub_BDEA0(v31 + v81 * v30, v9);
      }

      else
      {
        v36 = (*(v10 + 48) + (v30 << 6));
        v38 = v36[1];
        v37 = v36[2];
        v39 = *v36;
        *&v91[25] = *(v36 + 41);
        *v91 = v38;
        *&v91[16] = v37;
        v90 = v39;
        v40 = *(v10 + 56);
        v81 = *(v76 + 72);
        sub_BDE3C(v40 + v81 * v30, v9);
        v84 = v91[40];
        v83 = *&v91[24];
        v85 = *&v91[32];
        v34 = *(&v90 + 1);
        v35 = *v91;
        v86 = *&v91[8];
        v33 = v90;
        sub_38910(&v90, v88);
      }

      v41 = *(v13 + 40);
      sub_F12FC();
      v79 = v33;
      v78 = v34;
      sub_F089C();
      v80 = v35;
      sub_F089C();
      v42 = *(&v86 + 1);
      v43 = *(&v86 + 1) + 64;
      v44 = 1 << *(*(&v86 + 1) + 32);
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & *(*(&v86 + 1) + 64);
      v47 = (v44 + 63) >> 6;

      v48 = 0;
      v49 = 0;
      while (v46)
      {
        v87 = v48;
LABEL_32:
        v52 = __clz(__rbit64(v46)) | (v49 << 6);
        v53 = *(*(v42 + 48) + v52);
        v54 = (*(v42 + 56) + 16 * v52);
        v55 = *v54;
        v56 = v54[1];
        v46 &= v46 - 1;
        v88[2] = *&v91[16];
        v88[3] = *&v91[32];
        v89 = v92;
        v88[0] = v90;
        v88[1] = *v91;

        sub_F089C();

        if (v56)
        {
          sub_F131C(1u);
          sub_F089C();
        }

        else
        {
          sub_F131C(0);
        }

        v50 = v87;
        result = sub_F132C();
        v48 = result ^ v50;
      }

      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v51 >= v47)
        {
          break;
        }

        v46 = *(v43 + 8 * v51);
        ++v49;
        if (v46)
        {
          v87 = v48;
          v49 = v51;
          goto LABEL_32;
        }
      }

      sub_F130C(v48);
      if (v85)
      {
        sub_F131C(1u);
        v57 = v83;
        sub_F089C();
        v10 = v75;
        v13 = v74;
        v9 = v73;
        v58 = v72;
        v59 = v84;
      }

      else
      {
        sub_F131C(0);
        v10 = v75;
        v13 = v74;
        v9 = v73;
        v58 = v72;
        v59 = v84;
        v57 = v83;
      }

      sub_F130C(v59);
      result = sub_F132C();
      v60 = -1 << *(v13 + 32);
      v61 = result & ~v60;
      v62 = v61 >> 6;
      if (((-1 << v61) & ~*(v58 + 8 * (v61 >> 6))) == 0)
      {
        v63 = 0;
        v64 = (63 - v60) >> 6;
        v21 = v86;
        while (++v62 != v64 || (v63 & 1) == 0)
        {
          v65 = v62 == v64;
          if (v62 == v64)
          {
            v62 = 0;
          }

          v63 |= v65;
          v66 = *(v58 + 8 * v62);
          if (v66 != -1)
          {
            v20 = __clz(__rbit64(~v66)) + (v62 << 6);
            goto LABEL_9;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v61) & ~*(v58 + 8 * (v61 >> 6)))) | v61 & 0x7FFFFFFFFFFFFFC0;
      v21 = v86;
LABEL_9:
      *(v58 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v22 = *(v13 + 48) + (v20 << 6);
      v23 = v78;
      *v22 = v79;
      *(v22 + 8) = v23;
      *(v22 + 16) = v80;
      *(v22 + 24) = v21;
      v24 = v85;
      *(v22 + 40) = v57;
      *(v22 + 48) = v24;
      *(v22 + 56) = v59;
      sub_BDEA0(v9, *(v13 + 56) + v81 * v20);
      ++*(v13 + 16);
      v19 = v71;
      v18 = v82;
    }

    v27 = v14;
    result = v70;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v14 >= v19)
      {
        break;
      }

      v29 = v70[v14];
      ++v27;
      if (v29)
      {
        v25 = __clz(__rbit64(v29));
        v26 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v77 & 1) == 0)
    {

      v3 = v69;
      goto LABEL_53;
    }

    v67 = 1 << *(v10 + 32);
    v3 = v69;
    if (v67 >= 64)
    {
      bzero(v70, ((v67 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v70 = -1 << v67;
    }

    *(v10 + 16) = 0;
  }

LABEL_53:
  *v3 = v13;
  return result;
}

uint64_t sub_BC0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_BA668(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_51FEC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_F126C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_BC984();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_BC254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_51FEC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_BA3A8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_51FEC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_F126C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_BC80C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_BC3F4()
{
  result = qword_1286A0;
  if (!qword_1286A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1286A0);
  }

  return result;
}

uint64_t sub_BC440(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_BB46C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_51FEC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_F126C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_BCF64();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_BC5B8(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_E759C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_BD0D0();
      goto LABEL_7;
    }

    sub_BB9B8(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_E759C(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_BC760(v10, a2, a1, v16);
      return sub_38910(a2, &v23);
    }

LABEL_15:
    result = sub_F126C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = v17 + *(*(type metadata accessor for TypingIndicator() - 8) + 72) * v10;

  return sub_BDF04(a1, v18);
}

unint64_t sub_BC710(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_BC760(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a4[6] + (a1 << 6));
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  v7[2] = a2[2];
  *(v7 + 41) = *(a2 + 41);
  v9 = a4[7];
  v10 = type metadata accessor for TypingIndicator();
  result = sub_BDEA0(a3, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void *sub_BC80C()
{
  v1 = v0;
  sub_388C8(&qword_129710, &qword_F52D0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BC984()
{
  v1 = v0;
  sub_388C8(&qword_1296F0, &qword_F5B90);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BCAF4()
{
  v1 = v0;
  sub_388C8(&qword_129718, &qword_F52D8);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = v17 << 6;
        v19 = (*(v2 + 48) + (v17 << 6));
        v21 = v19[1];
        v20 = v19[2];
        v22 = *v19;
        *&v30[9] = *(v19 + 41);
        v29[1] = v21;
        *v30 = v20;
        v29[0] = v22;
        v23 = 16 * v17;
        v24 = (*(v2 + 56) + 16 * v17);
        v26 = *v24;
        v25 = v24[1];
        memmove((*(v4 + 48) + v18), v19, 0x39uLL);
        v27 = (*(v4 + 56) + v23);
        *v27 = v26;
        v27[1] = v25;
        sub_38910(v29, &v28);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BCCA4()
{
  v1 = v0;
  sub_388C8(&qword_129720, qword_F52E0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BCE08()
{
  v1 = v0;
  sub_388C8(&qword_129708, &qword_F52B8);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 56) + v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_BCF64()
{
  v1 = v0;
  sub_388C8(&qword_129700, &qword_F52B0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BD0D0()
{
  v1 = v0;
  v2 = type metadata accessor for TypingIndicator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_388C8(&qword_1296E8, &qword_F5298);
  v7 = *v0;
  v8 = sub_F10EC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = v22 << 6;
        v24 = (*(v7 + 48) + (v22 << 6));
        v26 = v24[1];
        v25 = v24[2];
        v27 = *v24;
        *&v38[9] = *(v24 + 41);
        v37 = v26;
        *v38 = v25;
        v36 = v27;
        v28 = *(v3 + 72) * v22;
        sub_BDE3C(*(v7 + 56) + v28, v6);
        v29 = (*(v9 + 48) + v23);
        v30 = *&v38[9];
        v32 = v37;
        v31 = *v38;
        *v29 = v36;
        v29[1] = v32;
        v29[2] = v31;
        *(v29 + 41) = v30;
        sub_BDEA0(v6, *(v9 + 56) + v28);
        result = sub_38910(&v36, v35);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_BD31C()
{
  v1 = v0;
  sub_388C8(&qword_1296F8, &unk_F52A0);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BD48C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 12) | (v17 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v21 = *v18;
      *&v26[9] = *(v18 + 41);
      v25[1] = v20;
      *v26 = v19;
      v25[0] = v21;
      memmove(v11, v18, 0x39uLL);
      if (v14 == v10)
      {
        sub_38910(v25, v24);
        goto LABEL_24;
      }

      v11 += 64;
      sub_38910(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_BD61C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_BD7B0(uint64_t a1)
{
  sub_F035C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      type metadata accessor for RCSParticipantChange.ChangeType();
      if (v6 <= 0x3F)
      {
        sub_BDD90();
        if (v7 <= 0x3F)
        {
          sub_BDDEC();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_BD898(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_F035C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = (((((((v14 & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v15 <= 3)
  {
    v16 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 == v13)
  {
    v23 = *(v7 + 48);

    return v23(a1);
  }

  else
  {
    v24 = &a1[v14] & ~v11;
    if (v10 == v13)
    {
      v25 = *(v9 + 48);

      return v25(v24, v10);
    }

    else
    {
      v26 = *(((v24 + v12) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_BDAE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_F035C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v13;
  v17 = ((((((((v12 + v13) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v15 >= a3)
  {
    v20 = 0;
    if (v15 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v15 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v15)
      {
        v23 = *(v8 + 56);

        v23(a1, a2);
      }

      else
      {
        v24 = &a1[v16] & ~v13;
        if (v11 == v15)
        {
          v25 = *(v10 + 56);

          v25(v24, a2, v11);
        }

        else
        {
          v26 = (v24 + v14) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = (a2 - 1);
          }

          *(v26 + 8) = v27;
        }
      }

      return;
    }
  }

  v21 = ~v15 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

void sub_BDD90()
{
  if (!qword_129658)
  {
    v0 = sub_F078C();
    if (!v1)
    {
      atomic_store(v0, &qword_129658);
    }
  }
}

void sub_BDDEC()
{
  if (!qword_129660[0])
  {
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, qword_129660);
    }
  }
}

uint64_t sub_BDE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingIndicator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BDEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingIndicator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BDF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingIndicator();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t RCSDestination.description.getter()
{
  sub_551C8(v0, v14);
  if (v16)
  {
    sub_55248(v14, &v17);
    sub_F0F9C(46);

    v1 = *(&v18 + 1);
    v2 = *&v19[0];
    sub_373E8(&v17, *(&v18 + 1));
    v3._countAndFlagsBits = (*(v2 + 8))(v1, v2);
    if (v3._object)
    {
      object = v3._object;
    }

    else
    {
      v3._countAndFlagsBits = 0x3E6C696E3CLL;
      object = 0xE500000000000000;
    }

    v3._object = object;
    sub_F08CC(v3);

    v20._object = 0x8000000000100170;
    v20._countAndFlagsBits = 0xD000000000000011;
    sub_F08CC(v20);
    v5 = *(&v18 + 1);
    v6 = *&v19[0];
    sub_373E8(&v17, *(&v18 + 1));
    v7._countAndFlagsBits = (*(v6 + 16))(v5, v6);
    if (v7._object)
    {
      v8 = v7._object;
    }

    else
    {
      v7._countAndFlagsBits = 0x3E6C696E3CLL;
      v8 = 0xE500000000000000;
    }

    v7._object = v8;
    sub_F08CC(v7);

    v9 = 0xD000000000000019;
    sub_1EDC(&v17);
  }

  else
  {
    v17 = v14[0];
    v18 = v14[1];
    v19[0] = *v15;
    *(v19 + 9) = *&v15[9];
    sub_F0F9C(25);

    v10 = RCSHandle.rawValue.getter();
    v12 = v11;
    sub_3CAB8(&v17);
    v21._countAndFlagsBits = v10;
    v21._object = v12;
    sub_F08CC(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    sub_F08CC(v22);
    return 0xD000000000000016;
  }

  return v9;
}

__n128 sub_BE174(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_BE190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_BE1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_BE21C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t sub_BE258()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_129728);
  v1 = sub_3C96C(v0, qword_129728);
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v2 = sub_3C96C(v0, static Logger.rcs);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_BE320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for RCSSpamReportOperation();
  v9 = (a5 + *(result + 28));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

void (*RCSSpamReportingController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_12B2C;
}

uint64_t sub_BE430()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*(v0 + 32))
  {
    sub_F0F9C(18);

    v5 = 0x53746F6274616863;
  }

  else
  {
    v5 = 0x286D617053703270;
  }

  v7 = v5;
  v8._countAndFlagsBits = v1;
  v8._object = v2;
  sub_F08CC(v8);
  v9._countAndFlagsBits = 44;
  v9._object = 0xE100000000000000;
  sub_F08CC(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v4;
  sub_F08CC(v10);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  sub_F08CC(v11);
  return v7;
}

uint64_t sub_BE514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RCSOperationController.OperationID.description.getter(a1, WitnessTable);
}

uint64_t RCSSpamReportingController.__allocating_init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_BF770(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t RCSSpamReportingController.init(delegate:operationConfiguration:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_BF770(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t RCSSpamReportingController.SpamReportOperationError.errorDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000018;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 0xD000000000000020;
    }

    v13 = 47;
    return v13 | 0xD000000000000010;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v2 + 8))(v6, a1);
    v13 = 34;
    return v13 | 0xD000000000000010;
  }

  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_F0F9C(45);

    v16 = 0xD00000000000002BLL;
    v17 = 0x80000000001001B0;
    v9 = sub_F0A0C();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
  }

  else
  {
    v15 = v6[1];
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_F0F9C(18);

    v16 = 0xD000000000000010;
    v17 = 0x80000000000FFF30;
    v12._countAndFlagsBits = v8;
    v12._object = v15;
  }

  sub_F08CC(v12);

  return v16;
}

uint64_t RCSSpamReportingController.spamReportCompleted(operationResult:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v43 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_373E8(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_373E8(a1, v14);
  LODWORD(v15) = (*(v15 + 16))(v14, v15);
  if (v15)
  {
    if (qword_128F68 != -1)
    {
      swift_once();
    }

    v16 = sub_F06CC();
    sub_3C96C(v16, qword_129728);

    v17 = sub_F06AC();
    v18 = sub_F0CDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_3E850(v11, v13, v47);
      _os_log_impl(&dword_0, v17, v18, "Spam report operation completed with ID %s", v19, 0xCu);
      sub_1EDC(v20);
    }

    v21 = a1[3];
    v22 = a1[4];
    sub_373E8(a1, v21);
    v23 = (*(v22 + 16))(v21, v22);
    v47[3] = &type metadata for Bool;
    LOBYTE(v47[0]) = v23 & 1;
  }

  else
  {
    v24 = a1[3];
    v25 = a1[4];
    sub_373E8(a1, v24);
    v26 = (*(v25 + 24))(v24, v25);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = *(v4 + 80);
      v29 = *(v4 + 88);
      type metadata accessor for RCSSpamReportingController.SpamReportOperationError();
      swift_getWitnessTable();
      v27 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    if (qword_128F68 != -1)
    {
      swift_once();
    }

    v30 = sub_F06CC();
    sub_3C96C(v30, qword_129728);

    swift_errorRetain();
    v31 = sub_F06AC();
    v32 = sub_F0CEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v15;
      v15 = v11;
      v36 = v35;
      v47[0] = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_3E850(v15, v13, v47);
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_0, v31, v32, "Spam report operation failed with ID %s error %@", v33, 0x16u);
      sub_372B0(v34, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v36);
      v11 = v15;
      LOBYTE(v15) = v44;
    }

    v47[0] = v27;
  }

  v48 = (v15 & 1) == 0;
  sub_F0AFC();
  v38 = sub_F0B1C();
  (*(*(v38 - 8) + 56))(v8, 0, 1, v38);
  v39 = v2[3];
  sub_99040(v47, v45);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v39;
  *(v40 + 40) = v11;
  *(v40 + 48) = v13;
  v41 = v45[1];
  *(v40 + 56) = v45[0];
  *(v40 + 72) = v41;
  *(v40 + 88) = v46;

  sub_3CC0C(0, 0, v8, &unk_F53B8, v40);

  return sub_372B0(v47, &qword_128B88, &qword_F3F30);
}

uint64_t sub_BEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_149F8;

  return (sub_E1100)(a5, a6, a7);
}

uint64_t RCSSpamReportingController.spamReportFailed(with:operationID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  if (qword_128F68 != -1)
  {
    swift_once();
  }

  v12 = sub_F06CC();
  sub_3C96C(v12, qword_129728);

  swift_errorRetain();
  v13 = sub_F06AC();
  v14 = sub_F0CEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_3E850(a2, a3, &v24);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&dword_0, v13, v14, "Spam report operation failed with ID %s error %@", v15, 0x16u);
    sub_372B0(v16, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v17);
  }

  sub_F0AFC();
  v19 = sub_F0B1C();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  v20 = *(v4 + 24);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a1;

  swift_errorRetain();

  sub_3CC0C(0, 0, v11, &unk_F53D0, v21);
}

uint64_t sub_BF15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_12BAC;

  return (sub_E10D8)(a5, a6, a7, 1);
}

uint64_t RCSSpamReportingController.reportSpam(to:forDestination:withSpamReportInfo:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = *v6;
  v7[21] = *(*v6 + 88);
  v7[22] = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[23] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[24] = v10;
  v7[25] = *(v10 + 64);
  v7[26] = swift_task_alloc();
  v11 = type metadata accessor for RCSSpamReportingController.OperationID();
  v7[27] = v11;
  v12 = *(v11 - 8);
  v7[28] = v12;
  v13 = *(v12 + 64) + 15;
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_12CA0, 0, 0);
}

uint64_t sub_BF3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = type metadata accessor for RCSSpamReportOperation();
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_13350, 0, 0);
}

uint64_t RCSSpamReportingController.reportChatbotSpam(to:forChatbot:withSpamReportInfo:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = *v6;
  v7[21] = *(*v6 + 88);
  v7[22] = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[23] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[24] = v10;
  v7[25] = *(v10 + 64);
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_13714, 0, 0);
}

uint64_t sub_BF618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = type metadata accessor for RCSSpamReportOperation();
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_13D00, 0, 0);
}

uint64_t sub_BF770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for RCSOperationController();
  swift_allocObject();
  *(v3 + 24) = RCSOperationController.init(configuration:)(a2);
  return v3;
}

void sub_BF8CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_BFCD4();
    if (v4 <= 0x3F)
    {
      sub_B7350();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_BF968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = 16;
  if (v8 > 0x10)
  {
    v9 = v8;
  }

  v10 = 252 - (2u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v15 = ((~(-1 << v12) + a2 - v10) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v15 < 2)
    {
LABEL_27:
      v17 = *(a1 + v9);
      if (v10 <= (v17 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v17);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_27;
  }

LABEL_16:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
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

  return (v11 | v16) + v10 + 1;
}

void sub_BFAE0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 0x10)
  {
    v9 = 16;
  }

  v10 = 252 - (2u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  v11 = v9 + 1;
  if (v10 >= a3)
  {
    v12 = 0;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v9] = -a2;
        return;
      }

      *&a1[v11] = 0;
    }

    else if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v12 = 1;
  if (v11 <= 3)
  {
    v13 = ((~(-1 << (8 * v11)) + a3 - v10) >> (8 * v11)) + 1;
    v14 = HIWORD(v13);
    if (v13 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v13 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v12 = 4;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v10 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v17 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v17;
    v18 = 1;
    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v18 = (v17 >> (8 * v11)) + 1;
  if (v9 == -1)
  {
LABEL_37:
    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v19 = v17 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_37;
  }

  if (v11 == 2)
  {
    *a1 = v19;
    if (v12 > 1)
    {
LABEL_41:
      if (v12 == 2)
      {
        *&a1[v11] = v18;
      }

      else
      {
        *&a1[v11] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v12 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v12)
  {
    a1[v11] = v18;
  }
}

void sub_BFCD4()
{
  if (!qword_129150)
  {
    v0 = sub_F0A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_129150);
    }
  }
}

uint64_t sub_BFD24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for RCSSpamReportingController.OperationType();
  if (v4 <= 0x3F)
  {
    result = sub_F035C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_BFDEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_BFE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_BFE7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_BFED0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_BFF0C()
{
  v0 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  [v0 setFormatOptions:3955];
  v1 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  [v1 setFormatOptions:1907];
  sub_388C8(&qword_128BB8, &unk_F41E0);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_F56F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  qword_12FCB8 = v2;
  return result;
}

uint64_t sub_BFFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  if (qword_128F70 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v4 = qword_12FCB8;
    v25 = a3;
    if (qword_12FCB8 >> 62)
    {
      break;
    }

    v5 = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_4:
    v6 = 0;
    v26 = v4 & 0xC000000000000001;
    a3 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v7 = sub_F0FCC();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = sub_F07BC();
      v11 = [v8 dateFromString:v10];

      v12 = sub_F030C();
      v13 = *(v12 - 8);
      v14 = *(v13 + 64);
      __chkstk_darwin(v12);
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v18 = v15;

        sub_F02CC();

        v19 = v25;
        (*(v13 + 32))(v25, v17, v18);
        return (*(v13 + 56))(v19, 0, 1, v18);
      }

      ++v6;
      if (v9 == v5)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v5 = sub_F10DC();
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_18:

  v21 = sub_F030C();
  v22 = *(*(v21 - 8) + 56);
  v23 = v21;
  v24 = v25;

  return v22(v24, 1, 1, v23);
}

uint64_t RCSFile.ThumbnailInformation.init(thumbnail:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_388C8(&qword_1299C0, &unk_F74D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v38 - v6;
  v7 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v8 = &a2[v7[8]];
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  v39 = v8;
  v9 = [a1 fileSizeInBytes];
  v10 = [v9 integerValue];

  *a2 = v10;
  v11 = [a1 untrustedContentType];
  v12 = sub_F07EC();
  v14 = v13;

  *(a2 + 1) = v12;
  *(a2 + 2) = v14;
  v15 = [a1 dataUrl];
  v16 = &a2[v7[6]];
  sub_F01AC();

  v17 = sub_F030C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_388C8(&qword_127B20, &unk_F74E0);
  v23 = *(*(v22 - 8) + 64);
  *&v24 = __chkstk_darwin(v22 - 8).n128_u64[0];
  v26 = &v38 - v25;
  v27 = [a1 validUntil];
  v28 = sub_F07EC();
  v30 = v29;

  sub_BFFB4(v28, v30, v26);
  v31 = *(v18 + 48);
  if (v31(v26, 1, v17) == 1)
  {
    sub_F02DC();
    if (v31(v26, 1, v17) != 1)
    {
      sub_372B0(v26, &qword_127B20, &unk_F74E0);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v26, v17);
  }

  (*(v18 + 32))(&a2[v7[7]], v21, v17);
  v32 = [a1 cryptoMaterial];
  v33 = v38;
  sub_C0650(v32, v38);
  v34 = sub_F050C();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {

    sub_372B0(v33, &qword_1299C0, &unk_F74D0);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  else
  {
    *(&v41 + 1) = v34;
    v42 = &protocol witness table for FileCryptoMaterial;
    v36 = sub_37474(&v40);
    (*(v35 + 32))(v36, v33, v34);
  }

  return sub_14A04(&v40, v39, &qword_1299C8, &qword_F5700);
}

uint64_t sub_C0650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 key];
    sub_F025C();

    v5 = [v3 nonce];
    if (v5)
    {
      v6 = v5;
      sub_F025C();
    }

    v8 = [v3 aad];
    if (v8)
    {
      v9 = v8;
      sub_F025C();
    }

    v10 = [v3 authTag];
    sub_F025C();

    v11 = [v3 originalFileSizeInBytes];
    [v11 unsignedIntValue];

    sub_F04DC();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v12 = sub_F050C();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v7, 1, v12);
}

uint64_t RCSFile.DispositionInformation.init(disposition:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_388C8(&qword_1299C0, &unk_F74D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v50 = v49 - v6;
  v7 = type metadata accessor for RCSFile.DispositionInformation(0);
  v8 = a2 + v7[10];
  *v8 = 0;
  v8[8] = 1;
  v9 = a2 + v7[11];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v51 = v9;
  v10 = [a1 fileSizeInBytes];
  v11 = [v10 integerValue];

  *a2 = v11;
  v12 = [a1 originalFileName];
  v13 = sub_F07EC();
  v15 = v14;

  a2[1] = v13;
  a2[2] = v15;
  v16 = [a1 untrustedContentType];
  v17 = sub_F07EC();
  v19 = v18;

  a2[3] = v17;
  a2[4] = v19;
  v20 = [a1 dataUrl];
  v21 = a2 + v7[7];
  sub_F01AC();

  v22 = [a1 disposition];
  v23 = v22 + 1;
  if (v22 + 1 >= 3)
  {
    v23 = 1;
  }

  *(a2 + v7[9]) = v23;
  v24 = [a1 playingLengthInSeconds];
  if (v24)
  {
    v25 = v24;
    [v24 doubleValue];
    v27 = v26;

    *v8 = v27;
    v8[8] = 0;
  }

  v28 = sub_F030C();
  v49[1] = v49;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_388C8(&qword_127B20, &unk_F74E0);
  v49[0] = v49;
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v35 = __chkstk_darwin(v33 - 8).n128_u64[0];
  v37 = v49 - v36;
  v38 = [a1 validUntil];
  v39 = sub_F07EC();
  v41 = v40;

  sub_BFFB4(v39, v41, v37);
  v42 = *(v29 + 48);
  if (v42(v37, 1, v28) == 1)
  {
    sub_F02DC();
    if (v42(v37, 1, v28) != 1)
    {
      sub_372B0(v37, &qword_127B20, &unk_F74E0);
    }
  }

  else
  {
    (*(v29 + 32))(v32, v37, v28);
  }

  (*(v29 + 32))(a2 + v7[8], v32, v28);
  v43 = [a1 cryptoMaterial];
  v44 = v50;
  sub_C0650(v43, v50);
  v45 = sub_F050C();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {

    sub_372B0(v44, &qword_1299C0, &unk_F74D0);
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
  }

  else
  {
    *(&v53 + 1) = v45;
    v54 = &protocol witness table for FileCryptoMaterial;
    v47 = sub_37474(&v52);
    (*(v46 + 32))(v47, v44, v45);
  }

  return sub_14A04(&v52, v51, &qword_1299C8, &qword_F5700);
}

void RCSFile.init(descriptor:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a2, 1, 1, v8);
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v10 = sub_F06CC();
  sub_3C96C(v10, static Logger.rcs);
  v11 = a1;
  v12 = sub_F06AC();
  v13 = sub_F0CCC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_0, v12, v13, "Converting %@ to RCSFile", v14, 0xCu);
    sub_372B0(v15, &qword_127AF0, &qword_F28E0);
  }

  v17 = [v11 thumbnail];
  if (v17)
  {
    RCSFile.ThumbnailInformation.init(thumbnail:)(v17, v7);
    v9(v7, 0, 1, v8);
    sub_14A04(v7, a2, &qword_1299D0, &qword_F6890);
  }

  v18 = [v11 file];
  v19 = type metadata accessor for RCSFile(0);
  RCSFile.DispositionInformation.init(disposition:)(v18, (a2 + *(v19 + 20)));
}

uint64_t RCSMessage.Coordinates.init(coordinates:)(void *a1)
{
  v2 = [a1 latitude];
  [v2 doubleValue];

  v3 = [a1 longitude];
  [v3 doubleValue];

  return 0;
}

id RCSMessage.Coordinates.toCTCoordinates()(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(CTLazuliLocationCoordinates) init];
  v4 = sub_F0BEC();
  [v3 setLatitude:v4];

  v5 = sub_F0BEC();
  [v3 setLongitude:v5];

  v6 = [objc_allocWithZone(CTLazuliMessageGeoLocationPush) init];
  [v6 setCoordinates:v3];
  if (a2)
  {
    v7 = sub_F07BC();
  }

  else
  {
    v7 = 0;
  }

  [v6 setAdditionalDescription:v7];

  return v6;
}

unint64_t RCSGroup.ParseError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[4] >> 62;
  if (!v2)
  {
    sub_F0F9C(38);

    v7 = 0xD000000000000023;
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = v0[1];
    sub_F0F9C(43);

    v7 = 0x2070756F7247;
    v8._countAndFlagsBits = v1;
    v8._object = v5;
    sub_F08CC(v8);
    v9._object = 0x8000000000100290;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    sub_F08CC(v9);
    v10._countAndFlagsBits = v4;
    v10._object = v3;
    sub_F08CC(v10);
    v11._countAndFlagsBits = 2629690;
    v11._object = 0xE300000000000000;
    sub_F08CC(v11);
    swift_getErrorValue();
LABEL_5:
    v12._countAndFlagsBits = sub_F12AC();
    sub_F08CC(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    sub_F08CC(v13);
    return v7;
  }

  return 0xD00000000000001ELL;
}

uint64_t RCSGroup.init(group:identity:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  *(a3 + 5) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 4) = 0u;
  v50 = a2;
  sub_1F28(a2, a3);
  v5 = [a1 participants];
  v6 = [v5 memberList];

  sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
  v7 = sub_F09FC();

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  v52 = a1;
  v53 = v4;
  if (v8)
  {
    while (1)
    {
      v9 = v7;
      v58 = _swiftEmptyArrayStorage;
      result = sub_B6864(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        break;
      }

      v11 = 0;
      v7 = v58;
      v12 = v9;
      v55 = v9;
      v56 = v9 & 0xC000000000000001;
      v54 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a1 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v56)
        {
          v13 = sub_F0FCC();
        }

        else
        {
          if (v11 >= *(v54 + 16))
          {
            goto LABEL_17;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 member];
        v4 = sub_F07EC();
        v17 = v16;

        v18._countAndFlagsBits = v4;
        v18._object = v17;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v57, v18, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        if (v19)
        {
          sub_1EDC(v50);

          sub_1EDC(v53);
          v26 = v53[12];
          v27 = v53[13];
          return sub_C24C8(v53[8], v53[9], v53[10], v53[11]);
        }

        v58 = v7;
        v21 = *(v7 + 16);
        v20 = *(v7 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_B6864((v20 > 1), v21 + 1, 1);
          v7 = v58;
        }

        *(v7 + 16) = v21 + 1;
        v22 = v7 + (v21 << 6);
        scheme = v57.scheme;
        id = v57.id;
        v25 = *&v57.attributes._rawValue;
        *(v22 + 73) = *(&v57.alternateHandle + 1);
        *(v22 + 48) = id;
        *(v22 + 64) = v25;
        *(v22 + 32) = scheme;
        ++v11;
        v12 = v55;
        if (a1 == v8)
        {

          a1 = v52;
          v4 = v53;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v8 = sub_F10DC();
      v52 = a1;
      v53 = v4;
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    v7 = _swiftEmptyArrayStorage;
LABEL_20:
    v4[5] = v7;
    v28 = [a1 subject];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 displayString];

      v31 = sub_F07EC();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v4[6] = v31;
    v4[7] = v33;
    v34 = [a1 icon];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 name];
      v37 = sub_F07EC();
      v39 = v38;

      v40 = [v35 data];
      v41 = sub_F025C();
      v43 = v42;

      v44 = [v35 type];
      v45 = sub_F07EC();
      v47 = v46;

      sub_1EDC(v51);
    }

    else
    {

      sub_1EDC(v51);
      v37 = 0;
      v39 = 0;
      v41 = 0;
      v43 = 0;
      v45 = 0;
      v47 = 0;
    }

    v48 = v53[12];
    v49 = v53[13];
    result = sub_C24C8(v53[8], v53[9], v53[10], v53[11]);
    v53[8] = v37;
    v53[9] = v39;
    v53[10] = v41;
    v53[11] = v43;
    v53[12] = v45;
    v53[13] = v47;
  }

  return result;
}

void RCSGroup.Icon.init(icon:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  v5 = sub_F07EC();
  v7 = v6;

  v8 = [a1 data];
  v9 = sub_F025C();
  v11 = v10;

  v12 = [a1 type];
  v13 = sub_F07EC();
  v15 = v14;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
  a2[5] = v15;
}

unint64_t RCSGroup.removing(participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_54C4C(v2, a2);

  v5 = sub_C2680((a2 + 40), a1);

  v7 = *(*(a2 + 40) + 16);
  if (v7 >= v5)
  {
    return sub_C29F8(v5, v7);
  }

  __break(1u);
  return result;
}

id RCSMessage.Typing.init(indication:)(void *a1)
{
  v2 = [a1 active];

  return v2;
}

id CTLazuliDestination.init(handle:countryCode:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_E7F70(a1, a2, v7);
  sub_3CAB8(a1);
  RCSHandle.rawValue.getter();
  sub_3CAB8(v7);
  v5 = sub_F07BC();

  [v4 setUri:v5];

  return v4;
}

id CTLazuliGroupChatConversationID.init(conversationID:)()
{

  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CTLazuliFileDispositionInformation.init(file:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (a1 + *(type metadata accessor for RCSFile(0) + 20));
  v4 = *v3;
  v5 = v2;
  v6 = sub_F0C5C();
  [v5 setFileSizeInBytes:v6];

  v7 = v3[3];
  v8 = v3[4];
  v9 = sub_F07BC();
  [v5 setContentType:v9];

  v10 = v3[1];
  v11 = v3[2];
  v12 = sub_F07BC();
  [v5 setOriginalFileName:v12];

  v13 = type metadata accessor for RCSFile.DispositionInformation(0);
  v14 = v3 + v13[7];
  v15 = sub_F019C();
  [v5 setDataUrl:v15];

  v16 = v13[8];
  if (qword_128F70 != -1)
  {
    swift_once();
  }

  v17 = qword_12FCB8;
  if (qword_12FCB8 >> 62)
  {
    result = sub_F10DC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_10;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_F0FCC();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;
  v21 = sub_F028C();
  v22 = [v20 stringFromDate:v21];

  sub_F07EC();
LABEL_10:
  v23 = sub_F07BC();

  [v5 setValidUntil:v23];

  [v5 setDisposition:*(v3 + v13[9]) - 1];
  if (RCSFile.isAudio.getter() & 1) != 0 || (RCSFile.isMovie.getter())
  {
    v24 = v3 + v13[10];
    if ((v24[8] & 1) == 0)
    {
      v25 = *v24;
      v26 = sub_F0BEC();
      [v5 setPlayingLengthInSeconds:v26];
    }
  }

  sub_37310(0, &qword_1299D8, CTLazuliFileCryptoMaterial_ptr);
  sub_37380(v3 + v13[11], v28, &qword_1299C8, &qword_F5700);
  v27 = sub_C1C74(v28);
  [v5 setCryptoMaterial:v27];

  sub_14A6C(a1, type metadata accessor for RCSFile);
  return v5;
}

id sub_C1C74(uint64_t a1)
{
  sub_37380(a1, &v35, &qword_1299C8, &qword_F5700);
  if (v36)
  {
    sub_3928(&v35, v37);
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = v38;
    v4 = v39;
    sub_373E8(v37, v38);
    v5 = *(v4 + 8);
    v6 = v2;
    v7 = v5(v3, v4);
    v9 = v8;
    v10 = sub_F024C();
    sub_5F048(v7, v9);
    [v6 setKey:v10];

    v11 = v38;
    v12 = v39;
    sub_373E8(v37, v38);
    v13 = (*(v12 + 16))(v11, v12);
    if (v14 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v15 = sub_F024C();
      sub_66124(v16, v17);
    }

    [v6 setNonce:v15];

    v18 = v38;
    v19 = v39;
    sub_373E8(v37, v38);
    v20 = (*(v19 + 24))(v18, v19);
    if (v21 >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v22 = sub_F024C();
      sub_66124(v23, v24);
    }

    [v6 setAad:v22];

    v25 = v38;
    v26 = v39;
    sub_373E8(v37, v38);
    v27 = (*(v26 + 32))(v25, v26);
    v29 = v28;
    v30 = sub_F024C();
    sub_5F048(v27, v29);
    [v6 setAuthTag:v30];

    v31 = v38;
    v32 = v39;
    sub_373E8(v37, v38);
    v33 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:{(*(v32 + 40))(v31, v32)}];
    [v6 setOriginalFileSizeInBytes:v33];

    sub_372B0(a1, &qword_1299C8, &qword_F5700);
    sub_1EDC(v37);
  }

  else
  {
    sub_372B0(a1, &qword_1299C8, &qword_F5700);
    sub_372B0(&v35, &qword_1299C8, &qword_F5700);
    return 0;
  }

  return v6;
}

uint64_t CTLazuliFileThumbnailInformation.init(file:)(uint64_t a1)
{
  v2 = sub_388C8(&qword_1299D0, &qword_F6890);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v30[-v4 - 8];
  v6 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_37380(a1, v5, &qword_1299D0, &qword_F6890);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_14A6C(a1, type metadata accessor for RCSFile);
    sub_372B0(v5, &qword_1299D0, &qword_F6890);
    return 0;
  }

  sub_C2AB8(v5, v10);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = v10[1];
  v14 = v10[2];
  v11 = v12;
  v15 = sub_F07BC();
  [v11 setContentType:v15];

  v16 = *v10;
  v17 = sub_F0C5C();
  [v11 setFileSizeInBytes:v17];

  v18 = v10 + v6[6];
  v19 = sub_F019C();
  [v11 setDataUrl:v19];

  v20 = v6[7];
  if (qword_128F70 != -1)
  {
    swift_once();
  }

  v21 = qword_12FCB8;
  if (qword_12FCB8 >> 62)
  {
    result = sub_F10DC();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
LABEL_12:
      v27 = sub_F07BC();

      [v11 setValidUntil:v27];

      sub_37310(0, &qword_1299D8, CTLazuliFileCryptoMaterial_ptr);
      sub_37380(v10 + v6[8], v30, &qword_1299C8, &qword_F5700);
      v28 = sub_C1C74(v30);
      [v11 setCryptoMaterial:v28];

      sub_14A6C(a1, type metadata accessor for RCSFile);
      sub_14A6C(v10, type metadata accessor for RCSFile.ThumbnailInformation);
      return v11;
    }
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = sub_F0FCC();
    goto LABEL_10;
  }

  if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
  {
    v23 = *(v21 + 32);
LABEL_10:
    v24 = v23;
    v25 = sub_F028C();
    v26 = [v24 stringFromDate:v25];

    sub_F07EC();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id CTLazuliFileTransferDescriptor.init(file:)(uint64_t a1)
{
  v2 = type metadata accessor for RCSFile(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_37310(0, &qword_1299E0, CTLazuliFileDispositionInformation_ptr);
  sub_C2B1C(a1, v5);
  v7 = v6;
  v8 = CTLazuliFileDispositionInformation.init(file:)(v5);
  [v7 setFile:v8];

  sub_37310(0, &qword_1299E8, CTLazuliFileThumbnailInformation_ptr);
  sub_C2B1C(a1, v5);
  v9 = CTLazuliFileThumbnailInformation.init(file:)(v5);
  [v7 setThumbnail:v9];

  sub_14A6C(a1, type metadata accessor for RCSFile);
  return v7;
}

uint64_t sub_C24C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_5F048(a3, a4);
  }

  return result;
}

uint64_t sub_C253C(uint64_t a1, uint64_t a2)
{
  v11 = *(a1 + 16);
  v12 = a2;
  v2 = 0;
  if (v11)
  {
    for (i = (a1 + 80); ; i += 8)
    {
      v13[3] = &v11;
      v4 = *(i - 5);
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *i;
      v13[0] = *(i - 4);
      v13[1] = v5;
      __chkstk_darwin(a1);
      v10[2] = v13;

      v8 = sub_400F0(sub_14AEC, v10, v12);

      if (v8)
      {
        break;
      }

      if (v11 == ++v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_C2680(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_C253C(*a1, a2);
  v57 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = (v6 + 16);
    v10 = *(v6 + 16);
    if (v9 == v10)
    {
      return v2;
    }

    v43 = a1;
    v44 = a2;
    v12 = (result << 6) + 96;
    while (v9 < v10)
    {
      v13 = (v6 + v12);
      v15 = *(v6 + v12 + 16);
      v14 = *(v6 + v12 + 32);
      v16 = *(v6 + v12);
      *(v56 + 9) = *(v6 + v12 + 41);
      v55[1] = v15;
      v56[0] = v14;
      v55[0] = v16;
      v49 = v15;
      __chkstk_darwin(result);
      v42[2] = &v49;
      sub_38910(v55, &v52);
      v17 = v57;
      v18 = sub_400F0(sub_14ACC, v42, v44);
      v57 = v17;
      result = sub_3CAB8(v55);
      if ((v18 & 1) == 0)
      {
        if (v9 != v2)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }

          v19 = *v11;
          if (v2 >= *v11)
          {
            goto LABEL_23;
          }

          v20 = v2 << 6;
          v21 = (v6 + 32 + (v2 << 6));
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[2];
          *(v51 + 9) = *(v21 + 41);
          v50 = v23;
          v51[0] = v24;
          v49 = v22;
          if (v9 >= v19)
          {
            goto LABEL_24;
          }

          v25 = *v13;
          v26 = v13[1];
          v27 = v13[2];
          *(v54 + 9) = *(v13 + 41);
          v53 = v26;
          v54[0] = v27;
          v52 = v25;
          sub_38910(&v49, v47);
          sub_38910(&v52, v47);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_C2528(v6);
            v6 = result;
          }

          if (v2 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v28 = (v6 + v20);
          v29 = *(v6 + v20 + 32);
          v30 = *(v6 + v20 + 48);
          v31 = *(v6 + v20 + 64);
          *(v46 + 9) = *(v6 + v20 + 73);
          v45[1] = v30;
          v46[0] = v31;
          v45[0] = v29;
          v32 = v52;
          v33 = v53;
          v34 = v54[0];
          *(v28 + 73) = *(v54 + 9);
          v28[3] = v33;
          v28[4] = v34;
          v28[2] = v32;
          result = sub_3CAB8(v45);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_26;
          }

          v35 = (v6 + v12);
          v36 = *(v6 + v12);
          v37 = *(v6 + v12 + 16);
          v38 = *(v6 + v12 + 32);
          *(v48 + 9) = *(v6 + v12 + 41);
          v47[1] = v37;
          v48[0] = v38;
          v47[0] = v36;
          v39 = v49;
          v40 = v50;
          v41 = v51[0];
          *(v35 + 41) = *(v51 + 9);
          v35[1] = v40;
          v35[2] = v41;
          *v35 = v39;
          result = sub_3CAB8(v47);
          *v43 = v6;
        }

        ++v2;
      }

      ++v9;
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      v12 += 64;
      if (v9 == v10)
      {
        return v2;
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
  }

  __break(1u);
  return result;
}

unint64_t sub_C2938(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = &v13[64 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_C29F8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_D8C60(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_C2938(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_C2AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C2B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_C2B84()
{
  result = qword_1299F0;
  if (!qword_1299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1299F0);
  }

  return result;
}

unint64_t sub_C2BD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_C2BF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 40))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 32) >> 57) >> 5) | (4 * ((*(a1 + 32) >> 57) & 0x18 | *(a1 + 32) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_C2C50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_C2CC4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[4] = result[4] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
  }

  return result;
}

uint64_t RCSChipList.attributes.getter()
{
  v1 = v0;
  if (qword_128F48 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.chatbot);

  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = [v6 chipList];
      sub_F0DBC();
      v8 = sub_F09FC();

      if (v8 >> 62)
      {
        v9 = sub_F10DC();
      }

      else
      {
        v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v9 = 0;
    }

    *(v5 + 4) = v9;

    _os_log_impl(&dword_0, v3, v4, "Apply %ld chip list attributes", v5, 0xCu);

    v10 = *(v1 + 16);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {

    v10 = *(v1 + 16);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = [v10 dictionaryRepresentation];
  v12 = sub_F076C();

  return v12;
}

uint64_t RCSChipList.__allocating_init(_:originalID:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  v4 = sub_F07BC();

  v5 = [v3 IMChipListFromCTChipList:a1 originalID:v4];

  *(v2 + 16) = v5;
  return v2;
}

uint64_t RCSChipList.init(_:originalID:)(void *a1)
{
  v3 = objc_opt_self();
  v4 = sub_F07BC();

  v5 = [v3 IMChipListFromCTChipList:a1 originalID:v4];

  *(v1 + 16) = v5;
  return v1;
}

uint64_t RCSSuggestedReply.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_C30A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_1282F0, &qword_F3450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSConvergenceContext.subscriptionInfo.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[10];
  v3 = v0[11];

  return v1;
}

uint64_t RCSConvergenceContext.init(sender:subscriptionInfo:chat:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v11;
  *(a8 + 32) = a1[2];
  *(a8 + 41) = *(a1 + 41);
  *(a8 + 64) = a2;
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  v12 = type metadata accessor for RCSConvergenceContext();
  v13 = *(*(a7 - 8) + 32);
  v14 = a8 + *(v12 + 32);

  return v13(v14, a6, a7);
}

void sub_C3250(uint64_t a1)
{
  sub_C36EC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_C32E0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 96) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 96) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_C3478(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 96) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 96) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 41) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 8) = a2;
  }
}

void sub_C36EC()
{
  if (!qword_129B20)
  {
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_129B20);
    }
  }
}

uint64_t RCSOperationController.OperationID.description.getter(uint64_t a1, uint64_t a2)
{
  sub_F0F9C(48);

  v13[0] = 0xD000000000000016;
  v13[1] = 0x8000000000100330;
  v4 = sub_F035C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v7);
  sub_5F9D4();
  v14._countAndFlagsBits = sub_F11EC();
  sub_F08CC(v14);

  (*(v5 + 8))(v9, v4);
  v15._countAndFlagsBits = 0x4965707564656420;
  v15._object = 0xEA00000000003D44;
  sub_F08CC(v15);
  v16._countAndFlagsBits = (*(a2 + 24))(a1, a2);
  sub_F08CC(v16);

  v17._countAndFlagsBits = 0x4449657565757120;
  v17._object = 0xE90000000000003DLL;
  sub_F08CC(v17);
  v10._countAndFlagsBits = (*(a2 + 32))(a1, a2);
  if (v10._object)
  {
    object = v10._object;
  }

  else
  {
    v10._countAndFlagsBits = 0x296C696E28;
    object = 0xE500000000000000;
  }

  v10._object = object;
  sub_F08CC(v10);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_F08CC(v18);
  return v13[0];
}

uint64_t RCSOperationController.Configuration.init(maxOperationDuration:operationExpirationWatchdogInterval:untrackedFulfillmentHandler:verifiesUniqueOperationIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t RCSOperationController.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RCSOperationController.init(configuration:)(a1);
  return v2;
}

uint64_t sub_C39B4()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_129B28);
  v1 = sub_3C96C(v0, qword_129B28);
  if (qword_128F58 != -1)
  {
    swift_once();
  }

  v2 = sub_3C96C(v0, static Logger.operations);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RCSOperationController.OperationError.errorDescription.getter()
{
  sub_C7240(v0, &v20);
  if (v23)
  {
    v1 = v22;
    sub_54F88(&v20, v13);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_F0F9C(61);
    v18 = v16;
    v19 = v17;
    v24._countAndFlagsBits = 0xD000000000000019;
    v24._object = 0x8000000000100350;
    sub_F08CC(v24);
    sub_3FE38(v13, &v16);
    v25._countAndFlagsBits = sub_F085C();
    sub_F08CC(v25);

    v26._object = 0x8000000000100370;
    v26._countAndFlagsBits = 0xD000000000000020;
    sub_F08CC(v26);
    v16 = v1;
    sub_388C8(&qword_128BE0, &qword_F58B0);
    v27._countAndFlagsBits = sub_F083C();
    sub_F08CC(v27);

    v2 = v18;
  }

  else
  {
    sub_3928(&v21, v13);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_F0F9C(83);
    v28._object = 0x80000000001003A0;
    v28._countAndFlagsBits = 0xD000000000000020;
    sub_F08CC(v28);
    v3 = v14;
    v4 = v15;
    sub_373E8(v13, v14);
    v5 = sub_F035C();
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    v8 = __chkstk_darwin(v5);
    v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v3, v4, v8);
    sub_5F9D4();
    v29._countAndFlagsBits = sub_F11EC();
    sub_F08CC(v29);

    (*(v6 + 8))(v10, v5);
    v30._countAndFlagsBits = 0xD000000000000016;
    v30._object = 0x80000000001003D0;
    sub_F08CC(v30);
    sub_F0BFC();
    v31._object = 0xEF2064657375202CLL;
    v31._countAndFlagsBits = 0x73646E6F63657320;
    sub_F08CC(v31);
    sub_F0BFC();
    v32._countAndFlagsBits = 0x73646E6F63657320;
    v32._object = 0xE800000000000000;
    sub_F08CC(v32);
    v2 = v16;
  }

  sub_1EDC(v13);
  return v2;
}

uint64_t sub_C3D90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_F06EC();
  v7 = *(v6 - 8);
  isa = v7[8].isa;
  __chkstk_darwin(v6);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_F071C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v16 = sub_F06CC();
  sub_3C96C(v16, qword_129B28);
  swift_retain_n();
  v17 = sub_F06AC();
  LODWORD(v59) = sub_F0D0C();
  v18 = os_log_type_enabled(v17, v59);
  v57 = v11;
  v58 = v10;
  v56 = v15;
  v55 = v6;
  v60 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v20 = sub_F035C();
    v54 = a1;
    v51 = v49;
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    __chkstk_darwin(v20);
    v25 = &v49[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v26 = v7;
    v27 = a2;
    v28 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v29 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v28);
    v30 = *(v29 + 16);
    v52 = v17;
    v31 = v29;
    a2 = v27;
    v7 = v26;
    v30(v28, v31);
    sub_5F9D4();
    v32 = sub_F11EC();
    v34 = v33;
    (*(v22 + 8))(v25, v21);
    a1 = v54;
    v35 = sub_3E850(v32, v34, aBlock);

    *(v19 + 14) = v35;
    *(v19 + 22) = 2048;
    swift_beginAccess();
    v36 = *(*(v3 + 152) + 16);

    *(v19 + 24) = v36;

    v37 = v52;
    _os_log_impl(&dword_0, v52, v59, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v19, 0x20u);
    sub_1EDC(v53);

    if ((a2 & 1) == 0)
    {
LABEL_5:
      v64 = &type metadata for Never;
      LOBYTE(v65) = 0;
      goto LABEL_8;
    }
  }

  else
  {

    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  aBlock[0] = a1;
  LOBYTE(v65) = 1;
  swift_errorRetain();
LABEL_8:
  swift_beginAccess();
  sub_C817C(aBlock, v3 + 112);
  swift_endAccess();
  result = swift_beginAccess();
  v59 = *(v3 + 152);
  v39 = *(v59 + 16);
  if (v39)
  {
    v54 = sub_C81EC();
    v53 = &v63;
    v52 = v7 + 1;
    v51 = (v60 + 8);

    v50 = a2;
    v40 = 32;
    v41 = v56;
    v42 = v58;
    do
    {
      v43 = swift_allocObject();
      *(v43 + 16) = *(v59 + v40);

      v60 = sub_F0D4C();
      v44 = v50 & 1;
      v67 = v50 & 1;
      v45 = swift_allocObject();
      *(v45 + 16) = a1;
      *(v45 + 24) = v67;
      *(v45 + 32) = sub_173D8;
      *(v45 + 40) = v43;
      v65 = sub_17444;
      v66 = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v63 = sub_9400C;
      v64 = &unk_120E88;
      v46 = _Block_copy(aBlock);

      sub_C8244(a1, v44);

      sub_F06FC();
      v61 = &_swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v47 = v55;
      sub_F0E8C();
      v48 = v60;
      sub_F0D5C();
      _Block_release(v46);

      (v52->isa)(v42, v47);
      (*v51)(v41, v57);

      v40 += 16;
      --v39;
    }

    while (v39);
  }

  return result;
}

uint64_t sub_C4498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F06EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_F071C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v14 = sub_F06CC();
  sub_3C96C(v14, qword_129B28);
  swift_retain_n();
  v15 = sub_F06AC();
  v16 = sub_F0D0C();
  v17 = os_log_type_enabled(v15, v16);
  v59 = v8;
  v58 = v9;
  v57 = v13;
  v56 = v4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v19 = sub_F035C();
    v61 = a1;
    v20 = v19;
    v53 = &v52;
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    __chkstk_darwin(v19);
    v24 = v10;
    v25 = v5;
    v26 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    LODWORD(v55) = v16;
    v27 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v28 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v27);
    v29 = *(v28 + 16);
    v54 = v15;
    v29(v27, v28);
    sub_5F9D4();
    v30 = sub_F11EC();
    v32 = v31;
    v33 = v26;
    v5 = v25;
    v10 = v24;
    v34 = v20;
    a1 = v61;
    (*(v21 + 8))(v33, v34);
    v35 = sub_3E850(v30, v32, aBlock);

    *(v18 + 14) = v35;
    *(v18 + 22) = 2048;
    swift_beginAccess();
    v36 = *(*(v2 + 152) + 16);

    *(v18 + 24) = v36;

    v37 = v54;
    _os_log_impl(&dword_0, v54, v55, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v18, 0x20u);
    sub_1EDC(v60);
  }

  else
  {
  }

  sub_37380(a1, v69, &qword_128B88, &qword_F3F30);
  v38 = v70;
  if (v70)
  {
    aBlock[0] = *&v69[0];
  }

  else
  {
    sub_54F88(v69, v62);
    v66 = &type metadata for Any + 8;
    aBlock[0] = swift_allocObject();
    sub_54F88(v62, (aBlock[0] + 16));
  }

  LOBYTE(v67) = v38;
  swift_beginAccess();
  sub_C817C(aBlock, v2 + 112);
  swift_endAccess();
  result = swift_beginAccess();
  v60 = *(v2 + 152);
  v40 = v60[2];
  if (v40)
  {
    v55 = sub_C81EC();
    v54 = &v65;
    v53 = (v5 + 8);
    v52 = (v10 + 8);

    v41 = 4;
    v42 = v59;
    do
    {
      v43 = swift_allocObject();
      *(v43 + 16) = *&v60[v41];

      v61 = sub_F0D4C();
      sub_37380(a1, v69, &qword_128B88, &qword_F3F30);
      v44 = swift_allocObject();
      v45 = v69[1];
      *(v44 + 16) = v69[0];
      *(v44 + 32) = v45;
      *(v44 + 48) = v70;
      *(v44 + 56) = sub_17C54;
      *(v44 + 64) = v43;
      v67 = sub_17BCC;
      v68 = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v65 = sub_9400C;
      v66 = &unk_1210A8;
      v46 = a1;
      v47 = _Block_copy(aBlock);
      swift_retain_n();
      v48 = v57;
      sub_F06FC();
      v63 = _swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v49 = v56;
      sub_F0E8C();
      v50 = v61;
      sub_F0D5C();
      v51 = v47;
      a1 = v46;
      _Block_release(v51);

      (*v53)(v42, v49);
      (*v52)(v48, v58);

      v41 += 2;
      --v40;
    }

    while (v40);
  }

  return result;
}

uint64_t sub_C4C18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F06EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_F071C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v14 = sub_F06CC();
  sub_3C96C(v14, qword_129B28);
  swift_retain_n();
  v15 = sub_F06AC();
  v16 = sub_F0D0C();
  v17 = os_log_type_enabled(v15, v16);
  v59 = v8;
  v58 = v9;
  v57 = v13;
  v56 = v4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&aBlock = v60;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v19 = sub_F035C();
    v61 = a1;
    v20 = v19;
    v53 = &v52;
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    __chkstk_darwin(v19);
    v24 = v10;
    v25 = v5;
    v26 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    LODWORD(v55) = v16;
    v27 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v28 = *(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v27);
    v29 = *(v28 + 16);
    v54 = v15;
    v29(v27, v28);
    sub_5F9D4();
    v30 = sub_F11EC();
    v32 = v31;
    v33 = v26;
    v5 = v25;
    v10 = v24;
    v34 = v20;
    a1 = v61;
    (*(v21 + 8))(v33, v34);
    v35 = sub_3E850(v30, v32, &aBlock);

    *(v18 + 14) = v35;
    *(v18 + 22) = 2048;
    swift_beginAccess();
    v36 = *(*(v2 + 152) + 16);

    *(v18 + 24) = v36;

    v37 = v54;
    _os_log_impl(&dword_0, v54, v55, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v18, 0x20u);
    sub_1EDC(v60);
  }

  else
  {
  }

  sub_37380(a1, &aBlock, &qword_127EC0, &qword_F2C90);
  v38 = v65;
  if (v65)
  {
    v68[0] = aBlock;
  }

  else
  {
    sub_3928(&aBlock, &v66);
    v68[3] = sub_388C8(&qword_129378, &qword_F49E0);
    v68[0] = swift_allocObject();
    sub_3928(&v66, v68[0] + 16);
  }

  v69 = v38;
  swift_beginAccess();
  sub_C817C(v68, v2 + 112);
  swift_endAccess();
  result = swift_beginAccess();
  v60 = *(v2 + 152);
  v40 = v60[2];
  if (v40)
  {
    v55 = sub_C81EC();
    v54 = v64;
    v53 = (v5 + 8);
    v52 = (v10 + 8);

    v41 = 4;
    v42 = v59;
    do
    {
      v43 = swift_allocObject();
      *(v43 + 16) = *&v60[v41];

      v61 = sub_F0D4C();
      sub_37380(a1, &v66, &qword_127EC0, &qword_F2C90);
      v44 = swift_allocObject();
      v45 = v67[0];
      *(v44 + 16) = v66;
      *(v44 + 32) = v45;
      *(v44 + 41) = *(v67 + 9);
      *(v44 + 64) = sub_17C4C;
      *(v44 + 72) = v43;
      v64[2] = sub_174C0;
      v65 = v44;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v64[0] = sub_9400C;
      v64[1] = &unk_120F18;
      v46 = a1;
      v47 = _Block_copy(&aBlock);
      swift_retain_n();
      v48 = v57;
      sub_F06FC();
      v62 = _swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v49 = v56;
      sub_F0E8C();
      v50 = v61;
      sub_F0D5C();
      v51 = v47;
      a1 = v46;
      _Block_release(v51);

      (*v53)(v42, v49);
      (*v52)(v48, v58);

      v41 += 2;
      --v40;
    }

    while (v40);
  }

  return result;
}

uint64_t sub_C53A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_F06EC();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_F071C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v14 = sub_F133C();
  v71 = *(v14 - 1);
  isa = v71[8].isa;
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v17 = sub_F06CC();
  sub_3C96C(v17, qword_129B28);
  swift_retain_n();
  v18 = sub_F06AC();
  LODWORD(v72) = sub_F0D0C();
  v19 = os_log_type_enabled(v18, v72);
  v68 = v10;
  v69 = v9;
  v67 = v13;
  v66 = v6;
  v65 = v16;
  v70 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v21 = sub_F035C();
    v63 = &v55;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    __chkstk_darwin(v21);
    v25 = v14;
    v26 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v28 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v27);
    v29 = *(v28 + 16);
    v61 = v18;
    v29(v27, v28);
    sub_5F9D4();
    v30 = sub_F11EC();
    v32 = v31;
    v33 = v26;
    v14 = v25;
    a2 = v70;
    (*(v22 + 8))(v33, v21);
    v34 = sub_3E850(v30, v32, aBlock);

    *(v20 + 14) = v34;
    *(v20 + 22) = 2048;
    swift_beginAccess();
    v35 = *(*(v3 + 152) + 16);

    *(v20 + 24) = v35;

    v36 = v61;
    _os_log_impl(&dword_0, v61, v72, "Operation completed with ID %{private,mask.hash}s - notifying %ld listener(s)", v20, 0x20u);
    sub_1EDC(v64);
  }

  else
  {
  }

  __chkstk_darwin(v37);
  *(&v55 - 2) = a2;
  sub_C5C14(sub_176B0, v14, aBlock);
  swift_beginAccess();
  sub_C817C(aBlock, v3 + 112);
  swift_endAccess();
  result = swift_beginAccess();
  v72 = *(v3 + 152);
  v39 = *(v72 + 16);
  if (v39)
  {
    v64 = sub_C81EC();
    v63 = v71 + 2;
    isa = (isa + 7);
    v61 = v71 + 4;
    v60 = v75;
    v59 += 8;
    v58 += 8;

    v40 = 32;
    v56 = v14;
    v57 = a1;
    do
    {
      v41 = swift_allocObject();
      *(v41 + 16) = *(v72 + v40);

      v42 = sub_F0D4C();
      v43 = v71;
      v44 = v65;
      v45 = v56;
      (v71[2].isa)(v65, a1, v56);
      v46 = (LOBYTE(v43[10].isa) + 24) & ~LOBYTE(v43[10].isa);
      v47 = (isa + v46) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = v70;
      (v43[4].isa)(v48 + v46, v44, v45);
      v49 = (v48 + v47);
      *v49 = sub_17C50;
      v49[1] = v41;
      v75[2] = sub_17850;
      v75[3] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v75[0] = sub_9400C;
      v75[1] = &unk_120FE0;
      v50 = _Block_copy(aBlock);
      swift_retain_n();
      v51 = v67;
      sub_F06FC();
      v73 = &_swiftEmptyArrayStorage;
      sub_17504(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
      sub_388C8(&qword_127F90, &qword_F2EC0);
      sub_5506C();
      v52 = v69;
      v53 = v66;
      sub_F0E8C();
      sub_F0D5C();
      v54 = v50;
      a1 = v57;
      _Block_release(v54);

      (*v59)(v52, v53);
      (*v58)(v51, v68);

      v40 += 16;
      --v39;
    }

    while (v39);
  }

  return result;
}

uint64_t sub_C5C14@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_F133C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_C5E28(uint64_t a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v5[0] = a1;
    v6 = 1;
    swift_errorRetain();
  }

  else
  {
    v5[3] = &type metadata for Never;
    v6 = 0;
  }

  a3(v5);
  return sub_372B0(v5, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C5EA0(uint64_t a1, void (*a2)(void *))
{
  sub_37380(a1, v7, &qword_128B88, &qword_F3F30);
  if (v8)
  {
    v5[0] = *&v7[0];
    v6 = 1;
    swift_errorRetain();
    a2(v5);
  }

  else
  {
    sub_54F88(v7, v4);
    v5[3] = &type metadata for Any + 8;
    v5[0] = swift_allocObject();
    sub_3FE38(v4, v5[0] + 16);
    v6 = 0;
    a2(v5);
    sub_1EDC(v4);
  }

  return sub_372B0(v5, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C5F98(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_37380(a1, v9, &qword_127EC0, &qword_F2C90);
  if (v10)
  {
    v7[0] = *&v9[0];
    v8 = 1;
    swift_errorRetain();
    a2(v7);

    v3 = v7;
  }

  else
  {
    sub_3928(v9, v7);
    v5[3] = sub_388C8(&qword_129378, &qword_F49E0);
    v5[0] = swift_allocObject();
    sub_1F28(v7, v5[0] + 16);
    v6 = 0;
    a2(v5);
    sub_1EDC(v7);
    v3 = v5;
  }

  return sub_372B0(v3, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C60AC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v11 = sub_F133C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v19[-1] - v13);
  (*(v15 + 16))(&v19[-1] - v13, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19[0] = *v14;
    v20 = 1;
    swift_errorRetain();
    a2(v19);
  }

  else
  {
    (*(v7 + 32))(v10, v14, a4);
    v19[3] = a4;
    v16 = sub_37474(v19);
    (*(v7 + 16))(v16, v10, a4);
    v20 = 0;
    a2(v19);
    (*(v7 + 8))(v10, a4);
  }

  return sub_372B0(v19, &qword_128B88, &qword_F3F30);
}

uint64_t sub_C62E4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_3CB70(&qword_127B88, &qword_F3680);
  v4 = sub_F133C();
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_14B08, v2, 0);
}

uint64_t sub_C63A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37380(v9, v16, &qword_128B88, &qword_F3F30);
  if (v17)
  {
    *a3 = *&v16[0];
  }

  else
  {
    if (swift_dynamicCast())
    {
      (*(v5 + 32))(a3, v8, a2);
      sub_3CB70(&qword_127B88, &qword_F3680);
      sub_F133C();
      swift_storeEnumTagMultiPayload();
      return sub_1EDC(v16);
    }

    sub_54F88(v16, v15);
    sub_B777C();
    v11 = swift_allocError();
    v13 = v12;
    sub_3FE38(v15, v12);
    *(v13 + 32) = a2;
    *(v13 + 56) = 1;
    sub_1EDC(v15);
    *a3 = v11;
  }

  sub_3CB70(&qword_127B88, &qword_F3680);
  sub_F133C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_C6584@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t sub_C6654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3CB70(&qword_127B88, &qword_F3680);
  v6 = sub_F0A9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - v10;
  (*(v7 + 16))(&v20 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  swift_beginAccess();
  v14 = *(a2 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 152) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_D8A20(0, v14[2] + 1, 1, v14);
    *(a2 + 152) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_D8A20((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_17604;
  v18[5] = v13;
  *(a2 + 152) = v14;
  return swift_endAccess();
}

uint64_t sub_C6840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3CB70(&qword_127B88, &qword_F3680);
  v5 = sub_F133C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_C63A4(a1, a3, (&v12 - v8));
  v10 = sub_F0A9C();
  sub_C696C(v9, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_C696C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_F133C();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v14, v21, v9);
    return sub_F0A7C();
  }

  else
  {
    (*(v4 + 32))(v7, v21, v3);
    return sub_F0A8C();
  }
}

uint64_t sub_C6BA8()
{
  sub_372B0(v0 + 112, &qword_129368, &unk_F5B80);
  v1 = *(v0 + 152);

  v2 = OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_creationDate;
  v3 = sub_F030C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1EDC((v0 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_C6C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_F030C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 120);
  sub_F02EC();
  LOBYTE(a5) = sub_F029C();
  (*(v7 + 8))(v10, v6);
  return a5 & 1;
}

uint64_t RCSOperationController.Configuration.untrackedFulfillmentHandler.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_C7278(v1);
  return v1;
}

uint64_t RCSOperationController.Configuration.untrackedFulfillmentHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  result = sub_776C8(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RCSOperationController.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F0B1C();
  v29 = v4;
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_388C8(&qword_128A58, &qword_F3D30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  swift_defaultActor_initialize();
  sub_F039C();
  sub_F0AFC();
  v30 = v5[7];
  v30(v16, 0, 1, v4);
  (*(v9 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  *(v2 + 112) = sub_F038C();
  *(v2 + 160) = sub_E7BB0(_swiftEmptyArrayStorage);
  *(v2 + 168) = sub_E7CB4(_swiftEmptyArrayStorage);
  v17 = *(a1 + 16);
  *(v2 + 120) = *a1;
  *(v2 + 136) = v17;
  *(v2 + 152) = *(a1 + 32);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(a1 + 24);
  sub_C7278(*(a1 + 16));
  v20 = v31;
  sub_F0AFC();
  v21 = *(a1 + 8);
  type metadata accessor for AsyncPersistentTimer();
  v22 = swift_allocObject();

  swift_defaultActor_initialize();
  v23 = v5;
  v24 = v5[2];
  v25 = v29;
  v24(v16, v20, v29);
  v30(v16, 0, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v21;
  v26[5] = &unk_F58C0;
  v26[6] = v18;

  v27 = sub_C7510(0, 0, v16, &unk_F58C8, v26);
  sub_977C0(a1);

  sub_372B0(v16, &qword_127EB0, &unk_F2B30);
  (v23[1])(v20, v25);
  *(v22 + 112) = v27;
  *(v2 + 176) = v22;
  swift_beginAccess();
  swift_weakAssign();

  return v2;
}

uint64_t sub_C7278(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t RCSOperationController.operation<A>(id:completedWithResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return _swift_task_switch(sub_15304, v4, 0);
}

uint64_t RCSOperationController.perform<A>(operation:runTask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a3;
  v6[55] = a4;
  v6[52] = a1;
  v6[53] = a2;
  return _swift_task_switch(sub_158DC, v5, 0);
}

uint64_t sub_C72F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v7 = static RCSActor.shared;
  v6[13] = static RCSActor.shared;

  return _swift_task_switch(sub_16778, v7, 0);
}

uint64_t RCSOperationController.perform(operation:runTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = v3;
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_16D78;

  return sub_B64F0(v4 + 16, a1, a2, a3);
}

void *RCSOperationController.deinit()
{
  v1 = v0[14];

  v2 = v0[18];
  sub_776C8(v0[17]);
  v3 = v0[20];

  v4 = v0[21];

  v5 = v0[22];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RCSOperationController.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[18];
  sub_776C8(v0[17]);
  v3 = v0[20];

  v4 = v0[21];

  v5 = v0[22];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_C7510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_37380(a3, v27 - v11, &qword_127EB0, &unk_F2B30);
  v13 = sub_F0B1C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_372B0(v12, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_F0A6C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_F087C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_C77D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_51FEC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_BC80C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_ECE64(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_C7880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_51FEC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_BC984();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_EE478(v7, v10);
  *v3 = v10;
  return v12;
}

double sub_C7918@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_51FEC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_76D70();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_54F88((*(v12 + 56) + 32 * v9), a3);
    sub_ED448(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_C79BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_E759C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v24 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_BD0D0();
      v11 = v24;
    }

    v12 = (*(v11 + 48) + (v8 << 6));
    v13 = *(v12 + 41);
    v14 = v12[2];
    v15 = *v12;
    v22[1] = v12[1];
    v23[0] = v14;
    v22[0] = v15;
    *(v23 + 9) = v13;
    sub_3CAB8(v22);
    v16 = *(v11 + 56);
    v17 = type metadata accessor for TypingIndicator();
    v18 = *(v17 - 8);
    sub_BDEA0(v16 + *(v18 + 72) * v8, a2);
    sub_ED5F8(v8, v11);
    *v3 = v11;
    return (*(v18 + 56))(a2, 0, 1, v17);
  }

  else
  {
    v20 = type metadata accessor for TypingIndicator();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }
}

void *sub_C7B54(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_33EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t type metadata accessor for RCSOperationController.Operation()
{
  result = qword_129C98;
  if (!qword_129C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C7C30(__int128 *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = -1;
  *(v1 + 152) = _swiftEmptyArrayStorage;
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v4 = sub_F06CC();
  sub_3C96C(v4, qword_129B28);
  sub_1F28(a1, v22);
  v5 = sub_F06AC();
  v6 = sub_F0CDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v22[4];
    sub_373E8(v22, v22[3]);
    v10 = *(v9 + 8);
    v11 = sub_F11EC();
    v13 = v12;
    sub_1EDC(v22);
    v14 = sub_3E850(v11, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_0, v5, v6, "New operation created with ID %{private,mask.hash}s", v7, 0x16u);
    sub_1EDC(v8);
  }

  else
  {

    sub_1EDC(v22);
  }

  v15 = sub_F030C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v22[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F02DC();
  (*(v16 + 32))(v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_creationDate, v19, v15);
  sub_3928(a1, v2 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id);
  return v2;
}

__n128 sub_C7EF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_C7F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C7F50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_C7FA0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_C7FE4()
{
  result = sub_F030C();
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

uint64_t sub_C80A0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C80B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_C8114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_C817C(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_129368, &unk_F5B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_C81EC()
{
  result = qword_127F80;
  if (!qword_127F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_127F80);
  }

  return result;
}

uint64_t sub_C8238(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_C8244(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_C829C()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_129D80);
  sub_3C96C(v4, qword_129D80);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_C83C4()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_129D98);
  sub_3C96C(v4, qword_129D98);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t RCSGroup.identity.setter(__int128 *a1)
{
  sub_1EDC(v1);

  return sub_55248(a1, v1);
}

uint64_t RCSGroup.participants.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t RCSGroup.displayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RCSGroup.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_C8640(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_129DB0, &qword_F5BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C86B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_129DB0, &qword_F5BA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSHandle.scheme.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RCSGroup.Icon.data.getter()
{
  v1 = *(v0 + 16);
  sub_660D0(v1, *(v0 + 24));
  return v1;
}

uint64_t RCSGroup.Icon.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_5F048(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RCSGroup.Icon.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RCSGroup.Icon.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

Swift::Int sub_C88B4()
{
  v1 = *v0;
  sub_F12FC();
  sub_F130C(v1);
  return sub_F132C();
}

Swift::Int sub_C8928()
{
  v1 = *v0;
  sub_F12FC();
  sub_F130C(v1);
  return sub_F132C();
}

uint64_t sub_C8984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C8D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C89B8(uint64_t a1)
{
  v2 = sub_C8BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C89F4(uint64_t a1)
{
  v2 = sub_C8BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSGroup.Icon.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_388C8(&qword_129DB8, &qword_F5BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_C8BEC();
  sub_F136C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_F119C();
  if (!v2)
  {
    v18 = *(v3 + 1);
    v19 = v18;
    v17[23] = 1;
    sub_C8C40(&v19, v17);
    sub_C8C9C();
    sub_F11CC();
    sub_5F048(v18, *(&v18 + 1));
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v18) = 2;
    sub_F119C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_C8BEC()
{
  result = qword_129DC0;
  if (!qword_129DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DC0);
  }

  return result;
}

unint64_t sub_C8C9C()
{
  result = qword_129DC8;
  if (!qword_129DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DC8);
  }

  return result;
}

double RCSGroup.Icon.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_C8E80(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_C8D68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_F122C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_F122C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_F122C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_C8E80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_388C8(&qword_129DE8, &qword_F5EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_C8BEC();
  sub_F135C();
  if (v2)
  {
    return sub_1EDC(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_F114C();
  v13 = v12;
  v24 = v11;
  v27 = 1;
  sub_C9508();
  sub_F117C();
  v22 = v25;
  v23 = v26;
  LOBYTE(v25) = 2;
  v14 = sub_F114C();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v9, v5);

  v19 = v22;
  v18 = v23;
  sub_660D0(v22, v23);

  sub_1EDC(a1);

  sub_5F048(v19, v18);

  *a2 = v24;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;
  return result;
}

__n128 sub_C9120(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_C9144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_C918C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_C91F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_C920C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_C9254(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RCSHandle.BotStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RCSHandle.BotStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_C9404()
{
  result = qword_129DD0;
  if (!qword_129DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DD0);
  }

  return result;
}

unint64_t sub_C945C()
{
  result = qword_129DD8;
  if (!qword_129DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DD8);
  }

  return result;
}

unint64_t sub_C94B4()
{
  result = qword_129DE0;
  if (!qword_129DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DE0);
  }

  return result;
}

unint64_t sub_C9508()
{
  result = qword_129DF0;
  if (!qword_129DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DF0);
  }

  return result;
}

uint64_t CTLazuliMessageText.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v22 - v6);
  if (RCSMessage.fromChatBot.getter())
  {
    v8 = [v2 chipList];
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    type metadata accessor for RCSChipList();
    v11 = swift_allocObject();
    v12 = objc_opt_self();
    v13 = sub_F07BC();
    v14 = [v12 IMChipListFromCTChipList:v8 originalID:v13];

    *(v11 + 16) = v14;
  }

  else
  {
    v11 = 0;
  }

  v15 = [v2 content];
  v16 = sub_F07EC();
  v18 = v17;

  *v7 = v16;
  v7[1] = v18;
  v7[2] = v11;
  v19 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  v20 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v20 + 32));
}

uint64_t sub_C9724(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CTLazuliMessageGroupText.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v8 = (&v16 - v7);
  v9 = [v2 content];
  v10 = sub_F07EC();
  v12 = v11;

  *v8 = v10;
  v8[1] = v12;
  v8[2] = 0;
  v13 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v8, a1 + *(v14 + 32));
}

uint64_t sub_C98E4(uint64_t a1)
{
  v3 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v4 = *(*(v3 - 8) + 64);
  *&v5 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v7 = (&v15 - v6);
  v8 = [*v1 content];
  v9 = sub_F07EC();
  v11 = v10;

  *v7 = v9;
  v7[1] = v11;
  v7[2] = 0;
  v12 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v13 + 32));
}

uint64_t CTLazuliMessageGeoLocationPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v25 - v6);
  if (RCSMessage.fromChatBot.getter())
  {
    v8 = [v2 chipList];
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    type metadata accessor for RCSChipList();
    v11 = swift_allocObject();
    v12 = objc_opt_self();
    v13 = sub_F07BC();
    v14 = [v12 IMChipListFromCTChipList:v8 originalID:v13];

    *(v11 + 16) = v14;
  }

  else
  {
    v11 = 0;
  }

  v15 = [v2 coordinates];
  v16 = [v15 latitude];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v15 longitude];
  [v19 doubleValue];
  v21 = v20;

  *v7 = v18;
  v7[1] = v21;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v11;
  v22 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v23 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v23 + 32));
}

uint64_t CTLazuliMessageGroupGeoLocationPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v8 = (&v19 - v7);
  v9 = [v2 coordinates];
  v10 = [v9 latitude];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v9 longitude];
  [v13 doubleValue];
  v15 = v14;

  *v8 = v12;
  v8[1] = v15;
  v16 = type metadata accessor for RCSMessage.Content(0);
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v8, a1 + *(v17 + 32));
}