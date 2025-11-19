uint64_t sub_29D647C14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D648F5C();
  result = sub_29D6604F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_29D660724();
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D65FFA4();
      result = sub_29D660744();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_29D647E40(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D6604B4())
  {
    v4 = sub_29D5F0640();
    v5 = sub_29D649008(&qword_2A1A1E708, sub_29D5F0640);
    result = MEMORY[0x29ED62490](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x29ED62900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29D646AF0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_29D6604B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D647FA0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D646D08(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void sub_29D648020()
{
  if (!qword_2A17AD3B0)
  {
    type metadata accessor for HearingTestRescindedTileActionHandler();
    sub_29D649008(&qword_2A17AD3B8, type metadata accessor for HearingTestRescindedTileActionHandler);
    v0 = sub_29D65E814();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD3B0);
    }
  }
}

uint64_t sub_29D6480B4()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v88[-v9];
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v88[-v13];
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v88[-v16];
  v18 = *MEMORY[0x29EDBA5A0];
  v19 = sub_29D65F264();
  if ((sub_29D65F244() & 1) == 0)
  {
    sub_29D65F2E4();
    v22 = sub_29D65F2F4();
    v23 = sub_29D660214();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v97 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v97);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v97);
      _os_log_impl(&dword_29D5D7000, v22, v23, "[%s.%s]: Feed item will not be created given onboarding and feature enabled status", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v25, -1, -1);
      MEMORY[0x29ED63350](v24, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v6, v0);
    return 0;
  }

  v20 = *MEMORY[0x29EDBA600];
  v21 = v19;
  if ([v21 isRequirementSatisfiedWithIdentifier_])
  {
    if ([v21 isRequirementSatisfiedWithIdentifier_])
    {
      if ([v21 isRequirementSatisfiedWithIdentifier_])
      {

        return 0;
      }

      sub_29D65F2E4();
      v58 = sub_29D65F2F4();
      v59 = sub_29D660214();
      if (os_log_type_enabled(v58, v59))
      {
        v94 = v0;
        v95 = v1;
        v60 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v97 = v92;
        *v60 = 136315650;
        *(v60 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v97);
        *(v60 + 12) = 2080;
        *(v60 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v97);
        *(v60 + 22) = 2080;
        v61 = [v21 unsatisfiedRequirementIdentifiers];
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v62 = sub_29D660034();

        v63 = *(v62 + 16);
        if (v63)
        {
          LODWORD(v91) = v59;
          v93 = v21;
          v96 = MEMORY[0x29EDCA190];
          sub_29D5F8EB8(0, v63, 0);
          v64 = 32;
          v65 = v96;
          do
          {
            v66 = *(v62 + v64);
            v67 = sub_29D65FF64();
            v96 = v65;
            v70 = *(v65 + 16);
            v69 = *(v65 + 24);
            if (v70 >= v69 >> 1)
            {
              v90 = v67;
              v72 = v68;
              sub_29D5F8EB8((v69 > 1), v70 + 1, 1);
              v68 = v72;
              v67 = v90;
              v65 = v96;
            }

            *(v65 + 16) = v70 + 1;
            v71 = v65 + 16 * v70;
            *(v71 + 32) = v67;
            *(v71 + 40) = v68;
            v64 += 8;
            --v63;
          }

          while (v63);

          v21 = v93;
          LOBYTE(v59) = v91;
        }

        else
        {

          v65 = MEMORY[0x29EDCA190];
        }

        v96 = v65;
        sub_29D649050(0, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
        sub_29D6490A0();
        v83 = sub_29D65FEE4();
        v85 = v84;

        v86 = sub_29D64A1D0(v83, v85, &v97);

        *(v60 + 24) = v86;
        _os_log_impl(&dword_29D5D7000, v58, v59, "[%s.%s]: Returning regionGated state from unavailability %s", v60, 0x20u);
        v41 = 3;
        v87 = v92;
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v87, -1, -1);
        MEMORY[0x29ED63350](v60, -1, -1);

        (*(v95 + 8))(v10, v94);
      }

      else
      {

        (*(v1 + 8))(v10, v0);
        return 3;
      }
    }

    else
    {
      sub_29D65F2E4();
      v43 = sub_29D65F2F4();
      v44 = sub_29D660214();
      if (os_log_type_enabled(v43, v44))
      {
        v94 = v0;
        v95 = v1;
        v45 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v97 = v92;
        *v45 = 136315650;
        *(v45 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v97);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v97);
        *(v45 + 22) = 2080;
        v46 = [v21 unsatisfiedRequirementIdentifiers];
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v47 = sub_29D660034();

        v48 = *(v47 + 16);
        if (v48)
        {
          LODWORD(v91) = v44;
          v93 = v21;
          v96 = MEMORY[0x29EDCA190];
          sub_29D5F8EB8(0, v48, 0);
          v49 = 32;
          v50 = v96;
          do
          {
            v51 = *(v47 + v49);
            v52 = sub_29D65FF64();
            v96 = v50;
            v55 = *(v50 + 16);
            v54 = *(v50 + 24);
            if (v55 >= v54 >> 1)
            {
              v90 = v52;
              v57 = v53;
              sub_29D5F8EB8((v54 > 1), v55 + 1, 1);
              v53 = v57;
              v52 = v90;
              v50 = v96;
            }

            *(v50 + 16) = v55 + 1;
            v56 = v50 + 16 * v55;
            *(v56 + 32) = v52;
            *(v56 + 40) = v53;
            v49 += 8;
            --v48;
          }

          while (v48);

          v21 = v93;
          LOBYTE(v44) = v91;
        }

        else
        {

          v50 = MEMORY[0x29EDCA190];
        }

        v96 = v50;
        sub_29D649050(0, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
        sub_29D6490A0();
        v78 = sub_29D65FEE4();
        v80 = v79;

        v81 = sub_29D64A1D0(v78, v80, &v97);

        *(v45 + 24) = v81;
        _os_log_impl(&dword_29D5D7000, v43, v44, "[%s.%s]: Returning seedExpiry state from unavailability %s", v45, 0x20u);
        v82 = v92;
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v82, -1, -1);
        MEMORY[0x29ED63350](v45, -1, -1);

        (*(v95 + 8))(v14, v94);
        return 2;
      }

      else
      {

        (*(v1 + 8))(v14, v0);
        return 2;
      }
    }
  }

  else
  {
    sub_29D65F2E4();
    v26 = sub_29D65F2F4();
    v27 = sub_29D660214();
    if (os_log_type_enabled(v26, v27))
    {
      v94 = v0;
      v95 = v1;
      v28 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v97 = v92;
      *v28 = 136315650;
      *(v28 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v97);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v97);
      *(v28 + 22) = 2080;
      v29 = [v21 unsatisfiedRequirementIdentifiers];
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v30 = sub_29D660034();

      v31 = *(v30 + 16);
      if (v31)
      {
        v89 = v27;
        v90 = v28;
        v91 = v26;
        v93 = v21;
        v96 = MEMORY[0x29EDCA190];
        sub_29D5F8EB8(0, v31, 0);
        v32 = 32;
        v33 = v96;
        do
        {
          v34 = *(v30 + v32);
          v35 = sub_29D65FF64();
          v37 = v36;
          v96 = v33;
          v39 = *(v33 + 16);
          v38 = *(v33 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_29D5F8EB8((v38 > 1), v39 + 1, 1);
            v33 = v96;
          }

          *(v33 + 16) = v39 + 1;
          v40 = v33 + 16 * v39;
          *(v40 + 32) = v35;
          *(v40 + 40) = v37;
          v32 += 8;
          --v31;
        }

        while (v31);

        v21 = v93;
        v28 = v90;
        v26 = v91;
        LOBYTE(v27) = v89;
      }

      else
      {

        v33 = MEMORY[0x29EDCA190];
      }

      v96 = v33;
      sub_29D649050(0, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
      sub_29D6490A0();
      v73 = sub_29D65FEE4();
      v75 = v74;

      v76 = sub_29D64A1D0(v73, v75, &v97);

      *(v28 + 24) = v76;
      _os_log_impl(&dword_29D5D7000, v26, v27, "[%s.%s]: Returning remoteDisable state from unavailability %s", v28, 0x20u);
      v77 = v92;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v77, -1, -1);
      MEMORY[0x29ED63350](v28, -1, -1);

      (*(v95 + 8))(v17, v94);
      return 1;
    }

    else
    {

      (*(v1 + 8))(v17, v0);
      return 1;
    }
  }

  return v41;
}

uint64_t sub_29D648C68()
{
  v0 = sub_29D65F314();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v3 = sub_29D65D944();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29D65D934();
  sub_29D648FB4();
  v6 = sub_29D65D924();

  return v6;
}

void sub_29D648F5C()
{
  if (!qword_2A1A1E6C8)
  {
    v0 = sub_29D660524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E6C8);
    }
  }
}

unint64_t sub_29D648FB4()
{
  result = qword_2A17AD3C8;
  if (!qword_2A17AD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3C8);
  }

  return result;
}

uint64_t sub_29D649008(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D649050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D6490A0()
{
  result = qword_2A17AC390;
  if (!qword_2A17AC390)
  {
    sub_29D649050(255, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC390);
  }

  return result;
}

unint64_t sub_29D64912C()
{
  result = qword_2A17AD3D8;
  if (!qword_2A17AD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3D8);
  }

  return result;
}

unint64_t sub_29D649180()
{
  result = qword_2A17AD3E0;
  if (!qword_2A17AD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3E0);
  }

  return result;
}

uint64_t sub_29D6491D4()
{
  v0 = sub_29D660634();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void *sub_29D649220(uint64_t *a1)
{
  sub_29D6493B8(0, &qword_2A17AD3E8, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  v11 = sub_29D5E32A8(a1, a1[3]);
  sub_29D64912C();
  sub_29D660764();
  if (!v1)
  {
    sub_29D64941C();
    sub_29D660644();
    (*(v5 + 8))(v9, v4);
    v11 = v13[15];
  }

  sub_29D5DF1C4(a1);
  return v11;
}

void sub_29D6493B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D64912C();
    v7 = a3(a1, &type metadata for HearingTestRescindedFeedItemConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D64941C()
{
  result = qword_2A17AD3F0;
  if (!qword_2A17AD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3F0);
  }

  return result;
}

unint64_t sub_29D649494()
{
  result = qword_2A17AD3F8;
  if (!qword_2A17AD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3F8);
  }

  return result;
}

unint64_t sub_29D6494EC()
{
  result = qword_2A17AD400;
  if (!qword_2A17AD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD400);
  }

  return result;
}

unint64_t sub_29D649544()
{
  result = qword_2A17AD408;
  if (!qword_2A17AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD408);
  }

  return result;
}

unint64_t sub_29D64959C()
{
  result = qword_2A17AD410;
  if (!qword_2A17AD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD410);
  }

  return result;
}

unint64_t sub_29D6495F0()
{
  result = qword_2A17AD418;
  if (!qword_2A17AD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD418);
  }

  return result;
}

void sub_29D64964C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29D660634())
  {
    if (qword_2A17AC050 != -1)
    {
      swift_once();
    }

    v6 = sub_29D65F314();
    sub_29D5DE6EC(v6, qword_2A17AD6F0);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v7 = sub_29D65F2F4();
    v8 = sub_29D6601F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446466;
      v11 = sub_29D6607A4();
      v13 = sub_29D64A1D0(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D64A1D0(a1, a2, &v18);
      _os_log_impl(&dword_29D5D7000, v7, v8, "[%{public}s] Onboarding identifier %{public}s could not be found", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v10, -1, -1);
      MEMORY[0x29ED63350](v9, -1, -1);
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = type metadata accessor for EnvironmentAudioNotificationOnboardingDataProvider();
    *(a3 + 32) = &off_2A2432298;
    v14 = sub_29D5E3C20(a3);
    if (qword_2A1A1EA68 != -1)
    {
      swift_once();
    }

    v15 = sub_29D65F314();
    v16 = sub_29D5DE6EC(v15, qword_2A1A20C00);
    v17 = *(*(v15 - 8) + 16);

    v17(v14, v16, v15);
  }
}

Swift::Void __swiftcall OnboardingTileActionHandler.didTap()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D65EDC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_2A17AD420;
  v9 = sub_29D65F2F4();
  v10 = sub_29D660214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v30[1] = v8;
    v12 = v11;
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136446210;
    v14 = sub_29D6607A4();
    v30[0] = v3;
    v16 = sub_29D64A1D0(v14, v15, v33);
    v3 = v30[0];

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29D5D7000, v9, v10, "[%{public}s] Did begin onboarding...", v12, 0xCu);
    sub_29D5DF1C4(v13);
    MEMORY[0x29ED63350](v13, -1, -1);
    MEMORY[0x29ED63350](v12, -1, -1);
  }

  sub_29D65EF44();
  sub_29D65ED94();
  (*(v3 + 8))(v7, v2);
  sub_29D5E32A8(v33, v34);
  v17 = sub_29D65ED64();
  v19 = v18;
  sub_29D5DF1C4(v33);
  sub_29D64964C(v17, v19, &v31);
  if (v32)
  {

    sub_29D5DBB48(&v31, v33);
    v20 = v34;
    v21 = v35;
    sub_29D5E32A8(v33, v34);
    (*(v21 + 40))(v1, v20, v21);
    sub_29D5DF1C4(v33);
  }

  else
  {
    sub_29D649C94(&v31);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v22 = sub_29D65F2F4();
    v23 = sub_29D6601F4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136446466;
      v26 = sub_29D6607A4();
      v28 = sub_29D64A1D0(v26, v27, v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v29 = sub_29D64A1D0(v17, v19, v33);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_29D5D7000, v22, v23, "[%{public}s] Could not get onboarding experience for identifier: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v25, -1, -1);
      MEMORY[0x29ED63350](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D649C94(uint64_t a1)
{
  sub_29D649CF0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D649CF0()
{
  if (!qword_2A17AD428)
  {
    sub_29D649D48();
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD428);
    }
  }
}

unint64_t sub_29D649D48()
{
  result = qword_2A1A1EA00;
  if (!qword_2A1A1EA00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1EA00);
  }

  return result;
}

uint64_t OnboardingTileActionHandler.__allocating_init(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D65EDC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  v11 = qword_2A17AD420;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v12 = sub_29D65F314();
  v13 = sub_29D5DE6EC(v12, qword_2A17AD6F0);
  (*(*(v12 - 8) + 16))(&v10[v11], v13, v12);
  (*(v5 + 16))(v9, a1, v4);
  v14 = sub_29D65EF54();
  (*(v5 + 8))(a1, v4);
  return v14;
}

uint64_t OnboardingTileActionHandler.init(context:)(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_2A17AD420;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v10 = sub_29D65F314();
  v11 = sub_29D5DE6EC(v10, qword_2A17AD6F0);
  (*(*(v10 - 8) + 16))(v1 + v9, v11, v10);
  (*(v4 + 16))(v8, a1, v3);
  v12 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_29D64A0C0()
{
  v1 = qword_2A17AD420;
  v2 = sub_29D65F314();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id OnboardingTileActionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D64A160(uint64_t a1)
{
  v2 = qword_2A17AD420;
  v3 = sub_29D65F314();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_29D64A1D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v6 = sub_29D64A29C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29D5E0D1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D5DF1C4(v11);
  return v7;
}

unint64_t sub_29D64A29C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29D64A3A8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29D660584();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_29D64A3A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_29D64A3F4(a1, a2);
  sub_29D64A524(&unk_2A2431190);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29D64A3F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D64A610(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29D660584();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29D65FFD4();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D64A610(v10, 0);
        result = sub_29D660534();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29D64A524(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29D64A678(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29D64A610(uint64_t a1, uint64_t a2)
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

  sub_29D64A924();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D64A678(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D64A924();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t type metadata accessor for OnboardingTileActionHandler()
{
  result = qword_2A17AD438;
  if (!qword_2A17AD438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D64A83C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D64A884()
{
  result = sub_29D65F314();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29D64A924()
{
  if (!qword_2A1A1DD98)
  {
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DD98);
    }
  }
}

uint64_t sub_29D64A978()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_29D64A984()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.previewTitle.getter()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D64AA44(char a1)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      return sub_29D65DA74();
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29D65DA74();
}

HearingAppPlugin::AudiogramPDFAsyncConfigurationDataSource::PDFConfigurationRow_optional __swiftcall AudiogramPDFAsyncConfigurationDataSource.PDFConfigurationRow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = HearingAppPlugin_AudiogramPDFAsyncConfigurationDataSource_PDFConfigurationRow_all;
  }

  else
  {
    v1.value = HearingAppPlugin_AudiogramPDFAsyncConfigurationDataSource_PDFConfigurationRow_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_29D64AB64@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.debounceForSelectedItemInSeconds.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.item(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29D65F314();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v14 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v14 = 1;
LABEL_5:
    swift_beginAccess();
    if (*(v3 + 16) == a1)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_29D64AA44(v14);
    v18 = v17;
    a2[3] = &type metadata for AudiogramPDFAsyncConfigurationDataSource.Item;
    a2[4] = sub_29D64AE98();
    result = swift_allocObject();
    v20 = 0;
    *a2 = result;
    *(result + 16) = v16;
    *(result + 24) = v18;
    *(result + 32) = v15;
    *(result + 40) = 0;
    goto LABEL_12;
  }

  v28 = v11;
  sub_29D65F2E4();
  v21 = sub_29D65F2F4();
  v22 = sub_29D6601F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446466;
    v25 = sub_29D6607A4();
    v27 = sub_29D64A1D0(v25, v26, &v29);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2050;
    *(v23 + 14) = a1;
    _os_log_impl(&dword_29D5D7000, v21, v22, "[%{public}s] PDF Configuration Row not found for row %{public}ld", v23, 0x16u);
    sub_29D5DF1C4(v24);
    MEMORY[0x29ED63350](v24, -1, -1);
    MEMORY[0x29ED63350](v23, -1, -1);
  }

  (*(v8 + 8))(v13, v28);
  a2[3] = &type metadata for AudiogramPDFAsyncConfigurationDataSource.Item;
  a2[4] = sub_29D64AE98();
  result = swift_allocObject();
  v15 = 0;
  *a2 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  v20 = 1;
  *(result + 40) = 1;
LABEL_12:
  *(result + 48) = v15;
  *(result + 56) = v20;
  return result;
}

unint64_t sub_29D64AE98()
{
  result = qword_2A17AD448;
  if (!qword_2A17AD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD448);
  }

  return result;
}

Swift::Void __swiftcall AudiogramPDFAsyncConfigurationDataSource.didSelectRowAt(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29D65F314();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v12 = 1;
LABEL_5:
    swift_beginAccess();
    *(v2 + 16) = v12;
    return;
  }

  v13 = v9;
  sub_29D65F2E4();
  v14 = sub_29D65F2F4();
  v15 = sub_29D6601F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446466;
    v18 = sub_29D6607A4();
    v20 = sub_29D64A1D0(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2050;
    *(v16 + 14) = a1;
    _os_log_impl(&dword_29D5D7000, v14, v15, "[%{public}s] PDF Configuration Row not found for row %{public}ld", v16, 0x16u);
    sub_29D5DF1C4(v17);
    MEMORY[0x29ED63350](v17, -1, -1);
    MEMORY[0x29ED63350](v16, -1, -1);
  }

  (*(v6 + 8))(v11, v13);
}

void AudiogramPDFAsyncConfigurationDataSource.pdfConfiguration.getter(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = ~*(v1 + 16);
  v4 = *(v1 + 24);
  sub_29D61DDCC((v3 & 1), a1);
  sub_29D622C24((v3 & 1));
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.pdfFileNameProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_29D61EF70(*(v1 + 32));
  result = sub_29D65E754();
  v5 = MEMORY[0x29EDC20A0];
  a1[3] = result;
  a1[4] = v5;
  *a1 = v3;
  return result;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29D64B218()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D64B300()
{
  result = *(*v0 + 40);
  v2 = *(*v0 + 48);
  return result;
}

void sub_29D64B310(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = ~*(v3 + 16);
  v5 = *(v3 + 24);
  sub_29D61DDCC((v4 & 1), a1);
  sub_29D622C24((v4 & 1));
}

uint64_t sub_29D64B378@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_29D61EF70(*(*v1 + 32));
  result = sub_29D65E754();
  v5 = MEMORY[0x29EDC20A0];
  a1[3] = result;
  a1[4] = v5;
  *a1 = v3;
  return result;
}

unint64_t sub_29D64B3C8()
{
  result = qword_2A17AD450;
  if (!qword_2A17AD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD450);
  }

  return result;
}

unint64_t sub_29D64B420()
{
  result = qword_2A17AD458;
  if (!qword_2A17AD458)
  {
    sub_29D64B478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD458);
  }

  return result;
}

void sub_29D64B478()
{
  if (!qword_2A17AD460)
  {
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD460);
    }
  }
}

__n128 sub_29D64B4FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D64B510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_29D64B56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29D64B5DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_29D65DEB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v9 = sub_29D65DD54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D661D20;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x29EDC36F0], v9);
  v15(v14 + v11, *MEMORY[0x29EDC3790], v9);
  sub_29D63CBA4(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CB80(inited);
  v18 = v17;
  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v18);

  (*(v4 + 104))(v8, *MEMORY[0x29EDC3898], v3);
  v20 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D64B90C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_29D65DEB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v11 = sub_29D65DD54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D661D90;
  (*(v12 + 104))(v15 + v14, *a2, v11);
  sub_29D63CBA4(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CB80(inited);
  v18 = v17;
  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v18);

  (*(v6 + 104))(v10, *MEMORY[0x29EDC3898], v5);
  v20 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D64BC14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5FE828(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E680, sub_29D5FE718, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D661D20;
  *(v11 + 32) = sub_29D64BE54(a1);
  *(v11 + 40) = sub_29D64C278(a1);
  v14[1] = v11;
  sub_29D5FE718(0);
  sub_29D5FE8E4(0);
  sub_29D64DBA4(&qword_2A1A1E7F0, sub_29D5FE718);
  sub_29D64DBA4(&qword_2A1A1E718, sub_29D5FE8E4);
  sub_29D65F7F4();
  sub_29D64DBA4(&qword_2A1A1E800, sub_29D5FE828);
  v12 = sub_29D65F934();
  result = (*(v6 + 8))(v10, v5);
  *a2 = v12;
  return result;
}

uint64_t sub_29D64BE54(uint64_t a1)
{
  v31 = sub_29D65DF04();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v31, v4);
  v5 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBF0(0);
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D5FE918(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D64DBA4(&qword_2A1A1E778, sub_29D5FEBBC);
  v19 = sub_29D65F904();
  (*(v8 + 8))(v12, v7);
  v35 = v19;
  v20 = a1;
  v21 = v31;
  (*(v2 + 16))(v5, v20, v31);
  v22 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v23 = (v3 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v32;
  (*(v2 + 32))(v24 + v22, v5, v21);
  *(v24 + v23) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_29D64DCA0;
  *(v26 + 24) = v24;
  sub_29D5FECD0(0);
  sub_29D5F310C();
  sub_29D64DBA4(&qword_2A1A1E7E0, sub_29D5FECD0);
  sub_29D65F944();

  sub_29D64DBA4(qword_2A1A1E820, sub_29D5FEBF0);
  v27 = v33;
  v28 = sub_29D65F934();
  (*(v34 + 8))(v18, v27);
  return v28;
}

uint64_t sub_29D64C278(uint64_t a1)
{
  v28 = sub_29D65DF04();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v28, v4);
  sub_29D5FEB6C(0, &qword_2A1A1E758, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v27 - v10;
  sub_29D5FE97C(0);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D5FEB6C(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D5FEA18();
  v18 = sub_29D65F904();
  (*(v7 + 8))(v11, v6);
  v32 = v18;
  v19 = a1;
  v20 = v28;
  (*(v2 + 16))(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v28);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  *(v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_29D64DBEC;
  *(v23 + 24) = v22;
  sub_29D5FE9B8();
  sub_29D5F310C();
  sub_29D64DBA4(&qword_2A1A1E7C0, sub_29D5FE9B8);
  sub_29D65F944();

  sub_29D64DBA4(&qword_2A1A1E810, sub_29D5FE97C);
  v24 = v30;
  v25 = sub_29D65F934();
  (*(v31 + 8))(v17, v24);
  return v25;
}

uint64_t sub_29D64C67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a4;
  sub_29D5EA87C(0);
  v47 = v9;
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v42 - v16;
  v48 = sub_29D65F314();
  v18 = *(v48 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v48, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  sub_29D5EA900(a1, v17);
  v23 = sub_29D65F2F4();
  v24 = sub_29D660214();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v44 = a3;
    v28 = v27;
    v49 = v27;
    *v26 = 136315395;
    v29 = sub_29D6607A4();
    v43 = a5;
    v31 = sub_29D64A1D0(v29, v30, &v49);
    v46 = a1;
    v32 = v31;

    *(v26 + 4) = v32;
    *(v26 + 12) = 2081;
    sub_29D5EA900(v17, v14);
    v33 = sub_29D65FF84();
    v35 = v34;
    sub_29D5EA964(v17);
    v36 = sub_29D64A1D0(v33, v35, &v49);
    a5 = v43;

    *(v26 + 14) = v36;
    a1 = v46;
    _os_log_impl(&dword_29D5D7000, v23, v24, "%s Received featureStatus %{private}s", v26, 0x16u);
    swift_arrayDestroy();
    v37 = v28;
    a3 = v44;
    MEMORY[0x29ED63350](v37, -1, -1);
    MEMORY[0x29ED63350](v26, -1, -1);
  }

  else
  {

    sub_29D5EA964(v17);
  }

  (*(v18 + 8))(v22, v48);
  v38 = sub_29D65DF24();
  v39 = MEMORY[0x29EDC38C8];
  a5[3] = v38;
  a5[4] = v39;
  v40 = sub_29D5E3C20(a5);
  return sub_29D64C96C(a3, a1, v40);
}

uint64_t sub_29D64C96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  sub_29D5EA87C(0);
  v47 = *(v4 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65DED4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v11;
  v12 = sub_29D65DF04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v37 - v18;
  v44 = &v37 - v18;
  v20 = sub_29D65D6A0();
  v37 = v21;
  v22 = *(v13 + 16);
  v22(v19, a1, v12);
  v23 = sub_29D65DEF4();
  sub_29D64B90C(v23, MEMORY[0x29EDC36F0], v11);

  v24 = sub_29D65DF34();
  v41 = v25;
  v42 = v24;
  v40 = v26;
  v39 = v27;
  v28 = v45;
  sub_29D5EA900(v48, v45);
  v29 = v38;
  v22(v38, a1, v12);
  v30 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v31 = (v46 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v13 + 80) + v31 + 16) & ~*(v13 + 80);
  v33 = swift_allocObject();
  sub_29D5FEE38(v28, v33 + v30);
  v34 = (v33 + v31);
  v35 = v37;
  *v34 = v20;
  v34[1] = v35;
  (*(v13 + 32))(v33 + v32, v29, v12);
  *(v33 + ((v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
  return sub_29D65DF14();
}

uint64_t sub_29D64CC70(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, char *, uint64_t), char *a5)
{
  v69 = a3;
  v70 = a5;
  v67 = a2;
  v68 = a4;
  v6 = sub_29D65F314();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v66 - v13;
  v15 = sub_29D65DE74();
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EA87C(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D65E0E4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v35 = &v66 - v34;
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v66 - v37;
  sub_29D5EA900(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_29D5EA964(v24);
    sub_29D65F2E4();
    v39 = v69;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v40 = sub_29D65F2F4();
    v41 = sub_29D660214();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v75 = v43;
      *v42 = 136315394;
      v44 = sub_29D6607A4();
      v46 = sub_29D64A1D0(v44, v45, &v75);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_29D64A1D0(v67, v39, &v75);
      _os_log_impl(&dword_29D5D7000, v40, v41, "%s Creating no feed items with identifier %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v43, -1, -1);
      MEMORY[0x29ED63350](v42, -1, -1);
    }

    (*(v73 + 8))(v11, v74);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v26 + 32))(v38, v24, v25);
    sub_29D65C978(v68, v38, v19);
    sub_29D65F2E4();
    v68 = *(v26 + 16);
    v68(v35, v38, v25);
    v48 = sub_29D65F2F4();
    LODWORD(v69) = sub_29D660214();
    v49 = v19;
    if (os_log_type_enabled(v48, v69))
    {
      v50 = swift_slowAlloc();
      v66 = v48;
      v51 = v50;
      v67 = swift_slowAlloc();
      v75 = v67;
      *v51 = 136315395;
      v52 = sub_29D6607A4();
      v70 = v19;
      v54 = sub_29D64A1D0(v52, v53, &v75);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2081;
      v68(v31, v35, v25);
      v55 = sub_29D65FF84();
      v57 = v56;
      v58 = *(v26 + 8);
      v58(v35, v25);
      v59 = sub_29D64A1D0(v55, v57, &v75);
      v49 = v70;

      *(v51 + 14) = v59;
      v60 = v66;
      _os_log_impl(&dword_29D5D7000, v66, v69, "%s Creating feed item generator for featureStatus %{private}s", v51, 0x16u);
      v61 = v67;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v61, -1, -1);
      MEMORY[0x29ED63350](v51, -1, -1);
    }

    else
    {

      v58 = *(v26 + 8);
      v58(v35, v25);
    }

    (*(v73 + 8))(v14, v74);
    sub_29D5FE918(0, &qword_2A1A1E6A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v62 = v71;
    v63 = *(v71 + 72);
    v64 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_29D661D90;
    (*(v62 + 32))(v65 + v64, v49, v72);
    v58(v38, v25);
    return v65;
  }
}

uint64_t sub_29D64D2D4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65DF04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65F314();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  v15 = sub_29D65F2F4();
  v16 = sub_29D660214();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = a1;
    v35 = v19;
    v39 = v19;
    *v18 = 136315138;
    v20 = sub_29D6607A4();
    v22 = v5;
    v23 = v4;
    v24 = v9;
    v25 = a2;
    v26 = sub_29D64A1D0(v20, v21, &v39);

    *(v18 + 4) = v26;
    a2 = v25;
    v9 = v24;
    v4 = v23;
    v5 = v22;
    _os_log_impl(&dword_29D5D7000, v15, v16, "%s Creating feed item generator for promotion", v18, 0xCu);
    v27 = v35;
    sub_29D5DF1C4(v35);
    v28 = v27;
    a1 = v37;
    MEMORY[0x29ED63350](v28, -1, -1);
    MEMORY[0x29ED63350](v18, -1, -1);

    (*(v38 + 8))(v14, v36);
  }

  else
  {

    (*(v38 + 8))(v14, v10);
  }

  (*(v5 + 16))(v9, a1, v4);
  v29 = type metadata accessor for NoiseNotificationsPromotionGenerator();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_29D6504DC(v9);
  a2[3] = v29;
  result = sub_29D64DBA4(&qword_2A1A1E0B8, type metadata accessor for NoiseNotificationsPromotionGenerator);
  a2[4] = result;
  *a2 = v32;
  return result;
}

uint64_t sub_29D64D5CC()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NoiseNotificationsGeneratorPipeline()
{
  result = qword_2A1A1E170;
  if (!qword_2A1A1E170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D64D6E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_29D64D75C(uint64_t a1, void *a2)
{
  v3 = v2;
  v34 = *v2;
  v35 = a2;
  v33 = sub_29D65DF04();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v33, v7);
  sub_29D5FE6F8(0);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65DED4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v20 = sub_29D65DEF4();
  sub_29D64B5DC(v20, v19);

  (*(v15 + 32))(v3 + OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_domain, v19, v14);
  v21 = a1;
  v22 = v33;
  (*(v5 + 16))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v33);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v23, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v26 = v34;
  v27 = v35;
  *(v25 + v24) = v35;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_29D5FE718(0);
  sub_29D64DBA4(&qword_2A1A1E7F0, sub_29D5FE718);
  v28 = v27;
  sub_29D65F894();
  sub_29D64DBA4(&qword_2A1A1E798, sub_29D5FE6F8);
  v29 = v36;
  v30 = sub_29D65F934();
  (*(v5 + 8))(v32, v22);
  (*(v37 + 8))(v13, v29);
  *(v3 + OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_publisher) = v30;
  return v3;
}

uint64_t sub_29D64DAFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D64BC14(v1 + v4, a1);
}

uint64_t sub_29D64DBA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D64DBEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D64D2D4(v1 + v4, a1);
}

uint64_t sub_29D64DCA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D65DF04() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_29D64C67C(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_29D64DD58()
{
  sub_29D5EA87C(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_29D65DF04() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);

  return sub_29D64CC70(v0 + v2, v7, v8, (v0 + v5), v6);
}

uint64_t sub_29D64DE64()
{
  v1 = [*(v0 + 32) noiseThresholdOptions];
  sub_29D5DF448(0, &qword_2A17AC258, 0x29EDBA070);
  v2 = sub_29D660034();

  v14 = MEMORY[0x29EDCA190];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_29D6604B4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x29EDCA190];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x29ED62900](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 integerValue];
    v10 = [objc_opt_self() decibelHearingLevelUnit];
    v11 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v9];

    ++v4;
    if (v11)
    {
      MEMORY[0x29ED623B0]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();
      v5 = v14;
      v4 = v8;
    }
  }

  return v5;
}

id sub_29D64E060(void *a1)
{
  v2 = *(v1 + 32);
  result = [a1 _value];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = [v2 localizedNoiseThresholdValue_];
    v6 = sub_29D65FF64();

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_29D64E110(void *a1)
{
  v2 = *(v1 + 32);
  result = [a1 _value];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = [v2 localizedNoiseThresholdDetailValue_];
    v6 = sub_29D65FF64();

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_29D64E1C0(void *a1)
{
  v2 = *(v1 + 32);
  result = [a1 _value];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [v2 setNotificationThreshold_];

  return [v2 setNotificationsEnabled_];
}

uint64_t sub_29D64E264()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_29D64E30C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 32) notificationsEnabled];
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x29EDC1760];
  if (!v3)
  {
    v6 = MEMORY[0x29EDC1768];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_29D64E3A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D65EE44();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29D64E410()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D64E444()
{
  v1 = [*(*v0 + 32) localizedNoiseThresholdValue_];
  v2 = sub_29D65FF64();

  return v2;
}

uint64_t sub_29D64E4A4()
{
  v1 = [*(*v0 + 32) noiseThresholdValueFooterDescription];
  v2 = sub_29D65FF64();

  return v2;
}

id sub_29D64E524()
{
  v1 = [*(*v0 + 32) noiseThresholdCurrentValue];
  v2 = [objc_opt_self() decibelHearingLevelUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  return v3;
}

uint64_t sub_29D64E5BC(void *a1)
{
  v3 = *v1;
  sub_29D64F378(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D661D20;
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = MEMORY[0x29EDC99B0];
  *(v4 + 56) = MEMORY[0x29EDC99B0];
  v8 = sub_29D5E3BCC();
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  [a1 _value];
  v9 = sub_29D6600E4();
  *(v4 + 96) = v7;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;

  return sub_29D65FF74();
}

id sub_29D64E714()
{
  v1 = *v0;
  [*(*v0 + 32) setNotificationThreshold_];
  v2 = *(v1 + 32);

  return [v2 setNotificationsEnabled_];
}

id sub_29D64E768(void *a1, void *a2)
{
  sub_29D64F378(0, &unk_2A17AC838, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = v18 - v8;
  *(v2 + qword_2A17AD470) = 0;
  *(v2 + qword_2A17AD468) = a2;
  v10 = type metadata accessor for NoiseThresholdSpecifierConfiguration();
  v11 = swift_allocObject();
  strcpy((v11 + 16), "THRESHOLD_ID_");
  *(v11 + 30) = -4864;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 32) = a1;
  v12 = a2;
  v13 = a1;
  v14 = [v13 noiseThresholdTitleDescription];
  sub_29D65FF64();

  v15 = sub_29D65E314();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v18[4] = v10;
  v18[5] = sub_29D64F3DC(&qword_2A17AD4B8, type metadata accessor for NoiseThresholdSpecifierConfiguration);
  v18[1] = v11;

  v16 = sub_29D65F0D4();
  sub_29D64E984();

  return v16;
}

uint64_t sub_29D64E984()
{
  sub_29D64F378(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v36 = v34 - v4;
  sub_29D5FEBBC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20();
  v35 = v12;
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8();
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + qword_2A17AD468);
  swift_beginAccess();
  sub_29D64F378(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v24 = v23;
  sub_29D65F8C4();
  swift_endAccess();

  sub_29D64F3DC(&qword_2A1A1E778, sub_29D5FEBBC);
  sub_29D65F994();
  (*(v7 + 8))(v11, v6);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v25 = sub_29D6602B4();
  v40 = v25;
  v26 = sub_29D6602A4();
  v27 = v36;
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  sub_29D64F3DC(&unk_2A17AC900, sub_29D605A20);
  sub_29D60C0D8();
  v28 = v35;
  sub_29D65F984();
  sub_29D615730(v27);

  (*(v37 + 8))(v16, v28);
  swift_allocObject();
  v29 = v34[1];
  swift_unknownObjectWeakInit();
  sub_29D64F3DC(&qword_2A17AC770, sub_29D605AB8);
  v30 = v38;
  v31 = sub_29D65F9B4();

  (*(v39 + 8))(v22, v30);
  v32 = *(v29 + qword_2A17AD470);
  *(v29 + qword_2A17AD470) = v31;
}

void sub_29D64EE4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_29D65F0E4();

    if (v2)
    {
      swift_getObjectType();
      sub_29D65EE14();
      sub_29D65EE94();
    }
  }
}

uint64_t sub_29D64EF00()
{
  v1 = *(v0 + qword_2A17AD470);
}

uint64_t sub_29D64EF58(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AD470);
}

id sub_29D64F030(void *a1, void *a2)
{
  v3 = v2;
  objc_allocWithZone(type metadata accessor for NoiseThresholdSettingsDataSource(0));
  v6 = a1;
  v7 = a2;
  v8 = sub_29D64E768(v6, v7);
  v9 = qword_2A17AD498;
  *(v3 + qword_2A17AD498) = v8;
  v10 = v8;
  sub_29D65F0F4();

  v11 = sub_29D65F034();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v3 + qword_2A17AD4A0) = sub_29D65F024();
  v14 = *(v3 + v9);
  swift_retain_n();
  v15 = v14;
  v16 = sub_29D65ED84();
  v17 = [v6 noiseThresholdTitleDescription];
  if (!v17)
  {
    sub_29D65FF64();
    v17 = sub_29D65FF24();
  }

  [v16 setTitle_];

  return v16;
}

uint64_t sub_29D64F19C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29D660594();
  __break(1u);
  return result;
}

uint64_t sub_29D64F284()
{
  v1 = *(v0 + qword_2A17AD4A0);
}

id sub_29D64F2DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D64F31C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AD4A0);
}

void sub_29D64F378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D64F3DC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29D64F424(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v37 = a2;
  sub_29D650DE0(0, &qword_2A1A1EA50, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_29D65DE74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v36 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x2A1C7C4A8](v15, v16);
  v34 = &v29 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return MEMORY[0x29EDCA190];
  }

  v21 = a3 + 32;
  v22 = (v17 + 48);
  v31 = v17;
  v35 = (v17 + 32);
  v23 = MEMORY[0x29EDCA190];
  v32 = v11;
  v33 = a1;
  v30 = (v17 + 48);
  while (1)
  {
    a1(v21, v18);
    if (v3)
    {
      break;
    }

    if ((*v22)(v10, 1, v11) == 1)
    {
      sub_29D5F9E0C(v10);
    }

    else
    {
      v24 = v34;
      v25 = *v35;
      (*v35)(v34, v10, v11);
      v25(v36, v24, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_29D65B45C(0, *(v23 + 2) + 1, 1, v23);
      }

      v27 = *(v23 + 2);
      v26 = *(v23 + 3);
      if (v27 >= v26 >> 1)
      {
        v23 = sub_29D65B45C(v26 > 1, v27 + 1, 1, v23);
      }

      *(v23 + 2) = v27 + 1;
      v11 = v32;
      v25(&v23[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27], v36, v32);
      a1 = v33;
      v22 = v30;
    }

    v21 += 40;
    if (!--v20)
    {
      return v23;
    }
  }

  return v23;
}

uint64_t sub_29D64F700()
{
  v0 = sub_29D64F8C8();
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v1 = sub_29D65F314();
  sub_29D5DE6EC(v1, qword_2A1A20C00);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v2 = sub_29D65F2F4();
  v3 = sub_29D6601D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446722;
    *(v4 + 4) = sub_29D64A1D0(0xD000000000000024, 0x800000029D6651C0, &v10);
    *(v4 + 12) = 2050;
    *(v4 + 14) = *(v0 + 16);

    *(v4 + 22) = 2082;
    v6 = MEMORY[0x29ED623E0](v0, MEMORY[0x29EDC3A38]);
    v8 = sub_29D64A1D0(v6, v7, &v10);

    *(v4 + 24) = v8;
    _os_log_impl(&dword_29D5D7000, v2, v3, "[%{public}s] Computed %{public}ld changes: %{public}s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v5, -1, -1);
    MEMORY[0x29ED63350](v4, -1, -1);
  }

  else
  {
  }

  return v0;
}

uint64_t sub_29D64F8C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_managedOnboardingExperiences);
  v8[2] = &v9;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D64F424(sub_29D650DC0, v8, v1);

  v2 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_context);
  v3 = v2[4];
  sub_29D5E32A8(v2, v2[3]);
  v4 = v2[4];
  sub_29D5E32A8(v2, v2[3]);
  v5 = sub_29D65DEA4();
  sub_29D65DE94();

  v6 = sub_29D660054();

  return v6;
}

uint64_t sub_29D64FB8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_29D65E2A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E8E70(a1, v33);
  sub_29D5DF210(0, &qword_2A1A1EA00);
  sub_29D5DF210(0, &qword_2A1A1E9E0);
  if (swift_dynamicCast())
  {
    sub_29D5DBB48(v34, v36);
    sub_29D5E32A8(v36, v36[3]);
    sub_29D5F4278(a2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_deviceConfigurationProvider, v33);
    v13 = sub_29D606814(v33);
    sub_29D61CF38(v33);
    if ((v13 & 1) == 0)
    {
      v28 = sub_29D65DE74();
      (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
      return sub_29D5DF1C4(v36);
    }

    v30 = v8;
    v31 = v7;
    v32 = a3;
    sub_29D5DF1C4(v36);
  }

  else
  {
    v30 = v8;
    v31 = v7;
    v32 = a3;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_29D650E44(v34);
  }

  v36[7] = v3;
  v14 = a1[3];
  v15 = a1[4];
  sub_29D5E32A8(a1, v14);
  (*(v15 + 24))(v14, v15);
  v16 = a1[3];
  v17 = a1[4];
  sub_29D5E32A8(a1, v16);
  v29 = (*(v17 + 8))(v16, v17);
  v18 = sub_29D65DDA4();
  v19 = a1[3];
  v20 = a1[4];
  sub_29D5E32A8(a1, v19);
  (*(v20 + 32))(v19, v20);
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D6604B4())
    {
      sub_29D650ECC(MEMORY[0x29EDCA190]);
    }
  }

  type metadata accessor for OnboardingTileActionHandler();
  sub_29D650A60(&qword_2A17AD4C8, type metadata accessor for OnboardingTileActionHandler);
  v21 = v32;
  sub_29D65DDB4();

  v22 = a1[3];
  v23 = a1[4];
  sub_29D5E32A8(a1, v22);
  (*(v23 + 16))(v22, v23);
  sub_29D65DE34();
  v24 = a1[3];
  v25 = a1[4];
  sub_29D5E32A8(a1, v24);
  (*(v25 + 16))(v24, v25);
  sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
  sub_29D660104();

  sub_29D65DE54();
  (*(v30 + 8))(v12, v31);
  v26 = sub_29D65DE74();
  return (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
}

uint64_t sub_29D650054()
{
  sub_29D5F27A4();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v1, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher;
  if (*(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher))
  {
    v9 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher);
  }

  else
  {
    swift_allocObject();
    swift_weakInit();
    v10 = MEMORY[0x29EDB89F8];
    sub_29D650AA8(0, &qword_2A1A1E7C8, MEMORY[0x29EDB89F8]);
    sub_29D650B18(&qword_2A1A1E7D0, &qword_2A1A1E7C8, v10);
    sub_29D65F894();
    sub_29D650A60(&qword_2A1A1E788, sub_29D5F27A4);
    v11 = v0;
    v9 = sub_29D65F934();
    (*(v3 + 8))(v7, v2);
    v12 = *(v11 + v8);
    *(v11 + v8) = v9;
  }

  return v9;
}

uint64_t sub_29D650250@<X0>(uint64_t *a1@<X8>)
{
  sub_29D650DE0(0, &qword_2A1A1E7A8, sub_29D650A08, MEMORY[0x29EDB8AB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v18 - v7;
  sub_29D650AA8(0, &qword_2A1A1E7A0, MEMORY[0x29EDB8AC0]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9, v13);
  v15 = &v18 - v14;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v18 = sub_29D64F700();
    sub_29D650A08();
    sub_29D65F864();
    sub_29D650B5C();
    v16 = sub_29D65F934();

    result = (*(v4 + 8))(v8, v3);
  }

  else
  {
    sub_29D650A08();
    sub_29D65F874();
    sub_29D650B18(&qword_2A17AD4C0, &qword_2A1A1E7A0, MEMORY[0x29EDB8AC0]);
    v16 = sub_29D65F934();
    result = (*(v11 + 8))(v15, v10);
  }

  *a1 = v16;
  return result;
}

uint64_t sub_29D6504DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D65DED4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_deviceConfigurationProvider;
  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  sub_29D5F4278(&unk_2A1A20BA8, v2 + v10);
  v11 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_managedOnboardingExperiences;
  sub_29D5E3CD8(0, &qword_2A1A1E688, &qword_2A1A1EA00, &protocol descriptor for OnboardingExperienceDataProviding, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D661D90;
  *(v12 + 56) = type metadata accessor for EnvironmentAudioNotificationOnboardingDataProvider();
  *(v12 + 64) = &off_2A2432298;
  v13 = sub_29D5E3C20((v12 + 32));
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v14 = sub_29D65F314();
  v15 = sub_29D5DE6EC(v14, qword_2A1A20C00);
  (*(*(v14 - 8) + 16))(v13, v15, v14);
  *(v2 + v11) = v12;
  *(v2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher) = 0;
  sub_29D65DEE4();
  sub_29D5DBB48(&v20, v2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_context);
  v16 = sub_29D65DEF4();
  sub_29D64B900(v16, v9);

  v17 = sub_29D65DF04();
  (*(*(v17 - 8) + 8))(a1, v17);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_domain, v9, v4);
  return v2;
}

uint64_t sub_29D65077C()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D61CF38(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_deviceConfigurationProvider);
  sub_29D5DF1C4((v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_context));
  v3 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_managedOnboardingExperiences);

  v4 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NoiseNotificationsPromotionGenerator()
{
  result = qword_2A1A1E0A8;
  if (!qword_2A1A1E0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6508AC()
{
  result = sub_29D65DED4();
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

uint64_t sub_29D65098C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D650A08()
{
  if (!qword_2A1A1E728)
  {
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E728);
    }
  }
}

uint64_t sub_29D650A60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D650AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29D650A08();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D650B18(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D650AA8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D650B5C()
{
  result = qword_2A1A1E7B0;
  if (!qword_2A1A1E7B0)
  {
    sub_29D650DE0(255, &qword_2A1A1E7A8, sub_29D650A08, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E7B0);
  }

  return result;
}

uint64_t sub_29D650BE4(unint64_t a1, unint64_t a2)
{
  sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
  if (a2 >> 62)
  {
    v4 = sub_29D6605D4();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29D660554();
    v6 = 0xD000000000000046;
    v5 = 0x800000029D669780;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29D660554();
  v5 = 0x800000029D669730;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED62350](v6, v5);
  v8 = sub_29D6607A4();
  MEMORY[0x29ED62350](v8);

  MEMORY[0x29ED62350](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29D6607A4();
  MEMORY[0x29ED62350](v9);

  result = sub_29D6605A4();
  __break(1u);
  return result;
}

void sub_29D650DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D650E44(uint64_t a1)
{
  sub_29D5E3CD8(0, &qword_2A1A1E9D8, &qword_2A1A1E9E0, &protocol descriptor for DeviceConfigurableOnboardingProviding, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D650ECC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D6604B4())
    {
LABEL_3:
      sub_29D5F2FB4();
      v3 = sub_29D660514();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D6604B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = sub_29D650BE4(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_29D660364();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_29D660374();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        sub_29D65EE94();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_29D660364();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_29D660374();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29D651274(uint64_t a1)
{
  sub_29D5F4278(a1, v136);
  sub_29D5EAD50(v136, v133);
  v1 = v134;
  if (v134)
  {
    v2 = v135;
    sub_29D5E32A8(v133, v134);
    v121 = (*(v2 + 8))(v1, v2);
    sub_29D61CF38(v136);
    sub_29D5DF1C4(v133);
  }

  else
  {
    sub_29D61CF38(v136);
    sub_29D5EADE0(v133);
    v121 = 0;
  }

  v133[0] = MEMORY[0x29EDCA190];
  sub_29D6524C4(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v131 = sub_29D65DFE4();
  v3 = *(v131 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v124 = v5;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_29D663250;
  v6 = v123 + v5;
  *v6 = sub_29D60DBAC();
  *(v6 + 8) = 0;
  v120 = *MEMORY[0x29EDC1608];
  v7 = *(v3 + 104);
  v7(v123 + v5);
  v8 = (v123 + v5 + v4);
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v132 = objc_opt_self();
  v9 = [v132 bundleForClass_];
  v10 = sub_29D65DA74();
  v12 = v11;

  *v8 = v10;
  v8[1] = v12;
  (v7)(v8, *MEMORY[0x29EDC1610], v131);
  v13 = v123 + v5 + 2 * v4;
  v122 = 2 * v4;
  v14 = [v132 bundleForClass_];
  v15 = sub_29D65DA74();
  v17 = v16;

  *v13 = v15;
  *(v13 + 8) = v17;
  *(v13 + 16) = 0;
  v126 = *MEMORY[0x29EDC1630];
  v7(v13);
  v129 = v4;
  v125 = 3 * v4;
  v18 = (v123 + v5 + 3 * v4);
  v19 = [v132 bundleForClass_];
  v20 = sub_29D65DA74();
  v22 = v21;

  *v18 = v20;
  v18[1] = v22;
  v18[2] = 0;
  v127 = *MEMORY[0x29EDC15D0];
  v7(v18);
  v23 = v123 + v5 + 4 * v129;
  v24 = [v132 bundleForClass_];
  v25 = sub_29D65DA74();
  v27 = v26;

  *v23 = v25;
  *(v23 + 8) = v27;
  *(v23 + 16) = 0;
  (v7)(v23, v126, v131);
  v28 = v123 + v5 + 5 * v129;
  v29 = [v132 bundleForClass_];
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  *(v28 + 8) = v32;
  *(v28 + 16) = 0;
  (v7)(v28, v126, v131);
  sub_29D60C254(v121 & 1, (v123 + v5 + 6 * v129));
  v33 = v123 + v5 + 7 * v129;
  *v33 = sub_29D60DC9C();
  *(v33 + 8) = 1;
  (v7)(v33, v120, v131);
  v34 = (v123 + v5 + 8 * v129);
  v35 = [v132 bundleForClass_];
  v36 = sub_29D65DA74();
  v38 = v37;

  *v34 = v36;
  v34[1] = v38;
  v34[2] = 0;
  (v7)(v34, v127, v131);
  v39 = v123 + v5 + 9 * v129;
  v40 = [v132 bundleForClass_];
  v41 = sub_29D65DA74();
  v43 = v42;

  *v39 = v41;
  *(v39 + 8) = v43;
  *(v39 + 16) = 0;
  (v7)(v39, v126, v131);
  v44 = v123 + v5 + 10 * v129;
  v45 = [v132 bundleForClass_];
  v46 = sub_29D65DA74();
  v48 = v47;

  *v44 = v46;
  *(v44 + 8) = v48;
  *(v44 + 16) = 0;
  (v7)(v44, v126, v131);
  v49 = (v123 + v5 + 11 * v129);
  v50 = [v132 bundleForClass_];
  v51 = sub_29D65DA74();
  v53 = v52;

  *v49 = v51;
  v49[1] = v53;
  v49[2] = 0;
  (v7)(v49, v127, v131);
  v54 = v123 + v5 + 12 * v129;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_29D652528;
  *(v55 + 24) = 0;
  *v54 = sub_29D60E3E4;
  *(v54 + 8) = v55;
  *(v54 + 16) = 1;
  v56 = *MEMORY[0x29EDC15A8];
  (v7)(v54, v56, v131);
  v57 = v123 + v5 + 13 * v129;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_29D65252C;
  *(v58 + 24) = 0;
  *v57 = sub_29D60E43C;
  *(v57 + 8) = v58;
  *(v57 + 16) = 1;
  (v7)(v57, v56, v131);
  v59 = v123 + v5 + 14 * v129;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_29D652530;
  *(v60 + 24) = 0;
  *v59 = sub_29D60E43C;
  *(v59 + 8) = v60;
  *(v59 + 16) = 1;
  (v7)(v59, v56, v131);
  v61 = v123 + v5 + 15 * v129;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_29D652534;
  *(v62 + 24) = 0;
  *v61 = sub_29D60E43C;
  *(v61 + 8) = v62;
  *(v61 + 16) = 1;
  (v7)(v61, v56, v131);
  v63 = v123 + v5 + 16 * v129;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_29D652538;
  *(v64 + 24) = 0;
  *v63 = sub_29D60E43C;
  *(v63 + 8) = v64;
  *(v63 + 16) = 1;
  (v7)(v63, v56, v131);
  v65 = (v123 + v5 + 17 * v129);
  v66 = [v132 bundleForClass_];
  v67 = sub_29D65DA74();
  v69 = v68;

  *v65 = v67;
  v65[1] = v69;
  (v7)(v65, *MEMORY[0x29EDC1620], v131);
  sub_29D65A3F0(v123);
  v70 = sub_29D60DD8C();
  sub_29D65A3F0(v70);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_29D663260;
  v71 = (v128 + v124);
  v72 = [v132 bundleForClass_];
  v73 = sub_29D65DA74();
  v75 = v74;

  *v71 = v73;
  v71[1] = v75;
  v71[2] = 0;
  (v7)(v128 + v124, v127, v131);
  v76 = v128 + v124 + v129;
  v77 = [v132 bundleForClass_];
  v78 = sub_29D65DA74();
  v80 = v79;

  *v76 = v78;
  *(v76 + 8) = v80;
  *(v76 + 16) = 0;
  (v7)(v76, v126, v131);
  v81 = (v128 + v124 + v122);
  v82 = [v132 bundleForClass_];
  v83 = sub_29D65DA74();
  v85 = v84;

  *v81 = v83;
  v81[1] = v85;
  v81[2] = 0;
  (v7)(v81, v127, v131);
  sub_29D600DA8();
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_29D663270;
  v87 = [v132 bundleForClass_];
  v88 = sub_29D65DA74();
  v90 = v89;

  *(v86 + 32) = v88;
  *(v86 + 40) = v90;
  v91 = [v132 bundleForClass_];
  v92 = sub_29D65DA74();
  v94 = v93;

  *(v86 + 48) = v92;
  *(v86 + 56) = v94;
  v95 = [v132 bundleForClass_];
  v96 = sub_29D65DA74();
  v98 = v97;

  *(v86 + 64) = v96;
  *(v86 + 72) = v98;
  v99 = [v132 bundleForClass_];
  v100 = sub_29D65DA74();
  v102 = v101;

  *(v86 + 80) = v100;
  *(v86 + 88) = v102;
  v103 = [v132 bundleForClass_];
  v104 = sub_29D65DA74();
  v106 = v105;

  *(v86 + 96) = v104;
  *(v86 + 104) = v106;
  v107 = [v132 bundleForClass_];
  v108 = sub_29D65DA74();
  v110 = v109;

  *(v86 + 112) = v108;
  *(v86 + 120) = v110;
  v111 = [v132 bundleForClass_];
  v112 = sub_29D65DA74();
  v114 = v113;

  *(v86 + 128) = v112;
  *(v86 + 136) = v114;
  v115 = [v132 bundleForClass_];
  v116 = sub_29D65DA74();
  v118 = v117;

  *(v86 + 144) = v116;
  *(v86 + 152) = v118;
  *(v128 + v124 + v125) = v86;
  (v7)(v128 + v124 + v125, *MEMORY[0x29EDC15D8], v131);
  sub_29D65A3F0(v128);
  return v133[0];
}

id sub_29D65235C()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  sub_29D651274(&unk_2A1A20BA8);
  v2 = objc_allocWithZone(sub_29D65E004());
  v3 = sub_29D65DFF4();
  v4 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [v4 setDelegate_];

  return v4;
}

void sub_29D6524C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D65259C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_29D65E0E4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D653D34(0, &qword_2A17AD4E0, MEMORY[0x29EDC9E80]);
  v9 = v8;
  v25 = *(v8 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D653CE0();
  sub_29D660764();
  if (!v2)
  {
    v20 = v25;
    v21 = v26;
    sub_29D653ACC(&qword_2A17AC530, MEMORY[0x29EDC1770]);
    sub_29D660644();
    (*(v20 + 8))(v13, v9);
    (*(v21 + 32))(v18, v27, v4);
    sub_29D653B90(v18, v24);
  }

  return sub_29D5DF1C4(a1);
}

uint64_t sub_29D652848(uint64_t a1)
{
  v2 = sub_29D653CE0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D652884(uint64_t a1)
{
  v2 = sub_29D653CE0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6528D8(void *a1)
{
  sub_29D653D34(0, &qword_2A1A1DDA8, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D653CE0();
  sub_29D660774();
  sub_29D65E0E4();
  sub_29D653ACC(&qword_2A1A1E540, MEMORY[0x29EDC1770]);
  sub_29D660654();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_29D652A60()
{
  ObjectType = swift_getObjectType();
  v130 = sub_29D65DAF4();
  v129 = *(v130 - 8);
  v1 = *(v129 + 64);
  MEMORY[0x2A1C7C4A8](v130, v2);
  v128 = v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D65E314();
  v139 = *(v4 - 8);
  v140 = v4;
  v5 = *(v139 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v135 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v143 = v127 - v10;
  v149 = sub_29D65E0E4();
  v146 = *(v149 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x2A1C7C4A8](v149, v12);
  v131 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v142 = v127 - v16;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v141 = v127 - v19;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v133 = v127 - v22;
  v23 = sub_29D65F314();
  v147 = *(v23 - 8);
  v148 = v23;
  v24 = *(v147 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v136 = v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v132 = v127 - v29;
  MEMORY[0x2A1C7C4A8](v30, v31);
  v145 = v127 - v32;
  v33 = sub_29D65EDC4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D653B18();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39 - 8, v41);
  v43 = v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v44, v47);
  v49 = v127 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v50, v51);
  v53 = v127 - v52;
  v138 = v0;
  sub_29D65EF44();
  sub_29D653ACC(&qword_2A17AD4D8, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
  sub_29D653ACC(&qword_2A1A1DEC0, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
  sub_29D65EDB4();
  v56 = *(v34 + 8);
  v55 = v34 + 8;
  v54 = v56;
  v137 = v33;
  (v56)(v38, v33);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_29D653C58(v43, sub_29D653B18);
    v57 = v136;
    sub_29D65F2E4();
    v58 = sub_29D65F2F4();
    v59 = sub_29D660204();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v150[0] = v61;
      *v60 = 136315138;
      v62 = sub_29D6607A4();
      v64 = sub_29D64A1D0(v62, v63, v150);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_29D5D7000, v58, v59, "%s Could not access action handler user data!", v60, 0xCu);
      sub_29D5DF1C4(v61);
      MEMORY[0x29ED63350](v61, -1, -1);
      MEMORY[0x29ED63350](v60, -1, -1);
    }

    return (*(v147 + 8))(v57, v148);
  }

  else
  {
    v136 = v54;
    sub_29D653B90(v43, v53);
    sub_29D65F2E4();
    sub_29D653BF4(v53, v49);
    v66 = sub_29D65F2F4();
    v67 = sub_29D660214();
    v68 = os_log_type_enabled(v66, v67);
    v134 = v53;
    v127[1] = v55;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v127[0] = swift_slowAlloc();
      v150[0] = v127[0];
      *v69 = 136315394;
      v70 = sub_29D6607A4();
      v72 = sub_29D64A1D0(v70, v71, v150);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;
      v73 = *(v146 + 16);
      v74 = v149;
      v73(v133, v49, v149);
      v75 = sub_29D65FF84();
      v77 = v76;
      sub_29D653C58(v49, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      v78 = sub_29D64A1D0(v75, v77, v150);
      v79 = v134;

      *(v69 + 14) = v78;
      _os_log_impl(&dword_29D5D7000, v66, v67, "%s Did select cell with feature status %s", v69, 0x16u);
      v80 = v127[0];
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v80, -1, -1);
      MEMORY[0x29ED63350](v69, -1, -1);

      v127[0] = *(v147 + 8);
      (v127[0])(v145, v148);
    }

    else
    {
      v79 = v53;

      sub_29D653C58(v49, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      v127[0] = *(v147 + 8);
      (v127[0])(v145, v148);
      v73 = *(v146 + 16);
      v74 = v149;
    }

    v81 = v141;
    v73(v141, v79, v74);
    v82 = v138;
    sub_29D65EF44();
    v145 = sub_29D65EDA4();
    v83 = v136;
    v84 = v137;
    v85 = v73;
    (v136)(v38, v137);
    sub_29D65EF44();
    v86 = v143;
    sub_29D65E184();
    v83(v38, v84);
    v87 = v81;
    v88 = v142;
    v89 = v85;
    v85(v142, v87, v74);
    v90 = v146;
    v91 = (*(v146 + 88))(v88, v74);
    if (v91 == *MEMORY[0x29EDC1760])
    {
      v93 = v139;
      v92 = v140;
      v94 = v135;
      (*(v139 + 16))(v135, v86, v140);
      v95 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSettingsViewController(0));
      v96 = v86;
      v97 = sub_29D60AE44(v94);
      v98 = v145;
      [v145 showAdaptively:v97 sender:v82];

      (*(v93 + 8))(v96, v92);
      (*(v90 + 8))(v87, v149);
      return sub_29D653C58(v134, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
    }

    else
    {
      v99 = v87;
      v100 = v134;
      v101 = v145;
      if (v91 == *MEMORY[0x29EDC1768])
      {
        v102 = v139;
        v103 = v135;
        v104 = v134;
        v105 = v140;
        (*(v139 + 16))(v135, v86, v140);
        v106 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSettingsViewController(0));
        v107 = v86;
        v108 = sub_29D60AE44(v103);
        sub_29D65ED74();
        sub_29D657050();
        v109 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
        [v101 presentViewController:v109 animated:1 completion:0];

        (*(v102 + 8))(v107, v105);
        (*(v90 + 8))(v99, v149);
        return sub_29D653C58(v104, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      }

      else if (v91 == *MEMORY[0x29EDC1758])
      {
        v110 = v128;
        sub_29D656D2C(v128);
        sub_29D65DAB4();

        (*(v129 + 8))(v110, v130);
        (*(v139 + 8))(v143, v140);
        (*(v90 + 8))(v99, v149);
        return sub_29D653C58(v100, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      }

      else
      {
        sub_29D65F2E4();
        v111 = v131;
        v85(v131, v99, v149);
        v112 = sub_29D65F2F4();
        v113 = sub_29D6601F4();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v150[0] = v138;
          *v114 = 136315650;
          v115 = sub_29D6607A4();
          LODWORD(ObjectType) = v113;
          v117 = sub_29D64A1D0(v115, v116, v150);

          *(v114 + 4) = v117;
          *(v114 + 12) = 2080;
          *(v114 + 14) = sub_29D64A1D0(0x63656C6553646964, 0xEB00000000292874, v150);
          *(v114 + 22) = 2080;
          v118 = v149;
          v89(v133, v111, v149);
          v119 = sub_29D65FF84();
          v121 = v120;
          v122 = *(v90 + 8);
          v122(v111, v118);
          v123 = sub_29D64A1D0(v119, v121, v150);

          *(v114 + 24) = v123;
          _os_log_impl(&dword_29D5D7000, v112, ObjectType, "%s.%s Unhandled feature status %s", v114, 0x20u);
          v124 = v138;
          swift_arrayDestroy();
          MEMORY[0x29ED63350](v124, -1, -1);
          MEMORY[0x29ED63350](v114, -1, -1);

          (v127[0])(v132, v148);
          (*(v139 + 8))(v143, v140);
          v122(v141, v118);
          v125 = v134;
        }

        else
        {

          v122 = *(v90 + 8);
          v126 = v149;
          v122(v111, v149);
          (v127[0])(v132, v148);
          (*(v139 + 8))(v143, v140);
          v122(v99, v126);
          v125 = v100;
        }

        sub_29D653C58(v125, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
        return (v122)(v142, v149);
      }
    }
  }
}

uint64_t sub_29D6538FC(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D6539FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D653ACC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D653B18()
{
  if (!qword_2A17AD4D0)
  {
    type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(255);
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD4D0);
    }
  }
}

uint64_t sub_29D653B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D653BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D653C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D653CE0()
{
  result = qword_2A1A1DED8[0];
  if (!qword_2A1A1DED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A1DED8);
  }

  return result;
}

void sub_29D653D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D653CE0();
    v7 = a3(a1, &type metadata for HeadphoneNotificationsFeatureStatusActionHandlerData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D653DAC()
{
  result = qword_2A17AD4E8;
  if (!qword_2A17AD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD4E8);
  }

  return result;
}

unint64_t sub_29D653E04()
{
  result = qword_2A1A1DEC8;
  if (!qword_2A1A1DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1DEC8);
  }

  return result;
}

unint64_t sub_29D653E5C()
{
  result = qword_2A1A1DED0;
  if (!qword_2A1A1DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1DED0);
  }

  return result;
}

uint64_t sub_29D653EB0(uint64_t a1, uint64_t a2)
{
  sub_29D6600B4();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_29D65438C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_29D660554();
    MEMORY[0x29ED62350](0xD00000000000003FLL, 0x800000029D669940);
    v8 = sub_29D6607A4();
    MEMORY[0x29ED62350](v8);

    MEMORY[0x29ED62350](46, 0xE100000000000000);
    result = sub_29D660594();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D654038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D6600B4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_29D654348(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_29D660554();
  MEMORY[0x29ED62350](0xD00000000000003FLL, 0x800000029D669940);
  v12 = sub_29D6607A4();
  MEMORY[0x29ED62350](v12);

  MEMORY[0x29ED62350](46, 0xE100000000000000);
  result = sub_29D660594();
  __break(1u);
  return result;
}

uint64_t sub_29D6541F0(uint64_t a1, uint64_t a2)
{
  sub_29D6600C4();
  v5[2] = a1;
  v5[3] = a2;
  return sub_29D654038(sub_29D65432C, v5, "HearingAppPlugin/HealthArticleComponent+Extension.swift", 55);
}

uint64_t sub_29D65426C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v5 = a1(isCurrentExecutor);

  *a2 = v5;
  return result;
}

void *sub_29D654348@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_29D65438C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_29D6543C8()
{
  result = qword_2A17AD4F0;
  if (!qword_2A17AD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD4F0);
  }

  return result;
}

uint64_t Date.lastDateOfTheYear(calendar:)@<X0>(char *a1@<X8>)
{
  v63 = a1;
  sub_29D654A98(0, &qword_2A17AD4F8, MEMORY[0x29EDB9D58]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v64 = (&v49 - v4);
  sub_29D654A98(0, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v49 - v8;
  v10 = sub_29D65DA14();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D654A98(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v56 = &v49 - v20;
  v60 = sub_29D65DBC4();
  v58 = *(v60 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v60, v22);
  v53 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D65DCA4();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v25[13];
  (v31)(v30, *MEMORY[0x29EDB9CC0], v24, v28);
  v55 = sub_29D65DCB4();
  v32 = v25[1];
  v32(v30, v24);
  v33 = sub_29D65DCC4();
  v34 = *(*(v33 - 8) + 56);
  v59 = v9;
  v34(v9, 1, 1, v33);
  v35 = sub_29D65DCD4();
  (*(*(v35 - 8) + 56))();
  v36 = *MEMORY[0x29EDB9CD0];
  v51 = v25 + 13;
  v31(v30, v36, v24);
  v37 = v31;
  v38 = sub_29D65DCB4();
  v52 = v25 + 1;
  v50 = v32;
  result = (v32)(v30, v24);
  if (!__OFADD__(v38, 1))
  {
    v40 = v57;
    sub_29D65DA04();
    v41 = v56;
    sub_29D65DC74();
    (*(v61 + 8))(v40, v62);
    v42 = v58;
    v43 = *(v58 + 48);
    v44 = v60;
    if (v43(v41, 1, v60) == 1)
    {
      v45 = v63;
    }

    else
    {
      v46 = v53;
      v64 = *(v42 + 32);
      v64(v53, v41, v44);
      v37(v30, *MEMORY[0x29EDB9CB8], v24);
      v47 = v54;
      sub_29D65DC84();
      v50(v30, v24);
      (*(v42 + 8))(v46, v44);
      if (v43(v47, 1, v44) != 1)
      {
        v45 = v63;
        v64(v63, v47, v44);
        v48 = 0;
        return (*(v42 + 56))(v45, v48, 1, v44);
      }

      v41 = v47;
      v45 = v63;
    }

    sub_29D654BF0(v41);
    v48 = 1;
    return (*(v42 + 56))(v45, v48, 1, v44);
  }

  __break(1u);
  return result;
}

void sub_29D654A98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Date.year(calendar:)()
{
  v0 = sub_29D65DCA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v6, *MEMORY[0x29EDB9CD0], v0, v4);
  v7 = sub_29D65DCB4();
  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_29D654BF0(uint64_t a1)
{
  sub_29D654A98(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SoundLevelModel.init(title:description:warningDescription:valueOffsetPercentage:valueWidthPercentage:showBottomHairline:chartForegroundColor:chartBackgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  if (a10 <= 0.0)
  {
    a10 = 0.0;
  }

  if (a10 > 1.0)
  {
    a10 = 1.0;
  }

  if (a11 <= 0.0)
  {
    a11 = 0.0;
  }

  if (a11 > 1.0)
  {
    a11 = 1.0;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if ((1.0 - a10) < a11)
  {
    a11 = 1.0 - a10;
  }

  *(a9 + 56) = a10;
  *(a9 + 60) = a11;
  *(a9 + 64) = a8;
  *(a9 + 72) = a12;
  *(a9 + 80) = 0x4010000000000000;
  return result;
}

void sub_29D654D1C()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  sub_29D656498(0, &qword_2A17AD528, sub_29D6563D4);
  inited = swift_initStackObject();
  v2 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v3 = MEMORY[0x29EDC7640];
  *(inited + 16) = xmmword_29D661D20;
  v4 = *v3;
  *(inited + 40) = v0;
  *(inited + 48) = v4;
  v5 = objc_opt_self();
  v6 = v2;
  v7 = v0;
  v8 = v4;
  *(inited + 56) = [v5 labelColor];
  v9 = sub_29D5E2304(inited);
  swift_setDeallocating();
  sub_29D6563D4();
  swift_arrayDestroy();

  qword_2A17AD508 = v9;
}

uint64_t sub_29D654E54()
{
  sub_29D656498(0, &qword_2A17AD528, sub_29D6563D4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D20;
  v1 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x29EDC80E8];
  v4 = v1;
  v5 = v3;
  v6 = [v2 preferredFontForTextStyle_];

  v7 = *MEMORY[0x29EDC7640];
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  *(inited + 56) = [v8 secondaryLabelColor];
  v10 = sub_29D5E2304(inited);
  swift_setDeallocating();
  sub_29D6563D4();
  result = swift_arrayDestroy();
  qword_2A17AD510 = v10;
  return result;
}

char *SoundLevelView.init(model:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView] = 0;
  v3 = *(a1 + 72);
  v80[0] = *(a1 + 56);
  v80[1] = v3;
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for HorizontalMeterView());
  v6 = *(&v80[0] + 1);
  v7 = v4;
  HorizontalMeterView.init(model:)(v80);
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView] = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v79.receiver = v1;
  v79.super_class = type metadata accessor for SoundLevelView();
  v9 = objc_msgSendSuper2(&v79, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D6558E0();
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = qword_2A17AC090;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_29D655FB8(v11, v10, qword_2A17AD500);

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (qword_2A17AC098 != -1)
  {
    v67 = *(a1 + 16);
    v68 = *(a1 + 24);
    swift_once();
    v15 = v68;
    v14 = v67;
  }

  v16 = sub_29D656164(v14, v15, qword_2A17AD508);
  sub_29D5ED310();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D661DA0;
  *(v17 + 32) = v13;
  *(v17 + 40) = v16;
  v18 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  sub_29D5DF448(0, &qword_2A17AD370, 0x29EDC7DA0);
  v78 = v13;
  v77 = v16;
  v19 = sub_29D660024();

  v20 = [v18 initWithArrangedSubviews_];

  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v9;
  v23 = [v22 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  LOBYTE(v23) = sub_29D660314();
  [v21 setAxis_];
  [v21 setSpacing_];
  v25 = *&v22[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView];
  *&v22[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView] = v21;
  v26 = v21;

  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  if (qword_2A17AC0A0 != -1)
  {
    v69 = *(a1 + 32);
    v70 = *(a1 + 40);
    swift_once();
    v28 = v70;
    v27 = v69;
  }

  v29 = sub_29D655FB8(v27, v28, qword_2A17AD510);
  v30 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v30 &off_29F3535B8 + 2];
  v31 = [objc_opt_self() opaqueSeparatorColor];
  [v30 setBackgroundColor_];

  [v30 setHidden_];
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D6655C0;
  *(v32 + 32) = v26;
  v71 = OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView;
  v33 = v26;
  v75 = v26;
  v34 = *&v22[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView];
  v72 = a1;
  v35 = OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView;
  *(v32 + 40) = v34;
  *(v32 + 48) = v29;
  *(v32 + 56) = v30;
  v36 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  v37 = v34;
  v76 = v29;
  v73 = v30;
  v38 = sub_29D660024();

  v39 = [v36 initWithArrangedSubviews_];

  v40 = v39;
  [v40 &off_29F3535B8 + 2];
  [v40 setAxis_];
  [v40 setSpacing_];
  [v40 setCustomSpacing:v33 afterView:6.0];
  [v40 setCustomSpacing:*&v22[v35] afterView:10.0];
  [v22 addSubview_];
  v74 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29D6655D0;
  v42 = [v40 topAnchor];
  v43 = [v22 layoutMarginsGuide];

  v44 = [v43 topAnchor];
  v45 = [v42 constraintEqualToAnchor_];

  *(v41 + 32) = v45;
  v46 = [v40 bottomAnchor];
  v47 = [v22 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v41 + 40) = v48;
  v49 = [v40 leadingAnchor];
  v50 = [v22 leadingAnchor];

  v51 = [v49 constraintEqualToAnchor_];
  *(v41 + 48) = v51;
  v52 = [v40 trailingAnchor];
  v53 = [v22 trailingAnchor];

  v54 = [v52 constraintEqualToAnchor_];
  *(v41 + 56) = v54;
  v55 = [*&v22[v71] heightAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v41 + 64) = v56;
  v57 = [v73 heightAnchor];
  v58 = [v57 constraintEqualToConstant_];

  *(v41 + 72) = v58;
  v59 = [v73 leadingAnchor];
  v60 = [v40 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v41 + 80) = v61;
  v62 = [v73 trailingAnchor];
  v63 = [v40 trailingAnchor];

  v64 = [v62 constraintEqualToAnchor_];
  *(v41 + 88) = v64;
  sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
  v65 = sub_29D660024();

  [v74 activateConstraints_];

  sub_29D6562D4(v72);
  return v22;
}

uint64_t sub_29D6558E0()
{
  swift_getObjectType();
  sub_29D656498(0, &qword_2A17AD390, sub_29D6448C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D661D90;
  v1 = sub_29D65F424();
  v2 = MEMORY[0x29EDC7870];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_29D660334();
  sub_29D65EE94();
}

id SoundLevelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SoundLevelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoundLevelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D655B40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29D62F860();
    v1 = sub_29D660604();
  }

  else
  {
    v1 = MEMORY[0x29EDCA198];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  result = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_29D5E20A8((v26 + 8), v24);
    sub_29D5E20A8(v24, v26);
    v14 = *(v1 + 40);
    sub_29D65FF64();
    sub_29D660724();
    sub_29D65FFA4();
    v15 = sub_29D660744();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
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
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_29D5E20A8(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_29D655E04(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [v3 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v2 fontWithDescriptor:v6 size:0.0];

    v4 = v7;
LABEL_4:
    sub_29D656498(0, &qword_2A17AD528, sub_29D6563D4);
    inited = swift_initStackObject();
    v9 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    v10 = MEMORY[0x29EDC7640];
    *(inited + 16) = xmmword_29D661D20;
    v11 = *v10;
    *(inited + 40) = v4;
    *(inited + 48) = v11;
    v12 = objc_opt_self();
    v13 = v9;
    v14 = v4;
    v15 = v11;
    *(inited + 56) = [v12 labelColor];
    sub_29D5E2304(inited);
    swift_setDeallocating();
    sub_29D6563D4();
    swift_arrayDestroy();

    return;
  }

  __break(1u);
}

id sub_29D655FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v6) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v7];
  [v5 setNumberOfLines_];
  if (a2)
  {

    sub_29D655B40(a3);
    v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v9 = sub_29D65FF24();
    type metadata accessor for Key(0);
    sub_29D656440();
    v10 = sub_29D65FEA4();

    v11 = [v8 initWithString:v9 attributes:v10];

    [v5 setAttributedText_];
  }

  else
  {
    [v5 setHidden_];
    v11 = v5;
  }

  [v5 setAdjustsFontForContentSizeCategory_];
  return v5;
}

id sub_29D656164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1144750080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1144750080;
  [v4 setContentHuggingPriority:0 forAxis:v6];
  sub_29D655B40(a3);
  v7 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v8 = sub_29D65FF24();
  type metadata accessor for Key(0);
  sub_29D656440();
  v9 = sub_29D65FEA4();

  v10 = [v7 initWithString:v8 attributes:v9];

  [v4 setAttributedText_];
  [v4 setAdjustsFontForContentSizeCategory_];
  return v4;
}

__n128 sub_29D656304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_29D656328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D656370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D6563D4()
{
  if (!qword_2A17AD530)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD530);
    }
  }
}

unint64_t sub_29D656440()
{
  result = qword_2A17AC188;
  if (!qword_2A17AC188)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC188);
  }

  return result;
}

void sub_29D656498(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6564EC(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *&a1[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView];
  if (v2)
  {
    v5 = v2;
    v3 = [a1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = sub_29D660314();
    [v5 setAxis_];
  }

  else
  {
  }
}

uint64_t sub_29D65662C(uint64_t a1, char a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v51 = a3;
  v10 = sub_29D65F314();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D65E0E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v16);
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == *MEMORY[0x29EDC1760])
  {
    v49 = v11;
    v50 = a5;
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v23 = swift_allocObject();
    v48 = xmmword_29D661D90;
    *(v23 + 16) = xmmword_29D661D90;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v23 + 32) = sub_29D65DA74();
    *(v23 + 40) = v24;
    if (a2)
    {
      if ((a4 & 1) != 0 || (v51 & 1) == 0)
      {
        v37 = sub_29D65DA74();
        v39 = v38;
        v25 = swift_allocObject();
        *(v25 + 16) = v48;
        *(v25 + 32) = v37;
        *(v25 + 40) = v39;
      }

      else
      {
        v25 = sub_29D6584F8();
      }

      goto LABEL_19;
    }

    if (a4)
    {
      v25 = sub_29D658848();
LABEL_19:
      v54 = v25;
      sub_29D65A1D8(v23);
      return v54;
    }

    sub_29D65F2E4();
    v40 = sub_29D65F2F4();
    v41 = sub_29D6601F4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54 = v43;
      *v42 = 136446210;
      v44 = sub_29D6607A4();
      v46 = sub_29D64A1D0(v44, v45, &v54);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_29D5D7000, v40, v41, "[[%{public}s] Feature is active but no devices return active.", v42, 0xCu);
      sub_29D5DF1C4(v43);
      MEMORY[0x29ED63350](v43, -1, -1);
      MEMORY[0x29ED63350](v42, -1, -1);
    }

    (*(v49 + 8))(v15, v10);
  }

  else if (v22 == *MEMORY[0x29EDC1768])
  {
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v23 + 32) = sub_29D65DA74();
    *(v23 + 40) = v26;
    *(v23 + 48) = sub_29D65DA74();
    *(v23 + 56) = v27;
  }

  else if (v22 == *MEMORY[0x29EDC1758])
  {
    v28 = sub_29D65E1E4();
    v30 = v29;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v31 = MEMORY[0x29EDC99B0];
    v32 = MEMORY[0x29EDC9E90];
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v23 = swift_allocObject();
    v53 = xmmword_29D661D90;
    *(v23 + 16) = xmmword_29D661D90;
    sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, v32);
    v33 = swift_allocObject();
    *(v33 + 16) = v53;
    *(v33 + 56) = v31;
    *(v33 + 64) = sub_29D5E3BCC();
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    v34 = sub_29D65FF34();
    v36 = v35;

    *(v23 + 32) = v34;
    *(v23 + 40) = v36;
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    return MEMORY[0x29EDCA190];
  }

  return v23;
}

uint64_t sub_29D656D2C@<X0>(uint64_t a1@<X8>)
{
  sub_29D658CF8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v14 - v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_29D660554();
  v7 = [objc_opt_self() internalPrivacySettingsURLString];
  v8 = sub_29D65FF64();
  v10 = v9;

  v14 = v8;
  v15 = v10;
  MEMORY[0x29ED62350](0xD00000000000001ELL, 0x800000029D665DB0);
  sub_29D6581CC(v6);

  v11 = sub_29D65DAF4();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v6, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a1, v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D656F08()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D656FC4()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;

  return sub_29D65E144();
}

uint64_t sub_29D657050()
{
  v122[1] = *MEMORY[0x29EDCA608];
  v0 = sub_29D65F314();
  v121 = *(v0 - 8);
  v1 = *(v121 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v114 - v8;
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v114 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v114 - v16;
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v114 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v114 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v118 = &v114 - v27;
  v28 = objc_opt_self();
  v122[0] = 0;
  v29 = [v28 _setHeadphoneExposureMeasureLevelsEnabled_error_];
  v120 = v17;
  if (v29)
  {
    v30 = v122[0];
  }

  else
  {
    v119 = v25;
    v31 = v122[0];
    v32 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v33 = v32;
    v34 = sub_29D65F2F4();
    v35 = sub_29D660214();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v116 = v5;
      v37 = v36;
      v38 = swift_slowAlloc();
      v117 = v9;
      v115 = v38;
      v122[0] = v38;
      *v37 = 136446210;
      swift_getErrorValue();
      v39 = sub_29D6606D4();
      v41 = v13;
      v42 = v28;
      v43 = v0;
      v44 = sub_29D64A1D0(v39, v40, v122);

      *(v37 + 4) = v44;
      v0 = v43;
      v28 = v42;
      v13 = v41;
      _os_log_impl(&dword_29D5D7000, v34, v35, "Could not enable measure levels on phone. %{public}s", v37, 0xCu);
      v45 = v115;
      sub_29D5DF1C4(v115);
      v9 = v117;
      MEMORY[0x29ED63350](v45, -1, -1);
      v46 = v37;
      v5 = v116;
      MEMORY[0x29ED63350](v46, -1, -1);
    }

    else
    {
    }

    (*(v121 + 8))(v21, v0);
    v25 = v119;
  }

  v122[0] = 0;
  if ([v28 _setHeadphoneExposureNotificationsEnabled_error_])
  {
    v47 = v122[0];
    if ((sub_29D65E194() & 1) == 0)
    {
LABEL_9:
      sub_29D65F2E4();
      v48 = sub_29D65F2F4();
      v49 = sub_29D660214();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_29D5D7000, v48, v49, "Enabled phone settings for HAEN.", v50, 2u);
        MEMORY[0x29ED63350](v50, -1, -1);
      }

      v51 = *(v121 + 8);
      v52 = v25;
      goto LABEL_28;
    }
  }

  else
  {
    v53 = v122[0];
    v54 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v55 = v54;
    v56 = sub_29D65F2F4();
    v57 = sub_29D660204();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v119 = v25;
      v59 = v58;
      v60 = swift_slowAlloc();
      v117 = v9;
      v116 = v5;
      v61 = v60;
      v122[0] = v60;
      *v59 = 136446210;
      swift_getErrorValue();
      v62 = sub_29D6606D4();
      v64 = v13;
      v65 = v28;
      v66 = v0;
      v67 = sub_29D64A1D0(v62, v63, v122);

      *(v59 + 4) = v67;
      v0 = v66;
      v28 = v65;
      v13 = v64;
      _os_log_impl(&dword_29D5D7000, v56, v57, "Could not enable notifications on phone. %{public}s", v59, 0xCu);
      sub_29D5DF1C4(v61);
      v68 = v61;
      v5 = v116;
      v9 = v117;
      MEMORY[0x29ED63350](v68, -1, -1);
      v69 = v59;
      v25 = v119;
      MEMORY[0x29ED63350](v69, -1, -1);
    }

    else
    {
    }

    (*(v121 + 8))(v120, v0);
    if ((sub_29D65E194() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![v28 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    v82 = v118;
    sub_29D65F2E4();
    v83 = sub_29D65F2F4();
    v84 = sub_29D660214();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_29D5D7000, v83, v84, "Omitting enabling HAEN for unsupported watch.", v85, 2u);
      MEMORY[0x29ED63350](v85, -1, -1);
    }

    v51 = *(v121 + 8);
    v52 = v82;
    goto LABEL_28;
  }

  v122[0] = 0;
  result = [v28 isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError_];
  v71 = v122[0];
  if (v122[0])
  {
    swift_willThrow();
    v72 = v71;
    sub_29D65F2E4();
    v73 = v72;
    v74 = sub_29D65F2F4();
    v75 = sub_29D660204();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v0;
      v78 = swift_slowAlloc();
      v122[0] = v78;
      *v76 = 136446210;
      swift_getErrorValue();
      v79 = sub_29D6606D4();
      v81 = sub_29D64A1D0(v79, v80, v122);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_29D5D7000, v74, v75, "Could not enable determine if notifications enabled on watch. %{public}s", v76, 0xCu);
      sub_29D5DF1C4(v78);
      MEMORY[0x29ED63350](v78, -1, -1);
      MEMORY[0x29ED63350](v76, -1, -1);

LABEL_20:
      result = (*(v121 + 8))(v13, v77);
LABEL_29:
      v87 = *MEMORY[0x29EDCA608];
      return result;
    }

    v51 = *(v121 + 8);
    v52 = v13;
    goto LABEL_28;
  }

  if (result)
  {
    goto LABEL_29;
  }

  v122[0] = 0;
  if ([v28 _setHeadphoneExposureMeasureLevelsEnabledOnActiveWatch_error_])
  {
    v86 = v122[0];
  }

  else
  {
    v88 = v122[0];
    v89 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v90 = v89;
    v91 = sub_29D65F2F4();
    v92 = sub_29D660214();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v117 = v9;
      v95 = v5;
      v96 = v94;
      v122[0] = v94;
      *v93 = 136446210;
      swift_getErrorValue();
      v97 = sub_29D6606D4();
      v99 = v28;
      v100 = v0;
      v101 = sub_29D64A1D0(v97, v98, v122);

      *(v93 + 4) = v101;
      v0 = v100;
      v28 = v99;
      _os_log_impl(&dword_29D5D7000, v91, v92, "Could not enable measure levels on watch. %{public}s", v93, 0xCu);
      sub_29D5DF1C4(v96);
      v102 = v96;
      v5 = v95;
      MEMORY[0x29ED63350](v102, -1, -1);
      MEMORY[0x29ED63350](v93, -1, -1);

      (*(v121 + 8))(v117, v0);
    }

    else
    {

      (*(v121 + 8))(v9, v0);
    }
  }

  v122[0] = 0;
  if (![v28 _setHeadphoneExposureNotificationsEnabledOnActiveWatch_error_])
  {
    v120 = v122[0];
    v104 = v122[0];
    v105 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v106 = v105;
    v107 = sub_29D65F2F4();
    v108 = sub_29D660204();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v77 = v0;
      v110 = swift_slowAlloc();
      v122[0] = v110;
      *v109 = 136446210;
      swift_getErrorValue();
      v111 = sub_29D6606D4();
      v13 = v5;
      v113 = sub_29D64A1D0(v111, v112, v122);

      *(v109 + 4) = v113;
      _os_log_impl(&dword_29D5D7000, v107, v108, "Could not enable notifications on watch. %{public}s", v109, 0xCu);
      sub_29D5DF1C4(v110);
      MEMORY[0x29ED63350](v110, -1, -1);
      MEMORY[0x29ED63350](v109, -1, -1);

      goto LABEL_20;
    }

    v51 = *(v121 + 8);
    v52 = v5;
LABEL_28:
    result = v51(v52, v0);
    goto LABEL_29;
  }

  v103 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C710E0]();
}

uint64_t sub_29D657BD4(char a1, char a2)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_29D65DA74();
  v3 = sub_29D658B70(a2 & 1);

  return v3;
}

uint64_t sub_29D657D28(char a1)
{
  if (a1)
  {

    return sub_29D65E1E4();
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    return sub_29D65DA74();
  }
}

uint64_t sub_29D657DE4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];

  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
LABEL_11:
    sub_29D658D5C(&v5, &qword_2A17AC310, MEMORY[0x29EDCA178] + 8, sub_29D6124D4);
    return 0;
  }

  if ([v1 valueForProperty_])
  {
    sub_29D660474();
    sub_29D65EE94();
  }

  else
  {

    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D657F28(char a1, char a2)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_29D65DA74();
  v3 = sub_29D658B70(a2 & 1);

  return v3;
}

uint64_t sub_29D65807C@<X0>(uint64_t a1@<X8>)
{
  sub_29D658CF8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v10 - v5;
  sub_29D6581CC(&v10 - v5);
  v7 = sub_29D65DAF4();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D6581CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D658CF8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v27 - v11;
  sub_29D65DAE4();
  v13 = sub_29D65DAF4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D658D5C(v12, &qword_2A1A1E558, MEMORY[0x29EDB9B18], sub_29D658CF8);
    sub_29D65F2E4();
    v15 = sub_29D65F2F4();
    v16 = sub_29D660204();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = a1;
      v30 = v18;
      v19 = v18;
      *v17 = 136446210;
      v20 = sub_29D6607A4();
      v22 = sub_29D64A1D0(v20, v21, &v30);
      v28 = v2;
      v23 = v22;

      *(v17 + 4) = v23;
      _os_log_impl(&dword_29D5D7000, v15, v16, "[%{public}s]: Invalid URL.", v17, 0xCu);
      sub_29D5DF1C4(v19);
      v24 = v19;
      a1 = v29;
      MEMORY[0x29ED63350](v24, -1, -1);
      MEMORY[0x29ED63350](v17, -1, -1);

      (*(v3 + 8))(v7, v28);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    v25 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v12, v13);
    v25 = 0;
  }

  return (*(v14 + 56))(a1, v25, 1, v13);
}

uint64_t sub_29D6584F8()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDeviceDisplayName];
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D65FF64();
    v10 = v9;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v11 = MEMORY[0x29EDC99B0];
    v12 = MEMORY[0x29EDC9E90];
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    v26 = xmmword_29D661D90;
    *(v13 + 16) = xmmword_29D661D90;
    sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v26;
    *(v14 + 56) = v11;
    *(v14 + 64) = sub_29D5E3BCC();
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
    v15 = sub_29D65FF34();
    v17 = v16;

    result = v13;
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
  }

  else
  {
    sub_29D65F2E4();
    v19 = sub_29D65F2F4();
    v20 = sub_29D6601F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136446210;
      v23 = sub_29D6607A4();
      v25 = sub_29D64A1D0(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_29D5D7000, v19, v20, "[[%{public}s] Could not fetch device display name.", v21, 0xCu);
      sub_29D5DF1C4(v22);
      MEMORY[0x29ED63350](v22, -1, -1);
      MEMORY[0x29ED63350](v21, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D658848()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D657DE4();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v10 = MEMORY[0x29EDC99B0];
    v11 = MEMORY[0x29EDC9E90];
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v25 = xmmword_29D661D90;
    *(v12 + 16) = xmmword_29D661D90;
    sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v25;
    *(v13 + 56) = v10;
    *(v13 + 64) = sub_29D5E3BCC();
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    v14 = sub_29D65FF34();
    v16 = v15;

    result = v12;
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
  }

  else
  {
    sub_29D65F2E4();
    v18 = sub_29D65F2F4();
    v19 = sub_29D6601F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      v22 = sub_29D6607A4();
      v24 = sub_29D64A1D0(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D5D7000, v18, v19, "[[%{public}s] Could not fetch watch display name.", v20, 0xCu);
      sub_29D5DF1C4(v21);
      MEMORY[0x29ED63350](v21, -1, -1);
      MEMORY[0x29ED63350](v20, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D658B70(char a1)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
  }

  else
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  }

  v2 = sub_29D657D28(a1 & 1);
  v4 = v3;
  sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661D90;
  *(v5 + 56) = MEMORY[0x29EDC99B0];
  *(v5 + 64) = sub_29D5E3BCC();
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = sub_29D65FF34();

  return v6;
}

void sub_29D658CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D658D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v5 = a4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D658DD4()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin51HearingFeaturesInSettingsPromotionGeneratorPipeline_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin51HearingFeaturesInSettingsPromotionGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D658F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin51HearingFeaturesInSettingsPromotionGeneratorPipeline_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D658F98()
{
  swift_getObjectType();
  v0 = sub_29D65EDC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v6 = sub_29D65F314();
  sub_29D5DE6EC(v6, qword_2A1A20C00);
  v7 = sub_29D65F2F4();
  v8 = sub_29D6601E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    v11 = sub_29D6607A4();
    v13 = sub_29D64A1D0(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D5D7000, v7, v8, "[%{public}s] Did tap Hearing Features in Settings.", v9, 0xCu);
    sub_29D5DF1C4(v10);
    MEMORY[0x29ED63350](v10, -1, -1);
    MEMORY[0x29ED63350](v9, -1, -1);
  }

  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v14 = sub_29D65FF24();

  v15 = sub_29D65FF24();
  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = sub_29D65FF24();
  v18 = [objc_opt_self() actionWithTitle:v17 style:1 handler:0];

  [v16 addAction_];
  sub_29D65EF44();
  v19 = sub_29D65EDA4();
  (*(v1 + 8))(v5, v0);
  [v19 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_29D659314(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D659414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingFeaturesInSettingsPromotionTileViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6594E4(unint64_t *a1, void (*a2)(uint64_t))
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

double AudiogramPDFOverlayContextPills.renderable.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_29D659AD4(v1);
  *(a1 + 24) = &type metadata for PDFHStackWithEqualWidth;
  *(a1 + 32) = sub_29D5F95B8();
  *a1 = v3;
  result = 10.0;
  *(a1 + 8) = xmmword_29D663F60;
  return result;
}

uint64_t sub_29D659580(uint64_t a1, __int16 a2, uint64_t a3, int a4, char a5)
{
  v58 = sub_29D65E634();
  v10 = *(v58 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v58, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D601BA0(a1, a2, a3, a4 & 0xFFFFFF, a5 & 1);
  v61 = &type metadata for AudiogramPDFOverlayContextPillTitleText;
  v62 = sub_29D602108();
  v60[0] = v15;
  v16 = sub_29D65E884();
  sub_29D5DF1C4(v60);
  if ((a2 & 0xFF00) != 0x200 && (a4 & 1) == 0)
  {
    v17 = HKLocalizedStringForHearingLevelClassification();
    if (v17)
    {
      v18 = v17;
      v57 = sub_29D65FF64();
      v20 = v19;

      LOBYTE(v60[0]) = a2 & 1;
      v59 = 0;
      v21 = sub_29D5E002C(a1, a2 & 0x101);
      if (v22)
      {
        v23 = v22;
        v54 = v21;
        v24 = sub_29D65E4A4();
        v25 = objc_opt_self();
        if (a5)
        {
          v26 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
        }

        else
        {
          v26 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
        }

        v27 = [v25 *v26];
        v28 = sub_29D65FBD4();
        v29 = sub_29D5ED3CC(v28, v24);
        v56 = v20;
        v30 = v29;

        v31 = *MEMORY[0x29EDC1F60];
        v55 = *(v10 + 104);
        v32 = v58;
        v55(v14, v31, v58);
        v33 = sub_29D65F124();
        v61 = v33;
        v62 = MEMORY[0x29EDC2C00];
        sub_29D5E3C20(v60);
        MEMORY[0x29ED614D0](v54, v23, v14, v30);
        v34 = sub_29D65E884();
        sub_29D5DF1C4(v60);
        v35 = sub_29D65E4B4();
        v36 = [objc_opt_self() *v26];
        v37 = sub_29D65FBD4();
        v38 = sub_29D5ED3CC(v37, v35);

        v55(v14, v31, v32);
        v61 = v33;
        v62 = MEMORY[0x29EDC2C00];
        sub_29D5E3C20(v60);
        MEMORY[0x29ED614D0](v57, v56, v14, v38);
        v39 = sub_29D65E884();
        sub_29D5DF1C4(v60);
        sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_29D661D20;
        *(v40 + 32) = v34;
        *(v40 + 40) = v39;
        MEMORY[0x29ED60BF0]();

        v41 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        goto LABEL_13;
      }
    }
  }

  v42 = sub_29D65E4A4();
  v43 = objc_opt_self();
  v44 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a5 & 1) == 0)
  {
    v44 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v45 = [v43 *v44];
  v46 = sub_29D65FBD4();
  v47 = sub_29D5ED3CC(v46, v42);

  (*(v10 + 104))(v14, *MEMORY[0x29EDC1F60], v58);
  v61 = sub_29D65F124();
  v62 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v60);
  MEMORY[0x29ED614D0](11565, 0xE200000000000000, v14, v47);
  v48 = sub_29D65E884();
  sub_29D5DF1C4(v60);
  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_29D661D90;
  *(v49 + 32) = v48;
  MEMORY[0x29ED60BF0]();

  v41 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
LABEL_13:

  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_29D661D20;
  *(v50 + 32) = v16;
  *(v50 + 40) = v41;
  v51 = MEMORY[0x29ED60BF0]();

  return v51;
}

uint64_t sub_29D659AD4(uint64_t a1)
{
  if (sub_29D6229CC())
  {
    v2 = a1 + *(type metadata accessor for AudiogramPDFChartData() + 28);
    v3 = sub_29D659580(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24) | (*(v2 + 26) << 16), 1);
    v31 = &type metadata for PDFOverlayContextPill;
    v4 = sub_29D632AAC();
    v32 = v4;
    v5 = swift_allocObject();
    v30[0] = v5;
    *(v5 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    v6 = sub_29D602D64();
    *(v5 + 48) = v6;
    *(v5 + 16) = v3;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    sub_29D5ED468();
    v7 = objc_opt_self();
    v8 = [v7 systemPinkColor];
    v9 = [v8 colorWithAlphaComponent_];

    sub_29D65FBD4();
    *(v5 + 56) = sub_29D660344();
    v10 = sub_29D65E884();
    sub_29D5DF1C4(v30);
    v11 = sub_29D659580(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56) | (*(v2 + 58) << 16), 0);
    v31 = &type metadata for PDFOverlayContextPill;
    v32 = v4;
    v12 = swift_allocObject();
    v30[0] = v12;
    *(v12 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    *(v12 + 48) = v6;
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v13 = [v7 systemBlueColor];
  }

  else
  {
    v17 = a1 + *(type metadata accessor for AudiogramPDFChartData() + 28);
    v18 = sub_29D659580(*(v17 + 32), *(v17 + 40), *(v17 + 48), *(v17 + 56) | (*(v17 + 58) << 16), 0);
    v31 = &type metadata for PDFOverlayContextPill;
    v19 = sub_29D632AAC();
    v32 = v19;
    v20 = swift_allocObject();
    v30[0] = v20;
    *(v20 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    v21 = sub_29D602D64();
    *(v20 + 48) = v21;
    *(v20 + 16) = v18;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    sub_29D5ED468();
    v22 = objc_opt_self();
    v23 = [v22 systemBlueColor];
    v24 = [v23 colorWithAlphaComponent_];

    sub_29D65FBD4();
    *(v20 + 56) = sub_29D660344();
    v10 = sub_29D65E884();
    sub_29D5DF1C4(v30);
    v25 = sub_29D659580(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24) | (*(v17 + 26) << 16), 1);
    v31 = &type metadata for PDFOverlayContextPill;
    v32 = v19;
    v12 = swift_allocObject();
    v30[0] = v12;
    *(v12 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    *(v12 + 48) = v21;
    *(v12 + 16) = v25;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v13 = [v22 systemPinkColor];
  }

  v14 = [v13 colorWithAlphaComponent_];

  sub_29D65FBD4();
  *(v12 + 56) = sub_29D660344();
  v15 = sub_29D65E884();
  sub_29D5DF1C4(v30);
  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D661D20;
  *(v16 + 32) = v10;
  *(v16 + 40) = v15;
  MEMORY[0x29ED60BF0]();

  v26 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D661D90;
  *(v27 + 32) = v26;
  v28 = MEMORY[0x29ED60BF0]();

  return v28;
}

uint64_t type metadata accessor for AudiogramPDFOverlayContextPills()
{
  result = qword_2A17AD560;
  if (!qword_2A17AD560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D65A070()
{
  result = type metadata accessor for AudiogramPDFAudiogramChart.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D65A110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D65A174()
{
  result = qword_2A17AC338;
  if (!qword_2A17AC338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC338);
  }

  return result;
}

uint64_t sub_29D65A1D8(uint64_t result)
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
  v7 = *v1;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D65B330(result, v11, 1, v3);
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29D65A2CC(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D65B7D8(result, v11, 1, v3, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8]);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29D5DF210(0, &qword_2A17AC338);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D65A3F0(uint64_t result)
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_29D65B490(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC1638]);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_29D65DFE4();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29D65A54C(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D65B670(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29D5F3EFC();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D65A660(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29D6604B4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_29D6604B4();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_29D65BB04(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void HorizontalMeterView.init(model:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset] = 0;
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth] = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_model];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for HorizontalMeterView();
  v7 = v3;
  v8 = v4;
  v9 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *(a1 + 24);
  v11 = objc_allocWithZone(MEMORY[0x29EDC7DA0]);
  v12 = v9;
  v13 = [v11 initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = v8;
  [v13 setBackgroundColor_];
  v14 = [v13 layer];
  [v14 setCornerRadius_];

  v15 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = v7;
  [v15 setBackgroundColor_];
  v16 = [v15 layer];
  [v16 setCornerRadius_];

  [v12 addSubview_];
  [v12 addSubview_];
  if (*(a1 + 4) < 1.1755e-38)
  {
    [v15 setHidden_];
  }

  v17 = [v15 leadingAnchor];
  v18 = [v13 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  v20 = OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset;
  v21 = *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset];
  *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset] = v19;

  v22 = [v15 widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  v24 = OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth;
  v25 = *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth];
  *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth] = v23;

  sub_29D5F068C(0, &qword_2A1A1DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D6657B0;
  v27 = [v15 leadingAnchor];
  v28 = [v13 leadingAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 32) = v29;
  v30 = [v15 trailingAnchor];
  v31 = [v13 trailingAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor_];

  *(inited + 40) = v32;
  v33 = [v15 heightAnchor];
  v34 = [v13 heightAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(inited + 48) = v35;
  v36 = *&v12[v20];
  if (v36)
  {
    *(inited + 56) = v36;
    v37 = *&v12[v24];
    if (v37)
    {
      *(inited + 64) = v37;
      sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
      v38 = v36;
      v39 = v37;
      sub_29D6602E4();
      v40 = objc_opt_self();
      sub_29D65A660(inited, sub_29D65BCAC);
      v41 = sub_29D660024();

      [v40 activateConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id HorizontalMeterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HorizontalMeterView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset) = 0;
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth) = 0;
  sub_29D660594();
  __break(1u);
}

Swift::Void __swiftcall HorizontalMeterView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HorizontalMeterView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 frame];
  Width = CGRectGetWidth(v7);
  v2 = *&v0[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth];
  if (v2)
  {
    v3 = Width;
    v4 = &v0[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_model];
    [v2 setConstant_];
    v5 = *&v0[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset];
    if (v5)
    {
      [v5 setConstant_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id HorizontalMeterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HorizontalMeterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalMeterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_29D65B114(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D65B120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29D65B168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_29D65B21C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D5F068C(0, &qword_2A17AD588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_29D65B330(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D5F068C(0, &qword_2A1A1E678);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29D65B490(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D65C100(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D65B670(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D65C100(0, &qword_2A1A1EA60, sub_29D5F3EFC);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D5F3EFC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D65B7D8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_29D65C014(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D5DF210(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_29D65B940(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D65C07C();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D65C014(0, &qword_2A1A1E548, &qword_2A1A1EA48, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29D65BB04(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_29D6604B4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_29D660574();
  *v1 = result;
  return result;
}

void (*sub_29D65BBA4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED62900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D65C1A4;
  }

  __break(1u);
  return result;
}

void (*sub_29D65BC24(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED62900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D65BCA4;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D65BCAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D6604B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D6604B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D6425F8(0, &qword_2A17AD5A8, &qword_2A17AD388, 0x29EDBA008);
          sub_29D65C154(&qword_2A17AD5B0, &qword_2A17AD5A8, &qword_2A17AD388, 0x29EDBA008);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D65BBA4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D65BE60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D6604B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D6604B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D6425F8(0, &qword_2A17AD598, &qword_2A17AD590, 0x29EDC6288);
          sub_29D65C154(&qword_2A17AD5A0, &qword_2A17AD598, &qword_2A17AD590, 0x29EDC6288);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D65BC24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D5DF448(0, &qword_2A17AD590, 0x29EDC6288);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D65C014(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D65C07C()
{
  if (!qword_2A1A1DDA0)
  {
    sub_29D65C014(255, &qword_2A1A1E548, &qword_2A1A1EA48, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DDA0);
    }
  }
}

void sub_29D65C100(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D65C154(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6425F8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D65C1A8(uint64_t a1)
{
  v2 = sub_29D65E0E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x29EDC1760])
  {
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A20BF8;
    v10 = [qword_2A1A20BF8 localizedNoiseThresholdValue_];
    v11 = sub_29D65FF64();
    v13 = v12;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D65D88C(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D661D90;
    *(v14 + 56) = MEMORY[0x29EDC99B0];
    v15 = sub_29D5E3BCC();
    *(v14 + 64) = v15;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v16 = sub_29D65FF34();
    *&v46 = v17;

    v18 = [v9 noiseThresholdMinutesThreshold];
    sub_29D65DA74();
    v19 = swift_allocObject();
    v45 = xmmword_29D661D20;
    *(v19 + 16) = xmmword_29D661D20;
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    *(v19 + 64) = v15;
    v20 = MEMORY[0x29EDC9BA8];
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    v21 = MEMORY[0x29EDC9C10];
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 72) = v18;
    v22 = sub_29D65FF34();
    v24 = v23;

    sub_29D5F068C(0, &qword_2A1A1E678);
    result = swift_allocObject();
    *(result + 16) = v45;
    v26 = v46;
    *(result + 32) = v16;
    *(result + 40) = v26;
    *(result + 48) = v22;
    *(result + 56) = v24;
    return result;
  }

  if (v8 == *MEMORY[0x29EDC1768])
  {
    sub_29D5F068C(0, &qword_2A1A1E678);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v27 + 32) = sub_29D65DA74();
    *(v27 + 40) = v28;
    v29 = sub_29D65DA74();
    result = v27;
    *(v27 + 48) = v29;
    *(v27 + 56) = v30;
    return result;
  }

  if (v8 != *MEMORY[0x29EDC1758])
  {
    if (v8 != *MEMORY[0x29EDC1750])
    {
      (*(v3 + 8))(v7, v2);
      return MEMORY[0x29EDCA190];
    }

    v40 = sub_29D65E1B4();
    sub_29D5F068C(0, &qword_2A1A1E678);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_29D661D90;
    if (v40)
    {
      v42 = v41;
      if (qword_2A1A1EAA0 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v42 = v41;
      if (qword_2A1A1EAA0 == -1)
      {
LABEL_21:
        v43 = sub_29D65DA74();
        result = v42;
        *(v42 + 32) = v43;
        *(v42 + 40) = v44;
        return result;
      }
    }

    swift_once();
    goto LABEL_21;
  }

  v31 = sub_29D65E1E4();
  v33 = v32;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v34 = MEMORY[0x29EDC99B0];
  sub_29D5F068C(0, &qword_2A1A1E678);
  v35 = swift_allocObject();
  v46 = xmmword_29D661D90;
  *(v35 + 16) = xmmword_29D661D90;
  sub_29D65D88C(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v36 = swift_allocObject();
  *(v36 + 16) = v46;
  *(v36 + 56) = v34;
  *(v36 + 64) = sub_29D5E3BCC();
  *(v36 + 32) = v31;
  *(v36 + 40) = v33;
  v37 = sub_29D65FF34();
  v39 = v38;

  result = v35;
  *(v35 + 32) = v37;
  *(v35 + 40) = v39;
  return result;
}

uint64_t sub_29D65C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_29D65E214();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65DD54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65D88C(0, &qword_2A1A1E530, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D65E274();
  v25 = *(v65 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v65, v27);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v56 = sub_29D65D6A0();
  v57 = v30;
  v31 = v29;
  sub_29D65D054(a2, v29);
  v32 = sub_29D65E0E4();
  v33 = *(*(v32 - 8) + 16);
  v59 = a2;
  v33(v24, a2, v32);
  v34 = sub_29D65D944();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_29D65D934();
  sub_29D65D740(&qword_2A17AC500, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
  v64 = sub_29D65D924();
  v38 = v37;
  sub_29D5F80C4(v24);

  sub_29D65EE64();
  type metadata accessor for NoiseNotificationsFeatureStatusActionHandler(0);
  v39 = *(v25 + 16);
  v55 = v31;
  v40 = v31;
  v41 = v65;
  v39(v19, v40, v65);
  (*(v25 + 56))(v19, 0, 1, v41);
  (*(v10 + 104))(v14, *MEMORY[0x29EDC36F0], v9);
  v42 = sub_29D65DEF4();
  sub_29D65D740(&qword_2A17AC4E8, type metadata accessor for NoiseNotificationsFeatureStatusActionHandler);
  sub_29D65DDD4();

  (*(v10 + 8))(v14, v9);
  sub_29D65D788(v19, &qword_2A1A1E530, MEMORY[0x29EDC1948]);
  v43 = v55;
  sub_29D65E264();
  sub_29D65DE24();
  sub_29D5F068C(0, &qword_2A1A1E678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65E224();
  *(inited + 40) = v45;
  sub_29D63C9F8(inited);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D65DE54();
  v47 = v60;
  v46 = v61;
  v48 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x29EDC18C0], v62);
  sub_29D65E204();
  (*(v46 + 8))(v47, v48);
  sub_29D65DE64();
  sub_29D5F068C(0, &qword_2A1A1DD90);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(v49 + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(v49 + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CB80(v49);
  v51 = v50;
  swift_setDeallocating();
  v52 = *(v49 + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v51);

  sub_29D65DE34();
  sub_29D65DE14();
  sub_29D5E60C0(v64, v38);
  return (*(v25 + 8))(v43, v65);
}

uint64_t sub_29D65D054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D65D88C(0, &qword_2A1A1E538, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v54 = v46 - v7;
  v8 = sub_29D65E0D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65E0E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v53 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = v46 - v21;
  sub_29D65D88C(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], v3);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v52 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = v46 - v29;
  sub_29D65C1A8(a1);
  v31 = sub_29D65E1D4();
  v50 = v32;
  v51 = v31;
  v49 = *(v15 + 16);
  v49(v22, a1, v14);
  v33 = (*(v15 + 88))(v22, v14);
  if (v33 == *MEMORY[0x29EDC1758])
  {
    v34 = sub_29D65E1E4();
    v47 = v35;
    v48 = v34;
    (*(v9 + 104))(v13, *MEMORY[0x29EDC1720], v8);
    sub_29D65E0B4();
    (*(v9 + 8))(v13, v8);
  }

  else if (v33 == *MEMORY[0x29EDC1750])
  {
    v36 = sub_29D65E1C4();
    v47 = v37;
    v48 = v36;
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v38 = [qword_2A1A20BF8 noiseThresholdFooterLinkURL];
    sub_29D65DAD4();

    v39 = sub_29D65DAF4();
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
  }

  else
  {
    v40 = sub_29D65DAF4();
    (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
    (*(v15 + 8))(v22, v14);
    v47 = 0;
    v48 = 0;
  }

  v41 = sub_29D65E1F4();
  v46[1] = v42;
  v46[2] = v41;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v49(v53, a1, v14);
  v43 = v54;
  sub_29D65E124();
  v44 = sub_29D65E154();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  sub_29D65E1A4();
  sub_29D65D7F8(v30, v52);
  sub_29D65E254();
  return sub_29D65D788(v30, &qword_2A1A1E558, MEMORY[0x29EDB9B18]);
}

unint64_t sub_29D65D6A0()
{
  sub_29D660554();

  v0 = sub_29D65DEF4();
  v1 = sub_29D65DD74();
  v3 = v2;

  MEMORY[0x29ED62350](v1, v3);

  return 0xD00000000000003DLL;
}

uint64_t sub_29D65D740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D65D788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D65D88C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D65D7F8(uint64_t a1, uint64_t a2)
{
  sub_29D65D88C(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D65D88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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