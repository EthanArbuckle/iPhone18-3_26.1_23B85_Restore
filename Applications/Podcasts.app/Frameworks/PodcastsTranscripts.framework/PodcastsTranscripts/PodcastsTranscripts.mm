Swift::tuple_OpaquePointer_OpaquePointer __swiftcall ContextActionsConfiguration.transcriptSelectionActions()()
{
  v88 = sub_97A28();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v81 = &v79 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v79 = &v79 - v2;
  __chkstk_darwin(v3);
  v82 = &v79 - v4;
  sub_97AE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C46E8);
  sub_97C18();

  v5 = v95;
  v6 = v96;
  __swift_project_boxed_opaque_existential_1(v94, v95);
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v94);
  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  v94[0] = &_swiftEmptyArrayStorage;
  v10 = *(v7 + 16);
LABEL_2:
  v89 = v9;
  v11 = v7 + 40 + 16 * v8;
  while (v10 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      sub_2F40();

      v76 = sub_98768();
      swift_bridgeObjectRelease_n();
      v16 = v76;
      v15 = &_swiftEmptyArrayStorage;
      goto LABEL_94;
    }

    ++v8;
    v12 = v11 + 16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_97978();
    swift_unknownObjectRelease();
    v11 = v12;
    if (v13)
    {
      sub_97FA8();
      if (*(&dword_10 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_97FD8();
      }

      sub_98008();
      v9 = v94[0];
      goto LABEL_2;
    }
  }

  sub_97B88();
  if (!swift_dynamicCastClass())
  {
    v94[0] = &_swiftEmptyArrayStorage;
    v17 = v89;
    if (v89 >> 62)
    {
      v18 = sub_98778();
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v18 = *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8));
      if (v18)
      {
LABEL_14:
        v19 = 0;
        v90 = v17 & 0xFFFFFFFFFFFFFF8;
        v91 = v17 & 0xC000000000000001;
        LODWORD(v80) = enum case for ContextActionType.playFromTranscript(_:);
        v20 = v86++;
        v87 = (v20 + 13);
        v83 = v18;
        while (1)
        {
          if (v91)
          {
            v21 = sub_986C8();
          }

          else
          {
            if (v19 >= *(v90 + 16))
            {
              goto LABEL_81;
            }

            v21 = v17[v19 + 4];
          }

          v22 = v21;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_80;
          }

          v24 = [v21 identifier];
          v25 = sub_97E08();
          v27 = v26;

          v28 = v88;
          v29 = v82;
          v85 = *v87;
          v85(v82, v80, v88);
          v30 = sub_97A18();
          v32 = v31;
          v84 = *v86;
          v84(v29, v28);
          v33 = v25 == v30 && v27 == v32;
          if (v33)
          {
            break;
          }

          v34 = sub_98838();

          if (v34)
          {
            goto LABEL_29;
          }

          ++v19;
          v33 = v23 == v83;
          v17 = v89;
          if (v33)
          {
            v80 = &_swiftEmptyArrayStorage;
            v36 = v79;
            goto LABEL_32;
          }
        }

LABEL_29:
        v35 = v22;
        sub_97FA8();
        v36 = v79;
        if (*(&dword_10 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_97FD8();
        }

        sub_98008();

        v80 = v94[0];
LABEL_32:
        v37 = 0;
        LODWORD(v82) = enum case for ContextActionType.copyTranscriptSelection(_:);
        while (1)
        {
          if (v91)
          {
            v38 = sub_986C8();
          }

          else
          {
            if (v37 >= *(v90 + 16))
            {
              goto LABEL_83;
            }

            v38 = v89[v37 + 4];
          }

          v39 = v38;
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_82;
          }

          v41 = [v38 identifier];
          v42 = sub_97E08();
          v44 = v43;

          v45 = v88;
          v85(v36, v82, v88);
          v46 = sub_97A18();
          v48 = v47;
          v84(v36, v45);
          if (v42 == v46 && v44 == v48)
          {

LABEL_46:
            v51 = v39;
            sub_97FA8();
            if (*(&dword_10 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_97FD8();
            }

            sub_98008();

            v80 = v94[0];
LABEL_49:
            v52 = v89;
            v53 = 0;
            LODWORD(v82) = enum case for ContextActionType.iOSShareSheetEpisode(_:);
            while (1)
            {
              if (v91)
              {
                v54 = sub_986C8();
              }

              else
              {
                if (v53 >= *(v90 + 16))
                {
                  goto LABEL_85;
                }

                v54 = v52[v53 + 4];
              }

              v55 = v54;
              v56 = v53 + 1;
              if (__OFADD__(v53, 1))
              {
                goto LABEL_84;
              }

              v57 = [v54 identifier];
              v58 = sub_97E08();
              v60 = v59;

              v61 = v81;
              v62 = v88;
              v85(v81, v82, v88);
              v63 = sub_97A18();
              v65 = v64;
              v84(v61, v62);
              if (v58 == v63 && v60 == v65)
              {
                break;
              }

              v67 = sub_98838();

              if (v67)
              {
                goto LABEL_63;
              }

              ++v53;
              v52 = v89;
              if (v56 == v83)
              {
                v69 = v83;
                goto LABEL_66;
              }
            }

LABEL_63:
            v68 = v55;
            sub_97FA8();
            if (*(&dword_10 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v94[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_97FD8();
            }

            sub_98008();

            v80 = v94[0];
            v52 = v89;
            v69 = v83;
LABEL_66:
            v70 = 0;
            v93 = &_swiftEmptyArrayStorage;
            while (1)
            {
              if (v91)
              {
                v71 = sub_986C8();
              }

              else
              {
                if (v70 >= *(v90 + 16))
                {
                  goto LABEL_79;
                }

                v71 = v52[v70 + 4];
              }

              v72 = v71;
              v73 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_78;
              }

              v92 = v71;
              if (sub_2BD8(&v92))
              {
                sub_986F8();
                sub_98728();
                sub_98738();
                sub_98708();
              }

              else
              {
              }

              ++v70;
              if (v73 == v69)
              {
                v74 = v93;
                v75 = v80;
                goto LABEL_89;
              }
            }
          }

          v50 = sub_98838();

          if (v50)
          {
            goto LABEL_46;
          }

          ++v37;
          if (v40 == v83)
          {
            goto LABEL_49;
          }
        }
      }
    }

    v74 = &_swiftEmptyArrayStorage;
    v75 = &_swiftEmptyArrayStorage;
LABEL_89:

    if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
    {
      sub_2F40();

      v77 = sub_98768();
    }

    else
    {

      sub_98848();
      sub_2F40();
      v77 = v74;
    }

    v15 = v77;
    v16 = v75;
    goto LABEL_94;
  }

  v14 = v89;
  if (v89 >> 62)
  {
    goto LABEL_86;
  }

  sub_98848();
  sub_2F40();

  v15 = &_swiftEmptyArrayStorage;
  v16 = v14;
LABEL_94:
  result._1._rawValue = v15;
  result._0._rawValue = v16;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2BD8(id *a1)
{
  v2 = sub_97A28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v40 - v10;
  v43 = *a1;
  v12 = [v43 identifier];
  v13 = sub_97E08();
  v15 = v14;

  v42 = *(v3 + 104);
  v42(v11, enum case for ContextActionType.playFromTranscript(_:), v2);
  v16 = sub_97A18();
  v18 = v17;
  v41 = *(v3 + 8);
  v41(v11, v2);
  if (v13 == v16 && v15 == v18)
  {
LABEL_8:

    goto LABEL_9;
  }

  v20 = sub_98838();

  if ((v20 & 1) == 0)
  {
    v21 = [v43 identifier];
    v22 = sub_97E08();
    v24 = v23;

    v42(v7, enum case for ContextActionType.copyTranscriptSelection(_:), v2);
    v25 = sub_97A18();
    v27 = v26;
    v41(v7, v2);
    if (v22 != v25 || v24 != v27)
    {
      v30 = sub_98838();

      if (v30)
      {
        goto LABEL_9;
      }

      v31 = [v43 identifier];
      v32 = sub_97E08();
      v34 = v33;

      v35 = v40;
      v42(v40, enum case for ContextActionType.iOSShareSheetEpisode(_:), v2);
      v36 = sub_97A18();
      v38 = v37;
      v41(v35, v2);
      if (v32 != v36 || v34 != v38)
      {
        v39 = sub_98838();

        v28 = v39 ^ 1;
        return v28 & 1;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  v28 = 0;
  return v28 & 1;
}

unint64_t sub_2F40()
{
  result = qword_C46F0;
  if (!qword_C46F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C46F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptTimestampView.Constants.Spacing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TranscriptTimestampView.Constants.Spacing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_302C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_304C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_30A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_30FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_319C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_3200(uint64_t a1, id *a2)
{
  result = sub_97DE8();
  *a2 = 0;
  return result;
}

uint64_t sub_3278(uint64_t a1, id *a2)
{
  v3 = sub_97DF8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_32F8@<X0>(void *a1@<X8>)
{
  sub_97E08();
  v2 = sub_97DC8();

  *a1 = v2;
  return result;
}

uint64_t sub_3344(uint64_t a1, uint64_t a2)
{
  result = sub_96378();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_3398(uint64_t a1, uint64_t a2)
{
  v3 = sub_96388();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_33F0@<X0>(void *a1@<X8>)
{
  result = sub_96398();
  *a1 = v3;
  return result;
}

uint64_t sub_3418()
{
  sub_97E08();
  v0 = sub_97F48();

  return v0;
}

uint64_t sub_3454()
{
  sub_97E08();
  sub_97E88();
}

Swift::Int sub_34A8()
{
  sub_97E08();
  sub_988D8();
  sub_97E88();
  v0 = sub_98918();

  return v0;
}

uint64_t sub_352C()
{
  v0 = sub_97E08();
  v2 = v1;
  if (v0 == sub_97E08() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_98838();
  }

  return v5 & 1;
}

uint64_t sub_35B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_97E08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_35E4()
{
  sub_3B20(&qword_C47F8, type metadata accessor for Key);
  sub_3B20(&qword_C4800, type metadata accessor for Key);

  return sub_987C8();
}

uint64_t sub_36A0()
{
  sub_3B20(&qword_C47E8, type metadata accessor for AttributeName);
  sub_3B20(&qword_C47F0, type metadata accessor for AttributeName);

  return sub_987C8();
}

uint64_t sub_375C@<X0>(void *a1@<X8>)
{
  v2 = sub_97DC8();

  *a1 = v2;
  return result;
}

uint64_t sub_37A4()
{
  sub_3B20(&qword_C47D8, type metadata accessor for TraitKey);
  sub_3B20(&qword_C47E0, type metadata accessor for TraitKey);

  return sub_987C8();
}

void *sub_3860@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_3870@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_387C()
{
  sub_3B20(&qword_C47C0, type metadata accessor for Weight);
  sub_3B20(&qword_C47C8, type metadata accessor for Weight);
  sub_3EA8();
  return sub_987C8();
}

uint64_t sub_3958(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3978(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_3A44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_3B20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3D68()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_98908(*&v1);
}

uint64_t sub_3DA4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_3EA8()
{
  result = qword_C47D0;
  if (!qword_C47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C47D0);
  }

  return result;
}

uint64_t NowPlayingAlignmentCoordinator.__allocating_init(asPartOf:)()
{
  v0 = sub_407C();

  return v0;
}

uint64_t ScoutingAlignmentCoordinator.__allocating_init(asPartOf:)()
{
  type metadata accessor for NowPlayingAlignmentCoordinator(0);
  sub_97C78();
  sub_97D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4808);
  sub_97D08();
  sub_4AE8();
  v0 = sub_98278();
  swift_allocObject();
  v1 = sub_F194(v4, &v3, v0);

  return v1;
}

uint64_t sub_407C()
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4818);
  v42 = *(v40 - 8);
  (__chkstk_darwin)();
  v1 = &v35 - v0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4820);
  v2 = *(v36 - 8);
  (__chkstk_darwin)();
  v4 = &v35 - v3;
  v5 = sub_96088();
  v6 = *(v5 - 8);
  (__chkstk_darwin)();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  v44 = *(v9 - 8);
  v45 = v9;
  (__chkstk_darwin)();
  v48 = &v35 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v11 = (__chkstk_darwin)();
  v46 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v41 = &v35 - v14;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v43 = &v35 - v15;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v38 = sub_96788();
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v17 = *(v38 - 8);
  v37 = *(v17 + 56);
  v39 = v17 + 56;
  v37(v16, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4808);
  sub_97C78();
  sub_97D08();
  sub_97D08();
  sub_96078();
  (*(v6 + 8))(v8, v5);
  v18 = v36;
  sub_964F8();
  (*(v2 + 8))(v4, v18);
  v19 = v40;
  v20 = sub_964E8();
  (*(v42 + 8))(v1, v19);
  *&v50 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4838);
  sub_4B34();
  sub_964A8();

  sub_96478();
  sub_97D08();
  v42 = v53;
  type metadata accessor for NowPlayingAlignmentCoordinator(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__fullTimelineAligner;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_4BF8(&v50, v49, &qword_C7CE0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CE0);
  sub_96E58();
  sub_4C60(&v50, &qword_C7CE0);
  v23 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__scoutingAligner;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_4BF8(&v50, v49, &qword_C4848);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
  sub_96E58();
  sub_4C60(&v50, &qword_C4848);
  v24 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__alignment;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_4BF8(&v50, v49, &qword_C4850);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4850);
  sub_96E58();
  sub_4C60(&v50, &qword_C4850);
  v25 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__transcriptModel;
  v26 = v41;
  v37(v41, 1, 1, v38);
  sub_4BF8(v26, v46, &qword_C4830);
  sub_96E58();
  sub_4C60(v26, &qword_C4830);
  *&v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4858);
  sub_96E58();
  v27 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url;
  v28 = sub_95F58();
  (*(*(v28 - 8) + 56))(v21 + v27, 1, 1, v28);
  *(v21 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_timelineAlignerProvider) = 0;
  *(v21 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_subscriptions) = &_swiftEmptySetSingleton;
  sub_4BF8(v59, &v50, &qword_C7CE0);
  swift_beginAccess();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4860);
  (*(*(v29 - 8) + 8))(v21 + v22, v29);
  sub_4BF8(&v50, v49, &qword_C7CE0);
  sub_96E58();
  sub_4C60(&v50, &qword_C7CE0);
  swift_endAccess();
  sub_4BF8(v57, &v50, &qword_C4848);
  swift_beginAccess();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  (*(*(v30 - 8) + 8))(v21 + v23, v30);
  sub_4BF8(&v50, v49, &qword_C4848);
  sub_96E58();
  sub_4C60(&v50, &qword_C4848);
  swift_endAccess();
  sub_4BF8(v55, &v50, &qword_C4850);
  swift_beginAccess();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
  (*(*(v31 - 8) + 8))(v21 + v24, v31);
  sub_4BF8(&v50, v49, &qword_C4850);
  sub_96E58();
  sub_4C60(&v50, &qword_C4850);
  swift_endAccess();
  v32 = v43;
  sub_4BF8(v43, v26, &qword_C4830);
  swift_beginAccess();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
  (*(*(v33 - 8) + 8))(v21 + v25, v33);
  sub_4BF8(v26, v46, &qword_C4830);
  sub_96E58();
  sub_4C60(v26, &qword_C4830);
  swift_endAccess();
  sub_4C60(v32, &qword_C4830);
  sub_4C60(v55, &qword_C4850);
  sub_4C60(v57, &qword_C4848);
  sub_4C60(v59, &qword_C7CE0);
  sub_4CC0(&v54, v21 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider);
  (*(v44 + 32))(v21 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_alignmentCache, v48, v45);
  *(v21 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_playbackController) = v42;
  return v21;
}

unint64_t sub_4AE8()
{
  result = qword_C4810;
  if (!qword_C4810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4810);
  }

  return result;
}

unint64_t sub_4B34()
{
  result = qword_C4840;
  if (!qword_C4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C4838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4840);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4BF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4C60(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4CC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_4D9C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(a1, v3, &qword_C7CE0);

  sub_96EA8();
  sub_4BF8(v5, v3, &qword_C7CE0);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_96598();
    sub_4C60(a1, &qword_C7CE0);
    sub_4C60(v5, &qword_C7CE0);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_4C60(a1, &qword_C7CE0);
    sub_4C60(v5, &qword_C7CE0);
    return sub_4C60(v3, &qword_C7CE0);
  }
}

uint64_t sub_4F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4970);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4860);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_5140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E08);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_52D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_535C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_53FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_4BF8(a1, v8, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(v8, &v7, a5);

  sub_96EA8();
  return sub_4C60(v8, a5);
}

uint64_t sub_54D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E00);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t NowPlayingAlignmentCoordinator.transcriptModel.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_56CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_574C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_4BF8(a1, &v9 - v6, &qword_C4830);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(v7, v5, &qword_C4830);

  sub_96EA8();
  return sub_4C60(v7, &qword_C4830);
}

uint64_t sub_589C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4DF8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t NowPlayingAlignmentCoordinator.error.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_5A94@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *a1 = v3;
  return result;
}

uint64_t sub_5B18()
{
  swift_getKeyPath();
  swift_getKeyPath();

  swift_errorRetain();
  return sub_96EA8();
}

uint64_t sub_5BB4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_96E68();
  return swift_endAccess();
}

uint64_t sub_5C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_96E68();
  return swift_endAccess();
}

uint64_t sub_5CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7DF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t NowPlayingAlignmentCoordinator.__allocating_init(fullTimelineAligner:scoutingAligner:alignment:transcriptModel:transcriptProvider:alignmentCache:playbackController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v32 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v7 = __chkstk_darwin(v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v31 - v10;
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__fullTimelineAligner;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_4BF8(&v43, v42, &qword_C7CE0);
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CE0);
  sub_96E58();
  sub_4C60(&v43, &qword_C7CE0);
  v14 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__scoutingAligner;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_4BF8(&v43, v42, &qword_C4848);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
  sub_96E58();
  sub_4C60(&v43, &qword_C4848);
  v15 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__alignment;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_4BF8(&v43, v42, &qword_C4850);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4850);
  sub_96E58();
  sub_4C60(&v43, &qword_C4850);
  v16 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__transcriptModel;
  v17 = sub_96788();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_4BF8(v11, v9, &qword_C4830);
  sub_96E58();
  sub_4C60(v11, &qword_C4830);
  *&v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4858);
  sub_96E58();
  v18 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url;
  v19 = sub_95F58();
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  *(v12 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_timelineAlignerProvider) = 0;
  *(v12 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_subscriptions) = &_swiftEmptySetSingleton;
  v20 = v32;
  sub_4BF8(v32, &v43, &qword_C7CE0);
  swift_beginAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4860);
  (*(*(v21 - 8) + 8))(v12 + v13, v21);
  sub_4BF8(&v43, v42, &qword_C7CE0);
  sub_96E58();
  sub_4C60(&v43, &qword_C7CE0);
  swift_endAccess();
  v22 = v36;
  sub_4BF8(v36, &v43, &qword_C4848);
  swift_beginAccess();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  (*(*(v23 - 8) + 8))(v12 + v14, v23);
  sub_4BF8(&v43, v42, &qword_C4848);
  sub_96E58();
  sub_4C60(&v43, &qword_C4848);
  swift_endAccess();
  v24 = v37;
  sub_4BF8(v37, &v43, &qword_C4850);
  swift_beginAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
  (*(*(v25 - 8) + 8))(v12 + v15, v25);
  sub_4BF8(&v43, v42, &qword_C4850);
  sub_96E58();
  sub_4C60(&v43, &qword_C4850);
  swift_endAccess();
  v26 = v38;
  sub_4BF8(v38, v11, &qword_C4830);
  swift_beginAccess();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
  (*(*(v27 - 8) + 8))(v12 + v16, v27);
  sub_4BF8(v11, v9, &qword_C4830);
  sub_96E58();
  sub_4C60(v11, &qword_C4830);
  swift_endAccess();
  sub_4C60(v26, &qword_C4830);
  sub_4C60(v24, &qword_C4850);
  sub_4C60(v22, &qword_C4848);
  sub_4C60(v20, &qword_C7CE0);
  sub_4CC0(v39, v12 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider);
  v28 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_alignmentCache;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  (*(*(v29 - 8) + 32))(v12 + v28, v40, v29);
  *(v12 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_playbackController) = v41;
  return v12;
}

uint64_t NowPlayingAlignmentCoordinator.init(fullTimelineAligner:scoutingAligner:alignment:transcriptModel:transcriptProvider:alignmentCache:playbackController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v42 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
  v67 = *(v64 - 8);
  __chkstk_darwin(v64);
  v51 = &v42 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v10 = __chkstk_darwin(v66);
  v62 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v42 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v43 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  v45 = v14;
  v46 = *(v14 - 8);
  v15 = v46;
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4860);
  v42 = v18;
  v44 = *(v18 - 8);
  v19 = v44;
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  v22 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__fullTimelineAligner;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_4BF8(&v69, v68, &qword_C7CE0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CE0);
  sub_96E58();
  sub_4C60(&v69, &qword_C7CE0);
  (*(v19 + 32))(v7 + v22, v21, v18);
  v23 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__scoutingAligner;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_4BF8(&v69, v68, &qword_C4848);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
  sub_96E58();
  sub_4C60(&v69, &qword_C4848);
  (*(v15 + 32))(v7 + v23, v17, v14);
  v24 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__alignment;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_4BF8(&v69, v68, &qword_C4850);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4850);
  v25 = v43;
  sub_96E58();
  sub_4C60(&v69, &qword_C4850);
  (*(v63 + 32))(v7 + v24, v25, v65);
  v26 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__transcriptModel;
  v43 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__transcriptModel;
  v27 = sub_96788();
  v28 = v47;
  (*(*(v27 - 8) + 56))(v47, 1, 1, v27);
  sub_4BF8(v28, v62, &qword_C4830);
  v29 = v51;
  sub_96E58();
  sub_4C60(v28, &qword_C4830);
  (*(v67 + 32))(v7 + v26, v29, v64);
  v30 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__error;
  *&v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4858);
  v31 = v52;
  sub_96E58();
  (*(v53 + 32))(v7 + v30, v31, v54);
  v32 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url;
  v33 = sub_95F58();
  (*(*(v33 - 8) + 56))(v7 + v32, 1, 1, v33);
  *(v7 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_timelineAlignerProvider) = 0;
  *(v7 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_subscriptions) = &_swiftEmptySetSingleton;
  v34 = v55;
  sub_4BF8(v55, &v69, &qword_C7CE0);
  swift_beginAccess();
  (*(v44 + 8))(v7 + v22, v42);
  sub_4BF8(&v69, v68, &qword_C7CE0);
  sub_96E58();
  sub_4C60(&v69, &qword_C7CE0);
  swift_endAccess();
  v35 = v56;
  sub_4BF8(v56, &v69, &qword_C4848);
  swift_beginAccess();
  (*(v46 + 8))(v7 + v23, v45);
  sub_4BF8(&v69, v68, &qword_C4848);
  sub_96E58();
  sub_4C60(&v69, &qword_C4848);
  swift_endAccess();
  v36 = v57;
  sub_4BF8(v57, &v69, &qword_C4850);
  swift_beginAccess();
  (*(v63 + 8))(v7 + v24, v65);
  sub_4BF8(&v69, v68, &qword_C4850);
  sub_96E58();
  sub_4C60(&v69, &qword_C4850);
  swift_endAccess();
  v37 = v58;
  sub_4BF8(v58, v28, &qword_C4830);
  v38 = v43;
  swift_beginAccess();
  (*(v67 + 8))(&v38[v7], v64);
  sub_4BF8(v28, v62, &qword_C4830);
  sub_96E58();
  sub_4C60(v28, &qword_C4830);
  swift_endAccess();
  sub_4C60(v37, &qword_C4830);
  sub_4C60(v36, &qword_C4850);
  sub_4C60(v35, &qword_C4848);
  sub_4C60(v34, &qword_C7CE0);
  sub_4CC0(v59, v7 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider);
  v39 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_alignmentCache;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  (*(*(v40 - 8) + 32))(v7 + v39, v60, v40);
  *(v7 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_playbackController) = v61;
  return v7;
}

Swift::Void __swiftcall NowPlayingAlignmentCoordinator.clear()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16[-v2 - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  if (&_swiftEmptyArrayStorage >> 62 && sub_98778())
  {
    v10 = sub_DC30(&_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_subscriptions;
  swift_beginAccess();
  *(v0 + v11) = v10;

  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_timelineAlignerProvider) = 0;

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_4D9C(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(&v17, v16, &qword_C4848);

  sub_96EA8();
  sub_4C60(&v17, &qword_C4848);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(&v17, v16, &qword_C4850);

  sub_96EA8();
  sub_4C60(&v17, &qword_C4850);
  v12 = sub_96788();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(v9, v7, &qword_C4830);

  sub_96EA8();
  sub_4C60(v9, &qword_C4830);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = 0;

  sub_96EA8();
  v13 = sub_95F58();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url;
  swift_beginAccess();
  sub_7360(v3, v0 + v14);
  swift_endAccess();
}

uint64_t sub_7360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlayingAlignmentCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__fullTimelineAligner;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__scoutingAligner;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__alignment;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__transcriptModel;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4870);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator__error;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  sub_4C60(v0 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url, &qword_C48D0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider);
  v11 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_alignmentCache;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return v0;
}

uint64_t NowPlayingAlignmentCoordinator.__deallocating_deinit()
{
  NowPlayingAlignmentCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id NowPlayingAlignmentCoordinator.align(_:)(uint64_t a1)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v2 - 8);
  v69 = &v51 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48E0);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v51 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48E8);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v51 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48F0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v51 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48F8);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v51 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4900);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v51 - v8;
  v9 = sub_96518();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_96848();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4908);
  __chkstk_darwin(v17 - 8);
  v19 = &v51 - v18;
  v20 = sub_96828();
  v70 = *(v20 - 8);
  __chkstk_darwin(v20);
  v71 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() supportsBlueMoon];
  if (result)
  {
    v53 = v1;
    NowPlayingAlignmentCoordinator.clear()();
    (*(v14 + 104))(v16, enum case for NetworkTaskPriority.userInitiated(_:), v13);
    (*(v10 + 104))(v12, enum case for AssetLifetime.opportunistic(_:), v9);
    sub_96908();
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    v23 = v70;
    if ((*(v70 + 48))(v19, 1, v20) == 1)
    {
      sub_4C60(v19, &qword_C4908);
      v24 = sub_96968();
      sub_E988(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, enum case for AlignmentCoordinatorError.noTranscriptForEpisode(_:), v24);
      return swift_willThrow();
    }

    else
    {
      v26 = *(v23 + 32);
      v52 = v20;
      v26(v71, v19, v20);
      __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider), *(v53 + OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider + 24));
      v74[0] = sub_96838();
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4910);
      sub_EA78(&qword_C4918, &qword_C4910);
      v27 = v54;
      sub_96F08();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
      sub_EA78(&qword_C4920, &qword_C48E0);
      v28 = v55;
      v29 = v58;
      sub_96EF8();
      (*(v56 + 8))(v27, v29);
      sub_EA78(&qword_C4928, &qword_C48E8);
      v30 = v60;
      v31 = v59;
      sub_96FB8();
      (*(v57 + 8))(v28, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4930);
      sub_EA78(&qword_C4938, &qword_C48F0);
      sub_EA78(&qword_C4940, &qword_C4930);
      v32 = v63;
      v33 = v62;
      sub_96F78();
      (*(v61 + 8))(v30, v33);
      sub_E104(0, &qword_C4810);
      v34 = sub_982E8();
      v74[0] = v34;
      v35 = sub_982A8();
      v36 = v69;
      (*(*(v35 - 8) + 56))(v69, 1, 1, v35);
      sub_EA78(&qword_C4948, &qword_C48F8);
      sub_DF3C();
      v37 = v66;
      v38 = v65;
      sub_96FE8();
      sub_4C60(v36, &qword_C48D8);

      (*(v64 + 8))(v32, v38);
      swift_allocObject();
      swift_weakInit();
      sub_EA78(&qword_C4958, &qword_C4900);
      v39 = v68;
      sub_97028();

      (*(v67 + 8))(v37, v39);
      swift_beginAccess();
      sub_96DB8();
      swift_endAccess();

      if (sub_968F8(0))
      {
        v40 = v52;
        sub_96408();
        v41 = v76;
        v42 = 0.0;
        if (v76 != 2)
        {
          v44 = *&v74[8];
          v43 = *&v74[9];
          v45 = *&v74[5];
          v46 = v75;
          sub_95F78();
          v48 = v43 + (v47 - v45) * v46;
          if (v48 >= v44)
          {
            v48 = v44;
          }

          v42 = fmax(v48, 0.0);
        }

        v74[0] = sub_96438();
        v49 = swift_allocObject();
        swift_weakInit();
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = v42;
        *(v50 + 32) = v41 == 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4960);
        sub_EA78(&qword_C4968, &qword_C4960);
        sub_97028();

        swift_beginAccess();
        sub_96DB8();
        swift_endAccess();

        return (*(v23 + 8))(v71, v40);
      }

      else
      {
        v74[3] = sub_96878();
        v74[4] = &protocol witness table for DirectTimelineAlignment;
        __swift_allocate_boxed_opaque_existential_1(v74);
        sub_96868();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_4BF8(v74, v73, &qword_C4850);

        sub_96EA8();
        (*(v23 + 8))(v71, v52);
        return sub_4C60(v74, &qword_C4850);
      }
    }
  }

  return result;
}

uint64_t sub_8500@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  sub_96558();
  v9 = sub_96788();
  v10 = *(v9 - 8);
  v11 = 1;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v6, v8, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    sub_E9D0(v6, a1);
    v11 = 0;
  }

  return (*(v3 + 56))(a1, v11, 1, v2);
}

uint64_t sub_86BC(unint64_t *a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v27 = sub_968C8();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (v10 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); ; i = sub_98778())
    {
      if (!i)
      {
LABEL_15:
        v29[3] = sub_968E8();
        v29[4] = &protocol witness table for EpisodeTimelineAlignment;
        __swift_allocate_boxed_opaque_existential_1(v29);
        sub_968D8();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_4BF8(v29, v28, &qword_C4850);
        sub_96EA8();
        return sub_4C60(v29, &qword_C4850);
      }

      v29[0] = &_swiftEmptyArrayStorage;
      result = sub_8C244(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v24 = v12;
      v25 = v4;
      v26 = a3;
      v12 = 0;
      v14 = v29[0];
      v4 = v10 & 0xC000000000000001;
      while (1)
      {
        v15 = v4 ? sub_986C8() : *(v10 + 8 * v12 + 32);
        v16 = v15;
        [v15 playerStartTime];
        v18 = v17;
        [v16 playerEndTime];
        if (v18 > v19)
        {
          break;
        }

        [v16 referenceStartTime];
        v21 = v20;
        [v16 referenceEndTime];
        if (v21 > v22)
        {
          goto LABEL_18;
        }

        [v16 matchedBeginning];
        [v16 matchedEnd];
        sub_968B8();

        v29[0] = v14;
        a3 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (a3 >= v23 >> 1)
        {
          sub_8C244(v23 > 1, a3 + 1, 1);
          v14 = v29[0];
        }

        ++v12;
        *(v14 + 16) = a3 + 1;
        (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a3, v9, v27);
        if (i == v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    __break(1u);
  }

  return result;
}

uint64_t NowPlayingAlignmentCoordinator.align(asset:to:)(AVURLAsset_optional *a1, uint64_t a2)
{
  v3 = v2;
  v207 = a2;
  v209 = a1;
  v166 = *v2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4970);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v130 - v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4978);
  v168 = *(v170 - 8);
  __chkstk_darwin(v170);
  v167 = &v130 - v5;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4980);
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v169 = &v130 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4988);
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v130 - v7;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4990);
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v130 - v8;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4998);
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v179 = &v130 - v9;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49A0);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v130 - v10;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49A8);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = &v130 - v11;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49B0);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v159 = &v130 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49B8);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v130 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49C0);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v130 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49C8);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v130 - v15;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49D0);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v130 - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49D8);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v130 - v17;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49E0);
  v162 = *(v199 - 8);
  __chkstk_darwin(v199);
  v200 = &v130 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49E8);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v130 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49F0);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v130 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  v197 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v130 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v22 - 8);
  v204 = &v130 - v23;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C49F8);
  v186 = *(v187 - 1);
  __chkstk_darwin(v187);
  v185 = &v130 - v24;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4A00);
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v130 - v25;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4A08);
  v192 = *(v193 - 1);
  __chkstk_darwin(v193);
  v191 = &v130 - v26;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4A10);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v130 - v27;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48E0);
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v130 - v28;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4A18);
  v198 = *(v206 - 8);
  __chkstk_darwin(v206);
  v205 = &v130 - v29;
  v203 = sub_96518();
  v30 = *(v203 - 8);
  __chkstk_darwin(v203);
  v32 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_96848();
  v33 = *(v201 - 8);
  __chkstk_darwin(v201);
  v35 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4908);
  __chkstk_darwin(v36 - 8);
  v38 = &v130 - v37;
  v39 = sub_96828();
  v212 = *(v39 - 8);
  __chkstk_darwin(v39);
  v202 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D0);
  __chkstk_darwin(v41 - 8);
  v43 = &v130 - v42;
  NowPlayingAlignmentCoordinator.clear()();
  v44 = [(AVURLAsset_optional *)v209 URL];
  sub_95F48();

  v45 = sub_95F58();
  (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
  v46 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url;
  swift_beginAccess();
  v208 = v3;
  sub_7360(v43, &v3[v46]);
  swift_endAccess();
  v47 = v201;
  (*(v33 + 104))(v35, enum case for NetworkTaskPriority.userInitiated(_:), v201);
  v48 = v203;
  (*(v30 + 104))(v32, enum case for AssetLifetime.opportunistic(_:), v203);
  sub_96908();
  (*(v30 + 8))(v32, v48);
  (*(v33 + 8))(v35, v47);
  v49 = *(v212 + 48);
  v203 = v39;
  if (v49(v38, 1, v39) == 1)
  {
    sub_4C60(v38, &qword_C4908);
    v50 = sub_96968();
    sub_E988(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, enum case for AlignmentCoordinatorError.noTranscriptForEpisode(_:), v50);
    return swift_willThrow();
  }

  else
  {
    (*(v212 + 32))(v202, v38, v203);
    v53 = v208;
    __swift_project_boxed_opaque_existential_1(&v208[OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider], *&v208[OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_transcriptProvider + 24]);
    v211[0] = sub_96838();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4910);
    sub_EA78(&qword_C4918, &qword_C4910);
    v54 = v182;
    sub_96F08();

    v55 = sub_EA78(&qword_C4920, &qword_C48E0);
    v56 = v184;
    sub_96ED8();
    (*(v183 + 8))(v54, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
    v211[0] = v56;
    v211[1] = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = v185;
    v184 = OpaqueTypeConformance2;
    sub_96EF8();
    sub_EA78(&qword_C4A20, &qword_C49F8);
    v59 = v188;
    v60 = v187;
    sub_96FB8();
    (*(v186 + 8))(v58, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4930);
    sub_EA78(&qword_C4A28, &qword_C4A00);
    sub_EA78(&qword_C4940, &qword_C4930);
    v61 = v191;
    v62 = v190;
    sub_96F78();
    v189[1](v59, v62);
    v63 = sub_E104(0, &qword_C4810);
    v64 = sub_982E8();
    v211[0] = v64;
    v65 = sub_982A8();
    v66 = *(v65 - 8);
    v67 = *(v66 + 56);
    v68 = v204;
    v201 = v66 + 56;
    v189 = v67;
    (v67)(v204, 1, 1, v65);
    sub_EA78(&qword_C4A30, &qword_C4A08);
    v69 = sub_DF3C();
    v70 = v194;
    v71 = v193;
    v190 = v69;
    sub_96FE8();
    sub_4C60(v68, &qword_C48D8);

    v192[1](v61, v71);
    swift_allocObject();
    swift_weakInit();
    sub_EA78(&qword_C4A38, &qword_C4A10);
    v72 = v196;
    sub_97028();

    v195[1](v70, v72);
    v73 = &v53[OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_subscriptions];
    swift_beginAccess();
    sub_96DB8();
    swift_endAccess();

    if (sub_968F8(v209))
    {
      v74 = *&v53[OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_playbackController];
      v195 = sub_96928();
      v75 = v53;
      v76 = v197[2];
      v77 = v134;
      v78 = v137;
      v76(v134, &v75[OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_alignmentCache], v137);
      v79 = swift_allocObject();
      v196 = v73;
      v80 = v79;
      swift_weakInit();
      type metadata accessor for NowPlayingAlignmentCoordinator.TimelineAlignerProvider(0);
      v81 = swift_allocObject();
      v207 = v65;
      v82 = v81;
      *(v81 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_fullTimelineAligner) = 0;
      *(v81 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_catalog) = 0;
      v188 = v63;
      *(v81 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_subscriptions) = &_swiftEmptySetSingleton;
      v83 = v81 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot;
      *v83 = 0u;
      *(v83 + 16) = 0u;
      *(v83 + 32) = 0u;
      *(v83 + 48) = 2;
      v84 = v195;
      *(v81 + 16) = v74;
      *(v81 + 24) = v84;
      v76(v81 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_cache, v77, v78);
      v85 = (v82 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_shouldResetAlignment);
      *v85 = sub_E0D4;
      v85[1] = v80;
      swift_retain_n();

      v86 = v130;
      sub_96418();
      v192 = &protocol conformance descriptor for Published<A>.Publisher;
      sub_EA78(&qword_C4A70, &qword_C49E8);
      v87 = v133;
      v88 = v132;
      sub_96F38();
      (*(v131 + 8))(v86, v88);
      swift_allocObject();
      swift_weakInit();
      sub_EA78(&qword_C4A78, &qword_C49F0);

      v89 = v136;
      sub_97028();

      (*(v135 + 8))(v87, v89);
      swift_beginAccess();
      sub_96DB8();
      swift_endAccess();

      (v197[1])(v77, v78);

      *&v208[OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_timelineAlignerProvider] = v82;

      sub_E104(0, &qword_C4A80);
      v90 = v138;
      sub_96EF8();
      v191 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
      sub_EA78(&qword_C4A88, &qword_C49D8);
      v91 = v140;
      sub_96FB8();
      (*(v139 + 8))(v90, v91);

      sub_96DA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4A90);
      v186 = sub_EA78(&qword_C4A98, &qword_C49E0);
      sub_EA78(&qword_C4AA0, &qword_C4A90);
      v92 = v141;
      sub_96FC8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CE0);
      v187 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
      sub_EA78(&qword_C4AA8, &qword_C49B8);
      v93 = v144;
      v94 = v143;
      sub_96F58();
      (*(v142 + 8))(v92, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4AB0);
      v197 = &protocol conformance descriptor for Publishers.Map<A, B>;
      sub_EA78(&qword_C4AB8, &qword_C49C0);
      v194 = &protocol conformance descriptor for Just<A>;
      sub_EA78(&qword_C4AC0, &qword_C4AB0);
      v95 = v147;
      v96 = v146;
      sub_96F78();
      (*(v145 + 8))(v93, v96);
      v97 = sub_982E8();
      v211[0] = v97;
      v98 = v204;
      (v189)(v204, 1, 1, v207);
      v195 = &protocol conformance descriptor for Publishers.Catch<A, B>;
      sub_EA78(&qword_C4AC8, &qword_C49C8);
      v99 = v150;
      v100 = v149;
      sub_96FE8();
      sub_4C60(v98, &qword_C48D8);

      (*(v148 + 8))(v95, v100);
      swift_allocObject();
      swift_weakInit();
      v193 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
      sub_EA78(&qword_C4AD0, &qword_C49D0);
      v101 = v152;
      sub_97028();

      (*(v151 + 8))(v99, v101);
      swift_beginAccess();
      sub_96DB8();
      swift_endAccess();

      v102 = swift_allocObject();
      v103 = v209;
      *(v102 + 16) = v209;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_E1B8;
      *(v104 + 24) = v102;
      v105 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
      v106 = v153;
      sub_96F58();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4AD8);
      sub_EA78(&qword_C4AE0, &qword_C49A0);
      sub_EA78(&qword_C4AE8, &qword_C4AD8);
      v107 = v156;
      v108 = v155;
      sub_96F78();
      (*(v154 + 8))(v106, v108);
      v109 = sub_982E8();
      v211[0] = v109;
      (v189)(v98, 1, 1, v207);
      sub_EA78(&qword_C4AF0, &qword_C49A8);
      v110 = v159;
      v111 = v158;
      sub_96FE8();
      sub_4C60(v98, &qword_C48D8);

      (*(v157 + 8))(v107, v111);
      swift_allocObject();
      swift_weakInit();
      sub_EA78(&qword_C4AF8, &qword_C49B0);
      v112 = v161;
      sub_97028();

      (*(v160 + 8))(v110, v112);
      swift_beginAccess();
      sub_96DB8();
      swift_endAccess();

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4860);
      v113 = v163;
      sub_96E68();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4B00);
      sub_EA78(&qword_C4B08, &qword_C4970);
      v114 = v167;
      v115 = v165;
      sub_96EF8();
      (*(v164 + 8))(v113, v115);
      v116 = swift_allocObject();
      v117 = v166;
      *(v116 + 16) = v105;
      *(v116 + 24) = v117;
      v118 = v105;
      sub_96DA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4B10);
      sub_EA78(&qword_C4B18, &qword_C4978);
      sub_EA78(&qword_C4B20, &qword_C4B10);
      v119 = v169;
      v120 = v170;
      sub_97048();

      (*(v168 + 8))(v114, v120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4850);
      sub_EA78(&qword_C4B28, &qword_C4980);
      v121 = v173;
      v122 = v172;
      sub_96F58();
      (*(v171 + 8))(v119, v122);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4B30);
      sub_EA78(&qword_C4B38, &qword_C4988);
      sub_EA78(&qword_C4B40, &qword_C4B30);
      v123 = v176;
      v124 = v175;
      sub_96F78();

      (*(v174 + 8))(v121, v124);
      v125 = sub_982E8();
      v211[0] = v125;
      v126 = v204;
      (v189)(v204, 1, 1, v207);
      sub_EA78(&qword_C4B48, &qword_C4990);
      v127 = v179;
      v128 = v178;
      sub_96FE8();
      sub_4C60(v126, &qword_C48D8);

      (*(v177 + 8))(v123, v128);
      swift_allocObject();
      swift_weakInit();
      sub_EA78(&qword_C4B50, &qword_C4998);
      v129 = v181;
      sub_97028();

      (*(v180 + 8))(v127, v129);
      swift_beginAccess();
      sub_96DB8();
      swift_endAccess();

      (*(v162 + 8))(v200, v199);
      (*(v198 + 8))(v205, v206);
      return (*(v212 + 8))(v202, v203);
    }

    else
    {
      v211[3] = sub_96878();
      v211[4] = &protocol witness table for DirectTimelineAlignment;
      __swift_allocate_boxed_opaque_existential_1(v211);
      sub_96868();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_4BF8(v211, v210, &qword_C4850);

      sub_96EA8();
      (*(v198 + 8))(v205, v206);
      (*(v212 + 8))(v202, v203);
      return sub_4C60(v211, &qword_C4850);
    }
  }
}

uint64_t sub_B408(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_97888();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_978A8();
  result = __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (*a1)
  {
    v24 = v15;
    v25 = result;
    sub_E104(0, &qword_C4810);
    swift_errorRetain();
    v23 = sub_982E8();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v18;
    aBlock[4] = a4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_279B0;
    aBlock[3] = a5;
    v20 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_97898();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_E988(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
    sub_EA78(&qword_C7920, &qword_C4E18);
    sub_98618();
    v21 = v23;
    sub_982F8();
    _Block_release(v20);

    (*(v10 + 8))(v12, v9);
    return (*(v24 + 8))(v17, v25);
  }

  return result;
}

uint64_t sub_B710(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_96968();
    sub_E988(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    *v5 = a2;
    (*(*(v4 - 8) + 104))(v5, enum case for AlignmentCoordinatorError.fetchError(_:), v4);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_errorRetain();
    return sub_96EA8();
  }

  return result;
}

uint64_t sub_B84C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_96AB8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_96A78();
  swift_errorRetain();
  v10 = sub_96AA8();
  v11 = sub_981B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v9;
    v24 = v14;
    *v13 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    v15 = sub_97E48();
    v17 = sub_11FC8(v15, v16, &v24);
    v21 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Failed to construct TranscriptModel: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v19 = sub_96788();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  return sub_96E28();
}

uint64_t sub_BB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_4BF8(a1, v7, &qword_C4830);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_4BF8(v7, v5, &qword_C4830);
    sub_96EA8();
    return sub_4C60(v7, &qword_C4830);
  }

  return result;
}

uint64_t sub_BC60()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  v0 = v11;
  if (!v11)
  {
    sub_4C60(v10, &qword_C4850);
    goto LABEL_8;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v2 = *(v0 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  sub_4C60(v10, &qword_C4850);
  v5 = sub_967D8();
  (*(v2 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_11:
    v7 = 1;
    return v7 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (!v11)
  {
    sub_4C60(v10, &qword_C4850);
    goto LABEL_11;
  }

  sub_E304(v10, v9);
  sub_4C60(v10, &qword_C4850);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_967F8();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7 & 1;
}

unint64_t sub_BF14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_96568();
  *a1 = result;
  return result;
}

uint64_t sub_BF40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v7 = sub_969A8();
  v8 = &protocol witness table for AssetReaderTimelineAligner;
  *&v6 = v3;
  sub_4CC0(&v6, v9);
  v4 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v10;
}

uint64_t sub_BFC8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_4BF8(a1, v3, &qword_C7CE0);
    sub_4D9C(v3);
  }

  return result;
}

uint64_t sub_C044(void *a1, void *a2)
{
  v4 = sub_96AB8();
  __chkstk_darwin(v4 - 8);
  sub_96A98();
  sub_96988();
  swift_allocObject();
  v5 = a2;
  v6 = a1;
  return sub_96978();
}

uint64_t sub_C0F8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2(*a1);
  result = sub_96988();
  a3[3] = result;
  a3[4] = &protocol witness table for AssetReaderScoutingAligner;
  *a3 = v4;
  return result;
}

uint64_t sub_C160(uint64_t *a1, const char *a2, uint64_t *a3)
{
  v6 = sub_96AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_96A78();
  swift_errorRetain();
  v11 = sub_96AA8();
  v12 = sub_981B8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = a2;
    v16 = v15;
    v25 = v10;
    *&v26[0] = v15;
    *v14 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    v17 = sub_97E48();
    v19 = sub_11FC8(v17, v18, v26);
    v22 = v6;
    v20 = v19;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, v23, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);

    (*(v24 + 8))(v9, v22);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return sub_96E28();
}

uint64_t sub_C3E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_96AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_96A78();
  v10 = sub_96AA8();
  v11 = sub_981D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = a2;
    v15 = v14;
    v22 = v14;
    *v13 = 136315138;
    v16 = sub_989C8();
    v18 = sub_11FC8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "[%s] Finished creating timeline aligner. Starting alignment", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);

    a3 = v21;
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_965C8();
  *a3 = result;
  return result;
}

uint64_t sub_C5D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_96AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_96A78();
  swift_errorRetain();
  v9 = sub_96AA8();
  v10 = sub_981B8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[1] = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    *&v23[0] = v13;
    *v12 = 136315138;
    v25 = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    v14 = sub_97E48();
    v16 = sub_11FC8(v14, v15, v23);
    v22[0] = v4;
    v17 = v16;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Failed alignment: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);

    (*(v5 + 8))(v7, v22[0]);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v18 = sub_96968();
    sub_E988(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    v19 = swift_allocError();
    *v20 = v8;
    (*(*(v18 - 8) + 104))(v20, enum case for AlignmentCoordinatorError.alignmentFailure(_:), v18);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v23[0] = v19;
    swift_errorRetain();
    sub_96EA8();
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4850);
  return sub_96E28();
}

uint64_t sub_C90C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_4BF8(a1, v7, a3);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_4BF8(v7, v6, a3);
    sub_96EA8();
    return sub_4C60(v7, a3);
  }

  return result;
}

uint64_t NowPlayingAlignmentCoordinator.fetchPlayerTimestamp(for:)(double a1)
{
  *(v2 + 400) = v1;
  *(v2 + 392) = a1;
  return _swift_task_switch(sub_CA04, 0, 0);
}

uint64_t sub_CA04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (*(v0 + 96))
  {
    sub_E304(v0 + 72, v0 + 352);
    sub_4C60(v0 + 72, &qword_C4850);
    __swift_project_boxed_opaque_existential_1((v0 + 352), *(v0 + 376));
    v1 = sub_967E8();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1(v0 + 352);
    if ((v3 & 1) == 0)
    {
      v4.n128_u64[0] = v1;
      v5 = *(v0 + 8);
LABEL_10:

      return v5(v4);
    }
  }

  else
  {
    sub_4C60(v0 + 72, &qword_C4850);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (!*(v0 + 176))
  {
    sub_4C60(v0 + 152, &qword_C4848);
    v8 = sub_96968();
    sub_E988(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for AlignmentCoordinatorError.invalidAligner(_:), v8);
    swift_willThrow();
    goto LABEL_9;
  }

  sub_4CC0((v0 + 152), v0 + 112);
  sub_96408();
  if (*(v0 + 64) == 2)
  {
    v6 = sub_96968();
    sub_E988(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for AlignmentCoordinatorError.invalidDuration(_:), v6);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
LABEL_9:
    v5 = *(v0 + 8);
    goto LABEL_10;
  }

  v11 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  sub_4BF8(v0 + 192, v0 + 232, &qword_C7CE0);
  if (*(v0 + 256))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
    sub_965A8();
    __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  }

  else
  {
    sub_4C60(v0 + 232, &qword_C7CE0);
  }

  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 112), v12);
  if (v11 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 408) = v19;
    *v19 = v0;
    v19[1] = sub_CE7C;
    v16.n128_u64[0] = *(v0 + 392);
    v17.n128_u64[0] = 0;
    v18.n128_f64[0] = v11;
    v14 = v12;
    v15 = v13;
  }

  return dispatch thunk of ScoutingAligner.align(at:within:)(v14, v15, v16, v17, v18);
}

uint64_t sub_CE7C(double a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_D09C;
  }

  else
  {
    v4 = sub_CF94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_CF94()
{
  sub_4BF8((v0 + 24), (v0 + 39), &qword_C7CE0);
  if (v0[42])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 39, v0[42]);
    sub_965B8();
    sub_4C60((v0 + 24), &qword_C7CE0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 39));
  }

  else
  {
    sub_4C60((v0 + 24), &qword_C7CE0);
    sub_4C60((v0 + 39), &qword_C7CE0);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 14));
  v1.n128_u64[0] = v0[52];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_D09C()
{
  sub_4BF8((v0 + 24), (v0 + 34), &qword_C7CE0);
  if (v0[37])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
    sub_965B8();
    sub_4C60((v0 + 24), &qword_C7CE0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 34));
  }

  else
  {
    sub_4C60((v0 + 24), &qword_C7CE0);
    sub_4C60((v0 + 34), &qword_C7CE0);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 14));
  v1 = v0[1];

  return v1();
}

BOOL sub_D1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {
    return round(*(a1 + 32)) == round(*(a2 + 32));
  }

  return v4;
}

uint64_t sub_D1E8(double *a1)
{
  v11 = *(a1 + 1);
  v12 = *a1;
  v1 = a1[4];
  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot;
    v6 = *(result + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot + 32);
    v7 = *(result + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot + 48);
    *v5 = v12;
    *(v5 + 16) = v11;
    *(v5 + 32) = v1;
    *(v5 + 40) = v2;
    *(v5 + 48) = v3;
    if (v3 != 2 && v7 != 2)
    {
      v8 = v1 - v6;
      v9 = v6 - v1;
      if (v8 > 10.0 || v9 > 1.0)
      {
        sub_D584();
      }
    }
  }

  return result;
}

uint64_t sub_D2B8(void *a1)
{
  v2 = v1;
  v4 = sub_96A68();
  __chkstk_darwin(v4 - 8);
  v5 = sub_96AB8();
  __chkstk_darwin(v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = *(v2 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_catalog);
  *(v2 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_catalog) = a1;
  v11 = a1;

  (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_cache, v6);
  sub_E988(&qword_C4DF0, type metadata accessor for NowPlayingAlignmentCoordinator.TimelineAlignerProvider);
  sub_96A98();
  sub_96A58();
  sub_E104(0, &qword_C4810);
  sub_98258();
  [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  sub_969A8();
  swift_allocObject();
  v12 = v11;

  v15[1] = sub_96998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4A90);
  swift_allocObject();
  v13 = sub_96E18();
  *(v2 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_fullTimelineAligner) = v13;

  return v13;
}

void sub_D584()
{
  v1 = sub_96A68();
  __chkstk_darwin(v1 - 8);
  v2 = sub_96AB8();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - v6;
  if (*(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot + 48) != 2)
  {
    v8 = *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_catalog);
    if (v8)
    {
      if (*(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_fullTimelineAligner))
      {
        v9 = v5;
        v10 = *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot + 32);
        v11 = *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_shouldResetAlignment);
        v12 = v8;

        if (v11(v13, v10))
        {
          (*(v4 + 16))(v7, v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_cache, v9);
          v15[0] = *(v0 + 24);
          sub_E988(&qword_C4DF0, type metadata accessor for NowPlayingAlignmentCoordinator.TimelineAlignerProvider);
          v14 = v12;
          sub_96A98();
          sub_96A58();
          sub_E104(0, &qword_C4810);
          sub_98258();
          [objc_allocWithZone(PFCoreAnalyticsChannel) init];
          sub_969A8();
          swift_allocObject();

          v15[1] = sub_96998();
          sub_96DF8();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_D8B4()
{

  v1 = OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_cache;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4828);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_D9A8()
{
  v1 = (v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot);
  v2 = *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts30NowPlayingAlignmentCoordinator23TimelineAlignerProvider_snapshot + 48);
  if (v2 == 2)
  {
    return 0;
  }

  v4 = *(v1 + 5);
  v5 = *(v1 + 4);
  v6 = *(v1 + 3);
  v7 = *(v1 + 2);
  v9 = *v1;
  sub_95F78();
  v10 = v9;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = v4;
  v15 = v2 & 0x101;
  v16 = BYTE2(v2) & 1;
  return MPCPlayerItemDurationSnapshotGetElapsedTimeForCurrentTime(&v10, v8);
}

uint64_t sub_DA98(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_DB30;

  return NowPlayingAlignmentCoordinator.fetchPlayerTimestamp(for:)(a1);
}

uint64_t sub_DB30(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

unint64_t sub_DC30(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_98778();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E20);
      result = sub_98688();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_98778();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_986C8();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_96DD8();
    sub_E988(&qword_C4E28, &type metadata accessor for AnyCancellable);
    result = sub_97D68();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_E988(&qword_C4E30, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_97D98();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_DEC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_DF3C()
{
  result = qword_C4950;
  if (!qword_C4950)
  {
    sub_E104(255, &qword_C4810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4950);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_E008()
{

  return _swift_deallocObject(v0, 33, 7);
}

double MPCPlayerItemDurationSnapshotGetElapsedTimeForCurrentTime(uint64_t a1, double a2)
{
  v2 = *(a1 + 32) + (a2 - *a1) * *(a1 + 40);
  if (v2 >= *(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  return fmax(v2, 0.0);
}

uint64_t sub_E104(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_E14C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_D2B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_E180()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E1C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E1F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(v2 + 16))(*a1);
  result = sub_96988();
  a2[3] = result;
  a2[4] = &protocol witness table for AssetReaderScoutingAligner;
  *a2 = v4;
  return result;
}

uint64_t sub_E280()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E494(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E4CC()
{
  sub_E790(319, &qword_C4B90, &qword_C7CE0);
  if (v0 <= 0x3F)
  {
    sub_E790(319, &qword_C4B98, &qword_C4848);
    if (v1 <= 0x3F)
    {
      sub_E790(319, &qword_C4BA0, &qword_C4850);
      if (v2 <= 0x3F)
      {
        sub_E790(319, &qword_C4BA8, &qword_C4830);
        if (v3 <= 0x3F)
        {
          sub_E790(319, &qword_C4BB0, &qword_C4858);
          if (v4 <= 0x3F)
          {
            sub_E7E4();
            if (v5 <= 0x3F)
            {
              sub_E83C();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_E790(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_96EB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_E7E4()
{
  if (!qword_C4BB8)
  {
    sub_95F58();
    v0 = sub_98578();
    if (!v1)
    {
      atomic_store(v0, &qword_C4BB8);
    }
  }
}

void sub_E83C()
{
  if (!qword_C4BC0)
  {
    sub_96798();
    sub_969B8();
    v0 = sub_96508();
    if (!v1)
    {
      atomic_store(v0, &qword_C4BC0);
    }
  }
}

void sub_E8AC()
{
  sub_E83C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_E988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EA78(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_87Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t ScoutingAlignmentCoordinator.scoutingAligner.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_EB9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();
}

uint64_t sub_EC1C(uint64_t a1)
{
  sub_4BF8(a1, v3, &qword_C4848);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_4BF8(v3, &v2, &qword_C4848);

  sub_96EA8();
  return sub_4C60(v3, &qword_C4848);
}

uint64_t sub_ECF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E08);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ScoutingAlignmentCoordinator.error.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_EEF0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *a1 = v3;
  return result;
}

uint64_t sub_EF74()
{
  swift_getKeyPath();
  swift_getKeyPath();

  swift_errorRetain();
  return sub_96EA8();
}

uint64_t sub_F010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7DF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_F194(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator__scoutingAligner;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_4BF8(v20, v19, &qword_C4848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
  sub_96E58();
  sub_4C60(v20, &qword_C4848);
  (*(v9 + 32))(v3 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator__error;
  *&v20[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4858);
  sub_96E58();
  (*(v5 + 32))(v3 + v13, v7, v4);
  *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_loadScoutingAligner) = 0;
  *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_shouldShazamMatch) = 0;
  *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_asset) = 0;
  v14 = v17;
  *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_alignmentCoordinator) = v16;
  sub_4CC0(v14, v3 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_transcriptProvider);
  *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_workQueue) = v18;
  return v3;
}

void ScoutingAlignmentCoordinator.align(asset:to:)(void *a1, uint64_t a2)
{
  v111 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v4 - 8);
  v93 = &v80 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E48);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v80 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E50);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v80 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E58);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E60);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v80 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E68);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v80 - v10;
  v11 = sub_96518();
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin(v11);
  v103 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_96848();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4908);
  __chkstk_darwin(v14 - 8);
  v105 = &v80 - v15;
  v16 = sub_96828();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin(v16);
  v108 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_95F58();
  v99 = *(v18 - 8);
  v100 = v18;
  __chkstk_darwin(v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_96AB8();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_125A0(a1);
  v26 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_asset);
  v114 = v2;
  *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_asset) = v25;
  v112 = v25;

  sub_96A78();
  v27 = a1;
  v28 = sub_96AA8();
  v29 = sub_981A8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v82 = v21;
    v31 = v30;
    v32 = swift_slowAlloc();
    v81 = v22;
    v80 = v32;
    v115[0] = v32;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    v33 = [v27 URL];
    sub_95F48();

    sub_12984(&qword_C4EB0, &type metadata accessor for URL);
    v34 = v100;
    v35 = sub_987F8();
    v37 = v36;
    (*(v99 + 8))(v20, v34);
    v38 = sub_11FC8(v35, v37, v115);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_0, v28, v29, "Setting up episode detail alignment coordinator: %{private,mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v80);

    (*(v81 + 8))(v24, v82);
  }

  else
  {

    (*(v22 + 8))(v24, v21);
  }

  v39 = sub_968F8(v25);
  v40 = v112;

  *(v114 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_shouldShazamMatch) = v39;
  if (!v39)
  {
    goto LABEL_7;
  }

  v42 = v101;
  v41 = v102;
  v43 = v104;
  (*(v102 + 104))(v101, enum case for NetworkTaskPriority.userInitiated(_:), v104);
  v45 = v106;
  v44 = v107;
  v46 = v103;
  (*(v106 + 104))(v103, enum case for AssetLifetime.opportunistic(_:), v107);
  v47 = v105;
  sub_96908();
  (*(v45 + 8))(v46, v44);
  (*(v41 + 8))(v42, v43);
  v49 = v109;
  v48 = v110;
  if ((*(v109 + 48))(v47, 1, v110) == 1)
  {
    sub_4C60(v47, &qword_C4908);
    v50 = sub_96968();
    sub_12984(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, enum case for AlignmentCoordinatorError.noTranscriptForEpisode(_:), v50);
    v113 = v51;
    swift_willThrow();
LABEL_7:

    return;
  }

  (*(v49 + 32))(v108, v47, v48);
  v53 = v114;
  __swift_project_boxed_opaque_existential_1((v114 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_transcriptProvider), *(v114 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_transcriptProvider + 24));
  v115[0] = sub_96838();
  v116 = *(v53 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_workQueue);
  v54 = v116;
  v107 = sub_982A8();
  v55 = *(v107 - 8);
  v106 = *(v55 + 56);
  v111 = v55 + 56;
  v56 = v93;
  (v106)(v93, 1, 1, v107);
  v57 = v54;
  v105 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4910);
  v59 = sub_E104(0, &qword_C4810);
  v60 = sub_EA78(&qword_C4918, &qword_C4910);
  v61 = sub_DF3C();
  v62 = v83;
  sub_96EC8();
  sub_4C60(v56, &qword_C48D8);

  sub_E104(0, &qword_C4A80);
  v115[0] = v58;
  v115[1] = v59;
  v115[2] = v60;
  v115[3] = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v86;
  v64 = v85;
  sub_96EF8();
  (*(v84 + 8))(v62, v64);
  v65 = swift_allocObject();
  v66 = v112;
  *(v65 + 16) = v112;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_128B4;
  *(v67 + 24) = v65;
  v112 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
  v68 = v89;
  v69 = v88;
  sub_96D88();

  (*(v87 + 8))(v63, v69);
  v70 = sub_982E8();
  v115[0] = v70;
  (v106)(v56, 1, 1, v107);
  sub_EA78(&qword_C4E90, &qword_C4E58);
  v71 = v92;
  v72 = v91;
  sub_96FE8();
  sub_4C60(v56, &qword_C48D8);

  (*(v90 + 8))(v68, v72);
  v73 = swift_allocObject();
  v74 = v114;
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v105;
  *(v75 + 24) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4AD8);
  sub_EA78(&qword_C4E98, &qword_C4E60);
  sub_EA78(&qword_C4AE8, &qword_C4AD8);
  v76 = v96;
  v77 = v95;
  sub_96F78();

  (*(v94 + 8))(v71, v77);
  swift_allocObject();
  swift_weakInit();
  sub_EA78(&qword_C4EA0, &qword_C4E68);
  v78 = v98;
  v79 = sub_97028();

  (*(v97 + 8))(v76, v78);
  (*(v109 + 8))(v108, v110);
  *(v74 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_loadScoutingAligner) = v79;
}

uint64_t sub_103D4(void *a1, void *a2)
{
  v4 = sub_96AB8();
  __chkstk_darwin(v4 - 8);
  sub_96A98();
  sub_96988();
  swift_allocObject();
  v5 = a2;
  v6 = a1;
  return sub_96978();
}

uint64_t sub_10488@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v7 = sub_97888();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_978A8();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_96AB8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_96A78();
  swift_errorRetain();
  v16 = sub_96AA8();
  v17 = sub_981B8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v7;
    v21 = v20;
    v40 = v15;
    *&aBlock = v20;
    *v19 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    v22 = sub_97E48();
    v24 = sub_11FC8(v22, v23, &aBlock);
    v31 = v11;
    v25 = v24;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_0, v16, v17, "Failed to construct scouting aligner: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v7 = v32;

    (*(v12 + 8))(v14, v31);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = v15;
  v43 = sub_12C7C;
  v44 = v26;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_279B0;
  *(&v42 + 1) = &block_descriptor_0;
  v27 = _Block_copy(&aBlock);
  swift_errorRetain();

  v28 = v34;
  sub_97898();
  v40 = &_swiftEmptyArrayStorage;
  sub_12984(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
  sub_EA78(&qword_C7920, &qword_C4E18);
  v29 = v37;
  sub_98618();
  sub_982F8();
  _Block_release(v27);
  (*(v38 + 8))(v29, v7);
  (*(v35 + 8))(v28, v36);

  v43 = 0;
  aBlock = 0u;
  v42 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4848);
  return sub_96E28();
}

uint64_t sub_1095C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_96968();
    sub_12984(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    *v5 = a2;
    (*(*(v4 - 8) + 104))(v5, enum case for AlignmentCoordinatorError.alignmentFailure(_:), v4);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_errorRetain();
    return sub_96EA8();
  }

  return result;
}

uint64_t sub_10A94(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_4BF8(a1, v4, &qword_C4848);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_4BF8(v4, v3, &qword_C4848);
    sub_96EA8();
    return sub_4C60(v4, &qword_C4848);
  }

  return result;
}

uint64_t ScoutingAlignmentCoordinator.fetchPlayerTimestamp(for:)(double a1)
{
  *(v2 + 288) = v1;
  *(v2 + 280) = a1;
  v3 = sub_95F58();
  *(v2 + 296) = v3;
  *(v2 + 304) = *(v3 - 8);
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4EB8);
  *(v2 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D0);
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_10CB4, 0, 0);
}

uint64_t sub_10CB4()
{
  v1 = *(v0 + 288);
  if ((*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_shouldShazamMatch) & 1) == 0)
  {
    v5 = *(v0 + 280);

    v6 = *(v0 + 8);
    v7.n128_u64[0] = v5;
    goto LABEL_24;
  }

  v40 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_asset;
  v41 = *(v0 + 288);
  v2 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_asset);
  if (v2)
  {
    v3 = [v2 URL];
    sub_95F48();

    v4 = 0;
    v1 = *(v0 + 288);
  }

  else
  {
    v4 = 1;
  }

  v8 = *(v0 + 344);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  (*(v12 + 56))(v8, v4, 1, v11);
  v13 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_alignmentCoordinator);
  *(v0 + 352) = v13;
  v14 = OBJC_IVAR____TtC19PodcastsTranscripts30NowPlayingAlignmentCoordinator_url;
  swift_beginAccess();
  v15 = *(v10 + 48);
  sub_4BF8(v8, v9, &qword_C48D0);
  sub_4BF8(v13 + v14, v9 + v15, &qword_C48D0);
  v16 = *(v12 + 48);
  if (v16(v9, 1, v11) == 1)
  {
    v17 = *(v0 + 296);
    sub_4C60(*(v0 + 344), &qword_C48D0);
    if (v16(v9 + v15, 1, v17) == 1)
    {
      sub_4C60(*(v0 + 328), &qword_C48D0);
LABEL_18:
      v32 = swift_task_alloc();
      *(v0 + 360) = v32;
      *v32 = v0;
      v32[1] = sub_11388;
      v33 = *(v0 + 280);

      return NowPlayingAlignmentCoordinator.fetchPlayerTimestamp(for:)(v33);
    }
  }

  else
  {
    v18 = *(v0 + 296);
    sub_4BF8(*(v0 + 328), *(v0 + 336), &qword_C48D0);
    v19 = v16(v9 + v15, 1, v18);
    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    if (v19 != 1)
    {
      v39 = *(v0 + 328);
      v28 = *(v0 + 304);
      v27 = *(v0 + 312);
      v29 = *(v0 + 296);
      (*(v28 + 32))(v27, v9 + v15, v29);
      sub_12984(&qword_C4ED0, &type metadata accessor for URL);
      v30 = sub_97D98();
      v31 = *(v28 + 8);
      v31(v27, v29);
      sub_4C60(v21, &qword_C48D0);
      v31(v20, v29);
      sub_4C60(v39, &qword_C48D0);
      if (v30)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    sub_4C60(*(v0 + 344), &qword_C48D0);
    (*(v22 + 8))(v20, v23);
  }

  sub_4C60(*(v0 + 328), &qword_C4EB8);
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (*(v0 + 80))
  {
    sub_4CC0((v0 + 56), v0 + 16);
    v24 = *(v41 + v40);
    *(v0 + 368) = v24;
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4EC8);
      v24;
      v25 = sub_96358();
      *(v0 + 376) = v25;
      v26 = swift_task_alloc();
      *(v0 + 384) = v26;
      *v26 = v0;
      v26[1] = sub_11510;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 424, v25, 0, 0);
    }

    v36 = sub_96968();
    sub_12984(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, enum case for AlignmentCoordinatorError.invalidDuration(_:), v36);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_4C60(v0 + 56, &qword_C4848);
    v34 = sub_96968();
    sub_12984(&qword_C7D90, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for AlignmentCoordinatorError.invalidAligner(_:), v34);
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_24:

  return v6(v7);
}

uint64_t sub_11388(double a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_11510()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_11A24;
  }

  else
  {
    v4 = *(v2 + 368);

    v3 = sub_11630;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_11630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  sub_4BF8((v0 + 12), (v0 + 17), &qword_C7CE0);
  if (v0[20])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    sub_965A8();
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  else
  {
    sub_4C60((v0 + 17), &qword_C7CE0);
  }

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_983B8();
  if (v5.n128_f64[0] < 0.0)
  {
    __break(1u);
  }

  else
  {
    v8 = v5.n128_u64[0];
    v9 = swift_task_alloc();
    v0[50] = v9;
    *v9 = v0;
    v9[1] = sub_117D8;
    v5.n128_u64[0] = v0[35];
    v6.n128_u64[0] = 0;
    v7.n128_u64[0] = v8;
    v3 = v1;
    v4 = v2;
  }

  return dispatch thunk of ScoutingAligner.align(at:within:)(v3, v4, v5, v6, v7);
}

uint64_t sub_117D8(double a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_11AC4;
  }

  else
  {
    v4 = sub_118F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_118F0()
{
  sub_4BF8((v0 + 12), (v0 + 27), &qword_C7CE0);
  if (v0[30])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
    sub_965B8();
    sub_4C60((v0 + 12), &qword_C7CE0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  }

  else
  {
    sub_4C60((v0 + 12), &qword_C7CE0);
    sub_4C60((v0 + 27), &qword_C7CE0);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[51];

  v2 = v0[1];
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_11A24()
{
  v1 = *(v0 + 368);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_11AC4()
{
  sub_4BF8((v0 + 12), (v0 + 22), &qword_C7CE0);
  if (v0[25])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    sub_965B8();
    sub_4C60((v0 + 12), &qword_C7CE0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  }

  else
  {
    sub_4C60((v0 + 12), &qword_C7CE0);
    sub_4C60((v0 + 22), &qword_C7CE0);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t ScoutingAlignmentCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator__scoutingAligner;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator__error;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_transcriptProvider);

  return v0;
}

uint64_t ScoutingAlignmentCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator__scoutingAligner;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4868);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator__error;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC19PodcastsTranscripts28ScoutingAlignmentCoordinator_transcriptProvider);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_11E60(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_DB30;

  return ScoutingAlignmentCoordinator.fetchPlayerTimestamp(for:)(a1);
}

uint64_t sub_11EF8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_11F6C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_11FC8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_11FC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_12094(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_12BDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_12094(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_121A0(a5, a6);
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
    result = sub_986E8();
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

char *sub_121A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_121EC(a1, a2);
  sub_1231C(&off_BB638);
  return v3;
}

char *sub_121EC(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_12408(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_986E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_97EF8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_12408(v10, 0);
        result = sub_98698();
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

uint64_t sub_1231C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1247C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_12408(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1247C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_12570(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_12580(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

id sub_125A0(void *a1)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_95F58();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = [v24 URL];
  sub_95F48();

  LOBYTE(v11) = sub_95F18();
  v12 = *(v5 + 8);
  v12(v10, v4);
  if ((v11 & 1) == 0)
  {
    sub_968A8();
    v13 = [v24 URL];
    sub_95F48();

    v14 = sub_96898();
    if (v14)
    {
      v15 = v14;
      sub_96888();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        (*(v5 + 32))(v8, v3, v4);
        v18 = objc_allocWithZone(AVURLAsset);
        sub_95F38(v19);
        v21 = v20;
        v22 = [v18 initWithURL:v20 options:0];

        v12(v8, v4);
        return v22;
      }
    }

    else
    {
      (*(v5 + 56))(v3, 1, 1, v4);
    }

    sub_4C60(v3, &qword_C48D0);
  }

  v16 = v24;

  return v16;
}

uint64_t sub_1287C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_128BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_128FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ScoutingAlignmentCoordinator()
{
  result = qword_C4F00;
  if (!qword_C4F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_12A90()
{
  sub_E790(319, &qword_C4B98, &qword_C4848);
  if (v0 <= 0x3F)
  {
    sub_E790(319, &qword_C4BB0, &qword_C4858);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_12BDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_12C3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_12C9C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *a1 = v3;
  return result;
}

uint64_t sub_12D1C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t sub_12D90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t sub_12E0C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

void (*sub_12E7C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_96E88();
  return sub_12F20;
}

void sub_12F20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_12F88()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E68();
  return swift_endAccess();
}

uint64_t sub_13000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_13184()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E68();
  return swift_endAccess();
}

uint64_t sub_131F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E78();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_13330(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19PodcastsTranscripts30TranscriptSyncingStateObserver__isSyncing;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E68();
  swift_endAccess();
  return sub_134A0;
}

void sub_134A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_96E78();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_96E78();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t TranscriptSyncingStateObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_96E58();
  return v0;
}

uint64_t TranscriptSyncingStateObserver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC19PodcastsTranscripts30TranscriptSyncingStateObserver__isSyncing;
  v7[15] = 0;
  sub_96E58();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t TranscriptSyncingStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts30TranscriptSyncingStateObserver__isSyncing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TranscriptSyncingStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts30TranscriptSyncingStateObserver__isSyncing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_13878@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranscriptSyncingStateObserver();
  result = sub_96DE8();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TranscriptSyncingStateObserver()
{
  result = qword_C5008;
  if (!qword_C5008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_13914()
{
  sub_13AA8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_13AA8()
{
  if (!qword_C5018)
  {
    v0 = sub_96EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_C5018);
    }
  }
}

uint64_t TimedReferenceLink.with(startTime:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_97AB8();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  return sub_97AA8();
}

uint64_t TimedReferenceLink.align(using:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_96AB8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_13C30, 0, 0);
}

uint64_t sub_13C30()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_97A98();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_13CFC;
  v7.n128_u64[0] = v5;

  return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v2, v3, v7);
}

uint64_t sub_13CFC(double a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_13EDC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_13E20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_13E20()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_97AB8();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  sub_97AA8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_13EDC()
{
  sub_96A88();
  swift_errorRetain();
  v1 = sub_96AA8();
  v2 = sub_981B8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to align timed reference link: %@", v3, 0xCu);
    sub_142D8(v4);
  }

  else
  {
  }

  v6 = v0[4];
  v7 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v8 = sub_97AB8();
  (*(*(v8 - 8) + 16))(v7, v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t TimedReferenceLink.with(endTime:)@<X0>(uint64_t a1@<X8>)
{
  sub_97A78();
  v3 = sub_97AB8();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  return sub_97A88();
}

uint64_t sub_1414C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_97A78();
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  return sub_97A88();
}

uint64_t sub_14204(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_14264(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_142D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Sequence<>.align(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_96AB8();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_97AB8();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50D0);
  v4[13] = swift_task_alloc();
  v4[14] = *(a2 - 8);
  v4[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[16] = AssociatedTypeWitness;
  v4[17] = *(AssociatedTypeWitness - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1457C, 0, 0);
}

uint64_t sub_1457C()
{
  (*(v0[14] + 16))(v0[15], v0[5], v0[3]);
  sub_97F78();
  v0[19] = &_swiftEmptyArrayStorage;
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_985A8();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v4 = v0[1];

    return v4(&_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[2];
    v11 = *(v9 + 32);
    v0[20] = v11;
    v0[21] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v7, v6, v8);
    v12 = v10[3];
    v13 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v12);
    sub_97A98();
    v15 = v14;
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_147C0;
    v17.n128_u64[0] = v15;

    return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v12, v13, v17);
  }
}

uint64_t sub_147C0(double a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_14C04;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_148E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_148E4()
{
  (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
  sub_97AA8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_15BF4(0, *(v2 + 2) + 1, 1, v0[19], &qword_C5158, &unk_9AAE8, &type metadata accessor for TimedReferenceLink);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_15BF4(v3 > 1, v4 + 1, 1, v2, &qword_C5158, &unk_9AAE8, &type metadata accessor for TimedReferenceLink);
  }

  v5 = v0[20];
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[10];
  (*(v8 + 8))(v0[12], v7);
  *(v2 + 2) = v4 + 1;
  v5(&v2[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4], v6, v7);
  v0[19] = v2;
  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_985A8();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v12 = v0[1];

    return v12(v2);
  }

  else
  {
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[2];
    v19 = *(v17 + 32);
    v0[20] = v19;
    v0[21] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v15, v14, v16);
    v20 = v18[3];
    v21 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v20);
    sub_97A98();
    v23 = v22;
    v24 = swift_task_alloc();
    v0[22] = v24;
    *v24 = v0;
    v24[1] = sub_147C0;
    v25.n128_u64[0] = v23;

    return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v20, v21, v25);
  }
}

uint64_t sub_14C04()
{
  sub_96A88();
  swift_errorRetain();
  v1 = sub_96AA8();
  v2 = sub_981B8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to align timed reference link: %@", v3, 0xCu);
    sub_142D8(v4);
  }

  else
  {
  }

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v9 + 16))(v6, v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_15BF4(0, *(v11 + 2) + 1, 1, v0[19], &qword_C5158, &unk_9AAE8, &type metadata accessor for TimedReferenceLink);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_15BF4(v12 > 1, v13 + 1, 1, v11, &qword_C5158, &unk_9AAE8, &type metadata accessor for TimedReferenceLink);
  }

  v14 = v0[20];
  v15 = v0[11];
  v16 = v0[9];
  v17 = v0[10];
  (*(v17 + 8))(v0[12], v16);
  *(v11 + 2) = v13 + 1;
  v14(&v11[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v13], v15, v16);
  v0[19] = v11;
  v18 = v0[13];
  v19 = v0[9];
  v20 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_985A8();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v21 = v0[1];

    return v21(v11);
  }

  else
  {
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[9];
    v26 = v0[10];
    v27 = v0[2];
    v28 = *(v26 + 32);
    v0[20] = v28;
    v0[21] = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v28(v24, v23, v25);
    v29 = v27[3];
    v30 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v29);
    sub_97A98();
    v32 = v31;
    v33 = swift_task_alloc();
    v0[22] = v33;
    *v33 = v0;
    v33[1] = sub_147C0;
    v34.n128_u64[0] = v32;

    return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v29, v30, v34);
  }
}

void *sub_15028(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_15170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5150);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_152EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5128);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_15444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1556C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_156A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F8);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_157A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_158D8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50E8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_15AC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50E0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_15BF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t (*static NowPlayingButtonID.transcript.modify())()
{
  if (qword_C4640 != -1)
  {
    swift_once();
  }

  v0 = sub_961D8();
  __swift_project_value_buffer(v0, qword_C5160);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_15F78(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0x697263736E617274, 0xEA00000000007470);
}

uint64_t sub_16028@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_16114(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static NowPlayingHostedContentID.transcript.modify())()
{
  if (qword_C4648 != -1)
  {
    swift_once();
  }

  v0 = sub_96238();
  __swift_project_value_buffer(v0, qword_C5178);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::Int TranscriptSelectionContentType.ChapterContentType.hashValue.getter()
{
  v1 = *v0;
  sub_988D8();
  sub_988E8(v1);
  return sub_98918();
}

Swift::Int sub_16388()
{
  v1 = *v0;
  sub_988D8();
  sub_988E8(v1);
  return sub_98918();
}

BOOL static TranscriptSelectionContentType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_16454(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

NSString sub_164C0()
{
  result = sub_97DC8();
  qword_C5190 = result;
  return result;
}

id static NSAttributedStringKey.contentType.getter()
{
  if (qword_C4650 != -1)
  {
    swift_once();
  }

  v1 = qword_C5190;

  return v1;
}

uint64_t Dictionary<>.update(contentType:)(char *a1)
{
  v1 = *a1;
  v4 = &type metadata for TranscriptSelectionContentType;
  LOBYTE(v3) = v1;
  if (qword_C4650 != -1)
  {
    swift_once();
  }

  sub_1666C(&v3, qword_C5190, v5);
  return sub_167A4(v5);
}

uint64_t Dictionary<>.updating(contentType:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  v8 = a2;
  v6 = &type metadata for TranscriptSelectionContentType;
  LOBYTE(v5) = v2;
  v3 = qword_C4650;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_1666C(&v5, qword_C5190, v7);
  sub_167A4(v7);
  return v8;
}

_OWORD *sub_1666C@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_741B4(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_74380(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_741B4(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for Key(0);
    v11 = sub_98868();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_75558();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_75184(v11, a2, a1, v10);
    *a3 = 0u;
    a3[1] = 0u;
    result = a2;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_16B64((v10[7] + 32 * v11), a3);
  result = sub_16B64(a1, (v10[7] + v18));
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t sub_167A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_16810()
{
  result = qword_C5198;
  if (!qword_C5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptSelectionContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TranscriptSelectionContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_169C8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_169E0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptSelectionContentType.ChapterContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptSelectionContentType.ChapterContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *sub_16B64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static UIContentUnavailableConfiguration.playerTranscriptUnavailableConfig(error:isOffline:retryCallback:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C51A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_98548();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  sub_98528();
  v14 = objc_opt_self();
  v15 = [v14 quaternarySystemFillColor];
  sub_984D8();
  v16 = [objc_opt_self() effectWithStyle:10];
  v17 = [objc_opt_self() effectForBlurEffect:v16];

  v18 = sub_98478();
  sub_96B58();
  v18(v38, 0);
  v19 = [v14 whiteColor];
  sub_984E8();
  v20 = sub_98478();
  sub_96B48();
  v20(v38, 0);
  sub_98368();
  sub_984B8();
  if (a1)
  {
    v38[0] = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    v21 = sub_96588();
    v22 = swift_dynamicCast();
    v23 = *(v21 - 8);
    (*(v23 + 56))(v7, v22 ^ 1u, 1, v21);
    if ((*(v23 + 48))(v7, 1, v21) != 1)
    {
      sub_1716C(v7);
      sub_96C48();
      v39._countAndFlagsBits = 0xD000000000000015;
      v39._object = 0x80000000000A31C0;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      sub_967C8(v39, v44);
      sub_96BE8();
      v25 = v36;
      v24 = v37;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = sub_96588();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  }

  sub_1716C(v7);
  sub_96C48();
  v25 = v36;
  if (v35)
  {
    v40._countAndFlagsBits = 0xD000000000000014;
    v40._object = 0x80000000000A3180;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    sub_967C8(v40, v45);
    sub_96C38();
    v41._countAndFlagsBits = 0xD000000000000013;
    v41._object = 0x80000000000A31A0;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_97B18(v41, v46);
    sub_96BE8();
    v24 = v37;
  }

  else
  {
    v42._countAndFlagsBits = 0xD00000000000001FLL;
    v42._object = 0x80000000000A3140;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    sub_967C8(v42, v47);
    sub_96BE8();
    v24 = v37;
    (*(v25 + 16))(v10, v13, v37);
    sub_96C68();
    v43._object = 0x80000000000A3160;
    v43._countAndFlagsBits = 0xD000000000000010;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_967C8(v43, v48);
    v27 = sub_96C58();
    sub_98518();
    v27(v38, 0);
    sub_E104(0, &unk_C7C20);
    v28 = swift_allocObject();
    *(v28 + 16) = v33;
    *(v28 + 24) = v34;

    sub_98468();
    v29 = sub_96C28();
    sub_96C18();
    v29(v38, 0);
  }

LABEL_8:
  sub_E104(0, &qword_C51A8);
  sub_983C8();
  v30 = sub_96C08();
  sub_96BF8();
  v30(v38, 0);
  return (*(v25 + 8))(v13, v24);
}

uint64_t sub_1716C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C51A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UIContentUnavailableConfiguration.episodeDetailTranscriptUnavailableConfig(error:isOffline:isMac:retryCallback:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C51A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_98548();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  if (a3)
  {
    sub_98538();
  }

  else
  {
    sub_98508();
  }

  if (a1)
  {
    v29[0] = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    v18 = sub_96588();
    v19 = swift_dynamicCast();
    v20 = *(v18 - 8);
    (*(v20 + 56))(v10, v19 ^ 1u, 1, v18);
    if ((*(v20 + 48))(v10, 1, v18) != 1)
    {
      sub_1716C(v10);
      sub_96C48();
      v30._countAndFlagsBits = 0xD000000000000015;
      v30._object = 0x80000000000A31C0;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      sub_967C8(v30, v35);
      goto LABEL_10;
    }
  }

  else
  {
    v21 = sub_96588();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  }

  sub_1716C(v10);
  sub_96C48();
  if ((a2 & 1) == 0)
  {
    v33._countAndFlagsBits = 0xD00000000000001FLL;
    v33._object = 0x80000000000A3140;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_967C8(v33, v38);
    sub_96BE8();
    v22 = v11;
    (*(v12 + 16))(v15, v17, v11);
    sub_96C68();
    v34._object = 0x80000000000A3160;
    v34._countAndFlagsBits = 0xD000000000000010;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_967C8(v34, v39);
    v23 = sub_96C58();
    sub_98518();
    v23(v29, 0);
    sub_E104(0, &unk_C7C20);
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = v28;

    sub_98468();
    v25 = sub_96C28();
    sub_96C18();
    v25(v29, 0);
    return (*(v12 + 8))(v17, v22);
  }

  v31._countAndFlagsBits = 0xD000000000000014;
  v31._object = 0x80000000000A3180;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_967C8(v31, v36);
  sub_96C38();
  v32._countAndFlagsBits = 0xD000000000000013;
  v32._object = 0x80000000000A31A0;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_97B18(v32, v37);
LABEL_10:
  sub_96BE8();
  v22 = v11;
  return (*(v12 + 8))(v17, v22);
}

uint64_t sub_17650()
{

  return _swift_deallocObject(v0, 32, 7);
}

id NSUserDefaults.hasOpenedPlayerTranscriptTab.getter()
{

  v1 = sub_97DC8();

  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void sub_17728(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_97DC8();

  LOBYTE(v3) = [v3 BOOLForKey:v4];

  *a2 = v3;
}

void NSUserDefaults.hasOpenedPlayerTranscriptTab.setter(char a1)
{
  v2 = a1 & 1;

  v3 = sub_97DC8();

  v4 = [v1 BOOLForKey:v3];

  if (v4 != v2)
  {
    isa = sub_98028().super.super.isa;

    v6 = sub_97DC8();

    [v1 setValue:isa forKey:v6];
  }
}

void (*NSUserDefaults.hasOpenedPlayerTranscriptTab.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  v3 = sub_97DC8();

  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_17934;
}

void sub_17934(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);

  v3 = sub_97DC8();

  v4 = [v1 BOOLForKey:v3];

  if (v2 != v4)
  {
    isa = sub_98028().super.super.isa;

    v5 = sub_97DC8();

    [v1 setValue:isa forKey:v5];
  }
}

void *Array<A>.normalized(episodeDuration:)(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  if (a3[2] < 2uLL)
  {
  }

  else
  {
    v27[0] = a3;

    sub_1829C(v27);
    v6 = v27[0];
    *&v26[0] = v27[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C51C0);
    sub_18308();
    sub_97F88();
    v3 = sub_17D98(v27[0], v27[1], v27[2]);

    v7 = v6[2];
    if (v7)
    {
      sub_E304(&v6[5 * v7 - 1], v26);

      sub_4CC0(v26, v27);
      if (a2)
      {
        v8 = 0;
        v9 = 1;
      }

      else
      {
        v10 = v28;
        v11 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v12 = (*(v11 + 8))(v10, v11);
        if (v12 >= *&a1)
        {
          v8 = 0;
        }

        else
        {
          v8 = a1;
        }

        v9 = v12 >= *&a1;
      }

      v13 = v28;
      v14 = v29;
      v15 = __swift_project_boxed_opaque_existential_1(v27, v28);
      v16 = *(v13 - 8);
      v17 = *(v16 + 64);
      v18 = __chkstk_darwin(v15);
      v19 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v8, v9, v13, v14, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_15028(0, v3[2] + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
        v30 = isUniquelyReferenced_nonNull_native;
      }

      v22 = v3[2];
      v21 = v3[3];
      if (v22 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_15028((v21 > 1), v22 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
        v30 = isUniquelyReferenced_nonNull_native;
      }

      v23 = __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v24 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v24, v19, v13, v23);
      sub_19248(v22, v24, &v30, v13, v14);
      (*(v16 + 8))(v19, v13);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_17D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = &_swiftEmptyArrayStorage;
  sub_8C288(0, 0, 0);
  v6 = &_swiftEmptyArrayStorage;

  result = sub_181B0(a1, a2, a3, v43);
  v45 = v43[1];
  v46[0] = v43[0];
  if ((v44 & 1) != 0 || (v8 = *(&v46[0] + 1), v9 = *(*&v46[0] + 16), *(&v46[0] + 1) == v9))
  {
LABEL_3:
    sub_4C60(v46, &qword_C51D8);
    sub_4C60(&v45, &qword_C51D8);
    return v6;
  }

  else
  {
    v10 = *(&v45 + 1);
    v30 = *&v46[0];
    v31 = v45;
    v11 = v45 + 40 * *(&v45 + 1) + 32;
    v12 = *&v46[0] + 40 * *(&v46[0] + 1) + 32;
    while (v8 < v9)
    {
      result = sub_E304(v12, v35);
      v13 = *(v31 + 16);
      if (v10 == v13)
      {
        sub_4C60(v46, &qword_C51D8);
        sub_4C60(&v45, &qword_C51D8);
        __swift_destroy_boxed_opaque_existential_1(v35);
        return v6;
      }

      if (v10 >= v13)
      {
        goto LABEL_15;
      }

      v33 = v12;
      v34 = v10;
      v47 = v8;
      sub_4CC0(v35, &v36);
      sub_E304(v11, v38 + 8);
      v39[1] = v37;
      v40[0] = v38[0];
      v40[1] = v38[1];
      v41 = v38[2];
      v39[0] = v36;
      v15 = *(&v37 + 1);
      v14 = *&v38[0];
      __swift_project_boxed_opaque_existential_1(v39, *(&v37 + 1));
      v16 = v6;
      v32 = v11;
      v17 = v41;
      __swift_project_boxed_opaque_existential_1(v40 + 1, v41);
      v18 = (*(*(&v17 + 1) + 8))(v17, *(&v17 + 1));
      v19 = *(v14 + 16);
      v20 = v18;
      *(&v37 + 1) = v15;
      *&v38[0] = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      v19(*&v20, 0, v15, v14);
      v22 = sub_4C60(v39, &qword_C51D0);
      v42 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        v22 = sub_8C288((v23 > 1), v24 + 1, 1);
      }

      v8 = v47 + 1;
      v25 = __chkstk_darwin(v22);
      v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27, boxed_opaque_existential_1, v15, v25);
      sub_1930C(v24, v27, &v42, v15, v14);
      result = __swift_destroy_boxed_opaque_existential_1(&v36);
      v6 = v42;
      v9 = *(v30 + 16);
      v11 = v32 + 40;
      v12 = v33 + 40;
      v10 = v34 + 1;
      if (v8 == v9)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t QueueModel.Chapter.with(endTime:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_97948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_181B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  if (a3 < 1)
  {
    v8 = 0;
LABEL_9:
    *a4 = v5;
    *(a4 + 8) = 0;
    *(a4 + 16) = a2;
    *(a4 + 24) = v8;
    *(a4 + 32) = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2 + 32;
    while (1)
    {
      v10 = *(a2 + 16);
      if (v8 == v10)
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        result = sub_4C60(v11, &qword_C51E0);
        goto LABEL_9;
      }

      if (v8 >= v10)
      {
        break;
      }

      sub_E304(v9, v11);
      ++v8;
      result = sub_4C60(v11, &qword_C51E0);
      v9 += 40;
      if (a3 == v8)
      {
        v8 = a3;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1829C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19234(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1836C(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_18308()
{
  result = qword_C51C8;
  if (!qword_C51C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C51C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C51C8);
  }

  return result;
}

Swift::Int sub_1836C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_987E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5148);
        v5 = sub_97FF8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_185E8(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_18474(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_E304(v8, &v21);
      sub_E304(v8 - 40, v18);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v11 = (*(v10 + 8))(v9, v10);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = (*(v13 + 8))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      if (v11 >= v14)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 += 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_4CC0(v8, &v21);
      v15 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v15;
      *(v8 + 32) = *(v8 - 8);
      result = sub_4CC0(&v21, v8 - 40);
      v8 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_185E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_92:
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_130;
    }

    v7 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_19220(v7);
      v7 = result;
    }

    v125 = v7;
    v102 = *(v7 + 2);
    if (v102 >= 2)
    {
      while (1)
      {
        v103 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v102 - 1);
        v104 = *&v7[16 * v102];
        v105 = *&v7[16 * v102 + 24];
        sub_18DE0((v103 + 40 * v104), (v103 + 40 * *&v7[16 * v102 + 16]), v103 + 40 * v105, v8);
        if (v5)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_19220(v7);
        }

        if (v102 - 2 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v106 = &v7[16 * v102];
        *v106 = v104;
        *(v106 + 1) = v105;
        v125 = v7;
        result = sub_19194(v6);
        v7 = v125;
        v102 = *(v125 + 2);
        v6 = a3;
        if (v102 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v114 = result;
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v112 = v10;
      v108 = v5;
      v13 = *v6;
      sub_E304(*v6 + 40 * v12, &v122);
      v14 = v11;
      v15 = 40 * v11;
      v16 = v13 + v15;
      sub_E304(v13 + v15, v119);
      v17 = v123;
      v18 = v124;
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      v19 = (*(v18 + 8))(v17, v18);
      v20 = v120;
      v21 = v121;
      __swift_project_boxed_opaque_existential_1(v119, v120);
      v22 = (*(v21 + 8))(v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v119);
      result = __swift_destroy_boxed_opaque_existential_1(&v122);
      v110 = v14;
      v23 = (v14 + 2);
      v24 = v16 + 80;
      while (v8 != v23)
      {
        sub_E304(v24, &v122);
        sub_E304(v24 - 40, v119);
        v25 = v123;
        v26 = v124;
        __swift_project_boxed_opaque_existential_1(&v122, v123);
        v27 = (*(v26 + 8))(v25, v26);
        v28 = v120;
        v29 = v121;
        __swift_project_boxed_opaque_existential_1(v119, v120);
        v30 = (*(v29 + 8))(v28, v29);
        __swift_destroy_boxed_opaque_existential_1(v119);
        result = __swift_destroy_boxed_opaque_existential_1(&v122);
        ++v23;
        v24 += 40;
        if (v19 < v22 == v27 >= v30)
        {
          v8 = v23 - 1;
          break;
        }
      }

      v5 = v108;
      if (v19 >= v22)
      {
        v10 = v112;
        v7 = v114;
        v11 = v110;
      }

      else
      {
        v10 = v112;
        v7 = v114;
        if (v8 < v110)
        {
          goto LABEL_121;
        }

        if (v110 >= v8)
        {
          v11 = v110;
        }

        else
        {
          v31 = 40 * v8 - 40;
          v32 = v8;
          v33 = v8;
          v34 = v110;
          do
          {
            if (v34 != --v33)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_127;
              }

              v35 = v39 + v15;
              v36 = v39 + v31;
              sub_4CC0((v39 + v15), &v122);
              v37 = *(v36 + 32);
              v38 = *(v36 + 16);
              *v35 = *v36;
              *(v35 + 16) = v38;
              *(v35 + 32) = v37;
              result = sub_4CC0(&v122, v36);
            }

            ++v34;
            v31 -= 40;
            v15 += 40;
          }

          while (v34 < v33);
          v10 = v112;
          v7 = v114;
          v11 = v110;
          v8 = v32;
        }
      }
    }

    v40 = v6[1];
    if (v8 < v40)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_120;
      }

      if (&v8[-v11] < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v40)
        {
          v41 = v6[1];
        }

        else
        {
          v41 = (v11 + a4);
        }

        if (v41 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v8 != v41)
        {
          break;
        }
      }
    }

    v42 = v8;
    if (v8 < v11)
    {
      goto LABEL_119;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_15170(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_15170((v43 > 1), v44 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v45;
    v46 = &v10[16 * v44];
    *(v46 + 4) = v11;
    *(v46 + 5) = v42;
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_129;
    }

    v116 = v42;
    if (v44)
    {
      while (1)
      {
        v47 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v10 + 4);
          v49 = *(v10 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_51:
          if (v51)
          {
            goto LABEL_108;
          }

          v64 = &v10[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_111;
          }

          v70 = &v10[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_115;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v45 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v74 = &v10[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_65:
        if (v69)
        {
          goto LABEL_110;
        }

        v77 = &v10[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_72:
        v85 = v47 - 1;
        if (v47 - 1 >= v45)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v86 = *&v10[16 * v85 + 32];
        v87 = *&v10[16 * v47 + 40];
        sub_18DE0((*v6 + 40 * v86), (*v6 + 40 * *&v10[16 * v47 + 32]), *v6 + 40 * v87, v7);
        if (v5)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_19220(v10);
        }

        if (v85 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v88 = &v10[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        v125 = v10;
        result = sub_19194(v47);
        v10 = v125;
        v45 = *(v125 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v10[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_106;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_107;
      }

      v59 = &v10[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_109;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_112;
      }

      if (v63 >= v55)
      {
        v81 = &v10[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v50 < v84)
        {
          v47 = v45 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v116;
    v7 = v114;
    if (v116 >= v8)
    {
      goto LABEL_92;
    }
  }

  v109 = v5;
  v89 = v11;
  v90 = *v6;
  v91 = *v6 + 40 * v8;
  v111 = v89;
  v113 = v10;
  v117 = v41;
  v118 = v8;
  v92 = (v89 - v8);
LABEL_83:
  v8 = v92;
  v93 = v91;
  while (1)
  {
    sub_E304(v93, &v122);
    sub_E304(v93 - 40, v119);
    v95 = v123;
    v94 = v124;
    __swift_project_boxed_opaque_existential_1(&v122, v123);
    v96 = (*(v94 + 8))(v95, v94);
    v97 = v120;
    v98 = v121;
    __swift_project_boxed_opaque_existential_1(v119, v120);
    v99 = (*(v98 + 8))(v97, v98);
    __swift_destroy_boxed_opaque_existential_1(v119);
    result = __swift_destroy_boxed_opaque_existential_1(&v122);
    if (v96 >= v99)
    {
LABEL_82:
      v42 = v117;
      v91 += 40;
      --v92;
      if (++v118 != v117)
      {
        goto LABEL_83;
      }

      v5 = v109;
      v11 = v111;
      v7 = v114;
      v6 = a3;
      v10 = v113;
      if (v117 < v111)
      {
        goto LABEL_119;
      }

      goto LABEL_32;
    }

    if (!v90)
    {
      break;
    }

    sub_4CC0(v93, &v122);
    v100 = *(v93 - 24);
    *v93 = *(v93 - 40);
    *(v93 + 16) = v100;
    *(v93 + 32) = *(v93 - 8);
    sub_4CC0(&v122, v93 - 40);
    v93 -= 40;
    if (__CFADD__(v8++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_18DE0(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  v49 = __dst;
  if (v8 >= v10)
  {
    v13 = __dst;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v13[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v24 = v5;
      goto LABEL_35;
    }

    while (1)
    {
      __dsta = v5;
      v25 = (v5 - 40);
      v26 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v12 = (v26 + 40);
        v29 = (v4 + 40);
        sub_E304(v26, v46);
        v5 = v25;
        sub_E304(v25, v43);
        v31 = v47;
        v30 = v48;
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v32 = (*(v30 + 8))(v31, v30);
        v33 = v44;
        v34 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v35 = (*(v34 + 8))(v33, v34);
        __swift_destroy_boxed_opaque_existential_1(v43);
        __swift_destroy_boxed_opaque_existential_1(v46);
        if (v32 < v35)
        {
          break;
        }

        v13 = v49;
        if (v29 != v12)
        {
          v36 = *v26;
          v37 = *(v26 + 16);
          *(v4 + 32) = *(v26 + 32);
          *v4 = v36;
          *(v4 + 16) = v37;
        }

        v27 = v26 - 40;
        v4 -= 40;
        v28 = v26 > v13;
        v26 -= 40;
        if (!v28)
        {
          v12 = (v27 + 40);
          v24 = __dsta;
          goto LABEL_35;
        }
      }

      v13 = v49;
      v24 = v25;
      if (v29 != __dsta)
      {
        v38 = *v25;
        v39 = *(v25 + 16);
        *(v4 + 32) = *(v25 + 32);
        *v4 = v38;
        *(v4 + 16) = v39;
      }

      if (v12 <= v13 || v25 <= v6)
      {
        v12 = (v26 + 40);
        goto LABEL_35;
      }
    }
  }

  if (__dst != __src || &__src[40 * v8] <= __dst)
  {
    v11 = __dst;
    memmove(__dst, __src, 40 * v8);
    __dst = v11;
  }

  v12 = &__dst[40 * v8];
  if (v7 < 40 || v5 >= v4)
  {
    v24 = v6;
    v13 = v49;
    goto LABEL_35;
  }

  v13 = v49;
  do
  {
    sub_E304(v5, v46);
    sub_E304(v13, v43);
    v14 = v47;
    v15 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v16 = (*(v15 + 8))(v14, v15);
    v17 = v44;
    v18 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v19 = (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (v16 < v19)
    {
      v20 = v5;
      v21 = v6 == v5;
      v5 += 40;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v6 + 4) = *(v20 + 4);
      *v6 = v22;
      *(v6 + 1) = v23;
      goto LABEL_14;
    }

    v20 = v13;
    v21 = v6 == v13;
    v13 += 40;
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_14:
    v6 += 40;
  }

  while (v13 < v12 && v5 < v4);
  v24 = v6;
LABEL_35:
  v40 = (v12 - v13) / 40;
  if (v24 != v13 || v24 >= &v13[40 * v40])
  {
    memmove(v24, v13, 40 * v40);
  }

  return 1;
}

uint64_t sub_19194(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19220(v3);
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

uint64_t sub_19248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_4CC0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1930C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_4CC0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_19408(uint64_t a1)
{
  v2 = v1;
  v4 = sub_96108();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  v11 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_playerStyle;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v10, &v2[v11], v4);
  (*(v5 + 104))(v8, enum case for NowPlayingPlayerStyle.fullScreen(_:), v4);
  sub_2073C(&qword_C52B8, &type metadata accessor for NowPlayingPlayerStyle);
  sub_97F98();
  sub_97F98();
  if (v15[3] == v15[1] && v15[4] == v15[2])
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_98838();
  }

  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);

  if (v12)
  {
    [v2 setNeedsLayout];
  }

  return (v13)(a1, v4);
}

void sub_19670(char a1)
{
  if (a1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  else
  {
    v2 = 0x64656C616373;
  }

  if (v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_mode])
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x64656C616373;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = sub_98838();
    swift_bridgeObjectRelease_n();
    if ((v4 & 1) == 0)
    {
      if (qword_C46B8 != -1)
      {
        swift_once();
      }

      v5 = qword_CD520;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v10[4] = sub_20634;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_279B0;
      v10[3] = &block_descriptor_11;
      v7 = _Block_copy(v10);
      v8 = v5;
      v9 = v1;

      [v8 addAnimations:v7];
      _Block_release(v7);
      [v8 startAnimation];
    }
  }
}

uint64_t sub_19808()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = sub_7D364();
    swift_unknownObjectRelease();
    v4 = v3;
    [v4 alpha];
    if (v5 == 1.0)
    {
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v64.origin.x = v7;
      v64.origin.y = v9;
      v64.size.width = v11;
      v64.size.height = v13;
      MinY = CGRectGetMinY(v64);

      v15 = -20.0;
    }

    else
    {

      MinY = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_controlsTopOriginY];
      v15 = -12.0;
    }

    v48 = sub_1EF0C();
    v17 = 0uLL;
    v58 = 0u;
    v59 = 0u;
    v18 = -1;
    v60 = -1;
    v19 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViewIDs];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v16;
      v22 = MinY + -64.0 + v15;
      v23 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViews;
      v45 = &v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_viewContext];
      v46 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_mode;

      v24 = 32;
      v44 = v21 & 1;
      v47 = v19;
      while (1)
      {
        v32 = *(v19 + v24);
        v33 = *(v19 + v24 + 16);
        v63 = *(v19 + v24 + 32);
        v61 = v32;
        v62 = v33;
        swift_beginAccess();
        v34 = *&v1[v23];
        if (!*(v34 + 16))
        {
          break;
        }

        sub_2051C(&v61, v56);
        v35 = sub_741B8(&v61);
        if ((v36 & 1) == 0)
        {
          goto LABEL_13;
        }

        v25 = *(*(v34 + 56) + 8 * v35);
        swift_endAccess();
        v49 = v1[v46];
        v27 = v45[3];
        v26 = v45[4];
        __swift_project_boxed_opaque_existential_1(v45, v27);
        v28 = v1;
        v29 = *(v26 + 8);
        sub_2051C(&v61, v56);
        v30 = v25;
        v31 = v26;
        v19 = v47;
        v29(&v54, v27, v31);
        v1 = v28;
        v50 = v61;
        v51 = v62;
        LOBYTE(v52) = v63;
        v55 = v44;
        *(&v52 + 1) = v48;
        LOBYTE(v53) = v44;
        BYTE1(v53) = v49;
        *(&v53 + 1) = v22;
        sub_1F790(&v50, &v58, v28);

        sub_20578(&v61);
        v56[2] = v52;
        v56[3] = v53;
        v57 = v54;
        v56[0] = v50;
        v56[1] = v51;
        sub_205CC(v56);
LABEL_8:
        v24 += 40;
        if (!--v20)
        {

          v17 = v58;
          v37 = v59;
          v18 = v60;
          goto LABEL_16;
        }
      }

      sub_2051C(&v61, v56);
LABEL_13:
      swift_endAccess();
      sub_20578(&v61);
      goto LABEL_8;
    }

    v37 = 0uLL;
LABEL_16:
    v38 = &v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID];
    v39 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID];
    v40 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 8];
    v41 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 16];
    v42 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID + 24];
    *v38 = v17;
    *(v38 + 1) = v37;
    v43 = v38[32];
    v38[32] = v18;
    return sub_20424(v39, v40, v41, v42, v43);
  }

  return result;
}

void sub_19B20(uint64_t a1)
{
  v2 = sub_96108();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    sub_19408(v5);
  }
}

void sub_19C24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_96108();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v10 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_playerStyle;
  swift_beginAccess();
  (*(v4 + 16))(v9, &v1[v10], v3);
  (*(v4 + 104))(v7, enum case for NowPlayingPlayerStyle.fullScreen(_:), v3);
  sub_2073C(&qword_C52B8, &type metadata accessor for NowPlayingPlayerStyle);
  sub_97F98();
  sub_97F98();
  if (v17[3] == v17[1] && v17[4] == v17[2])
  {
    v11 = *(v4 + 8);
    v11(v7, v3);
    v11(v9, v3);
  }

  else
  {
    v12 = sub_98838();
    v13 = *(v4 + 8);
    v13(v7, v3);
    v13(v9, v3);

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  sub_19ED0();
  v14 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_controlsTopOriginY;
  v15 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_controlsTopOriginY];
  [v1 bounds];
  MaxY = CGRectGetMaxY(v19);
  if (MaxY >= v15)
  {
    MaxY = v15;
  }

  *&v1[v14] = MaxY;
}

void sub_19ED0()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for CGSize(0);
    v4 = &v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_lastKnownBounds];
    v18 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_lastKnownBounds + 16];
    v5 = v3;
    [v5 bounds];
    v16 = v6;
    v17 = v7;
    if (sub_96228())
    {
      *&v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_controlsTopOriginY] = 0x7FEFFFFFFFFFFFFFLL;
    }

    [v5 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    *v4 = v9;
    *(v4 + 1) = v11;
    *(v4 + 2) = v13;
    *(v4 + 3) = v15;
  }
}

char *sub_1A014(unint64_t a1)
{
  v2 = v1;
  *&v247 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_16:
    v4 = sub_98778();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_986C8();
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v8 = v247;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        if (*(v6 + 16) >> 61 == 1)
        {
          sub_986F8();
          sub_98728();
          sub_98738();
          sub_98708();
        }

        else
        {
        }

        ++v5;
        if (v7 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_18:
  LODWORD(v9) = v8 < 0 || (v8 & 0x4000000000000000) != 0;
  if (v9 == 1)
  {
    goto LABEL_268;
  }

  v10 = *(v8 + 16);
  while (2)
  {
    v11 = &_swiftEmptyArrayStorage;
    v212 = v2;
    if (!v10)
    {
      goto LABEL_45;
    }

    *&v247 = &_swiftEmptyArrayStorage;
    result = sub_8C2C8(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v218 = v9;
    v13 = 0;
    v11 = v247;
    v220 = v8 & 0xC000000000000001;
    v222 = v10;
    v224 = v8;
    do
    {
      if (v220)
      {
        v14 = sub_986C8();
      }

      else
      {
        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = *(v14 + 16);
      v16 = v15 >> 61;
      if ((v15 >> 61) <= 1)
      {
        if (!v16)
        {
          v18 = *(v15 + 16);
          v19 = *(v15 + 24);
          v21 = *(v15 + 32);
          v20 = *(v15 + 40);
          goto LABEL_35;
        }

        v22 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        v18 = *(v22 + 16);
        v19 = *(v22 + 24);

        goto LABEL_39;
      }

      v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL);
      if (v16 == 2)
      {
        v18 = v17[2];

        v19 = 0;
LABEL_39:
        v21 = 0;
        goto LABEL_40;
      }

      if (v16 == 3)
      {
        v18 = v17[5];
        v19 = v17[6];
        v21 = v17[7];
        v20 = v17[8];
LABEL_35:

        goto LABEL_41;
      }

      v18 = v17[14];
      v19 = v17[15];
      v21 = v17[16];

LABEL_40:
      v20 = 0;
LABEL_41:
      *&v247 = v11;
      v24 = v11[2];
      v23 = v11[3];
      if (v24 >= v23 >> 1)
      {
        sub_8C2C8((v23 > 1), v24 + 1, 1);
        v11 = v247;
      }

      ++v13;
      v11[2] = v24 + 1;
      v25 = &v11[5 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v19;
      *(v25 + 6) = v21;
      *(v25 + 7) = v20;
      v25[64] = v16;
      v8 = v224;
      v2 = v212;
    }

    while (v222 != v13);
    LODWORD(v9) = v218;
LABEL_45:
    *&v2[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViewIDs] = v11;

    if (v9)
    {
      v9 = sub_98778();
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
LABEL_49:
      v26 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v27 = sub_986C8();
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v26 >= *(v8 + 16))
          {
            goto LABEL_266;
          }

          v27 = *(v8 + 8 * v26 + 32);

          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_57:
            __break(1u);
            break;
          }
        }

        sub_1E06C(v27);

        ++v26;
      }

      while (v28 != v9);
    }

LABEL_58:

    v30 = sub_20658(v29);

    v31 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViews;
    swift_beginAccess();
    v32 = *&v2[v31];
    v34 = *(v32 + 64);
    v9 = v32 + 64;
    v33 = v34;
    v35 = 1 << *(*&v2[v31] + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & v33;
    v38 = (v35 + 63) >> 6;
    v217 = v30 + 56;
    v196 = *&v2[v31];

    v8 = 0;
    v39 = &_swiftEmptyArrayStorage;
    v185 = v38;
    v186 = v9;
    v187 = v31;
    v214 = v30;
    v213 = &_swiftEmptyArrayStorage;
    if (!v37)
    {
      goto LABEL_62;
    }

LABEL_66:
    while (2)
    {
      while (2)
      {
        v201 = (v37 - 1) & v37;
        v41 = *(v196 + 48) + 40 * (__clz(__rbit64(v37)) | (v8 << 6));
        v42 = *v41;
        v221 = *(v41 + 16);
        v223 = *(v41 + 24);
        v225 = *(v41 + 8);
        v43 = *(v41 + 32);
        if (!*(v30 + 16))
        {
          sub_203C8(v42, v225, *&v221, *&v223, v43);
          LOBYTE(v45) = v43;
LABEL_243:
          v147 = v45;
          v39 = v213;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v255 = v213;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_8C2C8(0, *(v213 + 2) + 1, 1);
            v39 = v255;
          }

          v31 = v187;
          v150 = *(v39 + 2);
          v149 = *(v39 + 3);
          v151 = v147;
          if (v150 >= v149 >> 1)
          {
            sub_8C2C8((v149 > 1), v150 + 1, 1);
            v151 = v147;
            v39 = v255;
          }

          *(v39 + 2) = v150 + 1;
          v152 = &v39[40 * v150];
          *(v152 + 4) = v42;
          *(v152 + 5) = v225;
          *(v152 + 6) = v221;
          *(v152 + 7) = v223;
          v152[64] = v151;
          v2 = v212;
          v38 = v185;
          v9 = v186;
          v37 = v201;
          v213 = v39;
          if (!v201)
          {
            goto LABEL_62;
          }

          continue;
        }

        break;
      }

      v237 = *v41;
      v238 = v225;
      v239 = v221;
      v240 = v223;
      v241 = v43;
      sub_988D8();
      sub_203C8(v42, v225, *&v221, *&v223, v43);
      TranscriptContentViewModel.ID.hash(into:)(&v247);
      v44 = sub_98918();
      v45 = v43;
      v46 = -1 << *(v30 + 32);
      v47 = v44 & ~v46;
      if (((*(v217 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_243;
      }

      v215 = ~v46;
      v216 = v43;
      while (2)
      {
        v53 = *(v30 + 48) + 40 * v47;
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = *(v53 + 16);
        v57 = *(v53 + 24);
        v58 = *(v53 + 32);
        v59 = v54;
        *&v247 = v54;
        *(&v247 + 1) = v55;
        v60 = v56;
        *&v248 = v56;
        *(&v248 + 1) = v57;
        v219 = v57;
        v249 = v58;
        v250 = v42;
        v251 = v225;
        v252 = v221;
        v253 = v223;
        v254 = v45;
        if (v58 <= 1)
        {
          if (v58)
          {
            if (v45 == 1)
            {
              if (v54 == v42 && v55 == v225)
              {

                sub_4C60(&v247, &qword_C52C0);
                goto LABEL_239;
              }

              v82 = v55;
              v83 = sub_98838();
              sub_203C8(v42, v225, *&v221, *&v223, 1u);
              sub_203C8(v59, v82, v60, v219, 1u);
              sub_4C60(&v247, &qword_C52C0);
              v30 = v214;
              if (v83)
              {
                v134 = v42;
                v136 = *&v223;
                v135 = v225;
                v137 = *&v221;
                v138 = 1;
LABEL_227:
                sub_20438(v134, v135, v137, v136, v138);
                v2 = v212;
                v39 = v213;
                v31 = v187;
                goto LABEL_240;
              }

              goto LABEL_72;
            }

            sub_203C8(v42, v225, *&v221, *&v223, v45);
            v48 = v59;
            v49 = v55;
            v50 = v60;
            v51 = v219;
            v52 = 1;
            goto LABEL_70;
          }

          if (v45)
          {
            sub_203C8(v42, v225, *&v221, *&v223, v45);
            v48 = v59;
            v49 = v55;
            v50 = v60;
            v51 = v219;
            v52 = 0;
            goto LABEL_70;
          }

          if (v54 == v42 && v55 == v225)
          {
            sub_203C8(v42, v225, *&v221, *&v223, 0);
            sub_203C8(v42, v225, v60, v219, 0);
            sub_4C60(&v247, &qword_C52C0);
            v88 = *&v60 == v221 && *&v219 == v223;
            v30 = v214;
            if (v88)
            {
LABEL_226:
              v134 = v42;
              v136 = *&v223;
              v135 = v225;
              v137 = *&v221;
              v138 = 0;
              goto LABEL_227;
            }
          }

          else
          {
            v85 = sub_98838();
            sub_203C8(v42, v225, *&v221, *&v223, 0);
            sub_203C8(v59, v55, v60, v219, 0);
            sub_4C60(&v247, &qword_C52C0);
            v30 = v214;
            if ((v85 & 1) != 0 && *&v60 == v221 && *&v219 == v223)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_72;
        }

        if (v58 != 2)
        {
          if (v58 == 3)
          {
            if (v45 == 3)
            {
              if (v54 == v42 && v55 == v225)
              {
                sub_203C8(v42, v225, *&v221, *&v223, 3u);
                sub_203C8(v42, v225, v60, v219, 3u);
                sub_4C60(&v247, &qword_C52C0);
                v87 = *&v60 == v221 && *&v219 == v223;
                v30 = v214;
                if (v87)
                {
LABEL_223:
                  v134 = v42;
                  v136 = *&v223;
                  v135 = v225;
                  v137 = *&v221;
                  v138 = 3;
                  goto LABEL_227;
                }
              }

              else
              {
                v62 = v55;
                v63 = sub_98838();
                sub_203C8(v42, v225, *&v221, *&v223, 3u);
                sub_203C8(v59, v62, v60, v219, 3u);
                sub_4C60(&v247, &qword_C52C0);
                v30 = v214;
                if ((v63 & 1) != 0 && *&v60 == v221 && *&v219 == v223)
                {
                  goto LABEL_223;
                }
              }

              goto LABEL_72;
            }

            sub_203C8(v42, v225, *&v221, *&v223, v45);
            v48 = v59;
            v49 = v55;
            v50 = v60;
            v51 = v219;
            v52 = 3;
LABEL_70:
            sub_203C8(v48, v49, v50, v51, v52);
            sub_4C60(&v247, &qword_C52C0);
LABEL_71:
            v30 = v214;
          }

          else
          {
            if (v45 != 4)
            {
              sub_203C8(v42, v225, *&v221, *&v223, v45);
              v48 = v59;
              v49 = v55;
              v50 = v60;
              v51 = v219;
              v52 = 4;
              goto LABEL_70;
            }

            if (v54 == v42 && v55 == v225)
            {
              sub_203C8(v42, v225, *&v221, *&v223, 4u);
              sub_203C8(v42, v225, v60, v219, 4u);
              sub_4C60(&v247, &qword_C52C0);
              v30 = v214;
              if (*&v60 == v221)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v79 = v55;
              v80 = sub_98838();
              sub_203C8(v42, v225, *&v221, *&v223, 4u);
              sub_203C8(v59, v79, v60, v219, 4u);
              sub_4C60(&v247, &qword_C52C0);
              v30 = v214;
              if ((v80 & 1) != 0 && *&v60 == v221)
              {
LABEL_224:
                v134 = v42;
                v136 = *&v223;
                v135 = v225;
                v137 = *&v221;
                v138 = 4;
                goto LABEL_227;
              }
            }
          }

LABEL_72:
          v47 = (v47 + 1) & v215;
          v45 = v216;
          if (((*(v217 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_243;
          }

          continue;
        }

        break;
      }

      if (v45 != 2)
      {
        sub_203C8(v42, v225, *&v221, *&v223, v45);
        v48 = v59;
        v49 = v55;
        v50 = v60;
        v51 = v219;
        v52 = 2;
        goto LABEL_70;
      }

      if (!v54)
      {
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(0, v55, v60, v219, 2u);
        sub_4C60(&v247, &qword_C52C0);
        if (!v42)
        {
          sub_20438(0, v225, *&v221, *&v223, 2u);
          goto LABEL_239;
        }

        goto LABEL_177;
      }

      if (!v42)
      {
        sub_203C8(0, v225, *&v221, *&v223, 2u);
        sub_203C8(0, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v55, v60, v219, 2u);
        v42 = 0;
        sub_203C8(0, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v55, v60, v219, 2u);
        sub_4C60(&v247, &qword_C52C0);
        goto LABEL_177;
      }

      v209 = v55;
      v65 = *(v54 + 24);
      v67 = *(v54 + 32);
      v66 = *(v54 + 40);
      v68 = *(v54 + 48);
      v70 = *(v42 + 16);
      v69 = *(v42 + 24);
      v72 = *(v42 + 32);
      v71 = *(v42 + 40);
      v73 = *(v42 + 48);
      v208 = *(v59 + 16);
      v237 = v208;
      v238 = v65;
      v239 = v67;
      v240 = v66;
      v241 = v68;
      v242 = v70;
      v243 = v69;
      v210 = v42;
      *&v211 = v72;
      v244 = v72;
      v245 = v71;
      v246 = v73;
      v199 = v65;
      v200 = *&v71;
      v197 = *&v67;
      v198 = *&v66;
      if (v68 <= 1)
      {
        if (v68)
        {
          if (v73 == 1)
          {
            if (v208 == v70 && v65 == v69)
            {
              sub_203C8(v59, v209, v60, v57, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v208, v199, v211, v200, 1u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v208, v199, v211, v200, 1u);
              sub_203C8(v208, v199, v197, v198, 1u);
              sub_4C60(&v237, &qword_C52C0);
              sub_4C60(&v247, &qword_C52C0);
              sub_20438(v42, v225, *&v221, *&v223, 2u);
              sub_20438(v59, v209, v60, v219, 2u);
              sub_20438(v59, v209, v60, v219, 2u);
              v139 = v208;
              v140 = v199;
              v141 = v211;
              v142 = v200;
              v143 = 1;
              goto LABEL_237;
            }

            v204 = v69;
            v188 = sub_98838();
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v204, v211, v200, 1u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v204, v211, v200, 1u);
            sub_203C8(v208, v199, v197, v198, 1u);
            sub_4C60(&v237, &qword_C52C0);
            sub_4C60(&v247, &qword_C52C0);
            sub_20438(v42, v225, *&v221, *&v223, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v70, v204, v211, v200, 1u);
            if (v188)
            {
              goto LABEL_238;
            }

            goto LABEL_176;
          }
        }

        else if (!v73)
        {
          v74 = v67;
          v75 = v66;
          v76 = v72;
          v77 = v71;
          if (v208 == v70 && v65 == v69)
          {
            sub_203C8(v59, v209, v60, v57, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v208, v199, v211, v200, 0);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v208, v199, v211, v200, 0);
            sub_203C8(v208, v199, v197, v198, 0);
            sub_4C60(&v237, &qword_C52C0);
            sub_4C60(&v247, &qword_C52C0);
            sub_20438(v42, v225, *&v221, *&v223, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v208, v199, v211, v200, 0);
          }

          else
          {
            v207 = v69;
            v192 = sub_98838();
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v207, v211, v200, 0);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v207, v211, v200, 0);
            sub_203C8(v208, v199, v197, v198, 0);
            sub_4C60(&v237, &qword_C52C0);
            sub_4C60(&v247, &qword_C52C0);
            sub_20438(v42, v225, *&v221, *&v223, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v70, v207, v211, v200, 0);
            if ((v192 & 1) == 0)
            {
              goto LABEL_176;
            }
          }

          goto LABEL_185;
        }

LABEL_173:
        v202 = v70;
        v203 = v69;
        v189 = v73;
        v184 = v68;
        sub_203C8(v59, v209, v60, v57, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, v189);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, v189);
        sub_203C8(v208, v199, v197, v198, v184);
        sub_4C60(&v237, &qword_C52C0);
        v109 = v209;
        sub_4C60(&v247, &qword_C52C0);
        v110 = v42;
        v111 = v225;
        v112 = *&v221;
        v113 = v211;
        v114 = *&v223;
        v115 = v200;
        goto LABEL_174;
      }

      if (v68 != 2)
      {
        if (v68 == 3)
        {
          if (v73 == 3)
          {
            v74 = v67;
            v75 = v66;
            v76 = v72;
            v77 = v71;
            if (v208 == v70 && v65 == v69)
            {
              sub_203C8(v59, v209, v60, v57, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v208, v199, v211, v200, 3u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v208, v199, v211, v200, 3u);
              sub_203C8(v208, v199, v197, v198, 3u);
              sub_4C60(&v237, &qword_C52C0);
              sub_4C60(&v247, &qword_C52C0);
              sub_20438(v42, v225, *&v221, *&v223, 2u);
              sub_20438(v59, v209, v60, v219, 2u);
              sub_20438(v59, v209, v60, v219, 2u);
              sub_20438(v208, v199, v211, v200, 3u);
              if (v74 != *&v211)
              {
                goto LABEL_176;
              }

LABEL_186:
              if (v75 == v77)
              {
                goto LABEL_238;
              }

LABEL_176:

LABEL_177:

              goto LABEL_71;
            }

            v205 = v69;
            v190 = sub_98838();
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v205, v211, v200, 3u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v205, v211, v200, 3u);
            sub_203C8(v208, v199, v197, v198, 3u);
            sub_4C60(&v237, &qword_C52C0);
            sub_4C60(&v247, &qword_C52C0);
            sub_20438(v42, v225, *&v221, *&v223, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v70, v205, v211, v200, 3u);
            if ((v190 & 1) == 0)
            {
              goto LABEL_176;
            }

LABEL_185:
            if (v74 != v76)
            {
              goto LABEL_176;
            }

            goto LABEL_186;
          }
        }

        else if (v73 == 4)
        {
          v75 = v67;
          v77 = v72;
          if (v208 == v70 && v65 == v69)
          {
            sub_203C8(v59, v209, v60, v57, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v208, v199, v211, v200, 4u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v208, v199, v211, v200, 4u);
            sub_203C8(v208, v199, v197, v198, 4u);
            sub_4C60(&v237, &qword_C52C0);
            sub_4C60(&v247, &qword_C52C0);
            sub_20438(v42, v225, *&v221, *&v223, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v208, v199, v211, v200, 4u);
            if (v75 == *&v211)
            {
              goto LABEL_238;
            }
          }

          else
          {
            v206 = v69;
            v191 = sub_98838();
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v206, v211, v200, 4u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v206, v211, v200, 4u);
            sub_203C8(v208, v199, v197, v198, 4u);
            sub_4C60(&v237, &qword_C52C0);
            sub_4C60(&v247, &qword_C52C0);
            sub_20438(v42, v225, *&v221, *&v223, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v59, v209, v60, v219, 2u);
            sub_20438(v70, v206, v211, v200, 4u);
            if (v191)
            {
              goto LABEL_186;
            }
          }

          goto LABEL_176;
        }

        goto LABEL_173;
      }

      if (v73 != 2)
      {
        goto LABEL_173;
      }

      v202 = v70;
      v203 = v69;
      if (!v208)
      {
        if (!v70)
        {
          v144 = *&v71;
          sub_203C8(v59, v209, v60, v57, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(0, v203, v211, v144, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          v145 = v200;
          sub_203C8(0, v203, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(0, v203, v211, v200, 2u);
          sub_4C60(&v237, &qword_C52C0);
          sub_20438(0, v203, v211, v200, 2u);
          sub_20438(0, v199, v197, v198, 2u);
          v109 = v209;
          sub_4C60(&v247, &qword_C52C0);
          v113 = v211;
          sub_20438(v42, v225, *&v221, *&v223, 2u);
          v146 = 0;
          goto LABEL_236;
        }

LABEL_188:
        v189 = 2;
        sub_203C8(v59, v209, v60, v57, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        v115 = v200;
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);

        sub_4C60(&v237, &qword_C52C0);
        sub_20438(v70, v203, v211, v200, 2u);
        sub_20438(v208, v199, v197, v198, 2u);
        v109 = v209;
        sub_4C60(&v247, &qword_C52C0);
        v113 = v211;
        sub_20438(v42, v225, *&v221, *&v223, 2u);
        goto LABEL_175;
      }

      if (!v70)
      {
        goto LABEL_188;
      }

      v89 = *(v208 + 16);
      v90 = *(v208 + 24);
      v91 = *(v208 + 32);
      v92 = *(v208 + 40);
      v93 = *(v208 + 48);
      v95 = *(v70 + 16);
      v94 = *(v70 + 24);
      v96 = *(v70 + 32);
      v97 = *(v70 + 40);
      v98 = *(v70 + 48);
      v230[0] = v89;
      v230[1] = v90;
      v230[2] = v91;
      v230[3] = v92;
      v181 = v97;
      v182 = v92;
      v231 = v93;
      v232 = v95;
      v233 = v94;
      v234 = v96;
      v235 = v97;
      v236 = v98;
      v179 = v91;
      v180 = v90;
      v183 = v96;
      v178 = v89;
      if (v93 <= 1)
      {
        if (!v93)
        {
          if (v98)
          {
            goto LABEL_209;
          }

          if (v89 != v95 || v90 != v94)
          {
            v171 = v95;
            v177 = v94;
            v194 = sub_98838();
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v203, v211, v200, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v203, v211, v200, 2u);
            v124 = v208;
            sub_203C8(v208, v199, v197, v198, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v203, v211, v200, 2u);
            v125 = v199;
            sub_203C8(v208, v199, v197, v198, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            v126 = v70;
            v127 = v203;
            sub_203C8(v70, v203, v211, v200, 2u);
            sub_203C8(v208, v199, v197, v198, 2u);
            sub_203C8(v171, v177, v183, v181, 0);
            v128 = v178;
            v129 = v179;
            v130 = v180;
            v106 = *&v179;
            v131 = v182;
            v132 = 0;
            goto LABEL_217;
          }

          sub_203C8(v59, v209, v60, v57, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          v99 = v208;
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          v100 = v199;
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          v101 = v70;
          v102 = v203;
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v178, v180, v183, v181, 0);
          v103 = v178;
          v104 = v180;
          v105 = v179;
          v106 = *&v179;
          v107 = v182;
          v108 = 0;
LABEL_194:
          sub_203C8(v103, v104, v105, v107, v108);
          sub_4C60(v230, &qword_C52C0);

          sub_4C60(&v237, &qword_C52C0);
          sub_20438(v101, v102, v211, v200, 2u);
          sub_20438(v99, v100, v197, v198, 2u);
          sub_4C60(&v247, &qword_C52C0);
LABEL_218:
          if (v106 != *&v183)
          {
LABEL_222:
            v189 = 2;
            v42 = v210;
            sub_20438(v210, v225, *&v221, *&v223, 2u);
            v109 = v209;
            v115 = v200;
            v113 = v211;
            goto LABEL_175;
          }

          v133 = *&v182 == *&v181;
          goto LABEL_220;
        }

        if (v98 != 1)
        {
          goto LABEL_209;
        }

        if (v89 == v95 && v90 == v94)
        {
          sub_203C8(v59, v209, v60, v57, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v178, v180, v183, v181, 1u);
          sub_203C8(v178, v180, v179, v182, 1u);
          sub_4C60(v230, &qword_C52C0);
          goto LABEL_233;
        }

        v173 = v94;
        v193 = sub_98838();
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v95, v173, v183, v181, 1u);
        sub_203C8(v178, v180, v179, v182, 1u);
        sub_4C60(v230, &qword_C52C0);

        sub_4C60(&v237, &qword_C52C0);
        sub_20438(v70, v203, v211, v200, 2u);
        v113 = v211;
        sub_20438(v208, v199, v197, v198, 2u);
        v109 = v209;
        sub_4C60(&v247, &qword_C52C0);
        if (v193)
        {
          goto LABEL_235;
        }

LABEL_221:
        v189 = 2;
        sub_20438(v42, v225, *&v221, *&v223, 2u);
        v115 = v200;
        goto LABEL_175;
      }

      if (v93 != 2)
      {
        if (v93 == 3)
        {
          if (v98 == 3)
          {
            if (v89 == v95 && v90 == v94)
            {
              sub_203C8(v59, v209, v60, v57, 2u);
              sub_203C8(v70, v203, v211, v200, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v70, v203, v211, v200, 2u);
              v99 = v208;
              sub_203C8(v208, v199, v197, v198, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              sub_203C8(v70, v203, v211, v200, 2u);
              v100 = v199;
              sub_203C8(v208, v199, v197, v198, 2u);
              sub_203C8(v42, v225, *&v221, *&v223, 2u);
              sub_203C8(v59, v209, v60, v219, 2u);
              v101 = v70;
              v102 = v203;
              sub_203C8(v70, v203, v211, v200, 2u);
              sub_203C8(v208, v199, v197, v198, 2u);
              sub_203C8(v178, v180, v183, v181, 3u);
              v103 = v178;
              v104 = v180;
              v105 = v179;
              v106 = *&v179;
              v107 = v182;
              v108 = 3;
              goto LABEL_194;
            }

            v170 = v95;
            v175 = v94;
            v194 = sub_98838();
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v203, v211, v200, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v203, v211, v200, 2u);
            v124 = v208;
            sub_203C8(v208, v199, v197, v198, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            sub_203C8(v70, v203, v211, v200, 2u);
            v125 = v199;
            sub_203C8(v208, v199, v197, v198, 2u);
            sub_203C8(v42, v225, *&v221, *&v223, 2u);
            sub_203C8(v59, v209, v60, v219, 2u);
            v126 = v70;
            v127 = v203;
            sub_203C8(v70, v203, v211, v200, 2u);
            sub_203C8(v208, v199, v197, v198, 2u);
            sub_203C8(v170, v175, v183, v181, 3u);
            v128 = v178;
            v129 = v179;
            v130 = v180;
            v106 = *&v179;
            v131 = v182;
            v132 = 3;
LABEL_217:
            sub_203C8(v128, v130, v129, v131, v132);
            sub_4C60(v230, &qword_C52C0);

            sub_4C60(&v237, &qword_C52C0);
            sub_20438(v126, v127, v211, v200, 2u);
            sub_20438(v124, v125, v197, v198, 2u);
            sub_4C60(&v247, &qword_C52C0);
            if (v194)
            {
              goto LABEL_218;
            }

            goto LABEL_222;
          }

LABEL_209:
          v189 = 2;
          v174 = v94;
          v123 = v69;
          v167 = v98;
          v168 = v93;
          sub_203C8(v59, v209, v60, v57, 2u);
          sub_203C8(v70, v123, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          v115 = v200;
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v95, v174, v183, v181, v167);
          sub_203C8(v178, v180, v179, v182, v168);
          sub_4C60(v230, &qword_C52C0);

          sub_4C60(&v237, &qword_C52C0);
          v113 = v211;
          sub_20438(v70, v203, v211, v200, 2u);
          sub_20438(v208, v199, v197, v198, 2u);
          v109 = v209;
          sub_4C60(&v247, &qword_C52C0);
          v110 = v42;
          v114 = *&v223;
          v111 = v225;
          v112 = *&v221;
LABEL_174:
          sub_20438(v110, v111, v112, v114, 2u);
LABEL_175:
          sub_20438(v59, v109, v60, v219, 2u);
          sub_20438(v59, v109, v60, v219, 2u);
          sub_20438(v202, v203, v113, v115, v189);
          goto LABEL_176;
        }

        if (v98 != 4)
        {
          goto LABEL_209;
        }

        if (v89 == v95 && v90 == v94)
        {
          sub_203C8(v59, v209, v60, v57, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v178, v180, v183, v181, 4u);
          v122 = *&v179;
          sub_203C8(v178, v180, v179, v182, 4u);
          sub_4C60(v230, &qword_C52C0);

          sub_4C60(&v237, &qword_C52C0);
          sub_20438(v70, v203, v211, v200, 2u);
          sub_20438(v208, v199, v197, v198, 2u);
          sub_4C60(&v247, &qword_C52C0);
        }

        else
        {
          v176 = v94;
          v195 = sub_98838();
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v95, v176, v183, v181, 4u);
          v122 = *&v179;
          sub_203C8(v178, v180, v179, v182, 4u);
          sub_4C60(v230, &qword_C52C0);

          sub_4C60(&v237, &qword_C52C0);
          sub_20438(v70, v203, v211, v200, 2u);
          sub_20438(v208, v199, v197, v198, 2u);
          sub_4C60(&v247, &qword_C52C0);
          if ((v195 & 1) == 0)
          {
            goto LABEL_222;
          }
        }

        v133 = v122 == *&v183;
LABEL_220:
        v109 = v209;
        v42 = v210;
        v113 = v211;
        if (v133)
        {
          goto LABEL_235;
        }

        goto LABEL_221;
      }

      if (v98 != 2)
      {
        goto LABEL_209;
      }

      v172 = v94;
      if (v89)
      {
        if (v95)
        {
          v116 = *(v89 + 48);
          v117 = *(v95 + 48);
          v118 = *(v89 + 32);
          v228[0] = *(v89 + 16);
          v228[1] = v118;
          v229 = v116;
          v119 = *(v95 + 32);
          v226[0] = *(v95 + 16);
          v226[1] = v119;
          v227 = v117;
          v169 = v95;
          sub_203C8(v59, v209, v60, v57, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v95, v172, v183, v181, 2u);
          sub_203C8(v178, v180, v179, v182, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v95, v172, v183, v181, 2u);
          sub_203C8(v178, v180, v179, v182, 2u);
          sub_203C8(v42, v225, *&v221, *&v223, 2u);
          v115 = v200;
          sub_203C8(v59, v209, v60, v219, 2u);
          sub_203C8(v70, v203, v211, v200, 2u);
          sub_203C8(v208, v199, v197, v198, 2u);
          sub_203C8(v95, v172, v183, v181, 2u);
          sub_203C8(v178, v180, v179, v182, 2u);
          v120 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(v228, v226);

          sub_4C60(v230, &qword_C52C0);
          sub_20438(v169, v172, v183, v181, 2u);
          sub_20438(v178, v180, v179, v182, 2u);

          sub_4C60(&v237, &qword_C52C0);
          v121 = v203;
          if (v120)
          {
            goto LABEL_234;
          }

          goto LABEL_215;
        }

LABEL_214:
        sub_203C8(v59, v209, v60, v57, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v95, v172, v183, v181, 2u);
        sub_203C8(v178, v180, v179, v182, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v95, v172, v183, v181, 2u);
        sub_203C8(v178, v180, v179, v182, 2u);
        sub_203C8(v42, v225, *&v221, *&v223, 2u);
        v115 = v200;
        sub_203C8(v59, v209, v60, v219, 2u);
        sub_203C8(v70, v203, v211, v200, 2u);
        sub_203C8(v208, v199, v197, v198, 2u);
        sub_203C8(v95, v172, v183, v181, 2u);
        sub_203C8(v178, v180, v179, v182, 2u);

        sub_4C60(v230, &qword_C52C0);
        sub_20438(v95, v172, v183, v181, 2u);
        sub_20438(v178, v180, v179, v182, 2u);

        sub_4C60(&v237, &qword_C52C0);
        v121 = v203;
LABEL_215:
        v189 = 2;
        v113 = v211;
        sub_20438(v70, v121, v211, v115, 2u);
        sub_20438(v208, v199, v197, v198, 2u);
        sub_4C60(&v247, &qword_C52C0);
        sub_20438(v42, v225, *&v221, *&v223, 2u);
        v109 = v209;
        goto LABEL_175;
      }

      if (v95)
      {
        goto LABEL_214;
      }

      sub_203C8(v59, v209, v60, v57, 2u);
      sub_203C8(v70, v203, v211, v200, 2u);
      sub_203C8(v42, v225, *&v221, *&v223, 2u);
      sub_203C8(v59, v209, v60, v219, 2u);
      sub_203C8(v70, v203, v211, v200, 2u);
      sub_203C8(v208, v199, v197, v198, 2u);
      sub_203C8(v42, v225, *&v221, *&v223, 2u);
      sub_203C8(v59, v209, v60, v219, 2u);
      sub_203C8(v70, v203, v211, v200, 2u);
      sub_203C8(v208, v199, v197, v198, 2u);
      sub_203C8(0, v172, v183, v181, 2u);
      sub_203C8(v42, v225, *&v221, *&v223, 2u);
      sub_203C8(v59, v209, v60, v219, 2u);
      sub_203C8(v70, v203, v211, v200, 2u);
      sub_203C8(v208, v199, v197, v198, 2u);
      sub_203C8(0, v172, v183, v181, 2u);
      sub_4C60(v230, &qword_C52C0);
      sub_20438(0, v172, v183, v181, 2u);
      sub_20438(0, v180, v179, v182, 2u);
LABEL_233:

      sub_4C60(&v237, &qword_C52C0);
      v115 = v200;
      v121 = v203;
LABEL_234:
      v113 = v211;
      sub_20438(v70, v121, v211, v115, 2u);
      sub_20438(v208, v199, v197, v198, 2u);
      sub_4C60(&v247, &qword_C52C0);
      v109 = v209;
LABEL_235:
      sub_20438(v42, v225, *&v221, *&v223, 2u);
      v145 = v200;
      v146 = v202;
LABEL_236:
      sub_20438(v59, v109, v60, v219, 2u);
      sub_20438(v59, v109, v60, v219, 2u);
      v139 = v146;
      v140 = v203;
      v141 = v113;
      v142 = v145;
      v143 = 2;
LABEL_237:
      sub_20438(v139, v140, v141, v142, v143);
LABEL_238:
      sub_20438(v42, v225, *&v221, *&v223, 2u);

LABEL_239:
      v2 = v212;
      v39 = v213;
      v31 = v187;
      v30 = v214;
LABEL_240:
      v38 = v185;
      v9 = v186;
      v37 = v201;
      if (v201)
      {
        continue;
      }

      break;
    }

LABEL_62:
    v40 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      v10 = sub_98778();
      continue;
    }

    break;
  }

  if (v40 < v38)
  {
    v37 = *(v9 + 8 * v40);
    ++v8;
    if (!v37)
    {
      goto LABEL_62;
    }

    v8 = v40;
    goto LABEL_66;
  }

  v153 = *(v39 + 2);
  if (v153)
  {
    v154 = 0;
    v155 = v39 + 32;
    v8 = &off_C2000;
    while (1)
    {
      if (v154 >= *(v39 + 2))
      {
        goto LABEL_267;
      }

      v157 = *v155;
      v158 = *(v155 + 1);
      v249 = v155[32];
      v247 = v157;
      v248 = v158;
      swift_beginAccess();
      v159 = *&v2[v31];
      if (!*(v159 + 16))
      {
        break;
      }

      sub_2051C(&v247, &v237);
      v160 = sub_741B8(&v247);
      if ((v161 & 1) == 0)
      {
        goto LABEL_258;
      }

      v9 = *(*(v159 + 56) + 8 * v160);
      swift_endAccess();
      [v9 removeFromSuperview];
LABEL_259:
      swift_beginAccess();
      v162 = sub_741B8(&v247);
      if (v163)
      {
        v9 = v162;
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v165 = *&v2[v31];
        v230[0] = v165;
        *&v2[v31] = 0x8000000000000000;
        if (!v164)
        {
          sub_756D8();
          v165 = v230[0];
        }

        v156 = *(v165 + 48) + 40 * v9;
        sub_20438(*v156, *(v156 + 8), *(v156 + 16), *(v156 + 24), *(v156 + 32));

        sub_75CA8(v9, v165);
        *&v2[v31] = v165;
      }

      ++v154;
      swift_endAccess();
      sub_20578(&v247);
      v155 += 40;
      v39 = v213;
      if (v153 == v154)
      {
        goto LABEL_262;
      }
    }

    sub_2051C(&v247, &v237);
LABEL_258:
    swift_endAccess();
    goto LABEL_259;
  }

LABEL_262:

  result = [v2 alpha];
  if (v166 != 1.0)
  {
    return sub_1E878();
  }

  return result;
}