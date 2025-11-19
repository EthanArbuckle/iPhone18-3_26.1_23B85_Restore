uint64_t sub_1B7546ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996ED8);
    v3 = sub_1B7801A28();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      sub_1B78022F8();
      sub_1B7800798();

      result = sub_1B7802368();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x6465766F72707061;
            }

            else
            {
              v14 = 0x676E69646E6570;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xE800000000000000;
            }

            else
            {
              v15 = 0xE700000000000000;
            }

            if (v6 > 1)
            {
LABEL_23:
              v16 = 0x656C6C65636E6163;
              if (v6 == 3)
              {
                v17 = 0xE900000000000064;
              }

              else
              {
                v16 = 0x64656C696166;
                v17 = 0xE600000000000000;
              }

              if (v6 == 2)
              {
                v18 = 0x6574656C706D6F63;
              }

              else
              {
                v18 = v16;
              }

              if (v6 == 2)
              {
                v19 = 0xE900000000000064;
              }

              else
              {
                v19 = v17;
              }

              if (v14 != v18)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0x6574656C706D6F63;
            v15 = 0xE900000000000064;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x656C6C65636E6163;
            }

            else
            {
              v14 = 0x64656C696166;
            }

            if (v13 == 3)
            {
              v15 = 0xE900000000000064;
            }

            else
            {
              v15 = 0xE600000000000000;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v19 = 0xE800000000000000;
            if (v14 != 0x6465766F72707061)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v19 = 0xE700000000000000;
            if (v14 != 0x676E69646E6570)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          if (v15 == v19)
          {

            goto LABEL_4;
          }

LABEL_40:
          v20 = sub_1B78020F8();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t _s10FinanceKit30ContentPackageHashesEnumeratorC29fileShouldBePresentInManifestySb6System8FilePathVFZ_0()
{
  v36 = sub_1B7800348();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EB8);
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EC0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = sub_1B7800378();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CA45D0](0x74736566696E616DLL, 0xED00006E6F736A2ELL);
  sub_1B75478A4(&qword_1EB996EC8, MEMORY[0x1E69E83A8]);
  v15 = sub_1B7800828();
  v16 = *(v12 + 8);
  v16(v14, v11);
  if (v15)
  {
    goto LABEL_3;
  }

  MEMORY[0x1B8CA45D0](0x727574616E676973, 0xE900000000000065);
  v17 = sub_1B7800828();
  v18 = (v16)(v14, v11);
  if (v17)
  {
    goto LABEL_3;
  }

  MEMORY[0x1B8CA45C0](v18);
  sub_1B7800308();
  v21 = v34;
  v22 = v36;
  (*(v34 + 56))(v8, 0, 1, v36);
  v23 = *(v1 + 48);
  v24 = v35;
  sub_1B7547834(v10, v35);
  sub_1B7547834(v8, v24 + v23);
  v25 = *(v21 + 48);
  if (v25(v24, 1, v22) != 1)
  {
    v26 = v33;
    sub_1B7547834(v24, v33);
    if (v25(v24 + v23, 1, v22) != 1)
    {
      v27 = v32;
      (*(v21 + 32))(v32, v24 + v23, v22);
      sub_1B75478A4(&qword_1EB996ED0, MEMORY[0x1E69E8380]);
      v28 = v26;
      v29 = sub_1B7800828();
      v30 = *(v21 + 8);
      v30(v27, v22);
      sub_1B7205418(v8, &qword_1EB996EC0);
      sub_1B7205418(v10, &qword_1EB996EC0);
      v30(v28, v22);
      sub_1B7205418(v24, &qword_1EB996EC0);
      v19 = v29 ^ 1;
      return v19 & 1;
    }

    sub_1B7205418(v8, &qword_1EB996EC0);
    sub_1B7205418(v10, &qword_1EB996EC0);
    (*(v21 + 8))(v26, v22);
    goto LABEL_10;
  }

  sub_1B7205418(v8, &qword_1EB996EC0);
  sub_1B7205418(v10, &qword_1EB996EC0);
  if (v25(v24 + v23, 1, v22) != 1)
  {
LABEL_10:
    sub_1B7205418(v24, &qword_1EB996EB8);
    v19 = 1;
    return v19 & 1;
  }

  sub_1B7205418(v24, &qword_1EB996EC0);
LABEL_3:
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for ContentPackageHashesEnumerator()
{
  result = qword_1EB996EA0;
  if (!qword_1EB996EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7547410()
{
  result = sub_1B77FF4F8();
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

void sub_1B75474F4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1B7801958())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901F8);
      v3 = sub_1B7801A28();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1B7801958();
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

  v3 = MEMORY[0x1E69E7CD0];
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
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1B8CA5DC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1B7801548();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1B7205540(0, &qword_1EB98F930);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1B7801558();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
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
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1B7801548();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1B7205540(0, &qword_1EB98F930);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1B7801558();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1B7547834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75478A4(unint64_t *a1, void (*a2)(uint64_t))
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

id ManagedTransaction.searchableItemAttributeSet(configuration:)(uint64_t a1)
{
  v2 = v1;
  v270 = a1;
  v3 = sub_1B78015B8();
  v283 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v277 = &v246[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v279 = &v246[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v281 = &v246[-v8];
  v282 = sub_1B77FF358();
  v280 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v278 = &v246[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B77FF718();
  v275 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v274 = &v246[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v273 = sub_1B77FF6B8();
  v272 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v271 = &v246[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v269 = sub_1B77FF748();
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v246[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v266 = &v246[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v265 = sub_1B77FFCF8();
  v263 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v264 = &v246[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v259 = sub_1B77FFC88();
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v260 = &v246[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1B77FFAF8();
  v290 = *(v18 - 8);
  v291 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v276 = &v246[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v289 = &v246[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v256 = &v246[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v253 = &v246[-v25];
  v250 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v250);
  v252 = &v246[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v262 = sub_1B77FF7D8();
  v261 = *(v262 - 8);
  v27 = MEMORY[0x1EEE9AC00](v262);
  v251 = &v246[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v254 = &v246[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v255 = &v246[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v257 = &v246[-v33];
  v288 = sub_1B77FF988();
  v292 = *(v288 - 8);
  v34 = MEMORY[0x1EEE9AC00](v288);
  v287 = &v246[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v286 = &v246[-v37];
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v246[-v38];
  v40 = sub_1B77FF4F8();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v246[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_1B7800838();
  v45 = [v2 valueForKeyPath_];

  if (v45)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v297 = 0u;
    v298 = 0u;
  }

  v294 = v297;
  v295 = v298;
  if (!*(&v298 + 1))
  {
    sub_1B726990C(&v294);
    return 0;
  }

  type metadata accessor for ManagedInternalTransaction();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v248 = v10;
  v46 = v296;
  v47 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v48 = sub_1B7800838();
  v49 = [v47 initWithItemContentType_];

  v50 = [v2 objectID];
  v51 = [v50 URIRepresentation];

  sub_1B77FF478();
  sub_1B77FF3B8();
  v52 = v40;
  v53 = v49;
  (*(v41 + 8))(v43, v52);
  v54 = sub_1B7800838();

  [v49 setIdentifier_];

  ManagedTransaction.displayDescription.getter();
  v55 = sub_1B7800838();

  [v49 setDisplayName_];

  v293 = v46;
  v56 = [v46 sourceValue];
  v284 = v2;
  v285 = v49;
  v57 = v288;
  v58 = v292;
  if (v56 != 1)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v59 = sub_1B78000B8();
    __swift_project_value_buffer(v59, qword_1EDAF65B0);
    v60 = v2;
    v61 = sub_1B7800098();
    v62 = sub_1B78011C8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v294 = v64;
      *v63 = 136315138;
      v65 = [v60 debugDescription];
      v66 = v3;
      v67 = sub_1B7800868();
      v69 = v68;

      v70 = v67;
      v3 = v66;
      v58 = v292;
      v71 = sub_1B71A3EF8(v70, v69, &v294);
      v2 = v284;

      *(v63 + 4) = v71;
      _os_log_impl(&dword_1B7198000, v61, v62, "Transaction %s is not bank connect, hiding from Spotlight", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1B8CA7A40](v64, -1, -1);
      v72 = v63;
      v53 = v285;
      MEMORY[0x1B8CA7A40](v72, -1, -1);
    }

    sub_1B7449284();
    v73 = sub_1B7801528();
    [v53 setDisableSearchInSpotlight_];
  }

  v249 = v3;
  v74 = [v293 accountObject];
  v75 = [v74 externalAccountId];

  if (!v75)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v76 = sub_1B78000B8();
    __swift_project_value_buffer(v76, qword_1EDAF65B0);
    v77 = v2;
    v78 = v293;
    v79 = sub_1B7800098();
    v80 = sub_1B78011C8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v292 = swift_slowAlloc();
      *&v294 = v292;
      *v81 = 136315394;
      v82 = [v77 debugDescription];
      v83 = sub_1B7800868();
      v247 = v80;
      v84 = v83;
      v86 = v85;

      v87 = sub_1B71A3EF8(v84, v86, &v294);
      v2 = v284;

      *(v81 + 4) = v87;
      *(v81 + 12) = 2080;
      v88 = [v78 accountObject];
      v89 = [v88 debugDescription];

      v90 = sub_1B7800868();
      v92 = v91;

      v93 = sub_1B71A3EF8(v90, v92, &v294);

      *(v81 + 14) = v93;
      _os_log_impl(&dword_1B7198000, v79, v247, "    Transaction %s is linked with an unconnected account     %s, hiding from Spotlight", v81, 0x16u);
      v94 = v292;
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v94, -1, -1);
      v95 = v81;
      v53 = v285;
      MEMORY[0x1B8CA7A40](v95, -1, -1);
    }

    sub_1B7449284();
    v75 = sub_1B7801528();
    [v53 setDisableSearchInSpotlight_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3F8);
  v96 = *(v58 + 72);
  v97 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1B7807CD0;
  v99 = [v2 transactionDate];
  sub_1B77FF928();

  v100 = *(v58 + 32);
  v100(v98 + v97, v39, v57);
  v101 = [v2 postedDate];
  if (v101)
  {
    v102 = v286;
    v103 = v101;
    sub_1B77FF928();

    (*(v58 + 16))(v287, v102, v57);
    v105 = *(v98 + 16);
    v104 = *(v98 + 24);
    if (v105 >= v104 >> 1)
    {
      v98 = sub_1B723F170(v104 > 1, v105 + 1, 1, v98);
    }

    (*(v58 + 8))(v286, v57);
    *(v98 + 16) = v105 + 1;
    v100(v98 + v97 + v105 * v96, v287, v57);
  }

  v106 = v58;
  v107 = sub_1B7800C18();

  v108 = v285;
  [v285 setImportantDates_];

  v109 = v284;
  v110 = [v284 transactionDate];
  sub_1B77FF928();

  v111 = sub_1B77FF8B8();
  v112 = *(v106 + 8);
  (v112)(v39, v57);
  [v108 setAddedDate_];

  v113 = [v109 transactionDate];
  sub_1B77FF928();

  v114 = sub_1B77FF8B8();
  v292 = v106 + 8;
  v287 = v112;
  (v112)(v39, v57);
  [v108 setContentCreationDate_];

  v115 = ManagedInternalTransaction.displayLocation.getter();
  if (v115)
  {
    v116 = v115;
    [v115 coordinate];
    v117 = sub_1B7800F48();
    [v108 setLatitude_];

    [v116 coordinate];
    v118 = sub_1B7800F48();
    [v108 setLongitude_];

    [v116 altitude];
    v119 = sub_1B7800F48();
    [v108 setAltitude_];
  }

  ManagedInternalTransaction.displayLocationName.getter();
  v120 = v109;
  if (v121)
  {
    v122 = sub_1B7800838();
  }

  else
  {
    v122 = 0;
  }

  [v108 setNamedLocation_];

  v124 = v252;
  sub_1B7519EB8(v270, v252);
  v125 = sub_1B77FF648();
  (*(*(v125 - 8) + 56))(v253, 1, 1, v125);
  v126 = sub_1B77FF628();
  (*(*(v126 - 8) + 56))(v256, 1, 1, v126);
  (*(v290 + 16))(v289, v124, v291);
  v127 = v250;
  (*(v258 + 16))(v260, &v124[*(v250 + 20)], v259);
  (*(v263 + 16))(v264, &v124[*(v127 + 24)], v265);
  sub_1B77FF368();
  v128 = v251;
  sub_1B77FF668();
  sub_1B75497B0(v124);
  v129 = v267;
  sub_1B77FF728();
  v130 = v254;
  sub_1B77FF698();
  (*(v268 + 8))(v129, v269);
  v131 = *(v261 + 8);
  v132 = v262;
  v131(v128, v262);
  v133 = v271;
  sub_1B77FF6A8();
  v134 = v255;
  sub_1B77FF658();
  (*(v272 + 8))(v133, v273);
  v131(v130, v132);
  v135 = v274;
  sub_1B77FF708();
  v136 = v257;
  sub_1B77FF688();
  (*(v275 + 8))(v135, v248);
  v131(v134, v132);
  v137 = v120;
  v138 = [v120 transactionDate];
  sub_1B77FF928();

  sub_1B77FF788();
  (v287)(v39, v288);
  v131(v136, v132);
  v139 = v285;
  v140 = sub_1B7800838();

  [v139 setContentDescription_];

  v141 = v293;
  v142 = [v293 insightsObject];
  if (v142)
  {
    v143 = v142;
    v144 = [v142 transactionIconObject];

    if (v144)
    {
      v145 = [v144 data];
      v146 = sub_1B77FF5B8();
      v148 = v147;

      v149 = sub_1B77FF598();
      sub_1B720A388(v146, v148);
      [v139 setThumbnailData_];

      v150 = [v137 managedObjectContext];
      if (v150)
      {
        v151 = v150;
        [v150 refreshObject:v144 mergeChanges:0];
      }

      v141 = v293;
    }
  }

  if (qword_1EB98EAE0 != -1)
  {
    swift_once();
  }

  v152 = qword_1EBA45988;
  if (qword_1EB98EAE8 != -1)
  {
    swift_once();
  }

  if (v152 && (v153 = qword_1EBA45990) != 0)
  {
    v154 = v152;
    v155 = v153;
    v156 = [v137 amount];
    [v139 setValue:v156 forCustomKey:v154];

    v157 = [v137 currency];
    v141 = v293;
    [v139 setValue:v157 forCustomKey:v155];
  }

  else
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v158 = sub_1B78000B8();
    __swift_project_value_buffer(v158, qword_1EDAF65B0);
    v157 = sub_1B7800098();
    v159 = sub_1B78011D8();
    if (os_log_type_enabled(v157, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&dword_1B7198000, v157, v159, "Failed to create amount and currencyCode CSCustomAttributeKeys", v160, 2u);
      MEMORY[0x1B8CA7A40](v160, -1, -1);
    }
  }

  v161 = [v141 applePayPrimaryAccountIdentifier];
  v162 = sub_1B7800838();
  [v139 setAttribute:v161 forKey:v162];

  ManagedTransaction.status.getter(&v294);
  v163 = TransactionStatus.localizedDescription.getter();
  v165 = v164;
  v166 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v168 = *(v166 + 2);
  v167 = *(v166 + 3);
  if (v168 >= v167 >> 1)
  {
    v166 = sub_1B723E180((v167 > 1), v168 + 1, 1, v166);
  }

  *(v166 + 2) = v168 + 1;
  v169 = &v166[16 * v168];
  *(v169 + 4) = v163;
  *(v169 + 5) = v165;
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v170 = qword_1EDAF93B0;
  v171 = sub_1B7800838();
  v172 = sub_1B7800838();
  v173 = sub_1B7800838();
  v174 = [v170 localizedStringForKey:v171 value:v172 table:v173];

  v175 = sub_1B7800868();
  v177 = v176;

  v179 = *(v166 + 2);
  v178 = *(v166 + 3);
  if (v179 >= v178 >> 1)
  {
    v166 = sub_1B723E180((v178 > 1), v179 + 1, 1, v166);
  }

  *(v166 + 2) = v179 + 1;
  v180 = &v166[16 * v179];
  *(v180 + 4) = v175;
  *(v180 + 5) = v177;
  v181 = sub_1B7800838();
  v182 = sub_1B7800838();
  v183 = sub_1B7800838();
  v184 = [v170 localizedStringForKey:v181 value:v182 table:v183];

  v185 = sub_1B7800868();
  v187 = v186;

  v189 = *(v166 + 2);
  v188 = *(v166 + 3);
  if (v189 >= v188 >> 1)
  {
    v166 = sub_1B723E180((v188 > 1), v189 + 1, 1, v166);
  }

  v190 = v284;
  v191 = v293;
  *(v166 + 2) = v189 + 1;
  v192 = &v166[16 * v189];
  *(v192 + 4) = v185;
  *(v192 + 5) = v187;
  TransactionType.init(rawValue:)([v190 transactionTypeValue]);
  if (v294 && v294 != 17)
  {
    TransactionType.init(rawValue:)([v190 transactionTypeValue]);
    v193 = v294;
    if (v294 == 17)
    {
      v193 = 0;
    }

    LOBYTE(v294) = v193;
    v194 = TransactionType.localizedDescription.getter();
    v197 = *(v166 + 2);
    v196 = *(v166 + 3);
    if (v197 >= v196 >> 1)
    {
      v243 = v194;
      v244 = v195;
      v245 = sub_1B723E180((v196 > 1), v197 + 1, 1, v166);
      v195 = v244;
      v166 = v245;
      v194 = v243;
    }

    *(v166 + 2) = v197 + 1;
    v198 = &v166[16 * v197];
    *(v198 + 4) = v194;
    *(v198 + 5) = v195;
  }

  v199 = [v191 transactionCategoryObject];
  if (v199 && (v200 = v199, ManagedTransactionCategory.transactionCategory.getter(&v294), v200, (v201 = v294) != 0))
  {
    if (v294 == 8)
    {
      v201 = 4;
    }
  }

  else
  {
    v201 = 9;
  }

  LOBYTE(v296) = v201;
  v202 = TransactionCategory.localizedDescription.getter();
  v205 = *(v166 + 2);
  v204 = *(v166 + 3);
  if (v205 >= v204 >> 1)
  {
    v237 = v202;
    v238 = v203;
    v239 = sub_1B723E180((v204 > 1), v205 + 1, 1, v166);
    v203 = v238;
    v166 = v239;
    v202 = v237;
  }

  *(v166 + 2) = v205 + 1;
  v206 = &v166[16 * v205];
  *(v206 + 4) = v202;
  *(v206 + 5) = v203;
  v207 = [v190 amount];
  [v207 decimalValue];
  v208 = v295;
  v209 = v294;

  v210 = [v190 currency];
  v211 = sub_1B7800868();
  v213 = v212;

  CurrencyAmount.init(_:currencyCode:)(v209, *(&v209 + 1), v208, v211, v213, &v294);
  v214 = v289;
  sub_1B77FFA68();
  v215 = v278;
  sub_1B77FF348();
  LODWORD(v292) = v295;
  v288 = *(&v294 + 1);

  sub_1B77FFA68();
  v216 = v277;
  sub_1B7801588();
  v217 = v279;
  sub_1B7801598();
  v218 = *(v283 + 8);
  v219 = v216;
  v220 = v249;
  v218(v219, v249);
  v221 = v281;
  sub_1B78015A8();
  v218(v217, v220);
  sub_1B72AA7E0();
  sub_1B78016C8();
  v218(v221, v220);
  v222 = v297;
  (*(v280 + 8))(v215, v282);
  (*(v290 + 8))(v214, v291);
  sub_1B721722C(&v294);
  v224 = *(v166 + 2);
  v223 = *(v166 + 3);
  if (v224 >= v223 >> 1)
  {
    v166 = sub_1B723E180((v223 > 1), v224 + 1, 1, v166);
  }

  v225 = v293;
  *(v166 + 2) = v224 + 1;
  *&v166[16 * v224 + 32] = v222;
  v226 = ManagedInternalTransaction.displayLocationName.getter();
  v228 = v284;
  if (v227)
  {
    v230 = *(v166 + 2);
    v229 = *(v166 + 3);
    v123 = v285;
    if (v230 >= v229 >> 1)
    {
      v240 = v226;
      v241 = v227;
      v242 = sub_1B723E180((v229 > 1), v230 + 1, 1, v166);
      v227 = v241;
      v123 = v285;
      v166 = v242;
      v226 = v240;
    }

    *(v166 + 2) = v230 + 1;
    v231 = &v166[16 * v230];
    *(v231 + 4) = v226;
    *(v231 + 5) = v227;
  }

  else
  {
    v123 = v285;
  }

  *&v297 = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  sub_1B78007C8();

  v232 = sub_1B7800838();

  [v123 setTextContent_];

  v233 = [v228 managedObjectContext];
  [v233 refreshObject:v228 mergeChanges:0];

  v234 = [v228 managedObjectContext];
  if (v234)
  {
    v235 = v234;
    [v234 refreshObject:v225 mergeChanges:0];
  }

  return v123;
}

uint64_t sub_1B75497B0(uint64_t a1)
{
  v2 = type metadata accessor for FormatterConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B7549810()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1B7800838();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:0 multiValued:0];

  qword_1EBA45988 = v2;
}

void sub_1B7549890()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);
  v1 = sub_1B7800838();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:0 multiValued:0];

  qword_1EBA45990 = v2;
}

void __swiftcall SpotlightUniqueIdentifier.init(bundleIdentifier:domainIdentifier:uniqueIdentifier:)(FinanceKit::SpotlightUniqueIdentifier *__return_ptr retstr, Swift::String bundleIdentifier, Swift::String_optional domainIdentifier, Swift::String uniqueIdentifier)
{
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->domainIdentifier = domainIdentifier;
  retstr->uniqueIdentifier = uniqueIdentifier;
}

uint64_t SpotlightUniqueIdentifier.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SpotlightUniqueIdentifier.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SpotlightUniqueIdentifier.domainIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SpotlightUniqueIdentifier.domainIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SpotlightUniqueIdentifier.uniqueIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SpotlightUniqueIdentifier.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SpotlightUniqueIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1B8CA4D30](v0[4], v0[5]);
  MEMORY[0x1B8CA4D30](8072573, 0xE300000000000000);
  MEMORY[0x1B8CA4D30](v1, v2);
  MEMORY[0x1B8CA4D30](125, 0xE100000000000000);
  result = 123;
  if (v4)
  {
    MEMORY[0x1B8CA4D30](v3, v4);
    MEMORY[0x1B8CA4D30](125, 0xE100000000000000);
    MEMORY[0x1B8CA4D30](31533, 0xE200000000000000);

    return 123;
  }

  return result;
}

uint64_t sub_1B7549BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B754A6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7549C08(uint64_t a1)
{
  v2 = sub_1B754A4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7549C44(uint64_t a1)
{
  v2 = sub_1B754A4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpotlightUniqueIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B754A4F0();
  sub_1B78023F8();
  v14 = 0;
  v9 = v11[5];
  sub_1B7801F78();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1B7801EF8();
  v12 = 2;
  sub_1B7801F78();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SpotlightUniqueIdentifier.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7800798();
}

uint64_t SpotlightUniqueIdentifier.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t SpotlightUniqueIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B754A4F0();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v24 = v9;
  v26 = 1;
  v12 = sub_1B7801D78();
  v14 = v13;
  v23 = v12;
  v25 = 2;
  v15 = sub_1B7801DF8();
  v18 = v17;
  v19 = *(v6 + 8);
  v22 = v15;
  v19(v8, v5);
  v20 = v23;
  *a2 = v24;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v22;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B754A1E0()
{
  v1 = *(v0 + 24);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B754A288()
{
  v1 = *(v0 + 24);
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7800798();
}

uint64_t sub_1B754A314()
{
  v1 = *(v0 + 24);
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit25SpotlightUniqueIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (sub_1B78020F8() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B754A4F0()
{
  result = qword_1EB996F18;
  if (!qword_1EB996F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996F18);
  }

  return result;
}

unint64_t sub_1B754A548()
{
  result = qword_1EDAFCB78;
  if (!qword_1EDAFCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFCB78);
  }

  return result;
}

unint64_t sub_1B754A5C0()
{
  result = qword_1EB996F28;
  if (!qword_1EB996F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996F28);
  }

  return result;
}

unint64_t sub_1B754A618()
{
  result = qword_1EB996F30;
  if (!qword_1EB996F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996F30);
  }

  return result;
}

unint64_t sub_1B754A670()
{
  result = qword_1EB996F38;
  if (!qword_1EB996F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996F38);
  }

  return result;
}

uint64_t sub_1B754A6C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B7874F00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B78846F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7884710 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SelectAccountsUIXPCService.__allocating_init()()
{
  v0 = type metadata accessor for SelectAccountsUIXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F40);
  (*(*(v4 - 8) + 56))(v2, 1, 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F48);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B754AB28(v2, v5 + *(*v5 + *MEMORY[0x1E69E6B68] + 16));
  *(v3 + 16) = v5;
  return v3;
}

uint64_t SelectAccountsUIXPCService.init()()
{
  v1 = type metadata accessor for SelectAccountsUIXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F40);
  (*(*(v4 - 8) + 56))(v3, 1, 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F48);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B754AB28(v3, v5 + *(*v5 + *MEMORY[0x1E69E6B68] + 16));
  *(v0 + 16) = v5;
  return v0;
}

uint64_t type metadata accessor for SelectAccountsUIXPCService.ContinuationState()
{
  result = qword_1EB996F50;
  if (!qword_1EB996F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B754AB28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectAccountsUIXPCService.ContinuationState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SelectAccountsUIXPCService.listenForResponse(continuation:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754ACE4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B754AC24(uint64_t a1, uint64_t a2)
{
  sub_1B754B858(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F40);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 2, v4);
}

uint64_t sub_1B754AD00(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for SelectAccountsUIXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F40);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  sub_1B754AB28(a1, v10);
  if ((*(v12 + 48))(v10, 2, v11))
  {
    sub_1B754B858(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17[0] = a2;
    if (a4)
    {
      v15 = a2;
      sub_1B7800CF8();
    }

    else
    {
      v17[1] = a3;
      sub_1B720A65C(a2);
      sub_1B7800D08();
    }

    (*(v12 + 8))(v14, v11);
  }

  return (*(v12 + 56))(a1, 2, 2, v11);
}

uint64_t SelectAccountsUIXPCService.updated(_:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___XPCAccountSelectionResult_value);
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  sub_1B720A65C(v2);
  os_unfair_lock_lock((v3 + v5));
  sub_1B754AFCC(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  return sub_1B720A6F0(v2);
}

Swift::Void __swiftcall SelectAccountsUIXPCService.cancelled()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754B8CC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

Swift::Void __swiftcall SelectAccountsUIXPCService.failed(with:)(NSError *with)
{
  v2 = *(v1 + 16);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B754B8CC(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

Swift::Void __swiftcall SelectAccountsUIXPCService.deactivated()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754B8CC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void SelectAccountsUIXPCService.invalidated(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754B8CC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t SelectAccountsUIXPCService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B754B534()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754B8CC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B754B5D4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754B8CC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B754B678()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B754B8B4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B754B78C()
{
  sub_1B754B7E4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B754B7E4()
{
  if (!qword_1EB996F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110);
    v0 = sub_1B7800D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB996F60);
    }
  }
}

uint64_t sub_1B754B858(uint64_t a1)
{
  v2 = type metadata accessor for SelectAccountsUIXPCService.ContinuationState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RelativeDayFormatter.format(_:now:)()
{
  v1 = sub_1B75CB95C(v0, sub_1B754BA48);
  v2 = sub_1B77FF8B8();
  v3 = [v1 stringFromDate_];

  v4 = sub_1B7800868();
  return v4;
}

void sub_1B754B98C(void *a1)
{
  [a1 setDateStyle_];
  [a1 setDoesRelativeDateFormatting_];
  type metadata accessor for FormatterConfiguration();
  v2 = sub_1B77FFBB8();
  [a1 setCalendar_];

  v3 = sub_1B77FFA58();
  [a1 setLocale_];
}

BOOL static RelativeDayFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B754BAC4(uint64_t a1)
{
  v2 = sub_1B754C948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B754BB00(uint64_t a1)
{
  v2 = sub_1B754C948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RelativeDayFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B754C948();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B754CC20(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RelativeDayFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B754CC20(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B754CC20(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B754CC20(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t RelativeDayFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B754CC20(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B754CC20(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B754CC20(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t RelativeDayFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F80);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RelativeDayFormatter();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B754C948();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B754CC20(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B754CA44(v11, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B754C9E8(v11);
}

void sub_1B754C1B0(uint64_t *a1@<X8>)
{
  v3 = sub_1B75CB95C(v1, sub_1B754CDA8);
  v4 = sub_1B77FF8B8();
  v5 = [v3 stringFromDate_];

  v6 = sub_1B7800868();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

uint64_t sub_1B754C258@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B77FF938();
  v15 = v1;
  v7 = sub_1B75CB95C(v1, sub_1B754CDA8);
  v8 = sub_1B77FF8B8();
  v9 = [v7 stringFromDate_];

  v10 = sub_1B7800868();
  v12 = v11;

  result = (*(v4 + 8))(v6, v3);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_1B754C3C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B754C948();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B754CC20(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B754C538()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B754CC20(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B754CC20(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B754CC20(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B754C688()
{
  sub_1B77FFAF8();
  sub_1B754CC20(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B754CC20(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B754CC20(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t sub_1B754C7C8()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B754CC20(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B754CC20(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B754CC20(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

id sub_1B754C914()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EB996F68 = result;
  return result;
}

unint64_t sub_1B754C948()
{
  result = qword_1EB996F78;
  if (!qword_1EB996F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996F78);
  }

  return result;
}

uint64_t type metadata accessor for RelativeDayFormatter()
{
  result = qword_1EB996FB0;
  if (!qword_1EB996FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B754C9E8(uint64_t a1)
{
  v2 = type metadata accessor for RelativeDayFormatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B754CA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativeDayFormatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B754CAA8(uint64_t a1)
{
  result = sub_1B754CC20(&qword_1EB996F88, type metadata accessor for RelativeDayFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B754CC20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B754CCA4()
{
  result = qword_1EB996FC0;
  if (!qword_1EB996FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996FC0);
  }

  return result;
}

unint64_t sub_1B754CCFC()
{
  result = qword_1EB996FC8;
  if (!qword_1EB996FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996FC8);
  }

  return result;
}

unint64_t sub_1B754CD54()
{
  result = qword_1EB996FD0;
  if (!qword_1EB996FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996FD0);
  }

  return result;
}

uint64_t ContentPackageReader.imageUrl(named:preferredScale:localization:preferUnlocalized:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v21 = a7;
  v14 = sub_1B77FF4F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v18 = *(v7 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v15 + 16))(v17, v7 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v14);
  v22 = v17;
  v23 = sub_1B738FB20;
  v24 = &v25;
  os_unfair_lock_lock((v18 + 24));
  sub_1B726A6E8((v18 + 16), v21);
  os_unfair_lock_unlock((v18 + 24));
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1B754CF48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v33 = a8;
  v32 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v29 - v17;
  if (!a1)
  {
    v22 = sub_1B77FF4F8();
    return (*(*(v22 - 8) + 56))(a9, 1, 1, v22);
  }

  v29[1] = a2;
  v30 = a6;
  v31 = a7;
  v19 = a1;

  sub_1B7800358();
  v20 = sub_1B7800348();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_1B7205418(v18, &qword_1EB996EC0);
LABEL_6:

    v26 = 0xE300000000000000;
    v24 = 6778480;
    goto LABEL_7;
  }

  v24 = sub_1B7800338();
  v26 = v25;
  (*(v21 + 8))(v18, v20);
  if (!v26)
  {
    goto LABEL_6;
  }

LABEL_7:
  v27 = v30;
  v28 = sub_1B754DD30(a3, a4, v32);
  ContentPackageReader.fileUrl(possibleNames:ext:bundle:localization:preferUnlocalized:)(v28, v24, v26, v19, v27, v31, v33 & 1, a9);
}

uint64_t ContentPackageReader.imageUrls(named:preferredScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1B77FF4F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = v4;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v13 = *(v4 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v10 + 16))(v12, v4 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v9);
  v16 = v12;
  v17 = sub_1B7262DC4;
  v18 = &v19;
  os_unfair_lock_lock((v13 + 24));
  sub_1B726A6E8((v13 + 16), a4);
  os_unfair_lock_unlock((v13 + 24));
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B754D2FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v98 = a5;
  v95 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EC0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v96 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v82 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v107 = (&v82 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v106 = (&v82 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v88 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v82 - v25;
  v109 = sub_1B77FF4F8();
  v27 = *(v109 - 8);
  v28 = MEMORY[0x1EEE9AC00](v109);
  v90 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v89 = &v82 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v105 = &v82 - v33;
  MEMORY[0x1EEE9AC00](v32);
  if (!a1)
  {
    *a6 = sub_1B7202854(MEMORY[0x1E69E7CC0]);
    type metadata accessor for LocalizedURLMap();
    return swift_storeEnumTagMultiPayload();
  }

  v84 = &v82 - v34;
  v85 = v26;
  v110 = a1;

  sub_1B7800358();
  v35 = sub_1B7800348();
  v36 = *(v35 - 8);
  v91 = *(v36 + 48);
  v92 = v36 + 48;
  v37 = v91(v15, 1, v35);
  v93 = v35;
  if (v37 == 1)
  {
    sub_1B7205418(v15, &qword_1EB996EC0);
  }

  else
  {
    v104 = sub_1B7800338();
    v40 = v39;
    (*(v36 + 8))(v15, v35);
    v108 = v40;
    if (v40)
    {
      goto LABEL_7;
    }
  }

  v104 = 6778480;

  v108 = 0xE300000000000000;
LABEL_7:
  v83 = v36;
  v86 = a6;
  v87 = v6;
  v102 = a3;
  v103 = a4;
  result = sub_1B754DD30(a3, a4, v98);
  v41 = result;
  v42 = *(result + 16);
  v97 = v27;
  v101 = v42;
  if (!v42)
  {
    v44 = MEMORY[0x1E69E7CC0];
    v53 = v109;
LABEL_22:

    if (*(v44 + 2))
    {
      v57 = v97;
      v58 = v88;
      (*(v97 + 16))(v88, &v44[(*(v97 + 80) + 32) & ~*(v97 + 80)], v53);
      v59 = 0;
      v60 = v85;
    }

    else
    {
      v59 = 1;
      v57 = v97;
      v60 = v85;
      v58 = v88;
    }

    (*(v57 + 56))(v58, v59, 1, v53);
    sub_1B726A728(v58, v60);
    v107 = *(v57 + 48);
    v108 = v57 + 48;
    v61 = v57;
    if (v107(v60, 1, v53) == 1)
    {
      sub_1B7205418(v60, &unk_1EB994C70);
      v62 = [v110 localizations];
      v63 = sub_1B7800C38();

      v64 = *(v63 + 16);
      v100 = v63;
      if (v64)
      {
        v105 = (v61 + 32);
        v106 = (v83 + 8);
        v104 = v61 + 16;
        v101 = (v61 + 8);
        v65 = (v63 + 40);
        v66 = MEMORY[0x1E69E7CC8];
        v67 = v96;
        v68 = v93;
        while (1)
        {
          v73 = *(v65 - 1);
          v72 = *v65;
          swift_bridgeObjectRetain_n();

          sub_1B7800358();
          if (v91(v67, 1, v68) == 1)
          {
            break;
          }

          v74 = sub_1B7800338();
          v76 = v75;
          (*v106)(v67, v68);
          if (!v76)
          {
            goto LABEL_33;
          }

LABEL_34:
          v77 = sub_1B754DD30(v102, v103, v98);
          v78 = v94;
          ContentPackageReader.fileUrl(possibleNames:ext:bundle:localization:preferUnlocalized:)(v77, v74, v76, v110, v73, v72, 0, v94);

          v79 = v109;
          if (v107(v78, 1, v109) == 1)
          {

            sub_1B7205418(v78, &unk_1EB994C70);
          }

          else
          {
            v69 = v89;
            (*v105)(v89, v78, v79);
            v70 = v90;
            (*v104)(v90, v69, v79);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v111 = v66;
            sub_1B7392814(v70, v73, v72, isUniquelyReferenced_nonNull_native);

            (*v101)(v69, v79);
            v66 = v111;
          }

          v67 = v96;
          v68 = v93;
          v65 += 2;
          if (!--v64)
          {
            goto LABEL_38;
          }
        }

        sub_1B7205418(v67, &qword_1EB996EC0);
LABEL_33:

        v76 = 0xE300000000000000;
        v74 = 6778480;
        goto LABEL_34;
      }

      v66 = MEMORY[0x1E69E7CC8];
LABEL_38:

      *v86 = v66;
      type metadata accessor for LocalizedURLMap();
    }

    else
    {

      v80 = *(v57 + 32);
      v81 = v84;
      v80(v84, v60, v53);
      v80(v86, v81, v53);
      type metadata accessor for LocalizedURLMap();
    }

    return swift_storeEnumTagMultiPayload();
  }

  v43 = 0;
  v99 = (v27 + 32);
  v100 = (v27 + 56);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = result + 40;
  while (v43 < *(v41 + 16))
  {

    v46 = sub_1B7800838();
    v47 = sub_1B7800838();
    v48 = [v110 URLForResource:v46 withExtension:v47 subdirectory:0 localization:0];

    if (v48)
    {
      v49 = v107;
      sub_1B77FF478();

      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v107;
    }

    v51 = v106;

    v52 = v50;
    v53 = v109;
    (*v100)(v49, v52, 1, v109);
    sub_1B726A728(v49, v51);
    if ((*(v27 + 48))(v51, 1, v53) == 1)
    {
      result = sub_1B7205418(v51, &unk_1EB994C70);
    }

    else
    {
      v54 = *v99;
      (*v99)(v105, v51, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1B723E714(0, *(v44 + 2) + 1, 1, v44);
      }

      v56 = *(v44 + 2);
      v55 = *(v44 + 3);
      if (v56 >= v55 >> 1)
      {
        v44 = sub_1B723E714(v55 > 1, v56 + 1, 1, v44);
      }

      *(v44 + 2) = v56 + 1;
      result = v54(&v44[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v56], v105, v53);
    }

    v43 = (v43 + 1);
    v45 += 16;
    if (v101 == v43)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B754DD30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_1B7800348();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1B7800358();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7205418(v8, &qword_1EB996EC0);
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v13 = sub_1B78000B8();
    __swift_project_value_buffer(v13, qword_1EDAF6550);

    v14 = sub_1B7800098();
    v15 = sub_1B78011D8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v62 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B71A3EF8(a1, a2, &v62);
      _os_log_impl(&dword_1B7198000, v14, v15, "Could not construct image path from %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v19 = sub_1B7800318();
    v21 = v20;
    v22 = 3;
    if (a3 < 3)
    {
      v22 = a3;
    }

    v23 = v22 & ~(v22 >> 63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B7807CD0;
    v24 = &unk_1F2F43A58 + 16 * v23;
    v25 = *(v24 + 4);
    v26 = *(v24 + 5);
    v62 = v19;
    v63 = v21;

    MEMORY[0x1B8CA4D30](v25, v26);

    v27 = v63;
    *(v18 + 32) = v62;
    *(v18 + 40) = v27;
    v61 = v19;
    if (a3 > 0)
    {
      v28 = qword_1F2F43A78;
      v29 = unk_1F2F43A80;
      v62 = v19;
      v63 = v21;

      MEMORY[0x1B8CA4D30](v28, v29);

      v30 = v62;
      v31 = v63;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        v18 = sub_1B723E180((v32 > 1), v33 + 1, 1, v18);
      }

      *(v18 + 16) = v33 + 1;
      v34 = v18 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v19 = v61;
    }

    if (a3 != 1)
    {
      v35 = qword_1F2F43A88;
      v36 = unk_1F2F43A90;
      v62 = v19;
      v63 = v21;

      MEMORY[0x1B8CA4D30](v35, v36);

      v37 = v62;
      v38 = v63;
      v40 = *(v18 + 16);
      v39 = *(v18 + 24);
      if (v40 >= v39 >> 1)
      {
        v18 = sub_1B723E180((v39 > 1), v40 + 1, 1, v18);
      }

      *(v18 + 16) = v40 + 1;
      v41 = v18 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      v19 = v61;
      if (a3 == 2)
      {
        goto LABEL_22;
      }
    }

    v42 = qword_1F2F43A98;
    v43 = unk_1F2F43AA0;
    v62 = v19;
    v63 = v21;

    MEMORY[0x1B8CA4D30](v42, v43);

    v44 = v62;
    v45 = v63;
    v47 = *(v18 + 16);
    v46 = *(v18 + 24);
    if (v47 >= v46 >> 1)
    {
      v18 = sub_1B723E180((v46 > 1), v47 + 1, 1, v18);
    }

    *(v18 + 16) = v47 + 1;
    v48 = v18 + 16 * v47;
    *(v48 + 32) = v44;
    *(v48 + 40) = v45;
    v19 = v61;
    if (a3 <= 2)
    {
LABEL_22:
      v49 = qword_1F2F43AA8;
      v50 = unk_1F2F43AB0;
      v62 = v19;
      v63 = v21;

      MEMORY[0x1B8CA4D30](v49, v50);

      v51 = v62;
      v52 = v63;
      v54 = *(v18 + 16);
      v53 = *(v18 + 24);
      if (v54 >= v53 >> 1)
      {
        v18 = sub_1B723E180((v53 > 1), v54 + 1, 1, v18);
      }

      *(v18 + 16) = v54 + 1;
      v55 = v18 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      v19 = v61;
    }

    v57 = *(v18 + 16);
    v56 = *(v18 + 24);
    if (v57 >= v56 >> 1)
    {
      v18 = sub_1B723E180((v56 > 1), v57 + 1, 1, v18);
    }

    (*(v10 + 8))(v12, v9);
    *(v18 + 16) = v57 + 1;
    v58 = v18 + 16 * v57;
    *(v58 + 32) = v19;
    *(v58 + 40) = v21;
  }

  return v18;
}

uint64_t sub_1B754E340(uint64_t a1)
{
  v2 = sub_1B754FFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B754E37C(uint64_t a1)
{
  v2 = sub_1B754FFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B754E3B8()
{
  v1 = 1851876211;
  if (*v0 != 1)
  {
    v1 = 1851875945;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6841185;
  }
}

uint64_t sub_1B754E400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7550048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B754E428(uint64_t a1)
{
  v2 = sub_1B754FEA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B754E464(uint64_t a1)
{
  v2 = sub_1B754FEA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B754E4A0(uint64_t a1)
{
  v2 = sub_1B754FEF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B754E4DC(uint64_t a1)
{
  v2 = sub_1B754FEF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B754E518(uint64_t a1)
{
  v2 = sub_1B754FF4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B754E554(uint64_t a1)
{
  v2 = sub_1B754FF4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountPaymentInformation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996FD8);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996FE0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996FE8);
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996FF0);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = v1[1];
  v34 = *v1;
  v35 = v14;
  v15 = v1[2];
  v27[1] = v1[3];
  v27[2] = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B754FEA4();
  sub_1B78023F8();
  if (v16)
  {
    if (v16 == 1)
    {
      v44 = 1;
      sub_1B754FF4C();
      v17 = v38;
      sub_1B7801ED8();
      v43 = 0;
      v18 = v31;
      v19 = v36;
      sub_1B7801F78();
      if (v19)
      {
        (*(v30 + 8))(v7, v18);
        return (*(v37 + 8))(v13, v17);
      }

      v42 = 1;
      sub_1B7801F78();
      v24 = *(v30 + 8);
      v25 = v7;
    }

    else
    {
      v45 = 2;
      sub_1B754FEF8();
      v23 = v29;
      v17 = v38;
      sub_1B7801ED8();
      v18 = v33;
      sub_1B7801F78();
      v24 = *(v32 + 8);
      v25 = v23;
    }

    v24(v25, v18);
    return (*(v37 + 8))(v13, v17);
  }

  v20 = v28;
  v41 = 0;
  sub_1B754FFA0();
  v21 = v38;
  sub_1B7801ED8();
  v40 = 0;
  v22 = v36;
  sub_1B7801F78();
  if (!v22)
  {
    v39 = 1;
    sub_1B7801F78();
  }

  (*(v20 + 8))(v10, v8);
  return (*(v37 + 8))(v13, v21);
}

uint64_t AccountPaymentInformation.hash(into:)()
{
  if (!*(v0 + 32))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x1B8CA6620](v1);
    sub_1B7800798();
    goto LABEL_7;
  }

  MEMORY[0x1B8CA6620](2);
LABEL_7:

  return sub_1B7800798();
}

uint64_t AccountPaymentInformation.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1B78022F8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B8CA6620](2);
      goto LABEL_7;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8CA6620](v2);
  sub_1B7800798();
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t AccountPaymentInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997018);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v47 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997020);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997028);
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997030);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B754FEA4();
  v15 = v55;
  sub_1B78023C8();
  if (!v15)
  {
    v16 = v54;
    v55 = v11;
    v17 = sub_1B7801E98();
    v18 = (2 * *(v17 + 16)) | 1;
    v57 = v17;
    v58 = v17 + 32;
    v59 = 0;
    v60 = v18;
    v19 = sub_1B721CE54();
    if (v19 == 3 || v59 != v60 >> 1)
    {
      v23 = sub_1B7801B18();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v25 = &type metadata for AccountPaymentInformation;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v55 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          v62 = 1;
          sub_1B754FF4C();
          v20 = v6;
          sub_1B7801D38();
          v21 = v55;
          v62 = 0;
          v22 = v49;
          v51 = sub_1B7801DF8();
          v34 = v33;
          v62 = 1;
          v54 = sub_1B7801DF8();
          v39 = v20;
          v41 = v40;
          (*(v52 + 8))(v39, v22);
          (*(v21 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v42 = v53;
          v43 = v34;
          v44 = v51;
          v45 = v41;
        }

        else
        {
          v62 = 2;
          sub_1B754FEF8();
          v30 = v16;
          sub_1B7801D38();
          v42 = v53;
          v31 = v55;
          v32 = v51;
          v44 = sub_1B7801DF8();
          v43 = v38;
          (*(v50 + 8))(v30, v32);
          (*(v31 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v54 = 0;
          v45 = 0;
        }
      }

      else
      {
        v62 = 0;
        sub_1B754FFA0();
        v27 = v9;
        sub_1B7801D38();
        v62 = 0;
        v28 = v7;
        v29 = sub_1B7801DF8();
        v43 = v35;
        v36 = v29;
        v52 = v10;
        v62 = 1;
        v54 = sub_1B7801DF8();
        v37 = (v55 + 8);
        v45 = v46;
        (*(v48 + 8))(v27, v28);
        (*v37)(v13, v52);
        swift_unknownObjectRelease();
        v42 = v53;
        v44 = v36;
      }

      *v42 = v44;
      *(v42 + 8) = v43;
      *(v42 + 16) = v54;
      *(v42 + 24) = v45;
      *(v42 + 32) = v61;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1B754F300()
{
  v1 = *(v0 + 32);
  sub_1B78022F8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B8CA6620](2);
      goto LABEL_7;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8CA6620](v2);
  sub_1B7800798();
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B754F3B4()
{
  if (!*(v0 + 32))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x1B8CA6620](v1);
    sub_1B7800798();
    goto LABEL_7;
  }

  MEMORY[0x1B8CA6620](2);
LABEL_7:

  return sub_1B7800798();
}

uint64_t sub_1B754F458()
{
  v1 = *(v0 + 32);
  sub_1B78022F8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B8CA6620](2);
      goto LABEL_7;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8CA6620](v2);
  sub_1B7800798();
LABEL_7:
  sub_1B7800798();
  return sub_1B7802368();
}

id AccountPaymentInformation.fkPaymentInformation.getter()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      v7 = objc_allocWithZone(FKAccountPaymentInformation);
      v3 = sub_1B7800838();
      v6 = [v7 initWithIBAN_];
      goto LABEL_7;
    }

    v1 = objc_allocWithZone(FKAccountPaymentInformation);
    v2 = sub_1B7800838();
    v3 = sub_1B7800838();
    v4 = [v1 initWithAccountNumber:v2 sortCode:v3];
  }

  else
  {
    v5 = objc_allocWithZone(FKAccountPaymentInformation);
    v2 = sub_1B7800838();
    v3 = sub_1B7800838();
    v4 = [v5 initWithAccountNumber:v2 routingNumber:v3];
  }

  v6 = v4;

LABEL_7:
  return v6;
}

uint64_t static AccountPaymentInformation.open(combined:using:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B77FE8B8();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7800558();
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B78000B8();
  v42 = __swift_project_value_buffer(v11, qword_1EDAF65B0);
  v12 = sub_1B7800098();
  v13 = sub_1B78011B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7198000, v12, v13, "Decrypting account payment information.", v14, 2u);
    v3 = v2;
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

  sub_1B720ABEC(a1, a2);
  sub_1B77506AC(a1, a2);
  if (v3)
  {
    v15 = v3;
    v16 = sub_1B7800098();
    v17 = sub_1B78011D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1B7198000, v16, v17, "Failed decrypting account payment information. Error: %@", v18, 0xCu);
      sub_1B7205418(v19, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v19, -1, -1);
      MEMORY[0x1B8CA7A40](v18, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v23 = sub_1B7800508();
    v25 = v24;
    (*(v41 + 8))(v10, v8);
    sub_1B720ABEC(v23, v25);
    v26 = sub_1B7800098();
    v27 = sub_1B78011B8();
    sub_1B720A388(v23, v25);
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136315138;
      sub_1B720ABEC(v23, v25);
      v31 = sub_1B77FF528();
      v33 = v32;
      sub_1B720A388(v23, v25);
      v34 = sub_1B71A3EF8(v31, v33, &v43);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1B7198000, v26, v27, "Decrypted account payment information. Decoding [AccountPaymentInformation] from %s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1B8CA7A40](v30, -1, -1);
      MEMORY[0x1B8CA7A40](v29, -1, -1);
    }

    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v35 = v40;
    v36 = __swift_project_value_buffer(v40, qword_1EB991BC8);
    (*(v39 + 16))(v38, v36, v35);
    sub_1B77FE8C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997038);
    sub_1B7550BF0(&qword_1EB997040, sub_1B754FFF4);
    sub_1B77FE8D8();
    sub_1B720A388(v23, v25);

    return v43;
  }
}

uint64_t _s10FinanceKit25AccountPaymentInformationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  LODWORD(v6) = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v29[0] = *a1;
  v29[1] = v3;
  v29[2] = v4;
  v29[3] = v5;
  v30 = v6;
  v31 = v8;
  v32 = v7;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  if (v6)
  {
    if (v6 == 1)
    {
      if (v11 == 1)
      {
        if (v2 == v8 && v3 == v7 || (v12 = v9, v13 = v10, v14 = sub_1B78020F8(), v9 = v12, v10 = v13, (v14 & 1) != 0))
        {
          if (v4 != v9 || v5 != v10)
          {
            v26 = v9;
            v27 = v10;
            v20 = sub_1B78020F8();
            LOBYTE(v6) = 1;
            sub_1B7550CBC(v8, v7, v26, v27, 1u);
            goto LABEL_25;
          }

          LOBYTE(v6) = 1;
          v15 = v8;
          v16 = v7;
          v9 = v4;
          v10 = v5;
          v17 = 1;
LABEL_21:
          sub_1B7550CBC(v15, v16, v9, v10, v17);
          v20 = 1;
          goto LABEL_25;
        }

        LOBYTE(v6) = 1;
        v21 = v8;
        v22 = v7;
        LOBYTE(v11) = 1;
        goto LABEL_23;
      }
    }

    else if (v11 == 2)
    {
      if (v2 != v8 || v3 != v7)
      {
        v24 = v9;
        v25 = v10;
        v20 = sub_1B78020F8();
        LOBYTE(v6) = 2;
        sub_1B7550CBC(v8, v7, v24, v25, 2u);
        goto LABEL_25;
      }

      LOBYTE(v6) = 2;
      v15 = v2;
      v16 = v3;
      v17 = 2;
      goto LABEL_21;
    }

LABEL_22:
    v21 = v8;
    v22 = v7;
LABEL_23:
    sub_1B7550CBC(v21, v22, v9, v10, v11);
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  if (v11)
  {
    goto LABEL_22;
  }

  if (v2 != v8 || v3 != v7)
  {
    v6 = v9;
    v18 = v10;
    v19 = sub_1B78020F8();
    v9 = v6;
    v10 = v18;
    if ((v19 & 1) == 0)
    {
      sub_1B7550CBC(v8, v7, v6, v18, 0);
      LOBYTE(v6) = 0;
      goto LABEL_24;
    }
  }

  if (v4 == v9 && v5 == v10)
  {
    sub_1B7550CBC(v8, v7, v4, v5, 0);
    LOBYTE(v6) = 0;
    v20 = 1;
  }

  else
  {
    v6 = v9;
    v28 = v10;
    v20 = sub_1B78020F8();
    sub_1B7550CBC(v8, v7, v6, v28, 0);
    LOBYTE(v6) = 0;
  }

LABEL_25:
  sub_1B7550CBC(v2, v3, v4, v5, v6);
  sub_1B7205418(v29, &qword_1EB9970D0);
  return v20 & 1;
}

unint64_t sub_1B754FEA4()
{
  result = qword_1EB996FF8;
  if (!qword_1EB996FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996FF8);
  }

  return result;
}

unint64_t sub_1B754FEF8()
{
  result = qword_1EB997000;
  if (!qword_1EB997000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997000);
  }

  return result;
}

unint64_t sub_1B754FF4C()
{
  result = qword_1EB997008;
  if (!qword_1EB997008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997008);
  }

  return result;
}

unint64_t sub_1B754FFA0()
{
  result = qword_1EB997010;
  if (!qword_1EB997010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997010);
  }

  return result;
}

unint64_t sub_1B754FFF4()
{
  result = qword_1EB997048;
  if (!qword_1EB997048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997048);
  }

  return result;
}

uint64_t sub_1B7550048(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6841185 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1851876211 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851875945 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B755015C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9970B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_1B7800558();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FE968();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1B78000B8();
  __swift_project_value_buffer(v13, qword_1EDAF65B0);
  v14 = sub_1B7800098();
  v15 = sub_1B78011B8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v10;
    v17 = v7;
    v18 = v8;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1B7198000, v14, v15, "Encoding account payment information.", v16, 2u);
    v20 = v19;
    v8 = v18;
    v7 = v17;
    v3 = v2;
    v10 = v35;
    MEMORY[0x1B8CA7A40](v20, -1, -1);
  }

  sub_1B77FE9B8();
  swift_allocObject();
  v21 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_1EB991BE8);
  (*(v41 + 16))(v12, v22, v10);
  sub_1B77FE988();
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997038);
  sub_1B7550BF0(&qword_1EB9970C0, sub_1B7550C68);
  v23 = v3;
  v24 = sub_1B77FE998();
  v26 = v25;

  if (v23)
  {
    return v21;
  }

  v27 = sub_1B7800098();
  v28 = sub_1B78011B8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B7198000, v27, v28, "Encrypting account payment information.", v29, 2u);
    MEMORY[0x1B8CA7A40](v29, -1, -1);
  }

  v39 = v24;
  v40 = v26;
  v30 = sub_1B7800528();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  sub_1B736E424();
  v31 = v37;
  sub_1B7800518();
  sub_1B7205418(v7, &qword_1EB9970B8);
  v21 = sub_1B7800538();
  v34 = v33;
  result = (*(v36 + 8))(v31, v8);
  if (v34 >> 60 != 15)
  {
    sub_1B720A388(v24, v26);
    return v21;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7550720()
{
  result = qword_1EB997050;
  if (!qword_1EB997050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997050);
  }

  return result;
}

unint64_t sub_1B75507D4()
{
  result = qword_1EB997058;
  if (!qword_1EB997058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997058);
  }

  return result;
}

unint64_t sub_1B755082C()
{
  result = qword_1EB997060;
  if (!qword_1EB997060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997060);
  }

  return result;
}

unint64_t sub_1B7550884()
{
  result = qword_1EB997068;
  if (!qword_1EB997068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997068);
  }

  return result;
}

unint64_t sub_1B75508DC()
{
  result = qword_1EB997070;
  if (!qword_1EB997070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997070);
  }

  return result;
}

unint64_t sub_1B7550934()
{
  result = qword_1EB997078;
  if (!qword_1EB997078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997078);
  }

  return result;
}

unint64_t sub_1B755098C()
{
  result = qword_1EB997080;
  if (!qword_1EB997080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997080);
  }

  return result;
}

unint64_t sub_1B75509E4()
{
  result = qword_1EB997088;
  if (!qword_1EB997088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997088);
  }

  return result;
}

unint64_t sub_1B7550A3C()
{
  result = qword_1EB997090;
  if (!qword_1EB997090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997090);
  }

  return result;
}

unint64_t sub_1B7550A94()
{
  result = qword_1EB997098;
  if (!qword_1EB997098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997098);
  }

  return result;
}

unint64_t sub_1B7550AEC()
{
  result = qword_1EB9970A0;
  if (!qword_1EB9970A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9970A0);
  }

  return result;
}

unint64_t sub_1B7550B44()
{
  result = qword_1EB9970A8;
  if (!qword_1EB9970A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9970A8);
  }

  return result;
}

unint64_t sub_1B7550B9C()
{
  result = qword_1EB9970B0;
  if (!qword_1EB9970B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9970B0);
  }

  return result;
}

uint64_t sub_1B7550BF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB997038);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7550C68()
{
  result = qword_1EB9970C8;
  if (!qword_1EB9970C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9970C8);
  }

  return result;
}

uint64_t sub_1B7550CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

void ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(void *a1, uint64_t a2)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = [a1 sharedId];
  if (v13)
  {
    v25 = v2;
    v14 = v13;
    sub_1B77FF9E8();

    (*(v7 + 32))(v12, v10, v6);
    v27 = type metadata accessor for ManagedInternalTransaction();
    v26.receiver = swift_getObjCClassFromMetadata();
    v26.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v15 = objc_msgSendSuper2(&v26, sel_fetchRequest);
    v16 = sub_1B7800C18();
    [v15 setRelationshipKeyPathsForPrefetching_];

    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    v18 = sub_1B77FF9B8();
    *(v17 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
    *(v17 + 64) = sub_1B726E47C();
    *(v17 + 32) = v18;
    v19 = sub_1B78010E8();
    [v15 setPredicate_];

    v20 = sub_1B7801498();
    if (v3)
    {
      (*(v7 + 8))(v12, v6);

      return;
    }

    v24 = sub_1B723B490(v20);

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B780B190;
    *(inited + 32) = a1;
    v22 = a1;
    sub_1B7545E30(inited);
    v24 = v23;
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  sub_1B755109C(v24, a2);
}

void sub_1B755109C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v63 = sub_1B77FFA18();
  v4 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_1B7801908();
    type metadata accessor for ManagedInternalTransaction();
    sub_1B7551F0C(&qword_1EB990048, type metadata accessor for ManagedInternalTransaction);
    sub_1B7800FE8();
    a1 = v70[2];
    v7 = v70[3];
    v8 = v70[4];
    v9 = v70[5];
    v10 = v70[6];
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v61 = (v4 + 8);
  *&v6 = 136315650;
  v60 = v6;
  v65 = v7;
  v66 = a1;
  v68 = v14;
  while (1)
  {
    if (a1 < 0)
    {
      v20 = sub_1B7801988();
      if (!v20 || (v71 = v20, type metadata accessor for ManagedInternalTransaction(), swift_dynamicCast(), v19 = v70[0], v17 = v9, v18 = v10, !v70[0]))
      {
LABEL_48:
        sub_1B71B7B58();
        return;
      }

      goto LABEL_18;
    }

    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_48;
    }

LABEL_18:
    v2 = [v19 accountObject];
    v21 = [v2 originTypeValue];

    if (v21 > 4)
    {
      goto LABEL_51;
    }

    if (byte_1F2F40E38 == v21 || byte_1F2F40E39 == v21)
    {
      v23 = [v19 transactionCategoryObject];
      if (v23)
      {
        v2 = v23;
        TransactionCategory.init(rawValue:)([v23 rawValue]);
        v24 = LOBYTE(v70[0]);
        if (LOBYTE(v70[0]) == 13)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v24 = 13;
      }

      ManagedTransactionCategoryImporter.transactionCategory(for:)(v19, v70);
      v28 = LOBYTE(v70[0]);
      v2 = type metadata accessor for ManagedTransactionCategory();
      LOBYTE(v70[0]) = v28;
      v29 = v69;
      v30 = static ManagedTransactionCategory.existingTransactionCategory(for:in:)(v70);
      v69 = v29;
      if (v29)
      {
        sub_1B71B7B58();

        return;
      }

      v31 = v30;
      if (!v30)
      {
        v32 = objc_allocWithZone(v2);
        v31 = [v32 initWithContext_];
        [v31 setRawValue_];
      }

      [v19 setTransactionCategoryObject_];

      if (v24 != 13 && v28 != 13 && v24 == v28)
      {

        goto LABEL_45;
      }

      v33 = [v19 publicTransactionObject];
      [v33 setSpotlightGeneration_];

      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v34 = sub_1B78000B8();
      __swift_project_value_buffer(v34, qword_1EDAFAF58);
      v2 = v19;
      v35 = sub_1B7800098();
      v36 = sub_1B78011F8();

      if (os_log_type_enabled(v35, v36))
      {
        v57 = v36;
        v58 = v35;
        v37 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70[0] = v56;
        *v37 = v60;
        v59 = v2;
        v38 = [v2 publicTransactionObject];
        v39 = [v38 id];

        v40 = v62;
        sub_1B77FF9E8();

        sub_1B7551F0C(&qword_1EB98F120, MEMORY[0x1E69695A8]);
        v41 = v63;
        v42 = sub_1B7802068();
        v44 = v43;
        (*v61)(v40, v41);
        v45 = sub_1B71A3EF8(v42, v44, v70);

        *(v37 + 4) = v45;
        *(v37 + 12) = 2080;
        if (v24 == 13)
        {
          v48 = 0xE600000000000000;
          v46 = 0x3E656E6F6E3CLL;
        }

        else
        {
          LOBYTE(v71) = v24;
          v46 = TransactionCategory.localizedDescription.getter();
          v48 = v47;
        }

        v7 = v65;
        v49 = v57;
        v50 = sub_1B71A3EF8(v46, v48, v70);

        *(v37 + 14) = v50;
        *(v37 + 22) = 2080;
        LOBYTE(v71) = v28;
        v51 = TransactionCategory.localizedDescription.getter();
        v53 = sub_1B71A3EF8(v51, v52, v70);

        *(v37 + 24) = v53;
        v54 = v58;
        _os_log_impl(&dword_1B7198000, v58, v49, "Updated transactionID: %s from %s to %s. Setting needs spotlight reindex.", v37, 0x20u);
        v2 = v56;
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v2, -1, -1);
        MEMORY[0x1B8CA7A40](v37, -1, -1);

        v9 = v17;
        v10 = v18;
        a1 = v66;
        v14 = v68;
      }

      else
      {

LABEL_45:
        v9 = v17;
        v10 = v18;
        v7 = v65;
        a1 = v66;
        v14 = v68;
      }
    }

    else
    {
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v25 = sub_1B78000B8();
      __swift_project_value_buffer(v25, qword_1EDAFAF58);
      v26 = sub_1B7800098();
      v2 = sub_1B78011F8();
      if (os_log_type_enabled(v26, v2))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1B7198000, v26, v2, "Can only update a transaction category for a bank connect or placeholder account.", v27, 2u);
        MEMORY[0x1B8CA7A40](v27, -1, -1);
      }

      v9 = v17;
      v10 = v18;
      v14 = v68;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_48;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000015, 0x80000001B7882780);
  LOWORD(v71) = [v2 rawValue];
  v55 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v55);

  MEMORY[0x1B8CA4D30](0xD000000000000020, 0x80000001B78827A0);
  sub_1B7801C88();
  __break(1u);
}

BOOL AccountOriginType.supportsTransactionCategoryGrouping.getter()
{
  v1 = &byte_1F2F40E38;
  v2 = qword_1F2F40E28;
  do
  {
    v3 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v5 = *v1++;
  }

  while (v5 != *v0);
  return v3 != 0;
}

void ManagedTransactionCategoryImporter.transactionCategory(for:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 insightsObject];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 userInsightObject];

    if (v6)
    {
      v7 = [v6 transactionCategoryValue];

      ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)(v7);
      if (v57)
      {
        if (v57 != 13)
        {
          v51 = v57;
          TransactionCategory.init(_:)(&v51);
          return;
        }
      }
    }
  }

  v8 = [a1 insightsObject];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_35;
  }

  v10 = [v8 finHealthInsightObject];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 finHealthIncomeInsightObject];

    if (v12)
    {

      *a2 = 10;
      return;
    }
  }

  v13 = [v9 mapsInsightObject];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 fallbackCategoryValue];
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = v15;
    v17 = [v15 shortValue];

    TransactionCategory.init(rawValue:)(v17);
    if (v55 == 13)
    {
      goto LABEL_18;
    }

    v18 = [v9 mapsInsightObject];
    if (!v18)
    {
      goto LABEL_18;
    }

    v14 = v18;
    v19 = [v18 transactionCategorySourceValue];
    if (!v19)
    {
LABEL_17:

      goto LABEL_18;
    }

    v20 = v19;
    v21 = [v19 shortValue];

    if (!v21)
    {

      *a2 = v55;
      return;
    }
  }

LABEL_18:
  v22 = [v9 mapsInsightObject];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 brandObject];

    if (v24)
    {
      v25 = [v24 walletCategoryValue];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 shortValue];

        MapsCategory.init(rawValue:)(v27);
        v28 = v54;
        if (v54 != 8)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }
    }
  }

  v29 = [v9 mapsInsightObject];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 merchantObject];

    if (v31)
    {
      v32 = [v31 walletCategoryValue];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 shortValue];

        MapsCategory.init(rawValue:)(v34);
        v28 = v53;
        if (v53 != 8)
        {
LABEL_28:

          *a2 = 0x706050403020109uLL >> (8 * v28);
          return;
        }
      }

      else
      {
      }
    }
  }

  v35 = [v9 mapsInsightObject];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 fallbackCategoryValue];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 shortValue];

      TransactionCategory.init(rawValue:)(v39);
      v40 = v52;
      if (v52 != 13)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }
  }

LABEL_35:
  v41 = [a1 publicTransactionObject];
  v42 = [v41 transactionTypeValue];

  TransactionType.init(rawValue:)(v42);
  if (v56 == 17)
  {
    v43 = 0;
  }

  else
  {
    v43 = v56;
  }

  if (qword_1EB98EAF8 != -1)
  {
    v50 = v43;
    swift_once();
    v43 = v50;
  }

  v44 = qword_1EBA45998;
  if (*(qword_1EBA45998 + 16))
  {
    v45 = sub_1B7263594(v43);
    if (v46)
    {
      goto LABEL_48;
    }
  }

  v47 = [a1 publicTransactionObject];
  if (([v47 merchantCategoryCodeValue] & 0x80000000) != 0)
  {
  }

  else
  {
    v48 = [v47 merchantCategoryCodeValue];

    if (qword_1EB98E9F0 != -1)
    {
      swift_once();
    }

    if (qword_1EB9940A0)
    {
      v44 = off_1EB9940A8;
      if (*(off_1EB9940A8 + 2))
      {
        v45 = sub_1B72455C0(v48);
        if (v49)
        {
LABEL_48:
          v40 = *(v44[7] + v45);
LABEL_49:

          *a2 = v40;
          return;
        }
      }
    }
  }

  *a2 = 0;
}

unint64_t sub_1B7551E88()
{
  result = sub_1B7202A40(&unk_1F2F40E40);
  qword_1EBA45998 = result;
  return result;
}

uint64_t sub_1B7551F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ManagedExtractedOrder.showsAsActive(now:calendar:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  if ([v3 isMarkedAsComplete])
  {
    v24 = 0;
    return v24 & 1;
  }

  v25 = [v3 orderContent];
  v26 = [v25 orderUpdateDate];

  sub_1B77FF928();
  v27 = sub_1B77FFC88();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v28 = sub_1B77FFCF8();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  sub_1B77FECD8();
  sub_1B77FFC08();
  result = (*(v18 + 48))(v7, 1, v17);
  if (result != 1)
  {
    sub_1B7554B48(v16, type metadata accessor for Duration);
    v30 = *(v18 + 8);
    v30(v21, v17);
    (*(v18 + 32))(v23, v7, v17);
    v24 = sub_1B77FF8D8();
    v30(v23, v17);
    return v24 & 1;
  }

  __break(1u);
  return result;
}

void sub_1B75523A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  Order.StatusPriority.init(rawValue:)([v4 statusPriorityValue], &v33);
  v20 = v33;
  if (v33 == 10 || (v21 = [v4 orderContentUpdatedDate]) == 0)
  {
    v31 = [v4 orderContent];
    ManagedExtractedOrderContent.priorityInfo(calendar:timeZone:)(a1, a2, v32);
    v27 = v31;
  }

  else
  {
    v22 = v21;
    sub_1B77FF928();

    v23 = *(v11 + 32);
    v23(v19, v17, v10);
    (*(v11 + 16))(v14, v19, v10);
    v24 = [v4 priorityEstimatedCompletionDate];
    if (v24)
    {
      v25 = v24;
      sub_1B77FF928();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    (*(v11 + 8))(v19, v10);
    (*(v11 + 56))(v9, v26, 1, v10);
    v28 = v32;
    v23(v32, v14, v10);
    v29 = type metadata accessor for Order.PriorityInfo(0);
    *(v28 + *(v29 + 20)) = v20;
    sub_1B7205340(v9, v28 + *(v29 + 24));
  }
}

void sub_1B75526A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 trackedOrderIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B75526FC(id *a1)
{
  v1 = [*a1 orderContentModificationDate];
  sub_1B77FF928();
}

uint64_t ManagedExtractedOrder.setOrderContent(_:modificationDate:calendar:timeZone:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  v35 = sub_1B77FF988();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9970D8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for Order.PriorityInfo(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v4 setOrderContent_];
  v20 = sub_1B77FF8B8();
  [v5 setOrderContentModificationDate_];

  v21 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  v38 = a1;
  v39 = a3;
  v40 = v34;
  sub_1B75EC470(sub_1B7554ABC, v37, v21);
  v23 = v22;

  sub_1B7527F68(v23, v15);

  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = [a1 orderUpdateDate];
    sub_1B77FF928();

    v26 = v35;
    (*(v8 + 56))(&v19[*(v16 + 24)], 1, 1);
    v19[*(v16 + 20)] = 0;
    if (v24(v15, 1, v16) != 1)
    {
      sub_1B7554AE0(v15);
    }
  }

  else
  {
    v26 = v35;
    sub_1B7554BA8(v15, v19);
  }

  [v5 setStatusPriorityValue_];
  sub_1B7280900(&v19[*(v16 + 24)], v12);
  v27 = v26;
  if ((*(v8 + 48))(v12, 1, v26) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1B77FF8B8();
    (*(v8 + 8))(v12, v27);
  }

  [v5 setPriorityEstimatedCompletionDate_];

  v29 = [a1 orderUpdateDate];
  v30 = v36;
  sub_1B77FF928();

  v31 = sub_1B77FF8B8();
  (*(v8 + 8))(v30, v27);
  [v5 setOrderContentUpdatedDate_];

  return sub_1B7554B48(v19, type metadata accessor for Order.PriorityInfo);
}

uint64_t ManagedExtractedOrder.mailItems.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 mailItemObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B755601C(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedFoundInMailItem();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  v11[0] = sub_1B725F32C(v6);
  sub_1B7554C0C(v11);

  return v11[0];
}

void sub_1B7552DF8(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B6F0(v3);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B755601C(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
  v4 = sub_1B7800F78();

  [v2 setMailItemObjects_];
}

void ManagedExtractedOrder.mailItems.setter(unint64_t a1)
{
  sub_1B723B6F0(a1);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B755601C(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
  v2 = sub_1B7800F78();

  [v1 setMailItemObjects_];
}

uint64_t sub_1B7552F8C(void **a1, void **a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [v11 dateSent];
  sub_1B77FF928();

  v14 = [v12 dateSent];
  sub_1B77FF928();

  LOBYTE(v14) = sub_1B77FF918();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v14)
  {
    v16 = [v11 messageID];
    v17 = sub_1B7800868();
    v19 = v18;

    v20 = [v12 messageID];
    v21 = sub_1B7800868();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {

      v24 = 0;
    }

    else
    {
      v24 = sub_1B78020F8();
    }
  }

  else
  {
    v25 = [v11 dateSent];
    sub_1B77FF928();

    v26 = [v12 dateSent];
    sub_1B77FF928();

    v24 = sub_1B77FF8D8();
    v15(v8, v4);
    v15(v10, v4);
  }

  return v24 & 1;
}

void (*ManagedExtractedOrder.mailItems.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedExtractedOrder.mailItems.getter();
  return sub_1B7553280;
}

void sub_1B7553280(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B6F0(v3);

    type metadata accessor for ManagedFoundInMailItem();
    sub_1B755601C(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
    v4 = sub_1B7800F78();

    [v2 setMailItemObjects_];
  }

  else
  {
    sub_1B723B6F0(*a1);

    type metadata accessor for ManagedFoundInMailItem();
    sub_1B755601C(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem);
    v5 = sub_1B7800F78();

    [v2 setMailItemObjects_];
  }
}

uint64_t ManagedExtractedOrder.mailItemOrderDetails.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 mailItemOrderDetailsObjects];
  v6 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B755601C(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(&v11, v9);
    type metadata accessor for ManagedFoundInMailItemOrderDetails();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      v6 = v13;
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);
  v7 = sub_1B723B738(v6);

  return v7;
}

void sub_1B7553628(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  sub_1B755601C(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails);
  v3 = sub_1B7800F78();
  [v2 setMailItemOrderDetailsObjects_];
}

void ManagedExtractedOrder.mailItemOrderDetails.setter()
{
  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  sub_1B755601C(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails);
  v1 = sub_1B7800F78();

  [v0 setMailItemOrderDetailsObjects_];
}

void (*ManagedExtractedOrder.mailItemOrderDetails.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedExtractedOrder.mailItemOrderDetails.getter();
  return sub_1B75537D4;
}

void sub_1B75537D4(uint64_t a1, char a2)
{
  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  sub_1B755601C(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails);
  v4 = *(a1 + 8);
  if (a2)
  {

    v5 = sub_1B7800F78();

    [v4 setMailItemOrderDetailsObjects_];
  }

  else
  {
    v6 = sub_1B7800F78();

    [v4 setMailItemOrderDetailsObjects_];
  }
}

void ManagedExtractedOrder.setIsMarkedAsComplete(_:modificationDate:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  [v3 setIsMarkedAsComplete_];
  sub_1B7280900(a2, v8);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B77FF8B8();
    (*(v10 + 8))(v8, v9);
  }

  [v3 setIsMarkedAsCompleteModificationDate_];
}

void ManagedExtractedOrder.setNotificationsEnabled(_:modificationDate:)(char a1)
{
  [v1 setNotificationsEnabled_];
  v2 = sub_1B77FF8B8();
  [v1 setNotificationsEnabledModificationDate_];
}

void sub_1B7553AB4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void ManagedExtractedOrder.updateMerchantEmailInformation(orderDetails:mailItem:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 messageID];
  [v3 setMerchantEmailMessageID_];

  v11 = [a2 messageIDHash];
  [v3 setMerchantEmailMessageIDHash_];

  v12 = [a2 fromEmailAddress];
  [v3 setMerchantEmailAddress_];

  v13 = [a2 dateSent];
  sub_1B77FF928();

  v14 = sub_1B77FF8B8();
  (*(v7 + 8))(v9, v6);
  [v3 setMerchantEmailDateSent_];

  v15 = [a1 merchantDisplayName];
  [v3 setMerchantEmailDisplayName_];

  v16 = [a2 toEmailAddress];
  [v3 setRecipientEmailAddress_];
}

id ManagedExtractedOrder.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedExtractedOrder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedExtractedOrder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall ManagedExtractedOrder.isActive()()
{
  if ([v0 isMarkedAsComplete])
  {
    return 0;
  }

  v2 = [v0 orderContent];
  v3 = ManagedExtractedOrderContent.isActive.getter();

  return v3;
}

id static ManagedExtractedOrder.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedExtractedOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedExtractedOrder.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedExtractedOrder.existingExtractedOrder(with:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedExtractedOrder;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedExtractedOrder.predicateForExtractedOrder(with:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

unint64_t sub_1B75543CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedExtractedOrder;
  v12 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  v13 = a6(a1, a2, a3, a4);
  [v12 setPredicate_];

  result = sub_1B7801498();
  if (v6)
  {

    return v13;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v16 = result;
  v17 = sub_1B7801958();
  result = v16;
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(result + 32);
LABEL_8:
    v13 = v15;

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B75545AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedExtractedOrder;
  v10 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  v11 = a5(a1, a2, a3);
  [v10 setPredicate_];

  result = sub_1B7801498();
  if (v5)
  {

    return v11;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = sub_1B7801958();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v11 = v13;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedExtractedOrder.existingExtractedOrders(withMerchantEmailAddress:in:)(uint64_t a1, uint64_t a2)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedExtractedOrder;
  v4 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_1B78010E8();
  [v4 setPredicate_];

  v7 = sub_1B7801498();
  return v7;
}

uint64_t static ManagedExtractedOrder.predicateForExtractedOrder(withMerchantEmailAddress:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

BOOL static ManagedExtractedOrder.extractedOrderExists(with:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedExtractedOrder;
  v6 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  v14 = 0;
  v9 = [a3 countForFetchRequest:v6 error:&v14];
  v10 = v14;
  if (v14)
  {
    swift_willThrow();
    v10;
  }

  else
  {
    v12 = v9;

    return v12 > 0;
  }

  return v11;
}

uint64_t sub_1B7554AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9970D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7554B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7554BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.PriorityInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7554C0C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B77E6DD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B7554C88(v6);
  return sub_1B7801B78();
}

void sub_1B7554C88(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7802038();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedFoundInMailItem();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B7555138(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B7554D8C(0, v2, 1, a1);
  }
}

void sub_1B7554D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B77FF988();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = a2;
  if (a3 != a2)
  {
    v14 = &v43 - v13;
    v53 = *a4;
    v52 = (v12 + 8);
    v15 = v53 + 8 * a3 - 8;
    v16 = a1 - a3;
    v49 = v11;
    v50 = v8;
    v48 = &v43 - v13;
LABEL_6:
    v46 = v15;
    v47 = a3;
    v17 = *(v53 + 8 * a3);
    v45 = v16;
    while (1)
    {
      v54 = v16;
      v18 = *v15;
      v19 = v17;
      v20 = v18;
      v21 = v8;
      v22 = v19;
      v23 = [v19 dateSent];
      sub_1B77FF928();

      v55 = v20;
      v24 = [v20 dateSent];
      sub_1B77FF928();

      LOBYTE(v24) = sub_1B77FF918();
      v25 = *v52;
      (*v52)(v11, v21);
      v25(v14, v21);
      if (v24)
      {
        v26 = v22;
        v27 = [v22 messageID];
        v28 = sub_1B7800868();
        v30 = v29;

        v31 = v55;
        v32 = [v55 messageID];
        v33 = sub_1B7800868();
        v35 = v34;

        if (v28 == v33 && v30 == v35)
        {

          v11 = v49;
          v8 = v50;
          v14 = v48;
LABEL_5:
          a3 = v47 + 1;
          v15 = v46 + 8;
          v16 = v45 - 1;
          if (v47 + 1 == v44)
          {
            return;
          }

          goto LABEL_6;
        }

        v36 = sub_1B78020F8();

        v11 = v49;
        v8 = v50;
        v14 = v48;
        v37 = v54;
        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v51 = v22;
        v38 = [v22 &selRef_setTransactionCategorySourceValue_ + 7];
        sub_1B77FF928();

        v39 = v55;
        v40 = [v55 &selRef_setTransactionCategorySourceValue_ + 7];
        sub_1B77FF928();

        LOBYTE(v40) = sub_1B77FF8D8();
        v25(v11, v21);
        v25(v14, v21);

        v8 = v21;
        v37 = v54;
        if ((v40 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v53)
      {
        break;
      }

      v41 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v41;
      v15 -= 8;
      v42 = __CFADD__(v37, 1);
      v16 = v37 + 1;
      if (v42)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1B7555138(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v138 = a1;
  v10 = sub_1B77FF988();
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v132 - v13;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v17 = 0;
    v147 = (v12 + 8);
    v18 = MEMORY[0x1E69E7CC0];
    v137 = a4;
    v148 = v10;
    v143 = v14;
    v144 = &v132 - v13;
    v133 = a3;
    while (1)
    {
      v19 = v17++;
      if (v17 < v16)
      {
        v145 = v16;
        v136 = v18;
        v6 = *a3;
        v20 = *(*a3 + 8 * v17);
        v150 = *(*a3 + 8 * v19);
        v21 = v150;
        v151 = v20;
        v22 = v20;
        v4 = v21;
        LODWORD(v146) = sub_1B7552F8C(&v151, &v150);
        if (v7)
        {

          return;
        }

        v17 = v19 + 2;
        if (v19 + 2 >= v145)
        {
          v18 = v136;
          v15 = v144;
          if (v146)
          {
LABEL_18:
            if (v17 < v19)
            {
              goto LABEL_137;
            }

LABEL_19:
            if (v19 < v17)
            {
              v47 = 8 * v17 - 8;
              v48 = 8 * v19;
              v49 = v17;
              v50 = v19;
              do
              {
                if (v50 != --v49)
                {
                  v51 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_143;
                  }

                  v52 = *(v51 + v48);
                  *(v51 + v48) = *(v51 + v47);
                  *(v51 + v47) = v52;
                }

                ++v50;
                v47 -= 8;
                v48 += 8;
              }

              while (v50 < v49);
            }
          }
        }

        else
        {
          v134 = v19;
          v135 = 0;
          v142 = (v19 + 2);
          v23 = (v6 + 8 * v19 + 16);
          v15 = v144;
          v24 = &off_1E7CAF000;
          do
          {
            v29 = *(v23 - 1);
            v30 = *v23;
            v31 = v29;
            v32 = v30;
            v33 = [v30 v24[439]];
            sub_1B77FF928();

            v34 = v24[439];
            v149 = v31;
            v35 = [v31 v34];
            v6 = v143;
            sub_1B77FF928();

            LOBYTE(v35) = sub_1B77FF918();
            v36 = v15;
            v37 = v148;
            v38 = *v147;
            (*v147)(v6, v148);
            v38(v36, v37);
            if (v35)
            {
              v39 = v32;
              v40 = [v32 messageID];
              v4 = sub_1B7800868();
              v42 = v41;

              v43 = v149;
              v6 = [v149 messageID];
              v44 = sub_1B7800868();
              v46 = v45;

              if (v4 == v44 && v42 == v46)
              {

                v24 = &off_1E7CAF000;
                if (v146)
                {
                  v18 = v136;
                  a4 = v137;
                  v15 = v144;
                  v17 = v142;
                  a3 = v133;
                  v19 = v134;
                  v7 = v135;
                  if (v142 < v134)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_19;
                }
              }

              else
              {
                v4 = sub_1B78020F8();

                v24 = &off_1E7CAF000;
                if ((v146 ^ v4))
                {
LABEL_16:
                  v18 = v136;
                  a4 = v137;
                  v15 = v144;
                  v17 = v142;
                  goto LABEL_26;
                }
              }
            }

            else
            {
              v25 = v24[439];
              v141 = v32;
              v26 = [v32 v25];
              sub_1B77FF928();

              v27 = v149;
              v28 = [v149 v24[439]];
              sub_1B77FF928();

              v4 = sub_1B77FF8D8();
              v38(v6, v37);
              v38(v36, v37);

              if ((v146 ^ v4))
              {
                goto LABEL_16;
              }
            }

            ++v23;
            ++v142;
            v15 = v144;
          }

          while (v145 != v142);
          v17 = v145;
          v18 = v136;
          a4 = v137;
LABEL_26:
          a3 = v133;
          v19 = v134;
          v7 = v135;
          if (v146)
          {
            goto LABEL_18;
          }
        }
      }

      v53 = a3[1];
      if (v17 >= v53)
      {
        goto LABEL_50;
      }

      if (__OFSUB__(v17, v19))
      {
        goto LABEL_136;
      }

      if (v17 - v19 >= a4)
      {
        goto LABEL_50;
      }

      v54 = v19 + a4;
      if (__OFADD__(v19, a4))
      {
        goto LABEL_138;
      }

      if (v54 >= v53)
      {
        v54 = a3[1];
      }

      if (v54 < v19)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v17 == v54)
      {
        goto LABEL_50;
      }

      v135 = v7;
      v136 = v18;
      v146 = *a3;
      v55 = (v146 + 8 * v17 - 8);
      v134 = v19;
      v56 = v19 - v17;
      v57 = v143;
      v139 = v54;
LABEL_38:
      v141 = v55;
      v142 = v17;
      v58 = *(v146 + 8 * v17);
      v140 = v56;
      while (1)
      {
        v59 = *v55;
        v60 = v58;
        v61 = v59;
        v62 = v60;
        v63 = [v60 dateSent];
        sub_1B77FF928();

        v149 = v61;
        v64 = [v61 dateSent];
        sub_1B77FF928();

        LOBYTE(v64) = sub_1B77FF918();
        v65 = v15;
        v66 = v57;
        v6 = v148;
        v67 = *v147;
        (*v147)(v66, v148);
        v67(v65, v6);
        if (v64)
        {
          break;
        }

        v145 = v62;
        v76 = [v62 dateSent];
        sub_1B77FF928();

        v77 = v149;
        v78 = [v149 dateSent];
        sub_1B77FF928();

        v4 = sub_1B77FF8D8();
        v67(v66, v6);
        v67(v65, v6);

        v57 = v66;
        v15 = v65;
        if ((v4 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_45:
        if (!v146)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v79 = *v55;
        v58 = v55[1];
        *v55 = v58;
        v55[1] = v79;
        --v55;
        if (__CFADD__(v56++, 1))
        {
          goto LABEL_37;
        }
      }

      v6 = v62;
      v68 = [v62 messageID];
      v69 = sub_1B7800868();
      v71 = v70;

      v72 = v149;
      v73 = [v149 messageID];
      v4 = sub_1B7800868();
      v75 = v74;

      if (v69 != v4 || v71 != v75)
      {
        break;
      }

      v57 = v143;
      v15 = v144;
LABEL_37:
      v17 = (v142 + 1);
      v55 = v141 + 1;
      v56 = v140 - 1;
      if (v142 + 1 != v139)
      {
        goto LABEL_38;
      }

      v17 = v139;
      v7 = v135;
      v18 = v136;
      a3 = v133;
      v19 = v134;
LABEL_50:
      if (v17 < v19)
      {
        goto LABEL_135;
      }

      v81 = v18;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = v81;
      }

      else
      {
        v18 = sub_1B723E420(0, *(v81 + 2) + 1, 1, v81);
      }

      v4 = *(v18 + 2);
      v82 = *(v18 + 3);
      v83 = v4 + 1;
      if (v4 >= v82 >> 1)
      {
        v18 = sub_1B723E420((v82 > 1), v4 + 1, 1, v18);
      }

      *(v18 + 2) = v83;
      v84 = &v18[16 * v4];
      *(v84 + 4) = v19;
      *(v84 + 5) = v17;
      v85 = *v138;
      if (!*v138)
      {
        goto LABEL_145;
      }

      if (v4)
      {
        while (2)
        {
          v6 = v83 - 1;
          if (v83 >= 4)
          {
            v90 = &v18[16 * v83 + 32];
            v91 = *(v90 - 64);
            v92 = *(v90 - 56);
            v96 = __OFSUB__(v92, v91);
            v93 = v92 - v91;
            if (v96)
            {
              goto LABEL_122;
            }

            v95 = *(v90 - 48);
            v94 = *(v90 - 40);
            v96 = __OFSUB__(v94, v95);
            v88 = v94 - v95;
            v89 = v96;
            if (v96)
            {
              goto LABEL_123;
            }

            v97 = &v18[16 * v83];
            v99 = *v97;
            v98 = *(v97 + 1);
            v96 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v96)
            {
              goto LABEL_125;
            }

            v96 = __OFADD__(v88, v100);
            v101 = v88 + v100;
            if (v96)
            {
              goto LABEL_128;
            }

            if (v101 >= v93)
            {
              v119 = &v18[16 * v6 + 32];
              v121 = *v119;
              v120 = *(v119 + 1);
              v96 = __OFSUB__(v120, v121);
              v122 = v120 - v121;
              if (v96)
              {
                goto LABEL_132;
              }

              if (v88 < v122)
              {
                v6 = v83 - 2;
              }
            }

            else
            {
LABEL_70:
              if (v89)
              {
                goto LABEL_124;
              }

              v102 = &v18[16 * v83];
              v104 = *v102;
              v103 = *(v102 + 1);
              v105 = __OFSUB__(v103, v104);
              v106 = v103 - v104;
              v107 = v105;
              if (v105)
              {
                goto LABEL_127;
              }

              v108 = &v18[16 * v6 + 32];
              v110 = *v108;
              v109 = *(v108 + 1);
              v96 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (v96)
              {
                goto LABEL_130;
              }

              if (__OFADD__(v106, v111))
              {
                goto LABEL_131;
              }

              if (v106 + v111 < v88)
              {
                goto LABEL_84;
              }

              if (v88 < v111)
              {
                v6 = v83 - 2;
              }
            }
          }

          else
          {
            if (v83 == 3)
            {
              v86 = *(v18 + 4);
              v87 = *(v18 + 5);
              v96 = __OFSUB__(v87, v86);
              v88 = v87 - v86;
              v89 = v96;
              goto LABEL_70;
            }

            v112 = &v18[16 * v83];
            v114 = *v112;
            v113 = *(v112 + 1);
            v96 = __OFSUB__(v113, v114);
            v106 = v113 - v114;
            v107 = v96;
LABEL_84:
            if (v107)
            {
              goto LABEL_126;
            }

            v115 = &v18[16 * v6];
            v117 = *(v115 + 4);
            v116 = *(v115 + 5);
            v96 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v96)
            {
              goto LABEL_129;
            }

            if (v118 < v106)
            {
              break;
            }
          }

          v4 = v6 - 1;
          if (v6 - 1 >= v83)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
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
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          if (!*a3)
          {
            goto LABEL_142;
          }

          v123 = v18;
          v124 = *&v18[16 * v4 + 32];
          v125 = *&v18[16 * v6 + 40];
          sub_1B7555C80((*a3 + 8 * v124), (*a3 + 8 * *&v18[16 * v6 + 32]), (*a3 + 8 * v125), v85);
          if (v7)
          {
            goto LABEL_116;
          }

          if (v125 < v124)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1B77E4CA4(v123);
          }

          if (v4 >= *(v123 + 2))
          {
            goto LABEL_121;
          }

          v126 = &v123[16 * v4];
          *(v126 + 4) = v124;
          *(v126 + 5) = v125;
          v152 = v123;
          sub_1B77E4C18(v6);
          v18 = v152;
          v83 = *(v152 + 2);
          v15 = v144;
          if (v83 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v16 = a3[1];
      a4 = v137;
      if (v17 >= v16)
      {
        goto LABEL_105;
      }
    }

    v4 = sub_1B78020F8();

    v57 = v143;
    v15 = v144;
    if ((v4 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v6 = *v138;
  if (!*v138)
  {
    goto LABEL_146;
  }

  v4 = v18;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v127 = v4;
  }

  else
  {
LABEL_140:
    v127 = sub_1B77E4CA4(v4);
  }

  v152 = v127;
  v4 = *(v127 + 2);
  if (v4 < 2)
  {
LABEL_116:

    return;
  }

  while (*a3)
  {
    v128 = *&v127[16 * v4];
    v129 = v127;
    v130 = *&v127[16 * v4 + 24];
    sub_1B7555C80((*a3 + 8 * v128), (*a3 + 8 * *&v127[16 * v4 + 16]), (*a3 + 8 * v130), v6);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v130 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1B77E4CA4(v129);
    }

    if (v4 - 2 >= *(v129 + 2))
    {
      goto LABEL_134;
    }

    v131 = &v129[16 * v4];
    *v131 = v128;
    *(v131 + 1) = v130;
    v152 = v129;
    sub_1B77E4C18(v4 - 1);
    v127 = v152;
    v4 = *(v152 + 2);
    if (v4 <= 1)
    {
      goto LABEL_116;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1B7555C80(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B7552F8C(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B7552F8C(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1B755601C(unint64_t *a1, void (*a2)(uint64_t))
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

id _s10FinanceKit21ManagedExtractedOrderC012predicateFordE013withMessageID11orderNumberSo11NSPredicateCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(a3, a4);
  v21 = v7;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1B721FF04();
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  *(v9 + 32) = sub_1B78010E8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7807CD0;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  *(v9 + 40) = sub_1B78010E8();
  v14 = sub_1B7800C18();

  v15 = objc_opt_self();
  v16 = [v15 orPredicateWithSubpredicates_];

  *(v8 + 32) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7807CD0;
  *(v17 + 56) = v11;
  *(v17 + 64) = v12;
  *(v17 + 32) = v22;
  *(v17 + 40) = v21;
  *(v8 + 40) = sub_1B78010E8();
  v18 = sub_1B7800C18();

  v19 = [v15 andPredicateWithSubpredicates_];

  return v19;
}

id _s10FinanceKit21ManagedExtractedOrderC012predicateFordE017withMessageIDHash11orderNumberSo11NSPredicateCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(a3, a4);
  v21 = v7;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1B721FF04();
  *(v10 + 64) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  *(v9 + 32) = sub_1B78010E8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7807CD0;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  *(v9 + 40) = sub_1B78010E8();
  v14 = sub_1B7800C18();

  v15 = objc_opt_self();
  v16 = [v15 orPredicateWithSubpredicates_];

  *(v8 + 32) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7807CD0;
  *(v17 + 56) = v11;
  *(v17 + 64) = v12;
  *(v17 + 32) = v22;
  *(v17 + 40) = v21;
  *(v8 + 40) = sub_1B78010E8();
  v18 = sub_1B7800C18();

  v19 = [v15 andPredicateWithSubpredicates_];

  return v19;
}

id _s10FinanceKit21ManagedExtractedOrderC012predicateFordE014withMessageIDs11orderNumberSo11NSPredicateCShySSG_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(a2, a3);
  v19 = v5;
  v20 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B780C060;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
  *(v8 + 56) = v9;
  v10 = sub_1B7556A98();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;

  *(v7 + 32) = sub_1B78010E8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = a1;

  *(v7 + 40) = sub_1B78010E8();
  v12 = sub_1B7800C18();

  v13 = objc_opt_self();
  v14 = [v13 orPredicateWithSubpredicates_];

  *(v6 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7807CD0;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B721FF04();
  *(v15 + 32) = v20;
  *(v15 + 40) = v19;
  *(v6 + 40) = sub_1B78010E8();
  v16 = sub_1B7800C18();

  v17 = [v13 andPredicateWithSubpredicates_];

  return v17;
}

id _s10FinanceKit21ManagedExtractedOrderC012predicateFordE019withMessageIDHashes11orderNumberSo11NSPredicateCShySSG_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(a2, a3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B780C060;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
  *(v8 + 56) = v9;
  v10 = sub_1B7556A98();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;

  *(v7 + 32) = sub_1B78010E8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = a1;

  *(v7 + 40) = sub_1B78010E8();
  v12 = sub_1B7800C18();

  v13 = objc_opt_self();
  v14 = [v13 orPredicateWithSubpredicates_];

  *(v6 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7807CD0;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B721FF04();
  *(v15 + 32) = v19;
  *(v15 + 40) = v5;
  *(v6 + 40) = sub_1B78010E8();
  v16 = sub_1B7800C18();

  v17 = [v13 andPredicateWithSubpredicates_];

  return v17;
}

unint64_t sub_1B7556A98()
{
  result = qword_1EDAF6490;
  if (!qword_1EDAF6490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6490);
  }

  return result;
}

uint64_t AccountStartDate.init(selectedDate:sinceOpeningSelected:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B7205340(a1, a3);
  result = type metadata accessor for AccountStartDate();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for AccountStartDate()
{
  result = qword_1EDAFCE18;
  if (!qword_1EDAFCE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7556BB4()
{
  started = type metadata accessor for AccountStartDate();
  __swift_allocate_value_buffer(started, qword_1EB9970E0);
  v1 = __swift_project_value_buffer(started, qword_1EB9970E0);
  v2 = sub_1B77FF988();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v1 + *(started + 20)) = 1;
  return result;
}

uint64_t static AccountStartDate.sinceOpening.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB98EB00 != -1)
  {
    swift_once();
  }

  started = type metadata accessor for AccountStartDate();
  v3 = __swift_project_value_buffer(started, qword_1EB9970E0);

  return sub_1B7556CC8(v3, a1);
}

uint64_t sub_1B7556CC8(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AccountStartDate();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t AccountStartDate.init(since:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  (*(v5 + 32))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
  result = type metadata accessor for AccountStartDate();
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_1B7556DF8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_1B7556E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657463656C6573 && a2 == 0xEC00000065746144;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7884A90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7556F28(uint64_t a1)
{
  v2 = sub_1B7558F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7556F64(uint64_t a1)
{
  v2 = sub_1B7558F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountStartDate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997100);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7558F84();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FF988();
  sub_1B71A7148(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for AccountStartDate();
    v8[14] = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AccountStartDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB997118);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  started = type metadata accessor for AccountStartDate();
  MEMORY[0x1EEE9AC00](started);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7558F84();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v19;
  sub_1B77FF988();
  v22 = 0;
  sub_1B71A7148(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v14 = v20;
  sub_1B7801DB8();
  sub_1B7205340(v14, v12);
  v21 = 1;
  v15 = sub_1B7801E08();
  (*(v13 + 8))(v8, v6);
  *(v12 + *(started + 20)) = v15 & 1;
  sub_1B7556CC8(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7558FD8(v12);
}

uint64_t AccountSelectionValues.init(sharedAccountIDStartingDates:removedAccountIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static AccountSelectionValues.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B722060C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B72F48EC(v2, v3);
}

unint64_t sub_1B7557514()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_1B7557550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001CLL && 0x80000001B7884AB0 == a2;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884AD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7557630(uint64_t a1)
{
  v2 = sub_1B7559034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B755766C(uint64_t a1)
{
  v2 = sub_1B7559034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountSelectionValues.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997128);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7559034();

  sub_1B78023F8();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997138);
  sub_1B7559088();
  sub_1B7801FC8();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
    sub_1B7559260(&qword_1EB997160, &qword_1EB98F718);
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AccountSelectionValues.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7559034();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997138);
  v13 = 0;
  sub_1B7559174();
  sub_1B7801E48();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  v13 = 1;
  sub_1B7559260(&qword_1EB991B30, &qword_1EB98F740);
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7557B20(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B722060C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B72F48EC(v2, v3);
}

uint64_t sub_1B7557BDC(uint64_t a1)
{
  v2 = sub_1B75593F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7557C18(uint64_t a1)
{
  v2 = sub_1B75593F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7557C54()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

uint64_t sub_1B7557C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7557D70(uint64_t a1)
{
  v2 = sub_1B75592FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7557DAC(uint64_t a1)
{
  v2 = sub_1B75592FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7557DE8(uint64_t a1)
{
  v2 = sub_1B7559350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7557E24(uint64_t a1)
{
  v2 = sub_1B7559350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountSelectionResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997190);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997198);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9971A0);
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v17 - v10;
  v12 = *v1;
  v19 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75592FC();
  sub_1B78023F8();
  if (v12)
  {
    LOBYTE(v23) = 1;
    sub_1B7559350();
    v13 = v22;
    sub_1B7801ED8();
    v23 = v12;
    v24 = v19;
    sub_1B75593A4();
    v14 = v21;
    sub_1B7801FC8();
    (*(v20 + 8))(v5, v14);
    return (*(v9 + 8))(v11, v13);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1B75593F8();
    v16 = v22;
    sub_1B7801ED8();
    (*(v17 + 8))(v8, v18);
    return (*(v9 + 8))(v11, v16);
  }
}

uint64_t AccountSelectionResult.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9971C8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9971D0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9971D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B75592FC();
  v15 = v37;
  sub_1B78023C8();
  if (!v15)
  {
    v37 = v11;
    v17 = v35;
    v16 = v36;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v39 = v18;
    v40 = v18 + 32;
    v41 = 0;
    v42 = v19;
    v20 = sub_1B721CE4C();
    if (v20 == 2 || v41 != v42 >> 1)
    {
      v24 = sub_1B7801B18();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v26 = &type metadata for AccountSelectionResult;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v37 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        LOBYTE(v38) = 1;
        sub_1B7559350();
        v21 = v13;
        v22 = v6;
        sub_1B7801D38();
        v23 = v37;
        sub_1B755944C();
        v29 = v22;
        v30 = v33;
        sub_1B7801E48();
        (*(v34 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v38;
      }

      else
      {
        LOBYTE(v38) = 0;
        sub_1B75593F8();
        sub_1B7801D38();
        v28 = v37;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = 0uLL;
      }

      *v16 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t AccountSelectionResult.XPC.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCAccountSelectionResult_value);
  v3 = *(v1 + OBJC_IVAR___XPCAccountSelectionResult_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B720A65C(v2);
}

id AccountSelectionResult.XPC.__allocating_init(value:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCAccountSelectionResult_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AccountSelectionResult.XPC.init(value:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___XPCAccountSelectionResult_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AccountSelectionResult.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B72088E4(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id AccountSelectionResult.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B72088E4(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id AccountSelectionResult.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountSelectionResult.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B75589A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCAccountSelectionResult_value);
  v3 = *(v1 + OBJC_IVAR___XPCAccountSelectionResult_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B720A65C(v2);
}

id sub_1B75589B8(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCAccountSelectionResult_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AccountSelectionResult.xpcValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for AccountSelectionResult.XPC();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___XPCAccountSelectionResult_value];
  *v5 = v1;
  v5[1] = v2;
  sub_1B720A65C(v1);
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id static SelectAccountsUIXPCConfiguration.serviceInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_1B7558AD0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

BOOL _s10FinanceKit22AccountSelectionResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*a1)
  {
    if (v5)
    {
      sub_1B720A65C(*a2);
      sub_1B720A65C(v3);
      sub_1B720A65C(v5);
      sub_1B720A65C(v3);
      if (sub_1B722060C(v3, v5))
      {
        v6 = sub_1B72F48EC(v2, v4);
        sub_1B720A6F0(v3);
        sub_1B720A6F0(v5);
        sub_1B720A6F0(v5);
        sub_1B720A6F0(v3);
        return (v6 & 1) != 0;
      }

      sub_1B720A6F0(v3);
      sub_1B720A6F0(v5);
      sub_1B720A6F0(v5);
      v8 = v3;
LABEL_9:
      sub_1B720A6F0(v8);
      return 0;
    }

LABEL_7:
    sub_1B720A65C(*a2);
    sub_1B720A65C(v3);
    sub_1B720A6F0(v3);
    v8 = v5;
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  sub_1B720A6F0(0);
  sub_1B720A6F0(0);
  return 1;
}

uint64_t _s10FinanceKit16AccountStartDateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_1B7280900(a1, &v22 - v13);
  sub_1B7280900(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1B7205418(v14, &qword_1EB98EBD0);
LABEL_9:
      started = type metadata accessor for AccountStartDate();
      v17 = *(a1 + *(started + 20)) ^ *(a2 + *(started + 20)) ^ 1;
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1B7280900(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1B7205418(v14, &qword_1EB98FCE0);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_1B71A7148(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v18 = sub_1B7800828();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1B7205418(v14, &qword_1EB98EBD0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1B7558F84()
{
  result = qword_1EB997108;
  if (!qword_1EB997108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997108);
  }

  return result;
}

uint64_t sub_1B7558FD8(uint64_t a1)
{
  started = type metadata accessor for AccountStartDate();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_1B7559034()
{
  result = qword_1EB997130;
  if (!qword_1EB997130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997130);
  }

  return result;
}

unint64_t sub_1B7559088()
{
  result = qword_1EB997140;
  if (!qword_1EB997140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB997138);
    sub_1B71A7148(&qword_1EB98F718, MEMORY[0x1E69695A8]);
    sub_1B71A7148(&unk_1EB997150, type metadata accessor for AccountStartDate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997140);
  }

  return result;
}

unint64_t sub_1B7559174()
{
  result = qword_1EB997170;
  if (!qword_1EB997170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB997138);
    sub_1B71A7148(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    sub_1B71A7148(&unk_1EB997180, type metadata accessor for AccountStartDate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997170);
  }

  return result;
}

uint64_t sub_1B7559260(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990B80);
    sub_1B71A7148(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B75592FC()
{
  result = qword_1EB9971A8;
  if (!qword_1EB9971A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9971A8);
  }

  return result;
}

unint64_t sub_1B7559350()
{
  result = qword_1EB9971B0;
  if (!qword_1EB9971B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9971B0);
  }

  return result;
}

unint64_t sub_1B75593A4()
{
  result = qword_1EB9971B8;
  if (!qword_1EB9971B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9971B8);
  }

  return result;
}

unint64_t sub_1B75593F8()
{
  result = qword_1EB9971C0;
  if (!qword_1EB9971C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9971C0);
  }

  return result;
}

unint64_t sub_1B755944C()
{
  result = qword_1EB9971E8;
  if (!qword_1EB9971E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9971E8);
  }

  return result;
}

void sub_1B75594EC()
{
  sub_1B72F2B80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit22AccountSelectionResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7559588(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B75595D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1B755962C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1B75596EC()
{
  result = qword_1EB997200;
  if (!qword_1EB997200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997200);
  }

  return result;
}

unint64_t sub_1B7559744()
{
  result = qword_1EB997208;
  if (!qword_1EB997208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997208);
  }

  return result;
}

unint64_t sub_1B755979C()
{
  result = qword_1EB997210;
  if (!qword_1EB997210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997210);
  }

  return result;
}

unint64_t sub_1B75597F4()
{
  result = qword_1EB997218;
  if (!qword_1EB997218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997218);
  }

  return result;
}

unint64_t sub_1B755984C()
{
  result = qword_1EB997220;
  if (!qword_1EB997220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997220);
  }

  return result;
}

unint64_t sub_1B75598A4()
{
  result = qword_1EB997228;
  if (!qword_1EB997228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997228);
  }

  return result;
}

unint64_t sub_1B75598FC()
{
  result = qword_1EB997230;
  if (!qword_1EB997230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997230);
  }

  return result;
}

unint64_t sub_1B7559954()
{
  result = qword_1EB997238;
  if (!qword_1EB997238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997238);
  }

  return result;
}

unint64_t sub_1B75599AC()
{
  result = qword_1EB997240;
  if (!qword_1EB997240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997240);
  }

  return result;
}

unint64_t sub_1B7559A04()
{
  result = qword_1EB997248;
  if (!qword_1EB997248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997248);
  }

  return result;
}

unint64_t sub_1B7559A5C()
{
  result = qword_1EB997250;
  if (!qword_1EB997250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997250);
  }

  return result;
}

unint64_t sub_1B7559AB4()
{
  result = qword_1EB997258;
  if (!qword_1EB997258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997258);
  }

  return result;
}

unint64_t sub_1B7559B0C()
{
  result = qword_1EB997260;
  if (!qword_1EB997260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997260);
  }

  return result;
}

unint64_t sub_1B7559B64()
{
  result = qword_1EB997268;
  if (!qword_1EB997268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997268);
  }

  return result;
}

uint64_t ManagedOrderReturnInfo.displayCountdown.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 primitiveDisplayCountdown];
  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  if (!v2)
  {
    return 2;
  }

  v4 = [v2 BOOLValue];

  return v4;
}

void sub_1B7559C84(id *a1)
{
  v1 = [*a1 returnPolicyURL];
  sub_1B77FF478();
}

void sub_1B7559CE4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 returnPolicyDescription];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7559D4C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setReturnPolicyDescription_];
}

void sub_1B7559DBC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB994C70);
  v7 = *a2;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setReturnManagementURL_];
}

uint64_t sub_1B7559EF8@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B7559FB0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &qword_1EB98EBD0);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setReturnDeadline_];
}

id ManagedOrderReturnInfo.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderReturnInfo.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderReturnInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedOrderReturnInfo.displayCountdown.setter(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    sub_1B7449284();
    v3 = sub_1B7801528();
  }

  v4 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  [v2 setPrimitiveDisplayCountdown_];
  v5 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

void (*ManagedOrderReturnInfo.displayCountdown.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedOrderReturnInfo.displayCountdown.getter();
  return sub_1B755A374;
}

id static ManagedOrderReturnInfo.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedOrderReturnInfo;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderReturnInfo.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

id ManagedOrderReturnInfo.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B755A4F4(a1, a2);

  return v3;
}

id sub_1B755A4F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = [objc_allocWithZone(v2) initWithContext_];
  v12 = sub_1B77FF3F8();
  [v11 setReturnPolicyURL_];

  v13 = type metadata accessor for RawOrderReturnInfo();
  if (*(a1 + v13[5] + 8))
  {
    v14 = sub_1B7800838();
  }

  else
  {
    v14 = 0;
  }

  [v11 setReturnPolicyDescription_];

  sub_1B7205588(a1 + v13[6], v10, &unk_1EB994C70);
  v15 = sub_1B77FF4F8();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v10, 1, v15) != 1)
  {
    v17 = sub_1B77FF3F8();
    (*(v16 + 8))(v10, v15);
  }

  [v11 setReturnManagementURL_];

  sub_1B7205588(a1 + v13[7], v7, &qword_1EB98EBD0);
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    v20 = sub_1B77FF8B8();
    (*(v19 + 8))(v7, v18);
  }

  [v11 setReturnDeadline_];

  ManagedOrderReturnInfo.displayCountdown.setter(*(a1 + v13[8]));
  sub_1B72F9E78(a1);
  return v11;
}

char *ContentPackageReader.manifest()(void *a1)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0x74736566696E616DLL;
  v19 = 0xE800000000000000;
  v8 = *(v1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  v13 = xmmword_1B783A790;
  v20 = xmmword_1B783A790;
  (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v4);
  v14 = v7;
  v15 = sub_1B7537210;
  v16 = &v17;
  os_unfair_lock_lock((v8 + 24));
  sub_1B7262DE4((v8 + 16), v21);
  v9 = (v8 + 24);
  if (v2)
  {
    os_unfair_lock_unlock(v9);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    os_unfair_lock_unlock(v9);
    (*(v5 + 8))(v7, v4);
    if (v21[1] >> 60 == 15)
    {
      sub_1B7537230();
      swift_allocError();
      v10 = v13;
      *v11 = xmmword_1B783CCC0;
      v11[1] = v10;
      swift_willThrow();
    }

    else
    {
      v7 = v21[0];
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      sub_1B755BDA0();
      sub_1B77FE8D8();

      *a1 = v21[0];
    }
  }

  return v7;
}

uint64_t ContentPackageReader.data(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1B77FF4F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1;
  v24 = a2;
  v13 = *(v4 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  v25 = a3;
  v26 = a4;
  (*(v10 + 16))(v12, v4 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v9);
  v19 = v12;
  v20 = sub_1B755CFA8;
  v21 = &v22;
  os_unfair_lock_lock((v13 + 24));
  v14 = v27[3];
  sub_1B755CFC0((v13 + 16), v27);
  v15 = (v13 + 24);
  if (v14)
  {
    os_unfair_lock_unlock(v15);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    os_unfair_lock_unlock(v15);
    (*(v10 + 8))(v12, v9);
    if (v27[1] >> 60 == 15)
    {
      sub_1B7537230();
      swift_allocError();
      *v17 = a1;
      v17[1] = a2;
      v17[2] = a3;
      v17[3] = a4;
      swift_willThrow();
    }

    else
    {
      return v27[0];
    }
  }
}

uint64_t ContentPackageReader.__allocating_init(bundleURL:isBundleOwner:)(char *a1, int a2)
{
  v4 = swift_allocObject();
  ContentPackageReader.init(bundleURL:isBundleOwner:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContentPackageReader.close()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1B7537014((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1B755AD38@<X0>(uint64_t a1@<X0>, unsigned int (**a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  sub_1B738D300(a2, v10);
  if (v3)
  {
    v13 = *(a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    os_unfair_lock_lock((v13 + 24));
    sub_1B75372CC((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_willThrow();
  }

  else
  {
    sub_1B755CD5C(v10, v12);
    v14 = *(a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    os_unfair_lock_lock((v14 + 24));
    sub_1B75372CC((v14 + 16));
    os_unfair_lock_unlock((v14 + 24));
    sub_1B755CD5C(v12, a3);
  }
}

void ContentPackageReader.closeAfter<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  if (v4)
  {
    v11 = *(v3 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    os_unfair_lock_lock((v11 + 24));
    sub_1B75372CC((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(a3, v10, a2);
    v12 = *(v3 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    os_unfair_lock_lock((v12 + 24));
    sub_1B75372CC((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
  }
}

uint64_t ContentPackageReader.closeAfterAsync<A>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  v5[5] = *(a4 - 8);
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_1B755B180;

  return v10(v7);
}

uint64_t sub_1B755B180()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B755B378;
  }

  else
  {
    v2 = sub_1B755B294;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B755B294()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[5] + 32))(v0[2], v0[6], v0[3]);
  v3 = *(v2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v3 + 24));
  sub_1B75372CC((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v1)
  {
    (*(v0[5] + 8))(v0[2], v0[3]);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B755B378()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1B75372CC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ContentPackageReader.localizedString(forKey:table:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_1B723940C(sub_1B7262E4C, v5);
}

uint64_t ContentPackageReaderError.errorDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x6920656C646E7542;
  }

  v2 = *v0;
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    v6 = *v0;

    MEMORY[0x1B8CA4D30](46, 0xE100000000000000);
    MEMORY[0x1B8CA4D30](v4, v3);
    v2 = v6;
  }

  else
  {
  }

  sub_1B7801A78();

  MEMORY[0x1B8CA4D30](v2, v1);

  MEMORY[0x1B8CA4D30](0x6F6620746F6E2022, 0xEB00000000646E75);
  return 0xD000000000000010;
}

uint64_t ContentPackageReader.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL;
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentPackageReader.developmentLocalization.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_developmentLocalization);

  return v1;
}

char *ContentPackageReader.init(bundleURL:isBundleOwner:)(char *a1, int a2)
{
  v3 = v2;
  v28 = a2;
  v27[1] = *v3;
  v5 = sub_1B77FF4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v29 = a1;
  v9(v8, a1, v5);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v11 = sub_1B77FF3F8();
  v12 = [v10 initWithURL_];

  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12)
  {
    v14 = v29;
    v9(&v3[OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL], v29, v5);
    v15 = [v12 developmentLocalization];
    v16 = v14;
    if (v15)
    {
      v17 = v13;
      v18 = v15;
      v19 = sub_1B7800868();
      v21 = v20;

      v13 = v17;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v23 = &v3[OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_developmentLocalization];
    *v23 = v19;
    v23[1] = v21;
    v3[OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_isBundleOwner] = v28 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997288);
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    v25 = v12;
    v13(v16, v5);
    *(v24 + 16) = v12;

    *&v3[OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock] = v24;
  }

  else
  {
    sub_1B7537230();
    swift_allocError();
    *v22 = 0u;
    v22[1] = 0u;
    swift_willThrow();
    v13(v29, v5);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t ContentPackageReader.dataIfPresent(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v14 = *(v4 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  v23 = a3;
  v24 = a4;
  (*(v11 + 16))(v13, v4 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v10);
  v17 = v13;
  v18 = sub_1B755CFA8;
  v19 = &v20;
  os_unfair_lock_lock((v14 + 24));
  sub_1B755CFC0((v14 + 16), &v25);
  os_unfair_lock_unlock((v14 + 24));
  if (v5)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  return v25;
}

uint64_t sub_1B755BAC0@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v26 = a2;
  v27 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_10:
    result = sub_1B726A798(v11);
    v20 = 0;
    v21 = 0xF000000000000000;
LABEL_11:
    v22 = v27;
    *v27 = v20;
    v22[1] = v21;
    return result;
  }

  v16 = sub_1B7800838();
  if (a3)
  {
    v17 = sub_1B7800838();
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 URLForResource:v16 withExtension:{v17, v26}];

  if (v18)
  {
    sub_1B77FF478();

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_1B726A728(v9, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  (*(v13 + 32))(v15, v11, v12);
  v23 = v28;
  v24 = sub_1B77FF518();
  if (!v23)
  {
    v20 = v24;
    v21 = v25;
    result = (*(v13 + 8))(v15, v12);
    goto LABEL_11;
  }

  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_1B755BDA0()
{
  result = qword_1EB997278;
  if (!qword_1EB997278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB997278);
  }

  return result;
}

Swift::Bool __swiftcall ContentPackageReader.hasData(forResource:withExtension:)(Swift::String forResource, Swift::String_optional withExtension)
{
  v4 = forResource;
  v5 = withExtension;
  return sub_1B723957C(sub_1B755C964, &v3) & 1;
}

uint64_t sub_1B755BE44@<X0>(void *a1@<X0>, void *a2@<X4>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - v10;
  if (!a1)
  {
    v15 = sub_1B77FF4F8();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v12 = sub_1B7800838();
  if (a2)
  {
    a2 = sub_1B7800838();
  }

  v13 = [a1 URLForResource:v12 withExtension:a2];

  if (v13)
  {
    sub_1B77FF478();

    v14 = sub_1B77FF4F8();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v14 = sub_1B77FF4F8();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  sub_1B726A728(v9, v11);
  sub_1B77FF4F8();
  v16 = 1;
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_1B726A798(v11);
  *a3 = v16;
  return result;
}

uint64_t ContentPackageReader.signature()()
{
  v2 = sub_1B77FF4F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0x727574616E676973;
  v16 = 0xE900000000000065;
  v6 = *(v0 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  v17 = 0;
  v18 = 0;
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v2);
  v11 = v5;
  v12 = sub_1B755CFA8;
  v13 = &v14;
  os_unfair_lock_lock((v6 + 24));
  sub_1B755CFC0((v6 + 16), v19);
  v7 = (v6 + 24);
  if (v1)
  {
    os_unfair_lock_unlock(v7);
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    os_unfair_lock_unlock(v7);
    (*(v3 + 8))(v5, v2);
    if (v19[1] >> 60 == 15)
    {
      sub_1B7537230();
      swift_allocError();
      *v9 = xmmword_1B783CCD0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      return swift_willThrow();
    }

    else
    {
      return v19[0];
    }
  }
}

void sub_1B755C270(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a6;
  if (!a1)
  {
    v45 = sub_1B755CE94(MEMORY[0x1E69E7CC0]);
    v46 = type metadata accessor for LocalizedString();
    v47 = objc_allocWithZone(v46);
    v48 = &v47[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    *v48 = a2;
    *(v48 + 1) = a3;
    *&v47[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] = v45;
    v49 = &v47[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
    *v49 = 0;
    *(v49 + 1) = 0;
    v63.receiver = v47;
    v63.super_class = v46;

    v50 = objc_msgSendSuper2(&v63, sel_init);
LABEL_21:
    *v8 = v50;
    return;
  }

  v60 = a1;
  NSBundle.localizations(forTable:)(a4, a5);
  v12 = v11;
  v13 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  v59 = *(v12 + 16);
  if (!v59)
  {
LABEL_16:

    v40 = [v60 developmentLocalization];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1B7800868();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v8 = a6;
    v51 = type metadata accessor for LocalizedString();
    v52 = objc_allocWithZone(v51);
    v53 = &v52[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    *v53 = a2;
    *(v53 + 1) = a3;
    *&v52[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] = v13;
    v54 = &v52[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
    *v54 = v42;
    v54[1] = v44;
    v62.receiver = v52;
    v62.super_class = v51;

    v50 = objc_msgSendSuper2(&v62, sel_init);

    goto LABEL_21;
  }

  v14 = 0;
  v15 = (v12 + 40);
  v57 = a3;
  v58 = a2;
  v56 = v12;
  while (v14 < *(v12 + 16))
  {
    v61 = v14;
    v18 = *(v15 - 1);
    v17 = *v15;

    v19 = sub_1B7800838();
    v20 = sub_1B7800838();
    v21 = sub_1B7800838();
    v22 = [v60 localizedStringForKey:v19 value:0 table:v20 localization:v21];

    v23 = sub_1B7800868();
    v25 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v13;
    v28 = sub_1B724548C(v18, v17);
    v29 = v13[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v13[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B725CA84();
      }
    }

    else
    {
      sub_1B7249794(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1B724548C(v18, v17);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

      v28 = v33;
    }

    a2 = v58;
    v13 = v64;
    if (v32)
    {
      v16 = (v64[7] + 16 * v28);
      *v16 = v23;
      v16[1] = v25;
    }

    else
    {
      v64[(v28 >> 6) + 8] |= 1 << v28;
      v35 = (v13[6] + 16 * v28);
      *v35 = v18;
      v35[1] = v17;
      v36 = (v13[7] + 16 * v28);
      *v36 = v23;
      v36[1] = v25;
      v37 = v13[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_24;
      }

      v13[2] = v39;
    }

    v14 = v61 + 1;
    v15 += 2;
    v12 = v56;
    a3 = v57;
    if (v59 == v61 + 1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1B78021C8();
  __break(1u);
}

void sub_1B755C634(id *a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  *a1 = 0;
  if (*(a2 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_isBundleOwner) == 1)
  {
    v8 = [objc_opt_self() defaultManager];
    v9 = OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL;
    v10 = sub_1B77FF3F8();
    v25[0] = 0;
    v11 = [v8 removeItemAtURL:v10 error:v25];

    if (v11)
    {
      v12 = v25[0];
    }

    else
    {
      v13 = v25[0];
      sub_1B77FF318();

      swift_willThrow();
      if (qword_1EDAF6548 != -1)
      {
        swift_once();
      }

      v14 = sub_1B78000B8();
      __swift_project_value_buffer(v14, qword_1EDAF6550);
      (*(v5 + 16))(v7, a2 + v9, v4);
      v15 = sub_1B7800098();
      v16 = sub_1B78011D8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25[0] = v24;
        *v17 = 136315138;
        sub_1B755CD04();
        v18 = sub_1B7802068();
        v20 = v19;
        (*(v5 + 8))(v7, v4);
        v21 = sub_1B71A3EF8(v18, v20, v25);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1B7198000, v15, v16, "Failed to remove bundle at %s", v17, 0xCu);
        v22 = v24;
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1B8CA7A40](v22, -1, -1);
        MEMORY[0x1B8CA7A40](v17, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      swift_willThrow();
    }
  }
}

uint64_t ContentPackageReader.deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ContentPackageReader.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit25ContentPackageReaderErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B755CAE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B755CB34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1B755CB8C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ContentPackageReader()
{
  result = qword_1EB997290;
  if (!qword_1EB997290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B755CC14()
{
  result = sub_1B77FF4F8();
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

unint64_t sub_1B755CD04()
{
  result = qword_1EB99E0D0;
  if (!qword_1EB99E0D0)
  {
    sub_1B77FF4F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E0D0);
  }

  return result;
}

uint64_t sub_1B755CD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B755CDC0(uint64_t a1)
{
  v2 = type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B755CE1C(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B7800798();
  v4 = sub_1B7802368();

  return sub_1B7245FC0(a1, a2, v4);
}

unint64_t sub_1B755CE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F648);
    v3 = sub_1B7801CD8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B755CE1C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t EntityGroupAsyncSequence.makeAsyncIterator()@<X0>(unint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v9 = *(v1 + 16);
  v3 = v9;
  v10 = v4;
  v5 = *(v1 + 25);
  sub_1B719B06C(v1 + 32, v8);
  v6 = *(v1 + 72);
  sub_1B72274E8(v3, v4);

  return sub_1B755D060(&v9, v5, v8, v6, a1);
}

uint64_t sub_1B755D060@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  LOBYTE(v7) = a2;
  v52 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = *a1;
  LOBYTE(v13) = *(a1 + 8);
  v14 = sub_1B77FFA18();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v53 = a3;
  sub_1B719B06C(a3, v59);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9972A8);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = v15;
  *(v17 + qword_1EDB08720) = 0;
  v18 = v17 + qword_1EDB086F0;
  *v18 = 0;
  *(v18 + 8) = -1;
  v19 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_23:
    swift_once();
  }

  v20 = sub_1B78000B8();
  v21 = __swift_project_value_buffer(v20, qword_1EDAF6590);
  (*(*(v20 - 8) + 16))(v17 + v19, v21, v20);
  sub_1B7227AFC(v11, v17 + qword_1EDB086F8);
  *(v17 + 32) = v7 & 1;
  *(v17 + qword_1EDB08748) = a4;
  v22 = (v17 + qword_1EDB08740);
  *v22 = sub_1B755DB84;
  v22[1] = 0;
  v23 = *v18;
  *v18 = v12;
  v24 = *(v18 + 8);
  *(v18 + 8) = v13;

  sub_1B7201CF8(v23, v24);
  v25 = *__swift_project_boxed_opaque_existential_1(v59, v60);
  v26 = type metadata accessor for FinanceStore();
  v13 = &off_1F2F66960;
  v57 = v26;
  v58 = &off_1F2F66960;
  v56[0] = v25;
  sub_1B719B06C(v56, v55);
  v27 = swift_allocObject();
  sub_1B71E4C44(v55, v27 + 16);

  __swift_destroy_boxed_opaque_existential_1(v56);
  v28 = (v17 + qword_1EDB08708);
  *v28 = &unk_1B7810520;
  v28[1] = v27;
  v29 = *__swift_project_boxed_opaque_existential_1(v59, v60);
  v57 = v26;
  v58 = &off_1F2F66960;
  v56[0] = v29;
  sub_1B719B06C(v56, v55);
  v30 = swift_allocObject();
  sub_1B71E4C44(v55, v30 + 16);

  __swift_destroy_boxed_opaque_existential_1(v56);
  v31 = (v17 + qword_1EDB08718);
  *v31 = &unk_1B7824A70;
  v31[1] = v30;
  *(v17 + qword_1EDB08710) = v16;
  v32 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  sub_1B78013C8();
  v33 = [*(a4 + 16) persistentStoreCoordinator];
  v12 = [v33 persistentStores];

  sub_1B72BB97C();
  v16 = sub_1B7800C38();

  v50 = v11;
  v51 = a4;
  v49 = v17;
  if (!(v16 >> 62))
  {
    v7 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_25:

    v43 = 0;
    v45 = 0;
    v40 = v52;
    v42 = v49;
    v41 = v50;
    goto LABEL_26;
  }

  v7 = sub_1B7801958();
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_4:
  v17 = 0;
  v18 = 0x6C61636F4CLL;
  v54 = v16 & 0xC000000000000001;
  v19 = v16 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v54)
    {
      v34 = MEMORY[0x1B8CA5DC0](v17, v16);
    }

    else
    {
      if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v34 = *(v16 + 8 * v17 + 32);
    }

    v11 = v34;
    a4 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v13 = [v34 configurationName];
    v35 = sub_1B7800868();
    v37 = v36;

    if (v35 == 0x6C61636F4CLL && v37 == 0xE500000000000000)
    {
      break;
    }

    v12 = sub_1B78020F8();

    if (v12)
    {
      goto LABEL_18;
    }

    ++v17;
    if (a4 == v7)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v39 = [v11 identifier];

  v40 = v52;
  v42 = v49;
  v41 = v50;
  if (v39)
  {
    v43 = sub_1B7800868();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

LABEL_26:
  v46 = (v42 + qword_1EDB08730);
  *v46 = v43;
  v46[1] = v45;
  *(v42 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v47 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);

  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1B72BB9C8(v41);
  result = __swift_destroy_boxed_opaque_existential_1(v59);
  *(v42 + qword_1EDB08738) = v47;
  *v40 = v42;
  return result;
}

uint64_t EntityGroupAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return (sub_1B73DE9E8)(a1);
}

uint64_t sub_1B755D77C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return (sub_1B73DE9E8)(a1);
}

uint64_t sub_1B755D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B7800CD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B755D8C8, v6);
}

uint64_t sub_1B755D8C8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B73DE6C4;
  v2 = *(v0 + 24);

  return sub_1B73DE9E8(v2);
}

uint64_t EntityGroupAsyncSequence.deinit()
{
  sub_1B7201CF8(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t EntityGroupAsyncSequence.__deallocating_deinit()
{
  sub_1B7201CF8(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1B755D9FC()
{
  result = qword_1EB9972A0;
  if (!qword_1EB9972A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9972A0);
  }

  return result;
}

uint64_t sub_1B755DA50@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v3 + 24);
  v10 = *(v3 + 16);
  v4 = v10;
  v11 = v5;
  v6 = *(v3 + 25);
  sub_1B719B06C(v3 + 32, v9);
  v7 = *(v3 + 72);
  sub_1B72274E8(v4, v5);

  sub_1B755D060(&v10, v6, v9, v7, a1);
}

void sub_1B755DB30(void *a1)
{
  v1 = [a1 id];
  sub_1B77FF9E8();
}

uint64_t sub_1B755DB9C(void *(*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      v8 = a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x1B8CA4F20](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_1B755DCA0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9972B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1B8CA5DC0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1B7205418(v7, &qword_1EB9972B8);
      }

      else
      {
        v18 = v24;
        sub_1B7561BF4(v7, v24, type metadata accessor for MapsSuggestionsOrderPickup);
        sub_1B7561BF4(v18, v29, type metadata accessor for MapsSuggestionsOrderPickup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1B723F6E8(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1B723F6E8(v19 > 1, v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1B7561BF4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for MapsSuggestionsOrderPickup);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1B755DFE8(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1B77FF988();
  v30 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = MEMORY[0x1E69E7CC0];
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = MEMORY[0x1B8CA5DC0](v15, a3);
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_1B7205418(v8, &qword_1EB98EBD0);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1B723F170(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_1B723F170(v21 > 1, v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = sub_1B7801958();
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1B755E350(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(type metadata accessor for RawOrderFulfillment() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1B7205418(v8, &qword_1EB98EBD0);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1B723F170(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1B723F170(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

uint64_t ManagedExtractedOrderContent.archiveDate(calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  v18 = a1;
  v19 = a2;
  v11 = sub_1B755DFE8(sub_1B75619F4, v17, v10);

  sub_1B75286C8(v11, v9);

  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v9, 1, v12) != 1)
  {
    return (*(v13 + 32))(a3, v9, v12);
  }

  v15 = [v3 orderUpdateDate];
  sub_1B77FF928();

  result = (v14)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1B7205418(v9, &qword_1EB98EBD0);
  }

  return result;
}

BOOL ManagedExtractedOrderContent.isActive.getter()
{
  v1 = &off_1E7CAF000;
  if ([v0 orderStatusValue] == 3)
  {
    return 0;
  }

  v2 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v3)
  {
    do
    {
      v4 = ManagedExtractedOrderContent.shippingFulfillments.getter();
      v5 = v4;
      if (v4 >> 62)
      {
        v0 = sub_1B7801958();
        if (!v0)
        {
LABEL_27:

          return 0;
        }
      }

      else
      {
        v0 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      v1 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8CA5DC0](v1, v5);
        }

        else
        {
          if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v5 + 8 * v1 + 32);
        }

        v8 = v7;
        v9 = (v1 + 1);
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v10 = [v7 statusValue];

        if (v10 > 3u)
        {
          if (v10 >= 6u && v10 != 8)
          {
LABEL_21:

            return 1;
          }
        }

        else if (v10 != 1)
        {
          goto LABEL_21;
        }

        ++v1;
        if (v9 == v0)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v12 = sub_1B7801958();
    }

    while (v12);
  }

  return [v0 *(v1 + 3136)] != 3;
}