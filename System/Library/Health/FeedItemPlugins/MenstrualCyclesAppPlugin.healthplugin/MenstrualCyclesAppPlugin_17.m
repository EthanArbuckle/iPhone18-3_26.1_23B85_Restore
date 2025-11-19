void sub_29E058DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E058E3C()
{
  if (!qword_2A181B528)
  {
    sub_29E058E94();
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B528);
    }
  }
}

void sub_29E058E94()
{
  if (!qword_2A181B530)
  {
    sub_29E058EF8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181B530);
    }
  }
}

void sub_29E058F74()
{
  if (!qword_2A181B550)
  {
    sub_29E058FD4(255);
    v0 = sub_29E2C1C64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B550);
    }
  }
}

void sub_29E059050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E0590B8()
{
  result = qword_2A181B590;
  if (!qword_2A181B590)
  {
    sub_29E05901C(255);
    sub_29E059130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B590);
  }

  return result;
}

unint64_t sub_29E059130()
{
  result = qword_2A181B598;
  if (!qword_2A181B598)
  {
    sub_29E058EF8(255);
    sub_29E059224(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
    sub_29E059358(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B598);
  }

  return result;
}

uint64_t sub_29E059224(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E0592B0()
{
  result = qword_2A181B5A0;
  if (!qword_2A181B5A0)
  {
    sub_29E058F40(255);
    sub_29E059358(&qword_2A181B5A8, sub_29E058E3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B5A0);
  }

  return result;
}

uint64_t sub_29E059358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0593A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E059408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29E059468()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29E2C3384();
  v4 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v66 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v67 = (&v52 - v7);
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v61 = &v52 - v11;
  v12 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6594();
  v60 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v59 = &v52 - v18;
  sub_29DEFCC2C();
  v58 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v64 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C31A4();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v52 - v26;
  *&v29 = MEMORY[0x2A1C7C4A8](v28).n128_u64[0];
  v31 = &v52 - v30;
  v32 = *(v0 + 8);
  v33 = [v32 lastDayIndex];
  v34 = v33;
  if (v33)
  {
    v56 = v3;
    v57 = v4;
    [v33 integerValue];
    sub_29E2C30D4();

    v35 = v22 + 4;
    v36 = v22[4];
    v36(v31, v27, v21);
    v37 = [v32 menstruationSegment];
    [v37 days];

    sub_29E2C30D4();
    sub_29E059BD4(&qword_2A1A61A40);
    if (sub_29E2C32B4())
    {
      v38 = v59;
      v36(v59, v24, v21);
      v39 = v60;
      v40 = *(v60 + 48);
      v53 = v36;
      v54 = v22[2];
      v54(v38 + v40, v31, v21);
      sub_29E059F70(v38, v16, sub_29DEC6594);
      v41 = *(v39 + 48);
      v55 = v31;
      v27 = v64;
      v36(v64, v16, v21);
      v42 = v22;
      v52 = v22 + 4;
      v43 = v22[1];
      v43(&v16[v41], v21);
      sub_29DEC704C(v38, v16);
      v53(&v27[*(v58 + 36)], &v16[*(v39 + 48)], v21);
      v59 = v43;
      v43(v16, v21);
      sub_29E2C3354();
      sub_29E2C3344();
      v44 = v61;
      v54(v61, v27, v21);
      v45 = v65;
      v46 = v42[7];
      v46(v44, 0, 1, v21);
      v47 = v62;
      v60 = v21;
      v46(v62, 1, 1, v21);
      v48 = sub_29E059C18(v44, v47);
      sub_29DFAB164(v47, sub_29DEDB978);
      v49 = v44;
      v35 = v45;
      sub_29DFAB164(v49, sub_29DEDB978);
      v68 = v48;
      sub_29E2C3324();
      sub_29E2C3344();
      v36 = v67;
      sub_29E2C3374();
      v22 = v57;
      (*(v57 + 16))(v66, v36, v35);
      if (qword_2A1A62788 == -1)
      {
LABEL_4:
        v50 = qword_2A1A67F80;
        sub_29E2BCC74();
        v34 = sub_29E2C3414();
        (v22[1])(v36, v35);
        sub_29DFAB164(v27, sub_29DEFCC2C);
        (v59)(v55, v60);
        return v34;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  return v34;
}

uint64_t sub_29E059BD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E2C31A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E059C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v24 - v9;
  sub_29DF5A53C();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_29E059F70(a1, v13, sub_29DEDB978);
  sub_29E059F70(a2, &v13[v15], sub_29DEDB978);
  v16 = v5[6];
  LODWORD(a1) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v13, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v7, &v13[v15], v4);
      sub_29E059BD4(&unk_2A18199E0);
      sub_29E2C4344();
      v23 = v5[1];
      v23(v7, v4);
      v23(v10, v4);
      return v25;
    }

    sub_29DEFCC2C();
    sub_29E059BD4(&unk_2A18199E0);
    sub_29E2C4344();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v13[v15], v4);
  sub_29DEFCC2C();
  v7 = *(v21 + 36);
  sub_29E059BD4(&unk_2A18199E0);
  sub_29E2C4344();
  v22 = v5[1];
  ++v5;
  v22(v10, v4);
  result = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_29E059F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E059FD8(uint64_t a1)
{
  v90 = a1;
  v80 = sub_29E2C0514();
  v79 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v81 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E05D0A4();
  v4 = v3;
  v82 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v91 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v78 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v93 = (&v78 - v10);
  v11 = sub_29E2BEBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v78 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v78 - v18;
  v86 = v1;
  v20 = sub_29E2BEC64();
  v21 = *(v20 + 16);
  v94 = v4;
  v95 = v8;
  v89 = v11;
  v92 = v16;
  v87 = v21;
  if (v21)
  {
    v22 = 0;
    v85 = v12 + 16;
    v23 = (v12 + 8);
    v83 = (v12 + 32);
    v88 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v25 = *(v12 + 72);
      (*(v12 + 16))(v19, v20 + v24 + v25 * v22, v11);
      v26 = sub_29E2BEB94();
      if (*(v26 + 16))
      {
        sub_29DE9DC34(v26 + 32, v99);

        sub_29DEB1BC4(0, &qword_2A1819BD0);
        if (swift_dynamicCast())
        {
          v27 = v97;
          v28 = v98;

          if (v27)
          {
            v11 = v89;
            if (v28 != 3)
            {
              v29 = *v83;
              (*v83)(v84, v19, v89);
              v30 = v88;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v32 = v30;
              v100 = v30;
              v4 = v94;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_29E181518(0, *(v30 + 16) + 1, 1);
                v32 = v100;
              }

              v34 = *(v32 + 16);
              v33 = *(v32 + 24);
              v35 = v34 + 1;
              if (v34 >= v33 >> 1)
              {
                v78 = v29;
                v88 = v34 + 1;
                sub_29E181518(v33 > 1, v34 + 1, 1);
                v35 = v88;
                v29 = v78;
                v32 = v100;
              }

              *(v32 + 16) = v35;
              v88 = v32;
              v36 = v32 + v24 + v34 * v25;
              v11 = v89;
              v29(v36, v84, v89);
              goto LABEL_4;
            }

            (*v23)(v19, v89);
          }

          else
          {
            v11 = v89;
            (*v23)(v19, v89);
          }

          v4 = v94;
        }

        else
        {
          v11 = v89;
          (*v23)(v19, v89);
        }
      }

      else
      {
        (*v23)(v19, v11);
      }

LABEL_4:
      ++v22;
      v8 = v95;
      v16 = v92;
      if (v87 == v22)
      {
        goto LABEL_20;
      }
    }
  }

  v88 = MEMORY[0x29EDCA190];
LABEL_20:

  v37 = *(v90 + 16);
  v38 = 32;
  v39 = v93;
  v40 = v81;
  while (v37)
  {
    v41 = *(v90 + v38);
    v38 += 8;
    --v37;
    if (v41 != 2)
    {
      if (HKShowSensitiveLogItems())
      {
        sub_29E2C04B4();
        v42 = sub_29E2C0504();
        v43 = sub_29E2C3A34();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v96 = v87;
          *v44 = 136315394;
          *(v44 + 4) = sub_29DFAA104(0xD00000000000001CLL, 0x800000029E2FB010, &v96);
          *(v44 + 12) = 2080;
          v99[0] = 0xD00000000000002DLL;
          v99[1] = 0x800000029E2FAF70;
          v45 = sub_29E2C3464();
          v47 = sub_29DFAA104(v45, v46, &v96);
          v11 = v89;

          *(v44 + 14) = v47;
          _os_log_impl(&dword_29DE74000, v42, v43, "[%s] %s", v44, 0x16u);
          v48 = v87;
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v48, -1, -1);
          MEMORY[0x29ED82140](v44, -1, -1);
        }

        (*(v79 + 8))(v40, v80);
        v39 = v93;
      }

      break;
    }
  }

  v49 = *(v88 + 16);
  if (v49)
  {
    v99[0] = MEMORY[0x29EDCA190];
    v87 = v49;
    sub_29E181858(0, v49, 0);
    v50 = 0;
    v51 = v99[0];
    v85 = v88 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v52 = v88;
    v23 = (v12 + 8);
    v53 = v82;
    while (v50 < *(v52 + 16))
    {
      (*(v12 + 16))(v16, v85 + *(v12 + 72) * v50, v11);
      sub_29E05B4CC(v16, v90, v86, v91);
      (*v23)(v16, v11);
      v54 = v51;
      v99[0] = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_29E181858(v55 > 1, v56 + 1, 1);
        v53 = v82;
        v54 = v99[0];
      }

      ++v50;
      *(v54 + 16) = v56 + 1;
      v51 = v54;
      sub_29E05D140(v91, v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56);
      v52 = v88;
      v11 = v89;
      v16 = v92;
      if (v87 == v50)
      {

        v57 = MEMORY[0x29EDCA190];
        v58 = v51;
        v4 = v94;
        v8 = v95;
        v59 = *(v58 + 16);
        if (!v59)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }

LABEL_40:
    __break(1u);
    (*v23)(v16, v11);

    __break(1u);
  }

  else
  {

    v58 = MEMORY[0x29EDCA190];
    v53 = v82;
    v57 = MEMORY[0x29EDCA190];
    v59 = *(MEMORY[0x29EDCA190] + 16);
    if (v59)
    {
LABEL_34:
      v99[0] = v57;
      v60 = v4;
      v61 = v58;
      sub_29E2C4634();
      v62 = objc_opt_self();
      v63 = *(v53 + 80);
      v89 = v61;
      v64 = v61 + ((v63 + 32) & ~v63);
      v65 = v60;
      v90 = *(v53 + 72);
      v91 = v62;
      do
      {
        sub_29E05D2C4(v64, v39, sub_29E05D0A4);
        v92 = *v39;
        sub_29E05D2C4(v39, v8, sub_29E05D0A4);
        v66 = *(v65 + 48);
        v67 = *(v94 + 64);
        v68 = sub_29E2BCB04();
        v69 = sub_29E2BCBB4();
        v70 = *(*(v69 - 8) + 8);
        v70(&v95[v67], v69);
        v70(&v95[v66], v69);
        sub_29E05D2C4(v93, v95, sub_29E05D0A4);
        v71 = *(v94 + 48);
        v72 = *(v94 + 64);
        v73 = sub_29E2BCB04();
        v74 = &v95[v72];
        v8 = v95;
        v70(v74, v69);
        v75 = &v8[v71];
        v65 = v94;
        v70(v75, v69);
        v39 = v93;
        v76 = [v91 hkmc:v92 categorySampleWithCycleFactor:v68 startDate:v73 endDate:?];

        sub_29E05D1FC(v39, sub_29E05D0A4);
        sub_29E2C4614();
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
        v64 += v90;
        --v59;
      }

      while (v59);

      return v99[0];
    }

    else
    {
LABEL_38:

      return MEMORY[0x29EDCA190];
    }
  }

  return result;
}

uint64_t sub_29E05AA50(void *a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v92 = a2;
  v95 = a1;
  sub_29E05D0A4();
  v91 = v5;
  v84 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v99 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v97 = (&v79 - v8);
  MEMORY[0x2A1C7C4A8](v9);
  v96 = (&v79 - v10);
  v82 = sub_29E2C0514();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v83 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BEBB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v86 = &v79 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v79 - v19;
  v90 = v3;
  v21 = sub_29E2BEC64();
  v22 = *(v21 + 16);
  v94 = v12;
  v98 = v15;
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v88 = v13 + 16;
    v87 = (v13 + 8);
    v85 = (v13 + 32);
    v93 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v4 = *(v13 + 72);
      (*(v13 + 16))(v20, v21 + v25 + v4 * v24, v12);
      v26 = sub_29E2BEB94();
      if (!*(v26 + 16))
      {
        break;
      }

      sub_29DE9DC34(v26 + 32, v103);

      sub_29DEB1BC4(0, &qword_2A1819BD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*v87)(v20, v12);
        goto LABEL_12;
      }

      v27 = v101;
      v28 = v102;

      if (v27 != 1)
      {
        v12 = v94;
        (*v87)(v20, v94);
        goto LABEL_12;
      }

      v12 = v94;
      v15 = v98;
      if (v28 != 3)
      {
        v29 = *v85;
        (*v85)(v86, v20, v94);
        v30 = v93;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v30;
        v104 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E181518(0, *(v30 + 16) + 1, 1);
          v32 = v104;
        }

        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v80 = v29;
          v93 = v34 + 1;
          sub_29E181518(v33 > 1, v34 + 1, 1);
          v35 = v93;
          v29 = v80;
          v32 = v104;
        }

        *(v32 + 16) = v35;
        v93 = v32;
        v29((v32 + v25 + v34 * v4), v86, v12);
        goto LABEL_12;
      }

      (*v87)(v20, v94);
LABEL_13:
      if (v23 == ++v24)
      {
        goto LABEL_21;
      }
    }

    (*v87)(v20, v12);

LABEL_12:
    v15 = v98;
    goto LABEL_13;
  }

  v93 = MEMORY[0x29EDCA190];
LABEL_21:

  v36 = v95[2];
  v37 = 4;
  v38 = v99;
  v39 = v97;
  v40 = v83;
  while (v36)
  {
    v41 = v95[v37++];
    --v36;
    if (v41 != 2)
    {
      if (HKShowSensitiveLogItems())
      {
        sub_29E2C04B4();
        v42 = sub_29E2C0504();
        v43 = sub_29E2C3A34();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v100 = v45;
          *v44 = 136315394;
          v46 = sub_29E2C4AE4();
          v48 = sub_29DFAA104(v46, v47, &v100);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2080;
          v103[0] = 0xD00000000000002DLL;
          v103[1] = 0x800000029E2FAF70;
          v49 = sub_29E2C3464();
          v51 = sub_29DFAA104(v49, v50, &v100);
          v15 = v98;

          *(v44 + 14) = v51;
          _os_log_impl(&dword_29DE74000, v42, v43, "[%s] %s", v44, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v45, -1, -1);
          v52 = v44;
          v38 = v99;
          MEMORY[0x29ED82140](v52, -1, -1);
        }

        (*(v81 + 8))(v40, v82);
        v39 = v97;
      }

      break;
    }
  }

  v53 = *(v93 + 16);
  if (v53)
  {
    v103[0] = MEMORY[0x29EDCA190];
    v88 = v53;
    sub_29E181858(0, v53, 0);
    v54 = 0;
    v55 = v103[0];
    v87 = (v93 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
    v56 = v93;
    v4 = (v13 + 8);
    v57 = v84;
    while (v54 < *(v56 + 16))
    {
      (*(v13 + 16))(v15, v87 + *(v13 + 72) * v54, v12);
      sub_29E05C0E4(v15, v95, v90, v92, v89, v96);
      (*v4)(v15, v12);
      v58 = v55;
      v103[0] = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_29E181858(v59 > 1, v60 + 1, 1);
        v57 = v84;
        v58 = v103[0];
      }

      ++v54;
      *(v58 + 16) = v60 + 1;
      v55 = v58;
      sub_29E05D140(v96, v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v60);
      v56 = v93;
      v12 = v94;
      v15 = v98;
      if (v88 == v54)
      {

        v38 = v99;
        goto LABEL_36;
      }
    }

LABEL_42:
    __break(1u);
    (*v4)(v15, v12);

    __break(1u);
  }

  else
  {

    v55 = MEMORY[0x29EDCA190];
    v57 = v84;
LABEL_36:
    v61 = *(v55 + 16);
    if (v61)
    {
      v103[0] = MEMORY[0x29EDCA190];
      sub_29E2C4634();
      v62 = objc_opt_self();
      v63 = *(v57 + 80);
      v93 = v55;
      v64 = v55 + ((v63 + 32) & ~v63);
      v94 = *(v57 + 72);
      v95 = v62;
      do
      {
        v98 = v61;
        sub_29E05D2C4(v64, v39, sub_29E05D0A4);
        v96 = *v39;
        sub_29E05D2C4(v39, v38, sub_29E05D0A4);
        v65 = v91;
        v66 = *(v91 + 48);
        v67 = *(v91 + 64);
        v68 = sub_29E2BCB04();
        v69 = sub_29E2BCBB4();
        v70 = *(*(v69 - 8) + 8);
        v70(v99 + v67, v69);
        v70(v99 + v66, v69);
        sub_29E05D2C4(v97, v99, sub_29E05D0A4);
        v71 = *(v65 + 48);
        v72 = *(v65 + 64);
        v73 = sub_29E2BCB04();
        v74 = v99 + v72;
        v75 = v98;
        v70(v74, v69);
        v76 = v99 + v71;
        v38 = v99;
        v70(v76, v69);
        v39 = v97;
        v77 = [v95 hkmc:v96 categorySampleWithCycleFactor:v68 startDate:v73 endDate:?];

        sub_29E05D1FC(v39, sub_29E05D0A4);
        sub_29E2C4614();
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
        v64 += v94;
        v61 = v75 - 1;
      }

      while (v61);

      return v103[0];
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return result;
}

uint64_t sub_29E05B4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v109 = a3;
  v108 = a4;
  sub_29E05D1A4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v98 - v10;
  v12 = sub_29E2BCBB4();
  v117 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v98 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = (&v98 - v18);
  MEMORY[0x2A1C7C4A8](v20);
  v111 = &v98 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v114 = &v98 - v23;
  started = type metadata accessor for OnboardingStartDateRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v115 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E2BEB94();
  if (!*(v26 + 16))
  {
    goto LABEL_45;
  }

  sub_29DE9DC34(v26 + 32, &v126);

  sub_29DF3CBE8(&v126, &v119);
  v127 = sub_29DEB1BC4(0, &qword_2A1819BD0);
  swift_dynamicCast();
  if (!BYTE1(v125))
  {
    v72 = *(a2 + 16);
    v73 = (a2 + 32);
    while (v72)
    {
      v74 = *v73++;
      --v72;
      if (v74 == 2)
      {

        sub_29E05D0A4();
        *v108 = 2;
        sub_29E2BCA84();
        return sub_29E2BCA84();
      }
    }
  }

  v118 = started;
  v105 = BYTE1(v125);
  v101 = v16;
  v103 = *(&v124 + 1);
  v104 = *(&v123 + 1);
  v112 = v19;
  v116 = v12;
  v113 = v11;
  v110 = v4;
  v107 = a1;
  v27 = sub_29E2BEB94();
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = v27 + 32;
    while (v30 < *(v28 + 16))
    {
      sub_29DE9DC34(v31, &v119);
      sub_29DE9DC34(&v119, &v126);
      a2 = sub_29DEB1BC4(0, &unk_2A181DFD0);
      swift_dynamicCast();
      v33 = *(&v124 + 1);
      v32 = v125;
      sub_29DE966D4(&v123, *(&v124 + 1));
      v34 = v32[3](v33, v32);
      sub_29DE93B3C(&v123);
      if (v34 == 2)
      {
        goto LABEL_9;
      }

      ++v30;
      sub_29DE93B3C(&v119);
      v31 += 40;
      if (v29 == v30)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_8:

  __break(1u);
LABEL_9:

  sub_29DF3CBE8(&v119, &v126);
  sub_29DF3CBE8(&v126, &v119);
  v35 = v115;
  v36 = v118;
  swift_dynamicCast();
  v37 = v117;
  v38 = *(v117 + 16);
  v39 = v35 + *(v36 + 28);
  v40 = v111;
  v41 = v116;
  v100 = v117 + 16;
  v99 = v38;
  v38(v111, v39, v116);
  sub_29E05CD2C(v40, v114);
  v44 = *(v37 + 8);
  v42 = v37 + 8;
  v43 = v44;
  v44(v40, v41);
  v45 = sub_29E2BEB94();
  v46 = v45;
  v47 = *(v45 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = v45 + 32;
    v118 = *(v45 + 16);
    while (v48 < *(v46 + 16))
    {
      sub_29DE9DC34(v49, &v126);
      sub_29DE9DC34(&v126, v122);
      if (swift_dynamicCast())
      {
        v50 = v43;
        v51 = v42;
        v52 = *(&v124 + 1);
        v53 = v125;
        sub_29DE966D4(&v123, *(&v124 + 1));
        v54 = a2;
        v55 = v46;
        v56 = v52;
        v42 = v51;
        v43 = v50;
        v47 = v118;
        v57 = v53[3](v56, v53);
        sub_29DE93B3C(&v123);
        v58 = v57 == 3;
        v46 = v55;
        a2 = v54;
        if (v58)
        {

          sub_29DF3CBE8(&v126, &v119);
          v59 = type metadata accessor for OnboardingEndDateRow(0);
          v60 = v113;
          v61 = swift_dynamicCast();
          (*(*(v59 - 8) + 56))(v60, v61 ^ 1u, 1, v59);
          goto LABEL_19;
        }
      }

      else
      {
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        sub_29E05D1FC(&v123, sub_29E05D25C);
      }

      ++v48;
      sub_29DE93B3C(&v126);
      v49 += 40;
      if (v47 == v48)
      {
        goto LABEL_18;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

LABEL_18:

  v59 = type metadata accessor for OnboardingEndDateRow(0);
  v60 = v113;
  (*(*(v59 - 8) + 56))(v113, 1, 1, v59);
LABEL_19:
  v62 = v112;
  sub_29E2BCA84();
  v63 = v106;
  sub_29E05D2C4(v60, v106, sub_29E05D1A4);
  type metadata accessor for OnboardingEndDateRow(0);
  v64 = (*(*(v59 - 8) + 48))(v63, 1, v59);
  v65 = v116;
  if (v64 == 1)
  {
    sub_29E05D1FC(v63, sub_29E05D1A4);
  }

  else
  {
    v66 = v63 + *(v59 + 28);
    v67 = v102;
    v99(v102, v66, v116);
    sub_29E05D1FC(v63, type metadata accessor for OnboardingEndDateRow);
    v68 = *(v117 + 32);
    v69 = v43;
    v70 = v101;
    v68(v101, v67, v65);
    v71 = v111;
    sub_29E2BCA84();
    sub_29E05D32C();
    LOBYTE(v67) = sub_29E2C3304();
    v69(v71, v65);
    if (v67)
    {
      v69(v70, v65);
      v60 = v113;
      v62 = v112;
    }

    else
    {
      sub_29E05CD2C(v70, v71);
      v69(v70, v65);
      v76 = v112;
      v69(v112, v65);
      v62 = v76;
      v68(v76, v71, v65);
      v60 = v113;
    }
  }

  if (v105 > 1)
  {
    if (v105 != 2)
    {
LABEL_46:
      result = sub_29E2C4724();
      __break(1u);
      return result;
    }

    v81 = sub_29E2BEB94();
    v82 = v81;
    v83 = *(v81 + 16);
    if (v83)
    {
      v84 = 0;
      v60 = v81 + 32;
      while (v84 < *(v82 + 16))
      {
        sub_29DE9DC34(v60, &v119);
        sub_29DE9DC34(&v119, &v126);
        swift_dynamicCast();
        v65 = *(&v124 + 1);
        v62 = v125;
        sub_29DE966D4(&v123, *(&v124 + 1));
        v85 = v62[3](v65, v62);
        sub_29DE93B3C(&v123);
        if (v85 == 5)
        {

          sub_29DF3CBE8(&v119, &v123);
          sub_29DF3CBE8(&v123, &v126);
          swift_dynamicCast();
          v90 = v120;
          v91 = v121;

          sub_29E05D0A4();
          v93 = *(v92 + 48);
          v94 = *(v92 + 64);
          v95 = v108;
          *v108 = v90;
          v96 = *(v117 + 32);
          v97 = v116;
          v96(v95 + v93, v114, v116);
          v96(v95 + v94, v112, v97);
          v89 = v113;
          goto LABEL_41;
        }

        ++v84;
        sub_29DE93B3C(&v119);
        v60 += 40;
        if (v83 == v84)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_44;
    }

LABEL_37:

    __break(1u);
  }

  else if (!v105)
  {

    sub_29E05D0A4();
    v78 = *(v77 + 48);
    v79 = *(v77 + 64);
    v80 = 2;
    goto LABEL_39;
  }

  sub_29E05D0A4();
  v78 = *(v86 + 48);
  v79 = *(v86 + 64);
  v80 = 1;
LABEL_39:
  v87 = v108;
  *v108 = v80;
  v88 = *(v117 + 32);
  v88(v87 + v78, v114, v65);
  v88(v87 + v79, v62, v65);
  v89 = v60;
LABEL_41:
  sub_29E05D1FC(v89, sub_29E05D1A4);
  return sub_29E05D1FC(v115, type metadata accessor for OnboardingStartDateRow);
}

uint64_t sub_29E05C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v113 = a5;
  v111 = a4;
  v112 = a3;
  v110 = a6;
  sub_29E05D1A4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v100 - v12;
  v14 = sub_29E2BCBB4();
  v121 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v104 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v100 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = (&v100 - v20);
  MEMORY[0x2A1C7C4A8](v22);
  v115 = &v100 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v118 = &v100 - v25;
  started = type metadata accessor for OnboardingStartDateRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v119 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E2BEB94();
  if (!*(v28 + 16))
  {
    goto LABEL_45;
  }

  sub_29DE9DC34(v28 + 32, &v130);

  sub_29DF3CBE8(&v130, &v123);
  v131 = sub_29DEB1BC4(0, &qword_2A1819BD0);
  swift_dynamicCast();
  if (!BYTE1(v129))
  {
    v74 = *(a2 + 16);
    v75 = (a2 + 32);
    while (v74)
    {
      v76 = *v75++;
      --v74;
      if (v76 == 2)
      {

        sub_29E05D0A4();
        *v110 = 2;
        sub_29E2BCA84();
        return sub_29E2BCA84();
      }
    }
  }

  v122 = started;
  v107 = BYTE1(v129);
  v103 = v18;
  v105 = *(&v128 + 1);
  v106 = *(&v127 + 1);
  v116 = v21;
  v120 = v14;
  v117 = v13;
  v114 = v6;
  v109 = a1;
  v29 = sub_29E2BEB94();
  v30 = v29;
  v31 = *(v29 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v29 + 32;
    while (v32 < *(v30 + 16))
    {
      sub_29DE9DC34(v33, &v123);
      sub_29DE9DC34(&v123, &v130);
      a2 = sub_29DEB1BC4(0, &unk_2A181DFD0);
      swift_dynamicCast();
      v35 = *(&v128 + 1);
      v34 = v129;
      sub_29DE966D4(&v127, *(&v128 + 1));
      v36 = v34[3](v35, v34);
      sub_29DE93B3C(&v127);
      if (v36 == 2)
      {
        goto LABEL_9;
      }

      ++v32;
      sub_29DE93B3C(&v123);
      v33 += 40;
      if (v31 == v32)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_8:

  __break(1u);
LABEL_9:

  sub_29DF3CBE8(&v123, &v130);
  sub_29DF3CBE8(&v130, &v123);
  v37 = v119;
  v38 = v122;
  swift_dynamicCast();
  v39 = v121;
  v40 = *(v121 + 16);
  v41 = v37 + *(v38 + 28);
  v42 = v115;
  v43 = v120;
  v102 = v121 + 16;
  v101 = v40;
  v40(v115, v41, v120);
  sub_29E05CD2C(v42, v118);
  v46 = *(v39 + 8);
  v44 = v39 + 8;
  v45 = v46;
  v46(v42, v43);
  v47 = sub_29E2BEB94();
  v48 = v47;
  v49 = *(v47 + 16);
  if (v49)
  {
    v50 = 0;
    v51 = v47 + 32;
    v122 = *(v47 + 16);
    while (v50 < *(v48 + 16))
    {
      sub_29DE9DC34(v51, &v130);
      sub_29DE9DC34(&v130, v126);
      if (swift_dynamicCast())
      {
        v52 = v45;
        v53 = v44;
        v54 = *(&v128 + 1);
        v55 = v129;
        sub_29DE966D4(&v127, *(&v128 + 1));
        v56 = a2;
        v57 = v48;
        v58 = v54;
        v44 = v53;
        v45 = v52;
        v49 = v122;
        v59 = v55[3](v58, v55);
        sub_29DE93B3C(&v127);
        v60 = v59 == 3;
        v48 = v57;
        a2 = v56;
        if (v60)
        {

          sub_29DF3CBE8(&v130, &v123);
          v61 = type metadata accessor for OnboardingEndDateRow(0);
          v62 = v117;
          v63 = swift_dynamicCast();
          (*(*(v61 - 8) + 56))(v62, v63 ^ 1u, 1, v61);
          goto LABEL_19;
        }
      }

      else
      {
        v129 = 0;
        v127 = 0u;
        v128 = 0u;
        sub_29E05D1FC(&v127, sub_29E05D25C);
      }

      ++v50;
      sub_29DE93B3C(&v130);
      v51 += 40;
      if (v49 == v50)
      {
        goto LABEL_18;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

LABEL_18:

  v61 = type metadata accessor for OnboardingEndDateRow(0);
  v62 = v117;
  (*(*(v61 - 8) + 56))(v117, 1, 1, v61);
LABEL_19:
  v64 = v116;
  sub_29E2BCA84();
  v65 = v108;
  sub_29E05D2C4(v62, v108, sub_29E05D1A4);
  type metadata accessor for OnboardingEndDateRow(0);
  v66 = (*(*(v61 - 8) + 48))(v65, 1, v61);
  v67 = v120;
  if (v66 == 1)
  {
    sub_29E05D1FC(v65, sub_29E05D1A4);
  }

  else
  {
    v68 = v65 + *(v61 + 28);
    v69 = v104;
    v101(v104, v68, v120);
    sub_29E05D1FC(v65, type metadata accessor for OnboardingEndDateRow);
    v70 = *(v121 + 32);
    v71 = v45;
    v72 = v103;
    v70(v103, v69, v67);
    v73 = v115;
    sub_29E2BCA84();
    sub_29E05D32C();
    LOBYTE(v69) = sub_29E2C3304();
    v71(v73, v67);
    if (v69)
    {
      v71(v72, v67);
      v62 = v117;
      v64 = v116;
    }

    else
    {
      sub_29E05CD2C(v72, v73);
      v71(v72, v67);
      v78 = v116;
      v71(v116, v67);
      v64 = v78;
      v70(v78, v73, v67);
      v62 = v117;
    }
  }

  if (v107 > 1)
  {
    if (v107 != 2)
    {
LABEL_46:
      result = sub_29E2C4724();
      __break(1u);
      return result;
    }

    v83 = sub_29E2BEB94();
    v84 = v83;
    v85 = *(v83 + 16);
    if (v85)
    {
      v86 = 0;
      v62 = v83 + 32;
      while (v86 < *(v84 + 16))
      {
        sub_29DE9DC34(v62, &v123);
        sub_29DE9DC34(&v123, &v130);
        swift_dynamicCast();
        v67 = *(&v128 + 1);
        v64 = v129;
        sub_29DE966D4(&v127, *(&v128 + 1));
        v87 = v64[3](v67, v64);
        sub_29DE93B3C(&v127);
        if (v87 == 5)
        {

          sub_29DF3CBE8(&v123, &v127);
          sub_29DF3CBE8(&v127, &v130);
          swift_dynamicCast();
          v92 = v124;
          v93 = v125;

          sub_29E05D0A4();
          v95 = *(v94 + 48);
          v96 = *(v94 + 64);
          v97 = v110;
          *v110 = v92;
          v98 = *(v121 + 32);
          v99 = v120;
          v98(v97 + v95, v118, v120);
          v98(v97 + v96, v116, v99);
          v91 = v117;
          goto LABEL_41;
        }

        ++v86;
        sub_29DE93B3C(&v123);
        v62 += 40;
        if (v85 == v86)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_44;
    }

LABEL_37:

    __break(1u);
  }

  else if (!v107)
  {

    sub_29E05D0A4();
    v80 = *(v79 + 48);
    v81 = *(v79 + 64);
    v82 = 2;
    goto LABEL_39;
  }

  sub_29E05D0A4();
  v80 = *(v88 + 48);
  v81 = *(v88 + 64);
  v82 = 1;
LABEL_39:
  v89 = v110;
  *v110 = v82;
  v90 = *(v121 + 32);
  v90(v89 + v80, v118, v67);
  v90(v89 + v81, v64, v67);
  v91 = v62;
LABEL_41:
  sub_29E05D1FC(v91, sub_29E05D1A4);
  return sub_29E05D1FC(v119, type metadata accessor for OnboardingStartDateRow);
}

uint64_t sub_29E05CD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v22 = sub_29E2BCBB4();
  v2 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E2C31A4();
  v23 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC94();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCEA4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v21 - v17;
  (*(v8 + 104))(v10, *MEMORY[0x29EDB9C78], v7, v16);
  sub_29E2BCCA4();
  (*(v8 + 8))(v10, v7);
  v19 = v22;
  (*(v2 + 16))(v4, v24, v22);
  (*(v12 + 16))(v14, v18, v11);
  sub_29E2C3144();
  sub_29E2C3194();
  sub_29E15177C(v26);
  (*(v2 + 8))(v4, v19);
  (*(v23 + 8))(v6, v25);
  return (*(v12 + 8))(v18, v11);
}

void sub_29E05D0A4()
{
  if (!qword_2A181B5B0)
  {
    type metadata accessor for HKMCCycleFactor(255);
    sub_29E2BCBB4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181B5B0);
    }
  }
}

uint64_t sub_29E05D140(uint64_t a1, uint64_t a2)
{
  sub_29E05D0A4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E05D1A4()
{
  if (!qword_2A18191A0)
  {
    type metadata accessor for OnboardingEndDateRow(255);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18191A0);
    }
  }
}

uint64_t sub_29E05D1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E05D25C()
{
  if (!qword_2A181B5B8)
  {
    sub_29DEB1BC4(255, &unk_2A181DFD0);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B5B8);
    }
  }
}

uint64_t sub_29E05D2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E05D32C()
{
  result = qword_2A181D9C0;
  if (!qword_2A181D9C0)
  {
    sub_29E2BCBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D9C0);
  }

  return result;
}

id sub_29E05D384()
{
  sub_29DE9408C(0, &qword_2A181B5C0);
  v0 = sub_29E05D490();
  v1 = sub_29E2C33A4();
  v2 = [swift_getObjCClassFromMetadata() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 configurationPreferringMonochrome];
    v2 = [v4 imageByApplyingSymbolConfiguration_];
  }

  return v2;
}

id sub_29E05D490()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x29EDC80E0];
  v2 = [v0 _preferredFontForTextStyle_variant_];
  if (!v2)
  {
    v2 = [v0 preferredFontForTextStyle_];
  }

  v3 = [swift_getObjCClassFromMetadata() configurationWithFont:v2 scale:1];

  return v3;
}

void sub_29E05D544()
{
  sub_29DE99B54();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2CE220;
  sub_29DE9408C(0, &qword_2A1817FE0);
  *(v0 + 32) = sub_29E2C4074();
  v1 = sub_29E2C3604();

  v2 = [objc_opt_self() configurationWithPaletteColors_];

  v3 = sub_29E2C33A4();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v4)
  {
    __break(1u);
  }
}

void sub_29E05D6AC(SEL *a1)
{
  sub_29DE99B54();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CE220;
  *(v2 + 32) = [objc_opt_self() *a1];
  sub_29DE9408C(0, &qword_2A1817FE0);
  v3 = sub_29E2C3604();

  v4 = [objc_opt_self() configurationWithPaletteColors_];

  v5 = sub_29E2C33A4();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (!v6)
  {
    __break(1u);
  }
}

uint64_t sub_29E05D7D4()
{
  v21[1] = *MEMORY[0x29EDCA608];
  v21[0] = 0;
  v1 = [v0 biologicalSexWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v21[0];
    v4 = HKAnalyticsPropertyValueForBiologicalSex();
    v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v6 = v21[0];
    v7 = sub_29E2BC7E4();

    swift_willThrow();
    v8 = v7;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = v7;
      sub_29DE96670();
      v17 = sub_29E2C3424();
      v19 = sub_29DFAA104(v17, v18, v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error when retrieving biological sex: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  return v5;
}

id sub_29E05DA18()
{
  v1 = v0;
  v21[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E2BCB04();
  v21[0] = 0;
  v3 = [v1 ageWithCurrentDate:v2 error:v21];

  if (v3)
  {
    v4 = v21[0];
    return v3;
  }

  else
  {
    v6 = v21[0];
    v7 = sub_29E2BC7E4();

    swift_willThrow();
    v8 = v7;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = v7;
      sub_29DE96670();
      v17 = sub_29E2C3424();
      v19 = sub_29DFAA104(v17, v18, v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error when retrieving age: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    v20 = *MEMORY[0x29EDBA360];
    return v20;
  }
}

void sub_29E05DCFC()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E05DDC4()
{
  sub_29DECE8A4(0, &qword_2A1A619B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD3B0;
  v1 = objc_opt_self();
  result = [v1 pregnancyType];
  if (result)
  {
    *(inited + 32) = result;
    *(inited + 40) = [v1 medicationDoseEventType];
    sub_29DE927B8(inited);
    v4 = v3;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E05DE9C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E05E08C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

void sub_29E05E288()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v177 = &v158 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_29E2C3384();
  v2 = *(v161 - 8);
  MEMORY[0x2A1C7C4A8](v161);
  v4 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v158 - v6;
  sub_29DEFFE04();
  v8 = sub_29E2BDD14();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v174 = *(v9 + 72);
  v11 = v10;
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_29E2DB0E0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  v13 = sub_29E2C33A4();
  v14 = [objc_opt_self() imageNamed:v13 inBundle:v12 compatibleWithTraitCollection:0];

  if (v14)
  {
    v15 = v160 + v11;
    *v15 = v14;
    *(v15 + 8) = 0;
    v171 = *(v9 + 104);
    v16 = v15;
    v167 = v15;
    v171();
    v165 = v8;
    v17 = (v16 + v174);
    sub_29E2C3314();
    v18 = *(v2 + 16);
    v169 = v2 + 16;
    v175 = v18;
    v19 = v4;
    v20 = v4;
    v21 = v161;
    (v18)(v19, v7);
    sub_29E2BCC74();
    v22 = v12;
    v176 = v12;
    v163 = v22;
    v172 = "Pregnancy Medication";
    v23 = sub_29E2C3414();
    v168 = v9 + 104;
    v24 = v23;
    v26 = v25;
    v27 = *(v2 + 8);
    v173 = v2 + 8;
    v170 = v27;
    v27(v7, v21);
    *v17 = v24;
    v17[1] = v26;
    (v171)(v17, *MEMORY[0x29EDC1610], v165);
    v28 = v174;
    v162 = (2 * v174);
    v29 = v167 + 2 * v174;
    v164 = 0xD000000000000013;
    sub_29E2C3314();
    v166 = v20;
    v175(v20, v7, v21);
    sub_29E2BCC74();
    v159 = v163;
    v30 = sub_29E2C3414();
    v32 = v31;
    v33 = v170;
    v170(v7, v21);
    *v29 = v30;
    *(v29 + 8) = v32;
    *(v29 + 16) = 0;
    LODWORD(v163) = *MEMORY[0x29EDC1630];
    v34 = v171;
    (v171)(v29);
    v35 = &v162[v28];
    v36 = v167;
    v37 = &v35[v167];
    sub_29E2C3314();
    v38 = v175;
    v175(v166, v7, v21);
    sub_29E2BCC74();
    v159 = v159;
    v39 = sub_29E2C3414();
    v41 = v40;
    v33(v7, v21);
    *v37 = v39;
    v37[1] = v41;
    v37[2] = 0;
    LODWORD(v162) = *MEMORY[0x29EDC15D0];
    (v34)(v37);
    v158 = (4 * v174);
    v42 = v36 + 4 * v174;
    sub_29E2C3314();
    v38(v166, v7, v21);
    sub_29E2BCC74();
    v159 = v159;
    v43 = sub_29E2C3414();
    v45 = v44;
    v170(v7, v21);
    *v42 = v43;
    *(v42 + 8) = v45;
    *(v42 + 16) = 0;
    (v171)(v42, v163, v165);
    v46 = v36;
    v47 = &v158[v174 + v36];
    v48 = v7;
    sub_29E2C3314();
    v49 = v166;
    v175(v166, v7, v21);
    sub_29E2BCC74();
    v50 = v159;
    v51 = sub_29E2C3414();
    v53 = v52;
    v170(v48, v21);
    *v47 = v51;
    v47[1] = v53;
    v47[2] = 0;
    v54 = v165;
    (v171)(v47, v162, v165);
    v55 = v46 + 6 * v174;
    sub_29E2C3314();
    v175(v49, v48, v21);
    sub_29E2BCC74();
    v158 = v50;
    v56 = sub_29E2C3414();
    v58 = v57;
    v59 = v21;
    v60 = v170;
    v170(v48, v21);
    *v55 = v56;
    *(v55 + 8) = v58;
    *(v55 + 16) = 0;
    v61 = v163;
    (v171)(v55, v163, v54);
    v159 = (8 * v174);
    v62 = v167 + 7 * v174;
    sub_29E2C3314();
    v63 = v175;
    v175(v166, v48, v59);
    sub_29E2BCC74();
    v158 = v158;
    v64 = sub_29E2C3414();
    v66 = v65;
    v60(v48, v59);
    *v62 = v64;
    *(v62 + 8) = v66;
    *(v62 + 16) = 0;
    v67 = v165;
    v68 = v171;
    (v171)(v62, v61, v165);
    v69 = &v159[v167];
    sub_29E2C3314();
    v70 = v161;
    v63(v166, v48, v161);
    sub_29E2BCC74();
    v158 = v158;
    v71 = sub_29E2C3414();
    v73 = v72;
    v170(v48, v70);
    *v69 = v71;
    v69[1] = v73;
    v69[2] = 0;
    (v68)(v69, v162, v67);
    v74 = &v159[v174 + v167];
    sub_29E2C3314();
    v75 = v70;
    v175(v166, v48, v70);
    sub_29E2BCC74();
    v159 = v158;
    v76 = sub_29E2C3414();
    v78 = v77;
    v79 = v170;
    v170(v48, v70);
    *v74 = v76;
    *(v74 + 1) = v78;
    v74[16] = 0;
    v80 = v163;
    v81 = v171;
    (v171)(v74, v163, v67);
    v82 = v174;
    v83 = v167 + 10 * v174;
    sub_29E2C3314();
    v175(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v84 = sub_29E2C3414();
    v86 = v85;
    v79(v48, v75);
    *v83 = v84;
    *(v83 + 8) = v86;
    *(v83 + 16) = 0;
    (v81)(v83, v80, v165);
    v87 = v167 + 11 * v82;
    sub_29E2C3314();
    v88 = v175;
    v175(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v89 = sub_29E2C3414();
    v91 = v90;
    v170(v48, v75);
    *v87 = v89;
    *(v87 + 8) = v91;
    *(v87 + 16) = 0;
    v92 = v165;
    (v171)(v87, v163, v165);
    v93 = v167;
    v94 = (v167 + 12 * v174);
    sub_29E2C3314();
    v88(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v95 = sub_29E2C3414();
    v97 = v96;
    v98 = v170;
    v170(v48, v75);
    *v94 = v95;
    v94[1] = v97;
    v94[2] = 0;
    (v171)(v94, v162, v92);
    v99 = v93 + 13 * v174;
    sub_29E2C3314();
    v100 = v166;
    v101 = v75;
    v175(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v102 = v100;
    v103 = sub_29E2C3414();
    v105 = v104;
    v98(v48, v101);
    *v99 = v103;
    *(v99 + 8) = v105;
    *(v99 + 16) = 0;
    v106 = v163;
    (v171)(v99, v163, v165);
    v107 = v167 + 14 * v174;
    sub_29E2C3314();
    v108 = v48;
    v175(v102, v48, v101);
    sub_29E2BCC74();
    v158 = v159;
    v109 = sub_29E2C3414();
    v111 = v110;
    v112 = v101;
    v170(v48, v101);
    *v107 = v109;
    *(v107 + 8) = v111;
    *(v107 + 16) = 0;
    v113 = v165;
    (v171)(v107, v106, v165);
    v159 = (16 * v174);
    v114 = v167 + 15 * v174;
    sub_29E2C3314();
    v115 = v166;
    v175(v166, v108, v112);
    sub_29E2BCC74();
    v158 = v158;
    v116 = sub_29E2C3414();
    v118 = v117;
    v170(v108, v112);
    *v114 = v116;
    *(v114 + 8) = v118;
    *(v114 + 16) = 0;
    (v171)(v114, v163, v113);
    v119 = &v159[v167];
    sub_29E2C3314();
    v175(v115, v108, v112);
    sub_29E2BCC74();
    v158 = v158;
    v120 = sub_29E2C3414();
    v122 = v121;
    v170(v108, v112);
    *v119 = v120;
    v119[1] = v122;
    v119[2] = 0;
    (v171)(v119, v162, v113);
    v162 = &v159[v174];
    sub_29DECE8A4(0, &qword_2A1A62780);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_29E2CFE80;
    sub_29E2C3314();
    v175(v115, v108, v112);
    sub_29E2BCC74();
    v159 = v158;
    v124 = sub_29E2C3414();
    v126 = v125;
    v127 = v170;
    v170(v108, v112);
    *(v123 + 32) = v124;
    *(v123 + 40) = v126;
    sub_29E2C3314();
    v175(v115, v108, v112);
    sub_29E2BCC74();
    v159 = v159;
    v128 = sub_29E2C3414();
    v130 = v129;
    v131 = v127;
    v127(v108, v112);
    *(v123 + 48) = v128;
    *(v123 + 56) = v130;
    sub_29E2C3314();
    v132 = v115;
    v133 = v175;
    v175(v132, v108, v112);
    sub_29E2BCC74();
    v159 = v159;
    v134 = sub_29E2C3414();
    v136 = v135;
    v127(v108, v112);
    *(v123 + 64) = v134;
    *(v123 + 72) = v136;
    sub_29E2C3314();
    v137 = v166;
    v138 = v112;
    v133(v166, v108, v112);
    sub_29E2BCC74();
    v159 = v159;
    v139 = v137;
    v140 = sub_29E2C3414();
    v142 = v141;
    v131(v108, v138);
    *(v123 + 80) = v140;
    *(v123 + 88) = v142;
    v143 = v167;
    v144 = v162;
    *&v162[v167] = v123;
    v145 = v171;
    (v171)(&v144[v143], *MEMORY[0x29EDC15D8], v165);
    v146 = v143 + 18 * v174;
    sub_29E2C3314();
    v147 = v161;
    v133(v139, v108, v161);
    sub_29E2BCC74();
    v148 = v159;
    v149 = sub_29E2C3414();
    v151 = v150;
    v170(v108, v147);
    *v146 = v149;
    *(v146 + 8) = v151;
    *(v146 + 16) = 0;
    v152 = v163;
    v153 = v165;
    (v145)(v146, v163, v165);
    v154 = v167 + 19 * v174;
    sub_29E2C3314();
    v175(v139, v108, v147);
    sub_29E2BCC74();
    v155 = sub_29E2C3414();
    v157 = v156;
    v170(v108, v147);
    *v154 = v155;
    *(v154 + 8) = v157;
    *(v154 + 16) = 0;
    (v145)(v154, v152, v153);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for PregnancyOnboardingReviewMedicationsViewController()
{
  result = qword_2A181B5E0;
  if (!qword_2A181B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E05F9D8(uint64_t a1, uint64_t a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v30 - v11;
  v13 = sub_29E2BFDD4();
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_2A181B5D0) = 11;
  *(v2 + qword_2A181B5C8) = a1;
  (*(v16 + 104))(v15, *MEMORY[0x29EDC3180]);
  v17 = objc_allocWithZone(type metadata accessor for MedicationsReviewCollectionViewController(0));
  v30[3] = a1;

  v30[4] = a2;
  v18 = sub_29E13A130(v15, a2);
  v31 = v2;
  *(v2 + qword_2A181B5D8) = v18;
  v30[2] = v18;
  sub_29E2C3314();
  v19 = *(v7 + 16);
  v19(v10, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  v32 = v20;
  v21 = sub_29E2C3414();
  v30[0] = v22;
  v30[1] = v21;
  v23 = *(v7 + 8);
  v23(v12, v6);
  sub_29E2C3314();
  v19(v10, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v23(v12, v6);
  v24 = objc_opt_self();
  v25 = sub_29E2C33A4();
  v26 = [v24 imageNamed:v25 inBundle:v32 compatibleWithTraitCollection:0];

  if (v26)
  {
    [v26 setIsAccessibilityElement_];
    v27 = sub_29E2BF714();
    v28 = sub_29E2C33A4();

    v29 = [v27 hxui_addCancelButton];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E05FE80(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  [v1 setModalInPresentation_];
}

void sub_29E05FEE4(unsigned __int8 *a1)
{
  v1 = a1[qword_2A181B5D0];
  v2 = a1;

  sub_29E27EA20(v1, 2u);
}

void sub_29E05FF58(unsigned __int8 *a1)
{
  v1 = a1[qword_2A181B5D0];
  v2 = a1;

  sub_29E27EC80(v1, 1);
}

void sub_29E05FFFC()
{

  v1 = *(v0 + qword_2A181B5D8);
}

void sub_29E06003C(uint64_t a1)
{

  v2 = *(a1 + qword_2A181B5D8);
}

uint64_t sub_29E0600E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  ObjectType = swift_getObjectType();
  sub_29E0635B8(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_29E2C3DA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E06361C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultCenter];
  sub_29E2C3DB4();

  sub_29DE9408C(0, &qword_2A1A626C0);
  v16 = sub_29E2C3CF4();
  v26 = v16;
  v17 = sub_29E2C3CE4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_29E063568(&qword_2A1A5E130, MEMORY[0x29EDB9DF8]);
  sub_29DF4D6CC();
  sub_29E2C1354();
  sub_29DEB1FA4(v5);

  (*(v7 + 8))(v9, v6);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v20 = ObjectType;
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  sub_29E063568(&qword_2A181B630, sub_29E06361C);
  sub_29E2C1384();

  (*(v12 + 8))(v14, v11);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
}

uint64_t sub_29E0604A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29DE966D4((v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider), *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider + 24));
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_29E0635B0;
  *(v5 + 24) = v4;
  sub_29DF1482C();
  sub_29E063568(&qword_2A1818DA8, sub_29DF1482C);

  sub_29E2C1384();

  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
}

id sub_29E0606E0()
{
  v1 = *v0;
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v2 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA878]);
  v3 = [v1 preferredUnitForType_];

  return v3;
}

uint64_t sub_29E06075C()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v23[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136446210;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Received unit preferences change notification", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider + 24);
    v13 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider + 32);
    v14 = result;
    sub_29DE966D4((result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider), v12);
    v15 = *(v13 + 8);

    v16 = v15(v12, v13);
    v17 = sub_29E2C10D4();
    v19 = v18;
    v20 = *(type metadata accessor for CycleLogModel() + 36);
    v21 = *(v19 + v20);
    *(v19 + v20) = v16;

    v17(v23, 0);
  }

  return result;
}

uint64_t sub_29E0609D0()
{
  v1 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2BCEA4();
  v3 = [*v0 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  return sub_29E2C3144();
}

uint64_t sub_29E060AE8(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = v3;
  v48 = a2;
  ObjectType = swift_getObjectType();
  v50 = type metadata accessor for CycleLogModel();
  MEMORY[0x2A1C7C4A8](v50);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v49);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v45 = a1;
    v20 = v19;
    v51[0] = v19;
    *v18 = 136446210;
    v21 = sub_29E2C4AE4();
    v44 = v11;
    v23 = sub_29DFAA104(v21, v22, v51);
    ObjectType = v8;
    v24 = a3;
    v25 = v23;

    *(v18 + 4) = v25;
    v26 = v24;
    v8 = ObjectType;
    _os_log_impl(&dword_29DE74000, v15, v16, v26, v18, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    v27 = v18;
    v5 = v46;
    MEMORY[0x29ED82140](v27, -1, -1);

    (*(v12 + 8))(v14, v44);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v28 = swift_getObjectType();

  sub_29E262788(v28, v48);
  v29 = sub_29E2C10D4();
  v30 = v50;
  sub_29E035E5C(v10, v31 + *(v50 + 24));
  v29(v51, 0);

  sub_29E2C10E4();
  sub_29E00C08C(&v8[*(v30 + 24)], v10);
  sub_29DF0514C(v8, type metadata accessor for CycleLogModel);
  v32 = *&v10[*(v49 + 20)];
  sub_29DF0514C(v10, type metadata accessor for CycleDay);
  sub_29DE966D4((v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider), *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider + 24));
  sub_29E00251C();
  v34 = v33;
  v35 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_sectionStyle);
  v36 = sub_29E2C10D4();
  v38 = v37;
  v39 = sub_29E062CBC(v32, v34, v35);
  v41 = v40;

  v38[1] = v39;

  *v38 = v41;

  v36(v51, 0);
}

uint64_t sub_29E060EF4()
{
  v0 = sub_29E2C31A4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v29 = v0;
    v10 = v9;
    v11 = swift_slowAlloc();
    v28 = v1;
    v12 = v11;
    v31[0] = v11;
    *v10 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, v31);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Received calendar day change notification", v10, 0xCu);
    sub_29DE93B3C(v12);
    v16 = v12;
    v1 = v28;
    MEMORY[0x29ED82140](v16, -1, -1);
    v17 = v10;
    v0 = v29;
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider + 24);
    v20 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider + 32);
    v21 = result;
    sub_29DE966D4((result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider), v19);
    v22 = *(v20 + 8);

    v23 = v30;
    v22(v19, v20);
    v24 = sub_29E2C10D4();
    v26 = v25;
    v27 = type metadata accessor for CycleLogModel();
    (*(v1 + 40))(v26 + *(v27 + 28), v23, v0);
    v24(v31, 0);
  }

  return result;
}

void sub_29E061248()
{
  v32 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v32);
  v1 = &v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for CycleLogModel();
  MEMORY[0x2A1C7C4A8](v31);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v5;
    v12 = v11;
    v33[0] = v11;
    *v10 = 136446210;
    v13 = sub_29E2C4AE4();
    v30 = v3;
    v15 = sub_29DFAA104(v13, v14, v33);
    v3 = v30;

    *(v10 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Received feature settings change notification", v10, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    (*(v29 + 8))(v7, v4);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_29DE966D4((Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider), *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider + 24));
    sub_29E00251C();
    v19 = v18;

    sub_29E2C10E4();
    sub_29E00C08C(&v3[*(v31 + 24)], v1);
    sub_29DF0514C(v3, type metadata accessor for CycleLogModel);
    v20 = *&v1[*(v32 + 20)];
    sub_29DF0514C(v1, type metadata accessor for CycleDay);
    v21 = v17[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_sectionStyle];
    v22 = sub_29E2C10D4();
    v24 = v23;
    v25 = sub_29E062CBC(v20, v19, v21);
    v27 = v26;

    v24[1] = v25;

    *v24 = v27;

    v22(v33, 0);
  }
}

uint64_t sub_29E061608(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    v4 = a1;
    v5 = sub_29E2C44D4();

    if (v5)
    {
      v6 = sub_29E06216C();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_29DE9408C(0, &qword_2A1A61D50);
  v9 = sub_29E2C40C4();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_29E2C40D4();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29E1474A0();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_29E0622D4(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_29E0617A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E063568(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  v31 = a1;
  v10 = sub_29E2C3244();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_29E063568(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      v19 = sub_29E2C3304();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29E1474C4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_29E062638(v13, MEMORY[0x29EDBA2F8], &qword_2A181DCA0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_29E061A8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_29E2C4A04();
  sub_29E2C34B4();
  v6 = sub_29E2C4A54();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29E2C4914() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29E1474F0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_29E062474(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_29E061BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E063568(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
  v31 = a1;
  v10 = sub_29E2C3244();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_29E063568(&unk_2A181DBB0, MEMORY[0x29EDB9D70]);
      v19 = sub_29E2C3304();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29E1477C0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_29E062638(v13, MEMORY[0x29EDB9D70], &unk_2A1818E70, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D78]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_29E061ECC(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *v2;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4A04();
  sub_29E2C34B4();
  v6 = sub_29E2C4A54();

  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v12 = v11;
    if (v10 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v12 == v13)
    {
      break;
    }

    v15 = sub_29E2C4914();

    if (v15)
    {
      goto LABEL_11;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v20 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v18 = v20;
  }

  v16 = *(*(v18 + 48) + 8 * v8);
  sub_29E062934(v8);
  *v4 = v20;
  return v16;
}

uint64_t sub_29E062064(unsigned __int8 a1)
{
  v3 = *v1;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1);
  v4 = sub_29E2C4A54();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 3;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29E14736C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_29E062B14(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_29E06216C()
{
  v1 = v0;

  v2 = sub_29E2C4484();
  v3 = swift_unknownObjectRetain();
  v4 = sub_29E14ACE0(v3, v2);
  v13 = v4;

  v5 = sub_29E2C40C4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_29DE9408C(0, &qword_2A1A61D50);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_29E2C40D4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_29E0622D4(v7);
  result = sub_29E2C40D4();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E0622D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_29E2C40C4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_29E062474(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_29E2C4A04();
        sub_29E2BF404();
        sub_29E2C34B4();
        v10 = sub_29E2C4A54();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_29E062638(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_29E2C4414();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_29E063568(v41, v42);
        v25 = sub_29E2C3244();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

unint64_t sub_29E062934(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        sub_29E2C4A04();
        v11 = v10;
        sub_29E2C34B4();
        v12 = sub_29E2C4A54();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_29E062B14(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_29E2C4A04();
        MEMORY[0x29ED811E0](v10);
        v11 = sub_29E2C4A54() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_29E062CBC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    v6 = a1;
    v68 = MEMORY[0x29EDCA190];
LABEL_30:
    v33 = *(v68 + 16);
    if (v33)
    {
      v34 = (v68 + 32);
      inited = MEMORY[0x29EDCA190];
      while (1)
      {
        v35 = *v34;
        v36 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v38 = v37;
        if (v36 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v38 == v39)
        {
          break;
        }

        v41 = sub_29E2C4914();
        v42 = v35;

        if (v41)
        {
          goto LABEL_45;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_29E1437F8(0, *(inited + 16) + 1, 1, inited);
        }

        v44 = *(inited + 16);
        v43 = *(inited + 24);
        if (v44 >= v43 >> 1)
        {
          inited = sub_29E1437F8((v43 > 1), v44 + 1, 1, inited);
        }

        *(inited + 16) = v44 + 1;
        *(inited + 8 * v44 + 32) = v42;
        v6 = a1;
LABEL_33:
        ++v34;
        if (!--v33)
        {
          goto LABEL_55;
        }
      }

      v45 = v35;

LABEL_45:
      if (![v6 pregnancyState] || objc_msgSend(v6, sel_pregnancyState) == 5 || (v46 = objc_msgSend(v6, sel_daySummary)) != 0 && (v47 = v46, v48 = objc_msgSend(v46, sel_intermenstrualBleeding), v47, (v48 & 1) != 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_29E1437F8(0, *(inited + 16) + 1, 1, inited);
        }

        v50 = *(inited + 16);
        v49 = *(inited + 24);
        if (v50 >= v49 >> 1)
        {
          inited = sub_29E1437F8((v49 > 1), v50 + 1, 1, inited);
        }

        *(inited + 16) = v50 + 1;
        *(inited + 8 * v50 + 32) = v35;
        v6 = a1;
      }

      else
      {
      }

      goto LABEL_33;
    }

    inited = MEMORY[0x29EDCA190];
LABEL_55:

    if (a3 == 2)
    {
      v5 = MEMORY[0x29EDCA190];
      if (!*(inited + 16))
      {
        goto LABEL_72;
      }
    }

    else
    {
      v51 = [v6 pregnancyState];
      if (v51 > 6 || ((1 << v51) & 0x29) != 0)
      {
        v5 = sub_29E143EF4(0, 1, 1, MEMORY[0x29EDCA190]);
        v54 = *(v5 + 2);
        v56 = *(v5 + 3);
        v55 = v54 + 1;
        if (v54 >= v56 >> 1)
        {
          v5 = sub_29E143EF4((v56 > 1), v54 + 1, 1, v5);
        }

        v52 = 0;
      }

      else if (((1 << v51) & 0x54) != 0)
      {
        v52 = 1;
        v5 = sub_29E143EF4(0, 1, 1, MEMORY[0x29EDCA190]);
        v54 = *(v5 + 2);
        v53 = *(v5 + 3);
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v52 = 1;
          v5 = sub_29E143EF4((v53 > 1), v54 + 1, 1, v5);
        }
      }

      else
      {
        v5 = sub_29E143EF4(0, 1, 1, MEMORY[0x29EDCA190]);
        v54 = *(v5 + 2);
        v64 = *(v5 + 3);
        v55 = v54 + 1;
        if (v54 >= v64 >> 1)
        {
          v5 = sub_29E143EF4((v64 > 1), v54 + 1, 1, v5);
        }

        v52 = 2;
      }

      *(v5 + 2) = v55;
      v5[v54 + 32] = v52;
      if (!*(inited + 16))
      {
LABEL_72:
        if (a3 <= 1u)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_29E143EF4(0, *(v5 + 2) + 1, 1, v5);
          }

          v60 = *(v5 + 2);
          v59 = *(v5 + 3);
          if (v60 >= v59 >> 1)
          {
            v5 = sub_29E143EF4((v59 > 1), v60 + 1, 1, v5);
          }

          *(v5 + 2) = v60 + 1;
          v5[v60 + 32] = 4;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_79;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_29E143EF4(0, *(v5 + 2) + 1, 1, v5);
    }

    v58 = *(v5 + 2);
    v57 = *(v5 + 3);
    if (v58 >= v57 >> 1)
    {
      v5 = sub_29E143EF4((v57 > 1), v58 + 1, 1, v5);
    }

    *(v5 + 2) = v58 + 1;
    v5[v58 + 32] = 3;
    goto LABEL_72;
  }

  v5 = 0;
  v70 = *MEMORY[0x29EDC3240];
  v71 = a2 + 32;
  v69 = *MEMORY[0x29EDC3250];
  v67 = *MEMORY[0x29EDC3230];
  v68 = MEMORY[0x29EDCA190];
  v66 = *MEMORY[0x29EDC3228];
  v65 = xmmword_29E2CFE80;
  while (v5 < v4)
  {
    v7 = v5;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_86;
    }

    v9 = *(v71 + 8 * v7);
    if (a3)
    {
      if (a3 == 1)
      {
        sub_29E0635B8(0, &qword_2A181B620, type metadata accessor for HKMCDisplayTypeIdentifier, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29E2CFE80;
        *(inited + 32) = v69;
        *(inited + 40) = v67;
        *(inited + 48) = v66;
        *(inited + 56) = v70;
        v10 = v9;
        v11 = v69;
        v12 = v67;
        v13 = v66;
        v14 = v70;
        v15 = sub_29E14ED40(inited);
        swift_setDeallocating();
        type metadata accessor for HKMCDisplayTypeIdentifier(0);
        swift_arrayDestroy();
        if (!*(v15 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0();
        v18 = v9;
        v19 = sub_29E14ED40(v17);

        v74 = v19;

        inited = &v74;
        v15 = v74;
        if (!*(v74 + 16))
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      inited = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0();
      v16 = v9;
      v15 = sub_29E14ED40(inited);

      if (!*(v15 + 16))
      {
        goto LABEL_3;
      }
    }

    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    sub_29E2C4A04();
    sub_29E2C34B4();
    inited = sub_29E2C4A54();

    v20 = -1 << *(v15 + 32);
    v21 = inited & ~v20;
    if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v25 = v24;
        v26 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        inited = v27;
        if (v23 == v26 && v25 == v27)
        {
          break;
        }

        v29 = sub_29E2C4914();

        if (v29)
        {
          goto LABEL_24;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_24:

      inited = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_29E1814F8(0, *(v68 + 16) + 1, 1);
        inited = v75;
      }

      v32 = *(inited + 16);
      v31 = *(inited + 24);
      if (v32 >= v31 >> 1)
      {
        sub_29E1814F8((v31 > 1), v32 + 1, 1);
        inited = v75;
      }

      *(inited + 16) = v32 + 1;
      v68 = inited;
      *(inited + 8 * v32 + 32) = v9;
      goto LABEL_4;
    }

LABEL_3:

LABEL_4:
    v6 = a1;
    if (v5 == v4)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v5 = sub_29E143EF4(0, *(v5 + 2) + 1, 1, v5);
LABEL_79:
  v62 = *(v5 + 2);
  v61 = *(v5 + 3);
  if (v62 >= v61 >> 1)
  {
    v5 = sub_29E143EF4((v61 > 1), v62 + 1, 1, v5);
  }

  *(v5 + 2) = v62 + 1;
  v5[v62 + 32] = 5;
  return inited;
}

uint64_t sub_29E063568(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E0635B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E06361C()
{
  if (!qword_2A181B628)
  {
    sub_29E2C3DA4();
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29E063568(&qword_2A1A5E130, MEMORY[0x29EDB9DF8]);
    sub_29DF4D6CC();
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B628);
    }
  }
}

uint64_t sub_29E0636F8()
{

  sub_29DE8EDC0(v0 + 32);
  sub_29DE8EDC0(v0 + 48);
  sub_29DE8EDC0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_29E0637B4()
{
  type metadata accessor for CycleDeviationsSectionCell();
  sub_29E063ACC(&qword_2A181A118, 255, type metadata accessor for CycleDeviationsSectionCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E06383C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E063ACC(&qword_2A181A110, a2, type metadata accessor for CycleDeviationsItem);

  return MEMORY[0x2A1C60910](a1, v3);
}

uint64_t sub_29E0638E0()
{
  sub_29E2C4A04();
  v1 = *(v0 + 16);
  sub_29E2BF404();
  sub_29E063C1C(v3, v1);
  sub_29E2C4A24();
  sub_29E2C4A24();

  return sub_29E2C4A54();
}

uint64_t sub_29E063990(uint64_t a1)
{
  v3 = *(*v1 + 16);
  sub_29E2BF404();
  sub_29E063C1C(a1, v3);
  sub_29E2C4A24();
  sub_29E2C4A24();
}

uint64_t sub_29E063A04()
{
  v1 = *v0;
  sub_29E2C4A04();
  v2 = *(v1 + 16);
  sub_29E2BF404();
  sub_29E063C1C(v4, v2);
  sub_29E2C4A24();
  sub_29E2C4A24();

  return sub_29E2C4A54();
}

uint64_t sub_29E063ACC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E063B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x29ED811E0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2C34B4();
      if (v6)
      {
        sub_29E2C4A24();
        sub_29E2C34B4();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_29E2C4A24();
        if (!v7)
        {
LABEL_9:
          sub_29E2C4A24();
          goto LABEL_4;
        }
      }

      sub_29E2C4A24();
      sub_29E2C34B4();

LABEL_4:
      v5 += 6;

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_29E063C1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_29E2C4484();
    MEMORY[0x29ED811E0](v8);
    v3 = sub_29E2C4484();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x29ED811E0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x29ED80D70](i, a2);
      sub_29E2C40E4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_29E2C40E4();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_29E063D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  sub_29E2BF404();
  sub_29E2BF404();
  if ((sub_29E142298(v2, v5) & 1) != 0 && v3 == v6)
  {

    return v4 ^ v7 ^ 1u;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_29E063DA8(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[5];
    ObjectType = swift_getObjectType();
    v9[3] = v3;
    v9[4] = sub_29E063ACC(&qword_2A181B640, v7, type metadata accessor for CycleDeviationsItem);
    v9[0] = v1;
    v8 = *(v5 + 8);

    v8(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

uint64_t sub_29E063EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v40 = a2;
  v41 = a5;
  v7 = sub_29E2C0514();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCEA4();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v35 - v18;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x2A1C7C4A8](v23).n128_u64[0];
  v26 = &v35 - v25;
  if (a3)
  {
    if ([a4 predictionPrimarySource] == 3)
    {
      v27 = v40;
      sub_29E07FD24(v39, v26);
      sub_29DEAA194(v26, v22);
      if ((*(v14 + 48))(v22, 1, v13) == 1)
      {
        sub_29DE93920(v22);
        sub_29E2C04B4();
        v28 = sub_29E2C0504();
        v29 = sub_29E2C3A14();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v42 = v31;
          *v30 = 136446210;
          *(v30 + 4) = sub_29DFAA104(0x697463656A6F7250, 0xEA00000000006E6FLL, &v42);
          _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Cannot compute next fertile window time date, just returning the current day index", v30, 0xCu);
          sub_29DE93B3C(v31);
          MEMORY[0x29ED82140](v31, -1, -1);
          MEMORY[0x29ED82140](v30, -1, -1);
        }

        (*(v35 + 8))(v9, v36);
        (*(v14 + 16))(v16, v39, v13);
        (*(v37 + 16))(v12, v40, v38);
        sub_29E2C3144();
      }

      else
      {
        (*(v14 + 32))(v19, v22, v13);
        (*(v14 + 16))(v16, v19, v13);
        (*(v37 + 16))(v12, v27, v38);
        sub_29E2C3144();
        (*(v14 + 8))(v19, v13);
      }

      return sub_29DE93920(v26);
    }

    goto LABEL_10;
  }

  if (__OFSUB__([a4 allDays], 1))
  {
    __break(1u);
LABEL_10:
    v32 = [a4 allDays];
    v33 = __OFSUB__(v32, 3);
    result = v32 - 3;
    if (v33)
    {
      __break(1u);
      return result;
    }
  }

  return sub_29E2C30D4();
}

id sub_29E064374()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v27 - v7;
  v9 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = type metadata accessor for CycleChartPDFHeader();
  result = 0;
  v12 = v0 + *(v10 + 20);
  if ((*(v12 + 16) & 1) == 0)
  {
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_29E2C3354();
    sub_29E2C3344();
    v28 = v13;
    sub_29E2C3324();
    sub_29E2C3344();
    v28 = v14;
    sub_29E2C3324();
    sub_29E2C3344();
    sub_29E2C3374();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v18 = v17;
    (*(v3 + 8))(v8, v2);
    v28 = 32;
    v29 = 0xE100000000000000;
    MEMORY[0x29ED7FCC0](v16, v18);

    v19 = *MEMORY[0x29EDC7700];
    v20 = sub_29E2BE1E4();
    v21 = [objc_opt_self() systemFontOfSize:7.0 weight:v19];
    sub_29DE9408C(0, &qword_2A1817B10);
    v22 = sub_29E2C3E84();
    sub_29DF40374(v21, v22, v20);

    v23 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v24 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29E066070(&qword_2A18177F0, type metadata accessor for Key);
    v25 = sub_29E2C31F4();

    v26 = [v23 initWithString:v24 attributes:v25];

    return v26;
  }

  return result;
}

id sub_29E0647E0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v27 - v7;
  v9 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = type metadata accessor for CycleChartPDFHeader();
  result = 0;
  v12 = v0 + *(v10 + 24);
  if ((*(v12 + 16) & 1) == 0)
  {
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_29E2C3354();
    sub_29E2C3344();
    v28 = v13;
    sub_29E2C3324();
    sub_29E2C3344();
    v28 = v14;
    sub_29E2C3324();
    sub_29E2C3344();
    sub_29E2C3374();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v18 = v17;
    (*(v3 + 8))(v8, v2);
    v28 = v16;
    v29 = v18;
    MEMORY[0x29ED7FCC0](32, 0xE100000000000000);
    v19 = *MEMORY[0x29EDC7700];
    v20 = sub_29E2BE1E4();
    v21 = [objc_opt_self() systemFontOfSize:7.0 weight:v19];
    sub_29DE9408C(0, &qword_2A1817B10);
    v22 = sub_29E2C3E84();
    sub_29DF40374(v21, v22, v20);

    v23 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v24 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29E066070(&qword_2A18177F0, type metadata accessor for Key);
    v25 = sub_29E2C31F4();

    v26 = [v23 initWithString:v24 attributes:v25];

    return v26;
  }

  return result;
}

uint64_t sub_29E064C3C@<X0>(uint64_t *a1@<X8>)
{
  sub_29E2BEEF4();
  v1 = *MEMORY[0x29EDC7700];
  v2 = sub_29E2BE1E4();
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:7.0 weight:v1];
  v5 = sub_29DE9408C(0, &qword_2A1817B10);
  v6 = sub_29E2C3E84();
  sub_29DF40374(v4, v6, v2);

  v7 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v8 = sub_29E2C33A4();

  type metadata accessor for Key(0);
  v10 = v9;
  sub_29E066070(&qword_2A18177F0, type metadata accessor for Key);
  v11 = sub_29E2C31F4();

  v53 = [v7 initWithString:v8 attributes:v11];

  sub_29E0B5714();
  v12 = sub_29E2BE1E4();
  v51 = v3;
  v13 = [v3 systemFontOfSize:7.0 weight:v1];
  v14 = sub_29E2C3E84();
  sub_29DF40374(v13, v14, v12);

  v15 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v16 = sub_29E2C33A4();

  v17 = sub_29E2C31F4();

  v18 = [v15 initWithString:v16 attributes:v17];

  v19 = sub_29E064374();
  v20 = MEMORY[0x29EDC2868];
  if (v19)
  {
    v21 = v19;
    v22 = sub_29E2BE1E4();
    v23 = v18;
    v24 = [v51 systemFontOfSize:7.0 weight:{v1, v10, v5}];
    v25 = sub_29E2C3E84();
    sub_29DF40374(v24, v25, v22);

    v26 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v27 = sub_29E2C33A4();
    v28 = sub_29E2C31F4();

    v29 = [v26 initWithString:v27 attributes:v28];

    v18 = v23;
    [v21 appendAttributedString_];

    v30 = v53;
    v31 = [v21 appendAttributedString_];
    MEMORY[0x2A1C7C4A8](v31);
    v58 = sub_29E2BF564();
    v59 = v20;
    sub_29DEBB7E8(v57);
    sub_29E2BF554();
  }

  else
  {
    v58 = sub_29DE9408C(0, &qword_2A181B648);
    v59 = MEMORY[0x29EDC2CE0];
    v30 = v53;
    v57[0] = v53;
    v33 = v53;
  }

  v32 = v51;
  v34 = sub_29E0647E0();
  if (v34)
  {
    v35 = v34;
    v36 = v18;
    v52 = v18;
    v37 = sub_29E2BE1E4();
    v38 = v20;
    v39 = [v32 systemFontOfSize:7.0 weight:v1];
    v40 = sub_29E2C3E84();
    sub_29DF40374(v39, v40, v37);

    v41 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v42 = sub_29E2C33A4();
    v43 = sub_29E2C31F4();

    v44 = [v41 initWithString:v42 attributes:v43];

    [v36 appendAttributedString_];
    v45 = [v36 appendAttributedString_];
    MEMORY[0x2A1C7C4A8](v45);
    v55 = sub_29E2BF564();
    v56 = v38;
    sub_29DEBB7E8(v54);
    sub_29E2BF554();

    v18 = v52;
    v30 = v53;
  }

  else
  {
    v55 = sub_29DE9408C(0, &qword_2A181B648);
    v56 = MEMORY[0x29EDC2CE0];
    v54[0] = v18;
    v46 = v18;
  }

  MEMORY[0x2A1C7C4A8](v46);
  v47 = sub_29E2BFC04();
  v48 = MEMORY[0x29EDC2C70];
  a1[3] = v47;
  a1[4] = v48;
  sub_29DEBB7E8(a1);
  sub_29E2BFBF4();

  sub_29DE93B3C(v54);
  return sub_29DE93B3C(v57);
}

void sub_29E065330(void *a1)
{
  v2 = [objc_opt_self() configurationWithScale_];
  v3 = sub_29E2C33A4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    sub_29E2BE1E4();
    sub_29E2BE1A4();
    v10 = sub_29E2BFB34();
    v11 = MEMORY[0x29EDC2C28];
    sub_29DEBB7E8(v9);
    sub_29E2BFB24();
    v5 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    v10 = sub_29DE9408C(0, &qword_2A181B648);
    v11 = MEMORY[0x29EDC2CE0];
    v9[0] = a1;
    v6 = a1;
    v7 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    sub_29E065E9C(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29E2CD7A0;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    MEMORY[0x29ED7B1C0]();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E065510(void *a1)
{
  v10 = sub_29DE9408C(0, &qword_2A181B648);
  v11 = MEMORY[0x29EDC2CE0];
  v9[0] = a1;
  v2 = a1;
  v3 = sub_29E2BEA14();
  sub_29DE93B3C(v9);
  v4 = [objc_opt_self() configurationWithScale_];
  v5 = sub_29E2C33A4();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    sub_29E2BE1E4();
    sub_29E2BE1A4();
    v10 = sub_29E2BFB34();
    v11 = MEMORY[0x29EDC2C28];
    sub_29DEBB7E8(v9);
    sub_29E2BFB24();
    v7 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    sub_29E065E9C(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29E2CD7A0;
    *(v8 + 32) = v3;
    *(v8 + 40) = v7;
    MEMORY[0x29ED7B1C0]();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0656F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v39 = a2;
  v38 = a1;
  v41 = sub_29E2BF584();
  v40 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BEEE4();
  v5 = objc_opt_self();
  v6 = *MEMORY[0x29EDC7700];
  v7 = [v5 systemFontOfSize:12.0 weight:{*MEMORY[0x29EDC7700], v38}];
  v8 = [objc_opt_self() darkTextColor];
  sub_29DE9408C(0, &qword_2A1817B10);
  v9 = sub_29E2C3E84();
  sub_29DF40374(v7, v9, v8);

  v10 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v11 = sub_29E2C33A4();

  type metadata accessor for Key(0);
  sub_29E066070(&qword_2A18177F0, type metadata accessor for Key);
  v12 = sub_29E2C31F4();

  v13 = [v10 initWithString:v11 attributes:v12];

  v14 = sub_29DE9408C(0, &qword_2A181B648);
  v47[3] = v14;
  v47[4] = MEMORY[0x29EDC2CE0];
  v46 = 0;
  v47[0] = v13;
  v44 = 0u;
  v45 = 0u;
  sub_29E0B5A6C();
  v16 = v15;
  v17 = sub_29E2BE1E4();
  v18 = [v5 systemFontOfSize:7.0 weight:v6];
  v19 = sub_29E2C3E84();
  sub_29DF40374(v18, v19, v17);

  if (v16)
  {
    v20 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v21 = sub_29E2C33A4();

    v22 = sub_29E2C31F4();

    v23 = [v20 initWithString:v21 attributes:v22];

    v24 = MEMORY[0x29EDC2CE0];
  }

  else
  {

    v23 = 0;
    v14 = 0;
    v24 = 0;
    v43[1] = 0;
    v43[2] = 0;
  }

  v43[0] = v23;
  v43[3] = v14;
  v43[4] = v24;
  v25 = *MEMORY[0x29EDC2878];
  v26 = *(v40 + 104);
  v27 = v41;
  v26(v4, v25, v41);
  v28 = sub_29E2BF594();
  v29 = MEMORY[0x29EDC2880];
  v49 = v28;
  v50 = MEMORY[0x29EDC2880];
  sub_29DEBB7E8(v48);
  sub_29E2BF574();
  v30 = sub_29E2BEA14();
  sub_29DE93B3C(v48);
  sub_29DE9DC34(v39, v47);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_29DE9DC34(v42, v43);
  v26(v4, v25, v27);
  v49 = v28;
  v50 = v29;
  sub_29DEBB7E8(v48);
  sub_29E2BF574();
  v31 = sub_29E2BEA14();
  sub_29DE93B3C(v48);
  v32 = sub_29E2BE1B4();
  v33 = [v32 CGColor];

  v49 = sub_29E2BEDB4();
  v50 = MEMORY[0x29EDC2290];
  sub_29DEBB7E8(v48);
  sub_29E2BEDA4();
  v34 = sub_29E2BEA14();
  sub_29DE93B3C(v48);
  sub_29E065E9C(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CE0D0;
  *(v35 + 32) = v30;
  *(v35 + 40) = v31;
  *(v35 + 48) = v34;
  v36 = MEMORY[0x29ED7B1C0]();

  return v36;
}

uint64_t sub_29E065C9C()
{
  sub_29E064C3C(v1);
  sub_29DE966D4(v1, v1[3]);
  sub_29E2BE334();
  return sub_29DE93B3C(v1);
}

double sub_29E065D10()
{
  sub_29E064C3C(v3);
  sub_29DE966D4(v3, v3[3]);
  sub_29E2BE324();
  v1 = v0;
  sub_29DE93B3C(v3);
  return v1;
}

uint64_t sub_29E065DA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E066070(&qword_2A181B670, type metadata accessor for CycleChartPDFHeader);
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

void sub_29E065E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CycleChartPDFHeader()
{
  result = qword_2A181B650;
  if (!qword_2A181B650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E065F74()
{
  type metadata accessor for CycleChartPDFModel(319);
  if (v0 <= 0x3F)
  {
    sub_29E065E9C(319, &qword_2A181B660, sub_29DF9D6E4, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E066070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0660BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_29E146050(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_29E066198(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 24) = *(v1 + 16);
  sub_29E2BF404();

  if (a1 >> 62)
  {
    v4 = sub_29E2C4484();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x29EDCA190];
  if (!v4)
  {
LABEL_13:
    *(v2 + 16) = v5;
  }

  v14 = MEMORY[0x29EDCA190];
  result = sub_29E1813F8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v13 = v1;
    v7 = 0;
    v5 = v14;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x29ED80D70](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 hkmc_cycleFactor];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29E1813F8((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v10;
    }

    while (v4 != v7);
    v2 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E066308()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    while (*(result + 8 * v3 + 32) != 2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    *(v0 + 24) = result;
    sub_29E2BF404();

    swift_beginAccess();
    sub_29E0663CC(v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_29E0663CC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29E14D99C(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_29E066484(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_29E066544(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_29E0665D0(void *a1)
{
  v2 = *v1;
  v51 = a1;
  v52 = v2;
  v3 = sub_29E2C0514();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v50 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v50 - v10;
  swift_beginAccess();
  v12 = sub_29E2BF404();
  v13 = sub_29E14F15C(v12);

  v14 = sub_29E2BF404();
  v15 = sub_29E14F15C(v14);

  v16 = sub_29E066BDC(v15);
  v17 = sub_29E066CF4(v16);

  v18 = sub_29E066BDC(v13);
  v19 = sub_29E066CF4(v18);

  if (sub_29E0677B4(v17, v19))
  {

    sub_29E2C04B4();
    v20 = sub_29E2C0504();
    v21 = sub_29E2C3A34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v56 = v23;
      *v22 = 136446210;
      v24 = sub_29E2C4AE4();
      v26 = sub_29DFAA104(v24, v25, &v56);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29DE74000, v20, v21, "[%{public}s] No analysis impact notification is needed", v22, 0xCu);
      sub_29DE93B3C(v23);
      MEMORY[0x29ED82140](v23, -1, -1);
      MEMORY[0x29ED82140](v22, -1, -1);
    }

    (*(v53 + 8))(v5, v54);
    return 0;
  }

  v56 = v17;
  sub_29E2BF404();
  sub_29E0680A8(v19);
  v27 = v56;
  if (!*(v56 + 16) && !*(v1[2] + 16))
  {

    v27 = v17;
    if (*(v17 + 16))
    {
      goto LABEL_8;
    }

LABEL_15:

    sub_29E2C04B4();
    v42 = sub_29E2C0504();
    v43 = sub_29E2C3A34();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136446210;
      v46 = sub_29E2C4AE4();
      v48 = sub_29DFAA104(v46, v47, &v56);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29DE74000, v42, v43, "[%{public}s] No analysis impact notification is needed", v44, 0xCu);
      sub_29DE93B3C(v45);
      MEMORY[0x29ED82140](v45, -1, -1);
      MEMORY[0x29ED82140](v44, -1, -1);
    }

    (*(v53 + 8))(v8, v54);
    return 0;
  }

  if (!*(v27 + 16))
  {
    goto LABEL_15;
  }

LABEL_8:
  sub_29E2C04B4();
  sub_29E2BF404();
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A34();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56 = v50;
    *v30 = 136446466;
    v31 = sub_29E2C4AE4();
    v33 = sub_29DFAA104(v31, v32, &v56);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v55 = v27;
    sub_29E068DDC(0, &qword_2A181B678, sub_29DE93FAC, &type metadata for AnalysisKind, MEMORY[0x29EDC9B90]);
    sub_29E2BF404();
    v34 = sub_29E2C3464();
    v36 = sub_29DFAA104(v34, v35, &v56);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Updating impacted analysis kinds to %s", v30, 0x16u);
    v37 = v50;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v37, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);
  }

  (*(v53 + 8))(v11, v54);
  v38 = *(v13 + 16);

  v39 = *(v15 + 16);

  if (v39 >= v38)
  {
    v40 = sub_29E068934(v27);
  }

  else
  {
    v40 = sub_29E0684C0(v27);
  }

  sub_29E066E74(v51, v40, v41);

  return v27;
}

uint64_t sub_29E066BDC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_29E2BF404();
  v8 = 0;
  v9 = MEMORY[0x29EDCA1A0];
  v10 = MEMORY[0x29EDCA1A0];
  while (v5)
  {
LABEL_11:
    v13 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5))))) - 1;
    if (v13 <= 8 && ((0x1FBu >> v13) & 1) != 0)
    {
      v11 = sub_29DE92374(*(&off_29F362868 + v13));
    }

    else
    {
      v11 = v9;
    }

    v5 &= v5 - 1;
    result = sub_29E0660BC(v11, v10);
    v10 = result;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v10;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E066CF4(uint64_t a1)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(a1 + 48);
    v14 = *(v13 + v12);
    if (*(v13 + v12))
    {
      if (v14 == 1)
      {
        if ((*(*(v1 + 40) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v14 == 2)
      {
        result = sub_29E232F44();
        if ((result & 1) == 0)
        {
LABEL_4:
          result = sub_29E062064(v14);
        }
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_29E2C1214();

      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return a1;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_29E066E74(void *a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v28[2] = a2;
  v31 = a1;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v28 - v9;
  sub_29E2C3314();
  v11 = *(v5 + 16);
  v32 = v5 + 16;
  v33 = v11;
  v11(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  v13 = qword_2A1A67F80;
  sub_29E2BCC74();
  v14 = v13;
  v28[1] = v12;
  sub_29E2C3414();
  v15 = *(v5 + 8);
  v28[0] = v5 + 8;
  v15(v10, v4);
  v16 = sub_29E2C33A4();

  v17 = sub_29E2C33A4();
  v29 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  sub_29E2C3314();
  v33(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v15(v10, v4);
  v18 = swift_allocObject();
  v19 = v31;
  *(v18 + 16) = v30;
  *(v18 + 24) = v19;

  v31 = v19;
  v20 = sub_29E2C33A4();

  v38 = sub_29E068DB4;
  v39 = v18;
  aBlock = MEMORY[0x29EDCA5F8];
  v35 = 1107296256;
  v36 = sub_29DF6E81C;
  v37 = &unk_2A24B8E58;
  v21 = _Block_copy(&aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:1 handler:v21];
  _Block_release(v21);

  v24 = v29;
  [v29 addAction_];

  sub_29E2C3314();
  v33(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v15(v10, v4);
  v25 = sub_29E2C33A4();

  v38 = nullsub_1;
  v39 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v35 = 1107296256;
  v36 = sub_29DF6E81C;
  v37 = &unk_2A24B8E80;
  v26 = _Block_copy(&aBlock);

  v27 = [v22 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v24 addAction_];
  [v31 presentViewController:v24 animated:1 completion:0];
}

void sub_29E0673E8(uint64_t a1, void *a2, void *a3)
{
  v28 = a3;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v27[1] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v27 - v11;
  v13 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v15 = a2[7];
  v29 = a2;
  v17 = objc_allocWithZone(type metadata accessor for LocalSettingsModel());
  v18 = v13;
  swift_unknownObjectRetain();

  v19 = [v17 init];
  type metadata accessor for OptionsModel();
  swift_allocObject();
  v27[0] = sub_29DF729A4(v18, v15, v19, v14, v16, 1);

  swift_unknownObjectRelease();

  sub_29E2C3314();
  (*(v7 + 16))(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  v21 = sub_29E2C3414();
  v23 = v22;
  (*(v7 + 8))(v12, v6);
  v30 = sub_29E068DD4;
  v31 = v27[0];
  v32 = 0;
  v33 = v21;
  v34 = v23;
  sub_29E068DDC(0, &qword_2A181CC10, sub_29E068E44, &type metadata for OptionsView, MEMORY[0x29EDC4350]);
  v25 = objc_allocWithZone(v24);

  sub_29E2BF404();
  v26 = sub_29E2C2CC4();
  [v28 showAdaptively:v26 sender:v29];
}

uint64_t sub_29E067730()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E0677B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_29E2C4A04();
    MEMORY[0x29ED811E0](v13);
    result = sub_29E2C4A54();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_29E067924(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_29E067DC0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_29DF60AA4();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_29E2C40C4();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_29E2C40D4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_29E067B8C(uint64_t result, uint64_t a2)
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
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      v27 = v13;
      sub_29E2C34B4();
      v14 = sub_29E2C4A54();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v20 = v19;
        if (v18 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_29E2C4914();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
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
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_29E067DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29E2C4484())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_29E2C44D4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29E067EC0(uint64_t result)
{
  v2 = 0;
  v21 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v21 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

      sub_29E2BF404();
LABEL_7:
      v1 = v20;
      sub_29E146428(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_29E2C4A04();
    sub_29E2BF404();
    sub_29E2C34B4();
    v14 = sub_29E2C4A54();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_29E2C4914() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_29E061A8C(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
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
      goto LABEL_12;
    }
  }
}

uint64_t sub_29E0680A8(uint64_t result)
{
  v2 = result;
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
  for (i = (v5 + 63) >> 6; v7; result = sub_29E062064(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + (v10 | (v3 << 6)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        sub_29E2C4A04();
        MEMORY[0x29ED811E0](v11);
        v13 = sub_29E2C4A54();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      result = sub_29E146050(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

char *sub_29E068230(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA190];
  v10[2] = MEMORY[0x29EDCA190];
  v10[3] = v11;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    swift_beginAccess();
    v10[2] = v11;

LABEL_21:
    v10[3] = v11;
    v10[4] = a2;
    v10[5] = a3;
    v10[6] = a4;
    v10[7] = a5;
    return v10;
  }

  v12 = sub_29E2C4484();
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_3:
  v36 = v12 & ~(v12 >> 63);
  result = sub_29E1813F8(0, v36, 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v30 = v10 + 2;
    v31 = v10;
    v37 = v12;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v16 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    v17 = a1;
    do
    {
      if (v15)
      {
        v18 = MEMORY[0x29ED80D70](v14, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = v16;
      v21 = [v18 v16[80]];

      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_29E1813F8((v22 > 1), v23 + 1, 1);
      }

      ++v14;
      *(v11 + 16) = v23 + 1;
      *(v11 + 8 * v23 + 32) = v21;
      v16 = v20;
      a1 = v17;
    }

    while (v37 != v14);
    swift_beginAccess();
    *v30 = v11;
    sub_29E1813F8(0, v36, 0);
    for (i = 0; i != v37; ++i)
    {
      if (v15)
      {
        v25 = MEMORY[0x29ED80D70](i, v17);
      }

      else
      {
        v25 = *(v17 + 8 * i + 32);
      }

      v26 = v25;
      v27 = [v25 v16 + 3464];

      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_29E1813F8((v28 > 1), v29 + 1, 1);
      }

      *(v11 + 16) = v29 + 1;
      *(v11 + 8 * v29 + 32) = v27;
    }

    a4 = v34;
    a5 = v35;
    a2 = v32;
    a3 = v33;
    v10 = v31;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E0684C0(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17[-v8];
  v10 = sub_29E0922B0(0, a1);
  v11 = sub_29E0922B0(1u, a1);
  v12 = sub_29E0922B0(2u, a1);
  if (v10)
  {
    if (v12)
    {
LABEL_3:
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

LABEL_17:
      swift_once();
LABEL_13:
      v15 = qword_2A1A67F80;
      sub_29E2BCC74();
      v16 = sub_29E2C3414();
      (*(v4 + 8))(v9, v3);
      return v16;
    }

    if (!v11)
    {
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
LABEL_11:
      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      return sub_29E2C3414();
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_3;
  }

  if (v11)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_29E068934(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17[-v8];
  v10 = sub_29E0922B0(0, a1);
  v11 = sub_29E0922B0(1u, a1);
  v12 = sub_29E0922B0(2u, a1);
  if (v10)
  {
    if (v12)
    {
LABEL_3:
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

LABEL_17:
      swift_once();
LABEL_13:
      v15 = qword_2A1A67F80;
      sub_29E2BCC74();
      v16 = sub_29E2C3414();
      (*(v4 + 8))(v9, v3);
      return v16;
    }

    if (!v11)
    {
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
LABEL_11:
      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      return sub_29E2C3414();
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_3;
  }

  if (v11)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_29E068DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E068DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29E068E44()
{
  result = qword_2A181B690;
  if (!qword_2A181B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B690);
  }

  return result;
}

uint64_t *sub_29E068EA0(unint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v17 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v14 = i;
    v15 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x29ED80D70](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v16 = v9;
      sub_29E06D4B4(&v16, a2);
      if (v2)
      {

        return a2;
      }

      if (v12)
      {
        sub_29E2C4614();
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
        i = v14;
        v4 = v15;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        a2 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a2 = MEMORY[0x29EDCA190];
LABEL_20:

  return a2;
}

uint64_t sub_29E069038()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v8 = MEMORY[0x29EDCA190];
    sub_29E2BF404();
    sub_29E2C4634();
    v4 = 40;
    do
    {
      v5 = *(v1 + v4);
      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      v4 += 16;
      --v2;
    }

    while (v2);

    v3 = v8;
  }

  v9 = v3;
  v6 = sub_29E2BF404();
  sub_29DFCB5D4(v6);
  return v9;
}

uint64_t sub_29E069128()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v8 = MEMORY[0x29EDCA190];
    sub_29E2BF404();
    sub_29E2C4634();
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      v4 += 16;
      --v2;
    }

    while (v2);

    v3 = v8;
  }

  v9 = v3;
  v6 = sub_29E2BF404();
  sub_29DFCB5D4(v6);
  return v9;
}

uint64_t sub_29E069218(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_29E142298(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_29E142298(v2, v3);
}

unint64_t sub_29E069274@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E0701F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29E0692B0()
{
  v1 = v0;
  v151 = *v0;
  sub_29E070194(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v142 = &v140 - v3;
  v4 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v147 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v146 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C31A4();
  v148 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v150 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v152 = &v140 - v11;
  v12 = sub_29E2C0514();
  v153 = *(v12 - 8);
  v154 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v145 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v143 = &v140 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v144 = &v140 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v140 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v140 - v22;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v140 - v25;
  *&v28 = MEMORY[0x2A1C7C4A8](v27).n128_u64[0];
  v30 = &v140 - v29;
  v31 = v1[3];
  v32 = &selRef_removeObserver_;
  v149 = v8;
  v141 = v23;
  if (v31)
  {
    v33 = [v31 statistics];
    v34 = [v33 menstruationLengthMedian];

    if (v34)
    {
      if ([v34 integerValue] - 21 >= 0xFFFFFFFFFFFFFFECLL)
      {
        v49 = [v34 integerValue];
        v50 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
        *v50 = v49;
        v50[8] = 0;
        *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLengthFromAnalysis) = 1;
        sub_29E2C04B4();

        v51 = sub_29E2C0504();
        v52 = sub_29E2C3A34();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          LODWORD(v140) = v52;
          v54 = v53;
          v55 = swift_slowAlloc();
          v157[0] = v55;
          *v54 = 136446466;
          v56 = sub_29E2C4AE4();
          v58 = sub_29DFAA104(v56, v57, v157);

          *(v54 + 4) = v58;
          *(v54 + 12) = 2080;
          v59 = v50[8];
          v155 = *v50;
          v156 = v59;
          sub_29E07068C(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
          v60 = sub_29E2C3464();
          v62 = sub_29DFAA104(v60, v61, v157);

          *(v54 + 14) = v62;
          v32 = &selRef_removeObserver_;
          _os_log_impl(&dword_29DE74000, v51, v140, "[%{public}s] Updating period length from analysis: %s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v55, -1, -1);
          MEMORY[0x29ED82140](v54, -1, -1);
        }

        v45 = *(v153 + 8);
        v45(v30, v154);
        v46 = v1[3];
        if (!v46)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }
    }
  }

  sub_29E2C04B4();
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v155 = v38;
    *v37 = 136446466;
    v39 = sub_29E2C4AE4();
    v41 = sub_29DFAA104(v39, v40, &v155);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v157[0] = 5;
    v42 = sub_29E2C48D4();
    v44 = sub_29DFAA104(v42, v43, &v155);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Using default value for period length: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v38, -1, -1);
    MEMORY[0x29ED82140](v37, -1, -1);
  }

  v45 = *(v153 + 8);
  v45(v26, v154);
  v32 = &selRef_removeObserver_;
  v46 = v1[3];
  if (!v46)
  {
    goto LABEL_14;
  }

LABEL_8:
  v47 = [v46 statistics];
  v48 = [v47 cycleLengthMedian];

  if (!v48)
  {
LABEL_14:
    sub_29E2C04B4();
    v63 = sub_29E2C0504();
    v64 = sub_29E2C3A34();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v155 = v66;
      *v65 = 136446466;
      v67 = sub_29E2C4AE4();
      v69 = sub_29DFAA104(v67, v68, &v155);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v157[0] = 28;
      v70 = sub_29E2C48D4();
      v72 = sub_29DFAA104(v70, v71, &v155);

      *(v65 + 14) = v72;
      v32 = &selRef_removeObserver_;
      _os_log_impl(&dword_29DE74000, v63, v64, "[%{public}s] Using default value for cycle length: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v66, -1, -1);
      MEMORY[0x29ED82140](v65, -1, -1);
    }

    v73 = v20;
    goto LABEL_17;
  }

  if ([v48 integerValue] - 91 < 0xFFFFFFFFFFFFFFAFLL)
  {

    goto LABEL_14;
  }

  v114 = [v48 integerValue];
  v115 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
  *v115 = v114;
  v115[8] = 0;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLengthFromAnalysis) = 1;
  v116 = v141;
  sub_29E2C04B4();

  v117 = sub_29E2C0504();
  v118 = sub_29E2C3A34();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v157[0] = v140;
    *v119 = 136446466;
    v120 = sub_29E2C4AE4();
    v122 = sub_29DFAA104(v120, v121, v157);

    *(v119 + 4) = v122;
    *(v119 + 12) = 2080;
    v123 = v115[8];
    v155 = *v115;
    v156 = v123;
    sub_29E07068C(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v124 = sub_29E2C3464();
    v126 = sub_29DFAA104(v124, v125, v157);

    *(v119 + 14) = v126;
    v32 = &selRef_removeObserver_;
    _os_log_impl(&dword_29DE74000, v117, v118, "[%{public}s] Updating cycle length from analysis: %s", v119, 0x16u);
    v127 = v140;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v127, -1, -1);
    MEMORY[0x29ED82140](v119, -1, -1);
  }

  v73 = v116;
LABEL_17:
  v45(v73, v154);
  v74 = v149;
  v75 = v150;
  v76 = [v1[2] currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  v77 = v152;
  sub_29E2C30C4();
  v78 = v1[3];
  if (v78 && (v79 = [v78 v32[67]], v80 = objc_msgSend(v79, sel_lastMenstruationStartDayIndex), v79, v80))
  {
    [v80 integerValue];
    sub_29E2C30D4();
    sub_29E06F0E0(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v81 = sub_29E2C3284();
    v82 = v148;
    v83 = v74;
    if (v81)
    {
      v84 = v142;
      (*(v148 + 16))(v142, v75, v83);
      (*(v82 + 56))(v84, 0, 1, v83);
      v85 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
      swift_beginAccess();
      sub_29E06F128(v84, v1 + v85);
      swift_endAccess();
      *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayFromAnalysis) = 1;
      v86 = v144;
      sub_29E2C04B4();
      v87 = v80;
      v88 = sub_29E2C0504();
      v89 = sub_29E2C3A34();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v155 = v91;
        *v90 = 136315394;
        v92 = sub_29E2C4AE4();
        v94 = v82;
        v95 = sub_29DFAA104(v92, v93, &v155);

        *(v90 + 4) = v95;
        *(v90 + 12) = 2080;
        v157[0] = v87;
        sub_29DE9408C(0, &qword_2A1A5E0B0);
        v96 = v87;
        v97 = sub_29E2C3464();
        v99 = sub_29DFAA104(v97, v98, &v155);

        *(v90 + 14) = v99;
        _os_log_impl(&dword_29DE74000, v88, v89, "[%s] Updating last menstrual period date: %s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v91, -1, -1);
        MEMORY[0x29ED82140](v90, -1, -1);

        v100 = v144;
LABEL_31:
        v45(v100, v154);
        v138 = *(v94 + 8);
        v138(v150, v83);
        return (v138)(v152, v83);
      }
    }

    else
    {
      v86 = v143;
      sub_29E2C04B4();
      v87 = v80;
      v88 = sub_29E2C0504();
      v128 = sub_29E2C3A34();

      if (os_log_type_enabled(v88, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v155 = v130;
        *v129 = 136315394;
        v131 = sub_29E2C4AE4();
        v94 = v82;
        v133 = sub_29DFAA104(v131, v132, &v155);

        *(v129 + 4) = v133;
        *(v129 + 12) = 2080;
        v157[0] = v87;
        sub_29DE9408C(0, &qword_2A1A5E0B0);
        v134 = v87;
        v135 = sub_29E2C3464();
        v137 = sub_29DFAA104(v135, v136, &v155);

        *(v129 + 14) = v137;
        _os_log_impl(&dword_29DE74000, v88, v128, "[%s] Not using last menstrual period date: %s (too out of date)", v129, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v130, -1, -1);
        MEMORY[0x29ED82140](v129, -1, -1);

        v100 = v143;
        goto LABEL_31;
      }
    }

    v45(v86, v154);
    v139 = *(v82 + 8);
    v139(v75, v83);
    return (v139)(v77, v83);
  }

  else
  {
    v101 = v145;
    sub_29E2C04B4();
    v102 = sub_29E2C0504();
    v103 = sub_29E2C3A34();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v148;
    if (v104)
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v155 = v107;
      *v106 = 136446210;
      v108 = sub_29E2C4AE4();
      v110 = v45;
      v111 = v101;
      v112 = sub_29DFAA104(v108, v109, &v155);

      *(v106 + 4) = v112;
      _os_log_impl(&dword_29DE74000, v102, v103, "[%{public}s] Last menstrual period date not present", v106, 0xCu);
      sub_29DE93B3C(v107);
      MEMORY[0x29ED82140](v107, -1, -1);
      MEMORY[0x29ED82140](v106, -1, -1);

      v110(v111, v154);
      return (*(v105 + 8))(v152, v74);
    }

    else
    {

      v45(v101, v154);
      return (*(v105 + 8))(v77, v74);
    }
  }
}

uint64_t sub_29E06A2EC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a2, ObjectType, v5);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_29E06A380()
{
  v1 = v0;
  v2 = sub_29E2BF404();
  v3 = sub_29E14EC4C(v2);

  v235 = v3;
  sub_29E2BF404();
  v4 = sub_29E2BF404();
  v5 = sub_29E14EC4C(v4);

  v234 = v5;
  sub_29E06F26C(v3);

  v6 = v5;
  v223 = v0;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16))
    {
      v9 = 0;
      v11 = -1 << *(v5 + 32);
      v7 = v5 + 56;
      v12 = ~v11;
      v13 = -v11;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v10 = v14 & *(v5 + 56);
      v8 = v12;
      goto LABEL_9;
    }

LABEL_123:

    goto LABEL_125;
  }

  if (!sub_29E2C4484())
  {
    goto LABEL_123;
  }

  sub_29E2C4444();
  sub_29DE9408C(0, &qword_2A1A61D50);
  sub_29E06FCF0();
  sub_29E2C3834();
  v6 = v236;
  v7 = v237;
  v8 = v238;
  v9 = v239;
  v10 = v240;
LABEL_9:
  v15 = (v8 + 64) >> 6;
  v202 = v7;
  v204 = v6;
  v201 = v15;
  while (v6 < 0)
  {
    v20 = sub_29E2C44C4();
    if (!v20)
    {
      goto LABEL_124;
    }

    v241 = v20;
    sub_29DE9408C(0, &qword_2A1A61D50);
    swift_dynamicCast();
    v19 = aBlock;
    v208 = v10;
    v209 = v9;
    if (!aBlock)
    {
      goto LABEL_124;
    }

LABEL_20:
    v206 = v19;
    v21 = [v19 hkmc_cycleFactor] - 1;
    if (v21 <= 8 && ((0x1FBu >> v21) & 1) != 0)
    {
      v22 = sub_29DE92374(*(&off_29F3628B0 + v21));
    }

    else
    {
      v22 = MEMORY[0x29EDCA1A0];
    }

    v23 = 0;
    v214 = v22 + 56;
    v24 = 1 << *(v22 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v22 + 56);
    v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
    v216 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
    v218 = v22;
    v212 = (v24 + 63) >> 6;
    v221 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
LABEL_28:
    if (v26)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_256;
      }

      if (v28 >= v212)
      {
        break;
      }

      v26 = *(v214 + 8 * v28);
      ++v23;
      if (v26)
      {
        v23 = v28;
LABEL_33:
        v29 = *(*(v22 + 48) + (__clz(__rbit64(v26)) | (v23 << 6)));
        v30 = *(v1 + v27);
        sub_29E2BF404();
        v224 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_29E143944(0, *(v30 + 2) + 1, 1, v30);
        }

        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        if (v32 >= v31 >> 1)
        {
          v30 = sub_29E143944((v31 > 1), v32 + 1, 1, v30);
        }

        *(v30 + 2) = v32 + 1;
        v30[v32 + 32] = v29;
        v33 = *(v1 + v27);
        *(v1 + v27) = v30;
        v34 = *(v33 + 16);
        v35 = sub_29DE93FAC();
        v36 = MEMORY[0x29ED7FFF0](v34, &type metadata for AnalysisKind, v35);
        v37 = *(v33 + 16);
        v226 = v26;
        if (!v37)
        {

          goto LABEL_79;
        }

        v38 = 0;
        v39 = v33 + 32;
        while (1)
        {
          v40 = v36 + 56;
          while (1)
          {
            v41 = *(v39 + v38++);
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v41);
            v42 = sub_29E2C4A54();
            v43 = -1 << *(v36 + 32);
            v44 = v42 & ~v43;
            if (((*(v40 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              break;
            }

            v45 = ~v43;
            while (*(*(v36 + 48) + v44) != v41)
            {
              v44 = (v44 + 1) & v45;
              if (((*(v40 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            if (v38 == v37)
            {

              goto LABEL_78;
            }
          }

LABEL_47:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v241 = v36;
          if (*(v36 + 24) <= *(v36 + 16))
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_29E1493E4();
            }

            else
            {
              sub_29E147CD0();
            }

            v47 = v241;
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v41);
            v48 = sub_29E2C4A54();
            v49 = -1 << *(v47 + 32);
            v44 = v48 & ~v49;
            if ((*(v47 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
            {
              v50 = ~v49;
              do
              {
                if (*(*(v47 + 48) + v44) == v41)
                {
                  goto LABEL_267;
                }

                v44 = (v44 + 1) & v50;
              }

              while (((*(v47 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
            }
          }

          else if (isUniquelyReferenced_nonNull_native)
          {
            v47 = v36;
          }

          else
          {
            sub_29DE93F50();
            v54 = sub_29E2C4524();
            v47 = v54;
            if (*(v36 + 16))
            {
              v55 = (v54 + 56);
              v56 = ((1 << *(v47 + 32)) + 63) >> 6;
              if (v47 != v36 || v55 >= v40 + 8 * v56)
              {
                memmove(v55, (v36 + 56), 8 * v56);
              }

              v57 = 0;
              *(v47 + 16) = *(v36 + 16);
              v58 = 1 << *(v36 + 32);
              if (v58 < 64)
              {
                v59 = ~(-1 << v58);
              }

              else
              {
                v59 = -1;
              }

              v60 = v59 & *(v36 + 56);
              v61 = (v58 + 63) >> 6;
              if (!v60)
              {
                goto LABEL_69;
              }

              while (1)
              {
                v62 = __clz(__rbit64(v60));
                v60 &= v60 - 1;
                for (i = v62 | (v57 << 6); ; i = __clz(__rbit64(v65)) | (v57 << 6))
                {
                  *(*(v47 + 48) + i) = *(*(v36 + 48) + i);
                  if (v60)
                  {
                    break;
                  }

LABEL_69:
                  v64 = v57;
                  do
                  {
                    v57 = v64 + 1;
                    if (__OFADD__(v64, 1))
                    {
                      goto LABEL_263;
                    }

                    if (v57 >= v61)
                    {
                      goto LABEL_76;
                    }

                    v65 = *(v40 + 8 * v57);
                    ++v64;
                  }

                  while (!v65);
                  v60 = (v65 - 1) & v65;
                }
              }
            }

LABEL_76:
          }

          *(v47 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v44;
          *(*(v47 + 48) + v44) = v41;
          v51 = *(v47 + 16);
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            break;
          }

          *(v47 + 16) = v53;
          v36 = v47;
          if (v38 == v37)
          {

            v36 = v47;
LABEL_78:
            v27 = v221;
            v1 = v223;
            v26 = v226;
LABEL_79:
            v66 = *(v1 + v27);
            v67 = *(v66 + 16);
            sub_29E2BF404();
            v68 = MEMORY[0x29ED7FFF0](v67, &type metadata for AnalysisKind, v35);
            v69 = *(v66 + 16);
            if (v69)
            {
              v70 = 0;
              v71 = v66 + 32;
              do
              {
                v72 = v68 + 56;
                while (1)
                {
                  v73 = *(v71 + v70++);
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v73);
                  v74 = sub_29E2C4A54();
                  v75 = -1 << *(v68 + 32);
                  v76 = v74 & ~v75;
                  if (((*(v72 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
                  {
                    break;
                  }

                  v77 = ~v75;
                  while (*(*(v68 + 48) + v76) != v73)
                  {
                    v76 = (v76 + 1) & v77;
                    if (((*(v72 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
                    {
                      goto LABEL_89;
                    }
                  }

                  if (v70 == v69)
                  {

                    goto LABEL_120;
                  }
                }

LABEL_89:
                v78 = swift_isUniquelyReferenced_nonNull_native();
                v241 = v68;
                if (*(v68 + 24) <= *(v68 + 16))
                {
                  if (v78)
                  {
                    sub_29E1493E4();
                  }

                  else
                  {
                    sub_29E147CD0();
                  }

                  v79 = v241;
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v73);
                  v80 = sub_29E2C4A54();
                  v81 = -1 << *(v79 + 32);
                  v76 = v80 & ~v81;
                  if ((*(v79 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
                  {
                    v82 = ~v81;
                    do
                    {
                      if (*(*(v79 + 48) + v76) == v73)
                      {
                        goto LABEL_267;
                      }

                      v76 = (v76 + 1) & v82;
                    }

                    while (((*(v79 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) != 0);
                  }
                }

                else if (v78)
                {
                  v79 = v68;
                }

                else
                {
                  sub_29DE93F50();
                  v85 = sub_29E2C4524();
                  v79 = v85;
                  if (*(v68 + 16))
                  {
                    v86 = (v85 + 56);
                    v87 = ((1 << *(v79 + 32)) + 63) >> 6;
                    if (v79 != v68 || v86 >= v72 + 8 * v87)
                    {
                      memmove(v86, (v68 + 56), 8 * v87);
                    }

                    v88 = 0;
                    *(v79 + 16) = *(v68 + 16);
                    v89 = 1 << *(v68 + 32);
                    if (v89 < 64)
                    {
                      v90 = ~(-1 << v89);
                    }

                    else
                    {
                      v90 = -1;
                    }

                    v91 = v90 & *(v68 + 56);
                    v92 = (v89 + 63) >> 6;
                    if (!v91)
                    {
                      goto LABEL_111;
                    }

                    while (1)
                    {
                      v93 = __clz(__rbit64(v91));
                      v91 &= v91 - 1;
                      for (j = v93 | (v88 << 6); ; j = __clz(__rbit64(v96)) | (v88 << 6))
                      {
                        *(*(v79 + 48) + j) = *(*(v68 + 48) + j);
                        if (v91)
                        {
                          break;
                        }

LABEL_111:
                        v95 = v88;
                        do
                        {
                          v88 = v95 + 1;
                          if (__OFADD__(v95, 1))
                          {
                            goto LABEL_264;
                          }

                          if (v88 >= v92)
                          {
                            goto LABEL_118;
                          }

                          v96 = *(v72 + 8 * v88);
                          ++v95;
                        }

                        while (!v96);
                        v91 = (v96 - 1) & v96;
                      }
                    }
                  }

LABEL_118:
                }

                *(v79 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v76;
                *(*(v79 + 48) + v76) = v73;
                v83 = *(v79 + 16);
                v52 = __OFADD__(v83, 1);
                v84 = v83 + 1;
                if (v52)
                {
                  goto LABEL_255;
                }

                *(v79 + 16) = v84;
                v68 = v79;
              }

              while (v70 != v69);

              v68 = v79;
LABEL_120:
              v27 = v221;
              v1 = v223;
              v26 = v226;
            }

            else
            {
            }

            v26 &= v26 - 1;
            v97 = sub_29E0677B4(v36, v68);

            v22 = v218;
            v23 = v224;
            if ((v97 & 1) == 0)
            {
              v98 = *(v1 + v216);
              v232 = sub_29E070774;
              v233 = v1;
              aBlock = MEMORY[0x29EDCA5F8];
              v229 = 1107296256;
              v230 = sub_29DF4FA14;
              v231 = &unk_2A24B8FB0;
              v99 = _Block_copy(&aBlock);

              [v98 notifyObservers_];
              _Block_release(v99);
            }

            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
        goto LABEL_265;
      }
    }

    v10 = v208;
    v9 = v209;
    v7 = v202;
    v6 = v204;
    v15 = v201;
  }

  v16 = v9;
  v17 = v10;
  v18 = v9;
  if (v10)
  {
LABEL_16:
    v208 = (v17 - 1) & v17;
    v209 = v18;
    v19 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_124;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_260;
    }

    if (v18 >= v15)
    {
      break;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

LABEL_124:
  sub_29DF219B8();
LABEL_125:
  v100 = sub_29E2BF404();
  v101 = sub_29E14EC4C(v100);

  sub_29E06F26C(v101);

  v102 = v235;
  if ((v235 & 0xC000000000000001) != 0)
  {
    if (sub_29E2C4484())
    {
      sub_29E2C4444();
      sub_29DE9408C(0, &qword_2A1A61D50);
      sub_29E06FCF0();
      sub_29E2C3834();
      v102 = v241;
      v103 = v242;
      v104 = v243;
      v105 = v244;
      v106 = v245;
      goto LABEL_133;
    }
  }

  if (!*(v235 + 16))
  {
  }

  v105 = 0;
  v107 = -1 << *(v235 + 32);
  v103 = v235 + 56;
  v108 = ~v107;
  v109 = -v107;
  if (v109 < 64)
  {
    v110 = ~(-1 << v109);
  }

  else
  {
    v110 = -1;
  }

  v106 = v110 & *(v235 + 56);
  v104 = v108;
LABEL_133:
  v111 = (v104 + 64) >> 6;
  v205 = v103;
  v207 = v102;
  v203 = v111;
LABEL_135:
  if (v102 < 0)
  {
    if (!sub_29E2C44C4())
    {
      return sub_29DF219B8();
    }

    sub_29DE9408C(0, &qword_2A1A61D50);
    swift_dynamicCast();
    v115 = aBlock;
    v215 = v106;
    v217 = v105;
    if (!aBlock)
    {
      return sub_29DF219B8();
    }
  }

  else
  {
    v112 = v105;
    v113 = v106;
    for (k = v105; !v113; ++v112)
    {
      k = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_261;
      }

      if (k >= v111)
      {
        return sub_29DF219B8();
      }

      v113 = *(v103 + 8 * k);
    }

    v215 = (v113 - 1) & v113;
    v217 = k;
    v115 = *(*(v102 + 48) + ((k << 9) | (8 * __clz(__rbit64(v113)))));
    if (!v115)
    {
      return sub_29DF219B8();
    }
  }

  v213 = v115;
  v116 = [v115 hkmc_cycleFactor] - 1;
  if (v116 <= 8 && ((0x1FBu >> v116) & 1) != 0)
  {
    v117 = sub_29DE92374(*(&off_29F3628B0 + v116));
  }

  else
  {
    v117 = MEMORY[0x29EDCA1A0];
  }

  v118 = 0;
  v119 = v117 + 56;
  v120 = 1 << *(v117 + 32);
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  else
  {
    v121 = -1;
  }

  v122 = v121 & *(v117 + 56);
  v123 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v211 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
  v124 = (v120 + 63) >> 6;
  v220 = v117 + 56;
  v222 = v117;
  v225 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v219 = v124;
  while (1)
  {
    do
    {
LABEL_152:
      if (v122)
      {
        v125 = v122;
        goto LABEL_158;
      }

      do
      {
        v126 = v118 + 1;
        if (__OFADD__(v118, 1))
        {
          goto LABEL_257;
        }

        if (v126 >= v124)
        {

          v106 = v215;
          v105 = v217;
          v103 = v205;
          v102 = v207;
          v111 = v203;
          goto LABEL_135;
        }

        v125 = *(v119 + 8 * v126);
        ++v118;
      }

      while (!v125);
      v118 = v126;
LABEL_158:
      v122 = (v125 - 1) & v125;
      v127 = *(v1 + v123);
      v128 = *(v127 + 2);
    }

    while (!v128);
    v129 = 0;
    v130 = *(*(v117 + 48) + (__clz(__rbit64(v125)) | (v118 << 6)));
    while (v127[v129 + 32] != v130)
    {
      if (v128 == ++v129)
      {
        goto LABEL_152;
      }
    }

    sub_29E2BF404();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_29E14D8A0(v127);
    }

    v131 = *(v127 + 2);
    if (v131 <= v129)
    {
      goto LABEL_262;
    }

    v227 = v122;
    v132 = v131 - 1;
    memmove(&v127[v129 + 32], &v127[v129 + 33], ~v129 + v131);
    *(v127 + 2) = v132;
    v133 = *(v1 + v123);
    *(v1 + v123) = v127;
    v134 = *(v133 + 16);
    v135 = sub_29DE93FAC();
    v136 = MEMORY[0x29ED7FFF0](v134, &type metadata for AnalysisKind, v135);
    if (v134)
    {
      break;
    }

LABEL_208:
    v165 = *(v1 + v123);
    v166 = *(v165 + 16);
    sub_29E2BF404();
    v167 = MEMORY[0x29ED7FFF0](v166, &type metadata for AnalysisKind, v135);
    if (v166)
    {
      v168 = 0;
      v169 = v165 + 32;
      while (1)
      {
        v170 = v167 + 56;
        while (1)
        {
          v171 = *(v169 + v168++);
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v171);
          v172 = sub_29E2C4A54();
          v173 = -1 << *(v167 + 32);
          v174 = v172 & ~v173;
          if (((*(v170 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
          {
            break;
          }

          v175 = ~v173;
          while (*(*(v167 + 48) + v174) != v171)
          {
            v174 = (v174 + 1) & v175;
            if (((*(v170 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
            {
              goto LABEL_218;
            }
          }

          if (v168 == v166)
          {

LABEL_249:
            v1 = v223;
            v123 = v225;
            goto LABEL_250;
          }
        }

LABEL_218:
        v176 = swift_isUniquelyReferenced_nonNull_native();
        if (*(v167 + 24) <= *(v167 + 16))
        {
          if (v176)
          {
            sub_29E1493E4();
          }

          else
          {
            sub_29E147CD0();
          }

          v177 = v167;
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v171);
          v178 = sub_29E2C4A54();
          v179 = -1 << *(v167 + 32);
          v174 = v178 & ~v179;
          if ((*(v167 + 56 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174))
          {
            v180 = ~v179;
            while (*(*(v167 + 48) + v174) != v171)
            {
              v174 = (v174 + 1) & v180;
              if (((*(v167 + 56 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
              {
                goto LABEL_228;
              }
            }

            goto LABEL_267;
          }
        }

        else if (v176)
        {
          v177 = v167;
        }

        else
        {
          sub_29DE93F50();
          v183 = sub_29E2C4524();
          v177 = v183;
          if (*(v167 + 16))
          {
            v184 = (v183 + 56);
            v185 = v167 + 56;
            v186 = ((1 << *(v177 + 32)) + 63) >> 6;
            if (v177 != v167 || v184 >= v185 + 8 * v186)
            {
              memmove(v184, (v167 + 56), 8 * v186);
            }

            v187 = 0;
            *(v177 + 16) = *(v167 + 16);
            v188 = 1 << *(v167 + 32);
            if (v188 < 64)
            {
              v189 = ~(-1 << v188);
            }

            else
            {
              v189 = -1;
            }

            v190 = v189 & *(v167 + 56);
            for (m = (v188 + 63) >> 6; v190; *(*(v177 + 48) + v193) = *(*(v167 + 48) + v193))
            {
              v192 = __clz(__rbit64(v190));
              v190 &= v190 - 1;
              v193 = v192 | (v187 << 6);
LABEL_245:
              ;
            }

            v194 = v187;
            while (1)
            {
              v187 = v194 + 1;
              if (__OFADD__(v194, 1))
              {
                goto LABEL_266;
              }

              if (v187 >= m)
              {
                break;
              }

              v195 = *(v185 + 8 * v187);
              ++v194;
              if (v195)
              {
                v190 = (v195 - 1) & v195;
                v193 = __clz(__rbit64(v195)) | (v187 << 6);
                goto LABEL_245;
              }
            }
          }
        }

LABEL_228:
        *(v177 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v174;
        *(*(v177 + 48) + v174) = v171;
        v181 = *(v177 + 16);
        v52 = __OFADD__(v181, 1);
        v182 = v181 + 1;
        if (v52)
        {
          goto LABEL_259;
        }

        *(v177 + 16) = v182;
        v167 = v177;
        if (v168 == v166)
        {

          v167 = v177;
          goto LABEL_249;
        }
      }
    }

LABEL_250:
    v196 = sub_29E0677B4(v136, v167);

    v119 = v220;
    v117 = v222;
    v124 = v219;
    v122 = v227;
    if ((v196 & 1) == 0)
    {
      v197 = *(v1 + v211);
      v232 = sub_29E06FD58;
      v233 = v1;
      aBlock = MEMORY[0x29EDCA5F8];
      v229 = 1107296256;
      v230 = sub_29DF4FA14;
      v231 = &unk_2A24B8F88;
      v198 = _Block_copy(&aBlock);

      [v197 notifyObservers_];
      v199 = v198;
      v122 = v227;
      _Block_release(v199);
    }
  }

  v210 = v135;
  v137 = 0;
  v138 = v133 + 32;
  while (2)
  {
    v139 = v136 + 56;
    while (1)
    {
      v140 = *(v138 + v137++);
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v140);
      v141 = sub_29E2C4A54();
      v142 = -1 << *(v136 + 32);
      v143 = v141 & ~v142;
      if (((*(v139 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
      {
        break;
      }

      v144 = ~v142;
      while (*(*(v136 + 48) + v143) != v140)
      {
        v143 = (v143 + 1) & v144;
        if (((*(v139 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
        {
          goto LABEL_176;
        }
      }

      if (v137 == v134)
      {

LABEL_207:
        v1 = v223;
        v123 = v225;
        v135 = v210;
        goto LABEL_208;
      }
    }

LABEL_176:
    v145 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v136 + 24) <= *(v136 + 16))
    {
      if (v145)
      {
        sub_29E1493E4();
      }

      else
      {
        sub_29E147CD0();
      }

      v146 = v136;
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v140);
      v147 = sub_29E2C4A54();
      v148 = -1 << *(v136 + 32);
      v143 = v147 & ~v148;
      if ((*(v136 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143))
      {
        v149 = ~v148;
        do
        {
          if (*(*(v136 + 48) + v143) == v140)
          {
            goto LABEL_267;
          }

          v143 = (v143 + 1) & v149;
        }

        while (((*(v136 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) != 0);
      }

LABEL_186:
      *(v146 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v143;
      *(*(v146 + 48) + v143) = v140;
      v150 = *(v146 + 16);
      v52 = __OFADD__(v150, 1);
      v151 = v150 + 1;
      if (v52)
      {
        goto LABEL_258;
      }

      *(v146 + 16) = v151;
      v136 = v146;
      if (v137 == v134)
      {

        v136 = v146;
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  if (v145)
  {
    v146 = v136;
    goto LABEL_186;
  }

  sub_29DE93F50();
  v152 = sub_29E2C4524();
  v146 = v152;
  if (!*(v136 + 16))
  {
LABEL_205:

    goto LABEL_186;
  }

  v153 = (v152 + 56);
  v154 = v136 + 56;
  v155 = ((1 << *(v146 + 32)) + 63) >> 6;
  if (v146 != v136 || v153 >= v154 + 8 * v155)
  {
    memmove(v153, (v136 + 56), 8 * v155);
  }

  v156 = 0;
  *(v146 + 16) = *(v136 + 16);
  v157 = 1 << *(v136 + 32);
  if (v157 < 64)
  {
    v158 = ~(-1 << v157);
  }

  else
  {
    v158 = -1;
  }

  v159 = v158 & *(v136 + 56);
  for (n = (v157 + 63) >> 6; v159; *(*(v146 + 48) + v162) = *(*(v136 + 48) + v162))
  {
    v161 = __clz(__rbit64(v159));
    v159 &= v159 - 1;
    v162 = v161 | (v156 << 6);
LABEL_203:
    ;
  }

  v163 = v156;
  while (1)
  {
    v156 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      break;
    }

    if (v156 >= n)
    {
      goto LABEL_205;
    }

    v164 = *(v154 + 8 * v156);
    ++v163;
    if (v164)
    {
      v159 = (v164 - 1) & v164;
      v162 = __clz(__rbit64(v164)) | (v156 << 6);
      goto LABEL_203;
    }
  }

LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E06B8C8()
{
  v1 = v0;
  v2 = sub_29E2BF404();
  v3 = sub_29E14EC4C(v2);

  v246 = v3;
  v4 = swift_allocObject();
  sub_29E2BF404();
  v5 = sub_29E2BF404();
  v6 = sub_29E14EC4C(v5);

  v212 = v4;
  *(v4 + 16) = v6;
  v7 = (v4 + 16);
  sub_29E06F26C(v3);

  if ((*(v4 + 16) & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    v8 = sub_29E2C4484();

    v235 = v1;
    if (!v8)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v235 = v1;
    if (!*(*(v4 + 16) + 16))
    {
      goto LABEL_126;
    }
  }

  v211 = v7;
  v9 = *v7;
  if ((*v7 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E06FCF0();
    sub_29E2C3834();
    v10 = v247;
    v11 = v248;
    v12 = v249;
    v13 = v250;
    v14 = v251;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v16 = ~v15;
    v17 = -v15;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v14 = v18 & *(v9 + 56);
    v10 = sub_29E2BF404();
    v12 = v16;
    v13 = 0;
  }

  v19 = (v12 + 64) >> 6;
  v214 = v11;
  v216 = v10;
  v213 = v19;
  while (v10 < 0)
  {
    v24 = sub_29E2C44C4();
    if (!v24)
    {
      goto LABEL_125;
    }

    v252 = v24;
    sub_29DE9408C(0, &qword_2A1A61D50);
    swift_dynamicCast();
    v23 = aBlock;
    v220 = v14;
    v221 = v13;
    if (!aBlock)
    {
      goto LABEL_125;
    }

LABEL_22:
    v218 = v23;
    v25 = [v23 hkmc_cycleFactor] - 1;
    if (v25 <= 8 && ((0x1FBu >> v25) & 1) != 0)
    {
      v26 = sub_29DE92374(*(&off_29F3628B0 + v25));
    }

    else
    {
      v26 = MEMORY[0x29EDCA1A0];
    }

    v27 = 0;
    v226 = v26 + 56;
    v28 = 1 << *(v26 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v26 + 56);
    v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
    v228 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
    v230 = v26;
    v224 = (v28 + 63) >> 6;
    v233 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
LABEL_30:
    if (v30)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_257;
      }

      if (v32 >= v224)
      {
        break;
      }

      v30 = *(v226 + 8 * v32);
      ++v27;
      if (v30)
      {
        v27 = v32;
LABEL_35:
        v33 = *(*(v26 + 48) + (__clz(__rbit64(v30)) | (v27 << 6)));
        v34 = *(v1 + v31);
        sub_29E2BF404();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_29E143944(0, *(v34 + 2) + 1, 1, v34);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        v236 = v27;
        if (v36 >= v35 >> 1)
        {
          v34 = sub_29E143944((v35 > 1), v36 + 1, 1, v34);
        }

        *(v34 + 2) = v36 + 1;
        v34[v36 + 32] = v33;
        v37 = *(v1 + v31);
        *(v1 + v31) = v34;
        v38 = *(v37 + 16);
        v39 = sub_29DE93FAC();
        v40 = MEMORY[0x29ED7FFF0](v38, &type metadata for AnalysisKind, v39);
        v41 = *(v37 + 16);
        v238 = v30;
        if (!v41)
        {

          goto LABEL_81;
        }

        v42 = 0;
        v43 = v37 + 32;
        while (1)
        {
          v44 = v40 + 56;
          while (1)
          {
            v45 = *(v43 + v42++);
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v45);
            v46 = sub_29E2C4A54();
            v47 = -1 << *(v40 + 32);
            v48 = v46 & ~v47;
            if (((*(v44 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              break;
            }

            v49 = ~v47;
            while (*(*(v40 + 48) + v48) != v45)
            {
              v48 = (v48 + 1) & v49;
              if (((*(v44 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            if (v42 == v41)
            {

              goto LABEL_80;
            }
          }

LABEL_49:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v252 = v40;
          if (*(v40 + 24) <= *(v40 + 16))
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_29E1493E4();
            }

            else
            {
              sub_29E147CD0();
            }

            v51 = v252;
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v45);
            v52 = sub_29E2C4A54();
            v53 = -1 << *(v51 + 32);
            v48 = v52 & ~v53;
            if ((*(v51 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
            {
              v54 = ~v53;
              do
              {
                if (*(*(v51 + 48) + v48) == v45)
                {
                  goto LABEL_268;
                }

                v48 = (v48 + 1) & v54;
              }

              while (((*(v51 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0);
            }
          }

          else if (isUniquelyReferenced_nonNull_native)
          {
            v51 = v40;
          }

          else
          {
            sub_29DE93F50();
            v58 = sub_29E2C4524();
            v51 = v58;
            if (*(v40 + 16))
            {
              v59 = (v58 + 56);
              v60 = ((1 << *(v51 + 32)) + 63) >> 6;
              if (v51 != v40 || v59 >= v44 + 8 * v60)
              {
                memmove(v59, (v40 + 56), 8 * v60);
              }

              v61 = 0;
              *(v51 + 16) = *(v40 + 16);
              v62 = 1 << *(v40 + 32);
              if (v62 < 64)
              {
                v63 = ~(-1 << v62);
              }

              else
              {
                v63 = -1;
              }

              v64 = v63 & *(v40 + 56);
              v65 = (v62 + 63) >> 6;
              if (!v64)
              {
                goto LABEL_71;
              }

              while (1)
              {
                v66 = __clz(__rbit64(v64));
                v64 &= v64 - 1;
                for (i = v66 | (v61 << 6); ; i = __clz(__rbit64(v69)) | (v61 << 6))
                {
                  *(*(v51 + 48) + i) = *(*(v40 + 48) + i);
                  if (v64)
                  {
                    break;
                  }

LABEL_71:
                  v68 = v61;
                  do
                  {
                    v61 = v68 + 1;
                    if (__OFADD__(v68, 1))
                    {
                      goto LABEL_264;
                    }

                    if (v61 >= v65)
                    {
                      goto LABEL_78;
                    }

                    v69 = *(v44 + 8 * v61);
                    ++v68;
                  }

                  while (!v69);
                  v64 = (v69 - 1) & v69;
                }
              }
            }

LABEL_78:
          }

          *(v51 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v48;
          *(*(v51 + 48) + v48) = v45;
          v55 = *(v51 + 16);
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            break;
          }

          *(v51 + 16) = v57;
          v40 = v51;
          if (v42 == v41)
          {

            v40 = v51;
LABEL_80:
            v31 = v233;
            v1 = v235;
            v30 = v238;
LABEL_81:
            v70 = *(v1 + v31);
            v71 = *(v70 + 16);
            sub_29E2BF404();
            v72 = MEMORY[0x29ED7FFF0](v71, &type metadata for AnalysisKind, v39);
            v73 = *(v70 + 16);
            if (v73)
            {
              v74 = 0;
              v75 = v70 + 32;
              do
              {
                v76 = v72 + 56;
                while (1)
                {
                  v77 = *(v75 + v74++);
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v77);
                  v78 = sub_29E2C4A54();
                  v79 = -1 << *(v72 + 32);
                  v80 = v78 & ~v79;
                  if (((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                  {
                    break;
                  }

                  v81 = ~v79;
                  while (*(*(v72 + 48) + v80) != v77)
                  {
                    v80 = (v80 + 1) & v81;
                    if (((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                    {
                      goto LABEL_91;
                    }
                  }

                  if (v74 == v73)
                  {

                    goto LABEL_122;
                  }
                }

LABEL_91:
                v82 = swift_isUniquelyReferenced_nonNull_native();
                v252 = v72;
                if (*(v72 + 24) <= *(v72 + 16))
                {
                  if (v82)
                  {
                    sub_29E1493E4();
                  }

                  else
                  {
                    sub_29E147CD0();
                  }

                  v83 = v252;
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v77);
                  v84 = sub_29E2C4A54();
                  v85 = -1 << *(v83 + 32);
                  v80 = v84 & ~v85;
                  if ((*(v83 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
                  {
                    v86 = ~v85;
                    do
                    {
                      if (*(*(v83 + 48) + v80) == v77)
                      {
                        goto LABEL_268;
                      }

                      v80 = (v80 + 1) & v86;
                    }

                    while (((*(v83 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0);
                  }
                }

                else if (v82)
                {
                  v83 = v72;
                }

                else
                {
                  sub_29DE93F50();
                  v89 = sub_29E2C4524();
                  v83 = v89;
                  if (*(v72 + 16))
                  {
                    v90 = (v89 + 56);
                    v91 = ((1 << *(v83 + 32)) + 63) >> 6;
                    if (v83 != v72 || v90 >= v76 + 8 * v91)
                    {
                      memmove(v90, (v72 + 56), 8 * v91);
                    }

                    v92 = 0;
                    *(v83 + 16) = *(v72 + 16);
                    v93 = 1 << *(v72 + 32);
                    if (v93 < 64)
                    {
                      v94 = ~(-1 << v93);
                    }

                    else
                    {
                      v94 = -1;
                    }

                    v95 = v94 & *(v72 + 56);
                    v96 = (v93 + 63) >> 6;
                    if (!v95)
                    {
                      goto LABEL_113;
                    }

                    while (1)
                    {
                      v97 = __clz(__rbit64(v95));
                      v95 &= v95 - 1;
                      for (j = v97 | (v92 << 6); ; j = __clz(__rbit64(v100)) | (v92 << 6))
                      {
                        *(*(v83 + 48) + j) = *(*(v72 + 48) + j);
                        if (v95)
                        {
                          break;
                        }

LABEL_113:
                        v99 = v92;
                        do
                        {
                          v92 = v99 + 1;
                          if (__OFADD__(v99, 1))
                          {
                            goto LABEL_265;
                          }

                          if (v92 >= v96)
                          {
                            goto LABEL_120;
                          }

                          v100 = *(v76 + 8 * v92);
                          ++v99;
                        }

                        while (!v100);
                        v95 = (v100 - 1) & v100;
                      }
                    }
                  }

LABEL_120:
                }

                *(v83 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v80;
                *(*(v83 + 48) + v80) = v77;
                v87 = *(v83 + 16);
                v56 = __OFADD__(v87, 1);
                v88 = v87 + 1;
                if (v56)
                {
                  goto LABEL_256;
                }

                *(v83 + 16) = v88;
                v72 = v83;
              }

              while (v74 != v73);

              v72 = v83;
LABEL_122:
              v31 = v233;
              v1 = v235;
              v30 = v238;
            }

            else
            {
            }

            v30 &= v30 - 1;
            v101 = sub_29E0677B4(v40, v72);

            v26 = v230;
            v27 = v236;
            if ((v101 & 1) == 0)
            {
              v102 = *(v1 + v228);
              v244 = sub_29E070774;
              v245 = v1;
              aBlock = MEMORY[0x29EDCA5F8];
              v241 = 1107296256;
              v242 = sub_29DF4FA14;
              v243 = &unk_2A24B90F0;
              v103 = _Block_copy(&aBlock);

              [v102 notifyObservers_];
              _Block_release(v103);
            }

            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
        goto LABEL_266;
      }
    }

    v14 = v220;
    v13 = v221;
    v11 = v214;
    v10 = v216;
    v19 = v213;
  }

  v20 = v13;
  v21 = v14;
  v22 = v13;
  if (v14)
  {
LABEL_18:
    v220 = (v21 - 1) & v21;
    v221 = v22;
    v23 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v23)
    {
      goto LABEL_125;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_261;
    }

    if (v22 >= v19)
    {
      break;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_18;
    }
  }

LABEL_125:
  sub_29DF219B8();
  v104 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  v105 = swift_allocObject();
  *(v105 + 16) = v1;
  *(v105 + 24) = v212;
  v244 = sub_29E070104;
  v245 = v105;
  aBlock = MEMORY[0x29EDCA5F8];
  v241 = 1107296256;
  v242 = sub_29DF4FA14;
  v243 = &unk_2A24B9078;
  v106 = _Block_copy(&aBlock);

  [v104 notifyObservers_];
  _Block_release(v106);
  v7 = v211;
LABEL_126:
  v107 = sub_29E2BF404();
  v108 = sub_29E14EC4C(v107);

  swift_beginAccess();
  *v7 = v108;

  v109 = sub_29E2BF404();
  sub_29E06F26C(v109);

  v110 = v246;
  if ((v246 & 0xC000000000000001) != 0)
  {
    if (sub_29E2C4484())
    {
      sub_29E2C4444();
      sub_29DE9408C(0, &qword_2A1A61D50);
      sub_29E06FCF0();
      sub_29E2C3834();
      v110 = v252;
      v111 = v253;
      v112 = v254;
      v113 = v255;
      v114 = v256;
      goto LABEL_134;
    }

LABEL_254:
  }

  if (!*(v246 + 16))
  {
    goto LABEL_254;
  }

  v113 = 0;
  v115 = -1 << *(v246 + 32);
  v111 = v246 + 56;
  v116 = ~v115;
  v117 = -v115;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  else
  {
    v118 = -1;
  }

  v114 = v118 & *(v246 + 56);
  v112 = v116;
LABEL_134:
  v119 = (v112 + 64) >> 6;
  v217 = v111;
  v219 = v110;
  v215 = v119;
LABEL_136:
  if (v110 < 0)
  {
    if (!sub_29E2C44C4() || (sub_29DE9408C(0, &qword_2A1A61D50), swift_dynamicCast(), v123 = aBlock, v227 = v114, v229 = v113, !aBlock))
    {
LABEL_253:
      sub_29DF219B8();
      v208 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
      v244 = sub_29E070134;
      v245 = v1;
      aBlock = MEMORY[0x29EDCA5F8];
      v241 = 1107296256;
      v242 = sub_29DF4FA14;
      v243 = &unk_2A24B90A0;
      v209 = _Block_copy(&aBlock);

      [v208 notifyObservers_];
      _Block_release(v209);
    }
  }

  else
  {
    v120 = v113;
    v121 = v114;
    for (k = v113; !v121; ++v120)
    {
      k = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        goto LABEL_262;
      }

      if (k >= v119)
      {
        goto LABEL_253;
      }

      v121 = *(v111 + 8 * k);
    }

    v227 = (v121 - 1) & v121;
    v229 = k;
    v123 = *(*(v110 + 48) + ((k << 9) | (8 * __clz(__rbit64(v121)))));
    if (!v123)
    {
      goto LABEL_253;
    }
  }

  v225 = v123;
  v124 = [v123 hkmc_cycleFactor] - 1;
  if (v124 <= 8 && ((0x1FBu >> v124) & 1) != 0)
  {
    v125 = sub_29DE92374(*(&off_29F3628B0 + v124));
  }

  else
  {
    v125 = MEMORY[0x29EDCA1A0];
  }

  v126 = 0;
  v127 = v125 + 56;
  v128 = 1 << *(v125 + 32);
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  else
  {
    v129 = -1;
  }

  v130 = v129 & *(v125 + 56);
  v131 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v223 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
  v132 = (v128 + 63) >> 6;
  v232 = v125 + 56;
  v234 = v125;
  v237 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v231 = v132;
  while (1)
  {
    do
    {
LABEL_153:
      if (v130)
      {
        v133 = v130;
        goto LABEL_159;
      }

      do
      {
        v134 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_258;
        }

        if (v134 >= v132)
        {

          v114 = v227;
          v113 = v229;
          v111 = v217;
          v110 = v219;
          v119 = v215;
          goto LABEL_136;
        }

        v133 = *(v127 + 8 * v134);
        ++v126;
      }

      while (!v133);
      v126 = v134;
LABEL_159:
      v130 = (v133 - 1) & v133;
      v135 = *(v1 + v131);
      v136 = *(v135 + 2);
    }

    while (!v136);
    v137 = 0;
    v138 = *(*(v125 + 48) + (__clz(__rbit64(v133)) | (v126 << 6)));
    while (v135[v137 + 32] != v138)
    {
      if (v136 == ++v137)
      {
        goto LABEL_153;
      }
    }

    sub_29E2BF404();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v135 = sub_29E14D8A0(v135);
    }

    v139 = *(v135 + 2);
    if (v139 <= v137)
    {
      goto LABEL_263;
    }

    v239 = v130;
    v140 = v139 - 1;
    memmove(&v135[v137 + 32], &v135[v137 + 33], ~v137 + v139);
    *(v135 + 2) = v140;
    v141 = *(v1 + v131);
    *(v1 + v131) = v135;
    v142 = *(v141 + 16);
    v143 = sub_29DE93FAC();
    v144 = MEMORY[0x29ED7FFF0](v142, &type metadata for AnalysisKind, v143);
    if (v142)
    {
      break;
    }

LABEL_209:
    v173 = *(v1 + v131);
    v174 = *(v173 + 16);
    sub_29E2BF404();
    v175 = MEMORY[0x29ED7FFF0](v174, &type metadata for AnalysisKind, v143);
    if (v174)
    {
      v176 = 0;
      v177 = v173 + 32;
      while (1)
      {
        v178 = v175 + 56;
        while (1)
        {
          v179 = *(v177 + v176++);
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v179);
          v180 = sub_29E2C4A54();
          v181 = -1 << *(v175 + 32);
          v182 = v180 & ~v181;
          if (((*(v178 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182) & 1) == 0)
          {
            break;
          }

          v183 = ~v181;
          while (*(*(v175 + 48) + v182) != v179)
          {
            v182 = (v182 + 1) & v183;
            if (((*(v178 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182) & 1) == 0)
            {
              goto LABEL_219;
            }
          }

          if (v176 == v174)
          {

LABEL_250:
            v1 = v235;
            goto LABEL_251;
          }
        }

LABEL_219:
        v184 = swift_isUniquelyReferenced_nonNull_native();
        if (*(v175 + 24) <= *(v175 + 16))
        {
          if (v184)
          {
            sub_29E1493E4();
          }

          else
          {
            sub_29E147CD0();
          }

          v185 = v175;
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v179);
          v186 = sub_29E2C4A54();
          v187 = -1 << *(v175 + 32);
          v182 = v186 & ~v187;
          if ((*(v175 + 56 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182))
          {
            v188 = ~v187;
            while (*(*(v175 + 48) + v182) != v179)
            {
              v182 = (v182 + 1) & v188;
              if (((*(v175 + 56 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182) & 1) == 0)
              {
                goto LABEL_229;
              }
            }

            goto LABEL_268;
          }
        }

        else if (v184)
        {
          v185 = v175;
        }

        else
        {
          sub_29DE93F50();
          v191 = sub_29E2C4524();
          v185 = v191;
          if (*(v175 + 16))
          {
            v192 = (v191 + 56);
            v193 = v175 + 56;
            v194 = ((1 << *(v185 + 32)) + 63) >> 6;
            if (v185 != v175 || v192 >= v193 + 8 * v194)
            {
              memmove(v192, (v175 + 56), 8 * v194);
            }

            v195 = 0;
            *(v185 + 16) = *(v175 + 16);
            v196 = 1 << *(v175 + 32);
            if (v196 < 64)
            {
              v197 = ~(-1 << v196);
            }

            else
            {
              v197 = -1;
            }

            v198 = v197 & *(v175 + 56);
            for (m = (v196 + 63) >> 6; v198; *(*(v185 + 48) + v201) = *(*(v175 + 48) + v201))
            {
              v200 = __clz(__rbit64(v198));
              v198 &= v198 - 1;
              v201 = v200 | (v195 << 6);
LABEL_246:
              ;
            }

            v202 = v195;
            while (1)
            {
              v195 = v202 + 1;
              if (__OFADD__(v202, 1))
              {
                goto LABEL_267;
              }

              if (v195 >= m)
              {
                break;
              }

              v203 = *(v193 + 8 * v195);
              ++v202;
              if (v203)
              {
                v198 = (v203 - 1) & v203;
                v201 = __clz(__rbit64(v203)) | (v195 << 6);
                goto LABEL_246;
              }
            }
          }
        }

LABEL_229:
        *(v185 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v182;
        *(*(v185 + 48) + v182) = v179;
        v189 = *(v185 + 16);
        v56 = __OFADD__(v189, 1);
        v190 = v189 + 1;
        if (v56)
        {
          goto LABEL_260;
        }

        *(v185 + 16) = v190;
        v175 = v185;
        if (v176 == v174)
        {

          v175 = v185;
          goto LABEL_250;
        }
      }
    }

LABEL_251:
    v204 = sub_29E0677B4(v144, v175);

    v127 = v232;
    v125 = v234;
    v131 = v237;
    v130 = v239;
    v132 = v231;
    if ((v204 & 1) == 0)
    {
      v205 = *(v1 + v223);
      v244 = sub_29E070774;
      v245 = v1;
      aBlock = MEMORY[0x29EDCA5F8];
      v241 = 1107296256;
      v242 = sub_29DF4FA14;
      v243 = &unk_2A24B90C8;
      v206 = _Block_copy(&aBlock);

      [v205 notifyObservers_];
      v207 = v206;
      v130 = v239;
      _Block_release(v207);
    }
  }

  v222 = v143;
  v145 = 0;
  v146 = v141 + 32;
  while (2)
  {
    v147 = v144 + 56;
    while (1)
    {
      v148 = *(v146 + v145++);
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v148);
      v149 = sub_29E2C4A54();
      v150 = -1 << *(v144 + 32);
      v151 = v149 & ~v150;
      if (((*(v147 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
      {
        break;
      }

      v152 = ~v150;
      while (*(*(v144 + 48) + v151) != v148)
      {
        v151 = (v151 + 1) & v152;
        if (((*(v147 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
        {
          goto LABEL_177;
        }
      }

      if (v145 == v142)
      {

LABEL_208:
        v1 = v235;
        v131 = v237;
        v143 = v222;
        goto LABEL_209;
      }
    }

LABEL_177:
    v153 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v144 + 24) <= *(v144 + 16))
    {
      if (v153)
      {
        sub_29E1493E4();
      }

      else
      {
        sub_29E147CD0();
      }

      v154 = v144;
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v148);
      v155 = sub_29E2C4A54();
      v156 = -1 << *(v144 + 32);
      v151 = v155 & ~v156;
      if ((*(v144 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151))
      {
        v157 = ~v156;
        do
        {
          if (*(*(v144 + 48) + v151) == v148)
          {
            goto LABEL_268;
          }

          v151 = (v151 + 1) & v157;
        }

        while (((*(v144 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) != 0);
      }

LABEL_187:
      *(v154 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v151;
      *(*(v154 + 48) + v151) = v148;
      v158 = *(v154 + 16);
      v56 = __OFADD__(v158, 1);
      v159 = v158 + 1;
      if (v56)
      {
        goto LABEL_259;
      }

      *(v154 + 16) = v159;
      v144 = v154;
      if (v145 == v142)
      {

        v144 = v154;
        goto LABEL_208;
      }

      continue;
    }

    break;
  }

  if (v153)
  {
    v154 = v144;
    goto LABEL_187;
  }

  sub_29DE93F50();
  v160 = sub_29E2C4524();
  v154 = v160;
  if (!*(v144 + 16))
  {
LABEL_206:

    goto LABEL_187;
  }

  v161 = (v160 + 56);
  v162 = v144 + 56;
  v163 = ((1 << *(v154 + 32)) + 63) >> 6;
  if (v154 != v144 || v161 >= v162 + 8 * v163)
  {
    memmove(v161, (v144 + 56), 8 * v163);
  }

  v164 = 0;
  *(v154 + 16) = *(v144 + 16);
  v165 = 1 << *(v144 + 32);
  if (v165 < 64)
  {
    v166 = ~(-1 << v165);
  }

  else
  {
    v166 = -1;
  }

  v167 = v166 & *(v144 + 56);
  for (n = (v165 + 63) >> 6; v167; *(*(v154 + 48) + v170) = *(*(v144 + 48) + v170))
  {
    v169 = __clz(__rbit64(v167));
    v167 &= v167 - 1;
    v170 = v169 | (v164 << 6);
LABEL_204:
    ;
  }

  v171 = v164;
  while (1)
  {
    v164 = v171 + 1;
    if (__OFADD__(v171, 1))
    {
      break;
    }

    if (v164 >= n)
    {
      goto LABEL_206;
    }

    v172 = *(v162 + 8 * v164);
    ++v171;
    if (v172)
    {
      v167 = (v172 - 1) & v172;
      v170 = __clz(__rbit64(v172)) | (v164 << 6);
      goto LABEL_204;
    }
  }

LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E06CFE0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29E15B414(a2, MEMORY[0x29EDCA190]);
  }

  return swift_unknownObjectRelease();
}

void sub_29E06D050()
{
  v1 = v0;
  v2 = sub_29E2BF404();
  v3 = sub_29E14EC4C(v2);

  v4 = swift_allocObject();
  v5 = sub_29E2BF404();
  v6 = sub_29E14EC4C(v5);

  *(v4 + 16) = v6;
  v7 = (v4 + 16);
  sub_29E06F26C(v3);

  if ((*(v4 + 16) & 0xC000000000000001) == 0)
  {
    if (*(*(v4 + 16) + 16))
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  sub_29E2BF404();
  v8 = sub_29E2C4484();

  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_3:
  v9 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v4;
  aBlock[4] = sub_29E0700D4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF4FA14;
  aBlock[3] = &unk_2A24B9028;
  v11 = _Block_copy(aBlock);

  [v9 notifyObservers_];
  _Block_release(v11);
  v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors;
  v12 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v13 = *(v12 + 16);
  sub_29E2BF404();
  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x29EDCA190];
    do
    {
      v16 = v14;
      while (1)
      {
        if (v16 >= *(v12 + 16))
        {
          __break(1u);
          return;
        }

        v28 = *(v12 + 32 + 16 * v16);
        v14 = v16 + 1;
        v17 = v28;
        v18 = *(&v28 + 1);
        sub_29E06FD60(v17, v7);
        if (v19)
        {
          break;
        }

        ++v16;
        if (v13 == v14)
        {
          goto LABEL_21;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_29E180FA4(0, *(v15 + 16) + 1, 1);
        v15 = aBlock[0];
      }

      v21 = v28;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_29E180FA4((v22 > 1), v23 + 1, 1);
        v21 = v28;
        v15 = aBlock[0];
      }

      *(v15 + 16) = v23 + 1;
      *(v15 + 16 * v23 + 32) = v21;
    }

    while (v13 - 1 != v16);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

LABEL_21:

  v24 = *(v1 + v27);
  *(v1 + v27) = v15;
  sub_29E06D70C(v24);

  v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors;
  v26 = sub_29E2BF404();
  *(v1 + v25) = sub_29E068EA0(v26, v7);
  sub_29E06B8C8();
}

uint64_t sub_29E06D3CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_beginAccess();
    v7 = sub_29E2BF404();
    v8 = sub_29E06F1BC(v7);

    a4(a2, v8);
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

void sub_29E06D4B4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E06FCF0();
    sub_29E2C3834();
    v5 = v17;
    v4 = v18;
    v6 = v19;
    v7 = v20;
    v8 = v21;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v5 = *a2;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_29E2C44C4() || (sub_29DE9408C(0, &qword_2A1A61D50), swift_dynamicCast(), (v13 = v22) == 0))
    {
LABEL_18:
      sub_29DF219B8();

      return;
    }

LABEL_9:
    sub_29DE9408C(0, &qword_2A1A619F0);
    v14 = sub_29E2C40D4();

    if (v14)
    {
      goto LABEL_18;
    }
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v16 = *(v4 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}