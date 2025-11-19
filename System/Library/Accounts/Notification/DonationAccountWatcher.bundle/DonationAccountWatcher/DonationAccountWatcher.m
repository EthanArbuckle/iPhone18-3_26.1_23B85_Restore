uint64_t sub_29C8B9378()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C8B93B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C8B93EC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C8B9438()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C8B9470()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C8B94C0()
{
  v0 = *MEMORY[0x29EDC0BF0];
  result = sub_29C8BCD08();
  qword_2A1A117B0 = result;
  *algn_2A1A117B8 = v2;
  return result;
}

void sub_29C8B94F0(void *a1)
{
  v2 = v1;
  v4 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v61 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v61 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v61 - v15;
  v17 = sub_29C8BCC98();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  MEMORY[0x2A1C7C4A8](v17);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x29EDCA190];
  v21 = [a1 identifier];
  if (!v21)
  {
    __break(1u);
    goto LABEL_39;
  }

  v22 = v21;
  v63 = v11;
  v64 = v8;
  v66 = sub_29C8BCD08();
  v67 = v23;

  if (qword_2A1A11708 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A117A8;
  v25 = *(qword_2A1A117A8 + 16);
  v26 = v18 + 48;
  v11 = a1;

  v68 = v2;
  if (v25)
  {
    v62 = v18;
    v27 = 0;
    v28 = v24 + 5;
    while (1)
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v70 = v11;
      v29(&v70);
      LODWORD(v30) = (*v26)(v14, 1, v17);
      sub_29C8BA184(v14);
      if (v30 != 1)
      {
        break;
      }

      ++v27;
      v28 += 2;
      if (v25 == v27)
      {
        goto LABEL_10;
      }
    }

    v25 = v27;
LABEL_10:
    v18 = v62;
  }

  v31 = v24[2];
  if (v25 == v31)
  {

    (*(v18 + 7))(v16, 1, 1, v17);

    v25 = v67;
    v32 = (*(v18 + 6))(v16, 1, v17);
    goto LABEL_16;
  }

  if (v25 >= v31)
  {
    __break(1u);
    goto LABEL_35;
  }

  v14 = v18;
  v33 = &v24[2 * v25 + 4];
  v35 = *v33;
  v34 = *(v33 + 8);
  v70 = v11;

  v36 = v63;
  v35(&v70);

  v37 = v64;
  sub_29C8BA1EC(v36, v64);
  v38 = *v26;
  if ((*v26)(v37, 1, v17) == 1)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  v18 = v14;
  (*(v14 + 4))(v16, v37, v17);
  sub_29C8BA184(v36);
  (*(v14 + 7))(v16, 0, 1, v17);

  v25 = v67;
  v32 = v38(v16, 1, v17);
LABEL_16:
  if (v32 != 1)
  {
    v16 = v65;
    (*(v18 + 4))();
    v70 = 0x3A656D616ELL;
    v71 = 0xE500000000000000;
    v26 = v18;
    v39 = v66;
    MEMORY[0x29ED48BC0](v66, v25);
    v40 = sub_29C8B9C7C(v70, v71, v39, v25);

    v24 = v40;
    v41 = sub_29C8BCC68();
    v42 = [objc_opt_self() donationValueWithNameComponents:v41 origin:v24];

    v14 = v42;
    MEMORY[0x29ED48BE0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      sub_29C8BCD68();

      (*(v26 + 1))(v16, v17);
      goto LABEL_20;
    }

LABEL_35:
    sub_29C8BCD58();
    goto LABEL_19;
  }

  sub_29C8BA184(v16);
LABEL_20:
  if (qword_2A1A116A0 != -1)
  {
    swift_once();
  }

  v43 = qword_2A1A11760;
  v44 = *(qword_2A1A11760 + 16);
  v14 = v11;

  if (v44)
  {
    v45 = 0;
    v46 = v43 + 5;
    while (1)
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v69 = v14;
      v47(&v70, &v69);
      v49 = v71;
      sub_29C8BA25C(v70, v71);
      if (v49)
      {
        break;
      }

      ++v45;
      v46 += 2;
      if (v44 == v45)
      {
        goto LABEL_28;
      }
    }

    v44 = v45;
  }

LABEL_28:
  v50 = v43[2];
  if (v44 == v50)
  {

    return;
  }

  if (v44 >= v50)
  {
    __break(1u);
    goto LABEL_37;
  }

  v51 = &v43[2 * v44 + 4];
  v53 = *v51;
  v52 = *(v51 + 8);
  v69 = v14;

  v53(&v70, &v69);

  v54 = v71;
  if (v71)
  {
    v55 = v70;

    sub_29C8BA25C(v55, v54);

    v70 = 0x3A6C69616D65;
    v71 = 0xE600000000000000;
    v56 = v66;
    MEMORY[0x29ED48BC0](v66, v25);
    v57 = sub_29C8B9C7C(v70, v71, v56, v25);

    v43 = v57;
    v58 = sub_29C8BCCF8();

    v59 = sub_29C8BCCF8();

    v60 = [objc_opt_self() donationValueWithEmailAddress:v58 label:v59 origin:v43];

    v44 = v60;
    MEMORY[0x29ED48BE0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_33:
      sub_29C8BCD68();

      return;
    }

LABEL_37:
    sub_29C8BCD58();
    goto LABEL_33;
  }

LABEL_40:

  __break(1u);
}

id sub_29C8B9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v5 = *(*(sub_29C8BA13C(&qword_2A1796130, &qword_29C8BD388) - 8) + 64);
  v6 = (MEMORY[0x2A1C7C4A8])();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - v9;
  if (qword_2A1A11750 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A117B0;
  v11 = OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_donationDate;
  v12 = sub_29C8BCCE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v10, v4 + v11, v12);
  v15 = *(v13 + 56);
  v15(v10, 0, 1, v12);
  v14(v8, v4 + OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_expirationDate, v12);
  v15(v8, 0, 1, v12);
  v26 = sub_29C8BCCF8();
  v16 = sub_29C8BCCF8();
  v17 = sub_29C8BCCF8();
  v18 = *(v13 + 48);
  v19 = 0;
  if (v18(v10, 1, v12) != 1)
  {
    v19 = sub_29C8BCCB8();
    (*(v13 + 8))(v10, v12);
  }

  if (v18(v8, 1, v12) == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_29C8BCCB8();
    (*(v13 + 8))(v8, v12);
  }

  v21 = objc_allocWithZone(MEMORY[0x29EDC0C00]);
  v22 = v26;
  v23 = [v21 initWithBundleIdentifier:v26 donationIdentifier:v16 clusterIdentifier:v17 donationDate:v19 expirationDate:v20];

  return v23;
}

id sub_29C8B9F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyParser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountPropertyParser()
{
  result = qword_2A1A11740;
  if (!qword_2A1A11740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29C8BA0AC()
{
  result = sub_29C8BCCE8();
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

uint64_t sub_29C8BA13C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_29C8BA184(uint64_t a1)
{
  v2 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C8BA1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C8BA25C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29C8BA2A0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_29C8BAC08();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x29ED48C30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x29ED48C30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_29C8BCD78();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_29C8BCD78();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_29C8BCDA8();
  }

  result = sub_29C8BCDA8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id sub_29C8BA610()
{
  [*&v0[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger] pluginUnloaded];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29C8BA708(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_29C8BA834(id a1, id a2)
{
  v3 = v2;
  v6 = sub_29C8BCCE8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v27 - v12;
  if (a1)
  {
    v14 = *&v2[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger];
    if (a2)
    {
      [v14 accountChanged_];
      a2 = a2;
      a1 = a1;
      sub_29C8BCCD8();
      sub_29C8BCCC8();
      v15 = type metadata accessor for AccountPropertyParser();
      v16 = objc_allocWithZone(v15);
      v28 = v2;
      v17 = v7[2];
      v17(&v16[OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_donationDate], v13, v6);
      v17(&v16[OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_expirationDate], v11, v6);
      v29.receiver = v16;
      v29.super_class = v15;
      v18 = objc_msgSendSuper2(&v29, sel_init);
      v19 = v7[1];
      v19(v11, v6);
      v19(v13, v6);
      v3 = v28;
      sub_29C8B94F0(a2);
      v21 = v20;
      sub_29C8B94F0(a1);
      LOBYTE(v15) = sub_29C8BA2A0(v21, v22);

      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_7:
      [*&v3[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger] accountsDidNotChange];
      return;
    }

    [v14 accountAdded_];
  }

  else
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    [*&v2[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger] accountRemoved_];
  }

LABEL_9:
  v23 = [*&v3[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_store] changeFromAccount:a2 toAccount:a1];
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  aBlock[4] = sub_29C8BAB8C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29C8BA708;
  aBlock[3] = &unk_2A23D44B8;
  v25 = _Block_copy(aBlock);
  v26 = v3;

  [v23 addFailureBlock_];
  _Block_release(v25);
}

void sub_29C8BAB8C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger);
  v2 = sub_29C8BCCA8();
  [v1 donationFailedWithError_];
}

uint64_t sub_29C8BABF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29C8BAC08()
{
  result = qword_2A1A11698;
  if (!qword_2A1A11698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A11698);
  }

  return result;
}

uint64_t sub_29C8BAC54()
{
  sub_29C8BA13C(&qword_2A1796218, &unk_29C8BD3F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29C8BD3C0;
  *(v0 + 32) = sub_29C8BAE90;
  *(v0 + 40) = 0;
  if (qword_2A1A11720 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A11710;
  v1 = *algn_2A1A11718;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 48) = sub_29C8BBC44;
  *(v0 + 56) = v3;
  v4 = qword_2A1A11738;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A11728;
  v5 = unk_2A1A11730;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 64) = sub_29C8BBEC0;
  *(v0 + 72) = v7;
  v8 = qword_2A1A116E0;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A116D0;
  v9 = *algn_2A1A116D8;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v0 + 80) = sub_29C8BBEC0;
  *(v0 + 88) = v11;
  v12 = qword_2A1A116F8;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A116E8;
  v13 = unk_2A1A116F0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v0 + 96) = sub_29C8BBEC0;
  *(v0 + 104) = v15;
  qword_2A1A117A8 = v0;
}

uint64_t sub_29C8BAE98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29C8BCC98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C8BCC88();
  *&v18 = 0x6D614E7473726966;
  *(&v18 + 1) = 0xE900000000000065;
  v9 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_29C8BBCEC(&v18, &qword_2A1796220, &qword_29C8BD400);
  }

  sub_29C8BCC38();
  *&v18 = 0x656D614E7473616CLL;
  *(&v18 + 1) = 0xE800000000000000;
  v10 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_29C8BBCEC(&v18, &qword_2A1796220, &qword_29C8BD400);
  }

  sub_29C8BCC58();
  sub_29C8BCC28();
  if (v11 || (sub_29C8BCC48(), v12))
  {

    (*(v5 + 32))(a2, v8, v4);
    v13 = 0;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

void *sub_29C8BB198()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000012;
  result[4] = 0x800000029C8BD610;
  qword_2A1A11710 = sub_29C8BBEBC;
  *algn_2A1A11718 = result;
  return result;
}

uint64_t sub_29C8BB20C()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  *(result + 16) = v0;
  strcpy((result + 24), "FullUserName");
  *(result + 37) = 0;
  *(result + 38) = -5120;
  qword_2A1A11728 = sub_29C8BBEB0;
  unk_2A1A11730 = result;
  return result;
}

uint64_t sub_29C8BB284@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v12[0] = a2;
  *(&v12[0] + 1) = a3;

  v6 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_29C8BBCEC(v12, &qword_2A1796220, &qword_29C8BD400);
    v7 = 0;
  }

  sub_29C8BB3A4(v7, a4);
}

uint64_t sub_29C8BB3A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_29C8BCC98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v6;
    v9 = objc_opt_self();
    v10 = sub_29C8BCCF8();
    v11 = [v9 componentsFromString_];

    sub_29C8BCC78();
    sub_29C8BCC28();
    if (v12 || (sub_29C8BCC48(), v13))
    {

      (*(v17 + 32))(a2, v8, v4);
      return (*(v17 + 56))(a2, 0, 1, v4);
    }

    else
    {
      (*(v17 + 8))(v8, v4);
      return (*(v17 + 56))(a2, 1, 1, v4);
    }
  }

  else
  {
    v15 = *(v6 + 56);

    return v15(a2, 1, 1, v4);
  }
}

void *sub_29C8BB588()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = 0xD000000000000014;
  result[3] = 0x800000029C8BD5F0;
  result[4] = v0;
  result[5] = 0xD000000000000012;
  result[6] = 0x800000029C8BD610;
  qword_2A1A116D0 = sub_29C8BBEC4;
  *algn_2A1A116D8 = result;
  return result;
}

void *sub_29C8BB61C()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x800000029C8BD5D0;
  result[4] = v0;
  result[5] = 0x656D614E6C6C7546;
  result[6] = 0xE800000000000000;
  qword_2A1A116E8 = sub_29C8BBC70;
  unk_2A1A116F0 = result;
  return result;
}

uint64_t sub_29C8BB6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a5;
  v54 = a4;
  v10 = sub_29C8BCC98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = v47 - v17;
  *&v56 = a2;
  *(&v56 + 1) = a3;

  v19 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  if (!*(&v57 + 1))
  {
    sub_29C8BBCEC(v58, &qword_2A1796220, &qword_29C8BD400);
    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  sub_29C8BA13C(&qword_2A1796228, qword_29C8BD408);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  v51 = v14;
  v52 = a6;
  v21 = 0;
  v22 = v55;
  v24 = v55 + 64;
  v23 = *(v55 + 64);
  v25 = 1 << *(v55 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v29 = (v11 + 56);
  v47[0] = v11 + 8;
  v49 = (v11 + 32);
  v50 = (v11 + 48);
  v30 = v53;
  if ((v26 & v23) != 0)
  {
    while (1)
    {
LABEL_13:
      v32 = *(*(v22 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v27)))));
      if (!*(v32 + 16))
      {
        goto LABEL_19;
      }

      v33 = sub_29C8BBC74(v54, v30);
      if ((v34 & 1) == 0)
      {

LABEL_19:
        (*v29)(v18, 1, 1, v10);
        goto LABEL_20;
      }

      sub_29C8BBD4C(*(v32 + 56) + 32 * v33, v58);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      v48 = v22;
      v35 = *(&v56 + 1);
      v36 = objc_opt_self();
      v47[1] = v35;
      v37 = sub_29C8BCCF8();
      v38 = [v36 componentsFromString_];

      v39 = v51;
      sub_29C8BCC78();

      sub_29C8BCC28();
      if (v40)
      {
        break;
      }

      sub_29C8BCC48();
      v42 = v41;

      if (v42)
      {
        goto LABEL_23;
      }

      (*v47[0])(v39, v10);
      v43 = 1;
LABEL_24:
      v30 = v53;
      v44 = *v29;
      (*v29)(v18, v43, 1, v10);
      v45 = (*v50)(v18, 1, v10);
      v22 = v48;
      if (v45 != 1)
      {

        v46 = v52;
        (*v49)(v52, v18, v10);
        return (v44)(v46, 0, 1, v10);
      }

LABEL_20:
      v27 &= v27 - 1;
      result = sub_29C8BBCEC(v18, &qword_2A1796138, &qword_29C8BD390);
      if (!v27)
      {
        goto LABEL_9;
      }
    }

LABEL_23:

    (*v49)(v18, v39, v10);
    v43 = 0;
    goto LABEL_24;
  }

LABEL_9:
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      return (*v29)(v52, 1, 1, v10);
    }

    v27 = *(v24 + 8 * v31);
    ++v21;
    if (v27)
    {
      v21 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_29C8BBBE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyNameParser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C8BBC44(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_29C8BBC74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29C8BCDD8();
  sub_29C8BCD18();
  v6 = sub_29C8BCDE8();

  return sub_29C8BBDA8(a1, a2, v6);
}

uint64_t sub_29C8BBCEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C8BA13C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C8BBD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29C8BBDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29C8BCDB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_29C8BBE60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29C8BBEC8()
{
  sub_29C8BA13C(&qword_2A1796230, &unk_29C8BD450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29C8BD420;
  *(v0 + 32) = sub_29C8BC118;
  *(v0 + 40) = 0;
  *(v0 + 48) = sub_29C8BC130;
  *(v0 + 56) = 0;
  if (qword_2A1A116A8 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A11768;
  v1 = unk_2A1A11770;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 64) = sub_29C8BCA34;
  *(v0 + 72) = v3;
  v4 = qword_2A1A116C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A11788;
  v5 = unk_2A1A11790;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 80) = sub_29C8BCC08;
  *(v0 + 88) = v7;
  v8 = qword_2A1A116C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A11798;
  v9 = unk_2A1A117A0;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v0 + 96) = sub_29C8BCC08;
  *(v0 + 104) = v11;
  v12 = qword_2A1A116B0;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A11778;
  v13 = unk_2A1A11780;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v0 + 112) = sub_29C8BCC08;
  *(v0 + 120) = v15;
  qword_2A1A11760 = v0;
}

uint64_t sub_29C8BC148@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

id sub_29C8BC17C(void *a1)
{
  v2 = [a1 accountType];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = [v2 identifier];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_29C8BCD08();
  v7 = v6;

  v18[0] = v5;
  v18[1] = v7;
  MEMORY[0x2A1C7C4A8](v8);
  v17[2] = v18;
  v9 = sub_29C8BCAE4(sub_29C8BCC0C, v17, &unk_2A23D4460);

  if ((v9 & 1) == 0)
  {
LABEL_4:
    result = [a1 username];
    if (!result)
    {
      return result;
    }

    v11 = result;
    sub_29C8BCD08();

    v12 = [objc_allocWithZone(MEMORY[0x29EDC0C18]) init];
    v13 = sub_29C8BCCF8();
    v14 = [v12 firstEmailAddressInString_];

    if (v14)
    {
      v15 = sub_29C8BCD08();

      v16 = *MEMORY[0x29EDB8B90];
      sub_29C8BCD08();
      return v15;
    }
  }

  return 0;
}

uint64_t sub_29C8BC350(void *a1)
{
  strcpy(&v8, "primaryEmail");
  BYTE13(v8) = 0;
  HIWORD(v8) = -5120;
  v2 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v7;
      *&v8 = 0x6449656C707061;
      *(&v8 + 1) = 0xE700000000000000;
      v4 = [a1 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v4)
      {
        sub_29C8BCD88();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10 = v8;
      v11 = v9;
      if (*(&v9 + 1))
      {
        if (swift_dynamicCast())
        {
LABEL_15:

          return 0;
        }
      }

      else
      {
        sub_29C8BCA7C(&v10);
      }

      if ((sub_29C8BCD38() & 1) == 0)
      {
        v6 = *MEMORY[0x29EDB8B90];
        sub_29C8BCD08();
        return v3;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_29C8BCA7C(&v10);
  }

  return 0;
}

void *sub_29C8BC564()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000014;
  result[4] = 0x800000029C8BD6B0;
  qword_2A1A11768 = sub_29C8BCC04;
  unk_2A1A11770 = result;
  return result;
}

void *sub_29C8BC5D8()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0x656D614E72657375;
  result[4] = 0xE800000000000000;
  qword_2A1A11788 = sub_29C8BCC04;
  unk_2A1A11790 = result;
  return result;
}

void *sub_29C8BC648()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000011;
  result[4] = 0x800000029C8BD690;
  qword_2A1A11798 = sub_29C8BCC04;
  unk_2A1A117A0 = result;
  return result;
}

void *sub_29C8BC6BC()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000015;
  result[4] = 0x800000029C8BD670;
  qword_2A1A11778 = sub_29C8BCA70;
  unk_2A1A11780 = result;
  return result;
}

uint64_t sub_29C8BC730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 accountType];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v7 identifier];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_29C8BCD08();
  v12 = v11;

  *&v25[0] = v10;
  *(&v25[0] + 1) = v12;
  MEMORY[0x2A1C7C4A8](v13);
  v22[2] = v25;
  v14 = sub_29C8BCAE4(sub_29C8BCB90, v22, &unk_2A23D4460);

  if ((v14 & 1) == 0)
  {
LABEL_4:
    *&v23 = a3;
    *(&v23 + 1) = a4;

    v15 = [a1 objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_29C8BCD88();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        v16 = [objc_allocWithZone(MEMORY[0x29EDC0C18]) init];
        v17 = sub_29C8BCCF8();
        v18 = [v16 firstEmailAddressInString_];

        if (v18)
        {
          v19 = sub_29C8BCD08();

          v20 = *MEMORY[0x29EDB8B90];
          sub_29C8BCD08();
          return v19;
        }
      }
    }

    else
    {
      sub_29C8BCA7C(v25);
    }
  }

  return 0;
}

id sub_29C8BC9D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyEmailParser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C8BCA38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_29C8BCA7C(uint64_t a1)
{
  v2 = sub_29C8BA13C(&qword_2A1796220, &qword_29C8BD400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C8BCAE4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_29C8BCBAC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29C8BCDB8() & 1;
  }
}