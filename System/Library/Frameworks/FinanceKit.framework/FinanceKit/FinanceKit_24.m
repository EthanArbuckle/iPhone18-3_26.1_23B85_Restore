void keypath_setTm_3(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

id sub_1B73D5E30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsBrand();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v73 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - v23;
  v25 = *(a1 + v4[11]);
  if (v25 <= 3)
  {
    if (*(a1 + v4[11]) > 1u)
    {
      if (v25 == 2)
      {
        if (*(a1 + 12))
        {
          v26 = 2;
          goto LABEL_27;
        }

        v29 = 2;
      }

      else
      {
        if (*(a1 + 12))
        {
          v26 = 3;
          goto LABEL_27;
        }

        v29 = 3;
      }
    }

    else
    {
      if (!*(a1 + v4[11]))
      {
        v27 = *(a1 + 12);
        v87 = 0;
        if ((v27 & 1) != 0 || !*(a1 + 24))
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      if (*(a1 + 12))
      {
        v26 = 1;
        goto LABEL_27;
      }

      v29 = 1;
    }
  }

  else if (*(a1 + v4[11]) <= 5u)
  {
    if (v25 == 4)
    {
      if (*(a1 + 12))
      {
        v26 = 4;
        goto LABEL_27;
      }

      v29 = 4;
    }

    else
    {
      if (*(a1 + 12))
      {
        v26 = 5;
        goto LABEL_27;
      }

      v29 = 5;
    }
  }

  else if (v25 == 6)
  {
    if (*(a1 + 12))
    {
      v26 = 6;
      goto LABEL_27;
    }

    v29 = 6;
  }

  else
  {
    if (v25 != 7)
    {
      v87 = 0;
      v28 = 1;
LABEL_39:
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v34 = sub_1B78000B8();
      __swift_project_value_buffer(v34, qword_1EDAF65B0);
      sub_1B73D6DD4(a1, v9);
      sub_1B73D6DD4(a1, v7);
      v35 = sub_1B7800098();
      v36 = sub_1B78011D8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v90 = v38;
        *v37 = 136315650;
        v88 = v87;
        v89 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991240);
        v39 = sub_1B7801748();
        v41 = sub_1B71A3EF8(v39, v40, &v90);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        if (v9[12])
        {
          v42 = 0xE300000000000000;
          v43 = 7104878;
        }

        else
        {
          LODWORD(v88) = *(v9 + 2);
          sub_1B72D2E9C();
          v43 = sub_1B7801838();
          v42 = v44;
        }

        sub_1B73D6E38(v9);
        v45 = sub_1B71A3EF8(v43, v42, &v90);

        *(v37 + 14) = v45;
        *(v37 + 22) = 2080;
        if (*(v7 + 3))
        {
          v46 = *(v7 + 2);
          v47 = *(v7 + 3);
        }

        else
        {
          v47 = 0xE300000000000000;
          v46 = 7104878;
        }

        sub_1B73D6E38(v7);
        v48 = sub_1B71A3EF8(v46, v47, &v90);

        *(v37 + 24) = v48;
        _os_log_impl(&dword_1B7198000, v35, v36, "Failed to initialize FKMapsBrand because a field was missing. Values:\n- category: %s,\n- resultProviderIdentifier: %s,\n- name: %s.", v37, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v38, -1, -1);
        MEMORY[0x1B8CA7A40](v37, -1, -1);
      }

      else
      {

        sub_1B73D6E38(v7);
        sub_1B73D6E38(v9);
      }

      v49 = 0;
      goto LABEL_75;
    }

    if (*(a1 + 12))
    {
      v26 = 7;
LABEL_27:
      v87 = v26;
LABEL_38:
      v28 = 0;
      goto LABEL_39;
    }

    v29 = 7;
  }

  v87 = v29;
  if (!*(a1 + 24))
  {
    goto LABEL_38;
  }

LABEL_36:
  v30 = *(a1 + 8);
  v31 = *a1;
  v32 = sub_1B7800838();
  v33 = *(a1 + 40);
  v82 = v32;
  v81 = v30;
  v80 = v31;
  if (v33)
  {
    v79 = sub_1B7800838();
  }

  else
  {
    v79 = 0;
  }

  sub_1B7205588(a1 + v4[8], v24, &unk_1EB994C70);
  v50 = sub_1B77FF4F8();
  v51 = *(*(v50 - 8) + 48);
  v85 = *(v50 - 8);
  v86 = v51;
  v52 = v51(v24, 1, v50);
  v84 = 0;
  if (v52 != 1)
  {
    v84 = sub_1B77FF3F8();
    (v85)[1](v24, v50);
  }

  sub_1B7205588(a1 + v4[9], v22, &unk_1EB994C70);
  if (v86(v22, 1, v50) == 1)
  {
    v78 = 0;
  }

  else
  {
    v78 = sub_1B77FF3F8();
    (v85)[1](v22, v50);
  }

  if (*(a1 + v4[10] + 8))
  {
    v77 = sub_1B7800838();
  }

  else
  {
    v77 = 0;
  }

  if (*(a1 + v4[12] + 8))
  {
    v76 = sub_1B7800838();
  }

  else
  {
    v76 = 0;
  }

  if (*(a1 + v4[13] + 8) >> 60 == 15)
  {
    v75 = 0;
  }

  else
  {
    v75 = sub_1B77FF598();
  }

  sub_1B7205588(a1 + v4[14], v19, &unk_1EB994C70);
  v53 = v86(v19, 1, v50);
  v83 = v2;
  if (v53 == 1)
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_1B77FF3F8();
    (v85)[1](v19, v50);
  }

  sub_1B7205588(a1 + v4[15], v12, &qword_1EB98EBD0);
  v54 = sub_1B77FF988();
  v55 = *(v54 - 8);
  v56 = 0;
  if ((*(v55 + 48))(v12, 1, v54) != 1)
  {
    v56 = sub_1B77FF8B8();
    (*(v55 + 8))(v12, v54);
  }

  sub_1B7205588(a1 + v4[16], v16, &unk_1EB994C70);
  v57 = v86(v16, 1, v50);
  v73 = a1;
  if (v57 == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_1B77FF3F8();
    (v85)[1](v16, v50);
  }

  v59 = v82;
  v60 = v81;
  v62 = v79;
  v61 = v80;
  v63 = v84;
  v65 = v77;
  v64 = v78;
  v86 = v58;
  v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v71 = v56;
  v72 = v58;
  v67 = v74;
  v68 = v75;
  v85 = v56;
  v69 = v76;
  v49 = [v66 initWithMUID:v61 resultProviderIdentifier:v60 name:v59 phoneNumber:v62 url:v63 heroImageURL:v64 heroImageAttributionName:v65 category:v87 mapsCategoryIdentifier:v76 encodedStylingInfo:v75 businessChatURL:v74 lastProcessedDate:v71 logoURL:v72];

  a1 = v73;
LABEL_75:
  sub_1B73D6E38(a1);
  return v49;
}

uint64_t sub_1B73D6748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v73 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v73 - v14;
  v16 = type metadata accessor for MapsBrand();
  v17 = v16[8];
  v18 = sub_1B77FF4F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v74 = v17;
  v20(a2 + v17, 1, 1, v18);
  v75 = v16[9];
  v20(a2 + v75, 1, 1, v18);
  v76 = v16[11];
  *(a2 + v76) = 8;
  v22 = a2 + v16[13];
  *v22 = xmmword_1B7810080;
  v77 = v16[14];
  v20(a2 + v77, 1, 1, v18);
  v23 = v16[15];
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v80 = v24;
  v81 = v23;
  v78 = v25 + 56;
  v79 = v26;
  (v26)(a2 + v23, 1, 1);
  v83 = v16[16];
  v86 = v20;
  v87 = v21;
  v20(a2 + v83, 1, 1, v18);
  v27 = a1;
  *a2 = [v27 muid];
  *(a2 + 8) = [v27 resultProviderIdentifier];
  *(a2 + 12) = 0;
  v28 = [v27 name];
  v29 = sub_1B7800868();
  v31 = v30;

  *(a2 + 16) = v29;
  *(a2 + 24) = v31;
  v32 = [v27 phoneNumber];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1B7800868();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  v37 = [v27 url];
  if (v37)
  {
    v38 = v37;
    sub_1B77FF478();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = 1;
  v86(v15, v39, 1, v18);
  sub_1B7213740(v15, a2 + v74, &unk_1EB994C70);
  v41 = [v27 heroImageURL];
  if (v41)
  {
    v42 = v41;
    sub_1B77FF478();

    v40 = 0;
  }

  v43 = v86;
  v86(v13, v40, 1, v18);
  sub_1B7213740(v13, a2 + v75, &unk_1EB994C70);
  v44 = [v27 heroImageAttributionName];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1B7800868();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = (a2 + v16[10]);
  *v49 = v46;
  v49[1] = v48;
  MapsCategory.init(from:)([v27 category], &v88);
  *(a2 + v76) = v88;
  v50 = [v27 mapsCategoryIdentifier];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1B7800868();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = v84;
  v56 = (a2 + v16[12]);
  *v56 = v52;
  v56[1] = v54;
  v57 = [v27 encodedStylingInfo];
  if (v57)
  {
    v58 = v57;
    v59 = sub_1B77FF5B8();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xF000000000000000;
  }

  v62 = v85;
  sub_1B72380B8(*v22, *(v22 + 8));
  *v22 = v59;
  *(v22 + 8) = v61;
  v63 = [v27 businessChatURL];
  if (v63)
  {
    v64 = v82;
    v65 = v63;
    sub_1B77FF478();

    v66 = 0;
  }

  else
  {
    v66 = 1;
    v64 = v82;
  }

  v67 = 1;
  v43(v64, v66, 1, v18);
  sub_1B7213740(v64, a2 + v77, &unk_1EB994C70);
  v68 = [v27 lastProcessedDate];

  if (v68)
  {
    sub_1B77FF928();

    v67 = 0;
  }

  v69 = 1;
  v79(v55, v67, 1, v80);
  sub_1B7213740(v55, a2 + v81, &qword_1EB98EBD0);
  v70 = [v27 logoURL];
  if (v70)
  {
    v71 = v70;
    sub_1B77FF478();

    v69 = 0;
    v27 = v71;
  }

  v43(v62, v69, 1, v18);
  return sub_1B7213740(v62, a2 + v83, &unk_1EB994C70);
}

uint64_t sub_1B73D6DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsBrand();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73D6E38(uint64_t a1)
{
  v2 = type metadata accessor for MapsBrand();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ManagedECommerceOrderContent.returnLabel(named:languages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  sub_1B735880C(v7, a3, KeyPath);
  v10 = v9;

  if (v3)
  {
    return a3;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_1B7801958();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0, v10);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_7:
    a3 = v12;

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t ManagedECommerceOrderContent.returnLabels(named:languages:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1B735880C(a1, a2, KeyPath);
  v6 = v5;

  return v6;
}

uint64_t sub_1B73D707C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v60 - v11);
  v71 = sub_1B77FF4F8();
  v13 = *(v71 - 8);
  v14 = MEMORY[0x1EEE9AC00](v71);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v60 - v17);
  v19 = type metadata accessor for LocalizedURLMap();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1B72CDE28(a3, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = v12;
    v72 = v16;
    v65 = a4;
    v66 = a1;
    v22 = 0;
    v23 = *v21;
    v24 = *(*v21 + 64);
    v61 = *v21 + 64;
    v64 = v23;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v13;
    v13 = v26 & v24;
    v28 = ((v25 + 63) >> 6);
    v62 = v27 + 16;
    v63 = v27;
    v70 = (v27 + 32);
    v60 = MEMORY[0x1E69E7CC0];
    v67 = a2;
    v29 = v71;
    while (v13)
    {
      v30 = v22;
      v31 = v72;
LABEL_15:
      v35 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v36 = v35 | (v30 << 6);
      v37 = v63;
      v38 = (*(v64 + 48) + 16 * v36);
      v40 = *v38;
      v39 = v38[1];
      (*(v63 + 16))(v31, *(v64 + 56) + *(v63 + 72) * v36, v29);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
      v42 = *(v41 + 48);
      v43 = v69;
      *v69 = v40;
      *(v43 + 1) = v39;
      v34 = v43;
      (*(v37 + 32))(&v43[v42], v31, v29);
      (*(*(v41 - 8) + 56))(v34, 0, 1, v41);

LABEL_16:
      v44 = v68;
      sub_1B7359A34(v34, v68);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
      {

        return v60;
      }

      v46 = *v44;
      v47 = v44[1];
      v48 = *(v45 + 48);
      type metadata accessor for ManagedOrderReturnLabel();
      v49 = v44 + v48;
      v50 = v72;
      (*v70)(v72, v49, v71);
      v51 = v67;

      v52 = v65;
      v53 = ManagedOrderReturnLabel.__allocating_init(name:url:localizationName:context:)(v66, v51, v50, v46, v47, v52);
      if (v53)
      {
        v54 = v53;
        MEMORY[0x1B8CA4F20]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();

        v60 = v73;
      }
    }

    if (v28 <= v22 + 1)
    {
      v32 = (v22 + 1);
    }

    else
    {
      v32 = v28;
    }

    v33 = v32 - 1;
    v31 = v72;
    v34 = v69;
    v18 = &qword_1EB9901D0;
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v28)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
        (*(*(v55 - 8) + 56))(v34, 1, 1, v55);
        v13 = 0;
        v22 = v33;
        goto LABEL_16;
      }

      v13 = *(v61 + 8 * v30);
      ++v22;
      if (v13)
      {
        v22 = v30;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v56 = a1;
  v57 = v71;
  (*(v13 + 32))(v18, v21, v71);
  type metadata accessor for ManagedOrderReturnLabel();
  (*(v13 + 16))(v16, v18, v57);

  v58 = ManagedOrderReturnLabel.__allocating_init(name:url:localizationName:context:)(v56, a2, v16, 0, 0, a4);
  if (v58)
  {
    v28 = v58;
    MEMORY[0x1B8CA4F20]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_24:
      sub_1B7800C88();

      (*(v13 + 8))(v18, v71);
      return v73;
    }

LABEL_28:
    sub_1B7800C58();
    goto LABEL_24;
  }

  (*(v13 + 8))(v18, v71);
  return MEMORY[0x1E69E7CC0];
}

uint64_t Duration.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FED28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Duration.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1B77FED28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B71B361C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B7205418(v4, &qword_1EB991538);
    v13 = 1;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v8, v4, v5);
    v14(v12, v8, v5);
    sub_1B73D7944(v12, a1);
    v13 = 0;
  }

  return (*(v10 + 56))(a1, v13, 1, v9);
}

uint64_t sub_1B73D7944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL Duration.isValid(startFrom:calendar:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1B77FFC08();
  v3 = sub_1B77FF988();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_1B7205418(v2, &qword_1EB98EBD0);
  return v4;
}

uint64_t Duration.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023E8();
  Duration.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1B7802158();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1B73D7B64()
{
  result = sub_1B77FED28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B73D7BDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B71B3E98(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1B73D7C58()
{
  result = qword_1EDAF8DD0;
  if (!qword_1EDAF8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF8DD0);
  }

  return result;
}

FinanceKit::MapsClassificationMissReason_optional __swiftcall MapsClassificationMissReason.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

void *ManagedMapsTransactionInsightImporter.__allocating_init(retryStrategy:analyticsProvider:)(void **a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1B73D9F20(a1, v9, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

void ManagedMapsTransactionInsightImporter.insertOrUpdateMapsMerchantInsight(_:icon:updateDate:on:in:)(uint64_t a1, __int128 *a2, void *a3, void *a4, void *a5)
{
  v14 = *a2;
  v15 = a2[1];
  v10 = *(a2 + 4);
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a5);
  if (!v5)
  {
    v12 = v11;
    v18 = 0;
    v13 = [v11 mapsInsightObject];
    if (!v13)
    {
      type metadata accessor for ManagedMapsTransactionInsight();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v12 setMapsInsightObject_];
    }

    sub_1B73D8130(v13, a1, a4, a3, a5);
    v16[0] = v14;
    v16[1] = v15;
    v17 = v10;
    sub_1B73DA004(v16, v12, a5);
    ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(a4, a5);
  }
}

uint64_t sub_1B73D7FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B73DB4AC();
  v5 = sub_1B73DB500();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

void *ManagedMapsTransactionInsightImporter.init(retryStrategy:analyticsProvider:)(void **a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1B73D9F20(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_1B73D8130(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v107 = a5;
  v94[1] = a4;
  v98 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = v94 - v8;
  v108 = type metadata accessor for MapsBrand();
  v106 = *(v108 - 8);
  v9 = MEMORY[0x1EEE9AC00](v108);
  v95 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = (v94 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = v94 - v15;
  v112 = type metadata accessor for MapsMerchant();
  v16 = *(v112 - 1);
  v17 = MEMORY[0x1EEE9AC00](v112);
  v19 = (v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v96 = v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = (v94 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v101 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v94 - v27;
  v29 = sub_1B77FF8B8();
  v30 = a1;
  [a1 setUpdatedAt_];

  v31 = 0;
  v111 = type metadata accessor for MapsTransactionInsight(0);
  v32 = v111[5];
  v109 = a2;
  if ((*(a2 + v32) & 0xFF00) != 0x200)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [a1 setFallbackCategoryValue_];

  v33 = *(v109 + v32);
  v34 = v109;
  if ((v33 & 0xFF00) == 0x200)
  {
    v35 = 0;
  }

  else
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v36 = v110;
  [v30 setTransactionCategorySourceValue_];

  v100 = v111[6];
  sub_1B7205588(v34 + v100, v28, &unk_1EB99CF50);
  v37 = (v16 + 48);
  v99 = *(v16 + 48);
  if (v99(v28, 1, v112) == 1)
  {
    v38 = 0;
    v39 = v106;
  }

  else
  {
    sub_1B73DB5B4(v28, v23, type metadata accessor for MapsMerchant);
    v40 = type metadata accessor for ManagedMapsMerchant();
    v41 = v107;
    v42 = static ManagedMapsMerchant.merchant(withMUID:in:)(*v23);
    if (v36)
    {
      v43 = type metadata accessor for MapsMerchant;
      v44 = v23;
      return sub_1B73DB554(v44, v43);
    }

    v38 = v42;
    if (v42)
    {
      sub_1B77BEDC0(v23, v42);
      if (v23[2])
      {
        v45 = sub_1B7800838();
      }

      else
      {
        v45 = 0;
      }

      [v38 setPlaceIdentifier_];

      v52 = (v23 + v112[18]);
      if (v52[1])
      {
        v53 = 0;
      }

      else
      {
        v53 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      }

      [v38 setLocationLatitudeValue_];

      v54 = (v23 + v112[19]);
      if (v54[1])
      {
        v55 = 0;
      }

      else
      {
        v55 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      }

      v39 = v106;
      [v38 setLocationLongitudeValue_];

      [v38 setPostalAddress_];
      v34 = v109;
    }

    else
    {
      v110 = 0;
      v46 = v96;
      sub_1B73DB61C(v23, v96, type metadata accessor for MapsMerchant);
      v94[0] = objc_allocWithZone(v40);
      sub_1B73DB61C(v46, v19, type metadata accessor for MapsMerchant);
      v47 = v41;
      v48 = v46;
      v49 = v47;
      v38 = sub_1B77BF7C8(v19, v47, v94[0]);

      v50 = *(v46 + 16);
      v51 = v38;
      if (v50)
      {
        v50 = sub_1B7800838();
      }

      [v38 setPlaceIdentifier_];

      v56 = v46 + v112[18];
      v36 = v110;
      if (*(v56 + 8))
      {
        v57 = 0;
      }

      else
      {
        v57 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      }

      [v38 setLocationLatitudeValue_];

      v58 = v48 + v112[19];
      if (*(v58 + 8))
      {
        v59 = 0;
      }

      else
      {
        v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      }

      [v38 setLocationLongitudeValue_];

      [v38 setPostalAddress_];
      sub_1B73DB554(v48, type metadata accessor for MapsMerchant);
      v39 = v106;
    }

    sub_1B73DB554(v23, type metadata accessor for MapsMerchant);
  }

  [v30 setMerchantObject_];

  v60 = v111[7];
  v61 = v105;
  sub_1B7205588(v34 + v60, v105, &qword_1EB9981B0);
  v64 = *(v39 + 48);
  v62 = v39 + 48;
  v63 = v64;
  if (v64(v61, 1, v108) == 1)
  {
    v65 = 0;
    goto LABEL_42;
  }

  v66 = v102;
  sub_1B73DB5B4(v61, v102, type metadata accessor for MapsBrand);
  v67 = type metadata accessor for ManagedMapsBrand();
  v68 = static ManagedMapsBrand.brand(withMUID:in:)(*v66);
  if (v36)
  {
    v43 = type metadata accessor for MapsBrand;
    v44 = v66;
    return sub_1B73DB554(v44, v43);
  }

  v65 = v68;
  v110 = 0;
  if (v68)
  {
    v111 = v37;
    v106 = v62;
    sub_1B77BE754(v66, v68);
    v70 = v97;
    sub_1B7205588(v66 + *(v108 + 64), v97, &unk_1EB994C70);
    v71 = sub_1B77FF4F8();
    v72 = *(v71 - 8);
    v73 = 0;
    if ((*(v72 + 48))(v70, 1, v71) != 1)
    {
      v73 = sub_1B77FF3F8();
      (*(v72 + 8))(v70, v71);
    }

    [v65 setLogoURL_];
    v74 = v102;
  }

  else
  {
    v75 = v95;
    sub_1B73DB61C(v66, v95, type metadata accessor for MapsBrand);
    v76 = objc_allocWithZone(v67);
    v74 = v66;
    v73 = v107;
    v65 = sub_1B77BF3C0(v75, v73);
  }

  sub_1B73DB554(v74, type metadata accessor for MapsBrand);
  v34 = v109;
LABEL_42:
  [v30 setBrandObject_];

  v77 = [v30 brandObject];
  if (v77)
  {
    v78 = v77;
    v79 = [v30 merchantObject];
    if (v79)
    {
      v80 = v79;
      [v79 setBrandObject_];

      v78 = v80;
    }
  }

  v81 = v34 + v60;
  v82 = v103;
  sub_1B7205588(v81, v103, &qword_1EB9981B0);
  if (v63(v82, 1, v108) == 1)
  {
    sub_1B7205418(v82, &qword_1EB9981B0);
  }

  else
  {
    v83 = *(v82 + 24);

    sub_1B73DB554(v82, type metadata accessor for MapsBrand);
    if (v83)
    {
      goto LABEL_52;
    }
  }

  v84 = v34 + v100;
  v85 = v101;
  sub_1B7205588(v84, v101, &unk_1EB99CF50);
  if (v99(v85, 1, v112) != 1)
  {
    v86 = *(v85 + 40);

    sub_1B73DB554(v85, type metadata accessor for MapsMerchant);

    if (!v86)
    {
      goto LABEL_53;
    }

LABEL_52:
    v87 = [v98 publicTransactionObject];
    v88 = sub_1B7800838();

    [v87 setMerchantName_];

    goto LABEL_53;
  }

  sub_1B7205418(v85, &unk_1EB99CF50);

LABEL_53:
  if ([v30 includeLocationsInTheNextRetry])
  {
    [v30 setIncludeLocationsInTheNextRetry_];
    [v30 setEarliestRetryDate_];
  }

  else
  {
    v89 = [v30 merchantObject];
    if (v89 || (v89 = [v30 brandObject]) != 0)
    {
    }

    else
    {
      [v30 setIncludeLocationsInTheNextRetry_];
      v93 = sub_1B77FF8B8();
      [v30 setEarliestRetryDate_];
    }
  }

  v90 = v104[9];
  v91 = v104[10];
  __swift_project_boxed_opaque_existential_1(v104 + 6, v90);
  v92 = [v30 failedAttemptsCount];
  v116 = &type metadata for ManagedMapsTransactionInsightImporter.MapsLookupEvent;
  v117 = &off_1F2F54A80;
  v113[0] = 0xD00000000000002ALL;
  v113[1] = 0x80000001B787DFC0;
  v114 = v92;
  v115 = 4;
  (*(v91 + 8))(v113, v90, v91);
  return __swift_destroy_boxed_opaque_existential_1(v113);
}

void ManagedMapsTransactionInsightImporter.insertOrUpdateMapsMerchantInsight(with:updateDate:on:in:)(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a4);
  if (!v4)
  {
    v9 = v8;
    v10 = [v8 mapsInsightObject];
    if (!v10)
    {
      type metadata accessor for ManagedMapsTransactionInsight();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v9 setMapsInsightObject_];
    }

    v11 = v7;
    sub_1B73D8F30(v10, &v11);
    ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(a3, a4);
  }
}

id sub_1B73D8F30(void *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33[-1] - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = sub_1B77FF8B8();
  [a1 setUpdatedAt_];

  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [a1 setClassificationMissReasonValue_];

  if (v14 == 3)
  {
    [a1 setIncludeLocationsInTheNextRetry_];
    v18 = v38[5];

    result = [a1 failedAttemptsCount];
    v20 = 0;
    v21 = (v18 + 32);
    v22 = *(v18 + 16) + 1;
    while (--v22)
    {
      v23 = __OFADD__(v20, *v21);
      v20 += *v21;
      if (v23)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v21 += 2;
      if (v20 >= result)
      {
LABEL_13:
        sub_1B77FF828();
        (*(v11 + 56))(v9, 0, 1, v10);
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (v14 == 1)
    {
      sub_1B77FF828();
      v17 = sub_1B77FF8B8();
      (*(v11 + 8))(v13, v10);
      [a1 setEarliestRetryDate_];

LABEL_21:
      v29 = v38[9];
      v30 = v38[10];
      __swift_project_boxed_opaque_existential_1(v38 + 6, v29);
      v31 = [a1 failedAttemptsCount];
      v36 = &type metadata for ManagedMapsTransactionInsightImporter.MapsLookupEvent;
      v37 = &off_1F2F54A80;
      v33[0] = 0xD00000000000002ALL;
      v33[1] = 0x80000001B787DFC0;
      v34 = v31;
      v35 = v14;
      (*(v30 + 8))(v33, v29, v30);
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

    v9 = v7;
    v24 = v38[5];

    result = [a1 failedAttemptsCount];
    v25 = 0;
    v26 = (v24 + 32);
    v27 = *(v24 + 16) + 1;
    while (--v27)
    {
      v23 = __OFADD__(v25, *v26);
      v25 += *v26;
      if (v23)
      {
        goto LABEL_23;
      }

      v26 += 2;
      if (v25 >= result)
      {
        goto LABEL_13;
      }
    }
  }

  (*(v11 + 56))(v9, 1, 1, v10);
LABEL_15:

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1B77FF8B8();
    (*(v11 + 8))(v9, v10);
  }

  [a1 setEarliestRetryDate_];

  if ((v14 & 0xFFFFFFFD) != 0)
  {
    goto LABEL_21;
  }

  result = [a1 failedAttemptsCount];
  if ((result + 1) == result + 1)
  {
    [a1 setFailedAttemptsCount_];
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

void ManagedMapsTransactionInsightImporter.insertOrUpdateMapsMerchantInsight(_:icon:heroImages:encodedStylingInfo:updateDate:on:in:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v98 = a6;
  v87 = a4;
  v101 = a7;
  v92 = a5;
  v90 = a3;
  v95 = a1;
  v84 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  MEMORY[0x1EEE9AC00](v84);
  v91 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v94);
  v89 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_1B77FF988();
  v93 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v77 - v18;
  v20 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v86 = a2[1];
  v85 = v26;
  v27 = *(a2 + 4);
  v28 = v97;
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(v101);
  if (v28)
  {
    return;
  }

  v30 = v29;
  v83 = v23;
  v79 = v14;
  v77 = v19;
  v78 = v17;
  v31 = v94;
  v81 = v22;
  v80 = v27;
  v32 = v93;
  v97 = 0;
  v33 = [v29 mapsInsightObject];
  v34 = v101;
  if (!v33)
  {
    type metadata accessor for ManagedMapsTransactionInsight();
    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v30 setMapsInsightObject_];
  }

  v35 = type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
  sub_1B73DB61C(v95 + *(v35 + 24), v25, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v96;
  v82 = v30;
  if (!EnumCaseMultiPayload)
  {
    v47 = v81;
    sub_1B73DB5B4(v25, v81, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
    v48 = *v47;
    if (*v47 >= -32768)
    {
      v49 = v98;
      if (v48 < 0x8000)
      {
        v50 = v34;
        [v33 setFailedAttemptsCount_];
        v51 = sub_1B77FF8B8();
        [v33 setUpdatedAt_];

        v44 = v81;
        LOWORD(v99[0]) = *(v81 + *(v20 + 28));
        v52 = v97;
        sub_1B73DA1F4(v33, v99, v81[1], v87, v49, v34);
        v97 = v52;
        if (v52)
        {

          v46 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome;
          goto LABEL_14;
        }

        v67 = v49;
        v68 = v44 + *(v20 + 24);
        v69 = v77;
        sub_1B73DB61C(v68, v77, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
        if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
        {
          [v33 setEarliestRetryDate_];
        }

        else
        {
          v95 = v33;
          v73 = v88;
          (*(v32 + 32))(v37, v69, v88);
          v74 = sub_1B77FF8B8();
          [v95 setEarliestRetryDate_];

          (*(v32 + 8))(v37, v73);
          v33 = v95;
        }

        v40 = v90;
        v61 = v80;
        v41 = v67;
        v62 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome;
        v63 = v81;
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v38 = v89;
    sub_1B73DB5B4(v25, v89, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
    v39 = *v38;
    v40 = v90;
    if (*v38 >= -32768)
    {
      v41 = v98;
      v42 = v88;
      if (v39 < 0x8000)
      {
        [v33 setFailedAttemptsCount_];
        v43 = sub_1B77FF8B8();
        [v33 setUpdatedAt_];

        v44 = v89;
        LOWORD(v99[0]) = *(v89 + *(v31 + 28));
        v45 = v97;
        sub_1B73DA1F4(v33, v99, v89[1], v87, v41, v34);
        v97 = v45;
        if (v45)
        {

          v46 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
LABEL_14:
          sub_1B73DB554(v44, v46);
          return;
        }

        v64 = v44 + *(v31 + 24);
        v65 = v78;
        sub_1B73DB61C(v64, v78, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
        if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
        {
          [v33 setEarliestRetryDate_];
        }

        else
        {
          v71 = v96;
          (*(v32 + 32))(v96, v65, v42);
          v72 = sub_1B77FF8B8();
          [v33 setEarliestRetryDate_];

          (*(v32 + 8))(v71, v42);
        }

        v61 = v80;
        v50 = v34;
        v62 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
        v63 = v89;
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_34;
  }

  v53 = v91;
  sub_1B73DB5B4(v25, v91, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
  v54 = *v53;
  v40 = v90;
  if (*v53 < -32768)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v55 = v88;
  if (v54 >= 0x8000)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v50 = v34;
  [v33 setFailedAttemptsCount_];
  v56 = sub_1B77FF8B8();
  [v33 setUpdatedAt_];

  v57 = v79;
  sub_1B73DB61C(v91 + *(v84 + 20), v79, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    [v33 setEarliestRetryDate_];
  }

  else
  {
    v59 = v96;
    (*(v32 + 32))(v96, v57, v55);
    v60 = sub_1B77FF8B8();
    [v33 setEarliestRetryDate_];

    (*(v32 + 8))(v59, v55);
  }

  v41 = v98;
  v61 = v80;
  v62 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome;
  v63 = v91;
LABEL_29:
  sub_1B73DB554(v63, v62);
  v99[0] = v85;
  v99[1] = v86;
  v100 = v61;
  v75 = v82;
  v76 = v97;
  sub_1B73DA004(v99, v82, v50);
  if (!v76)
  {
    sub_1B73DB0F8(v40, v75);
    ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v41, v50);
  }
}

unint64_t sub_1B73D9D54()
{
  v1 = *(v0 + 18);
  v2 = sub_1B7202F9C(MEMORY[0x1E69E7CC0]);
  v3 = sub_1B7802288();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B7393128(v3, 0x744164656C696166, 0xEE007374706D6574, isUniquelyReferenced_nonNull_native);
  v5 = sub_1B7800CC8();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B7393128(v5, 0x73736563637573, 0xE700000000000000, v6);
  if (v1 != 4)
  {
    v7 = sub_1B7802288();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B7393128(v7, 0x736165527373696DLL, 0xEA00000000006E6FLL, v8);
  }

  return v2;
}

uint64_t ManagedMapsTransactionInsightImporter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  return v0;
}

uint64_t ManagedMapsTransactionInsightImporter.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_1B73D9F20(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a1;
  type metadata accessor for ManagedMapsMerchantImporter();
  a3[2] = swift_allocObject();
  type metadata accessor for ManagedMapsBrandImporter();
  a3[3] = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  v11 = swift_allocObject();
  v12 = &unk_1F2F43318;
  if (v10)
  {
    v12 = v10;
  }

  a3[4] = v11;
  a3[5] = v12;
  sub_1B71E4C44(&v14, (a3 + 6));
  return a3;
}

void sub_1B73DA004(uint64_t *a1, id a2, uint64_t a3)
{
  v5 = a1[4];
  if (v5 == 1)
  {
    [a2 setTransactionIconObject_];
    return;
  }

  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v28 = v8;
  v29 = v7;
  v30 = v10;
  LOBYTE(v31) = v9;
  v32 = v5;
  sub_1B720ABEC(v8, v7);
  v11 = v5;
  v12 = sub_1B720C62C(&v28, a3);
  if (v3)
  {
    goto LABEL_4;
  }

  v17 = v12;
  v33 = v9;
  v18 = [a2 transactionIconObject];
  v19 = &selRef_heroImageAttributionName;
  if (v18)
  {
    v20 = v17;
    v21 = v18;
    v22 = [v18 objectID];

    v19 = &selRef_heroImageAttributionName;
    v17 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v17 v19[82]];
  v24 = v23;
  if (!v22)
  {
    if (!v23)
    {

      v13 = v8;
      v14 = v7;
      v15 = v10;
      v16 = v33;
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (!v23)
  {
    v24 = v22;
LABEL_16:
    v27 = v17;

    v9 = v33;
    goto LABEL_17;
  }

  v27 = v17;
  sub_1B723C524();
  v25 = sub_1B7801558();

  v9 = v33;
  if (v25)
  {

LABEL_4:
    v13 = v8;
    v14 = v7;
    v15 = v10;
    v16 = v9;
LABEL_5:
    sub_1B720ACE8(v13, v14, v15, v16, v5);
    return;
  }

LABEL_17:
  v26 = v27;
  [a2 setTransactionIconObject_];
  sub_1B720ACE8(v8, v7, v10, v9, v5);
}

uint64_t sub_1B73DA1F4(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v136 = a6;
  v124 = a5;
  v135 = a4;
  v142 = a1;
  v145 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v137 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v133 = (&v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993988);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v132 = &v120 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v127 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v120 - v16;
  v146 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v139 = (&v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  v131 = *(v147 - 8);
  v18 = MEMORY[0x1EEE9AC00](v147);
  v120 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v125 = &v120 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v126 = &v120 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v121 = &v120 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v122 = &v120 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v120 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v120 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v123 = &v120 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993990);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v128 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v138 = &v120 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v120 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v140 = &v120 - v43;
  v141 = a3;
  v129 = *a2;
  if (a3 && (v44 = *(v141 + 16)) != 0)
  {
    v45 = (v144 + 56);
    v46 = v141 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v47 = *(v131 + 72);
    while (1)
    {
      sub_1B73DB61C(v46, v33, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      sub_1B73DB61C(v33, v30, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1B73DB554(v30, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      (*v45)(v42, 1, 1, v146);
      sub_1B73DB554(v33, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      sub_1B7205418(v42, &qword_1EB993990);
      v46 += v47;
      if (!--v44)
      {
        goto LABEL_6;
      }
    }

    sub_1B73DB5B4(v30, v42, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    v66 = *v45;
    v50 = v146;
    (*v45)(v42, 0, 1, v146);
    sub_1B7205418(v42, &qword_1EB993990);
    v67 = v123;
    sub_1B73DB5B4(v33, v123, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    v68 = v122;
    sub_1B73DB61C(v67, v122, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B73DB554(v68, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      v69 = 1;
      v51 = v143;
      v49 = v140;
    }

    else
    {
      v49 = v140;
      sub_1B73DB5B4(v68, v140, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
      v69 = 0;
      v51 = v143;
    }

    v48 = v144;
    v52 = v139;
    v66(v49, v69, 1, v50);
    sub_1B73DB554(v67, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  }

  else
  {
LABEL_6:
    v48 = v144;
    v49 = v140;
    v50 = v146;
    (*(v144 + 56))(v140, 1, 1, v146);
    v51 = v143;
    v52 = v139;
  }

  v53 = v138;
  sub_1B7205588(v49, v138, &qword_1EB993990);
  v56 = *(v48 + 48);
  v54 = v48 + 48;
  v55 = v56;
  if ((v56)(v53, 1, v50) == 1)
  {
    v57 = 0;
LABEL_18:
    [v142 setBrandObject_];

    v143 = v51;
    v144 = v54;
    v139 = v55;
    if (v141 && (v70 = *(v141 + 16)) != 0)
    {
      v71 = (v137 + 56);
      v72 = v141 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
      v73 = *(v131 + 72);
      v75 = v126;
      v74 = v127;
      v76 = v125;
      while (1)
      {
        sub_1B73DB61C(v72, v75, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
        sub_1B73DB61C(v75, v76, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B73DB554(v76, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
        (*v71)(v74, 1, 1, v145);
        sub_1B73DB554(v75, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
        sub_1B7205418(v74, &qword_1EB993988);
        v72 += v73;
        if (!--v70)
        {
          goto LABEL_23;
        }
      }

      sub_1B73DB5B4(v76, v74, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v97 = *v71;
      (*v71)(v74, 0, 1, v145);
      sub_1B7205418(v74, &qword_1EB993988);
      v98 = v121;
      sub_1B73DB5B4(v75, v121, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      v99 = v120;
      sub_1B73DB61C(v98, v120, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v78 = v134;
        sub_1B73DB5B4(v99, v134, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
        v100 = 0;
        v80 = v143;
      }

      else
      {
        sub_1B73DB554(v99, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
        v100 = 1;
        v80 = v143;
        v78 = v134;
      }

      v77 = v137;
      v81 = v133;
      v119 = v145;
      v97(v78, v100, 1, v145);
      v79 = v119;
      sub_1B73DB554(v98, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    }

    else
    {
LABEL_23:
      v77 = v137;
      v78 = v134;
      v79 = v145;
      (*(v137 + 56))(v134, 1, 1, v145);
      v80 = v143;
      v81 = v133;
    }

    v82 = v132;
    sub_1B7205588(v78, v132, &qword_1EB993988);
    v83 = *(v77 + 48);
    v84 = v83(v82, 1, v79);
    v49 = v140;
    if (v84 == 1)
    {
      v85 = 0;
    }

    else
    {
      sub_1B73DB5B4(v82, v81, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v86 = v135;
      v87 = *(v135 + 16);
      v147 = v83;
      if (v87 && (v88 = sub_1B7245B3C(*v81, v81[1]), (v89 & 1) != 0))
      {
        v90 = v78;
        v91 = (*(v86 + 56) + 16 * v88);
        v92 = *v91;
        v93 = v91[1];
        sub_1B720ABEC(*v91, v93);
      }

      else
      {
        v90 = v78;
        v92 = 0;
        v93 = 0xF000000000000000;
      }

      v94 = sub_1B75A86F8(v81, v92, v93, v136);
      v95 = v81;
      if (v80)
      {
        sub_1B72380B8(v92, v93);
        sub_1B73DB554(v81, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
        v96 = v90;
LABEL_51:
        sub_1B7205418(v96, &qword_1EB993988);
        return sub_1B7205418(v49, &qword_1EB993990);
      }

      v85 = v94;
      sub_1B73DB554(v95, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
      sub_1B72380B8(v92, v93);
      v78 = v90;
      v83 = v147;
    }

    v101 = v142;
    [v142 setMerchantObject_];

    v102 = [v101 brandObject];
    v103 = v130;
    if (v102)
    {
      v104 = v102;
      v105 = [v142 merchantObject];
      if (v105)
      {
        v106 = v105;
        [v105 setBrandObject_];

        v104 = v106;
      }
    }

    v107 = v128;
    sub_1B7205588(v49, v128, &qword_1EB993990);
    if ((v139)(v107, 1, v146) == 1)
    {
      sub_1B7205418(v107, &qword_1EB993990);
    }

    else
    {
      v108 = v107;
      v109 = *(v107 + 24);

      sub_1B73DB554(v108, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
      if (v109)
      {
        v110 = v129;
        goto LABEL_46;
      }
    }

    sub_1B7205588(v78, v103, &qword_1EB993988);
    if (v83(v103, 1, v79) == 1)
    {
      sub_1B7205418(v103, &qword_1EB993988);

      v110 = v129;
LABEL_47:
      if (v110 == 2)
      {
        v114 = v142;
        [v142 setFallbackCategoryValue_];
        [v114 setTransactionCategorySourceValue_];
      }

      else
      {
        v115 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
        v116 = v142;
        [v142 setFallbackCategoryValue_];

        v117 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
        [v116 setTransactionCategorySourceValue_];
      }

      v96 = v78;
      goto LABEL_51;
    }

    v111 = *(v103 + 24);

    sub_1B73DB554(v103, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);

    v110 = v129;
    if (!v111)
    {
      goto LABEL_47;
    }

LABEL_46:
    v112 = [v124 publicTransactionObject];
    v113 = sub_1B7800838();

    [v112 setMerchantName_];

    goto LABEL_47;
  }

  sub_1B73DB5B4(v53, v52, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  v58 = v135;
  v59 = v136;
  if (*(v135 + 16) && (v60 = sub_1B7245B3C(*v52, v52[1]), (v61 & 1) != 0))
  {
    v62 = (*(v58 + 56) + 16 * v60);
    v63 = *v62;
    v64 = v62[1];
    sub_1B720ABEC(*v62, v64);
  }

  else
  {
    v63 = 0;
    v64 = 0xF000000000000000;
  }

  v65 = sub_1B7227F18(v52, v63, v64, v59);
  if (!v51)
  {
    v57 = v65;
    sub_1B73DB554(v52, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    sub_1B72380B8(v63, v64);
    goto LABEL_18;
  }

  sub_1B72380B8(v63, v64);
  sub_1B73DB554(v52, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  return sub_1B7205418(v49, &qword_1EB993990);
}

uint64_t sub_1B73DB0F8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MapsHeroImageResult(0);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_1B73DB61C(v10, v8, type metadata accessor for MapsHeroImageResult);
      v13 = v8[*(v4 + 24)];
      v14 = [a2 mapsInsightObject];
      if (v13)
      {
        if (v14)
        {
          v15 = v14;
          v16 = [v14 merchantObject];

          if (v16)
          {
            v17 = sub_1B77FF3F8();
            [v16 setHeroImageURL_];
          }
        }

        v18 = [a2 mapsInsightObject];
        if (!v18)
        {
          goto LABEL_5;
        }

        v19 = v18;
        v20 = [v18 merchantObject];
      }

      else
      {
        if (v14)
        {
          v21 = v14;
          v22 = [v14 brandObject];

          if (v22)
          {
            v23 = sub_1B77FF3F8();
            [v22 setHeroImageURL_];
          }
        }

        v24 = [a2 mapsInsightObject];
        if (!v24)
        {
          goto LABEL_5;
        }

        v19 = v24;
        v20 = [v24 brandObject];
      }

      v25 = v20;

      if (v25)
      {
        if (*(v8 + 1))
        {
          v12 = sub_1B7800838();
        }

        else
        {
          v12 = 0;
        }

        [v25 setHeroImageAttributionName_];
      }

LABEL_5:
      result = sub_1B73DB554(v8, type metadata accessor for MapsHeroImageResult);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_1B73DB390()
{
  result = qword_1EB993960;
  if (!qword_1EB993960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993960);
  }

  return result;
}

unint64_t sub_1B73DB3E8()
{
  result = qword_1EB993968;
  if (!qword_1EB993968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993968);
  }

  return result;
}

unint64_t sub_1B73DB4AC()
{
  result = qword_1EB993978;
  if (!qword_1EB993978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993978);
  }

  return result;
}

unint64_t sub_1B73DB500()
{
  result = qword_1EB993980;
  if (!qword_1EB993980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993980);
  }

  return result;
}

uint64_t sub_1B73DB554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B73DB5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B73DB61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1B73DB698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1B73DB6E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PrismWebServiceRegisterTransactionRequest.topicIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1B720ABEC(v2, v3);
}

uint64_t PrismWebServiceRegisterTransactionRequest.topicIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B720A388(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t PrismWebServiceRegisterTransactionRequest.credentialIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrismWebServiceRegisterTransactionRequest(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrismWebServiceRegisterTransactionRequest.credentialIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrismWebServiceRegisterTransactionRequest(0) + 20);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrismWebServiceRegisterTransactionRequest.publicKeyAuthenticationCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrismWebServiceRegisterTransactionRequest(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993998);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrismWebServiceRegisterTransactionRequest.publicKeyAuthenticationCode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrismWebServiceRegisterTransactionRequest(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993998);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrismWebServiceRegisterTransactionRequest.init(topicIdentifier:credentialIdentifier:publicKeyX963Representation:publicKeyAuthenticationCode:encryptedTransactionInfo:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = *a1;
  v15 = type metadata accessor for PrismWebServiceRegisterTransactionRequest(0);
  v16 = v15[5];
  v17 = sub_1B77FFA18();
  (*(*(v17 - 8) + 32))(&a8[v16], a2, v17);
  v18 = &a8[v15[6]];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = v15[7];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993998);
  result = (*(*(v20 - 8) + 32))(&a8[v19], a5, v20);
  v22 = &a8[v15[8]];
  *v22 = a6;
  *(v22 + 1) = a7;
  return result;
}

uint64_t PrismWebServiceRegisterTransactionRequest.pathComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B781A380;
  *(v1 + 32) = 12662;
  *(v1 + 40) = 0xE200000000000000;
  strcpy((v1 + 48), "transactions");
  *(v1 + 61) = 0;
  *(v1 + 62) = -5120;
  *(v1 + 64) = sub_1B72B71E4(*v0, *(v0 + 8));
  *(v1 + 72) = v2;
  *(v1 + 80) = 0x656369766564;
  *(v1 + 88) = 0xE600000000000000;
  strcpy((v1 + 96), "registration");
  *(v1 + 109) = 0;
  *(v1 + 110) = -5120;
  return v1;
}

uint64_t PrismWebServiceRegisterTransactionRequest.makeJSONEncoder()()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  (*(v1 + 104))(v3, *MEMORY[0x1E6967FC8], v0);
  sub_1B77FE988();
  return v4;
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.credentialIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.credentialIdentifier.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.supportedEncryptionSchemes.getter()
{
  type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.supportedEncryptionSchemes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B73DBFE8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  v3 = *v2;
  sub_1B720ABEC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1B73DC04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 24);
  result = sub_1B720A388(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.publicKeyMAC.getter()
{
  v1 = v0 + *(type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0) + 28);
  v2 = *v1;
  sub_1B720ABEC(*v1, *(v1 + 8));
  return v2;
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.publicKeyMAC.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0) + 28);
  result = sub_1B720A388(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_1B73DC1CC(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  v3 = *v2;
  sub_1B720ABEC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1B73DC230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 32);
  result = sub_1B720A388(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.maximumSupportedCloudKitSchemaVersion.setter(uint64_t a1)
{
  result = type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_1B73DC368()
{
  v1 = 0x654B63696C627570;
  v2 = *v0;
  v3 = 0x746361736E617274;
  if (v2 != 4)
  {
    v3 = 0xD000000000000025;
  }

  if (v2 == 3)
  {
    v4 = 0x654B63696C627570;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B73DC438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B73DD868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B73DC460(uint64_t a1)
{
  v2 = sub_1B73DC814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73DC49C(uint64_t a1)
{
  v2 = sub_1B73DC814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9939A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73DC814();
  sub_1B78023F8();
  LOBYTE(v18) = 0;
  sub_1B77FFA18();
  sub_1B71A69FC(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
    v18 = *(v3 + v9[5]);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B721523C(&qword_1EB98F960);
    sub_1B7801FC8();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v18 = *v10;
    v19 = v11;
    v20 = 2;
    sub_1B720ABEC(v18, v11);
    sub_1B727A60C();
    sub_1B7801FC8();
    sub_1B720A388(v18, v19);
    v12 = (v3 + v9[7]);
    v13 = v12[1];
    v18 = *v12;
    v19 = v13;
    v20 = 3;
    sub_1B720ABEC(v18, v13);
    sub_1B7801FC8();
    sub_1B720A388(v18, v19);
    v14 = (v3 + v9[8]);
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v20 = 4;
    sub_1B720ABEC(v18, v15);
    sub_1B7801FC8();
    sub_1B720A388(v18, v19);
    LOBYTE(v18) = 5;
    sub_1B7801FA8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B73DC814()
{
  result = qword_1EB9939A8;
  if (!qword_1EB9939A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9939A8);
  }

  return result;
}

uint64_t PrismWebServiceRegisterTransactionRequest.JSONBody.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B77FFA18();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9939B0);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v21 - v6;
  v8 = type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73DC814();
  v27 = v7;
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B73DCE10(aAppleHpkeV1_2);
  }

  else
  {
    v22 = v8;
    v11 = v24;
    v12 = v10;
    LOBYTE(v29) = 0;
    sub_1B71A69FC(&qword_1EB98F740, MEMORY[0x1E69695A8]);
    v13 = v25;
    sub_1B7801E48();
    (*(v11 + 32))(v12, v13, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    v30 = 1;
    sub_1B721523C(&qword_1EDAF64A8);
    sub_1B7801E48();
    v14 = v22;
    v15 = v22[5];
    v25 = v12;
    *&v12[v15] = v29;
    v30 = 2;
    sub_1B727A53C();
    sub_1B7801E48();
    v16 = v26;
    *&v25[v14[6]] = v29;
    v30 = 3;
    sub_1B7801E48();
    *&v25[v14[7]] = v29;
    v30 = 4;
    sub_1B7801E48();
    v17 = v25;
    *&v25[v14[8]] = v29;
    LOBYTE(v29) = 5;
    v18 = sub_1B7801E28();
    v19 = v14[9];
    (*(v16 + 8))(v27, v28);
    *(v17 + v19) = v18;
    sub_1B73DCE64(v17, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B73DCEC8(v17);
  }
}

uint64_t sub_1B73DCE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73DCEC8(uint64_t a1)
{
  v2 = type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrismWebServiceRegisterTransactionRequest.jsonBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrismWebServiceRegisterTransactionRequest(0);
  v5 = v4[5];
  v6 = sub_1B77FFA18();
  (*(*(v6 - 8) + 16))(a1, v2 + v5, v6);
  v7 = v4[7];
  v8 = (v2 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993998);
  v24 = v11;
  v25 = sub_1B73DD114();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v2 + v7, v11);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1B720ABEC(v9, v10);
  sub_1B77FEDA8();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v13 = (v2 + v4[8]);
  v14 = *v13;
  v15 = v13[1];
  v16 = type metadata accessor for PrismWebServiceRegisterTransactionRequest.JSONBody(0);
  *(a1 + v16[5]) = &unk_1F2F40FD0;
  v17 = (a1 + v16[6]);
  *v17 = v9;
  v17[1] = v10;
  v18 = (a1 + v16[7]);
  *v18 = v21;
  v18[1] = v22;
  v19 = (a1 + v16[8]);
  *v19 = v14;
  v19[1] = v15;
  *(a1 + v16[9]) = 1;
  return sub_1B720ABEC(v14, v15);
}

unint64_t sub_1B73DD114()
{
  result = qword_1EB99A680;
  if (!qword_1EB99A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A680);
  }

  return result;
}

uint64_t sub_1B73DD17C()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  (*(v1 + 104))(v3, *MEMORY[0x1E6967FC8], v0);
  sub_1B77FE988();
  return v4;
}

void PrismWebServiceRegisterTransactionResponse.init(httpResponse:)(void *a1)
{
  v2 = [a1 statusCode];
  if (v2 > 400)
  {
    if (v2 == 401 || v2 == 403)
    {
      type metadata accessor for FinanceNetworkError();
      sub_1B71A69FC(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_10;
    }

LABEL_8:
    v3 = v2;
    type metadata accessor for FinanceNetworkError();
    sub_1B71A69FC(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v4 = v3;
    goto LABEL_9;
  }

  if (v2 != 200 && v2 != 201)
  {
    goto LABEL_8;
  }

LABEL_10:
}

uint64_t PrismWebServiceRegisterTransactionResponse.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

unint64_t sub_1B73DD47C()
{
  result = qword_1EB9939C0;
  if (!qword_1EB9939C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9939C0);
  }

  return result;
}

void sub_1B73DD4F8()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B73DD594();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B73DD594()
{
  if (!qword_1EB9939D8)
  {
    sub_1B78006D8();
    sub_1B71A69FC(&qword_1EB99ED20, MEMORY[0x1E6966620]);
    v0 = sub_1B78004F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9939D8);
    }
  }
}

void sub_1B73DD650()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B73DD6F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B73DD6F0()
{
  if (!qword_1EDAFA080)
  {
    v0 = sub_1B7800CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFA080);
    }
  }
}

unint64_t sub_1B73DD764()
{
  result = qword_1EB9939F0;
  if (!qword_1EB9939F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9939F0);
  }

  return result;
}

unint64_t sub_1B73DD7BC()
{
  result = qword_1EB9939F8;
  if (!qword_1EB9939F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9939F8);
  }

  return result;
}

unint64_t sub_1B73DD814()
{
  result = qword_1EB993A00;
  if (!qword_1EB993A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB993A00);
  }

  return result;
}

uint64_t sub_1B73DD868(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001B787DE60 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B787DFF0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xEC00000043414D79 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF6F666E496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001B787E010 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1B73DDA7C()
{
  v0 = sub_1B7800838();
  v1 = sub_1B7800838();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  byte_1EB993A08 = AppBooleanValue != 0;
}

void sub_1B73DDB34()
{
  v0 = sub_1B7800838();
  v1 = *MEMORY[0x1E695E890];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  byte_1EB993A09 = AppBooleanValue != 0;
}

uint64_t sub_1B73DDBDC(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1B73DDC6C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

uint64_t InternalTransactionAsyncSequence.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  sub_1B7227AFC(v1 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_accountID, &v44 - v6);
  v8 = *(v1 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken);
  LOBYTE(v9) = *(v1 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken + 8);
  LOBYTE(v10) = *(v1 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_isMonitoring);
  sub_1B719B06C(v1 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyProvider, v55);
  v11 = *(v1 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_coreDataStore);
  v46 = v7;
  sub_1B7227AFC(v7, v5);
  sub_1B719B06C(v55, v53);
  sub_1B72274E8(v8, v9);
  v12 = sub_1B72020F4(&unk_1F2F42540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A20);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + qword_1EDB08720) = 0;
  v14 = v13 + qword_1EDB086F0;
  *v14 = 0;
  *(v14 + 8) = -1;
  v15 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_23:
    swift_once();
  }

  v16 = sub_1B78000B8();
  v17 = __swift_project_value_buffer(v16, qword_1EDAF6590);
  (*(*(v16 - 8) + 16))(v13 + v15, v17, v16);
  sub_1B7227AFC(v5, v13 + qword_1EDB086F8);
  *(v13 + 32) = v10;
  *(v13 + qword_1EDB08748) = v11;
  v18 = (v13 + qword_1EDB08740);
  *v18 = sub_1B73F1470;
  v18[1] = 0;
  v19 = *v14;
  *v14 = v8;
  v20 = *(v14 + 8);
  *(v14 + 8) = v9;

  sub_1B7201CF8(v19, v20);
  v21 = *__swift_project_boxed_opaque_existential_1(v53, v54);
  v22 = type metadata accessor for FinanceStore();
  v10 = &off_1F2F66960;
  v51 = v22;
  v52 = &off_1F2F66960;
  v50[0] = v21;
  sub_1B719B06C(v50, v49);
  v9 = swift_allocObject();
  sub_1B71E4C44(v49, v9 + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v23 = (v13 + qword_1EDB08708);
  *v23 = &unk_1B7810520;
  v23[1] = v9;
  v24 = *__swift_project_boxed_opaque_existential_1(v53, v54);
  v51 = v22;
  v52 = &off_1F2F66960;
  v50[0] = v24;
  sub_1B719B06C(v50, v49);
  v25 = swift_allocObject();
  sub_1B71E4C44(v49, v25 + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v26 = (v13 + qword_1EDB08718);
  *v26 = &unk_1B7824A70;
  v26[1] = v25;
  *(v13 + qword_1EDB08710) = v12;
  v27 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  sub_1B78013C8();
  v28 = [*(v11 + 16) persistentStoreCoordinator];
  v29 = [v28 persistentStores];

  sub_1B7205540(0, &qword_1EDAFC540);
  v12 = sub_1B7800C38();

  v45 = v5;
  v44 = v13;
  if (!(v12 >> 62))
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_25:

    v38 = 0;
    v40 = 0;
    v36 = v45;
    v37 = v44;
    goto LABEL_26;
  }

  v11 = sub_1B7801958();
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_4:
  v8 = 0;
  v14 = 0x6C61636F4CLL;
  v48 = v12 & 0xC000000000000001;
  v15 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48)
    {
      v30 = MEMORY[0x1B8CA5DC0](v8, v12);
    }

    else
    {
      if (v8 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v30 = *(v12 + 8 * v8 + 32);
    }

    v5 = v30;
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = [v30 configurationName];
    v31 = sub_1B7800868();
    v13 = v32;

    if (v31 == 0x6C61636F4CLL && v13 == 0xE500000000000000)
    {
      break;
    }

    v34 = sub_1B78020F8();

    if (v34)
    {
      goto LABEL_18;
    }

    ++v8;
    if (v9 == v11)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v35 = [v5 identifier];

  v36 = v45;
  v37 = v44;
  if (v35)
  {
    v38 = sub_1B7800868();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

LABEL_26:
  v41 = (v37 + qword_1EDB08730);
  *v41 = v38;
  v41[1] = v40;
  *(v37 + qword_1EDB08728) = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v42 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);
  sub_1B7205418(v36, &unk_1EB993A10);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_1B7205418(v46, &unk_1EB993A10);
  result = __swift_destroy_boxed_opaque_existential_1(v53);
  *(v37 + qword_1EDB08738) = v42;
  *v47 = v37;
  return result;
}

uint64_t InternalTransactionAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return (sub_1B73E2F5C)(a1);
}

uint64_t sub_1B73DE4C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return (sub_1B73E2F5C)(a1);
}

uint64_t sub_1B73DE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](sub_1B73DE614, v6);
}

uint64_t sub_1B73DE614()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B73DE6C4;
  v2 = *(v0 + 24);

  return sub_1B73E2F5C(v2);
}

uint64_t sub_1B73DE6C4()
{
  v2 = *v1;
  v2[9] = v0;

  if (!v0)
  {
    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[6];
  v4 = v2[7];

  return MEMORY[0x1EEE6DFA0](sub_1B73DE7F4, v3, v4);
}

uint64_t sub_1B73DE7F4()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t InternalTransactionAsyncSequence.deinit()
{
  sub_1B7205418(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_accountID, &unk_1EB993A10);
  sub_1B7201CF8(*(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken), *(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyProvider);

  return v0;
}

uint64_t InternalTransactionAsyncSequence.__deallocating_deinit()
{
  sub_1B7205418(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_accountID, &unk_1EB993A10);
  sub_1B7201CF8(*(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken), *(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyProvider);

  return swift_deallocClassInstance();
}

uint64_t sub_1B73DE9B0@<X0>(uint64_t *a1@<X8>)
{
  InternalTransactionAsyncSequence.makeAsyncIterator()(a1);
}

uint64_t sub_1B73DE9E8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1B78013E8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v2[23] = swift_task_alloc();
  v4 = sub_1B77FEAA8();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73DEB68, 0, 0);
}

uint64_t sub_1B73DEB68()
{
  v46 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  *(v0 + 112) = 0;
  v1 = (v0 + 112);
  v2 = *(v0 + 152);
  *(v0 + 120) = 0;
  os_activity_scope_enter(*(v2 + qword_1EDB08738), (v0 + 112));
  *(v0 + 216) = qword_1EDB08700;

  v3 = sub_1B7800098();
  v4 = sub_1B78011F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + qword_1EDB086F0 + 8);
    *(v0 + 128) = *(v5 + qword_1EDB086F0);
    *(v0 + 136) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996820);
    v9 = sub_1B7801748();
    v11 = sub_1B71A3EF8(v9, v10, v45);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7198000, v3, v4, "Processing next FinanceStore change for token %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    v12 = v6;
    v1 = (v0 + 112);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  v13 = *(v0 + 152);
  if (*(v13 + 16))
  {
    if (*(v13 + 32) != 1)
    {
      swift_beginAccess();
      if (*(*(v13 + 24) + 16))
      {
        v27 = sub_1B7800098();
        v28 = sub_1B78011F8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1B7198000, v27, v28, "Not monitoring changes, removing from buffer", v29, 2u);
          MEMORY[0x1B8CA7A40](v29, -1, -1);
        }

        state = v1;

        swift_beginAccess();
        v30 = *(v13 + 24);
        if (!*(v30 + 16))
        {
          __break(1u);
        }

        v31 = *(v0 + 144);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        v34 = *(v30 + 48);
        v35 = *(v30 + 56);
        v36 = *(v30 + 64);

        sub_1B7227500(v35, v36);
        sub_1B73F1804(0, 1, sub_1B723E9A4, sub_1B77A3230);
        swift_endAccess();
        *v31 = v32;
        *(v31 + 8) = v33;
        *(v31 + 16) = v34;
        *(v31 + 24) = v35;
        *(v31 + 32) = v36;
        v1 = state;
      }

      else
      {
        v41 = *(v0 + 144);
        *(v41 + 32) = 0;
        *v41 = 0u;
        *(v41 + 16) = 0u;
      }

      goto LABEL_21;
    }

    v14 = qword_1EDB08730;
    *(v0 + 224) = qword_1EDB08750;
    *(v0 + 232) = v14;
    *(v0 + 240) = qword_1EDB08720;
    swift_beginAccess();
    v15 = *(v13 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 144);
      swift_beginAccess();
      v17 = *(v15 + 32);
      v18 = *(v15 + 40);
      statea = v1;
      v19 = *(v15 + 48);
      v20 = *(v15 + 56);
      v21 = *(v15 + 64);

      sub_1B7227500(v20, v21);
      sub_1B73F1804(0, 1, sub_1B723E9A4, sub_1B77A3230);
      swift_endAccess();
      *v16 = v17;
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
      *(v16 + 24) = v20;
      v1 = statea;
      *(v16 + 32) = v21;
LABEL_21:
      os_activity_scope_leave(v1);

      v42 = *(v0 + 8);

      return v42();
    }

    v37 = *(v0 + 176);
    v38 = *(*(v0 + 168) + 16);
    *(v0 + 248) = v38;
    v38(v37, *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v39 = swift_task_alloc();
    *(v0 + 256) = v39;
    *v39 = v0;
    v39[1] = sub_1B73DF1B4;
    v40 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v40);
  }

  else
  {
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7198000, v22, v23, "Not initialized, performing initial fetch", v24, 2u);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    v25[1] = sub_1B73DFAD4;

    return sub_1B73E5B54();
  }
}

uint64_t sub_1B73DF1B4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B73DF338, 0, 0);
}

uint64_t sub_1B73DF338()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    sub_1B7205418(v3, &unk_1EB996810);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
LABEL_11:
    os_activity_scope_leave((v0 + 112));

    v25 = *(v0 + 8);

    return v25();
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 152);
  v7 = (v6 + *(v0 + 232));
  (*(v2 + 32))(*(v0 + 208), v3, v1);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + v5);
  v11 = v10;
  LOBYTE(v9) = sub_1B7511DA0(v9, v8, v10);

  if (v9)
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Found relevant change, performing fetch", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_1B73DF74C;

    return sub_1B73E5B54();
  }

  else
  {
    v17 = *(v0 + 152);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v18 = *(v17 + 24);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 144);
      swift_beginAccess();
      v20 = *(v18 + 32);
      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v24 = *(v18 + 64);

      sub_1B7227500(v23, v24);
      sub_1B73F1804(0, 1, sub_1B723E9A4, sub_1B77A3230);
      swift_endAccess();
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
      *(v19 + 24) = v23;
      *(v19 + 32) = v24;
      goto LABEL_11;
    }

    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_1B73DF1B4;
    v27 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v27);
  }
}

uint64_t sub_1B73DF74C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B7C;
  }

  else
  {
    v2 = sub_1B73DF88C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73DF88C()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 144);
    swift_beginAccess();
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    v8 = *(v2 + 64);

    sub_1B7227500(v7, v8);
    sub_1B73F1804(0, 1, sub_1B723E9A4, sub_1B77A3230);
    swift_endAccess();
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
    os_activity_scope_leave((v0 + 112));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_1B73DF1B4;
    v12 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v12);
  }
}

uint64_t sub_1B73DFAD4()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B04;
  }

  else
  {
    v2 = sub_1B73DFC14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73DFC14()
{
  v1 = v0[9].opaque[1];
  if (*(v1 + 32) != 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      v10 = sub_1B7800098();
      v11 = sub_1B78011F8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1B7198000, v10, v11, "Not monitoring changes, removing from buffer", v12, 2u);
        MEMORY[0x1B8CA7A40](v12, -1, -1);
      }

      swift_beginAccess();
      v13 = *(v1 + 24);
      if (!*(v13 + 16))
      {
        __break(1u);
      }

      v14 = v0[9].opaque[0];
      v15 = *(v13 + 32);
      v16 = *(v13 + 40);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      v19 = *(v13 + 64);

      sub_1B7227500(v18, v19);
      sub_1B73F1804(0, 1, sub_1B723E9A4, sub_1B77A3230);
      swift_endAccess();
      *v14 = v15;
      *(v14 + 8) = v16;
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = v19;
    }

    else
    {
      v24 = v0[9].opaque[0];
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
    }

    goto LABEL_13;
  }

  v2 = qword_1EDB08730;
  v0[14].opaque[0] = qword_1EDB08750;
  v0[14].opaque[1] = v2;
  v0[15].opaque[0] = qword_1EDB08720;
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16))
  {
    v4 = v0[9].opaque[0];
    swift_beginAccess();
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    sub_1B7227500(v8, v9);
    sub_1B73F1804(0, 1, sub_1B723E9A4, sub_1B77A3230);
    swift_endAccess();
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
LABEL_13:
    os_activity_scope_leave(v0 + 7);

    v25 = v0->opaque[1];

    return v25();
  }

  v20 = v0[11].opaque[0];
  v21 = *(v0[10].opaque[1] + 16);
  v0[15].opaque[1] = v21;
  v21(v20, v0[9].opaque[1] + v0[14].opaque[0], v0[10].opaque[0]);
  v22 = swift_task_alloc();
  v0[16].opaque[0] = v22;
  *v22 = v0;
  v22[1] = sub_1B73DF1B4;
  v23 = v0[11].opaque[1];

  return MEMORY[0x1EEDC63C0](v23);
}

uint64_t sub_1B73DFFE4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1B78013E8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v2[23] = swift_task_alloc();
  v4 = sub_1B77FEAA8();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E0164, 0, 0);
}

uint64_t sub_1B73E0164()
{
  v46 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  *(v0 + 112) = 0;
  v1 = (v0 + 112);
  v2 = *(v0 + 152);
  *(v0 + 120) = 0;
  os_activity_scope_enter(*(v2 + qword_1EDB08738), (v0 + 112));
  *(v0 + 216) = qword_1EDB08700;

  v3 = sub_1B7800098();
  v4 = sub_1B78011F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + qword_1EDB086F0 + 8);
    *(v0 + 128) = *(v5 + qword_1EDB086F0);
    *(v0 + 136) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996820);
    v9 = sub_1B7801748();
    v11 = sub_1B71A3EF8(v9, v10, v45);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7198000, v3, v4, "Processing next FinanceStore change for token %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    v12 = v6;
    v1 = (v0 + 112);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  v13 = *(v0 + 152);
  if (*(v13 + 16))
  {
    if (*(v13 + 32) != 1)
    {
      swift_beginAccess();
      if (*(*(v13 + 24) + 16))
      {
        v27 = sub_1B7800098();
        v28 = sub_1B78011F8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1B7198000, v27, v28, "Not monitoring changes, removing from buffer", v29, 2u);
          MEMORY[0x1B8CA7A40](v29, -1, -1);
        }

        state = v1;

        swift_beginAccess();
        v30 = *(v13 + 24);
        if (!*(v30 + 16))
        {
          __break(1u);
        }

        v31 = *(v0 + 144);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        v34 = *(v30 + 48);
        v35 = *(v30 + 56);
        v36 = *(v30 + 64);

        sub_1B7227500(v35, v36);
        sub_1B73F1804(0, 1, sub_1B723E9C8, sub_1B77A3244);
        swift_endAccess();
        *v31 = v32;
        *(v31 + 8) = v33;
        *(v31 + 16) = v34;
        *(v31 + 24) = v35;
        *(v31 + 32) = v36;
        v1 = state;
      }

      else
      {
        v41 = *(v0 + 144);
        *(v41 + 32) = 0;
        *v41 = 0u;
        *(v41 + 16) = 0u;
      }

      goto LABEL_21;
    }

    v14 = qword_1EDB08730;
    *(v0 + 224) = qword_1EDB08750;
    *(v0 + 232) = v14;
    *(v0 + 240) = qword_1EDB08720;
    swift_beginAccess();
    v15 = *(v13 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 144);
      swift_beginAccess();
      v17 = *(v15 + 32);
      v18 = *(v15 + 40);
      statea = v1;
      v19 = *(v15 + 48);
      v20 = *(v15 + 56);
      v21 = *(v15 + 64);

      sub_1B7227500(v20, v21);
      sub_1B73F1804(0, 1, sub_1B723E9C8, sub_1B77A3244);
      swift_endAccess();
      *v16 = v17;
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
      *(v16 + 24) = v20;
      v1 = statea;
      *(v16 + 32) = v21;
LABEL_21:
      os_activity_scope_leave(v1);

      v42 = *(v0 + 8);

      return v42();
    }

    v37 = *(v0 + 176);
    v38 = *(*(v0 + 168) + 16);
    *(v0 + 248) = v38;
    v38(v37, *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v39 = swift_task_alloc();
    *(v0 + 256) = v39;
    *v39 = v0;
    v39[1] = sub_1B73E07B0;
    v40 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v40);
  }

  else
  {
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7198000, v22, v23, "Not initialized, performing initial fetch", v24, 2u);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    v25[1] = sub_1B73E10D0;

    return sub_1B73E7A14();
  }
}

uint64_t sub_1B73E07B0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B73E0934, 0, 0);
}

uint64_t sub_1B73E0934()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    sub_1B7205418(v3, &unk_1EB996810);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
LABEL_11:
    os_activity_scope_leave((v0 + 112));

    v25 = *(v0 + 8);

    return v25();
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 152);
  v7 = (v6 + *(v0 + 232));
  (*(v2 + 32))(*(v0 + 208), v3, v1);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + v5);
  v11 = v10;
  LOBYTE(v9) = sub_1B7511DA0(v9, v8, v10);

  if (v9)
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Found relevant change, performing fetch", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_1B73E0D48;

    return sub_1B73E7A14();
  }

  else
  {
    v17 = *(v0 + 152);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v18 = *(v17 + 24);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 144);
      swift_beginAccess();
      v20 = *(v18 + 32);
      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v24 = *(v18 + 64);

      sub_1B7227500(v23, v24);
      sub_1B73F1804(0, 1, sub_1B723E9C8, sub_1B77A3244);
      swift_endAccess();
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
      *(v19 + 24) = v23;
      *(v19 + 32) = v24;
      goto LABEL_11;
    }

    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_1B73E07B0;
    v27 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v27);
  }
}

uint64_t sub_1B73E0D48()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B7C;
  }

  else
  {
    v2 = sub_1B73E0E88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E0E88()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 144);
    swift_beginAccess();
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    v8 = *(v2 + 64);

    sub_1B7227500(v7, v8);
    sub_1B73F1804(0, 1, sub_1B723E9C8, sub_1B77A3244);
    swift_endAccess();
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
    os_activity_scope_leave((v0 + 112));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_1B73E07B0;
    v12 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v12);
  }
}

uint64_t sub_1B73E10D0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B04;
  }

  else
  {
    v2 = sub_1B73E1210;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E1210()
{
  v1 = v0[9].opaque[1];
  if (*(v1 + 32) != 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      v10 = sub_1B7800098();
      v11 = sub_1B78011F8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1B7198000, v10, v11, "Not monitoring changes, removing from buffer", v12, 2u);
        MEMORY[0x1B8CA7A40](v12, -1, -1);
      }

      swift_beginAccess();
      v13 = *(v1 + 24);
      if (!*(v13 + 16))
      {
        __break(1u);
      }

      v14 = v0[9].opaque[0];
      v15 = *(v13 + 32);
      v16 = *(v13 + 40);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      v19 = *(v13 + 64);

      sub_1B7227500(v18, v19);
      sub_1B73F1804(0, 1, sub_1B723E9C8, sub_1B77A3244);
      swift_endAccess();
      *v14 = v15;
      *(v14 + 8) = v16;
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = v19;
    }

    else
    {
      v24 = v0[9].opaque[0];
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
    }

    goto LABEL_13;
  }

  v2 = qword_1EDB08730;
  v0[14].opaque[0] = qword_1EDB08750;
  v0[14].opaque[1] = v2;
  v0[15].opaque[0] = qword_1EDB08720;
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16))
  {
    v4 = v0[9].opaque[0];
    swift_beginAccess();
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    sub_1B7227500(v8, v9);
    sub_1B73F1804(0, 1, sub_1B723E9C8, sub_1B77A3244);
    swift_endAccess();
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
LABEL_13:
    os_activity_scope_leave(v0 + 7);

    v25 = v0->opaque[1];

    return v25();
  }

  v20 = v0[11].opaque[0];
  v21 = *(v0[10].opaque[1] + 16);
  v0[15].opaque[1] = v21;
  v21(v20, v0[9].opaque[1] + v0[14].opaque[0], v0[10].opaque[0]);
  v22 = swift_task_alloc();
  v0[16].opaque[0] = v22;
  *v22 = v0;
  v22[1] = sub_1B73E07B0;
  v23 = v0[11].opaque[1];

  return MEMORY[0x1EEDC63C0](v23);
}

uint64_t sub_1B73E15E0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1B78013E8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v2[23] = swift_task_alloc();
  v4 = sub_1B77FEAA8();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E1760, 0, 0);
}

uint64_t sub_1B73E1760()
{
  v46 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  *(v0 + 112) = 0;
  v1 = (v0 + 112);
  v2 = *(v0 + 152);
  *(v0 + 120) = 0;
  os_activity_scope_enter(*(v2 + qword_1EDB08738), (v0 + 112));
  *(v0 + 216) = qword_1EDB08700;

  v3 = sub_1B7800098();
  v4 = sub_1B78011F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + qword_1EDB086F0 + 8);
    *(v0 + 128) = *(v5 + qword_1EDB086F0);
    *(v0 + 136) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996820);
    v9 = sub_1B7801748();
    v11 = sub_1B71A3EF8(v9, v10, v45);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7198000, v3, v4, "Processing next FinanceStore change for token %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    v12 = v6;
    v1 = (v0 + 112);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  v13 = *(v0 + 152);
  if (*(v13 + 16))
  {
    if (*(v13 + 32) != 1)
    {
      swift_beginAccess();
      if (*(*(v13 + 24) + 16))
      {
        v27 = sub_1B7800098();
        v28 = sub_1B78011F8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1B7198000, v27, v28, "Not monitoring changes, removing from buffer", v29, 2u);
          MEMORY[0x1B8CA7A40](v29, -1, -1);
        }

        state = v1;

        swift_beginAccess();
        v30 = *(v13 + 24);
        if (!*(v30 + 16))
        {
          __break(1u);
        }

        v31 = *(v0 + 144);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        v34 = *(v30 + 48);
        v35 = *(v30 + 56);
        v36 = *(v30 + 64);

        sub_1B7227500(v35, v36);
        sub_1B73F1804(0, 1, sub_1B723EA14, sub_1B77A3258);
        swift_endAccess();
        *v31 = v32;
        *(v31 + 8) = v33;
        *(v31 + 16) = v34;
        *(v31 + 24) = v35;
        *(v31 + 32) = v36;
        v1 = state;
      }

      else
      {
        v41 = *(v0 + 144);
        *(v41 + 32) = 0;
        *v41 = 0u;
        *(v41 + 16) = 0u;
      }

      goto LABEL_21;
    }

    v14 = qword_1EDB08730;
    *(v0 + 224) = qword_1EDB08750;
    *(v0 + 232) = v14;
    *(v0 + 240) = qword_1EDB08720;
    swift_beginAccess();
    v15 = *(v13 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 144);
      swift_beginAccess();
      v17 = *(v15 + 32);
      v18 = *(v15 + 40);
      statea = v1;
      v19 = *(v15 + 48);
      v20 = *(v15 + 56);
      v21 = *(v15 + 64);

      sub_1B7227500(v20, v21);
      sub_1B73F1804(0, 1, sub_1B723EA14, sub_1B77A3258);
      swift_endAccess();
      *v16 = v17;
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
      *(v16 + 24) = v20;
      v1 = statea;
      *(v16 + 32) = v21;
LABEL_21:
      os_activity_scope_leave(v1);

      v42 = *(v0 + 8);

      return v42();
    }

    v37 = *(v0 + 176);
    v38 = *(*(v0 + 168) + 16);
    *(v0 + 248) = v38;
    v38(v37, *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v39 = swift_task_alloc();
    *(v0 + 256) = v39;
    *v39 = v0;
    v39[1] = sub_1B73E1DAC;
    v40 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v40);
  }

  else
  {
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7198000, v22, v23, "Not initialized, performing initial fetch", v24, 2u);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    v25[1] = sub_1B73E289C;

    return sub_1B73E98E0();
  }
}

uint64_t sub_1B73E1DAC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B73E1F30, 0, 0);
}

uint64_t sub_1B73E1F30()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    sub_1B7205418(v3, &unk_1EB996810);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
LABEL_11:
    os_activity_scope_leave((v0 + 112));

    v25 = *(v0 + 8);

    return v25();
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 152);
  v7 = (v6 + *(v0 + 232));
  (*(v2 + 32))(*(v0 + 208), v3, v1);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + v5);
  v11 = v10;
  LOBYTE(v9) = sub_1B7511DA0(v9, v8, v10);

  if (v9)
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Found relevant change, performing fetch", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_1B73E2344;

    return sub_1B73E98E0();
  }

  else
  {
    v17 = *(v0 + 152);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v18 = *(v17 + 24);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 144);
      swift_beginAccess();
      v20 = *(v18 + 32);
      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v24 = *(v18 + 64);

      sub_1B7227500(v23, v24);
      sub_1B73F1804(0, 1, sub_1B723EA14, sub_1B77A3258);
      swift_endAccess();
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
      *(v19 + 24) = v23;
      *(v19 + 32) = v24;
      goto LABEL_11;
    }

    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_1B73E1DAC;
    v27 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v27);
  }
}

uint64_t sub_1B73E2344()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B73E26CC;
  }

  else
  {
    v2 = sub_1B73E2484;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E2484()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 144);
    swift_beginAccess();
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    v8 = *(v2 + 64);

    sub_1B7227500(v7, v8);
    sub_1B73F1804(0, 1, sub_1B723EA14, sub_1B77A3258);
    swift_endAccess();
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
    os_activity_scope_leave((v0 + 112));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_1B73E1DAC;
    v12 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v12);
  }
}

uint64_t sub_1B73E26CC()
{
  v1 = v0[17].opaque[0];
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17].opaque[0];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7198000, v3, v4, "Fetch changes error: %@", v6, 0xCu);
    sub_1B7205418(v7, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v11 = v0[12].opaque[1];
  v10 = v0[13].opaque[0];
  v12 = v0[12].opaque[0];

  swift_willThrow();
  (*(v11 + 8))(v10, v12);
  os_activity_scope_leave(v0 + 7);

  v13 = v0->opaque[1];

  return v13();
}

uint64_t sub_1B73E289C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1B73E2DAC;
  }

  else
  {
    v2 = sub_1B73E29DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E29DC()
{
  v1 = v0[9].opaque[1];
  if (*(v1 + 32) != 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      v10 = sub_1B7800098();
      v11 = sub_1B78011F8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1B7198000, v10, v11, "Not monitoring changes, removing from buffer", v12, 2u);
        MEMORY[0x1B8CA7A40](v12, -1, -1);
      }

      swift_beginAccess();
      v13 = *(v1 + 24);
      if (!*(v13 + 16))
      {
        __break(1u);
      }

      v14 = v0[9].opaque[0];
      v15 = *(v13 + 32);
      v16 = *(v13 + 40);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      v19 = *(v13 + 64);

      sub_1B7227500(v18, v19);
      sub_1B73F1804(0, 1, sub_1B723EA14, sub_1B77A3258);
      swift_endAccess();
      *v14 = v15;
      *(v14 + 8) = v16;
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = v19;
    }

    else
    {
      v24 = v0[9].opaque[0];
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
    }

    goto LABEL_13;
  }

  v2 = qword_1EDB08730;
  v0[14].opaque[0] = qword_1EDB08750;
  v0[14].opaque[1] = v2;
  v0[15].opaque[0] = qword_1EDB08720;
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16))
  {
    v4 = v0[9].opaque[0];
    swift_beginAccess();
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    sub_1B7227500(v8, v9);
    sub_1B73F1804(0, 1, sub_1B723EA14, sub_1B77A3258);
    swift_endAccess();
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
LABEL_13:
    os_activity_scope_leave(v0 + 7);

    v25 = v0->opaque[1];

    return v25();
  }

  v20 = v0[11].opaque[0];
  v21 = *(v0[10].opaque[1] + 16);
  v0[15].opaque[1] = v21;
  v21(v20, v0[9].opaque[1] + v0[14].opaque[0], v0[10].opaque[0]);
  v22 = swift_task_alloc();
  v0[16].opaque[0] = v22;
  *v22 = v0;
  v22[1] = sub_1B73E1DAC;
  v23 = v0[11].opaque[1];

  return MEMORY[0x1EEDC63C0](v23);
}

uint64_t sub_1B73E2DAC()
{
  v1 = v0[18].opaque[0];
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18].opaque[0];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7198000, v3, v4, "Fetch changes error: %@", v6, 0xCu);
    sub_1B7205418(v7, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  swift_willThrow();
  os_activity_scope_leave(v0 + 7);

  v10 = v0->opaque[1];

  return v10();
}

uint64_t sub_1B73E2F5C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1B78013E8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v2[23] = swift_task_alloc();
  v4 = sub_1B77FEAA8();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E30DC, 0, 0);
}

uint64_t sub_1B73E30DC()
{
  v46 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  *(v0 + 112) = 0;
  v1 = (v0 + 112);
  v2 = *(v0 + 152);
  *(v0 + 120) = 0;
  os_activity_scope_enter(*(v2 + qword_1EDB08738), (v0 + 112));
  *(v0 + 216) = qword_1EDB08700;

  v3 = sub_1B7800098();
  v4 = sub_1B78011F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + qword_1EDB086F0 + 8);
    *(v0 + 128) = *(v5 + qword_1EDB086F0);
    *(v0 + 136) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996820);
    v9 = sub_1B7801748();
    v11 = sub_1B71A3EF8(v9, v10, v45);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7198000, v3, v4, "Processing next FinanceStore change for token %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    v12 = v6;
    v1 = (v0 + 112);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  v13 = *(v0 + 152);
  if (*(v13 + 16))
  {
    if (*(v13 + 32) != 1)
    {
      swift_beginAccess();
      if (*(*(v13 + 24) + 16))
      {
        v27 = sub_1B7800098();
        v28 = sub_1B78011F8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1B7198000, v27, v28, "Not monitoring changes, removing from buffer", v29, 2u);
          MEMORY[0x1B8CA7A40](v29, -1, -1);
        }

        state = v1;

        swift_beginAccess();
        v30 = *(v13 + 24);
        if (!*(v30 + 16))
        {
          __break(1u);
        }

        v31 = *(v0 + 144);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        v34 = *(v30 + 48);
        v35 = *(v30 + 56);
        v36 = *(v30 + 64);

        sub_1B7227500(v35, v36);
        sub_1B73F1804(0, 1, sub_1B723EA60, sub_1B77A326C);
        swift_endAccess();
        *v31 = v32;
        *(v31 + 8) = v33;
        *(v31 + 16) = v34;
        *(v31 + 24) = v35;
        *(v31 + 32) = v36;
        v1 = state;
      }

      else
      {
        v41 = *(v0 + 144);
        *(v41 + 32) = 0;
        *v41 = 0u;
        *(v41 + 16) = 0u;
      }

      goto LABEL_21;
    }

    v14 = qword_1EDB08730;
    *(v0 + 224) = qword_1EDB08750;
    *(v0 + 232) = v14;
    *(v0 + 240) = qword_1EDB08720;
    swift_beginAccess();
    v15 = *(v13 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 144);
      swift_beginAccess();
      v17 = *(v15 + 32);
      v18 = *(v15 + 40);
      statea = v1;
      v19 = *(v15 + 48);
      v20 = *(v15 + 56);
      v21 = *(v15 + 64);

      sub_1B7227500(v20, v21);
      sub_1B73F1804(0, 1, sub_1B723EA60, sub_1B77A326C);
      swift_endAccess();
      *v16 = v17;
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
      *(v16 + 24) = v20;
      v1 = statea;
      *(v16 + 32) = v21;
LABEL_21:
      os_activity_scope_leave(v1);

      v42 = *(v0 + 8);

      return v42();
    }

    v37 = *(v0 + 176);
    v38 = *(*(v0 + 168) + 16);
    *(v0 + 248) = v38;
    v38(v37, *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v39 = swift_task_alloc();
    *(v0 + 256) = v39;
    *v39 = v0;
    v39[1] = sub_1B73E3728;
    v40 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v40);
  }

  else
  {
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7198000, v22, v23, "Not initialized, performing initial fetch", v24, 2u);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    v25[1] = sub_1B73E4048;

    return sub_1B73EB888();
  }
}

uint64_t sub_1B73E3728()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B73E38AC, 0, 0);
}

uint64_t sub_1B73E38AC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    sub_1B7205418(v3, &unk_1EB996810);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
LABEL_11:
    os_activity_scope_leave((v0 + 112));

    v25 = *(v0 + 8);

    return v25();
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 152);
  v7 = (v6 + *(v0 + 232));
  (*(v2 + 32))(*(v0 + 208), v3, v1);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + v5);
  v11 = v10;
  LOBYTE(v9) = sub_1B7511DA0(v9, v8, v10);

  if (v9)
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Found relevant change, performing fetch", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_1B73E3CC0;

    return sub_1B73EB888();
  }

  else
  {
    v17 = *(v0 + 152);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v18 = *(v17 + 24);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 144);
      swift_beginAccess();
      v20 = *(v18 + 32);
      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v24 = *(v18 + 64);

      sub_1B7227500(v23, v24);
      sub_1B73F1804(0, 1, sub_1B723EA60, sub_1B77A326C);
      swift_endAccess();
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
      *(v19 + 24) = v23;
      *(v19 + 32) = v24;
      goto LABEL_11;
    }

    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_1B73E3728;
    v27 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v27);
  }
}

uint64_t sub_1B73E3CC0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B7C;
  }

  else
  {
    v2 = sub_1B73E3E00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E3E00()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 144);
    swift_beginAccess();
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    v8 = *(v2 + 64);

    sub_1B7227500(v7, v8);
    sub_1B73F1804(0, 1, sub_1B723EA60, sub_1B77A326C);
    swift_endAccess();
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
    os_activity_scope_leave((v0 + 112));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_1B73E3728;
    v12 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v12);
  }
}

uint64_t sub_1B73E4048()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B04;
  }

  else
  {
    v2 = sub_1B73E4188;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E4188()
{
  v1 = v0[9].opaque[1];
  if (*(v1 + 32) != 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      v10 = sub_1B7800098();
      v11 = sub_1B78011F8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1B7198000, v10, v11, "Not monitoring changes, removing from buffer", v12, 2u);
        MEMORY[0x1B8CA7A40](v12, -1, -1);
      }

      swift_beginAccess();
      v13 = *(v1 + 24);
      if (!*(v13 + 16))
      {
        __break(1u);
      }

      v14 = v0[9].opaque[0];
      v15 = *(v13 + 32);
      v16 = *(v13 + 40);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      v19 = *(v13 + 64);

      sub_1B7227500(v18, v19);
      sub_1B73F1804(0, 1, sub_1B723EA60, sub_1B77A326C);
      swift_endAccess();
      *v14 = v15;
      *(v14 + 8) = v16;
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = v19;
    }

    else
    {
      v24 = v0[9].opaque[0];
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
    }

    goto LABEL_13;
  }

  v2 = qword_1EDB08730;
  v0[14].opaque[0] = qword_1EDB08750;
  v0[14].opaque[1] = v2;
  v0[15].opaque[0] = qword_1EDB08720;
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16))
  {
    v4 = v0[9].opaque[0];
    swift_beginAccess();
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    sub_1B7227500(v8, v9);
    sub_1B73F1804(0, 1, sub_1B723EA60, sub_1B77A326C);
    swift_endAccess();
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
LABEL_13:
    os_activity_scope_leave(v0 + 7);

    v25 = v0->opaque[1];

    return v25();
  }

  v20 = v0[11].opaque[0];
  v21 = *(v0[10].opaque[1] + 16);
  v0[15].opaque[1] = v21;
  v21(v20, v0[9].opaque[1] + v0[14].opaque[0], v0[10].opaque[0]);
  v22 = swift_task_alloc();
  v0[16].opaque[0] = v22;
  *v22 = v0;
  v22[1] = sub_1B73E3728;
  v23 = v0[11].opaque[1];

  return MEMORY[0x1EEDC63C0](v23);
}

uint64_t sub_1B73E4558(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1B78013E8();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996810);
  v2[23] = swift_task_alloc();
  v4 = sub_1B77FEAA8();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E46D8, 0, 0);
}

uint64_t sub_1B73E46D8()
{
  v46 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  *(v0 + 112) = 0;
  v1 = (v0 + 112);
  v2 = *(v0 + 152);
  *(v0 + 120) = 0;
  os_activity_scope_enter(*(v2 + qword_1EDB08738), (v0 + 112));
  *(v0 + 216) = qword_1EDB08700;

  v3 = sub_1B7800098();
  v4 = sub_1B78011F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + qword_1EDB086F0 + 8);
    *(v0 + 128) = *(v5 + qword_1EDB086F0);
    *(v0 + 136) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996820);
    v9 = sub_1B7801748();
    v11 = sub_1B71A3EF8(v9, v10, v45);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7198000, v3, v4, "Processing next FinanceStore change for token %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    v12 = v6;
    v1 = (v0 + 112);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  v13 = *(v0 + 152);
  if (*(v13 + 16))
  {
    if (*(v13 + 32) != 1)
    {
      swift_beginAccess();
      if (*(*(v13 + 24) + 16))
      {
        v27 = sub_1B7800098();
        v28 = sub_1B78011F8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1B7198000, v27, v28, "Not monitoring changes, removing from buffer", v29, 2u);
          MEMORY[0x1B8CA7A40](v29, -1, -1);
        }

        state = v1;

        swift_beginAccess();
        v30 = *(v13 + 24);
        if (!*(v30 + 16))
        {
          __break(1u);
        }

        v31 = *(v0 + 144);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        v34 = *(v30 + 48);
        v35 = *(v30 + 56);
        v36 = *(v30 + 64);

        sub_1B7227500(v35, v36);
        sub_1B73F1804(0, 1, sub_1B723EAAC, sub_1B77A3280);
        swift_endAccess();
        *v31 = v32;
        *(v31 + 8) = v33;
        *(v31 + 16) = v34;
        *(v31 + 24) = v35;
        *(v31 + 32) = v36;
        v1 = state;
      }

      else
      {
        v41 = *(v0 + 144);
        *(v41 + 32) = 0;
        *v41 = 0u;
        *(v41 + 16) = 0u;
      }

      goto LABEL_21;
    }

    v14 = qword_1EDB08730;
    *(v0 + 224) = qword_1EDB08750;
    *(v0 + 232) = v14;
    *(v0 + 240) = qword_1EDB08720;
    swift_beginAccess();
    v15 = *(v13 + 24);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 144);
      swift_beginAccess();
      v17 = *(v15 + 32);
      v18 = *(v15 + 40);
      statea = v1;
      v19 = *(v15 + 48);
      v20 = *(v15 + 56);
      v21 = *(v15 + 64);

      sub_1B7227500(v20, v21);
      sub_1B73F1804(0, 1, sub_1B723EAAC, sub_1B77A3280);
      swift_endAccess();
      *v16 = v17;
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
      *(v16 + 24) = v20;
      v1 = statea;
      *(v16 + 32) = v21;
LABEL_21:
      os_activity_scope_leave(v1);

      v42 = *(v0 + 8);

      return v42();
    }

    v37 = *(v0 + 176);
    v38 = *(*(v0 + 168) + 16);
    *(v0 + 248) = v38;
    v38(v37, *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v39 = swift_task_alloc();
    *(v0 + 256) = v39;
    *v39 = v0;
    v39[1] = sub_1B73E4D24;
    v40 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v40);
  }

  else
  {
    v22 = sub_1B7800098();
    v23 = sub_1B78011F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7198000, v22, v23, "Not initialized, performing initial fetch", v24, 2u);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    v25[1] = sub_1B73E5644;

    return sub_1B73ED748();
  }
}

uint64_t sub_1B73E4D24()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B73E4EA8, 0, 0);
}

uint64_t sub_1B73E4EA8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    sub_1B7205418(v3, &unk_1EB996810);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
LABEL_11:
    os_activity_scope_leave((v0 + 112));

    v25 = *(v0 + 8);

    return v25();
  }

  v5 = *(v0 + 240);
  v6 = *(v0 + 152);
  v7 = (v6 + *(v0 + 232));
  (*(v2 + 32))(*(v0 + 208), v3, v1);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + v5);
  v11 = v10;
  LOBYTE(v9) = sub_1B7511DA0(v9, v8, v10);

  if (v9)
  {
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Found relevant change, performing fetch", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_1B73E52BC;

    return sub_1B73ED748();
  }

  else
  {
    v17 = *(v0 + 152);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v18 = *(v17 + 24);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 144);
      swift_beginAccess();
      v20 = *(v18 + 32);
      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v24 = *(v18 + 64);

      sub_1B7227500(v23, v24);
      sub_1B73F1804(0, 1, sub_1B723EAAC, sub_1B77A3280);
      swift_endAccess();
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
      *(v19 + 24) = v23;
      *(v19 + 32) = v24;
      goto LABEL_11;
    }

    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_1B73E4D24;
    v27 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v27);
  }
}

uint64_t sub_1B73E52BC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B7C;
  }

  else
  {
    v2 = sub_1B73E53FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E53FC()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 144);
    swift_beginAccess();
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    v8 = *(v2 + 64);

    sub_1B7227500(v7, v8);
    sub_1B73F1804(0, 1, sub_1B723EAAC, sub_1B77A3280);
    swift_endAccess();
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
    os_activity_scope_leave((v0 + 112));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(v0 + 248))(*(v0 + 176), *(v0 + 152) + *(v0 + 224), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_1B73E4D24;
    v12 = *(v0 + 184);

    return MEMORY[0x1EEDC63C0](v12);
  }
}

uint64_t sub_1B73E5644()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1B73F1B04;
  }

  else
  {
    v2 = sub_1B73E5784;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73E5784()
{
  v1 = v0[9].opaque[1];
  if (*(v1 + 32) != 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      v10 = sub_1B7800098();
      v11 = sub_1B78011F8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1B7198000, v10, v11, "Not monitoring changes, removing from buffer", v12, 2u);
        MEMORY[0x1B8CA7A40](v12, -1, -1);
      }

      swift_beginAccess();
      v13 = *(v1 + 24);
      if (!*(v13 + 16))
      {
        __break(1u);
      }

      v14 = v0[9].opaque[0];
      v15 = *(v13 + 32);
      v16 = *(v13 + 40);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      v19 = *(v13 + 64);

      sub_1B7227500(v18, v19);
      sub_1B73F1804(0, 1, sub_1B723EAAC, sub_1B77A3280);
      swift_endAccess();
      *v14 = v15;
      *(v14 + 8) = v16;
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = v19;
    }

    else
    {
      v24 = v0[9].opaque[0];
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
    }

    goto LABEL_13;
  }

  v2 = qword_1EDB08730;
  v0[14].opaque[0] = qword_1EDB08750;
  v0[14].opaque[1] = v2;
  v0[15].opaque[0] = qword_1EDB08720;
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16))
  {
    v4 = v0[9].opaque[0];
    swift_beginAccess();
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    sub_1B7227500(v8, v9);
    sub_1B73F1804(0, 1, sub_1B723EAAC, sub_1B77A3280);
    swift_endAccess();
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
LABEL_13:
    os_activity_scope_leave(v0 + 7);

    v25 = v0->opaque[1];

    return v25();
  }

  v20 = v0[11].opaque[0];
  v21 = *(v0[10].opaque[1] + 16);
  v0[15].opaque[1] = v21;
  v21(v20, v0[9].opaque[1] + v0[14].opaque[0], v0[10].opaque[0]);
  v22 = swift_task_alloc();
  v0[16].opaque[0] = v22;
  *v22 = v0;
  v22[1] = sub_1B73E4D24;
  v23 = v0[11].opaque[1];

  return MEMORY[0x1EEDC63C0](v23);
}

uint64_t sub_1B73E5B54()
{
  v1[20] = v0;
  v2 = sub_1B77FFA18();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E5C20, 0, 0);
}

uint64_t sub_1B73E5C20()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 121) = v2;
  if ((v2 & 1) == 0)
  {
    *(v1 + 16) = 1;
    v1 = *(v0 + 160);
  }

  if (*(v1 + qword_1EDB08710))
  {
    v3 = *(v1 + qword_1EDB08710);
  }

  else
  {
    v3 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 160);
  }

  *(v0 + 200) = v3;
  v4 = *(v1 + qword_1EDB08708);
  v5 = qword_1EDB086F0;
  *(v0 + 208) = qword_1EDB086F0;
  v6 = v1 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v0 + 112) = *v6;
  *(v0 + 120) = v8;
  *(v0 + 144) = v3;
  swift_bridgeObjectRetain_n();

  sub_1B72274E8(v7, v8);
  v11 = (v4 + *v4);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_1B73E5DEC;

  return v11(v0 + 112, 0xD00000000000001FLL, 0x80000001B7872BD0, v0 + 144);
}

uint64_t sub_1B73E5DEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73F1B78;
  }

  else
  {

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73E5F34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B73E5F34()
{
  v5 = *(*(v3 + 224) + 16);
  *(v3 + 240) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = qword_1EDB086F8;
    *(v3 + 248) = qword_1EDB08718;
    *(v3 + 256) = v7;
    v8 = qword_1EDB08700;
    *(v3 + 264) = qword_1EDB08748;
    *(v3 + 272) = v8;
    v9 = 65280;
    do
    {
      *(v3 + 320) = v6;
      *(v3 + 122) = -256;
      *(v3 + 280) = 0u;
      *(v3 + 296) = 0u;
      *(v3 + 312) = 0;
      v10 = *(v3 + 224);
      if (v6 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v11 = v10 + 16 * v6;
      v12 = *(v3 + 160) + *(v3 + 208);
      v0 = *(v11 + 32);
      *(v3 + 328) = v0;
      v13 = *(v11 + 40);
      *(v3 + 124) = v13;
      v2 = *v12;
      v4 = *(v12 + 8);
      if (v4 == 255)
      {
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B72274E8(v2, 255);
        sub_1B7201CF8(v2, 255);
        v20 = v0;
        v21 = v13;
        goto LABEL_32;
      }

      *(v3 + 352) = v4;
      if (v4)
      {
        sub_1B7227500(v0, v13);
        if ((v13 & 1) == 0)
        {
          sub_1B7227500(v0, 0);
          sub_1B7227500(v0, 0);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          goto LABEL_31;
        }

        v14 = 1;
        sub_1B7227500(v0, 1);
        sub_1B7227500(v0, 1);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B7201D10(v2, 1);
        sub_1B7201D10(v0, 1);
        v1 = v2 == v0;
      }

      else
      {
        if (v13)
        {
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          sub_1B7227500(v2, 0);
LABEL_31:
          v13 = v4 ^ 1;
          sub_1B7201D10(v2, v4 & 1);
          sub_1B7201D10(v0, (v4 ^ 1) & 1);
          sub_1B7201D10(v2, v4 & 1);
          v20 = v2;
          v21 = v4;
LABEL_32:
          sub_1B7201CF8(v20, v21);
LABEL_33:
          v31 = *(v3 + 256);
          v32 = *(v3 + 160);
          v33 = *(v32 + *(v3 + 248));
          *(v3 + 128) = v0;
          v34 = *(v3 + 200);
          *(v3 + 136) = v13 & 1;
          *(v3 + 152) = v34;

          v36 = (v33 + *v33);
          v35 = swift_task_alloc();
          *(v3 + 336) = v35;
          *v35 = v3;
          v35[1] = sub_1B73E66CC;

          v36(v3 + 16, v3 + 128, 0xD00000000000001FLL, 0x80000001B7872BD0, v32 + v31, v3 + 152);
          return;
        }

        sub_1B7205540(0, &qword_1EDAFC4C0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v0, v13);
        sub_1B7227500(v2, 0);
        v1 = sub_1B7801558();
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v2, v4);
        sub_1B7201D10(v2, 0);
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v0, v13);
        v14 = *(v3 + 352);
      }

      sub_1B7201D10(v2, v14);
      sub_1B7201CF8(v2, v4);
      if ((v1 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1B7201D10(v0, v13);
      sub_1B7201D10(v0, v13);
      v6 = *(v3 + 320) + 1;
    }

    while (v6 != *(v3 + 240));
  }

  if (*(v3 + 121) == 1)
  {
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
  }

  else
  {
    v15 = sub_1B7800098();
    v16 = sub_1B78011F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7198000, v15, v16, "Initial fetch, sending empty updates", v17, 2u);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }

    v18 = *(v3 + 160);
    if (*(v3 + 240) || (v22 = v18 + *(v3 + 208), v4 = *(v22 + 8), v4 == 255))
    {
      v19 = [*(*(v18 + qword_1EDB08748) + 16) newBackgroundContext];
      v1 = NSManagedObjectContext.currentLocalHistoryToken.getter();

      if (!v1)
      {
        __break(1u);
        return;
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v1 = *v22;
      sub_1B7227500(*v22, v4 & 1);
    }

    v23 = *(v3 + 208);
    v9 = *(v3 + 160);

    v24 = v9 + v23;
    v25 = *(v9 + v23);
    *v24 = v1;
    LOBYTE(v23) = *(v9 + v23 + 8);
    *(v24 + 8) = v4 & 1;
    sub_1B7227500(v1, v4 & 1);
    sub_1B7227500(v1, v4 & 1);
    sub_1B7201CF8(v25, v23);
    swift_beginAccess();
    v2 = *(v9 + 24);
    v0 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    sub_1B7227500(v1, v4 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 24) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v2 = sub_1B723E9A4(0, v2[2] + 1, 1, v2);
      *(v9 + 24) = v2;
    }

    v28 = v2[2];
    v27 = v2[3];
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1B723E9A4((v27 > 1), v28 + 1, 1, v2);
    }

    v2[2] = v28 + 1;
    v29 = &v2[5 * v28];
    v29[4] = v0;
    v29[5] = v0;
    v29[6] = v0;
    v29[7] = v1;
    *(v29 + 64) = v4 & 1;
    *(v9 + 24) = v2;
    swift_endAccess();
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v1, v4 & 1);
    sub_1B7201D10(v1, v4 & 1);
  }

  v30 = *(v3 + 8);

  v30();
}

uint64_t sub_1B73E66CC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 124);
    v4 = *(v2 + 328);

    sub_1B7201D10(v4, v3);

    v5 = sub_1B73F1B00;
  }

  else
  {

    v5 = sub_1B73E6838;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73E6838()
{
  v146 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 344);
  v3 = *(v0 + 124);
  v4 = *(v0 + 328);
  v5 = *(v0 + 264);
  v6 = *(v0 + 160);
  v7 = v6 + *(v0 + 208);
  v8 = *(v0 + 24);
  v134 = *(v0 + 32);
  v9 = *v7;
  *v7 = v4;
  v10 = *(v7 + 8);
  *(v7 + 8) = v3;
  sub_1B7201CF8(v9, v10);
  v11 = *(*(v6 + v5) + 16);
  sub_1B7227500(v4, v3);
  v12 = [v11 persistentStoreCoordinator];
  sub_1B73EF608(v1, v12, type metadata accessor for ManagedFinHealthTransactionEntityGroup, &qword_1EB993A88, &unk_1B7824CB0, sub_1B73F1934);
  v132 = v12;
  if (v2)
  {
    v14 = *(v0 + 124);
    v15 = *(v0 + 328);
    v16 = *(v0 + 304);
    v128 = *(v0 + 312);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    v20 = *(v0 + 122);
    v21 = *(v0 + 123);
    sub_1B7201D10(v15, v14);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v15, v14);
    sub_1B73F1960(v19, v17, v18, v16, v20);
    sub_1B7201CF8(v128, v21);

    v25 = *(v0 + 8);
LABEL_4:

    return v25();
  }

  v22 = v13;
  v23 = *(v0 + 160);
  sub_1B73EF608(v8, v12, type metadata accessor for ManagedFinHealthTransactionEntityGroup, &qword_1EB993A88, &unk_1B7824CB0, sub_1B73F1934);
  v126 = v22;
  v127 = v24;
  v27 = *(v134 + 16);
  if (v27)
  {
    v28 = *(v0 + 176);
    v23 = v134 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v29 = *(v28 + 72);
    v137 = *(v28 + 16);
    v140 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);
      v33 = v30;
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v137(v31, v23, v35);
      v36 = *(v34 + 32);
      v37 = v35;
      v30 = v33;
      v36(v32, v31, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B723E954(0, v33[2] + 1, 1, v33);
      }

      v39 = v30[2];
      v38 = v30[3];
      if (v39 >= v38 >> 1)
      {
        v30 = sub_1B723E954(v38 > 1, v39 + 1, 1, v30);
      }

      v40 = *(v0 + 184);
      v41 = *(v0 + 168);
      v30[2] = v39 + 1;
      v36(v30 + v140 + v39 * v29, v40, v41);
      v23 += v29;
      --v27;
    }

    while (v27);

    v22 = v126;
    v12 = v132;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v42 = v127;
  if (v22[2] || *(v127 + 16) || v30[2])
  {
    v43 = *(v0 + 280);
    if (v43)
    {
      v44 = *(v0 + 296);
      if (*(v0 + 123) == 255)
      {
        v142 = *(v0 + 304);
        v52 = *(v0 + 122);
        v53 = *(v0 + 288);

        sub_1B73F1960(v43, v53, v44, v142, v52);
      }

      else
      {
        v138 = *(v0 + 123);
        v141 = *(v0 + 288);
        sub_1B73F19C8(v43, v141, v44, *(v0 + 304), *(v0 + 122));
        v45 = sub_1B7800098();
        v46 = sub_1B78011F8();
        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v0 + 280);
        v49 = *(v0 + 288);
        v135 = v30;
        if (v47)
        {
          v122 = *(v0 + 296);
          v129 = *(v0 + 122);
          v124 = *(v0 + 304);
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v145[0] = v51;
          *v50 = 136315906;
          *(v50 + 4) = sub_1B71A3EF8(0xD00000000000001FLL, 0x80000001B7872BD0, v145);
          *(v50 + 12) = 2048;
          *(v50 + 14) = v43[2];
          *(v50 + 22) = 2048;
          *(v50 + 24) = *(v141 + 16);
          *(v50 + 32) = 2048;
          *(v50 + 34) = *(v44 + 16);
          sub_1B73F1960(v48, v49, v122, v124, v129);
          _os_log_impl(&dword_1B7198000, v45, v46, "Adding relevant pending updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v50, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1B8CA7A40](v51, -1, -1);
          MEMORY[0x1B8CA7A40](v50, -1, -1);
        }

        else
        {
          sub_1B73F1960(v48, v49, *(v0 + 296), *(v0 + 304), *(v0 + 122));
        }

        v54 = *(v0 + 312);
        v55 = *(v0 + 160);
        v56 = v55 + *(v0 + 208);
        v57 = *(v0 + 123);
        v58 = *v56;
        *v56 = v54;
        v59 = *(v56 + 8);
        *(v56 + 8) = v57 & 1;
        sub_1B72274E8(v54, v57);
        sub_1B72274E8(v54, v57);

        sub_1B7201CF8(v58, v59);
        swift_beginAccess();
        v23 = *(v55 + 24);

        sub_1B7227500(v54, v138 & 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v55 + 24) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v120 = *(v0 + 160);
          v23 = sub_1B723E9A4(0, *(v23 + 16) + 1, 1, v23);
          *(v120 + 24) = v23;
        }

        v62 = *(v23 + 16);
        v61 = *(v23 + 24);
        if (v62 >= v61 >> 1)
        {
          v23 = sub_1B723E9A4((v61 > 1), v62 + 1, 1, v23);
        }

        v63 = *(v0 + 312);
        v130 = *(v0 + 304);
        v123 = *(v0 + 288);
        v125 = *(v0 + 296);
        v64 = *(v0 + 280);
        v65 = *(v0 + 160);
        v66 = *(v0 + 123);
        v121 = *(v0 + 122);
        *(v23 + 16) = v62 + 1;
        v67 = v23 + 40 * v62;
        *(v67 + 32) = v43;
        *(v67 + 40) = v141;
        *(v67 + 48) = v44;
        *(v67 + 56) = v63;
        *(v67 + 64) = v138 & 1;
        *(v65 + 24) = v23;
        swift_endAccess();
        sub_1B7201CF8(v63, v66);

        sub_1B7201D10(v63, v138 & 1);
        sub_1B73F1960(v64, v123, v125, v130, v121);

        v22 = v126;
        v42 = v127;
        v30 = v135;
      }
    }

    else
    {
      sub_1B7201CF8(*(v0 + 312), *(v0 + 123));
    }

    v68 = *(v0 + 124);
    v69 = *(v0 + 328);
    v139 = v69;
    v143 = v68;
  }

  else
  {
    v23 = *(v0 + 312);
    v118 = *(v0 + 123);
    sub_1B7201D10(*(v0 + 328), *(v0 + 124));
    sub_1B7201CF8(v23, v118);

    v143 = *(v0 + 124);
    v139 = *(v0 + 328);
    v68 = *(v0 + 122);
    v30 = *(v0 + 296);
    v69 = *(v0 + 304);
    v22 = *(v0 + 280);
    v42 = *(v0 + 288);
  }

  v70 = *(v0 + 320) + 1;
  v136 = v30;
  v133 = v68;
  v131 = v69;
  if (v70 == *(v0 + 240))
  {
LABEL_33:

    if (v22)
    {

      sub_1B73F19C8(v22, v42, v30, v69, v68);
      v71 = sub_1B7800098();
      v72 = sub_1B78011F8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v69;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v145[0] = v75;
        *v74 = 136315906;
        *(v74 + 4) = sub_1B71A3EF8(0xD00000000000001FLL, 0x80000001B7872BD0, v145);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v22[2];
        *(v74 + 22) = 2048;
        *(v74 + 24) = *(v42 + 16);
        *(v74 + 32) = 2048;
        *(v74 + 34) = *(v136 + 16);
        sub_1B73F1960(v22, v42, v136, v73, v68);
        _os_log_impl(&dword_1B7198000, v71, v72, "Adding final updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v74, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v75);
        v76 = v75;
        v30 = v136;
        MEMORY[0x1B8CA7A40](v76, -1, -1);
        MEMORY[0x1B8CA7A40](v74, -1, -1);
      }

      else
      {
        sub_1B73F1960(v22, v42, v30, v69, v68);
      }

      v86 = *(v0 + 160);
      v87 = v86 + *(v0 + 208);
      v88 = *v87;
      *v87 = v139;
      v89 = *(v87 + 8);
      *(v87 + 8) = v143;
      sub_1B72274E8(v139, v143);
      sub_1B72274E8(v139, v143);

      sub_1B7201CF8(v88, v89);
      swift_beginAccess();
      v23 = *(v86 + 24);

      sub_1B7227500(v139, v143);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *(v86 + 24) = v23;
      if ((v90 & 1) == 0)
      {
LABEL_71:
        v119 = *(v0 + 160);
        v23 = sub_1B723E9A4(0, *(v23 + 16) + 1, 1, v23);
        *(v119 + 24) = v23;
      }

      v92 = *(v23 + 16);
      v91 = *(v23 + 24);
      if (v92 >= v91 >> 1)
      {
        v23 = sub_1B723E9A4((v91 > 1), v92 + 1, 1, v23);
      }

      v93 = *(v0 + 160);
      *(v23 + 16) = v92 + 1;
      v94 = v23 + 40 * v92;
      *(v94 + 32) = v22;
      *(v94 + 40) = v42;
      *(v94 + 48) = v30;
      *(v94 + 56) = v139;
      *(v94 + 64) = v143;
      *(v93 + 24) = v23;
      swift_endAccess();
      sub_1B7201CF8(v139, v143);

      sub_1B7201D10(v139, v143);
      sub_1B73F1960(v22, v42, v30, v131, v133);
    }

    else if (*(v0 + 121) == 1)
    {
      sub_1B73F1960(0, v42, v30, v69, v68);
      sub_1B7201CF8(v139, v143);
    }

    else
    {
      v97 = sub_1B7800098();
      v98 = sub_1B78011F8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v42;
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_1B7198000, v97, v98, "Initial fetch, sending empty updates", v100, 2u);
        v101 = v100;
        v42 = v99;
        MEMORY[0x1B8CA7A40](v101, -1, -1);
      }

      sub_1B7227500(v139, v143);
      v102 = *(v0 + 208);
      v103 = *(v0 + 160);

      v104 = v103 + v102;
      v105 = *(v103 + v102);
      *v104 = v139;
      v106 = *(v103 + v102 + 8);
      *(v104 + 8) = v143;
      sub_1B7227500(v139, v143);
      sub_1B7227500(v139, v143);
      sub_1B7201CF8(v105, v106);
      swift_beginAccess();
      v107 = *(v103 + 24);
      v108 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();
      sub_1B7227500(v139, v143);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      *(v103 + 24) = v107;
      if ((v109 & 1) == 0)
      {
        v107 = sub_1B723E9A4(0, v107[2] + 1, 1, v107);
        *(v103 + 24) = v107;
      }

      v111 = v107[2];
      v110 = v107[3];
      if (v111 >= v110 >> 1)
      {
        v107 = sub_1B723E9A4((v110 > 1), v111 + 1, 1, v107);
      }

      v107[2] = v111 + 1;
      v112 = &v107[5 * v111];
      v112[4] = v108;
      v112[5] = v108;
      v112[6] = v108;
      v112[7] = v139;
      *(v112 + 64) = v143;
      *(v103 + 24) = v107;
      swift_endAccess();
      sub_1B73F1960(0, v42, v136, v131, v133);
      sub_1B7201CF8(v139, v143);
      swift_bridgeObjectRelease_n();
      sub_1B7201D10(v139, v143);
      sub_1B7201D10(v139, v143);
    }

    v25 = *(v0 + 8);
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 123) = v143;
    *(v0 + 312) = v139;
    *(v0 + 320) = v70;
    *(v0 + 122) = v68;
    *(v0 + 296) = v30;
    *(v0 + 304) = v69;
    *(v0 + 280) = v22;
    *(v0 + 288) = v42;
    v77 = *(v0 + 224);
    if (v70 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    v78 = v22;
    v79 = v77 + 16 * v70;
    v80 = *(v0 + 160) + *(v0 + 208);
    v81 = *(v79 + 32);
    *(v0 + 328) = v81;
    v82 = *(v79 + 40);
    *(v0 + 124) = v82;
    v83 = *v80;
    v84 = *(v80 + 8);
    if (v84 == 255)
    {
      sub_1B7227500(v81, v82);
      sub_1B7227500(v81, v82);
      sub_1B7227500(v81, v82);
      sub_1B72274E8(v83, 255);
      sub_1B7201CF8(v83, 255);
      v95 = v81;
      v96 = v82;
      goto LABEL_65;
    }

    *(v0 + 352) = v84;
    if ((v84 & 1) == 0)
    {
      break;
    }

    sub_1B7227500(v81, v82);
    if ((v82 & 1) == 0)
    {
      sub_1B7227500(v81, 0);
      sub_1B7227500(v81, 0);
      sub_1B72274E8(v83, v84);
      sub_1B72274E8(v83, v84);
      goto LABEL_64;
    }

    v85 = 1;
    sub_1B7227500(v81, 1);
    sub_1B7227500(v81, 1);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v83, v84);
    sub_1B7201D10(v83, 1);
    sub_1B7201D10(v81, 1);
    v23 = v83 == v81;
LABEL_43:
    sub_1B7201D10(v83, v85);
    sub_1B7201CF8(v83, v84);
    if ((v23 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_1B7201D10(v81, v82);
    sub_1B7201D10(v81, v82);
    v70 = *(v0 + 320) + 1;
    v30 = v136;
    v22 = v78;
    v68 = v133;
    v69 = v131;
    if (v70 == *(v0 + 240))
    {
      goto LABEL_33;
    }
  }

  if ((v82 & 1) == 0)
  {
    sub_1B7205540(0, &qword_1EDAFC4C0);
    sub_1B7227500(v81, 0);
    sub_1B7227500(v81, 0);
    sub_1B7227500(v81, 0);
    sub_1B72274E8(v83, v84);
    sub_1B7227500(v81, 0);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v81, v82);
    sub_1B7227500(v83, 0);
    v23 = sub_1B7801558();
    sub_1B7201D10(v81, 0);
    sub_1B7201CF8(v83, v84);
    sub_1B7201D10(v83, 0);
    sub_1B7201D10(v81, 0);
    sub_1B7201CF8(v81, v82);
    v85 = *(v0 + 352);
    goto LABEL_43;
  }

  sub_1B7227500(v81, 1);
  sub_1B7227500(v81, 1);
  sub_1B7227500(v81, 1);
  sub_1B72274E8(v83, v84);
  sub_1B72274E8(v83, v84);
  sub_1B7227500(v83, 0);
LABEL_64:
  v82 = v84 ^ 1;
  sub_1B7201D10(v83, v84 & 1);
  sub_1B7201D10(v81, (v84 ^ 1) & 1);
  sub_1B7201D10(v83, v84 & 1);
  v95 = v83;
  v96 = v84;
LABEL_65:
  sub_1B7201CF8(v95, v96);
LABEL_66:
  v113 = *(v0 + 256);
  v114 = *(v0 + 160);
  v115 = *(v114 + *(v0 + 248));
  *(v0 + 128) = v81;
  v116 = *(v0 + 200);
  *(v0 + 136) = v82 & 1;
  *(v0 + 152) = v116;

  v144 = (v115 + *v115);
  v117 = swift_task_alloc();
  *(v0 + 336) = v117;
  *v117 = v0;
  v117[1] = sub_1B73E66CC;

  return v144(v0 + 16, v0 + 128, 0xD00000000000001FLL, 0x80000001B7872BD0, v114 + v113, v0 + 152);
}

uint64_t sub_1B73E7A14()
{
  v1[20] = v0;
  v2 = sub_1B77FFA18();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E7AE0, 0, 0);
}

uint64_t sub_1B73E7AE0()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 121) = v2;
  if ((v2 & 1) == 0)
  {
    *(v1 + 16) = 1;
    v1 = *(v0 + 160);
  }

  if (*(v1 + qword_1EDB08710))
  {
    v3 = *(v1 + qword_1EDB08710);
  }

  else
  {
    v3 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 160);
  }

  *(v0 + 200) = v3;
  v4 = *(v1 + qword_1EDB08708);
  v5 = qword_1EDB086F0;
  *(v0 + 208) = qword_1EDB086F0;
  v6 = v1 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v0 + 112) = *v6;
  *(v0 + 120) = v8;
  *(v0 + 144) = v3;
  swift_bridgeObjectRetain_n();

  sub_1B72274E8(v7, v8);
  v11 = (v4 + *v4);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_1B73E7CB0;

  return v11(v0 + 112, 0x6C616E7265746E49, 0xEF746E756F636341, v0 + 144);
}

uint64_t sub_1B73E7CB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73F1B78;
  }

  else
  {

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73E7DF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B73E7DF8()
{
  v5 = *(*(v3 + 224) + 16);
  *(v3 + 240) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = qword_1EDB086F8;
    *(v3 + 248) = qword_1EDB08718;
    *(v3 + 256) = v7;
    v8 = qword_1EDB08700;
    *(v3 + 264) = qword_1EDB08748;
    *(v3 + 272) = v8;
    v9 = 65280;
    do
    {
      *(v3 + 320) = v6;
      *(v3 + 122) = -256;
      *(v3 + 280) = 0u;
      *(v3 + 296) = 0u;
      *(v3 + 312) = 0;
      v10 = *(v3 + 224);
      if (v6 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v11 = v10 + 16 * v6;
      v12 = *(v3 + 160) + *(v3 + 208);
      v0 = *(v11 + 32);
      *(v3 + 328) = v0;
      v13 = *(v11 + 40);
      *(v3 + 124) = v13;
      v2 = *v12;
      v4 = *(v12 + 8);
      if (v4 == 255)
      {
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B72274E8(v2, 255);
        sub_1B7201CF8(v2, 255);
        v20 = v0;
        v21 = v13;
        goto LABEL_32;
      }

      *(v3 + 352) = v4;
      if (v4)
      {
        sub_1B7227500(v0, v13);
        if ((v13 & 1) == 0)
        {
          sub_1B7227500(v0, 0);
          sub_1B7227500(v0, 0);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          goto LABEL_31;
        }

        v14 = 1;
        sub_1B7227500(v0, 1);
        sub_1B7227500(v0, 1);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B7201D10(v2, 1);
        sub_1B7201D10(v0, 1);
        v1 = v2 == v0;
      }

      else
      {
        if (v13)
        {
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          sub_1B7227500(v2, 0);
LABEL_31:
          v13 = v4 ^ 1;
          sub_1B7201D10(v2, v4 & 1);
          sub_1B7201D10(v0, (v4 ^ 1) & 1);
          sub_1B7201D10(v2, v4 & 1);
          v20 = v2;
          v21 = v4;
LABEL_32:
          sub_1B7201CF8(v20, v21);
LABEL_33:
          v31 = *(v3 + 256);
          v32 = *(v3 + 160);
          v33 = *(v32 + *(v3 + 248));
          *(v3 + 128) = v0;
          v34 = *(v3 + 200);
          *(v3 + 136) = v13 & 1;
          *(v3 + 152) = v34;

          v36 = (v33 + *v33);
          v35 = swift_task_alloc();
          *(v3 + 336) = v35;
          *v35 = v3;
          v35[1] = sub_1B73E8598;

          v36(v3 + 16, v3 + 128, 0x6C616E7265746E49, 0xEF746E756F636341, v32 + v31, v3 + 152);
          return;
        }

        sub_1B7205540(0, &qword_1EDAFC4C0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v0, v13);
        sub_1B7227500(v2, 0);
        v1 = sub_1B7801558();
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v2, v4);
        sub_1B7201D10(v2, 0);
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v0, v13);
        v14 = *(v3 + 352);
      }

      sub_1B7201D10(v2, v14);
      sub_1B7201CF8(v2, v4);
      if ((v1 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1B7201D10(v0, v13);
      sub_1B7201D10(v0, v13);
      v6 = *(v3 + 320) + 1;
    }

    while (v6 != *(v3 + 240));
  }

  if (*(v3 + 121) == 1)
  {
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
  }

  else
  {
    v15 = sub_1B7800098();
    v16 = sub_1B78011F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7198000, v15, v16, "Initial fetch, sending empty updates", v17, 2u);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }

    v18 = *(v3 + 160);
    if (*(v3 + 240) || (v22 = v18 + *(v3 + 208), v4 = *(v22 + 8), v4 == 255))
    {
      v19 = [*(*(v18 + qword_1EDB08748) + 16) newBackgroundContext];
      v1 = NSManagedObjectContext.currentLocalHistoryToken.getter();

      if (!v1)
      {
        __break(1u);
        return;
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v1 = *v22;
      sub_1B7227500(*v22, v4 & 1);
    }

    v23 = *(v3 + 208);
    v9 = *(v3 + 160);

    v24 = v9 + v23;
    v25 = *(v9 + v23);
    *v24 = v1;
    LOBYTE(v23) = *(v9 + v23 + 8);
    *(v24 + 8) = v4 & 1;
    sub_1B7227500(v1, v4 & 1);
    sub_1B7227500(v1, v4 & 1);
    sub_1B7201CF8(v25, v23);
    swift_beginAccess();
    v2 = *(v9 + 24);
    v0 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    sub_1B7227500(v1, v4 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 24) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v2 = sub_1B723E9C8(0, v2[2] + 1, 1, v2);
      *(v9 + 24) = v2;
    }

    v28 = v2[2];
    v27 = v2[3];
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1B723E9C8((v27 > 1), v28 + 1, 1, v2);
    }

    v2[2] = v28 + 1;
    v29 = &v2[5 * v28];
    v29[4] = v0;
    v29[5] = v0;
    v29[6] = v0;
    v29[7] = v1;
    *(v29 + 64) = v4 & 1;
    *(v9 + 24) = v2;
    swift_endAccess();
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v1, v4 & 1);
    sub_1B7201D10(v1, v4 & 1);
  }

  v30 = *(v3 + 8);

  v30();
}

uint64_t sub_1B73E8598()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 124);
    v4 = *(v2 + 328);

    sub_1B7201D10(v4, v3);

    v5 = sub_1B73F1B00;
  }

  else
  {

    v5 = sub_1B73E8704;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73E8704()
{
  v149 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 344);
  v3 = *(v0 + 124);
  v4 = *(v0 + 328);
  v5 = *(v0 + 264);
  v6 = *(v0 + 160);
  v7 = v6 + *(v0 + 208);
  v8 = *(v0 + 24);
  v137 = *(v0 + 32);
  v9 = *v7;
  *v7 = v4;
  v10 = *(v7 + 8);
  *(v7 + 8) = v3;
  sub_1B7201CF8(v9, v10);
  v11 = *(*(v6 + v5) + 16);
  sub_1B7227500(v4, v3);
  v12 = [v11 persistentStoreCoordinator];
  sub_1B73EF608(v1, v12, type metadata accessor for ManagedInternalAccount, &unk_1EB993A50, &unk_1B7824C40, sub_1B73F17D8);
  v135 = v12;
  if (v2)
  {
    v14 = *(v0 + 124);
    v15 = *(v0 + 328);
    v16 = *(v0 + 304);
    v129 = *(v0 + 312);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    v20 = *(v0 + 122);
    v21 = *(v0 + 123);
    sub_1B7201D10(v15, v14);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v15, v14);
    sub_1B73F1960(v19, v17, v18, v16, v20);
    sub_1B7201CF8(v129, v21);

    v25 = *(v0 + 8);
LABEL_4:

    return v25();
  }

  v22 = v13;
  v23 = *(v0 + 160);
  sub_1B73EF608(v8, v12, type metadata accessor for ManagedInternalAccount, &unk_1EB993A50, &unk_1B7824C40, sub_1B73F17D8);
  v127 = v22;
  v128 = v24;
  v27 = *(v137 + 16);
  if (v27)
  {
    v28 = *(v0 + 176);
    v23 = v137 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v29 = *(v28 + 72);
    v140 = *(v28 + 16);
    v144 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);
      v33 = v30;
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v140(v31, v23, v35);
      v36 = *(v34 + 32);
      v37 = v35;
      v30 = v33;
      v36(v32, v31, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B723E954(0, v33[2] + 1, 1, v33);
      }

      v39 = v30[2];
      v38 = v30[3];
      if (v39 >= v38 >> 1)
      {
        v30 = sub_1B723E954(v38 > 1, v39 + 1, 1, v30);
      }

      v40 = *(v0 + 184);
      v41 = *(v0 + 168);
      v30[2] = v39 + 1;
      v36(v30 + v144 + v39 * v29, v40, v41);
      v23 += v29;
      --v27;
    }

    while (v27);

    v22 = v127;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v43 = v128;
  v42 = v0 + 16;
  if (v22[2] || *(v128 + 16) || v30[2])
  {
    v44 = *(v0 + 280);
    if (v44)
    {
      v45 = *(v0 + 296);
      if (*(v0 + 123) == 255)
      {
        v23 = *(v0 + 304);
        v55 = *(v0 + 122);
        v56 = *(v0 + 288);

        sub_1B73F1960(v44, v56, v45, v23, v55);
      }

      else
      {
        v145 = *(v0 + 123);
        v46 = *(v0 + 288);
        sub_1B73F19C8(v44, v46, v45, *(v0 + 304), *(v0 + 122));
        v47 = sub_1B7800098();
        v48 = v45;
        v49 = sub_1B78011F8();
        v50 = os_log_type_enabled(v47, v49);
        v51 = *(v0 + 280);
        v52 = *(v0 + 288);
        v138 = v30;
        if (v50)
        {
          v141 = *(v0 + 122);
          v130 = *(v0 + 296);
          v132 = *(v0 + 304);
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v148[0] = v54;
          *v53 = 136315906;
          *(v53 + 4) = sub_1B71A3EF8(0x6C616E7265746E49, 0xEF746E756F636341, v148);
          *(v53 + 12) = 2048;
          *(v53 + 14) = v44[2];
          *(v53 + 22) = 2048;
          *(v53 + 24) = *(v46 + 16);
          *(v53 + 32) = 2048;
          *(v53 + 34) = *(v48 + 16);
          sub_1B73F1960(v51, v52, v130, v132, v141);
          _os_log_impl(&dword_1B7198000, v47, v49, "Adding relevant pending updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v53, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x1B8CA7A40](v54, -1, -1);
          MEMORY[0x1B8CA7A40](v53, -1, -1);
        }

        else
        {
          sub_1B73F1960(v51, v52, *(v0 + 296), *(v0 + 304), *(v0 + 122));
        }

        v57 = v48;
        v58 = *(v0 + 312);
        v59 = *(v0 + 160);
        v60 = v59 + *(v0 + 208);
        v61 = *(v0 + 123);
        v62 = *v60;
        *v60 = v58;
        v63 = *(v60 + 8);
        *(v60 + 8) = v61 & 1;
        sub_1B72274E8(v58, v61);
        sub_1B72274E8(v58, v61);

        sub_1B7201CF8(v62, v63);
        swift_beginAccess();
        v23 = *(v59 + 24);

        v64 = v46;

        sub_1B7227500(v58, v145 & 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 24) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v125 = *(v0 + 160);
          v23 = sub_1B723E9C8(0, *(v23 + 16) + 1, 1, v23);
          *(v125 + 24) = v23;
        }

        v67 = *(v23 + 16);
        v66 = *(v23 + 24);
        if (v67 >= v66 >> 1)
        {
          v23 = sub_1B723E9C8((v66 > 1), v67 + 1, 1, v23);
        }

        v68 = *(v0 + 312);
        v142 = *(v0 + 304);
        v131 = *(v0 + 288);
        v133 = *(v0 + 296);
        v69 = *(v0 + 280);
        v70 = *(v0 + 160);
        v71 = *(v0 + 123);
        v126 = *(v0 + 122);
        *(v23 + 16) = v67 + 1;
        v72 = v23 + 40 * v67;
        *(v72 + 32) = v44;
        *(v72 + 40) = v64;
        *(v72 + 48) = v57;
        *(v72 + 56) = v68;
        *(v72 + 64) = v145 & 1;
        *(v70 + 24) = v23;
        v42 = v0 + 16;
        swift_endAccess();
        sub_1B7201CF8(v68, v71);

        sub_1B7201D10(v68, v145 & 1);
        sub_1B73F1960(v69, v131, v133, v142, v126);

        v22 = v127;
        v43 = v128;
        v30 = v138;
      }
    }

    else
    {
      sub_1B7201CF8(*(v0 + 312), *(v0 + 123));
    }

    v73 = *(v0 + 124);
    v74 = *(v0 + 328);
    v143 = v74;
    v146 = v73;
  }

  else
  {
    v23 = *(v0 + 312);
    v123 = *(v0 + 123);
    sub_1B7201D10(*(v0 + 328), *(v0 + 124));
    sub_1B7201CF8(v23, v123);

    v146 = *(v0 + 124);
    v143 = *(v0 + 328);
    v73 = *(v0 + 122);
    v30 = *(v0 + 296);
    v74 = *(v0 + 304);
    v22 = *(v0 + 280);
    v43 = *(v0 + 288);
  }

  v75 = *(v0 + 320) + 1;
  v139 = v30;
  v136 = v73;
  v134 = v74;
  if (v75 == *(v0 + 240))
  {
LABEL_33:

    if (v22)
    {

      sub_1B73F19C8(v22, v43, v30, v74, v73);
      v76 = sub_1B7800098();
      v77 = sub_1B78011F8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v74;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v148[0] = v80;
        *v79 = 136315906;
        *(v79 + 4) = sub_1B71A3EF8(0x6C616E7265746E49, 0xEF746E756F636341, v148);
        *(v79 + 12) = 2048;
        *(v79 + 14) = v22[2];
        *(v79 + 22) = 2048;
        *(v79 + 24) = *(v43 + 16);
        *(v79 + 32) = 2048;
        *(v79 + 34) = *(v139 + 16);
        sub_1B73F1960(v22, v43, v139, v78, v73);
        _os_log_impl(&dword_1B7198000, v76, v77, "Adding final updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v79, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v81 = v80;
        v30 = v139;
        MEMORY[0x1B8CA7A40](v81, -1, -1);
        MEMORY[0x1B8CA7A40](v79, -1, -1);
      }

      else
      {
        sub_1B73F1960(v22, v43, v30, v74, v73);
      }

      v91 = *(v0 + 160);
      v92 = v91 + *(v0 + 208);
      v93 = *v92;
      *v92 = v143;
      v94 = *(v92 + 8);
      *(v92 + 8) = v146;
      sub_1B72274E8(v143, v146);
      sub_1B72274E8(v143, v146);

      sub_1B7201CF8(v93, v94);
      swift_beginAccess();
      v23 = *(v91 + 24);

      sub_1B7227500(v143, v146);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *(v91 + 24) = v23;
      if ((v95 & 1) == 0)
      {
LABEL_71:
        v124 = *(v0 + 160);
        v23 = sub_1B723E9C8(0, *(v23 + 16) + 1, 1, v23);
        *(v124 + 24) = v23;
      }

      v97 = *(v23 + 16);
      v96 = *(v23 + 24);
      if (v97 >= v96 >> 1)
      {
        v23 = sub_1B723E9C8((v96 > 1), v97 + 1, 1, v23);
      }

      v98 = *(v0 + 160);
      *(v23 + 16) = v97 + 1;
      v99 = v23 + 40 * v97;
      *(v99 + 32) = v22;
      *(v99 + 40) = v43;
      *(v99 + 48) = v30;
      *(v99 + 56) = v143;
      *(v99 + 64) = v146;
      *(v98 + 24) = v23;
      swift_endAccess();
      sub_1B7201CF8(v143, v146);

      sub_1B7201D10(v143, v146);
      sub_1B73F1960(v22, v43, v30, v134, v136);
    }

    else if (*(v0 + 121) == 1)
    {
      sub_1B73F1960(0, v43, v30, v74, v73);
      sub_1B7201CF8(v143, v146);
    }

    else
    {
      v102 = sub_1B7800098();
      v103 = sub_1B78011F8();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = v43;
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_1B7198000, v102, v103, "Initial fetch, sending empty updates", v105, 2u);
        v106 = v105;
        v43 = v104;
        MEMORY[0x1B8CA7A40](v106, -1, -1);
      }

      sub_1B7227500(v143, v146);
      v107 = *(v0 + 208);
      v108 = *(v0 + 160);

      v109 = v108 + v107;
      v110 = *(v108 + v107);
      *v109 = v143;
      v111 = *(v108 + v107 + 8);
      *(v109 + 8) = v146;
      sub_1B7227500(v143, v146);
      sub_1B7227500(v143, v146);
      sub_1B7201CF8(v110, v111);
      swift_beginAccess();
      v112 = *(v108 + 24);
      v113 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();
      sub_1B7227500(v143, v146);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      *(v108 + 24) = v112;
      if ((v114 & 1) == 0)
      {
        v112 = sub_1B723E9C8(0, v112[2] + 1, 1, v112);
        *(v108 + 24) = v112;
      }

      v116 = v112[2];
      v115 = v112[3];
      if (v116 >= v115 >> 1)
      {
        v112 = sub_1B723E9C8((v115 > 1), v116 + 1, 1, v112);
      }

      v112[2] = v116 + 1;
      v117 = &v112[5 * v116];
      v117[4] = v113;
      v117[5] = v113;
      v117[6] = v113;
      v117[7] = v143;
      *(v117 + 64) = v146;
      *(v108 + 24) = v112;
      swift_endAccess();
      sub_1B73F1960(0, v43, v139, v134, v136);
      sub_1B7201CF8(v143, v146);
      swift_bridgeObjectRelease_n();
      sub_1B7201D10(v143, v146);
      sub_1B7201D10(v143, v146);
    }

    v25 = *(v0 + 8);
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 123) = v146;
    *(v0 + 312) = v143;
    *(v0 + 320) = v75;
    *(v0 + 122) = v73;
    *(v0 + 296) = v30;
    *(v0 + 304) = v74;
    *(v0 + 280) = v22;
    *(v0 + 288) = v43;
    v82 = *(v0 + 224);
    if (v75 >= *(v82 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    v83 = v22;
    v84 = v82 + 16 * v75;
    v85 = *(v0 + 160) + *(v0 + 208);
    v86 = *(v84 + 32);
    *(v0 + 328) = v86;
    v87 = *(v84 + 40);
    *(v0 + 124) = v87;
    v88 = *v85;
    v89 = *(v85 + 8);
    if (v89 == 255)
    {
      sub_1B7227500(v86, v87);
      sub_1B7227500(v86, v87);
      sub_1B7227500(v86, v87);
      sub_1B72274E8(v88, 255);
      sub_1B7201CF8(v88, 255);
      v100 = v86;
      v101 = v87;
      goto LABEL_65;
    }

    *(v42 + 336) = v89;
    if ((v89 & 1) == 0)
    {
      break;
    }

    sub_1B7227500(v86, v87);
    if ((v87 & 1) == 0)
    {
      sub_1B7227500(v86, 0);
      sub_1B7227500(v86, 0);
      sub_1B72274E8(v88, v89);
      sub_1B72274E8(v88, v89);
      goto LABEL_64;
    }

    v90 = 1;
    sub_1B7227500(v86, 1);
    sub_1B7227500(v86, 1);
    sub_1B72274E8(v88, v89);
    sub_1B72274E8(v88, v89);
    sub_1B7201D10(v88, 1);
    sub_1B7201D10(v86, 1);
    v23 = v88 == v86;
LABEL_43:
    sub_1B7201D10(v88, v90);
    sub_1B7201CF8(v88, v89);
    if ((v23 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_1B7201D10(v86, v87);
    sub_1B7201D10(v86, v87);
    v75 = *(v0 + 320) + 1;
    v30 = v139;
    v22 = v83;
    v73 = v136;
    v74 = v134;
    if (v75 == *(v0 + 240))
    {
      goto LABEL_33;
    }
  }

  if ((v87 & 1) == 0)
  {
    sub_1B7205540(0, &qword_1EDAFC4C0);
    sub_1B7227500(v86, 0);
    sub_1B7227500(v86, 0);
    sub_1B7227500(v86, 0);
    sub_1B72274E8(v88, v89);
    sub_1B7227500(v86, 0);
    sub_1B72274E8(v88, v89);
    sub_1B72274E8(v88, v89);
    sub_1B72274E8(v86, v87);
    sub_1B7227500(v88, 0);
    v23 = sub_1B7801558();
    sub_1B7201D10(v86, 0);
    sub_1B7201CF8(v88, v89);
    sub_1B7201D10(v88, 0);
    sub_1B7201D10(v86, 0);
    sub_1B7201CF8(v86, v87);
    v90 = *(v42 + 336);
    goto LABEL_43;
  }

  sub_1B7227500(v86, 1);
  sub_1B7227500(v86, 1);
  sub_1B7227500(v86, 1);
  sub_1B72274E8(v88, v89);
  sub_1B72274E8(v88, v89);
  sub_1B7227500(v88, 0);
LABEL_64:
  v87 = v89 ^ 1;
  sub_1B7201D10(v88, v89 & 1);
  sub_1B7201D10(v86, (v89 ^ 1) & 1);
  sub_1B7201D10(v88, v89 & 1);
  v100 = v88;
  v101 = v89;
LABEL_65:
  sub_1B7201CF8(v100, v101);
LABEL_66:
  v118 = *(v0 + 256);
  v119 = *(v0 + 160);
  v120 = *(v119 + *(v0 + 248));
  *(v0 + 128) = v86;
  v121 = *(v0 + 200);
  *(v0 + 136) = v87 & 1;
  *(v0 + 152) = v121;

  v147 = (v120 + *v120);
  v122 = swift_task_alloc();
  *(v0 + 336) = v122;
  *v122 = v0;
  v122[1] = sub_1B73E8598;

  return v147(v0 + 16, v0 + 128, 0x6C616E7265746E49, 0xEF746E756F636341, v119 + v118, v0 + 152);
}

uint64_t sub_1B73E98E0()
{
  v1[20] = v0;
  v2 = sub_1B77FFA18();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73E99AC, 0, 0);
}

uint64_t sub_1B73E99AC()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 121) = v2;
  if ((v2 & 1) == 0)
  {
    *(v1 + 16) = 1;
    v1 = *(v0 + 160);
  }

  if (*(v1 + qword_1EDB08710))
  {
    v3 = *(v1 + qword_1EDB08710);
  }

  else
  {
    v3 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 160);
  }

  *(v0 + 200) = v3;
  v4 = *(v1 + qword_1EDB08708);
  v5 = qword_1EDB086F0;
  *(v0 + 208) = qword_1EDB086F0;
  v6 = v1 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v0 + 112) = *v6;
  *(v0 + 120) = v8;
  *(v0 + 144) = v3;
  swift_bridgeObjectRetain_n();

  sub_1B72274E8(v7, v8);
  v11 = (v4 + *v4);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_1B73E9B70;

  return v11(v0 + 112, 0x746E65736E6F43, 0xE700000000000000, v0 + 144);
}

uint64_t sub_1B73E9B70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73EA44C;
  }

  else
  {

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73E9CB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B73E9CB8()
{
  v5 = *(*(v3 + 224) + 16);
  *(v3 + 240) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = qword_1EDB086F8;
    *(v3 + 248) = qword_1EDB08718;
    *(v3 + 256) = v7;
    v8 = qword_1EDB08700;
    *(v3 + 264) = qword_1EDB08748;
    *(v3 + 272) = v8;
    v9 = 65280;
    do
    {
      *(v3 + 320) = v6;
      *(v3 + 122) = -256;
      *(v3 + 280) = 0u;
      *(v3 + 296) = 0u;
      *(v3 + 312) = 0;
      v10 = *(v3 + 224);
      if (v6 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v11 = v10 + 16 * v6;
      v12 = *(v3 + 160) + *(v3 + 208);
      v0 = *(v11 + 32);
      *(v3 + 328) = v0;
      v13 = *(v11 + 40);
      *(v3 + 124) = v13;
      v2 = *v12;
      v4 = *(v12 + 8);
      if (v4 == 255)
      {
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B72274E8(v2, 255);
        sub_1B7201CF8(v2, 255);
        v20 = v0;
        v21 = v13;
        goto LABEL_32;
      }

      *(v3 + 352) = v4;
      if (v4)
      {
        sub_1B7227500(v0, v13);
        if ((v13 & 1) == 0)
        {
          sub_1B7227500(v0, 0);
          sub_1B7227500(v0, 0);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          goto LABEL_31;
        }

        v14 = 1;
        sub_1B7227500(v0, 1);
        sub_1B7227500(v0, 1);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B7201D10(v2, 1);
        sub_1B7201D10(v0, 1);
        v1 = v2 == v0;
      }

      else
      {
        if (v13)
        {
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          sub_1B7227500(v2, 0);
LABEL_31:
          v13 = v4 ^ 1;
          sub_1B7201D10(v2, v4 & 1);
          sub_1B7201D10(v0, (v4 ^ 1) & 1);
          sub_1B7201D10(v2, v4 & 1);
          v20 = v2;
          v21 = v4;
LABEL_32:
          sub_1B7201CF8(v20, v21);
LABEL_33:
          v31 = *(v3 + 256);
          v32 = *(v3 + 160);
          v33 = *(v32 + *(v3 + 248));
          *(v3 + 128) = v0;
          v34 = *(v3 + 200);
          *(v3 + 136) = v13 & 1;
          *(v3 + 152) = v34;

          v36 = (v33 + *v33);
          v35 = swift_task_alloc();
          *(v3 + 336) = v35;
          *v35 = v3;
          v35[1] = sub_1B73EA4B8;

          v36(v3 + 16, v3 + 128, 0x746E65736E6F43, 0xE700000000000000, v32 + v31, v3 + 152);
          return;
        }

        sub_1B7205540(0, &qword_1EDAFC4C0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v0, v13);
        sub_1B7227500(v2, 0);
        v1 = sub_1B7801558();
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v2, v4);
        sub_1B7201D10(v2, 0);
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v0, v13);
        v14 = *(v3 + 352);
      }

      sub_1B7201D10(v2, v14);
      sub_1B7201CF8(v2, v4);
      if ((v1 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1B7201D10(v0, v13);
      sub_1B7201D10(v0, v13);
      v6 = *(v3 + 320) + 1;
    }

    while (v6 != *(v3 + 240));
  }

  if (*(v3 + 121) == 1)
  {
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
  }

  else
  {
    v15 = sub_1B7800098();
    v16 = sub_1B78011F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7198000, v15, v16, "Initial fetch, sending empty updates", v17, 2u);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }

    v18 = *(v3 + 160);
    if (*(v3 + 240) || (v22 = v18 + *(v3 + 208), v4 = *(v22 + 8), v4 == 255))
    {
      v19 = [*(*(v18 + qword_1EDB08748) + 16) newBackgroundContext];
      v1 = NSManagedObjectContext.currentLocalHistoryToken.getter();

      if (!v1)
      {
        __break(1u);
        return;
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v1 = *v22;
      sub_1B7227500(*v22, v4 & 1);
    }

    v23 = *(v3 + 208);
    v9 = *(v3 + 160);

    v24 = v9 + v23;
    v25 = *(v9 + v23);
    *v24 = v1;
    LOBYTE(v23) = *(v9 + v23 + 8);
    *(v24 + 8) = v4 & 1;
    sub_1B7227500(v1, v4 & 1);
    sub_1B7227500(v1, v4 & 1);
    sub_1B7201CF8(v25, v23);
    swift_beginAccess();
    v2 = *(v9 + 24);
    v0 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    sub_1B7227500(v1, v4 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 24) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v2 = sub_1B723EA14(0, v2[2] + 1, 1, v2);
      *(v9 + 24) = v2;
    }

    v28 = v2[2];
    v27 = v2[3];
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1B723EA14((v27 > 1), v28 + 1, 1, v2);
    }

    v2[2] = v28 + 1;
    v29 = &v2[5 * v28];
    v29[4] = v0;
    v29[5] = v0;
    v29[6] = v0;
    v29[7] = v1;
    *(v29 + 64) = v4 & 1;
    *(v9 + 24) = v2;
    swift_endAccess();
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v1, v4 & 1);
    sub_1B7201D10(v1, v4 & 1);
  }

  v30 = *(v3 + 8);

  v30();
}

uint64_t sub_1B73EA44C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73EA4B8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 124);
    v4 = *(v2 + 328);

    sub_1B7201D10(v4, v3);

    v5 = sub_1B73EB7DC;
  }

  else
  {

    v5 = sub_1B73EA624;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73EA624()
{
  v149 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 344);
  v3 = *(v0 + 124);
  v4 = *(v0 + 328);
  v5 = *(v0 + 264);
  v6 = *(v0 + 160);
  v7 = v6 + *(v0 + 208);
  v8 = *(v0 + 24);
  v137 = *(v0 + 32);
  v9 = *v7;
  *v7 = v4;
  v10 = *(v7 + 8);
  *(v7 + 8) = v3;
  sub_1B7201CF8(v9, v10);
  v11 = *(*(v6 + v5) + 16);
  sub_1B7227500(v4, v3);
  v12 = [v11 persistentStoreCoordinator];
  sub_1B73EF608(v1, v12, type metadata accessor for ManagedConsent, &qword_1EB993A78, &unk_1B7824C90, sub_1B73F1908);
  v135 = v12;
  if (v2)
  {
    v14 = *(v0 + 124);
    v15 = *(v0 + 328);
    v16 = *(v0 + 304);
    v129 = *(v0 + 312);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    v20 = *(v0 + 122);
    v21 = *(v0 + 123);
    sub_1B7201D10(v15, v14);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v15, v14);
    sub_1B73F1960(v19, v17, v18, v16, v20);
    sub_1B7201CF8(v129, v21);

    v25 = *(v0 + 8);
LABEL_4:

    return v25();
  }

  v22 = v13;
  v23 = *(v0 + 160);
  sub_1B73EF608(v8, v12, type metadata accessor for ManagedConsent, &qword_1EB993A78, &unk_1B7824C90, sub_1B73F1908);
  v127 = v22;
  v128 = v24;
  v27 = *(v137 + 16);
  if (v27)
  {
    v28 = *(v0 + 176);
    v23 = v137 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v29 = *(v28 + 72);
    v140 = *(v28 + 16);
    v144 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);
      v33 = v30;
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v140(v31, v23, v35);
      v36 = *(v34 + 32);
      v37 = v35;
      v30 = v33;
      v36(v32, v31, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B723E954(0, v33[2] + 1, 1, v33);
      }

      v39 = v30[2];
      v38 = v30[3];
      if (v39 >= v38 >> 1)
      {
        v30 = sub_1B723E954(v38 > 1, v39 + 1, 1, v30);
      }

      v40 = *(v0 + 184);
      v41 = *(v0 + 168);
      v30[2] = v39 + 1;
      v36(v30 + v144 + v39 * v29, v40, v41);
      v23 += v29;
      --v27;
    }

    while (v27);

    v22 = v127;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v43 = v128;
  v42 = v0 + 16;
  if (v22[2] || *(v128 + 16) || v30[2])
  {
    v44 = *(v0 + 280);
    if (v44)
    {
      v45 = *(v0 + 296);
      if (*(v0 + 123) == 255)
      {
        v23 = *(v0 + 304);
        v55 = *(v0 + 122);
        v56 = *(v0 + 288);

        sub_1B73F1960(v44, v56, v45, v23, v55);
      }

      else
      {
        v145 = *(v0 + 123);
        v46 = *(v0 + 288);
        sub_1B73F19C8(v44, v46, v45, *(v0 + 304), *(v0 + 122));
        v47 = sub_1B7800098();
        v48 = v45;
        v49 = sub_1B78011F8();
        v50 = os_log_type_enabled(v47, v49);
        v51 = *(v0 + 280);
        v52 = *(v0 + 288);
        v138 = v30;
        if (v50)
        {
          v141 = *(v0 + 122);
          v130 = *(v0 + 296);
          v132 = *(v0 + 304);
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v148[0] = v54;
          *v53 = 136315906;
          *(v53 + 4) = sub_1B71A3EF8(0x746E65736E6F43, 0xE700000000000000, v148);
          *(v53 + 12) = 2048;
          *(v53 + 14) = v44[2];
          *(v53 + 22) = 2048;
          *(v53 + 24) = *(v46 + 16);
          *(v53 + 32) = 2048;
          *(v53 + 34) = *(v48 + 16);
          sub_1B73F1960(v51, v52, v130, v132, v141);
          _os_log_impl(&dword_1B7198000, v47, v49, "Adding relevant pending updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v53, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x1B8CA7A40](v54, -1, -1);
          MEMORY[0x1B8CA7A40](v53, -1, -1);
        }

        else
        {
          sub_1B73F1960(v51, v52, *(v0 + 296), *(v0 + 304), *(v0 + 122));
        }

        v57 = v48;
        v58 = *(v0 + 312);
        v59 = *(v0 + 160);
        v60 = v59 + *(v0 + 208);
        v61 = *(v0 + 123);
        v62 = *v60;
        *v60 = v58;
        v63 = *(v60 + 8);
        *(v60 + 8) = v61 & 1;
        sub_1B72274E8(v58, v61);
        sub_1B72274E8(v58, v61);

        sub_1B7201CF8(v62, v63);
        swift_beginAccess();
        v23 = *(v59 + 24);

        v64 = v46;

        sub_1B7227500(v58, v145 & 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 24) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v125 = *(v0 + 160);
          v23 = sub_1B723EA14(0, *(v23 + 16) + 1, 1, v23);
          *(v125 + 24) = v23;
        }

        v67 = *(v23 + 16);
        v66 = *(v23 + 24);
        if (v67 >= v66 >> 1)
        {
          v23 = sub_1B723EA14((v66 > 1), v67 + 1, 1, v23);
        }

        v68 = *(v0 + 312);
        v142 = *(v0 + 304);
        v131 = *(v0 + 288);
        v133 = *(v0 + 296);
        v69 = *(v0 + 280);
        v70 = *(v0 + 160);
        v71 = *(v0 + 123);
        v126 = *(v0 + 122);
        *(v23 + 16) = v67 + 1;
        v72 = v23 + 40 * v67;
        *(v72 + 32) = v44;
        *(v72 + 40) = v64;
        *(v72 + 48) = v57;
        *(v72 + 56) = v68;
        *(v72 + 64) = v145 & 1;
        *(v70 + 24) = v23;
        v42 = v0 + 16;
        swift_endAccess();
        sub_1B7201CF8(v68, v71);

        sub_1B7201D10(v68, v145 & 1);
        sub_1B73F1960(v69, v131, v133, v142, v126);

        v22 = v127;
        v43 = v128;
        v30 = v138;
      }
    }

    else
    {
      sub_1B7201CF8(*(v0 + 312), *(v0 + 123));
    }

    v73 = *(v0 + 124);
    v74 = *(v0 + 328);
    v143 = v74;
    v146 = v73;
  }

  else
  {
    v23 = *(v0 + 312);
    v123 = *(v0 + 123);
    sub_1B7201D10(*(v0 + 328), *(v0 + 124));
    sub_1B7201CF8(v23, v123);

    v146 = *(v0 + 124);
    v143 = *(v0 + 328);
    v73 = *(v0 + 122);
    v30 = *(v0 + 296);
    v74 = *(v0 + 304);
    v22 = *(v0 + 280);
    v43 = *(v0 + 288);
  }

  v75 = *(v0 + 320) + 1;
  v139 = v30;
  v136 = v73;
  v134 = v74;
  if (v75 == *(v0 + 240))
  {
LABEL_33:

    if (v22)
    {

      sub_1B73F19C8(v22, v43, v30, v74, v73);
      v76 = sub_1B7800098();
      v77 = sub_1B78011F8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v74;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v148[0] = v80;
        *v79 = 136315906;
        *(v79 + 4) = sub_1B71A3EF8(0x746E65736E6F43, 0xE700000000000000, v148);
        *(v79 + 12) = 2048;
        *(v79 + 14) = v22[2];
        *(v79 + 22) = 2048;
        *(v79 + 24) = *(v43 + 16);
        *(v79 + 32) = 2048;
        *(v79 + 34) = *(v139 + 16);
        sub_1B73F1960(v22, v43, v139, v78, v73);
        _os_log_impl(&dword_1B7198000, v76, v77, "Adding final updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v79, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v81 = v80;
        v30 = v139;
        MEMORY[0x1B8CA7A40](v81, -1, -1);
        MEMORY[0x1B8CA7A40](v79, -1, -1);
      }

      else
      {
        sub_1B73F1960(v22, v43, v30, v74, v73);
      }

      v91 = *(v0 + 160);
      v92 = v91 + *(v0 + 208);
      v93 = *v92;
      *v92 = v143;
      v94 = *(v92 + 8);
      *(v92 + 8) = v146;
      sub_1B72274E8(v143, v146);
      sub_1B72274E8(v143, v146);

      sub_1B7201CF8(v93, v94);
      swift_beginAccess();
      v23 = *(v91 + 24);

      sub_1B7227500(v143, v146);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *(v91 + 24) = v23;
      if ((v95 & 1) == 0)
      {
LABEL_71:
        v124 = *(v0 + 160);
        v23 = sub_1B723EA14(0, *(v23 + 16) + 1, 1, v23);
        *(v124 + 24) = v23;
      }

      v97 = *(v23 + 16);
      v96 = *(v23 + 24);
      if (v97 >= v96 >> 1)
      {
        v23 = sub_1B723EA14((v96 > 1), v97 + 1, 1, v23);
      }

      v98 = *(v0 + 160);
      *(v23 + 16) = v97 + 1;
      v99 = v23 + 40 * v97;
      *(v99 + 32) = v22;
      *(v99 + 40) = v43;
      *(v99 + 48) = v30;
      *(v99 + 56) = v143;
      *(v99 + 64) = v146;
      *(v98 + 24) = v23;
      swift_endAccess();
      sub_1B7201CF8(v143, v146);

      sub_1B7201D10(v143, v146);
      sub_1B73F1960(v22, v43, v30, v134, v136);
    }

    else if (*(v0 + 121) == 1)
    {
      sub_1B73F1960(0, v43, v30, v74, v73);
      sub_1B7201CF8(v143, v146);
    }

    else
    {
      v102 = sub_1B7800098();
      v103 = sub_1B78011F8();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = v43;
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_1B7198000, v102, v103, "Initial fetch, sending empty updates", v105, 2u);
        v106 = v105;
        v43 = v104;
        MEMORY[0x1B8CA7A40](v106, -1, -1);
      }

      sub_1B7227500(v143, v146);
      v107 = *(v0 + 208);
      v108 = *(v0 + 160);

      v109 = v108 + v107;
      v110 = *(v108 + v107);
      *v109 = v143;
      v111 = *(v108 + v107 + 8);
      *(v109 + 8) = v146;
      sub_1B7227500(v143, v146);
      sub_1B7227500(v143, v146);
      sub_1B7201CF8(v110, v111);
      swift_beginAccess();
      v112 = *(v108 + 24);
      v113 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();
      sub_1B7227500(v143, v146);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      *(v108 + 24) = v112;
      if ((v114 & 1) == 0)
      {
        v112 = sub_1B723EA14(0, v112[2] + 1, 1, v112);
        *(v108 + 24) = v112;
      }

      v116 = v112[2];
      v115 = v112[3];
      if (v116 >= v115 >> 1)
      {
        v112 = sub_1B723EA14((v115 > 1), v116 + 1, 1, v112);
      }

      v112[2] = v116 + 1;
      v117 = &v112[5 * v116];
      v117[4] = v113;
      v117[5] = v113;
      v117[6] = v113;
      v117[7] = v143;
      *(v117 + 64) = v146;
      *(v108 + 24) = v112;
      swift_endAccess();
      sub_1B73F1960(0, v43, v139, v134, v136);
      sub_1B7201CF8(v143, v146);
      swift_bridgeObjectRelease_n();
      sub_1B7201D10(v143, v146);
      sub_1B7201D10(v143, v146);
    }

    v25 = *(v0 + 8);
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 123) = v146;
    *(v0 + 312) = v143;
    *(v0 + 320) = v75;
    *(v0 + 122) = v73;
    *(v0 + 296) = v30;
    *(v0 + 304) = v74;
    *(v0 + 280) = v22;
    *(v0 + 288) = v43;
    v82 = *(v0 + 224);
    if (v75 >= *(v82 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    v83 = v22;
    v84 = v82 + 16 * v75;
    v85 = *(v0 + 160) + *(v0 + 208);
    v86 = *(v84 + 32);
    *(v0 + 328) = v86;
    v87 = *(v84 + 40);
    *(v0 + 124) = v87;
    v88 = *v85;
    v89 = *(v85 + 8);
    if (v89 == 255)
    {
      sub_1B7227500(v86, v87);
      sub_1B7227500(v86, v87);
      sub_1B7227500(v86, v87);
      sub_1B72274E8(v88, 255);
      sub_1B7201CF8(v88, 255);
      v100 = v86;
      v101 = v87;
      goto LABEL_65;
    }

    *(v42 + 336) = v89;
    if ((v89 & 1) == 0)
    {
      break;
    }

    sub_1B7227500(v86, v87);
    if ((v87 & 1) == 0)
    {
      sub_1B7227500(v86, 0);
      sub_1B7227500(v86, 0);
      sub_1B72274E8(v88, v89);
      sub_1B72274E8(v88, v89);
      goto LABEL_64;
    }

    v90 = 1;
    sub_1B7227500(v86, 1);
    sub_1B7227500(v86, 1);
    sub_1B72274E8(v88, v89);
    sub_1B72274E8(v88, v89);
    sub_1B7201D10(v88, 1);
    sub_1B7201D10(v86, 1);
    v23 = v88 == v86;
LABEL_43:
    sub_1B7201D10(v88, v90);
    sub_1B7201CF8(v88, v89);
    if ((v23 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_1B7201D10(v86, v87);
    sub_1B7201D10(v86, v87);
    v75 = *(v0 + 320) + 1;
    v30 = v139;
    v22 = v83;
    v73 = v136;
    v74 = v134;
    if (v75 == *(v0 + 240))
    {
      goto LABEL_33;
    }
  }

  if ((v87 & 1) == 0)
  {
    sub_1B7205540(0, &qword_1EDAFC4C0);
    sub_1B7227500(v86, 0);
    sub_1B7227500(v86, 0);
    sub_1B7227500(v86, 0);
    sub_1B72274E8(v88, v89);
    sub_1B7227500(v86, 0);
    sub_1B72274E8(v88, v89);
    sub_1B72274E8(v88, v89);
    sub_1B72274E8(v86, v87);
    sub_1B7227500(v88, 0);
    v23 = sub_1B7801558();
    sub_1B7201D10(v86, 0);
    sub_1B7201CF8(v88, v89);
    sub_1B7201D10(v88, 0);
    sub_1B7201D10(v86, 0);
    sub_1B7201CF8(v86, v87);
    v90 = *(v42 + 336);
    goto LABEL_43;
  }

  sub_1B7227500(v86, 1);
  sub_1B7227500(v86, 1);
  sub_1B7227500(v86, 1);
  sub_1B72274E8(v88, v89);
  sub_1B72274E8(v88, v89);
  sub_1B7227500(v88, 0);
LABEL_64:
  v87 = v89 ^ 1;
  sub_1B7201D10(v88, v89 & 1);
  sub_1B7201D10(v86, (v89 ^ 1) & 1);
  sub_1B7201D10(v88, v89 & 1);
  v100 = v88;
  v101 = v89;
LABEL_65:
  sub_1B7201CF8(v100, v101);
LABEL_66:
  v118 = *(v0 + 256);
  v119 = *(v0 + 160);
  v120 = *(v119 + *(v0 + 248));
  *(v0 + 128) = v86;
  v121 = *(v0 + 200);
  *(v0 + 136) = v87 & 1;
  *(v0 + 152) = v121;

  v147 = (v120 + *v120);
  v122 = swift_task_alloc();
  *(v0 + 336) = v122;
  *v122 = v0;
  v122[1] = sub_1B73EA4B8;

  return v147(v0 + 16, v0 + 128, 0x746E65736E6F43, 0xE700000000000000, v119 + v118, v0 + 152);
}

uint64_t sub_1B73EB7DC()
{
  v1 = *(v0 + 124);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 123);
  sub_1B73F1960(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 122));
  sub_1B7201CF8(v3, v4);
  sub_1B7201D10(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B73EB888()
{
  v1[20] = v0;
  v2 = sub_1B77FFA18();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73EB954, 0, 0);
}

uint64_t sub_1B73EB954()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 121) = v2;
  if ((v2 & 1) == 0)
  {
    *(v1 + 16) = 1;
    v1 = *(v0 + 160);
  }

  if (*(v1 + qword_1EDB08710))
  {
    v3 = *(v1 + qword_1EDB08710);
  }

  else
  {
    v3 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 160);
  }

  *(v0 + 200) = v3;
  v4 = *(v1 + qword_1EDB08708);
  v5 = qword_1EDB086F0;
  *(v0 + 208) = qword_1EDB086F0;
  v6 = v1 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v0 + 112) = *v6;
  *(v0 + 120) = v8;
  *(v0 + 144) = v3;
  swift_bridgeObjectRetain_n();

  sub_1B72274E8(v7, v8);
  v11 = (v4 + *v4);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_1B73EBB20;

  return v11(v0 + 112, 0xD000000000000013, 0x80000001B7872B90, v0 + 144);
}

uint64_t sub_1B73EBB20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73F1B78;
  }

  else
  {

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73EBC68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B73EBC68()
{
  v5 = *(*(v3 + 224) + 16);
  *(v3 + 240) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = qword_1EDB086F8;
    *(v3 + 248) = qword_1EDB08718;
    *(v3 + 256) = v7;
    v8 = qword_1EDB08700;
    *(v3 + 264) = qword_1EDB08748;
    *(v3 + 272) = v8;
    v9 = 65280;
    do
    {
      *(v3 + 320) = v6;
      *(v3 + 122) = -256;
      *(v3 + 280) = 0u;
      *(v3 + 296) = 0u;
      *(v3 + 312) = 0;
      v10 = *(v3 + 224);
      if (v6 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v11 = v10 + 16 * v6;
      v12 = *(v3 + 160) + *(v3 + 208);
      v0 = *(v11 + 32);
      *(v3 + 328) = v0;
      v13 = *(v11 + 40);
      *(v3 + 124) = v13;
      v2 = *v12;
      v4 = *(v12 + 8);
      if (v4 == 255)
      {
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B72274E8(v2, 255);
        sub_1B7201CF8(v2, 255);
        v20 = v0;
        v21 = v13;
        goto LABEL_32;
      }

      *(v3 + 352) = v4;
      if (v4)
      {
        sub_1B7227500(v0, v13);
        if ((v13 & 1) == 0)
        {
          sub_1B7227500(v0, 0);
          sub_1B7227500(v0, 0);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          goto LABEL_31;
        }

        v14 = 1;
        sub_1B7227500(v0, 1);
        sub_1B7227500(v0, 1);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B7201D10(v2, 1);
        sub_1B7201D10(v0, 1);
        v1 = v2 == v0;
      }

      else
      {
        if (v13)
        {
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          sub_1B7227500(v2, 0);
LABEL_31:
          v13 = v4 ^ 1;
          sub_1B7201D10(v2, v4 & 1);
          sub_1B7201D10(v0, (v4 ^ 1) & 1);
          sub_1B7201D10(v2, v4 & 1);
          v20 = v2;
          v21 = v4;
LABEL_32:
          sub_1B7201CF8(v20, v21);
LABEL_33:
          v31 = *(v3 + 256);
          v32 = *(v3 + 160);
          v33 = *(v32 + *(v3 + 248));
          *(v3 + 128) = v0;
          v34 = *(v3 + 200);
          *(v3 + 136) = v13 & 1;
          *(v3 + 152) = v34;

          v36 = (v33 + *v33);
          v35 = swift_task_alloc();
          *(v3 + 336) = v35;
          *v35 = v3;
          v35[1] = sub_1B73EC400;

          v36(v3 + 16, v3 + 128, 0xD000000000000013, 0x80000001B7872B90, v32 + v31, v3 + 152);
          return;
        }

        sub_1B7205540(0, &qword_1EDAFC4C0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v0, v13);
        sub_1B7227500(v2, 0);
        v1 = sub_1B7801558();
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v2, v4);
        sub_1B7201D10(v2, 0);
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v0, v13);
        v14 = *(v3 + 352);
      }

      sub_1B7201D10(v2, v14);
      sub_1B7201CF8(v2, v4);
      if ((v1 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1B7201D10(v0, v13);
      sub_1B7201D10(v0, v13);
      v6 = *(v3 + 320) + 1;
    }

    while (v6 != *(v3 + 240));
  }

  if (*(v3 + 121) == 1)
  {
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
  }

  else
  {
    v15 = sub_1B7800098();
    v16 = sub_1B78011F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7198000, v15, v16, "Initial fetch, sending empty updates", v17, 2u);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }

    v18 = *(v3 + 160);
    if (*(v3 + 240) || (v22 = v18 + *(v3 + 208), v4 = *(v22 + 8), v4 == 255))
    {
      v19 = [*(*(v18 + qword_1EDB08748) + 16) newBackgroundContext];
      v1 = NSManagedObjectContext.currentLocalHistoryToken.getter();

      if (!v1)
      {
        __break(1u);
        return;
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v1 = *v22;
      sub_1B7227500(*v22, v4 & 1);
    }

    v23 = *(v3 + 208);
    v9 = *(v3 + 160);

    v24 = v9 + v23;
    v25 = *(v9 + v23);
    *v24 = v1;
    LOBYTE(v23) = *(v9 + v23 + 8);
    *(v24 + 8) = v4 & 1;
    sub_1B7227500(v1, v4 & 1);
    sub_1B7227500(v1, v4 & 1);
    sub_1B7201CF8(v25, v23);
    swift_beginAccess();
    v2 = *(v9 + 24);
    v0 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    sub_1B7227500(v1, v4 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 24) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v2 = sub_1B723EA60(0, v2[2] + 1, 1, v2);
      *(v9 + 24) = v2;
    }

    v28 = v2[2];
    v27 = v2[3];
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1B723EA60((v27 > 1), v28 + 1, 1, v2);
    }

    v2[2] = v28 + 1;
    v29 = &v2[5 * v28];
    v29[4] = v0;
    v29[5] = v0;
    v29[6] = v0;
    v29[7] = v1;
    *(v29 + 64) = v4 & 1;
    *(v9 + 24) = v2;
    swift_endAccess();
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v1, v4 & 1);
    sub_1B7201D10(v1, v4 & 1);
  }

  v30 = *(v3 + 8);

  v30();
}

uint64_t sub_1B73EC400()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 124);
    v4 = *(v2 + 328);

    sub_1B7201D10(v4, v3);

    v5 = sub_1B73F1B00;
  }

  else
  {

    v5 = sub_1B73EC56C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73EC56C()
{
  v146 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 344);
  v3 = *(v0 + 124);
  v4 = *(v0 + 328);
  v5 = *(v0 + 264);
  v6 = *(v0 + 160);
  v7 = v6 + *(v0 + 208);
  v8 = *(v0 + 24);
  v134 = *(v0 + 32);
  v9 = *v7;
  *v7 = v4;
  v10 = *(v7 + 8);
  *(v7 + 8) = v3;
  sub_1B7201CF8(v9, v10);
  v11 = *(*(v6 + v5) + 16);
  sub_1B7227500(v4, v3);
  v12 = [v11 persistentStoreCoordinator];
  sub_1B73EF608(v1, v12, type metadata accessor for ManagedInternalTransaction, &qword_1EB993118, &unk_1B784CEB0, sub_1B73F1A30);
  v132 = v12;
  if (v2)
  {
    v14 = *(v0 + 124);
    v15 = *(v0 + 328);
    v16 = *(v0 + 304);
    v128 = *(v0 + 312);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    v20 = *(v0 + 122);
    v21 = *(v0 + 123);
    sub_1B7201D10(v15, v14);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v15, v14);
    sub_1B73F1960(v19, v17, v18, v16, v20);
    sub_1B7201CF8(v128, v21);

    v25 = *(v0 + 8);
LABEL_4:

    return v25();
  }

  v22 = v13;
  v23 = *(v0 + 160);
  sub_1B73EF608(v8, v12, type metadata accessor for ManagedInternalTransaction, &qword_1EB993118, &unk_1B784CEB0, sub_1B73F1A30);
  v126 = v22;
  v127 = v24;
  v27 = *(v134 + 16);
  if (v27)
  {
    v28 = *(v0 + 176);
    v23 = v134 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v29 = *(v28 + 72);
    v137 = *(v28 + 16);
    v140 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);
      v33 = v30;
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v137(v31, v23, v35);
      v36 = *(v34 + 32);
      v37 = v35;
      v30 = v33;
      v36(v32, v31, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B723E954(0, v33[2] + 1, 1, v33);
      }

      v39 = v30[2];
      v38 = v30[3];
      if (v39 >= v38 >> 1)
      {
        v30 = sub_1B723E954(v38 > 1, v39 + 1, 1, v30);
      }

      v40 = *(v0 + 184);
      v41 = *(v0 + 168);
      v30[2] = v39 + 1;
      v36(v30 + v140 + v39 * v29, v40, v41);
      v23 += v29;
      --v27;
    }

    while (v27);

    v22 = v126;
    v12 = v132;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v42 = v127;
  if (v22[2] || *(v127 + 16) || v30[2])
  {
    v43 = *(v0 + 280);
    if (v43)
    {
      v44 = *(v0 + 296);
      if (*(v0 + 123) == 255)
      {
        v142 = *(v0 + 304);
        v52 = *(v0 + 122);
        v53 = *(v0 + 288);

        sub_1B73F1960(v43, v53, v44, v142, v52);
      }

      else
      {
        v138 = *(v0 + 123);
        v141 = *(v0 + 288);
        sub_1B73F19C8(v43, v141, v44, *(v0 + 304), *(v0 + 122));
        v45 = sub_1B7800098();
        v46 = sub_1B78011F8();
        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v0 + 280);
        v49 = *(v0 + 288);
        v135 = v30;
        if (v47)
        {
          v122 = *(v0 + 296);
          v129 = *(v0 + 122);
          v124 = *(v0 + 304);
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v145[0] = v51;
          *v50 = 136315906;
          *(v50 + 4) = sub_1B71A3EF8(0xD000000000000013, 0x80000001B7872B90, v145);
          *(v50 + 12) = 2048;
          *(v50 + 14) = v43[2];
          *(v50 + 22) = 2048;
          *(v50 + 24) = *(v141 + 16);
          *(v50 + 32) = 2048;
          *(v50 + 34) = *(v44 + 16);
          sub_1B73F1960(v48, v49, v122, v124, v129);
          _os_log_impl(&dword_1B7198000, v45, v46, "Adding relevant pending updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v50, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1B8CA7A40](v51, -1, -1);
          MEMORY[0x1B8CA7A40](v50, -1, -1);
        }

        else
        {
          sub_1B73F1960(v48, v49, *(v0 + 296), *(v0 + 304), *(v0 + 122));
        }

        v54 = *(v0 + 312);
        v55 = *(v0 + 160);
        v56 = v55 + *(v0 + 208);
        v57 = *(v0 + 123);
        v58 = *v56;
        *v56 = v54;
        v59 = *(v56 + 8);
        *(v56 + 8) = v57 & 1;
        sub_1B72274E8(v54, v57);
        sub_1B72274E8(v54, v57);

        sub_1B7201CF8(v58, v59);
        swift_beginAccess();
        v23 = *(v55 + 24);

        sub_1B7227500(v54, v138 & 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v55 + 24) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v120 = *(v0 + 160);
          v23 = sub_1B723EA60(0, *(v23 + 16) + 1, 1, v23);
          *(v120 + 24) = v23;
        }

        v62 = *(v23 + 16);
        v61 = *(v23 + 24);
        if (v62 >= v61 >> 1)
        {
          v23 = sub_1B723EA60((v61 > 1), v62 + 1, 1, v23);
        }

        v63 = *(v0 + 312);
        v130 = *(v0 + 304);
        v123 = *(v0 + 288);
        v125 = *(v0 + 296);
        v64 = *(v0 + 280);
        v65 = *(v0 + 160);
        v66 = *(v0 + 123);
        v121 = *(v0 + 122);
        *(v23 + 16) = v62 + 1;
        v67 = v23 + 40 * v62;
        *(v67 + 32) = v43;
        *(v67 + 40) = v141;
        *(v67 + 48) = v44;
        *(v67 + 56) = v63;
        *(v67 + 64) = v138 & 1;
        *(v65 + 24) = v23;
        swift_endAccess();
        sub_1B7201CF8(v63, v66);

        sub_1B7201D10(v63, v138 & 1);
        sub_1B73F1960(v64, v123, v125, v130, v121);

        v22 = v126;
        v42 = v127;
        v30 = v135;
      }
    }

    else
    {
      sub_1B7201CF8(*(v0 + 312), *(v0 + 123));
    }

    v68 = *(v0 + 124);
    v69 = *(v0 + 328);
    v139 = v69;
    v143 = v68;
  }

  else
  {
    v23 = *(v0 + 312);
    v118 = *(v0 + 123);
    sub_1B7201D10(*(v0 + 328), *(v0 + 124));
    sub_1B7201CF8(v23, v118);

    v143 = *(v0 + 124);
    v139 = *(v0 + 328);
    v68 = *(v0 + 122);
    v30 = *(v0 + 296);
    v69 = *(v0 + 304);
    v22 = *(v0 + 280);
    v42 = *(v0 + 288);
  }

  v70 = *(v0 + 320) + 1;
  v136 = v30;
  v133 = v68;
  v131 = v69;
  if (v70 == *(v0 + 240))
  {
LABEL_33:

    if (v22)
    {

      sub_1B73F19C8(v22, v42, v30, v69, v68);
      v71 = sub_1B7800098();
      v72 = sub_1B78011F8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v69;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v145[0] = v75;
        *v74 = 136315906;
        *(v74 + 4) = sub_1B71A3EF8(0xD000000000000013, 0x80000001B7872B90, v145);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v22[2];
        *(v74 + 22) = 2048;
        *(v74 + 24) = *(v42 + 16);
        *(v74 + 32) = 2048;
        *(v74 + 34) = *(v136 + 16);
        sub_1B73F1960(v22, v42, v136, v73, v68);
        _os_log_impl(&dword_1B7198000, v71, v72, "Adding final updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v74, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v75);
        v76 = v75;
        v30 = v136;
        MEMORY[0x1B8CA7A40](v76, -1, -1);
        MEMORY[0x1B8CA7A40](v74, -1, -1);
      }

      else
      {
        sub_1B73F1960(v22, v42, v30, v69, v68);
      }

      v86 = *(v0 + 160);
      v87 = v86 + *(v0 + 208);
      v88 = *v87;
      *v87 = v139;
      v89 = *(v87 + 8);
      *(v87 + 8) = v143;
      sub_1B72274E8(v139, v143);
      sub_1B72274E8(v139, v143);

      sub_1B7201CF8(v88, v89);
      swift_beginAccess();
      v23 = *(v86 + 24);

      sub_1B7227500(v139, v143);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *(v86 + 24) = v23;
      if ((v90 & 1) == 0)
      {
LABEL_71:
        v119 = *(v0 + 160);
        v23 = sub_1B723EA60(0, *(v23 + 16) + 1, 1, v23);
        *(v119 + 24) = v23;
      }

      v92 = *(v23 + 16);
      v91 = *(v23 + 24);
      if (v92 >= v91 >> 1)
      {
        v23 = sub_1B723EA60((v91 > 1), v92 + 1, 1, v23);
      }

      v93 = *(v0 + 160);
      *(v23 + 16) = v92 + 1;
      v94 = v23 + 40 * v92;
      *(v94 + 32) = v22;
      *(v94 + 40) = v42;
      *(v94 + 48) = v30;
      *(v94 + 56) = v139;
      *(v94 + 64) = v143;
      *(v93 + 24) = v23;
      swift_endAccess();
      sub_1B7201CF8(v139, v143);

      sub_1B7201D10(v139, v143);
      sub_1B73F1960(v22, v42, v30, v131, v133);
    }

    else if (*(v0 + 121) == 1)
    {
      sub_1B73F1960(0, v42, v30, v69, v68);
      sub_1B7201CF8(v139, v143);
    }

    else
    {
      v97 = sub_1B7800098();
      v98 = sub_1B78011F8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v42;
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_1B7198000, v97, v98, "Initial fetch, sending empty updates", v100, 2u);
        v101 = v100;
        v42 = v99;
        MEMORY[0x1B8CA7A40](v101, -1, -1);
      }

      sub_1B7227500(v139, v143);
      v102 = *(v0 + 208);
      v103 = *(v0 + 160);

      v104 = v103 + v102;
      v105 = *(v103 + v102);
      *v104 = v139;
      v106 = *(v103 + v102 + 8);
      *(v104 + 8) = v143;
      sub_1B7227500(v139, v143);
      sub_1B7227500(v139, v143);
      sub_1B7201CF8(v105, v106);
      swift_beginAccess();
      v107 = *(v103 + 24);
      v108 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();
      sub_1B7227500(v139, v143);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      *(v103 + 24) = v107;
      if ((v109 & 1) == 0)
      {
        v107 = sub_1B723EA60(0, v107[2] + 1, 1, v107);
        *(v103 + 24) = v107;
      }

      v111 = v107[2];
      v110 = v107[3];
      if (v111 >= v110 >> 1)
      {
        v107 = sub_1B723EA60((v110 > 1), v111 + 1, 1, v107);
      }

      v107[2] = v111 + 1;
      v112 = &v107[5 * v111];
      v112[4] = v108;
      v112[5] = v108;
      v112[6] = v108;
      v112[7] = v139;
      *(v112 + 64) = v143;
      *(v103 + 24) = v107;
      swift_endAccess();
      sub_1B73F1960(0, v42, v136, v131, v133);
      sub_1B7201CF8(v139, v143);
      swift_bridgeObjectRelease_n();
      sub_1B7201D10(v139, v143);
      sub_1B7201D10(v139, v143);
    }

    v25 = *(v0 + 8);
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 123) = v143;
    *(v0 + 312) = v139;
    *(v0 + 320) = v70;
    *(v0 + 122) = v68;
    *(v0 + 296) = v30;
    *(v0 + 304) = v69;
    *(v0 + 280) = v22;
    *(v0 + 288) = v42;
    v77 = *(v0 + 224);
    if (v70 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    v78 = v22;
    v79 = v77 + 16 * v70;
    v80 = *(v0 + 160) + *(v0 + 208);
    v81 = *(v79 + 32);
    *(v0 + 328) = v81;
    v82 = *(v79 + 40);
    *(v0 + 124) = v82;
    v83 = *v80;
    v84 = *(v80 + 8);
    if (v84 == 255)
    {
      sub_1B7227500(v81, v82);
      sub_1B7227500(v81, v82);
      sub_1B7227500(v81, v82);
      sub_1B72274E8(v83, 255);
      sub_1B7201CF8(v83, 255);
      v95 = v81;
      v96 = v82;
      goto LABEL_65;
    }

    *(v0 + 352) = v84;
    if ((v84 & 1) == 0)
    {
      break;
    }

    sub_1B7227500(v81, v82);
    if ((v82 & 1) == 0)
    {
      sub_1B7227500(v81, 0);
      sub_1B7227500(v81, 0);
      sub_1B72274E8(v83, v84);
      sub_1B72274E8(v83, v84);
      goto LABEL_64;
    }

    v85 = 1;
    sub_1B7227500(v81, 1);
    sub_1B7227500(v81, 1);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v83, v84);
    sub_1B7201D10(v83, 1);
    sub_1B7201D10(v81, 1);
    v23 = v83 == v81;
LABEL_43:
    sub_1B7201D10(v83, v85);
    sub_1B7201CF8(v83, v84);
    if ((v23 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_1B7201D10(v81, v82);
    sub_1B7201D10(v81, v82);
    v70 = *(v0 + 320) + 1;
    v30 = v136;
    v22 = v78;
    v68 = v133;
    v69 = v131;
    if (v70 == *(v0 + 240))
    {
      goto LABEL_33;
    }
  }

  if ((v82 & 1) == 0)
  {
    sub_1B7205540(0, &qword_1EDAFC4C0);
    sub_1B7227500(v81, 0);
    sub_1B7227500(v81, 0);
    sub_1B7227500(v81, 0);
    sub_1B72274E8(v83, v84);
    sub_1B7227500(v81, 0);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v81, v82);
    sub_1B7227500(v83, 0);
    v23 = sub_1B7801558();
    sub_1B7201D10(v81, 0);
    sub_1B7201CF8(v83, v84);
    sub_1B7201D10(v83, 0);
    sub_1B7201D10(v81, 0);
    sub_1B7201CF8(v81, v82);
    v85 = *(v0 + 352);
    goto LABEL_43;
  }

  sub_1B7227500(v81, 1);
  sub_1B7227500(v81, 1);
  sub_1B7227500(v81, 1);
  sub_1B72274E8(v83, v84);
  sub_1B72274E8(v83, v84);
  sub_1B7227500(v83, 0);
LABEL_64:
  v82 = v84 ^ 1;
  sub_1B7201D10(v83, v84 & 1);
  sub_1B7201D10(v81, (v84 ^ 1) & 1);
  sub_1B7201D10(v83, v84 & 1);
  v95 = v83;
  v96 = v84;
LABEL_65:
  sub_1B7201CF8(v95, v96);
LABEL_66:
  v113 = *(v0 + 256);
  v114 = *(v0 + 160);
  v115 = *(v114 + *(v0 + 248));
  *(v0 + 128) = v81;
  v116 = *(v0 + 200);
  *(v0 + 136) = v82 & 1;
  *(v0 + 152) = v116;

  v144 = (v115 + *v115);
  v117 = swift_task_alloc();
  *(v0 + 336) = v117;
  *v117 = v0;
  v117[1] = sub_1B73EC400;

  return v144(v0 + 16, v0 + 128, 0xD000000000000013, 0x80000001B7872B90, v114 + v113, v0 + 152);
}

uint64_t sub_1B73ED748()
{
  v1[20] = v0;
  v2 = sub_1B77FFA18();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73ED814, 0, 0);
}

uint64_t sub_1B73ED814()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 121) = v2;
  if ((v2 & 1) == 0)
  {
    *(v1 + 16) = 1;
    v1 = *(v0 + 160);
  }

  if (*(v1 + qword_1EDB08710))
  {
    v3 = *(v1 + qword_1EDB08710);
  }

  else
  {
    v3 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 160);
  }

  *(v0 + 200) = v3;
  v4 = *(v1 + qword_1EDB08708);
  v5 = qword_1EDB086F0;
  *(v0 + 208) = qword_1EDB086F0;
  v6 = v1 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v0 + 112) = *v6;
  *(v0 + 120) = v8;
  *(v0 + 144) = v3;
  swift_bridgeObjectRetain_n();

  sub_1B72274E8(v7, v8);
  v11 = (v4 + *v4);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_1B73ED9E0;

  return v11(v0 + 112, 0xD000000000000016, 0x80000001B7872B70, v0 + 144);
}

uint64_t sub_1B73ED9E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73F1B78;
  }

  else
  {

    sub_1B7201CF8(*(v3 + 112), *(v3 + 120));
    v4 = sub_1B73EDB28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B73EDB28()
{
  v5 = *(*(v3 + 224) + 16);
  *(v3 + 240) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = qword_1EDB086F8;
    *(v3 + 248) = qword_1EDB08718;
    *(v3 + 256) = v7;
    v8 = qword_1EDB08700;
    *(v3 + 264) = qword_1EDB08748;
    *(v3 + 272) = v8;
    v9 = 65280;
    do
    {
      *(v3 + 320) = v6;
      *(v3 + 122) = -256;
      *(v3 + 280) = 0u;
      *(v3 + 296) = 0u;
      *(v3 + 312) = 0;
      v10 = *(v3 + 224);
      if (v6 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v11 = v10 + 16 * v6;
      v12 = *(v3 + 160) + *(v3 + 208);
      v0 = *(v11 + 32);
      *(v3 + 328) = v0;
      v13 = *(v11 + 40);
      *(v3 + 124) = v13;
      v2 = *v12;
      v4 = *(v12 + 8);
      if (v4 == 255)
      {
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B7227500(v0, v13);
        sub_1B72274E8(v2, 255);
        sub_1B7201CF8(v2, 255);
        v20 = v0;
        v21 = v13;
        goto LABEL_32;
      }

      *(v3 + 352) = v4;
      if (v4)
      {
        sub_1B7227500(v0, v13);
        if ((v13 & 1) == 0)
        {
          sub_1B7227500(v0, 0);
          sub_1B7227500(v0, 0);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          goto LABEL_31;
        }

        v14 = 1;
        sub_1B7227500(v0, 1);
        sub_1B7227500(v0, 1);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B7201D10(v2, 1);
        sub_1B7201D10(v0, 1);
        v1 = v2 == v0;
      }

      else
      {
        if (v13)
        {
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B7227500(v0, 1);
          sub_1B72274E8(v2, v4);
          sub_1B72274E8(v2, v4);
          sub_1B7227500(v2, 0);
LABEL_31:
          v13 = v4 ^ 1;
          sub_1B7201D10(v2, v4 & 1);
          sub_1B7201D10(v0, (v4 ^ 1) & 1);
          sub_1B7201D10(v2, v4 & 1);
          v20 = v2;
          v21 = v4;
LABEL_32:
          sub_1B7201CF8(v20, v21);
LABEL_33:
          v31 = *(v3 + 256);
          v32 = *(v3 + 160);
          v33 = *(v32 + *(v3 + 248));
          *(v3 + 128) = v0;
          v34 = *(v3 + 200);
          *(v3 + 136) = v13 & 1;
          *(v3 + 152) = v34;

          v36 = (v33 + *v33);
          v35 = swift_task_alloc();
          *(v3 + 336) = v35;
          *v35 = v3;
          v35[1] = sub_1B73EE2C0;

          v36(v3 + 16, v3 + 128, 0xD000000000000016, 0x80000001B7872B70, v32 + v31, v3 + 152);
          return;
        }

        sub_1B7205540(0, &qword_1EDAFC4C0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B7227500(v0, 0);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v2, v4);
        sub_1B72274E8(v0, v13);
        sub_1B7227500(v2, 0);
        v1 = sub_1B7801558();
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v2, v4);
        sub_1B7201D10(v2, 0);
        sub_1B7201D10(v0, 0);
        sub_1B7201CF8(v0, v13);
        v14 = *(v3 + 352);
      }

      sub_1B7201D10(v2, v14);
      sub_1B7201CF8(v2, v4);
      if ((v1 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1B7201D10(v0, v13);
      sub_1B7201D10(v0, v13);
      v6 = *(v3 + 320) + 1;
    }

    while (v6 != *(v3 + 240));
  }

  if (*(v3 + 121) == 1)
  {
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
  }

  else
  {
    v15 = sub_1B7800098();
    v16 = sub_1B78011F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7198000, v15, v16, "Initial fetch, sending empty updates", v17, 2u);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }

    v18 = *(v3 + 160);
    if (*(v3 + 240) || (v22 = v18 + *(v3 + 208), v4 = *(v22 + 8), v4 == 255))
    {
      v19 = [*(*(v18 + qword_1EDB08748) + 16) newBackgroundContext];
      v1 = NSManagedObjectContext.currentLocalHistoryToken.getter();

      if (!v1)
      {
        __break(1u);
        return;
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v1 = *v22;
      sub_1B7227500(*v22, v4 & 1);
    }

    v23 = *(v3 + 208);
    v9 = *(v3 + 160);

    v24 = v9 + v23;
    v25 = *(v9 + v23);
    *v24 = v1;
    LOBYTE(v23) = *(v9 + v23 + 8);
    *(v24 + 8) = v4 & 1;
    sub_1B7227500(v1, v4 & 1);
    sub_1B7227500(v1, v4 & 1);
    sub_1B7201CF8(v25, v23);
    swift_beginAccess();
    v2 = *(v9 + 24);
    v0 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    sub_1B7227500(v1, v4 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 24) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v2 = sub_1B723EAAC(0, v2[2] + 1, 1, v2);
      *(v9 + 24) = v2;
    }

    v28 = v2[2];
    v27 = v2[3];
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1B723EAAC((v27 > 1), v28 + 1, 1, v2);
    }

    v2[2] = v28 + 1;
    v29 = &v2[5 * v28];
    v29[4] = v0;
    v29[5] = v0;
    v29[6] = v0;
    v29[7] = v1;
    *(v29 + 64) = v4 & 1;
    *(v9 + 24) = v2;
    swift_endAccess();
    sub_1B73F1960(0, 0, 0, 0, 0);
    sub_1B7201CF8(0, 255);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v1, v4 & 1);
    sub_1B7201D10(v1, v4 & 1);
  }

  v30 = *(v3 + 8);

  v30();
}

uint64_t sub_1B73EE2C0()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 124);
    v4 = *(v2 + 328);

    sub_1B7201D10(v4, v3);

    v5 = sub_1B73F1B00;
  }

  else
  {

    v5 = sub_1B73EE42C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B73EE42C()
{
  v146 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 344);
  v3 = *(v0 + 124);
  v4 = *(v0 + 328);
  v5 = *(v0 + 264);
  v6 = *(v0 + 160);
  v7 = v6 + *(v0 + 208);
  v8 = *(v0 + 24);
  v134 = *(v0 + 32);
  v9 = *v7;
  *v7 = v4;
  v10 = *(v7 + 8);
  *(v7 + 8) = v3;
  sub_1B7201CF8(v9, v10);
  v11 = *(*(v6 + v5) + 16);
  sub_1B7227500(v4, v3);
  v12 = [v11 persistentStoreCoordinator];
  sub_1B73EF608(v1, v12, type metadata accessor for ManagedInternalAccountBalance, &qword_1EB993A68, &unk_1B7824C70, sub_1B73F18DC);
  v132 = v12;
  if (v2)
  {
    v14 = *(v0 + 124);
    v15 = *(v0 + 328);
    v16 = *(v0 + 304);
    v128 = *(v0 + 312);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    v20 = *(v0 + 122);
    v21 = *(v0 + 123);
    sub_1B7201D10(v15, v14);
    swift_bridgeObjectRelease_n();
    sub_1B7201D10(v15, v14);
    sub_1B73F1960(v19, v17, v18, v16, v20);
    sub_1B7201CF8(v128, v21);

    v25 = *(v0 + 8);
LABEL_4:

    return v25();
  }

  v22 = v13;
  v23 = *(v0 + 160);
  sub_1B73EF608(v8, v12, type metadata accessor for ManagedInternalAccountBalance, &qword_1EB993A68, &unk_1B7824C70, sub_1B73F18DC);
  v126 = v22;
  v127 = v24;
  v27 = *(v134 + 16);
  if (v27)
  {
    v28 = *(v0 + 176);
    v23 = v134 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v29 = *(v28 + 72);
    v137 = *(v28 + 16);
    v140 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);
      v33 = v30;
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v137(v31, v23, v35);
      v36 = *(v34 + 32);
      v37 = v35;
      v30 = v33;
      v36(v32, v31, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B723E954(0, v33[2] + 1, 1, v33);
      }

      v39 = v30[2];
      v38 = v30[3];
      if (v39 >= v38 >> 1)
      {
        v30 = sub_1B723E954(v38 > 1, v39 + 1, 1, v30);
      }

      v40 = *(v0 + 184);
      v41 = *(v0 + 168);
      v30[2] = v39 + 1;
      v36(v30 + v140 + v39 * v29, v40, v41);
      v23 += v29;
      --v27;
    }

    while (v27);

    v22 = v126;
    v12 = v132;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v42 = v127;
  if (v22[2] || *(v127 + 16) || v30[2])
  {
    v43 = *(v0 + 280);
    if (v43)
    {
      v44 = *(v0 + 296);
      if (*(v0 + 123) == 255)
      {
        v142 = *(v0 + 304);
        v52 = *(v0 + 122);
        v53 = *(v0 + 288);

        sub_1B73F1960(v43, v53, v44, v142, v52);
      }

      else
      {
        v138 = *(v0 + 123);
        v141 = *(v0 + 288);
        sub_1B73F19C8(v43, v141, v44, *(v0 + 304), *(v0 + 122));
        v45 = sub_1B7800098();
        v46 = sub_1B78011F8();
        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v0 + 280);
        v49 = *(v0 + 288);
        v135 = v30;
        if (v47)
        {
          v122 = *(v0 + 296);
          v129 = *(v0 + 122);
          v124 = *(v0 + 304);
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v145[0] = v51;
          *v50 = 136315906;
          *(v50 + 4) = sub_1B71A3EF8(0xD000000000000016, 0x80000001B7872B70, v145);
          *(v50 + 12) = 2048;
          *(v50 + 14) = v43[2];
          *(v50 + 22) = 2048;
          *(v50 + 24) = *(v141 + 16);
          *(v50 + 32) = 2048;
          *(v50 + 34) = *(v44 + 16);
          sub_1B73F1960(v48, v49, v122, v124, v129);
          _os_log_impl(&dword_1B7198000, v45, v46, "Adding relevant pending updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v50, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1B8CA7A40](v51, -1, -1);
          MEMORY[0x1B8CA7A40](v50, -1, -1);
        }

        else
        {
          sub_1B73F1960(v48, v49, *(v0 + 296), *(v0 + 304), *(v0 + 122));
        }

        v54 = *(v0 + 312);
        v55 = *(v0 + 160);
        v56 = v55 + *(v0 + 208);
        v57 = *(v0 + 123);
        v58 = *v56;
        *v56 = v54;
        v59 = *(v56 + 8);
        *(v56 + 8) = v57 & 1;
        sub_1B72274E8(v54, v57);
        sub_1B72274E8(v54, v57);

        sub_1B7201CF8(v58, v59);
        swift_beginAccess();
        v23 = *(v55 + 24);

        sub_1B7227500(v54, v138 & 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v55 + 24) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v120 = *(v0 + 160);
          v23 = sub_1B723EAAC(0, *(v23 + 16) + 1, 1, v23);
          *(v120 + 24) = v23;
        }

        v62 = *(v23 + 16);
        v61 = *(v23 + 24);
        if (v62 >= v61 >> 1)
        {
          v23 = sub_1B723EAAC((v61 > 1), v62 + 1, 1, v23);
        }

        v63 = *(v0 + 312);
        v130 = *(v0 + 304);
        v123 = *(v0 + 288);
        v125 = *(v0 + 296);
        v64 = *(v0 + 280);
        v65 = *(v0 + 160);
        v66 = *(v0 + 123);
        v121 = *(v0 + 122);
        *(v23 + 16) = v62 + 1;
        v67 = v23 + 40 * v62;
        *(v67 + 32) = v43;
        *(v67 + 40) = v141;
        *(v67 + 48) = v44;
        *(v67 + 56) = v63;
        *(v67 + 64) = v138 & 1;
        *(v65 + 24) = v23;
        swift_endAccess();
        sub_1B7201CF8(v63, v66);

        sub_1B7201D10(v63, v138 & 1);
        sub_1B73F1960(v64, v123, v125, v130, v121);

        v22 = v126;
        v42 = v127;
        v30 = v135;
      }
    }

    else
    {
      sub_1B7201CF8(*(v0 + 312), *(v0 + 123));
    }

    v68 = *(v0 + 124);
    v69 = *(v0 + 328);
    v139 = v69;
    v143 = v68;
  }

  else
  {
    v23 = *(v0 + 312);
    v118 = *(v0 + 123);
    sub_1B7201D10(*(v0 + 328), *(v0 + 124));
    sub_1B7201CF8(v23, v118);

    v143 = *(v0 + 124);
    v139 = *(v0 + 328);
    v68 = *(v0 + 122);
    v30 = *(v0 + 296);
    v69 = *(v0 + 304);
    v22 = *(v0 + 280);
    v42 = *(v0 + 288);
  }

  v70 = *(v0 + 320) + 1;
  v136 = v30;
  v133 = v68;
  v131 = v69;
  if (v70 == *(v0 + 240))
  {
LABEL_33:

    if (v22)
    {

      sub_1B73F19C8(v22, v42, v30, v69, v68);
      v71 = sub_1B7800098();
      v72 = sub_1B78011F8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v69;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v145[0] = v75;
        *v74 = 136315906;
        *(v74 + 4) = sub_1B71A3EF8(0xD000000000000016, 0x80000001B7872B70, v145);
        *(v74 + 12) = 2048;
        *(v74 + 14) = v22[2];
        *(v74 + 22) = 2048;
        *(v74 + 24) = *(v42 + 16);
        *(v74 + 32) = 2048;
        *(v74 + 34) = *(v136 + 16);
        sub_1B73F1960(v22, v42, v136, v73, v68);
        _os_log_impl(&dword_1B7198000, v71, v72, "Adding final updates to change history for entity %s, inserted: %ld, updated: %ld, deleted: %ld", v74, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v75);
        v76 = v75;
        v30 = v136;
        MEMORY[0x1B8CA7A40](v76, -1, -1);
        MEMORY[0x1B8CA7A40](v74, -1, -1);
      }

      else
      {
        sub_1B73F1960(v22, v42, v30, v69, v68);
      }

      v86 = *(v0 + 160);
      v87 = v86 + *(v0 + 208);
      v88 = *v87;
      *v87 = v139;
      v89 = *(v87 + 8);
      *(v87 + 8) = v143;
      sub_1B72274E8(v139, v143);
      sub_1B72274E8(v139, v143);

      sub_1B7201CF8(v88, v89);
      swift_beginAccess();
      v23 = *(v86 + 24);

      sub_1B7227500(v139, v143);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *(v86 + 24) = v23;
      if ((v90 & 1) == 0)
      {
LABEL_71:
        v119 = *(v0 + 160);
        v23 = sub_1B723EAAC(0, *(v23 + 16) + 1, 1, v23);
        *(v119 + 24) = v23;
      }

      v92 = *(v23 + 16);
      v91 = *(v23 + 24);
      if (v92 >= v91 >> 1)
      {
        v23 = sub_1B723EAAC((v91 > 1), v92 + 1, 1, v23);
      }

      v93 = *(v0 + 160);
      *(v23 + 16) = v92 + 1;
      v94 = v23 + 40 * v92;
      *(v94 + 32) = v22;
      *(v94 + 40) = v42;
      *(v94 + 48) = v30;
      *(v94 + 56) = v139;
      *(v94 + 64) = v143;
      *(v93 + 24) = v23;
      swift_endAccess();
      sub_1B7201CF8(v139, v143);

      sub_1B7201D10(v139, v143);
      sub_1B73F1960(v22, v42, v30, v131, v133);
    }

    else if (*(v0 + 121) == 1)
    {
      sub_1B73F1960(0, v42, v30, v69, v68);
      sub_1B7201CF8(v139, v143);
    }

    else
    {
      v97 = sub_1B7800098();
      v98 = sub_1B78011F8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v42;
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_1B7198000, v97, v98, "Initial fetch, sending empty updates", v100, 2u);
        v101 = v100;
        v42 = v99;
        MEMORY[0x1B8CA7A40](v101, -1, -1);
      }

      sub_1B7227500(v139, v143);
      v102 = *(v0 + 208);
      v103 = *(v0 + 160);

      v104 = v103 + v102;
      v105 = *(v103 + v102);
      *v104 = v139;
      v106 = *(v103 + v102 + 8);
      *(v104 + 8) = v143;
      sub_1B7227500(v139, v143);
      sub_1B7227500(v139, v143);
      sub_1B7201CF8(v105, v106);
      swift_beginAccess();
      v107 = *(v103 + 24);
      v108 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();
      sub_1B7227500(v139, v143);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      *(v103 + 24) = v107;
      if ((v109 & 1) == 0)
      {
        v107 = sub_1B723EAAC(0, v107[2] + 1, 1, v107);
        *(v103 + 24) = v107;
      }

      v111 = v107[2];
      v110 = v107[3];
      if (v111 >= v110 >> 1)
      {
        v107 = sub_1B723EAAC((v110 > 1), v111 + 1, 1, v107);
      }

      v107[2] = v111 + 1;
      v112 = &v107[5 * v111];
      v112[4] = v108;
      v112[5] = v108;
      v112[6] = v108;
      v112[7] = v139;
      *(v112 + 64) = v143;
      *(v103 + 24) = v107;
      swift_endAccess();
      sub_1B73F1960(0, v42, v136, v131, v133);
      sub_1B7201CF8(v139, v143);
      swift_bridgeObjectRelease_n();
      sub_1B7201D10(v139, v143);
      sub_1B7201D10(v139, v143);
    }

    v25 = *(v0 + 8);
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 123) = v143;
    *(v0 + 312) = v139;
    *(v0 + 320) = v70;
    *(v0 + 122) = v68;
    *(v0 + 296) = v30;
    *(v0 + 304) = v69;
    *(v0 + 280) = v22;
    *(v0 + 288) = v42;
    v77 = *(v0 + 224);
    if (v70 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    v78 = v22;
    v79 = v77 + 16 * v70;
    v80 = *(v0 + 160) + *(v0 + 208);
    v81 = *(v79 + 32);
    *(v0 + 328) = v81;
    v82 = *(v79 + 40);
    *(v0 + 124) = v82;
    v83 = *v80;
    v84 = *(v80 + 8);
    if (v84 == 255)
    {
      sub_1B7227500(v81, v82);
      sub_1B7227500(v81, v82);
      sub_1B7227500(v81, v82);
      sub_1B72274E8(v83, 255);
      sub_1B7201CF8(v83, 255);
      v95 = v81;
      v96 = v82;
      goto LABEL_65;
    }

    *(v0 + 352) = v84;
    if ((v84 & 1) == 0)
    {
      break;
    }

    sub_1B7227500(v81, v82);
    if ((v82 & 1) == 0)
    {
      sub_1B7227500(v81, 0);
      sub_1B7227500(v81, 0);
      sub_1B72274E8(v83, v84);
      sub_1B72274E8(v83, v84);
      goto LABEL_64;
    }

    v85 = 1;
    sub_1B7227500(v81, 1);
    sub_1B7227500(v81, 1);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v83, v84);
    sub_1B7201D10(v83, 1);
    sub_1B7201D10(v81, 1);
    v23 = v83 == v81;
LABEL_43:
    sub_1B7201D10(v83, v85);
    sub_1B7201CF8(v83, v84);
    if ((v23 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_1B7201D10(v81, v82);
    sub_1B7201D10(v81, v82);
    v70 = *(v0 + 320) + 1;
    v30 = v136;
    v22 = v78;
    v68 = v133;
    v69 = v131;
    if (v70 == *(v0 + 240))
    {
      goto LABEL_33;
    }
  }

  if ((v82 & 1) == 0)
  {
    sub_1B7205540(0, &qword_1EDAFC4C0);
    sub_1B7227500(v81, 0);
    sub_1B7227500(v81, 0);
    sub_1B7227500(v81, 0);
    sub_1B72274E8(v83, v84);
    sub_1B7227500(v81, 0);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v83, v84);
    sub_1B72274E8(v81, v82);
    sub_1B7227500(v83, 0);
    v23 = sub_1B7801558();
    sub_1B7201D10(v81, 0);
    sub_1B7201CF8(v83, v84);
    sub_1B7201D10(v83, 0);
    sub_1B7201D10(v81, 0);
    sub_1B7201CF8(v81, v82);
    v85 = *(v0 + 352);
    goto LABEL_43;
  }

  sub_1B7227500(v81, 1);
  sub_1B7227500(v81, 1);
  sub_1B7227500(v81, 1);
  sub_1B72274E8(v83, v84);
  sub_1B72274E8(v83, v84);
  sub_1B7227500(v83, 0);
LABEL_64:
  v82 = v84 ^ 1;
  sub_1B7201D10(v83, v84 & 1);
  sub_1B7201D10(v81, (v84 ^ 1) & 1);
  sub_1B7201D10(v83, v84 & 1);
  v95 = v83;
  v96 = v84;
LABEL_65:
  sub_1B7201CF8(v95, v96);
LABEL_66:
  v113 = *(v0 + 256);
  v114 = *(v0 + 160);
  v115 = *(v114 + *(v0 + 248));
  *(v0 + 128) = v81;
  v116 = *(v0 + 200);
  *(v0 + 136) = v82 & 1;
  *(v0 + 152) = v116;

  v144 = (v115 + *v115);
  v117 = swift_task_alloc();
  *(v0 + 336) = v117;
  *v117 = v0;
  v117[1] = sub_1B73EE2C0;

  return v144(v0 + 16, v0 + 128, 0xD000000000000016, 0x80000001B7872B70, v114 + v113, v0 + 152);
}