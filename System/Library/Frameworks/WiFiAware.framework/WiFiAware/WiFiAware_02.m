uint64_t storeEnumTagSinglePayload for WAPerformanceReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B5D5BEC()
{
  result = qword_27E15D320;
  if (!qword_27E15D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D320);
  }

  return result;
}

unint64_t sub_23B5D5C44()
{
  result = qword_27E15D328;
  if (!qword_27E15D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D328);
  }

  return result;
}

unint64_t sub_23B5D5C9C()
{
  result = qword_27E15D330;
  if (!qword_27E15D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D330);
  }

  return result;
}

unint64_t sub_23B5D5CF4()
{
  result = qword_27E15D338;
  if (!qword_27E15D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D338);
  }

  return result;
}

unint64_t sub_23B5D5D4C()
{
  result = qword_27E15D340;
  if (!qword_27E15D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D340);
  }

  return result;
}

unint64_t sub_23B5D5DA4()
{
  result = qword_27E15D348;
  if (!qword_27E15D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D348);
  }

  return result;
}

unint64_t sub_23B5D5DFC()
{
  result = qword_27E15D350;
  if (!qword_27E15D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D350);
  }

  return result;
}

unint64_t sub_23B5D5E54()
{
  result = qword_27E15D358;
  if (!qword_27E15D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D358);
  }

  return result;
}

unint64_t sub_23B5D5EAC()
{
  result = qword_27E15D360;
  if (!qword_27E15D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D360);
  }

  return result;
}

unint64_t sub_23B5D5F04()
{
  result = qword_27E15D368;
  if (!qword_27E15D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D368);
  }

  return result;
}

unint64_t sub_23B5D5F5C()
{
  result = qword_27E15D370;
  if (!qword_27E15D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D370);
  }

  return result;
}

unint64_t sub_23B5D5FB4()
{
  result = qword_27E15D378;
  if (!qword_27E15D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D378);
  }

  return result;
}

unint64_t sub_23B5D600C()
{
  result = qword_27E15D380;
  if (!qword_27E15D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D380);
  }

  return result;
}

unint64_t sub_23B5D6064()
{
  result = qword_27E15D388;
  if (!qword_27E15D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D388);
  }

  return result;
}

unint64_t sub_23B5D60BC()
{
  result = qword_27E15D390;
  if (!qword_27E15D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D390);
  }

  return result;
}

unint64_t sub_23B5D6114()
{
  result = qword_27E15D398;
  if (!qword_27E15D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D398);
  }

  return result;
}

unint64_t sub_23B5D616C()
{
  result = qword_27E15D3A0;
  if (!qword_27E15D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3A0);
  }

  return result;
}

unint64_t sub_23B5D61C4()
{
  result = qword_27E15D3A8;
  if (!qword_27E15D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3A8);
  }

  return result;
}

unint64_t sub_23B5D621C()
{
  result = qword_27E15D3B0;
  if (!qword_27E15D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3B0);
  }

  return result;
}

unint64_t sub_23B5D6274()
{
  result = qword_27E15D3B8;
  if (!qword_27E15D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3B8);
  }

  return result;
}

unint64_t sub_23B5D62CC()
{
  result = qword_27E15D3C0;
  if (!qword_27E15D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3C0);
  }

  return result;
}

unint64_t sub_23B5D6324()
{
  result = qword_27E15D3C8;
  if (!qword_27E15D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3C8);
  }

  return result;
}

unint64_t sub_23B5D637C()
{
  result = qword_27E15D3D0;
  if (!qword_27E15D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3D0);
  }

  return result;
}

unint64_t sub_23B5D63D4()
{
  result = qword_27E15D3D8;
  if (!qword_27E15D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3D8);
  }

  return result;
}

uint64_t sub_23B5D6428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F66664574736562 && a2 == 0xEA00000000007472;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF900 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF920 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23B5D8C88();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23B5D65AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69546C61636F6CLL && a2 == 0xEE00706D61747365 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DF940 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B5DF960 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D736E617274 && a2 == 0xEF79636E6574614CLL || (sub_23B5D8C88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74536C616E676973 && a2 == 0xEE006874676E6572)
  {

    return 5;
  }

  else
  {
    v6 = sub_23B5D8C88();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23B5D67E0(__int128 *a1)
{
  v2 = v1;
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  swift_defaultActor_initialize();
  v7 = sub_23B5D6984(v23, *(&v23 + 1));
  if (v7)
  {
    v8 = v7;
    if (*(&v17 + 1))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [objc_opt_self() performanceFor:BYTE8(v22) datapathType:v9 peerMacAddress:{v7, v16, v17}];

    sub_23B5B260C(&v16);
    *(v2 + 112) = v10;
  }

  else
  {
    sub_23B5B260C(&v16);
    if (qword_27E15C308 != -1)
    {
      swift_once();
    }

    v11 = sub_23B5D84B8();
    __swift_project_value_buffer(v11, qword_27E15D480);
    v12 = sub_23B5D8498();
    v13 = sub_23B5D8908();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B5AA000, v12, v13, "Could not determine peer WiFi MAC address", v14, 2u);
      MEMORY[0x23EEA0310](v14, -1, -1);
    }

    type metadata accessor for WiFiAwarePerformancePrivate();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

id sub_23B5D6984(int64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 6)
      {
        goto LABEL_8;
      }

      return 0;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v2)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 6)
    {
      return 0;
    }

LABEL_8:
    while (v2 != 2)
    {
      if (v2 != 1)
      {
        v20 = vdupq_n_s64(a1);
        *v26.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_23B5DED10), vshlq_u64(v20, xmmword_23B5DED00)));
        v18 = a1;
        v19 = a1 >> 8;
        goto LABEL_23;
      }

      v7 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_26;
      }

      v8 = sub_23B5D8338();
      if (!v8)
      {
        goto LABEL_31;
      }

      v9 = v8;
      v10 = sub_23B5D8358();
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_28;
      }

      v11 = v7 - v10 + v9;
      a1 = sub_23B5D8348();
      if (v11)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_25;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
        return 0;
      }
    }

    v14 = *(a1 + 16);
    v15 = sub_23B5D8338();
    if (!v15)
    {
      goto LABEL_29;
    }

    v16 = v15;
    v17 = sub_23B5D8358();
    if (!__OFSUB__(v14, v17))
    {
      v11 = v14 - v17 + v16;
      sub_23B5D8348();
      if (!v11)
      {
        goto LABEL_30;
      }

LABEL_21:
      v18 = *v11;
      LOBYTE(v19) = *(v11 + 1);
      v12.i32[0] = *(v11 + 2);
      v26 = vmovl_u8(v12);
LABEL_23:
      v21 = objc_allocWithZone(MEMORY[0x277D7BB10]);
      v22 = vmovl_u16((v26.i64[0] & 0xFF00FF00FF00FFLL));
      v23.i64[0] = v22.u32[0];
      v23.i64[1] = v22.u32[1];
      v24 = v23;
      v23.i64[0] = v22.u32[2];
      v23.i64[1] = v22.u32[3];
      v25 = vorrq_s8(vshlq_u64(v24, xmmword_23B5DED30), vshlq_u64(v23, xmmword_23B5DED20));
      return [v21 initWithAddress_];
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_23B5D8348();
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_23B5D8348();
  __break(1u);
  return result;
}

uint64_t sub_23B5D6B70@<X0>(unint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B5D8AA8();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B5D8448();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v133 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v127 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v117 - v18;
  MEMORY[0x28223BE20](v17);
  v135 = &v117 - v20;
  v134 = sub_23B5C9450(MEMORY[0x277D84F90]);
  v21 = [v2 txLatency];
  v131 = v2;
  v132 = v8;
  v128 = v10;
  v129 = v9;
  v126 = v19;
  if (v21)
  {
    v22 = v21;
    v123 = v5;
    v124 = v4;
    v125 = a1;
    v23 = sub_23B5BCA08();
    sub_23B5D7894(&qword_27E15CD48, sub_23B5BCA08);
    v130 = v23;
    v24 = sub_23B5D8628();

    v25 = v24;
    if ((v24 & 0xC000000000000001) != 0)
    {
      a1 = 0;
      v26 = 0;
      v5 = 0;
      v24 = sub_23B5D8AC8() | 0x8000000000000000;
    }

    else
    {
      v27 = -1 << *(v24 + 32);
      v26 = ~v27;
      a1 = v24 + 64;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v5 = v29 & *(v24 + 64);
    }

    v122 = v25;

    v30 = 0;
    v121 = v26;
    v31 = (v26 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        v32 = v30;
        if ((v24 & 0x8000000000000000) != 0)
        {
          v38 = sub_23B5D8AD8();
          if (!v38 || (v40 = v39, v136 = v38, swift_dynamicCast(), v4 = v137, v136 = v40, swift_dynamicCast(), v37 = v137, !v4))
          {
LABEL_47:
            sub_23B5D78DC();

            a1 = v125;
            v4 = v124;
            v5 = v123;
            v2 = v131;
            v8 = v132;
            goto LABEL_48;
          }
        }

        else
        {
          v33 = v30;
          v34 = v5;
          if (!v5)
          {
            while (1)
            {
              v30 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                break;
              }

              if (v30 >= v31)
              {
                goto LABEL_47;
              }

              v34 = *(a1 + 8 * v30);
              ++v33;
              if (v34)
              {
                goto LABEL_14;
              }
            }

            __break(1u);
            swift_once();
            v92 = sub_23B5D84B8();
            __swift_project_value_buffer(v92, qword_27E15D480);
            v137 = 0;
            v138 = 0xE000000000000000;
            sub_23B5D8A08();
            MEMORY[0x23EE9F750](0xD000000000000022, 0x800000023B5DF9E0);
            swift_getErrorValue();
            sub_23B5D8C68();
            sub_23B5AC790(v137, v138);
            sub_23B5AE940(v31, v30);

            v8 = v24;
            v2 = v131;
            v82 = v135;
            goto LABEL_50;
          }

LABEL_14:
          v5 = (v34 - 1) & v34;
          v35 = (v30 << 9) | (8 * __clz(__rbit64(v34)));
          v36 = *(*(v24 + 56) + v35);
          v4 = *(*(v24 + 48) + v35);
          v37 = v36;
          if (!v4)
          {
            goto LABEL_47;
          }
        }

        v41 = [v4 integerValue];
        v42 = v41 - 1;
        if ((v41 - 1) <= 3)
        {
          break;
        }
      }

      sub_23B5D8DA8();
      [v37 doubleValue];
      sub_23B5D8D88();
      v119 = sub_23B5D8D98();
      v120 = v43;
      v44 = v134;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v44;
      v47 = sub_23B5C7B54(v42);
      v48 = *(v44 + 16);
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        result = sub_23B5D8CA8();
        __break(1u);
        return result;
      }

      if (*(v44 + 24) < v50)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v117 = v47;
      v118 = v46;
      v56 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF50, &qword_23B5DD850);
      v57 = sub_23B5D8B08();
      v44 = v57;
      if (*(v56 + 16))
      {
        v58 = (v57 + 64);
        v59 = v134 + 8;
        v60 = ((1 << *(v44 + 32)) + 63) >> 6;
        if (v44 != v134 || v58 >= &v59[v60])
        {
          memmove(v58, v134 + 8, 8 * v60);
        }

        v61 = 0;
        v62 = v134;
        *(v44 + 16) = v134[2];
        v63 = 1 << *(v62 + 32);
        v64 = v62[8];
        if (v63 < 64)
        {
          v65 = ~(-1 << v63);
        }

        else
        {
          v65 = -1;
        }

        v66 = v65 & v64;
        for (i = (v63 + 63) >> 6; v66; *(v76 + 24) = v74)
        {
          v68 = __clz(__rbit64(v66));
          v66 &= v66 - 1;
          v69 = v68 | (v61 << 6);
LABEL_41:
          v72 = v134[7] + 32 * v69;
          v73 = *v72;
          v74 = *(v72 + 24);
          v75 = *(v72 + 8);
          *(*(v44 + 48) + v69) = *(v134[6] + v69);
          v76 = *(v44 + 56) + 32 * v69;
          *v76 = v73;
          *(v76 + 8) = v75;
        }

        v70 = v61;
        while (1)
        {
          v61 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_65;
          }

          if (v61 >= i)
          {
            break;
          }

          v71 = v59[v61];
          ++v70;
          if (v71)
          {
            v66 = (v71 - 1) & v71;
            v69 = __clz(__rbit64(v71)) | (v61 << 6);
            goto LABEL_41;
          }
        }
      }

      v53 = v120;
      v54 = v119;
      v47 = v117;
      if (v118)
      {
LABEL_26:
        v55 = *(v44 + 56) + 32 * v47;
        *v55 = v42;
        *(v55 + 8) = v54;
        *(v55 + 16) = v53;
        *(v55 + 24) = 0;
        goto LABEL_46;
      }

LABEL_44:
      *(v44 + 8 * (v47 >> 6) + 64) |= 1 << v47;
      *(*(v44 + 48) + v47) = v42;
      v77 = *(v44 + 56) + 32 * v47;
      *v77 = v42;
      *(v77 + 8) = v54;
      *(v77 + 16) = v53;
      *(v77 + 24) = 0;
      v78 = *(v44 + 16);
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_64;
      }

      *(v44 + 16) = v80;
LABEL_46:

      v134 = v44;
    }

    v118 = v46;
    sub_23B5C742C(v50, isUniquelyReferenced_nonNull_native);
    v44 = v137;
    v51 = sub_23B5C7B54(v42);
    v52 = v46 & 1;
    LOBYTE(v46) = v118;
    if ((v118 & 1) != v52)
    {
      goto LABEL_66;
    }

    v47 = v51;
LABEL_25:
    v53 = v120;
    v54 = v119;
    if (v46)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_48:
  v81 = *(v5 + 56);
  v82 = v135;
  v81(v135, 1, 1, v4);
  v83 = [v2 localTimestamp];
  if (v83)
  {
    v84 = v83;
    v85 = sub_23B5D8428();
    v87 = v86;

    v88 = sub_23B5D83D8();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    swift_allocObject();
    sub_23B5D83C8();
    sub_23B5D7894(&qword_27E15D2B0, MEMORY[0x277D858F8]);
    v91 = v126;
    sub_23B5D83B8();
    v82 = v135;
    sub_23B5D77BC(v135);

    sub_23B5AE940(v85, v87);
    v81(v91, 0, 1, v4);
    sub_23B5D7824(v91, v82);
    v2 = v131;
    v8 = v132;
  }

LABEL_50:
  v93 = [v2 timestamp];
  sub_23B5D8438();

  v94 = v82;
  v95 = v127;
  sub_23B5D774C(v94, v127);
  v96 = *(v5 + 48);
  if (v96(v95, 1, v4) == 1)
  {
    sub_23B5D8A98();
    v97 = 0x278B83000;
    if (v96(v95, 1, v4) != 1)
    {
      sub_23B5D77BC(v95);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v95, v4);
    v97 = 0x278B83000uLL;
  }

  v98 = [v2 throughputCeilingMbps];
  v99 = v98;
  v100 = 0;
  v101 = 0;
  if (v98)
  {
    [v98 *(v97 + 3608)];
    v101 = v102;
  }

  v103 = [v2 throughputCapacityMbps];
  v104 = v103;
  if (v103)
  {
    [v103 *(v97 + 3608)];
    v100 = v105;
  }

  v106 = [v2 signalStrength];
  v107 = v106;
  if (v106)
  {
    [v106 *(v97 + 3608)];
    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  v110 = v99 == 0;
  sub_23B5D77BC(v135);
  (*(v128 + 32))(a1, v133, v129);
  v111 = type metadata accessor for WAPerformanceReport();
  (*(v5 + 32))(a1 + v111[5], v8, v4);
  v112 = v134;

  v114 = a1 + v111[6];
  *v114 = v101;
  *(v114 + 8) = v110;
  v115 = a1 + v111[7];
  *v115 = v100;
  *(v115 + 8) = v104 == 0;
  *(a1 + v111[8]) = v112;
  v116 = a1 + v111[9];
  *v116 = v109;
  *(v116 + 8) = v107 == 0;
  return result;
}

uint64_t sub_23B5D76F0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B5D774C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5D77BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B5D7824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5D7894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B5D78FC@<X0>(void *a1@<X8>)
{
  sub_23B5CCF10(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D018, &qword_23B5DDDF8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t WAEndpoint.device.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_23B5AF43C(v8, v7);
}

uint64_t WAEndpoint.nw.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WAEndpoint() + 24);
  v4 = sub_23B5D84D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WAEndpoint()
{
  result = qword_27E15D3F0;
  if (!qword_27E15D3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WAEndpoint.nw.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WAEndpoint() + 24);
  v4 = sub_23B5D84D8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WAEndpoint.description.getter()
{
  v1 = v0;
  sub_23B5D8A08();
  MEMORY[0x23EE9F750](0xD000000000000014, 0x800000023B5DFA10);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v3 = *(v2 + 8);
  sub_23B5D8C78();
  MEMORY[0x23EE9F750](0x656369766564202CLL, 0xEA0000000000203ALL);
  v8 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = *(v1 + 104);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v4 = WAPairedDevice.description.getter();
  MEMORY[0x23EE9F750](v4);

  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0;
}

uint64_t WAEndpoint.hash(into:)()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 32);
  sub_23B5D8668();
  v3 = v0[6];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[13];
  MEMORY[0x23EE9FD60](v0[5]);
  if (!v5)
  {
    sub_23B5D8D38();
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_23B5D8D38();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v7)
  {
    return sub_23B5D8D38();
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t WAEndpoint.hashValue.getter()
{
  sub_23B5D8D18();
  WAEndpoint.hash(into:)();
  return sub_23B5D8D58();
}

uint64_t sub_23B5D7DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23B5D84D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23B5D7E28()
{
  sub_23B5D8D18();
  WAEndpoint.hash(into:)();
  return sub_23B5D8D58();
}

uint64_t sub_23B5D7E6C()
{
  sub_23B5D8D18();
  WAEndpoint.hash(into:)();
  return sub_23B5D8D58();
}

BOOL _s9WiFiAware10WAEndpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_23B5CCF10(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D018, &qword_23B5DDDF8);
  if ((swift_dynamicCast() & 1) == 0 || !*(&v30[0] + 1))
  {
LABEL_5:
    sub_23B5CCF10(a1, v32);
    if ((swift_dynamicCast() & 1) != 0 && *(&v30[0] + 1))
    {
      sub_23B5CCF10(a2, v32);
      if (swift_dynamicCast())
      {
        goto LABEL_8;
      }

      v30[0] = 0uLL;
    }

    return 0;
  }

  sub_23B5CCF10(a2, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30[0] = 0uLL;

    goto LABEL_5;
  }

LABEL_8:

  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v26[2] = *(a1 + 72);
  v26[3] = v6;
  v27 = *(a1 + 104);
  v26[0] = *(a1 + 40);
  v26[1] = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 88);
  v23 = *(a1 + 72);
  v24 = v8;
  v25 = *(a1 + 104);
  v21 = *(a1 + 40);
  v22 = v7;
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  v29 = *(a2 + 104);
  v28[2] = v11;
  v28[3] = v12;
  v28[0] = v9;
  v28[1] = v10;
  v13 = *(a2 + 56);
  v14 = *(a2 + 88);
  v18 = *(a2 + 72);
  v19 = v14;
  v20 = *(a2 + 104);
  v16 = *(a2 + 40);
  v17 = v13;
  sub_23B5AF43C(v26, v32);
  sub_23B5AF43C(v28, v32);
  v15 = _s9WiFiAware14WAPairedDeviceV2eeoiySbAC_ACtFZ_0(&v21, &v16);
  v30[2] = v18;
  v30[3] = v19;
  v31 = v20;
  v30[0] = v16;
  v30[1] = v17;
  sub_23B5AFD30(v30);
  v32[2] = v23;
  v32[3] = v24;
  v33 = v25;
  v32[0] = v21;
  v32[1] = v22;
  sub_23B5AFD30(v32);
  return v15;
}

unint64_t sub_23B5D8158()
{
  result = qword_27E15D3E8;
  if (!qword_27E15D3E8)
  {
    type metadata accessor for WAEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3E8);
  }

  return result;
}

unint64_t sub_23B5D81D8()
{
  result = sub_23B5D8264();
  if (v1 <= 0x3F)
  {
    result = sub_23B5D84D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B5D8264()
{
  result = qword_27E15D400;
  if (!qword_27E15D400)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E15D400);
  }

  return result;
}