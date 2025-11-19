uint64_t objectdestroy_210Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2380254B8()
{
  result = sub_237FFCE24(0, &qword_280C34A10, 0x277CFE208);
  qword_280C36C40 = result;
  *algn_280C36C48 = &off_284AE73B8;
  return result;
}

uint64_t static EventStreams.allRemoteCoreDuetIdentifiers.getter()
{
  v0 = sub_238031874();
  v39 = *(v0 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CFE1E0]) init];
  v5 = [objc_opt_self() onlyRemoteDevice];
  if (v5)
  {
    sub_238031AB4();
    sub_238026040(&qword_280C35010, MEMORY[0x277CC95F0]);
    sub_238032074();

    v5 = sub_238032064();
  }

  v40 = v0;
  [v4 setDeviceIDs_];

  sub_238025E0C();
  sub_237FFCE24(0, &qword_280C34A18, 0x277CFE1E8);
  v6 = sub_238031F84();

  [v4 setEventStreams_];

  v7 = sub_238031F84();
  [v4 setGroupByProperties_];

  [v4 setResultType_];
  if (qword_280C34B48 != -1)
  {
    swift_once();
  }

  v8 = qword_280C36C40;
  v9 = *algn_280C36C48;
  v10 = *(*algn_280C36C48 + 8);
  v11 = sub_2380321B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v10(v8, v9);
  v16 = *(v8 - 8);
  if ((*(v16 + 48))(v15, 1, v8) == 1)
  {
    result = (*(v12 + 8))(v15, v11);
    __break(1u);
  }

  else
  {
    v49 = v8;
    v50 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    (*(v16 + 32))(boxed_opaque_existential_1, v15, v8);
    sub_237FB0034(&v48, &v51);
    v18 = v52;
    v19 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, v52);
    v20 = *(v9 + 24);
    v21 = v4;
    v22 = v20(v4, v18, v19);

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v37 = v22;
      v38 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      sub_238032154();
      sub_238026040(&qword_280C35058, MEMORY[0x277CC9178]);
      v23 = v40;
      sub_2380321C4();
      if (v52)
      {
        v24 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_237FC156C(&v51, &v48);
          sub_237FD4FB0(&v48, v43);
          sub_237FFCE24(0, &qword_27DEE57C8, 0x277CBEAC0);
          if (swift_dynamicCast())
          {
            v25 = v41;
            *&v41 = 0x642E656372756F73;
            *(&v41 + 1) = 0xEF44496563697665;
            v26 = [v25 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v26)
            {
              sub_2380321D4();
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1Tm(&v48);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1Tm(&v48);
              v42 = 0u;
              v41 = 0u;
            }

            v44 = v41;
            v45 = v42;
            if (*(&v42 + 1))
            {
              if (swift_dynamicCast())
              {
                v27 = v47;
                if (v47)
                {
                  v28 = v46;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v24 = sub_237FB5A94(0, *(v24 + 2) + 1, 1, v24);
                  }

                  v30 = *(v24 + 2);
                  v29 = *(v24 + 3);
                  if (v30 >= v29 >> 1)
                  {
                    v24 = sub_237FB5A94((v29 > 1), v30 + 1, 1, v24);
                  }

                  *(v24 + 2) = v30 + 1;
                  v31 = &v24[16 * v30];
                  *(v31 + 4) = v28;
                  *(v31 + 5) = v27;
                }
              }

              goto LABEL_11;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(&v48);
            v44 = 0u;
            v45 = 0u;
          }

          sub_238025FD8(&v44);
LABEL_11:
          sub_2380321C4();
          if (!v52)
          {
            goto LABEL_30;
          }
        }
      }

      v24 = MEMORY[0x277D84F90];
LABEL_30:
      (*(v39 + 8))(v3, v23);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      if (qword_27DEE4D80 != -1)
      {
        swift_once();
      }

      v32 = sub_238031DB4();
      __swift_project_value_buffer(v32, qword_27DEE95A8);
      v33 = sub_238031D94();
      v34 = sub_2380320F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_237FA1000, v33, v34, "Failed to query for all CoreDuet device identifiers", v35, 2u);
        MEMORY[0x2383E5E30](v35, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

    return v24;
  }

  return result;
}

id sub_238025E0C()
{
  v5 = MEMORY[0x277D84F90];
  sub_238032324();
  v0 = 0;
  while (1)
  {
    v3 = byte_284AE5C48[v0 + 32];
    v4 = objc_opt_self();
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          result = [v4 appClipUsageStream];
          if (!result)
          {
            goto LABEL_26;
          }
        }

        else
        {
          result = [v4 appMediaUsageStream];
          if (!result)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        result = [v4 appUsageStream];
        if (!result)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_3;
    }

    if (v3 > 4)
    {
      break;
    }

    if (v3 == 3)
    {
      result = [v4 appWebUsageStream];
      if (!result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      result = [v4 displayIsBacklit];
      if (!result)
      {
        goto LABEL_23;
      }
    }

LABEL_3:
    ++v0;
    sub_238032304();
    v2 = *(v5 + 16);
    sub_238032334();
    sub_238032344();
    sub_238032314();
    if (v0 == 7)
    {
      return v5;
    }
  }

  if (v3 != 5)
  {
    if (![v4 notificationUsageStream])
    {
      __break(1u);
      return v5;
    }

    goto LABEL_3;
  }

  result = [v4 nowPlayingStream];
  if (result)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_238025FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50F8, &qword_238033EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238026040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppUsageEvent.init(bundleIdentifier:interval:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AppUsageEvent(0);
  v9 = *(v8 + 20);
  v10 = sub_238031654();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_238031B94();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t WebUsageEvent.init(url:interval:bundleIdentifier:timeZone:safariProfileId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for WebUsageEvent(0);
  v17 = (a8 + v16[8]);
  v18 = sub_238031994();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = v16[5];
  v20 = sub_238031654();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  v21 = (a8 + v16[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = v16[7];
  v23 = sub_238031B94();
  result = (*(*(v23 - 8) + 32))(a8 + v22, a5, v23);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t PickupEvent.duration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PickupEvent.duration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PickupEvent.init(bundleIdentifier:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 1;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  v8 = type metadata accessor for PickupEvent(0);
  v9 = v8[6];
  v10 = sub_238031A64();
  (*(*(v10 - 8) + 32))(a5 + v9, a3, v10);
  *(a5 + v8[7]) = 1;
  v11 = v8[8];
  v12 = sub_238031B94();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

uint64_t PickupEvent.init(bundleIdentifier:date:includeStopEvent:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 1;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  v10 = type metadata accessor for PickupEvent(0);
  v11 = v10[6];
  v12 = sub_238031A64();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  *(a6 + v10[7]) = a4;
  v13 = v10[8];
  v14 = sub_238031B94();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t NotificationEvent.init(date:bundleIdentifier:userIdentifier:timeZone:deviceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_238031A64();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for NotificationEvent(0);
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + v17[6]) = a4;
  v19 = v17[7];
  v20 = sub_238031B94();
  result = (*(*(v20 - 8) + 32))(a8 + v19, a5, v20);
  v22 = (a8 + v17[8]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t static EventStreams.save(_:)(uint64_t a1)
{
  return sub_238026B58(a1, sub_238029C90, sub_23802A308);
}

{
  return sub_238026B58(a1, sub_23802A60C, sub_23802AAE8);
}

{
  return sub_238026B58(a1, sub_23802B96C, sub_23802BE6C);
}

{
  return sub_238026B58(a1, sub_23802C098, sub_23802C6B8);
}

void sub_2380265E8(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v54 = [objc_opt_self() appUsageStream];
  v46 = type metadata accessor for AppUsageEvent(0);
  v10 = *(v46 + 20);
  sub_238031634();
  v11 = sub_238031A64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  sub_238031604();
  v13(v7, 0, 1, v11);
  v14 = objc_opt_self();
  v15 = *a1;
  v16 = a1[1];
  v47 = a1;
  v17 = sub_238031E74();
  v50 = [v14 withBundle_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238036350;
  v19 = objc_opt_self();
  v20 = [v19 usageType];
  v51 = v7;
  v49 = v12;
  if (v20)
  {
    v21 = v20;
    v22 = sub_238031EA4();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v52 = v22;
  v53 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
  sub_23802E250();
  sub_238032254();
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v26 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
  *(inited + 96) = v26;
  *(inited + 72) = v25;
  v27 = [v19 isUsageTrusted];
  if (v27)
  {
    v28 = v27;
    v29 = sub_238031EA4();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v52 = v29;
  v53 = v31;
  sub_238032254();
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 168) = v26;
  *(inited + 144) = v32;
  sub_237FD4B0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
  swift_arrayDestroy();
  v33 = v49;
  v34 = *(v49 + 48);
  v35 = v34(v9, 1, v11);
  v36 = v51;
  if (v35 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_2380319F4();
    (*(v33 + 8))(v9, v11);
  }

  if (v34(v36, 1, v11) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_2380319F4();
    (*(v33 + 8))(v36, v11);
  }

  v39 = sub_238031DE4();

  v40 = objc_opt_self();
  v41 = v54;
  v42 = v50;
  v43 = [v40 eventWithStream:v54 startDate:v37 endDate:v38 value:v50 metadata:v39];

  if (v43)
  {
    v44 = v47 + *(v46 + 24);
    v45 = sub_238031B84();
    [v43 setTimeZone_];

    *v48 = v43;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238026B58(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  if (byte_27DEE58A1 == 2)
  {
    v8[3] = &type metadata for Feature.FeatureFlags;
    v8[4] = sub_237FBEFF4();
    LOBYTE(v8[0]) = 1;
    v6 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    if ((v6 & 1) == 0)
    {
      return a3(a1);
    }

    goto LABEL_5;
  }

  if (byte_27DEE58A1)
  {
LABEL_5:
    a2(a1);
  }

  return a3(a1);
}

_OWORD *sub_238026C1C(char **a1, uint64_t a2)
{
  v90 = a1;
  v88 = sub_238031AB4();
  v84 = *(v88 - 8);
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v88);
  v82 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v87 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = v80 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v80 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v80 - v14;
  v16 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
  v17 = sub_238032164();
  v18 = type metadata accessor for WebUsageEvent(0);
  v95 = *(v18 + 20);
  sub_238031634();
  v19 = sub_238031A64();
  v20 = *(v19 - 8);
  v93 = *(v20 + 56);
  v94 = v20 + 56;
  v93(v15, 0, 1, v19);
  v83 = v18;
  v21 = (a2 + *(v18 + 24));
  v23 = *v21;
  v22 = v21[1];
  v102 = v23;
  v98 = a2;
  v99 = v22;
  v96 = v16;
  v24 = sub_238032164();
  v89 = v20;
  v91 = *(v20 + 48);
  v92 = v20 + 48;
  v25 = 0;
  if (v91(v15, 1, v19) != 1)
  {
    v25 = sub_2380319F4();
    (*(v89 + 8))(v15, v19);
  }

  v97 = v19;
  v26 = objc_allocWithZone(MEMORY[0x277CF1440]);
  v27 = sub_238031E74();
  v28 = [v26 initWithStarting:v17 absoluteTimestamp:v25 bundleID:v27 parentBundleID:0 isUsageTrusted:v24];

  v86 = sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
  v101 = v86;
  *&v100 = v28;
  v29 = *v90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_237FB5E58(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  v32 = v97;
  if (v31 >= v30 >> 1)
  {
    v29 = sub_237FB5E58((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  sub_237FC156C(&v100, &v29[32 * v31 + 32]);
  v33 = v82;
  sub_238031AA4();
  v34 = sub_238031A74();
  v36 = v35;
  (*(v84 + 8))(v33, v88);
  v37 = v98;
  sub_238031634();
  v93(v13, 0, 1, v32);
  v81 = sub_238031894();
  v80[1] = sub_238031934();
  v39 = v38;
  v82 = sub_238032164();
  v40 = (v37 + *(v83 + 32));
  v41 = *v40;
  v88 = v40[1];
  v83 = v34;
  v84 = v36;
  v42 = sub_238031E74();
  if (v91(v13, 1, v32) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_2380319F4();
    (*(v89 + 8))(v13, v32);
  }

  v44 = sub_238031E74();

  if (v39)
  {
    v45 = sub_238031E74();
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_238031E74();
  v80[2] = v41;
  if (v88)
  {
    v47 = sub_238031E74();
  }

  else
  {
    v47 = 0;
  }

  v48 = objc_allocWithZone(MEMORY[0x277CF1010]);
  v49 = v82;
  v50 = [v48 initWithUniqueID:v42 absoluteTimestamp:v43 usageState:3 webpageURL:v44 webDomain:v45 applicationID:v46 deviceID:0 isUsageTrusted:v82 safariProfileID:v47];

  v82 = sub_237FFCE24(0, &qword_27DEE5888, 0x277CF1010);
  v101 = v82;
  *&v100 = v50;
  v52 = *(v29 + 2);
  v51 = *(v29 + 3);
  if (v52 >= v51 >> 1)
  {
    v29 = sub_237FB5E58((v51 > 1), v52 + 1, 1, v29);
  }

  v53 = v97;
  *(v29 + 2) = v52 + 1;
  sub_237FC156C(&v100, &v29[32 * v52 + 32]);
  v54 = v85;
  sub_238031604();
  v93(v54, 0, 1, v53);
  sub_238031894();
  sub_238031934();
  v56 = v55;
  v57 = v54;
  v81 = sub_238032164();
  v58 = sub_238031E74();

  if (v91(v57, 1, v53) == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_2380319F4();
    (*(v89 + 8))(v57, v53);
  }

  v60 = sub_238031E74();

  if (v56)
  {
    v61 = sub_238031E74();
  }

  else
  {
    v61 = 0;
  }

  v62 = sub_238031E74();
  if (v88)
  {
    v63 = sub_238031E74();
  }

  else
  {
    v63 = 0;
  }

  v64 = objc_allocWithZone(MEMORY[0x277CF1010]);
  v65 = v81;
  v66 = [v64 initWithUniqueID:v58 absoluteTimestamp:v59 usageState:1 webpageURL:v60 webDomain:v61 applicationID:v62 deviceID:0 isUsageTrusted:v81 safariProfileID:v63];

  v101 = v82;
  *&v100 = v66;
  v68 = *(v29 + 2);
  v67 = *(v29 + 3);
  if (v68 >= v67 >> 1)
  {
    v29 = sub_237FB5E58((v67 > 1), v68 + 1, 1, v29);
  }

  v69 = v87;
  v70 = v97;
  *(v29 + 2) = v68 + 1;
  sub_237FC156C(&v100, &v29[32 * v68 + 32]);
  v71 = sub_238032164();
  sub_238031604();
  v93(v69, 0, 1, v70);
  v72 = sub_238032164();
  if (v91(v69, 1, v70) == 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = sub_2380319F4();
    (*(v89 + 8))(v69, v70);
  }

  v74 = objc_allocWithZone(MEMORY[0x277CF1440]);
  v75 = sub_238031E74();
  v76 = [v74 initWithStarting:v71 absoluteTimestamp:v73 bundleID:v75 parentBundleID:0 isUsageTrusted:v72];

  v101 = v86;
  *&v100 = v76;
  v78 = *(v29 + 2);
  v77 = *(v29 + 3);
  if (v78 >= v77 >> 1)
  {
    v29 = sub_237FB5E58((v77 > 1), v78 + 1, 1, v29);
  }

  *(v29 + 2) = v78 + 1;
  result = sub_237FC156C(&v100, &v29[32 * v78 + 32]);
  *v90 = v29;
  return result;
}

_OWORD *sub_238027604(char **a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v53 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  if (a2[8])
  {
    *(a2 + 3);
  }

  else
  {
    v15 = *a2;
  }

  v61 = a1;
  v59 = type metadata accessor for PickupEvent(0);
  v16 = *(v59 + 24);
  v17 = sub_238031A64();
  v18 = *(v17 - 8);
  v19 = v18[2];
  v67 = v16;
  v56 = v19;
  v19(v14, &a2[v16], v17);
  v65 = v18[7];
  v66 = v18 + 7;
  v65(v14, 0, 1, v17);
  v64 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
  v20 = sub_238032174();
  v60 = v18;
  v62 = v18[6];
  v63 = v18 + 6;
  v21 = 0;
  if (v62(v14, 1, v17) != 1)
  {
    v21 = sub_2380319F4();
    (v60[1])(v14, v17);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CF1098]) initWithAbsoluteTimestamp:v21 backlightLevel:v20];

  v54 = sub_237FFCE24(0, &qword_27DEE5860, 0x277CF1098);
  v69 = v54;
  *&v68 = v22;
  v23 = v61;
  v24 = *v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_237FB5E58(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_237FB5E58((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  result = sub_237FC156C(&v68, &v24[32 * v26 + 32]);
  *v23 = v24;
  v28 = *(a2 + 3);
  if (v28)
  {
    v58 = *(a2 + 2);
    v29 = sub_238032164();
    v56(v12, &a2[v67], v17);
    v65(v12, 0, 1, v17);
    v30 = sub_238032164();
    if (v62(v12, 1, v17) == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_2380319F4();
      (v60[1])(v12, v17);
    }

    v32 = objc_allocWithZone(MEMORY[0x277CF1440]);
    v56 = v28;
    v33 = sub_238031E74();
    v34 = [v32 initWithStarting:v29 absoluteTimestamp:v31 bundleID:v33 parentBundleID:0 isUsageTrusted:v30];

    v35 = sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
    v69 = v35;
    *&v68 = v34;
    v37 = *(v24 + 2);
    v36 = *(v24 + 3);
    if (v37 >= v36 >> 1)
    {
      v24 = sub_237FB5E58((v36 > 1), v37 + 1, 1, v24);
    }

    v38 = v57;
    *(v24 + 2) = v37 + 1;
    sub_237FC156C(&v68, &v24[32 * v37 + 32]);
    v39 = sub_238032164();
    sub_238031A24();
    v65(v38, 0, 1, v17);
    v40 = sub_238032164();
    if (v62(v38, 1, v17) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_2380319F4();
      (v60[1])(v38, v17);
    }

    v42 = objc_allocWithZone(MEMORY[0x277CF1440]);
    v43 = sub_238031E74();
    v44 = [v42 initWithStarting:v39 absoluteTimestamp:v41 bundleID:v43 parentBundleID:0 isUsageTrusted:v40];

    v69 = v35;
    *&v68 = v44;
    v46 = *(v24 + 2);
    v45 = *(v24 + 3);
    if (v46 >= v45 >> 1)
    {
      v24 = sub_237FB5E58((v45 > 1), v46 + 1, 1, v24);
    }

    v23 = v61;
    *(v24 + 2) = v46 + 1;
    result = sub_237FC156C(&v68, &v24[32 * v46 + 32]);
    *v23 = v24;
  }

  if (a2[*(v59 + 28)] == 1)
  {
    v47 = v55;
    sub_238031A24();
    v65(v47, 0, 1, v17);
    v48 = sub_238032174();
    v49 = 0;
    if (v62(v47, 1, v17) != 1)
    {
      v49 = sub_2380319F4();
      (v60[1])(v47, v17);
    }

    v50 = [objc_allocWithZone(MEMORY[0x277CF1098]) initWithAbsoluteTimestamp:v49 backlightLevel:v48];

    v69 = v54;
    *&v68 = v50;
    v52 = *(v24 + 2);
    v51 = *(v24 + 3);
    if (v52 >= v51 >> 1)
    {
      v24 = sub_237FB5E58((v51 > 1), v52 + 1, 1, v24);
    }

    *(v24 + 2) = v52 + 1;
    result = sub_237FC156C(&v68, &v24[32 * v52 + 32]);
    *v23 = v24;
  }

  return result;
}

void sub_238027D28(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v76 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v75 = v64 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  if (a1[1])
  {
    a1[3];
  }

  else
  {
    v14 = *a1;
  }

  v82 = MEMORY[0x277D84F90];
  v68 = objc_opt_self();
  v74 = [v68 displayIsBacklit];
  v73 = type metadata accessor for PickupEvent(0);
  v15 = v73[6];
  v16 = sub_238031A64();
  v17 = *(v16 - 8);
  v66 = v17[2];
  v66(v13, a1 + v15, v16);
  v18 = v17[7];
  v18(v13, 0, 1, v16);
  v77 = a1;
  v69 = v15;
  sub_238031A24();
  v67 = v18;
  v18(v11, 0, 1, v16);
  v78 = v17;
  v20 = v17[6];
  v19 = v17 + 6;
  v79 = v20;
  v21 = 0;
  if (v20(v13, 1, v16) != 1)
  {
    v21 = sub_2380319F4();
    (v78[1])(v13, v16);
  }

  if (v79(v11, 1, v16) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_2380319F4();
    (v78[1])(v11, v16);
  }

  v71 = v19;
  v70 = objc_opt_self();
  v23 = v74;
  v24 = [v70 eventWithStream:v74 startDate:v21 endDate:v22 categoryIntegerValue:1 metadata:0];

  if (v24)
  {
    v25 = v73[8];
    v26 = v77;
    v27 = sub_238031B84();
    [v24 setTimeZone_];

    v28 = v24;
    MEMORY[0x2383E50E0]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_238031FC4();
    }

    sub_238031FF4();
    if (!*(v26 + 3))
    {
      v42 = v82;

LABEL_30:
      *v72 = v42;
      return;
    }

    v64[1] = v25;
    v65 = v28;
    v29 = *(v26 + 2);
    v74 = [v68 appUsageStream];
    v30 = v75;
    v66(v75, &v26[v69], v16);
    v31 = v67;
    v67(v30, 0, 1, v16);
    v32 = v76;
    sub_238031A24();
    v31(v32, 0, 1, v16);
    v33 = objc_opt_self();
    v34 = sub_238031E74();
    v73 = [v33 withBundle_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238036350;
    v36 = objc_opt_self();
    v37 = [v36 usageType];
    if (v37)
    {
      v38 = v37;
      v39 = sub_238031EA4();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v80 = v39;
    v81 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
    sub_23802E250();
    sub_238032254();
    v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v44 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    *(inited + 96) = v44;
    *(inited + 72) = v43;
    v45 = [v36 isUsageTrusted];
    if (v45)
    {
      v46 = v45;
      v47 = sub_238031EA4();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v80 = v47;
    v81 = v49;
    sub_238032254();
    v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(inited + 168) = v44;
    *(inited + 144) = v50;
    sub_237FD4B0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
    swift_arrayDestroy();
    v51 = v75;
    if (v79(v75, 1, v16) == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_2380319F4();
      (v78[1])(v51, v16);
    }

    v53 = v76;
    if (v79(v76, 1, v16) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_2380319F4();
      (v78[1])(v53, v16);
    }

    v55 = sub_238031DE4();

    v56 = v74;
    v57 = v73;
    v58 = [v70 eventWithStream:v74 startDate:v52 endDate:v54 value:v73 metadata:v55];

    if (v58)
    {
      v59 = sub_238031B84();
      [v58 setTimeZone_];

      v60 = v58;
      MEMORY[0x2383E50E0]();
      v61 = v65;
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_238031FC4();
      }

      sub_238031FF4();

      v42 = v82;
      goto LABEL_30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_238028604(uint64_t a1)
{
  v2 = v1;
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for PickupEvent(0) - 8);
  v6 = MEMORY[0x277D84F90];
  v32 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v31 = *(v5 + 72);
  while (1)
  {
    v8 = v2;
    sub_238027D28((v32 + v31 * v4), &v37);
    if (v2)
    {

      return v6;
    }

    v9 = v37;
    v10 = v37 >> 62;
    v11 = v37 >> 62 ? sub_238032374() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v29 = sub_238032374();
      v14 = v29 + v11;
      if (__OFADD__(v29, v11))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v35 = v11;
    if (result)
    {
      if (v12)
      {
        goto LABEL_17;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v12)
      {
LABEL_17:
        sub_238032374();
        goto LABEL_18;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v15 + 16);
LABEL_18:
    result = sub_2380322E4();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v18 >> 1) - v17) < v35)
    {
      goto LABEL_40;
    }

    v34 = v6;
    v21 = v15 + 8 * v17 + 32;
    v30 = v15;
    if (v10)
    {
      if (v19 < 1)
      {
        goto LABEL_42;
      }

      sub_237FBCCF0(&qword_27DEE5880, &qword_27DEE5878, &unk_238036610);
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5878, &unk_238036610);
        v23 = sub_238029688(v36, i, v9);
        v25 = *v24;
        (v23)(v36, 0);
        *(v21 + 8 * i) = v25;
      }
    }

    else
    {
      sub_237FFCE24(0, &qword_27DEE5870, 0x277CFE1D8);
      swift_arrayInitWithCopy();
    }

    v2 = v8;
    v6 = v34;
    if (v35 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v35);
      v28 = v26 + v35;
      if (v27)
      {
        goto LABEL_41;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v4 == v33)
    {
      return v6;
    }
  }

  v20 = v15;
  result = sub_238032374();
  v15 = v20;
  v19 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v35 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_2380289A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = type metadata accessor for NotificationEvent(0);
  v11 = (a1 + v10[5]);
  v13 = *v11;
  v12 = v11[1];
  v14 = (a1 + v10[8]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(a1 + v10[6]);
  v18 = sub_2380320B4();
  v42 = v13;
  v43 = v12;
  v19 = sub_238031E74();
  if (v16)
  {
    v20 = sub_238031E74();
  }

  else
  {
    v20 = 0;
  }

  v45 = [objc_allocWithZone(MEMORY[0x277CFE268]) initWithIdentifier:0 bundleIdentifier:v19 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:v20 userIdentifier:v18];

  v44 = [objc_opt_self() notificationUsageStream];
  v21 = sub_238031A64();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v23(v9, a1, v21);
  v24 = *(v22 + 56);
  v24(v9, 0, 1, v21);
  v23(v7, a1, v21);
  v24(v7, 0, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238035770;
  v26 = [objc_opt_self() bundleID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_238031EA4();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v47 = v28;
  v48 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
  sub_23802E250();
  sub_238032254();
  *(inited + 96) = MEMORY[0x277D837D0];
  v31 = v43;
  *(inited + 72) = v42;
  *(inited + 80) = v31;

  sub_237FD4B0C(inited);
  swift_setDeallocating();
  sub_23802E2CC(inited + 32);
  v32 = *(v22 + 48);
  if (v32(v9, 1, v21) == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_2380319F4();
    (*(v22 + 8))(v9, v21);
  }

  if (v32(v7, 1, v21) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_2380319F4();
    (*(v22 + 8))(v7, v21);
  }

  v35 = sub_238031E74();
  v36 = sub_238031DE4();

  v37 = objc_opt_self();
  v39 = v44;
  v38 = v45;
  v40 = [v37 eventWithStream:v44 source:v45 startDate:v33 endDate:v34 identifierStringValue:v35 metadata:v36];

  *v46 = v40;
}

void static EventStreams.delete()()
{
  swift_beginAccess();
  if (byte_27DEE58A1 != 2)
  {
    if ((byte_27DEE58A1 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_23802D0AC();
    if (v0)
    {
      return;
    }

    goto LABEL_6;
  }

  v2[3] = &type metadata for Feature.FeatureFlags;
  v2[4] = sub_237FBEFF4();
  LOBYTE(v2[0]) = 1;
  v1 = sub_238031BA4();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_23802DA78();
}

uint64_t sub_238028EC8()
{
  v10 = sub_238032134();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238032124();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_238031DD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_237FFCE24(0, &qword_27DEE5820, 0x277D85C78);
  sub_238031DC4();
  v11 = MEMORY[0x277D84F90];
  sub_23802E19C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5830, "X#");
  sub_237FBCCF0(&qword_27DEE5838, &qword_27DEE5830, "X#");
  sub_2380321E4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_238032144();
  qword_27DEE57D0 = result;
  return result;
}

id static EventStreams.testBiomeQueue.getter()
{
  if (qword_27DEE4D70 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEE57D0;

  return v1;
}

id sub_238029168()
{
  v0 = objc_opt_self();

  return [v0 unsetBasePathForTesting];
}

void sub_2380291C8()
{
  v0 = objc_opt_self();
  v1 = sub_238031E74();
  [v0 setBasePathForTestingWithPath_];
}

uint64_t static EventStreams.command(rateLimit:)()
{
  v0 = sub_237FD47FC(&unk_284AE5CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5580, &qword_238036580);
  result = swift_arrayDestroy();
  v2 = 0;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  for (i = (v3 + 63) >> 6; v5; result = )
  {
    v7 = v2;
LABEL_9:
    v8 = *(*(v0 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v5 &= v5 - 1;
    sub_2380322B4();

    v9 = sub_2380324C4();
    MEMORY[0x2383E5050](v9);

    MEMORY[0x2383E5050](0xD000000000000019, 0x80000002380375D0);
    v10 = sub_2380324C4();
    MEMORY[0x2383E5050](v10);

    MEMORY[0x2383E5050](32, 0xE100000000000000);
    MEMORY[0x2383E5050](0xD00000000000005ALL, 0x8000000238037550);
    MEMORY[0x2383E5050](8251, 0xE200000000000000);
    MEMORY[0x2383E5050](0xD000000000000010, 0x80000002380375B0);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= i)
    {

      return 0;
    }

    v5 = *(v0 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static EventStreams.synchronize()()
{
  if (qword_280C34B48 != -1)
  {
    swift_once();
  }

  v0 = qword_280C36C40;
  v1 = *algn_280C36C48;
  v2 = *(*algn_280C36C48 + 8);
  v3 = sub_2380321B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v2(v0, v1);
  v8 = *(v0 - 8);
  if ((*(v8 + 48))(v7, 1, v0) == 1)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    v14 = v0;
    v15 = v1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    (*(v8 + 32))(boxed_opaque_existential_1, v7, v0);
    sub_237FB0034(&v13, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v1 + 40))(v10, v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return result;
}

void (*sub_238029688(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383E5440](a2, a3);
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
    return sub_238029708;
  }

  __break(1u);
  return result;
}

void _s14DeviceActivity12EventStreamsV29useTestBiomeDirectoryIfNeededyyFZ_0()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = aBlock - v7;
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v1 + 8);
  v11(v5, v0);
  sub_2380318F4();
  v11(v8, v0);
  v12 = sub_238031954();
  v14 = v13;
  v11(v10, v0);
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_238031E74();
  v17 = [v15 fileExistsAtPath_];

  if (v17)
  {
    if (qword_27DEE4D70 != -1)
    {
      swift_once();
    }

    v18 = qword_27DEE57D0;
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    *(v19 + 24) = v14;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_23802E41C;
    *(v20 + 24) = v19;
    aBlock[4] = sub_23802E420;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2380291A0;
    aBlock[3] = &block_descriptor_62;
    v21 = _Block_copy(aBlock);

    dispatch_sync(v18, v21);
    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      if (qword_280C35398 != -1)
      {
        swift_once();
      }

      v22 = sub_238031DB4();
      __swift_project_value_buffer(v22, qword_280C36C68);
      v23 = sub_238031D94();
      v24 = sub_238032114();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_237FA1000, v23, v24, "Using test Biome directory", v25, 2u);
        MEMORY[0x2383E5E30](v25, -1, -1);
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {

    if (qword_280C35398 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v26 = sub_238031DB4();
  __swift_project_value_buffer(v26, qword_280C36C68);
  v23 = sub_238031D94();
  v27 = sub_238032114();
  if (os_log_type_enabled(v23, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_237FA1000, v23, v27, "Using production Biome directory", v28, 2u);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

LABEL_15:
}

void sub_238029C90(uint64_t a1)
{
  v2 = sub_238031A64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for AppUsageEvent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v18 = *(a1 + 16);
  v61 = v2;
  v51 = v3;
  if (v18)
  {
    v19 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    v59 = *(v12 + 20);
    v60 = v19;
    v20 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v21 = *(v13 + 72);
    v57 = (v3 + 48);
    v58 = (v3 + 56);
    v53 = (v3 + 8);
    v54 = v21;
    v55 = v11;
    do
    {
      sub_23802E334(v20, v16, type metadata accessor for AppUsageEvent);
      v22 = sub_238032164();
      sub_238031634();
      v23 = *v58;
      (*v58)(v11, 0, 1, v2);
      v24 = *v16;
      v62 = v16[1];
      v63 = v24;
      v25 = sub_238032164();
      v26 = *v57;
      if ((*v57)(v11, 1, v2) == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = sub_2380319F4();
        (*v53)(v11, v2);
      }

      v28 = objc_allocWithZone(MEMORY[0x277CF1440]);
      v29 = sub_238031E74();
      [v28 initWithStarting:v22 absoluteTimestamp:v27 bundleID:v29 parentBundleID:0 isUsageTrusted:v25];

      MEMORY[0x2383E50E0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_238031FC4();
      }

      sub_238031FF4();
      v30 = sub_238032164();
      v31 = v56;
      sub_238031604();
      v32 = v61;
      v23(v31, 0, 1, v61);
      v33 = v31;
      v34 = sub_238032164();
      if (v26(v33, 1, v32) == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = sub_2380319F4();
        (*v53)(v33, v32);
      }

      v36 = objc_allocWithZone(MEMORY[0x277CF1440]);
      v37 = sub_238031E74();
      [v36 initWithStarting:v30 absoluteTimestamp:v35 bundleID:v37 parentBundleID:0 isUsageTrusted:v34];

      MEMORY[0x2383E50E0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_238031FC4();
      }

      sub_238031FF4();
      sub_23802E39C(v16, type metadata accessor for AppUsageEvent);
      v11 = v55;
      v20 += v54;
      --v18;
      v2 = v61;
    }

    while (v18);
    v17 = v64;
  }

  v40 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v41 = [v40 AppUsage];
  swift_unknownObjectRelease();
  v42 = [v41 source];

  if (!(v17 >> 62))
  {
    v43 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_17;
    }

LABEL_27:

    return;
  }

  v43 = sub_238032374();
  if (!v43)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = v52;
    v46 = (v51 + 8);
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x2383E5440](v44, v17);
      }

      else
      {
        v48 = *(v17 + 8 * v44 + 32);
      }

      v49 = v48;
      v50 = [v48 absoluteTimestamp];
      if (v50)
      {
        v47 = v50;
        sub_238031A44();

        sub_2380319E4();
        [v42 sendEvent:v49 timestamp:?];

        (*v46)(v45, v61);
      }

      else
      {
      }

      ++v44;
    }

    while (v43 != v44);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_23802A308(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v26[0] = MEMORY[0x277D84F90];
    sub_238032324();
    v6 = *(type metadata accessor for AppUsageEvent(0) - 8);
    v7 = (a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
    v8 = *(v6 + 72);
    while (1)
    {
      sub_2380265E8(v7, &v23);
      if (v2)
      {
        break;
      }

      v2 = 0;
      sub_238032304();
      v9 = *(v26[0] + 16);
      sub_238032334();
      sub_238032344();
      sub_238032314();
      v7 = (v7 + v8);
      if (!--v3)
      {
        v4 = v26[0];
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (qword_280C34B48 != -1)
    {
      swift_once();
    }

    v10 = qword_280C36C40;
    v11 = *algn_280C36C48;
    v12 = *(*algn_280C36C48 + 8);
    v13 = sub_2380321B4();
    v29 = *(v13 - 8);
    v14 = *(v29 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = &v23 - v15;
    v12(v10, v11);
    v17 = *(v10 - 8);
    if ((*(v17 + 48))(v16, 1, v10) != 1)
    {
      v24 = v10;
      v25 = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, v10);
      sub_237FB0034(&v23, v26);
      v19 = v27;
      v20 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v21 = sub_23802E63C(v4);

      (*(v11 + 32))(v21, v19, v20);

      return __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    (*(v29 + 8))(v16, v13);
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23802A60C(uint64_t a1)
{
  v2 = sub_238031A64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v34 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = 0;
  v42[0] = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  while (v14 != v13)
  {
    v15 = *(type metadata accessor for WebUsageEvent(0) - 8);
    sub_238026C1C(v42, a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13++);
  }

  v16 = v42[0];
  v17 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v18 = [v17 AppUsage];
  swift_unknownObjectRelease();
  v39 = [v18 source];

  v19 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v20 = [v19 WebUsage];
  swift_unknownObjectRelease();
  v21 = [v20 source];

  v22 = *(v16 + 2);
  if (!v22)
  {

    goto LABEL_17;
  }

  v37 = v21;
  v34 = v16;
  v23 = (v16 + 32);
  v24 = (v3 + 32);
  v25 = (v3 + 8);
  do
  {
    sub_237FD4FB0(v23, v42);
    sub_237FD4FB0(v42, v41);
    sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
    if (swift_dynamicCast())
    {
      v26 = v40;
      v27 = [v40 absoluteTimestamp];
      if (!v27)
      {
        goto LABEL_6;
      }

      v28 = v38;
      v29 = v27;
      sub_238031A44();

      (*v24)(v12, v28, v2);
      sub_2380319E4();
      [v39 sendEvent:v26 timestamp:?];

      (*v25)(v12, v2);
    }

    else
    {
      sub_237FD4FB0(v42, v41);
      sub_237FFCE24(0, &qword_27DEE5888, 0x277CF1010);
      if (swift_dynamicCast())
      {
        v26 = v40;
        v30 = [v40 absoluteTimestamp];
        if (!v30)
        {
LABEL_6:
          __swift_destroy_boxed_opaque_existential_1Tm(v42);

          goto LABEL_7;
        }

        v31 = v36;
        v32 = v30;
        sub_238031A44();

        v33 = v35;
        (*v24)(v35, v31, v2);
        sub_2380319E4();
        [v37 sendEvent:v26 timestamp:?];

        (*v25)(v33, v2);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_7:
    v23 += 32;
    --v22;
  }

  while (v22);

LABEL_17:
}

uint64_t sub_23802AAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v131 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v131 - v11;
  MEMORY[0x28223BE20](v10);
  v152 = &v131 - v13;
  v157 = type metadata accessor for WebUsageEvent(0);
  v14 = *(v157 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v157);
  v153 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  v18 = *(a1 + 16);
  if (v18)
  {
    v133 = v9;
    v150 = objc_opt_self();
    v149 = objc_opt_self();
    v161 = objc_opt_self();
    v160 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    v148 = objc_opt_self();
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v132 = *(v14 + 72);
    v135 = xmmword_238036350;
    v134 = xmmword_238036570;
    v151 = v12;
    v20 = v153;
    v136 = v6;
    while (1)
    {
      v138 = v19;
      v139 = v18;
      sub_23802E334(v19, v20, type metadata accessor for WebUsageEvent);
      v147 = [v150 appUsageStream];
      v21 = v157;
      v22 = v157[5];
      v23 = v152;
      sub_238031634();
      v24 = sub_238031A64();
      v155 = *(v24 - 8);
      v156 = v24;
      v26 = v155 + 56;
      v25 = *(v155 + 56);
      v25(v23, 0, 1, v24);
      v145 = v22;
      v27 = v151;
      sub_238031604();
      v143 = v25;
      v144 = v26;
      v25(v27, 0, 1, v24);
      v28 = (v20 + v21[6]);
      v29 = *v28;
      v141 = v28[1];
      v142 = v29;
      v30 = sub_238031E74();
      v31 = [v149 withBundle_];

      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
      inited = swift_initStackObject();
      *(inited + 16) = v135;
      v33 = [v161 usageType];
      if (v33)
      {
        v34 = v33;
        v35 = sub_238031EA4();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v167 = v35;
      v168 = v37;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
      v39 = sub_23802E250();
      sub_238032254();
      v40 = v160;
      v41 = sub_238032174();
      *(inited + 96) = v40;
      *(inited + 72) = v41;
      v42 = [v161 isUsageTrusted];
      if (v42)
      {
        v43 = v42;
        v44 = sub_238031EA4();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v47 = v155;
      v167 = v44;
      v168 = v46;
      v158 = v38;
      sub_238032254();
      v48 = v160;
      v49 = sub_238032164();
      *(inited + 168) = v48;
      *(inited + 144) = v49;
      sub_237FD4B0C(inited);
      swift_setDeallocating();
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
      swift_arrayDestroy();
      v50 = v152;
      v51 = v156;
      v159 = *(v47 + 48);
      if (v159(v152, 1, v156) == 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = sub_2380319F4();
        (*(v47 + 8))(v50, v51);
      }

      v53 = v151;
      v54 = v159(v151, 1, v51);
      v154 = v47 + 48;
      if (v54 == 1)
      {
        v55 = 0;
      }

      else
      {
        v56 = v53;
        v55 = sub_2380319F4();
        (*(v47 + 8))(v56, v51);
      }

      v57 = sub_238031DE4();

      v58 = v147;
      v59 = [v148 eventWithStream:v147 startDate:v52 endDate:v55 value:v31 metadata:v57];

      if (!v59)
      {
        break;
      }

      v60 = v153;
      v137 = v157[7];
      v61 = sub_238031B84();
      [v59 setTimeZone_];

      v62 = v59;
      MEMORY[0x2383E50E0]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v118 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_238031FC4();
      }

      v147 = v62;
      sub_238031FF4();
      v59 = swift_initStackObject();
      *(v59 + 1) = v134;
      v63 = [v161 webpageURL];
      if (v63)
      {
        v64 = v63;
        v65 = sub_238031EA4();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      v167 = v65;
      v168 = v67;
      sub_238032254();
      v68 = sub_238031994();
      v59[12] = v68;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59 + 9);
      (*(*(v68 - 8) + 16))(boxed_opaque_existential_1, v60, v68);
      v70 = [v161 webDomain];
      if (v70)
      {
        v71 = v70;
        v72 = sub_238031EA4();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      v75 = v136;
      v167 = v72;
      v168 = v74;
      sub_238032254();
      sub_238031944();
      if (!v76)
      {
        goto LABEL_52;
      }

      v77 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v78 = sub_238031E74();

      v79 = [v77 initWithString_];

      v146 = sub_237FFCE24(0, &qword_27DEE5890, 0x277CCACA8);
      v59[21] = v146;
      v59[18] = v79;
      v80 = [v161 usageType];
      if (v80)
      {
        v81 = v80;
        v82 = sub_238031EA4();
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v84 = 0;
      }

      v167 = v82;
      v168 = v84;
      sub_238032254();
      v85 = v160;
      v86 = sub_238032174();
      v59[30] = v85;
      v59[27] = v86;
      v87 = [v161 isUsageTrusted];
      if (v87)
      {
        v88 = v87;
        v89 = sub_238031EA4();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0;
      }

      v167 = v89;
      v168 = v91;
      sub_238032254();
      v92 = v160;
      v93 = sub_238032164();
      v59[39] = v92;
      v59[36] = v93;
      v94 = sub_237FD4B0C(v59);
      swift_setDeallocating();
      swift_arrayDestroy();
      v95 = &v60[v157[8]];
      if (*(v95 + 1))
      {
        v96 = *v95;
        v97 = [v161 safariProfileID];
        if (v97)
        {
          v98 = v97;
          v99 = sub_238031EA4();
          v101 = v100;
        }

        else
        {
          v99 = 0;
          v101 = 0;
        }

        *&v164 = v99;
        *(&v164 + 1) = v101;
        sub_238032254();
        v103 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v104 = sub_238031E74();
        v105 = [v103 initWithString_];

        v165 = v146;
        *&v164 = v105;
        sub_237FC156C(&v164, v163);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = v94;
        sub_237FFBE98(v163, &v167, isUniquelyReferenced_nonNull_native);
        sub_237FD4F5C(&v167);
        v158 = v162;
        v102 = v136;
      }

      else
      {
        v158 = v94;
        v102 = v75;
      }

      v146 = [v150 appWebUsageStream];
      v107 = v133;
      sub_238031634();
      v108 = v156;
      v109 = v143;
      v143(v107, 0, 1, v156);
      sub_238031604();
      v110 = v102;
      v109(v102, 0, 1, v108);
      v111 = sub_238031E74();
      v112 = [v149 withBundle_];

      if (v159(v107, 1, v108) == 1)
      {
        v113 = 0;
      }

      else
      {
        v113 = sub_2380319F4();
        (*(v155 + 8))(v107, v108);
      }

      if (v159(v110, 1, v108) == 1)
      {
        v114 = 0;
      }

      else
      {
        v114 = sub_2380319F4();
        (*(v155 + 8))(v110, v108);
      }

      v115 = sub_238031DE4();
      v59 = v146;
      v39 = [v148 eventWithStream:v146 startDate:v113 endDate:v114 value:v112 metadata:v115];

      if (!v39)
      {
        goto LABEL_53;
      }

      v20 = v153;
      v116 = sub_238031B84();
      [v39 setTimeZone_];

      v117 = v39;
      MEMORY[0x2383E50E0]();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v119 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_238031FC4();
      }

      sub_238031FF4();

      v17 = v171;
      sub_23802E39C(v20, type metadata accessor for WebUsageEvent);
      v19 = v138 + v132;
      v18 = v139 - 1;
      if (v139 == 1)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_47:
    if (qword_280C34B48 != -1)
    {
      swift_once();
    }

    v120 = qword_280C36C40;
    v121 = *algn_280C36C48;
    v122 = *(*algn_280C36C48 + 8);
    v59 = sub_2380321B4();
    v161 = *(v59 - 1);
    v123 = *(v161 + 8);
    MEMORY[0x28223BE20](v59);
    v39 = &v131 - v124;
    v122(v120, v121);
    v125 = *(v120 - 8);
    if ((*(v125 + 48))(v39, 1, v120) != 1)
    {
      v165 = v120;
      v166 = v121;
      v126 = __swift_allocate_boxed_opaque_existential_1(&v164);
      (*(v125 + 32))(v126, v39, v120);
      sub_237FB0034(&v164, &v167);
      v127 = v169;
      v128 = v170;
      __swift_project_boxed_opaque_existential_1(&v167, v169);
      v129 = sub_23802E63C(v17);

      (*(v121 + 32))(v129, v127, v128);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v167);
    }
  }

  result = (*(v161 + 1))(v39, v59);
  __break(1u);
  return result;
}

void sub_23802B96C(uint64_t a1)
{
  v2 = sub_238031A64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v35 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = 0;
  v43[0] = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  while (v14 != v13)
  {
    v15 = *(type metadata accessor for PickupEvent(0) - 8);
    sub_238027604(v43, (a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13++));
  }

  v16 = v43[0];
  v17 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v18 = [v17 Display];
  swift_unknownObjectRelease();
  v19 = [v18 Backlight];
  swift_unknownObjectRelease();
  v40 = [v19 source];

  v20 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v21 = [v20 AppUsage];
  swift_unknownObjectRelease();
  v22 = [v21 source];

  v23 = *(v16 + 2);
  if (!v23)
  {

    goto LABEL_17;
  }

  v38 = v22;
  v35 = v16;
  v24 = (v16 + 32);
  v25 = (v3 + 32);
  v26 = (v3 + 8);
  do
  {
    sub_237FD4FB0(v24, v43);
    sub_237FD4FB0(v43, v42);
    sub_237FFCE24(0, &qword_27DEE5860, 0x277CF1098);
    if (swift_dynamicCast())
    {
      v27 = v41;
      v28 = [v41 absoluteTimestamp];
      if (!v28)
      {
        goto LABEL_6;
      }

      v29 = v39;
      v30 = v28;
      sub_238031A44();

      (*v25)(v12, v29, v2);
      sub_2380319E4();
      [v40 sendEvent:v27 timestamp:?];

      (*v26)(v12, v2);
    }

    else
    {
      sub_237FD4FB0(v43, v42);
      sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
      if (swift_dynamicCast())
      {
        v27 = v41;
        v31 = [v41 absoluteTimestamp];
        if (!v31)
        {
LABEL_6:
          __swift_destroy_boxed_opaque_existential_1Tm(v43);

          goto LABEL_7;
        }

        v32 = v37;
        v33 = v31;
        sub_238031A44();

        v34 = v36;
        (*v25)(v36, v32, v2);
        sub_2380319E4();
        [v38 sendEvent:v27 timestamp:?];

        (*v26)(v34, v2);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v43);
LABEL_7:
    v24 += 32;
    --v23;
  }

  while (v23);

LABEL_17:
}

uint64_t sub_23802BE6C(uint64_t a1)
{
  v1 = sub_238028604(a1);
  if (qword_280C34B48 != -1)
  {
    swift_once();
  }

  v2 = qword_280C36C40;
  v3 = *algn_280C36C48;
  v4 = *(*algn_280C36C48 + 8);
  v5 = sub_2380321B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v4(v2, v3);
  v10 = *(v2 - 8);
  if ((*(v10 + 48))(v9, 1, v2) == 1)
  {
    result = (*(v6 + 8))(v9, v5);
    __break(1u);
  }

  else
  {
    v17 = v2;
    v18 = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    (*(v10 + 32))(boxed_opaque_existential_1, v9, v2);
    sub_237FB0034(&v16, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = sub_23802E63C(v1);

    (*(v3 + 32))(v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return result;
}

void sub_23802C098(uint64_t a1)
{
  v61 = sub_238031A64();
  v2 = *(v61 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v61);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v60 = sub_238031AB4();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for NotificationEvent(0);
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v48 = v2;
  if (v16)
  {
    v57 = v8;
    v63 = MEMORY[0x277D84F90];
    sub_238032324();
    v18 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    v54 = (v9 + 8);
    v55 = v19;
    v52 = (v2 + 56);
    v53 = (v2 + 16);
    v51 = (v2 + 48);
    v49 = (v2 + 8);
    v56 = v15;
    v20 = v61;
    do
    {
      sub_23802E334(v18, v15, type metadata accessor for NotificationEvent);
      v25 = v59;
      sub_238031AA4();
      sub_238031A74();
      (*v54)(v25, v60);
      v26 = v15;
      v27 = v57;
      (*v53)(v57, v26, v20);
      (*v52)(v27, 0, 1, v20);
      v28 = &v26[*(v58 + 20)];
      v29 = *v28;
      v30 = *(v28 + 1);
      v31 = &v26[*(v58 + 32)];
      v32 = *(v31 + 1);
      v62 = *v31;
      v33 = sub_238031E74();

      if ((*v51)(v27, 1, v20) == 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = sub_2380319F4();
        (*v49)(v27, v20);
      }

      v35 = sub_238031E74();
      if (v32)
      {
        v21 = sub_238031E74();
      }

      else
      {
        v21 = 0;
      }

      v22 = objc_allocWithZone(MEMORY[0x277CF1388]);
      v23 = sub_238031F84();
      [v22 initWithUniqueID:v33 absoluteTimestamp:v34 usageType:1 bundleID:v35 notificationID:0 deviceID:v21 title:0 subtitle:0 body:0 badge:0 threadID:0 categoryID:0 sectionID:0 contactIDs:v23 isGroupMessage:0 parentBundleID:0 bodyLength:0];

      v15 = v56;
      sub_23802E39C(v56, type metadata accessor for NotificationEvent);
      sub_238032304();
      v24 = *(v63 + 16);
      sub_238032334();
      sub_238032344();
      sub_238032314();
      v18 += v55;
      --v16;
    }

    while (v16);
    v17 = v63;
  }

  v36 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v37 = [v36 Usage];
  swift_unknownObjectRelease();
  v38 = [v37 source];

  v39 = v61;
  if (!(v17 >> 62))
  {
    v40 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_13;
    }

LABEL_23:

    return;
  }

  v40 = sub_238032374();
  if (!v40)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = (v48 + 8);
    v43 = v50;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x2383E5440](v41, v17);
      }

      else
      {
        v45 = *(v17 + 8 * v41 + 32);
      }

      v46 = v45;
      v47 = [v45 absoluteTimestamp];
      if (v47)
      {
        v44 = v47;
        sub_238031A44();

        sub_2380319E4();
        [v38 sendEvent:v46 timestamp:?];

        (*v42)(v43, v39);
      }

      else
      {
      }

      ++v41;
    }

    while (v40 != v41);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_23802C6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v26[0] = MEMORY[0x277D84F90];
    sub_238032324();
    v6 = *(type metadata accessor for NotificationEvent(0) - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    while (1)
    {
      sub_2380289A4(v7, &v23);
      if (v2)
      {
        break;
      }

      v2 = 0;
      sub_238032304();
      v9 = *(v26[0] + 16);
      sub_238032334();
      sub_238032344();
      sub_238032314();
      v7 += v8;
      if (!--v3)
      {
        v4 = v26[0];
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (qword_280C34B48 != -1)
    {
      swift_once();
    }

    v10 = qword_280C36C40;
    v11 = *algn_280C36C48;
    v12 = *(*algn_280C36C48 + 8);
    v13 = sub_2380321B4();
    v29 = *(v13 - 8);
    v14 = *(v29 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = &v23 - v15;
    v12(v10, v11);
    v17 = *(v10 - 8);
    if ((*(v17 + 48))(v16, 1, v10) != 1)
    {
      v24 = v10;
      v25 = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, v10);
      sub_237FB0034(&v23, v26);
      v19 = v27;
      v20 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v21 = sub_23802E83C(v4);

      (*(v11 + 32))(v21, v19, v20);

      return __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    (*(v29 + 8))(v16, v13);
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23802C9BC(char a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_2380318F4();
  v13(v10, v2);
  v14 = sub_238031954();
  v16 = v15;
  v13(v12, v2);
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_238031E74();
  v19 = [v17 fileExistsAtPath_];

  if ((a1 & 1) == 0)
  {
    if (!v19)
    {

      goto LABEL_26;
    }

    v31 = sub_238031E74();

    aBlock = 0;
    v32 = [v17 removeItemAtPath:v31 error:&aBlock];

    if (!v32)
    {
      v40 = aBlock;
      goto LABEL_25;
    }

    v33 = qword_27DEE4D70;
    v34 = aBlock;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = qword_27DEE57D0;
    v47 = sub_238029168;
    v48 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2380291A0;
    v46 = &block_descriptor_2;
    v36 = _Block_copy(&aBlock);

    dispatch_sync(v35, v36);
    _Block_release(v36);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else if (qword_280C35398 == -1)
    {
      goto LABEL_20;
    }

    swift_once();
LABEL_20:
    v37 = sub_238031DB4();
    __swift_project_value_buffer(v37, qword_280C36C68);
    v28 = sub_238031D94();
    v38 = sub_238032114();
    if (os_log_type_enabled(v28, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_237FA1000, v28, v38, "Deleted test Biome directory", v39, 2u);
      MEMORY[0x2383E5E30](v39, -1, -1);
    }

    goto LABEL_13;
  }

  if ((v19 & 1) == 0)
  {
    v20 = sub_238031E74();
    aBlock = 0;
    v21 = [v17 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&aBlock];

    v22 = aBlock;
    if (!v21)
    {
      v40 = v22;

LABEL_25:
      sub_238031864();

      swift_willThrow();
      goto LABEL_26;
    }
  }

  if (qword_27DEE4D70 != -1)
  {
    swift_once();
  }

  v23 = qword_27DEE57D0;
  v24 = swift_allocObject();
  *(v24 + 16) = v14;
  *(v24 + 24) = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_23802E20C;
  *(v25 + 24) = v24;
  v47 = sub_23802E228;
  v48 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2380291A0;
  v46 = &block_descriptor_34_0;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v23, v26);
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (qword_280C35398 != -1)
  {
LABEL_28:
    swift_once();
  }

  v27 = sub_238031DB4();
  __swift_project_value_buffer(v27, qword_280C36C68);
  v28 = sub_238031D94();
  v29 = sub_238032114();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_237FA1000, v28, v29, "Created test Biome directory", v30, 2u);
    MEMORY[0x2383E5E30](v30, -1, -1);
  }

LABEL_13:

LABEL_26:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_23802D0AC()
{
  v1 = sub_238031994();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &aBlock - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock - v10;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v12 = *(v2 + 8);
  v12(v6, v1);
  sub_2380318F4();
  v12(v9, v1);
  sub_238031954();
  v12(v11, v1);
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_238031E74();

  v15 = [v13 fileExistsAtPath_];

  if (!v15)
  {
    v16 = [BiomeLibrary() ScreenTime];
    swift_unknownObjectRelease();
    v17 = [v16 AppUsage];
    swift_unknownObjectRelease();
    v18 = [v17 pruner];

    v19 = sub_238031E74();
    v51 = sub_2380203CC;
    v52 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_23802E424;
    v50 = &block_descriptor_37_1;
    v20 = _Block_copy(&aBlock);

    [v18 deleteWithPolicy:v19 eventsPassingTest:v20];

    _Block_release(v20);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else
    {
      v21 = [BiomeLibrary() App];
      swift_unknownObjectRelease();
      v22 = [v21 MediaUsage];
      swift_unknownObjectRelease();
      v23 = [v22 pruner];

      v24 = sub_238031E74();
      v51 = sub_2380203CC;
      v52 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_23802E424;
      v50 = &block_descriptor_40;
      v25 = _Block_copy(&aBlock);

      [v23 deleteWithPolicy:v24 eventsPassingTest:v25];

      _Block_release(v25);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v26 = [BiomeLibrary() App];
        swift_unknownObjectRelease();
        v27 = [v26 WebUsage];
        swift_unknownObjectRelease();
        v28 = [v27 pruner];

        v29 = sub_238031E74();
        v51 = sub_2380203CC;
        v52 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v48 = 1107296256;
        v49 = sub_23802E424;
        v50 = &block_descriptor_43_1;
        v30 = _Block_copy(&aBlock);

        [v28 deleteWithPolicy:v29 eventsPassingTest:v30];

        _Block_release(v30);
        if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
        {
          v31 = [BiomeLibrary() Device];
          swift_unknownObjectRelease();
          v32 = [v31 Display];
          swift_unknownObjectRelease();
          v33 = [v32 Backlight];
          swift_unknownObjectRelease();
          v34 = [v33 pruner];

          v35 = sub_238031E74();
          v51 = sub_2380203CC;
          v52 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v48 = 1107296256;
          v49 = sub_23802E424;
          v50 = &block_descriptor_46_1;
          v36 = _Block_copy(&aBlock);

          [v34 deleteWithPolicy:v35 eventsPassingTest:v36];

          _Block_release(v36);
          if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
          {
            v37 = [BiomeLibrary() Media];
            swift_unknownObjectRelease();
            v38 = [v37 NowPlaying];
            swift_unknownObjectRelease();
            v39 = [v38 pruner];

            v40 = sub_238031E74();
            v51 = sub_2380203CC;
            v52 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v48 = 1107296256;
            v49 = sub_23802E424;
            v50 = &block_descriptor_49;
            v41 = _Block_copy(&aBlock);

            [v39 deleteWithPolicy:v40 eventsPassingTest:v41];

            _Block_release(v41);
            if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
            {
              v42 = [BiomeLibrary() Notification];
              swift_unknownObjectRelease();
              v43 = [v42 Usage];
              swift_unknownObjectRelease();
              v44 = [v43 pruner];

              v45 = sub_238031E74();
              v51 = sub_2380203CC;
              v52 = 0;
              aBlock = MEMORY[0x277D85DD0];
              v48 = 1107296256;
              v49 = sub_23802E424;
              v50 = &block_descriptor_52_0;
              v46 = _Block_copy(&aBlock);

              [v44 deleteWithPolicy:v45 eventsPassingTest:v46];

              _Block_release(v46);
              if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
              {
                return;
              }

LABEL_18:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_23802C9BC(0);
  if (!v0)
  {
    sub_23802C9BC(1);
  }
}

id sub_23802DA78()
{
  result = [objc_opt_self() keyPathForBacklightOnStatus];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v1 = result;
  result = [objc_opt_self() userContext];
  if (result)
  {
    v2 = result;
    sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    v3 = sub_238032164();
    [v2 setObject:v3 forContextualKeyPath:v1];

    v4 = sub_238025E0C();
    v5 = v4;
    v26 = v1;
    if (v4 >> 62)
    {
LABEL_18:
      v6 = sub_238032374();
      if (v6)
      {
LABEL_5:
        v7 = 0;
        v29 = v5 & 0xFFFFFFFFFFFFFF8;
        v30 = v5 & 0xC000000000000001;
        v27 = v6;
        v28 = v5;
        while (1)
        {
          if (v30)
          {
            v8 = MEMORY[0x2383E5440](v7, v5);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v7 >= *(v29 + 16))
            {
              goto LABEL_17;
            }

            v8 = *(v5 + 8 * v7 + 32);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          v31 = v8;
          v38 = v9;
          if (qword_280C34B48 != -1)
          {
            swift_once();
          }

          v10 = qword_280C36C40;
          v11 = *algn_280C36C48;
          v12 = *(*algn_280C36C48 + 8);
          v13 = sub_2380321B4();
          v14 = *(v13 - 8);
          v15 = *(v14 + 64);
          MEMORY[0x28223BE20](v13);
          v17 = &v25 - v16;
          v12(v10, v11);
          v18 = *(v10 - 8);
          if ((*(v18 + 48))(v17, 1, v10) == 1)
          {
            break;
          }

          v33 = v10;
          v34 = v11;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
          (*(v18 + 32))(boxed_opaque_existential_1, v17, v10);
          sub_237FB0034(&v32, v35);
          v20 = v36;
          v21 = v37;
          __swift_project_boxed_opaque_existential_1(v35, v36);
          v22 = *(v11 + 16);
          v23 = v31;
          v24 = v31;
          v22(v23, 0, v20, v21);

          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          ++v7;
          v5 = v28;
          if (v38 == v27)
          {
            goto LABEL_19;
          }
        }

        result = (*(v14 + 8))(v17, v13);
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_23802DE24()
{
  result = sub_238031654();
  if (v1 <= 0x3F)
  {
    result = sub_238031B94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23802DEE0()
{
  sub_238031994();
  if (v0 <= 0x3F)
  {
    sub_238031654();
    if (v1 <= 0x3F)
    {
      sub_238031B94();
      if (v2 <= 0x3F)
      {
        sub_238018888(319, &qword_280C35380);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23802DFD4()
{
  sub_238018888(319, &qword_27DEE5808);
  if (v0 <= 0x3F)
  {
    sub_238018888(319, &qword_280C35380);
    if (v1 <= 0x3F)
    {
      sub_238031A64();
      if (v2 <= 0x3F)
      {
        sub_238031B94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23802E0D8()
{
  sub_238031A64();
  if (v0 <= 0x3F)
  {
    sub_238031B94();
    if (v1 <= 0x3F)
    {
      sub_238018888(319, &qword_280C35380);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23802E19C()
{
  result = qword_27DEE5828;
  if (!qword_27DEE5828)
  {
    sub_238032124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5828);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23802E20C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2380291C8();
}

uint64_t sub_23802E228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_23802E250()
{
  result = qword_27DEE5858;
  if (!qword_27DEE5858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5850, &unk_238036600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5858);
  }

  return result;
}

uint64_t sub_23802E2CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23802E334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23802E39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_23802E448(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_238032374();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_23800F154(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2383E5440](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_23800F154((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_237FFCE24(0, &qword_280C350B8, 0x277D08268);
        v16 = &off_284AE4B10;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_237FB0034(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_23800F154((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_237FFCE24(0, &qword_280C350B8, 0x277D08268);
        v16 = &off_284AE4B10;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_237FB0034(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_23802E650(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_238032374();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_23800F1D4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x2383E5440](i, a1);
        sub_237FFCE24(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23800F1D4((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_237FC156C(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_237FFCE24(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_23800F1D4((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_237FC156C(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_23802E83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_23800F1D4(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5898, &qword_2380366F8);
      swift_dynamicCast();
      v11 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_23800F1D4((v7 > 1), v8 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      sub_237FC156C(&v10, (v2 + 32 * v8 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_23802E94C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v4 = [v2 fetchFamilyCircleWithError_];
  v5 = v10[0];
  if (v4)
  {
    v6 = v4;
    a1[3] = sub_237FFCE24(0, &qword_280C350C0, 0x277D08248);
    a1[4] = &off_284AE4B28;
    *a1 = v6;
    result = v5;
  }

  else
  {
    v8 = v10[0];
    sub_238031864();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_23802EA50()
{
  v1 = [*v0 members];
  sub_237FFCE24(0, &qword_280C350B8, 0x277D08268);
  v2 = sub_238031F94();

  v3 = sub_23802E448(v2);

  return v3;
}

uint64_t sub_23802EBB4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4)
{
  swift_beginAccess();
  v6 = *a3;
  if (v6 == 2)
  {
    v8[3] = &type metadata for Feature.FeatureFlags;
    v8[4] = sub_237FBEFF4();
    LOBYTE(v8[0]) = a4;
    LOBYTE(v6) = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return v6 & 1;
}

uint64_t sub_23802EC40(unsigned __int8 *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1;
  if (v4 == 2)
  {
    v6[3] = &type metadata for Feature.FeatureFlags;
    v6[4] = sub_237FBEFF4();
    LOBYTE(v6[0]) = a2;
    LOBYTE(v4) = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return v4 & 1;
}

const char *sub_23802ECCC()
{
  v1 = "DeviceActivityBiome";
  if (*v0 != 1)
  {
    v1 = "DeviceActivityUI";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "DeviceActivity";
  }
}

uint64_t static Feature.overrideDeviceActivityEnabled.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DEE58A0 = a1;
  return result;
}

uint64_t static Feature.overrideDeviceActivityBiomeEnabled.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DEE58A1 = a1;
  return result;
}

uint64_t static Feature.overrideDeviceActivityUIEnabled.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DEE58A2 = a1;
  return result;
}

id Feature.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Feature.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Feature();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Feature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Feature();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23802F0D4()
{
  result = qword_27DEE58A8;
  if (!qword_27DEE58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE58A8);
  }

  return result;
}

id sub_23802F12C@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() userKnowledgeStore];
  *a1 = result;
  return result;
}

id sub_23802F1A8(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 executeQuery:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_238031864();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_23802F288(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = sub_238031F84();
  }

  else
  {
    v2 = 0;
  }

  v7[0] = 0;
  v3 = [v1 saveObjects:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_238031864();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_23802F420()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([v0 synchronizeWithError_])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_238031864();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23802F57C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_238031DB4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_238031DA4();
}

uint64_t sub_23802F5F4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = sub_2380315D4();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23802F6D0;
  v12[3] = &block_descriptor_8;
  v10 = _Block_copy(v12);

  [v8 queryUsageDuringInterval:v9 partitionInterval:v10 completionHandler:a1];
  _Block_release(v10);
}

uint64_t sub_23802F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_237FFCE24(0, &qword_27DEE58B8, 0x277D77B50);
    v8 = sub_238031F94();
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54D0, &qword_238035880);
    a3 = sub_238031DF4();
  }

  if (a4)
  {
    sub_237FFCE24(0, &qword_27DEE58B8, 0x277D77B50);
    a4 = sub_238031F94();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

uint64_t sub_23802F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23801BC34;
  v18.n128_f64[0] = a8;

  return (sub_23802FBEC)(a1, a2, a3, a4, a5, a6, a7, v18);
}

uint64_t sub_23802F900(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23802F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v19 = *(a10 + 24);
  v24 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_23801BC34;
  v22.n128_f64[0] = a9;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8, v22, a10);
}

id sub_23802FB14()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v0 = [swift_getObjCClassFromMetadata() getLocalDeviceIdentifierAndReturnError_];
  v1 = v7[0];
  if (v0)
  {
    v2 = v0;
    v3 = sub_238031EA4();
    v4 = v1;
  }

  else
  {
    v3 = v7[0];
    sub_238031864();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_23802FBEC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v8[24] = v13;
  v24 = sub_2380315D4();
  v8[25] = v24;
  sub_238018114(a3, v13);
  v14 = sub_238031A64();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v16 = sub_2380319F4();
    (*(v15 + 8))(v13, v14);
  }

  v8[26] = v16;
  v17 = sub_238031F84();
  v8[27] = v17;
  sub_237FFCE24(0, &qword_280C34A28, 0x277CF9658);
  v18 = sub_238031DE4();
  v8[28] = v18;
  v19 = sub_238031DE4();
  v8[29] = v19;
  v8[22] = a7;
  v8[23] = a8;
  v8[18] = MEMORY[0x277D85DD0];
  v8[19] = 1107296256;
  v8[20] = sub_238023A54;
  v8[21] = &block_descriptor_3;
  v20 = _Block_copy(v8 + 18);
  v8[30] = v20;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[2] = v8;
  v8[3] = sub_23802FF24;
  v22 = swift_continuation_init();
  v8[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE58B0, &unk_238036890);
  v8[14] = v22;
  v8[10] = MEMORY[0x277D85DD0];
  v8[11] = 1107296256;
  v8[12] = sub_23802F900;
  v8[13] = &block_descriptor_5;

  [ObjCClassFromMetadata queryUsageDuringInterval:v24 partitionInterval:v16 adjustedStartDate:v17 eventStreams:v18 categoryByBundleIdentifier:v19 categoryByWebDomain:v20 usageReportHandler:a1 completionHandler:v8 + 10];

  return MEMORY[0x282200938](v8 + 2);
}

uint64_t sub_23802FF24()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);
  v5 = *(*v0 + 208);
  v6 = *(*v0 + 200);
  v7 = *(*v0 + 192);
  v11 = *v0;
  _Block_release(*(*v0 + 240));

  v8 = *(v1 + 184);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_237FD4FB0(a2 + 32, a1 + 32);
}

size_t sub_238030118(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v38 = sub_238031654();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v29)
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v14;
    }

    v15 = v10;
    v40 = MEMORY[0x277D84F90];
    result = sub_23800F258(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v30 = v3;
    v14 = v40;
    v35 = v15 & 0xC000000000000001;
    v17 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
    v18 = v15;
    v3 = 0;
    v19 = *(v17 + 24);
    v31 = v15 & 0xFFFFFFFFFFFFFF8;
    v32 = (v5 + 16);
    v33 = v19;
    v5 += 8;
    v34 = v15;
    while (1)
    {
      v20 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v35)
      {
        v21 = MEMORY[0x2383E5440](v3, v18);
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_16;
        }

        v21 = *(v18 + 8 * v3 + 32);
      }

      v22 = v21;
      v23 = v38;
      v24 = v36;
      (*v32)(v36, v39 + v33, v38);
      sub_238030DFC(v24, v12);
      (*v5)(v24, v23);

      v40 = v14;
      v25 = v12;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_23800F258(v26 > 1, v27 + 1, 1);
        v14 = v40;
      }

      *(v14 + 16) = v27 + 1;
      sub_238031508(v25, v14 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, type metadata accessor for _DeviceActivityData.CategoryActivity);
      ++v3;
      v18 = v34;
      v12 = v25;
      if (v20 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v28 = v10;
    v29 = sub_238032374();
    v10 = v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_238030420@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a1;
  v94 = a3;
  v95 = a4;
  v92 = a2;
  v102 = a5;
  v5 = sub_238031654();
  v103 = *(v5 - 8);
  v6 = v103[8];
  v7 = MEMORY[0x28223BE20](v5);
  v100 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v99 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = (&v89 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v98 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v89 - v26;
  v28 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v35 = &v89 - v34;
  sub_237FA90E4(v96, v27, &qword_27DEE54A8, &qword_2380359E0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v36 = v97;
    sub_237FA5750(v27, &qword_27DEE54A8, &qword_2380359E0);
    sub_237FA90E4(v92, v21, &qword_27DEE50C8, &qword_2380357C0);
    v37 = v103;
    v38 = v103[6];
    if (v38(v21, 1, v5) == 1)
    {
      v39 = [v36 interval];
      v40 = v101;
      sub_2380315F4();

      v41 = v38(v21, 1, v5);
      v42 = v99;
      if (v41 != 1)
      {
        sub_237FA5750(v21, &qword_27DEE50C8, &qword_2380357C0);
      }
    }

    else
    {
      v40 = v101;
      (v37[4])(v101, v21, v5);
      v42 = v99;
    }

    v53 = v37[2];
    v96 = v37 + 2;
    v93 = v53;
    v53(v100, v40, v5);
    [v36 screenTime];
    v55 = v54;
    sub_238031644();
    if (v56 < v55)
    {
      v55 = v56;
    }

    v57 = [v36 longestSession];
    if (v57)
    {
      v58 = v98;
      v59 = v57;
      sub_2380315F4();

      v60 = 0;
    }

    else
    {
      v60 = 1;
      v58 = v98;
    }

    v65 = 1;
    v92 = v37[7];
    v92(v58, v60, 1, v5);
    v66 = [v36 firstPickup];
    v90 = v5;
    if (v66)
    {
      v67 = v66;
      sub_238031A44();

      v65 = 0;
    }

    v68 = sub_238031A64();
    v89 = *(*(v68 - 8) + 56);
    v89(v42, v65, 1, v68);
    v91 = [v36 pickupsWithoutApplicationUsage];
    v69 = [v36 categoryUsage];
    sub_237FFCE24(0, &unk_280C349F8, 0x277D77B10);
    v70 = sub_238031F94();

    MEMORY[0x28223BE20](v71);
    *(&v89 - 2) = v40;
    sub_237FE72F0(sub_238031120, (&v89 - 4), v70);
    v73 = v72;

    v97 = xmmword_238033ED0;
    *v33 = xmmword_238033ED0;
    v74 = v28[7];
    v75 = v90;
    v92(v33 + v74, 1, 1, v90);
    v76 = v28[8];
    v89(v33 + v76, 1, 1, v68);
    sub_237FA38D0(*v33, v33[1]);
    *v33 = v97;
    v77 = v95;
    v33[2] = v94;
    v33[3] = v77;
    v78 = v100;
    v93(v33 + v28[6], v100, v75);
    *(v33 + v28[9]) = v55;

    v79 = v98;
    sub_237FD3ACC(v98, v33 + v74, &qword_27DEE50C8, &qword_2380357C0);
    v80 = v99;
    sub_237FD3ACC(v99, v33 + v76, &qword_27DEE51E0, &qword_2380365F0);
    *(v33 + v28[10]) = v91;
    v104 = v73;

    sub_237FCBD54(&v104);

    sub_237FA5750(v80, &qword_27DEE51E0, &qword_2380365F0);
    sub_237FA5750(v79, &qword_27DEE50C8, &qword_2380357C0);
    v81 = v103[1];
    v81(v78, v75);
    *(v33 + v28[11]) = v104;
    sub_238031508(v33, v102, type metadata accessor for _DeviceActivityData.ActivitySegment);
    return (v81)(v101, v75);
  }

  else
  {
    v43 = v103;
    sub_238031508(v27, v35, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v44 = v97;
    [v97 screenTime];
    v46 = v45;
    v47 = &v35[v28[6]];
    sub_238031644();
    if (v48 >= v46)
    {
      v48 = v46;
    }

    *&v35[v28[9]] = v48;
    v49 = [v44 longestSession];
    v50 = v44;
    if (v49)
    {
      v51 = v49;
      sub_2380315F4();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v61 = 1;
    (v43[7])(v23, v52, 1, v5);
    sub_237FA39BC(v23, &v35[v28[7]], &qword_27DEE50C8, &qword_2380357C0);
    v62 = [v50 firstPickup];
    v63 = v93;
    if (v62)
    {
      v64 = v62;
      sub_238031A44();

      v61 = 0;
    }

    v83 = sub_238031A64();
    (*(*(v83 - 8) + 56))(v63, v61, 1, v83);
    sub_237FA39BC(v63, &v35[v28[8]], &qword_27DEE51E0, &qword_2380365F0);
    *&v35[v28[10]] = [v50 pickupsWithoutApplicationUsage];
    v84 = [v50 categoryUsage];
    sub_237FFCE24(0, &unk_280C349F8, 0x277D77B10);
    v85 = sub_238031F94();

    v86 = sub_238030118(v85, v35);

    v87 = v28[11];
    v88 = *&v35[v87];

    *&v35[v87] = v86;
    return sub_238031508(v35, v102, type metadata accessor for _DeviceActivityData.ActivitySegment);
  }
}

uint64_t sub_238030DFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = [v3 categoryIdentifier];
  v11 = sub_238031EA4();
  v31 = v12;
  v32 = v11;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v30 = *(*(v13 - 8) + 56);
  v30(v9, 1, 1, v13);
  [v3 totalUsageTime];
  v15 = v14;
  sub_238031644();
  if (v16 < v15)
  {
    v15 = v16;
  }

  v17 = [v3 applicationUsage];
  sub_237FFCE24(0, &qword_27DEE58C0, 0x277D77B08);
  v18 = sub_238031F94();

  v36 = a1;
  sub_237FE7344(sub_238031570, v35, v18);
  v20 = v19;

  v21 = [v3 webUsage];
  sub_237FFCE24(0, &qword_27DEE58C8, 0x277D77B70);
  v22 = sub_238031F94();

  v34 = a1;
  sub_237FE75D0(sub_2380315A4, v33, v22);
  v24 = v23;

  v25 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v26 = v25[5];
  v30(a2 + v26, 1, 1, v13);
  v27 = v31;
  *a2 = v32;
  a2[1] = v27;
  sub_237FD3ACC(v9, a2 + v26, &qword_27DEE51D0, &qword_238034400);
  *(a2 + v25[6]) = v15;
  v37[0] = v20;

  sub_237FAA8D4(v37);

  *(a2 + v25[7]) = v37[0];
  v37[0] = v24;

  sub_237FAAF84(v37);

  result = sub_237FA5750(v9, &qword_27DEE51D0, &qword_238034400);
  *(a2 + v25[8]) = v37[0];
  return result;
}

uint64_t sub_238031120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  return sub_238030DFC(v3, a2);
}

uint64_t sub_238031154@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = [v1 canonicalBundleIdentifier];
  v9 = sub_238031EA4();
  v24 = v10;
  v25 = v9;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  [v1 totalUsageTime];
  v14 = v13;
  sub_238031644();
  if (v15 < v14)
  {
    v14 = v15;
  }

  v16 = [v1 totalPickups];
  v17 = [v2 totalUserNotifications];
  v18 = [v2 applicationUsageTrusted];
  v19 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v20 = v19[5];
  v12(a1 + v20, 1, 1, v11);
  v21 = (a1 + v19[6]);
  v22 = v24;
  *a1 = v25;
  a1[1] = v22;
  result = sub_237FA39BC(v7, a1 + v20, &qword_27DEE51C0, &unk_238034790);
  *v21 = 0;
  v21[1] = 0;
  *(a1 + v19[7]) = v14;
  *(a1 + v19[8]) = v16;
  *(a1 + v19[9]) = v17;
  *(a1 + v19[10]) = v18;
  return result;
}

uint64_t sub_238031348@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = *a1;
  v9 = [v8 domainIdentifier];
  v21 = sub_238031EA4();
  v11 = v10;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v13 = *(*(v12 - 8) + 56);
  v13(v7, 1, 1, v12);
  [v8 totalUsageTime];
  v15 = v14;
  sub_238031644();
  if (v16 < v15)
  {
    v15 = v16;
  }

  v17 = [v8 webUsageTrusted];
  v18 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v19 = v18[5];
  v13(a2 + v19, 1, 1, v12);
  *a2 = v21;
  a2[1] = v11;
  result = sub_237FA39BC(v7, a2 + v19, &qword_27DEE51B0, &qword_2380343D0);
  *(a2 + v18[6]) = v15;
  *(a2 + v18[7]) = v17;
  return result;
}

uint64_t sub_238031508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238031570@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  return sub_238031154(a2);
}