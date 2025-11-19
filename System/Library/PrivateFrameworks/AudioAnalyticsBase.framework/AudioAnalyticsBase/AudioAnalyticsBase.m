uint64_t type metadata accessor for OsTransactionHandler()
{
  result = qword_281336258;
  if (!qword_281336258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static OsTransactionHandler.shared.getter()
{
  if (qword_281336270 != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall OsTransactionHandler.inactive()()
{
  v1 = sub_2239B2FC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  os_unfair_lock_lock(v6 + 4);
  if (*(v0 + 24))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_lastActiveTime);
    sub_2239B2FB8();
    sub_2239B2FA8();
    v10 = v9;
    (*(v2 + 8))(v5, v1);
    v7 = v8 < v10 + -10.0;
  }

  os_unfair_lock_unlock(v6 + 4);
  return v7;
}

double static Double.now()()
{
  v0 = sub_2239B2FC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2FB8();
  sub_2239B2FA8();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Utilities.processName(for:)(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF78, &unk_2239B8670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2239B51F0;
  *(v2 + 32) = 0xE00000001;
  v3 = (v2 + 32);
  *(v2 + 40) = 1;
  *(v2 + 44) = a1;
  bzero(v9, 0x288uLL);
  v8 = 648;
  v4 = sysctl(v3, 4u, v9, &v8, 0, 0);
  if (v4 == sub_2239B3068())
  {
    v5 = sub_2239B3268();

    result = v5;
  }

  else
  {

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22395DCA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2239B3048();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::Void __swiftcall OsTransactionHandler.sessionStarted(for:)(Swift::Int64 a1)
{
  v2 = v1;
  v4 = sub_2239B2FC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 16);
  os_unfair_lock_lock(v9 + 4);
  if (!*(v2 + 24))
  {
    sub_2239B31E8();
    v10 = os_transaction_create();

    v11 = *(v2 + 24);
    *(v2 + 24) = v10;
    swift_unknownObjectRelease();
    sub_2239B2FB8();
    sub_2239B2FA8();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    *(v2 + OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_lastActiveTime) = v13;
    v14 = sub_2239B3028();
    v15 = sub_2239B34D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_22395C000, v14, v15, "Marking dirty, created OsTransaction. { reporterID=%lld }", v16, 0xCu);
      MEMORY[0x223DEF1D0](v16, -1, -1);
    }
  }

  swift_beginAccess();
  sub_22395DF70(&v18, a1);
  swift_endAccess();
  os_unfair_lock_unlock(v9 + 4);
}

uint64_t sub_22395DF70(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_2239B3A08();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22395E050(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22395E050(uint64_t result, unint64_t a2, char a3)
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
    sub_223997390(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_223998324();
      a2 = v7;
      goto LABEL_12;
    }

    sub_223998A04(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_2239B3A08();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2239B3998();
  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Dictionary<>.asSimpleType()(uint64_t a1)
{
  v2 = sub_2239B3048();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  result = sub_2239B3778();
  v6 = result;
  v7 = 0;
  v51 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = (*(v51 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_22395E644(*(v51 + 56) + 32 * v19, v56);
      sub_22395E644(v56, &v52);

      SimpleType.init(_:)(&v52, &v54);
      v23 = v55;
      if (v55 == 255)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(v56);
      v24 = v54;
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (v6[6] + 16 * v19);
      *v25 = v22;
      v25[1] = v21;
      v26 = v6[7] + 24 * v19;
      *v26 = v24;
      *(v26 + 16) = v23;
      v27 = v6[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      v6[2] = v29;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_22397617C(v54, *(&v54 + 1), 255);
    sub_2239A1E9C();
    v30 = swift_allocError();
    v32 = v31;
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    swift_getDynamicType();
    v33 = sub_2239B3AC8();
    v35 = v34;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_2239B3758();
    v36 = v52;
    v37 = v53;
    *v32 = v33;
    v32[1] = v35;
    v32[2] = v36;
    v32[3] = v37;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    v38 = v48;
    sub_2239B3038();
    v39 = v30;
    v40 = sub_2239B3028();
    v41 = sub_2239B34D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v56[0] = v43;
      *v42 = 136380675;
      swift_getErrorValue();
      v44 = sub_2239B39B8();
      v46 = sub_223973B2C(v44, v45, v56);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_22395C000, v40, v41, "%{private}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x223DEF1D0](v43, -1, -1);
      MEMORY[0x223DEF1D0](v42, -1, -1);
    }

    else
    {
    }

    (*(v49 + 8))(v38, v50);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_22395E644(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SimpleType.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2239B3048();
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2239B2EA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22395E644(a1, v135);
  sub_22395F84C(0, &qword_2813365E0, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v13 = v132;
    if (*MEMORY[0x277CBED28])
    {
      v14 = v132 == *MEMORY[0x277CBED28];
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(a1);

      v17 = 3;
      v16 = 1;
      goto LABEL_28;
    }

    v15 = *MEMORY[0x277CBED10];

    if (v15)
    {
      if (v13 == v15)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        v16 = 0;
        v17 = 3;
LABEL_28:
        result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
        *a2 = v16;
        *(a2 + 8) = 0;
        *(a2 + 16) = v17;
        return result;
      }
    }
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = 0;
    v16 = v132;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = 0;
    v16 = v132;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = 0;
    v16 = v132;
    goto LABEL_28;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = 0;
    v16 = v132;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v16 = v132;
LABEL_27:
    v17 = 1;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v16 = v132;
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v16 = v132;
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v16 = v132;
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v19 = v132;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
    *a2 = v19;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return result;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v20 = *&v132;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
    *a2 = v20;
LABEL_35:
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    return result;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v21 = v132;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
    *a2 = v21;
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v22 = v132;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
    *a2 = v22;
    *(a2 + 16) = 4;
    return result;
  }

  sub_22395F84C(0, &unk_281335D20, 0x277CBEA60);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
    if (swift_dynamicCast())
    {
      v32 = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
      result = sub_2239B3778();
      v33 = 0;
      v34 = v32[8];
      v121 = v32 + 8;
      v124 = v32;
      v35 = 1 << *(v32 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & v34;
      v120 = (v35 + 63) >> 6;
      *&v123 = result;
      v122 = result + 64;
      if ((v36 & v34) != 0)
      {
        while (1)
        {
          v38 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
LABEL_58:
          v41 = v38 | (v33 << 6);
          v42 = *(v124 + 56);
          v43 = (*(v124 + 48) + 16 * v41);
          v44 = v43[1];
          v125 = *v43;
          sub_22395E644(v42 + 32 * v41, &v132);
          sub_22395E644(&v132, &v128);

          SimpleType.init(_:)(&v130, &v128);
          v45 = v131;
          if (v131 == 255)
          {
            break;
          }

          result = __swift_destroy_boxed_opaque_existential_0Tm(&v132);
          v46 = v130;
          *(v122 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
          v47 = v123;
          v48 = (*(v123 + 48) + 16 * v41);
          *v48 = v125;
          v48[1] = v44;
          v49 = *(v47 + 56) + 24 * v41;
          *v49 = v46;
          *(v49 + 16) = v45;
          v50 = *(v47 + 16);
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_102;
          }

          *(v47 + 16) = v52;
          if (!v37)
          {
            goto LABEL_53;
          }
        }

        sub_22397617C(v130, *(&v130 + 1), 255);
        sub_2239A1E9C();
        v105 = swift_allocError();
        v107 = v106;
        __swift_project_boxed_opaque_existential_1(&v132, v133);
        swift_getDynamicType();
        v108 = sub_2239B3AC8();
        v110 = v109;
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_2239B3758();
        v111 = v128;
        *v107 = v108;
        *(v107 + 8) = v110;
        *(v107 + 16) = v111;
        v88 = v105;
        swift_willThrow();

LABEL_87:
        __swift_destroy_boxed_opaque_existential_0Tm(&v132);
LABEL_89:
        __swift_destroy_boxed_opaque_existential_0Tm(v135);
        sub_2239B3038();
        v96 = v88;
        v97 = sub_2239B3028();
        v98 = sub_2239B34D8();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v135[0] = v100;
          *v99 = 136380675;
          v125 = v88;
          swift_getErrorValue();
          v101 = sub_2239B39B8();
          v103 = sub_223973B2C(v101, v102, v135);

          *(v99 + 4) = v103;
          _os_log_impl(&dword_22395C000, v97, v98, "%{private}s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          MEMORY[0x223DEF1D0](v100, -1, -1);
          MEMORY[0x223DEF1D0](v99, -1, -1);

          v104 = v125;
        }

        else
        {

          v104 = v88;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        result = (*(v126 + 8))(v7, v4);
        goto LABEL_97;
      }

LABEL_53:
      v39 = v33;
      while (1)
      {
        v33 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v33 >= v120)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(a1);
          result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
          v80 = &v136;
          goto LABEL_94;
        }

        v40 = v121[v33];
        ++v39;
        if (v40)
        {
          v38 = __clz(__rbit64(v40));
          v37 = (v40 - 1) & v40;
          goto LABEL_58;
        }
      }

      __break(1u);
      goto LABEL_101;
    }

    sub_22395F84C(0, &qword_27D0A0490, 0x277CBEAC0);
    if (swift_dynamicCast())
    {
      *&v132 = 0;
      v121 = v134;
      sub_2239B30D8();
      *&v123 = v132;
      if (v132)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
        v60 = v123;
        result = sub_2239B3778();
        v61 = 0;
        v62 = *(v60 + 64);
        v120 = v60 + 64;
        v63 = 1 << *(v60 + 32);
        v64 = -1;
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        v65 = v64 & v62;
        v119 = (v63 + 63) >> 6;
        v125 = result;
        v122 = result + 64;
        if ((v64 & v62) != 0)
        {
          while (1)
          {
            v66 = __clz(__rbit64(v65));
            v65 &= v65 - 1;
LABEL_79:
            v69 = v66 | (v61 << 6);
            v70 = *(v123 + 56);
            v71 = (*(v123 + 48) + 16 * v69);
            v72 = v71[1];
            v124 = *v71;
            sub_22395E644(v70 + 32 * v69, &v132);
            sub_22395E644(&v132, &v128);

            SimpleType.init(_:)(&v130, &v128);
            v73 = v131;
            if (v131 == 255)
            {
              break;
            }

            result = __swift_destroy_boxed_opaque_existential_0Tm(&v132);
            v74 = v130;
            *(v122 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
            v75 = v125;
            v76 = (v125[6] + 16 * v69);
            *v76 = v124;
            v76[1] = v72;
            v77 = v75[7] + 24 * v69;
            *v77 = v74;
            *(v77 + 16) = v73;
            v78 = v75[2];
            v51 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v51)
            {
              goto LABEL_104;
            }

            v125[2] = v79;
            if (!v65)
            {
              goto LABEL_74;
            }
          }

          sub_22397617C(v130, *(&v130 + 1), 255);
          sub_2239A1E9C();
          v112 = swift_allocError();
          v114 = v113;
          __swift_project_boxed_opaque_existential_1(&v132, v133);
          swift_getDynamicType();
          v115 = sub_2239B3AC8();
          v117 = v116;
          *&v128 = 0;
          *(&v128 + 1) = 0xE000000000000000;
          sub_2239B3758();
          v118 = v128;
          *v114 = v115;
          *(v114 + 8) = v117;
          *(v114 + 16) = v118;
          v88 = v112;
          swift_willThrow();

LABEL_86:

          goto LABEL_87;
        }

LABEL_74:
        v67 = v61;
        while (1)
        {
          v61 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v61 >= v119)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(a1);
            result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
            v80 = &v137;
LABEL_94:
            *a2 = *(v80 - 32);
            *(a2 + 8) = 0;
            *(a2 + 16) = 6;
            return result;
          }

          v68 = *(v120 + 8 * v61);
          ++v67;
          if (v68)
          {
            v66 = __clz(__rbit64(v68));
            v65 = (v68 - 1) & v68;
            goto LABEL_79;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
LABEL_97:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return result;
  }

  v23 = v134;
  v124 = [v134 count];
  v127 = MEMORY[0x277D84F90];
  sub_223982A80(0, v124 & ~(v124 >> 63), 0);
  v125 = v127;
  v121 = v23;
  result = sub_2239B3558();
  if (v124 < 0)
  {
    goto LABEL_103;
  }

  v24 = v124;
  if (!v124)
  {
LABEL_62:
    sub_2239A39EC();
    while (1)
    {
      sub_2239B35B8();
      if (!v129)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        (*(v9 + 8))(v12, v8);
        sub_2239A3A44(&v128);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v135);
        *a2 = v125;
        *(a2 + 8) = 0;
        *(a2 + 16) = 5;
        return result;
      }

      sub_2239685CC(&v128, &v132);
      sub_22395E644(&v132, &v128);
      SimpleType.init(_:)(&v130, &v128);
      v53 = v131;
      if (v131 == 255)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v132);
      v54 = v130;
      v55 = v125;
      v127 = v125;
      v57 = v125[2];
      v56 = v125[3];
      v58 = (v57 + 1);
      if (v57 >= v56 >> 1)
      {
        LODWORD(v124) = v53;
        v125 = (v57 + 1);
        v123 = v130;
        v122 = v57;
        sub_223982A80((v56 > 1), v57 + 1, 1);
        v58 = v125;
        v57 = v122;
        v54 = v123;
        LOBYTE(v53) = v124;
        v55 = v127;
      }

      v55[2] = v58;
      v125 = v55;
      v59 = &v55[3 * v57];
      *(v59 + 2) = v54;
      *(v59 + 48) = v53;
    }

    (*(v9 + 8))(v12, v8);
    sub_22397617C(v130, *(&v130 + 1), v131);
    sub_2239A1E9C();
    v89 = swift_allocError();
    v91 = v90;
    __swift_project_boxed_opaque_existential_1(&v132, v133);
    swift_getDynamicType();
    v92 = sub_2239B3AC8();
    v94 = v93;
    *&v128 = 0;
    *(&v128 + 1) = 0xE000000000000000;
    sub_2239B3758();
    v95 = v128;
    *v91 = v92;
    *(v91 + 8) = v94;
    *(v91 + 16) = v95;
    v88 = v89;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm(&v132);

    goto LABEL_89;
  }

  v122 = sub_2239A39EC();
  while (1)
  {
    result = sub_2239B35B8();
    if (!v133)
    {
      break;
    }

    sub_22395E644(&v132, &v128);
    SimpleType.init(_:)(&v130, &v128);
    v25 = v131;
    if (v131 == 255)
    {
      (*(v9 + 8))(v12, v8);
      sub_22397617C(v130, *(&v130 + 1), v131);
      sub_2239A1E9C();
      v81 = swift_allocError();
      v83 = v82;
      __swift_project_boxed_opaque_existential_1(&v132, v133);
      swift_getDynamicType();
      v84 = sub_2239B3AC8();
      v86 = v85;
      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_2239B3758();
      v87 = v128;
      *v83 = v84;
      *(v83 + 8) = v86;
      *(v83 + 16) = v87;
      v88 = v81;
      swift_willThrow();

      goto LABEL_86;
    }

    *&v123 = *(&v130 + 1);
    v124 = v130;
    __swift_destroy_boxed_opaque_existential_0Tm(&v132);
    v26 = v125;
    v127 = v125;
    v28 = v125[2];
    v27 = v125[3];
    v29 = (v28 + 1);
    if (v28 >= v27 >> 1)
    {
      LODWORD(v120) = v25;
      v125 = (v28 + 1);
      v119 = v28;
      sub_223982A80((v27 > 1), v28 + 1, 1);
      v29 = v125;
      v28 = v119;
      LOBYTE(v25) = v120;
      v26 = v127;
    }

    v26[2] = v29;
    v125 = v26;
    v30 = &v26[3 * v28];
    v31 = v123;
    v30[4] = v124;
    v30[5] = v31;
    *(v30 + 48) = v25;
    if (!--v24)
    {
      goto LABEL_62;
    }
  }

LABEL_105:
  __break(1u);
  return result;
}

uint64_t TraceArgs.init(arg1:arg2:arg3:arg4:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_22395F84C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t Preference.init(_:initValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = 0xD00000000000001FLL;
  v6[3] = 0x80000002239B9F30;
  return Preference.init(_:initValue:)(v6, a3, a4, a5);
}

Swift::Void __swiftcall Preference.sync()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = sub_2239B3598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = *(v1 + 3);
  static DefaultsUtilities.get<A>(key:applicationID:userName:)(0xE600000000000000, v3, v9);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    (*(v5 + 8))(v9, v4);
    (*(v10 + 24))(&v1[*(v2 + 28)], &v1[*(v2 + 32)], v3);
  }

  else
  {
    (*(v10 + 32))(v13, v9, v3);
    (*(v10 + 40))(&v1[*(v2 + 28)], v13, v3);
  }
}

uint64_t static DefaultsUtilities.get<A>(key:applicationID:userName:)@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, char *a3@<X8>)
{
  v46 = a1;
  v47 = a3;
  v4 = sub_2239B3598();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v44 - v7;
  v9 = *(a2 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v6);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2239B3158();
  CFPreferencesAppSynchronize(v13);

  v14 = sub_2239B3158();
  v15 = sub_2239B3158();
  v16 = sub_2239B3158();
  v17 = CFPreferencesCopyValue(v14, v15, v16, *MEMORY[0x277CBF010]);

  *&v48 = v17;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  v18 = swift_dynamicCast();
  v19 = v9[7];
  if (v18)
  {
    v19(v8, 0, 1, a2);
    v20 = v9[4];
    v20(v12, v8, a2);
    v21 = v47;
    v20(v47, v12, a2);
    v22 = v21;
    v23 = 0;
LABEL_20:
    v39 = a2;
    goto LABEL_21;
  }

  v24 = v47;
  v19(v8, 1, 1, a2);
  (*(v44 + 8))(v8, v45);
  v25 = swift_conformsToProtocol2();
  if (v25)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    if (v17)
    {
      v27 = v25;
      v51 = v17;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        if (swift_conformsToProtocol2())
        {
          v46 = a2;
          v44 = sub_2239B3598();
          v45 = &v44;
          v28 = *(v44 - 8);
          v29 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v44);
          v31 = &v44 - v30;
          sub_2239B3938();
          v32 = *(v26 - 8);
          if ((*(v32 + 48))(v31, 1, v26) == 1)
          {
            (*(v28 + 8))(v31, v44);
            v50 = 0;
            v48 = 0u;
            v49 = 0u;
          }

          else
          {
            *(&v49 + 1) = v26;
            v50 = v27;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
            (*(v32 + 32))(boxed_opaque_existential_1, v31, v26);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
          v42 = v24;
          v43 = v46;
          v23 = swift_dynamicCast() ^ 1;
          v22 = v42;
          v39 = v43;
          goto LABEL_21;
        }
      }
    }
  }

  if (!swift_dynamicCastMetatype() || !v17)
  {
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = [v33 BOOLValue];
    swift_unknownObjectRelease();
    LOBYTE(v48) = v34;
    v23 = swift_dynamicCast() ^ 1;
    v22 = v24;
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  v51 = v17;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v22 = v24;
    v23 = 1;
    goto LABEL_20;
  }

  v35 = sub_2239B31D8();
  v37 = v36;

  *&v48 = v35;
  *(&v48 + 1) = v37;
  MEMORY[0x28223BE20](v38);
  *(&v44 - 2) = &v48;
  LOBYTE(v35) = sub_223968CB8(sub_223968D9C, (&v44 - 4), &unk_2836FD148);
  swift_arrayDestroy();

  LOBYTE(v48) = v35 & 1;
  v23 = swift_dynamicCast() ^ 1;
  v22 = v24;
  v39 = a2;
LABEL_21:
  v19(v22, v23, 1, v39);
  sub_2239605FC();
  return swift_unknownObjectRelease();
}

uint64_t sub_22396013C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_223960180()
{
  if (qword_281336898 != -1)
  {
    swift_once();
  }

  v0 = *(off_2813368A0 + 2);

  os_unfair_lock_lock((v0 + 24));
  sub_223960244((v0 + 16), &v3);
  os_unfair_lock_unlock((v0 + 24));
  v1 = v3;

  if (v1)
  {
    sub_22396F840();
  }
}

uint64_t sub_223960260@<X0>(double *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = sub_2239B2FC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2FB8();
  sub_2239B2FA8();
  v12 = v11;
  result = (*(v7 + 8))(v10, v6);
  v14 = *a1;
  if (*a1 <= v12)
  {
    *a1 = v12 + *(a2 + 24);
  }

  *a3 = v14 <= v12;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_223960400@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 6);
  sub_223964C70(&v3[4], a1);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t Preference.init(_:initValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  v9 = type metadata accessor for Preference();
  v13 = *(a3 - 8);
  (*(v13 + 16))(a4 + *(v9 + 32), a2, a3);
  v10 = *(v13 + 32);
  v11 = a4 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t Preference.query()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Preference.sync()();
  v5 = *(*(*(a1 + 16) - 8) + 16);
  v6 = v2 + *(a1 + 28);

  return v5(a2, v6);
}

uint64_t sub_2239605FC()
{
  v0 = sub_2239B3078();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2239B30B8();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281336880 != -1)
  {
    swift_once();
  }

  v11[1] = qword_281336888;
  aBlock[4] = sub_223960180;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22396013C;
  aBlock[3] = &block_descriptor_10;
  v9 = _Block_copy(aBlock);
  sub_2239B3098();
  v13 = MEMORY[0x277D84F90];
  sub_22396091C(&unk_281336638, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
  sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
  sub_2239B3608();
  MEMORY[0x223DEE310](0, v8, v4, v9);
  _Block_release(v9);
  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v12);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22396091C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223960964(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Config.rtcConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v4 = *(v1 + 192);
  v10 = *(v1 + 176);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 208);
  v6 = *(v1 + 144);
  v9[0] = *(v1 + 128);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_223960A4C(v9, v8);
}

uint64_t static Utilities.audioCapturesEnabled()()
{
  v0 = sub_223960C28();
  if ((v0 == 2 || (v0 & 1) == 0) && ((v1 = sub_223960C28(), v1 == 2) || (v1 & 1) == 0) && ((v2 = sub_223960C28(), v2 == 2) || (v2 & 1) == 0) && ((v3 = sub_223960C28(), v3 == 2) || (v3 & 1) == 0))
  {
    v4 = sub_223960C28();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_223960C28()
{
  v0 = sub_2239B3158();
  CFPreferencesAppSynchronize(v0);

  v1 = sub_2239B3158();
  v2 = sub_2239B3158();
  v3 = sub_2239B3158();
  v4 = CFPreferencesCopyValue(v1, v2, v3, *MEMORY[0x277CBF010]);

  *&v24 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  if (swift_dynamicCast())
  {
    v5 = v27;
LABEL_16:
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v5;
  }

  if (!v4)
  {
LABEL_17:
    sub_2239605FC();
    swift_unknownObjectRelease();
    return 2;
  }

  v27 = v4;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    swift_unknownObjectRetain();
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v5 = [v15 BOOLValue];
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
    v27 = v4;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v16 = sub_2239B31D8();
      v18 = v17;

      *&v24 = v16;
      *(&v24 + 1) = v18;
      MEMORY[0x28223BE20](v19);
      v23[2] = &v24;
      LOBYTE(v16) = sub_223968CB8(sub_223968D9C, v23, &unk_2836FBA60);
      swift_arrayDestroy();

      v5 = v16 & 1;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v6 = v24;
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_12;
  }

  v7 = MEMORY[0x277D839B0];
  v8 = sub_2239B3598();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  if (v24 == __PAIR128__(0xE400000000000000, 1702195828) || (sub_2239B3958() & 1) != 0)
  {

    v13 = 1;
  }

  else if (v6 == __PAIR128__(0xE500000000000000, 0x65736C6166))
  {

    v13 = 0;
  }

  else
  {
    v22 = sub_2239B3958();

    v13 = 0;
    if ((v22 & 1) == 0)
    {
      v13 = 2;
    }
  }

  *v12 = v13;
  v14 = *(v7 - 8);
  if ((*(v14 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v25 + 1) = v7;
    v26 = MEMORY[0x277D839E0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(v14 + 32))(boxed_opaque_existential_1, v12, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v27) = 2;
  }

  sub_2239605FC();
  swift_unknownObjectRelease();
  return v27;
}

uint64_t static Utilities.ringBufferAudioCapturesEnabled()()
{
  v0 = sub_223961330();
  v2 = v1;
  v3 = (v0 - 1) < 3;
  v4 = sub_223964914();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v6 == 0x74726F6853 && v7 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0 || v6 == 0x6D756964654DLL && v7 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0 || v6 == 1735290700 && v7 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_2239B3958();
  }

  v9 = v3 & ~v2;
  v10 = sub_223961330();
  if ((v11 & 1) != 0 || v10 <= 1)
  {
    v12 = v9 | v8;
  }

  else if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8 | (v10 < 5);
  }

  return v12 & 1;
}

unsigned __int8 *sub_223961330()
{
  v0 = sub_2239B3158();
  CFPreferencesAppSynchronize(v0);

  v1 = sub_2239B3158();
  v2 = sub_2239B3158();
  v3 = sub_2239B3158();
  v4 = CFPreferencesCopyValue(v1, v2, v3, *MEMORY[0x277CBF010]);

  v44 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  if (swift_dynamicCast())
  {
    v5 = v41;
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v5;
  }

  if (!v4 || (v44 = v4, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    sub_2239605FC();
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = MEMORY[0x277D83B88];
  v7 = sub_2239B3598();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  v13 = HIBYTE(*(&v41 + 1)) & 0xFLL;
  v14 = v41 & 0xFFFFFFFFFFFFLL;
  if ((*(&v41 + 1) & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(*(&v41 + 1)) & 0xFLL;
  }

  else
  {
    v15 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    v36 = 0;
    v35 = 1;
    goto LABEL_71;
  }

  if ((*(&v41 + 1) & 0x1000000000000000) != 0)
  {
    v17 = sub_223988D5C(v41, *(&v41 + 1), 10);
    v35 = v40;
LABEL_68:

    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = v17;
    }

LABEL_71:
    *v12 = v36;
    v12[8] = v35 & 1;
    v37 = *(v6 - 8);
    if ((*(v37 + 48))(v12, 1, v6) == 1)
    {
      (*(v8 + 8))(v12, v7);
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }

    else
    {
      *(&v42 + 1) = v6;
      v43 = MEMORY[0x277D83C00];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
      (*(v37 + 32))(boxed_opaque_existential_1, v12, v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
    v39 = swift_dynamicCast();
    if ((v39 & 1) == 0)
    {
      v44 = 0;
    }

    v45 = v39 ^ 1;
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v44;
  }

  if ((*(&v41 + 1) & 0x2000000000000000) == 0)
  {
    if ((v41 & 0x1000000000000000) != 0)
    {
      result = ((*(&v41 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_2239B36B8();
    }

    v16 = *result;
    if (v16 == 43)
    {
      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v17 = 0;
          if (result)
          {
            v24 = result + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_66;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_66;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_66;
              }

              ++v24;
              if (!--v13)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

LABEL_66:
        v17 = 0;
        LOBYTE(v13) = 1;
        goto LABEL_67;
      }

      goto LABEL_83;
    }

    if (v16 != 45)
    {
      if (v14)
      {
        v17 = 0;
        while (1)
        {
          v30 = *result - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++result;
          if (!--v14)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_66;
    }

    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v17 = 0;
        if (result)
        {
          v18 = result + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_66;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_66;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_66;
            }

            ++v18;
            if (!--v13)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v13) = 0;
LABEL_67:
        LOBYTE(v44) = v13;
        v35 = v13;
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  *(&v41 + 1) &= 0xFFFFFFFFFFFFFFuLL;
  if (v41 != 43)
  {
    if (v41 != 45)
    {
      if (v13)
      {
        v17 = 0;
        v32 = &v41;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v13)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v13)
    {
      if (--v13)
      {
        v17 = 0;
        v21 = &v41 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v13)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_82;
  }

  if (v13)
  {
    if (--v13)
    {
      v17 = 0;
      v27 = &v41 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v13)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_223961920(uint64_t result, int a2, int a3)
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

uint64_t sub_223961974(uint64_t a1, int a2)
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

uint64_t sub_2239619E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_223961A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t Dictionary<>.subscript.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *a1;
  v5 = Keys.rawValue.getter();
  if (*(a2 + 16) && (v7 = sub_22396236C(v5, v6), (v8 & 1) != 0))
  {
    v9 = *(a2 + 56) + 24 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
    *a3 = *v9;
    *(a3 + 8) = v11;
    v12 = *(v9 + 16);
    *(a3 + 16) = v12;
    sub_22396298C(v10, v11, v12);
  }

  else
  {

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t Keys.rawValue.getter()
{
  result = 0x726574726F706572;
  switch(*v0)
  {
    case 1:
      return 0x5465636976726573;
    case 2:
      return 0xD000000000000015;
    case 3:
      return 0xD00000000000001ELL;
    case 4:
    case 0x20:
      return 0xD000000000000018;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x645F657669746361;
    case 9:
    case 0x11:
    case 0x2A:
    case 0x31:
      return 0xD000000000000017;
    case 0xA:
      return 0x78646967736DLL;
    case 0xB:
      return 0x746E6367736DLL;
    case 0xC:
      return 0x6365735F79616C70;
    case 0xD:
      return 0xD000000000000015;
    case 0xE:
    case 0x3A:
      return 0xD000000000000016;
    case 0xF:
      return 0x6F6973736553584DLL;
    case 0x10:
      return 0xD00000000000001CLL;
    case 0x12:
      return 0xD000000000000024;
    case 0x13:
      return 0x656D756C6F76;
    case 0x14:
      return 0x755F656369766564;
    case 0x15:
      return 0x65706F6373;
    case 0x16:
      return 0x646574756D5F7369;
    case 0x17:
      return 0x726F70736E617274;
    case 0x18:
    case 0x1E:
    case 0x35:
    case 0x36:
      return 0xD000000000000011;
    case 0x19:
      return 0x74737265676E6972;
    case 0x1A:
      return 0x6F6D746E656C6973;
    case 0x1B:
      return 0xD000000000000015;
    case 0x1C:
      v3 = 0x616D726F466DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
    case 0x1D:
      v3 = 0x6375646F7270;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
    case 0x1F:
      return 0x5F65736E61707865;
    case 0x21:
    case 0x3C:
    case 0x41:
      return 0xD000000000000014;
    case 0x22:
      return 0xD000000000000015;
    case 0x23:
      return 0x5F746168635F7076;
    case 0x24:
      return 0xD000000000000015;
    case 0x25:
      return 0x73617079625F7076;
    case 0x26:
      return 0xD00000000000001BLL;
    case 0x27:
    case 0x44:
      return 0xD000000000000019;
    case 0x28:
      return 0x69737265765F7076;
    case 0x29:
      return 0x737265646F636F76;
    case 0x2B:
      return 0x6D754E6C65646F6DLL;
    case 0x2C:
      v2 = 1685217640;
      goto LABEL_41;
    case 0x2D:
      v2 = 1836214630;
LABEL_41:
      result = v2 | 0x6572617700000000;
      break;
    case 0x2E:
      result = 0xD000000000000020;
      break;
    case 0x2F:
    case 0x32:
    case 0x37:
      result = 0xD00000000000001DLL;
      break;
    case 0x30:
      result = 0xD000000000000015;
      break;
    case 0x33:
      result = 0xD000000000000015;
      break;
    case 0x34:
      result = 0xD000000000000013;
      break;
    case 0x38:
      result = 0x6E5F656369766564;
      break;
    case 0x39:
      result = 0xD000000000000015;
      break;
    case 0x3B:
      result = 0x7461635F72697268;
      break;
    case 0x3D:
      result = 0x6D5F6C6576617274;
      break;
    case 0x3E:
      result = 0x735F6C6576617274;
      break;
    case 0x3F:
      result = 0x6867696E6574616CLL;
      break;
    case 0x40:
      result = 0x6465636E61686E65;
      break;
    case 0x42:
      result = 0x79745F6575737369;
      break;
    case 0x43:
      result = 0x65566769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22396236C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2239B3A18();
  sub_2239B3228();
  v6 = sub_2239B3A78();

  return sub_223962840(a1, a2, v6);
}

uint64_t static ActiveDevicesFilter.modifyMessage(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v46 = *a1;
  v47 = v3;
  v51 = *(a1 + 10);
  v4 = a1[4];
  v49 = a1[3];
  v50 = v4;
  v48 = a1[2];
  if (!*(*(&v46 + 1) + 16))
  {
    goto LABEL_18;
  }

  v5 = sub_22396236C(0x645F657669746361, 0xEE00736563697665);
  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(*(&v46 + 1) + 56) + 24 * v5;
  if (*(v7 + 16) != 4)
  {
    goto LABEL_17;
  }

  v9 = *v7;
  v8 = *(v7 + 8);
  swift_bridgeObjectRetain_n();
  v10 = sub_223963E34(v9, v8, &unk_2836FBAD0);
  if (!v10)
  {

    sub_223963BB4(v9, v8, 4);
LABEL_18:
    v34 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v34;
    *(a2 + 64) = v50;
    *(a2 + 80) = v51;
    v35 = v47;
    *a2 = v46;
    *(a2 + 16) = v35;
    return sub_2239628F8(&v46, &v44);
  }

  v44 = 8283;
  v45 = 0xE200000000000000;
  v43 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_223968C1C(&qword_281335D60, &qword_27D09FE70, "<r");
  v11 = sub_2239B3128();
  MEMORY[0x223DEE030](v11);

  MEMORY[0x223DEE030](23840, 0xE200000000000000);

  if (v9 == 8283 && v8 == v45)
  {
    sub_223963BB4(v9, v8, 4);
    goto LABEL_16;
  }

  v13 = sub_2239B3958();
  sub_223963BB4(v9, v8, 4);
  if (v13)
  {
LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(&v46 + 1);
  sub_2239639F0(8283, 0xE200000000000000, 4, 0x645F657669746361, 0xEE00736563697665, isUniquelyReferenced_nonNull_native);
  v15 = v46;
  v16 = WORD2(v46);
  v40 = BYTE9(v48);
  v41 = BYTE8(v48);
  v39 = BYTE10(v48);
  v17 = *(&v49 + 1);
  v38 = v49;
  v37 = v50;

  sub_223968E14();
  v43 = *(&v46 + 1);
  sub_223965588(&v43);
  sub_223965338(&v43);
  swift_beginAccess();
  v18 = *aUnknown_0;
  v19 = qword_2813367E8;

  v20 = v43;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_2239639F0(v18, v19, 4, 0x65566769666E6F63, 0xED00006E6F697372, v21);
  v43 = v20;
  sub_223968F38(&v43, v15, v16);
  sub_223969288(&v43);
  sub_22396879C(&v43);
  v22 = v43;

  v24 = sub_2239651A4(v23);
  v26 = v25;
  v27 = v24;
  LOBYTE(v19) = v28;

  v42 = v19 & 1;

  if (*(v22 + 16) && (v29 = sub_22396236C(0xD000000000000018, 0x80000002239B9090), (v30 & 1) != 0) && (v31 = *(v22 + 56) + 24 * v29, *(v31 + 16) == 4))
  {
    v33 = *v31;
    v32 = *(v31 + 8);
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  if (!v32)
  {
    v33 = *(&v50 + 1);
    v32 = v51;
  }

  *a2 = v15;
  *(a2 + 4) = v16;
  *(a2 + 8) = v22;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v42;
  *(a2 + 40) = v41;
  *(a2 + 41) = v40;
  *(a2 + 42) = v39;
  *(a2 + 48) = v38;
  *(a2 + 56) = v17;
  *(a2 + 64) = v37;
  *(a2 + 72) = v33;
  *(a2 + 80) = v32;
  return result;
}

unint64_t sub_223962840(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2239B3958())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t Message.flattenToAnyDictionary()()
{
  v0 = Message.flatten()();
  v1 = Dictionary<>.asStringAny()(v0);

  return v1;
}

uint64_t sub_22396298C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4 || a3 == 6 || a3 == 5)
  {
  }

  return result;
}

uint64_t sub_2239629B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v67 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v51 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v52 = v9;
  v53 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v58[0] = *v19;
    v58[1] = v20;
    v59 = v23;
    v60 = v22;
    v61 = v24;

    sub_22396298C(v23, v22, v24);
    a2(&v62, v58);
    v25 = v59;
    v26 = v60;
    v27 = v61;

    sub_223963BB4(v25, v26, v27);
    v28 = v63;
    if (!v63)
    {
LABEL_22:
      sub_22396D730();
    }

    v29 = v62;
    v30 = v64;
    v31 = v65;
    v56 = v66;
    v32 = *v67;
    v34 = sub_22396236C(v62, v63);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_223963D78();
      }
    }

    else
    {
      v39 = v67;
      sub_223965FA8(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_22396236C(v29, v28);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_26;
      }

      v34 = v41;
    }

    v43 = (v15 - 1) & v15;
    v44 = *v67;
    if (v38)
    {

      v11 = v44[7] + 24 * v34;
      v12 = *v11;
      v13 = *(v11 + 8);
      *v11 = v30;
      *(v11 + 8) = v31;
      v14 = *(v11 + 16);
      *(v11 + 16) = v56;
      sub_223963BB4(v12, v13, v14);
    }

    else
    {
      v44[(v34 >> 6) + 8] |= 1 << v34;
      v45 = (v44[6] + 16 * v34);
      *v45 = v29;
      v45[1] = v28;
      v46 = v44[7] + 24 * v34;
      *v46 = v30;
      *(v46 + 8) = v31;
      *(v46 + 16) = v56;
      v47 = v44[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_25;
      }

      v44[2] = v49;
    }

    a4 = 1;
    v10 = v16;
    v9 = v52;
    v5 = v53;
    v8 = v43;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_2239B39A8();
  __break(1u);
  return result;
}

uint64_t sub_223962CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_22396298C(v4, v5, v6);
}

uint64_t Message.flatten()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v25 = *(v0 + 8);
  v24 = *(v0 + 40);
  v22 = *(v0 + 32);
  v23 = *(v0 + 41);
  v3 = *(v0 + 42);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 80);
  v20 = *(v0 + 24);
  v21 = *(v0 + 72);
  v7 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFA0, &qword_2239B5B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B51F0;
  *(inited + 32) = 0x6761746F69647561;
  *(inited + 40) = 0xE800000000000000;
  v26 = _s18AudioAnalyticsBase9UtilitiesO24eventCategoryDescription4fromSSSo0a5EventF0V_tFZ_0(v1);
  v27 = v9;
  MEMORY[0x223DEE030](24415, 0xE200000000000000);
  v10 = _s18AudioAnalyticsBase9UtilitiesO20eventTypeDescription4fromSSSo0a5EventF0V_tFZ_0(v7);
  MEMORY[0x223DEE030](v10);

  v11 = v27;
  *(inited + 48) = v26;
  *(inited + 56) = v11;
  *(inited + 64) = 4;
  *(inited + 72) = 0xD000000000000015;
  *(inited + 80) = 0x80000002239B9210;
  *(inited + 88) = v2;
  *(inited + 96) = 0;
  *(inited + 104) = 2;
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002239BA860;
  *(inited + 128) = v3;
  *(inited + 136) = 0;
  *(inited + 144) = 3;
  strcpy((inited + 152), "untrustworthy");
  *(inited + 166) = -4864;
  *(inited + 168) = v4;
  *(inited + 176) = v5;
  *(inited + 184) = 4;

  v12 = sub_2239638CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFA8, &qword_2239B5B38);
  swift_arrayDestroy();
  if ((v22 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(v20, 0, 2, 0xD000000000000011, 0x80000002239B9230, isUniquelyReferenced_nonNull_native);
  }

  if (v6)
  {

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(v21, v6, 4, 0xD000000000000018, 0x80000002239B9090, v14);
  }

  if (v23)
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(1, 0, 3, 0xD000000000000011, 0x80000002239BA880, v15);
  }

  if (v24)
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(1, 0, 3, 0x646E756465527369, 0xEB00000000746E61, v16);
  }

  if (qword_2813363A0 != -1)
  {
    swift_once();
  }

  if (byte_2813363AA == 1)
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(1, 0, 3, 0x79727261437369, 0xE700000000000000, v17);
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v12;
  sub_2239629B8(v25, sub_223962CA0, 0, v18, &v26);

  return v26;
}

uint64_t _s18AudioAnalyticsBase9UtilitiesO24eventCategoryDescription4fromSSSo0a5EventF0V_tFZ_0(int a1)
{
  v1 = a1 & 0xFFFF0000;
  v2 = a1;
  if ((a1 & 0xFFFF0000) <= 0x7FFFFFF)
  {
    switch(v1)
    {
      case 0x80000000:
        v3 = 0xE700000000000000;
        v4 = 0x786F626C6F6F54;
        goto LABEL_17;
      case 0:
        if (!a1)
        {
          return 0;
        }

        goto LABEL_19;
      case 0x4000000:
        v3 = 0xE400000000000000;
        v4 = 1229211981;
        goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v1 > 0x1FFFFFFF)
  {
    if (v1 != 0x20000000)
    {
      if (v1 == 0x40000000)
      {
        v3 = 0xE700000000000000;
        v4 = 0x676E6974756F52;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v3 = 0xE300000000000000;
    v4 = 4997448;
  }

  else
  {
    if (v1 != 0x8000000)
    {
      if (v1 == 0x10000000)
      {
        v3 = 0xE300000000000000;
        v4 = 5264196;
        goto LABEL_17;
      }

LABEL_14:
      v3 = 0xE900000000000064;
      v4 = 0x656E696665646E55;
      goto LABEL_17;
    }

    v3 = 0xE700000000000000;
    v4 = 0x6E6F6973736553;
  }

LABEL_17:
  MEMORY[0x223DEE030](v4, v3);

  if (v2)
  {
    MEMORY[0x223DEE030](95, 0xE100000000000000);
LABEL_19:
    v5 = sub_22396326C(v2);
    MEMORY[0x223DEE030](v5);
  }

  return 0;
}

unint64_t sub_22396326C(int a1)
{
  v1 = a1 + 1;
  result = 0x636972656E6547;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 2:
      return result;
    case 3:
      result = 0x64726F636552;
      break;
    case 4:
      result = 0x7475706E49;
      break;
    case 5:
      result = 0x6B63616279616C50;
      break;
    case 6:
      result = 0x74757074754FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 20297;
      break;
    case 9:
      result = 0x7075746553;
      break;
    case 10:
      result = 0x6552746E65696C43;
      break;
    case 11:
      result = 0x6168436574756F52;
      break;
    case 12:
      result = 0x726F727245;
      break;
    case 13:
      result = 0x74726F7065524F49;
      break;
    case 14:
      result = 0x616D726F66726550;
      break;
    case 15:
      result = 0x656D756C6F56;
      break;
    case 16:
      result = 0x65736E61707845;
      break;
    case 17:
      result = 0x48676E6972616548;
      break;
    case 18:
      result = 0x73646F50726941;
      break;
    case 19:
      result = 0x6F72506563696F56;
      break;
    case 21:
      result = 0x6C616974617053;
      break;
    case 22:
      result = 0x556F5478694D5056;
      break;
    case 23:
      result = 0x6863746157;
      break;
    case 24:
      result = 0x636E657265666E49;
      break;
    case 25:
      result = 0x6E6172546C6C6143;
      break;
    case 26:
      result = 0x756F527261456E49;
      break;
    default:
      result = 0x656E696665646E55;
      break;
  }

  return result;
}

unint64_t _s18AudioAnalyticsBase9UtilitiesO20eventTypeDescription4fromSSSo0a5EventF0V_tFZ_0(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x636972656E6547;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7472617453;
      break;
    case 2:
      result = 1886352467;
      break;
    case 3:
      result = 0x6574617669746341;
      break;
    case 4:
      result = 0x6176697463616544;
      break;
    case 5:
      result = 0x7075746553;
      break;
    case 6:
      result = 0x726F727245;
      break;
    case 7:
      result = 0x7465446575737349;
      break;
    case 8:
      result = 0x676F4C7265776F50;
      break;
    case 9:
      result = 0x696E556F69647541;
      break;
    case 10:
      result = 0x766972444944494DLL;
      break;
    case 11:
      result = 0x7972616D6D7553;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x7078456F69647541;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x694B726F736E6553;
      break;
    case 16:
      result = 0x656C706D6953;
      break;
    case 17:
      result = 0x6172676F74736948;
      break;
    case 18:
      result = 0x6574617453;
      break;
    case 19:
      result = 0x6F4C79726F6D654DLL;
      break;
    case 20:
      result = 0x6E49646F50726941;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x73676E6974746553;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t sub_2239638CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
    v3 = sub_2239B3798();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_22396298C(v7, v8, v9);
      result = sub_22396236C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2239639F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_22396236C(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_223963D78();
      v15 = v23;
      goto LABEL_8;
    }

    sub_223965FA8(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_22396236C(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_2239B39A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    return sub_223963BB4(v28, v29, v30);
  }

  else
  {
    sub_223963B60(v15, a4, a5, a1, a2, a3, v26);
  }
}

unint64_t sub_223963B60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_223963BB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4 || a3 == 6 || a3 == 5)
  {
  }

  return result;
}

void *sub_223963BE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  v2 = *v0;
  v3 = sub_2239B3778();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_22396298C(v23, v24, v26);
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

uint64_t sub_223963DA4(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

char *sub_223963E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE78, &qword_2239B5158);
  v62 = *(v58 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE80, &qword_2239B5160);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = (&v53 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE88, &qword_2239B5168);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE90, &qword_2239B5170);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE98, &qword_2239B5178);
  v55 = *(v20 - 8);
  v56 = v20;
  v21 = *(v55 + 64);
  MEMORY[0x28223BE20](v20);
  v54 = &v53 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FEA0, &qword_2239B5180);
  sub_2239B2FF8();
  sub_2239B32F8();

  sub_223968C1C(&qword_2813365C8, &qword_27D09FE88, &qword_2239B5168);
  sub_2239B2FE8();
  sub_2239B3008();

  v23 = *(v9 + 8);
  v23(v13, v8);
  v23(v15, v8);
  v24 = v55;
  v25 = v56;
  if ((*(v55 + 48))(v19, 1, v56) == 1)
  {

    sub_22396EC14(v19);
    return 0;
  }

  (*(v24 + 32))(v54, v19, v25);
  swift_getKeyPath();
  sub_2239B3018();

  v26 = MEMORY[0x223DEDFD0](v66, v67, v68, v69);
  v28 = v27;

  v66 = v26;
  v67 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FEA8, &qword_2239B51A8);
  v29 = v59;
  sub_2239B2FF8();
  sub_223968C64();
  sub_223968C1C(&qword_2813365D0, &qword_27D09FE80, &qword_2239B5160);
  v30 = v61;
  v31 = sub_2239B3108();
  (*(v60 + 8))(v29, v30);

  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = *(v62 + 16);
    v34 = *(v62 + 80);
    v53 = v31;
    v35 = v31 + ((v34 + 32) & ~v34);
    v60 = *(v62 + 72);
    v61 = v33;
    v62 += 16;
    v59 = (v62 - 8);
    v36 = MEMORY[0x277D84F90];
    v37 = v57;
    v38 = v58;
    v33(v57, v35, v58);
    while (1)
    {
      swift_getKeyPath();
      sub_2239B3018();

      v39 = MEMORY[0x223DEDFD0](v66, v67, v68, v69);
      v41 = v40;

      v66 = v39;
      v67 = v41;
      MEMORY[0x28223BE20](v42);
      *(&v53 - 2) = &v66;
      v43 = sub_223968CB8(sub_223968D9C, (&v53 - 4), v63);

      if (v43)
      {
        v64 = 8315;
        v65 = 0xE200000000000000;
        swift_getKeyPath();
        sub_2239B3018();

        v44 = MEMORY[0x223DEDFD0](v66, v67, v68, v69);
        v46 = v45;

        MEMORY[0x223DEE030](v44, v46);

        MEMORY[0x223DEE030](32032, 0xE200000000000000);
        v47 = v64;
        v48 = v65;
        (*v59)(v37, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_22396547C(0, *(v36 + 2) + 1, 1, v36);
        }

        v50 = *(v36 + 2);
        v49 = *(v36 + 3);
        if (v50 >= v49 >> 1)
        {
          v36 = sub_22396547C((v49 > 1), v50 + 1, 1, v36);
        }

        *(v36 + 2) = v50 + 1;
        v51 = &v36[16 * v50];
        *(v51 + 4) = v47;
        *(v51 + 5) = v48;
        v37 = v57;
        v38 = v58;
      }

      else
      {
        (*v59)(v37, v38);
      }

      v35 += v60;
      if (!--v32)
      {
        break;
      }

      v61(v37, v35, v38);
    }

    v24 = v55;
    v25 = v56;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  (*(v24 + 8))(v54, v25);
  if (!*(v36 + 2))
  {

    return 0;
  }

  return v36;
}

uint64_t static Utilities.createEventCategory(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22396511C(0, v1, 0);
    v3 = v21;
    v4 = (a1 + 32);
    v5 = v21[1].u64[0];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v22 = v3;
      v8 = v3[1].u64[1];
      v9 = v5 + 1;
      if (v5 >= v8 >> 1)
      {
        sub_22396511C((v8 > 1), v5 + 1, 1);
        v3 = v22;
      }

      v3[1].i64[0] = v9;
      v3[2].i32[v5++] = v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (!v9)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  if (v9 <= 7)
  {
    v10 = 0;
    LODWORD(v11) = 0;
LABEL_13:
    v18 = v9 - v10;
    v19 = 4 * v10 + 32;
    do
    {
      v11 = *(v3->i32 + v19) | v11;
      v19 += 4;
      --v18;
    }

    while (v18);
    goto LABEL_15;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = v3 + 3;
  v13 = 0uLL;
  v14 = v9 & 0xFFFFFFFFFFFFFFF8;
  v15 = 0uLL;
  do
  {
    v13 = vorrq_s8(v12[-1], v13);
    v15 = vorrq_s8(*v12, v15);
    v12 += 2;
    v14 -= 8;
  }

  while (v14);
  v16 = vorrq_s8(v15, v13);
  v17 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v11 = (v17.i32[0] | v17.i32[1]);
  if (v9 != v10)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22396486C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

CFPropertyListRef sub_223964914()
{
  v0 = sub_2239B3158();
  CFPreferencesAppSynchronize(v0);

  v1 = sub_2239B3158();
  v2 = sub_2239B3158();
  v3 = sub_2239B3158();
  v4 = CFPreferencesCopyValue(v1, v2, v3, *MEMORY[0x277CBF010]);

  v19 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  if (swift_dynamicCast())
  {
    v5 = v16;
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v5;
  }

  if (!v4 || (v19 = v4, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    sub_2239605FC();
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = MEMORY[0x277D837D0];
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_9;
  }

  v7 = sub_2239B3598();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = MEMORY[0x277D83840];
  sub_2239B3938();
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = v6;
    v18 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    (*(v13 + 32))(boxed_opaque_existential_1, v11, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    v20 = 0;
  }

  sub_2239605FC();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_223964C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_223964CF0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*result && *(v5 + 16))
  {
    result = sub_22396236C(a2, a3);
    if (v6)
    {
      v7 = *(v5 + 56) + 24 * result;
      v8 = *v7;
      v9 = *(v7 + 8);
      *a4 = *v7;
      *(a4 + 8) = v9;
      v10 = *(v7 + 16);
      *(a4 + 16) = v10;
      return sub_22396298C(v8, v9, v10);
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = -1;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = -1;
  }

  return result;
}

void OSAllocatedUnfairLock<A>.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_223964E30();

  os_unfair_lock_unlock((a2 + v4));
}

uint64_t static ConfigCommon.matches(audioServiceType:config:)(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = a2 + 32;
    while (1)
    {
      sub_223964C8C(v5, &v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      (*(v7 + 8))(v13, v6, v7);
      v8 = v13[0];
      v9 = BYTE2(v13[0]);

      v10 = (a1 & 0x10000) == 0 && v4 == v8;
      v11 = v10;
      if ((v9 & 1) != 0 || v11)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v15);
      v5 += 40;
      if (!--v2)
      {
        goto LABEL_12;
      }
    }

    sub_2239695C0(&v15, v13);
    sub_223964F8C(v13);
    return 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_223964F8C(v13);
    return 0;
  }
}

uint64_t sub_223964F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF48, &qword_2239B57A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_223965018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF68, &qword_2239B5AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22396511C(char *a1, int64_t a2, char a3)
{
  result = sub_223965018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22396514C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2239B3958() & 1;
  }
}

unint64_t sub_223965338(unint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    v2 = result;
    result = sub_22396236C(0x6D617473656D6974, 0xE900000000000070);
    if (v3)
    {
      if (*(v1 + 16) && (v4 = sub_22396236C(0x6D617473656D6974, 0xE900000000000070), (v5 & 1) != 0))
      {
        v6 = *(v1 + 56) + 24 * v4;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        sub_22396298C(*v6, v8, v9);
        v10 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *v2;
        sub_2239639F0(v7, v8, v9, 0xD000000000000011, 0x80000002239BA960, isUniquelyReferenced_nonNull_native);
        *v2 = v12;
      }

      else
      {
        sub_22398D454(0xD000000000000011, 0x80000002239BA960, &v12);
        sub_22397617C(v12, v13, v14);
      }

      sub_22398D454(0x6D617473656D6974, 0xE900000000000070, &v12);
      return sub_22397617C(v12, v13, v14);
    }
  }

  return result;
}

char *sub_22396547C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_223965588(uint64_t *a1)
{
  v84 = sub_2239B2E38();
  v90 = *(v84 - 8);
  v2 = *(v90 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v4 = *a1;
  v7 = *(*a1 + 64);
  v6 = *a1 + 64;
  v5 = v7;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v86 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v15 = v14[1];
    v91 = *v14;
    v92 = v15;
    v97 = v91;
    v98 = v15;
    v16 = qword_281335F20;

    if (v16 != -1)
    {
      swift_once();
    }

    v10 &= v10 - 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0268, &qword_2239B6EA0);
    __swift_project_value_buffer(v17, qword_281335F28);
    sub_223968C64();
    sub_223968C1C(&qword_2813365D8, &qword_27D0A0268, &qword_2239B6EA0);
    if (sub_2239B3118())
    {
      v18 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22396C7F0(0, *(v18 + 16) + 1, 1);
        v18 = v95;
      }

      v20 = v91;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22396C7F0((v21 > 1), v22 + 1, 1);
        v18 = v95;
      }

      *(v18 + 16) = v22 + 1;
      v86 = v18;
      v23 = v18 + 16 * v22;
      v24 = v92;
      *(v23 + 32) = v20;
      *(v23 + 40) = v24;
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      result = sub_2239B39A8();
      __break(1u);
      return result;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v25 = v86;
  v82 = *(v86 + 16);
  if (v82)
  {
    v26 = 0;
    v81 = (v90 + 8);
    v27 = (v86 + 40);
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_50;
      }

      v89 = v27;
      v90 = v26;
      v34 = *(v27 - 1);
      v33 = *v27;
      v35 = *(v4 + 16);

      v92 = v4;
      if (v35 && (v36 = sub_22396236C(v34, v33), (v37 & 1) != 0))
      {
        v38 = *(v4 + 56) + 24 * v36;
        v39 = *v38;
        v40 = *(v38 + 16);
        v87 = *(v38 + 8);
        v88 = v39;
        sub_22396298C(v39, v87, v40);
      }

      else
      {
        v87 = 0;
        v88 = 0;
        v40 = 255;
      }

      LODWORD(v91) = v40;
      v97 = v34;
      v98 = v33;
      v41 = v83;
      sub_2239B2E28();
      sub_22396C8B8();
      v42 = sub_2239B35D8();
      v44 = v43;
      (*v81)(v41, v84);
      v95 = v42;
      v96 = v44;
      if (qword_281335F20 != -1)
      {
        swift_once();
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0268, &qword_2239B6EA0);
      __swift_project_value_buffer(v45, qword_281335F28);
      v93 = 95;
      v94 = 0xE100000000000000;
      sub_22396C864();
      sub_22396C810();
      sub_223968C1C(&qword_2813365D8, &qword_27D0A0268, &qword_2239B6EA0);
      sub_2239B34B8();

      v46 = v97;
      v47 = v98;
      v4 = v92;
      v48 = sub_22396236C(v34, v33);
      v50 = v49;

      v51 = v85;
      v52 = v91;
      if (v50)
      {
        v53 = *v85;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v4 = *v51;
        v97 = *v51;
        if (!v54)
        {
          sub_223963D78();
          v4 = v97;
        }

        v55 = *(*(v4 + 48) + 16 * v48 + 8);

        sub_223963BB4(*(*(v4 + 56) + 24 * v48), *(*(v4 + 56) + 24 * v48 + 8), *(*(v4 + 56) + 24 * v48 + 16));
        sub_22396C90C(v48, v4);
        *v51 = v4;
      }

      if (v52 != 255)
      {
        break;
      }

      v67 = sub_22396236C(v46, v47);
      v69 = v68;

      if ((v69 & 1) == 0)
      {
        goto LABEL_21;
      }

      v70 = *v51;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v4 = *v51;
      v97 = *v51;
      if (!v71)
      {
        sub_223963D78();
        v4 = v97;
      }

      v72 = *(*(v4 + 48) + 16 * v67 + 8);

      sub_223963BB4(*(*(v4 + 56) + 24 * v67), *(*(v4 + 56) + 24 * v67 + 8), *(*(v4 + 56) + 24 * v67 + 16));
      sub_22396C90C(v67, v4);
LABEL_20:
      *v51 = v4;
LABEL_21:
      v26 = v90 + 1;
      v27 = v89 + 2;
      v25 = v86;
      if (v82 == v90 + 1)
      {
      }
    }

    v56 = *v51;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *v51;
    v58 = v97;
    v59 = sub_22396236C(v46, v47);
    v61 = *(v58 + 16);
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_51;
    }

    v65 = v60;
    if (*(v58 + 24) < v64)
    {
      sub_223965FA8(v64, v57);
      v59 = sub_22396236C(v46, v47);
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    if (v57)
    {
LABEL_43:
      v74 = v87;
      v73 = v88;
      if ((v65 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v79 = v59;
      sub_223963D78();
      v59 = v79;
      v74 = v87;
      v73 = v88;
      if ((v65 & 1) == 0)
      {
LABEL_44:
        v4 = v97;
        *(v97 + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v75 = (*(v4 + 48) + 16 * v59);
        *v75 = v46;
        v75[1] = v47;
        v76 = *(v4 + 56) + 24 * v59;
        *v76 = v73;
        *(v76 + 8) = v74;
        *(v76 + 16) = v52;
        v77 = *(v4 + 16);
        v63 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v63)
        {
          goto LABEL_52;
        }

        *(v4 + 16) = v78;
        goto LABEL_20;
      }
    }

    v28 = v59;

    v4 = v97;
    v29 = *(v97 + 56) + 24 * v28;
    v30 = *v29;
    v31 = *(v29 + 8);
    *v29 = v73;
    *(v29 + 8) = v74;
    v32 = *(v29 + 16);
    *(v29 + 16) = v52;
    sub_223963BB4(v30, v31, v32);
    goto LABEL_20;
  }
}

uint64_t sub_223965CC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  v40 = a2;
  result = sub_2239B3788();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_22396298C(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_2239B3A18();
      sub_2239B3228();
      result = sub_2239B3A78();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

uint64_t Dictionary<>.asStringAny()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
  result = sub_2239B3778();
  v3 = a1;
  v4 = 0;
  v347 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v363 = result + 64;
  v364 = result;
  v342 = a1;
  v362 = v8;
  if (!v7)
  {
LABEL_6:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_362;
      }

      if (v4 >= v8)
      {
        return result;
      }

      v12 = *(v347 + 8 * v4);
      ++v11;
      if (v12)
      {
        v9 = __clz(__rbit64(v12));
        v10 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_11:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v3 + 56) + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 16);
    v367 = v10;
    v368 = v4;
    v369 = v15;
    v370 = v13;
    if (v19 > 2)
    {
      break;
    }

    if (*(v17 + 16))
    {
      if (v19 == 1)
      {
        v21 = MEMORY[0x277D84D38];
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_383;
        }

        v21 = MEMORY[0x277D839F8];
      }
    }

    else
    {
      v21 = MEMORY[0x277D84A28];
    }

    v442 = v21;
    *&v441 = v18;
LABEL_182:

LABEL_356:
    *(v363 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v370;
    v309 = (v364[6] + 16 * v370);
    *v309 = v369;
    v309[1] = v16;
    sub_2239685CC(&v441, (v364[7] + 32 * v370));
    v310 = v364[2];
    v65 = __OFADD__(v310, 1);
    v311 = v310 + 1;
    if (v65)
    {
      goto LABEL_374;
    }

    result = v364;
    v364[2] = v311;
    v7 = v367;
    v4 = v368;
    v8 = v362;
    if (!v367)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v17 + 8);
  if (*(v17 + 16) <= 4u)
  {
    if (v19 != 3)
    {
      if (v19 != 4)
      {
        goto LABEL_383;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v18;
      *(&v441 + 1) = v20;

      sub_22396298C(v18, v20, 4);
      goto LABEL_356;
    }

    v442 = MEMORY[0x277D839B0];
    LOBYTE(v441) = v18 & 1;
    goto LABEL_182;
  }

  v376 = *v17;
  v336 = v16;
  v343 = *(v17 + 8);
  if (v19 != 5)
  {
    if (v19 != 6)
    {
      goto LABEL_383;
    }

    v3 = v342;
    v164 = sub_2239B3778();
    v349 = v18 + 64;
    v165 = 1 << *(v18 + 32);
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    else
    {
      v166 = -1;
    }

    v390 = v166 & *(v18 + 64);
    sub_22396298C(v18, v20, 6);

    sub_22396298C(v18, v20, 6);
    v167 = 0;
    v168 = (v165 + 63) >> 6;
    v359 = v168;
    v361 = v164 + 64;
    v366 = v164;
    v169 = v390;
    if (v390)
    {
LABEL_190:
      v170 = __clz(__rbit64(v169));
      v171 = (v169 - 1) & v169;
      goto LABEL_196;
    }

LABEL_191:
    v172 = v167;
    while (1)
    {
      v167 = v172 + 1;
      if (__OFADD__(v172, 1))
      {
        goto LABEL_366;
      }

      if (v167 >= v168)
      {
        break;
      }

      v173 = *(v349 + 8 * v167);
      ++v172;
      if (v173)
      {
        v170 = __clz(__rbit64(v173));
        v171 = (v173 - 1) & v173;
LABEL_196:
        v174 = v170 | (v167 << 6);
        v175 = (*(v18 + 48) + 16 * v174);
        v176 = *v175;
        v177 = v175[1];
        v178 = *(v18 + 56) + 24 * v174;
        v179 = *v178;
        v180 = *(v178 + 16);
        v375 = v167;
        v391 = v171;
        v380 = v176;
        v384 = v174;
        if (v180 <= 2)
        {
          if (*(v178 + 16))
          {
            if (v180 == 1)
            {
              v182 = MEMORY[0x277D84D38];
            }

            else
            {
              if (v180 != 2)
              {
                goto LABEL_383;
              }

              v182 = MEMORY[0x277D839F8];
            }
          }

          else
          {
            v182 = MEMORY[0x277D84A28];
          }

          v442 = v182;
          *&v441 = v179;
          goto LABEL_252;
        }

        v181 = *(v178 + 8);
        if (*(v178 + 16) <= 4u)
        {
          if (v180 != 3)
          {
            if (v180 != 4)
            {
              goto LABEL_383;
            }

            v442 = MEMORY[0x277D837D0];
            *&v441 = v179;
            *(&v441 + 1) = v181;

            sub_22396298C(v179, v181, 4);
            goto LABEL_253;
          }

          v442 = MEMORY[0x277D839B0];
          LOBYTE(v441) = v179 & 1;
LABEL_252:

          goto LABEL_253;
        }

        v386 = *v178;
        v341 = v177;
        v346 = *(v178 + 8);
        if (v180 == 5)
        {
          v183 = *(v179 + 16);
          if (v183)
          {
            sub_22396298C(v179, v181, 5);

            sub_22396298C(v179, v181, 5);
            v426 = MEMORY[0x277D84F90];
            sub_2239829F0(0, v183, 0);
            v184 = 0;
            v185 = v426;
            v406 = v179 + 32;
            v186 = v183;
            v350 = v183;
            do
            {
              if (v184 >= *(v179 + 16))
              {
                goto LABEL_372;
              }

              v187 = v406 + 24 * v184;
              v188 = *v187;
              v189 = *(v187 + 16);
              if (v189 <= 2)
              {
                if (*(v187 + 16))
                {
                  if (v189 == 1)
                  {
                    v191 = MEMORY[0x277D84D38];
                  }

                  else
                  {
                    if (v189 != 2)
                    {
                      goto LABEL_383;
                    }

                    v191 = MEMORY[0x277D839F8];
                  }
                }

                else
                {
                  v191 = MEMORY[0x277D84A28];
                }

                v442 = v191;
                *&v441 = v188;
              }

              else
              {
                v190 = *(v187 + 8);
                if (*(v187 + 16) > 4u)
                {
                  v397 = v184;
                  v402 = v185;
                  v393 = *v187;
                  if (v189 == 5)
                  {
                    v192 = *(v188 + 16);
                    if (v192)
                    {
                      v354 = *(v187 + 8);
                      sub_22396298C(v188, v190, 5);
                      v423 = MEMORY[0x277D84F90];

                      sub_2239829F0(0, v192, 0);
                      v193 = v423;
                      v194 = (v188 + 48);
                      do
                      {
                        v432 = *(v194 - 2);
                        v438 = *(v194 - 1);
                        v195 = *v194;
                        sub_22396298C(v432, v438, *v194);
                        SimpleType.unwrap()(&v441);
                        sub_223963BB4(v432, v438, v195);
                        v197 = *(v423 + 16);
                        v196 = *(v423 + 24);
                        if (v197 >= v196 >> 1)
                        {
                          sub_2239829F0((v196 > 1), v197 + 1, 1);
                        }

                        v194 += 24;
                        *(v423 + 16) = v197 + 1;
                        sub_2239685CC(&v441, (v423 + 32 * v197 + 32));
                        --v192;
                      }

                      while (v192);
                      v188 = v393;
                      v190 = v354;
                      sub_223963BB4(v393, v354, 5);
                      v18 = v376;
                      v186 = v350;
                      v185 = v402;
                    }

                    else
                    {
                      sub_22396298C(v188, v190, 5);
                      v193 = MEMORY[0x277D84F90];
                    }

                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
                    sub_223963BB4(v188, v190, 5);
                    *&v441 = v193;
                  }

                  else
                  {
                    if (v189 != 6)
                    {
                      goto LABEL_383;
                    }

                    v198 = sub_2239B3778();
                    v199 = v190;
                    v200 = v188 + 64;
                    v201 = 1 << *(v188 + 32);
                    if (v201 < 64)
                    {
                      v202 = ~(-1 << v201);
                    }

                    else
                    {
                      v202 = -1;
                    }

                    v416 = v202 & *(v188 + 64);
                    sub_22396298C(v188, v199, 6);
                    v355 = v199;
                    sub_22396298C(v188, v199, 6);
                    v203 = 0;
                    v204 = (v201 + 63) >> 6;
                    v205 = v416;
                    if (v416)
                    {
                      do
                      {
                        v206 = __clz(__rbit64(v205));
                        v417 = (v205 - 1) & v205;
LABEL_238:
                        v209 = v206 | (v203 << 6);
                        v210 = (*(v188 + 48) + 16 * v209);
                        v211 = v210[1];
                        v410 = *v210;
                        v212 = *(v188 + 56) + 24 * v209;
                        v213 = *v212;
                        v214 = *(v212 + 8);
                        v215 = *(v212 + 16);

                        sub_22396298C(v213, v214, v215);
                        SimpleType.unwrap()(&v441);
                        sub_223963BB4(v213, v214, v215);
                        *(v198 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v209;
                        v216 = (v198[6] + 16 * v209);
                        *v216 = v410;
                        v216[1] = v211;
                        sub_2239685CC(&v441, (v198[7] + 32 * v209));
                        v217 = v198[2];
                        v65 = __OFADD__(v217, 1);
                        v218 = v217 + 1;
                        if (v65)
                        {
                          goto LABEL_376;
                        }

                        v198[2] = v218;
                        v18 = v376;
                        v179 = v386;
                        v184 = v397;
                        v185 = v402;
                        v188 = v393;
                        v205 = v417;
                      }

                      while (v417);
                    }

                    v207 = v203;
                    v186 = v350;
                    while (1)
                    {
                      v203 = v207 + 1;
                      if (__OFADD__(v207, 1))
                      {
                        goto LABEL_363;
                      }

                      if (v203 >= v204)
                      {
                        break;
                      }

                      v208 = *(v200 + 8 * v203);
                      ++v207;
                      if (v208)
                      {
                        v206 = __clz(__rbit64(v208));
                        v417 = (v208 - 1) & v208;
                        goto LABEL_238;
                      }
                    }

                    sub_223963BB4(v188, v355, 6);
                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
                    sub_223963BB4(v188, v355, 6);
                    *&v441 = v198;
                  }
                }

                else if (v189 == 3)
                {
                  v442 = MEMORY[0x277D839B0];
                  LOBYTE(v441) = v188 & 1;
                }

                else
                {
                  if (v189 != 4)
                  {
                    goto LABEL_383;
                  }

                  v442 = MEMORY[0x277D837D0];
                  *&v441 = v188;
                  *(&v441 + 1) = v190;
                  sub_22396298C(v188, v190, 4);
                }
              }

              v220 = *(v185 + 16);
              v219 = *(v185 + 24);
              if (v220 >= v219 >> 1)
              {
                sub_2239829F0((v219 > 1), v220 + 1, 1);
                v186 = v350;
              }

              ++v184;
              *(v185 + 16) = v220 + 1;
              sub_2239685CC(&v441, (v185 + 32 * v220 + 32));
            }

            while (v184 != v186);
            v306 = v346;
            sub_223963BB4(v179, v346, 5);
            v3 = v342;
          }

          else
          {

            v306 = v181;
            sub_22396298C(v179, v181, 5);
            v185 = MEMORY[0x277D84F90];
          }

          v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
          sub_223963BB4(v179, v306, 5);
          *&v441 = v185;
          v177 = v341;
          goto LABEL_253;
        }

        if (v180 != 6)
        {
          goto LABEL_383;
        }

        v224 = sub_2239B3778();
        v332 = v179 + 64;
        v225 = 1 << *(v179 + 32);
        if (v225 < 64)
        {
          v226 = ~(-1 << v225);
        }

        else
        {
          v226 = -1;
        }

        v227 = v226 & *(v179 + 64);
        sub_22396298C(v179, v181, 6);

        sub_22396298C(v179, v181, 6);
        v228 = 0;
        v229 = (v225 + 63) >> 6;
        v230 = v224 + 8;
        v320 = v229;
        v322 = v224;
        if (!v227)
        {
          goto LABEL_264;
        }

        while (2)
        {
          v231 = __clz(__rbit64(v227));
          v227 &= v227 - 1;
LABEL_269:
          v234 = v231 | (v228 << 6);
          v235 = (*(v179 + 48) + 16 * v234);
          v236 = *v235;
          v237 = v235[1];
          v238 = *(v179 + 56) + 24 * v234;
          v239 = *v238;
          v240 = *(v238 + 16);
          v418 = v236;
          if (v240 <= 2)
          {
            if (*(v238 + 16))
            {
              if (v240 == 1)
              {
                v242 = MEMORY[0x277D84D38];
              }

              else
              {
                if (v240 != 2)
                {
                  goto LABEL_383;
                }

                v242 = MEMORY[0x277D839F8];
              }
            }

            else
            {
              v242 = MEMORY[0x277D84A28];
            }

            v442 = v242;
            *&v441 = v239;
            goto LABEL_287;
          }

          v241 = *(v238 + 8);
          if (*(v238 + 16) <= 4u)
          {
            if (v240 != 3)
            {
              if (v240 != 4)
              {
                goto LABEL_383;
              }

              v442 = MEMORY[0x277D837D0];
              *&v441 = v239;
              *(&v441 + 1) = v241;
              v351 = v241;

              sub_22396298C(v239, v351, 4);
              goto LABEL_346;
            }

            v442 = MEMORY[0x277D839B0];
            LOBYTE(v441) = v239 & 1;
LABEL_287:

            goto LABEL_346;
          }

          v394 = v227;
          v373 = v234;
          v398 = *v238;
          v334 = v237;
          if (v240 == 5)
          {
            v243 = v230;
            v244 = *(v239 + 16);
            if (v244)
            {
              v245 = *(v238 + 8);
              sub_22396298C(v239, v241, 5);

              sub_22396298C(v239, v245, 5);
              v427 = MEMORY[0x277D84F90];
              sub_2239829F0(0, v244, 0);
              v246 = v427;
              v247 = (v239 + 48);
              do
              {
                v433 = *(v247 - 2);
                v439 = *(v247 - 1);
                v248 = *v247;
                sub_22396298C(v433, v439, *v247);
                SimpleType.unwrap()(&v441);
                sub_223963BB4(v433, v439, v248);
                v250 = *(v427 + 16);
                v249 = *(v427 + 24);
                if (v250 >= v249 >> 1)
                {
                  sub_2239829F0((v249 > 1), v250 + 1, 1);
                }

                v247 += 24;
                *(v427 + 16) = v250 + 1;
                sub_2239685CC(&v441, (v427 + 32 * v250 + 32));
                --v244;
              }

              while (v244);
              v239 = v398;
              sub_223963BB4(v398, v245, 5);
              v179 = v386;
              v229 = v320;
              v224 = v322;
            }

            else
            {
              v245 = *(v238 + 8);

              sub_22396298C(v239, v245, 5);
              v246 = MEMORY[0x277D84F90];
            }

            v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
            sub_223963BB4(v239, v245, 5);
            *&v441 = v246;
            v230 = v243;
            v227 = v394;
            v234 = v373;
            goto LABEL_345;
          }

          if (v240 != 6)
          {
            goto LABEL_383;
          }

          v313 = v230;
          v251 = *(v238 + 8);
          v325 = sub_2239B3778();
          v315 = v239 + 64;
          v252 = 1 << *(v239 + 32);
          if (v252 < 64)
          {
            v253 = ~(-1 << v252);
          }

          else
          {
            v253 = -1;
          }

          v411 = v253 & *(v239 + 64);
          sub_22396298C(v239, v251, 6);

          v352 = v251;
          sub_22396298C(v239, v251, 6);
          v254 = 0;
          v255 = v252 + 63;
          v256 = v325;
          v257 = v255 >> 6;
          v330 = v255 >> 6;
          while (2)
          {
            if (v411)
            {
              v258 = __clz(__rbit64(v411));
              v259 = (v411 - 1) & v411;
LABEL_302:
              v262 = v258 | (v254 << 6);
              v263 = (*(v398 + 48) + 16 * v262);
              v264 = *v263;
              v265 = v263[1];
              v266 = *(v398 + 56) + 24 * v262;
              v267 = *v266;
              v268 = *(v266 + 16);
              v407 = v262;
              v411 = v259;
              v403 = v264;
              if (v268 <= 2)
              {
                if (*(v266 + 16))
                {
                  if (v268 == 1)
                  {
                    v270 = MEMORY[0x277D84D38];
                  }

                  else
                  {
                    if (v268 != 2)
                    {
                      goto LABEL_383;
                    }

                    v270 = MEMORY[0x277D839F8];
                  }
                }

                else
                {
                  v270 = MEMORY[0x277D84A28];
                }

                v442 = v270;
                *&v441 = v267;
LABEL_320:
              }

              else
              {
                v269 = *(v266 + 8);
                if (v268 > 4)
                {
                  v356 = v267;
                  v314 = v265;
                  v327 = v269;
                  if (v268 == 5)
                  {
                    v271 = *(v267 + 16);
                    if (v271)
                    {
                      v272 = v267;
                      sub_22396298C(v267, v269, 5);

                      sub_22396298C(v272, v327, 5);
                      v428 = MEMORY[0x277D84F90];
                      sub_2239829F0(0, v271, 0);
                      v273 = v428;
                      v274 = (v272 + 48);
                      do
                      {
                        v434 = *(v274 - 2);
                        v440 = *(v274 - 1);
                        v275 = *v274;
                        sub_22396298C(v434, v440, *v274);
                        SimpleType.unwrap()(&v441);
                        sub_223963BB4(v434, v440, v275);
                        v277 = *(v428 + 16);
                        v276 = *(v428 + 24);
                        if (v277 >= v276 >> 1)
                        {
                          sub_2239829F0((v276 > 1), v277 + 1, 1);
                        }

                        v274 += 24;
                        *(v428 + 16) = v277 + 1;
                        sub_2239685CC(&v441, (v428 + 32 * v277 + 32));
                        --v271;
                      }

                      while (v271);
                      v298 = v356;
                      v299 = v327;
                      sub_223963BB4(v356, v327, 5);
                      v179 = v386;
                      v234 = v373;
                      v256 = v325;
                    }

                    else
                    {
                      v298 = v267;

                      v299 = v327;
                      sub_22396298C(v298, v327, 5);
                      v273 = MEMORY[0x277D84F90];
                    }

                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
                    sub_223963BB4(v298, v299, 5);
                    *&v441 = v273;
                    v229 = v320;
                    v224 = v322;
                    v257 = v330;
                  }

                  else
                  {
                    if (v268 != 6)
                    {
                      goto LABEL_383;
                    }

                    v278 = v267;
                    v279 = v269;
                    v280 = sub_2239B3778();
                    v312 = v278 + 64;
                    v281 = 1 << *(v278 + 32);
                    if (v281 < 64)
                    {
                      v282 = ~(-1 << v281);
                    }

                    else
                    {
                      v282 = -1;
                    }

                    v388 = v282 & *(v278 + 64);
                    sub_22396298C(v278, v279, 6);

                    sub_22396298C(v278, v279, 6);
                    v283 = 0;
                    v284 = (v281 + 63) >> 6;
                    v316 = v280 + 64;
                    v318 = v280;
                    while (v388)
                    {
                      v285 = __clz(__rbit64(v388));
                      v388 &= v388 - 1;
LABEL_334:
                      v288 = v285 | (v283 << 6);
                      v289 = (*(v356 + 48) + 16 * v288);
                      v290 = v289[1];
                      v338 = *v289;
                      v291 = *(v356 + 56) + 24 * v288;
                      v292 = *v291;
                      v293 = *(v291 + 8);
                      v294 = *(v291 + 16);

                      sub_22396298C(v292, v293, v294);
                      SimpleType.unwrap()(&v441);
                      sub_223963BB4(v292, v293, v294);
                      v280 = v318;
                      *(v316 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v288;
                      v295 = (v318[6] + 16 * v288);
                      *v295 = v338;
                      v295[1] = v290;
                      sub_2239685CC(&v441, (v318[7] + 32 * v288));
                      v296 = v318[2];
                      v65 = __OFADD__(v296, 1);
                      v297 = v296 + 1;
                      if (v65)
                      {
                        goto LABEL_382;
                      }

                      v318[2] = v297;
                      v179 = v386;
                      v234 = v373;
                      v257 = v330;
                    }

                    v286 = v283;
                    v256 = v325;
                    while (1)
                    {
                      v283 = v286 + 1;
                      if (__OFADD__(v286, 1))
                      {
                        goto LABEL_375;
                      }

                      if (v283 >= v284)
                      {
                        break;
                      }

                      v287 = *(v312 + 8 * v283);
                      ++v286;
                      if (v287)
                      {
                        v285 = __clz(__rbit64(v287));
                        v388 = (v287 - 1) & v287;
                        goto LABEL_334;
                      }
                    }

                    sub_223963BB4(v356, v327, 6);
                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
                    sub_223963BB4(v356, v327, 6);
                    *&v441 = v280;
                    v229 = v320;
                    v224 = v322;
                  }

                  v265 = v314;
                }

                else
                {
                  if (v268 == 3)
                  {
                    v442 = MEMORY[0x277D839B0];
                    LOBYTE(v441) = v267 & 1;
                    goto LABEL_320;
                  }

                  v442 = MEMORY[0x277D837D0];
                  *&v441 = v267;
                  *(&v441 + 1) = v269;
                  v357 = v267;
                  v328 = v269;

                  sub_22396298C(v357, v328, 4);
                }
              }

              *(v325 + 64 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v407;
              v300 = (v256[6] + 16 * v407);
              *v300 = v403;
              v300[1] = v265;
              sub_2239685CC(&v441, (v256[7] + 32 * v407));
              v301 = v256[2];
              v65 = __OFADD__(v301, 1);
              v302 = v301 + 1;
              if (v65)
              {
                goto LABEL_381;
              }

              v256[2] = v302;
              v227 = v394;
              continue;
            }

            break;
          }

          v260 = v254;
          while (1)
          {
            v254 = v260 + 1;
            if (__OFADD__(v260, 1))
            {
              goto LABEL_371;
            }

            if (v254 >= v257)
            {
              break;
            }

            v261 = *(v315 + 8 * v254);
            ++v260;
            if (v261)
            {
              v258 = __clz(__rbit64(v261));
              v259 = (v261 - 1) & v261;
              goto LABEL_302;
            }
          }

          sub_223963BB4(v398, v352, 6);
          v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
          sub_223963BB4(v398, v352, 6);
          *&v441 = v256;
          v230 = v313;
LABEL_345:
          v237 = v334;
LABEL_346:
          *(v230 + ((v234 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v234;
          v303 = (v224[6] + 16 * v234);
          *v303 = v418;
          v303[1] = v237;
          sub_2239685CC(&v441, (v224[7] + 32 * v234));
          v304 = v224[2];
          v65 = __OFADD__(v304, 1);
          v305 = v304 + 1;
          if (v65)
          {
            goto LABEL_380;
          }

          v224[2] = v305;
          if (v227)
          {
            continue;
          }

          break;
        }

LABEL_264:
        v232 = v228;
        while (1)
        {
          v228 = v232 + 1;
          if (__OFADD__(v232, 1))
          {
            goto LABEL_369;
          }

          if (v228 >= v229)
          {
            break;
          }

          v233 = *(v332 + 8 * v228);
          ++v232;
          if (v233)
          {
            v231 = __clz(__rbit64(v233));
            v227 = (v233 - 1) & v233;
            goto LABEL_269;
          }
        }

        sub_223963BB4(v179, v346, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v179, v346, 6);
        *&v441 = v224;
        v177 = v341;
        v3 = v342;
        v18 = v376;
LABEL_253:
        *(v361 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v384;
        v221 = (v366[6] + 16 * v384);
        *v221 = v380;
        v221[1] = v177;
        sub_2239685CC(&v441, (v366[7] + 32 * v384));
        v222 = v366[2];
        v65 = __OFADD__(v222, 1);
        v223 = v222 + 1;
        if (v65)
        {
          goto LABEL_378;
        }

        v366[2] = v223;
        v168 = v359;
        v167 = v375;
        v169 = v391;
        if (v391)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }
    }

    sub_223963BB4(v18, v343, 6);
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
    sub_223963BB4(v18, v343, 6);
    *&v441 = v366;
    goto LABEL_355;
  }

  v374 = *(v18 + 16);
  if (!v374)
  {

    v307 = v20;
    sub_22396298C(v18, v20, 5);
    v308 = MEMORY[0x277D84F90];
LABEL_354:
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v18, v307, 5);
    *&v441 = v308;
LABEL_355:
    v16 = v336;
    goto LABEL_356;
  }

  sub_22396298C(v18, v20, 5);

  sub_22396298C(v18, v20, 5);
  v424 = MEMORY[0x277D84F90];
  sub_2239829F0(0, v374, 0);
  v22 = 0;
  v387 = v424;
  v23 = v18 + 32;
  v335 = v18 + 32;
  while (1)
  {
    if (v22 >= *(v18 + 16))
    {
      goto LABEL_370;
    }

    v24 = v23 + 24 * v22;
    v25 = *v24;
    v26 = *(v24 + 16);
    if (v26 <= 2)
    {
      if (*(v24 + 16))
      {
        v28 = v387;
        if (v26 == 1)
        {
          v29 = MEMORY[0x277D84D38];
        }

        else
        {
          if (v26 != 2)
          {
            goto LABEL_383;
          }

          v29 = MEMORY[0x277D839F8];
        }

        v442 = v29;
        *&v441 = v25;
        goto LABEL_174;
      }

      v442 = MEMORY[0x277D84A28];
      *&v441 = v25;
      goto LABEL_80;
    }

    v27 = *(v24 + 8);
    if (*(v24 + 16) <= 4u)
    {
      v28 = v387;
      if (v26 == 3)
      {
        v442 = MEMORY[0x277D839B0];
        LOBYTE(v441) = v25 & 1;
        goto LABEL_174;
      }

      if (v26 != 4)
      {
        goto LABEL_383;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v25;
      *(&v441 + 1) = v27;
      v69 = v22;
      sub_22396298C(v25, v27, 4);
      v22 = v69;
LABEL_80:
      v28 = v387;
      goto LABEL_174;
    }

    v389 = *v24;
    v360 = v22;
    v365 = *(v24 + 8);
    if (v26 != 5)
    {
      break;
    }

    v30 = *(v25 + 16);
    if (v30)
    {
      sub_22396298C(v25, v27, 5);
      v420 = MEMORY[0x277D84F90];

      sub_2239829F0(0, v30, 0);
      v31 = 0;
      v32 = v420;
      v399 = v25 + 32;
      v33 = v30;
      v371 = v30;
      while (v31 < *(v25 + 16))
      {
        v34 = v399 + 24 * v31;
        v35 = *v34;
        v36 = *(v34 + 16);
        if (v36 <= 2)
        {
          if (*(v34 + 16))
          {
            if (v36 == 1)
            {
              v38 = MEMORY[0x277D84D38];
            }

            else
            {
              if (v36 != 2)
              {
                goto LABEL_383;
              }

              v38 = MEMORY[0x277D839F8];
            }
          }

          else
          {
            v38 = MEMORY[0x277D84A28];
          }

          v442 = v38;
          *&v441 = v35;
        }

        else
        {
          v37 = *(v34 + 8);
          if (*(v34 + 16) > 4u)
          {
            v395 = v31;
            v404 = *v34;
            if (v36 != 5)
            {
              if (v36 != 6)
              {
                goto LABEL_383;
              }

              v45 = sub_2239B3778();
              v46 = v35 + 64;
              v47 = v37;
              v48 = 1 << *(v35 + 32);
              if (v48 < 64)
              {
                v49 = ~(-1 << v48);
              }

              else
              {
                v49 = -1;
              }

              v412 = v49 & *(v35 + 64);
              sub_22396298C(v35, v47, 6);
              v378 = v47;
              sub_22396298C(v35, v47, 6);
              v50 = 0;
              v51 = (v48 + 63) >> 6;
              v381 = v32;
              v52 = v412;
              if (!v412)
              {
LABEL_59:
                v54 = v50;
                v33 = v371;
                while (1)
                {
                  v50 = v54 + 1;
                  if (__OFADD__(v54, 1))
                  {
                    break;
                  }

                  if (v50 >= v51)
                  {
                    sub_223963BB4(v404, v378, 6);
                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
                    sub_223963BB4(v404, v378, 6);
                    *&v441 = v45;
                    v18 = v376;
                    goto LABEL_70;
                  }

                  v55 = *(v46 + 8 * v50);
                  ++v54;
                  if (v55)
                  {
                    v53 = __clz(__rbit64(v55));
                    v413 = (v55 - 1) & v55;
                    goto LABEL_64;
                  }
                }

                __break(1u);
                goto LABEL_361;
              }

              while (1)
              {
                v53 = __clz(__rbit64(v52));
                v413 = (v52 - 1) & v52;
LABEL_64:
                v56 = v53 | (v50 << 6);
                v57 = (*(v404 + 48) + 16 * v56);
                v58 = v57[1];
                v408 = *v57;
                v59 = *(v404 + 56) + 24 * v56;
                v60 = *v59;
                v61 = *(v59 + 8);
                v62 = *(v59 + 16);

                sub_22396298C(v60, v61, v62);
                SimpleType.unwrap()(&v441);
                sub_223963BB4(v60, v61, v62);
                *(v45 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v56;
                v63 = (v45[6] + 16 * v56);
                *v63 = v408;
                v63[1] = v58;
                sub_2239685CC(&v441, (v45[7] + 32 * v56));
                v64 = v45[2];
                v65 = __OFADD__(v64, 1);
                v66 = v64 + 1;
                if (v65)
                {
                  goto LABEL_368;
                }

                v45[2] = v66;
                v25 = v389;
                v32 = v381;
                v31 = v395;
                v52 = v413;
                if (!v413)
                {
                  goto LABEL_59;
                }
              }
            }

            v39 = *(v35 + 16);
            if (v39)
            {
              v377 = *(v34 + 8);
              sub_22396298C(v35, v37, 5);
              v419 = MEMORY[0x277D84F90];

              sub_2239829F0(0, v39, 0);
              v40 = v419;
              v41 = (v35 + 48);
              do
              {
                v429 = *(v41 - 2);
                v435 = *(v41 - 1);
                v42 = *v41;
                sub_22396298C(v429, v435, *v41);
                SimpleType.unwrap()(&v441);
                sub_223963BB4(v429, v435, v42);
                v44 = *(v419 + 16);
                v43 = *(v419 + 24);
                if (v44 >= v43 >> 1)
                {
                  sub_2239829F0((v43 > 1), v44 + 1, 1);
                }

                v41 += 24;
                *(v419 + 16) = v44 + 1;
                sub_2239685CC(&v441, (v419 + 32 * v44 + 32));
                --v39;
              }

              while (v39);
              v35 = v404;
              v37 = v377;
              sub_223963BB4(v404, v377, 5);
              v25 = v389;
              v33 = v371;
              v31 = v395;
            }

            else
            {
              sub_22396298C(v35, v37, 5);
              v40 = MEMORY[0x277D84F90];
            }

            v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
            sub_223963BB4(v35, v37, 5);
            *&v441 = v40;
          }

          else if (v36 == 3)
          {
            v442 = MEMORY[0x277D839B0];
            LOBYTE(v441) = v35 & 1;
          }

          else
          {
            if (v36 != 4)
            {
              goto LABEL_383;
            }

            v442 = MEMORY[0x277D837D0];
            *&v441 = v35;
            *(&v441 + 1) = v37;
            sub_22396298C(v35, v37, 4);
          }
        }

LABEL_70:
        v68 = *(v32 + 16);
        v67 = *(v32 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_2239829F0((v67 > 1), v68 + 1, 1);
          v33 = v371;
        }

        ++v31;
        *(v32 + 16) = v68 + 1;
        sub_2239685CC(&v441, (v32 + 32 * v68 + 32));
        if (v31 == v33)
        {
          v159 = v365;
          sub_223963BB4(v25, v365, 5);
          v23 = v335;
          goto LABEL_173;
        }
      }

LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
      goto LABEL_367;
    }

    v159 = *(v24 + 8);
    sub_22396298C(v25, v27, 5);
    v32 = MEMORY[0x277D84F90];
LABEL_173:
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v25, v159, 5);
    *&v441 = v32;
    v28 = v387;
    v22 = v360;
LABEL_174:
    v425 = v28;
    v161 = *(v28 + 16);
    v160 = *(v28 + 24);
    if (v161 >= v160 >> 1)
    {
      v163 = v22;
      sub_2239829F0((v160 > 1), v161 + 1, 1);
      v23 = v335;
      v22 = v163;
      v28 = v425;
    }

    *(v28 + 16) = v161 + 1;
    v387 = v28;
    v162 = v22 + 1;
    sub_2239685CC(&v441, (v28 + 32 * v161 + 32));
    v22 = v162;
    if (v162 == v374)
    {
      v307 = v343;
      sub_223963BB4(v18, v343, 5);
      v3 = v342;
      v308 = v387;
      goto LABEL_354;
    }
  }

  if (v26 != 6)
  {
    goto LABEL_383;
  }

  v70 = sub_2239B3778();
  v71 = v25 + 64;
  v72 = 1 << *(v25 + 32);
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  else
  {
    v73 = -1;
  }

  v414 = v73 & *(v25 + 64);
  sub_22396298C(v25, v27, 6);
  sub_22396298C(v25, v27, 6);
  v74 = 0;
  v75 = (v72 + 63) >> 6;
  v76 = v70 + 8;
  v379 = v70 + 8;
  v339 = v25 + 64;
  v340 = v70;
  v337 = v75;
  v77 = v414;
  if (!v414)
  {
LABEL_87:
    v80 = v74;
    while (1)
    {
      v74 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v74 >= v75)
      {
        sub_223963BB4(v25, v365, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v25, v365, 6);
        *&v441 = v70;
        v28 = v387;
        v22 = v360;
        v18 = v376;
        v23 = v335;
        goto LABEL_174;
      }

      v81 = *(v71 + 8 * v74);
      ++v80;
      if (v81)
      {
        v78 = __clz(__rbit64(v81));
        v79 = (v81 - 1) & v81;
        goto LABEL_92;
      }
    }

LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  while (1)
  {
    v78 = __clz(__rbit64(v77));
    v79 = (v77 - 1) & v77;
LABEL_92:
    v82 = v78 | (v74 << 6);
    v83 = (*(v25 + 48) + 16 * v82);
    v84 = v83[1];
    v405 = *v83;
    v409 = v82;
    v85 = *(v25 + 56) + 24 * v82;
    v86 = *v85;
    v87 = *(v85 + 16);
    v415 = v79;
    if (v87 > 2)
    {
      break;
    }

    if (*(v85 + 16))
    {
      if (v87 == 1)
      {
        v89 = MEMORY[0x277D84D38];
      }

      else
      {
        if (v87 != 2)
        {
          goto LABEL_383;
        }

        v89 = MEMORY[0x277D839F8];
      }
    }

    else
    {
      v89 = MEMORY[0x277D84A28];
    }

    v442 = v89;
    *&v441 = v86;
LABEL_110:
    v93 = v84;

LABEL_111:
    *(v76 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v409;
    v99 = (v70[6] + 16 * v409);
    *v99 = v405;
    v99[1] = v93;
    sub_2239685CC(&v441, (v70[7] + 32 * v409));
    v100 = v70[2];
    v65 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v65)
    {
      goto LABEL_373;
    }

    v70[2] = v101;
    v77 = v415;
    if (!v415)
    {
      goto LABEL_87;
    }
  }

  v88 = *(v85 + 8);
  if (*(v85 + 16) <= 4u)
  {
    if (v87 != 3)
    {
      if (v87 != 4)
      {
        goto LABEL_383;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v86;
      *(&v441 + 1) = v88;
      v102 = v86;
      v93 = v84;

      sub_22396298C(v102, v88, 4);
      goto LABEL_111;
    }

    v442 = MEMORY[0x277D839B0];
    LOBYTE(v441) = v86 & 1;
    goto LABEL_110;
  }

  v348 = *(v85 + 8);
  if (v87 == 5)
  {
    v90 = *(v86 + 16);
    if (v90)
    {
      v91 = v84;
      sub_22396298C(v86, v88, 5);
      v92 = v86;
      v93 = v91;

      sub_22396298C(v92, v88, 5);
      v421 = MEMORY[0x277D84F90];
      sub_2239829F0(0, v90, 0);
      v94 = v421;
      v323 = v92;
      v95 = (v92 + 48);
      do
      {
        v430 = *(v95 - 2);
        v436 = *(v95 - 1);
        v96 = *v95;
        sub_22396298C(v430, v436, *v95);
        SimpleType.unwrap()(&v441);
        sub_223963BB4(v430, v436, v96);
        v98 = *(v421 + 16);
        v97 = *(v421 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_2239829F0((v97 > 1), v98 + 1, 1);
        }

        v95 += 24;
        *(v421 + 16) = v98 + 1;
        sub_2239685CC(&v441, (v421 + 32 * v98 + 32));
        --v90;
      }

      while (v90);
      v158 = v323;
      v88 = v348;
      sub_223963BB4(v323, v348, 5);
      v25 = v389;
      v71 = v339;
      v70 = v340;
      v75 = v337;
    }

    else
    {
      v158 = *v85;
      v93 = v84;

      sub_22396298C(v158, v88, 5);
      v94 = MEMORY[0x277D84F90];
    }

    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v158, v88, 5);
    *&v441 = v94;
    v76 = v379;
    goto LABEL_111;
  }

  if (v87 != 6)
  {
    goto LABEL_383;
  }

  v103 = v84;
  v104 = sub_2239B3778();
  v329 = v86 + 64;
  v105 = 1 << *(v86 + 32);
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  else
  {
    v106 = -1;
  }

  v400 = v106 & *(v86 + 64);
  sub_22396298C(v86, v348, 6);
  v319 = v103;

  sub_22396298C(v86, v348, 6);
  v107 = 0;
  v108 = v105 + 63;
  v76 = v379;
  v109 = v108 >> 6;
  v372 = v104 + 64;
  v358 = v108 >> 6;
  v385 = v104;
  v110 = v400;
  if (!v400)
  {
LABEL_122:
    v113 = v107;
    while (1)
    {
      v107 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_364;
      }

      if (v107 >= v109)
      {
        sub_223963BB4(v86, v348, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v86, v348, 6);
        *&v441 = v385;
        v75 = v337;
        v93 = v319;
        goto LABEL_111;
      }

      v114 = *(v329 + 8 * v107);
      ++v113;
      if (v114)
      {
        v111 = __clz(__rbit64(v114));
        v112 = (v114 - 1) & v114;
        goto LABEL_127;
      }
    }
  }

  while (2)
  {
    v111 = __clz(__rbit64(v110));
    v112 = (v110 - 1) & v110;
LABEL_127:
    v115 = v111 | (v107 << 6);
    v116 = (*(v86 + 48) + 16 * v115);
    v117 = *v116;
    v118 = v116[1];
    v119 = *(v86 + 56) + 24 * v115;
    v120 = *v119;
    v121 = *(v119 + 16);
    v396 = v117;
    v401 = v112;
    if (v121 <= 2)
    {
      if (*(v119 + 16))
      {
        if (v121 == 1)
        {
          v123 = MEMORY[0x277D84D38];
        }

        else
        {
          if (v121 != 2)
          {
            goto LABEL_383;
          }

          v123 = MEMORY[0x277D839F8];
        }
      }

      else
      {
        v123 = MEMORY[0x277D84A28];
      }

      v442 = v123;
      *&v441 = v120;
LABEL_145:

      goto LABEL_165;
    }

    v122 = *(v119 + 8);
    if (v121 <= 4)
    {
      if (v121 == 3)
      {
        v442 = MEMORY[0x277D839B0];
        LOBYTE(v441) = v120 & 1;
        goto LABEL_145;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v120;
      *(&v441 + 1) = v122;
      v383 = v120;
      v345 = v122;

      sub_22396298C(v383, v345, 4);
LABEL_165:
      *(v372 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v115;
      v155 = (v385[6] + 16 * v115);
      *v155 = v396;
      v155[1] = v118;
      sub_2239685CC(&v441, (v385[7] + 32 * v115));
      v156 = v385[2];
      v65 = __OFADD__(v156, 1);
      v157 = v156 + 1;
      if (v65)
      {
        goto LABEL_377;
      }

      v385[2] = v157;
      v109 = v358;
      v110 = v401;
      if (!v401)
      {
        goto LABEL_122;
      }

      continue;
    }

    break;
  }

  v382 = v120;
  v321 = v118;
  v344 = v122;
  if (v121 == 5)
  {
    v124 = *(v120 + 16);
    if (v124)
    {
      v125 = v120;
      sub_22396298C(v120, v122, 5);

      sub_22396298C(v125, v344, 5);
      v422 = MEMORY[0x277D84F90];
      sub_2239829F0(0, v124, 0);
      v126 = v422;
      v127 = (v125 + 48);
      do
      {
        v431 = *(v127 - 2);
        v437 = *(v127 - 1);
        v128 = *v127;
        sub_22396298C(v431, v437, *v127);
        SimpleType.unwrap()(&v441);
        sub_223963BB4(v431, v437, v128);
        v130 = *(v422 + 16);
        v129 = *(v422 + 24);
        if (v130 >= v129 >> 1)
        {
          sub_2239829F0((v129 > 1), v130 + 1, 1);
        }

        v127 += 24;
        *(v422 + 16) = v130 + 1;
        sub_2239685CC(&v441, (v422 + 32 * v130 + 32));
        --v124;
      }

      while (v124);
      v153 = v382;
      v154 = v344;
      sub_223963BB4(v382, v344, 5);
    }

    else
    {
      v153 = v120;

      v154 = v344;
      sub_22396298C(v153, v344, 5);
      v126 = MEMORY[0x277D84F90];
    }

    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v153, v154, 5);
    *&v441 = v126;
    v25 = v389;
    v71 = v339;
    v70 = v340;
    v76 = v379;
LABEL_164:
    v118 = v321;
    goto LABEL_165;
  }

  if (v121 == 6)
  {
    v324 = v86;
    v326 = v115;
    v131 = v120;
    v132 = v122;
    v133 = sub_2239B3778();
    v317 = v131 + 64;
    v134 = 1 << *(v131 + 32);
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    else
    {
      v135 = -1;
    }

    v392 = v135 & *(v131 + 64);
    sub_22396298C(v131, v132, 6);

    v136 = v132;
    v137 = v133;
    sub_22396298C(v131, v136, 6);
    v138 = 0;
    v139 = (v134 + 63) >> 6;
    v331 = v133 + 64;
    v333 = v133;
    while (v392)
    {
      v140 = __clz(__rbit64(v392));
      v392 &= v392 - 1;
LABEL_159:
      v143 = v140 | (v138 << 6);
      v144 = (*(v382 + 48) + 16 * v143);
      v145 = v144[1];
      v353 = *v144;
      v146 = *(v382 + 56) + 24 * v143;
      v147 = *v146;
      v148 = *(v146 + 8);
      v149 = *(v146 + 16);

      sub_22396298C(v147, v148, v149);
      SimpleType.unwrap()(&v441);
      sub_223963BB4(v147, v148, v149);
      v137 = v333;
      *(v331 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
      v150 = (v333[6] + 16 * v143);
      *v150 = v353;
      v150[1] = v145;
      sub_2239685CC(&v441, (v333[7] + 32 * v143));
      v151 = v333[2];
      v65 = __OFADD__(v151, 1);
      v152 = v151 + 1;
      if (v65)
      {
        goto LABEL_379;
      }

      v333[2] = v152;
    }

    v141 = v138;
    v76 = v379;
    v115 = v326;
    while (1)
    {
      v138 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        break;
      }

      if (v138 >= v139)
      {
        sub_223963BB4(v382, v344, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v382, v344, 6);
        *&v441 = v137;
        v25 = v389;
        v71 = v339;
        v70 = v340;
        v86 = v324;
        goto LABEL_164;
      }

      v142 = *(v317 + 8 * v138);
      ++v141;
      if (v142)
      {
        v140 = __clz(__rbit64(v142));
        v392 = (v142 - 1) & v142;
        goto LABEL_159;
      }
    }

LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
  }

LABEL_383:
  result = sub_2239B3768();
  __break(1u);
  return result;
}

_OWORD *sub_2239685CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Message.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 41);
  v3 = *(v1 + 42);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 40);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
}

id static Predicate.evaluate(_:with:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_2239B30C8();
  v4 = [v2 evaluatePredicate:a1 with:v3];

  return v4;
}

BOOL Message.shouldRetain.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16) && (v2 = sub_22396236C(0xD00000000000001BLL, 0x80000002239BA8C0), (v3 & 1) != 0))
  {
    v4 = *(v1 + 56) + 24 * v2;
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(v4 + 16);
    sub_22396298C(*v4, v8, v9);
    v5 = SimpleType.isTrue()();
    sub_223963BB4(v7, v8, v9);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t Config.neededPreviousFields.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 264);
}

Swift::Double_optional __swiftcall SimpleType.unwrapToDouble()()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *v0;
  v4 = *(v0 + 1);
  LODWORD(v5) = v0[16];
  if (LODWORD(v5) <= 1)
  {
    if (v0[16])
    {
      if (LODWORD(v5) != 1)
      {
        goto LABEL_13;
      }

      v5 = (v1 | (v2 << 8));
      v8 = 1;
    }

    else
    {
      v5 = (v1 | (v2 << 8));
      v8 = 0;
    }

LABEL_12:
    sub_22396298C(v3, v4, v8);
    goto LABEL_14;
  }

  if (LODWORD(v5) == 2)
  {
    LOBYTE(v5) = *v0;
    v8 = 2;
    goto LABEL_12;
  }

  if (LODWORD(v5) == 3)
  {
    sub_22396298C(v3, v4, 3);
    LOBYTE(v5) = 0;
    goto LABEL_14;
  }

  if (LODWORD(v5) != 4)
  {
LABEL_13:
    v9 = v1 | (v2 << 8);
    v10 = v4;
    sub_22396298C(v3, v4, SLOBYTE(v5));
    sub_223963BB4(v9, v10, SLOBYTE(v5));
    LOBYTE(v5) = 0;
    goto LABEL_14;
  }

  *&v5 = v1 | (v2 << 8);
  v6 = *(v0 + 1);
  sub_22396298C(v3, v4, 4);
  LOBYTE(v5) = sub_22396E920(*&v5, v6);
LABEL_14:
  v11 = LOBYTE(v5);
  result.value = v7;
  result.is_nil = v11;
  return result;
}

uint64_t sub_223968A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall Message.addToContent(from:)(Swift::OpaquePointer from)
{

  v3 = *(v1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 8);
  sub_2239629B8(from._rawValue, sub_223962CA0, 0, isUniquelyReferenced_nonNull_native, &v5);

  *(v1 + 8) = v5;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t static Utilities.applicationName(from:)(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (*(a1 + 16))
  {
    v3 = sub_22396236C(0xD000000000000018, 0x80000002239B9090);
    if (v4)
    {
      v5 = *(a1 + 56) + 24 * v3;
      if (*(v5 + 16) == 4)
      {
        v1 = *v5;
        v6 = *(v5 + 8);
      }
    }
  }

  return v1;
}

uint64_t sub_223968C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223968C64()
{
  result = qword_281335D78;
  if (!qword_281335D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D78);
  }

  return result;
}

uint64_t sub_223968CF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_223968DBC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2239B3958() & 1;
  }
}

uint64_t sub_223968E14()
{
  if (qword_281335F10 != -1)
  {
    swift_once();
  }

  v0 = *(off_281335F18 + 2);

  os_unfair_lock_lock((v0 + 24));
  sub_223960244((v0 + 16), &v6);
  os_unfair_lock_unlock((v0 + 24));
  v1 = v6;

  if (v1)
  {
    sub_22396D3CC();
  }

  if (qword_281335EE8 != -1)
  {
    swift_once();
  }

  v2 = off_281335EF0;

  os_unfair_lock_lock(v2 + 8);
  v3 = *&v2[4]._os_unfair_lock_opaque;
  v4 = *&v2[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v2 + 8);

  return v3;
}

uint64_t sub_223968F38(uint64_t result, int a2, __int16 a3)
{
  if (a2 == 7 && a3 == 6)
  {
    v3 = result;
    if (qword_281336308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = sub_223960C28();
    if (v4 == 2)
    {
      v5 = HIBYTE(word_281336330);
    }

    else
    {
      v5 = v4 & 1;
    }

    if (v4 == 2)
    {
      v6 = HIBYTE(word_281336330);
    }

    else
    {
      v6 = v4;
    }

    LOBYTE(word_281336330) = v5;
    swift_endAccess();
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    result = sub_2239639F0(v6 & 1, 0, 3, 0xD000000000000013, 0x80000002239BA940, isUniquelyReferenced_nonNull_native);
    *v3 = v9;
  }

  return result;
}

unint64_t Message.init(category:type:content:metadata:)@<X0>(int a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a4[2];
  v33 = *(a4 + 24);
  v12 = sub_223968E14();
  v34 = v13;
  v39 = a3;
  sub_223965588(&v39);
  sub_223965338(&v39);
  swift_beginAccess();
  v14 = *aUnknown_0;
  v15 = qword_2813367E8;

  v16 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2239639F0(v14, v15, 4, 0x65566769666E6F63, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  v39 = v16;
  v36 = a1;
  v37 = a2;
  sub_223968F38(&v39, a1, a2);
  sub_223969288(&v39);
  sub_22396879C(&v39);
  v18 = v39;

  v20 = sub_2239651A4(v19);
  v22 = v21;
  v35 = v20;
  LOBYTE(v15) = v23;

  v38 = v15 & 1;
  if (v11)
  {

    v12 = v9;
    v25 = v10 & 1;
    v26 = (v10 >> 8) & 1;
    v27 = WORD1(v10) & 1;
    v28 = v33 & 1;
    if (!*(v18 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
    LOBYTE(v26) = 0;
    LOBYTE(v27) = 0;
    v28 = 0;
    v11 = v34;
    if (!*(v18 + 16))
    {
LABEL_8:
      v31 = 0;
      v32 = 0;
      goto LABEL_9;
    }
  }

  result = sub_22396236C(0xD000000000000018, 0x80000002239B9090);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = *(v18 + 56) + 24 * result;
  if (*(v30 + 16) != 4)
  {
    goto LABEL_8;
  }

  v31 = *v30;
  v32 = *(v30 + 8);
  result = sub_22396298C(*v30, v32, 4);
LABEL_9:
  *a5 = v36;
  *(a5 + 4) = v37;
  *(a5 + 8) = v18;
  *(a5 + 16) = v22;
  *(a5 + 24) = v35;
  *(a5 + 32) = v38;
  *(a5 + 40) = v25;
  *(a5 + 41) = v26;
  *(a5 + 42) = v27;
  *(a5 + 48) = v12;
  *(a5 + 56) = v11;
  *(a5 + 64) = v28;
  *(a5 + 72) = v31;
  *(a5 + 80) = v32;
  return result;
}

unint64_t sub_223969288(unint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    v2 = result;
    result = sub_22396236C(0xD00000000000001ALL, 0x80000002239B95A0);
    if (v3)
    {
      v4 = *(v1 + 56) + 24 * result;
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      v8 = *(v1 + 16);
      sub_22396298C(*v4, v6, v7);
      if (v8 && (sub_22396236C(0xD000000000000018, 0x80000002239B9090), (v9 & 1) != 0))
      {
        sub_223963BB4(v5, v6, v7);
      }

      else
      {
        v10 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12[0] = *v2;
        sub_2239639F0(v5, v6, v7, 0xD000000000000018, 0x80000002239B9090, isUniquelyReferenced_nonNull_native);
        *v2 = v12[0];
      }

      sub_22398D454(0xD00000000000001ALL, 0x80000002239B95A0, v12);
      return sub_22397617C(v12[0], v12[1], v13);
    }
  }

  return result;
}

uint64_t DiagnosticRulesConfig.maxSessionLength.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t static ConfigCommon.matches(sessionAppName:config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = a3 + 32;
    while (1)
    {
      sub_223964C8C(v6, &v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      (*(v8 + 8))(&v14, v7, v8);
      v9 = v15;

      if (!v9)
      {
        break;
      }

      if (a2)
      {
        *&v14 = a1;
        *(&v14 + 1) = a2;
        MEMORY[0x28223BE20](v10);
        v13[2] = &v14;
        v11 = sub_223968CB8(sub_223968D9C, v13, v9);

        if (v11)
        {
          break;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      v6 += 40;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    sub_2239695C0(&v17, &v14);
    sub_223964F8C(&v14);
    return 1;
  }

  else
  {
LABEL_9:
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_223964F8C(&v14);
    return 0;
  }
}

uint64_t sub_2239695C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t DiagnosticConfig.instanceDescription.getter()
{
  v1 = v0[13];
  v14[12] = v0[12];
  v14[13] = v1;
  v14[14] = v0[14];
  v2 = v0[9];
  v14[8] = v0[8];
  v14[9] = v2;
  v3 = v0[11];
  v14[10] = v0[10];
  v14[11] = v3;
  v4 = v0[5];
  v14[4] = v0[4];
  v14[5] = v4;
  v5 = v0[7];
  v14[6] = v0[6];
  v14[7] = v5;
  v6 = v0[1];
  v14[0] = *v0;
  v14[1] = v6;
  v7 = v0[3];
  v14[2] = v0[2];
  v14[3] = v7;
  v8 = sub_2239696A8(v14);
  v9 = sub_2239646B8(v14);
  v10 = 16;
  if (v8 == 1)
  {
    v10 = 8;
  }

  v11 = *(v9 + 8 * (v8 != 1));
  v12 = *(v9 + v10);

  return v11;
}

uint64_t DiagnosticConfig.commonConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v27[12] = v1[12];
  v27[13] = v3;
  v27[14] = v1[14];
  v4 = v1[9];
  v27[8] = v1[8];
  v27[9] = v4;
  v5 = v1[11];
  v27[10] = v1[10];
  v27[11] = v5;
  v6 = v1[5];
  v27[4] = v1[4];
  v27[5] = v6;
  v7 = v1[7];
  v27[6] = v1[6];
  v27[7] = v7;
  v8 = v1[1];
  v27[0] = *v1;
  v27[1] = v8;
  v9 = v1[3];
  v27[2] = v1[2];
  v27[3] = v9;
  v10 = sub_2239696A8(v27);
  v11 = sub_2239646B8(v27);
  v12 = 176;
  v13 = 192;
  if (v10 == 1)
  {
    v12 = 192;
  }

  v14 = 178;
  if (v10 == 1)
  {
    v14 = 194;
  }

  v15 = 184;
  v16 = 200;
  if (v10 == 1)
  {
    v15 = 200;
  }

  v17 = 208;
  if (v10 == 1)
  {
    v13 = 208;
  }

  v18 = 216;
  if (v10 == 1)
  {
    v16 = 216;
    v17 = 224;
    v18 = 232;
  }

  v19 = *(v11 + v17);
  v20 = *(v11 + v16);
  v21 = *(v11 + v13);
  v22 = *(v11 + v15);
  v23 = *(v11 + v14);
  v24 = *(v11 + v12);
  v25 = *(v11 + v18);

  *a1 = v24;
  *(a1 + 2) = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v19;
  *(a1 + 40) = v25;
  return result;
}

uint64_t DiagnosticConfig.diagnosticRulesConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v29[12] = v1[12];
  v29[13] = v3;
  v29[14] = v1[14];
  v4 = v1[9];
  v29[8] = v1[8];
  v29[9] = v4;
  v5 = v1[11];
  v29[10] = v1[10];
  v29[11] = v5;
  v6 = v1[5];
  v29[4] = v1[4];
  v29[5] = v6;
  v7 = v1[7];
  v29[6] = v1[6];
  v29[7] = v7;
  v8 = v1[1];
  v29[0] = *v1;
  v29[1] = v8;
  v9 = v1[3];
  v29[2] = v1[2];
  v29[3] = v9;
  v10 = sub_2239696A8(v29);
  v11 = sub_2239646B8(v29);
  if (v10 == 1)
  {
    v12 = *(v11 + 184);
    v27 = *(v11 + 176);
    v13 = *(v11 + 160);
    v14 = *(v11 + 168);
    v15 = *(v11 + 144);
    v16 = *(v11 + 152);
    v18 = *(v11 + 128);
    v17 = *(v11 + 136);
    v19 = *(v11 + 120);
    v20 = *(v11 + 124);
    v21 = *(v11 + 112);
    v24 = *(v11 + 104);
    v22 = v11 + 104;
    v23 = v24;
  }

  else
  {
    v12 = *(v11 + 168);
    v27 = *(v11 + 160);
    v13 = *(v11 + 144);
    v14 = *(v11 + 152);
    v15 = *(v11 + 128);
    v16 = *(v11 + 136);
    v18 = *(v11 + 112);
    v17 = *(v11 + 120);
    v19 = *(v11 + 104);
    v20 = *(v11 + 108);
    v21 = *(v11 + 96);
    v25 = *(v11 + 88);
    v22 = v11 + 88;
    v23 = v25;
  }

  result = sub_223969B50(v22, v28);
  *a1 = v23;
  *(a1 + 8) = v21;
  *(a1 + 16) = v19;
  *(a1 + 20) = v20;
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v27;
  *(a1 + 80) = v12;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t static ConfigCommon.matches(sessionProcessName:config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = a3 + 32;
    while (1)
    {
      sub_223964C8C(v6, &v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      (*(v8 + 8))(v14, v7, v8);
      v9 = *(&v14[0] + 1);

      if (!v9)
      {
        break;
      }

      if (a2)
      {
        *&v14[0] = a1;
        *(&v14[0] + 1) = a2;
        MEMORY[0x28223BE20](v10);
        v13[2] = v14;
        v11 = sub_223968CB8(sub_2239847DC, v13, v9);

        if (v11)
        {
          break;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v16);
      v6 += 40;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    sub_2239695C0(&v16, v14);
    sub_223964F8C(v14);
    return 1;
  }

  else
  {
LABEL_9:
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_223964F8C(v14);
    return 0;
  }
}

uint64_t DiagnosticRulesConfig.requiredDefault.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void *RouterConfig.predicate.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t static Constants.unknownReporterID.getter()
{
  if (qword_281336778 != -1)
  {
    swift_once();
  }

  return qword_281335EE0;
}

uint64_t sub_223969CF0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = sub_22396A284(*(a1 + 8));
  v4 = sub_22396A284(v2);
  v5 = sub_22396A45C(v3, v4);

  return v5 & 1;
}

uint64_t sub_223969D88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v30 = result;
  v31 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v35 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v32 = v12;
    v16 = *(a3 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    v34 = v17;
    sub_22396298C(v18, v17, v19);
    if (qword_281335F40 != -1)
    {
      swift_once();
    }

    v20 = qword_2813382B0;
    if (*(qword_2813382B0 + 16) && (v21 = *(qword_2813382B0 + 40), sub_2239B3A18(), sub_2239B3228(), v22 = sub_2239B3A78(), v23 = -1 << *(v20 + 32), v24 = v22 & ~v23, ((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(v20 + 48) + 16 * v24);
        v27 = *v26 == v14 && v26[1] == v15;
        if (v27 || (sub_2239B3958() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_223963BB4(v18, v34, v19);

      v7 = v35;
    }

    else
    {
LABEL_24:
      sub_223963BB4(v18, v34, v19);

      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v28 = __OFADD__(v31++, 1);
      v7 = v35;
      if (v28)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_22396A004(v30, a2, v31, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22396A004(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  result = sub_2239B3798();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v37 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v38 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v4 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v8 + 40);
    v24 = v8;
    sub_2239B3A18();

    sub_22396298C(v20, v21, v22);
    sub_2239B3228();
    result = sub_2239B3A78();
    v8 = v24;
    v25 = -1 << *(v24 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v11 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v24 + 48) + 16 * v28);
    *v33 = v17;
    v33[1] = v18;
    v34 = *(v24 + 56) + 24 * v28;
    *v34 = v20;
    *(v34 + 8) = v21;
    *(v34 + 16) = v22;
    ++*(v24 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v9 = v38;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
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

uint64_t sub_22396A284(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_223969D88(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_223990814(v9, v4, v2);
  result = MEMORY[0x223DEF1D0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Message.appName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Message.appName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_22396A45C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  v10 = -1 << v8;
  if (v8 < 64)
  {
    v9 = ~v10;
  }

  v11 = v9 & *(a1 + 64);
  v12 = (v8 + 63) >> 6;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        if (v11)
        {
          v13 = __clz(__rbit64(v11));
          v330 = (v11 - 1) & v11;
          goto LABEL_13;
        }

        v14 = v7;
        do
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_274:
            v76 = v11;
            v229 = v10;
            sub_22396298C(v11, v10, v4);
            v230 = v3;
            v231 = v328;
            v232 = 0;
            goto LABEL_283;
          }

          if (v7 >= v12)
          {
            return 1;
          }

          v15 = *(a1 + 64 + 8 * v7);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v330 = (v15 - 1) & v15;
LABEL_13:
        v16 = v13 | (v7 << 6);
        v17 = *(a1 + 48) + 16 * v16;
        v18 = *v17;
        v3 = *(v17 + 8);
        v19 = *(a1 + 56) + 24 * v16;
        v20 = *v19;
        v21 = *(v19 + 8);
        LODWORD(v4) = *(v19 + 16);

        sub_22396298C(v20, v21, v4);
        v22 = v3 == 0;
        if (*&v3 == 0.0)
        {
          return v22;
        }

        v331 = v20;
        v332 = v21;
        v23 = sub_22396236C(v18, v3);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v2 = v331;
          v5 = v332;
          goto LABEL_325;
        }

        v26 = *(a2 + 56) + 24 * v23;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29 <= 2)
        {
          v2 = v331;
          v5 = v332;
          if (*(v26 + 16))
          {
            if (v29 != 1)
            {
              if (v4 != 2)
              {
                goto LABEL_324;
              }

              sub_223963BB4(*v26, v27, 2);
              sub_223963BB4(v331, v332, 2);
              v36 = *&v28 == *&v331;
LABEL_36:
              v11 = v330;
              if (!v36)
              {
                return v22;
              }

              continue;
            }

            sub_223963BB4(*v26, v27, 1);
            if (v4 != 1)
            {
              goto LABEL_325;
            }

            v30 = v331;
            v31 = v332;
            v32 = 1;
          }

          else
          {
            sub_223963BB4(*v26, v27, 0);
            if (v4)
            {
              goto LABEL_325;
            }

            v30 = v331;
            v31 = v332;
            v32 = 0;
          }

          sub_223963BB4(v30, v31, v32);
          v36 = v28 == v331;
          goto LABEL_36;
        }

        break;
      }

      v2 = v331;
      v5 = v332;
      if (*(v26 + 16) <= 4u)
      {
        if (v29 == 3)
        {
          sub_223963BB4(*v26, v27, 3);
          if (v4 != 3)
          {
            goto LABEL_325;
          }

          sub_223963BB4(v331, v332, 3);
          v11 = v330;
          if ((v28 ^ v331))
          {
            return v22;
          }

          continue;
        }

        if (v4 == 4)
        {
          if (v28 != v331 || v27 != v332)
          {
            v38 = *v26;
            v3 = *(v26 + 8);
            LOBYTE(v4) = sub_2239B3958();

            sub_223963BB4(v28, v3, 4);
            v39 = v331;
            v40 = v332;
            v41 = 4;
            goto LABEL_46;
          }

          v326 = *(v26 + 16);

          v34 = v331;
          v35 = v332;
          v42 = 4;
LABEL_52:
          sub_223963BB4(v34, v35, v42);
          sub_223963BB4(v331, v5, v326);
          v11 = v330;
          continue;
        }

        v224 = *(v26 + 8);
LABEL_271:
        v225 = *(v26 + 8);
        v226 = *(v26 + 16);

        LOBYTE(v29) = v226;
        v27 = v225;
        goto LABEL_324;
      }

      break;
    }

    if (v29 != 5)
    {
      if (v4 == 6)
      {
        v3 = *(v26 + 8);
        sub_22396298C(*v26, v27, 6);
        sub_22396298C(v28, v3, 6);
        sub_22396298C(v331, v332, 6);
        LOBYTE(v4) = sub_22396A45C(v28, v331);
        sub_223963BB4(v331, v332, 6);
        sub_223963BB4(v28, v3, 6);
        sub_223963BB4(v28, v3, 6);
        v39 = v331;
        v40 = v332;
        v41 = 6;
LABEL_46:
        sub_223963BB4(v39, v40, v41);
        v11 = v330;
        if ((v4 & 1) == 0)
        {
          return v22;
        }

        continue;
      }

      goto LABEL_269;
    }

    break;
  }

  if (v4 != 5)
  {
LABEL_269:
    v223 = *v26;
    goto LABEL_271;
  }

  v3 = *(v28 + 16);
  if (v3 != *(v331 + 16))
  {
    v227 = *(v26 + 8);
    v228 = v29;

    LOBYTE(v29) = v228;
    v27 = v227;
    LOBYTE(v4) = 5;
    goto LABEL_324;
  }

  v326 = 5;
  if (*&v3 == 0.0)
  {
    v43 = *(v26 + 8);

    goto LABEL_50;
  }

  if (v28 == v331)
  {
    v33 = *(v26 + 8);

    v34 = v331;
    v35 = v33;
LABEL_51:
    v42 = 5;
    goto LABEL_52;
  }

  v325 = v28 + 32;
  v44 = *(v26 + 8);
  sub_22396298C(v28, v27, 5);
  v314 = v44;
  sub_22396298C(v28, v44, 5);
  sub_22396298C(v331, v332, 5);
  v48 = 0;
  v322 = v28;
  v324 = v3;
  while (2)
  {
    if (v48 >= *(v28 + 16))
    {
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      v260 = v46;
      goto LABEL_302;
    }

    if (v48 >= *(v331 + 16))
    {
      goto LABEL_298;
    }

    v49 = v325 + 24 * v48;
    v3 = *v49;
    v327 = v48;
    v328 = *(v49 + 8);
    v50 = *(v49 + 16);
    v51 = v331 + 32 + 24 * v48;
    v11 = *v51;
    v10 = *(v51 + 8);
    LODWORD(v4) = *(v51 + 16);
    if (v50 <= 2)
    {
      if (v50)
      {
        if (v50 != 1)
        {
          if (v4 != 2)
          {
            v233 = *v51;
            v234 = *(v51 + 8);
            sub_22396298C(*v51, v234, *(v51 + 16));
            v235 = v3;
            v236 = v328;
            v237 = 2;
            goto LABEL_280;
          }

          v66 = *&v3;
          v67 = *v51;
          v68 = v3;
          v4 = *v51;
          v69 = *(v51 + 8);
          sub_223963BB4(v68, v328, 2);
          sub_223963BB4(v4, v69, 2);
          if (v66 != v67)
          {
            goto LABEL_323;
          }

          goto LABEL_56;
        }

        if (v4 != 1)
        {
          v76 = *v51;
          v229 = *(v51 + 8);
          sub_22396298C(*v51, v229, *(v51 + 16));
          v230 = v3;
          v231 = v328;
          v232 = 1;
          goto LABEL_283;
        }

        v54 = v3;
        v55 = *v51;
        v44 = v3;
        v56 = *(v51 + 8);
        sub_223963BB4(v54, v328, 1);
        v57 = v55;
        v58 = v56;
        v59 = 1;
      }

      else
      {
        if (*(v51 + 16))
        {
          goto LABEL_274;
        }

        v64 = v3;
        v55 = *v51;
        v44 = v3;
        v65 = *(v51 + 8);
        sub_223963BB4(v64, v328, 0);
        v57 = v55;
        v58 = v65;
        v59 = 0;
      }

      sub_223963BB4(v57, v58, v59);
      v36 = v44 == v55;
      v28 = v322;
      if (!v36)
      {
        goto LABEL_323;
      }

      goto LABEL_56;
    }

    if (v50 <= 4)
    {
      if (v50 == 3)
      {
        if (v4 == 3)
        {
          v52 = v3;
          v4 = *v51;
          v44 = v3;
          v53 = *(v51 + 8);
          sub_223963BB4(v52, v328, 3);
          sub_223963BB4(v4, v53, 3);
          if ((v4 ^ v44))
          {
            goto LABEL_323;
          }

          goto LABEL_56;
        }

        v233 = *v51;
        v234 = *(v51 + 8);
        sub_22396298C(*v51, v234, *(v51 + 16));
        v235 = v3;
        v236 = v328;
        v237 = 3;
LABEL_280:
        sub_223963BB4(v235, v236, v237);
        v238 = v233;
        v28 = v322;
        v239 = v234;
        v240 = v4;
LABEL_281:
        sub_223963BB4(v238, v239, v240);
        goto LABEL_323;
      }

      if (v4 != 4)
      {
        v233 = *v51;
        v234 = *(v51 + 8);
        sub_22396298C(*v51, v234, *(v51 + 16));
        sub_22396298C(v3, v328, 4);
        v235 = v3;
        v236 = v328;
        v237 = 4;
        goto LABEL_280;
      }

      if (v3 == v11 && v328 == v10)
      {
        v44 = v328;
        sub_22396298C(v3, v328, 4);
        sub_22396298C(v3, v328, 4);
        sub_223963BB4(v3, v328, 4);
        sub_223963BB4(v3, v328, 4);
        goto LABEL_56;
      }

      LOBYTE(v4) = v328;
      v71 = *v51;
      v44 = v3;
      v72 = *(v51 + 8);
      LODWORD(v323) = sub_2239B3958();
      sub_22396298C(v71, v72, 4);
      sub_22396298C(v44, v328, 4);
      sub_223963BB4(v44, v328, 4);
      v73 = v71;
      v28 = v322;
      sub_223963BB4(v73, v72, 4);
LABEL_91:
      if ((v323 & 1) == 0)
      {
        goto LABEL_323;
      }

LABEL_56:
      v48 = v327 + 1;
      v3 = v324;
      if (v327 + 1 != v324)
      {
        continue;
      }

      sub_223963BB4(v331, v5, 5);
      v43 = v314;
      sub_223963BB4(v28, v314, 5);
      v34 = v28;
LABEL_50:
      v35 = v43;
      goto LABEL_51;
    }

    break;
  }

  if (v50 != 5)
  {
    v74 = *v51;
    v75 = *(v51 + 8);
    v76 = *v51;
    if (v4 == 6)
    {
      v44 = v328;
      v4 = *(v51 + 8);
      sub_22396298C(v74, v75, 6);
      sub_22396298C(v3, v328, 6);
      sub_22396298C(v76, v4, 6);
      sub_22396298C(v3, v328, 6);
      LODWORD(v323) = sub_22396A45C(v3, v76);
      sub_223963BB4(v3, v328, 6);
      sub_223963BB4(v76, v4, 6);
      sub_223963BB4(v76, v4, 6);
      sub_223963BB4(v3, v328, 6);
      v28 = v322;
      goto LABEL_91;
    }

    v229 = *(v51 + 8);
    sub_22396298C(v74, v75, *(v51 + 16));
    sub_22396298C(v3, v328, 6);
    v230 = v3;
    v231 = v328;
    v232 = 6;
LABEL_283:
    sub_223963BB4(v230, v231, v232);
    sub_223963BB4(v76, v229, v4);
    goto LABEL_322;
  }

  if (v4 != 5)
  {
    v233 = *v51;
    v234 = *(v51 + 8);
    sub_22396298C(*v51, v234, *(v51 + 16));
    sub_22396298C(v3, v328, 5);
    v235 = v3;
    v236 = v328;
    v237 = 5;
    goto LABEL_280;
  }

  v60 = *(v3 + 16);
  if (v60 != *(v11 + 16))
  {
    v241 = *v51;
    v242 = *(v51 + 8);
    sub_22396298C(*v51, v242, 5);
    sub_22396298C(v3, v328, 5);
    sub_223963BB4(v3, v328, 5);
    v238 = v241;
    v28 = v322;
    v239 = v242;
    v240 = 5;
    goto LABEL_281;
  }

  if (v60)
  {
    v61 = v3 == v11;
  }

  else
  {
    v61 = 1;
  }

  if (v61)
  {
    v62 = *v51;
    LOBYTE(v4) = v328;
    v44 = v3;
    v63 = *(v51 + 8);
    sub_22396298C(*v51, v63, 5);
    sub_22396298C(v44, v328, 5);
    sub_223963BB4(v44, v328, 5);
    sub_223963BB4(v62, v63, 5);
    v28 = v322;
    goto LABEL_56;
  }

  v317 = v11 + 32;
  v318 = v3 + 32;
  v77 = *v51;
  v320 = v3;
  v3 = *(v51 + 8);
  sub_22396298C(v11, v10, 5);
  sub_22396298C(v320, v328, 5);
  v319 = v77;
  v310 = v3;
  sub_22396298C(v77, v3, 5);
  sub_22396298C(v320, v328, 5);
  v81 = 0;
  v316 = v60;
  while (2)
  {
    if (v81 >= *(v320 + 16))
    {
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      v271 = v80;
      v272 = v79;
      v285 = v78;
LABEL_310:
      sub_22396298C(v296, v285, v271);

      LOBYTE(v80) = v271;
      v78 = v285;
      v173 = v296;
      v2 = v331;
      v79 = v272;
      v175 = v295;
LABEL_311:
      v273 = v78;
      v274 = v80;
      v275 = v79;
      v276 = v175;
      sub_22396298C(v175, v79, v60);
      sub_223963BB4(v173, v273, v274);
      sub_223963BB4(v276, v275, v60);
      sub_223963BB4(v173, v273, v274);
LABEL_314:
      sub_223963BB4(v3, v284, 5);
      sub_223963BB4(v291, v288, 5);
      sub_223963BB4(v291, v288, 5);
      v266 = v3;
      v267 = v284;
      v268 = 5;
      goto LABEL_315;
    }

    if (v81 >= *(v319 + 16))
    {
      goto LABEL_306;
    }

    v88 = v318 + 24 * v81;
    v3 = *v88;
    v321 = *(v88 + 8);
    v89 = *(v88 + 16);
    v90 = v317 + 24 * v81;
    v91 = *(v90 + 8);
    v323 = *v90;
    v92 = *(v90 + 16);
    if (v89 <= 2)
    {
      if (v89)
      {
        if (v89 != 1)
        {
          if (v92 != 2)
          {
            v243 = *v90;
            v244 = *(v90 + 8);
            sub_22396298C(v323, v91, *(v90 + 16));
            v245 = v3;
            v246 = v321;
            v247 = 2;
            goto LABEL_292;
          }

          v101 = *(v90 + 8);
          sub_223963BB4(v3, v321, 2);
          sub_223963BB4(v323, v101, 2);
          v60 = v316;
          if (*&v3 != *&v323)
          {
            goto LABEL_321;
          }

          goto LABEL_135;
        }

        if (v92 != 1)
        {
          v243 = *v90;
          v244 = *(v90 + 8);
          sub_22396298C(v323, v91, *(v90 + 16));
          v245 = v3;
          v246 = v321;
          v247 = 1;
          goto LABEL_292;
        }

        v94 = v3;
        v83 = *v90;
        v84 = v3;
        v3 = *(v90 + 8);
        sub_223963BB4(v94, v321, 1);
        v85 = v323;
        v86 = v3;
        v87 = 1;
      }

      else
      {
        if (*(v90 + 16))
        {
          v243 = *v90;
          v244 = *(v90 + 8);
          sub_22396298C(v323, v91, *(v90 + 16));
          v245 = v3;
          v246 = v321;
          v247 = 0;
          goto LABEL_292;
        }

        v82 = v3;
        v83 = *v90;
        v84 = v3;
        v3 = *(v90 + 8);
        sub_223963BB4(v82, v321, 0);
        v85 = v323;
        v86 = v3;
        v87 = 0;
      }

      sub_223963BB4(v85, v86, v87);
      v60 = v316;
      if (v84 != *&v83)
      {
        goto LABEL_321;
      }

      goto LABEL_135;
    }

    if (v89 <= 4)
    {
      if (v89 == 3)
      {
        if (v92 == 3)
        {
          v93 = *(v90 + 8);
          sub_223963BB4(v3, v321, 3);
          sub_223963BB4(v323, v93, 3);
          v60 = v316;
          if ((v323 ^ v3))
          {
            goto LABEL_321;
          }

          goto LABEL_135;
        }

        v243 = *v90;
        v244 = *(v90 + 8);
        sub_22396298C(v323, v91, *(v90 + 16));
        v245 = v3;
        v246 = v321;
        v247 = 3;
LABEL_292:
        sub_223963BB4(v245, v246, v247);
        v248 = *&v243;
        v249 = v244;
        v250 = v92;
        goto LABEL_320;
      }

      if (v92 != 4)
      {
        v243 = *v90;
        v244 = *(v90 + 8);
        sub_22396298C(v323, v91, *(v90 + 16));
        sub_22396298C(v3, v321, 4);
        v245 = v3;
        v246 = v321;
        v247 = 4;
        goto LABEL_292;
      }

      if (v3 != v323 || v321 != v91)
      {
        v103 = v3;
        v3 = *(v90 + 8);
        LODWORD(v315) = sub_2239B3958();
        sub_22396298C(v323, v3, 4);
        sub_22396298C(v103, v321, 4);
        sub_223963BB4(v103, v321, 4);
        v104 = v323;
        v105 = v3;
        v106 = 4;
        goto LABEL_131;
      }

      sub_22396298C(v3, v321, 4);
      sub_22396298C(v3, v321, 4);
      sub_223963BB4(v3, v321, 4);
      v98 = v3;
      v99 = v321;
      v100 = 4;
LABEL_134:
      sub_223963BB4(v98, v99, v100);
      v60 = v316;
      goto LABEL_135;
    }

    if (v89 != 5)
    {
      if (v92 != 6)
      {
        v243 = *v90;
        v244 = *(v90 + 8);
        sub_22396298C(v323, v91, *(v90 + 16));
        sub_22396298C(v3, v321, 6);
        v245 = v3;
        v246 = v321;
        v247 = 6;
        goto LABEL_292;
      }

      v107 = *(v90 + 8);
      sub_22396298C(v323, v91, 6);
      sub_22396298C(v3, v321, 6);
      sub_22396298C(v323, v107, 6);
      sub_22396298C(v3, v321, 6);
      LODWORD(v315) = sub_22396A45C(v3, v323);
      sub_223963BB4(v3, v321, 6);
      sub_223963BB4(v323, v107, 6);
      sub_223963BB4(v323, v107, 6);
      v104 = v3;
      v105 = v321;
      v106 = 6;
LABEL_131:
      sub_223963BB4(v104, v105, v106);
      v60 = v316;
      if ((v315 & 1) == 0)
      {
        goto LABEL_321;
      }

LABEL_135:
      if (++v81 == v60)
      {
        v44 = v320;
        LOBYTE(v4) = v328;
        sub_223963BB4(v320, v328, 5);
        sub_223963BB4(v319, v310, 5);
        sub_223963BB4(v319, v310, 5);
        sub_223963BB4(v320, v328, 5);
        v5 = v332;
        v28 = v322;
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  if (v92 != 5)
  {
    v243 = *v90;
    v244 = *(v90 + 8);
    sub_22396298C(v323, v91, *(v90 + 16));
    sub_22396298C(v3, v321, 5);
    v245 = v3;
    v246 = v321;
    v247 = 5;
    goto LABEL_292;
  }

  v95 = *(v3 + 16);
  if (v95 != *(v323 + 16))
  {
    v251 = *(v90 + 8);
    sub_22396298C(v323, v91, 5);
    sub_22396298C(v3, v321, 5);
    sub_223963BB4(v3, v321, 5);
    v248 = v323;
    v249 = v251;
    goto LABEL_319;
  }

  if (v95)
  {
    v96 = v3 == v323;
  }

  else
  {
    v96 = 1;
  }

  if (v96)
  {
    v97 = v3;
    v3 = *(v90 + 8);
    sub_22396298C(v323, v91, 5);
    sub_22396298C(v97, v321, 5);
    sub_223963BB4(v97, v321, 5);
    v98 = v323;
    v99 = v3;
LABEL_119:
    v100 = 5;
    goto LABEL_134;
  }

  v312 = v3 + 32;
  v313 = v3;
  v108 = *(v90 + 8);
  sub_22396298C(v323, v91, 5);
  sub_22396298C(v313, v321, 5);
  v297 = v108;
  sub_22396298C(v323, v108, 5);
  result = sub_22396298C(v313, v321, 5);
  v110 = 0;
  v311 = v95;
  while (2)
  {
    if (v110 >= *(v313 + 16))
    {
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
      return result;
    }

    if (v110 >= *(v323 + 16))
    {
      goto LABEL_329;
    }

    v111 = v312 + 24 * v110;
    v112 = *v111;
    v113 = *(v111 + 8);
    v114 = *(v111 + 16);
    v115 = v323 + 32 + 24 * v110;
    v116 = *(v115 + 8);
    v315 = *v115;
    v117 = *(v115 + 16);
    if (v114 <= 2)
    {
      if (*(v111 + 16))
      {
        if (v114 != 1)
        {
          if (v117 != 2)
          {
            goto LABEL_295;
          }

          v131 = *v111;
          sub_223963BB4(v112, v113, 2);
          result = sub_223963BB4(v315, v116, 2);
          if (v131 != *&v315)
          {
            goto LABEL_318;
          }

LABEL_139:
          if (++v110 == v311)
          {
            sub_223963BB4(v313, v321, 5);
            v3 = v297;
            sub_223963BB4(v323, v297, 5);
            sub_223963BB4(v323, v297, 5);
            v98 = v313;
            v99 = v321;
            goto LABEL_119;
          }

          continue;
        }

        if (v117 != 1)
        {
          goto LABEL_295;
        }

        v121 = v110;
        v122 = *v111;
        sub_223963BB4(v112, v113, 1);
        v123 = v315;
        v124 = v315;
        v125 = v116;
        v126 = 1;
      }

      else
      {
        if (*(v115 + 16))
        {
          goto LABEL_295;
        }

        v121 = v110;
        v122 = *v111;
        sub_223963BB4(v112, v113, 0);
        v123 = v315;
        v124 = v315;
        v125 = v116;
        v126 = 0;
      }

      result = sub_223963BB4(v124, v125, v126);
      v36 = v122 == v123;
      v110 = v121;
      if (!v36)
      {
        goto LABEL_318;
      }

      goto LABEL_139;
    }

    break;
  }

  if (*(v111 + 16) <= 4u)
  {
    if (v114 == 3)
    {
      if (v117 != 3)
      {
        goto LABEL_295;
      }

      v118 = v110;
      v119 = *v111;
      sub_223963BB4(v112, v113, 3);
      result = sub_223963BB4(v315, v116, 3);
      v120 = v315 ^ v119;
      v110 = v118;
      if (v120)
      {
        goto LABEL_318;
      }

      goto LABEL_139;
    }

    if (v117 != 4)
    {
      goto LABEL_294;
    }

    if (v112 != v315 || v113 != v116)
    {
      v307 = v110;
      v133 = *v111;
      v134 = *(v115 + 8);
      v135 = *(v111 + 8);
      v308 = sub_2239B3958();
      sub_22396298C(v315, v134, 4);
      sub_22396298C(v133, v135, 4);
      v136 = v133;
      v110 = v307;
      sub_223963BB4(v136, v135, 4);
      v137 = v315;
      v138 = v134;
      v139 = 4;
LABEL_171:
      result = sub_223963BB4(v137, v138, v139);
      if ((v308 & 1) == 0)
      {
        goto LABEL_318;
      }

      goto LABEL_139;
    }

    v303 = v114;
    v142 = *v111;
    v143 = *(v111 + 8);
    sub_22396298C(v112, v113, 4);
    sub_22396298C(v142, v143, 4);
    sub_223963BB4(v142, v143, 4);
LABEL_177:
    result = sub_223963BB4(v142, v143, v303);
    goto LABEL_139;
  }

  v306 = v110;
  if (v114 != 5)
  {
    if (v117 != 6)
    {
LABEL_294:
      v252 = *v111;
      v253 = *(v111 + 8);
      v254 = v114;
      sub_22396298C(v112, v113, v114);

      LOBYTE(v114) = v254;
      v113 = v253;
      v112 = v252;
LABEL_295:
      v255 = v112;
      v256 = v113;
      v257 = v114;
      sub_22396298C(v315, v116, v117);
      sub_223963BB4(v255, v256, v257);
      goto LABEL_317;
    }

    v140 = *v111;
    v141 = *(v111 + 8);
    sub_22396298C(v315, v116, 6);
    sub_22396298C(v140, v141, 6);
    sub_22396298C(v315, v116, 6);
    sub_22396298C(v140, v141, 6);
    v308 = sub_22396A45C(v140, v315);
    sub_223963BB4(v140, v141, 6);
    sub_223963BB4(v315, v116, 6);
    sub_223963BB4(v315, v116, 6);
    v137 = v140;
    v110 = v306;
    v138 = v141;
    v139 = 6;
    goto LABEL_171;
  }

  if (v117 != 5)
  {
    goto LABEL_294;
  }

  v127 = *(v112 + 16);
  v300 = v113;
  v301 = *(v115 + 8);
  if (v127 != *(v315 + 16))
  {
    v258 = v112;
    v259 = v113;
    sub_22396298C(v315, v116, 5);
    sub_22396298C(v258, v259, 5);
    sub_22396298C(v315, v116, 5);
    v305 = v258;
    sub_22396298C(v258, v259, 5);
    goto LABEL_316;
  }

  v303 = 5;
  if (!v127)
  {
    v128 = *v115;
    goto LABEL_175;
  }

  v128 = *&v112;
  if (v112 == v315)
  {
LABEL_175:
    v129 = v112;
    v144 = *(v115 + 8);
    sub_22396298C(*&v128, v116, 5);
    v143 = v300;
    sub_22396298C(v129, v300, 5);
    sub_22396298C(*&v128, v301, 5);
    sub_22396298C(v129, v300, 5);
    *&v315 = v128;
LABEL_176:
    v142 = v129;
    sub_223963BB4(v129, v143, 5);
    sub_223963BB4(v315, v144, 5);
    sub_223963BB4(v315, v144, 5);
    v110 = v306;
    goto LABEL_177;
  }

  v304 = v112 + 32;
  v305 = v112;
  v302 = *(v112 + 16);
  sub_22396298C(v315, v116, 5);
  sub_22396298C(v305, v300, 5);
  sub_22396298C(v315, v116, 5);
  result = sub_22396298C(v305, v300, 5);
  v129 = v305;
  v130 = 0;
  while (1)
  {
    if (v130 >= *(v129 + 16))
    {
      goto LABEL_330;
    }

    if (v130 >= *(v315 + 16))
    {
      goto LABEL_331;
    }

    v149 = v304 + 24 * v130;
    v3 = *v149;
    v45 = *(v149 + 8);
    v47 = *(v149 + 16);
    v150 = v315 + 32 + 24 * v130;
    v46 = *v150;
    v44 = *(v150 + 8);
    LODWORD(v4) = *(v150 + 16);
    v309 = v130;
    if (v47 > 2)
    {
      break;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_303;
        }

        v156 = *&v3;
        v157 = *v150;
        v158 = v3;
        v159 = *v150;
        sub_223963BB4(v158, v45, 2);
        result = sub_223963BB4(v159, v44, 2);
        if (v156 != v157)
        {
          goto LABEL_316;
        }

        goto LABEL_181;
      }

      if (v4 != 1)
      {
        goto LABEL_303;
      }

      v145 = *v150;
      sub_223963BB4(v3, v45, 1);
      v146 = v145;
      v147 = v44;
      v148 = 1;
    }

    else
    {
      if (*(v150 + 16))
      {
        goto LABEL_303;
      }

      v145 = *v150;
      sub_223963BB4(v3, v45, 0);
      v146 = v145;
      v147 = v44;
      v148 = 0;
    }

    result = sub_223963BB4(v146, v147, v148);
    if (v3 != v145)
    {
      goto LABEL_316;
    }

LABEL_181:
    v130 = v309 + 1;
    v129 = v305;
    if (v309 + 1 == v302)
    {
      v143 = v300;
      v144 = v301;
      goto LABEL_176;
    }
  }

  if (v47 <= 4)
  {
    if (v47 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_303;
      }

      v151 = *v150;
      sub_223963BB4(v3, v45, 3);
      result = sub_223963BB4(v151, v44, 3);
      if ((v151 ^ v3))
      {
        goto LABEL_316;
      }

      goto LABEL_181;
    }

    if (v4 != 4)
    {
      v260 = *v150;
      goto LABEL_302;
    }

    if (v3 != v46 || v45 != v44)
    {
      v161 = v3;
      v162 = *(v150 + 8);
      v163 = v45;
      v164 = *v150;
      v298 = sub_2239B3958();
      sub_22396298C(v164, v162, 4);
      sub_22396298C(v161, v163, 4);
      sub_223963BB4(v161, v163, 4);
      v165 = v164;
      v166 = v162;
      v167 = 4;
      goto LABEL_211;
    }

    v286 = v47;
    v219 = v45;
    sub_22396298C(v3, v45, 4);
    sub_22396298C(v3, v219, 4);
    sub_223963BB4(v3, v219, 4);
    goto LABEL_262;
  }

  if (v47 == 5)
  {
    if (v4 != 5)
    {
      goto LABEL_299;
    }

    v152 = *(v3 + 16);
    v284 = v45;
    if (v152 != *(v46 + 16))
    {
      v269 = v45;
      v270 = *v150;
      sub_22396298C(v46, v44, 5);
      sub_22396298C(v3, v269, 5);
      v291 = v270;
      v288 = v44;
      sub_22396298C(v270, v44, 5);
      sub_22396298C(v3, v269, 5);
      goto LABEL_314;
    }

    v286 = 5;
    if (v152)
    {
      v153 = v3;
      if (v3 != v46)
      {
        v289 = v46 + 32;
        v290 = v3 + 32;
        v154 = *v150;
        v287 = *(v3 + 16);
        sub_22396298C(v46, v44, 5);
        v288 = v44;
        sub_22396298C(v3, v284, 5);
        v291 = v154;
        sub_22396298C(v154, v44, 5);
        result = sub_22396298C(v3, v284, 5);
        v155 = 0;
        while (1)
        {
          if (v155 >= *(v3 + 16))
          {
            goto LABEL_332;
          }

          if (v155 >= *(v291 + 16))
          {
            goto LABEL_333;
          }

          v172 = v290 + 24 * v155;
          v173 = *v172;
          v78 = *(v172 + 8);
          v80 = *(v172 + 16);
          v174 = v289 + 24 * v155;
          v175 = *v174;
          v79 = *(v174 + 8);
          LODWORD(v60) = *(v174 + 16);
          v299 = v155;
          if (v80 <= 2)
          {
            if (v80)
            {
              if (v80 != 1)
              {
                if (v60 != 2)
                {
                  goto LABEL_311;
                }

                v201 = *v174;
                v202 = *(v174 + 8);
                v203 = *v174;
                sub_223963BB4(v173, v78, 2);
                result = sub_223963BB4(v203, v202, 2);
                if (*&v173 != v201)
                {
                  goto LABEL_314;
                }

                goto LABEL_214;
              }

              if (v60 != 1)
              {
                goto LABEL_311;
              }

              v178 = *(v174 + 8);
              v179 = *v174;
              sub_223963BB4(v173, v78, 1);
              v180 = v179;
              v181 = v178;
              v182 = 1;
            }

            else
            {
              if (*(v174 + 16))
              {
                goto LABEL_311;
              }

              v200 = *(v174 + 8);
              v179 = *v174;
              sub_223963BB4(v173, v78, 0);
              v180 = v179;
              v181 = v200;
              v182 = 0;
            }

            result = sub_223963BB4(v180, v181, v182);
            if (v173 != v179)
            {
              goto LABEL_314;
            }
          }

          else
          {
            v295 = *v174;
            v296 = v173;
            if (v80 > 4)
            {
              v285 = v78;
              v282 = *(v174 + 8);
              if (v80 != 5)
              {
                if (v60 != 6)
                {
                  v271 = v80;
                  v272 = *(v174 + 8);
                  goto LABEL_310;
                }

                v211 = *(v174 + 8);
                v212 = *v174;
                sub_22396298C(v175, v79, 6);
                sub_22396298C(v296, v285, 6);
                sub_22396298C(v212, v211, 6);
                sub_22396298C(v296, v285, 6);
                v294 = sub_22396A45C(v296, v212);
                sub_223963BB4(v296, v285, 6);
                sub_223963BB4(v212, v282, 6);
                sub_223963BB4(v212, v282, 6);
                v208 = v296;
                v209 = v285;
                v210 = 6;
                goto LABEL_251;
              }

              if (v60 != 5)
              {
                v271 = v80;
                v272 = *(v174 + 8);
                goto LABEL_310;
              }

              v183 = *(v173 + 16);
              if (v183 != *(v175 + 16))
              {
                v280 = v3;
                v277 = v78;
                v278 = *(v174 + 8);
                v279 = *v174;
                sub_22396298C(v175, v79, 5);
                sub_22396298C(v173, v277, 5);
                sub_22396298C(v279, v278, 5);
                sub_22396298C(v173, v277, 5);
LABEL_313:
                sub_223963BB4(v296, v285, 5);
                sub_223963BB4(v295, v282, 5);
                sub_223963BB4(v295, v282, 5);
                sub_223963BB4(v296, v285, 5);
                v3 = v280;
                goto LABEL_314;
              }

              v283 = *(v173 + 16);
              v281 = 5;
              if (v183)
              {
                v184 = v173;
                v185 = v173;
                if (v173 != v175)
                {
                  v280 = v3;
                  v186 = *(v174 + 8);
                  sub_22396298C(v175, v79, 5);
                  sub_22396298C(v173, v285, 5);
                  sub_22396298C(v295, v186, 5);
                  sub_22396298C(v173, v285, 5);
                  v187 = v295;
                  v188 = 0;
                  v189 = (v295 + 48);
                  v190 = (v173 + 48);
                  result = v173;
                  while (v188 < *(result + 16))
                  {
                    result = *(v190 - 2);
                    v191 = *(v190 - 1);
                    v292 = v188;
                    v293 = v190;
                    v192 = *v190;
                    v336 = result;
                    v337 = v191;
                    v338 = v192;
                    if (v188 >= *(v187 + 16))
                    {
                      goto LABEL_335;
                    }

                    v194 = *(v189 - 1);
                    v333 = *(v189 - 2);
                    v193 = v333;
                    v334 = v194;
                    v335 = *v189;
                    v195 = v335;
                    sub_22396298C(result, v191, v192);
                    sub_22396298C(v193, v194, v195);
                    v196 = static SimpleType.== infix(_:_:)(&v336, &v333);
                    sub_223963BB4(v333, v334, v335);
                    sub_223963BB4(v336, v337, v338);
                    if ((v196 & 1) == 0)
                    {
                      goto LABEL_313;
                    }

                    v188 = v292 + 1;
                    v189 += 24;
                    v190 = v293 + 24;
                    v187 = v295;
                    result = v296;
                    if (v283 == v292 + 1)
                    {
                      v197 = v285;
                      v198 = v282;
                      v199 = v295;
                      v3 = v280;
                      goto LABEL_256;
                    }
                  }

                  goto LABEL_334;
                }
              }

              else
              {
                v184 = *v174;
                v185 = v173;
              }

              v216 = v184;
              v295 = v184;
              v217 = *(v174 + 8);
              sub_22396298C(v184, v79, 5);
              v218 = v185;
              v197 = v285;
              sub_22396298C(v218, v285, 5);
              sub_22396298C(v216, v217, 5);
              sub_22396298C(v296, v285, 5);
              v199 = v295;
              result = v296;
              v198 = v282;
LABEL_256:
              sub_223963BB4(result, v197, 5);
              sub_223963BB4(v199, v198, 5);
              v213 = v199;
              v173 = v296;
              v214 = v198;
              v215 = 5;
            }

            else
            {
              if (v80 == 3)
              {
                if (v60 != 3)
                {
                  goto LABEL_311;
                }

                v176 = *(v174 + 8);
                v177 = *v174;
                sub_223963BB4(v173, v78, 3);
                result = sub_223963BB4(v177, v176, 3);
                if ((v177 ^ v173))
                {
                  goto LABEL_314;
                }

                goto LABEL_214;
              }

              if (v60 != 4)
              {
                goto LABEL_307;
              }

              if (v173 != v175 || v78 != v79)
              {
                v205 = v78;
                v206 = *(v174 + 8);
                v207 = *v174;
                v294 = sub_2239B3958();
                sub_22396298C(v207, v206, 4);
                sub_22396298C(v296, v205, 4);
                sub_223963BB4(v296, v205, 4);
                v208 = v295;
                v209 = v206;
                v210 = 4;
LABEL_251:
                result = sub_223963BB4(v208, v209, v210);
                if ((v294 & 1) == 0)
                {
                  goto LABEL_314;
                }

                goto LABEL_214;
              }

              v281 = v80;
              v197 = v78;
              sub_22396298C(v173, v78, 4);
              sub_22396298C(v173, v197, 4);
              v213 = v173;
              v214 = v197;
              v215 = 4;
            }

            sub_223963BB4(v213, v214, v215);
            result = sub_223963BB4(v173, v197, v281);
          }

LABEL_214:
          v155 = v299 + 1;
          if (v299 + 1 == v287)
          {
            v221 = v3;
            v222 = v288;
            v219 = v284;
            v153 = v291;
            goto LABEL_261;
          }
        }
      }
    }

    else
    {
      v153 = *v150;
    }

    sub_22396298C(v153, v44, 5);
    v220 = v3;
    v221 = v3;
    v222 = v44;
    v219 = v284;
    sub_22396298C(v220, v284, 5);
    sub_22396298C(v153, v222, 5);
    sub_22396298C(v221, v284, 5);
LABEL_261:
    sub_223963BB4(v221, v219, 5);
    sub_223963BB4(v153, v222, 5);
    sub_223963BB4(v153, v222, 5);
    v3 = v221;
LABEL_262:
    result = sub_223963BB4(v3, v219, v286);
    goto LABEL_181;
  }

  v168 = v3;
  v169 = *(v150 + 8);
  v170 = v45;
  if (v4 == 6)
  {
    v288 = *(v150 + 8);
    v171 = *v150;
    sub_22396298C(v46, v288, 6);
    sub_22396298C(v168, v170, 6);
    sub_22396298C(v171, v288, 6);
    sub_22396298C(v168, v170, 6);
    v298 = sub_22396A45C(v168, v171);
    sub_223963BB4(v168, v170, 6);
    sub_223963BB4(v171, v288, 6);
    sub_223963BB4(v171, v288, 6);
    v165 = v168;
    v166 = v170;
    v167 = 6;
LABEL_211:
    result = sub_223963BB4(v165, v166, v167);
    if ((v298 & 1) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_181;
  }

  v260 = *v150;
  v44 = *(v150 + 8);
  v3 = v168;
LABEL_302:
  v261 = v45;
  v262 = v47;
  sub_22396298C(v3, v45, v47);

  LOBYTE(v47) = v262;
  v45 = v261;
  v46 = v260;
LABEL_303:
  v263 = v45;
  v264 = v46;
  v265 = v47;
  sub_22396298C(v46, v44, v4);
  sub_223963BB4(v3, v263, v265);
  sub_223963BB4(v264, v44, v4);
  v266 = v3;
  v267 = v263;
  v268 = v265;
LABEL_315:
  sub_223963BB4(v266, v267, v268);
LABEL_316:
  LOBYTE(v117) = 5;
  v255 = v305;
  v256 = v300;
  sub_223963BB4(v305, v300, 5);
  v116 = v301;
  sub_223963BB4(v315, v301, 5);
  v257 = 5;
LABEL_317:
  sub_223963BB4(v315, v116, v117);
  sub_223963BB4(v255, v256, v257);
LABEL_318:
  sub_223963BB4(v313, v321, 5);
  sub_223963BB4(v323, v297, 5);
  sub_223963BB4(v323, v297, 5);
  v248 = v313;
  v249 = v321;
LABEL_319:
  v250 = 5;
LABEL_320:
  sub_223963BB4(v248, v249, v250);
LABEL_321:
  sub_223963BB4(v320, v328, 5);
  sub_223963BB4(v319, v310, 5);
  sub_223963BB4(v319, v310, 5);
  sub_223963BB4(v320, v328, 5);
  v5 = v332;
LABEL_322:
  v28 = v322;
LABEL_323:
  LOBYTE(v4) = 5;
  sub_223963BB4(v2, v5, 5);
  sub_223963BB4(v28, v314, 5);
  v27 = v314;
  LOBYTE(v29) = v326;
LABEL_324:
  sub_223963BB4(v28, v27, v29);
LABEL_325:
  sub_223963BB4(v2, v5, v4);
  return 0;
}

char *sub_22396C6E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22396C7F0(char *a1, int64_t a2, char a3)
{
  result = sub_22396C6E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22396C810()
{
  result = qword_281335D70;
  if (!qword_281335D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D70);
  }

  return result;
}

unint64_t sub_22396C864()
{
  result = qword_281335D68;
  if (!qword_281335D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D68);
  }

  return result;
}

unint64_t sub_22396C8B8()
{
  result = qword_281336630;
  if (!qword_281336630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336630);
  }

  return result;
}

uint64_t sub_22396C90C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2239B3628() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2239B3A18();

      sub_2239B3228();
      v14 = sub_2239B3A78();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}