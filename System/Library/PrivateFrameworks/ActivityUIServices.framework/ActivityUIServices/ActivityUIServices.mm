id sub_18E611054(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_18E6110FC()
{
  result = sub_18E65F8F0();
  qword_1ED7650F0 = result;
  return result;
}

uint64_t sub_18E611134()
{
  result = sub_18E65F8F0();
  qword_1EAC89508 = result;
  return result;
}

uint64_t sub_18E6111FC()
{
  result = sub_18E65F8F0();
  qword_1ED764F88 = result;
  return result;
}

uint64_t sub_18E611234()
{
  result = sub_18E65F8F0();
  qword_1ED764F70 = result;
  return result;
}

uint64_t sub_18E61126C()
{
  result = sub_18E65F8F0();
  qword_1EAC89520 = result;
  return result;
}

uint64_t sub_18E6112A4()
{
  result = sub_18E65F8F0();
  qword_1EAC89330 = result;
  return result;
}

void ActivityAlertClient.presentAlert(activityIdentifier:payload:options:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v33 - v14;
  if (qword_1EAC89370 != -1)
  {
    swift_once();
  }

  v16 = sub_18E65F6E0();
  __swift_project_value_buffer(v16, qword_1EAC89378);

  v17 = sub_18E65F6C0();
  v18 = sub_18E65FA60();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a3;
    v20 = a5;
    v21 = v19;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_18E61173C(a1, a2, aBlock);
    _os_log_impl(&dword_18E60F000, v17, v18, "[Activity: %s] Presenting alert", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x193AD1140](v22, -1, -1);
    v23 = v21;
    a5 = v20;
    a3 = v34;
    MEMORY[0x193AD1140](v23, -1, -1);
  }

  v24 = sub_18E65F660();
  v25 = sub_18E65F5D0();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v15, a3, v25);
  (*(v26 + 56))(v15, 0, 1, v25);
  v27 = objc_allocWithZone(type metadata accessor for ActivityAlertProvider());
  v28 = sub_18E611A08(a1, a2, 0, v24, v15);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    aBlock[4] = a5;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E614A74;
    aBlock[3] = &block_descriptor_0;
    v31 = _Block_copy(aBlock);
    v32 = v28;

    [v30 activityWithAlertClient:v7 presentAlertProvider:v32 completion:v31];
    swift_unknownObjectRelease();

    _Block_release(v31);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18E61173C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18E611808(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_18E611960(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_18E611808(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18E639DB8(a5, a6);
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
    result = sub_18E65FCA0();
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_18E611960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ActivityAlertProvider()
{
  result = qword_1EAC894A0;
  if (!qword_1EAC894A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E611A08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v79 = a5;
  v76 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v67 - v12;
  v13 = sub_18E65F400();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_18E65F640();
  v74 = *(v77 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x1EEE9AC00](v77);
  v67 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v67 - v24;
  v26 = sub_18E65F5D0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration] = 0;
  v30 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions] = 0;
  v31 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_alertConfiguration;
  v32 = sub_18E65F650();
  (*(*(v32 - 8) + 56))(&v6[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  v34 = v27;
  v35 = *(v27 + 56);
  v36 = v26;
  v35(&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload], 1, 1, v26);
  v37 = &v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier];
  *v37 = a1;
  *(v37 + 1) = a2;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_alertAction] = v76;
  swift_beginAccess();
  *&v6[v30] = a4;
  swift_beginAccess();
  v38 = a4;

  sub_18E612188(v79, &v6[v33]);
  swift_endAccess();
  if (a4)
  {
    LODWORD(a4) = [v38 breaksThroughFocus];
  }

  sub_18E6121F8(v79, v25);
  v39 = (*(v34 + 48))(v25, 1, v26);
  v40 = v77;
  if (v39 == 1)
  {

    sub_18E613CEC(v25, &qword_1EAC89D08, &qword_18E663F30);
    v41 = [objc_allocWithZone(MEMORY[0x1E69DA8E8]) initWithType_];
LABEL_22:
    v63 = v78;
    swift_beginAccess();
    v64 = *&v6[v63];
    *&v6[v63] = v41;

    v65 = type metadata accessor for ActivityAlertProvider();
    v80.receiver = v6;
    v80.super_class = v65;
    v66 = objc_msgSendSuper2(&v80, sel_init);
    sub_18E613CEC(v79, &qword_1EAC89D08, &qword_18E663F30);
    return v66;
  }

  LODWORD(v76) = a4;
  v42 = v75;
  (*(v34 + 32))(v75, v25, v26);
  v43 = v73;
  sub_18E65F5C0();
  v44 = sub_18E65F630();
  v45 = *(v74 + 8);
  v45(v43, v40);
  if (v44)
  {
    (*(v34 + 8))(v42, v36);

    v41 = 0;
    goto LABEL_22;
  }

  v46 = v72;
  sub_18E65F5C0();
  v47 = sub_18E65F620();
  v48 = v46;
  v50 = v49;
  v45(v48, v40);
  if (!v50)
  {

    v57 = v67;
    sub_18E65F5C0();
    v58 = sub_18E65F610();
    v59 = v40;
    v41 = v58;
    v45(v57, v59);
    if (!v41)
    {
      v41 = [objc_allocWithZone(MEMORY[0x1E69DA8E8]) initWithType_];
    }

    goto LABEL_18;
  }

  if (v76)
  {
    v51 = 13;
  }

  else
  {
    v51 = 17;
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E69DA8E8]) initWithType_];
  v52 = sub_18E65F5B0();
  v53 = v69;
  sub_18E612268(v47, v50, v52, v54, v69);
  v56 = v70;
  v55 = v71;
  if ((*(v70 + 48))(v53, 1, v71) == 1)
  {

    sub_18E613CEC(v53, &qword_1EAC89D48, &unk_18E664290);
LABEL_17:
    v42 = v75;
LABEL_18:
    if (v76)
    {
      if (v41)
      {
        [v41 setShouldIgnoreRingerSwitch_];
        [v41 setShouldRepeat_];
        [v41 setMaximumDuration_];
      }
    }

    (*(v34 + 8))(v42, v36);
    goto LABEL_22;
  }

  result = (*(v56 + 32))(v68, v53, v55);
  if (v41)
  {

    v61 = v68;
    v62 = sub_18E65F3B0();
    [v41 setExternalToneFileURL_];

    (*(v56 + 8))(v61, v55);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E612188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E6121F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E612268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a1;
  v157 = a2;
  v158 = a5;
  v150 = sub_18E65F3A0();
  v149 = *(v150 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E65F400();
  v10 = *(v9 - 8);
  v161 = v9;
  v162 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v151 = v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = v139 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v147 = v139 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v155 = v139 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v153 = v139 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v139 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v139 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v139 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = v139 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = v139 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = v139 - v41;
  v43 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v159 = a3;
  v160 = a4;
  v44 = sub_18E613228(a3, a4, 0);
  v58 = v44;
  v59 = v37;
  v141 = v40;
  v60 = v153;
  v143 = v31;
  v144 = v28;
  v140 = v25;
  v146 = v34;
  v152 = v42;
  if (v44)
  {
    v61 = v162 + 56;
    v62 = 1;
    v63 = v152;
    v145 = *(v162 + 56);
    v145(v152, 1, 1, v161);
    v64 = v58;
    v65 = [v64 dataContainerURL];
    if (v65)
    {
      v66 = v65;
      sub_18E65F3D0();

      v62 = 0;
    }

    v67 = v157;
    v68 = v161;
    v69 = v145;
    v145(v59, v62, 1, v161);
    v70 = v141;
    sub_18E613304(v156, v67, v59, v141);
    sub_18E613C14(v59);
    v71 = v61;
    v73 = v162 + 48;
    v72 = *(v162 + 48);
    v74 = v72(v70, 1, v68);
    v142 = v71;
    if (v74 == 1)
    {
      sub_18E613C14(v70);
    }

    else
    {
      (*(v162 + 32))(v60, v70, v68);
      v87 = v60;
      v88 = v146;
      sub_18E65F390();
      (*(v162 + 8))(v87, v68);
      v69(v88, 0, 1, v68);
      sub_18E613C7C(v88, v63);
    }

    v89 = v143;
    sub_18E6139D8(v63, v143);
    v90 = v72(v89, 1, v68);
    sub_18E613C14(v89);
    v143 = v73;
    v153 = v72;
    if (v90 != 1)
    {
LABEL_33:
      v105 = v140;
      sub_18E6139D8(v63, v140);
      v106 = v64;
      if (v72(v105, 1, v68) == 1)
      {
        sub_18E613C14(v105);
        v107 = [v64 URL];
        v108 = v154;
        sub_18E65F3D0();

        v109 = objc_allocWithZone(MEMORY[0x1E698E640]);
        v110 = sub_18E65F3B0();
        v111 = *(v162 + 8);
        v111(v108, v68);
        v112 = [v109 initWithURL_];

        if (v112)
        {
          v113 = sub_18E65F8F0();
          v114 = [v112 pathForResource:v113 ofType:0];

          if (v114)
          {
            sub_18E65F900();

            v115 = v146;
            v145(v146, 1, 1, v68);
            (*(v149 + 104))(v148, *MEMORY[0x1E6968F70], v150);
            v116 = v151;
            sub_18E65F3F0();
            v117 = [v106 URL];

            v118 = v154;
            sub_18E65F3D0();

            LOBYTE(v117) = sub_18E613A48();
            v111(v118, v68);
            if (v117)
            {
              sub_18E65F390();

              v111(v116, v68);
              v145(v115, 0, 1, v68);
              sub_18E613C7C(v115, v63);
            }

            else
            {
              v111(v116, v68);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        sub_18E613C14(v105);
      }

      v119 = v158;
      if (qword_1EAC89398 != -1)
      {
        swift_once();
      }

      v120 = sub_18E65F6E0();
      __swift_project_value_buffer(v120, qword_1EAC893A0);
      v121 = sub_18E65F6C0();
      v122 = sub_18E65FA50();
      v123 = os_log_type_enabled(v121, v122);
      v124 = v154;
      if (v123)
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v163 = v126;
        *v125 = 136380675;
        v127 = v152;
        swift_beginAccess();
        v128 = (v153)(v127, 1, v68);
        v129 = 0;
        v130 = 0;
        if (!v128)
        {
          (*(v162 + 16))(v124, v152, v68);
          v129 = sub_18E65F3E0();
          v130 = v131;
          (*(v162 + 8))(v124, v68);
        }

        v164[0] = v129;
        v164[1] = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89FF0, &qword_18E6649C0);
        v132 = sub_18E65F910();
        v134 = sub_18E61173C(v132, v133, &v163);

        *(v125 + 4) = v134;
        _os_log_impl(&dword_18E60F000, v121, v122, "External sound url: %{private}s", v125, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v126);
        MEMORY[0x193AD1140](v126, -1, -1);
        MEMORY[0x193AD1140](v125, -1, -1);
      }

      v135 = v152;
      swift_beginAccess();
      sub_18E6139D8(v135, v119);
      return sub_18E613C14(v135);
    }

    v139[0] = v64;
    v91 = [v64 groupContainerURLs];
    v92 = sub_18E65F8B0();

    v93 = 1 << *(v92 + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = v94 & *(v92 + 64);
    v96 = (v93 + 63) >> 6;
    v139[1] = v162 + 16;
    v141 = (v162 + 32);

    v97 = 0;
    v98 = v155;
    if (v95)
    {
      while (1)
      {
        v99 = v97;
        v100 = v162;
LABEL_28:
        v101 = v161;
        (*(v100 + 16))(v98, *(v92 + 56) + *(v100 + 72) * (__clz(__rbit64(v95)) | (v99 << 6)), v161);
        v102 = *(v162 + 32);
        v103 = v146;
        v102(v146, v98, v101);
        v145(v103, 0, 1, v101);
        v104 = v144;
        sub_18E613304(v156, v157, v103, v144);
        sub_18E613C14(v103);
        v72 = v153;
        if ((v153)(v104, 1, v101) != 1)
        {
          break;
        }

        v95 &= v95 - 1;
        sub_18E613C14(v104);
        v97 = v99;
        v98 = v155;
        if (!v95)
        {
          goto LABEL_24;
        }
      }

      v136 = v147;
      v68 = v161;
      v102(v147, v104, v161);
      v137 = v146;
      sub_18E65F390();

      (*(v162 + 8))(v136, v68);
      v145(v137, 0, 1, v68);
      v138 = v137;
      v72 = v153;
      v63 = v152;
      sub_18E613C7C(v138, v152);
LABEL_32:
      v64 = v139[0];
      goto LABEL_33;
    }

LABEL_24:
    v100 = v162;
    while (1)
    {
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v99 >= v96)
      {

        v68 = v161;
        v63 = v152;
        goto LABEL_32;
      }

      v95 = *(v92 + 64 + 8 * v99);
      ++v97;
      if (v95)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    swift_once();
    v45 = sub_18E65F6E0();
    __swift_project_value_buffer(v45, qword_1EAC893A0);
    v46 = v160;

    v47 = v99;
    v48 = sub_18E65F6C0();
    v49 = sub_18E65FA50();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v161;
    v52 = v159;
    if (v50)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v164[0] = v54;
      *v53 = 136380931;
      *(v53 + 4) = sub_18E61173C(v52, v46, v164);
      *(v53 + 12) = 2080;
      swift_getErrorValue();
      v55 = sub_18E65FE40();
      v57 = sub_18E61173C(v55, v56, v164);

      *(v53 + 14) = v57;
      _os_log_impl(&dword_18E60F000, v48, v49, "Error finding the app record for bundle identifier: %{private}s: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v54, -1, -1);
      MEMORY[0x193AD1140](v53, -1, -1);
    }

    else
    {
    }

    return (*(v162 + 56))(v158, 1, 1, v51);
  }

  else
  {
    v77 = v159;
    v76 = v160;
    if (qword_1EAC89398 != -1)
    {
      swift_once();
    }

    v78 = sub_18E65F6E0();
    __swift_project_value_buffer(v78, qword_1EAC893A0);

    v79 = sub_18E65F6C0();
    v80 = sub_18E65FA50();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v161;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v164[0] = v84;
      *v83 = 136380675;
      *(v83 + 4) = sub_18E61173C(v77, v76, v164);
      _os_log_impl(&dword_18E60F000, v79, v80, "No application record created with bundle identifier: %{private}s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x193AD1140](v84, -1, -1);
      MEMORY[0x193AD1140](v83, -1, -1);
    }

    v85 = *(v162 + 56);
    v86 = v158;

    return v85(v86, 1, 1, v82);
  }
}

id sub_18E613228(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_18E65F8F0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_18E65F360();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_18E613304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v63 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v8 = &v52 - v7;
  v9 = sub_18E65F400();
  v10 = *(*(v9 - 8) + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v52 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v52 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v52 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v52 - v26;
  v28 = a3;
  v30 = v29;
  sub_18E6139D8(v28, v8);
  if ((*(v30 + 48))(v8, 1, v9) != 1)
  {
    v58 = a4;
    (*(v30 + 32))(v27, v8, v9);
    v57 = v27;
    sub_18E65F390();
    sub_18E65F3C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D50, &qword_18E6642A0);
    v32 = *(v30 + 72);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v55 = swift_allocObject();
    v34 = v55 + v33;
    sub_18E65F3C0();
    v54 = v32;
    sub_18E65F3C0();
    v35 = v30;
    v36 = *(v30 + 8);
    v36(v22, v9);
    v36(v25, v9);
    v56 = v35;
    v37 = *(v35 + 16);
    v59 = v34;
    v53 = v37;
    v37(v19, v34, v9);
    sub_18E65F3C0();
    v60 = v16;
    sub_18E65F390();
    sub_18E65F3E0();
    v36(v13, v9);
    v61 = v19;
    sub_18E65F390();
    sub_18E65F3E0();
    v36(v13, v9);
    LOBYTE(v33) = sub_18E65F950();

    if ((v33 & 1) != 0 && (v38 = sub_18E65F8F0(), v39 = BSIsSymbolicLinkAtPath(), v38, (v39 & 1) == 0))
    {
      v44 = [objc_opt_self() defaultManager];
      v45 = sub_18E65F8F0();

      v46 = [v44 fileExistsAtPath_];

      v40 = v61;
      if (v46)
      {
        goto LABEL_13;
      }
    }

    else
    {

      v40 = v61;
    }

    v36(v60, v9);
    v36(v40, v9);
    v53(v40, v59 + v54, v9);
    sub_18E65F3C0();
    sub_18E65F390();
    sub_18E65F3E0();
    v36(v13, v9);
    sub_18E65F390();
    sub_18E65F3E0();
    v36(v13, v9);
    v41 = sub_18E65F950();

    if (v41 & 1) == 0 || (v42 = sub_18E65F8F0(), v43 = BSIsSymbolicLinkAtPath(), v42, (v43))
    {

      v40 = v61;
LABEL_9:
      v36(v60, v9);
      v36(v40, v9);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v36(v57, v9);
      v31 = 1;
      a4 = v58;
LABEL_14:
      v30 = v56;
      return (*(v30 + 56))(a4, v31, 1, v9);
    }

    v47 = [objc_opt_self() defaultManager];
    v48 = sub_18E65F8F0();

    v49 = [v47 fileExistsAtPath_];

    v40 = v61;
    if ((v49 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    a4 = v58;
    v50 = v60;
    sub_18E65F390();
    v36(v50, v9);
    v36(v40, v9);
    v36(v57, v9);
    v31 = 0;
    goto LABEL_14;
  }

  sub_18E613C14(v8);
  v31 = 1;
  return (*(v30 + 56))(a4, v31, 1, v9);
}

uint64_t sub_18E6139D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18E613A48()
{
  v0 = sub_18E65F400();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E65F390();
  sub_18E65F3E0();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_18E65F390();
  sub_18E65F3E0();
  v5(v4, v0);
  v6 = sub_18E65F950();

  if ((v6 & 1) != 0 && (v7 = sub_18E65F8F0(), v8 = BSIsSymbolicLinkAtPath(), v7, !v8))
  {
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_18E65F8F0();

    v12 = [v10 fileExistsAtPath_];

    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_18E613C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E613C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E613CEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_18E613E68(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_18E65F8F0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_18E613EE8(uint64_t (*a1)(uint64_t))
{
  v3 = sub_18E65F5D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  swift_beginAccess();
  sub_18E6121F8(v1 + v12, v11);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_18E613CEC(v11, &qword_1EAC89D08, &qword_18E663F30);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    v14 = sub_18E613CEC(v11, &qword_1EAC89D08, &qword_18E663F30);
    v15 = a1(v14);
    (*(v4 + 8))(v7, v3);
    return v15;
  }
}

uint64_t sub_18E6140E0()
{
  v1 = sub_18E65F450();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18E65F5D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  swift_beginAccess();
  sub_18E6121F8(v0 + v15, v14);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_18E613CEC(v14, &qword_1EAC89D08, &qword_18E663F30);
    return 0;
  }

  else
  {
    (*(v7 + 16))(v10, v14, v6);
    sub_18E613CEC(v14, &qword_1EAC89D08, &qword_18E663F30);
    sub_18E65F5A0();
    (*(v7 + 8))(v10, v6);
    v17 = sub_18E65F430();
    (*(v2 + 8))(v5, v1);
    return v17;
  }
}

uint64_t sub_18E614464()
{
  v1 = sub_18E65F5D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  swift_beginAccess();
  sub_18E6121F8(v0 + v10, v9);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_18E613CEC(v9, &qword_1EAC89D08, &qword_18E663F30);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_18E613CEC(v9, &qword_1EAC89D08, &qword_18E663F30);
    v12 = sub_18E65F590();
    v14 = v13;
    (*(v2 + 8))(v5, v1);
    if (v14)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

Swift::Void __swiftcall ActivityAlertClient.dismissAlert(activityIdentifier:)(Swift::String activityIdentifier)
{
  v2 = v1;
  object = activityIdentifier._object;
  countAndFlagsBits = activityIdentifier._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  if (qword_1EAC89370 != -1)
  {
    swift_once();
  }

  v9 = sub_18E65F6E0();
  __swift_project_value_buffer(v9, qword_1EAC89378);

  v10 = sub_18E65F6C0();
  v11 = sub_18E65FA60();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_18E61173C(countAndFlagsBits, object, &v19);
    _os_log_impl(&dword_18E60F000, v10, v11, "[Activity: %s] Dismissing alert", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193AD1140](v13, -1, -1);
    MEMORY[0x193AD1140](v12, -1, -1);
  }

  v14 = sub_18E65F5D0();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = objc_allocWithZone(type metadata accessor for ActivityAlertProvider());

  v16 = sub_18E611A08(countAndFlagsBits, object, 1, 0, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong activityWithAlertClient:v2 dismissAlertProvider:v16];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_18E614A74(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_18E614B14(uint64_t a1, int a2)
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

uint64_t sub_18E614B34(uint64_t result, int a2, int a3)
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

id sub_18E614B5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  *a2 = v2;
  return v2;
}

void sub_18E614B74(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_18E61E100(v2);
}

id sub_18E614BA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *a2 = v2;
  return v2;
}

id sub_18E614BC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  *a2 = v2;
  return v2;
}

void sub_18E614BD8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_18E61E5C0(v2);
}

uint64_t sub_18E614C20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18E614C7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18E614D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_18E614D88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_18E614DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18E614E48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_18E614E80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  *a2 = v2;
  return v2;
}

id sub_18E614EB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  *a2 = v2;
  return v2;
}

id sub_18E614EF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  *a2 = v2;
  return v2;
}

id sub_18E614F28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  *a2 = v2;
  return v2;
}

__n128 sub_18E614F60@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E614FB8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_18E615010@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E615068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_18E6150BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_18E61510C()
{
  MEMORY[0x193AD11D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E615154()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E6151A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E6151E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E615224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18E615280(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void sub_18E615320(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  BSDispatchQueueAssertMain();
  sub_18E62CC9C(v2, 0);
}

void sub_18E615370(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_18E62975C(v2);
}

void sub_18E6153AC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_18E6297BC(v2);
}

uint64_t sub_18E615420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_18E615480@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_18E6154D8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_18E615574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_18E615610()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E615648()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E615688()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E6156C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_18E615700()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E615748()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E615780()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_18E6157B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E6157F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E615830()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_18E61590C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isArchiveContentReadyNumber];
  *a2 = result;
  return result;
}

id sub_18E61595C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolvedMetrics];
  *a2 = result;
  return result;
}

id sub_18E6159B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 disableIdleTimerNumber];
  *a2 = result;
  return result;
}

id sub_18E615A08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 archivedActivityFamilyNumber];
  *a2 = result;
  return result;
}

id sub_18E615A58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseContentTouchedDownNumber];
  *a2 = result;
  return result;
}

id sub_18E615AA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionButtonInitiatedNumber];
  *a2 = result;
  return result;
}

id sub_18E615AF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shouldShowSystemApertureNumber];
  *a2 = result;
  return result;
}

uint64_t sub_18E615B50()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E615C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_18E65F4C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18E615D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_18E65F4C0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

id sub_18E615E68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_18E615EA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_18E615ED8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wantsBaseContentTouchEventsNumber];
  *a2 = result;
  return result;
}

uint64_t sub_18E615F28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E615F68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E6160F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 sub_18E6162C8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E616320(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_18E616378@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E6163D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_18E616424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18E616490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E65F4C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18E616550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18E65F4C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18E61660C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A3D0;
  return result;
}

uint64_t sub_18E616658(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A3D0 = v1;
  return result;
}

uint64_t sub_18E6166D4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A3E8;
  return result;
}

uint64_t sub_18E616720(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A3E8 = v1;
  return result;
}

uint64_t sub_18E61679C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A400;
  return result;
}

uint64_t sub_18E6167E8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A400 = v1;
  return result;
}

uint64_t sub_18E616864@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A408;
  return result;
}

uint64_t sub_18E6168B0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A408 = v1;
  return result;
}

uint64_t sub_18E61692C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A420;
  return result;
}

uint64_t sub_18E616978(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A420 = v1;
  return result;
}

uint64_t sub_18E6169F4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A438;
  return result;
}

uint64_t sub_18E616A40(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A438 = v1;
  return result;
}

uint64_t sub_18E616ABC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A440;
  return result;
}

uint64_t sub_18E616B08(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A440 = v1;
  return result;
}

uint64_t sub_18E616B84@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A458;
  return result;
}

uint64_t sub_18E616BD0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A458 = v1;
  return result;
}

uint64_t sub_18E616C4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E616C8C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_18E616CD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getObjectType();
  result = sub_18E63E644();
  *a2 = result & 1;
  return result;
}

void sub_18E616D0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getObjectType();
  sub_18E63E4B8(v2);
}

id sub_18E616D4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metricsRequest];
  *a2 = result;
  return result;
}

void sub_18E616D9C(uint64_t *a1)
{
  v1 = *a1;
  swift_getObjectType();
  sub_18E63E5C8();
}

id sub_18E616E00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activityMetrics];
  *a2 = result;
  return result;
}

id sub_18E616E88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
  *a2 = v2;
  return v2;
}

id sub_18E616EC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  *a2 = v2;
  return v2;
}

id sub_18E616F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_18E616FAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  *a2 = v2;
  return v2;
}

void sub_18E616FC4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_18E653CD8(v2);
}

uint64_t sub_18E616FF4()
{
  MEMORY[0x193AD11D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E61702C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_18E61706C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_18E6170D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18E617144@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18E6171A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18E61720C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E617254()
{
  v1 = sub_18E65F4C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_18E617368()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_18E6173A0@<D0>(_OWORD *a1@<X8>)
{
  sub_18E65EA68();
  sub_18E65F820();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18E6173F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_18E65F810();
  sub_18E65EFDC();
  return swift_getWitnessTable();
}

uint64_t sub_18E6174A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id _sceneComponentLogger()
{
  if (_sceneComponentLogger___once != -1)
  {
    _sceneComponentLogger_cold_1();
  }

  v1 = _sceneComponentLogger___instance;

  return v1;
}

uint64_t ___sceneComponentLogger_block_invoke()
{
  _sceneComponentLogger___instance = os_log_create("com.apple.activityuiservices", "sceneComponent");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18E618110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t activitySceneType(unint64_t a1)
{
  if (a1 > 8)
  {
    return 1;
  }

  else
  {
    return qword_18E663508[a1];
  }
}

uint64_t acuisSceneType(unint64_t a1)
{
  if (a1 > 5)
  {
    return 1;
  }

  else
  {
    return qword_18E6634D8[a1];
  }
}

id _logger()
{
  if (_logger___once[0] != -1)
  {
    _logger_cold_1();
  }

  v1 = _logger___instance;

  return v1;
}

uint64_t ___logger_block_invoke()
{
  _logger___instance = os_log_create("com.apple.activityuiservices", "openApplicationAction");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18E619ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double _CentroidOfTouches(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v20;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = [v9 window];
      [v9 locationInView:0];
      [v10 _convertPointToSceneReferenceSpace:?];
      v12 = v11;
      v14 = v13;

      v6 = v6 + v12;
      v7 = v7 + v14;
    }

    v4 += v3;
    v3 = [v1 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v3);
  if (v4)
  {
    v15 = v6 / v4;
  }

  else
  {
LABEL_10:
    v15 = *MEMORY[0x1E695EFF8];
    v16 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

__CFString *NSStringFromACUISSizeDimensionRequestType(uint64_t a1)
{
  if (a1)
  {
    return @"dynamic";
  }

  else
  {
    return @"fixed";
  }
}

__CFString *ACUISActivitySceneCommandDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72627C0[a1 - 1];
  }
}

unint64_t sub_18E61D5A0()
{
  v1 = [v0 info];
  if (!v1)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_10:
    sub_18E61D6A8(&v9);
    return 0;
  }

  v2 = v1;
  v3 = [v1 objectForSetting_];

  if (v3)
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_10;
  }

  sub_18E61D758();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v7[0] integerValue];

  result = sub_18E6482C8(v4);
  if (v6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18E61D6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89DE0, &qword_18E663570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_18E61D758()
{
  result = qword_1EAC89300;
  if (!qword_1EAC89300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC89300);
  }

  return result;
}

id ActivityHardwareButtonPressAction.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id ActivityHardwareButtonPressAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityHardwareButtonPressAction.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_18E61D9D8;
    v13[3] = &block_descriptor;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

void sub_18E61D9D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id ActivityHardwareButtonPressAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityHardwareButtonPressAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_18E61DAE8(void *a1, uint64_t *a2)
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

void *sub_18E61DB40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
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

uint64_t sub_18E61DBD0(uint64_t a1, int a2)
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

uint64_t sub_18E61DBF0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_18E61DCA0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18E61DD04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E6636F0;
  *(v0 + 32) = type metadata accessor for ActivitySceneSettingsExtension();
  return v0;
}

uint64_t sub_18E61DDF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E6636F0;
  v1 = objc_opt_self();
  v2 = &unk_1F01BC4E0;
  [v1 extensionForProtocol_];
  *(v0 + 32) = swift_getObjCClassMetadata();

  return v0;
}

id ActivitySceneExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySceneExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneExtension();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ActivitySceneExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_18E61E074()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v2 = v1;
  return v1;
}

void (*sub_18E61E120(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18E61E174;
}

void sub_18E61E258(void *a1)
{
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = v4;
}

void sub_18E61E2EC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  [*a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v3 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *(v2 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = v4;
}

void (*sub_18E61E378(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E61E400;
}

void sub_18E61E400(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v6 = v3;
    [v6 copy];
    sub_18E65FB60();

    swift_unknownObjectRelease();
    type metadata accessor for ActivityItemMetricsRequest();
    swift_dynamicCast();
    v7 = *(v5 + v4);
    *(v5 + v4) = *(v2 + 40);
  }

  else
  {
    [*(*a1 + 32) copy];
    sub_18E65FB60();

    swift_unknownObjectRelease();
    type metadata accessor for ActivityItemMetricsRequest();
    swift_dynamicCast();
    v8 = *(v5 + v4);
    *(v5 + v4) = *(v2 + 40);
  }

  free(v2);
}

void *sub_18E61E534()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v2 = v1;
  return v1;
}

void sub_18E61E5E0(void *a1, void (*a2)(void), void *a3)
{
  if (a1)
  {
    [a1 copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();

    a2(0);
    v7 = swift_dynamicCast();
    v8 = v10;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + *a3);
  *(v3 + *a3) = v8;
}

void (*sub_18E61E698(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18E61E6EC;
}

void sub_18E61E704(void **a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v6 = v5;
    a3(v5);
  }

  else
  {
    a3(*a1);
  }
}

id ActivityMetricsRequest.__allocating_init(lockScreenMetrics:systemApertureMetrics:ambientMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v7[v9] = a2;
  *&v7[v8] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ActivityMetricsRequest.init(lockScreenMetrics:systemApertureMetrics:ambientMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v3[v5] = a2;
  *&v3[v4] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ActivityMetricsRequest.__allocating_init(lockScreenMetrics:systemApertureMetrics:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v5[v7] = a2;
  *&v5[v6] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ActivityMetricsRequest.init(lockScreenMetrics:systemApertureMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v2[v4] = a2;
  *&v2[v3] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_18E61EAB0()
{
  result = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) hash];
  if (result >= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = 23 * v2;
  if ((v2 * 23) >> 64 != (23 * v2) >> 63)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  if (v4)
  {
    result = [v4 hash];
  }

  else
  {
    result = 1;
  }

  v5 = v3 * result;
  if ((v3 * result) >> 64 != (v3 * result) >> 63)
  {
    goto LABEL_15;
  }

  v6 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  if (v6)
  {
    result = [v6 hash];
  }

  else
  {
    result = 1;
  }

  if ((v5 * result) >> 64 == (v5 * result) >> 63)
  {
    result *= v5;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18E61EB78(uint64_t a1)
{
  sub_18E61ED24(a1, v20);
  if (!v21)
  {
    sub_18E61D6A8(v20);
    goto LABEL_14;
  }

  type metadata accessor for ActivityMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  sub_18E61ED94();
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = *&v19[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics];
  v5 = v3;
  v6 = v4;
  v7 = sub_18E65FB20();

  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v9 = *&v19[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics];
  if (!v8)
  {
    v12 = v2;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v9)
  {

    return v9 & 1;
  }

  type metadata accessor for SystemApertureMetricsRequest();
  v10 = v9;
  v11 = v8;
  v12 = v2;
  v13 = sub_18E65FB20();

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = *(v12 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v14 = *&v19[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics];
  if (!v9)
  {
    v18 = v14;

    if (!v14)
    {
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

    goto LABEL_14;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  type metadata accessor for ActivityItemMetricsRequest();
  v15 = v14;
  v16 = v9;
  LOBYTE(v9) = sub_18E65FB20();

  return v9 & 1;
}

uint64_t sub_18E61ED24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89DE0, &qword_18E663570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E61ED94()
{
  result = qword_1ED764CC0;
  if (!qword_1ED764CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED764CC0);
  }

  return result;
}

id sub_18E61EEC0()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
    v4 = sub_18E65F8F0();

    v5 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
    v6 = sub_18E65F8F0();

    v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
    v8 = sub_18E65F8F0();

    result = [v2 build];
    if (result)
    {
      v9 = result;
      v10 = sub_18E65F900();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ActivityMetricsRequest.__allocating_init(xpcDictionary:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_18E61F748();
  swift_unknownObjectRelease();
  return v2;
}

id ActivityMetricsRequest.init(xpcDictionary:)()
{
  v0 = sub_18E61F748();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_18E61F138(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);

    return BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  return result;
}

id sub_18E61F230@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v6 = type metadata accessor for ActivityMetricsRequest();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v3;
  *&v7[v9] = v4;
  *&v7[v8] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  result = objc_msgSendSuper2(&v14, sel_init);
  a1[3] = v6;
  *a1 = result;
  return result;
}

void sub_18E61F3AC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = sub_18E65F8F0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  if (v5)
  {
    v6 = v5;
    v7 = sub_18E65F8F0();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  if (v8)
  {
    v9 = v8;
    v10 = sub_18E65F8F0();
    [a1 encodeObject:v9 forKey:v10];
  }
}

id ActivityMetricsRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E61F96C(a1);

  return v4;
}

id ActivityMetricsRequest.init(coder:)(void *a1)
{
  v2 = sub_18E61F96C(a1);

  return v2;
}

id ActivityMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E61F748()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v2 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v3 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    sub_18E61D6A8(&v15);
  }

  v3 = sub_18E655E3C();
LABEL_9:
  *&v0[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v3;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for SystemApertureMetricsRequest();
    v4 = swift_dynamicCast();
    v5 = v11;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    sub_18E61D6A8(&v15);
    v5 = 0;
  }

  v6 = *&v0[v2];
  *&v0[v2] = v5;

  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    v7 = swift_dynamicCast();
    v8 = v11;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    sub_18E61D6A8(&v15);
    v8 = 0;
  }

  v9 = *&v0[v1];
  *&v0[v1] = v8;

  v12.receiver = v0;
  v12.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_18E61F96C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  type metadata accessor for ActivityItemMetricsRequest();
  v6 = sub_18E65FAF0();
  if (!v6)
  {
    sub_18E61FDE8();
    v7 = swift_allocError();
    *v8 = 0xD000000000000013;
    v8[1] = 0x800000018E667940;
    v9 = sub_18E65F350();

    [a1 failWithError_];
    v6 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v6;
  type metadata accessor for SystemApertureMetricsRequest();
  v10 = sub_18E65FAF0();
  if (v10)
  {
    v11 = *&v2[v5];
    *&v2[v5] = v10;
  }

  v12 = sub_18E65FAF0();
  if (v12)
  {
    v13 = *&v2[v4];
    *&v2[v4] = v12;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_18E61FDE8()
{
  result = qword_1EAC89BF0;
  if (!qword_1EAC89BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89BF0);
  }

  return result;
}

id sub_18E6203AC(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_18E620428(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_18E620484(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_18E6204E0()
{
  v0 = sub_18E65F8F0();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = sub_18E639A78(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_18E639A78((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = ObjCClassMetadata;
  return v3;
}

uint64_t ArchivedActivityFamily.description.getter()
{
  if (*v0)
  {
    result = 0x6D756964656DLL;
  }

  else
  {
    result = 0x6C6C616D73;
  }

  *v0;
  return result;
}

ActivityUIServices::ArchivedActivityFamily_optional __swiftcall ArchivedActivityFamily.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_18E620618()
{
  result = qword_1EAC89C60;
  if (!qword_1EAC89C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C60);
  }

  return result;
}

uint64_t sub_18E62066C()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t sub_18E6206E0()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

void *sub_18E620724@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_18E620800()
{
  if (*v0)
  {
    result = 0x6D756964656DLL;
  }

  else
  {
    result = 0x6C6C616D73;
  }

  *v0;
  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedActivityFamily(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArchivedActivityFamily(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E6209A8()
{
  result = qword_1EAC89C68;
  if (!qword_1EAC89C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C68);
  }

  return result;
}

uint64_t sub_18E620A50()
{
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](0);
  return sub_18E65FF10();
}

uint64_t sub_18E620A94()
{
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](0);
  return sub_18E65FF10();
}

uint64_t sub_18E620AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18E65FDE0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18E620B78(uint64_t a1)
{
  v2 = sub_18E620D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E620BB4(uint64_t a1)
{
  v2 = sub_18E620D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimationDemoAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C70, &qword_18E663AE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E620D6C();
  sub_18E65FF50();
  sub_18E65FD90();
  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_18E620D6C()
{
  result = qword_1EAC89C78;
  if (!qword_1EAC89C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C78);
  }

  return result;
}

uint64_t AnimationDemoAttributes.ContentState.hashValue.getter()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t AnimationDemoAttributes.ContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C80, &qword_18E663AE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E620D6C();
  sub_18E65FF40();
  if (!v2)
  {
    v11 = sub_18E65FD50();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18E620F88()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t sub_18E620FFC()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t sub_18E621058(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C70, &qword_18E663AE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E620D6C();
  sub_18E65FF50();
  sub_18E65FD90();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18E6211A0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_18E6211D0(uint64_t a1)
{
  v2 = sub_18E62135C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E62120C(uint64_t a1)
{
  v2 = sub_18E62135C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimationDemoAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C88, &qword_18E663AF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E62135C();
  sub_18E65FF50();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_18E62135C()
{
  result = qword_1EAC89C90;
  if (!qword_1EAC89C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C90);
  }

  return result;
}

unint64_t sub_18E6213DC()
{
  result = qword_1EAC89C98;
  if (!qword_1EAC89C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C98);
  }

  return result;
}

unint64_t sub_18E621434()
{
  result = qword_1EAC89CA0;
  if (!qword_1EAC89CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CA0);
  }

  return result;
}

unint64_t sub_18E62148C()
{
  result = qword_1EAC89CA8;
  if (!qword_1EAC89CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CA8);
  }

  return result;
}

unint64_t sub_18E6214E4()
{
  result = qword_1EAC89CB0;
  if (!qword_1EAC89CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CB0);
  }

  return result;
}

unint64_t sub_18E62153C()
{
  result = qword_1EAC89CB8;
  if (!qword_1EAC89CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CB8);
  }

  return result;
}

unint64_t sub_18E621594()
{
  result = qword_1EAC89CC0;
  if (!qword_1EAC89CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CC0);
  }

  return result;
}

uint64_t sub_18E621610(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C88, &qword_18E663AF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E62135C();
  sub_18E65FF50();
  return (*(v3 + 8))(v6, v2);
}

uint64_t getEnumTagSinglePayload for AnimationDemoAttributes.ContentState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnimationDemoAttributes.ContentState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_18E6217AC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_18E6217FC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_18E621894()
{
  result = qword_1EAC89CC8;
  if (!qword_1EAC89CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CC8);
  }

  return result;
}

unint64_t sub_18E6218EC()
{
  result = qword_1EAC89CD0;
  if (!qword_1EAC89CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CD0);
  }

  return result;
}

unint64_t sub_18E621944()
{
  result = qword_1EAC89CD8;
  if (!qword_1EAC89CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CD8);
  }

  return result;
}

unint64_t sub_18E62199C()
{
  result = qword_1EAC89CE0;
  if (!qword_1EAC89CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CE0);
  }

  return result;
}

unint64_t sub_18E6219F4()
{
  result = qword_1EAC89CE8;
  if (!qword_1EAC89CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CE8);
  }

  return result;
}

id sub_18E621AE4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E621B50()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ActivityUIServices20CancellableAssertion_token);

  sub_18E65F730();
}

id ActivityListItemHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_18E621E84(a1, a2, a3, a4);

  return v10;
}

id ActivityListItemHostViewController.init(activityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18E621E84(a1, a2, a3, a4);

  return v5;
}

id sub_18E621D40()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityListItemSceneSpecification());

  return [v0 init];
}

id ActivityListItemHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityListItemHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E621E84(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_18E65F4C0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8[2];
  v13(v12, a1, v7, v10);
  v14 = type metadata accessor for ActivitySceneDescriptor();
  v15 = objc_allocWithZone(v14);
  v16 = a2;
  v17 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v18 = &v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v18 = v17;
  v18[1] = v19;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 0;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v13)(&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v12, v7);
  *&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v16;
  v20 = &v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  *v20 = 0;
  *(v20 + 1) = 0;
  v26.receiver = v15;
  v26.super_class = v14;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = v8[1];
  v22(v12, v7);
  v23 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v21, a3, v25);
  v22(a1, v7);
  return v23;
}

uint64_t sub_18E6220E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18E65F4C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityAlertClientError.errorCode.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1001;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t ActivityAlertClientError.errorDescription.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E622218()
{
  v2 = *v0;
  sub_18E65FEB0();
  sub_18E65F8D0();
  return sub_18E65FF10();
}

uint64_t sub_18E62227C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E622C74();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_18E6222C8()
{
  v2 = *v0;
  sub_18E65FEB0();
  sub_18E65F8D0();
  return sub_18E65FF10();
}

void *sub_18E622328@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18E62235C()
{
  if (!*v0)
  {
    return 1001;
  }

  v2 = *v0;
  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E6223A4()
{
  if (!*v0)
  {
    return 0xD000000000000012;
  }

  v2 = *v0;
  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E622408(uint64_t a1)
{
  v2 = sub_18E622C74();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_18E622444(uint64_t a1)
{
  v2 = sub_18E622C74();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_18E6224A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E622C74();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

uint64_t sub_18E6225F8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18E622658(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ActivityUIServices19ActivityAlertClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E6226F0;
}

void sub_18E6226F0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id ActivityAlertClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ActivityAlertClient.init()()
{
  swift_unknownObjectWeakInit();
  sub_18E65F560();
  *&v0[OBJC_IVAR____TtC18ActivityUIServices19ActivityAlertClient_alertClient] = sub_18E65F550();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ActivityAlertClient();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = *&v1[OBJC_IVAR____TtC18ActivityUIServices19ActivityAlertClient_alertClient];
  sub_18E622884();
  v3 = v1;
  v4 = v2;
  sub_18E65F540();

  return v3;
}

unint64_t sub_18E622884()
{
  result = qword_1ED764F28;
  if (!qword_1ED764F28)
  {
    type metadata accessor for ActivityAlertClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764F28);
  }

  return result;
}

id ActivityAlertClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAlertClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E622980()
{
  result = qword_1EAC89D10;
  if (!qword_1EAC89D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D10);
  }

  return result;
}

unint64_t sub_18E6229D4()
{
  result = qword_1EAC89D18;
  if (!qword_1EAC89D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D18);
  }

  return result;
}

unint64_t sub_18E622A2C()
{
  result = qword_1EAC89D20;
  if (!qword_1EAC89D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D20);
  }

  return result;
}

unint64_t sub_18E622A84()
{
  result = qword_1EAC89D28;
  if (!qword_1EAC89D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D28);
  }

  return result;
}

unint64_t sub_18E622ADC()
{
  result = qword_1EAC89D30;
  if (!qword_1EAC89D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D30);
  }

  return result;
}

unint64_t sub_18E622B34()
{
  result = qword_1EAC89D38;
  if (!qword_1EAC89D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D38);
  }

  return result;
}

unint64_t sub_18E622C74()
{
  result = qword_1EAC89D40;
  if (!qword_1EAC89D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D40);
  }

  return result;
}

id ActivityAmbientCompactHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v7);
  v15 = v11[2];
  v15(v14, a1, v10);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 3;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v15(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v10);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v32.receiver = v17;
  v32.super_class = v16;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  v25 = v11[1];
  v25(v14, v10);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v30, v31);

  v25(a1, v10);
  return v26;
}

id ActivityAmbientCompactHostViewController.init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18E6231A8(a1, a2, a3, a4, a5, a6);

  return v7;
}

id sub_18E623064()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityAmbientCompactSceneSpecification());

  return [v0 init];
}

id ActivityAmbientCompactHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAmbientCompactHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E6231A8(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v28 = a4;
  v29 = a5;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v10[2];
  v15(v14, a1, v9, v12);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 3;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v15)(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v9);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v28;
  *v22 = a3;
  *(v22 + 1) = v23;
  v31.receiver = v17;
  v31.super_class = v16;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = v10[1];
  v25(v14, v9);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v29, v30);
  v25(a1, v9);
  return v26;
}

uint64_t sub_18E623424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E62346C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18E6234B8(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v5 = sub_18E613228(a1, a2, 0);
  if (!v5)
  {
    if (qword_1EAC89398 != -1)
    {
      swift_once();
    }

    v13 = sub_18E65F6E0();
    __swift_project_value_buffer(v13, qword_1EAC893A0);

    v6 = sub_18E65F6C0();
    v14 = sub_18E65FA50();

    if (os_log_type_enabled(v6, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_18E61173C(a1, a2, v24);
      _os_log_impl(&dword_18E60F000, v6, v14, "No application record created with bundle identifier: %{private}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193AD1140](v16, -1, -1);
      MEMORY[0x193AD1140](v15, -1, -1);
    }

    goto LABEL_23;
  }

  v6 = v5;
  v7 = [v6 identities];
  sub_18E623B78(0, &qword_1ED764CF8, 0x1E69635D8);
  v8 = sub_18E65F9A0();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_4;
    }

LABEL_17:

    if (qword_1EAC89398 != -1)
    {
      swift_once();
    }

    v23 = sub_18E65F6E0();
    __swift_project_value_buffer(v23, qword_1EAC893A0);

    v18 = sub_18E65F6C0();
    v19 = sub_18E65FA50();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_18E61173C(a1, a2, v24);
    v22 = "Multiple identities found with bundle identifier: %{private}s";
    goto LABEL_21;
  }

  if (sub_18E65FBC0() != 1)
  {
    goto LABEL_17;
  }

  if (!sub_18E65FBC0())
  {

    if (qword_1EAC89398 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x193AD04B0](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_7:
    v10 = v9;

    v11 = [objc_opt_self() identityForLSApplicationIdentity:v10 LSApplicationRecord:v6];

    return v11;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_15:
  v17 = sub_18E65F6E0();
  __swift_project_value_buffer(v17, qword_1EAC893A0);

  v18 = sub_18E65F6C0();
  v19 = sub_18E65FA50();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_18E61173C(a1, a2, v24);
    v22 = "No lsIdentity found for bundle identifier: %{private}s";
LABEL_21:
    _os_log_impl(&dword_18E60F000, v18, v19, v22, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x193AD1140](v21, -1, -1);
    MEMORY[0x193AD1140](v20, -1, -1);
  }

LABEL_22:

LABEL_23:
  return 0;
}

uint64_t sub_18E623B78(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t ActivityAlertProvider.__allocating_init(identifier:action:presentationOptions:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_18E611A08(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t sub_18E623C40()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier + 8);

  return v1;
}

void *sub_18E623C7C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E623CD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18E623D90()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E623DE8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_18E623E44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E623E9C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t ActivityAlertProvider.init(identifier:action:presentationOptions:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_18E611A08(a1, a2, a3, a4, a5);

  return v6;
}

id ActivityAlertProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityAlertProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAlertProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_18E624230()
{
  sub_18E624624(319, &qword_1EAC894C0, MEMORY[0x1E6959C88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_18E624624(319, &qword_1EAC894C8, MEMORY[0x1E6959C80]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_18E624624(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18E65FB40();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_18E624678()
{
  result = qword_1EAC89D78;
  if (!qword_1EAC89D78)
  {
    sub_18E65F5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D78);
  }

  return result;
}

uint64_t sub_18E62471C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E6247B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_18E6248B0()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_18E624964(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E6249BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_18E624ADC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier + 8);

  return v1;
}

id ActivityUpdateProvider.__allocating_init(activityDescriptor:activityState:systemMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F4C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v4);
  v14 = *(v9 + 16);
  v14(&v13[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityDescriptor], a1, v8);
  *&v13[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState] = a2;
  v15 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v16 = &v13[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier];
  *v16 = v15;
  v16[1] = v17;
  sub_18E624E4C();
  v14(v12, a1, v8);
  *&v13[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor] = sub_18E65FAD0();
  *&v13[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_systemMetricsRequest] = a3;
  v20.receiver = v13;
  v20.super_class = v4;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v9 + 8))(a1, v8);
  return v18;
}

id ActivityUpdateProvider.init(activityDescriptor:activityState:systemMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F4C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 16);
  v14(&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityDescriptor], a1, v8, v11);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState] = a2;
  v15 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v16 = &v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier];
  *v16 = v15;
  v16[1] = v17;
  sub_18E624E4C();
  (v14)(v13, a1, v8);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor] = sub_18E65FAD0();
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_systemMetricsRequest] = a3;
  updated = type metadata accessor for ActivityUpdateProvider();
  v21.receiver = v4;
  v21.super_class = updated;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v9 + 8))(a1, v8);
  return v19;
}

unint64_t sub_18E624E4C()
{
  result = qword_1ED764D00;
  if (!qword_1ED764D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED764D00);
  }

  return result;
}

uint64_t type metadata accessor for ActivityUpdateProvider()
{
  result = qword_1EAC89480;
  if (!qword_1EAC89480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ActivityUpdateProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityUpdateProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityUpdateProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E625118()
{
  result = sub_18E65F4C0();
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

unint64_t sub_18E625368()
{
  result = qword_1ED764FA8;
  if (!qword_1ED764FA8)
  {
    sub_18E65F4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764FA8);
  }

  return result;
}

uint64_t sub_18E6253C0()
{
  sub_18E625AEC();

  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_18E625440()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v2 = sub_18E65F6E0();
    __swift_project_value_buffer(v2, qword_1ED764D90);

    oslog = sub_18E65F6C0();
    v3 = sub_18E65FA60();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      aBlock[0] = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_18E61173C(v1[4], v1[5], aBlock);
      _os_log_impl(&dword_18E60F000, oslog, v3, "[%s] Back off timer is already on", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x193AD1140](v5, -1, -1);
      MEMORY[0x193AD1140](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    [*(v0 + 88) invalidate];
    v6 = *(v0 + 88);
    *(v0 + 88) = 0;

    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1ED764D90);

    v8 = sub_18E65F6C0();
    v9 = sub_18E65FA60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_18E61173C(*(v0 + 32), *(v0 + 40), aBlock);
      *(v10 + 12) = 2048;
      *(v10 + 14) = *(v0 + 24);
      _os_log_impl(&dword_18E60F000, v8, v9, "[%s] scheduling new backoff with base interval: %f.", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v10, -1, -1);
    }

    v12 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v13 = sub_18E65F8F0();
    v14 = [v12 initWithIdentifier_];

    v15 = *(v0 + 16);
    *(v0 + 16) = v14;
    v16 = v14;

    v17 = *(v0 + 24);
    if (v17 >= 0.1)
    {
      v18 = v17 + v17;
    }

    else
    {
      v18 = 0.1;
    }

    v19 = fmin(v18, 120.0);
    *(v0 + 24) = v19;
    if (v16)
    {
      v20 = *(v0 + 48);
      v21 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_18E625E68;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E61D9D8;
      aBlock[3] = &block_descriptor_17;
      v22 = _Block_copy(aBlock);

      [v16 scheduleWithFireInterval:v20 leewayInterval:v22 queue:v19 handler:0.0];
      _Block_release(v22);

      v23 = sub_18E65F6C0();
      v24 = sub_18E65FA60();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_18E61173C(v1[4], v1[5], aBlock);
        *(v25 + 12) = 2048;
        *(v25 + 14) = v1[3];
        _os_log_impl(&dword_18E60F000, v23, v24, "[%s] Back off timer is scheduled with fire interval: %f", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x193AD1140](v26, -1, -1);
        MEMORY[0x193AD1140](v25, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18E625918(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v4 = sub_18E65F6E0();
    __swift_project_value_buffer(v4, qword_1ED764D90);

    v5 = sub_18E65F6C0();
    v6 = sub_18E65FA60();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = v3[4];
      v10 = v3[5];

      v11 = sub_18E61173C(v9, v10, &v16);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_18E60F000, v5, v6, "[%s] Back off timer fired", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AD1140](v8, -1, -1);
      MEMORY[0x193AD1140](v7, -1, -1);
    }

    v13 = v3[7];
    v12 = v3[8];

    v13(v14);

    [a1 invalidate];
    v15 = v3[2];
    v3[2] = 0;

    sub_18E625B48();
  }

  return result;
}

void sub_18E625AEC()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  [*(v0 + 88) invalidate];
  v2 = *(v0 + 88);
  *(v0 + 88) = 0;
}

void sub_18E625B48()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = *(v0 + 72);
    [*(v0 + 88) invalidate];
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v5 = sub_18E65F8F0();
    v6 = [v4 initWithIdentifier_];

    v7 = *(v0 + 88);
    *(v0 + 88) = v6;
    v8 = v6;

    if (v8)
    {
      v9 = *(v0 + 48);
      v10 = swift_allocObject();
      swift_weakInit();
      v12[4] = sub_18E625E60;
      v12[5] = v10;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_18E61D9D8;
      v12[3] = &block_descriptor_1;
      v11 = _Block_copy(v12);

      [v8 scheduleWithFireInterval:v9 leewayInterval:v11 queue:v1 handler:0.0];
      _Block_release(v11);
    }
  }
}

void sub_18E625CB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v2 = sub_18E65F6E0();
    __swift_project_value_buffer(v2, qword_1ED764D90);

    v3 = sub_18E65F6C0();
    v4 = sub_18E65FA60();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = *(v1 + 32);
      v8 = *(v1 + 40);

      v9 = sub_18E61173C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_18E60F000, v3, v4, "[%s] Reset interval satiated, resetting", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x193AD1140](v6, -1, -1);
      MEMORY[0x193AD1140](v5, -1, -1);
    }

    *(v1 + 24) = 0;
    [*(v1 + 88) invalidate];
    v10 = *(v1 + 88);
    *(v1 + 88) = 0;
  }
}

void (*sub_18E625EB0(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E628660;
}

void (*sub_18E625F70(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E625FF8;
}

void (*sub_18E626034(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E628660;
}

void sub_18E6260E8(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = a3;
  v7 = a1;
  [v6 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v8 = *a4;
  v9 = *&v7[*a4];
  *&v7[v8] = v10;
}

void sub_18E6261A0(void *a1, void *a2)
{
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v5 = *(v2 + *a2);
  *(v2 + *a2) = v6;
}

void sub_18E626234(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a2;
  [*a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v7 = *(v6 + *a5);
  *(v6 + *a5) = v8;
}

void (*sub_18E6262C8(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E628660;
}

double sub_18E626398()
{
  v1 = v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_18E626438(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_18E626538()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E6265D0(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SystemApertureMetricsRequest.__allocating_init(obstructionSize:obstructionTopMargin:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v16 = a5;
  v16[1] = a6;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = a7;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = a1;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = a2;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = a3;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = a4;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, sel_init);
}

id SystemApertureMetricsRequest.init(obstructionSize:obstructionTopMargin:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = &v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v8 = a5;
  v8[1] = a6;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = a7;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = a1;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = a2;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = a3;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = a4;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v10, sel_init);
}

id SystemApertureMetricsRequest.__allocating_init(obstructionSize:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(void *a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v11 = [objc_allocWithZone(v6) initWithObstructionSize:a1 obstructionTopMargin:a2 expandedMetricsRequest:a3 compactLeadingMetricsRequest:a4 compactTrailingMetricsRequest:a5 minimalMetricsRequest:{a6, 0.0}];

  return v11;
}

id SystemApertureMetricsRequest.init(obstructionSize:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(void *a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v11 = [v6 initWithObstructionSize:a1 obstructionTopMargin:a2 expandedMetricsRequest:a3 compactLeadingMetricsRequest:a4 compactTrailingMetricsRequest:a5 minimalMetricsRequest:{a6, 0.0}];

  return v11;
}

uint64_t sub_18E6269FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest) hash];
  if (v1 >= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  v3 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest) hash];
  if (v3 >= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest) hash];
  if (v5 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest) hash];
  if (v7 >= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  result = swift_beginAccess();
  if (*v9 > 1.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = *v9;
  }

  if (*v9 <= 1.0 && (*v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = v9[1];
  if (v12 > 1.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v9[1];
  }

  if (v12 <= 1.0 && (v9[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_43;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  result = swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15 > 1.0)
  {
    v15 = 1.0;
    goto LABEL_30;
  }

  if ((*(v0 + v14) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_30:
  if (v15 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = 37 * v2;
  if ((v2 * 37) >> 64 != (37 * v2) >> 63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17 = v16 * v4;
  if ((v16 * v4) >> 64 != (v16 * v4) >> 63)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v18 = v17 * v6;
  if ((v17 * v6) >> 64 != (v17 * v6) >> 63)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v19 = v18 * v8;
  if ((v18 * v8) >> 64 != (v18 * v8) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v20 = v19 * v11;
  if ((v19 * v11) >> 64 != v20 >> 63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v21 = v20 * v13;
  if ((v20 * v13) >> 64 != v21 >> 63)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = v21 * v15;
  if ((v21 * v15) >> 64 != result >> 63)
  {
LABEL_55:
    __break(1u);
  }

  return result;
}

BOOL sub_18E626C90(uint64_t a1)
{
  v2 = v1;
  sub_18E61ED24(a1, v29);
  if (v30)
  {
    type metadata accessor for SystemApertureMetricsRequest();
    if (swift_dynamicCast())
    {
      sub_18E61ED94();
      v3 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest];
      v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
      v5 = v3;
      v6 = sub_18E65FB20();

      if (v6)
      {
        v7 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest];
        v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
        v9 = v7;
        v10 = sub_18E65FB20();

        if (v10)
        {
          v11 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest];
          v12 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
          v13 = v11;
          v14 = sub_18E65FB20();

          if (v14)
          {
            v15 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest];
            v16 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
            v17 = v15;
            v18 = sub_18E65FB20();

            if (v18)
            {
              v19 = (v2 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
              swift_beginAccess();
              v20 = *v19;
              v21 = v19[1];
              v22 = &v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
              swift_beginAccess();
              v31.width = v20;
              v31.height = v21;
              if (CGSizeEqualToSize(v31, *v22))
              {
                v23 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
                swift_beginAccess();
                v24 = *(v2 + v23);
                v25 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
                swift_beginAccess();
                v26 = *&v28[v25];

                return v24 == v26;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_18E61D6A8(v29);
  }

  return 0;
}

id sub_18E626F9C()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = (v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    v6 = sub_18E65F8F0();

    v7 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v9 = sub_18E65F8F0();

    v10 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
    v11 = sub_18E65F8F0();

    v12 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
    v13 = sub_18E65F8F0();

    v14 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
    v15 = sub_18E65F8F0();

    v16 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
    v17 = sub_18E65F8F0();

    result = [v2 build];
    if (result)
    {
      v18 = result;
      v19 = sub_18E65F900();

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_18E627294@<X0>(void *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  v9 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  v10 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  v11 = type metadata accessor for SystemApertureMetricsRequest();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v13 = v3;
  *(v13 + 1) = v4;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = v6;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = v7;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = v8;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = v9;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = v10;
  v20.receiver = v12;
  v20.super_class = v11;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  result = objc_msgSendSuper2(&v20, sel_init);
  a1[3] = v11;
  *a1 = result;
  return result;
}

id SystemApertureMetricsRequest.__allocating_init(xpcDictionary:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_18E627B18();
  swift_unknownObjectRelease();
  return v2;
}

id SystemApertureMetricsRequest.init(xpcDictionary:)()
{
  v0 = sub_18E627B18();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_18E6274F4()
{
  v1 = (v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  BSSerializeCGSizeToXPCDictionaryWithKey();
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  v5 = *(v0 + v4);
  BSSerializeDoubleToXPCDictionaryWithKey();
  v6 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  v8 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  v9 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  return BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

void sub_18E627670(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  v4 = *v3;
  v5 = sub_18E65F8F0();
  [a1 encodeDouble:v5 forKey:v4];

  v6 = v3[1];
  v7 = sub_18E65F8F0();
  [a1 encodeDouble:v7 forKey:v6];

  v8 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = sub_18E65F8F0();
  [a1 encodeDouble:v10 forKey:v9];

  v11 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  v12 = sub_18E65F8F0();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  v14 = sub_18E65F8F0();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  v16 = sub_18E65F8F0();
  [a1 encodeObject:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  v18 = sub_18E65F8F0();
  [a1 encodeObject:v17 forKey:v18];
}

id SystemApertureMetricsRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E627DE0(a1);

  return v4;
}

id SystemApertureMetricsRequest.init(coder:)(void *a1)
{
  v2 = sub_18E627DE0(a1);

  return v2;
}

id SystemApertureMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemApertureMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E627B18()
{
  BSDeserializeCGSizeFromXPCDictionaryWithKey();
  v1 = &v0[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v1 = v2;
  *(v1 + 1) = v3;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v0[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = v4;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    sub_18E61D6A8(&v14);
  }

  v5 = sub_18E655E3C();
LABEL_9:
  *&v0[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = v5;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v6 = v10;
      goto LABEL_17;
    }
  }

  else
  {
    sub_18E61D6A8(&v14);
  }

  v6 = sub_18E655E3C();
LABEL_17:
  *&v0[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = v6;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v7 = v10;
      goto LABEL_25;
    }
  }

  else
  {
    sub_18E61D6A8(&v14);
  }

  v7 = sub_18E655E3C();
LABEL_25:
  *&v0[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = v7;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    sub_18E61D6A8(&v14);
    goto LABEL_32;
  }

  type metadata accessor for ActivityItemMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v8 = sub_18E655E3C();
    goto LABEL_33;
  }

  v8 = v10;
LABEL_33:
  *&v0[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = v8;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_18E627DE0(void *a1)
{
  v2 = v1;
  v4 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  v7 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v10 = v6;
  *(v10 + 1) = v9;
  v11 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v13 = v12;

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = v13;
  type metadata accessor for ActivityItemMetricsRequest();
  v14 = sub_18E65FAF0();
  if (!v14)
  {
    sub_18E61FDE8();
    v15 = swift_allocError();
    *v16 = 0xD000000000000010;
    v16[1] = 0x800000018E668910;
    v17 = sub_18E65F350();

    [a1 failWithError_];
    v14 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = v14;
  v18 = sub_18E65FAF0();
  if (!v18)
  {
    sub_18E61FDE8();
    v19 = swift_allocError();
    *v20 = 0x206C616D696E696DLL;
    v20[1] = 0xEF7363697274656DLL;
    v21 = sub_18E65F350();

    [a1 failWithError_];
    v18 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = v18;
  v22 = sub_18E65FAF0();
  if (!v22)
  {
    sub_18E61FDE8();
    v23 = swift_allocError();
    *v24 = 0xD000000000000017;
    v24[1] = 0x800000018E668930;
    v25 = sub_18E65F350();

    [a1 failWithError_];
    v22 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = v22;
  v26 = sub_18E65FAF0();
  if (!v26)
  {
    sub_18E61FDE8();
    v27 = swift_allocError();
    *v28 = 0xD000000000000018;
    v28[1] = 0x800000018E668950;
    v29 = sub_18E65F350();

    [a1 failWithError_];
    v26 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = v26;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_18E628664()
{
  if ((*(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated) & 1) == 0)
  {
    [v0 invalidate];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityCancelTouchAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18E628780()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated;
  if ((*(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_assertions);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_assertions);
      }

      v3 = sub_18E65FBC0();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
LABEL_4:
        if (v3 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x193AD04B0](i, v2);
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
          }

          v6 = v5;
          [v5 invalidate];
        }
      }
    }

    *(v0 + v1) = 1;
  }
}

id ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F600();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18E65F580();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily] = 2;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_actionButtonInitiated] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShowSystemAperture] = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneForeground] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReady] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks] = v17;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks] = v17;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks] = v17;
  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  *&v4[v18] = sub_18E63B194(v17);
  v19 = &v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers] = v17;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost] = 0;
  v21 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor] = a1;
  *v19 = a2;
  v19[1] = a3;
  v22 = a1;
  if (a3)
  {
    v23 = a3;
  }

  else
  {
    sub_18E64BDD8(v16);
    sub_18E65F570();
    sub_18E63B298(v16);
    a2 = sub_18E65F5E0();
    v23 = v24;
    (*(v9 + 8))(v12, v8);
  }

  v25 = &v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource];
  *v25 = a2;
  v25[1] = v23;
  swift_beginAccess();
  v26 = *(*&v4[v21] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics] = v26;
  v27 = type metadata accessor for ActivityHostViewController();
  v42.receiver = v4;
  v42.super_class = v27;

  v28 = v26;
  v29 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  v30 = qword_1ED764D60;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_18E65F6E0();
  __swift_project_value_buffer(v32, qword_1ED764D68);
  v33 = sub_18E65F6C0();
  v34 = sub_18E65FA60();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v35 = 136446210;
    v37 = sub_18E62A1F8();
    v39 = sub_18E61173C(v37, v38, &v41);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_18E60F000, v33, v34, "[%{public}s] Created", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x193AD1140](v36, -1, -1);
    MEMORY[0x193AD1140](v35, -1, -1);
  }

  return v31;
}

uint64_t sub_18E628DDC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18E628E3C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E6226F0;
}

id sub_18E628ED4()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_18E628F28()
{
  v1 = sub_18E65F4C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E623B78(0, &qword_1ED764D00, 0x1E6959CC0);
  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  (*(v2 + 16))(v5, *(v0 + v6) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v1);
  return sub_18E65FAD0();
}

void sub_18E629054(int a1)
{
  BSDispatchQueueAssertMain();

  sub_18E62CC9C(a1, 0);
}

void (*sub_18E629090(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode);
  return sub_18E6290C4;
}

void sub_18E6290C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  BSDispatchQueueAssertMain();
  sub_18E62CC9C(v2, 0);
}

uint64_t sub_18E6290F8()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E62913C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    BSDispatchQueueAssertMain();
    v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_18E63B318;
      *(v9 + 24) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_18E63B320;
      *(v10 + 24) = v9;
      aBlock[4] = sub_18E63B320;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E635E98;
      aBlock[3] = &block_descriptor_2;
      v11 = _Block_copy(aBlock);
      v12 = v8;

      [v12 performUpdate_];

      _Block_release(v11);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return result;
}

void (*sub_18E629320(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_18E6293B4;
}

void sub_18E6293B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  v7 = v5 ^ v6;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = v2[9];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    BSDispatchQueueAssertMain();
    v10 = *(v8 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = sub_18E63D3D0;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18E63D34C;
    *(v12 + 24) = v11;
    v2[4] = sub_18E63D34C;
    v2[5] = v12;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18E635E98;
    v2[3] = &block_descriptor_19;
    v13 = _Block_copy(v2);
    v14 = v2[5];
    v15 = v10;

    [v15 performUpdate_];

    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = v2[9];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  BSDispatchQueueAssertMain();
  v18 = *(v16 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18E63D3D0;
    *(v19 + 24) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_18E63D34C;
    *(v20 + 24) = v19;
    v2[4] = sub_18E63D34C;
    v2[5] = v20;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18E635E98;
    v2[3] = &block_descriptor_32;
    v21 = _Block_copy(v2);
    v22 = v2[5];
    v23 = v18;

    [v23 performUpdate_];

    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

LABEL_10:

LABEL_11:

  free(v2);
}

void *sub_18E629710()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_18E629770()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E6297D0(void *a1, uint64_t *a2, SEL *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a3];
    swift_unknownObjectRelease();
  }
}

void *sub_18E629880()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_18E6298CC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_18E629910(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result activityHostViewControllerWithViewController:v1 didSetIdleTimerDisabled:*(v1 + v3)];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18E6299AC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_18E6299F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_18E629A48()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E629A8C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_actionButtonInitiated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E629AD0()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShowSystemAperture;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E629B14()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

id sub_18E629B5C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_18E629BB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_18E629C68()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 2 && (v3 = *(*(v2 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest) + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics)) != 0)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
    swift_beginAccess();
    v6 = *(v3 + v5);
    v7 = v4 * v6;
    v8 = v6 * *(*(v3 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    v9 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
    swift_beginAccess();
    v10 = *(v3 + v9);
    v11 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
    v12 = type metadata accessor for ActivitySceneMetrics();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
    *&v13[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
    v15 = &v13[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
    *v15 = v7;
    v15[1] = v8;
    *&v13[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = v10;
    swift_beginAccess();
    *&v13[v14] = v11;
    v16 = v11;
    return objc_msgSendSuper2(&v21, sel_init, v13, v12);
  }

  else
  {
    v18 = type metadata accessor for ActivitySceneMetrics();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
    *&v19[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
    *&v19[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size] = xmmword_18E6644E0;
    *&v19[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = 0x4028000000000000;
    swift_beginAccess();
    *&v19[v20] = 0;
    v22.receiver = v19;
    v22.super_class = v18;
    return objc_msgSendSuper2(&v22, sel_init, v21.receiver, v21.super_class);
  }
}

uint64_t sub_18E629E80()
{
  v1 = v0;
  v2 = sub_18E65F600();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_18E65F580();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18E65F4C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  (*(v17 + 16))(v20, *(v1 + v21) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v16);
  sub_18E65F490();
  (*(v17 + 8))(v20, v16);
  sub_18E65F570();
  sub_18E63B298(v15);
  v22 = sub_18E65F5E0();
  v24 = v23;
  v25 = *(v3 + 8);
  v25(v11, v2);
  sub_18E65F5F0();
  v26 = sub_18E65F5E0();
  v28 = v27;
  v25(v8, v2);
  if (v22 == v26 && v24 == v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_18E65FDE0();
  }

  v30 = (v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier);
  v31 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier + 8);
  v32 = v29;
  if (v31)
  {
    v33 = *v30;

    v34 = v39;
    sub_18E65F5F0();
    v35 = sub_18E65F5E0();
    v37 = v36;
    v25(v34, v2);
    if (v33 == v35 && v31 == v37)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_18E65FDE0();
    }
  }

  return v29 & v32 & 1;
}

uint64_t sub_18E62A1F8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier);
  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier + 8);
  }

  else
  {
    sub_18E65FCB0();
    v4 = v0;
    MEMORY[0x193AD0160](45, 0xE100000000000000);
    v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    v6 = (*(v4 + v5) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
    v7 = *v6;
    v8 = v6[1];

    MEMORY[0x193AD0160](v7, v8);

    v2 = 0;
    v9 = v1[1];
    *v1 = 0;
    v1[1] = 0xE000000000000000;
  }

  return v2;
}

id sub_18E62A308()
{
  v1 = v0;
  v2 = sub_18E65FA90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18E65FA80();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_18E65F870();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue;
  v12 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue);
  }

  else
  {
    v22 = v3;
    v23 = v2;
    v21[4] = sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v14 = sub_18E62A1F8();
    v21[2] = v15;
    v21[3] = v14;
    if (qword_1ED764EF0 != -1)
    {
      swift_once();
    }

    v21[1] = qword_1ED7652B0;
    v16 = qword_1ED7652B0;
    sub_18E65F860();
    v24 = MEMORY[0x1E69E7CC0];
    sub_18E63CB04(&qword_1ED764D18, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A000, &unk_18E6649C8);
    sub_18E63CFFC(&unk_1ED764D38, &unk_1EAC8A000, &unk_18E6649C8);
    sub_18E65FB80();
    (*(v22 + 104))(v6, *MEMORY[0x1E69E8090], v23);
    v17 = sub_18E65FAC0();
    v18 = *(v1 + v11);
    *(v1 + v11) = v17;
    v13 = v17;

    v12 = 0;
  }

  v19 = v12;
  return v13;
}

void sub_18E62A5DC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  BSDispatchQueueAssertMain();
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v9 = sub_18E65F6E0();
  __swift_project_value_buffer(v9, qword_1ED764D68);
  v10 = v4;
  v11 = sub_18E65F6C0();
  v12 = sub_18E65FA60();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136446210;
    v15 = sub_18E62A1F8();
    v17 = sub_18E61173C(v15, v16, &aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_18E60F000, v11, v12, "[%{public}s] Ensure content begin", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193AD1140](v14, -1, -1);
    MEMORY[0x193AD1140](v13, -1, -1);
  }

  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  if (!*&v10[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene])
  {
    sub_18E62CC9C(*&v10[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode], 1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E698E790]) init];
  v20 = sub_18E65F8F0();
  [v19 addMilestone_];

  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v10;
  v21[5] = a2;
  v21[6] = a3;
  v128 = sub_18E63B348;
  v129 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_18E633024;
  v127 = &block_descriptor_38;
  v22 = _Block_copy(&aBlock);
  v23 = v10;
  v24 = v19;
  v25 = a1;

  [v24 setCompletionBlock_];
  _Block_release(v22);
  if (sub_18E629E80())
  {
    v26 = sub_18E65F8F0();
    [v24 addMilestone_];

    v27 = *&v10[v18];
    if (v27)
    {
      v28 = [v27 clientSettings];
      if (v28)
      {
        v29 = v28;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          v30 = swift_getObjectType();
          v31 = sub_18E65D628(v30);

          if (v31 != 2 && (v31 & 1) != 0)
          {
            v32 = v23;
            v33 = sub_18E65F6C0();
            v34 = sub_18E65FA60();

            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              aBlock = v36;
              *v35 = 136446210;
              v37 = sub_18E62A1F8();
              v39 = sub_18E61173C(v37, v38, &aBlock);

              *(v35 + 4) = v39;
              _os_log_impl(&dword_18E60F000, v33, v34, "[%{public}s] Ensure content: archive content ready", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x193AD1140](v36, -1, -1);
              MEMORY[0x193AD1140](v35, -1, -1);
            }

LABEL_23:

            v54 = sub_18E65F8F0();
            [v24 satisfyMilestone_];

            goto LABEL_41;
          }
        }

        else
        {
        }
      }
    }

    v55 = v23;
    v56 = sub_18E65F6C0();
    v57 = sub_18E65FA60();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v58 = 136446210;
      v60 = sub_18E62A1F8();
      v62 = sub_18E61173C(v60, v61, &aBlock);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_18E60F000, v56, v57, "[%{public}s] Ensure content: waiting on content ready", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x193AD1140](v59, -1, -1);
      MEMORY[0x193AD1140](v58, -1, -1);
    }

    v63 = swift_allocObject();
    v63[2] = v55;
    v63[3] = v24;
    v63[4] = ObjectType;
    v64 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks;
    swift_beginAccess();
    v65 = *&v55[v64];
    v66 = v55;
    v67 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[v64] = v65;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_18E639B7C(0, v65[2] + 1, 1, v65);
      *&v55[v64] = v65;
    }

    v70 = v65[2];
    v69 = v65[3];
    if (v70 >= v69 >> 1)
    {
      v65 = sub_18E639B7C((v69 > 1), v70 + 1, 1, v65);
    }

    v65[2] = v70 + 1;
    v71 = &v65[2 * v70];
    v72 = sub_18E63B378;
  }

  else
  {
    v40 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    if (*(*&v23[v40] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) > 1uLL)
    {
      goto LABEL_41;
    }

    v41 = sub_18E65F8F0();
    [v24 addMilestone_];

    v42 = *&v10[v18];
    if (v42)
    {
      v43 = [v42 clientSettings];
      if (v43)
      {
        v44 = v43;
        v45 = swift_dynamicCastObjCProtocolConditional();
        if (v45)
        {
          v46 = [v45 resolvedMetrics];

          if (v46)
          {

            v47 = v23;
            v33 = sub_18E65F6C0();
            v48 = sub_18E65FA60();

            if (os_log_type_enabled(v33, v48))
            {
              v49 = swift_slowAlloc();
              v122 = v48;
              v50 = swift_slowAlloc();
              aBlock = v50;
              *v49 = 136446210;
              v51 = sub_18E62A1F8();
              v53 = sub_18E61173C(v51, v52, &aBlock);

              *(v49 + 4) = v53;
              _os_log_impl(&dword_18E60F000, v33, v122, "[%{public}s] Ensure content: initial content size ready", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v50);
              MEMORY[0x193AD1140](v50, -1, -1);
              MEMORY[0x193AD1140](v49, -1, -1);
            }

            goto LABEL_23;
          }
        }

        else
        {
        }
      }
    }

    v55 = v23;
    v73 = sub_18E65F6C0();
    v74 = sub_18E65FA60();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v75 = 136446210;
      v77 = sub_18E62A1F8();
      v79 = sub_18E61173C(v77, v78, &aBlock);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_18E60F000, v73, v74, "[%{public}s] Ensure content: waiting on initial content size", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x193AD1140](v76, -1, -1);
      MEMORY[0x193AD1140](v75, -1, -1);
    }

    v63 = swift_allocObject();
    v63[2] = v55;
    v63[3] = v24;
    v63[4] = ObjectType;
    v64 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks;
    swift_beginAccess();
    v65 = *&v55[v64];
    v80 = v55;
    v81 = v24;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v55[v64] = v65;
    if ((v82 & 1) == 0)
    {
      v65 = sub_18E639B7C(0, v65[2] + 1, 1, v65);
      *&v55[v64] = v65;
    }

    v84 = v65[2];
    v83 = v65[3];
    if (v84 >= v83 >> 1)
    {
      v65 = sub_18E639B7C((v83 > 1), v84 + 1, 1, v65);
    }

    v65[2] = v84 + 1;
    v71 = &v65[2 * v84];
    v72 = sub_18E63B36C;
  }

  v71[4] = v72;
  v71[5] = v63;
  *&v55[v64] = v65;
  swift_endAccess();
LABEL_41:
  v85 = v23[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated];
  v86 = v23;
  v87 = sub_18E65F6C0();
  v88 = sub_18E65FA60();

  v89 = os_log_type_enabled(v87, v88);
  if (v85 == 1)
  {
    if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock = v91;
      *v90 = 136446210;
      v92 = sub_18E62A1F8();
      v94 = sub_18E61173C(v92, v93, &aBlock);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_18E60F000, v87, v88, "[%{public}s] Ensure content: scene activated", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x193AD1140](v91, -1, -1);
      MEMORY[0x193AD1140](v90, -1, -1);
    }

    v95 = sub_18E65F8F0();
    [v24 satisfyMilestone_];
  }

  else
  {
    if (v89)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      aBlock = v97;
      *v96 = 136446210;
      v98 = sub_18E62A1F8();
      v100 = sub_18E61173C(v98, v99, &aBlock);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_18E60F000, v87, v88, "[%{public}s] Ensure content: waiting on scene activation", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x193AD1140](v97, -1, -1);
      MEMORY[0x193AD1140](v96, -1, -1);
    }

    v101 = swift_allocObject();
    v101[2] = v86;
    v101[3] = v24;
    v101[4] = ObjectType;
    v102 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks;
    swift_beginAccess();
    v103 = *&v86[v102];
    v104 = v86;
    v105 = v24;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v86[v102] = v103;
    if ((v106 & 1) == 0)
    {
      v103 = sub_18E639B7C(0, v103[2] + 1, 1, v103);
      *&v86[v102] = v103;
    }

    v108 = v103[2];
    v107 = v103[3];
    if (v108 >= v107 >> 1)
    {
      v103 = sub_18E639B7C((v107 > 1), v108 + 1, 1, v103);
    }

    v103[2] = v108 + 1;
    v109 = &v103[2 * v108];
    v109[4] = sub_18E63B358;
    v109[5] = v101;
    *&v86[v102] = v103;
    swift_endAccess();
  }

  [v24 begin];
  v110 = *&v86[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction];
  *&v86[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction] = v24;
  v111 = v24;

  v112 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer;
  [*&v86[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer] invalidate];
  v113 = objc_allocWithZone(MEMORY[0x1E698E5E8]);
  v114 = sub_18E65F8F0();
  v115 = [v113 initWithIdentifier_];

  v116 = *&v86[v112];
  *&v86[v112] = v115;
  v117 = v115;

  if (v117)
  {
    sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v118 = sub_18E65FAA0();
    v119 = swift_allocObject();
    *(v119 + 16) = v111;
    v128 = sub_18E63B364;
    v129 = v119;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_18E61D9D8;
    v127 = &block_descriptor_47;
    v120 = _Block_copy(&aBlock);
    v121 = v111;

    [v117 scheduleWithFireInterval:v118 leewayInterval:v120 queue:a4 handler:0.0];

    _Block_release(v120);
    v111 = v118;
  }
}

uint64_t sub_18E62B3B4(uint64_t a1)
{
  v8[2] = a1;
  result = BSDispatchQueueAssertMain();
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_18E63B384;
    *(v4 + 24) = v8;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E63D34C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_18E63D34C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E635E98;
    aBlock[3] = &block_descriptor_64;
    v6 = _Block_copy(aBlock);
    v7 = v3;

    [v7 performUpdate_];

    _Block_release(v6);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_18E62B538()
{
  BSDispatchQueueAssertMain();
  result = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (result)
  {
    return [result backlightSceneHostEnvironment];
  }

  return result;
}

void sub_18E62B574()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated;
  if ((*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) & 1) == 0)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v2 = sub_18E65F6E0();
    __swift_project_value_buffer(v2, qword_1ED764D68);
    v3 = v0;
    v4 = sub_18E65F6C0();
    v5 = sub_18E65FA60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136446210;
      v8 = sub_18E62A1F8();
      v10 = sub_18E61173C(v8, v9, &v21);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_18E60F000, v4, v5, "[%{public}s] Invalidated", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x193AD1140](v7, -1, -1);
      MEMORY[0x193AD1140](v6, -1, -1);
    }

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = 1;
    v11 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction];
    if (v11)
    {
      v12 = v11;
      if (([v12 isComplete] & 1) == 0)
      {
        v13 = sub_18E65F8F0();
        [v12 failWithReason_];

        v12 = v13;
      }
    }

    sub_18E62EA30();
    v14 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer;
    if (*&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer])
    {
      v15 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer];

      sub_18E625AEC();

      v16 = *&v3[v14];
    }

    *&v3[v14] = 0;

    v17 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer;
    [*&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer] invalidate];
    v18 = *&v3[v17];
    *&v3[v17] = 0;

    v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer;
    [*&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer] invalidate];
    v20 = *&v3[v19];
    *&v3[v19] = 0;
  }
}

uint64_t sub_18E62B80C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E62B850(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (*(v1 + v3) == 1)
  {
    sub_18E62F264();
  }

  else
  {
    sub_18E62FA90();
  }
}

void (*sub_18E62B8BC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_18E62B944;
}

void sub_18E62B944(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    BSDispatchQueueAssertMain();
    v6 = *(v5 + v4);
    v7 = v3[3];
    if (v6 == 1)
    {
      sub_18E62F264();
    }

    else
    {
      sub_18E62FA90();
    }
  }

  free(v3);
}

void sub_18E62B9B4()
{
  v1 = sub_18E65F380();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v41 = sub_18E63B3A8;
  v42 = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v39 = sub_18E614A74;
  v40 = &block_descriptor_71;
  v7 = _Block_copy(&aBlock);
  v8 = v0;

  v9 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  _Block_release(v7);
  v10 = [v8 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v10 window];

  if (!v12)
  {
LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  if (!v9)
  {

    return;
  }

  v13 = *&v8[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (!v13)
  {

    goto LABEL_18;
  }

  v14 = *MEMORY[0x1E69DDA98];
  if (!*MEMORY[0x1E69DDA98])
  {
LABEL_20:
    __break(1u);
    return;
  }

  v15 = v13;
  [v14 _initialTouchTimestampForWindow_];
  v17 = v16;
  v33 = v15;
  v18 = [v15 layerManager];
  v19 = [v18 layers];

  v20 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v32 = v19;
  sub_18E65FA30();
  sub_18E65F370();
  for (; v40; v1 = v31)
  {
    while (1)
    {
      sub_18E63B3CC(&aBlock, &v35);
      sub_18E623B78(0, &unk_1ED764D28, 0x1E699F7D0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_18E65F370();
      if (!v40)
      {
        goto LABEL_15;
      }
    }

    v30 = v2;
    v31 = v1;
    v29 = v34;
    v21 = [v34 contextID];
    v22 = [objc_allocWithZone(MEMORY[0x1E698E440]) init];
    v23 = [objc_opt_self() policyCancelingTouchesDeliveredToContextId:v21 withInitialTouchTimestamp:v17];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      [v25 setAssertionEndpoint_];

      swift_unknownObjectRelease();
    }

    [v9 ipc:v24 addPolicy:?];
    v26 = v22;
    MEMORY[0x193AD01B0]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18E65F9C0();
    }

    sub_18E65F9D0();

    v20 = v37;
    sub_18E65F370();
    v2 = v30;
  }

LABEL_15:
  (*(v2 + 8))(v5, v1);
  v27 = type metadata accessor for ActivityCancelTouchAssertion();
  v28 = objc_allocWithZone(v27);
  v28[OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated] = 0;
  *&v28[OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_assertions] = v20;
  v36.receiver = v28;
  v36.super_class = v27;
  objc_msgSendSuper2(&v36, sel_init);

  swift_unknownObjectRelease();
}

void sub_18E62BE5C()
{
  v1 = [objc_allocWithZone(ACUISHandleLiveActivityDoubleTapAction) init];
  v2 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  v17 = v1;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89F50, &qword_18E664500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E6644F0;
    *(inited + 32) = v17;
    v4 = v2;
    v5 = v17;
    sub_18E63B3DC(inited);
    swift_setDeallocating();
    v6 = *(inited + 16);
    swift_arrayDestroy();
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    sub_18E63B6CC();
    v7 = sub_18E65F9F0();

    [v4 sendActions_];
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v8 = sub_18E65F6E0();
    __swift_project_value_buffer(v8, qword_1ED764D68);
    v9 = v0;
    v10 = sub_18E65F6C0();
    v11 = sub_18E65FA50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] Did fail to send Double Tap BSAction.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x193AD1140](v13, -1, -1);
      MEMORY[0x193AD1140](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18E62C0E8(uint64_t a1)
{
  v3 = type metadata accessor for ActivityHardwareButtonPressAction();
  v4 = objc_allocWithZone(v3);
  v5 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v5 setObject:v6 forSetting:0];
  v28.receiver = v4;
  v28.super_class = v3;
  v7 = v5;
  v8 = objc_msgSendSuper2(&v28, sel_initWithInfo_responder_, v7, 0);

  v9 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 isActive];
    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      if (qword_1ED764D60 != -1)
      {
        swift_once();
      }

      v13 = sub_18E65F6E0();
      __swift_project_value_buffer(v13, qword_1ED764D68);
      v14 = v1;
      v15 = sub_18E65F6C0();
      v16 = sub_18E65FA60();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v17 = 136446466;
        v19 = sub_18E62A1F8();
        v21 = sub_18E61173C(v19, v20, &v27);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2048;
        *(v17 + 14) = a1;
        _os_log_impl(&dword_18E60F000, v15, v16, "[%{public}s] sending hardware button press action for type: %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x193AD1140](v18, -1, -1);
        MEMORY[0x193AD1140](v17, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89F50, &qword_18E664500);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18E6644F0;
      *(inited + 32) = v8;
      v23 = v8;
      sub_18E63B3DC(inited);
      swift_setDeallocating();
      v24 = *(inited + 16);
      swift_arrayDestroy();
      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      sub_18E63B6CC();
      v25 = sub_18E65F9F0();

      [v10 sendActions_];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_18E62C3FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_27:
    v4 = sub_18E65FBC0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AD04B0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_27;
        }

        v6 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      [v6 invalidate];
      swift_unknownObjectRelease();
      ++v5;
    }

    while (v7 != v4);
  }

  v8 = *(v1 + v2);
  *(v1 + v2) = MEMORY[0x1E69E7CC0];

  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v11 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = v11;
    sub_18E656F70(KeyPath, sub_18E63CE34, v13);

    swift_beginAccess();
    sub_18E633F18((v1 + v2));
    swift_endAccess();
    result = swift_unknownObjectRelease();
    v15 = *(v1 + v10);
    if (v15)
    {
      v16 = swift_getKeyPath();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v15;
      sub_18E656F70(v16, sub_18E63CE8C, v17);

      swift_beginAccess();
      sub_18E633F18((v1 + v2));
      swift_endAccess();
      result = swift_unknownObjectRelease();
      v19 = *(v1 + v10);
      if (v19)
      {
        v20 = swift_getKeyPath();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = v19;
        sub_18E65727C(v20, sub_18E63CEE4, v21);

        swift_beginAccess();
        sub_18E633F18((v1 + v2));
        swift_endAccess();
        result = swift_unknownObjectRelease();
        v23 = *(v1 + v10);
        if (v23)
        {
          v24 = swift_getKeyPath();
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v26 = v23;
          sub_18E657588(v24, sub_18E63CEF8, v25);

          swift_beginAccess();
          sub_18E633F18((v1 + v2));
          swift_endAccess();
          result = swift_unknownObjectRelease();
          v27 = *(v1 + v10);
          if (v27)
          {
            v28 = swift_getKeyPath();
            v29 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v30 = v27;
            sub_18E657894(v28, sub_18E63CF0C, v29);

            swift_beginAccess();
            sub_18E633F18((v1 + v2));
            swift_endAccess();
            result = swift_unknownObjectRelease();
            v31 = *(v1 + v10);
            if (v31)
            {
              v32 = swift_getKeyPath();
              v33 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v34 = v31;
              sub_18E65727C(v32, sub_18E63CF20, v33);

              swift_beginAccess();
              sub_18E633F18((v1 + v2));
              swift_endAccess();
              result = swift_unknownObjectRelease();
              v35 = *(v1 + v10);
              if (v35)
              {
                v36 = swift_getKeyPath();
                v37 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v38 = v35;
                sub_18E657BA0(v36, sub_18E63CF34, v37);

                swift_beginAccess();
                sub_18E633F18((v1 + v2));
                swift_endAccess();
                result = swift_unknownObjectRelease();
                v39 = *(v1 + v10);
                if (v39)
                {
                  v40 = swift_getKeyPath();
                  v41 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v42 = v39;
                  sub_18E65727C(v40, sub_18E63CF48, v41);

                  swift_beginAccess();
                  sub_18E633F18((v1 + v2));
                  swift_endAccess();
                  result = swift_unknownObjectRelease();
                  v43 = *(v1 + v10);
                  if (v43)
                  {
                    v44 = swift_getKeyPath();
                    v45 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v46 = v43;
                    sub_18E65727C(v44, sub_18E63CF5C, v45);

                    swift_beginAccess();
                    sub_18E633F18((v1 + v2));
                    swift_endAccess();
                    result = swift_unknownObjectRelease();
                    v47 = *(v1 + v10);
                    if (v47)
                    {
                      v48 = swift_getKeyPath();
                      v49 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v50 = v47;
                      sub_18E65727C(v48, sub_18E63CF70, v49);

                      swift_beginAccess();
                      sub_18E633F18((v1 + v2));
                      swift_endAccess();
                      result = swift_unknownObjectRelease();
                      v51 = *(v1 + v10);
                      if (v51)
                      {
                        v52 = swift_getKeyPath();
                        v53 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v54 = v51;
                        sub_18E65727C(v52, sub_18E63CFBC, v53);

                        swift_beginAccess();
                        sub_18E633F18((v1 + v2));
                        swift_endAccess();
                        return swift_unknownObjectRelease();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_18E62CC9C(int a1, char a2)
{
  v5 = sub_18E65F850();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18E65F870();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  if ((v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated] & 1) != 0 || (a2 & 1) == 0 && *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] == a1)
  {
    return;
  }

  v65 = v11;
  v66 = v9;
  v67 = v10;
  v68 = v6;
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v15 = sub_18E65F6E0();
  v16 = __swift_project_value_buffer(v15, qword_1ED764D68);
  v17 = v2;
  v64 = v16;
  v18 = sub_18E65F6C0();
  v19 = sub_18E65FA60();

  if (os_log_type_enabled(v18, v19))
  {
    v63 = v5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446722;
    v22 = sub_18E62A1F8();
    v24 = sub_18E61173C(v22, v23, aBlock);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    if (a1)
    {
      if (a1 == 2)
      {
        v25 = 0x616E73206576696CLL;
        v26 = 0xED0000746F687370;
LABEL_15:
        v28 = sub_18E61173C(v25, v26, aBlock);

        *(v20 + 14) = v28;
        *(v20 + 22) = 1026;
        *(v20 + 24) = a2 & 1;
        _os_log_impl(&dword_18E60F000, v18, v19, "[%{public}s] Updating presentationMode to: %{public}s - (forced? %{BOOL,public}d).", v20, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v21, -1, -1);
        MEMORY[0x193AD1140](v20, -1, -1);

        v5 = v63;
        goto LABEL_16;
      }

      if (a1 != 1)
      {
        LODWORD(v69) = a1;
        goto LABEL_47;
      }

      v27 = 1702259020;
    }

    else
    {
      v27 = 1701736270;
    }

    v25 = v27 | 0x20;
    v26 = 0xE400000000000000;
    goto LABEL_15;
  }

LABEL_16:
  v29 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] = a1;
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
LABEL_45:
        LODWORD(aBlock[0]) = a1;
LABEL_47:
        sub_18E65FDF0();
        __break(1u);
        return;
      }

      v30 = *&v17[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
      if (v30)
      {
        v31 = v30;
        v32 = sub_18E65F8F0();
        [v31 setText_];

        v33 = [v17 view];
        if (!v33)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v34 = v33;
        [v33 setNeedsLayout];
      }
    }

    v35 = *&v17[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
    if (!v35)
    {
LABEL_25:
      sub_18E630134(0, 1);
      sub_18E62D730(a1 == 1, 0, 0);
LABEL_34:
      v49 = sub_18E62A308();
      v50 = swift_allocObject();
      *(v50 + 16) = v17;
      *(v50 + 24) = a1 == 1;
      aBlock[4] = sub_18E63D0FC;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E63D350;
      aBlock[3] = &block_descriptor_440;
      v51 = _Block_copy(aBlock);
      v52 = v17;
      sub_18E65F860();
      v69 = MEMORY[0x1E69E7CC0];
      sub_18E63CB04(&qword_1ED764D58, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE0, qword_18E6646A8);
      sub_18E63CFFC(&qword_1ED764D48, &qword_1EAC89FE0, qword_18E6646A8);
      v53 = v66;
      sub_18E65FB80();
      MEMORY[0x193AD02E0](0, v14, v53, v51);
      _Block_release(v51);

      (v68[1].isa)(v53, v5);
      (*(v65 + 8))(v14, v67);

      return;
    }

    v36 = v35;
    v37 = sub_18E65F8F0();
    [v36 setText_];

    v38 = [v17 view];
    if (v38)
    {
      v39 = v38;
      [v38 setNeedsLayout];

      goto LABEL_25;
    }

    goto LABEL_42;
  }

  v40 = *&v17[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
  if (v40)
  {
    v41 = v40;
    v42 = sub_18E65F8F0();
    [v41 setText_];

    v43 = [v17 view];
    if (!v43)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v44 = v43;
    [v43 setNeedsLayout];
  }

  v45 = *&v17[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v45)
  {
    v46 = v45;
    if ([v46 contentState] != 2)
    {
      sub_18E62D730(1, 0, 0);
    }

    BSDispatchQueueAssertMain();
    if (*&v17[v29] == 2)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v17;
      v48 = v17;
      sub_18E630398(sub_18E63D0F4, v47);

      goto LABEL_34;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v54 = v17;
  v68 = sub_18E65F6C0();
  v55 = sub_18E65FA50();

  if (os_log_type_enabled(v68, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136446210;
    v58 = sub_18E62A1F8();
    v60 = sub_18E61173C(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_18E60F000, v68, v55, "[%{public}s] Snapshot failed because there is no scene found", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x193AD1140](v57, -1, -1);
    MEMORY[0x193AD1140](v56, -1, -1);
  }

  else
  {
    v61 = v68;
  }
}

void sub_18E62D534(char a1)
{
  v2 = v1;
  v4 = sub_18E65F880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_18E62A308();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_18E65F890();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion;
    v11 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion);
    if (v11)
    {
      v12 = v11;
      sub_18E65F690();
    }

    if (a1)
    {
      v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
      swift_beginAccess();
      v14 = (*(v2 + v13) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
      v15 = *v14;
      v16 = v14[1];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(sub_18E65F6B0());

      v17 = sub_18E65F6A0();
      v18 = *(v2 + v10);
      *(v2 + v10) = v17;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_18E62D730(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = BSDispatchQueueAssertMain();
  if (v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated])
  {
    if (a2)
    {
      a2(v7);
    }

LABEL_13:
    v29 = 0;
    return sub_18E63CC7C(v29);
  }

  isEscapingClosureAtFileLocation = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v9 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v9)
  {
    v10 = qword_1ED764D60;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_18E65F6E0();
    __swift_project_value_buffer(v12, qword_1ED764D68);
    v13 = v3;
    v14 = sub_18E65F6C0();
    v15 = sub_18E65FA60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = a1;
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v16 = 136446466;
      v19 = sub_18E62A1F8();
      v21 = sub_18E61173C(v19, v20, &aBlock);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      if (v17)
      {
        v22 = 0x756F726765726F66;
      }

      else
      {
        v22 = 0x756F72676B636162;
      }

      v23 = sub_18E61173C(v22, 0xEA0000000000646ELL, &aBlock);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_18E60F000, v14, v15, "[%{public}s] Updating activity scene to %{public}s.", v16, 0x16u);
      swift_arrayDestroy();
      v24 = v18;
      a1 = v17;
      MEMORY[0x193AD1140](v24, -1, -1);
      MEMORY[0x193AD1140](v16, -1, -1);
    }

    v3 = swift_allocObject();
    v3[16] = a1 & 1;
    v25 = swift_allocObject();
    v25[2] = sub_18E63CD40;
    v25[3] = v3;
    v120 = sub_18E63D34C;
    v121 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_18E635E98;
    v119 = &block_descriptor_338;
    v26 = _Block_copy(&aBlock);

    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    v120 = sub_18E63CD88;
    v121 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_18E635F04;
    v119 = &block_descriptor_344;
    v28 = _Block_copy(&aBlock);
    sub_18E6174A0(a2);

    [v11 performUpdate:v26 withCompletion:v28];

    _Block_release(v28);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_17;
  }

  v31 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource];
  v32 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource + 8];
  v33 = sub_18E6234B8(v31, v32);
  if (!v33)
  {
    if (qword_1ED764D60 == -1)
    {
LABEL_45:
      v91 = sub_18E65F6E0();
      __swift_project_value_buffer(v91, qword_1ED764D68);
      v92 = v3;
      v93 = sub_18E65F6C0();
      v94 = sub_18E65FA60();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock = v96;
        *v95 = 136446467;
        v97 = sub_18E62A1F8();
        v99 = sub_18E61173C(v97, v98, &aBlock);

        *(v95 + 4) = v99;
        *(v95 + 12) = 2081;
        *(v95 + 14) = sub_18E61173C(v31, v32, &aBlock);
        _os_log_impl(&dword_18E60F000, v93, v94, "[%{public}s] Couldn't create a scene with %{private}s", v95, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v96, -1, -1);
        MEMORY[0x193AD1140](v95, -1, -1);
      }

      goto LABEL_13;
    }

LABEL_59:
    swift_once();
    goto LABEL_45;
  }

  v110 = a1;
  v108 = v33;
  v25 = [objc_opt_self() identityForProcessIdentity_];
  if (qword_1ED764F08 != -1)
  {
    goto LABEL_53;
  }

LABEL_17:
  v34 = qword_1ED764F10;
  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_18E63CC8C;
  *(v36 + 24) = v35;
  v120 = sub_18E63CC94;
  v121 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_18E6361B8;
  v119 = &block_descriptor_300;
  v37 = _Block_copy(&aBlock);
  v38 = v121;
  v39 = v3;
  v107 = v25;

  v40 = [v34 createScene_];
  _Block_release(v37);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
    goto LABEL_55;
  }

  v41 = *&v3[isEscapingClosureAtFileLocation];
  *&v3[isEscapingClosureAtFileLocation] = v40;
  v42 = v40;

  sub_18E62C3FC();
  [v42 setDelegate_];
  v43 = [v42 layerManager];
  [v43 addObserver_];

  result = [v42 uiPresentationManager];
  if (!result)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v44 = result;
  v111 = v42;
  v45 = sub_18E65F8F0();
  v46 = [v44 createPresenterWithIdentifier_];

  v47 = *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter];
  *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter] = v46;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v120 = sub_18E63620C;
  v121 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_18E63D358;
  v119 = &block_descriptor_303;
  v3 = _Block_copy(&aBlock);

  [v46 modifyPresentationContext_];
  _Block_release(v3);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v46 activate];
  v48 = [v46 presentationView];
  v112 = sub_18E629C68();
  v49 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v50 = *&v39[v49];
  v51 = *(v50 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v52 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v53 = *&v39[v52];
  v54 = OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType;
  if (*(v53 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 2 && *(v50 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics))
  {
    v51 = *(v50 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  }

  v55 = v51;
  v56 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  v115 = *&v112[v56];
  v57 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v113 = v55;
  if (*(*&v55[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || *(*&v55[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || (v58 = *&v112[v57], v59 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius, swift_beginAccess(), *&v55[v59] != 0.0))
  {
    *&v115 = sub_18E653E60();
    *(&v115 + 1) = v60;
    v61 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
    swift_beginAccess();
    v58 = *&v55[v61];
  }

  v114 = 1;
  if (*(v53 + v54) == 4)
  {
    v114 = [v39 interfaceOrientation];
  }

  v62 = *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView];
  *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView] = v48;
  v63 = v48;

  result = [v39 view];
  if (!result)
  {
    goto LABEL_61;
  }

  v64 = result;
  [result addSubview_];

  result = [v39 view];
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v65 = result;
  [result setNeedsLayout];

  [v63 setClipsToBounds_];
  v66 = [v63 layer];
  v67 = sub_18E65F8F0();
  [v66 setName_];

  [v63 _setContinuousCornerRadius_];
  [v39 setPreferredContentSize_];
  v38 = swift_allocObject();
  v38[2] = v39;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_18E63CCBC;
  *(v68 + 24) = v38;
  v120 = sub_18E63D3DC;
  v121 = v68;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_18E63D358;
  v119 = &block_descriptor_312;
  v69 = _Block_copy(&aBlock);
  v3 = v39;

  [v111 configureParameters_];
  _Block_release(v69);
  v70 = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_38:
    v106 = a3;
    v76 = sub_18E65F6E0();
    __swift_project_value_buffer(v76, qword_1ED764D68);
    v77 = v38;
    v78 = v3;
    v79 = sub_18E65F6C0();
    v80 = sub_18E65FA60();
    v109 = v77;

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v81 = 136446722;
      v84 = sub_18E62A1F8();
      v86 = sub_18E61173C(v84, v85, &aBlock);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2082;
      if (v110)
      {
        v87 = 0x756F726765726F66;
      }

      else
      {
        v87 = 0x756F72676B636162;
      }

      v88 = sub_18E61173C(v87, 0xEA0000000000646ELL, &aBlock);

      *(v81 + 14) = v88;
      *(v81 + 22) = 2112;
      if (v38)
      {
        v89 = [v109 identity];
        v90 = v89;
      }

      else
      {
        v89 = 0;
        v90 = 0;
      }

      *(v81 + 24) = v89;
      *v82 = v90;
      _os_log_impl(&dword_18E60F000, v79, v80, "[%{public}s] Creating activity scene to %{public}s. Display configuration: %@", v81, 0x20u);
      sub_18E63CCD8(v82);
      MEMORY[0x193AD1140](v82, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v83, -1, -1);
      MEMORY[0x193AD1140](v81, -1, -1);
    }

    v100 = swift_allocObject();
    *(v100 + 16) = &v115;
    *(v100 + 24) = &v114;
    *(v100 + 32) = v38;
    *(v100 + 40) = v110 & 1;
    *(v100 + 48) = v78;
    *(v100 + 56) = v112;
    v3 = swift_allocObject();
    *(v3 + 2) = sub_18E63CCC4;
    *(v3 + 3) = v100;
    v120 = sub_18E63D34C;
    v121 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_18E635E98;
    v119 = &block_descriptor_322;
    v31 = _Block_copy(&aBlock);
    v101 = v78;
    v32 = v109;
    v102 = v112;

    v103 = swift_allocObject();
    *(v103 + 16) = a2;
    *(v103 + 24) = v106;
    v120 = sub_18E63D3D8;
    v121 = v103;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_18E635F04;
    v119 = &block_descriptor_328;
    v104 = _Block_copy(&aBlock);
    sub_18E6174A0(a2);

    [v111 performUpdate:v31 withCompletion:v104];

    _Block_release(v104);
    _Block_release(v31);

    swift_unknownObjectRelease();
    LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

    if ((v104 & 1) == 0)
    {
      v29 = sub_18E63CCC4;
      return sub_18E63CC7C(v29);
    }

    __break(1u);
    goto LABEL_59;
  }

  result = [v3 view];
  if (result)
  {
    v71 = result;
    v72 = [result window];

    if (v72 && (v73 = [v72 windowScene], v72, v73))
    {
      v74 = [v73 _FBSScene];

      v75 = [v74 settings];
      v38 = [v75 displayConfiguration];
    }

    else
    {
      v38 = 0;
    }

    v105 = v63;
    if (qword_1ED764D60 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_18E62E8BC(uint64_t a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  v6 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E63D34C;
    *(v8 + 24) = v7;
    v11[4] = sub_18E63D34C;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_18E635E98;
    v11[3] = &block_descriptor_431;
    v9 = _Block_copy(v11);
    v10 = v6;

    [v10 performUpdate_];

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18E62EA30()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter;
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneForeground) = 0;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView;
  [*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView) removeFromSuperview];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v7)
  {
    v8 = [v7 layerManager];
    [v8 remove_];

    v7 = *(v0 + v6);
    if (v7)
    {
      [v7 setDelegate_];
      v7 = *(v0 + v6);
    }
  }

  [v7 invalidate];
  v9 = *(v0 + v6);
  *(v0 + v6) = 0;

  result = sub_18E62C3FC();
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) = 1;
  return result;
}

void sub_18E62EB30()
{
  BSDispatchQueueAssertMain();
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  v3 = sub_18E65F6C0();
  v4 = sub_18E65FA60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v75 = v6;
    *v5 = 136446210;
    v7 = sub_18E62A1F8();
    v9 = sub_18E61173C(v7, v8, &v75);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18E60F000, v3, v4, "[%{public}s] Reseting content size", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193AD1140](v6, -1, -1);
    MEMORY[0x193AD1140](v5, -1, -1);
  }

  if (*&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene])
  {
    v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
    swift_beginAccess();
    v11 = *&v2[v10];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
      swift_beginAccess();
      v13 = *(*&v2[v12] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType);
      if (v13 == 5)
      {
        v14 = v2;
        v15 = v11;
        v16 = sub_18E65F6C0();
        v17 = sub_18E65FA60();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v71[0] = v19;
          *v18 = 136446466;
          v20 = sub_18E62A1F8();
          v22 = sub_18E61173C(v20, v21, v71);

          *(v18 + 4) = v22;
          *(v18 + 12) = 2082;
          [v14 preferredContentSize];
          v74[2] = v23;
          v74[3] = v24;
          type metadata accessor for CGSize(0);
          v25 = sub_18E65F910();
          v27 = sub_18E61173C(v25, v26, v71);

          *(v18 + 14) = v27;
          _os_log_impl(&dword_18E60F000, v16, v17, "[%{public}s] Activity scene type is CarPlay. Preferred size: (%{public}s). Intentionally ignoring resolved metrics.", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x193AD1140](v19, -1, -1);
          MEMORY[0x193AD1140](v18, -1, -1);
        }

LABEL_34:
        return;
      }

      v28 = &v11[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
      swift_beginAccess();
      v29 = *v28;
      v30 = v28[1];
      if (v13 >= 2)
      {
        v39 = v11;
      }

      else
      {
        v31 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
        v32 = swift_beginAccess();
        v33 = *(*&v2[v31] + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
        v34 = *&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest];
        v35 = *(v34 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
        if (v35 != 0.0 || *(*&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || (v36 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius, v32 = swift_beginAccess(), *&v33[v36] != 0.0))
        {
          v37 = *(v34 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
          if (v37 != 1)
          {
            if (v37)
            {
              v35 = 0.0;
            }

            else
            {
              if (v35 >= v29)
              {
                v38 = v29;
              }

              else
              {
                v38 = v35;
              }

              v35 = *(v34 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
              if (v38 > v35)
              {
                v35 = v38;
              }
            }
          }

          v29 = CGSizeMake(v32, v35, v30);
          v30 = v40;
        }

        v41 = v11;
        v42 = v33;
        v43 = v42;
        if (v30 >= 40.0)
        {
        }

        else
        {
          v44 = v2;
          v45 = sub_18E65F6C0();
          v46 = sub_18E65FA60();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *&v48 = COERCE_DOUBLE(swift_slowAlloc());
            v72 = *&v48;
            *v47 = 136446466;
            v49 = sub_18E62A1F8();
            v51 = sub_18E61173C(v49, v50, &v72);

            *(v47 + 4) = v51;
            *(v47 + 12) = 2082;
            v52 = sub_18E65F9E0();
            v54 = sub_18E61173C(v52, v53, &v72);

            *(v47 + 14) = v54;
            _os_log_impl(&dword_18E60F000, v45, v46, "[%{public}s] Requested frame size height (%{public}s) is smaller than minimum height, setting it to minimum height", v47, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x193AD1140](v48, -1, -1);
            MEMORY[0x193AD1140](v47, -1, -1);
          }

          v30 = 40.0;
        }
      }

      [v2 preferredContentSize];
      v77.width = v29;
      v77.height = v30;
      if (CGSizeEqualToSize(v76, v77))
      {
        v55 = v2;
        v16 = sub_18E65F6C0();
        v56 = sub_18E65FA60();

        if (os_log_type_enabled(v16, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v74[0] = v58;
          *v57 = 136446722;
          v59 = sub_18E62A1F8();
          v61 = sub_18E61173C(v59, v60, v74);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2082;
          [v55 preferredContentSize];
          v72 = *&v62;
          v73 = v63;
          type metadata accessor for CGSize(0);
          v64 = sub_18E65F910();
          v66 = sub_18E61173C(v64, v65, v74);

          *(v57 + 14) = v66;
          *(v57 + 22) = 2082;
          v72 = v29;
          v73 = v30;
          v67 = sub_18E65F910();
          v69 = sub_18E61173C(v67, v68, v74);

          *(v57 + 24) = v69;
          _os_log_impl(&dword_18E60F000, v16, v56, "[%{public}s] Not updating preferred content size (%{public}s) because requested size is the same (%{public}s)", v57, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193AD1140](v58, -1, -1);
          MEMORY[0x193AD1140](v57, -1, -1);
        }

        goto LABEL_34;
      }

      v70 = MEMORY[0x193AD0980]();
      sub_18E636B4C(v2, v29, v30);
      objc_autoreleasePoolPop(v70);
    }
  }
}

void sub_18E62F264()
{
  v1 = v0;
  v2 = sub_18E65F380();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  BSDispatchQueueAssertMain();
  v9 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (!v9)
  {
    return;
  }

  v62 = v3;
  v66 = v9;
  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_48;
  }

  v11 = v10;
  v12 = [v10 window];

  v65 = v12;
  if (!v12)
  {
    v18 = v66;

    return;
  }

  v63 = v2;
  v13 = [v66 layerManager];
  v64 = [v13 layers];

  v14 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  swift_beginAccess();
  v15 = *&v1[v14];
  v16 = *(v15 + 16);
  v69 = v8;
  if (v16)
  {
    v17 = sub_18E639CB0(v16, 0);
    v71 = sub_18E63B094(&aBlock, v17 + 8, v16, v15);

    sub_18E615B48();
    if (v71 != v16)
    {
      goto LABEL_47;
    }

    v8 = v69;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_18E637240(v17);

  v19 = objc_allocWithZone(MEMORY[0x1E695DFA8]);
  v20 = sub_18E65F990();

  v70 = [v19 initWithArray_];

  v68 = [v65 _contextId];
  sub_18E65FA30();
  sub_18E65F370();
  if (!v80)
  {
LABEL_32:
    v49 = *(v62 + 8);
    v49(v8, v63);
    sub_18E65FA30();
    sub_18E65F370();
    while (v75)
    {
      sub_18E63B3CC(&aBlock, &v79);
      if (swift_dynamicCast())
      {
        v50 = *&v1[v14];
        if (*(v50 + 16))
        {
          v51 = v78;
          v52 = sub_18E64C61C(v78);
          if (v53)
          {
            v54 = *(*(v50 + 56) + 8 * v52);
            [v54 invalidate];
            swift_beginAccess();
            v55 = *&v1[v14];
            v56 = sub_18E64C61C(v51);
            if (v57)
            {
              v58 = v56;
              v59 = *&v1[v14];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v61 = *&v1[v14];
              v78 = v61;
              *&v1[v14] = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_18E650A84();
                v61 = v78;
              }

              sub_18E63A248(v58, v61);
              *&v1[v14] = v61;
            }

            swift_endAccess();
          }
        }
      }

      sub_18E65F370();
    }

    v49(v72, v63);

    return;
  }

  v67 = &v74;
  while (1)
  {
    sub_18E63B3CC(&v79, &aBlock);
    sub_18E623B78(0, &unk_1ED764D28, 0x1E699F7D0);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_15:
    sub_18E65F370();
    if (!v80)
    {
      goto LABEL_32;
    }
  }

  v71 = v78;
  v21 = [v78 contextID];
  v22 = sub_18E65FF30();
  [v70 removeObject_];

  v23 = [objc_allocWithZone(MEMORY[0x1E698E440]) init];
  v24 = [objc_opt_self() policyRequiringSharingOfTouchesDeliveredToChildContextId:v21 withHostContextId:v68];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
    [v26 setAssertionEndpoint_];

    swift_unknownObjectRelease();
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  v76 = sub_18E63D0C4;
  v77 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v74 = sub_18E614A74;
  v75 = &block_descriptor_414;
  v28 = _Block_copy(&aBlock);
  v29 = v1;

  v30 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  _Block_release(v28);
  swift_beginAccess();
  v31 = v23;
  v32 = *&v1[v14];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *&v1[v14];
  v34 = v78;
  *&v1[v14] = 0x8000000000000000;
  v36 = sub_18E64C61C(v21);
  v37 = v34[2];
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (!__OFADD__(v37, v38))
  {
    v40 = v35;
    if (v34[3] < v39)
    {
      sub_18E6505A8(v39, v33);
      v41 = sub_18E64C61C(v21);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_49;
      }

      v36 = v41;
      v43 = v78;
      if ((v40 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_26:
      v44 = v43[7];
      v45 = *(v44 + 8 * v36);
      *(v44 + 8 * v36) = v31;

LABEL_30:
      *&v1[v14] = v43;
      swift_endAccess();
      if (v30)
      {
        [swift_unknownObjectRetain() ipc:v25 addPolicy:?];

        swift_unknownObjectRelease_n();
      }

      else
      {
      }

      v8 = v69;
      goto LABEL_15;
    }

    if (v33)
    {
      v43 = v78;
      if (v35)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_18E650A84();
      v43 = v78;
      if (v40)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    v43[(v36 >> 6) + 8] |= 1 << v36;
    *(v43[6] + 4 * v36) = v21;
    *(v43[7] + 8 * v36) = v31;
    v46 = v43[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_46;
    }

    v43[2] = v48;
    goto LABEL_30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_18E65FE10();
  __break(1u);
}

id sub_18E62FA90()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + v1);

  for (i = 0; v5; result = [*(*(v2 + 56) + ((v10 << 9) | (8 * v11))) invalidate])
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v12 = *(v0 + v1);
      *(v0 + v1) = MEMORY[0x1E69E7CC8];
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_18E62FBAC()
{
  BSDispatchQueueAssertMain();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [v1 layer];
  v3 = sub_18E65F8F0();
  [v2 setName_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setFrame_];
  [v1 setClipsToBounds_];
  [v1 setAutoresizingMask_];
  v14 = sub_18E629C68();
  v15 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v16 = *&v14[v15];

  [v1 _setContinuousCornerRadius_];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 addSubview_];

  v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView;
  v20 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
  *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView] = v1;
  v21 = v1;

  BSDispatchQueueAssertMain();
  v22 = *&v0[v19];
  if (v22)
  {
    v23 = v22;
    [v23 setAlpha_];
    [v23 setHidden_];
  }
}

void sub_18E62FDC4()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_18E65F8F0();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    return;
  }

  v4 = sub_18E65F8F0();
  v5 = [v3 BOOLForKey_];

  if (!v5)
  {
    return;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame_];
  [v6 setClipsToBounds_];
  v17 = [v6 layer];
  v18 = sub_18E65F8F0();
  [v17 setName_];

  v19 = [objc_opt_self() systemFontOfSize_];
  [v6 setFont_];

  [v6 setTextAlignment_];
  v20 = objc_opt_self();
  v21 = [v20 redColor];
  [v6 setTextColor_];

  v22 = [v20 whiteColor];
  v23 = [v22 colorWithAlphaComponent_];

  [v6 setBackgroundColor_];
  [v6 setAutoresizingMask_];
  [v6 _setContinuousCornerRadius_];
  [v6 setAlpha_];
  [v6 setHidden_];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 addSubview_];

  v26 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
  *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel] = v6;
}

void sub_18E630134(unsigned __int8 a1, char a2)
{
  BSDispatchQueueAssertMain();
  v5 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView);
  if (!v5)
  {
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView);
  if (a1 != 2)
  {
    v7 = v5;
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a1 & 1;
    *(v9 + 24) = v15;
    v20 = sub_18E63CC30;
    v21 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_18E63D350;
    v19 = &block_descriptor_274;
    v10 = _Block_copy(&aBlock);
    v11 = v15;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1 & 1;
    v20 = sub_18E63CC54;
    v21 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_18E633024;
    v19 = &block_descriptor_280;
    v13 = _Block_copy(&aBlock);
    v14 = v11;

    [v8 animateWithDuration:v10 animations:v13 completion:0.4];

    _Block_release(v13);
    _Block_release(v10);
    return;
  }

  a1 = [v5 isHidden];
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0.0;
  if (a1)
  {
    v6 = 1.0;
  }

  [v15 setAlpha_];
  [v15 setHidden_];
}

uint64_t sub_18E630398(uint64_t a1, uint64_t a2)
{
  v5 = sub_18E65F850();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E65F870();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;

  v14 = v2;
  BSDispatchQueueAssertMain();
  v15 = *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter];
  if (v15 && (v16 = *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene]) != 0)
  {
    v17 = *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter];
    swift_unknownObjectRetain();
    v18 = v16;
    if ([v18 contentState] == 2)
    {
      v19 = [v15 newSnapshot];
      v28 = sub_18E62A308();
      v20 = swift_allocObject();
      v20[2] = sub_18E63CA98;
      v20[3] = v13;
      v20[4] = v19;
      aBlock[4] = sub_18E63CAA8;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E63D350;
      aBlock[3] = &block_descriptor_256;
      v26 = _Block_copy(aBlock);

      v27 = v19;
      sub_18E65F860();
      v31 = MEMORY[0x1E69E7CC0];
      sub_18E63CB04(&qword_1ED764D58, MEMORY[0x1E69E7F60]);
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE0, qword_18E6646A8);
      sub_18E63CFFC(&qword_1ED764D48, &qword_1EAC89FE0, qword_18E6646A8);
      sub_18E65FB80();
      v21 = v26;
      v22 = v28;
      MEMORY[0x193AD02E0](0, v12, v8, v26);
      _Block_release(v21);

      swift_unknownObjectRelease();

      (*(v30 + 8))(v8, v5);
      (*(v29 + 8))(v12, v9);
    }

    sub_18E637580(1, 1, v14, a1, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_18E637580(0, 1, v14, a1, a2);
  }
}