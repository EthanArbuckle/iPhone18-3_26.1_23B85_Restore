uint64_t sub_29DF20228()
{
  v0 = sub_29E2BCFA4();
  result = sub_29E2BCFA4();
  if (!__OFADD__(result, 1))
  {
    return v0 == result + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF20280()
{
  v0 = sub_29E2BCFA4();
  result = sub_29E2BCFA4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    return v0 == result - 1 && sub_29E2BCF64() != 0;
  }

  return result;
}

uint64_t sub_29DF203F8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 8))(v3, a2, ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = sub_29E2C33A4();
      v14 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

      if (v14)
      {
        type metadata accessor for MenstrualCyclesHeaderFooterView();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = *(v15 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label);
          *&v59 = v10;
          *(&v59 + 1) = v12;
          v17 = v15;
          sub_29DE9DE68();
          v18 = v16;
          sub_29E2C4364();
          v19 = sub_29E2C33A4();

          [v18 setText_];

          v20 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
          v21 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
          v63 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
          v64 = v21;
          v65 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
          v22 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
          v59 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
          v60 = v22;
          v23 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
          v61 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
          v62 = v23;
          v57 = &type metadata for LoggingCardCarouselConfiguration;
          v58 = &off_2A24BA1A8;
          v24 = swift_allocObject();
          v56[0] = v24;
          v25 = *(v20 + 80);
          *(v24 + 80) = *(v20 + 64);
          *(v24 + 96) = v25;
          *(v24 + 112) = *(v20 + 96);
          v26 = *(v20 + 16);
          *(v24 + 16) = *v20;
          *(v24 + 32) = v26;
          v27 = *(v20 + 48);
          *(v24 + 48) = *(v20 + 32);
          *(v24 + 64) = v27;
          sub_29DE9DC34(v56, v55);
          v28 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_configuration;
          swift_beginAccess();
          sub_29DE9DC98(&v59, v54);
          sub_29DE9DC98(&v59, v54);
          sub_29DE9DCF4(v55, v17 + v28);
          swift_endAccess();
          sub_29DFD5278();
          sub_29DE9DE14(&v59);
          sub_29DE93B3C(v56);
          return v17;
        }
      }

      v29 = objc_allocWithZone(type metadata accessor for MenstrualCyclesHeaderFooterView());
      v30 = sub_29E2C33A4();
      v31 = [v29 initWithReuseIdentifier_];

      v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label;
      v33 = *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label];
      *&v59 = v10;
      *(&v59 + 1) = v12;
      sub_29DE9DE68();
      v34 = v33;
      sub_29E2C4364();
      v35 = sub_29E2C33A4();

      [v34 setText_];

      v36 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
      v37 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
      v63 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
      v64 = v37;
      v65 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
      v38 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
      v59 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
      v60 = v38;
      v39 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
      v61 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
      v62 = v39;
      v57 = &type metadata for LoggingCardCarouselConfiguration;
      v58 = &off_2A24BA1A8;
      v40 = swift_allocObject();
      v56[0] = v40;
      v41 = *(v36 + 80);
      *(v40 + 80) = *(v36 + 64);
      *(v40 + 96) = v41;
      *(v40 + 112) = *(v36 + 96);
      v42 = *(v36 + 16);
      *(v40 + 16) = *v36;
      *(v40 + 32) = v42;
      v43 = *(v36 + 48);
      *(v40 + 48) = *(v36 + 32);
      *(v40 + 64) = v43;
      sub_29DE9DC34(v56, v55);
      v44 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_configuration;
      swift_beginAccess();
      sub_29DE9DC98(&v59, v54);
      sub_29DE9DC98(&v59, v54);
      sub_29DE9DCF4(v55, &v31[v44]);
      swift_endAccess();
      sub_29DFD5278();
      sub_29DE9DE14(&v59);
      sub_29DE93B3C(v56);
      v45 = [*&v31[v32] leadingAnchor];
      v46 = v31;
      v47 = [v46 contentView];
      v48 = [v47 leadingAnchor];

      [a1 _marginWidth];
      v49 = [v45 constraintEqualToAnchor:v48 constant:?];

      [v49 setActive_];
      v50 = [v46 contentView];

      v51 = [v50 trailingAnchor];
      v52 = [*&v31[v32] trailingAnchor];
      [a1 _marginWidth];
      v53 = [v51 constraintEqualToAnchor:v52 constant:?];

      [v53 setActive_];
      return v46;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29DF20B44()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView_label);
    v3 = objc_opt_self();
    v4 = *MEMORY[0x29EDC80E0];
    v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 40);
    v6 = v2;
    v7 = [v3 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v6 setFont_];
  }
}

id sub_29DF20C70()
{
  sub_29DF1F0F4();
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);

  return [v1 setNeedsLayout];
}

uint64_t sub_29DF20CB0()
{
  sub_29DE8EDC0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource);
}

uint64_t sub_29DF20DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 64))(a1, a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
    v11 = v10 & 1;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_29DF20EE0(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x29EDCA608];
  sub_29DF22C40(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = (&v68 - v9);
  v11 = sub_29E2BCFB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v88 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v14);
  v16 = (&v68 - v15);
  MEMORY[0x2A1C7C4A8](v17);
  v83 = (&v68 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v69 = v10;
  v71 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v82 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v90 = (v22 & v19);
  v74 = (63 - v21) >> 6;
  v89 = v12 + 2;
  v79 = (v12 + 6);
  v80 = (v12 + 7);
  v78 = (v12 + 4);
  v85 = (a2 + 56);
  v91 = (v12 + 1);
  v81 = a1;
  sub_29E2BF404();
  v24 = 0;
  v70 = v12;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v90;
    v26 = v24;
    if (v90)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v81;
      v31 = v81[6] + v12[9] * (__clz(__rbit64(v25)) | (v26 << 6));
      v32 = v12[2];
      v33 = v69;
      v32(v69, v31, v11);
      v34 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v74 <= (v24 + 1) ? v24 + 1 : v74;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v74)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v34 = 1;
      v33 = v69;
      v30 = v81;
    }

    v76 = *v80;
    v76(v33, v34, 1, v11);
    v92 = v30;
    v93 = v20;
    v94 = v82;
    v95 = v28;
    v96 = v2;
    v75 = *v79;
    if (v75(v33, 1, v11) == 1)
    {
      sub_29DF2192C(v33);
      goto LABEL_52;
    }

    v73 = *v78;
    v73(v83, v33, v11);
    v72 = sub_29DF219C0(&unk_2A1818E70);
    v35 = sub_29E2C3244();
    v36 = -1 << *(a2 + 32);
    v24 = v35 & ~v36;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) != 0)
    {
      break;
    }

    v12 = v70;
    (*v91)(v83, v11);
LABEL_22:
    v24 = v28;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = v70[9];
  v86 = v70[2];
  v87 = v37;
  while (1)
  {
    v86(v16, *(a2 + 48) + v87 * v24, v11);
    v38 = sub_29DF219C0(&unk_2A181DBB0);
    v39 = sub_29E2C3304();
    v90 = *v91;
    v90(v16, v11);
    if (v39)
    {
      break;
    }

    v24 = (v24 + 1) & v84;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) == 0)
    {
      v12 = v70;
      v90(v83, v11);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v11);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v23 = 8 * v68;
  v12 = v81;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    MEMORY[0x2A1C7C4A8](v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v26] & ~v20;
    v45 = *(a2 + 16);
    v83 = v43;
    *&v43[8 * v26] = v44;
    v46 = v45 - 1;
    v24 = v71;
    v47 = i;
    v48 = v74;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v28;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v24, v12[6] + (v52 | (v49 << 6)) * v87, v11);
      v53 = 0;
LABEL_39:
      v76(v24, v53, 1, v11);
      v92 = v12;
      v93 = v47;
      v94 = v82;
      v95 = v28;
      v96 = v2;
      if (v75(v24, 1, v11) == 1)
      {
        sub_29DF2192C(v24);
        a2 = sub_29DF21EC4(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v73(v88, v24, v11);
      v54 = sub_29E2C3244();
      v55 = a2;
      v56 = -1 << *(a2 + 32);
      v57 = v54 & ~v56;
      v26 = v57 >> 6;
      v20 = 1 << v57;
      if (((1 << v57) & v85[v57 >> 6]) != 0)
      {
        v86(v16, *(v55 + 48) + v57 * v87, v11);
        v58 = sub_29E2C3304();
        v90(v16, v11);
        if ((v58 & 1) == 0)
        {
          v59 = ~v56;
          do
          {
            v57 = (v57 + 1) & v59;
            v26 = v57 >> 6;
            v20 = 1 << v57;
            if (((1 << v57) & v85[v57 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v16, *(v55 + 48) + v57 * v87, v11);
            v60 = sub_29E2C3304();
            v90(v16, v11);
          }

          while ((v60 & 1) == 0);
        }

        v90(v88, v11);
        v61 = v83[v26];
        v83[v26] = v61 & ~v20;
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
        if ((v61 & v20) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = MEMORY[0x29EDCA1A0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v11);
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
      }
    }

    if (v48 <= (v28 + 1))
    {
      v50 = v28 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v28 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v28;
      if (v2)
      {
        v28 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v63 = v23;

    v83 = a2;
    v64 = v63;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v65 = v83;

      a2 = v65;
      continue;
    }

    break;
  }

  v66 = swift_slowAlloc();
  memcpy(v66, v85, v64);
  sub_29DF21A04(v66, v68, v83, v24, &v92);
  a2 = v67;

  MEMORY[0x29ED82140](v66, -1, -1);
LABEL_52:
  sub_29DF219B8();
  return a2;
}

uint64_t sub_29DF2192C(uint64_t a1)
{
  sub_29DF22C40(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF219C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E2BCFB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DF21A04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  sub_29DF22C40(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_29E2BCFB4();
  MEMORY[0x2A1C7C4A8](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_29DF2192C(v11);
          v45 = v61;

          sub_29DF21EC4(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_29DF219C0(&unk_2A1818E70);
        v35 = sub_29E2C3244();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_29DF219C0(&unk_2A181DBB0);
        v43 = sub_29E2C3304();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_29DF21EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_29E2BCFB4();
  v8 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29DF221CC();
  result = sub_29E2C4554();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_29DF219C0(&unk_2A1818E70);
    result = sub_29E2C3244();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_29DF221CC()
{
  if (!qword_2A1818E80)
  {
    sub_29E2BCFB4();
    sub_29DF219C0(&unk_2A1818E70);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818E80);
    }
  }
}

uint64_t sub_29DF2224C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x29EDCA1A0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_29DF22434();
  result = sub_29E2C4554();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_29E2C40C4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_29DF22434()
{
  if (!qword_2A1A61CF8)
  {
    sub_29DE9408C(255, &qword_2A1A61DB0);
    sub_29DF224A8();
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61CF8);
    }
  }
}

unint64_t sub_29DF224A8()
{
  result = qword_2A1A61DA0;
  if (!qword_2A1A61DA0)
  {
    sub_29DE9408C(255, &qword_2A1A61DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61DA0);
  }

  return result;
}

uint64_t sub_29DF2254C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v47 = *MEMORY[0x29EDCA608];
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    MEMORY[0x2A1C7C4A8](v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_29DF21EC4(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_29DF21EC4(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_29DF22BB0(v32, v11, a3, v43);

  result = MEMORY[0x29ED82140](v32, -1, -1);
  if (!v4)
  {
    return v33;
  }

  return result;
}

void sub_29DF22950(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_29E2BCFB4();
  v7 = MEMORY[0x2A1C7C4A8](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19, v7);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      (*v32)(v20, v19);
      return;
    }

    v25 = v23;
    (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        sub_29DF21EC4(v30, v29, v31, v27);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_29DF22BB0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_29DF22950(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_29DF22C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LaunchSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29DF22E20()
{
  sub_29E2C34B4();
}

uint64_t sub_29DF22F9C()
{
  sub_29E2C34B4();
}

uint64_t sub_29DF23108()
{
  sub_29E2C34B4();
}

uint64_t sub_29DF23238()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DF2337C()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DF2349C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_29E2C4604();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_29DF269F4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_29DF237C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29DF273F4();
  *a1 = result;
  return result;
}

void sub_29DF237F4(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000676ELL;
  v3 = *v1;
  v4 = 0xEA00000000007374;
  v5 = 0x6867696C68676968;
  v6 = 0xE700000000000000;
  v7 = 0x72616265646973;
  if (v3 != 6)
  {
    v7 = 0x656C69666F7270;
    v6 = 0xE700000000000000;
  }

  v8 = 0x696472616F626E6FLL;
  if (v3 != 4)
  {
    v8 = 1936746868;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v7 = v8;
    v6 = v2;
  }

  v9 = 0xE600000000000000;
  v10 = 0x686372616573;
  if (v3 != 2)
  {
    v10 = 0x7972616D6D7573;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v5 = 0x6163696669746F6ELL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1 > 1u)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_29DF238F8()
{
  result = qword_2A1818E98;
  if (!qword_2A1818E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818E98);
  }

  return result;
}

void sub_29DF2394C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_29DF275EC(0, &qword_2A1818EA8, sub_29DF27650, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    sub_29E1A9EEC();
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x6E6F6973726576, 0xE700000000000000);
    sub_29E2C4514();
    *(inited + 96) = MEMORY[0x29EDC9BA8];
    *(inited + 72) = a1;
    sub_29E185DC4(inited);
    swift_setDeallocating();
    sub_29DF276B4(inited + 32);
    v5 = sub_29E2C31F4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

uint64_t sub_29DF23AD8()
{
  v1 = [v0 userInfo];
  v2 = MEMORY[0x29EDCA178];
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = v1;
  v4 = sub_29E2C3214();

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9[0] = sub_29E1A9EEC();
  v9[1] = v5;
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x6F5368636E75616CLL, 0xEC00000065637275);
  sub_29E2C4514();
  if (!*(v4 + 16) || (v6 = sub_29E1842D0(v9), (v7 & 1) == 0))
  {

    sub_29DF014AC(v9);
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_29DEA6E90(*(v4 + 56) + 32 * v6, &v10);
  sub_29DF014AC(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:
    sub_29DF27520(&v10, &qword_2A1819920, v2 + 8, sub_29DF27598);
    return 8;
  }

  if (swift_dynamicCast())
  {
    return sub_29DF273F4();
  }

  return 8;
}

void sub_29DF23C94(unsigned __int8 a1)
{
  if (a1 != 8)
  {
    v2 = v1;
    sub_29DF275EC(0, &qword_2A1818EA8, sub_29DF27650, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v5 = 0xEA0000000000676ELL;
    sub_29E1A9EEC();
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x6F5368636E75616CLL, 0xEC00000065637275);
    v6 = MEMORY[0x29EDC99B0];
    sub_29E2C4514();
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        v5 = 0xE700000000000000;
        if (a1 == 6)
        {
          v7 = 0x72616265646973;
        }

        else
        {
          v7 = 0x656C69666F7270;
        }
      }

      else if (a1 == 4)
      {
        v7 = 0x696472616F626E6FLL;
      }

      else
      {
        v5 = 0xE400000000000000;
        v7 = 1936746868;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v5 = 0xE600000000000000;
        v7 = 0x686372616573;
      }

      else
      {
        v5 = 0xE700000000000000;
        v7 = 0x7972616D6D7573;
      }
    }

    else if (a1)
    {
      v5 = 0xEC0000006E6F6974;
      v7 = 0x6163696669746F6ELL;
    }

    else
    {
      v5 = 0xEA00000000007374;
      v7 = 0x6867696C68676968;
    }

    *(inited + 96) = v6;
    *(inited + 72) = v7;
    *(inited + 80) = v5;
    sub_29E185DC4(inited);
    swift_setDeallocating();
    sub_29DF276B4(inited + 32);
    v8 = sub_29E2C31F4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

uint64_t sub_29DF23F24()
{
  v1 = [v0 userInfo];
  v2 = MEMORY[0x29EDCA178];
  if (!v1)
  {
    goto LABEL_11;
  }

  v3 = v1;
  v4 = sub_29E2C3214();

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  *&v9[0] = sub_29E1A9EEC();
  *(&v9[0] + 1) = v5;
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2F0F60);
  v10 = v9[0];
  sub_29E2C4514();
  if (!*(v4 + 16) || (v6 = sub_29E1842D0(v9), (v7 & 1) == 0))
  {

    sub_29DF014AC(v9);
LABEL_11:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_12;
  }

  sub_29DEA6E90(*(v4 + 56) + 32 * v6, &v10);
  sub_29DF014AC(v9);

  if (!*(&v11 + 1))
  {
LABEL_12:
    sub_29DF27520(&v10, &qword_2A1819920, v2 + 8, sub_29DF27598);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return LOBYTE(v9[0]);
  }

  else
  {
    return 2;
  }
}

void sub_29DF240E0(char a1)
{
  if (a1 != 2)
  {
    sub_29DF275EC(0, &qword_2A1818EA8, sub_29DF27650, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    sub_29E1A9EEC();
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2F0F60);
    sub_29E2C4514();
    *(inited + 96) = MEMORY[0x29EDC9A98];
    *(inited + 72) = a1 & 1;
    sub_29E185DC4(inited);
    swift_setDeallocating();
    sub_29DF276B4(inited + 32);
    v4 = sub_29E2C31F4();

    [v1 addUserInfoEntriesFromDictionary_];
  }
}

uint64_t sub_29DF2427C()
{
  v1 = [v0 userInfo];
  v2 = MEMORY[0x29EDCA178];
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = v1;
  v4 = sub_29E2C3214();

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9[0] = sub_29E1A9EEC();
  v9[1] = v5;
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x6574756F72, 0xE500000000000000);
  sub_29E2C4514();
  if (!*(v4 + 16) || (v6 = sub_29E1842D0(v9), (v7 & 1) == 0))
  {

    sub_29DF014AC(v9);
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_29DEA6E90(*(v4 + 56) + 32 * v6, &v10);
  sub_29DF014AC(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:
    sub_29DF27520(&v10, &qword_2A1819920, v2 + 8, sub_29DF27598);
    return 7;
  }

  if (swift_dynamicCast())
  {
    return sub_29DF27440();
  }

  return 7;
}

void sub_29DF2442C(unsigned __int8 a1)
{
  if (a1 != 7)
  {
    v2 = v1;
    sub_29DF275EC(0, &qword_2A1818EA8, sub_29DF27650, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    sub_29E1A9EEC();
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x6574756F72, 0xE500000000000000);
    v5 = MEMORY[0x29EDC99B0];
    sub_29E2C4514();
    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = 0xE700000000000000;
          v6 = 0x736E6F6974706FLL;
        }

        else
        {
          v7 = 0x800000029E2EB110;
          v6 = 0xD000000000000014;
        }
      }

      else
      {
        v7 = 0xE900000000000064;
        v6 = 0x6F69726550646461;
      }
    }

    else if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v7 = 0x800000029E2EB170;
        v6 = 0xD00000000000001DLL;
      }

      else
      {
        v7 = 0x800000029E2EB190;
        v6 = 0xD000000000000017;
      }
    }

    else if (a1 == 3)
    {
      v6 = 0xD000000000000012;
      v7 = 0x800000029E2EB130;
    }

    else
    {
      v7 = 0x800000029E2EB150;
      v6 = 0xD000000000000016;
    }

    *(inited + 96) = v5;
    *(inited + 72) = v6;
    *(inited + 80) = v7;
    sub_29E185DC4(inited);
    swift_setDeallocating();
    sub_29DF276B4(inited + 32);
    v8 = sub_29E2C31F4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

uint64_t sub_29DF246B8()
{
  v1 = [v0 userInfo];
  v2 = MEMORY[0x29EDCA178];
  if (!v1)
  {
    goto LABEL_11;
  }

  v3 = v1;
  v4 = sub_29E2C3214();

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  *&v9[0] = sub_29E1A9EEC();
  *(&v9[0] + 1) = v5;
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2F0F40);
  v10 = v9[0];
  sub_29E2C4514();
  if (!*(v4 + 16) || (v6 = sub_29E1842D0(v9), (v7 & 1) == 0))
  {

    sub_29DF014AC(v9);
LABEL_11:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_12;
  }

  sub_29DEA6E90(*(v4 + 56) + 32 * v6, &v10);
  sub_29DF014AC(v9);

  if (!*(&v11 + 1))
  {
LABEL_12:
    sub_29DF27520(&v10, &qword_2A1819920, v2 + 8, sub_29DF27598);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return *&v9[0];
  }

  else
  {
    return 0;
  }
}

void sub_29DF2487C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_29DF275EC(0, &qword_2A1818EA8, sub_29DF27650, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    sub_29E1A9EEC();
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2F0F40);
    sub_29E2C4514();
    *(inited + 96) = MEMORY[0x29EDC9BA8];
    *(inited + 72) = a1;
    sub_29E185DC4(inited);
    swift_setDeallocating();
    sub_29DF276B4(inited + 32);
    v5 = sub_29E2C31F4();

    [v2 addUserInfoEntriesFromDictionary_];
  }
}

uint64_t sub_29DF24A0C(int a1)
{
  v3 = sub_29E2BC434();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v35 = &v28[-v8];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v28[-v10];
  v12 = sub_29E2BC444();
  if (v12)
  {
    v13 = v12;
    v29 = a1;
    v30 = v6;
    v31 = v1;
    v38 = *(v12 + 16);
    if (v38)
    {
      v14 = 0;
      v37 = v4 + 16;
      v34 = (v4 + 32);
      v36 = MEMORY[0x29EDCA190];
      v32 = v3;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
LABEL_27:
          v36 = sub_29E144194(0, v36[2] + 1, 1, v36);
LABEL_21:
          v25 = v36[2];
          v24 = v36[3];
          if (v25 >= v24 >> 1)
          {
            v36 = sub_29E144194(v24 > 1, v25 + 1, 1, v36);
          }

          v26 = v36;
          v36[2] = v25 + 1;
          (*(v4 + 32))(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v6, v3);
          return sub_29E2BC454();
        }

        v6 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v15 = *(v4 + 72);
        (*(v4 + 16))(v11, &v6[v13 + v15 * v14], v3);
        if (sub_29E2BC414() == 0x6F5368636E75616CLL && v16 == 0xEC00000065637275)
        {
        }

        else
        {
          v17 = sub_29E2C4914();

          if ((v17 & 1) == 0)
          {
            v18 = *v34;
            (*v34)(v35, v11, v3);
            v19 = v36;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v19;
            v33 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_29E18162C(0, v19[2] + 1, 1);
              v19 = v39;
            }

            v22 = v19[2];
            v21 = v19[3];
            if (v22 >= v21 >> 1)
            {
              sub_29E18162C(v21 > 1, v22 + 1, 1);
              v19 = v39;
            }

            v19[2] = v22 + 1;
            v36 = v19;
            v23 = &v6[v19 + v22 * v15];
            v3 = v32;
            v33(v23, v35, v32);
            goto LABEL_6;
          }
        }

        (*(v4 + 8))(v11, v3);
LABEL_6:
        if (v38 == ++v14)
        {
          goto LABEL_18;
        }
      }
    }

    v36 = MEMORY[0x29EDCA190];
LABEL_18:

    v6 = v30;
    LOBYTE(a1) = v29;
  }

  else
  {
    v36 = MEMORY[0x29EDCA190];
  }

  if (a1 < 8u)
  {
    sub_29E2BC404();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  return sub_29E2BC454();
}

void sub_29DF24EEC(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 > 3u)
  {
    v8 = 0x800000029E2EB190;
    v9 = 0xD000000000000017;
    if (a1 != 6)
    {
      v9 = 0;
      v8 = 0xE000000000000000;
    }

    v10 = 0x800000029E2EB150;
    v11 = 0xD00000000000001DLL;
    if (a1 == 4)
    {
      v11 = 0xD000000000000016;
    }

    else
    {
      v10 = 0x800000029E2EB170;
    }

    if (a1 <= 5u)
    {
      v6 = v11;
    }

    else
    {
      v6 = v9;
    }

    if (v1 <= 5)
    {
      v7 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v2 = 0xE900000000000064;
    v3 = 0x6F69726550646461;
    v4 = 0x800000029E2EB110;
    v5 = 0xD000000000000014;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
      v4 = 0x800000029E2EB130;
    }

    if (a1)
    {
      v3 = 0x736E6F6974706FLL;
      v2 = 0xE700000000000000;
    }

    if (a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v1 <= 1)
    {
      v7 = v2;
    }

    else
    {
      v7 = v4;
    }
  }

  MEMORY[0x29ED7FCC0](v6, v7);

  JUMPOUT(0x29ED78C70);
}

uint64_t sub_29DF25054(int a1)
{
  v3 = sub_29E2BC434();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v36 = &v30[-v8];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v30[-v10];
  v12 = sub_29E2BC444();
  if (v12)
  {
    v13 = v12;
    v31 = a1;
    v32 = v6;
    v33 = v1;
    v39 = *(v12 + 16);
    if (v39)
    {
      v14 = 0;
      v38 = v4 + 16;
      v40 = 0x800000029E2F0F60;
      v35 = (v4 + 32);
      v6 = (v4 + 8);
      v37 = MEMORY[0x29EDCA190];
      v34 = v3;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
LABEL_26:
          v37 = sub_29E144194(0, v37[2] + 1, 1, v37);
LABEL_21:
          v27 = v37[2];
          v26 = v37[3];
          if (v27 >= v26 >> 1)
          {
            v37 = sub_29E144194(v26 > 1, v27 + 1, 1, v37);
          }

          v28 = v37;
          v37[2] = v27 + 1;
          (*(v4 + 32))(v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v6, v3);
          return sub_29E2BC454();
        }

        v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v16 = *(v4 + 72);
        (*(v4 + 16))(v11, v13 + v15 + v16 * v14, v3);
        if (sub_29E2BC414() == 0xD000000000000014 && v40 == v17)
        {
        }

        else
        {
          v18 = sub_29E2C4914();

          if ((v18 & 1) == 0)
          {
            v19 = *v35;
            (*v35)(v36, v11, v3);
            v20 = v37;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_29E18162C(0, v20[2] + 1, 1);
              v20 = v41;
            }

            v22 = v20;
            v24 = v20[2];
            v23 = v20[3];
            if (v24 >= v23 >> 1)
            {
              v37 = v19;
              sub_29E18162C(v23 > 1, v24 + 1, 1);
              v19 = v37;
              v22 = v41;
            }

            v22[2] = v24 + 1;
            v37 = v22;
            v25 = v22 + v15 + v24 * v16;
            v3 = v34;
            (v19)(v25, v36, v34);
            goto LABEL_6;
          }
        }

        (*v6)(v11, v3);
LABEL_6:
        if (v39 == ++v14)
        {
          goto LABEL_18;
        }
      }
    }

    v37 = MEMORY[0x29EDCA190];
LABEL_18:

    v6 = v32;
    LOBYTE(a1) = v31;
  }

  else
  {
    v37 = MEMORY[0x29EDCA190];
  }

  if (a1 != 2)
  {
    sub_29E2BC404();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  return sub_29E2BC454();
}

uint64_t sub_29DF2544C(void *a1, int a2)
{
  v5 = sub_29E2BC434();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v38 = &v30[-v10];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v30[-v12];
  v14 = sub_29E2BC444();
  if (!v14)
  {
    v39 = MEMORY[0x29EDCA190];
    if (a2)
    {
      return sub_29E2BC454();
    }

    goto LABEL_17;
  }

  v15 = v14;
  v31 = a2;
  v32 = a1;
  v33 = v8;
  v34 = v2;
  v41 = *(v14 + 16);
  if (!v41)
  {
    v39 = MEMORY[0x29EDCA190];
LABEL_22:

    v8 = v33;
    a1 = v32;
    if (v31)
    {
      return sub_29E2BC454();
    }

LABEL_17:
    v43 = a1;
    sub_29E2C48D4();
    sub_29E2BC404();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v16 = 0;
  v40 = v6 + 16;
  v42 = 0x800000029E2F0F40;
  v37 = (v6 + 32);
  v39 = MEMORY[0x29EDCA190];
  v35 = v5;
  while (v16 < *(v15 + 16))
  {
    v8 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = *(v6 + 72);
    (*(v6 + 16))(v13, &v8[v15 + v17 * v16], v5);
    if (sub_29E2BC414() == 0xD000000000000012 && v42 == v18)
    {
    }

    else
    {
      v19 = sub_29E2C4914();

      if ((v19 & 1) == 0)
      {
        v20 = *v37;
        (*v37)(v38, v13, v5);
        v21 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v21;
        v36 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E18162C(0, v21[2] + 1, 1);
          v21 = v43;
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          sub_29E18162C(v23 > 1, v24 + 1, 1);
          v21 = v43;
        }

        v21[2] = v24 + 1;
        v39 = v21;
        v25 = &v8[v21 + v24 * v17];
        v5 = v35;
        v36(v25, v38, v35);
        goto LABEL_6;
      }
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    if (v41 == ++v16)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  v39 = sub_29E144194(0, v39[2] + 1, 1, v39);
LABEL_18:
  v27 = v39[2];
  v26 = v39[3];
  if (v27 >= v26 >> 1)
  {
    v39 = sub_29E144194(v26 > 1, v27 + 1, 1, v39);
  }

  v28 = v39;
  v39[2] = v27 + 1;
  (*(v6 + 32))(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v8, v5);
  return sub_29E2BC454();
}

uint64_t sub_29DF25858()
{
  v0 = sub_29E2BC434();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v18 - v5;
  result = sub_29E2BC444();
  if (!result)
  {
    return 8;
  }

  v8 = result;
  v9 = *(result + 16);
  v18 = v6;
  v19 = v9;
  if (!v9)
  {
LABEL_9:

    return 8;
  }

  v10 = 0;
  v11 = 0x6F5368636E75616CLL;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v3, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v0);
    if (sub_29E2BC414() == v11 && v12 == 0xEC00000065637275)
    {
      break;
    }

    v13 = v11;
    v14 = sub_29E2C4914();

    if (v14)
    {
      goto LABEL_11;
    }

    ++v10;
    result = (*(v1 + 8))(v3, v0);
    v11 = v13;
    if (v19 == v10)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v15 = v18;
  (*(v1 + 32))(v18, v3, v0);
  sub_29E2BC424();
  v17 = v16;
  (*(v1 + 8))(v15, v0);
  if (!v17)
  {
    return 8;
  }

  return sub_29DF273F4();
}

uint64_t sub_29DF25AB0()
{
  v0 = sub_29E2BC434();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v18 - v5;
  result = sub_29E2BC444();
  if (!result)
  {
    return 2;
  }

  v8 = result;
  v18[0] = v6;
  v9 = *(result + 16);
  if (!v9)
  {
LABEL_9:

    return 2;
  }

  v10 = 0;
  v18[1] = v1 + 16;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v3, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v0);
    if (sub_29E2BC414() == 0xD000000000000014 && 0x800000029E2F0F60 == v11)
    {
      break;
    }

    v12 = sub_29E2C4914();

    if (v12)
    {
      goto LABEL_11;
    }

    ++v10;
    result = (*(v1 + 8))(v3, v0);
    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v13 = v18[0];
  (*(v1 + 32))(v18[0], v3, v0);
  v14 = sub_29E2BC424();
  v16 = v15;
  (*(v1 + 8))(v13, v0);
  if (!v16)
  {
    return 2;
  }

  if (v14 == 48 && v16 == 0xE100000000000000 || (sub_29E2C4914() & 1) != 0)
  {

    return 0;
  }

  if (v14 == 49 && v16 == 0xE100000000000000)
  {
  }

  else
  {
    v17 = sub_29E2C4914();

    if ((v17 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

uint64_t sub_29DF25D7C()
{
  sub_29E2BC494();
  v0 = sub_29DE9DE68();
  v1 = MEMORY[0x29ED80B80](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x29EDC99B0], v0);

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[6];
    v5 = v1[7];
    sub_29E2BF404();

    MEMORY[0x29ED7FC50](v2, v3, v4, v5);

    return sub_29DF27440();
  }

  else
  {

    return 7;
  }
}

uint64_t sub_29DF25E50()
{
  v1 = sub_29E2BC904();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v39 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E2BDFC4();
  v43 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF275EC(0, &qword_2A1818EA0, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v38 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v38 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v38 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v38 - v16;
  v44 = v0;
  sub_29E2BC464();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  sub_29E1A9EEC();
  v18 = sub_29E2BDF74();

  sub_29DF2394C(1, 0);
  sub_29DF2748C(v17, v14);
  v19 = sub_29E2BC4D4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v14, 1, v19) == 1)
  {
    sub_29DF27520(v14, &qword_2A1818EA0, MEMORY[0x29EDB9940], sub_29DF275EC);
    v22 = 8;
  }

  else
  {
    v23 = sub_29DF25858();
    (*(v20 + 8))(v14, v19);
    v22 = v23;
  }

  sub_29DF23C94(v22);
  sub_29DF2748C(v17, v11);
  v24 = v21(v11, 1, v19);
  v25 = v38;
  if (v24 == 1)
  {
    sub_29DF27520(v11, &qword_2A1818EA0, MEMORY[0x29EDB9940], sub_29DF275EC);
    v26 = 7;
  }

  else
  {
    v27 = sub_29DF25D7C();
    (*(v20 + 8))(v11, v19);
    v26 = v27;
  }

  sub_29DF2442C(v26);
  sub_29DF2748C(v17, v8);
  if (v21(v8, 1, v19) == 1)
  {
    sub_29DF27520(v8, &qword_2A1818EA0, MEMORY[0x29EDB9940], sub_29DF275EC);
    v28 = 2;
  }

  else
  {
    v29 = sub_29DF25AB0();
    (*(v20 + 8))(v8, v19);
    v28 = v29;
  }

  sub_29DF240E0(v28);
  sub_29DF2748C(v17, v25);
  if (v21(v25, 1, v19) == 1)
  {
    sub_29DF27520(v25, &qword_2A1818EA0, MEMORY[0x29EDB9940], sub_29DF275EC);
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v32 = sub_29DF26460();
    v31 = v33;
    (*(v20 + 8))(v25, v19);
    v30 = v32;
  }

  v34 = v40;
  sub_29DF2487C(v30, v31 & 1);
  (*(v41 + 16))(v39, v44, v42);
  sub_29E2BDFB4();
  v35 = sub_29E2BDF84();
  if (v35)
  {
    v36 = v35;
    sub_29E2C3A74();
  }

  (*(v43 + 8))(v34, v45);
  sub_29DF27520(v17, &qword_2A1818EA0, MEMORY[0x29EDB9940], sub_29DF275EC);
  return v18;
}

unsigned __int8 *sub_29DF26460()
{
  v0 = sub_29E2BC434();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v41 - v5;
  result = sub_29E2BC444();
  if (result)
  {
    v8 = result;
    v42 = v6;
    v9 = *(result + 2);
    if (v9)
    {
      v10 = 0;
      v43 = v1 + 16;
      while (1)
      {
        if (v10 >= *(v8 + 2))
        {
          __break(1u);
          goto LABEL_9;
        }

        (*(v1 + 16))(v3, &v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10], v0);
        if (sub_29E2BC414() == 0xD000000000000012 && 0x800000029E2F0F40 == v11)
        {
          break;
        }

        v12 = sub_29E2C4914();

        if (v12)
        {
          goto LABEL_11;
        }

        ++v10;
        (*(v1 + 8))(v3, v0);
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

LABEL_11:

      v13 = v42;
      (*(v1 + 32))(v42, v3, v0);
      v14 = sub_29E2BC424();
      v16 = v15;
      result = (*(v1 + 8))(v13, v0);
      if (!v16)
      {
        return 0;
      }

      v17 = HIBYTE(v16) & 0xF;
      v18 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v14 & 0xFFFFFFFFFFFFLL)
      {
        if ((v16 & 0x1000000000000000) != 0)
        {
          v21 = sub_29DF269F4(v14, v16, 10);
          v39 = v40;
LABEL_76:

          if (v39)
          {
            return 0;
          }

          else
          {
            return v21;
          }
        }

        if ((v16 & 0x2000000000000000) != 0)
        {
          v44[0] = v14;
          v44[1] = v16 & 0xFFFFFFFFFFFFFFLL;
          if (v14 == 43)
          {
            if (v17)
            {
              if (--v17)
              {
                v21 = 0;
                v31 = v44 + 1;
                while (1)
                {
                  v32 = *v31 - 48;
                  if (v32 > 9)
                  {
                    break;
                  }

                  v33 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    break;
                  }

                  v21 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    break;
                  }

                  ++v31;
                  if (!--v17)
                  {
                    goto LABEL_75;
                  }
                }
              }

              goto LABEL_74;
            }

LABEL_86:
            __break(1u);
            return result;
          }

          if (v14 != 45)
          {
            if (v17)
            {
              v21 = 0;
              v36 = v44;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                ++v36;
                if (!--v17)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_74;
          }

          if (v17)
          {
            if (--v17)
            {
              v21 = 0;
              v25 = v44 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v27 - v26;
                if (__OFSUB__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v17)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_74;
          }
        }

        else
        {
          if ((v14 & 0x1000000000000000) != 0)
          {
            result = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_29E2C4604();
          }

          v20 = *result;
          if (v20 == 43)
          {
            if (v18 >= 1)
            {
              v17 = v18 - 1;
              if (v18 != 1)
              {
                v21 = 0;
                if (result)
                {
                  v28 = result + 1;
                  while (1)
                  {
                    v29 = *v28 - 48;
                    if (v29 > 9)
                    {
                      goto LABEL_74;
                    }

                    v30 = 10 * v21;
                    if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                    {
                      goto LABEL_74;
                    }

                    v21 = v30 + v29;
                    if (__OFADD__(v30, v29))
                    {
                      goto LABEL_74;
                    }

                    ++v28;
                    if (!--v17)
                    {
                      goto LABEL_75;
                    }
                  }
                }

                goto LABEL_66;
              }

              goto LABEL_74;
            }

            goto LABEL_85;
          }

          if (v20 != 45)
          {
            if (v18)
            {
              v21 = 0;
              if (result)
              {
                while (1)
                {
                  v34 = *result - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_74;
                  }

                  v35 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    goto LABEL_74;
                  }

                  v21 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    goto LABEL_74;
                  }

                  ++result;
                  if (!--v18)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_66;
            }

LABEL_74:
            v21 = 0;
            LOBYTE(v17) = 1;
            goto LABEL_75;
          }

          if (v18 >= 1)
          {
            v17 = v18 - 1;
            if (v18 != 1)
            {
              v21 = 0;
              if (result)
              {
                v22 = result + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    goto LABEL_74;
                  }

                  v24 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    goto LABEL_74;
                  }

                  v21 = v24 - v23;
                  if (__OFSUB__(v24, v23))
                  {
                    goto LABEL_74;
                  }

                  ++v22;
                  if (!--v17)
                  {
                    goto LABEL_75;
                  }
                }
              }

LABEL_66:
              LOBYTE(v17) = 0;
LABEL_75:
              v45 = v17;
              v39 = v17;
              goto LABEL_76;
            }

            goto LABEL_74;
          }

          __break(1u);
        }

        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

LABEL_9:

    return 0;
  }

  return result;
}

void *sub_29DF26968(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29DF27598(0, &qword_2A1A61CA8, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_29DF269F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_29E2BF404();
  result = sub_29E2C3564();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_29DF26F80();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_29E2C4604();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_29DF26F80()
{
  v0 = sub_29E2C3574();
  v4 = sub_29DF27000(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_29DF27000(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_29E2C4314();
    if (!v9 || (v10 = v9, v11 = sub_29DF26968(v9, 0), v12 = sub_29DF27158(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_29E2BF404(), , v12 == v10))
    {
      v13 = sub_29E2C34A4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_29E2C34A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_29E2C4604();
LABEL_4:

  return sub_29E2C34A4();
}

unint64_t sub_29DF27158(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_29DF27378(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_29E2C3534();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_29E2C4604();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_29DF27378(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_29E2C3514();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_29DF27378(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29E2C3544();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x29ED7FCF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_29DF273F4()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29DF27440()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29DF2748C(uint64_t a1, uint64_t a2)
{
  sub_29DF275EC(0, &qword_2A1818EA0, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF27520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v5 = a4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29DF27598(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DF275EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DF27650()
{
  if (!qword_2A1818EB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1818EB0);
    }
  }
}

uint64_t sub_29DF276B4(uint64_t a1)
{
  sub_29DF27650();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF27718()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29DF2778C()
{
  v0 = sub_29E2BEE54();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BEE14();
  v4 = sub_29E2BEE44();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29DF278BC()
{
  type metadata accessor for MenstrualCyclesOnboardingItemCell();
  sub_29DF299A8(&qword_2A1818EC0, 255, type metadata accessor for MenstrualCyclesOnboardingItemCell);
  return sub_29E2C3B74();
}

id sub_29DF27958()
{
  v1 = v0;
  v2 = sub_29E2BE2A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E2BD4C4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  sub_29E2BE5C4();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = *(v1 + 56);
  sub_29DE9DC34(v1 + 64, v13);
  v9 = *(v1 + 48);
  v10 = v9;
  v11 = v8;
  sub_29DF27B64(v9);

  (*(v3 + 104))(v5, *MEMORY[0x29EDC1D60], v2);
  v14[3] = sub_29E2BF674();
  v14[4] = MEMORY[0x29EDC2958];
  sub_29DEBB7E8(v14);
  sub_29E2BF654();
  sub_29E2BE5B4();
  [*(v1 + 120) addObject_];
  swift_beginAccess();
  sub_29E2BF404();
  sub_29E2BE594();

  return v7;
}

uint64_t sub_29DF27B64(void *a1)
{
  v2 = sub_29E2C0514();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MenstrualCyclesOnboardingUserData();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v14 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BDEF4();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF28510(0xD00000000000001DLL, 0x800000029E2D1FA0, v8);
  v9 = sub_29E2BD274();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    sub_29DF90058(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for MenstrualCyclesOnboardingActionHandler();
  sub_29DF299A8(&qword_2A1818EE8, 255, type metadata accessor for MenstrualCyclesOnboardingActionHandler);
  sub_29E2BD2C4();

  if (a1)
  {
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v10 = a1;
    v11 = v14;
    sub_29E2C2ED4();
    sub_29E2BC2E4();
    swift_allocObject();
    sub_29E2BC2D4();
    v12 = v15;
    sub_29E2C04B4();
    sub_29DF8F54C();

    (*(v16 + 8))(v12, v17);
    sub_29DF2992C(v11);
    sub_29E2BD424();
  }

  return (*(v18 + 8))(v8, v19);
}

void sub_29DF27EDC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = a1;
    v12 = a1;
  }

  else if (a2)
  {
    v13 = v8;
    sub_29E2C04B4();
    v14 = a2;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A34();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      v29 = sub_29DF29988(0, v19, v20);
      sub_29DF29A10(0, &unk_2A1818EF0, 255, sub_29DF29988);
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, v28);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2082;
      v29 = a2;
      v24 = a2;
      sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v25 = sub_29E2C3464();
      v27 = sub_29DFAA104(v25, v26, v28);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Error trying to get analysis: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    (*(v7 + 8))(v10, v13);
  }
}

void sub_29DF2816C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_29DF281F8()
{

  sub_29DE93B3C((v0 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_29DF28284()
{
  v1 = *(*v0 + 16);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DF282B8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 104);
  sub_29E2BF404();
  return v2;
}

uint64_t sub_29DF28308(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
}

uint64_t sub_29DF283B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29DF28510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[6] = a3;
  v27[7] = a1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v27 - v10;
  v12 = sub_29E2BDE44();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenstrualCyclesHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v27[8] = a2;
  sub_29E2BF404();
  v17 = [v16 bundleForClass_];
  v27[5] = v14;
  sub_29E2BDE34();
  sub_29E2C3314();
  v18 = *(v6 + 16);
  v18(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A67F80;
  sub_29E2BCC74();
  v20 = v19;
  v21 = sub_29E2C3414();
  v27[3] = v22;
  v27[4] = v21;
  v23 = *(v6 + 8);
  v23(v11, v5);
  sub_29E2C3314();
  v18(v8, v11, v5);
  sub_29E2BCC74();
  v24 = sub_29E2C3414();
  v27[1] = v25;
  v27[2] = v24;
  v23(v11, v5);
  sub_29E2C3314();
  v18(v8, v11, v5);
  sub_29E2BCC74();
  sub_29E2C3414();
  v23(v11, v5);
  return sub_29E2BDEE4();
}

uint64_t sub_29DF288FC(char a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C2B84();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v9 = sub_29E2C3CF4();
  (*(v7 + 104))(v9, *MEMORY[0x29EDCA278], v6);
  v10 = sub_29E2C2BA4();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_29E2C04B4();
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446466;
      v16 = sub_29E2C4AE4();
      v18 = sub_29DFAA104(v16, v17, &v27);
      v25 = v2;
      v19 = a1;
      v20 = v18;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      v26 = v19 & 1;
      v21 = sub_29E2C3464();
      v23 = sub_29DFAA104(v21, v22, &v27);

      *(v14 + 14) = v23;
      a1 = v19;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Received onboarding completed update to: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v15, -1, -1);
      MEMORY[0x29ED82140](v14, -1, -1);

      (*(v3 + 8))(v5, v25);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return sub_29E001D60(a1 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29DF28C3C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  type metadata accessor for MenstrualCyclesOnboardingItemCell();
  sub_29DF299A8(&qword_2A1818EC0, 255, type metadata accessor for MenstrualCyclesOnboardingItemCell);
  v3[2] = sub_29E2BE2B4();
  v3[3] = v9;
  v3[4] = 0xD00000000000001DLL;
  v3[5] = 0x800000029E2D1FA0;
  v3[6] = 0;
  sub_29E2BE5C4();
  v3[13] = sub_29E2BE584();
  v3[14] = v10;
  v3[15] = [objc_opt_self() weakObjectsHashTable];
  v3[7] = a1;
  sub_29DE9DC34(a2, (v3 + 8));
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v8;
  v19[4] = sub_29DF299F0;
  v19[5] = v12;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 1107296256;
  v19[2] = sub_29DF2816C;
  v19[3] = &unk_2A24B40A8;
  v13 = _Block_copy(v19);
  v14 = a1;

  [a3 analysisWithCompletion_];
  _Block_release(v13);
  swift_beginAccess();
  v15 = *(v11 + 16);
  v16 = v15;

  v17 = v4[6];
  v4[6] = v15;

  [a3 registerObserver_];
  sub_29DE93B3C(a2);
  return v4;
}

uint64_t sub_29DF28EAC(void *a1)
{
  v2 = v1;
  sub_29DF2973C(0, &qword_2A1818EC8, type metadata accessor for MenstrualCyclesOnboardingUserData);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v61 = &v52 - v5;
  v60 = type metadata accessor for MenstrualCyclesOnboardingUserData();
  v6 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60 - 8);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF2973C(0, &qword_2A1818ED0, MEMORY[0x29EDC2960]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_29E2BF674();
  v63 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BC844();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2C0514();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v20 = a1;
  v21 = sub_29E2C0504();
  v22 = sub_29E2C3A34();

  LODWORD(v54) = v22;
  v23 = os_log_type_enabled(v21, v22);
  v62 = v16;
  v58 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v66 = v53;
    *v24 = 136446466;
    *&v69 = *v2;
    sub_29DF29988(0, v25, v26);
    v27 = sub_29E2C3424();
    v29 = sub_29DFAA104(v27, v28, &v66);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    *&v69 = v20;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v30 = v20;
    v31 = sub_29E2C3464();
    v33 = sub_29DFAA104(v31, v32, &v66);

    *(v24 + 14) = v33;
    v16 = v62;
    _os_log_impl(&dword_29DE74000, v21, v54, "[%{public}s] Received analysis: %{public}s", v24, 0x16u);
    v34 = v53;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v34, -1, -1);
    MEMORY[0x29ED82140](v24, -1, -1);
  }

  (v64[1])(v19, v65);
  v35 = *(v2 + 48);
  *(v2 + 48) = v20;
  v54 = v20;

  v36 = [*(v2 + 120) objectEnumerator];
  sub_29E2C3934();

  sub_29E2BC834();
  if (v70)
  {
    v37 = v63;
    v38 = (v63 + 7);
    v39 = (v63 + 6);
    ++v63;
    v64 = (v37 + 4);
    v58 += 7;
    v59 = v13;
    v65 = (v37 + 6);
    do
    {
      sub_29DEA049C(&v69, &v66);
      sub_29E2BE5C4();
      if (swift_dynamicCast())
      {
        v40 = v68;
        sub_29E2BE5A4();
        if (v67)
        {
          sub_29DEB1BC4(0, &qword_2A1A61B98);
          v41 = swift_dynamicCast();
          (*v38)(v10, v41 ^ 1u, 1, v11);
          if ((*v39)(v10, 1, v11) != 1)
          {
            (*v64)(v13, v10, v11);
            v42 = sub_29E2BF664();
            if (v43 >> 60 == 15)
            {
              (*v63)(v13, v11);
            }

            else
            {
              v44 = v42;
              v45 = v43;
              sub_29E2BC2B4();
              swift_allocObject();
              sub_29E2BC2A4();
              sub_29DF299A8(&qword_2A1818ED8, 255, type metadata accessor for MenstrualCyclesOnboardingUserData);
              v47 = v60;
              v46 = v61;
              sub_29E2BC294();

              (*v58)(v46, 0, 1, v47);
              v48 = v46;
              v49 = v55;
              sub_29DF29860(v48, v55);
              sub_29DF298C4();
              v50 = v54;
              sub_29E2C2EA4();

              sub_29DF1DD38(v44, v45);
              sub_29DF2992C(v49);
              v13 = v59;
              (*v63)(v59, v11);
              v16 = v62;
            }

            v39 = v65;
            goto LABEL_7;
          }
        }

        else
        {

          sub_29DF29790(&v66);
          (*v38)(v10, 1, 1, v11);
        }

        sub_29DF29804(v10, &qword_2A1818ED0, MEMORY[0x29EDC2960]);
      }

LABEL_7:
      sub_29E2BC834();
    }

    while (v70);
  }

  return (*(v56 + 8))(v16, v57);
}

void sub_29DF2973C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DF29790(uint64_t a1)
{
  sub_29DEF964C(0, &qword_2A1A61B90, &qword_2A1A61B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF29804(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29DF2973C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DF29860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesOnboardingUserData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29DF298C4()
{
  if (!qword_2A1A5E390)
  {
    sub_29DE9408C(255, &qword_2A1A61DC0);
    v0 = sub_29E2C2EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E390);
    }
  }
}

uint64_t sub_29DF2992C(uint64_t a1)
{
  v2 = type metadata accessor for MenstrualCyclesOnboardingUserData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF299A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29DF299F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DF29A10(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29DF29A5C(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14[-v8];
  if (a1)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
    return v13;
  }
}

uint64_t sub_29DF29CE8(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14[-v8];
  if (a1)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
    return v13;
  }
}

uint64_t sub_29DF29F78(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14[-v8];
  if (a1)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
    return v13;
  }
}

uint64_t sub_29DF2A204(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x57656C6974726566;
  }

  else
  {
    v3 = 0x61757274736E656DLL;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0xED0000776F646E69;
  }

  if (*a2)
  {
    v5 = 0x57656C6974726566;
  }

  else
  {
    v5 = 0x61757274736E656DLL;
  }

  if (*a2)
  {
    v6 = 0xED0000776F646E69;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29E2C4914();
  }

  return v8 & 1;
}

uint64_t sub_29DF2A2C0()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DF2A358()
{
  sub_29E2C34B4();
}

uint64_t sub_29DF2A3DC()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DF2A470@<X0>(char *a1@<X8>)
{
  v2 = sub_29E2C47E4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_29DF2A4D0(uint64_t *a1@<X8>)
{
  v2 = 0x61757274736E656DLL;
  if (*v1)
  {
    v2 = 0x57656C6974726566;
  }

  v3 = 0xEC0000006E6F6974;
  if (*v1)
  {
    v3 = 0xED0000776F646E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_29DF2A53C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projection);
  v4 = sub_29E2C33A4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_29E2C33A4();

  v6 = sub_29E2C33A4();
  [a1 encodeObject:v5 forKey:v6];
}

id sub_29DF2A740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProjectionHighlightTileViewModelContextData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29DF2A7BC()
{
  result = qword_2A1818F78;
  if (!qword_2A1818F78)
  {
    sub_29DF2A814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818F78);
  }

  return result;
}

void sub_29DF2A814()
{
  if (!qword_2A1818F80)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818F80);
    }
  }
}

unint64_t sub_29DF2A868()
{
  result = qword_2A1818F88;
  if (!qword_2A1818F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818F88);
  }

  return result;
}

id sub_29DF2A8BC()
{
  v1 = v0;
  sub_29DE9408C(0, &qword_2A1A62790);
  result = sub_29E2C4044();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projection] = result;
  sub_29DE9408C(0, &qword_2A1A619D0);
  result = sub_29E2C4044();
  if (result)
  {
    v3 = result;
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

    v4 = sub_29E2C47E4();

    if (v4 <= 1)
    {
      v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projectionKind] = v4;
      v5.receiver = v1;
      v5.super_class = type metadata accessor for ProjectionHighlightTileViewModelContextData();
      return objc_msgSendSuper2(&v5, sel_init);
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_29DF2A9E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v12 = v1[2];
  v13 = v3;
  v14 = *(v1 + 8);
  v4 = v1[1];
  v10 = *v1;
  v11 = v4;
  *a1 = swift_getKeyPath();
  sub_29DF2D614(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + *(type metadata accessor for PregnancySuggestedFeatureAdjustmentTile() + 20);
  v6 = v13;
  *(v5 + 2) = v12;
  *(v5 + 3) = v6;
  *(v5 + 8) = v14;
  v7 = v11;
  *v5 = v10;
  *(v5 + 1) = v7;
  return sub_29DF2D508(&v10, v9);
}

id sub_29DF2AAAC()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController____lazy_storage___hostingController);
  }

  else
  {
    v4 = sub_29DF2AB10(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29DF2AB10(uint64_t a1)
{
  v2 = sub_29E2C1F74();
  MEMORY[0x2A1C7C4A8](v2);
  v3 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 64);
  v4 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 96);
  v20 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 80);
  v21 = v4;
  v5 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 64);
  v19[0] = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 48);
  v19[1] = v5;
  v6 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 96);
  v16 = v20;
  v17 = v6;
  v22 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 112);
  v18 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration + 112);
  v14 = v19[0];
  v15 = v3;
  sub_29DF2D564();
  v8 = objc_allocWithZone(v7);
  sub_29DF2D508(v19, v13);
  v9 = sub_29E2C1C34();
  v10 = MEMORY[0x29EDBC0B8];
  sub_29DF2D614(0, &qword_2A1817F90, MEMORY[0x29EDBC0B8], MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CAB20;
  sub_29E2C1F64();
  *&v14 = v11;
  sub_29DF2D700(&qword_2A1817F98, MEMORY[0x29EDBC0B8]);
  sub_29DF2D614(0, &qword_2A1817FA0, v10, MEMORY[0x29EDC9A40]);
  sub_29DF2D678();
  sub_29E2C43F4();
  sub_29E2C1C24();
  return v9;
}

id sub_29DF2AD50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController____lazy_storage___hostingController] = 0;
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration];
  v10 = *(a1 + 112);
  v11 = *(a1 + 128);
  v12 = *(a1 + 80);
  *(v9 + 6) = *(a1 + 96);
  *(v9 + 7) = v10;
  *(v9 + 8) = v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v13;
  *(v9 + 18) = *(a1 + 144);
  *(v9 + 4) = v14;
  *(v9 + 5) = v12;
  *v9 = *a1;
  *(v9 + 1) = v15;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep] = *(a1 + 40);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_coordinator] = a2;
  sub_29DF2CF34(a1, v23);

  v16 = sub_29E2C33A4();
  v17 = sub_29E2C33A4();
  v18 = *(a1 + 32);
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v19 = v18;
  v20 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v19, 3);

  sub_29DF2CF6C(a1);

  return v20;
}

void sub_29DF2AEB4()
{
  v1 = v0;
  v60.receiver = v0;
  v60.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v60, sel_viewDidLoad);
  [v0 setModalInPresentation_];
  v2 = sub_29DF2AAAC();
  [v1 addChildViewController_];

  v3 = [v1 contentView];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController____lazy_storage___hostingController;
  v5 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController____lazy_storage___hostingController] view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v3 addSubview_];

  [*&v1[v4] didMoveToParentViewController_];
  v7 = [*&v1[v4] view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [*&v1[v4] view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v9 hk_onboardingListEdgeInsets];
  v12 = v11;
  v14 = v13;

  v15 = [*&v1[v4] view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v58 = [v17 constraintEqualToAnchor:v19 constant:v12];
  v20 = [*&v1[v4] view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-v14];
  sub_29DE99B54();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29E2CE070;
  v27 = [*&v1[v4] view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v1 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v26 + 32) = v32;
  v33 = [*&v1[v4] view];
  if (!v33)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 bottomAnchor];

  v37 = [v1 contentView];
  v38 = [v37 bottomAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v26 + 40) = v39;
  *(v26 + 48) = v58;
  *(v26 + 56) = v25;
  sub_29DEB8834();
  v40 = v58;
  v41 = v25;
  v42 = sub_29E2C3604();

  [v35 activateConstraints_];

  v43 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewLeadingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewLeadingConstraint] = v40;
  v59 = v40;

  v44 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewTrailingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewTrailingConstraint] = v41;
  v45 = v41;

  v46 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_configuration];
  v47 = sub_29E2C33A4();
  v48 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v49 = PregnancyOnboardingStep.description.getter(v48);
  MEMORY[0x29ED7FCC0](v49);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v50 = sub_29E2C33A4();

  if (*(v46 + 18))
  {
    v51 = sub_29E2C33A4();
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v52 = PregnancyOnboardingStep.description.getter(v48);
    MEMORY[0x29ED7FCC0](v52);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x7261646E6F636553, 0xEF6E6F7474754279);
    v53 = sub_29E2C33A4();
  }

  v54 = [v1 navigationItem];
  v55 = [v54 rightBarButtonItem];

  if (v55)
  {
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v56 = PregnancyOnboardingStep.description.getter(v48);
    MEMORY[0x29ED7FCC0](v56);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x75426C65636E6143, 0xEC0000006E6F7474);
    v57 = sub_29E2C33A4();

    [v55 setAccessibilityIdentifier_];
  }
}

void sub_29DF2B6E0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29DF2AAAC();
  v3 = [v2 view];

  if (v3)
  {
    [v3 hk_onboardingListEdgeInsets];
    v5 = v4;
    v7 = v6;

    v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewLeadingConstraint];
    if (v8)
    {
      [v8 setConstant_];
    }

    v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_viewTrailingConstraint];
    if (v9)
    {
      [v9 setConstant_];
    }

    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF2B810(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin59PregnancyOnboardingSuggestedFeatureAdjustmentViewController_onboardingStep];
  v5 = a1;

  sub_29E27EA20(v4, a3);
}

__n128 sub_29DF2BA34(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29DF2BA58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29DF2BAA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29DF2BB2C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v25 - v6;
  sub_29E2C3314();
  v34 = *(v2 + 16);
  v34(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v33 = sub_29E2C3414();
  v32 = v9;
  v10 = *(v2 + 8);
  v10(v7, v1);
  sub_29E2C3314();
  v34(v5, v7, v1);
  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v31 = "EDING_ALERT_MESSAGE";
  v29 = sub_29E2C3414();
  v28 = v12;
  v30 = v10;
  v10(v7, v1);
  v13 = objc_opt_self();
  v14 = sub_29E2C33A4();
  v15 = [v13 imageNamed:v14 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v15)
  {
    v16 = v15;
    [v16 setIsAccessibilityElement_];

    sub_29E23E53C(v35);
    sub_29E2C3314();
    v17 = v34;
    v34(v5, v7, v1);
    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    v27 = sub_29E2C3414();
    v26 = v19;
    v20 = v30;
    v30(v7, v1);
    sub_29E2C3314();
    v17(v5, v7, v1);
    v21 = qword_2A1A67F80;
    sub_29E2BCC74();
    v22 = sub_29E2C3414();
    v24 = v23;
    v20(v7, v1);
    *&v37[7] = v35[0];
    *&v37[23] = v35[1];
    *&v37[39] = v35[2];
    *&v37[55] = v35[3];
    *&v37[71] = v36;
    *&xmmword_2A1840A88 = v33;
    *(&xmmword_2A1840A88 + 1) = v32;
    qword_2A1840A98 = v29;
    unk_2A1840AA0 = v28;
    *&xmmword_2A1840AA8 = v16;
    BYTE8(xmmword_2A1840AA8) = 5;
    *(&xmmword_2A1840AA8 + 9) = *v37;
    *(&xmmword_2A1840AE8 + 8) = *&v37[63];
    unk_2A1840AE1 = *&v37[48];
    *(&xmmword_2A1840AC8 + 9) = *&v37[32];
    unk_2A1840AC1 = *&v37[16];
    qword_2A1840B00 = v27;
    unk_2A1840B08 = v26;
    qword_2A1840B10 = v22;
    qword_2A1840B18 = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF2C058()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v25 - v6;
  sub_29E2C3314();
  v34 = *(v2 + 16);
  v34(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v33 = sub_29E2C3414();
  v32 = v9;
  v10 = *(v2 + 8);
  v10(v7, v1);
  sub_29E2C3314();
  v34(v5, v7, v1);
  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v31 = "EDING_ALERT_MESSAGE";
  v29 = sub_29E2C3414();
  v28 = v12;
  v30 = v10;
  v10(v7, v1);
  v13 = objc_opt_self();
  v14 = sub_29E2C33A4();
  v15 = [v13 imageNamed:v14 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v15)
  {
    v16 = v15;
    [v16 setIsAccessibilityElement_];

    sub_29E23E874(v35);
    sub_29E2C3314();
    v17 = v34;
    v34(v5, v7, v1);
    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    v27 = sub_29E2C3414();
    v26 = v19;
    v20 = v30;
    v30(v7, v1);
    sub_29E2C3314();
    v17(v5, v7, v1);
    v21 = qword_2A1A67F80;
    sub_29E2BCC74();
    v22 = sub_29E2C3414();
    v24 = v23;
    v20(v7, v1);
    *&v37[7] = v35[0];
    *&v37[23] = v35[1];
    *&v37[39] = v35[2];
    *&v37[55] = v35[3];
    *&v37[71] = v36;
    *&xmmword_2A1840B20 = v33;
    *(&xmmword_2A1840B20 + 1) = v32;
    qword_2A1840B30 = v29;
    unk_2A1840B38 = v28;
    *&xmmword_2A1840B40 = v16;
    BYTE8(xmmword_2A1840B40) = 6;
    *(&xmmword_2A1840B40 + 9) = *v37;
    *(&xmmword_2A1840B80 + 8) = *&v37[63];
    *&algn_2A1840B70[9] = *&v37[48];
    *(&xmmword_2A1840B60 + 9) = *&v37[32];
    *&algn_2A1840B50[9] = *&v37[16];
    qword_2A1840B98 = v27;
    unk_2A1840BA0 = v26;
    qword_2A1840BA8 = v22;
    qword_2A1840BB0 = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF2C584()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v25 - v6;
  sub_29E2C3314();
  v34 = *(v2 + 16);
  v34(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v33 = sub_29E2C3414();
  v32 = v9;
  v10 = *(v2 + 8);
  v10(v7, v1);
  sub_29E2C3314();
  v34(v5, v7, v1);
  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v31 = "EDING_ALERT_MESSAGE";
  v29 = sub_29E2C3414();
  v28 = v12;
  v30 = v10;
  v10(v7, v1);
  v13 = objc_opt_self();
  v14 = sub_29E2C33A4();
  v15 = [v13 imageNamed:v14 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v15)
  {
    v16 = v15;
    [v16 setIsAccessibilityElement_];

    sub_29E23EBAC(v35);
    sub_29E2C3314();
    v17 = v34;
    v34(v5, v7, v1);
    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    v27 = sub_29E2C3414();
    v26 = v19;
    v20 = v30;
    v30(v7, v1);
    sub_29E2C3314();
    v17(v5, v7, v1);
    v21 = qword_2A1A67F80;
    sub_29E2BCC74();
    v22 = sub_29E2C3414();
    v24 = v23;
    v20(v7, v1);
    *&v37[7] = v35[0];
    *&v37[23] = v35[1];
    *&v37[39] = v35[2];
    *&v37[55] = v35[3];
    *&v37[71] = v36;
    *&xmmword_2A1840BB8 = v33;
    *(&xmmword_2A1840BB8 + 1) = v32;
    qword_2A1840BC8 = v29;
    unk_2A1840BD0 = v28;
    *&xmmword_2A1840BD8 = v16;
    BYTE8(xmmword_2A1840BD8) = 7;
    *(&xmmword_2A1840BD8 + 9) = *v37;
    *(&xmmword_2A1840C18 + 8) = *&v37[63];
    unk_2A1840C11 = *&v37[48];
    *(&xmmword_2A1840BF8 + 9) = *&v37[32];
    unk_2A1840BF1 = *&v37[16];
    qword_2A1840C30 = v27;
    unk_2A1840C38 = v26;
    qword_2A1840C40 = v22;
    qword_2A1840C48 = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF2CAB0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v22 - v6;
  sub_29E2C3314();
  v8 = *(v2 + 16);
  v8(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v27 = sub_29E2C3414();
  v26 = v10;
  v11 = *(v2 + 8);
  v11(v7, v1);
  sub_29E2C3314();
  v8(v5, v7, v1);
  v23 = v8;
  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v25 = sub_29E2C3414();
  v24 = v13;
  v22 = v11;
  v11(v7, v1);
  v14 = objc_opt_self();
  v15 = sub_29E2C33A4();
  v16 = [v14 imageNamed:v15 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v16)
  {
    v17 = v16;
    [v17 setIsAccessibilityElement_];

    sub_29E23EED4(v28);
    sub_29E2C3314();
    v23(v5, v7, v1);
    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    v19 = sub_29E2C3414();
    v21 = v20;
    v22(v7, v1);
    *&v30[7] = v28[0];
    *&v30[23] = v28[1];
    *&v30[39] = v28[2];
    *&v30[55] = v28[3];
    *&v30[71] = v29;
    *&xmmword_2A1840C50 = v27;
    *(&xmmword_2A1840C50 + 1) = v26;
    qword_2A1840C60 = v25;
    unk_2A1840C68 = v24;
    *&xmmword_2A1840C70 = v17;
    BYTE8(xmmword_2A1840C70) = 8;
    *(&xmmword_2A1840C70 + 9) = *v30;
    *(&xmmword_2A1840CB0 + 8) = *&v30[63];
    unk_2A1840CA9 = *&v30[48];
    *(&xmmword_2A1840C90 + 9) = *&v30[32];
    unk_2A1840C89 = *&v30[16];
    qword_2A1840CC8 = v19;
    unk_2A1840CD0 = v21;
    qword_2A1840CD8 = 0;
    qword_2A1840CE0 = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF2CF9C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v37 - v12;
  sub_29E23F1FC(a1, a2, v50);
  sub_29E2C3314();
  v48 = "EDING_ALERT_MESSAGE";
  v47 = *(v8 + 16);
  v47(v11, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  v46 = v15;
  v45 = sub_29E2C3414();
  v44 = v16;
  v17 = *(v8 + 8);
  v40 = v8 + 8;
  v17(v13, v7);
  sub_29E2C3314();
  v47(v11, v13, v7);
  sub_29E2BCC74();
  v42 = sub_29E2C3414();
  v41 = v18;
  v43 = v17;
  v17(v13, v7);
  v19 = objc_opt_self();
  v20 = sub_29E2C33A4();
  v21 = v19;
  v22 = v46;
  v23 = [v21 imageNamed:v20 inBundle:v46 compatibleWithTraitCollection:0];

  if (v23)
  {
    [v23 setIsAccessibilityElement_];
    sub_29E2C3314();
    v39 = v23;
    v24 = v47;
    v47(v11, v13, v7);
    sub_29E2BCC74();
    v25 = v22;
    v46 = sub_29E2C3414();
    v38 = v26;
    v37 = v14;
    v27 = v43;
    v43(v13, v7);
    sub_29E2C3314();
    v24(v11, v13, v7);
    sub_29E2BCC74();
    v28 = sub_29E2C3414();
    v30 = v29;
    v27(v13, v7);
    *&v49[7] = v50[0];
    *&v49[23] = v50[1];
    *&v49[39] = v50[2];
    *&v49[55] = v50[3];
    *&v49[71] = v51;
    v31 = v44;
    *a3 = v45;
    *(a3 + 8) = v31;
    v32 = v41;
    *(a3 + 16) = v42;
    *(a3 + 24) = v32;
    *(a3 + 32) = v39;
    *(a3 + 40) = 9;
    v33 = *&v49[16];
    *(a3 + 41) = *v49;
    v34 = *&v49[32];
    v35 = *&v49[48];
    *(a3 + 104) = *&v49[63];
    *(a3 + 89) = v35;
    *(a3 + 73) = v34;
    *(a3 + 57) = v33;
    v36 = v38;
    *(a3 + 120) = v46;
    *(a3 + 128) = v36;
    *(a3 + 136) = v28;
    *(a3 + 144) = v30;
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF2D564()
{
  if (!qword_2A1819028)
  {
    sub_29DF2D5C0();
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819028);
    }
  }
}

unint64_t sub_29DF2D5C0()
{
  result = qword_2A1819030;
  if (!qword_2A1819030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819030);
  }

  return result;
}

void sub_29DF2D614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29DF2D678()
{
  result = qword_2A1817FA8;
  if (!qword_2A1817FA8)
  {
    sub_29DF2D614(255, &qword_2A1817FA0, MEMORY[0x29EDBC0B8], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817FA8);
  }

  return result;
}

uint64_t sub_29DF2D700(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29DF2D748()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage);
  }

  else
  {
    v4 = sub_29DF2E880();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29DF2DA3C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v4 = v3;
  v5 = sub_29E2C3FD4();
  [v4 setFont_];

  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel;
  v7 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel];
  v8 = sub_29E2C3FD4();
  [v7 setFont_];

  v9 = objc_opt_self();
  v10 = [v9 secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v11 = [v1 layer];
  if (qword_2A1816FA8 != -1)
  {
    swift_once();
  }

  [v11 setCornerRadius_];

  [*&v1[v2] setNumberOfLines_];
  LODWORD(v12) = 1.0;
  [*&v1[v2] _setHyphenationFactor_];
  [*&v1[v6] setNumberOfLines_];
  [*&v1[v6] setLineBreakMode_];
  v13 = sub_29DF2D748();
  v14 = [v9 tertiaryLabelColor];
  [v13 setTintColor_];

  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 contentView];
  sub_29E2C3E74();
  [v16 setDirectionalLayoutMargins_];

  v17 = objc_opt_self();
  sub_29DE99B54();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CE220;
  v19 = [v1 contentView];
  v20 = [v19 heightAnchor];

  if (qword_2A1816FB0 != -1)
  {
    swift_once();
  }

  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v18 + 32) = v21;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v22 = sub_29E2C3604();

  [v17 activateConstraints_];

  v23 = [v1 &selRef_systemFontOfSize_weight_];
  [v23 addSubview_];

  v24 = [v1 &selRef_systemFontOfSize_weight_];
  [v24 addSubview_];

  v25 = [v1 &selRef_systemFontOfSize_weight_];
  [v25 addSubview_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29E2CDBD0;
  v27 = [*&v1[v2] topAnchor];
  v92 = v6;
  v28 = [v1 &selRef_systemFontOfSize_weight_];
  v93 = v17;
  v29 = [v28 layoutMarginsGuide];

  v30 = [v29 topAnchor];
  if (qword_2A1816FA0 != -1)
  {
    swift_once();
  }

  v31 = *&qword_2A1819040;
  v32 = [v27 constraintEqualToAnchor:v30 constant:*&qword_2A1819040];

  *(v26 + 32) = v32;
  v33 = [*&v1[v2] leadingAnchor];
  v34 = [v1 contentView];
  v35 = [v34 layoutMarginsGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v33 constraintEqualToAnchor_];

  *(v26 + 40) = v37;
  v38 = [*&v1[v15] trailingAnchor];
  v39 = [*&v1[v2] &selRef_bounds + 4];
  v40 = [v38 constraintGreaterThanOrEqualToAnchor_];

  *(v26 + 48) = v40;
  v41 = sub_29E2C3604();

  [v93 activateConstraints_];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_29E2CE070;
  v43 = [*&v1[v92] topAnchor];
  v44 = [*&v1[v2] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:3.0];

  *(v42 + 32) = v45;
  v46 = [*&v1[v92] leadingAnchor];
  v47 = [v1 contentView];
  v48 = [v47 layoutMarginsGuide];

  v49 = [v48 leadingAnchor];
  v50 = [v46 constraintEqualToAnchor_];

  *(v42 + 40) = v50;
  v51 = [*&v1[v15] trailingAnchor];
  v52 = [*&v1[v92] trailingAnchor];
  v53 = [v51 constraintGreaterThanOrEqualToAnchor_];

  *(v42 + 48) = v53;
  v54 = [v1 contentView];
  v55 = [v54 layoutMarginsGuide];

  v56 = [v55 bottomAnchor];
  v57 = [*&v1[v92] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:v31];

  *(v42 + 56) = v58;
  v59 = sub_29E2C3604();

  [v93 activateConstraints_];

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_29E2D2410;
  v61 = [*&v1[v15] topAnchor];
  v62 = [v1 contentView];
  v63 = [v62 topAnchor];

  v64 = [v61 constraintGreaterThanOrEqualToAnchor_];
  *(v60 + 32) = v64;
  v65 = [v1 contentView];
  v66 = [v65 layoutMarginsGuide];

  v67 = [v66 &selRef_setDuration_ + 5];
  v68 = [*&v1[v15] &selRef_setDuration_ + 5];
  v69 = [v67 constraintGreaterThanOrEqualToAnchor_];

  *(v60 + 40) = v69;
  v70 = [*&v1[v15] trailingAnchor];
  v71 = [v1 &selRef_systemFontOfSize_weight_];
  v72 = [v71 layoutMarginsGuide];

  v73 = [v72 trailingAnchor];
  v74 = [v70 constraintEqualToAnchor_];

  *(v60 + 48) = v74;
  v75 = [*&v1[v15] leadingAnchor];
  v76 = [*&v1[v2] trailingAnchor];
  v77 = [v75 constraintGreaterThanOrEqualToAnchor:v76 constant:10.0];

  *(v60 + 56) = v77;
  v78 = [*&v1[v15] leadingAnchor];
  v79 = [*&v1[v92] trailingAnchor];
  v80 = [v78 constraintGreaterThanOrEqualToAnchor:v79 constant:10.0];

  *(v60 + 64) = v80;
  v81 = [*&v1[v15] centerYAnchor];
  v82 = [v1 contentView];
  v83 = [v82 centerYAnchor];

  v84 = [v81 constraintEqualToAnchor_];
  *(v60 + 72) = v84;
  v85 = sub_29E2C3604();

  [v93 activateConstraints_];

  LODWORD(v86) = 1148846080;
  [*&v1[v15] setContentCompressionResistancePriority:0 forAxis:v86];
  LODWORD(v87) = 1148846080;
  [*&v1[v15] setContentCompressionResistancePriority:1 forAxis:v87];
  sub_29DEAC750();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_29E2CAB20;
  v89 = sub_29E2C0B54();
  v90 = MEMORY[0x29EDC7870];
  *(v88 + 32) = v89;
  *(v88 + 40) = v90;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29DF2E734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoricalSampleCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DF2E7E8()
{
  result = _UISolariumEnabled();
  v1 = 5.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_2A1819040 = *&v1;
  return result;
}

uint64_t sub_29DF2E818()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_2A1819048 = *&v1;
  return result;
}

uint64_t sub_29DF2E848()
{
  result = _UISolariumEnabled();
  v1 = 72.0;
  if (!result)
  {
    v1 = 20.0;
  }

  qword_2A1819050 = *&v1;
  return result;
}

uint64_t sub_29DF2E880()
{
  v0 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() configurationWithFont:v0 scale:1];
    sub_29DE9408C(0, &qword_2A1818D18);
    v3 = sub_29E2C4094();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 imageWithConfiguration_];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

        return v7;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29DF2EA14(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v3 = v2;
  v4 = sub_29E2C3FD4();
  [v3 setFont_];

  v5 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel);
  v6 = sub_29E2C3FD4();
  [v5 setFont_];
}

id sub_29DF2EB40()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = sub_29DF2EBA0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DF2EBA0()
{
  sub_29DF31BCC(0, &qword_2A18190D8, type metadata accessor for HistoryListHeaderView, MEMORY[0x29EDC7888]);
  v29 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v26 = v3;
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v28 = &v26 - v5;
  sub_29DF31C30();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController_viewModel];
  type metadata accessor for HistoricalSampleCell();
  sub_29DE9408C(0, &qword_2A1A61D50);
  swift_retain_n();
  sub_29E2C3B84();
  result = [v0 collectionView];
  if (result)
  {
    (*(v8 + 16))(v10, v13, v7);
    v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v8 + 32))(v17 + v16, v10, v7);
    sub_29DF31D3C(0, &qword_2A18190E8, MEMORY[0x29EDC7840]);
    v19 = objc_allocWithZone(v18);

    v20 = sub_29E2C0A74();
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    type metadata accessor for HistoryListHeaderView();
    v21 = v28;
    sub_29E2C3BA4();
    v22 = v27;
    v23 = v29;
    (*(v2 + 16))(v27, v21, v29);
    v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v25 = swift_allocObject();
    (*(v2 + 32))(v25 + v24, v22, v23);
    sub_29E2C0A84();
    (*(v2 + 8))(v21, v23);
    (*(v8 + 8))(v13, v7);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DF2EFAC()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___coordinator;
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___coordinator))
  {
    v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___coordinator);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController_analysisProvider);
    v8 = [v7 healthStore];
    v9 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
    type metadata accessor for DeviationsConfirmationFlowCoordinator();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 32) = 0;
    *(v6 + 40) = -1;
    *(v6 + 72) = 0;
    sub_29DF31B7C(0, &qword_2A1817C80, &type metadata for CalendarChanges, MEMORY[0x29EDC9C68]);
    memset(v15, 0, sizeof(v15));
    sub_29E2C11D4();
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors) = MEMORY[0x29EDCA190];
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager) = 0;
    v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation;
    v11 = sub_29E2BE2A4();
    (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = 0;
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_openedPDFInConfirmedResult) = 0;
    *(v6 + 48) = v8;
    *(v6 + 56) = v7;
    *(v6 + 64) = v9;
    (*(v2 + 104))(v4, *MEMORY[0x29EDB9C78], v1);
    v12 = v7;
    sub_29E2BCCA4();
    (*(v2 + 8))(v4, v1);
    swift_unknownObjectWeakAssign();
    v13 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];

    *(v6 + 24) = v13;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v0 + v5) = v6;
  }

  return v6;
}

id sub_29DF2F28C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCEA4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___coordinator] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController_analysisProvider] = a1;
  v18 = a1;
  v11 = [v18 healthStore];
  sub_29E2BCE44();
  sub_29E2BCB54();
  type metadata accessor for DeviationsHistoryViewModel();
  v12 = swift_allocObject();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29E2C11D4();
  *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_healthStore) = v11;
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_calendar, v10, v7);
  (*(v4 + 32))(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26DeviationsHistoryViewModel_currentDate, v6, v3);
  v13 = objc_allocWithZone(MEMORY[0x29EDC79B8]);
  aBlock[4] = sub_29DF3150C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF31514;
  aBlock[3] = &unk_2A24B42A0;
  v14 = _Block_copy(aBlock);

  v15 = [v13 initWithSectionProvider_];
  _Block_release(v14);

  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController_viewModel] = v12;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, sel_initWithCollectionViewLayout_, v15);

  return v16;
}

uint64_t sub_29DF2F598(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = sub_29E2C0AD4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0AB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C0B44();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x29EDC7848], v6, v12);
  sub_29E2C0AE4();
  v15 = sub_29E1316C4();
  v16 = MEMORY[0x29EDC7860];
  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x29EDC7868];
  }

  (*(v3 + 104))(v5, *v16, v2);
  sub_29E2C0B04();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v17 = sub_29E2C3F34();
  (*(v11 + 8))(v14, v10);
  return v17;
}

id sub_29DF2F87C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29DF31BCC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v28[-v4];
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v14 = &v28[-v13];
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidLoad, v12);
  result = [v1 collectionView];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() systemGroupedBackgroundColor];
    [v16 setBackgroundColor_];

    sub_29E2C3314();
    (*(v8 + 16))(v10, v14, v7);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v8 + 8))(v14, v7);
    v19 = sub_29E2C33A4();

    [v1 setTitle_];

    result = [v1 collectionView];
    if (result)
    {
      v20 = result;
      v21 = sub_29DF2EB40();
      [v20 setDataSource_];

      v22 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController_viewModel];
      sub_29E13175C();
      v23 = sub_29E2C3734();
      (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_29E2C3714();

      v25 = sub_29E2C3704();
      v26 = swift_allocObject();
      v27 = MEMORY[0x29EDCA390];
      v26[2] = v25;
      v26[3] = v27;
      v26[4] = v22;
      v26[5] = v24;

      sub_29E13C63C(0, 0, v5, &unk_29E2D24C0, v26);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF2FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_29DF319CC(0, &qword_2A1819090, MEMORY[0x29EDB8A40]);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_29DF31B7C(0, &qword_2A1819098, &type metadata for DeviationsHistoryViewModel.SamplesBySection, MEMORY[0x29EDB8AF0]);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_29DF319CC(0, &qword_2A18190A8, MEMORY[0x29EDB8A30]);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = sub_29E2C3714();
  v5[22] = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  v5[23] = v10;
  v5[24] = v9;

  return MEMORY[0x2A1C73D48](sub_29DF2FEF0, v10, v9);
}

uint64_t sub_29DF2FEF0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  swift_beginAccess();
  sub_29DF31B7C(0, &qword_2A18190B0, &type metadata for DeviationsHistoryViewModel.SamplesBySection, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  v7 = sub_29DF31950();
  MEMORY[0x29ED7DB80](v4, v7);
  (*(v2 + 8))(v1, v4);
  sub_29E2C1064();
  (*(v6 + 8))(v3, v5);
  swift_beginAccess();
  v0[25] = sub_29E2C3704();
  v8 = sub_29DF31A5C();
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_29DF300AC;
  v10 = v0[18];

  return MEMORY[0x2A1C73B18](v0 + 8, v10, v8);
}

uint64_t sub_29DF300AC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_29E2C36A4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_29DF30420;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_29E2C36A4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_29DF30244;
  }

  return MEMORY[0x2A1C73D48](v7, v4, v6);
}

uint64_t sub_29DF30244()
{

  v0[28] = v0[8];
  v1 = v0[23];
  v2 = v0[24];

  return MEMORY[0x2A1C73D48](sub_29DF302B0, v1, v2);
}

uint64_t sub_29DF302B0()
{
  v1 = v0[28];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_29DF30BD0(v1);
      sub_29DF30FCC(v1);
    }

    v0[25] = sub_29E2C3704();
    v4 = sub_29DF31A5C();
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_29DF300AC;
    v6 = v0[18];

    return MEMORY[0x2A1C73B18](v0 + 8, v6, v4);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_29DF30420()
{
  *(v0 + 72) = *(v0 + 216);
  sub_29DE96670();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_29DF304E8()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 backgroundView];

  if (!v3)
  {
    return;
  }

  type metadata accessor for NoHistoricalSamplesBackgroundView();
  if (swift_dynamicCastClass())
  {
    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      sub_29E2C3E74();
      [v5 hk_safeAreaAdjustedEdgeInsets_];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      sub_29DFBC8F8(v7, v9, v11, v13);
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_6:
}

void sub_29DF30650(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = [*a3 categoryType];
  v5 = sub_29DF3D08C();
  v7 = v6;

  if (v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >= 4)
  {
LABEL_7:
    sub_29E2C4724();
    __break(1u);
    return;
  }

  sub_29DEB1368();
  sub_29E237BF0();
  v8 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel);
  v9 = sub_29E2C33A4();

  [v8 setText_];

  v10 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel);
  v11 = sub_29E2C33A4();

  [v10 setText_];
}

uint64_t sub_29DF307E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a2;
  v22[2] = a5;
  v26 = a3;
  v22[3] = a1;
  v5 = sub_29E2BCC24();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v9 = (v6 + 8);
  v23 = v27 + 32;
  v24 = v27;
  swift_bridgeObjectRetain_n();
  v25 = 0;
  do
  {
    do
    {
LABEL_16:
      v15 = *(v24 + 2);
      if (v25 == v15)
      {
        goto LABEL_24;
      }

      if (v25 >= v15)
      {
        goto LABEL_23;
      }

      v16 = v25 + 1;
      v17 = *&v23[16 * v25 + 8];
      sub_29E2BF404();

      v18 = v17;
      v25 = v16;
    }

    while (!v17);
    v10 = 0;
    if (v17 >= 0)
    {
      v11 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v11 = v17;
    }

    v22[4] = v11;
    if (v17 >> 62)
    {
      goto LABEL_13;
    }

LABEL_6:
    ;
  }

  while (v10 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10));
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x29ED80D70](v10, v18);
    }

    else
    {
      if (v10 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v12 = *(v18 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v12 UUID];
    sub_29E2BCC04();

    LOBYTE(v14) = _s24MenstrualCyclesAppPlugin34ReviewPregnancyInMedicalIDUserDataV23__derived_struct_equalsySbAC_ACtFZ_0();
    (*v9)(v8, v5);
    if (v14)
    {

      swift_bridgeObjectRelease_n();
      v27 = v13;
      type metadata accessor for HistoricalSampleCell();
      sub_29DE9408C(0, &qword_2A1A61D50);
      v19 = v13;
      v20 = sub_29E2C3BC4();

      return v20;
    }

    ++v10;
    if (!(v18 >> 62))
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v10 == sub_29E2C4484())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

void sub_29DF30AC4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v2 = sub_29E2BCFA4();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(v5 + 16))
  {
    sub_29E131F74();

    v3 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel);
    v4 = sub_29E2C33A4();

    [v3 setText_];

    return;
  }

  __break(1u);
}

size_t sub_29DF30BD0(uint64_t a1)
{
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF31D3C(0, &qword_2A18190C0, MEMORY[0x29EDC7818]);
  v7 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v26 - v8;
  sub_29DF31AD0();
  sub_29DF31B24();
  v36 = v2;
  sub_29E2C0994();
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_17:
    v25 = sub_29DF2EB40();
    sub_29E2C0A94();

    return (*(v26 + 8))(v9, v7);
  }

  v31 = a1 + 32;
  v35 = v3 + 32;
  sub_29DF31B7C(0, &qword_2A18190D0, &type metadata for DeviationsHistoryViewModel.Section, MEMORY[0x29EDC9E90]);
  v30 = v10;
  v11 = 0;
  v29 = xmmword_29E2CAB20;
  v27 = v9;
  v28 = v7;
  while (1)
  {
    v12 = (v31 + 16 * v11);
    v13 = *(v12 + 1);
    v14 = *v12;
    v15 = swift_allocObject();
    *(v15 + 16) = v29;
    *(v15 + 32) = v14;
    sub_29E2BF404();
    sub_29E2C0914();

    if (v13 >> 62)
    {
      break;
    }

    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_16:

LABEL_3:
    ++v11;
    v37 = v14;
    sub_29E2C08D4();

    if (v11 == v32)
    {
      goto LABEL_17;
    }
  }

  v16 = sub_29E2C4484();
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_6:
  v38 = MEMORY[0x29EDCA190];
  result = sub_29E18167C(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v33 = v14;
    v34 = v11;
    v18 = 0;
    v19 = v38;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x29ED80D70](v18, v13);
      }

      else
      {
        v20 = *(v13 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v21 UUID];
      sub_29E2BCC04();

      v38 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_29E18167C(v23 > 1, v24 + 1, 1);
        v19 = v38;
      }

      ++v18;
      *(v19 + 16) = v24 + 1;
      (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v5, v36);
    }

    while (v16 != v18);

    v9 = v27;
    v7 = v28;
    v11 = v34;
    LOBYTE(v14) = v33;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_29DF30FCC(uint64_t a1)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v21 - v9;
  LOBYTE(a1) = sub_29E131EE0(a1);
  v11 = [v1 collectionView];
  v22 = v11;
  if (a1)
  {
    if (v11)
    {
      sub_29E2C3314();
      v12 = *(v5 + 16);
      v12(v7, v10, v4);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      v14 = v13;
      v15 = sub_29E2C3414();
      v21[0] = v16;
      v21[1] = v15;
      v17 = *(v5 + 8);
      v17(v10, v4);
      sub_29E2C3314();
      v12(v7, v10, v4);
      sub_29E2BCC74();
      sub_29E2C3414();
      v17(v10, v4);
      v18 = objc_allocWithZone(type metadata accessor for NoHistoricalSamplesBackgroundView());
      v19 = sub_29DFBC6EC();
      [v22 setBackgroundView_];

      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  [v11 setBackgroundView_];
  v20 = v22;
}

id sub_29DF31514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_29DF31590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF315A8()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v24 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v24 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v11 = v24[1];
  v12 = sub_29E2BCFA4();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= *(v11 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(v11 + 16 * v12 + 40);
  sub_29E2BF404();
  v14 = sub_29E2BCF64();
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v15 = MEMORY[0x29ED80D70]();
    goto LABEL_7;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 8 * v14 + 32);
LABEL_7:
    v16 = v15;

    v17 = v16;
    v18 = [v17 startDate];
    sub_29E2BCB44();

    v19 = [v17 endDate];
    sub_29E2BCB44();

    v20 = [v17 hkmc_deviationType];
    sub_29E2BCB54();
    type metadata accessor for DeviationDetailViewModel();
    swift_allocObject();
    sub_29DEAE674(v10, v7, v20, 1, 0, 2, v4);

    v21 = objc_allocWithZone(type metadata accessor for DeviationsConfirmedViewController());

    v23 = sub_29DF35C08(v22);
    sub_29DF2EFAC();
    *&v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_delegate + 8] = &off_2A24B1F38;
    swift_unknownObjectWeakAssign();

    [v1 showViewController:v23 sender:0];

    return;
  }

  __break(1u);
}

uint64_t sub_29DF31890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29DF2FCE4(a1, v4, v5, v7, v6);
}

unint64_t sub_29DF31950()
{
  result = qword_2A18190A0;
  if (!qword_2A18190A0)
  {
    sub_29DF31B7C(255, &qword_2A1819098, &type metadata for DeviationsHistoryViewModel.SamplesBySection, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18190A0);
  }

  return result;
}

void sub_29DF319CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_29DF31B7C(255, &qword_2A1819098, &type metadata for DeviationsHistoryViewModel.SamplesBySection, MEMORY[0x29EDB8AF0]);
    v7 = v6;
    v8 = sub_29DF31950();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29DF31A5C()
{
  result = qword_2A18190B8;
  if (!qword_2A18190B8)
  {
    sub_29DF319CC(255, &qword_2A18190A8, MEMORY[0x29EDB8A30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18190B8);
  }

  return result;
}

unint64_t sub_29DF31AD0()
{
  result = qword_2A18190C8;
  if (!qword_2A18190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18190C8);
  }

  return result;
}

unint64_t sub_29DF31B24()
{
  result = qword_2A181BAC0;
  if (!qword_2A181BAC0)
  {
    sub_29E2BCC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181BAC0);
  }

  return result;
}

void sub_29DF31B7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DF31BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DF31C30()
{
  if (!qword_2A18190E0)
  {
    type metadata accessor for HistoricalSampleCell();
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2C3B94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18190E0);
    }
  }
}

uint64_t sub_29DF31CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DF31C30();
  v8 = *(v3 + 16);
  v9 = v3 + ((*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80));

  return sub_29DF307E0(a1, a2, a3, v8, v9);
}

void sub_29DF31D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for DeviationsHistoryViewModel.Section;
    v8[1] = sub_29E2BCC24();
    v8[2] = sub_29DF31AD0();
    v8[3] = sub_29DF31B24();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29DF31DD4()
{
  sub_29DF31BCC(0, &qword_2A18190D8, type metadata accessor for HistoryListHeaderView, MEMORY[0x29EDC7888]);
  type metadata accessor for HistoryListHeaderView();
  return sub_29E2C3BD4();
}

uint64_t sub_29DF31E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_29E00868C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_29DECF000(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_29E009D80();
        v14 = v16;
      }

      result = sub_29DF33594(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_29DF31F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 3)
  {
    v5 = sub_29E184314(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_29E00A87C();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = sub_29E2C31A4();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_29DEC72BC(*(*(v9 + 56) + 8 * v7));
      sub_29DF338F4(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = sub_29E2C31A4();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_29E008AC0(a1, a2, v16);
    v17 = sub_29E2C31A4();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_29DF32140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_29E0096F8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_29DECF000(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_29E00BA08();
        v14 = v16;
      }

      result = sub_29DF33594(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_29DF32238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_29E009874(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_29E2BCFB4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_29E18447C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_29E00BB6C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_29E2BCFB4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_29DF33F34(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_29E2BCFB4();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

BOOL sub_29DF323F8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 3)
      {
        return 0;
      }

      sub_29DE9408C(0, &unk_2A1A5E290);
      sub_29DEC7104(v2);
      sub_29DEC7104(v3);
      v4 = sub_29E2C40D4();
      sub_29DEC72BC(v3);
      sub_29DEC72BC(v2);
      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v3;
}

uint64_t sub_29DF324BC()
{
  v0 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v2 = objc_opt_self();
  v3 = sub_29E2C3164();
  v4 = sub_29E2BCD84();
  v5 = [v2 hk:v3 sleepDayStartForMorningIndex:v4 calendar:?];

  sub_29E2BCB44();
  sub_29DEC65FC();
  v6 = sub_29E2C3164();
  v7 = sub_29E2BCD84();
  v8 = [v2 hk:v6 sleepDayStartForMorningIndex:v7 calendar:?];

  sub_29E2BCB44();
  return sub_29E2BC374();
}

uint64_t sub_29DF3263C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_29DF33490(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  v2[11] = swift_task_alloc();
  sub_29DF33490(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  v2[12] = swift_task_alloc();
  sub_29E2BC5F4();
  v2[13] = swift_task_alloc();
  sub_29E2BCBB4();
  v2[14] = swift_task_alloc();
  sub_29DF334E4();
  v2[15] = swift_task_alloc();
  v3 = sub_29E2C3054();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_29E2BC3A4();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29DF3286C, 0, 0);
}

uint64_t sub_29DF3286C()
{
  v1 = v0[12];
  v2 = v0[11];
  v13 = v0[10];
  v0[8] = MEMORY[0x29EDCA198];
  sub_29DF324BC();
  _HKStatisticsOptionBaselineRelativeQuantities();
  v3 = objc_opt_self();
  v4 = sub_29E2BC354();
  v5 = [v3 predicateForSamplesWithinDateInterval:v4 options:0];
  v0[22] = v5;

  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v6 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  sub_29DE9408C(0, &qword_2A1A5E1D0);
  v7 = v5;
  sub_29E2C2F24();

  sub_29E2BC384();
  v8 = sub_29E2BCEA4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = sub_29E2BCF04();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_29E2BC5D4();
  sub_29E2C3044();
  v10 = *(v13 + 16);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_29DF32B60;

  return MEMORY[0x2A1C5B5F8](v10);
}

uint64_t sub_29DF32B60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_29DF32ED4;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_29DF32C88;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29DF32C88()
{
  v14 = v0[25];
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[10];

  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v0 + 8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_29DF3354C;
  *(v9 + 24) = v8;
  v0[6] = sub_29DF33554;
  v0[7] = v9;
  v0[2] = MEMORY[0x29EDCA5F8];
  v0[3] = 1107296256;
  v0[4] = sub_29DF33178;
  v0[5] = &unk_2A24B43B8;
  v10 = _Block_copy(v0 + 2);

  [v14 enumeratePopulatedStatisticsWithBlock_];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13(v12);
  }

  return result;
}

uint64_t sub_29DF32ED4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

id sub_29DF32FE4(void *a1)
{
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v14 - v8;
  result = [a1 startDate];
  if (result)
  {
    v11 = result;
    v12 = sub_29E2BCD84();
    [v11 hk:v12 morningIndexWithCalendar:?];

    sub_29E2C30D4();
    (*(v3 + 16))(v5, v9, v2);
    v13 = sub_29DF345E8(a1);
    sub_29DF31F7C(v13, v5);
    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29DF33178(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_29DF331D4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50SleepingWristTemperatureBaselineRelativeDataSource_gregorianCalendar;
  v2 = sub_29E2BCEA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingWristTemperatureBaselineRelativeDataSource()
{
  result = qword_2A18190F0;
  if (!qword_2A18190F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF332DC()
{
  result = sub_29E2BCEA4();
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

unint64_t sub_29DF3338C()
{
  result = qword_2A1819100;
  if (!qword_2A1819100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819100);
  }

  return result;
}

uint64_t sub_29DF333E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return sub_29DF3263C(a1);
}

void sub_29DF33490(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DF334E4()
{
  if (!qword_2A1819108)
  {
    sub_29DE9408C(255, &qword_2A1A5E1D0);
    v0 = sub_29E2C2F54();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819108);
    }
  }
}

uint64_t sub_29DF3357C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DF33594(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E2C4414() + 1) & ~v5;
    do
    {
      sub_29E2C4A04();
      sub_29E2BF404();
      sub_29E2C34B4();
      v9 = sub_29E2C4A54();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29DF33744(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E2C4414() + 1) & ~v5;
    do
    {
      sub_29E2C4A04();
      sub_29E2BF404();
      sub_29E2C34B4();
      v10 = sub_29E2C4A54();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_29DF338F4(int64_t a1, uint64_t a2)
{
  v38 = sub_29E2C31A4();
  v4 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_29E2C4414();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_29DF34744(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
      v22 = sub_29E2C3244();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_29DF33C14(int64_t a1, uint64_t a2)
{
  v38 = sub_29E2BC5F4();
  v4 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_29E2C4414();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_29DF34744(&qword_2A1819120, MEMORY[0x29EDB9950]);
      v22 = sub_29E2C3244();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_29DF33F34(int64_t a1, uint64_t a2)
{
  v38 = sub_29E2BCFB4();
  v4 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_29E2C4414();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_29DF34744(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
      v22 = sub_29E2C3244();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void *sub_29DF34254(void *a1, uint64_t a2)
{
  v3 = v2;
  v25 = *v2;
  v26 = a2;
  v27 = sub_29E2C3974();
  v6 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF346B0();
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = a1;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50SleepingWristTemperatureBaselineRelativeDataSource_gregorianCalendar;
  v14 = sub_29E2BCEA4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v3 + v13, a2, v14);
  sub_29DE99B54();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CE220;
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v17 = *MEMORY[0x29EDBA858];
  v18 = a1;
  v19 = MEMORY[0x29ED80230](v17);
  v20 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v16 + 32) = v20;
  v30 = v25;
  swift_getMetatypeMetadata();
  sub_29E2C3424();
  sub_29E2C39A4();

  sub_29DF34744(&unk_2A1A5E230, MEMORY[0x29EDC2E68]);
  v21 = v27;
  sub_29E2C1364();
  (*(v6 + 8))(v8, v21);
  sub_29DF34744(&qword_2A1819118, sub_29DF346B0);
  v22 = v28;
  v23 = sub_29E2C1274();
  (*(v15 + 8))(v26, v14);
  (*(v29 + 8))(v12, v22);
  *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50SleepingWristTemperatureBaselineRelativeDataSource_modelsDidChangePublisher) = v23;
  return v3;
}

uint64_t sub_29DF345E8(void *a1)
{
  v2 = [a1 baselineRelativeValueState];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 integerValue];
  if (v4 == 1)
  {

    return 1;
  }

  if (v4 == 2)
  {

    return 0;
  }

  if (v4 != 3)
  {

LABEL_11:
    return 3;
  }

  v5 = [a1 averageQuantity];

  if (v5)
  {
    return v5;
  }

  else
  {
    return 3;
  }
}

void sub_29DF346B0()
{
  if (!qword_2A1819110)
  {
    sub_29E2C3974();
    sub_29DF34744(&unk_2A1A5E230, MEMORY[0x29EDC2E68]);
    v0 = sub_29E2C0F34();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819110);
    }
  }
}

uint64_t sub_29DF34744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DF3478C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29DF347B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29DF34810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_29DF3487C(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v34 - v9;
  if (a1)
  {
    v39 = MEMORY[0x29EDCA190];
    sub_29E181434(0, 2, 0);
    v11 = 0;
    v12 = 0;
    v13 = v39;
    v36 = (v5 + 16);
    v37 = v7;
    v34[1] = "PROTECTION_NOT_USED";
    v35 = (v5 + 8);
    v34[0] = "rce";
    do
    {
      v14 = v11;
      if (*(&unk_2A24AE768 + v12 + 32))
      {
        sub_29E2C3314();
        (*v36)(v7, v10, v4);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v15 = qword_2A1A67F80;
        sub_29E2BCC74();
        v16 = sub_29E2C3414();
        v18 = v17;
        v19 = 0x6365746F72706E75;
        v20 = 0xEB00000000646574;
      }

      else
      {
        sub_29E2C3314();
        (*v36)(v7, v10, v4);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v21 = qword_2A1A67F80;
        sub_29E2BCC74();
        v16 = sub_29E2C3414();
        v18 = v22;
        v20 = 0xE900000000000064;
        v19 = 0x65746365746F7270;
      }

      (*v35)(v10, v4);
      v39 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_29E181434((v23 > 1), v24 + 1, 1);
        v13 = v39;
      }

      *(v13 + 16) = v24 + 1;
      v25 = (v13 + 32 * v24);
      v25[4] = v16;
      v25[5] = v18;
      v25[6] = v19;
      v25[7] = v20;
      v11 = 1;
      v12 = 1u;
      v7 = v37;
    }

    while ((v14 & 1) == 0);
  }

  else
  {
    v39 = MEMORY[0x29EDCA190];
    sub_29E181434(0, 1, 0);
    v13 = v39;
    sub_29E2C3314();
    (*(v5 + 16))(v7, v10, v4);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v26 = qword_2A1A67F80;
    sub_29E2BCC74();
    v27 = sub_29E2C3414();
    v29 = v28;
    (*(v5 + 8))(v10, v4);
    v39 = v13;
    v31 = *(v13 + 16);
    v30 = *(v13 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_29E181434((v30 > 1), v31 + 1, 1);
      v13 = v39;
    }

    *(v13 + 16) = v31 + 1;
    v32 = (v13 + 32 * v31);
    v32[4] = v27;
    v32[5] = v29;
    v32[6] = 0x786553646148;
    v32[7] = 0xE600000000000000;
  }

  return v13;
}

uint64_t sub_29DF34D88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v24 - v9;
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths;
  v25 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
  if (!*(v11 + 16))
  {
    *(v2 + 32) = 0;
LABEL_22:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v22 = result;
      v23 = *(v2 + 32);
      sub_29E21F33C(*MEMORY[0x29EDC3270]);
      [*(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setSexualActivity_];
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 56);
  v15 = (v12 + 63) >> 6;
  v28 = v5 + 32;
  v29 = v5 + 16;
  v27 = (v5 + 8);
  result = sub_29E2BF404();
  v17 = 0;
  v26 = v2;
  while (v14)
  {
LABEL_11:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v10, *(v11 + 48) + *(v5 + 72) * (v21 | (v17 << 6)), v4);
    (*(v5 + 32))(v7, v10, v4);
    result = sub_29E2BCFA4();
    if (result)
    {
      if (result != 1)
      {
        goto LABEL_26;
      }

      result = sub_29E2BCF64();
      if (result)
      {
        if (result != 1)
        {
          goto LABEL_27;
        }

        v18 = 3;
      }

      else
      {
        v18 = 1;
      }

      result = (*v27)(v7, v4);
LABEL_5:
      v19 = v26;
      *(v26 + 32) = v18;
      v2 = v19;
    }

    else
    {
      result = (*v27)(v7, v4);
      if (*(*(v25 + v24) + 16) == 1)
      {
        v18 = 2;
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      goto LABEL_22;
    }

    v14 = *(v11 + 56 + 8 * v20);
    ++v17;
    if (v14)
    {
      v17 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29DF35054(uint64_t a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    return 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_29DF35070(unint64_t result)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v1 = *(sub_29DF3487C(result) + 16);

    return v1;
  }

  return result;
}

unint64_t sub_29DF350A8()
{
  result = sub_29E2BCFA4();
  if (result <= 1)
  {
    v1 = sub_29DF3487C(result);
    result = sub_29E2BCF64();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v1 + 16))
    {
      v2 = *(v1 + 32 * result + 32);
      sub_29E2BF404();
      sub_29E2BF404();

      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF35144(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v12[-v8];
  if (a1)
  {
    if (a1 == 1)
    {
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
LABEL_4:
        v10 = qword_2A1A67F80;
        sub_29E2BCC74();
        a1 = sub_29E2C3414();
        (*(v4 + 8))(v9, v3);
        return a1;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  return a1;
}

id sub_29DF35360(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setDistribution_];
  [v2 setSpacing_];
  [v2 setAxis_];
  if ([a1 isContentCenterAligned])
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [v2 setAlignment_];
  return v2;
}

id sub_29DF35448(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_29DEAF900();

  v3 = sub_29E2C33A4();

  [v2 setText_];

  if ([a1 isContentCenterAligned])
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  [v2 setTextAlignment_];
  [v2 setNumberOfLines_];
  LODWORD(v5) = 1036831949;
  [v2 _setHyphenationFactor_];

  sub_29DEAFBC8();

  v6 = sub_29E2C33A4();

  [v2 setAccessibilityIdentifier_];

  v7 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  v8 = MEMORY[0x29EDC76E0];
  v9 = *MEMORY[0x29EDC76C0];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = *v8;
  v14 = [v10 fontDescriptorWithDesign_];
  if (v14)
  {
    v15 = v14;

    v10 = v15;
  }

  v16 = MEMORY[0x29EDC9E90];
  sub_29DF38348(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v18 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29DF38348(0, &qword_2A1819168, sub_29DF38418, v16);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x29EDC7708];
  *(v19 + 16) = xmmword_29E2CAB20;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v13;
  v22 = v18;
  v23 = v21;
  v24 = sub_29E1852C8(v19);
  swift_setDeallocating();
  sub_29DF38534(v19 + 32, sub_29DF38418);
  sub_29DF38488();
  *(inited + 64) = v25;
  *(inited + 40) = v24;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29DF38534(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29DF38594(&qword_2A18177E0, type metadata accessor for AttributeName);
  v26 = sub_29E2C31F4();

  v27 = [v10 fontDescriptorByAddingAttributes_];

  v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  [v2 setFont_];

  return v2;
}

id sub_29DF358EC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_29DF35950(uint64_t a1)
{
  sub_29DEB0F38(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel);
  if (*(v5 + 32))
  {
    v6 = *(v5 + 33);

    v7 = sub_29DEAFFF8();

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v7)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_allocWithZone(type metadata accessor for DeviationDescriptionView());
    v11 = sub_29DF38690;
    v12 = v9 | v6;
    v13 = v8;
    v14 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29E2C1214();

    v15 = sub_29E2BD704();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v4, 1, v15) == 1)
    {
      sub_29DF38534(v4, sub_29DEB0F38);
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    else
    {
      v17 = sub_29E2BD6F4();
      v18 = v19;
      (*(v16 + 8))(v4, v15);
    }

    v20 = objc_allocWithZone(type metadata accessor for DeviationDescriptionView());
    v12 = v17;
    v11 = v18;
    v13 = 0;
    v14 = 1;
  }

  return sub_29E2609C0(v12, v11, v13, v14);
}

void sub_29DF35B7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x29EDCA1E8] & *Strong) + 0x148))();
  }
}

id sub_29DF35C08(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController____lazy_storage___contentStack] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController____lazy_storage___dateRangeLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController____lazy_storage___detailView] = 0;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v9 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v9 = MEMORY[0x29EDCA1A0];
  }

  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_subscriptions] = v9;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel] = a1;

  sub_29DEB1368();
  v10 = sub_29E2C33A4();

  sub_29DEB0488();
  v11 = sub_29E2C33A4();

  sub_29DEB10B4(*(a1 + 33));
  v13 = v12;
  v14 = type metadata accessor for DeviationCustomDetailViewController();
  v40.receiver = v2;
  v40.super_class = v14;
  v15 = objc_msgSendSuper2(&v40, sel_initWithTitle_detailText_icon_contentLayout_, v10, v11, v13, 2);

  v16 = v15;
  v17 = [v16 headerView];
  sub_29DEB1368();
  v18 = sub_29E2C33A4();

  [v17 setAccessibilityIdentifier_];

  v19 = [v16 headerView];
  [v19 setAllowFullWidthIcon_];

  v20 = [v16 headerView];
  LODWORD(v21) = 1036831949;
  [v20 setTitleHyphenationFactor_];

  sub_29E2C04B4();
  v22 = sub_29E2C0504();
  v23 = sub_29E2C3A34();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v8;
    v39 = v25;
    v26 = v6;
    v27 = v25;
    *v24 = 136446210;
    v28 = sub_29E2C4AE4();
    v37 = v5;
    v30 = sub_29DFAA104(v28, v29, &v39);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] initializing", v24, 0xCu);
    sub_29DE93B3C(v27);
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v24, -1, -1);

    (*(v26 + 8))(v38, v37);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_29DF38348(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29E2CAB20;
  v32 = sub_29E2C0B54();
  v33 = MEMORY[0x29EDC7870];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = ObjectType;

  sub_29E2C3C64();

  swift_unknownObjectRelease();

  return v16;
}

void sub_29DF360A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 headerView];
  sub_29DEB10B4(*(a3 + 33));
  v7 = v6;
  sub_29DEB1368();
  v8 = sub_29E2C33A4();

  [v5 setIcon:v7 accessibilityLabel:v8];

  v9 = sub_29DF35340();
  if ([a1 isContentCenterAligned])
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  [v9 setAlignment_];

  v11 = sub_29DF35428();
  v12 = MEMORY[0x29EDC76E0];
  v13 = *MEMORY[0x29EDC76C0];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = *v12;
  v18 = [v14 fontDescriptorWithDesign_];
  if (v18)
  {
    v19 = v18;

    v14 = v19;
  }

  v20 = MEMORY[0x29EDC9E90];
  sub_29DF38348(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v22 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29DF38348(0, &qword_2A1819168, sub_29DF38418, v20);
  v23 = swift_initStackObject();
  v24 = MEMORY[0x29EDC7708];
  *(v23 + 16) = xmmword_29E2CAB20;
  v25 = *v24;
  *(v23 + 32) = *v24;
  *(v23 + 40) = v17;
  v26 = v22;
  v27 = v25;
  v28 = sub_29E1852C8(v23);
  swift_setDeallocating();
  sub_29DF38534(v23 + 32, sub_29DF38418);
  sub_29DF38488();
  *(inited + 64) = v29;
  *(inited + 40) = v28;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29DF38534(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29DF38594(&qword_2A18177E0, type metadata accessor for AttributeName);
  v30 = sub_29E2C31F4();

  v31 = [v14 fontDescriptorByAddingAttributes_];

  v32 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
  [v11 setFont_];
}

void sub_29DF36450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29DF38698(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF386CC(0);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF38700();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviationCustomDetailViewController();
  v36.receiver = v0;
  v36.super_class = v12;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  sub_29DF36E50();
  v13 = [v0 contentView];
  v14 = sub_29DF35340();
  [v13 addSubview_];

  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController____lazy_storage___contentStack;
  v16 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController____lazy_storage___contentStack];
  v17 = sub_29DF35428();
  [v16 addArrangedSubview_];

  v18 = *&v1[v15];
  v19 = sub_29DF358CC();
  [v18 addArrangedSubview_];

  v20 = *&v1[v15];
  v21 = [v1 contentView];
  [v20 hk:v21 alignConstraintsWithView:*MEMORY[0x29EDC78D8] insets:{*(MEMORY[0x29EDC78D8] + 8), *(MEMORY[0x29EDC78D8] + 16), *(MEMORY[0x29EDC78D8] + 24)}];

  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel;
  v23 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel];
  if (*(v23 + 32))
  {
    if (*(v23 + 32) != 1)
    {
      return;
    }
  }

  else
  {
    swift_beginAccess();
    sub_29DF38348(0, &qword_2A1817DC8, sub_29DEB0F38, MEMORY[0x29EDB8B00]);

    sub_29E2C11E4();
    swift_endAccess();

    sub_29DEB1E60();
    v24 = sub_29E2C3CF4();
    v35 = v24;
    v25 = sub_29E2C3CE4();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    sub_29DF38594(&qword_2A1819188, sub_29DF386CC);
    sub_29DF38594(&qword_2A1A61D38, sub_29DEB1E60);
    sub_29E2C1354();
    sub_29DF38534(v4, sub_29DF38698);

    (*(v31 + 8))(v8, v6);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v28 = ObjectType;
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    sub_29DF38594(&qword_2A1819190, sub_29DF38700);
    v29 = v33;
    sub_29E2C1384();

    (*(v32 + 8))(v11, v29);
    swift_beginAccess();
    sub_29E2C1034();
    swift_endAccess();

    v23 = *&v1[v22];
    if (*(v23 + 32) != 1)
    {
      return;
    }
  }

  sub_29DF373E8(*(v23 + 16));
}

void sub_29DF369CC(uint64_t a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DEB0F38(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E2BD704();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DF387F4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29DF38534(v8, sub_29DEB0F38);
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136446210;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, v32);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] received nil ProfileDisplayName when one was expected", v15, 0xCu);
      sub_29DE93B3C(v16);
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = [Strong headerView];

      sub_29DEB0488();

      v23 = sub_29E2C33A4();

      [v22 setDetailText_];
    }

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = sub_29DF358CC();

      v27 = sub_29E2BD6F4();
      v28 = *&v26[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_detail];
      sub_29E260530(v27, v29, 0, 1);
      v30 = sub_29E2C33A4();

      [v28 setText_];

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }
}

void sub_29DF36E50()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v32[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v32[-1] - v8;
  v10 = [v0 navigationItem];
  v11 = v10;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel;
  v13 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_viewModel];
  if (!*(v13 + 32))
  {
    goto LABEL_5;
  }

  if (*(v13 + 32) == 1)
  {
    v14 = *(v13 + 16) == 0;
    goto LABEL_6;
  }

  if (*(v13 + 16) == 0)
  {
    v14 = 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

LABEL_6:
  [v10 setHidesBackButton_];

  v15 = *&v0[v12];
  if (!*(v15 + 32))
  {
    return;
  }

  if (*(v15 + 32) == 1)
  {
    v16 = [v0 navigationItem];
    sub_29E2C3314();
    (*(v3 + 16))(v5, v9, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v17 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v3 + 8))(v9, v2);
    v33 = type metadata accessor for DeviationCustomDetailViewController();
    v32[0] = v0;
    v18 = v0;
    v19 = sub_29E2C33A4();

    v20 = v33;
    if (v33)
    {
      v21 = sub_29DE966D4(v32, v33);
      v22 = *(v20 - 8);
      v23 = MEMORY[0x2A1C7C4A8](v21);
      v25 = &v32[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = sub_29E2C4904();
      (*(v22 + 8))(v25, v20);
      sub_29DE93B3C(v32);
    }

    else
    {
      v26 = 0;
    }

    v27 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithTitle:v19 style:0 target:v26 action:sel_nextButtonTapped];

    swift_unknownObjectRelease();
    [v16 setRightBarButtonItem_];
  }

  else
  {
    if (!(*(v15 + 16) ^ 1 | *(v15 + 24)))
    {
      return;
    }

    v27 = [objc_opt_self() boldButton];
    sub_29E2C3314();
    (*(v3 + 16))(v5, v9, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v28 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v3 + 8))(v9, v2);
    v29 = sub_29E2C33A4();

    [v27 setTitle:v29 forState:0];

    v30 = [v0 buttonTray];
    [v30 addButton_];

    [v27 addTarget:v0 action:sel_doneButtonTapped forControlEvents:64];
  }
}