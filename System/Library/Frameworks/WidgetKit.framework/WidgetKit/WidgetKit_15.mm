uint64_t sub_192186930(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 40) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_192186A74, v6, v5);
}

uint64_t sub_192186A74()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_192186AD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v4[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = sub_192225150();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = *(*(type metadata accessor for BundleStub() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v13 = type metadata accessor for TimelineReloadPolicy();
  v4[25] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v15 = a3[3];
  v4[27] = v15;
  v16 = *(v15 - 8);
  v4[28] = v16;
  v17 = *(v16 + 64) + 15;
  v4[29] = swift_task_alloc();
  v18 = type metadata accessor for ViewableTimelineEntry();
  v4[30] = v18;
  v19 = *(v18 - 8);
  v4[31] = v19;
  v20 = *(v19 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v21 = a3[4];
  v22 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[36] = AssociatedTypeWitness;
  v24 = sub_192228240();
  v4[37] = v24;
  v25 = *(v24 - 8);
  v4[38] = v25;
  v26 = *(v25 + 64) + 15;
  v4[39] = swift_task_alloc();
  v27 = *(AssociatedTypeWitness - 8);
  v4[40] = v27;
  v28 = *(v27 + 64) + 15;
  v4[41] = swift_task_alloc();
  sub_192227CC0();
  v4[42] = sub_192227CB0();
  v30 = sub_192227C70();
  v4[43] = v30;
  v4[44] = v29;

  return MEMORY[0x1EEE6DFA0](sub_192186E90, v30, v29);
}

void sub_192186E90()
{
  v44 = v0;
  v1 = [*(v0 + 72) intentReference];
  *(v0 + 360) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 96);
    v4 = v3[1];
    v41 = (*v3 + **v3);
    v5 = (*v3)[1];
    v6 = swift_task_alloc();
    *(v0 + 368) = v6;
    *v6 = v0;
    v6[1] = sub_192187238;
    v7 = *(v0 + 312);
    v8 = *(v0 + 80);

    v41(v7, v2, v8);
  }

  else
  {
    v9 = *(v0 + 336);

    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v11 = sub_1922258B0();
    __swift_project_value_buffer(v11, qword_1ED74CCC8);
    v12 = v10;
    v13 = sub_192225890();
    v14 = sub_192227F90();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136446210;
      v19 = [v16 succinctDescription];

      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = sub_192227960();
      v22 = v21;

      v23 = sub_19202B8CC(v20, v22, &v43);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_192028000, v13, v14, "Unable to fetch entry or intent ref from widget %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x193B0C7F0](v18, -1, -1);
      MEMORY[0x193B0C7F0](v17, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 328);
    v25 = *(v0 + 312);
    v27 = *(v0 + 272);
    v26 = *(v0 + 280);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v30 = *(v0 + 232);
    v31 = *(v0 + 208);
    v33 = *(v0 + 184);
    v32 = *(v0 + 192);
    v35 = *(v0 + 160);
    v36 = *(v0 + 144);
    v37 = *(v0 + 136);
    v38 = *(v0 + 128);
    v39 = *(v0 + 120);
    v40 = *(v0 + 112);
    v42 = *(v0 + 104);

    v34 = *(v0 + 8);

    v34(0);
  }
}

uint64_t sub_192187238()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v6 = *v0;

  v3 = *(v1 + 352);
  v4 = *(v1 + 344);

  return MEMORY[0x1EEE6DFA0](sub_192187358, v4, v3);
}

void sub_192187358()
{
  v141 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);

  if ((*(v3 + 48))(v2, 1, v4) != 1)
  {
    v22 = *(v0 + 328);
    v23 = *(v0 + 280);
    v24 = *(v0 + 248);
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v27 = *(v0 + 216);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);
    (*(*(v0 + 320) + 32))(v22, *(v0 + 312), *(v0 + 288));
    v31 = *(v28 + 32);
    v32 = *(v28 + 40);
    v31(v22);
    sub_19221B68C(v25, v27, *(v29 + 40));
    (*(v26 + 8))(v25, v27);
    v33 = *v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
    v34 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v130 = *(v24 + 72);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_19222B480;
    v122 = v34;
    sub_19218AC30(v23, v35 + v34, type metadata accessor for ViewableTimelineEntry);
    v36 = qword_1ED74B558;
    v120 = v33;
    if (v36 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 208);
    v38 = *(v0 + 184);
    v39 = *(v0 + 192);
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    v42 = *(v0 + 72);
    v43 = __swift_project_value_buffer(*(v0 + 200), qword_1ED74B570);
    sub_19218AC30(v43, v37, type metadata accessor for TimelineReloadPolicy);
    v44 = type metadata accessor for WidgetViewCollection();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    v47 = swift_allocObject();
    v48 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
    v49 = sub_192224E00();
    (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
    BundleStub.init(_:)([v42 extensionIdentity], v39);
    sub_1920E07FC(v39, v47 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    (*(v41 + 32))(v47 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v38, v40);
    v140[0] = v35;

    sub_19209B0C4(v140);
    v121 = v47;
    v50 = *(v0 + 240);
    v51 = *(v0 + 248);
    v52 = *(v0 + 152);
    v53 = *(v0 + 160);

    v54 = v140[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
    inited = swift_initStackObject();
    *(inited + 16) = v54;
    *(inited + 24) = 0;
    v125 = MEMORY[0x1E69E7CC0];
    v124 = MEMORY[0x1E69E7CC0] + v122;
    v134 = *(v52 + 32);
    v137 = *(v51 + 56);
    v137(v53 + v134, 1, 1, v50);
    v132 = v54;
    v126 = v54 + v122;
    *v53 = inited;
    v53[1] = sub_1920DA3A8;
    v53[2] = 0;
    v56 = (v51 + 48);
    v128 = inited;

    v123 = 0;
    v57 = 0;
    v137(*(v0 + 136), 1, 1, *(v0 + 240));
    while (1)
    {
      v58 = v132[2];
      if (v57 == v58)
      {
        v59 = 1;
      }

      else
      {
        if (v57 >= v58)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_19218AC30(&v126[v57 * v130], *(v0 + 128), type metadata accessor for ViewableTimelineEntry);
        v59 = 0;
        *(v128 + 24) = ++v57;
      }

      v60 = *(v0 + 240);
      v61 = *(v0 + 128);
      v62 = *(v0 + 136);
      v63 = *(v0 + 120);
      v137(v61, v59, 1, v60);
      sub_192033970(v62, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v61, v62);
      sub_1920D86C4(v62, v63);
      v64 = *v56;
      if ((*v56)(v63, 1, v60) == 1)
      {
        break;
      }

      v65 = *(v0 + 240);
      v66 = *(v0 + 136);
      v67 = *(v0 + 112);
      sub_192033970(*(v0 + 120), &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v66, v67);
      if (v64(v67, 1, v65) == 1)
      {
        v74 = (v0 + 112);
        goto LABEL_23;
      }

      v68 = *(v0 + 240);
      v69 = *(v0 + 104);
      sub_1920E07FC(*(v0 + 112), *(v0 + 264), type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v53 + v134, v69);
      v70 = v64(v69, 1, v68);
      v71 = *(v0 + 264);
      if (v70 == 1)
      {
        sub_192046F48(*(v0 + 264), type metadata accessor for ViewableTimelineEntry);
        v74 = (v0 + 104);
        goto LABEL_23;
      }

      v72 = *(v0 + 256);
      sub_1920E07FC(*(v0 + 104), v72, type metadata accessor for ViewableTimelineEntry);
      v73 = sub_192225120();
      sub_192046F48(v72, type metadata accessor for ViewableTimelineEntry);
      sub_192046F48(v71, type metadata accessor for ViewableTimelineEntry);
      if ((v73 & 1) == 0)
      {
LABEL_24:
        v75 = *(v0 + 240);
        v77 = *(v0 + 136);
        v76 = *(v0 + 144);
        sub_19209B16C(v77, v53 + v134);
        sub_1920D8654(v77, v76);
        if (v64(v76, 1, v75) == 1)
        {
          v96 = *(v0 + 144);
          sub_192033970(*(v0 + 160), &qword_1EADEEA00, &unk_19222B660);
          sub_192033970(v96, &qword_1EADEE9F8, &unk_19222A7D0);
          v97 = v125[3];
          if (v97 < 2)
          {
LABEL_51:
            v100 = *(v0 + 360);
            v101 = *(v0 + 320);
            v138 = *(v0 + 328);
            v103 = *(v0 + 280);
            v102 = *(v0 + 288);
            v104 = *(v0 + 208);
            v105 = *(v0 + 72);
            swift_setDeallocating();
            v106 = *(v128 + 16);

            *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v125;
            *(v121 + 16) = v120;
            *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v105;
            sub_19218AC30(v104, v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
            swift_beginAccess();
            v107 = byte_1ED74B5B8;
            v108 = v105;

            sub_192046F48(v104, type metadata accessor for TimelineReloadPolicy);
            sub_192046F48(v103, type metadata accessor for ViewableTimelineEntry);
            (*(v101 + 8))(v138, v102);
            *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v107;
            *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          v98 = v97 >> 1;
          v95 = __OFSUB__(v98, v123);
          v99 = v98 - v123;
          if (!v95)
          {
            v125[2] = v99;
            goto LABEL_51;
          }

          __break(1u);
LABEL_62:
          __break(1u);
          return;
        }

        sub_1920E07FC(*(v0 + 144), *(v0 + 272), type metadata accessor for ViewableTimelineEntry);
        v78 = v130;
        if (v123)
        {
          v79 = v125;
          v80 = v123 - 1;
          if (__OFSUB__(v123, 1))
          {
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        v81 = v125[3];
        if (((v81 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_57;
        }

        v82 = v81 & 0xFFFFFFFFFFFFFFFELL;
        if (v82 <= 1)
        {
          v83 = 1;
        }

        else
        {
          v83 = v82;
        }

        v79 = swift_allocObject();
        v84 = _swift_stdlib_malloc_size(v79);
        if (!v130)
        {
          goto LABEL_58;
        }

        v85 = v84 - v122;
        if (v84 - v122 == 0x8000000000000000 && v130 == -1)
        {
          goto LABEL_59;
        }

        v87 = v85 / v130;
        v79[2] = v83;
        v79[3] = 2 * (v85 / v130);
        v88 = v79 + v122;
        v89 = v125;
        v90 = v125[3] >> 1;
        v91 = v90 * v130;
        if (v125[2])
        {
          if (v79 < v125 || v88 >= v125 + v122 + v91)
          {
            v93 = *(v0 + 240);
            swift_arrayInitWithTakeFrontToBack();
LABEL_44:
            v89 = v125;
          }

          else if (v79 != v125)
          {
            v92 = *(v0 + 240);
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_44;
          }

          v89[2] = 0;
        }

        v124 = &v88[v91];
        v94 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - v90;

        v78 = v130;
        v95 = __OFSUB__(v94, 1);
        v80 = v94 - 1;
        if (v95)
        {
          goto LABEL_56;
        }

LABEL_47:
        v123 = v80;
        sub_1920E07FC(*(v0 + 272), v124, type metadata accessor for ViewableTimelineEntry);
        v124 += v78;
        v125 = v79;
        v137(*(v0 + 136), 1, 1, *(v0 + 240));
      }
    }

    v74 = (v0 + 120);
LABEL_23:
    sub_192033970(*v74, &qword_1EADEE9F8, &unk_19222A7D0);
    goto LABEL_24;
  }

  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);

  (*(v6 + 8))(v5, v7);
  if (qword_1ED74C6B0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v8 = *(v0 + 72);
  v9 = sub_1922258B0();
  __swift_project_value_buffer(v9, qword_1ED74CCC8);
  v10 = v8;
  v11 = sub_192225890();
  v12 = sub_192227F90();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 72);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v140[0] = v16;
    *v15 = 136446210;
    v17 = [v14 succinctDescription];

    if (!v17)
    {
      goto LABEL_62;
    }

    v18 = sub_192227960();
    v20 = v19;

    v21 = sub_19202B8CC(v18, v20, v140);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_192028000, v11, v12, "Unable to fetch entry or intent ref from widget %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x193B0C7F0](v16, -1, -1);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  else
  {
  }

  v121 = 0;
LABEL_52:
  v109 = *(v0 + 328);
  v110 = *(v0 + 312);
  v112 = *(v0 + 272);
  v111 = *(v0 + 280);
  v114 = *(v0 + 256);
  v113 = *(v0 + 264);
  v115 = *(v0 + 232);
  v116 = *(v0 + 208);
  v118 = *(v0 + 184);
  v117 = *(v0 + 192);
  v127 = *(v0 + 160);
  v129 = *(v0 + 144);
  v131 = *(v0 + 136);
  v133 = *(v0 + 128);
  v135 = *(v0 + 120);
  v136 = *(v0 + 112);
  v139 = *(v0 + 104);

  v119 = *(v0 + 8);

  v119(v121);
}

uint64_t sub_192187FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a3;
  v37 = a7;
  v34 = a6;
  v35 = a5;
  v8 = v7;
  v33 = a1;
  v11 = type metadata accessor for TimelineProviderContext();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - v15;
  v17 = sub_192227CF0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(v7 + 8);
  v19 = *(v7 + 24);
  v20 = *(v8 + 40);
  v21 = *(v8 + 56);
  sub_19218AC30(a2, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v22 = v33;
  v23 = sub_192227CB0();
  v24 = (*(v32 + 80) + 152) & ~*(v32 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  v27 = v36;
  v28 = *(v35 + 32);
  *(v25 + 32) = *(v35 + 16);
  *(v25 + 48) = v28;
  *(v25 + 64) = v27;
  *(v25 + 72) = a4;
  v29 = *(v8 + 16);
  *(v25 + 80) = *v8;
  *(v25 + 96) = v29;
  v30 = *(v8 + 48);
  *(v25 + 112) = *(v8 + 32);
  *(v25 + 128) = v30;
  *(v25 + 144) = v22;
  sub_1920E07FC(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TimelineProviderContext);
  sub_19211CA04(0, 0, v16, v37, v25);
}

uint64_t sub_192188254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *(v8 + 16) = v15;
  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v12 = type metadata accessor for RelevanceTimelineEntryProvider();
  *v11 = v8;
  v11[1] = sub_19218835C;

  return sub_1921884A0(a7, a8, v12);
}

uint64_t sub_19218835C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 88) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19218B080, v6, v5);
}

uint64_t sub_1921884A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = sub_192227CC0();
  v3[3] = sub_192227CB0();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_192188574;

  return sub_192186AD8(a1, a2, a3);
}

uint64_t sub_192188574(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 40) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19218B084, v6, v5);
}

uint64_t sub_1921886B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_192227CF0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = *(v3 + 8);
  v14 = *(v4 + 24);
  v15 = *(v4 + 40);
  v16 = *(v4 + 56);
  sub_192227CC0();

  v17 = sub_192227CB0();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = *(a3 + 32);
  *(v18 + 32) = *(a3 + 16);
  *(v18 + 48) = v20;
  *(v18 + 64) = a1;
  *(v18 + 72) = a2;
  v21 = *(v4 + 16);
  *(v18 + 80) = *v4;
  *(v18 + 96) = v21;
  v22 = *(v4 + 48);
  *(v18 + 112) = *(v4 + 32);
  *(v18 + 128) = v22;
  sub_19211CA04(0, 0, v11, &unk_19223CCC0, v18);
}

uint64_t sub_19218884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = sub_192227CC0();
  v6[5] = sub_192227CB0();
  v8 = *(a6 + 56);
  v12 = (*(a6 + 48) + **(a6 + 48));
  v9 = *(*(a6 + 48) + 4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_192141274;

  return v12();
}

uint64_t sub_19218895C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  v9 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v9;
  v10 = swift_task_alloc();
  *(v4 + 80) = v10;
  *v10 = v4;
  v10[1] = sub_192188A1C;

  return sub_19218685C(a1, a2, a3);
}

uint64_t sub_192188A1C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_192188B18(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  v9 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v9;
  v10 = swift_task_alloc();
  *(v4 + 80) = v10;
  *v10 = v4;
  v10[1] = sub_19218B07C;

  return sub_1921884A0(a1, a2, a3);
}

uint64_t sub_192188C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v47 = a6;
  v48 = a8;
  v41 = a7;
  v42 = a3;
  v46 = a5;
  v49 = a4;
  v38 = a2;
  v44 = a1;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimelineProviderContext();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v45 = &v38 - v16;
  v18 = sub_192227CF0();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v8[1];
  v20 = v8[3];
  v21 = v8[5];
  v22 = v8[7];
  sub_19218AC30(v38, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v23 = v41;
  (*(v10 + 16))(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v41);
  sub_192227CC0();

  v24 = v44;
  v25 = v46;

  v26 = sub_192227CB0();
  v27 = (*(v43 + 80) + 152) & ~*(v43 + 80);
  v28 = (v13 + *(v10 + 80) + v27) & ~*(v10 + 80);
  v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 16) = v26;
  *(v30 + 24) = v31;
  v32 = v48;
  v33 = *(v47 + 32);
  *(v30 + 32) = *(v47 + 16);
  *(v30 + 48) = v23;
  *(v30 + 56) = v33;
  *(v30 + 72) = v32;
  v34 = v9[1];
  *(v30 + 80) = *v9;
  *(v30 + 96) = v34;
  v35 = v9[3];
  *(v30 + 112) = v9[2];
  *(v30 + 128) = v35;
  *(v30 + 144) = v24;
  sub_1920E07FC(v39, v30 + v27, type metadata accessor for TimelineProviderContext);
  (*(v10 + 32))(v30 + v28, v40, v23);
  v36 = (v30 + v29);
  *v36 = v49;
  v36[1] = v25;
  sub_19211CA04(0, 0, v45, &unk_19223CCD0, v30);
}

uint64_t sub_192188FC0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_192189020()
{
  swift_getWitnessTable();

  return sub_192141600();
}

uint64_t sub_192189074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v16;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v12 = swift_task_alloc();
  *(v8 + 80) = v12;
  *(v8 + 16) = v17;
  *(v8 + 32) = v19;
  *(v8 + 40) = v20;
  v13 = type metadata accessor for RelevanceTimelineEntryProvider();
  *v12 = v8;
  v12[1] = sub_19218919C;

  return sub_192189570(a5, a6, a7, v13, v18, v21);
}

uint64_t sub_19218919C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;
  v5[11] = v1;

  v8 = v5[9];
  v9 = v5[8];
  if (v3)
  {
    v10 = sub_192227C70();
    v12 = v11;
    v13 = sub_1921893AC;
  }

  else
  {
    v5[12] = a1;
    v10 = sub_192227C70();
    v12 = v14;
    v13 = sub_19218931C;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_19218931C()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v4(v5, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1921893AC()
{
  v1 = v0[9];

  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74CBA8);
  v4 = v2;
  v5 = sub_192225890();
  v6 = sub_192227F90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_192028000, v5, v6, "RelevanceConfiguration failed to generate preview with error %@", v8, 0xCu);
    sub_192033970(v9, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v9, -1, -1);
    MEMORY[0x193B0C7F0](v8, -1, -1);
  }

  v12 = v0[11];
  v14 = v0[6];
  v13 = v0[7];

  v15 = v12;
  v14(v12, 1);

  v16 = v0[1];

  return v16();
}

uint64_t sub_192189570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[57] = a6;
  v7[58] = v6;
  v7[55] = a4;
  v7[56] = a5;
  v7[53] = a2;
  v7[54] = a3;
  v7[52] = a1;
  v9 = type metadata accessor for TimelineReloadPolicy();
  v7[59] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[60] = swift_task_alloc();
  v11 = *(a5 - 8);
  v7[61] = v11;
  v12 = *(v11 + 64) + 15;
  v7[62] = swift_task_alloc();
  sub_192227CC0();
  v7[63] = sub_192227CB0();
  v14 = sub_192227C70();
  v7[64] = v14;
  v7[65] = v13;

  return MEMORY[0x1EEE6DFA0](sub_19218969C, v14, v13);
}

uint64_t sub_19218969C()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by RelevanceConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = *(v0 + 432);

  (*(v6 + 16))(v5, v8, v7);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 440);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    *(v0 + 536) = v10;
    v12 = *(v0 + 224);
    *(v0 + 544) = v12;
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    *(v0 + 552) = v15;
    *(v0 + 256) = v10;
    *(v0 + 264) = v11;
    *(v0 + 272) = v12;
    *(v0 + 280) = v13;
    *(v0 + 288) = v14;
    *(v0 + 296) = v15;
    *(v0 + 560) = *(v9 + 32);
    *(v0 + 568) = *(v9 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = swift_task_alloc();
    *(v0 + 576) = v17;
    *v17 = v0;
    v17[1] = sub_192189A34;
    v18 = *(v0 + 424);

    return sub_19211E5D0(AssociatedTypeWitness, v18, AssociatedTypeWitness);
  }

  else
  {
    v20 = *(v0 + 496);
    v21 = *(v0 + 448);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 440);
      v23 = *(v0 + 16);
      v24 = *(v0 + 32);
      *(v0 + 80) = v23;
      *(v0 + 96) = v24;
      v25 = *(v0 + 48);
      v26 = *(v0 + 64);
      *(v0 + 112) = v25;
      *(v0 + 128) = v26;
      *(v0 + 144) = v23;
      *(v0 + 160) = v24;
      *(v0 + 176) = v25;
      *(v0 + 192) = v26;
      v27 = *(v22 + 16);
      *(v0 + 592) = v27;
      v28 = swift_task_alloc();
      *(v0 + 600) = v28;
      v29 = *(v22 + 32);
      *(v0 + 608) = v29;
      *v28 = v0;
      v28[1] = sub_192189F98;
      v30 = *(v0 + 424);

      return sub_19211E9A4(v27, v30, v27, v29);
    }

    else
    {
      v31 = *(v0 + 504);
      v32 = *(v0 + 440);

      v33 = *(v32 + 32);
      *(v0 + 304) = *(v32 + 16);
      *(v0 + 320) = v33;
      type metadata accessor for RelevanceTimelineEntryProvider.Errors();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      v34 = *(v0 + 480);
      (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 448));

      v35 = *(v0 + 8);

      return v35();
    }
  }
}

uint64_t sub_192189A34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[45] = v2;
  v4[46] = a1;
  v4[47] = v1;
  v5 = v3[72];
  v10 = *v2;
  v4[73] = v1;

  v6 = v4[65];
  v7 = v4[64];
  if (v1)
  {
    v8 = sub_19218A4E4;
  }

  else
  {
    v8 = sub_192189B58;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_192189B58()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 504);

  v5 = *(v0 + 584);
  v6 = *(v0 + 368);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 528);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 448));

  v10 = sub_192225890();
  v11 = sub_192227FB0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    swift_getAssociatedTypeWitness();
    *(v12 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v10, v11, "RelevanceConfiguration resolved entry source to have %{public}ld entries", v12, 0xCu);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 440);
  v13 = *(v0 + 448);
  v15 = *(v0 + 424);
  *(v0 + 408) = v6;
  v16 = swift_task_alloc();
  v17 = *(v0 + 456);
  *(v16 + 16) = v7;
  *(v16 + 24) = *(v14 + 24);
  *(v16 + 32) = v13;
  *(v16 + 40) = v8;
  *(v16 + 48) = *(v14 + 40);
  *(v16 + 56) = v17;
  swift_getAssociatedTypeWitness();
  v18 = sub_192227C40();
  v19 = type metadata accessor for ViewableTimelineEntry();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_19204301C(sub_19218AAC0, v16, v18, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

  v23 = qword_1ED74B558;
  v24 = *v15;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 496);
  v26 = *(v0 + 480);
  v27 = *(v0 + 416);
  v28 = __swift_project_value_buffer(*(v0 + 472), qword_1ED74B570);
  sub_19218AC30(v28, v26, type metadata accessor for TimelineReloadPolicy);
  v29 = type metadata accessor for WidgetViewCollection();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v34 = sub_192224E00();
  (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  v35 = [v27 extensionIdentity];
  BundleStub.init(_:)(v35, v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v22;
  *(v32 + 16) = v24;
  *(v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v27;
  sub_19218AC30(v26, v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v36 = byte_1ED74B5B8;
  v37 = v27;
  sub_192046F48(v26, type metadata accessor for TimelineReloadPolicy);
  *(v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v36;
  *(v32 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v38 = *(v0 + 8);

  return v38(v32);
}

uint64_t sub_192189F98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[48] = v2;
  v4[49] = a1;
  v4[50] = v1;
  v5 = v3[75];
  v10 = *v2;
  v4[77] = v1;

  v6 = v4[65];
  v7 = v4[64];
  if (v1)
  {
    v8 = sub_19218A5A0;
  }

  else
  {
    v8 = sub_19218A0BC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19218A0BC()
{
  v1 = *(v0 + 504);

  sub_19218AA6C(v0 + 80);
  v2 = *(v0 + 616);
  v3 = *(v0 + 392);
  v4 = *(v0 + 608);
  v5 = *(v0 + 592);
  v6 = *(v0 + 528);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 448));

  v7 = sub_192225890();
  v8 = sub_192227FB0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    swift_getAssociatedTypeWitness();
    *(v9 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v7, v8, "RelevanceConfiguration resolved entry source to have %{public}ld entries", v9, 0xCu);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v12 = *(v0 + 424);
  *(v0 + 408) = v3;
  v13 = swift_task_alloc();
  v14 = *(v0 + 456);
  *(v13 + 16) = v5;
  *(v13 + 24) = *(v11 + 24);
  *(v13 + 32) = v10;
  *(v13 + 40) = v4;
  *(v13 + 48) = *(v11 + 40);
  *(v13 + 56) = v14;
  swift_getAssociatedTypeWitness();
  v15 = sub_192227C40();
  v16 = type metadata accessor for ViewableTimelineEntry();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_19204301C(sub_19218AAC0, v13, v15, v16, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  v20 = qword_1ED74B558;
  v21 = *v12;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 496);
  v23 = *(v0 + 480);
  v24 = *(v0 + 416);
  v25 = __swift_project_value_buffer(*(v0 + 472), qword_1ED74B570);
  sub_19218AC30(v25, v23, type metadata accessor for TimelineReloadPolicy);
  v26 = type metadata accessor for WidgetViewCollection();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v31 = sub_192224E00();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  v32 = [v24 extensionIdentity];
  BundleStub.init(_:)(v32, v29 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v29 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v19;
  *(v29 + 16) = v21;
  *(v29 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v24;
  sub_19218AC30(v23, v29 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v33 = byte_1ED74B5B8;
  v34 = v24;
  sub_192046F48(v23, type metadata accessor for TimelineReloadPolicy);
  *(v29 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v33;
  *(v29 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v35 = *(v0 + 8);

  return v35(v29);
}

uint64_t sub_19218A4E4()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[63];

  v5 = v0[73];
  v6 = v0[60];
  (*(v0[61] + 8))(v0[62], v0[56]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19218A5A0()
{
  v1 = v0[63];

  sub_19218AA6C((v0 + 10));
  v2 = v0[77];
  v3 = v0[60];
  (*(v0[61] + 8))(v0[62], v0[56]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19218A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 40);
  (*(v14 + 32))(v11);
  sub_19221B68C(v13, a4, a7);
  return (*(v9 + 8))(v13, a4);
}

uint64_t sub_19218A738(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_19218A770(uint64_t a1)
{
  v4 = v1[5];
  v13 = v1[4];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920B3B44;

  return sub_19218884C(a1, v7, v8, v9, v10, (v1 + 10));
}

uint64_t sub_19218A860(uint64_t a1)
{
  v3 = v2;
  v18 = *(v1 + 40);
  v19 = *(v1 + 32);
  v4 = *(v1 + 48);
  v17 = *(v1 + 56);
  v16 = *(v1 + 72);
  v5 = *(type metadata accessor for TimelineProviderContext() - 8);
  v6 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 144);
  v11 = (v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1920A59A8;

  return sub_192189074(a1, v8, v9, v1 + 80, v10, v1 + v6, v1 + v7, v13);
}

uint64_t sub_19218AAF8(uint64_t a1)
{
  v3 = v2;
  v15 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(type metadata accessor for TimelineProviderContext() - 8);
  v7 = (*(v6 + 80) + 152) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 144);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1920B3B44;

  return sub_192188254(a1, v8, v9, v10, v11, v1 + 80, v12, v1 + v7);
}

uint64_t sub_19218AC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for TimelineProviderContext() - 8);
  v2 = (*(*v1 + 80) + 152) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 136);

  v10 = *(v0 + v2 + 8);

  v11 = *(v0 + v2 + 16);

  v12 = *(v0 + v2 + 24);

  v13 = *(v0 + v2 + 48);

  v14 = v1[12];
  v15 = sub_192224EA0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v2 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v2 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_19218AE18(uint64_t a1)
{
  v3 = v2;
  v15 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(type metadata accessor for TimelineProviderContext() - 8);
  v7 = (*(v6 + 80) + 152) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 144);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1920B3B44;

  return sub_19218658C(a1, v8, v9, v10, v11, v1 + 80, v12, v1 + v7);
}

uint64_t sub_19218AF50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19218AF8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_19218AFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19218B024(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19218B088()
{
  result = qword_1ED74C690;
  if (!qword_1ED74C690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74C690);
  }

  return result;
}

unint64_t sub_19218B0D4()
{
  result = qword_1ED74C620;
  if (!qword_1ED74C620)
  {
    sub_192227710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74C620);
  }

  return result;
}

unint64_t sub_19218B12C()
{
  result = qword_1ED74C610;
  if (!qword_1ED74C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEDE8, &unk_19222B5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74C610);
  }

  return result;
}

id sub_19218B26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  if (a1)
  {
    v10 = sub_192227B60();
  }

  else
  {
    v10 = 0;
  }

  sub_19218B864(a2, v9);
  v11 = sub_1922251B0();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_192225170();
    (*(v12 + 8))(v9, v11);
  }

  v14 = type metadata accessor for WidgetHostContext();
  v18.receiver = v3;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInputItems_contextUUID_, v10, v13);

  v16 = v15;
  sub_19218B8D4(a2);
  if (v16)
  {
  }

  return v16;
}

id sub_19218B52C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  if (a1)
  {
    v12 = sub_192227B60();
  }

  else
  {
    v12 = 0;
  }

  sub_19218B864(a3, v11);
  v13 = sub_1922251B0();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_192225170();
    (*(v14 + 8))(v11, v13);
  }

  v16 = type metadata accessor for WidgetHostContext();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithInputItems_listenerEndpoint_contextUUID_, v12, a2, v15);

  v18 = v17;
  sub_19218B8D4(a3);
  if (v18)
  {
  }

  return v18;
}

id sub_19218B80C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetHostContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19218B864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19218B8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WidgetRelevanceFetchResult.__allocating_init(widgetRelevances:)(unint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
  v4 = sub_19218BD8C(a1);

  *&v3[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id WidgetRelevanceFetchResult.init(widgetRelevances:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
  v4 = sub_19218BD8C(a1);

  *&v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id static WidgetRelevanceFetchResult.defaultImplementationResult.getter()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 1;
  *&v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = sub_19218BD8C(MEMORY[0x1E69E7CC0]);
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id WidgetRelevanceFetchResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_19218C080(a1);

  return v4;
}

id WidgetRelevanceFetchResult.init(coder:)(void *a1)
{
  v2 = sub_19218C080(a1);

  return v2;
}

Swift::Void __swiftcall WidgetRelevanceFetchResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation);
  v4 = sub_192227930();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances);
  sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);
  v6 = sub_192227B60();
  v7 = sub_192227930();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id WidgetRelevanceFetchResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19218BD8C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 101)
    {
      goto LABEL_3;
    }

LABEL_39:

    return v1;
  }

  if (sub_192228340() < 101)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74CCC8);
  v4 = sub_192225890();
  v5 = sub_192227F90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = 100;
    _os_log_impl(&dword_192028000, v4, v5, "Too many widget relevances. Truncating to %{public}ld.", v6, 0xCu);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  if (v2)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = (v1 & 0xFFFFFFFFFFFFFF8);
    }

    v5 = sub_192228340();
    if (sub_192228340() < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v5 >= 0x64)
    {
      v9 = 100;
    }

    else
    {
      v9 = v5;
    }

    if (v5 >= 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = 100;
    }

    v7 = sub_192228340();
  }

  else
  {
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  if (v7 < v8)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if ((v1 & 0xC000000000000001) != 0 && v8)
  {
    sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_192228440();
      v10 = v11;
    }

    while (v8 != v11);
    if (!v2)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (!v2)
    {
LABEL_28:
      v5 = 0;
      v4 = (v1 & 0xFFFFFFFFFFFFFF8);
      v12 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v1 = (2 * v8) | 1;
      goto LABEL_32;
    }
  }

  v4 = sub_192228680();
  v5 = v13;
  v1 = v14;
  if ((v14 & 1) == 0)
  {
LABEL_31:
    sub_19209AB6C(v4, v12, v5, v1);
    v1 = v15;
    swift_unknownObjectRelease();
    return v1;
  }

LABEL_32:
  v2 = v12;
  sub_1922289D0();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v16 + 16);

  if (__OFSUB__(v1 >> 1, v5))
  {
    goto LABEL_43;
  }

  if (v17 != (v1 >> 1) - v5)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v12 = v2;
    goto LABEL_31;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

id sub_19218C080(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_192227930();
  v6 = [a1 decodeBoolForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEFAE0, &unk_19222FF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19222B490;
  *(v7 + 32) = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(v7 + 40) = sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);
  sub_192228150();

  if (v14)
  {
    sub_19203BEDC(&v13, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF17E0, qword_19223CF28);
    swift_dynamicCast();
    v9 = v12;
    v2[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = v6;
    v10 = sub_19218BD8C(v9);

    *&v2[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v10;
    v11.receiver = v2;
    v11.super_class = ObjectType;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WidgetPushConfigurationXPCContainer.token.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token);
  sub_1920367C8(v1, *(v0 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token + 8));
  return v1;
}

uint64_t static WidgetPushConfigurationXPCContainer.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF17F0 = a1;
  return result;
}

id WidgetPushConfigurationXPCContainer.__allocating_init(widgets:token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets] = a1;
  v8 = &v7[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id WidgetPushConfigurationXPCContainer.init(widgets:token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets] = a1;
  v4 = &v3[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WidgetPushConfigurationXPCContainer();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_19218C534(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets);
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v4 = sub_192227B60();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token);
  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token + 8);
  v8 = sub_192225050();
  v9 = sub_192227930();
  [a1 encodeObject:v8 forKey:v9];
}

uint64_t WidgetPushConfigurationXPCContainer.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  if (sub_192228170())
  {
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v4 = sub_192228140();
    if (v4)
    {
      v5 = v4;
      sub_192225070();
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t WidgetPushConfigurationXPCContainer.init(coder:)(void *a1)
{
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  if (sub_192228170())
  {
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v2 = sub_192228140();
    if (v2)
    {
      v3 = v2;
      sub_192225070();
    }
  }

  else
  {
  }

  type metadata accessor for WidgetPushConfigurationXPCContainer();
  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetPushConfigurationXPCContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetPushConfigurationXPCContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetPushConfigurationXPCContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WidgetPushInfo.token.getter()
{
  v1 = *v0;
  sub_1920367C8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_19218CB5C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630) - 8) + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0) - 8) + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v7 = type metadata accessor for ControlTemplateButton.Option(0);
  *(v3 + 360) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  v9 = sub_192226BA0();
  *(v3 + 384) = v9;
  v10 = *(v9 - 8);
  *(v3 + 392) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  v13 = sub_1922261D0();
  *(v3 + 496) = v13;
  v14 = *(v13 - 8);
  *(v3 + 504) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = sub_192227CC0();
  *(v3 + 536) = sub_192227CB0();
  *(v3 + 241) = *(v4 + 32);
  v16 = *(v4 + 72);
  *(v3 + 544) = *(v4 + 40);
  *(v3 + 560) = v16;
  *(v3 + 576) = *(v4 + 88);
  v17 = *(v4 + 104);
  v18 = *(v4 + 112);
  v19 = *(v4 + 120);
  *(v3 + 592) = v19;
  v23 = (v17 + *v17);
  v20 = v17[1];
  v21 = swift_task_alloc();
  *(v3 + 600) = v21;
  *v21 = v3;
  v21[1] = sub_19218CEDC;

  return v23(v3 + 16, v19);
}

uint64_t sub_19218CEDC()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v5 = v2[67];
    v6 = v2[66];
    v7 = sub_192227C70();
    v9 = v8;
    v10 = sub_19218F644;
    v11 = v7;
    v12 = v9;
  }

  else
  {
    v13 = v2[67];
    v14 = v2[66];
    v15 = sub_192227C70();
    v12 = v16;
    v2[77] = v15;
    v2[78] = v16;
    v10 = sub_19218D048;
    v11 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19218D048()
{
  v1 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  *(v0 + 104) = v1;
  v2 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 152) = v3;
  if (v4 == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v83 = *(v0 + 520);

    v68 = v14;
    sub_192114BA4(v12, v13, v14, v15);
    v78 = v17;
    v79 = v16;
    v77 = v18;
    v82 = v3;
    sub_192114BA4(v16, v17, v18, v3);
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    v19 = *(v0 + 520);
    v21 = *(v0 + 496);
    v20 = *(v0 + 504);
    if (v4)
    {
      v22 = *(v0 + 520);
      sub_192227270();
      v70 = v23;
      v80 = v24;
      v66 = v25;
      v75 = v26;
      (*(v20 + 8))(v19, v21);
      v84 = 0;
      v27.i64[0] = v70;
      v27.i64[1] = v66;
      v81 = vorrq_s8(vshll_n_s32(__PAIR64__(v75, v80), 0x20uLL), v27);
    }

    else
    {
      sub_1920B3090();
      sub_1922261E0();
      (*(v20 + 8))(v19, v21);
      v81 = *(v0 + 244);
      v84 = *(v0 + 260);
    }

    v28 = *(v0 + 504);
    v29 = *(v0 + 512);
    v76 = *(v0 + 496);
    v30 = *(v0 + 440);
    v31 = *(v0 + 392);
    v63 = *(v0 + 488);
    v65 = *(v0 + 384);
    v71 = *(v0 + 312);
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    *(v0 + 176) = v68;
    *(v0 + 184) = v15;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03A0, &unk_192234FD0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v67 = v32;
    swift_allocObject();
    sub_192114BA4(v12, v13, v68, v15);
    sub_192114BA4(v12, v13, v68, v15);
    sub_192226760();
    v35 = v71;
    v72 = *(v28 + 16);
    v72(v29, v35, v76);
    sub_192226700();
    sub_192226730();

    sub_19212F484(v12, v13, v68, v15);
    v36 = v63;
    sub_192226A40();
    v69 = *(v31 + 8);
    v69(v30, v65);
    v37 = sub_192226A90();
    v38 = *(v37 - 8);
    v64 = *(v38 + 48);
    v39 = v64(v36, 1, v37);
    v40 = *(v0 + 488);
    if (v39 == 1)
    {
      sub_192033970(v40, &qword_1EADEFEC0, &unk_192231BD0);
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v41 = sub_192226A80();
      (*(v38 + 8))(v40, v37);
      v42 = [v41 string];

      v43 = sub_192227960();
      v73 = v44;
      v74 = v43;
    }

    v45 = *(v0 + 512);
    v46 = *(v0 + 480);
    v47 = *(v0 + 432);
    v61 = *(v0 + 496);
    v62 = *(v0 + 384);
    v48 = *(v0 + 312);
    *(v0 + 192) = v79;
    *(v0 + 200) = v78;
    *(v0 + 208) = v77;
    *(v0 + 216) = v82;
    v49 = *(v67 + 48);
    v50 = *(v67 + 52);
    swift_allocObject();
    sub_192114BA4(v79, v78, v77, v82);
    sub_192114BA4(v79, v78, v77, v82);
    sub_192226760();
    v72(v45, v48, v61);
    sub_192226700();
    sub_192226730();

    sub_19212F484(v79, v78, v77, v82);
    sub_192226A40();
    v69(v47, v62);
    v51 = v64(v46, 1, v37);
    v52 = *(v0 + 480);
    if (v51 == 1)
    {
      sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
      sub_192033970(v52, &qword_1EADEFEC0, &unk_192231BD0);
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v53 = sub_192226A80();
      (*(v38 + 8))(v52, v37);
      v54 = [v53 string];

      v7 = sub_192227960();
      v8 = v55;

      sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
    }

    v6 = v81.i64[1];
    v5 = v81.i64[0];
    v11 = v84;
    v10 = v73;
    v9 = v74;
  }

  *(v0 + 672) = v10;
  *(v0 + 664) = v9;
  *(v0 + 656) = v8;
  *(v0 + 648) = v7;
  *(v0 + 242) = v11;
  *(v0 + 640) = v6;
  *(v0 + 632) = v5;
  v85 = (*(v0 + 560) + **(v0 + 560));
  v56 = *(*(v0 + 560) + 4);
  v57 = swift_task_alloc();
  *(v0 + 680) = v57;
  *v57 = v0;
  v57[1] = sub_19218D6AC;
  v58 = *(v0 + 592);
  v59 = *(v0 + 568);

  return v85(v58, 0);
}

uint64_t sub_19218D6AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 680);
  v11 = *v2;
  v3[86] = a1;
  v3[87] = v1;

  if (v1)
  {
    v5 = v3[84];
    v6 = v3[82];

    v7 = v3[78];
    v8 = v3[77];
    v9 = sub_19218F7BC;
  }

  else
  {
    v7 = v3[78];
    v8 = v3[77];
    v9 = sub_19218D7E0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_19218D7E0()
{
  v1 = *(v0 + 576);
  if (v1)
  {
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v65 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 704) = v5;
    *v5 = v0;
    v5[1] = sub_19218DD80;
    v6 = *(v0 + 592);
    v7 = 0;
    goto LABEL_12;
  }

  v8 = *(v0 + 688);
  v9 = *(v0 + 504);
  v10 = *(v0 + 512);
  v11 = *(v0 + 496);
  v63 = *(v0 + 472);
  v12 = *(v0 + 424);
  v13 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 224) = v8;
  *(v0 + 232) = KeyPath;
  *(v0 + 240) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  *(v0 + 728) = v15;
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v18 = *(v9 + 16);
  *(v0 + 736) = v18;
  *(v0 + 744) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v10, v13, v11);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v19 = sub_192226A90();
  *(v0 + 752) = v19;
  v20 = *(v19 - 8);
  *(v0 + 760) = v20;
  v21 = *(v20 + 48);
  *(v0 + 768) = v21;
  *(v0 + 776) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v22 = v21(v63, 1, v19);
  v23 = *(v0 + 472);
  if (v22 == 1)
  {
    sub_192033970(*(v0 + 472), &qword_1EADEFEC0, &unk_192231BD0);
    v62 = 0;
    v64 = 0;
  }

  else
  {
    v24 = sub_192226A80();
    (*(v20 + 8))(v23, v19);
    v25 = [v24 string];

    v26 = sub_192227960();
    v62 = v27;
    v64 = v26;
  }

  v28 = *(v0 + 424);
  v29 = *(v0 + 344);
  sub_192226B80();
  v30 = sub_192226B70();
  *(v0 + 784) = v30;
  v31 = *(v30 - 8);
  *(v0 + 792) = v31;
  v32 = *(v31 + 48);
  *(v0 + 800) = v32;
  *(v0 + 808) = (v31 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v33 = v32(v29, 1, v30);
  v34 = *(v0 + 344);
  if (v33 == 1)
  {
    sub_192033970(*(v0 + 344), &qword_1EADEF720, &unk_19222E2F0);
LABEL_10:
    (*(v31 + 56))(*(v0 + 352), 1, 1, v30);
    goto LABEL_11;
  }

  v35 = sub_192226B60();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = *(v0 + 424);
  v37 = *(v0 + 352);
  sub_192226B80();
LABEL_11:
  v38 = *(v0 + 688);
  v39 = *(v0 + 392);

  v40 = *(v39 + 8);
  *(v0 + 816) = v40;
  v41 = *(v0 + 672);
  v66 = *(v0 + 664);
  v42 = *(v0 + 656);
  v61 = *(v0 + 648);
  v60 = *(v0 + 242);
  v58 = *(v0 + 632);
  v59 = *(v0 + 640);
  v43 = *(v0 + 560);
  v44 = *(v0 + 424);
  v46 = *(v0 + 376);
  v45 = *(v0 + 384);
  v48 = *(v0 + 352);
  v47 = *(v0 + 360);
  *(v0 + 824) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v44, v45);
  v49 = v47[6];
  v50 = *(v31 + 56);
  *(v0 + 832) = v50;
  *(v0 + 840) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v50(v46 + v49, 1, 1, v30);
  v51 = v46 + v47[7];
  v52 = (v46 + v47[8]);
  v53 = (v46 + v47[9]);
  *v46 = v64;
  v46[1] = v62;
  v46[2] = 0;
  v46[3] = 0;
  sub_19204193C(v48, v46 + v49, &qword_1EADEF720, &unk_19222E2F0);
  *v51 = v58;
  *(v51 + 1) = v59;
  v51[16] = v60;
  *v52 = v66;
  v52[1] = v41;
  *v53 = v61;
  v53[1] = v42;

  v65 = (v43 + *v43);
  v54 = v43[1];
  v55 = swift_task_alloc();
  *(v0 + 848) = v55;
  *v55 = v0;
  v55[1] = sub_19218E59C;
  v56 = *(v0 + 568);
  v6 = *(v0 + 592);
  v7 = 1;
LABEL_12:

  return v65(v6, v7);
}

uint64_t sub_19218DD80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v13 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v6 = v4[86];
    v7 = v4[84];
    v8 = v4[82];

    v9 = v4[78];
    v10 = v4[77];
    v11 = sub_19218F950;
  }

  else
  {
    v4[90] = a1;
    v9 = v4[78];
    v10 = v4[77];
    v11 = sub_19218DECC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_19218DECC()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v85 = *(v0 + 472);
  v87 = *(v0 + 720);
  v5 = *(v0 + 424);
  v6 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 224) = v1;
  *(v0 + 232) = KeyPath;
  *(v0 + 240) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  *(v0 + 728) = v8;
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v11 = *(v2 + 16);
  *(v0 + 736) = v11;
  *(v0 + 744) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v79 = v11;
  v11(v3, v6, v4);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v12 = sub_192226A90();
  *(v0 + 752) = v12;
  v13 = *(v12 - 8);
  *(v0 + 760) = v13;
  v14 = *(v13 + 48);
  *(v0 + 768) = v14;
  *(v0 + 776) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v76 = v14;
  v15 = v14(v85, 1, v12);
  v16 = *(v0 + 472);
  if (v15 == 1)
  {
    sub_192033970(*(v0 + 472), &qword_1EADEFEC0, &unk_192231BD0);
    v84 = 0;
    v86 = 0;
  }

  else
  {
    v17 = sub_192226A80();
    (*(v13 + 8))(v16, v12);
    v18 = [v17 string];

    v19 = sub_192227960();
    v84 = v20;
    v86 = v19;
  }

  v21 = *(v0 + 424);
  v22 = *(v0 + 344);
  sub_192226B80();
  v23 = sub_192226B70();
  *(v0 + 784) = v23;
  v24 = *(v23 - 8);
  *(v0 + 792) = v24;
  v25 = *(v24 + 48);
  *(v0 + 800) = v25;
  *(v0 + 808) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = v25(v22, 1, v23);
  v27 = *(v0 + 344);
  if (v26 == 1)
  {
    sub_192033970(*(v0 + 344), &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v28 = sub_192226B60();
    (*(v24 + 8))(v27, v23);
    if (v28)
    {
      v29 = *(v0 + 424);
      v30 = *(v0 + 352);
      sub_192226B80();
      goto LABEL_9;
    }
  }

  (*(v24 + 56))(*(v0 + 352), 1, 1, v23);
LABEL_9:
  v82 = v24;
  v83 = v23;
  if (v87)
  {
    v31 = *(v0 + 512);
    v72 = v13;
    v74 = *(v0 + 496);
    v32 = *(v0 + 464);
    v33 = *(v0 + 416);
    v34 = v12;
    v35 = *(v0 + 312);
    *(v0 + 296) = v87;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    swift_retain_n();
    sub_192226760();
    v79(v31, v35, v74);
    sub_192226700();
    sub_192226730();

    sub_192226A40();
    v39 = v76(v32, 1, v34);
    v40 = *(v0 + 688);
    v41 = *(v0 + 464);
    v42 = *(v0 + 416);
    v43 = *(v0 + 384);
    v44 = *(v0 + 392);
    if (v39 == 1)
    {
      v45 = *(v44 + 8);
      v46 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v45(*(v0 + 416), *(v0 + 384));

      sub_192033970(v41, &qword_1EADEFEC0, &unk_192231BD0);

      v80 = 0;
      v81 = 0;
    }

    else
    {
      v77 = *(v0 + 416);
      v49 = sub_192226A80();
      (*(v72 + 8))(v41, v34);
      v50 = [v49 string];

      v51 = sub_192227960();
      v80 = v52;
      v81 = v51;

      v45 = *(v44 + 8);
      v46 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v45(v77, v43);
    }
  }

  else
  {
    v47 = *(v0 + 688);
    v48 = *(v0 + 392);

    v80 = 0;
    v81 = 0;
    v45 = *(v48 + 8);
    v46 = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  *(v0 + 816) = v45;
  v53 = *(v0 + 672);
  v54 = *(v0 + 656);
  v88 = *(v0 + 648);
  v89 = *(v0 + 664);
  v78 = *(v0 + 242);
  v55 = *(v0 + 632);
  v73 = v55;
  v75 = *(v0 + 640);
  v56 = *(v0 + 560);
  v57 = *(v0 + 424);
  v59 = *(v0 + 376);
  v58 = *(v0 + 384);
  v61 = *(v0 + 352);
  v60 = *(v0 + 360);
  *(v0 + 824) = v46;
  v45(v57, v58);
  v62 = v60[6];
  v63 = *(v82 + 56);
  *(v0 + 832) = v63;
  *(v0 + 840) = (v82 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v63(v59 + v62, 1, 1, v83);
  v64 = v59 + v60[7];
  v65 = (v59 + v60[8]);
  v66 = (v59 + v60[9]);
  *v59 = v86;
  v59[1] = v84;
  v59[2] = v81;
  v59[3] = v80;
  sub_19204193C(v61, v59 + v62, &qword_1EADEF720, &unk_19222E2F0);
  *v64 = v73;
  *(v64 + 1) = v75;
  v64[16] = v78;
  *v65 = v89;
  v65[1] = v53;
  *v66 = v88;
  v66[1] = v54;

  v90 = (v56 + *v56);
  v67 = v56[1];
  v68 = swift_task_alloc();
  *(v0 + 848) = v68;
  *v68 = v0;
  v68[1] = sub_19218E59C;
  v69 = *(v0 + 592);
  v70 = *(v0 + 568);

  return v90(v69, 1);
}

uint64_t sub_19218E59C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 848);
  v11 = *v2;
  v3[107] = a1;
  v3[108] = v1;

  if (v1)
  {
    v5 = v3[84];
    v6 = v3[82];

    v7 = v3[78];
    v8 = v3[77];
    v9 = sub_19218FAE4;
  }

  else
  {
    v7 = v3[78];
    v8 = v3[77];
    v9 = sub_19218E6D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_19218E6D0()
{
  v97 = v0;
  v1 = *(v0 + 576);
  if (v1)
  {
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v94 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 872) = v5;
    *v5 = v0;
    v5[1] = sub_19218ED80;
    v6 = *(v0 + 592);

    return v94(v6, 1);
  }

  v8 = *(v0 + 536);

  v9 = *(v0 + 856);
  v90 = *(v0 + 768);
  v92 = *(v0 + 776);
  v86 = *(v0 + 744);
  v88 = *(v0 + 752);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);
  v12 = *(v0 + 512);
  v13 = *(v0 + 496);
  v14 = *(v0 + 456);
  v15 = *(v0 + 408);
  v16 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 264) = v9;
  *(v0 + 272) = KeyPath;
  *(v0 + 280) = 1;
  v18 = *(v11 + 48);
  v19 = *(v11 + 52);
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v10(v12, v16, v13);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  if (v90(v14, 1, v88) == 1)
  {
    sub_192033970(*(v0 + 456), &qword_1EADEFEC0, &unk_192231BD0);
    v74 = 0;
    v72 = 0;
  }

  else
  {
    v20 = *(v0 + 760);
    v21 = *(v0 + 752);
    v22 = *(v0 + 456);
    v23 = sub_192226A80();
    (*(v20 + 8))(v22, v21);
    v24 = [v23 string];

    v74 = sub_192227960();
    v72 = v25;
  }

  v26 = *(v0 + 808);
  v27 = *(v0 + 800);
  v28 = *(v0 + 784);
  v29 = *(v0 + 408);
  v30 = *(v0 + 328);
  sub_192226B80();
  if (v27(v30, 1, v28) == 1)
  {
    sub_192033970(*(v0 + 328), &qword_1EADEF720, &unk_19222E2F0);
LABEL_12:
    v37 = *(v0 + 840);
    (*(v0 + 832))(*(v0 + 336), 1, 1, *(v0 + 784));
    goto LABEL_13;
  }

  v31 = *(v0 + 792);
  v32 = *(v0 + 784);
  v33 = *(v0 + 328);
  v34 = sub_192226B60();
  (*(v31 + 8))(v33, v32);
  if ((v34 & 1) == 0)
  {
    goto LABEL_12;
  }

  v35 = *(v0 + 408);
  v36 = *(v0 + 336);
  sub_192226B80();
LABEL_13:
  v38 = *(v0 + 856);

  v39 = *(v0 + 840);
  v40 = *(v0 + 832);
  v41 = *(v0 + 824);
  v42 = *(v0 + 784);
  v64 = *(v0 + 664);
  v65 = *(v0 + 656);
  v66 = *(v0 + 672);
  v63 = *(v0 + 648);
  v62 = *(v0 + 242);
  v60 = *(v0 + 632);
  v61 = *(v0 + 640);
  v69 = *(v0 + 544);
  v70 = *(v0 + 552);
  v71 = *(v0 + 241);
  v73 = *(v0 + 520);
  v75 = *(v0 + 512);
  v76 = *(v0 + 488);
  v77 = *(v0 + 480);
  v78 = *(v0 + 472);
  v79 = *(v0 + 464);
  v80 = *(v0 + 456);
  v83 = *(v0 + 440);
  v84 = *(v0 + 432);
  v85 = *(v0 + 424);
  v87 = *(v0 + 416);
  v81 = *(v0 + 448);
  v82 = *(v0 + 408);
  v89 = *(v0 + 400);
  v43 = *(v0 + 376);
  v67 = v43;
  v44 = *(v0 + 360);
  v45 = *(v0 + 368);
  v91 = *(v0 + 352);
  v93 = *(v0 + 344);
  v46 = *(v0 + 336);
  v95 = *(v0 + 328);
  v68 = *(v0 + 320);
  v47 = *(v0 + 304);
  (*(v0 + 816))();
  v48 = v44[6];
  v40(v45 + v48, 1, 1, v42);
  v49 = v45 + v44[7];
  v50 = (v45 + v44[8]);
  v51 = (v45 + v44[9]);
  *v45 = v74;
  v45[1] = v72;
  v45[2] = 0;
  v45[3] = 0;
  sub_19204193C(v46, v45 + v48, &qword_1EADEF720, &unk_19222E2F0);
  *v49 = v60;
  *(v49 + 1) = v61;
  v49[16] = v62;
  *v50 = v64;
  v50[1] = v66;
  *v51 = v63;
  v51[1] = v65;
  sub_19218FE78(v43, v47);
  v52 = type metadata accessor for ControlTemplateButton(0);
  v53 = sub_19218FE78(v45, v47 + v52[5]);
  v69(&v96, v53);
  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
  v54 = v96;
  v55 = sub_192225020();
  v56 = *(*(v55 - 8) + 56);
  v56(v68, 1, 1, v55);
  v57 = v52[7];
  v56(v47 + v57, 1, 1, v55);
  v58 = (v47 + v52[10]);
  *(v47 + v52[6]) = v54;
  sub_19204193C(v68, v47 + v57, &qword_1EADEEE10, &unk_19222B630);
  *(v47 + v52[8]) = 0;
  *(v47 + v52[9]) = v71;
  *v58 = 0;
  v58[1] = 0;
  *(v47 + v52[11]) = 0;
  sub_19218FE1C(v45);
  sub_19218FE1C(v67);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_19218ED80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 872);
  v13 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    v6 = v4[107];
    v7 = v4[84];
    v8 = v4[82];

    v9 = v4[78];
    v10 = v4[77];
    v11 = sub_19218FC80;
  }

  else
  {
    v4[111] = a1;
    v9 = v4[78];
    v10 = v4[77];
    v11 = sub_19218EECC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_19218EECC()
{
  v122 = v0;
  v118 = *(v0 + 888);
  v1 = *(v0 + 536);

  v2 = *(v0 + 856);
  v114 = *(v0 + 768);
  v116 = *(v0 + 776);
  v107 = *(v0 + 744);
  v110 = *(v0 + 752);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 512);
  v6 = *(v0 + 496);
  v7 = *(v0 + 456);
  v8 = *(v0 + 408);
  v9 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 264) = v2;
  *(v0 + 272) = KeyPath;
  *(v0 + 280) = 1;
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v3(v5, v9, v6);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  if (v114(v7, 1, v110) == 1)
  {
    sub_192033970(*(v0 + 456), &qword_1EADEFEC0, &unk_192231BD0);
    v115 = 0;
    v117 = 0;
  }

  else
  {
    v13 = *(v0 + 760);
    v14 = *(v0 + 752);
    v15 = *(v0 + 456);
    v16 = sub_192226A80();
    (*(v13 + 8))(v15, v14);
    v17 = [v16 string];

    v18 = sub_192227960();
    v115 = v19;
    v117 = v18;
  }

  v20 = *(v0 + 808);
  v21 = *(v0 + 800);
  v22 = *(v0 + 784);
  v23 = *(v0 + 408);
  v24 = *(v0 + 328);
  sub_192226B80();
  if (v21(v24, 1, v22) == 1)
  {
    sub_192033970(*(v0 + 328), &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v25 = *(v0 + 792);
    v26 = *(v0 + 784);
    v27 = *(v0 + 328);
    v28 = sub_192226B60();
    (*(v25 + 8))(v27, v26);
    if (v28)
    {
      v29 = *(v0 + 408);
      v30 = *(v0 + 336);
      sub_192226B80();
      v31 = v118;
      if (v118)
      {
        goto LABEL_10;
      }

LABEL_8:
      v32 = *(v0 + 856);
LABEL_12:

      v90 = 0;
      v91 = 0;
      goto LABEL_14;
    }
  }

  v33 = *(v0 + 840);
  (*(v0 + 832))(*(v0 + 336), 1, 1, *(v0 + 784));
  v31 = v118;
  if (!v118)
  {
    goto LABEL_8;
  }

LABEL_10:
  v108 = *(v0 + 768);
  v111 = *(v0 + 776);
  v105 = *(v0 + 752);
  v34 = *(v0 + 744);
  v35 = *(v0 + 736);
  v36 = *(v0 + 512);
  v37 = *(v0 + 496);
  v38 = *(v0 + 448);
  v39 = *(v0 + 400);
  v40 = *(v0 + 312);
  *(v0 + 288) = v31;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  swift_retain_n();
  sub_192226760();
  v35(v36, v40, v37);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v44 = v108(v38, 1, v105);
  v45 = *(v0 + 856);
  v46 = *(v0 + 824);
  v47 = *(v0 + 816);
  if (v44 == 1)
  {
    v48 = *(v0 + 448);
    v47(*(v0 + 400), *(v0 + 384));

    sub_192033970(v48, &qword_1EADEFEC0, &unk_192231BD0);

    goto LABEL_12;
  }

  v49 = *(v0 + 760);
  v50 = *(v0 + 752);
  v51 = *(v0 + 448);
  v112 = *(v0 + 400);
  v52 = *(v0 + 384);
  v53 = sub_192226A80();
  (*(v49 + 8))(v51, v50);
  v54 = [v53 string];

  v55 = sub_192227960();
  v90 = v56;
  v91 = v55;

  v47(v112, v52);

LABEL_14:
  v57 = *(v0 + 840);
  v58 = *(v0 + 832);
  v59 = *(v0 + 824);
  v60 = *(v0 + 784);
  v83 = *(v0 + 664);
  v84 = *(v0 + 656);
  v85 = *(v0 + 672);
  v82 = *(v0 + 648);
  v81 = *(v0 + 242);
  v79 = *(v0 + 632);
  v80 = *(v0 + 640);
  v88 = *(v0 + 544);
  v89 = *(v0 + 552);
  v92 = *(v0 + 241);
  v93 = *(v0 + 520);
  v94 = *(v0 + 512);
  v95 = *(v0 + 488);
  v96 = *(v0 + 480);
  v97 = *(v0 + 472);
  v98 = *(v0 + 464);
  v99 = *(v0 + 456);
  v100 = *(v0 + 448);
  v102 = *(v0 + 440);
  v103 = *(v0 + 432);
  v104 = *(v0 + 424);
  v106 = *(v0 + 416);
  v101 = *(v0 + 408);
  v109 = *(v0 + 400);
  v61 = *(v0 + 376);
  v86 = v61;
  v62 = *(v0 + 360);
  v63 = *(v0 + 368);
  v113 = *(v0 + 352);
  v119 = *(v0 + 344);
  v64 = *(v0 + 336);
  v120 = *(v0 + 328);
  v87 = *(v0 + 320);
  v65 = *(v0 + 304);
  (*(v0 + 816))();
  v66 = v62[6];
  v58(v63 + v66, 1, 1, v60);
  v67 = v63 + v62[7];
  v68 = (v63 + v62[8]);
  v69 = (v63 + v62[9]);
  *v63 = v117;
  v63[1] = v115;
  v63[2] = v91;
  v63[3] = v90;
  sub_19204193C(v64, v63 + v66, &qword_1EADEF720, &unk_19222E2F0);
  *v67 = v79;
  *(v67 + 1) = v80;
  v67[16] = v81;
  *v68 = v83;
  v68[1] = v85;
  *v69 = v82;
  v69[1] = v84;
  sub_19218FE78(v61, v65);
  v70 = type metadata accessor for ControlTemplateButton(0);
  v71 = sub_19218FE78(v63, v65 + v70[5]);
  v88(&v121, v71);
  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
  v72 = v121;
  v73 = sub_192225020();
  v74 = *(*(v73 - 8) + 56);
  v74(v87, 1, 1, v73);
  v75 = v70[7];
  v74(v65 + v75, 1, 1, v73);
  v76 = (v65 + v70[10]);
  *(v65 + v70[6]) = v72;
  sub_19204193C(v87, v65 + v75, &qword_1EADEEE10, &unk_19222B630);
  *(v65 + v70[8]) = 0;
  *(v65 + v70[9]) = v92;
  *v76 = 0;
  v76[1] = 0;
  *(v65 + v70[11]) = 0;
  sub_19218FE1C(v63);
  sub_19218FE1C(v86);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_19218F644()
{
  v1 = v0[67];

  v25 = v0[76];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[56];
  v8 = v0[57];
  v11 = v0[54];
  v10 = v0[55];
  v14 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_19218F7BC()
{
  v1 = v0[67];
  sub_192033970((v0 + 11), &qword_1EADF1810, &qword_19223D0E0);

  v25 = v0[87];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[56];
  v8 = v0[57];
  v11 = v0[54];
  v10 = v0[55];
  v14 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_19218F950()
{
  v1 = v0[67];
  sub_192033970((v0 + 11), &qword_1EADF1810, &qword_19223D0E0);

  v25 = v0[89];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[56];
  v8 = v0[57];
  v11 = v0[54];
  v10 = v0[55];
  v14 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_19218FAE4()
{
  v1 = v0[67];
  v2 = v0[47];

  sub_192033970((v0 + 11), &qword_1EADF1810, &qword_19223D0E0);
  sub_19218FE1C(v2);
  v26 = v0[108];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  v15 = v0[53];
  v16 = v0[52];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[44];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[40];

  v13 = v0[1];

  return v13();
}

uint64_t sub_19218FC80()
{
  v1 = v0[67];
  v2 = v0[47];

  sub_192033970((v0 + 11), &qword_1EADF1810, &qword_19223D0E0);
  sub_19218FE1C(v2);
  v26 = v0[110];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v12 = v0[54];
  v11 = v0[55];
  v15 = v0[53];
  v16 = v0[52];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[44];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[40];

  v13 = v0[1];

  return v13();
}

uint64_t sub_19218FE1C(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19218FE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_19218FF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_19218FF48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags.Widgets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags.Widgets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_192190118()
{
  result = qword_1EADF1818;
  if (!qword_1EADF1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1818);
  }

  return result;
}

uint64_t DynamicIslandExpandedRegion._viewRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v103 = a1;
  swift_getOpaqueTypeMetadata2();
  v99 = v3;
  v100 = v2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v127 = swift_getOpaqueTypeConformance2();
  v115 = v127;
  v4 = swift_getOpaqueTypeMetadata2();
  v5 = sub_1922266F0();
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1820, &qword_19223D2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v93 - v10;
  v12 = swift_checkMetadataState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v93 - v15;
  v112 = swift_checkMetadataState();
  v104 = *(v112 - 8);
  v17 = *(v104 + 64);
  v18 = MEMORY[0x1EEE9AC00](v112);
  v102 = &v93 - v19;
  v109 = *(v4 - 8);
  v20 = *(v109 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v101 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v93 - v23;
  v113 = v5;
  v107 = sub_1922266F0();
  v111 = *(v107 - 8);
  v24 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v93 - v25;
  v26 = sub_192226300();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v93 - v33;
  v35 = v97;
  v36 = *v97;
  v106 = v27;
  v105 = &v93 - v33;
  v96 = v32;
  if (v36 <= 1)
  {
    if (v36)
    {
      sub_1922262F0();
    }

    else
    {
      sub_1922262E0();
    }

    (*(v27 + 32))(v34, v31, v26);
    v58 = v103;
    v59 = &v35[*(v103 + 40)];
    sub_192227060();
    v60 = *(v35 + 1);
    v61 = v102;
    sub_192227070();
    (*(v13 + 8))(v16, v12);
    v62 = &v35[*(v58 + 44)];
    v63 = *v62;
    v64 = v62[8];
    v65 = *(v62 + 2);
    v66 = v62[24];
    v67 = *(v62 + 4);
    v68 = v62[40];
    sub_192226250();
    v69 = sub_192226260();
    (*(*(v69 - 8) + 56))(v11, 0, 1, v69);
    v70 = v101;
    v50 = v112;
    v71 = v115;
    sub_192227130();
    sub_192033970(v11, &qword_1EADF1820, &qword_19223D2A0);
    (*(v104 + 8))(v61, v50);
    OpaqueTypeMetadata2 = v50;
    v127 = v71;
    v72 = swift_getOpaqueTypeConformance2();
    v53 = v108;
    sub_1921BB14C(v70, v4, v72);
    v54 = *(v109 + 8);
    v54(v70, v4);
    sub_1921BB14C(v53, v4, v72);
    v73 = v94;
    sub_19202F62C(v70, v4);
    v116 = v72;
    v117 = v72;
    goto LABEL_9;
  }

  if (v36 != 2)
  {
    sub_1922262C0();
    (*(v27 + 32))(v34, v31, v26);
    v74 = v103;
    v75 = &v35[*(v103 + 40)];
    sub_192227060();
    v76 = *(v35 + 1);
    v77 = v102;
    sub_192227070();
    (*(v13 + 8))(v16, v12);
    v78 = &v35[*(v74 + 44)];
    v79 = *v78;
    v80 = v78[8];
    v81 = *(v78 + 2);
    v82 = v78[24];
    v83 = *(v78 + 4);
    v84 = v78[40];
    sub_192226250();
    v85 = sub_192226260();
    (*(*(v85 - 8) + 56))(v11, 0, 1, v85);
    v70 = v101;
    v50 = v112;
    v86 = v115;
    sub_192227130();
    sub_192033970(v11, &qword_1EADF1820, &qword_19223D2A0);
    (*(v104 + 8))(v77, v50);
    OpaqueTypeMetadata2 = v50;
    v127 = v86;
    v87 = swift_getOpaqueTypeConformance2();
    v53 = v108;
    sub_1921BB14C(v70, v4, v87);
    v54 = *(v109 + 8);
    v54(v70, v4);
    sub_1921BB14C(v53, v4, v87);
    v73 = v94;
    sub_1921BAB5C(v70, v4, v4);
    v118 = v87;
    v119 = v87;
LABEL_9:
    v88 = v113;
    swift_getWitnessTable();
    v56 = v110;
    sub_19202F62C(v73, v88);
    (*(v95 + 8))(v73, v88);
    v57 = v70;
    v51 = v115;
    goto LABEL_10;
  }

  sub_1922262D0();
  (*(v27 + 32))(v34, v31, v26);
  v37 = v103;
  v38 = &v35[*(v103 + 40)];
  sub_192227060();
  v39 = *(v35 + 1);
  v40 = v102;
  sub_192227070();
  (*(v13 + 8))(v16, v12);
  v41 = &v35[*(v37 + 44)];
  v42 = *v41;
  v43 = v41[8];
  v44 = *(v41 + 2);
  v45 = v41[24];
  v46 = *(v41 + 4);
  v47 = v41[40];
  sub_192226250();
  v48 = sub_192226260();
  (*(*(v48 - 8) + 56))(v11, 0, 1, v48);
  v49 = v101;
  v50 = v112;
  v51 = v115;
  sub_192227130();
  sub_192033970(v11, &qword_1EADF1820, &qword_19223D2A0);
  (*(v104 + 8))(v40, v50);
  OpaqueTypeMetadata2 = v50;
  v127 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v108;
  sub_1921BB14C(v49, v4, v52);
  v54 = *(v109 + 8);
  v54(v49, v4);
  sub_1921BB14C(v53, v4, v52);
  v124 = v52;
  v125 = v52;
  v55 = v113;
  swift_getWitnessTable();
  v56 = v110;
  sub_1921BAB5C(v49, v55, v4);
  v57 = v49;
LABEL_10:
  v54(v57, v4);
  v54(v53, v4);
  (*(v106 + 8))(v105, v96);
  OpaqueTypeMetadata2 = v50;
  v127 = v51;
  v89 = swift_getOpaqueTypeConformance2();
  v122 = v89;
  v123 = v89;
  WitnessTable = swift_getWitnessTable();
  v121 = v89;
  v90 = v107;
  v91 = swift_getWitnessTable();
  sub_1921BB14C(v56, v90, v91);
  return (*(v111 + 8))(v56, v90);
}

uint64_t DynamicIslandExpandedRegion.init(_:priority:content:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  v8 = type metadata accessor for DynamicIslandExpandedRegion();
  v9 = a3 + *(v8 + 44);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *a3 = v7;
  *(a3 + 8) = a4;
  v10 = a3 + *(v8 + 40);
  return a2(v8, v11, v12, v13);
}

uint64_t DynamicIslandExpandedRegion.contentMargins(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  (*(*(a1 - 8) + 16))(a2, v3, a1);
  result = sub_1921443BC(v21, a3);
  v8 = a2 + *(a1 + 44);
  v9 = *(v8 + 8);
  v10 = v21[8];
  if (v9)
  {
    v11 = v21;
  }

  else
  {
    v11 = (a2 + *(a1 + 44));
  }

  *v8 = *v11;
  *(v8 + 8) = v9 & v10;
  v12 = (v8 + 16);
  v13 = *(v8 + 24);
  v14 = v22[8];
  if (v13)
  {
    v12 = v22;
  }

  *(v8 + 16) = *v12;
  *(v8 + 24) = v13 & v14;
  v15 = (v8 + 32);
  v16 = *(v8 + 40);
  v17 = v23[8];
  if (v16)
  {
    v15 = v23;
  }

  *(v8 + 32) = *v15;
  *(v8 + 40) = v16 & v17;
  v18 = (v8 + 48);
  v19 = *(v8 + 56);
  v20 = v24[8];
  if (v19)
  {
    v18 = v24;
  }

  *(v8 + 48) = *v18;
  *(v8 + 56) = v19 & v20;
  return result;
}

uint64_t View.dynamicIsland(verticalPlacement:)(_DWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1828, &qword_19223D2A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_1922262B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_192226290();
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v10, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_192226270();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_192033970(v5, &qword_1EADF1828, &qword_19223D2A8);
    }
  }

  sub_192227160();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_192191264(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921912F4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFC)
    {
      return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (v17 >= 4)
    {
      return v17 - 3;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_192191458(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFC)
      {
        v17 = *(v6 + 56);
        v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

        v17(v18);
      }

      else
      {
        *a1 = a2 + 3;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *(a1 + v10) = v16;
      }

      else
      {
        *(a1 + v10) = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    *(a1 + v10) = v16;
  }
}

unint64_t sub_192191650()
{
  result = qword_1EADF1830;
  if (!qword_1EADF1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1830);
  }

  return result;
}

uint64_t WidgetContainerShapeModifier.init(cornerRadius:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t type metadata accessor for JindoViewCollection()
{
  result = qword_1EADED8B8;
  if (!qword_1EADED8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_192191784()
{
  result = sub_19217F398();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivityMetricsDefinition();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_19219181C()
{
  result = qword_1EADED150;
  if (!qword_1EADED150)
  {
    type metadata accessor for JindoViewStates(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED150);
  }

  return result;
}

uint64_t sub_192191874@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ActivityMetricsDefinition();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192033A64((v1 + 1), v24);
  v12 = type metadata accessor for JindoViewCollection();
  sub_192191A9C(v1 + *(v12 + 24), v11);
  v13 = *v1;
  v14 = type metadata accessor for JindoViewStates(0);
  *(a1 + v14[9]) = MEMORY[0x1E69E7CC8];
  *(a1 + v14[10]) = 4;
  v15 = v14[11];
  v16 = sub_1922261D0();
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  sub_192033A64(v24, (a1 + 1));
  sub_192191A9C(v11, a1 + v14[6]);
  *(a1 + v14[7]) = v13;
  v17 = *(v4 + 28);
  v18 = v13;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v7 = v18;
  v19 = sub_19209C05C(v7);
  sub_19205BD8C(v7, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_19205BD8C(v11, type metadata accessor for ActivityMetricsDefinition);
  result = __swift_destroy_boxed_opaque_existential_1(v24);
  v21 = (a1 + v14[8]);
  *v21 = &unk_1F06A77B0;
  v21[1] = v19;
  v22 = *(v19 + 16);
  if ((qword_1F06A77C0 * v22) >> 64 == (qword_1F06A77C0 * v22) >> 63)
  {
    *a1 = qword_1F06A77C0 * v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192191A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityMetricsDefinition();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id Color.Resolved.bsColor.getter(double a1, double a2, double a3, float a4)
{
  sub_1922272A0();
  v6 = v5;
  sub_1922272C0();
  v8 = v7;
  sub_1922272B0();
  result = [objc_opt_self() colorWithRed:v6 green:v8 blue:v9 alpha:a4];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t Color.init(bsColor:)(void *a1)
{
  v2 = sub_192227220();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  [a1 red];
  [a1 green];
  [a1 blue];
  [a1 alpha];
  v6 = sub_1922272E0();

  return v6;
}

uint64_t sub_192191CEC()
{
  v1 = *(v0 + *(type metadata accessor for ContentMarginsContext() + 20));
  if (v1)
  {
    v2 = [v1 extensionIdentity];
    v3 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v4 = sub_192225510();
    swift_endAccess();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v2 = [v5 bundleIdentifier];

    if (!v2)
    {
      return 7104878;
    }

    v4 = sub_192227960();
  }

  return v4;
}

uint64_t sub_192191E04()
{
  v1 = v0;
  v2 = 7104878;
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v57 - v12);
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_192228400();
  v62 = v58;
  v63 = v59;
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224D080);
  sub_19207C3DC(v0, v13);
  v14 = type metadata accessor for WidgetDescriptor(0);
  v57 = *(*(v14 - 8) + 48);
  if (v57(v13, 1, v14) == 1)
  {
    v15 = &qword_1EADEEE20;
    v16 = &qword_19222B670;
    v17 = v13;
  }

  else
  {
    sub_192193564(v13, v6, type metadata accessor for ViewSource);
    sub_1920369C0(v13, type metadata accessor for WidgetDescriptor);
    sub_1921DB7C0(&v58);
    sub_1920369C0(v6, type metadata accessor for ViewSource);
    v18 = v60;
    if (v60)
    {
      v19 = v61;
      __swift_project_boxed_opaque_existential_1(&v58, v60);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v58);
      v23 = v20;
      goto LABEL_7;
    }

    v15 = &qword_1EADF1860;
    v16 = &unk_19223D680;
    v17 = &v58;
  }

  sub_192033970(v17, v15, v16);
  v22 = 0xE300000000000000;
  v23 = 7104878;
LABEL_7:
  MEMORY[0x193B0A990](v23, v22);

  MEMORY[0x193B0A990](0x656C646E7562202CLL, 0xEB000000003D4449);
  v24 = type metadata accessor for ContentMarginsContext();
  v25 = *(v1 + v24[5]);
  if (v25)
  {
    v26 = [v25 extensionIdentity];
    v27 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v2 = sub_192225510();
    v29 = v28;
    swift_endAccess();
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v2, v29);

  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224D0A0);
  if (*(v1 + v24[7]))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v1 + v24[7]))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v30, v31);

  MEMORY[0x193B0A990](0xD000000000000014, 0x800000019224D0C0);
  sub_19207C3DC(v1, v11);
  if (v57(v11, 1, v14) == 1)
  {
    sub_192033970(v11, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    v32 = v11[*(v14 + 100)];
    sub_1920369C0(v11, type metadata accessor for WidgetDescriptor);
    if (v32)
    {
      v33 = 0xE400000000000000;
      v34 = 1702195828;
      goto LABEL_21;
    }
  }

  v33 = 0xE500000000000000;
  v34 = 0x65736C6166;
LABEL_21:
  MEMORY[0x193B0A990](v34, v33);

  MEMORY[0x193B0A990](0xD000000000000026, 0x800000019224D0E0);
  if (*(v1 + v24[8]))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v1 + v24[8]))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v35, v36);

  MEMORY[0x193B0A990](0xD000000000000022, 0x800000019224D110);
  if (*(v1 + v24[9]))
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (*(v1 + v24[9]))
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v37, v38);

  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224D140);
  v39 = sub_19207CFF0();
  v40 = (v39 & 1) == 0;
  if (v39)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x193B0A990](v41, v42);

  MEMORY[0x193B0A990](0xD00000000000002BLL, 0x800000019224D160);
  v43 = sub_1921DB98C();
  v44 = (v43 & 1) == 0;
  if (v43)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v44)
  {
    v46 = 0xE500000000000000;
  }

  else
  {
    v46 = 0xE400000000000000;
  }

  MEMORY[0x193B0A990](v45, v46);

  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224D190);
  v47 = sub_19207D258();
  v48 = (v47 & 1) == 0;
  if (v47)
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (v48)
  {
    v50 = 0xE500000000000000;
  }

  else
  {
    v50 = 0xE400000000000000;
  }

  MEMORY[0x193B0A990](v49, v50);

  MEMORY[0x193B0A990](0x72614D776172202CLL, 0xED00003D736E6967);
  v51 = [*(v1 + v24[6]) margins];
  v52 = [v51 description];
  v53 = sub_192227960();
  v55 = v54;

  MEMORY[0x193B0A990](v53, v55);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v62;
}

uint64_t sub_192192464()
{
  v0 = sub_1920C85B0(&unk_1F06A7E10);
  result = sub_1920ED9C4(&unk_1F06A7E30);
  qword_1EADECBD8 = v0;
  return result;
}

uint64_t sub_1921924A4()
{
  v0 = sub_1920C85B0(&unk_1F06A7B80);
  result = swift_arrayDestroy();
  qword_1ED749A00 = v0;
  return result;
}

uint64_t sub_1921924F0()
{
  v0 = sub_1920C85B0(&unk_1F06A7E40);
  result = swift_arrayDestroy();
  qword_1ED74C768 = v0;
  return result;
}

uint64_t sub_192192560(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28[-1] - v6;
  v8 = type metadata accessor for WidgetDescriptor(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = &type metadata for FeatureFlags.Widgets;
  v28[4] = sub_19202DBA4();
  LOBYTE(v28[0]) = 5;
  v13 = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v13)
  {
    goto LABEL_15;
  }

  sub_19207C3DC(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_192033970(v7, &qword_1EADEEE20, &qword_19222B670);
LABEL_15:
    v25 = 0;
    return v25 & 1;
  }

  sub_19207C284(v7, v12);
  if (qword_1ED7497E8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED749A00;
  if (a1)
  {

    v15 = [a1 extensionIdentity];
    v16 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v17 = sub_192225510();
    v19 = v18;
    swift_endAccess();
LABEL_10:

    goto LABEL_11;
  }

  v20 = objc_opt_self();

  v21 = [v20 mainBundle];
  v15 = [v21 bundleIdentifier];

  if (v15)
  {
    v17 = sub_192227960();
    v19 = v22;
    goto LABEL_10;
  }

  v19 = 0xE300000000000000;
  v17 = 7104878;
LABEL_11:
  v23 = sub_1921B01A8(v17, v19, v14);

  if ((v23 & 1) == 0)
  {
    sub_1920369C0(v12, type metadata accessor for WidgetDescriptor);
    goto LABEL_15;
  }

  v24 = v12[*(v8 + 104)];
  sub_1920369C0(v12, type metadata accessor for WidgetDescriptor);
  if (v24 == 2)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24 ^ 1;
  }

  return v25 & 1;
}

uint64_t sub_1921928A4(uint64_t a1)
{
  v2 = type metadata accessor for ContentMarginsContext();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for WidgetDescriptor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  if (*(a1 + v2[8]))
  {
    goto LABEL_4;
  }

  sub_19207C3DC(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_192033970(v12, &qword_1EADEEE20, &qword_19222B670);
LABEL_4:
    v21 = 0;
    return v21 & 1;
  }

  sub_19207C284(v12, v20);
  if (qword_1ED749970 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED74C768;

  v24 = sub_192191CEC();
  v26 = sub_1921B01A8(v24, v25, v23);

  v51 = v26;
  if (v26 & 1) == 0 || (*(a1 + v2[7]) & 1) != 0 || (v27 = [objc_opt_self() currentDevice], v28 = objc_msgSend(v27, sel_userInterfaceIdiom), v27, v28 == 1) || (objc_msgSend(*(a1 + v2[6]), sel_scaleFactor), (BSFloatApproximatelyEqualToFloat()))
  {
    v21 = 0;
  }

  else
  {
    v45 = v20[*(v13 + 104)];
    if (v45 == 2)
    {
      v21 = 1;
    }

    else
    {
      v21 = v45 ^ 1;
    }
  }

  if (qword_1ED7497F8 != -1)
  {
    swift_once();
  }

  v29 = sub_1922258B0();
  __swift_project_value_buffer(v29, qword_1ED74C6F0);
  sub_192193564(a1, v8, type metadata accessor for ContentMarginsContext);
  sub_192193564(a1, v6, type metadata accessor for ContentMarginsContext);
  sub_192193564(v20, v18, type metadata accessor for WidgetDescriptor);
  v30 = sub_192225890();
  v31 = sub_192227F80();
  if (os_log_type_enabled(v30, v31))
  {
    v48 = v31;
    v49 = v30;
    v50 = v6;
    v32 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v32 = 136447234;
    v33 = *&v8[v2[5]];
    if (v33)
    {
      v34 = [v33 extensionIdentity];
      v35 = *MEMORY[0x1E69941B8];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
      v36 = sub_192225510();
      v38 = v37;
      swift_endAccess();
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
    }

    sub_1920369C0(v8, type metadata accessor for ContentMarginsContext);
    v39 = sub_19202B8CC(v36, v38, &v52);

    *(v32 + 4) = v39;
    *(v32 + 12) = 1026;
    *(v32 + 14) = v21 & 1;
    *(v32 + 18) = 1026;
    *(v32 + 20) = v51 & 1;
    *(v32 + 24) = 1026;
    v40 = v50[v2[7]];
    sub_1920369C0(v50, type metadata accessor for ContentMarginsContext);
    *(v32 + 26) = v40;
    *(v32 + 30) = 1026;
    v41 = v18[*(v13 + 104)];
    v42 = v41 != 2 && (v41 & 1) != 0;
    v43 = v49;
    sub_1920369C0(v18, type metadata accessor for WidgetDescriptor);
    *(v32 + 32) = v42;
    _os_log_impl(&dword_192028000, v43, v48, "wants legacy margins for %{public}s: %{BOOL,public}d - inEligibleBundle: %{BOOL,public}d, showsWidgetBackground: %{BOOL,public}d, enableContentMarginsForFirstParty: %{BOOL,public}d", v32, 0x24u);
    v44 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x193B0C7F0](v44, -1, -1);
    MEMORY[0x193B0C7F0](v32, -1, -1);

    sub_1920369C0(v20, type metadata accessor for WidgetDescriptor);
  }

  else
  {
    sub_1920369C0(v18, type metadata accessor for WidgetDescriptor);
    sub_1920369C0(v6, type metadata accessor for ContentMarginsContext);

    sub_1920369C0(v20, type metadata accessor for WidgetDescriptor);
    sub_1920369C0(v8, type metadata accessor for ContentMarginsContext);
  }

  return v21 & 1;
}

double sub_192192EB4(uint64_t a1, _BYTE *a2, char a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ContentMarginsContext();
  if ((*(a1 + *(v12 + 32)) & 1) == 0)
  {
    v13 = v12;
    if (sub_1921928A4(a1))
    {
      *a2 = 1;
      if (*(a1 + *(v13 + 36)) == 1)
      {
        if (qword_1EADECBD0 != -1)
        {
          swift_once();
        }

        v14 = qword_1EADECBD8;

        v15 = sub_192191CEC();
        v17 = sub_1921B01A8(v15, v16, v14);

        if (v17)
        {
          goto LABEL_7;
        }

        sub_19207C3DC(a1, v11);
        v24 = type metadata accessor for WidgetDescriptor(0);
        if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
        {
          sub_192033970(v11, &qword_1EADEEE20, &qword_19222B670);
        }

        else
        {
          v25 = v11[*(v24 + 104)];
          sub_1920369C0(v11, type metadata accessor for WidgetDescriptor);
          if (v25 != 2 && (v25 & 1) != 0)
          {
LABEL_7:
            v18 = [*(a1 + *(v13 + 24)) margins];
            [v18 backgroundRemovedContentMargins];
            a4 = v19;

            return a4;
          }
        }

        v26 = [*(a1 + *(v13 + 24)) margins];
        [v26 backgroundRemovedContentMargins];
        v28 = v27;

        return v28 + v28;
      }

      v20 = *(a1 + *(v13 + 24));
      v21 = [v20 margins];
      [v21 contentMargins];
      a4 = v22;

      if ((a3 & 1) == 0)
      {
        [v20 scaleFactor];
        return a4 * v23;
      }
    }
  }

  return a4;
}

float64x2_t sub_1921931A0(uint64_t a1, float64x2_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for WidgetDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(a1, v10);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    sub_192033970(v10, &qword_1EADEEE20, &qword_19222B670);
LABEL_12:
    result = *a2;
    v26 = a2[1];
    return result;
  }

  sub_19207C284(v10, v15);
  v17 = type metadata accessor for ContentMarginsContext();
  if (*(a1 + *(v17 + 36)) != 1)
  {
    goto LABEL_11;
  }

  if (*(a1 + *(v17 + 28)))
  {
    goto LABEL_11;
  }

  if (v15[*(v11 + 88)] != 1)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    goto LABEL_11;
  }

  [*(a1 + *(v18 + 24)) scaleFactor];
  if (BSFloatApproximatelyEqualToFloat())
  {
    goto LABEL_11;
  }

  if (qword_1ED749970 != -1)
  {
    swift_once();
  }

  v21 = qword_1ED74C768;

  v22 = sub_192191CEC();
  v24 = sub_1921B01A8(v22, v23, v21);

  if (v24)
  {
LABEL_11:
    sub_1920369C0(v15, type metadata accessor for WidgetDescriptor);
    goto LABEL_12;
  }

  sub_19207C3DC(a1, v8);
  if (v16(v8, 1, v11) == 1)
  {
    sub_192033970(v8, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    v27 = v8[*(v11 + 104)];
    sub_1920369C0(v8, type metadata accessor for WidgetDescriptor);
    if (v27 != 2 && (v27 & 1) != 0)
    {
      goto LABEL_11;
    }
  }

  if (sub_1921DB98C())
  {
    v28 = qword_1ED74C768;

    v29 = sub_192191CEC();
    v31 = sub_1921B01A8(v29, v30, v28);

    sub_1920369C0(v15, type metadata accessor for WidgetDescriptor);
    if ((v31 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1920369C0(v15, type metadata accessor for WidgetDescriptor);
  }

  __asm { FMOV            V3.2D, #0.5 }

  v37 = vmulq_f64(a2[1], _Q3);
  return vmulq_f64(*a2, _Q3);
}

uint64_t sub_192193564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t View.widgetCurvesContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_192226BC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226BB0();
  MEMORY[0x193B0A190](v9, a2, v5, a3);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1921936F0()
{
  result = qword_1EADF1868;
  if (!qword_1EADF1868)
  {
    sub_192226BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1868);
  }

  return result;
}

uint64_t sub_192193748()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1880, &qword_19223D778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1870, &qword_19223D768);
  sub_192193FB4();
  sub_192193EC4();
  sub_1922266E0();
  return v1;
}

uint64_t _AccessoryWidgetBackground.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t _AccessoryWidgetBackground.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  result = swift_getKeyPath();
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t _AccessoryWidgetBackground.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  if (*(v1 + 8) == 1)
  {
    if (*v1 != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *v1;

    sub_192227FA0();
    v14 = sub_192226D00();
    v33 = v7;
    v15 = v12;
    v16 = v11;
    v17 = a1;
    v18 = v9;
    v19 = v3;
    v20 = v10;
    v21 = v4;
    v22 = v14;
    sub_1922257A0();

    v4 = v21;
    v10 = v20;
    v3 = v19;
    v9 = v18;
    a1 = v17;
    v11 = v16;
    v12 = v15;
    v7 = v33;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v8, 0);
    (*(v4 + 8))(v7, v3);
    if (v36 != 2)
    {
LABEL_3:
      sub_192227250();
      sub_192227260();

      if (v12)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {

        sub_192227FA0();
        v23 = v4;
        v24 = sub_192226D00();
        sub_1922257A0();

        v4 = v23;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        sub_192049898(v11, 0);
        (*(v23 + 8))(v7, v3);
        if (v36 != 1)
        {
LABEL_5:
          if (!v10)
          {
            goto LABEL_11;
          }

          goto LABEL_12;
        }
      }

      if (!v10)
      {
LABEL_11:

        sub_192227FA0();
        v25 = sub_192226D00();
        sub_1922257A0();

        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        sub_192049898(v9, 0);
        (*(v4 + 8))(v7, v3);
      }

LABEL_12:
      v26 = sub_192193748();
      v28 = v27;

      v34 = v26;
      BYTE2(v35) = BYTE2(v28) & 1;
      LOWORD(v35) = v28;
      HIBYTE(v35) = 1;
      goto LABEL_13;
    }
  }

  v34 = sub_192227230();
  v35 = 256;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1870, &qword_19223D768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1878, &qword_19223D770);
  sub_192193EC4();
  sub_192193F28();
  result = sub_1922266E0();
  v30 = v37 | (v38 << 16);
  v31 = v39;
  *a1 = v36;
  *(a1 + 8) = v30;
  *(a1 + 10) = BYTE2(v30);
  *(a1 + 11) = v31;
  return result;
}

uint64_t sub_192193D4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  result = swift_getKeyPath();
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_192193DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921940E8();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_192193E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921940E8();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

unint64_t sub_192193EC4()
{
  result = qword_1EADECE90;
  if (!qword_1EADECE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1870, &qword_19223D768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE90);
  }

  return result;
}

unint64_t sub_192193F28()
{
  result = qword_1EADECD60;
  if (!qword_1EADECD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1878, &qword_19223D770);
    sub_192193FB4();
    sub_192193EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD60);
  }

  return result;
}

unint64_t sub_192193FB4()
{
  result = qword_1EADECE50;
  if (!qword_1EADECE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1880, &qword_19223D778);
    sub_192193EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE50);
  }

  return result;
}

unint64_t sub_19219405C()
{
  result = qword_1EADECD50;
  if (!qword_1EADECD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1888, qword_19223D9A0);
    sub_192193EC4();
    sub_192193F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD50);
  }

  return result;
}

unint64_t sub_1921940E8()
{
  result = qword_1ED749540;
  if (!qword_1ED749540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749540);
  }

  return result;
}

uint64_t MetadataGraphicView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18A8, &qword_19223D9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1898, &qword_19223D9E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v61 - v9;
  v76 = sub_192225E20();
  v73 = *(v76 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x1EEE9AC00](v76);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v61 - v13;
  v14 = sub_192226B50();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_192226B70();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v68 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18B0, &qword_19223D9F8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v61 - v29;
  v78 = sub_1921948A0();
  if (!v78)
  {
    swift_storeEnumTagMultiPayload();
    sub_1921951C8();
    return sub_1922266E0();
  }

  v66 = v3;
  v63 = sub_192194B8C();
  v31 = type metadata accessor for MetadataGraphicView();
  v32 = v31;
  v33 = *(v1 + *(v31 + 40));
  v34 = MEMORY[0x1E697CB08];
  v67 = v6;
  v64 = v30;
  v65 = v24;
  if (v33 != 1)
  {

LABEL_8:
    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  (*(v18 + 16))(v23, v2 + *(v31 + 20), v17);
  if ((*(v18 + 88))(v23, v17) != *v34)
  {
    v39 = *(v18 + 8);

    v39(v23, v17);
    goto LABEL_8;
  }

  (*(v18 + 96))(v23, v17);
  v35 = v69;
  v36 = v70;
  v37 = v71;
  (*(v70 + 32))(v69, v23, v71);

  v62 = sub_192226AC0();
  (*(v36 + 8))(v35, v37);
LABEL_9:
  v40 = v74;
  sub_19202CFFC(v2 + *(v32 + 44), v74, &qword_1EADF1898, &qword_19223D9E0);
  v41 = v73;
  v42 = *(v73 + 48);
  v43 = v76;
  if (v42(v40, 1, v76) == 1)
  {
    v44 = v2 + *(v32 + 20);
    v45 = v68;
    (*(v18 + 16))(v68, v44, v17);
    if ((*(v18 + 88))(v45, v17) == *MEMORY[0x1E697CB08])
    {
      (*(v18 + 96))(v45, v17);
      v47 = v69;
      v46 = v70;
      v48 = v45;
      v49 = v71;
      (*(v70 + 32))(v69, v48, v71);
      v50 = v72;
      sub_192226AD0();
      v41 = v73;
      (*(v46 + 8))(v47, v49);
    }

    else
    {
      v50 = v72;
      sub_192225E10();
      (*(v18 + 8))(v45, v17);
    }

    v54 = v74;
    v51 = *(v41 + 32);
    v43 = v76;
    v51(v75, v50, v76);
    if (v42(v54, 1, v43) != 1)
    {
      sub_192033970(v54, &qword_1EADF1898, &qword_19223D9E0);
    }

    v53 = v67;
    v52 = v75;
  }

  else
  {
    v51 = *(v41 + 32);
    v52 = v75;
    v51(v75, v40, v43);
    v53 = v67;
  }

  KeyPath = swift_getKeyPath();
  v56 = (v28 + *(v65 + 36));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18C8, &qword_19223DA10);
  v51(v56 + *(v57 + 28), v52, v43);
  *v56 = KeyPath;
  v58 = v62;
  v59 = v63;
  *v28 = v78;
  v28[1] = v59;
  v28[2] = v58;
  v60 = v64;
  sub_19204E300(v28, v64, &qword_1EADF18B0, &qword_19223D9F8);
  sub_19202CFFC(v60, v53, &qword_1EADF18B0, &qword_19223D9F8);
  swift_storeEnumTagMultiPayload();
  sub_1921951C8();
  sub_1922266E0();

  return sub_192033970(v60, &qword_1EADF18B0, &qword_19223D9F8);
}

uint64_t sub_1921948A0()
{
  v1 = v0;
  v2 = sub_1922273A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18D0, &qword_19223DA48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for MetadataGraphicView();
  v12 = v11[5];
  result = WidgetAuxiliaryViewMetadata.Graphic.image(symbolRenderingMode:)(v0 + v11[9]);
  if (result)
  {
    v14 = *(v0 + v11[6]);

    if ((v14 & 1) != 0 || (v18 = sub_192194B8C()) != 0 && (v19 = *(v18 + 16), , !v19))
    {
      v15 = *MEMORY[0x1E6981698];
      v16 = sub_1922273F0();
      v17 = *(v16 - 8);
      (*(v17 + 104))(v10, v15, v16);
      (*(v17 + 56))(v10, 0, 1, v16);
    }

    else
    {
      v20 = sub_1922273F0();
      (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    }

    v21 = sub_1922273B0();

    sub_192033970(v10, &qword_1EADF18D0, &qword_19223DA48);
    if (*(v1 + v11[8]) == 1)
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
      v22 = sub_192227410();

      (*(v3 + 8))(v6, v2);
      return v22;
    }

    else
    {
      return v21;
    }
  }

  return result;
}

uint64_t sub_192194B8C()
{
  v1 = sub_192226B70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataGraphicView();
  v12 = (v0 + *(v11 + 28));
  v13 = *v12;
  if (*v12 == 1)
  {
    return 0;
  }

  if (v13)
  {
    v15 = *v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (v12[1])
    {
      (*(v2 + 16))(v5, v0 + *(v11 + 20), v1);
      if ((*(v2 + 88))(v5, v1) == *MEMORY[0x1E697CB08])
      {
        (*(v2 + 96))(v5, v1);
        (*(v7 + 32))(v10, v5, v6);
        v14 = sub_192226B10();
        (*(v7 + 8))(v10, v6);
        if (v14)
        {
          return v14;
        }
      }

      else
      {
        (*(v2 + 8))(v5, v1);
      }
    }
  }

  return v13;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.symbolEffects.getter()
{
  v1 = v0;
  v2 = sub_192226B50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192226B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x1E697CB08])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    v12 = sub_192226AC0();
    (*(v3 + 8))(v6, v2);
    return v12;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.contentTransition.getter()
{
  v1 = v0;
  v2 = sub_192226B50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192226B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x1E697CB08])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    sub_192226AD0();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_192225E10();
    return (*(v8 + 8))(v11, v7);
  }
}

unint64_t sub_1921951C8()
{
  result = qword_1EADEDDD0;
  if (!qword_1EADEDDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18B0, &qword_19223D9F8);
    sub_192195280();
    sub_192031E74(&unk_1EADEE600, &qword_1EADF18C8, &qword_19223DA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDD0);
  }

  return result;
}

unint64_t sub_192195280()
{
  result = qword_1EADEDDE8;
  if (!qword_1EADEDDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18B8, &qword_19223DA00);
    sub_19219530C();
    sub_1921953EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDE8);
  }

  return result;
}

unint64_t sub_19219530C()
{
  result = qword_1EADEDE08;
  if (!qword_1EADEDE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18C0, &qword_19223DA08);
    sub_192195398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE08);
  }

  return result;
}

unint64_t sub_192195398()
{
  result = qword_1EADED3F0;
  if (!qword_1EADED3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3F0);
  }

  return result;
}

unint64_t sub_1921953EC()
{
  result = qword_1EADEDD10;
  if (!qword_1EADEDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD10);
  }

  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.image(symbolRenderingMode:)(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18D0, &qword_19223DA48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v29 - v5;
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1922273A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192226B70();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, v2, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E697CB08])
  {
    (*(v17 + 96))(v20, v16);
    (*(v7 + 32))(v10, v20, v6);
    if (!sub_192226B10())
    {
      v26 = sub_1921958D0(v30);
      goto LABEL_9;
    }

    if (sub_1921958D0(v30))
    {
      v22 = *MEMORY[0x1E6981698];
      v23 = sub_1922273F0();
      v24 = *(v23 - 8);
      v25 = v29;
      (*(v24 + 104))(v29, v22, v23);
      (*(v24 + 56))(v25, 0, 1, v23);
      v26 = sub_1922273B0();

      sub_192033970(v25, &qword_1EADF18D0, &qword_19223DA48);
LABEL_9:
      (*(v7 + 8))(v10, v6);
      return v26;
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  if (v21 != *MEMORY[0x1E697CB00])
  {
    (*(v17 + 8))(v20, v16);
    return 0;
  }

  (*(v17 + 96))(v20, v16);
  v27 = *v20;
  sub_192227370();
  (*(v12 + 104))(v15, *MEMORY[0x1E6981630], v11);
  v26 = sub_192227410();

  (*(v12 + 8))(v15, v11);
  return v26;
}

uint64_t sub_1921958D0(uint64_t a1)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1890, &qword_19223D9D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - v8;
  v52 = sub_1922265E0();
  v56 = *(v52 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_192225020();
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_192226B30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - v24;
  v26 = sub_192226B00();
  v27 = *&v26;
  if ((v26 & 0x100000000) != 0)
  {
    v27 = 0.0;
  }

  v51 = v27;
  sub_192226B40();
  v28 = (*(v16 + 88))(v25, v15);
  v29 = *MEMORY[0x1E697CAF0];
  v50 = v1;
  if (v28 == v29)
  {
    (*(v16 + 16))(v23, v25, v15);
    (*(v16 + 96))(v23, v15);
    v30 = v23;
    v31 = v48;
    (*(v11 + 32))(v14, v30, v48);
    v32 = objc_opt_self();
    v33 = sub_192224FE0();
    v34 = [v32 wk:v33 uniqueWithURL:?];

    sub_192226AF0();
    v35 = sub_192227420();
    (*(v11 + 8))(v14, v31);
LABEL_9:
    v38 = v55;
    v37 = v56;
    v39 = v54;
    v40 = v52;
    goto LABEL_12;
  }

  if (v28 != *MEMORY[0x1E697CAF8])
  {
    v35 = 0;
    goto LABEL_9;
  }

  (*(v16 + 16))(v20, v25, v15);
  (*(v16 + 96))(v20, v15);
  v36 = *v20;
  sub_192226AF0();
  v38 = v55;
  v37 = v56;
  v39 = v54;
  v40 = v52;
  if (v36)
  {
    v41 = sub_1922273C0();
  }

  else
  {
    v41 = sub_192227380();
  }

  v35 = v41;
LABEL_12:
  (*(v16 + 8))(v25, v15);
  sub_19202CFFC(v53, v39, &qword_1EADF1890, &qword_19223D9D8);
  v42 = *(v37 + 48);
  if (v42(v39, 1, v40) == 1)
  {
    sub_192226AE0();
    if (v42(v39, 1, v40) != 1)
    {
      sub_192033970(v39, &qword_1EADF1890, &qword_19223D9D8);
    }
  }

  else
  {
    (*(v37 + 32))(v38, v39, v40);
    (*(v37 + 56))(v38, 0, 1, v40);
  }

  if (v42(v38, 1, v40) == 1)
  {
    sub_192033970(v38, &qword_1EADF1890, &qword_19223D9D8);
  }

  else
  {
    v43 = v49;
    (*(v37 + 32))(v49, v38, v40);
    if (v35)
    {
      v44 = v47;
      (*(v37 + 16))(v47, v43, v40);
      (*(v37 + 56))(v44, 0, 1, v40);
      v45 = sub_1922273E0();

      sub_192033970(v44, &qword_1EADF1890, &qword_19223D9D8);
      (*(v37 + 8))(v43, v40);
      return v45;
    }

    else
    {
      (*(v37 + 8))(v43, v40);
    }
  }

  return v35;
}

BOOL WidgetAuxiliaryViewMetadata.Graphic.isSystemSymbol.getter()
{
  v1 = v0;
  v2 = sub_192226B30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192226B50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192226B70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x1E697CB08])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    sub_192226B40();
    (*(v8 + 8))(v11, v7);
    v17 = (*(v3 + 88))(v6, v2) != *MEMORY[0x1E697CAF0];
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  return v17;
}

uint64_t sub_1921961F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  v63 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18E0, &qword_19223DBC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v54 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18E8, &qword_19223DBD0);
  v8 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v10 = v54 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18F0, &qword_19223DBD8);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54[0] = v54 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18F8, &qword_19223DBE0);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1900, &qword_19223DBE8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v54 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1908, &qword_19223DBF0);
  v19 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v21 = v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1910, &qword_19223DBF8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1918, &qword_19223DC00);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v60 = v54 - v32;
  if (!a2)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
    (*(*(v35 - 8) + 16))(v7, v62, v35);
    swift_storeEnumTagMultiPayload();
    sub_192196EC4();
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08);
    return sub_1922266E0();
  }

  v54[2] = v4;
  v55 = v7;
  v33 = a2[2];
  v54[1] = v31;
  if (!v33)
  {
    v34 = v62;
LABEL_9:
    KeyPath = swift_getKeyPath();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
    (*(*(v47 - 8) + 16))(v26, v34, v47);
    v48 = &v26[*(v22 + 36)];
    *v48 = KeyPath;
    v48[1] = v33;
    sub_19204E300(v26, v28, &qword_1EADF1910, &qword_19223DBF8);
    sub_19202CFFC(v28, v18, &qword_1EADF1910, &qword_19223DBF8);
    swift_storeEnumTagMultiPayload();
    sub_192196FDC();
    sub_1921970C0();
    sub_1922266E0();
    sub_19202CFFC(v21, v59, &qword_1EADF1908, &qword_19223DBF0);
    swift_storeEnumTagMultiPayload();
    sub_192196F50();
    sub_1921971A4();
    v42 = v60;
    sub_1922266E0();
    sub_192033970(v21, &qword_1EADF1908, &qword_19223DBF0);
    v43 = v28;
    v44 = &qword_1EADF1910;
    v45 = &qword_19223DBF8;
    goto LABEL_11;
  }

  v34 = v62;
  if (v33 != 2)
  {
    if (v33 != 1)
    {
      v49 = a2[4];
      v50 = a2[5];
      v51 = a2[6];
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
      (*(*(v52 - 8) + 16))(v10, v34, v52);
      v53 = &v10[*(v61 + 36)];
      *v53 = v49;
      *(v53 + 1) = v50;
      *(v53 + 2) = v51;
      sub_19202CFFC(v10, v59, &qword_1EADF18E8, &qword_19223DBD0);
      swift_storeEnumTagMultiPayload();
      sub_192196F50();
      sub_1921971A4();

      v42 = v60;
      sub_1922266E0();
      v43 = v10;
      v44 = &qword_1EADF18E8;
      v45 = &qword_19223DBD0;
      goto LABEL_11;
    }

    v33 = a2[4];

    goto LABEL_9;
  }

  v37 = a2[4];
  v38 = a2[5];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
  v40 = v54[0];
  (*(*(v39 - 8) + 16))(v54[0], v34, v39);
  v41 = (v40 + *(v56 + 36));
  *v41 = v37;
  v41[1] = v38;
  sub_19202CFFC(v40, v18, &qword_1EADF18F0, &qword_19223DBD8);
  swift_storeEnumTagMultiPayload();
  sub_192196FDC();
  sub_1921970C0();

  sub_1922266E0();
  sub_19202CFFC(v21, v59, &qword_1EADF1908, &qword_19223DBF0);
  swift_storeEnumTagMultiPayload();
  sub_192196F50();
  sub_1921971A4();
  v42 = v60;
  sub_1922266E0();
  sub_192033970(v21, &qword_1EADF1908, &qword_19223DBF0);
  v43 = v40;
  v44 = &qword_1EADF18F0;
  v45 = &qword_19223DBD8;
LABEL_11:
  sub_192033970(v43, v44, v45);
  sub_19202CFFC(v42, v55, &qword_1EADF1918, &qword_19223DC00);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
  sub_192196EC4();
  sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08);
  sub_1922266E0();
  return sub_192033970(v42, &qword_1EADF1918, &qword_19223DC00);
}

uint64_t sub_192196A78(uint64_t a1)
{
  v2 = sub_192225E20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_192225F80();
}

void sub_192196B84()
{
  sub_192196CDC(319, &qword_1EADEE8A0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_192226B70();
    if (v1 <= 0x3F)
    {
      sub_192196CDC(319, &qword_1EADEDD90, MEMORY[0x1E697F840], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_192196CDC(319, &qword_1EADEDDA8, MEMORY[0x1E697ED18], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_192196CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_192196D40()
{
  result = qword_1EADEDD60;
  if (!qword_1EADEDD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18D8, &qword_19223DAD8);
    sub_1921951C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD60);
  }

  return result;
}

uint64_t sub_192196DCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192196E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_192196EC4()
{
  result = qword_1EADEDD48;
  if (!qword_1EADEDD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1918, &qword_19223DC00);
    sub_192196F50();
    sub_1921971A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD48);
  }

  return result;
}

unint64_t sub_192196F50()
{
  result = qword_1EADEDD68;
  if (!qword_1EADEDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1908, &qword_19223DBF0);
    sub_192196FDC();
    sub_1921970C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD68);
  }

  return result;
}

unint64_t sub_192196FDC()
{
  result = qword_1EADEDE18;
  if (!qword_1EADEDE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1910, &qword_19223DBF8);
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08);
    sub_192031E74(&qword_1EADEDCD8, &qword_1EADF1928, &qword_19223DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE18);
  }

  return result;
}

unint64_t sub_1921970C0()
{
  result = qword_1EADEDE28;
  if (!qword_1EADEDE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18F0, &qword_19223DBD8);
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08);
    sub_192031E74(&qword_1EADEDCF8, &qword_1EADF1930, &qword_19223DC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE28);
  }

  return result;
}

unint64_t sub_1921971A4()
{
  result = qword_1EADEDE20;
  if (!qword_1EADEDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18E8, &qword_19223DBD0);
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08);
    sub_192031E74(&qword_1EADEDCF0, &qword_1EADF1938, &qword_19223DC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE20);
  }

  return result;
}

unint64_t sub_192197288()
{
  result = qword_1EADEDD40;
  if (!qword_1EADEDD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1940, &qword_19223DC58);
    sub_192196EC4();
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD40);
  }

  return result;
}

uint64_t sub_192197340()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1970, qword_19223DEC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v75 = &v69 - v3;
  v4 = sub_192225230();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v69 - v10;
  v11 = sub_1922251D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1960, &qword_19223DEB8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1968, &qword_19223DEC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v78 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  v74 = v0;
  sub_192225260();
  sub_1922251C0();
  (*(v12 + 56))(v26, 0, 1, v11);
  v29 = *(v16 + 56);
  sub_192198B04(v28, v19);
  sub_192198B04(v26, &v19[v29]);
  v30 = *(v12 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    sub_192033970(v26, &qword_1EADF1968, &qword_19223DEC0);
    sub_192033970(v28, &qword_1EADF1968, &qword_19223DEC0);
    if (v30(&v19[v29], 1, v11) == 1)
    {
      sub_192033970(v19, &qword_1EADF1968, &qword_19223DEC0);
      return 2;
    }
  }

  else
  {
    sub_192198B04(v19, v78);
    if (v30(&v19[v29], 1, v11) != 1)
    {
      v40 = &v19[v29];
      v41 = v70;
      (*(v12 + 32))(v70, v40, v11);
      sub_192198B74(&qword_1ED7499D0, MEMORY[0x1E6969610]);
      v42 = v78;
      v43 = sub_192227910();
      v44 = *(v12 + 8);
      v44(v41, v11);
      sub_192033970(v26, &qword_1EADF1968, &qword_19223DEC0);
      sub_192033970(v28, &qword_1EADF1968, &qword_19223DEC0);
      v44(v42, v11);
      sub_192033970(v19, &qword_1EADF1968, &qword_19223DEC0);
      if (v43)
      {
        return 2;
      }

      goto LABEL_7;
    }

    sub_192033970(v26, &qword_1EADF1968, &qword_19223DEC0);
    sub_192033970(v28, &qword_1EADF1968, &qword_19223DEC0);
    (*(v12 + 8))(v78, v11);
  }

  sub_192033970(v19, &qword_1EADF1960, &qword_19223DEB8);
LABEL_7:
  v32 = v75;
  sub_192225270();
  v34 = v76;
  v33 = v77;
  if ((*(v76 + 48))(v32, 1, v77) == 1)
  {
    sub_192033970(v32, &qword_1EADF1970, qword_19223DEC8);
    return 0;
  }

  v35 = v73;
  (*(v34 + 32))(v73, v32, v33);
  v36 = v71;
  (*(v34 + 16))(v71, v35, v33);
  v37 = v72;
  sub_192225220();
  sub_192198B74(&qword_1ED7499C8, MEMORY[0x1E69696A0]);
  v38 = sub_192227910();
  v39 = *(v34 + 8);
  v39(v37, v33);
  if (v38)
  {
    goto LABEL_10;
  }

  sub_192225220();
  v45 = sub_192227910();
  v39(v37, v33);
  if (v45)
  {
    goto LABEL_14;
  }

  sub_192225220();
  v46 = sub_192227910();
  v39(v37, v33);
  if (v46)
  {
    v39(v36, v33);
    v47 = v35;
LABEL_17:
    v39(v47, v33);
    return 1;
  }

  sub_192225220();
  v48 = sub_192227910();
  v39(v37, v33);
  if (v48)
  {
    goto LABEL_21;
  }

  sub_192225220();
  v49 = sub_192227910();
  v39(v37, v33);
  if (v49)
  {
    goto LABEL_21;
  }

  sub_192225220();
  v50 = sub_192227910();
  v39(v37, v33);
  if (v50)
  {
    goto LABEL_21;
  }

  sub_192225220();
  v51 = sub_192227910();
  v39(v37, v33);
  if (v51)
  {
    goto LABEL_14;
  }

  sub_192225220();
  v52 = sub_192227910();
  v39(v37, v33);
  if (v52 & 1) != 0 || (sub_192225220(), v53 = sub_192227910(), v39(v37, v33), (v53))
  {
LABEL_21:
    v39(v36, v33);
    v39(v35, v33);
    return 3;
  }

  sub_192225220();
  v54 = sub_192227910();
  v39(v37, v33);
  if (v54)
  {
LABEL_10:
    v39(v36, v33);
    v39(v35, v33);
    return 2;
  }

  sub_192225220();
  v55 = sub_192227910();
  v39(v37, v33);
  if (v55)
  {
LABEL_14:
    v39(v36, v33);
    v39(v35, v33);
    return 4;
  }

  sub_192225220();
  v56 = sub_192227910();
  v39(v37, v33);
  if (v56)
  {
    goto LABEL_10;
  }

  sub_192225220();
  v57 = sub_192227910();
  v39(v37, v33);
  if (v57)
  {
    v39(v36, v33);
    v47 = v73;
    goto LABEL_17;
  }

  v58 = v72;
  sub_192225220();
  v59 = sub_192227910();
  v39(v58, v33);
  if (v59)
  {
    v60 = v77;
    v39(v71, v77);
    v39(v73, v60);
    return 2;
  }

  v61 = v72;
  sub_192225220();
  v62 = v77;
  v63 = sub_192227910();
  v39(v61, v62);
  if (v63)
  {
    v64 = v77;
    v39(v71, v77);
    v39(v73, v64);
    return 3;
  }

  v65 = v72;
  sub_192225220();
  v66 = v71;
  v67 = v77;
  v68 = sub_192227910();
  v39(v65, v67);
  v39(v66, v67);
  v39(v73, v67);
  if (v68)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192197F14()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x3270756F7267;
  v4 = 0x3370756F7267;
  if (v1 != 3)
  {
    v4 = 0x3470756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x3170756F7267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

__CFNotificationCenter *sub_192197F98()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = 5;
  result = CFNotificationCenterGetLocalCenter();
  if (*MEMORY[0x1E695E6E0])
  {
    v4 = result;
    CFNotificationCenterAddObserver(result, 0, sub_192198C54, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_192227930();
    CFNotificationCenterAddObserver(v5, 0, sub_192198C58, v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFNotificationCenter *sub_1921980A0()
{
  type metadata accessor for PreferredLanguageObserver();
  swift_allocObject();
  result = sub_192197F98();
  off_1ED7499B0 = result;
  return result;
}

uint64_t sub_1921980E0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_19219815C()
{
  result = qword_1EADF1958;
  if (!qword_1EADF1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1958);
  }

  return result;
}

uint64_t sub_1921981B0(uint64_t a1)
{
  v83 = sub_1922251D0();
  v2 = *(v83 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1960, &qword_19223DEB8);
  v5 = *(*(v80 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v80);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1968, &qword_19223DEC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v62 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v62 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v70 = &v62 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v62 - v26;
  v74 = sub_192225280();
  v27 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v68 = v20;
    v69 = v17;
    v31 = 0;
    v71 = 0;
    v78 = (v2 + 56);
    v32 = (v2 + 48);
    v62 = v14;
    v63 = (v2 + 32);
    v66 = (v2 + 8);
    v67 = v25;
    v72 = (v28 + 8);
    v73 = v9;
    v33 = (a1 + 40);
    v76 = (v2 + 48);
    while (1)
    {
      v81 = v31;
      v35 = v32;
      v36 = *(v33 - 1);
      v37 = *v33;

      sub_192225250();
      v82 = sub_192197340();
      v38 = v79;
      sub_192225260();
      sub_1922251C0();
      v39 = *v78;
      v40 = v83;
      (*v78)(v25, 0, 1, v83);
      v41 = *(v80 + 48);
      sub_192198B04(v38, v9);
      sub_192198B04(v25, &v9[v41]);
      v42 = *v35;
      if ((*v35)(v9, 1, v40) == 1)
      {
        break;
      }

      v46 = v70;
      sub_192198B04(v9, v70);
      if (v42(&v9[v41], 1, v83) == 1)
      {
        sub_192033970(v25, &qword_1EADF1968, &qword_19223DEC0);
        sub_192033970(v79, &qword_1EADF1968, &qword_19223DEC0);
        (*v66)(v46, v83);
        v44 = v75;
        v45 = v81;
LABEL_10:
        sub_192033970(v9, &qword_1EADF1960, &qword_19223DEB8);
        goto LABEL_12;
      }

      v47 = v64;
      v48 = &v9[v41];
      v49 = v83;
      (*v63)(v64, v48, v83);
      sub_192198B74(&qword_1ED7499D0, MEMORY[0x1E6969610]);
      v65 = sub_192227910();
      v50 = *v66;
      v51 = v47;
      v25 = v67;
      (*v66)(v51, v49);
      sub_192033970(v25, &qword_1EADF1968, &qword_19223DEC0);
      sub_192033970(v79, &qword_1EADF1968, &qword_19223DEC0);
      v50(v70, v83);
      sub_192033970(v9, &qword_1EADF1968, &qword_19223DEC0);
      v71 |= v65;
      v44 = v75;
      v45 = v81;
LABEL_12:
      if (v45 >= v82)
      {
        (*v72)(v77, v74);
        result = v45;
        v32 = v76;
      }

      else
      {
        v52 = v68;
        v53 = v77;
        sub_192225260();
        v54 = v69;
        sub_1922251C0();
        v55 = v83;
        v39(v54, 0, 1, v83);
        v56 = *(v80 + 48);
        sub_192198B04(v52, v44);
        sub_192198B04(v54, v44 + v56);
        v32 = v76;
        if (v42(v44, 1, v55) == 1)
        {
          sub_192033970(v54, &qword_1EADF1968, &qword_19223DEC0);
          sub_192033970(v52, &qword_1EADF1968, &qword_19223DEC0);
          (*v72)(v53, v74);
          if (v42((v44 + v56), 1, v83) == 1)
          {
            sub_192033970(v44, &qword_1EADF1968, &qword_19223DEC0);
            v25 = v67;
            LODWORD(result) = v82;
LABEL_20:
            if (v71)
            {
              result = v81;
            }

            else
            {
              result = result;
            }

            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v57 = v62;
        sub_192198B04(v44, v62);
        if (v42((v44 + v56), 1, v83) == 1)
        {
          sub_192033970(v69, &qword_1EADF1968, &qword_19223DEC0);
          sub_192033970(v68, &qword_1EADF1968, &qword_19223DEC0);
          (*v72)(v77, v74);
          (*v66)(v57, v83);
LABEL_18:
          sub_192033970(v44, &qword_1EADF1960, &qword_19223DEB8);
          v25 = v67;
          result = v82;
          goto LABEL_4;
        }

        v58 = v64;
        v59 = (v44 + v56);
        v60 = v83;
        (*v63)(v64, v59, v83);
        sub_192198B74(&qword_1ED7499D0, MEMORY[0x1E6969610]);
        v65 = sub_192227910();
        v61 = *v66;
        (*v66)(v58, v60);
        sub_192033970(v69, &qword_1EADF1968, &qword_19223DEC0);
        sub_192033970(v68, &qword_1EADF1968, &qword_19223DEC0);
        (*v72)(v77, v74);
        v61(v57, v83);
        v32 = v76;
        sub_192033970(v44, &qword_1EADF1968, &qword_19223DEC0);
        v25 = v67;
        result = v82;
        if (v65)
        {
          goto LABEL_20;
        }
      }

LABEL_4:
      v33 += 2;
      v31 = result;
      --v30;
      v9 = v73;
      if (!v30)
      {
        return result;
      }
    }

    sub_192033970(v25, &qword_1EADF1968, &qword_19223DEC0);
    sub_192033970(v38, &qword_1EADF1968, &qword_19223DEC0);
    v43 = v42(&v9[v41], 1, v83);
    v44 = v75;
    v45 = v81;
    if (v43 == 1)
    {
      sub_192033970(v9, &qword_1EADF1968, &qword_19223DEC0);
      v71 = 1;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_192198B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1968, &qword_19223DEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192198B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_192198BBC()
{
  if (qword_1ED7499A8 != -1)
  {
    swift_once();
  }

  v0 = off_1ED7499B0;
  v1 = *(off_1ED7499B0 + 2);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v0[24] = 5;
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_192198C88()
{

  return swift_deallocClassInstance();
}

double sub_192198CD8()
{
  sub_192226DF0();
  if (sub_192226DC0())
  {
    v0 = MEMORY[0x1E6965930];
  }

  else
  {
    sub_192226E00();
    if (sub_192226DC0())
    {
      v0 = MEMORY[0x1E6965940];
    }

    else
    {
      sub_192226DD0();
      if (sub_192226DC0())
      {
        v0 = MEMORY[0x1E6965938];
      }

      else
      {
        sub_192226E40();
        if (sub_192226DC0())
        {
          v0 = MEMORY[0x1E6965960];
        }

        else
        {
          sub_192226E20();
          if (sub_192226DC0())
          {
            v0 = MEMORY[0x1E6965950];
          }

          else
          {
            sub_192226E30();
            v1 = sub_192226DC0();
            v0 = MEMORY[0x1E6965958];
            if ((v1 & 1) == 0)
            {
              sub_192226E10();
              if (sub_192226DC0())
              {
                v0 = MEMORY[0x1E6965948];
              }

              else
              {
                sub_192226DE0();
                if (sub_192226DC0())
                {
                  v0 = MEMORY[0x1E6965968];
                }

                else
                {
                  sub_192226DB0();
                  if (sub_192226DC0())
                  {
                    v0 = MEMORY[0x1E6965978];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v0;
}

uint64_t ContentSizeCategory.description.getter()
{
  v1 = v0;
  v2 = sub_1922265A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697F658])
  {
    return 21336;
  }

  if (v7 == *MEMORY[0x1E697F690])
  {
    return 83;
  }

  if (v7 == *MEMORY[0x1E697F698])
  {
    return 77;
  }

  if (v7 == *MEMORY[0x1E697F680])
  {
    return 76;
  }

  if (v7 == *MEMORY[0x1E697F650])
  {
    return 19544;
  }

  v9 = v7;
  result = 5003329;
  if (v9 == *MEMORY[0x1E697F660])
  {
    return 5003352;
  }

  if (v9 == *MEMORY[0x1E697F630])
  {
    return 1280858200;
  }

  if (v9 == *MEMORY[0x1E697F670])
  {
    return 19777;
  }

  if (v9 == *MEMORY[0x1E697F668])
  {
    return 19521;
  }

  if (v9 != *MEMORY[0x1E697F678])
  {
    if (v9 == *MEMORY[0x1E697F640])
    {
      return 1280858177;
    }

    else
    {
      if (v9 != *MEMORY[0x1E697F648])
      {
        (*(v3 + 8))(v6, v2);
        return 76;
      }

      return 0x4C58585841;
    }
  }

  return result;
}

uint64_t sub_192199098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v148 = a6;
  v149 = a4;
  v156 = a25;
  v142 = a24;
  v152 = a23;
  v150 = a5;
  v151 = a20;
  v154 = a19;
  v155 = a21;
  v133 = a18;
  v132 = a17;
  v131 = a16;
  v130 = a15;
  v128 = a14;
  v125 = a13;
  v137 = a12;
  v143 = *(a22 - 8);
  v31 = *(v143 + 64);
  v136 = a11;
  v153 = a10;
  v32 = MEMORY[0x1EEE9AC00](a1);
  v135 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v134 = &v120 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v141 = &v120 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v129 = &v120 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v140 = &v120 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v120 - v41;
  v43 = sub_192224FB0();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = *a8;
  *(a9 + 192) = 0;
  v138 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v144 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;
  v46 = v150;
  *(a9 + 176) = v149;
  *(a9 + 184) = v46;
  swift_getAssociatedConformanceWitness();

  if (a7)
  {
    v47 = v148;
  }

  else
  {
    sub_192224BC0();
    v47 = sub_192227980();
    a7 = v48;
  }

  v123 = a9;
  *(a9 + 152) = v47;
  *(a9 + 160) = a7;
  *(a9 + 168) = v45;
  v49 = v154;
  v127 = sub_192224BB0();
  v126 = v50;
  v51 = swift_allocObject();
  v124 = v51;
  v52 = v49;
  v53 = v151;
  v54 = v152;
  v51[2] = v49;
  v51[3] = v53;
  v55 = v53;
  v56 = v156;
  v51[4] = v155;
  v51[5] = a22;
  v58 = v142;
  v57 = v143;
  v51[6] = v54;
  v51[7] = v58;
  v51[8] = v56;
  v59 = *(v57 + 16);
  v145 = v57 + 16;
  v146 = v59;
  v121 = v42;
  v59(v42, v153, a22);
  v60 = v57;
  v61 = *(v57 + 80);
  v62 = (v61 + 72) & ~v61;
  v150 = v61;
  v139 = v62 + v31;
  v63 = swift_allocObject();
  v63[2] = v52;
  v63[3] = v55;
  v65 = v155;
  v64 = v156;
  v63[4] = v155;
  v63[5] = a22;
  v63[6] = v54;
  v63[7] = v58;
  v63[8] = v64;
  v148 = *(v60 + 32);
  v149 = v60 + 32;
  v66 = v63;
  v122 = v63;
  v148(v63 + v62, v121, a22);
  v120 = (v62 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + v120);
  v68 = v128;
  *v67 = v125;
  v67[1] = v68;
  v69 = v153;
  v70 = v146;
  v146(v140, v153, a22);
  v71 = swift_allocObject();
  v72 = v154;
  v73 = v151;
  v74 = v152;
  v71[2] = v154;
  v71[3] = v73;
  v71[4] = v65;
  v71[5] = a22;
  v71[6] = v74;
  v71[7] = v58;
  v71[8] = v64;
  v147 = v62;
  v75 = v71;
  v128 = v71;
  v148(v71 + v62, v140, a22);
  v76 = v120;
  v77 = (v75 + v120);
  v78 = v131;
  *v77 = v130;
  v77[1] = v78;
  v79 = v129;
  v70(v129, v69, a22);
  v80 = v76;
  v81 = swift_allocObject();
  v82 = v151;
  v81[2] = v72;
  v81[3] = v82;
  v83 = v156;
  v81[4] = v155;
  v81[5] = a22;
  v81[6] = v74;
  v81[7] = v58;
  v81[8] = v83;
  v84 = v81;
  v140 = v81;
  v85 = v79;
  v86 = v148;
  v148(v81 + v62, v85, a22);
  v87 = (v84 + v80);
  v88 = v133;
  *v87 = v132;
  v87[1] = v88;
  v89 = v146;
  v146(v141, v69, a22);
  v90 = swift_allocObject();
  v133 = v90;
  v91 = v155;
  v90[2] = v154;
  v90[3] = v82;
  v90[4] = v91;
  v90[5] = a22;
  v92 = v152;
  v90[6] = v152;
  v90[7] = v58;
  v93 = v156;
  v90[8] = v156;
  v86(v90 + v147, v141, a22);
  v94 = v134;
  v95 = v153;
  v89(v134, v153, a22);
  v96 = swift_allocObject();
  v98 = v154;
  v97 = v155;
  v99 = v151;
  *(v96 + 2) = v154;
  *(v96 + 3) = v99;
  *(v96 + 4) = v97;
  *(v96 + 5) = a22;
  v100 = v142;
  *(v96 + 6) = v92;
  *(v96 + 7) = v100;
  *(v96 + 8) = v93;
  v101 = v94;
  v102 = v148;
  v148(&v96[v147], v101, a22);
  v103 = v135;
  v146(v135, v95, a22);
  v104 = swift_allocObject();
  *(v104 + 2) = v98;
  *(v104 + 3) = v99;
  *(v104 + 4) = v97;
  *(v104 + 5) = a22;
  *(v104 + 6) = v152;
  *(v104 + 7) = v100;
  *(v104 + 8) = v156;
  v102(&v104[v147], v103, a22);
  v106 = v136;
  v105 = v137;
  v107 = v123;
  *v123 = v136;
  v107[1] = v105;
  v107[16] = &type metadata for ControlToggleTemplateProvider;
  v107[17] = &off_1F06B3538;
  v108 = swift_allocObject();
  v107[13] = v108;
  v109 = v138;
  v110 = v144;
  *(v108 + 16) = v138;
  *(v108 + 24) = v110;
  v111 = v126;
  *(v108 + 32) = v127;
  *(v108 + 40) = v111;
  *(v108 + 48) = 0;
  v112 = v124;
  *(v108 + 56) = sub_19219FF70;
  *(v108 + 64) = v112;
  v113 = v122;
  *(v108 + 72) = &unk_19223E2E0;
  *(v108 + 80) = v113;
  *(v108 + 88) = 0;
  *(v108 + 96) = 0;
  v114 = v128;
  *(v108 + 104) = &unk_19223E2F0;
  *(v108 + 112) = v114;
  v115 = v140;
  *(v108 + 120) = &unk_19223E300;
  *(v108 + 128) = v115;
  v116 = v133;
  *(v108 + 136) = &unk_19223E310;
  *(v108 + 144) = v116;
  *(v108 + 152) = &unk_19223E320;
  *(v108 + 160) = v96;
  *(v108 + 168) = &unk_19223E330;
  *(v108 + 176) = v104;
  v117 = *(v143 + 8);

  v118 = v105;
  result = v117(v153, a22);
  *(v107 + 144) = 0;
  v107[7] = v109;
  v107[8] = v110;
  v107[9] = 0;
  v107[10] = 0;
  v107[11] = v106;
  v107[12] = v118;
  return result;
}

uint64_t sub_1921998F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_19219FDFC(a3, v24 - v10);
  v12 = sub_192227CF0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19219FE6C(v11);
  }

  else
  {
    sub_192227CE0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_192227C70();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1922279A0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_19219FE6C(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19219FE6C(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_192199B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192199B9C, 0, 0);
}

uint64_t sub_192199B9C()
{
  v2 = v0[4];
  v1 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == &type metadata for EmptyConfiguration)
  {
    v10 = v0[2];
    swift_dynamicCast();
    v11 = v0[1];

    return v11();
  }

  else
  {
    v4 = AssociatedTypeWitness;
    v5 = swift_task_alloc();
    v0[6] = v5;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v5 = v0;
    v5[1] = sub_1920F9F30;
    v7 = v0[2];
    v8 = v0[3];

    return sub_19213431C(v7, v8, v4, AssociatedConformanceWitness);
  }
}

uint64_t sub_192199CE8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  swift_getAssociatedConformanceWitness();
  sub_192224C80();
  v6 = sub_1921D85E8();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t sub_192199E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v6[6] = v19;
  v6[3] = a4;
  v6[4] = a5;
  v6[2] = a3;
  v9 = *(*(a6 - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(a5 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v6[9] = v12;
  v6[10] = sub_192227CC0();
  v6[11] = sub_192227CB0();
  v13 = *(v20 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v6[12] = v15;
  *v15 = v6;
  v15[1] = sub_192199FEC;

  return v17(v12, a1);
}

uint64_t sub_192199FEC()
{
  v2 = v0;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 104) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A1270;
  }

  else
  {
    v8 = sub_1921A127C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[6] = v20;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v10 = *(*(a7 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v11 = *(a5 - 8);
  v7[8] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[9] = v13;
  v7[10] = sub_192227CC0();
  v7[11] = sub_192227CB0();
  v14 = *(v21 + 48);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v7[12] = v16;
  *v16 = v7;
  v16[1] = sub_192199FEC;

  return v18(v13, a1);
}

uint64_t sub_19219A330(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = v19;
  *(v6 + 48) = v20;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 112) = a2;
  v9 = *(*(v19 - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v10 = *(a6 - 8);
  *(v6 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v6 + 72) = v12;
  *(v6 + 80) = sub_192227CC0();
  *(v6 + 88) = sub_192227CB0();
  v13 = *(v21 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 96) = v15;
  *v15 = v6;
  v15[1] = sub_19219A518;

  return v17(v12, a1);
}

uint64_t sub_19219A518()
{
  v2 = v0;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 104) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A1270;
  }

  else
  {
    v8 = sub_1921A1280;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219A674(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  v9 = *(a7 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v7 + 56) = v11;
  *(v7 + 64) = sub_192227CC0();
  *(v7 + 72) = sub_192227CB0();
  v12 = *(v18 + 48);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v7 + 80) = v14;
  *v14 = v7;
  v14[1] = sub_19219A830;

  return v16(v11, a2);
}

uint64_t sub_19219A830()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A1264;
  }

  else
  {
    v8 = sub_1921A1284;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a7;
  v7[5] = v19;
  v7[2] = a2;
  v7[3] = a3;
  v10 = *(a3 - 8);
  v7[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v7[7] = v12;
  v7[8] = sub_192227CC0();
  v7[9] = sub_192227CB0();
  v13 = *(v19 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v7[10] = v15;
  *v15 = v7;
  v15[1] = sub_19219AB44;

  return v17(v12, a1, a7);
}

uint64_t sub_19219AB44()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_1921A1274, v7, v6);
  }

  else
  {
    v15 = (v3[5] + 24);
    v16 = (*v15 + **v15);
    v8 = (*v15)[1];
    v9 = swift_task_alloc();
    v3[12] = v9;
    *v9 = v3;
    v9[1] = sub_19219AD54;
    v10 = v3[4];
    v11 = v3[5];
    v12 = v3[2];
    v13 = v3[7];

    return v16(v13, v10, v11);
  }
}

uint64_t sub_19219AD54(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(v5 + 104) = v1;

  v8 = *(v5 + 72);
  v9 = *(v5 + 64);
  if (v3)
  {
    v10 = sub_192227C70();
    v12 = v11;
    v13 = sub_1921A1288;
  }

  else
  {
    *(v5 + 112) = a1 & 1;
    v10 = sub_192227C70();
    v12 = v14;
    v13 = sub_1921A1294;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_19219AED8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v20;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 96) = a2;
  v11 = *(a4 - 8);
  *(v8 + 48) = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  *(v8 + 56) = v13;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v14 = *(v20 + 48);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v8 + 80) = v16;
  *v16 = v8;
  v16[1] = sub_19219B094;

  return v18(v13, a1, a8);
}

uint64_t sub_19219B094()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A1264;
  }

  else
  {
    v8 = sub_1921A126C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219B1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v20;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v11 = *(a4 - 8);
  v8[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v8[8] = v13;
  v8[9] = sub_192227CC0();
  v8[10] = sub_192227CB0();
  v14 = *(v20 + 48);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v8[11] = v16;
  *v16 = v8;
  v16[1] = sub_19219B3AC;

  return v18(v13, a2, a8);
}

uint64_t sub_19219B3AC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[9];
    v5 = v3[10];
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_1921A1278, v7, v6);
  }

  else
  {
    v16 = (v3[6] + 40);
    v17 = (*v16 + **v16);
    v8 = (*v16)[1];
    v9 = swift_task_alloc();
    v3[13] = v9;
    *v9 = v3;
    v9[1] = sub_19219B5BC;
    v10 = v3[8];
    v11 = v3[5];
    v12 = v3[6];
    v13 = v3[2];
    v14 = v3[3];

    return v17(v13, v10, v11, v12);
  }
}

uint64_t sub_19219B5BC()
{
  v2 = v0;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 112) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A128C;
  }

  else
  {
    v8 = sub_1921A1268;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219B718(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  swift_getAssociatedConformanceWitness();
  sub_192224C80();
  v6 = sub_1921D85E8();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t sub_19219B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = v22;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a3;
  v12 = *(*(a6 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v13 = *(a5 - 8);
  v8[8] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v8[9] = v15;
  v8[10] = sub_192227CC0();
  v8[11] = sub_192227CB0();
  v16 = *(v23 + 48);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v8[12] = v18;
  *v18 = v8;
  v18[1] = sub_19219BA20;

  return v20(v15, a1, a8);
}

uint64_t sub_19219BA20()
{
  v2 = v0;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 104) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_19219BC58;
  }

  else
  {
    v8 = sub_19219BB7C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219BB7C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  v9(v2);
  v10 = sub_192227570();
  (*(v3 + 8))(v2, v7);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_19219BC58()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_19219BCD4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v21;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 112) = a2;
  v11 = *(*(a8 - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v12 = *(a6 - 8);
  *(v8 + 64) = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  *(v8 + 72) = v14;
  *(v8 + 80) = sub_192227CC0();
  *(v8 + 88) = sub_192227CB0();
  v15 = *(v22 + 48);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v8 + 96) = v17;
  *v17 = v8;
  v17[1] = sub_19219BEBC;

  return v19(v14, a1);
}

uint64_t sub_19219BEBC()
{
  v2 = v0;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 104) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A1270;
  }

  else
  {
    v8 = sub_19219C018;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219C018()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 112);

  v9(v10, v2);
  v11 = sub_192227570();
  (*(v3 + 8))(v2, v7);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_19219C104(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  v9 = *(a7 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v7 + 56) = v11;
  *(v7 + 64) = sub_192227CC0();
  *(v7 + 72) = sub_192227CB0();
  v12 = *(v18 + 48);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v7 + 80) = v14;
  *v14 = v7;
  v14[1] = sub_19219C2C0;

  return v16(v11, a2);
}

uint64_t sub_19219C2C0()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_192165DB0;
  }

  else
  {
    v8 = sub_19219C41C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219C41C()
{
  v16 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  if (v2)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);
    (*(v0 + 24))(v14, *(v0 + 96), *(v0 + 56));
    (*(v4 + 8))(v3, v5);
    v8 = v14[3];
    *(v7 + 32) = v14[2];
    *(v7 + 48) = v8;
    *(v7 + 64) = v15;
    v9 = v14[1];
    *v7 = v14[0];
    *(v7 + 16) = v9;
  }

  else
  {
    v10 = *(v0 + 16);
    (*(v4 + 8))(*(v0 + 56), *(v0 + 40));
    *(v10 + 64) = 0;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *v10 = 0u;
    *(v10 + 16) = 0u;
  }

  v11 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19219C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[5] = v18;
  v6[2] = a2;
  v6[3] = a3;
  v9 = *(a3 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[7] = v11;
  v6[8] = sub_192227CC0();
  v6[9] = sub_192227CB0();
  v12 = *(v18 + 48);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v6[10] = v14;
  *v14 = v6;
  v14[1] = sub_19219C6DC;

  return v16(v11, a1, a6);
}

uint64_t sub_19219C6DC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19219CB08, v7, v6);
  }

  else
  {
    v15 = (v3[5] + 24);
    v16 = (*v15 + **v15);
    v8 = (*v15)[1];
    v9 = swift_task_alloc();
    v3[12] = v9;
    *v9 = v3;
    v9[1] = sub_19219C8EC;
    v10 = v3[4];
    v11 = v3[5];
    v12 = v3[2];
    v13 = v3[7];

    return v16(v13, v10, v11);
  }
}

uint64_t sub_19219C8EC(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(v5 + 104) = v1;

  v8 = *(v5 + 72);
  v9 = *(v5 + 64);
  if (v3)
  {
    v10 = sub_192227C70();
    v12 = v11;
    v13 = sub_19219CB78;
  }

  else
  {
    *(v5 + 112) = a1 & 1;
    v10 = sub_192227C70();
    v12 = v14;
    v13 = sub_19219CA70;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_19219CA70()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 112);

  return v5(v6);
}

uint64_t sub_19219CB08()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_19219CB78()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  (*(v3 + 8))(v2, v4);
  v5 = v0[13];
  v6 = v0[7];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_19219CC10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a7;
  *(v7 + 40) = v19;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 96) = a2;
  v10 = *(a4 - 8);
  *(v7 + 48) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v7 + 56) = v12;
  *(v7 + 64) = sub_192227CC0();
  *(v7 + 72) = sub_192227CB0();
  v13 = *(v19 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 80) = v15;
  *v15 = v7;
  v15[1] = sub_19219CDCC;

  return v17(v12, a1, a7);
}

uint64_t sub_19219CDCC()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_1921A1264;
  }

  else
  {
    v8 = sub_19219CF28;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219CF28()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 96);

  (*(v4 + 32))(v2, v8, v5, v4);
  (*(v3 + 8))(v2, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_19219CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[6] = v19;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a1;
  v10 = *(a4 - 8);
  v7[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v7[8] = v12;
  v7[9] = sub_192227CC0();
  v7[10] = sub_192227CB0();
  v13 = *(v19 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v7[11] = v15;
  *v15 = v7;
  v15[1] = sub_19219D1B4;

  return v17(v12, a2, a7);
}

uint64_t sub_19219D1B4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[9];
    v5 = v3[10];
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19219D5B4, v7, v6);
  }

  else
  {
    v16 = (v3[6] + 40);
    v17 = (*v16 + **v16);
    v8 = (*v16)[1];
    v9 = swift_task_alloc();
    v3[13] = v9;
    *v9 = v3;
    v9[1] = sub_19219D3C4;
    v10 = v3[8];
    v11 = v3[5];
    v12 = v3[6];
    v13 = v3[2];
    v14 = v3[3];

    return v17(v13, v10, v11, v12);
  }
}

uint64_t sub_19219D3C4()
{
  v2 = v0;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 112) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_19219D620;
  }

  else
  {
    v8 = sub_19219D520;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19219D520()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19219D5B4()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_19219D620()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);
  v5 = v0[14];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t ControlToggle.init<A, B, C, D>(kind:intent:displayName:preferredSize:stateProvider:title:subtitle:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v54 = a7;
  v55 = a2;
  v57 = a4;
  v58 = a6;
  v56 = a3;
  v52 = a8;
  v53 = a1;
  v50 = a10;
  v51 = a9;
  v49 = a11;
  v44 = a15;
  v45 = a18;
  v46 = a14;
  v47 = a19;
  v48 = a12;
  v21 = *(a17 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ToggleStateProviderBox();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - v27;
  v40 = &v39 - v27;
  LOBYTE(a5) = *a5;
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  v43 = sub_192224BB0();
  v42 = v30;
  v59[0] = a5;
  v41 = v21;
  (*(v21 + 16))(v24, v58, a17);
  (*(v21 + 32))(v28, v24, a17);
  WitnessTable = swift_getWitnessTable();
  v32 = v45;
  v33 = v46;
  v34 = v44;
  v35 = v47;
  v36 = sub_192107D5C();
  sub_192080DB4(v53, v55, a13, v43, v42, v56, v57, v59, v52, v40, v36, v37, v54, v51, *(&v51 + 1), v50, *(&v50 + 1), v49, *(&v49 + 1), v48, a13, v33, v34, a16, v25, v32, v35, a20, WitnessTable);
  return (*(v41 + 8))(v58, a17);
}

uint64_t ControlToggle.init<A, B, C>(kind:intent:displayName:preferredSize:stateProvider:title:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v45 = a7;
  v46 = a2;
  v48 = a4;
  v49 = a6;
  v47 = a3;
  v43 = a8;
  v44 = a1;
  v41 = a10;
  v42 = a9;
  v39 = a13;
  v40 = a11;
  v18 = *(a15 - 8);
  v19 = *(v18 + 64);
  v38 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ToggleStateProviderBox();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - v24;
  LOBYTE(a5) = *a5;
  v26 = *(swift_getAssociatedConformanceWitness() + 8);
  v27 = sub_192224BB0();
  v36 = v28;
  v37 = v27;
  v50[0] = a5;
  (*(v18 + 16))(v21, v49, a15);
  (*(v18 + 32))(v25, v21, a15);
  WitnessTable = swift_getWitnessTable();
  v30 = v38;
  v31 = v39;
  v32 = sub_1921081A8();
  sub_192199098(v44, v46, a12, v37, v36, v47, v48, v50, v43, v25, v32, v33, v45, v42, *(&v42 + 1), v41, *(&v41 + 1), v40, a12, v31, a14, v22, a16, v30, WitnessTable);
  return (*(v18 + 8))(v49, a15);
}

uint64_t ControlToggle.init<A, B, C>(kind:intent:stateProvider:content:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v39 = a7;
  v40 = a6;
  v44 = a5;
  v45 = a3;
  v35 = a4;
  v42 = a1;
  v43 = a2;
  v41 = a8;
  v15 = *(a12 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ToggleStateProviderBox();
  v19 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v21 = &v32 - v20;
  v34 = &v32 - v20;
  v22 = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = sub_192224BB0();
  v37 = v24;
  v38 = v23;
  v36 = v15;
  (*(v15 + 16))(v18, v45, a12);
  (*(v15 + 32))(v21, v18, a12);
  v25 = swift_allocObject();
  v25[2] = a9;
  v25[3] = a10;
  v25[4] = a11;
  v25[5] = a12;
  v25[6] = a13;
  v25[7] = a14;
  v26 = v35;
  v25[8] = a15;
  v25[9] = v26;
  v25[10] = v44;
  v27 = v33;
  WitnessTable = swift_getWitnessTable();
  sub_19202F7C8(v46);

  v29 = sub_1921081A8();
  sub_192199098(v42, v43, a9, v38, v37, 0, 0, v46, v41, v34, v29, v30, sub_19219DFF4, v25, v40, v39, 0, 0, a9, a10, a11, v27, a13, a14, WitnessTable);

  return (*(v36 + 8))(v45, a12);
}

uint64_t sub_19219DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17(1);
  sub_1921BB14C(v14, a5, a8);
  v18 = *(v10 + 8);
  v18(v14, a5);
  sub_1921BB14C(v16, a5, a8);
  return (v18)(v16, a5);
}

uint64_t sub_19219DFF4(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  return sub_19219DEB4(a1, v1[9], v1[10], v1[2], v1[3], v1[4], v1[5], v1[6]);
}

uint64_t ControlToggle.disabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  sub_1920B2B7C(v4 + 104, &v31);
  if (BYTE7(v33) == 1)
  {
    return sub_1920B2BD8(&v31);
  }

  sub_19209CBAC(&v31, v42);
  sub_192033A64(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v21[0] = v31;
  v21[1] = v32;
  v8 = a1 & 1;
  v18 = v31;
  v19 = v32;
  v20[0] = v8;
  *&v20[81] = v38;
  *&v20[97] = v39;
  *&v20[113] = *v40;
  *&v20[128] = *&v40[15];
  *&v20[17] = v34;
  *&v20[33] = v35;
  *&v20[49] = v36;
  *&v20[65] = v37;
  *&v20[1] = v33;
  v16[3] = &type metadata for ControlToggleTemplateProvider;
  v16[4] = &off_1F06B3538;
  v9 = swift_allocObject();
  v16[0] = v9;
  v10 = *&v20[112];
  *(v9 + 144) = *&v20[96];
  *(v9 + 160) = v10;
  *(v9 + 176) = *&v20[128];
  v11 = *&v20[48];
  *(v9 + 80) = *&v20[32];
  *(v9 + 96) = v11;
  v12 = *&v20[80];
  *(v9 + 112) = *&v20[64];
  *(v9 + 128) = v12;
  v13 = v19;
  *(v9 + 16) = v18;
  *(v9 + 32) = v13;
  v14 = *&v20[16];
  *(v9 + 48) = *v20;
  *(v9 + 64) = v14;
  v22 = v8;
  v28 = v38;
  v29 = v39;
  *v30 = *v40;
  *&v30[15] = *&v40[15];
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v23 = v33;
  sub_19219E264(&v18, v15);
  sub_19219E29C(v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v17 = 0;
  return sub_192147370(v16, a3 + 104);
}

uint64_t sub_19219E310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19219E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920EF9CC;

  return v11(a1, a2, a3);
}

uint64_t sub_19219E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_19219E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ToggleStateProvider.getState(appIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920EF9CC;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_19219E86C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_19219E8B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19219E92C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(v4 + 24);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19210B93C;

  return v10(a1, v5, v4);
}

uint64_t sub_19219EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 16) = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v5 + 24) = AssociatedConformanceWitness;
  *(v5 + 32) = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_192228240();
  *(v5 + 40) = v7;
  v8 = *(v7 - 8);
  *(v5 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v10 = swift_checkMetadataState();
  *(v5 + 64) = v10;
  v11 = *(v10 - 8);
  *(v5 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19219EC3C, 0, 0);
}

uint64_t sub_19219EC3C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 104);
  v3 = *(v0 + 24);
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 16), v1);
  (*(v3 + 24))((v2 & 1) == 0, v1, v3);
  v4 = *(MEMORY[0x1E6959E78] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_19219ED34;
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 32);

  return MEMORY[0x1EEDB2D48](v7, 1, v8, v9);
}

uint64_t sub_19219ED34()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_19219EEE8;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v4 = sub_19219EE60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19219EE60()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19219EEE8()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_19219EF70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1921A1290;

  return sub_19219E92C(a1, a2);
}

uint64_t sub_19219F020(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920A59A8;

  return sub_19210A4F4(a1);
}

uint64_t sub_19219F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return sub_192199B78(a1, a2, a3, a4);
}

uint64_t sub_19219F170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[47] = a3;
  v4[48] = v3;
  v4[45] = a1;
  v4[46] = a2;
  sub_192227CC0();
  v4[49] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[50] = v6;
  v4[51] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19219F20C, v6, v5);
}

uint64_t sub_19219F20C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *v1;
  v5 = *(v1 + 32);
  *(v0 + 32) = *(v1 + 16);
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 96);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 112) = v8;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  v9 = *(v1 + 112);
  v10 = *(v1 + 144);
  v11 = *(v1 + 160);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v10;
  *(v0 + 128) = v9;
  *(v0 + 176) = v11;
  *(v0 + 184) = v2;
  v3[3] = type metadata accessor for ControlTemplateToggle(0);
  v3[4] = sub_19219FED4(&qword_1EADED030, type metadata accessor for ControlTemplateToggle);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_19219E264(v1, v0 + 192);
  v13 = v2;
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = sub_19219F354;
  v15 = *(v0 + 368);

  return sub_19212CC98(boxed_opaque_existential_1, v15);
}

uint64_t sub_19219F354()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_19219F500;
  }

  else
  {
    v7 = sub_19219F490;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_19219F490()
{
  v1 = *(v0 + 392);
  sub_19219FF1C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19219F500()
{
  v1 = v0[49];
  v2 = v0[45];
  sub_19219FF1C((v0 + 2));

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = v0[1];
  v4 = v0[53];

  return v3();
}

uint64_t sub_19219F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(v3 + 144);
  *(v7 + 144) = *(v3 + 128);
  *(v7 + 160) = v9;
  *(v7 + 176) = *(v3 + 160);
  v10 = *(v3 + 80);
  *(v7 + 80) = *(v3 + 64);
  *(v7 + 96) = v10;
  v11 = *(v3 + 112);
  *(v7 + 112) = *(v3 + 96);
  *(v7 + 128) = v11;
  v12 = *(v3 + 16);
  *(v7 + 16) = *v3;
  *(v7 + 32) = v12;
  v13 = *(v3 + 48);
  *(v7 + 48) = *(v3 + 32);
  *(v7 + 64) = v13;
  v14 = swift_task_alloc();
  *(v7 + 184) = v14;
  *v14 = v7;
  v14[1] = sub_19219F664;

  return sub_19219F170(a1, a2, a3);
}

uint64_t sub_19219F664()
{
  v1 = *(*v0 + 184);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_19219F758(uint64_t a1)
{
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19219F84C;

  return v9(a1);
}

uint64_t sub_19219F84C(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_19219F97C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  v7 = a1 > 0;
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return v11(a2, v7);
}

uint64_t sub_19219FA80(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return *(swift_getAssociatedConformanceWitness() + 8);
}

uint64_t sub_19219FAB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_192227CF0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  v18 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  (*(v9 + 32))(&v19[v18], v12, AssociatedTypeWitness);
  v19[v18 + v10] = a2;
  sub_1921998F0(0, 0, v16, &unk_19223E2C0, v19);
}

uint64_t sub_19219FCB8(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));
  v10 = *(v9 + *(v6 + 64));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920B3B44;

  return sub_19219EA50(a1, v7, v8, v9, v10);
}

uint64_t sub_19219FDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19219FE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19219FED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19219FF70()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  return sub_19219B718(v0[2]);
}

uint64_t sub_19219FF84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v16 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v14 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = (*(*(v6 - 8) + 80) + 72) & ~*(*(v6 - 8) + 80);
  v9 = (v1 + ((*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920EF2F4;

  return sub_19219B838(a1, v1 + v8, v10, v11, v4, v16, v5, v6);
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1921A0174(uint64_t a1, char a2)
{
  v16 = *(v2 + 24);
  v17 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v15 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v10 = (v2 + ((*(*(v7 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1920EF9CC;

  return sub_19219BCD4(a1, a2, v2 + v9, v11, v12, v17, v16, v6);
}

uint64_t sub_1921A02D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v4;
  v18 = *(v3 + 24);
  v19 = *(v3 + 16);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  v17 = *(v3 + 48);
  v10 = *(v3 + 64);
  v11 = (*(*(v8 - 8) + 80) + 72) & ~*(*(v8 - 8) + 80);
  v12 = (v3 + ((*(*(v8 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1920B3B44;

  return sub_19219C104(a1, a2, a3, v3 + v11, v13, v14, v19);
}

uint64_t sub_1921A0438(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = (*(*(v6 - 8) + 80) + 72) & ~*(*(v6 - 8) + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920EF2F4;

  return sub_19219C524(a1, v1 + v10, v3, v4, v5, v6);
}

uint64_t sub_1921A0550(uint64_t a1, char a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1920B3B44;

  return sub_19219CC10(a1, a2, v2 + v11, v4, v5, v6, v7);
}

uint64_t objectdestroy_60Tm()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1921A06EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v14 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1920A59A8;

  return sub_19219CFF8(a1, a2, v2 + v11, v14, v5, v6, v7);
}

uint64_t sub_1921A0808()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  return sub_192199CE8(v0[2]);
}

uint64_t sub_1921A0840(uint64_t a1)
{
  v4 = *(v1 + 16);
  v18 = *(v1 + 24);
  v15 = *(v1 + 40);
  v16 = *(v1 + 32);
  v5 = *(v1 + 48);
  v14 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = (*(*(v5 - 8) + 80) + 88) & ~*(*(v5 - 8) + 80);
  v9 = (v1 + ((*(*(v5 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920EF9CC;

  return sub_192199E08(a1, v1 + v8, v10, v11, v4, v18);
}

uint64_t sub_1921A09A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v18 = *(v1 + 24);
  v15 = *(v1 + 40);
  v16 = *(v1 + 32);
  v5 = *(v1 + 48);
  v14 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = (*(*(v5 - 8) + 80) + 88) & ~*(*(v5 - 8) + 80);
  v9 = (v1 + ((*(*(v5 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920EF9CC;

  return sub_19219A148(a1, v1 + v8, v10, v11, v4, v18, v16);
}

uint64_t objectdestroy_90Tm()
{
  v1 = *(*(v0 + 48) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1921A0B98(uint64_t a1, char a2)
{
  v17 = *(v2 + 24);
  v18 = *(v2 + 16);
  v5 = *(v2 + 40);
  v16 = *(v2 + 32);
  v6 = *(v2 + 48);
  v15 = *(v2 + 56);
  v7 = *(v2 + 72);
  v8 = *(v2 + 80);
  v9 = (*(*(v6 - 8) + 80) + 88) & ~*(*(v6 - 8) + 80);
  v10 = (v2 + ((*(*(v6 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1920EF9CC;

  return sub_19219A330(a1, a2, v2 + v9, v11, v12, v18);
}

uint64_t sub_1921A0CFC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  v20 = *(v3 + 24);
  v21 = *(v3 + 16);
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v8 = *(v3 + 48);
  v17 = *(v3 + 56);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v11 = (*(*(v8 - 8) + 80) + 88) & ~*(*(v8 - 8) + 80);
  v12 = (v3 + ((*(*(v8 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1920B3B44;

  return sub_19219A674(a1, a2, a3, v3 + v11, v13, v14, v21);
}

uint64_t sub_1921A0E64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v13 = *(v1 + 64);
  v9 = *(v1 + 80);
  v10 = (*(*(v7 - 8) + 80) + 88) & ~*(*(v7 - 8) + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920EF9CC;

  return sub_19219A98C(a1, v1 + v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A0F8C(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v14 = *(v2 + 56);
  v10 = *(v2 + 72);
  v9 = *(v2 + 80);
  v11 = (*(*(v8 - 8) + 80) + 88) & ~*(*(v8 - 8) + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1920B3B44;

  return sub_19219AED8(a1, a2, v2 + v11, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_106Tm()
{
  v1 = *(*(v0 + 48) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 88) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1921A1138(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v15 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v14 = *(v2 + 56);
  v10 = *(v2 + 72);
  v9 = *(v2 + 80);
  v11 = (*(*(v8 - 8) + 80) + 88) & ~*(*(v8 - 8) + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1920B3B44;

  return sub_19219B1F0(a1, a2, v2 + v11, v15, v5, v6, v7, v8);
}

uint64_t sub_1921A1298@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v12 = (v10 + *MEMORY[0x1E69E77B0]);
  v13 = v12[1];
  v14 = (v13 + *MEMORY[0x1E695A680]);
  v15 = v14[1];
  v16 = *(v15 + *MEMORY[0x1E695A610] + 8);
  v11[2] = v16;
  v23 = *v12;
  v24 = v16;
  v11[3] = *v12;
  v22 = v14[2];
  v11[4] = v22;
  v11[5] = v15;
  v11[6] = v13;
  v11[7] = a2;
  v11[8] = a3;
  v11[9] = a4;
  v21 = v14[5];
  v11[10] = v21;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v19 = swift_allocObject();
  v19[2] = v24;
  v19[3] = v23;
  v19[4] = v22;
  v19[5] = v15;
  v19[6] = v13;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = a4;
  v19[10] = v21;
  *a5 = &unk_19223E530;
  a5[1] = v11;
  a5[2] = &unk_19223E540;
  a5[3] = v17;
  a5[4] = &unk_19223E550;
  a5[5] = v18;
  a5[6] = &unk_19223E560;
  a5[7] = v19;
}

double ControlPicker.init<A, B, C, D, E, F, G, H>(kind:displayName:preferredSize:intentUpdatableProperty:title:subtitle:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *a5;
  v27 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v27 + *MEMORY[0x1E695A680];
  v29 = *(v28 + 16);
  v30 = *(*(*(v28 + 40) + 8) + 8);
  v31 = sub_192224D10();
  v46 = v32;
  v47 = v31;
  v55 = v26;
  sub_1921A1298(a6, a19, a20, a21, v54);

  v33 = sub_192224BA0();
  if (a14)
  {
    v34 = a15;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*(v27 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v36 = type metadata accessor for KeyPathPickerBox();
  v37 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192145D94(a1, a2, &type metadata for EmptyConfiguration, v47, v46, a3, a4, &v55, v56, v54, 3, v33, a7, a8, a10, a11, a12, a13, a14, v34, &type metadata for EmptyConfiguration, a16, a17, a18, v36, v37, a22, a23, a24, WitnessTable);

  v39 = v64;
  *(a9 + 128) = v63;
  *(a9 + 144) = v39;
  v40 = v66;
  *(a9 + 160) = v65;
  *(a9 + 176) = v40;
  v41 = v60;
  *(a9 + 64) = v59;
  *(a9 + 80) = v41;
  v42 = v62;
  *(a9 + 96) = v61;
  *(a9 + 112) = v42;
  v43 = v56[1];
  *a9 = v56[0];
  *(a9 + 16) = v43;
  result = *&v57;
  v45 = v58;
  *(a9 + 32) = v57;
  *(a9 + 48) = v45;
  *(a9 + 192) = 1;
  return result;
}

uint64_t ControlPicker.init<A, B, C, D, E, F, G>(kind:displayName:preferredSize:intentUpdatableProperty:title:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *a5;
  v21 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v22 = MEMORY[0x1E695A680];
  v23 = v21 + *MEMORY[0x1E695A680];
  v24 = *(v23 + 16);
  v25 = *(*(*(v23 + 40) + 8) + 8);
  v26 = sub_192224D10();
  v36 = v27;
  v37 = v26;
  v46[0] = v20;
  sub_1921A18CC(a6, a16, a17, v45);

  v28 = sub_192224BA0();
  if (a12)
  {
    v29 = a13;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(v21 + *v22 + 8) + *MEMORY[0x1E695A610] + 8);
  v31 = *(a16 + 24);
  v32 = type metadata accessor for KeyPathPickerBox();
  v33 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192080134(a1, a2, &type metadata for EmptyConfiguration, v37, v36, a3, a4, v46, a9, v45, 3, v28, a7, a8, a10, a11, a12, v29, &type metadata for EmptyConfiguration, a14, a15, v32, v33, a18, a19, WitnessTable);
}