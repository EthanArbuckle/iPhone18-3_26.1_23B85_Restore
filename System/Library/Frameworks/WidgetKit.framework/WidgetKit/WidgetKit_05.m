uint64_t WidgetViewCollection.init(widget:environment:entries:reloadPolicy:shouldSortAndDedupeEntries:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, int a5)
{
  LODWORD(v119) = a5;
  v96 = a4;
  v104 = a3;
  v115 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v114 = &v93 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v113 = &v93 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v93 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v93 - v22;
  v23 = type metadata accessor for ViewableTimelineEntry();
  v107 = *(v23 - 8);
  v24 = *(v107 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v108 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v109 = &v93 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v93 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v30 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v116 = (&v93 - v31);
  v32 = sub_192225150();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for BundleStub();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *a2;
  v41 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v42 = sub_192224E00();
  (*(*(v42 - 8) + 56))(&v5[v41], 1, 1, v42);
  v95 = a1;
  BundleStub.init(_:)([a1 extensionIdentity], v40);
  sub_19203CFC0(v40, &v5[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle], type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v43 = *(v33 + 32);
  v97 = v5;
  v43(&v5[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate], v36, v32);
  if ((v119 & 1) == 0)
  {
LABEL_45:
    v86 = v97;
    *(v97 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v104;
    v86[2] = v94;
    *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v95;
    v87 = v96;
    sub_19204E6EC(v96, v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v88 = byte_1ED74B5B8;
    sub_192046EE8(v87, type metadata accessor for TimelineReloadPolicy);
    *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v88;
    *(v86 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v86;
  }

  v120 = v104;

  sub_19209B0C4(&v120);
  v112 = v18;

  v44 = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v44;
  *(inited + 24) = 0;
  v47 = v107 + 56;
  v46 = *(v107 + 56);
  v99 = *(v107 + 80);
  v48 = (v99 + 32) & ~v99;
  v104 = MEMORY[0x1E69E7CC0];
  v101 = MEMORY[0x1E69E7CC0] + v48;
  v49 = v116;
  v115 = *(v118 + 32);
  v118 = v46;
  v46(v116 + v115, 1, 1, v23);
  *v49 = inited;
  v49[1] = sub_1920DA3A8;
  v49[2] = 0;
  v111 = v44;
  v98 = v48;
  v105 = v44 + v48;
  v119 = v47;
  v50 = (v47 - 8);
  v106 = inited;

  v102 = 0;
  v51 = 0;
  v52 = v110;
  v117 = v23;
  while (2)
  {
    (v118)(v21, 1, 1, v23);
    while (1)
    {
      v53 = v111[2];
      if (v51 == v53)
      {
        v54 = 1;
        v55 = v113;
        v56 = v114;
        v57 = v112;
      }

      else
      {
        v55 = v113;
        v56 = v114;
        v57 = v112;
        if (v51 >= v53)
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_19204E6EC(&v105[*(v107 + 72) * v51], v112, type metadata accessor for ViewableTimelineEntry);
        v54 = 0;
        *(v106 + 24) = ++v51;
      }

      v58 = v117;
      (v118)(v57, v54, 1, v117);
      sub_192033970(v21, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19204E300(v57, v21, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v21, v55, &qword_1EADEE9F8, &unk_19222A7D0);
      v59 = *v50;
      if ((*v50)(v55, 1, v58) == 1)
      {
        break;
      }

      sub_192033970(v55, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v21, v56, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v59(v56, 1, v58) == 1)
      {
        v64 = v56;
        goto LABEL_16;
      }

      v60 = v56;
      v61 = v109;
      sub_19203CFC0(v60, v109, type metadata accessor for ViewableTimelineEntry);
      sub_19202CFFC(v116 + v115, v52, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v59(v52, 1, v58) == 1)
      {
        sub_192046EE8(v61, type metadata accessor for ViewableTimelineEntry);
        v64 = v52;
        goto LABEL_16;
      }

      v62 = v108;
      sub_19203CFC0(v52, v108, type metadata accessor for ViewableTimelineEntry);
      v63 = sub_192225120();
      sub_192046EE8(v62, type metadata accessor for ViewableTimelineEntry);
      v52 = v110;
      sub_192046EE8(v61, type metadata accessor for ViewableTimelineEntry);
      if ((v63 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v64 = v55;
LABEL_16:
    sub_192033970(v64, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v21, v116 + v115);
    v55 = v100;
    sub_19204E300(v21, v100, &qword_1EADEE9F8, &unk_19222A7D0);
    v23 = v117;
    if (v59(v55, 1, v117) != 1)
    {
      sub_19203CFC0(v55, v103, type metadata accessor for ViewableTimelineEntry);
      v55 = v102;
      if (v102)
      {
        v65 = v104;
        v66 = v101;
        v55 = v102 - 1;
        if (!__OFSUB__(v102, 1))
        {
          goto LABEL_40;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v67 = v104[3];
      if (((v67 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v68 = v67 & 0xFFFFFFFFFFFFFFFELL;
      if (v68 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v68;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v55 = *(v107 + 72);
      v69 = v98;
      v65 = swift_allocObject();
      v70 = _swift_stdlib_malloc_size(v65);
      if (!v55)
      {
        goto LABEL_49;
      }

      v71 = v70 - v69;
      if (v70 - v69 == 0x8000000000000000 && v55 == -1)
      {
        goto LABEL_50;
      }

      v73 = v71 / v55;
      v65[2] = v52;
      v65[3] = 2 * (v71 / v55);
      v74 = v65 + v69;
      v75 = v104;
      v76 = v104[3] >> 1;
      v77 = v76 * v55;
      v52 = v110;
      if (!v104[2])
      {
LABEL_39:
        v66 = &v74[v77];
        v79 = (v73 & 0x7FFFFFFFFFFFFFFFLL) - v76;

        v80 = __OFSUB__(v79, 1);
        v55 = v79 - 1;
        if (!v80)
        {
LABEL_40:
          v102 = v55;
          sub_19203CFC0(v103, v66, type metadata accessor for ViewableTimelineEntry);
          v101 = v66 + *(v107 + 72);
          v104 = v65;
          continue;
        }

        goto LABEL_47;
      }

      if (v65 < v104 || v74 >= v104 + v69 + v77)
      {
        v78 = v104[3] >> 1;
        v101 = v73;
        v102 = v74;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v65 == v104)
        {
LABEL_38:
          v75[2] = 0;
          goto LABEL_39;
        }

        v78 = v104[3] >> 1;
        v101 = v73;
        v102 = v74;
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = v78;
      v74 = v102;
      v73 = v101;
      v75 = v104;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v116, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v55, &qword_1EADEE9F8, &unk_19222A7D0);
  v81 = v104[3];
  if (v81 < 2)
  {
LABEL_44:
    v84 = v106;
    swift_setDeallocating();
    v85 = *(v84 + 16);

    goto LABEL_45;
  }

  v82 = v81 >> 1;
  v80 = __OFSUB__(v82, v102);
  v83 = v82 - v102;
  if (!v80)
  {
    v104[2] = v83;
    goto LABEL_44;
  }

LABEL_51:
  __break(1u);

  v90 = v97;
  sub_192046EE8(v97 + v55, type metadata accessor for BundleStub);
  sub_192033970(&v90[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange], &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v52 + 8))(&v90[*(v51 + 3024)], v50);
  v91 = *(*v90 + 48);
  v92 = *(*v90 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t WidgetViewCollection.viewableEntry(for:in:ignoringEnvironmentKeys:)@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v10 = swift_beginAccess();
  if (*(*(v8 + v9) + 16) && (v10 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, a2), (v11 & 1) != 0))
  {
    v12 = type metadata accessor for ViewableTimelineEntry();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    v14 = *(v4 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
    MEMORY[0x1EEE9AC00](v10);

    sub_192098448(sub_19209B1DC, v14, a3);
  }
}

uint64_t sub_192098448@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v8 = type metadata accessor for ViewableTimelineEntry();
    v9 = *(v8 - 8);
    v10 = v9;
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v9 + 72) * i;
    result = a1(v11);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      sub_19204E6EC(v11, a3, type metadata accessor for ViewableTimelineEntry);
      return (*(v10 + 56))(a3, 0, 1, v8);
    }
  }

  v13 = type metadata accessor for ViewableTimelineEntry();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t WidgetViewCollection.drop(before:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries;
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v17[2] = a1;

  v7 = sub_1920986F0(sub_19209CB70, v17, v3);
  if ((v6 & 1) == 0)
  {
    goto LABEL_2;
  }

  v10 = v6;
  v11 = v5;
  v12 = v4;
  sub_1922289D0();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);

  if (__OFSUB__(v10 >> 1, v11))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 != (v10 >> 1) - v11)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v6 = v10;
    v5 = v11;
    v4 = v12;
LABEL_2:
    sub_19209A9CC(v7, v4, v5, v6);
    v9 = v8;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

LABEL_10:
  v15 = *(v1 + v2);
  *(v1 + v2) = v9;
}

uint64_t sub_1920986F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewableTimelineEntry();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(a3 + 16))
    {
      sub_19204E6EC(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v11, type metadata accessor for ViewableTimelineEntry);
      v14 = a1(v11);
      result = sub_192046EE8(v11, type metadata accessor for ViewableTimelineEntry);
      if (v3)
      {
        goto LABEL_11;
      }

      if ((v14 & 1) != 0 && v12 != ++v13)
      {
        continue;
      }

      if (*(a3 + 16) >= v12)
      {
        goto LABEL_8;
      }

      __break(1u);
LABEL_11:

      return a3;
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v15 = *(v7 + 80);
    return a3;
  }

  return result;
}

uint64_t WidgetViewCollection.deinit()
{
  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);

  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes);

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  v2 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v3 = sub_192225150();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  return v0;
}

uint64_t WidgetViewCollection.__deallocating_deinit()
{
  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);

  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes);

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  v2 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v3 = sub_192225150();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_192098AD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_192225900();
  *a1 = result;
  return result;
}

uint64_t sub_192098B28@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v1;
  v9 = *(*v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v10 = *(v8 + 16);
  v11 = *(v5 + 28);

  v12 = v10;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v7 = v12;
  v13 = sub_19209C05C(v7);
  result = sub_192046EE8(v7, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  *a1 = v9;
  a1[1] = v13;
  return result;
}

uint64_t WidgetViewCollection.enumeratedViewableEntriesAndEnvironments()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v9 = *(v1 + 16);
  v10 = *(v5 + 28);

  v11 = v9;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v7 = v11;
  v12 = sub_19209C05C(v7);
  result = sub_192046EE8(v7, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  *a1 = v8;
  a1[1] = v12;
  return result;
}

id sub_192098D4C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_192098D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  swift_beginAccess();
  v5 = sub_192225150();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_192098E0C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v3 = sub_19204E3C0(v2, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  return v3;
}

uint64_t sub_192098F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t WidgetViewCollection.description.getter()
{
  v1 = *v0;
  v4 = sub_192228BD0();
  MEMORY[0x193B0A990](7876668, 0xE300000000000000);
  sub_19209C5BC();
  v2 = sub_192227A40();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v4;
}

uint64_t WidgetViewCollection.debugDescription.getter()
{
  v1 = v0;
  v2 = *v0;
  v42 = sub_192225150();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v9 = sub_19204E3C0(v8, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  v10 = *(v9 + 16);
  if (v10)
  {
    v40[1] = v2;
    v41 = v0;
    v44 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v10, 0);
    v11 = v44;
    v40[0] = v9;
    v12 = v9 + 32;
    v13 = (v3 + 8);
    do
    {
      sub_192033A64(v12, v46);
      v14 = v47;
      v15 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      (*(v15 + 8))(v14, v15);
      if (qword_1EADEE900 != -1)
      {
        swift_once();
      }

      v16 = qword_1EADEFB68;
      v17 = sub_1922250F0();
      v18 = [v16 stringFromDate_];

      v19 = sub_192227960();
      v21 = v20;

      (*v13)(v6, v42);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v44 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_192071C64((v22 > 1), v23 + 1, 1);
        v11 = v44;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v12 += 40;
      --v10;
    }

    while (v10);

    v1 = v41;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v46[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v25 = sub_1922278A0();
  v27 = v26;

  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_192228400();
  v44 = sub_192228BD0();
  v45 = v28;
  MEMORY[0x193B0A990](7876668, 0xE300000000000000);
  v43 = v1;
  sub_19209C5BC();
  v29 = sub_192227A40();
  MEMORY[0x193B0A990](v29);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  MEMORY[0x193B0A990](v44, v45);

  MEMORY[0x193B0A990](0x64697720200A7B20, 0xED0000203A746567);
  v30 = [*(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) description];
  v31 = sub_192227960();
  v33 = v32;

  MEMORY[0x193B0A990](v31, v33);

  MEMORY[0x193B0A990](0xD000000000000010, 0x8000000192248890);
  v34 = v1[2];
  v44 = 0xD000000000000012;
  v45 = 0x80000001922488B0;
  v35 = [v34 debugDescription];
  v36 = sub_192227960();
  v38 = v37;

  MEMORY[0x193B0A990](v36, v38);

  MEMORY[0x193B0A990](v44, v45);

  MEMORY[0x193B0A990](0x6972746E6520200ALL, 0xED00005B203A7365);
  MEMORY[0x193B0A990](v25, v27);

  MEMORY[0x193B0A990](8194653, 0xE300000000000000);
  return v46[0];
}

uint64_t sub_1920995A4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  *a1 = v3;
  a1[1] = 0;
  return result;
}

size_t sub_192099600()
{
  v1 = sub_19209BB80(*v0);

  return v1;
}

uint64_t sub_19209965C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v8;
    a1[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      while (v11 < *(v8 + 16))
      {
        v12 = *(type metadata accessor for ViewableTimelineEntry() - 8);
        v13 = *(v12 + 72);
        result = sub_19204E6EC(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v13 * v11, a2, type metadata accessor for ViewableTimelineEntry);
        if (a3 - 1 == v11)
        {
          goto LABEL_11;
        }

        a2 += v13;
        if (v10 == ++v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v10;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1920997B4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_192228600();

    if (v4)
    {
      sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1920B75D0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_192099884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECC8, &unk_19222B0B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v37 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD8, &qword_19222B0C0);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v35 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v32 = (v29 + 56);
    v33 = v15 & 0xC000000000000001;
    v31 = (v29 + 48);
    v36 = MEMORY[0x1E69E7CC0];
    v30 = v17;
    while (v33)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v35 + 16) + 120))(*(v19 + 24), v6, v6);
      (*v32)(v5, 0, 1, v6);

      if ((*v31)(v5, 1, v6) == 1)
      {
        sub_192033970(v5, &qword_1EADEECC8, &unk_19222B0B0);
      }

      else
      {
        v22 = v28;
        sub_19204E300(v5, v28, &qword_1EADEECD0, &qword_1922363D0);
        sub_19204E300(v22, v34, &qword_1EADEECD0, &qword_1922363D0);
        v23 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1920C2E7C(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        v36 = v23;
        if (v25 >= v24 >> 1)
        {
          v36 = sub_1920C2E7C(v24 > 1, v25 + 1, 1, v36);
        }

        v26 = v36;
        v36[2] = v25 + 1;
        sub_19204E300(v34, v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, &qword_1EADEECD0, &qword_1922363D0);
      }

      v15 = v21;
      ++v18;
      if (v20 == v30)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v36;
}

uint64_t sub_192099DDC(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x193B0B410](v10, v6);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v11 = *(v6 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            v12 = *(v11 + 24);
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEBC0, &qword_19222D980);
            (*(**(v2 + 16) + 120))(v20, v12, v13, v13);

            v14 = v20[0];
            if (LOBYTE(v20[0]) != 4)
            {
              break;
            }

            ++v10;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v9 = sub_1920C2FA4(0, *(v9 + 2) + 1, 1, v9);
          }

          v17 = *(v9 + 2);
          v16 = *(v9 + 3);
          v18 = v9;
          if (v17 >= v16 >> 1)
          {
            v18 = sub_1920C2FA4((v16 > 1), v17 + 1, 1, v9);
          }

          *(v18 + 2) = v17 + 1;
          v9 = v18;
          v18[v17 + 32] = v14;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v9;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBB8, &unk_19222AFA0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19209A2B8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_192225580();
}

uint64_t sub_19209A310()
{
  sub_192228AD0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_192225580();
  return sub_192228B30();
}

void *sub_19209A3A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_19209A3CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19209A47C()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_19209A4C4()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_19209A510(uint64_t a1, id *a2)
{
  result = sub_192227940();
  *a2 = 0;
  return result;
}

uint64_t sub_19209A588(uint64_t a1, id *a2)
{
  v3 = sub_192227950();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19209A608@<X0>(uint64_t *a1@<X8>)
{
  sub_192227960();
  v2 = sub_192227930();

  *a1 = v2;
  return result;
}

uint64_t sub_19209A64C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_192227960();
  v6 = v5;
  if (v4 == sub_192227960() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_19209A6D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_192225570();
}

uint64_t sub_19209A740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_19209C658(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_19209A78C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_192227930();

  *a2 = v5;
  return result;
}

uint64_t sub_19209A7D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_192227960();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_19209A800(uint64_t a1)
{
  v2 = sub_192076370(&qword_1EADEED48, type metadata accessor for FileProtectionType);
  v3 = sub_192076370(&unk_1EADEED50, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19209A8BC()
{
  v1 = *v0;
  v2 = sub_192227960();
  v3 = MEMORY[0x193B0A9D0](v2);

  return v3;
}

uint64_t sub_19209A8F8()
{
  v1 = *v0;
  sub_192227960();
  sub_1922279B0();
}

uint64_t sub_19209A94C()
{
  v1 = *v0;
  sub_192227960();
  sub_192228AD0();
  sub_1922279B0();
  v2 = sub_192228B30();

  return v2;
}

void sub_19209A9CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v7 = *(type metadata accessor for ViewableTimelineEntry() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for ViewableTimelineEntry() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_19209AB6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

size_t sub_19209AC60(size_t a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEB98, &unk_19222D8F0, MEMORY[0x1E697DE30]);
  *v3 = result;
  return result;
}

size_t sub_19209ACA4(size_t a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &unk_1EADEEA10, &unk_19222B7B0, type metadata accessor for ViewableTimelineEntry);
  *v3 = result;
  return result;
}

size_t sub_19209ACE8(size_t a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &unk_1EADEEBF0, &unk_19222AFE0, type metadata accessor for ControlTemplatePicker.Option);
  *v3 = result;
  return result;
}

size_t sub_19209AD2C(size_t a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEBB0, &qword_19222AF98, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
  *v3 = result;
  return result;
}

void *sub_19209AD70(void *a1, int64_t a2, char a3)
{
  result = sub_19204E564(a1, a2, a3, *v3, &qword_1EADEEBE0, &qword_19222AFD0, &qword_1EADEEBE8, &qword_19222AFD8);
  *v3 = result;
  return result;
}

char *sub_19209ADB0(char *a1, int64_t a2, char a3)
{
  result = sub_19209AECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19209ADD0(char *a1, int64_t a2, char a3)
{
  result = sub_19207C164(a1, a2, a3, *v3, &qword_1EADEEBA8, &qword_19222AF90);
  *v3 = result;
  return result;
}

void *sub_19209AE00(void *a1, int64_t a2, char a3)
{
  result = sub_192068884(a1, a2, a3, *v3, &qword_1EADEEB08, &qword_19222AF48, &unk_1EADEEB10, &qword_19222AF50);
  *v3 = result;
  return result;
}

char *sub_19209AE40(char *a1, int64_t a2, char a3)
{
  result = sub_19209AFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19209AE60(size_t a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEBA0, &unk_19222AF80, type metadata accessor for ControlTemplateType);
  *v3 = result;
  return result;
}

char *sub_19209AECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4C0, &unk_19222AFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_19209AFC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB00, &qword_19222AF40);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_19209B0C4(void **a1)
{
  v2 = *(type metadata accessor for ViewableTimelineEntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1920C50A8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_19209B20C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_19209B16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19209B20C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_192228900();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ViewableTimelineEntry();
        v6 = sub_192227BE0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ViewableTimelineEntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_19202E1A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_19209B338(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19209B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for ViewableTimelineEntry();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_19204E6EC(v24, v18, type metadata accessor for ViewableTimelineEntry);
      sub_19204E6EC(v21, v14, type metadata accessor for ViewableTimelineEntry);
      v25 = sub_192225100();
      sub_192046EE8(v14, type metadata accessor for ViewableTimelineEntry);
      result = sub_192046EE8(v18, type metadata accessor for ViewableTimelineEntry);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_19203CFC0(v24, v11, type metadata accessor for ViewableTimelineEntry);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_19203CFC0(v11, v21, type metadata accessor for ViewableTimelineEntry);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19209B588(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for ViewableTimelineEntry();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v44 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v23 = -v14;
      v24 = a4 + v18;
      v25 = v43;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = v23;
      do
      {
        v37 = v26;
        v27 = a2 + v23;
        v42 = a2;
        v43 = a2 + v23;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v46 = v37;
            goto LABEL_59;
          }

          v38 = v26;
          v29 = v25;
          v30 = a3 + v23;
          v31 = v24 + v23;
          v32 = v44;
          sub_19204E6EC(v31, v44, type metadata accessor for ViewableTimelineEntry);
          v33 = v27;
          v34 = v45;
          sub_19204E6EC(v33, v45, type metadata accessor for ViewableTimelineEntry);
          v35 = sub_192225100();
          sub_192046EE8(v34, type metadata accessor for ViewableTimelineEntry);
          sub_192046EE8(v32, type metadata accessor for ViewableTimelineEntry);
          if (v35)
          {
            break;
          }

          v26 = v31;
          if (a3 < v24 || v30 >= v24)
          {
            a3 = v30;
            v25 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v40;
          }

          else
          {
            v36 = a3 == v24;
            a3 = v30;
            v25 = v29;
            a1 = v40;
            if (!v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v31;
          a2 = v42;
          v28 = v31 > v41;
          v27 = v43;
          v23 = v39;
          if (!v28)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v42 || v30 >= v42)
        {
          a3 = v30;
          v25 = v29;
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v39;
          a1 = v40;
          v26 = v38;
        }

        else
        {
          v36 = a3 == v42;
          a3 = v30;
          v25 = v29;
          a2 = v43;
          v23 = v39;
          a1 = v40;
          v26 = v38;
          if (!v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v44;
        sub_19204E6EC(a2, v44, type metadata accessor for ViewableTimelineEntry);
        v21 = v45;
        sub_19204E6EC(a4, v45, type metadata accessor for ViewableTimelineEntry);
        v22 = sub_192225100();
        sub_192046EE8(v21, type metadata accessor for ViewableTimelineEntry);
        sub_192046EE8(v20, type metadata accessor for ViewableTimelineEntry);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_19209BA9C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_19209BA9C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ViewableTimelineEntry();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_19209BB80(uint64_t a1)
{
  v34 = type metadata accessor for ViewableTimelineEntry();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 80);
  v6 = *(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v7 = *(v6 + 16);

  v9 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v10 = 0;
    v11 = 0;
    v35 = v6;
    v36 = v5;
    v12 = (v5 + 32) & ~v5;
    v13 = MEMORY[0x1E69E7CC0] + v12;
    v38 = v12;
    v39 = v6 + v12;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v37;
    while (v10 < *(v6 + 16))
    {
      v17 = *(v2 + 72);
      result = sub_19204E6EC(v39 + v17 * v10, v15, type metadata accessor for ViewableTimelineEntry);
      if (v11)
      {
        v9 = v14;
        v16 = __OFSUB__(v11--, 1);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v21 = v38;
        v9 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v9);
        if (!v17)
        {
          goto LABEL_36;
        }

        v22 = result - v21;
        if (result - v21 == 0x8000000000000000 && v17 == -1)
        {
          goto LABEL_37;
        }

        v24 = v2;
        v25 = v22 / v17;
        v9[2] = v20;
        v9[3] = 2 * (v22 / v17);
        v26 = v9 + v21;
        v27 = v14[3] >> 1;
        v28 = v27 * v17;
        if (v14[2])
        {
          if (v9 < v14 || v26 >= v14 + v38 + v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v13 = &v26[v28];
        v30 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v2 = v24;
        v6 = v35;
        v15 = v37;
        v16 = __OFSUB__(v30, 1);
        v11 = v30 - 1;
        if (v16)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      ++v10;
      result = sub_19203CFC0(v15, v13, type metadata accessor for ViewableTimelineEntry);
      v13 += v17;
      v14 = v9;
      if (v7 == v10)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_29:
  v11 = 0;
LABEL_30:

  v31 = v9[3];
  if (v31 < 2)
  {
    return v9;
  }

  v32 = v31 >> 1;
  v16 = __OFSUB__(v32, v11);
  v33 = v32 - v11;
  if (!v16)
  {
    v9[2] = v33;
    return v9;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_19209BE50(void *a1, uint64_t a2)
{
  v30 = a1;
  v3 = a1;

  v4 = sub_192056340(&v30, a2);
  v6 = v5;
  v7 = 0;
  v30 = v4;
  v31 = v5;
  v32 = v8;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  v11 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_20;
  }

LABEL_2:
  v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = v12 - 1;
  if (v12 >= 1)
  {
    while (1)
    {

      result = sub_19205F34C(v13);
      if ((result & 1) == 0)
      {

        v30 = v9;

        v31 = v9;

        v32 = v9;
      }

      if (!v7)
      {
        v15 = v11[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF600, &qword_19222AF58);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 3);
        v22 = (v18 + 4);
        v23 = v11[3] >> 1;
        if (v11[2])
        {
          v24 = v11 + 4;
          if (v18 != v11 || v22 >= v24 + 8 * v23)
          {
            memmove(v18 + 4, v24, 8 * v23);
          }

          v11[2] = 0;
        }

        v10 = (v22 + 8 * v23);
        v7 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v11 = v18;
      }

      v25 = __OFSUB__(v7--, 1);
      if (v25)
      {
        break;
      }

      *v10++ = v6;
      v6 = v31;
      if (!(v31 >> 62))
      {
        goto LABEL_2;
      }

LABEL_20:
      v26 = sub_192228340();
      v13 = v26 - 1;
      if (v26 < 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v27 = v11[3];
  if (v27 < 2)
  {
    return v11;
  }

  v28 = v27 >> 1;
  v25 = __OFSUB__(v28, v7);
  v29 = v28 - v7;
  if (!v25)
  {
    v11[2] = v29;
    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_19209C05C(uint64_t a1)
{
  v2 = sub_1922261D0();
  v73 = *(v2 - 8);
  v3 = v73;
  v4 = *(v73 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v66 - v8;
  v9 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = *(v3 + 80);
  v19 = MEMORY[0x1E69E7CC0];
  v67 = (v68 + 32) & ~v68;
  v74 = MEMORY[0x1E69E7CC0] + v67;
  sub_19204E6EC(a1, v13, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v20 = *v13;
  v21 = *(v10 + 28);
  v22 = *(v15 + 28);
  v23 = *(v3 + 16);
  v71 = v3 + 16;
  v72 = v22;
  v70 = v23;
  v23(v18 + v22, v13 + v21, v2);
  v24 = v20;
  v25 = sub_192056208(v19);
  v77 = v24;
  v26 = v24;

  v27 = sub_192056340(&v77, v25);
  v29 = v28;
  v31 = v30;

  sub_192046EE8(v13, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v32 = 0;
  *v18 = v27;
  v18[1] = v29;
  v75 = (v73 + 32);
  v18[2] = v31;
  v33 = MEMORY[0x1E69E7CC0];
  v69 = v2;
  while (1)
  {
    if (v29 >> 62)
    {
      v62 = sub_192228340();
      v40 = v62 - 1;
      if (v62 < 1)
      {
LABEL_42:
        result = sub_192046EE8(v18, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
        v63 = v33[3];
        if (v63 >= 2)
        {
          v64 = v63 >> 1;
          v38 = __OFSUB__(v64, v32);
          v65 = v64 - v32;
          if (v38)
          {
            goto LABEL_51;
          }

          v33[2] = v65;
        }

        return v33;
      }
    }

    else
    {
      v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = v39 - 1;
      if (v39 < 1)
      {
        goto LABEL_42;
      }
    }

    if ((sub_19205F34C(v40) & 1) == 0)
    {
      v41 = *v18;

      v42 = MEMORY[0x1E69E7CC0];
      *v18 = MEMORY[0x1E69E7CC0];
      v43 = v18[1];

      v18[1] = v42;
      v44 = v18[2];

      v18[2] = v42;
    }

    result = v70(v7, v18 + v72, v2);
    if (v29 >> 62)
    {
      result = sub_192228340();
      v45 = result;
      if (!result)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v45 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_2;
      }
    }

    if (v45 < 1)
    {
      goto LABEL_47;
    }

    for (i = 0; i != v45; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x193B0B410](i, v29);
      }

      else
      {
        v47 = *(v29 + 8 * i + 32);
      }

      (*(**(v47 + 16) + 112))(v7);
    }

LABEL_2:

    v34 = *v75;
    v2 = v69;
    result = (*v75)(v76, v7, v69);
    if (v32)
    {
      v36 = v33;
      v37 = v74;
      v38 = __OFSUB__(v32--, 1);
      if (v38)
      {
        break;
      }

      goto LABEL_4;
    }

    v48 = v33[3];
    if (((v48 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_48;
    }

    v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
    if (v49 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v49;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF8, &unk_19222B0E0);
    v51 = *(v73 + 72);
    v52 = v67;
    v36 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v36);
    if (!v51)
    {
      goto LABEL_49;
    }

    v53 = result - v52;
    if (result - v52 == 0x8000000000000000 && v51 == -1)
    {
      goto LABEL_50;
    }

    v55 = v52;
    v56 = v53 / v51;
    v36[2] = v50;
    v36[3] = 2 * (v53 / v51);
    v57 = v36 + v55;
    v58 = v33[3] >> 1;
    v59 = v58 * v51;
    if (v33[2])
    {
      if (v36 < v33 || v57 >= v33 + v55 + v59)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v36 != v33)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v33[2] = 0;
    }

    v37 = &v57[v59];
    v61 = (v56 & 0x7FFFFFFFFFFFFFFFLL) - v58;

    v38 = __OFSUB__(v61, 1);
    v32 = v61 - 1;
    if (v38)
    {
      break;
    }

LABEL_4:
    v34(v37, v76, v2);
    v74 = &v37[*(v73 + 72)];
    v29 = v18[1];
    v33 = v36;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_19209C5BC()
{
  result = qword_1EADECAA8;
  if (!qword_1EADECAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECAA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19209C658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicIslandExpandedRegionVerticalPlacement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DynamicIslandExpandedRegionVerticalPlacement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19209C7D8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_19209CBBC()
{
  v0 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v1 = *MEMORY[0x1E696A278];
  v2 = sub_192227960();
  v4 = v3;
  v11 = MEMORY[0x1E69E6158];
  *&v10 = 0xD000000000000036;
  *(&v10 + 1) = 0x80000001922490E0;
  sub_19203BEDC(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v9, v2, v4, isUniquelyReferenced_nonNull_native);

  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_192227830();

  v8 = [v6 initWithDomain:v0 code:1103 userInfo:v7];

  qword_1EAE007A0 = v8;
}

void sub_19209CCFC()
{
  v0 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v1 = *MEMORY[0x1E696A278];
  v2 = sub_192227960();
  v4 = v3;
  v11 = MEMORY[0x1E69E6158];
  *&v10 = 0xD000000000000043;
  *(&v10 + 1) = 0x8000000192249140;
  sub_19203BEDC(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v9, v2, v4, isUniquelyReferenced_nonNull_native);

  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_192227830();

  v8 = [v6 initWithDomain:v0 code:1100 userInfo:v7];

  qword_1ED74C6E8 = v8;
}

uint64_t sub_19209CE3C()
{
  v1 = sub_192227710();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_192227790();
  v38 = *(v40 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetDescriptor(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  v48 = *(v0 + 32);
  v45 = *(v48 + 16);
  if (v45)
  {
    v10 = 0;
    v44 = v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v43 = *(result + 84);
    while (v10 < *(v48 + 16))
    {
      v11 = *(v47 + 72);
      v49 = v10;
      v12 = v44 + v11 * v10;
      v13 = v46;
      sub_192084578(v12, v46, type metadata accessor for WidgetDescriptor);
      v14 = *(v13 + v43);

      sub_1920B3484(v13, type metadata accessor for WidgetDescriptor);
      v50 = v14;
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v51 + 16);
        v17 = *(v51 + 24);
        v18 = v15 - 1;
        for (i = (v50 + 56); ; i += 4)
        {
          v21 = *(i - 3);
          v20 = *(i - 2);
          v22 = *(i - 1);
          v23 = *i;

          if (v21(v16, v17))
          {
            v24 = v51;
            dispatch_group_enter(*(v51 + 64));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE48, &qword_19222B718);
            v25 = swift_allocObject();
            *(v25 + 20) = 0;
            *(v25 + 16) = 0;
            v26 = swift_allocObject();
            v26[2] = v25;
            v26[3] = v16;
            v26[4] = v17;
            v26[5] = v24;

            v22(v16, v17, sub_1920B3988, v26);

            v27 = objc_opt_self();
            v28 = sub_192227930();
            [v27 _sendPendingCallbacksForSessionIdentifier_];

            if (!v18)
            {
              break;
            }
          }

          else
          {

            if (!v18)
            {
              break;
            }
          }

          --v18;
        }
      }

      v10 = v49 + 1;

      if (v10 == v45)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v29 = *(v51 + 64);
    sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
    v30 = sub_192228080();
    v31 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1920B3980;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_233;
    v32 = _Block_copy(aBlock);

    v33 = v37;
    sub_192227740();
    v52 = MEMORY[0x1E69E7CC0];
    sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v34 = v39;
    v35 = v42;
    sub_1922282F0();
    sub_192228040();
    _Block_release(v32);

    (*(v41 + 8))(v34, v35);
    (*(v38 + 8))(v33, v40);
  }

  return result;
}

void sub_19209D40C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 20));
  v8 = *(a1 + 16);
  *(a1 + 16) = 1;
  os_unfair_lock_unlock((a1 + 20));
  if (v8)
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1922258B0();
    __swift_project_value_buffer(v9, qword_1ED74CCC8);

    oslog = sub_192225890();
    v10 = sub_192227FA0();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_19202B8CC(a2, a3, &v24);
      _os_log_impl(&dword_192028000, oslog, v10, "BUG IN CLIENT OF WIDGETKIT. Completion handler called multiple times by %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1ED74CCC8);

    v14 = sub_192225890();
    v15 = sub_192227F80();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_19202B8CC(0x6E657645646E6573, 0xEC00000029287374, &v24);
      *(v16 + 12) = 2082;
      type metadata accessor for WidgetURLHandler();

      v18 = sub_192227990();
      v20 = sub_19202B8CC(v18, v19, &v24);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_192028000, v14, v15, "%{public}s - %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v17, -1, -1);
      MEMORY[0x193B0C7F0](v16, -1, -1);
    }

    v21 = objc_opt_self();
    v22 = sub_192227930();
    [v21 _releaseProcessAssertionForSessionIdentifier_];

    dispatch_group_leave(*(a4 + 64));
  }
}

uint64_t sub_19209D770()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    sub_19202D088(v1);

    if (v1)
    {
      v1(result);
      return sub_19203831C(v1);
    }
  }

  return result;
}

uint64_t sub_19209D7F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  sub_19203831C(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_19209D870()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = *(v1 + 56);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_19209D8E0()
{
  sub_192228AD0();
  v1 = *(*v0 + 56);
  sub_1922281E0();

  return sub_192228B30();
}

uint64_t sub_19209D930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = *(v2 + 56);
  v5 = *(v3 + 56);
  return sub_1922281D0() & 1;
}

uint64_t sub_19209D988()
{
  v0 = sub_1922275D0();
  __swift_allocate_value_buffer(v0, qword_1ED74C6D0);
  __swift_project_value_buffer(v0, qword_1ED74C6D0);
  return sub_1922275C0();
}

uint64_t sub_19209D9D4(uint64_t result)
{
  if (xmmword_1ED74CC80)
  {
    v1 = result;
    v2 = (*(qword_1ED74CC90 + 16))(*xmmword_1ED74CC80);
    v3 = sub_192036D98(v2);

    v1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19209DAC4(uint64_t a1, uint64_t a2)
{
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v3 = sub_192227B60();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_19209DB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = sub_192227710();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192227790();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1922258B0();
  __swift_project_value_buffer(v15, qword_1ED74CCC8);
  v16 = sub_192225890();
  v17 = sub_192227FB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_19202B8CC(0xD000000000000027, 0x8000000192249190, aBlock);
    _os_log_impl(&dword_192028000, v16, v17, "%{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x193B0C7F0](v19, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v21 = sub_192228080();
  v22 = swift_allocObject();
  v23 = v29;
  v22[2] = v20;
  v22[3] = v23;
  v22[4] = a4;
  v22[5] = a1;
  v22[6] = a2;
  v24 = v30;
  v22[7] = v30;
  aBlock[4] = sub_1920B36BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_152;
  v25 = _Block_copy(aBlock);

  v26 = v24;

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v14, v10, v25);
  _Block_release(v25);

  (*(v33 + 8))(v10, v7);
  (*(v31 + 8))(v14, v32);
}

uint64_t sub_19209DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v11 = sub_192227710();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192227790();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xmmword_1ED74CC80)
  {
    v19 = *xmmword_1ED74CC80;
    aBlock[0] = xmmword_1ED74CC80;
    v20 = (*(qword_1ED74CC90 + 24))(v19);
    swift_beginAccess();
    v21 = *(a1 + 16);
    *(a1 + 16) = v20;

    type metadata accessor for UnfairLock();
    v22 = swift_allocObject();
    v23 = swift_slowAlloc();
    *v23 = 0;
    *(v22 + 16) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v24;
    v39[0] = v22;
    v39[1] = v24;
    v25[4] = a2;
    v25[5] = a3;
    swift_beginAccess();
    v26 = *(a1 + 16);
    type metadata accessor for WidgetURLHandler();
    v27 = swift_allocObject();
    v27[5] = 0;
    v27[6] = 0;
    v28 = objc_allocWithZone(MEMORY[0x1E696AFB0]);

    v27[7] = [v28 init];
    v27[8] = dispatch_group_create();
    v27[2] = v40;
    v27[3] = a5;
    v27[4] = v26;
    swift_beginAccess();

    sub_1921C1CB8(&v47, v27);
    swift_endAccess();

    v29 = swift_allocObject();
    v40 = v29;
    swift_weakInit();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = sub_1920B36CC;
    v31[5] = v25;
    v32 = v27[5];
    v33 = v27[6];
    v27[5] = sub_1920B3720;
    v27[6] = v31;

    sub_19203831C(v32);

    v34 = *(a6 + OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject__queue);
    aBlock[4] = sub_1920B372C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_168;
    v35 = _Block_copy(aBlock);

    v36 = v34;
    sub_192227740();
    v47 = MEMORY[0x1E69E7CC0];
    sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v37 = v41;
    v38 = v45;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v18, v37, v35);
    _Block_release(v35);

    (*(v44 + 8))(v37, v38);
    (*(v42 + 8))(v18, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19209E518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  os_unfair_lock_lock(*(a1 + 16));
  swift_beginAccess();
  if (*(a2 + 16))
  {
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    os_unfair_lock_unlock(*(a1 + 16));
    return a3();
  }

  return result;
}

uint64_t sub_19209E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      sub_1921C47E8(v7);
      swift_endAccess();
    }

    else
    {
    }
  }

  return a3();
}

uint64_t sub_19209E798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  os_unfair_lock_lock(*(a2 + 16));
  swift_beginAccess();
  if (*(a3 + 16))
  {
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    os_unfair_lock_unlock(*(a2 + 16));
    if (a1)
    {
      v13 = qword_1ED74AED8;
      v14 = a1;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = sub_1922258B0();
      __swift_project_value_buffer(v15, qword_1ED74CB50);
      v16 = v14;

      v17 = sub_192225890();
      v18 = sub_192227FB0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = a7;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35 = v22;
        *v20 = 136446466;
        *(v20 + 4) = sub_19202B8CC(a4, a5, &v35);
        *(v20 + 12) = 2114;
        *(v20 + 14) = v16;
        *v21 = a1;
        v23 = v16;
        _os_log_impl(&dword_192028000, v17, v18, "Batch ended (%{public}s) - failure: %{public}@", v20, 0x16u);
        sub_192033970(v21, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x193B0C7F0](v22, -1, -1);
        v24 = v20;
        a7 = v19;
        MEMORY[0x193B0C7F0](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1ED74AED8 != -1)
      {
        swift_once();
      }

      v25 = sub_1922258B0();
      __swift_project_value_buffer(v25, qword_1ED74CB50);

      v26 = sub_192225890();
      v27 = sub_192227FB0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_19202B8CC(a4, a5, &v35);
        _os_log_impl(&dword_192028000, v26, v27, "Batch ended (%{public}s) - success", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x193B0C7F0](v29, -1, -1);
        MEMORY[0x193B0C7F0](v28, -1, -1);
      }
    }

    sub_1922280D0();
    if (qword_1ED74B750 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v30 = swift_allocObject();
    v31 = v30;
    *(v30 + 16) = xmmword_19222B480;
    if (a1)
    {
      v32 = 1702195828;
    }

    else
    {
      v32 = 0x65736C6166;
    }

    if (a1)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1920B3134();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    sub_1922257B0();

    return a7(a1);
  }

  return result;
}

void sub_19209EC48(unint64_t a1, void (*a2)(void *))
{
  v12 = 0;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:
    a2(0);
    return;
  }

LABEL_17:
  v3 = sub_192228340();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193B0B410](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = objc_autoreleasePoolPush();
    sub_19209EDB8(v6, &v12);
    objc_autoreleasePoolPop(v8);
    v9 = v12;
    if (v12)
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_18;
    }
  }

  v10 = v12;
  a2(v9);
}

void sub_19209EDB8(uint64_t a1, void **a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v316 = v272 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v320 = v272 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v272 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v319 = v272 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v321 = v272 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v304 = v272 - v19;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v20 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283);
  v325 = (v272 - v21);
  v305 = sub_192225D50();
  v307 = *(v305 - 8);
  v22 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v303 = v272 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE78, &qword_19222B7D8);
  v288 = *(v302 - 8);
  v24 = *(v288 + 64);
  v25 = MEMORY[0x1EEE9AC00](v302);
  v301 = (v272 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v300 = v272 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v299 = v272 - v29;
  v306 = type metadata accessor for ViewableTimelineEntry();
  v312 = *(v306 - 8);
  v30 = *(v312 + 64);
  v31 = MEMORY[0x1EEE9AC00](v306);
  v313 = v272 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v315 = v272 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v309 = v272 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v298 = v272 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v344 = v272 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v297 = v272 - v41;
  v310 = sub_192225150();
  v284 = *(v310 - 8);
  v42 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v310);
  v282 = v272 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BundleStub();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v281 = v272 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for TimelineReloadPolicy();
  v47 = *(*(v280 - 8) + 64);
  MEMORY[0x1EEE9AC00](v280);
  v285 = v272 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v308 = *(v49 - 8);
  v50 = *(v308 + 8);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v314 = v272 - v51;
  v311 = type metadata accessor for TimelineProviderContext();
  v52 = *(*(v311 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v311);
  v318 = v272 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v56 = v272 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v60 = v272 - v59;
  v61 = *(a1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind);
  v322 = *(a1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind + 8);
  v323 = v61;
  v62 = OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment;
  v324 = a1;
  v63 = *(a1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
  KeyPath = swift_getKeyPath();
  v65 = sub_192066FD0(KeyPath);

  if (!v65)
  {
    goto LABEL_15;
  }

  if (!*(v65 + 16))
  {

LABEL_15:
    v88 = 0x8000000192249270;
    v89 = *MEMORY[0x1E69941E8];
    v90 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v91 = *MEMORY[0x1E696A278];
    v92 = sub_192227960();
    v94 = v93;
    *(&v335 + 1) = MEMORY[0x1E69E6158];
    v95 = 0xD000000000000010;
LABEL_43:
    *&v334 = v95;
    *(&v334 + 1) = v88;
    sub_19203BEDC(&v334, &v327);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v341[0] = v90;
    sub_19213DB28(&v327, v92, v94, isUniquelyReferenced_nonNull_native);

    v129 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v130 = sub_192227830();

    v131 = [v129 initWithDomain:v89 code:1102 userInfo:v130];

    v115 = *a2;
    *a2 = v131;
LABEL_44:

    return;
  }

  v317 = v14;
  v66 = *(v65 + 32);

  v67 = swift_getKeyPath();
  p_cache = sub_192066C3C(v67);

  if (!p_cache)
  {
LABEL_42:
    v88 = 0x8000000192249290;
    v89 = *MEMORY[0x1E69941E8];
    v90 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v126 = *MEMORY[0x1E696A278];
    v92 = sub_192227960();
    v94 = v127;
    *(&v335 + 1) = MEMORY[0x1E69E6158];
    v95 = 0xD000000000000011;
    goto LABEL_43;
  }

  v69 = p_cache & 0xFFFFFFFFFFFFFF8;
  if (!(p_cache >> 62))
  {
    if (*((p_cache & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

  if (!sub_192228340())
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_6:
  v279 = v56;
  if ((p_cache & 0xC000000000000001) != 0)
  {
    v70 = MEMORY[0x193B0B410](0, p_cache);
  }

  else
  {
    if (!*((p_cache & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v70 = *(p_cache + 32);
  }

  v295 = v70;

  v71 = *(v324 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle);
  *&v334 = v323;
  *(&v334 + 1) = v322;

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  LODWORD(v294) = v66;
  LOBYTE(v327) = v66;
  _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v327);
  v72 = NSStringFromWidgetFamily();
  v73 = sub_192227960();
  v75 = v74;

  MEMORY[0x193B0A990](v73, v75);

  v76 = v334;
  if (qword_1ED74AED8 != -1)
  {
    swift_once();
  }

  v77 = sub_1922258B0();
  v78 = __swift_project_value_buffer(v77, qword_1ED74CB50);

  v79 = v71;
  v275 = v78;
  v80 = sub_192225890();
  v81 = sub_192227FB0();

  LODWORD(v293) = v81;
  v82 = os_log_type_enabled(v80, v81);
  v277 = *(&v76 + 1);
  v278 = a2;
  v274 = v76;
  v276 = v79;
  if (v82)
  {
    v292 = v80;
    v83 = swift_slowAlloc();
    v290 = swift_slowAlloc();
    *&v334 = v290;
    *v83 = 136446466;
    *(v83 + 4) = sub_19202B8CC(v76, *(&v76 + 1), &v334);
    v291 = v83;
    *(v83 + 12) = 2082;
    sub_19211B2CC(v60);
    v84 = sub_192225020();
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v60, 1, v84) == 1)
    {
      sub_192033970(v60, &qword_1EADEEE10, &unk_19222B630);
      v86 = 0xE700000000000000;
      v87 = 0x6E776F6E6B6E75;
    }

    else
    {
      v96 = sub_192225000();
      v86 = v97;
      (*(v85 + 8))(v60, v84);
      v87 = v96;
    }

    v66 = v294;
    v98 = sub_19202B8CC(v87, v86, &v334);

    v100 = v291;
    v99 = v292;
    *(v291 + 14) = v98;
    _os_log_impl(&dword_192028000, v99, v293, "Request began for %{public}s - to archive: %{public}s", v100, 0x16u);
    v101 = v290;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v101, -1, -1);
    MEMORY[0x193B0C7F0](v100, -1, -1);
  }

  else
  {

    v66 = v294;
  }

  p_cache = *(v324 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity);
  LOBYTE(v334) = v66;
  v102 = _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v334);
  v103 = objc_allocWithZone(MEMORY[0x1E6994370]);
  v60 = sub_192227930();
  a2 = [v103 initWithExtensionIdentity:p_cache kind:v60 family:v102 intent:0 activityIdentifier:0];

  v69 = xmmword_1ED74CC80;
  if (!xmmword_1ED74CC80)
  {
    goto LABEL_123;
  }

  v104 = qword_1ED74CC90;
  v105 = *xmmword_1ED74CC80;
  *&v327 = xmmword_1ED74CC80;
  v106 = *(qword_1ED74CC90 + 40);

  v106(&v334, a2, v105, v104);

  if (!*(&v335 + 1))
  {

    sub_192033970(&v334, &qword_1EADEEE80, &qword_19222B808);
    if (qword_1ED749278 != -1)
    {
      swift_once();
    }

    v114 = qword_1ED74C6E8;

    v115 = *v278;
    *v278 = v114;
    goto LABEL_44;
  }

  sub_19203832C(&v334, v341);
  *&v327 = *(v324 + v62);
  v107 = v327;
  TimelineProviderContext.EnvironmentVariants.init(_:)(&v327, &v334);
  v108 = v334;
  v60 = *(&v335 + 1);
  v324 = v335;
  InternalWidgetFamily.init(_:)([a2 family], &v327);
  v109 = v327;
  v110 = [a2 personaIdentifier];
  v294 = a2;
  v273 = v107;
  if (v110)
  {
    v111 = v110;
    v112 = sub_192227960();
    v322 = v113;
    v323 = v112;
  }

  else
  {
    v322 = 0;
    v323 = 0;
  }

  p_cache = v279;
  v116 = v318;
  *v318 = v108;
  v117 = v324;
  *(v116 + 16) = v324;
  *(v116 + 24) = v60;
  LOBYTE(v326) = v109;

  a2 = v108;

  sub_19206E384(&v326, &v340);
  *(v116 + 32) = v340;
  *(v116 + 33) = v109;
  *(v116 + 56) = 0;
  v118 = swift_getKeyPath();
  v119 = sub_192085490(v118, a2, *(&v108 + 1), v117, v60);

  if (v119)
  {
    if (*(v119 + 16))
    {
      v2 = *(v119 + 32);
    }

    else
    {
      v2 = 2.0;
    }

    v56 = p_cache;
    v66 = v294;
  }

  else
  {
    v66 = v294;
    v2 = 2.0;
    v56 = p_cache;
  }

  v120 = swift_getKeyPath();
  v293 = *(&v108 + 1);
  v62 = sub_192085D6C(v120, a2, *(&v108 + 1), v324, v60);

  v3 = 0;
  if (!v62)
  {
    goto LABEL_49;
  }

  v69 = v62 & 0xFFFFFFFFFFFFFF8;
  if (!(v62 >> 62))
  {
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_36:
      if ((v62 & 0xC000000000000001) != 0)
      {
        v121 = MEMORY[0x193B0B410](0, v62);
        goto LABEL_39;
      }

      if (*(v69 + 16))
      {
        v121 = *(v62 + 32);
LABEL_39:
        v122 = v121;

        [v122 _rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale_];
        v3 = v123;
        v125 = v124;

        goto LABEL_50;
      }

      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:

      v269 = v300;
      sub_1920B3484(&v300[v69], type metadata accessor for BundleStub);
      sub_192033970(&v269[*(p_cache + 1848)], &qword_1EADEE9F0, &qword_19222A7A0);
      (*(v60 + 8))(&v269[*v66], a2);
      v270 = *(*v269 + 48);
      v271 = *(*v269 + 52);
      swift_deallocPartialClassInstance();
      __break(1u);
      return;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (sub_192228340())
  {
    goto LABEL_36;
  }

LABEL_48:

LABEL_49:
  v125 = 0;
LABEL_50:
  v132 = v318;
  *(v318 + 64) = v3;
  *(v132 + 72) = v125;
  v133 = swift_getKeyPath();
  v134 = sub_192099884(v133);

  v135 = v66;
  v136 = v314;
  if (v134)
  {
    if (v134[2])
    {
      sub_19202CFFC(v134 + ((v308[80] + 32) & ~v308[80]), v314, &qword_1EADEECD0, &qword_1922363D0);

      goto LABEL_55;
    }
  }

  v137 = sub_192224EA0();
  (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
LABEL_55:
  v138 = v318;
  sub_19204E300(v136, v318 + *(v311 + 40), &qword_1EADEECD0, &qword_1922363D0);
  v139 = v322;
  *(v138 + 40) = v323;
  *(v138 + 48) = v139;
  sub_192084510(v138, v56, type metadata accessor for TimelineProviderContext);
  v140 = v342;
  v141 = v343;
  __swift_project_boxed_opaque_existential_1(v341, v342);
  v142 = (*(v141 + 24))(v135, v56, v140, v141);
  if (!v142)
  {

    v185 = *MEMORY[0x1E69941E8];
    v186 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v187 = *MEMORY[0x1E696A278];
    v188 = sub_192227960();
    v189 = v278;
    v191 = v190;
    *(&v335 + 1) = MEMORY[0x1E69E6158];
    *&v334 = 0xD00000000000001BLL;
    *(&v334 + 1) = 0x80000001922492B0;
    sub_19203BEDC(&v334, &v327);
    v192 = swift_isUniquelyReferenced_nonNull_native();
    v340 = v186;
    sub_19213DB28(&v327, v188, v191, v192);

    v193 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v194 = sub_192227830();

    v195 = [v193 initWithDomain:v185 code:1101 userInfo:v194];

    sub_1920B3484(v279, type metadata accessor for TimelineProviderContext);
    v196 = *v189;
    *v189 = v195;

    __swift_destroy_boxed_opaque_existential_1(v341);
    return;
  }

  v143 = v142;

  v145 = sub_19209BB80(v144);

  v146 = *(v145 + 16);
  v272[2] = v143;
  v308 = MEMORY[0x1E69E7CC0];
  if (v146)
  {
    v340 = MEMORY[0x1E69E7CC0];
    sub_19209ACA4(0, v146, 0);
    v147 = (*(v312 + 80) + 32) & ~*(v312 + 80);
    v272[1] = v145;
    v293 = v147;
    v148 = v145 + v147;
    v324 = v340;
    v291 = v288 + 16;
    v292 = (v307 + 8);
    v289 = *(v312 + 72);
    v290 = (v284 + 16);
    v288 += 8;
    v323 = (v146 - 1);
    v287 = xmmword_19222B490;
    v286 = xmmword_19222A790;
    while (1)
    {
      v322 = type metadata accessor for ViewableTimelineEntry;
      v311 = v148;
      v149 = v344;
      sub_192084578(v148, v344, type metadata accessor for ViewableTimelineEntry);
      v150 = *(v149 + *(v306 + 20));
      v151 = swift_getKeyPath();
      LOBYTE(v327) = 0;
      v152 = swift_getKeyPath();
      LOBYTE(v326) = 0;
      v153 = swift_getKeyPath();
      v333 = 0;
      v154 = v135;
      v155 = v295;
      v156 = [v154 family];
      v157 = v327;
      *&v327 = v150;
      *(&v327 + 1) = v154;
      *&v328 = v155;
      *(&v328 + 1) = v156;
      *&v329 = v151;
      BYTE8(v329) = v157;
      v330 = v152;
      LOBYTE(v331) = v326;
      *(&v331 + 1) = v153;
      v332 = v333;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2A0, &qword_19222B810);
      v158 = v307;
      v159 = *(v307 + 72);
      v160 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v161 = swift_allocObject();
      *(v161 + 16) = v287;

      sub_192225D10();
      sub_192225D20();
      v326 = v161;
      sub_192035B0C(&qword_1ED74ABF0, 255, MEMORY[0x1E697EA58]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE88, &qword_19222B818);
      sub_19202A880(&qword_1ED74ABE0, &qword_1EADEEE88, &qword_19222B818);
      v162 = v303;
      v163 = v305;
      sub_1922282F0();
      v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
      v314 = sub_1920B33A4();
      v164 = v299;
      sub_192227200();
      (*(v158 + 8))(v162, v163);
      v336 = v329;
      v337 = v330;
      v338 = v331;
      v339 = v332;
      v334 = v327;
      v335 = v328;
      sub_192033970(&v334, &qword_1EADEEE58, &unk_19222B7A0);
      v165 = v298;
      sub_192084578(v344, v298, v322);
      v166 = *v291;
      v167 = v300;
      v168 = v302;
      (*v291)(v300, v164, v302);
      v169 = v297;
      (*v290)(v297, v165, v310);
      v166(v301, v167, v168);
      *&v327 = v318;
      *(&v327 + 1) = v314;
      swift_getOpaqueTypeConformance2();
      v170 = sub_192227570();
      v171 = *v288;
      (*v288)(v167, v168);
      v172 = v168;
      v173 = v169;
      v171(v164, v172);
      sub_1920B3484(v344, type metadata accessor for ViewableTimelineEntry);
      v174 = v306;
      v175 = &v165[*(v306 + 24)];
      v176 = *v175;
      v177 = *(v175 + 1);
      LOBYTE(v169) = v175[16];
      sub_1920B3484(v165, type metadata accessor for ViewableTimelineEntry);
      v178 = v174[7];
      v179 = type metadata accessor for WidgetViewMetadata();
      (*(*(v179 - 8) + 56))(v173 + v178, 1, 1, v179);
      *(v173 + v174[5]) = v170;
      v180 = v173 + v174[6];
      *v180 = v176;
      *(v180 + 8) = v177;
      *(v180 + 16) = v169;
      *(v173 + v174[8]) = v286;
      v181 = v324;
      v340 = v324;
      v183 = *(v324 + 16);
      v182 = *(v324 + 24);
      if (v183 >= v182 >> 1)
      {
        sub_19209ACA4(v182 > 1, v183 + 1, 1);
        v181 = v340;
      }

      *(v181 + 16) = v183 + 1;
      v324 = v181;
      v184 = v289;
      sub_192084510(v173, v181 + v293 + v183 * v289, type metadata accessor for ViewableTimelineEntry);
      if (!v323)
      {
        break;
      }

      v323 = (v323 - 1);
      v148 = v311 + v184;
      v135 = v294;
    }

    v135 = v294;
  }

  else
  {

    v324 = MEMORY[0x1E69E7CC0];
  }

  v197 = qword_1ED74B558;
  v298 = v273;
  v198 = v135;
  v199 = v296;
  v60 = v284;
  if (v197 != -1)
  {
LABEL_119:
    swift_once();
  }

  v200 = __swift_project_value_buffer(v280, qword_1ED74B570);
  sub_192084578(v200, v285, type metadata accessor for TimelineReloadPolicy);
  v201 = type metadata accessor for WidgetViewCollection();
  v202 = *(v201 + 48);
  v203 = *(v201 + 52);
  v299 = v201;
  v204 = swift_allocObject();
  p_cache = &OBJC_METACLASS____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate.cache;
  v205 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v206 = sub_192224E00();
  (*(*(v206 - 8) + 56))(v204 + v205, 1, 1, v206);
  v301 = v198;
  v207 = [v198 extensionIdentity];
  v208 = v281;
  BundleStub.init(_:)(v207, v281);
  v69 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle;
  sub_192084510(v208, v204 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v209 = v282;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v66 = &OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v210 = *(v60 + 32);
  v300 = v204;
  v211 = v204 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  a2 = v310;
  v210(v211, v209, v310);
  *&v334 = v324;

  sub_19209B0C4(&v334);
  v297 = v199;
  if (v199)
  {
    goto LABEL_124;
  }

  v212 = v334;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v212;
  *(inited + 24) = 0;
  v60 = v312 + 56;
  v214 = *(v312 + 56);
  v303 = *(v312 + 80);
  v215 = (v303 + 32) & ~v303;
  v305 = MEMORY[0x1E69E7CC0] + v215;
  v216 = v325;
  v318 = *(v283 + 32);
  v198 = v306;
  v323 = v214;
  (v214)(v325 + v318, 1, 1, v306);
  *v216 = inited;
  v216[1] = sub_1920DA3A8;
  v216[2] = 0;
  v314 = v212;
  v302 = v215;
  v310 = v212 + v215;
  v311 = inited;
  v324 = v60;
  v322 = (v60 - 8);

  v307 = 0;
  v344 = 0;
  v199 = v321;
  while (2)
  {
    v323(v199, 1, 1, v198);
    while (1)
    {
      v218 = *(v314 + 16);
      if (v344 == v218)
      {
        v219 = 1;
        v199 = v319;
        v220 = v320;
      }

      else
      {
        v199 = v319;
        v220 = v320;
        if (v344 >= v218)
        {
          __break(1u);
          goto LABEL_116;
        }

        v221 = v344;
        sub_192084578(v310 + *(v312 + 72) * v344, v319, type metadata accessor for ViewableTimelineEntry);
        v219 = 0;
        v344 = v221 + 1;
        *(v311 + 24) = v221 + 1;
      }

      v323(v199, v219, 1, v198);
      v222 = v198;
      v223 = v321;
      v60 = &qword_1EADEE9F8;
      sub_192033970(v321, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19204E300(v199, v223, &qword_1EADEE9F8, &unk_19222A7D0);
      v224 = v317;
      sub_19202CFFC(v223, v317, &qword_1EADEE9F8, &unk_19222A7D0);
      v225 = *v322;
      if ((*v322)(v224, 1, v222) == 1)
      {
        break;
      }

      sub_192033970(v224, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v223, v220, &qword_1EADEE9F8, &unk_19222A7D0);
      v199 = v223;
      if (v225(v220, 1, v222) == 1)
      {
        v230 = v220;
        v198 = v222;
        goto LABEL_83;
      }

      v226 = v220;
      v227 = v315;
      sub_192084510(v226, v315, type metadata accessor for ViewableTimelineEntry);
      v228 = v316;
      sub_19202CFFC(v325 + v318, v316, &qword_1EADEE9F8, &unk_19222A7D0);
      v198 = v222;
      if (v225(v228, 1, v222) == 1)
      {
        sub_1920B3484(v227, type metadata accessor for ViewableTimelineEntry);
        v230 = v228;
        goto LABEL_83;
      }

      v229 = v313;
      sub_192084510(v228, v313, type metadata accessor for ViewableTimelineEntry);
      v60 = sub_192225120();
      sub_1920B3484(v229, type metadata accessor for ViewableTimelineEntry);
      sub_1920B3484(v227, type metadata accessor for ViewableTimelineEntry);
      if ((v60 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    v230 = v224;
    v199 = v223;
    v198 = v222;
LABEL_83:
    sub_192033970(v230, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_84:
    sub_19209B16C(v199, v325 + v318);
    v69 = v304;
    sub_19204E300(v199, v304, &qword_1EADEE9F8, &unk_19222A7D0);
    if (v225(v69, 1, v198) != 1)
    {
      sub_192084510(v69, v309, type metadata accessor for ViewableTimelineEntry);
      v60 = v307;
      v231 = v308;
      if (!v307)
      {
        v232 = *(v308 + 3);
        if (((v232 >> 1) + 0x4000000000000000) >= 0)
        {
          v233 = v232 & 0xFFFFFFFFFFFFFFFELL;
          if (v233 <= 1)
          {
            v234 = 1;
          }

          else
          {
            v234 = v233;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
          v235 = *(v312 + 72);
          v60 = v302;
          v217 = swift_allocObject();
          v236 = _swift_stdlib_malloc_size(v217);
          if (v235)
          {
            v237 = v236 - v60;
            if (v236 - v60 != 0x8000000000000000 || v235 != -1)
            {
              v239 = v60;
              v240 = v237 / v235;
              *(v217 + 2) = v234;
              *(v217 + 3) = 2 * (v237 / v235);
              v241 = &v217[v239];
              v242 = *(v231 + 3) >> 1;
              v243 = v242 * v235;
              if (*(v231 + 2))
              {
                if (v217 < v231 || v241 >= &v231[v239 + v243])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v217 != v231)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                *(v231 + 2) = 0;
              }

              v69 = &v241[v243];
              v244 = (v240 & 0x7FFFFFFFFFFFFFFFLL) - v242;

              v245 = __OFSUB__(v244, 1);
              v60 = v244 - 1;
              if (!v245)
              {
                goto LABEL_69;
              }

              goto LABEL_104;
            }

LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v217 = v308;
      v69 = v305;
      v60 = v307 - 1;
      if (!__OFSUB__(v307, 1))
      {
LABEL_69:
        v307 = v60;
        sub_192084510(v309, v69, type metadata accessor for ViewableTimelineEntry);
        v305 = v69 + *(v312 + 72);
        v308 = v217;
        continue;
      }

LABEL_104:
      __break(1u);
    }

    break;
  }

  sub_192033970(v325, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v69, &qword_1EADEE9F8, &unk_19222A7D0);
  p_cache = v308;
  v246 = *(v308 + 3);
  v66 = v278;
  v247 = v279;
  v248 = v277;
  v249 = v300;
  a2 = v301;
  if (v246 >= 2)
  {
    v250 = v246 >> 1;
    v245 = __OFSUB__(v250, v307);
    v251 = v250 - v307;
    if (v245)
    {
      goto LABEL_122;
    }

    *(v308 + 2) = v251;
  }

  v252 = v311;
  swift_setDeallocating();
  v253 = *(v252 + 16);

  *&v249[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries] = p_cache;
  *(v249 + 2) = v298;
  *&v249[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget] = a2;
  v254 = v285;
  sub_192084578(v285, &v249[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy], type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v255 = byte_1ED74B5B8;
  sub_1920B3484(v254, type metadata accessor for TimelineReloadPolicy);
  v249[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel] = v255;
  *&v249[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes] = MEMORY[0x1E69E7CD0];
  v256 = type metadata accessor for WidgetArchiver();
  *(&v335 + 1) = v299;
  *&v336 = &protocol witness table for WidgetViewCollection;
  *&v334 = v249;

  v258 = sub_1920AD1B0(v257);
  v259 = v276;
  v260 = v297;
  sub_192170900(&v334, v258, v256, v259);
  if (v260)
  {

    __swift_destroy_boxed_opaque_existential_1(&v334);
    v261 = sub_192224F80();

    sub_1920B3484(v247, type metadata accessor for TimelineProviderContext);
    v262 = *v66;
    *v66 = v261;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v334);

    v263 = sub_192225890();
    v264 = sub_192227FB0();

    if (os_log_type_enabled(v263, v264))
    {
      v265 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      *&v334 = v266;
      *v265 = 136446210;
      v267 = sub_19202B8CC(v274, v248, &v334);

      *(v265 + 4) = v267;
      _os_log_impl(&dword_192028000, v263, v264, "Request ended for %{public}s - success.", v265, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v266);
      MEMORY[0x193B0C7F0](v266, -1, -1);
      MEMORY[0x193B0C7F0](v265, -1, -1);

      v268 = v279;
    }

    else
    {

      v268 = v247;
    }

    sub_1920B3484(v268, type metadata accessor for TimelineProviderContext);
  }

  __swift_destroy_boxed_opaque_existential_1(v341);
}

uint64_t sub_1920A118C(unint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v7 = sub_1922252A0();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1922251B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v15 = sub_192228340();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1922251A0();
  v16 = sub_192225160();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  sub_1920AC810(6, v16, v18);

  v19 = sub_192228260();
  v21 = v20;

  v53 = 2976116;
  v54 = 0xE300000000000000;
  MEMORY[0x193B0A990](v19, v21);

  v23 = v53;
  v22 = v54;
  v24 = v15;
  if (v15 < 1)
  {
    goto LABEL_8;
  }

  if (qword_1ED749B38 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v25 = sub_1922258B0();
    __swift_project_value_buffer(v25, qword_1ED74C770);

    v26 = sub_192225890();
    v27 = sub_192227FB0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53 = v47;
      *v28 = 136446466;
      v46 = v23;
      *(v28 + 4) = sub_19202B8CC(v23, v22, &v53);
      *(v28 + 12) = 2082;
      v29 = v48;
      sub_192225240();
      sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770]);
      v30 = sub_192228910();
      v31 = v7;
      v7 = a5;
      v32 = v24;
      v34 = v33;
      (*(v49 + 8))(v29, v31);
      v35 = sub_19202B8CC(v30, v34, &v53);
      v24 = v32;
      a5 = v7;

      *(v28 + 14) = v35;
      v23 = v46;
      _os_log_impl(&dword_192028000, v26, v27, "Batch begin (%{public}s) - locale: %{public}s", v28, 0x16u);
      v36 = v47;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v36, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }

LABEL_8:
    v37 = swift_allocObject();
    *(v37 + 16) = v24 > 0;
    *(v37 + 24) = v23;
    *(v37 + 32) = v22;
    v38 = v52;
    *(v37 + 40) = v52;
    *(v37 + 48) = a5;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    v23 = v51;
    if ((v51 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v51)
    {
      v39 = *(a1 + 8 * v51 + 32);

      v40 = v39;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v23 = v51;
  v40 = MEMORY[0x193B0B410](v51, a1);
LABEL_12:
  v41 = v40;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v38;
  *(v43 + 32) = a5;
  *(v43 + 40) = v23;
  *(v43 + 48) = a1;
  v44 = v50 & 1;
  *(v43 + 56) = v50 & 1;
  *(v43 + 64) = sub_1920B3624;
  *(v43 + 72) = v37;

  sub_1920A19B4(v41, v44, sub_1920B3684, v43);
}

void sub_1920A16E4(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, unint64_t a6, char a7, void (*a8)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1ED749B38 != -1)
    {
      swift_once();
    }

    v18 = sub_1922258B0();
    __swift_project_value_buffer(v18, qword_1ED74C770);
    v19 = sub_192225890();
    v20 = sub_192227FB0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_192028000, v19, v20, "WidgetExtensionXPCServer disappeared", v21, 2u);
      MEMORY[0x193B0C7F0](v21, -1, -1);
    }

    v22 = *MEMORY[0x1E69941E8];
    v23 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v24 = *MEMORY[0x1E696A278];
    v25 = sub_192227960();
    v27 = v26;
    v36 = MEMORY[0x1E69E6158];
    *&v35 = 0xD000000000000024;
    *(&v35 + 1) = 0x8000000192248FB0;
    sub_19203BEDC(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v34, v25, v27, isUniquelyReferenced_nonNull_native);

    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_192227830();

    v16 = [v29 initWithDomain:v22 code:1050 userInfo:{v30, v23}];

    a3(v16);
    goto LABEL_15;
  }

  v16 = Strong;
  if (a1)
  {
    v17 = a1;
    goto LABEL_14;
  }

  if (a6 >> 62)
  {
    v33 = sub_192228340();
    v32 = v33 - 1;
    if (!__OFSUB__(v33, 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v31 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v31 - 1;
    if (!__OFSUB__(v31, 1))
    {
LABEL_11:
      if (v32 > a5)
      {
        sub_1920A118C(a6, a7 & 1, a5 + 1, a3, a4);
LABEL_15:

        return;
      }

      v17 = 0;
LABEL_14:
      a8(v17);
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1920A19B4(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v123 = a4;
  v124 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = &v114 - v10;
  v135 = sub_192225800();
  v122 = *(v135 - 8);
  v11 = *(v122 + 64);
  v12 = MEMORY[0x1EEE9AC00](v135);
  v131 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v133 = &v114 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v114 - v17;
  v19 = sub_1922258B0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v130 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114 - v23;
  LODWORD(v119) = a2;
  if (a2)
  {
    if (qword_1ED7499C0 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED74C730;
  }

  else
  {
    if (qword_1ED749B38 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED74C770;
  }

  v26 = __swift_project_value_buffer(v19, v25);
  v121 = v20;
  v27 = *(v20 + 16);
  v132 = v19;
  v118 = v20 + 16;
  v117 = v27;
  v27(v24, v26, v19);
  v116 = a1;
  v28 = *&a1[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget];
  v29 = [v28 kind];
  v30 = sub_192227960();
  v32 = v31;

  v137 = v30;
  v138 = v32;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  [v28 family];
  v33 = NSStringFromWidgetFamily();
  v34 = sub_192227960();
  v36 = v35;

  MEMORY[0x193B0A990](v34, v36);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v129 = v28;
  v37 = [v28 intentReference];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 stableHash];

    v136 = v39;
    sub_1920B3350();
    v40 = sub_192228290();
    v42 = v41;
  }

  else
  {
    v42 = 0xEA00000000002974;
    v40 = 0x6E65746E496F6E28;
  }

  MEMORY[0x193B0A990](v40, v42);

  v43 = v138;
  v127 = v137;
  v44 = [v129 intentReference];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 intent];
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;
  v48 = sub_192225890();
  v49 = sub_192227FB0();
  v125 = v47;

  v50 = os_log_type_enabled(v48, v49);
  v126 = v43;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v137 = v52;
    *v51 = 136446210;
    if (v46)
    {
      v53 = [v125 description];
      v114 = v18;
      v54 = v21;
      v55 = v24;
      v56 = v5;
      v57 = v53;
      v58 = sub_192227960();
      v60 = v59;

      v5 = v56;
      v24 = v55;
      v21 = v54;
      v18 = v114;
    }

    else
    {
      v60 = 0xE300000000000000;
      v58 = 7104878;
    }

    v61 = sub_19202B8CC(v58, v60, &v137);

    *(v51 + 4) = v61;
    _os_log_impl(&dword_192028000, v48, v49, "intent = %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x193B0C7F0](v52, -1, -1);
    MEMORY[0x193B0C7F0](v51, -1, -1);

    v43 = v126;
  }

  else
  {
  }

  v62 = v116;
  v63 = sub_192225890();
  v64 = sub_192227FB0();

  v65 = os_log_type_enabled(v63, v64);
  v128 = v24;
  v116 = v62;
  if (v65)
  {
    v114 = v21;
    v66 = v5;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v137 = v68;
    *v67 = 136446466;
    *(v67 + 4) = sub_19202B8CC(v127, v43, &v137);
    *(v67 + 12) = 2082;
    v69 = *&v62[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle];
    sub_19211B2CC(v18);
    v70 = sub_192225020();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v18, 1, v70) == 1)
    {
      sub_192033970(v18, &qword_1EADEEE10, &unk_19222B630);
      v72 = 0xE700000000000000;
      v73 = 0x6E776F6E6B6E75;
    }

    else
    {
      v73 = sub_192225000();
      v72 = v74;
      (*(v71 + 8))(v18, v70);
    }

    v75 = sub_19202B8CC(v73, v72, &v137);

    *(v67 + 14) = v75;
    _os_log_impl(&dword_192028000, v63, v64, "Request began for %{public}s - to archive: %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v68, -1, -1);
    MEMORY[0x193B0C7F0](v67, -1, -1);

    v5 = v66;
    v24 = v128;
    v21 = v114;
  }

  else
  {
  }

  v115 = v5;
  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v76 = qword_1ED74CBD8;
  v77 = v133;
  sub_1922257E0();
  sub_1922280E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_19222B490;
  v137 = 91;
  v138 = 0xE100000000000000;
  v79 = v129;
  v80 = [v129 extensionBundleIdentifier];
  v81 = sub_192227960();
  v83 = v82;

  MEMORY[0x193B0A990](v81, v83);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v84 = [v79 kind];
  v85 = sub_192227960();
  v87 = v86;

  MEMORY[0x193B0A990](v85, v87);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v88 = v137;
  v89 = v138;
  v90 = MEMORY[0x1E69E6158];
  *(v78 + 56) = MEMORY[0x1E69E6158];
  v91 = sub_1920B3134();
  *(v78 + 32) = v88;
  *(v78 + 40) = v89;
  v92 = (v119 & 1) == 0;
  LODWORD(v129) = v119 & 1;
  v93 = 1702195828;
  if ((v119 & 1) == 0)
  {
    v93 = 0x65736C6166;
  }

  v94 = 0xE500000000000000;
  *(v78 + 96) = v90;
  *(v78 + 104) = v91;
  if (!v92)
  {
    v94 = 0xE400000000000000;
  }

  *(v78 + 64) = v91;
  *(v78 + 72) = v93;
  *(v78 + 80) = v94;
  sub_1922257B0();

  v95 = sub_192227CF0();
  (*(*(v95 - 8) + 56))(v134, 1, 1, v95);
  v117(v130, v24, v132);
  v96 = v122;
  (*(v122 + 16))(v131, v77, v135);
  sub_192227CC0();
  v119 = v116;
  v97 = v115;
  v98 = v123;

  v99 = sub_192227CB0();
  v100 = v121;
  v101 = (*(v121 + 80) + 49) & ~*(v121 + 80);
  v102 = &v21[v101 + 7] & 0xFFFFFFFFFFFFFFF8;
  v103 = (*(v96 + 80) + v102 + 16) & ~*(v96 + 80);
  v104 = (v120 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  v106 = MEMORY[0x1E69E85E0];
  *(v105 + 16) = v99;
  *(v105 + 24) = v106;
  v107 = v119;
  *(v105 + 32) = v97;
  *(v105 + 40) = v107;
  *(v105 + 48) = v129;
  v108 = v132;
  (*(v100 + 32))(v105 + v101, v130, v132);
  v109 = (v105 + v102);
  v110 = v126;
  *v109 = v127;
  v109[1] = v110;
  v111 = v135;
  (*(v96 + 32))(v105 + v103, v131, v135);
  v112 = (v105 + v104);
  *v112 = v124;
  v112[1] = v98;
  sub_19211CA04(0, 0, v134, &unk_19222B648, v105);

  (*(v96 + 8))(v133, v111);
  return (*(v100 + 8))(v128, v108);
}

uint64_t sub_1920A255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v15;
  *(v8 + 56) = v16;
  *(v8 + 32) = v14;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  *(v8 + 96) = a6;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *v11 = v8;
  v11[1] = sub_1920A2634;

  return sub_1920AD734(a5, a6);
}

uint64_t sub_1920A2634()
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
    v8 = sub_1920A29FC;
  }

  else
  {
    v8 = sub_1920A2790;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1920A2790()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_19202B8CC(v7, v6, &v21);
    _os_log_impl(&dword_192028000, v4, v5, "Request ended for %{public}s - success", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193B0C7F0](v9, -1, -1);
    MEMORY[0x193B0C7F0](v8, -1, -1);
  }

  sub_1922280D0();
  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19222B490;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1920B3134();
  v17 = 0x65736C6166;
  v18 = 0xE500000000000000;
  *(v14 + 32) = 0x65736C6166;
  *(v14 + 40) = 0xE500000000000000;
  if (v13)
  {
    v17 = 1702195828;
  }

  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  if (v13)
  {
    v18 = 0xE400000000000000;
  }

  *(v14 + 64) = v16;
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  sub_1922257B0();

  v11(0);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1920A29FC()
{
  v33 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = sub_192224F80();

  v6 = v1;
  v7 = sub_192225890();
  v8 = sub_192227FB0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 88);
  if (v9)
  {
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v13 = 136446466;
    *(v13 + 4) = sub_19202B8CC(v12, v11, &v32);
    *(v13 + 12) = 2114;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_192028000, v7, v8, "Request ended for %{public}s - error: %{public}@", v13, 0x16u);
    sub_192033970(v14, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x193B0C7F0](v15, -1, -1);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  else
  {
  }

  sub_1922280D0();
  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 48);
  v31 = *(v0 + 56);
  v28 = *(v0 + 96);
  v29 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_19222B490;
  if (v5)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v5)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1920B3134();
  v19[4] = v20;
  v19[5] = v21;
  if (v28)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v28)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v19[12] = v22;
  v19[13] = v23;
  v19[8] = v23;
  v19[9] = v24;
  v19[10] = v25;
  sub_1922257B0();

  v30(v5);

  v26 = *(v0 + 8);

  return v26();
}

void sub_1920A2D20(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 20));
  sub_1920B35C8((a2 + 16), v4);
  os_unfair_lock_unlock((a2 + 20));
  if (v4[0] == 1)
  {
    *v4 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
    sub_192227C90();
  }
}

void sub_1920A2DC4(_BYTE *a1@<X0>, char *a2@<X8>)
{
  if (*a1)
  {
    v3 = sub_192225890();
    v4 = sub_192227FA0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Completion handler can only be called once. Subsequent calls in the same session are ignored.", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
    *a1 = 1;
  }

  *a2 = v6;
}

uint64_t sub_1920A2EF4(char *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v64 = a1;
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v70 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v64 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v64 - v11;
  v65 = type metadata accessor for WidgetDescriptor(0);
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v69 = &v64 - v18;
  if (xmmword_1ED74CC80)
  {
    v19 = *xmmword_1ED74CC80;
    v76[0] = xmmword_1ED74CC80;
    v20 = (*(qword_1ED74CC90 + 24))(v19);
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = 0;
      v73 = v12;
      v74 = &v64[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
      v24 = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v71 = v24;
      v72 = v3;
      while (v23 < *(v21 + 16))
      {
        sub_192084578(v24 + *(v12 + 72) * v23, v16, type metadata accessor for WidgetDescriptor);
        sub_192084578(v16, v8, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_1920B3484(v8, type metadata accessor for ViewSource);
        }

        else if (EnumCaseMultiPayload)
        {
          v33 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
          v34 = *(v33 + 1);
          v35 = *(v33 + 3);

          v36 = sub_1922253B0();
          (*(*(v36 - 8) + 8))(v8, v36);
        }

        else
        {
          v26 = *v8;
          v27 = v8[1];
          v28 = v8[3];
          v29 = v8[4];
          v30 = v8[5];
          v31 = v8[7];

          sub_19203831C(v29);

          if (v26 == *v74 && v27 == *(v74 + 1))
          {

            v12 = v73;
            goto LABEL_16;
          }

          v32 = sub_1922289A0();

          v12 = v73;
          v24 = v71;
          if (v32)
          {

LABEL_16:
            v38 = v66;
            sub_192084510(v16, v66, type metadata accessor for WidgetDescriptor);
            v37 = 0;
            goto LABEL_17;
          }
        }

        ++v23;
        sub_1920B3484(v16, type metadata accessor for WidgetDescriptor);
        if (v22 == v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:

      v37 = 1;
      v38 = v66;
LABEL_17:
      v39 = v65;
      (*(v12 + 56))(v38, v37, 1, v65);
      if ((*(v12 + 48))(v38, 1, v39) == 1)
      {
        sub_192033970(v38, &qword_1EADEEE20, &qword_19222B670);
      }

      else
      {
        v40 = v38;
        v41 = v69;
        sub_192084510(v40, v69, type metadata accessor for WidgetDescriptor);
        sub_192084578(v41, v70, type metadata accessor for ViewSource);
        v42 = swift_getEnumCaseMultiPayload();
        if (v42 > 1)
        {
          sub_1920B3484(v69, type metadata accessor for WidgetDescriptor);
          sub_1920B3484(v70, type metadata accessor for ViewSource);
        }

        else
        {
          if (!v42)
          {
            v43 = v70[1];
            v44 = v70[3];
            v45 = v70[4];
            v46 = v70[5];
            v47 = v70[6];
            v48 = v70[7];

            sub_19203831C(v45);

            v47(v75, v49);

            sub_19203832C(v75, v76);
            v50 = v77;
            v51 = v78;
            __swift_project_boxed_opaque_existential_1(v76, v77);
            v52 = swift_allocObject();
            v53 = v64;
            v54 = v67;
            v55 = v68;
            v52[2] = v64;
            v52[3] = v54;
            v52[4] = v55;
            v56 = *(v51 + 56);
            v57 = v53;

            v56(sub_1920B377C, v52, v50, v51);

            sub_1920B3484(v69, type metadata accessor for WidgetDescriptor);
            return __swift_destroy_boxed_opaque_existential_1(v76);
          }

          sub_1920B3484(v69, type metadata accessor for WidgetDescriptor);
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);
          v59 = v70;
          v60 = v70 + *(v58 + 48);
          v61 = *(v60 + 1);
          v62 = *(v60 + 3);

          v63 = sub_1922253B0();
          (*(*(v63 - 8) + 8))(v59, v63);
        }
      }

      if (qword_1ED749278 == -1)
      {
        return v67(qword_1ED74C6E8);
      }
    }

    swift_once();
    return v67(qword_1ED74C6E8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1920A3600(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_192227CF0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_192227CC0();
  v13 = a1;
  v14 = a2;

  v15 = sub_192227CB0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = a3;
  v16[7] = a4;
  sub_19211CA04(0, 0, v11, &unk_19222B7D0, v16);
}

uint64_t sub_1920A3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_192227CC0();
  v7[6] = sub_192227CB0();
  v9 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1920A37F4, v9, v8);
}

uint64_t sub_1920A37F4()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1921626C0(v3, *(v2 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle));
  v4 = *(v0 + 40);
  (*(v0 + 32))(0);
  v5 = *(v0 + 8);

  return v5();
}

id sub_1920A3AAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1920A3B08(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v52 - v7;
  v9 = sub_1922252A0();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1922251B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v18 = sub_192228340();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1922251A0();
  v19 = sub_192225160();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  sub_1920AC810(6, v19, v21);

  v22 = sub_192228260();
  v24 = v23;

  v61 = 2978915;
  v62 = 0xE300000000000000;
  MEMORY[0x193B0A990](v22, v24);

  v25 = v61;
  v26 = v62;
  if (v18 < 1)
  {
    goto LABEL_8;
  }

  v55 = v8;
  if (qword_1EADEE4E8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v27 = sub_1922258B0();
    __swift_project_value_buffer(v27, qword_1EAE00810);

    v28 = sub_192225890();
    v29 = sub_192227FB0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = v18;
      v31 = v30;
      v53 = swift_slowAlloc();
      v61 = v53;
      *v31 = 136446466;
      *(v31 + 4) = sub_19202B8CC(v25, v26, &v61);
      *(v31 + 12) = 2082;
      sub_192225240();
      sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770]);
      v32 = v57;
      v33 = sub_192228910();
      v34 = v25;
      v36 = v35;
      (*(v56 + 8))(v12, v32);
      v37 = sub_19202B8CC(v33, v36, &v61);
      v25 = v34;

      *(v31 + 14) = v37;
      _os_log_impl(&dword_192028000, v28, v29, "Batch begin (%{public}s) - locale: %{public}s", v31, 0x16u);
      v38 = v53;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v38, -1, -1);
      v18 = v54;
      MEMORY[0x193B0C7F0](v31, -1, -1);
    }

    v8 = v55;
LABEL_8:
    v39 = swift_allocObject();
    *(v39 + 16) = v18 > 0;
    *(v39 + 24) = v25;
    *(v39 + 32) = v26;
    v25 = v59;
    v40 = v60;
    *(v39 + 40) = v59;
    *(v39 + 48) = v40;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    v18 = v58;
    if ((v58 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v58)
    {
      v41 = *(a1 + 8 * v58 + 32);

      v42 = v41;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v18 = v58;
  v42 = MEMORY[0x193B0B410](v58, a1);
LABEL_12:
  v43 = v42;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = sub_1920B2DAC;
  v45[4] = v39;
  v45[5] = v18;
  v45[6] = a1;
  v45[7] = v25;
  v45[8] = v40;

  sub_192227CD0();
  v46 = sub_192227CF0();
  (*(*(v46 - 8) + 56))(v8, 0, 1, v46);
  sub_192227CC0();
  v47 = v43;

  v48 = sub_192227CB0();
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v47;
  v49[5] = sub_1920B2E0C;
  v49[6] = v45;
  sub_19211CA04(0, 0, v8, &unk_19222B5F8, v49);
}

uint64_t sub_1920A4180(id a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id))
{
  if (a2)
  {
    if (a1)
    {
      v9 = a1;
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v10 = sub_1922258B0();
      __swift_project_value_buffer(v10, qword_1EAE00810);
      v11 = a1;

      v12 = sub_192225890();
      v13 = sub_192227FB0();

      if (!os_log_type_enabled(v12, v13))
      {

        return a5(a1);
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v14 = 136446466;
      *(v14 + 4) = sub_19202B8CC(a3, a4, &v24);
      *(v14 + 12) = 2114;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_192028000, v12, v13, "Batch end (%{public}s) - failure: %{public}@", v14, 0x16u);
      sub_192033970(v15, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }

    else
    {
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v19 = sub_1922258B0();
      __swift_project_value_buffer(v19, qword_1EAE00810);

      v12 = sub_192225890();
      v20 = sub_192227FB0();

      if (os_log_type_enabled(v12, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_19202B8CC(a3, a4, &v24);
        _os_log_impl(&dword_192028000, v12, v20, "Batch end (%{public}s) - success", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x193B0C7F0](v22, -1, -1);
        MEMORY[0x193B0C7F0](v21, -1, -1);
      }
    }
  }

  return a5(a1);
}

void sub_1920A4490(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      v16 = a1;
      v17 = a1;
      a3(a1);

      return;
    }

    if (a6 >> 62)
    {
      v34 = sub_192228340();
      v33 = v34 - 1;
      if (!__OFSUB__(v34, 1))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v32 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v32 - 1;
      if (!__OFSUB__(v32, 1))
      {
LABEL_11:
        if (v33 <= a5)
        {
          a3(0);
        }

        else
        {
          sub_1920A3B08(a6, a5 + 1, a7, a8);
        }

        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v18 = sub_1922258B0();
  __swift_project_value_buffer(v18, qword_1EAE00810);
  v19 = sub_192225890();
  v20 = sub_192227FB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_192028000, v19, v20, "WidgetExtensionXPCServer disappeared", v21, 2u);
    MEMORY[0x193B0C7F0](v21, -1, -1);
  }

  v22 = *MEMORY[0x1E69941E8];
  v23 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v24 = *MEMORY[0x1E696A278];
  v25 = sub_192227960();
  v27 = v26;
  v37 = MEMORY[0x1E69E6158];
  *&v36 = 0xD000000000000024;
  *(&v36 + 1) = 0x8000000192248FB0;
  sub_19203BEDC(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v35, v25, v27, isUniquelyReferenced_nonNull_native);

  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_192227830();

  v31 = [v29 initWithDomain:v22 code:1500 userInfo:{v30, v23}];

  a3(v31);
}

uint64_t sub_1920A4788()
{
  v1[18] = v0;
  sub_192227CC0();
  v1[19] = sub_192227CB0();
  v3 = sub_192227C70();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1920A4820, v3, v2);
}

uint64_t sub_1920A4820()
{
  v1 = *(v0 + 144);
  if (*v1 == 1)
  {
    v2 = *(v0 + 152);

    sub_1922254F0();
    v3 = sub_1922254D0();
    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    sub_1920B2F50((v1 + 1), v0 + 16);
    if (*(v0 + 56))
    {
      sub_19203832C((v0 + 16), v0 + 64);
      v6 = *(v0 + 88);
      v7 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v6);
      v8 = *(v7 + 48);
      v19 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v10[1] = sub_1920A4CDC;

      return v19(v6, v7);
    }

    else
    {
      sub_19203832C((v0 + 16), v0 + 104);
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v11);
      v13 = (*(v12 + 8))(v11, v12);
      *(v0 + 176) = v13;
      v14 = *(v0 + 128);
      v15 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v14);
      v16 = *(v15 + 24);
      v20 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      *(v0 + 184) = v18;
      *v18 = v0;
      v18[1] = sub_1920A4B1C;

      return v20(v13, v14, v15);
    }
  }
}

uint64_t sub_1920A4B1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = v4[20];
    v8 = v4[21];
    v9 = sub_1920A4E94;
  }

  else
  {
    v4[25] = a1;
    v7 = v4[20];
    v8 = v4[21];
    v9 = sub_1920A4C44;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1920A4C44()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];

  sub_1922254F0();
  v4 = sub_1922254D0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1920A4CDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = v4[20];
    v8 = v4[21];
    v9 = sub_1920A4F08;
  }

  else
  {
    v4[28] = a1;
    v7 = v4[20];
    v8 = v4[21];
    v9 = sub_1920A4E04;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1920A4E04()
{
  v1 = v0[28];
  v2 = v0[19];

  sub_1922254F0();
  v3 = sub_1922254D0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1920A4E94()
{
  v1 = v0[22];
  v2 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1920A4F08()
{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[27];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1920A4F74(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_192227CC0();
  v3[21] = sub_192227CB0();
  v5 = sub_192227C70();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1920A5010, v5, v4);
}

uint64_t sub_1920A5010()
{
  sub_1920B2F50(*(v0 + 160) + 8, v0 + 16);
  if (*(v0 + 56))
  {
    v1 = *(v0 + 144);
    sub_19203832C((v0 + 16), v0 + 64);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
    v4 = *(v3 + 56);
    v1[3] = swift_getAssociatedTypeWitness();
    v1[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
    v22 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_1920A54E0;
    v8 = *(v0 + 152);

    return v22(boxed_opaque_existential_1, v8, v2, v3);
  }

  else
  {
    v10 = *(v0 + 160);
    sub_19203832C((v0 + 16), v0 + 104);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v11);
    v13 = (*(v12 + 8))(v11, v12);
    *(v0 + 192) = v13;
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v14);
    v16 = *v10;
    v17 = *(v15 + 16);
    v23 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_1920A5330;
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);

    return v23(v20, v21, v13, v16, v14, v15);
  }
}

uint64_t sub_1920A5330()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1920A5688;
  }

  else
  {
    v7 = sub_1920A546C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1920A546C()
{
  v1 = v0[24];
  v2 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1920A54E0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1920A56FC;
  }

  else
  {
    v7 = sub_1920A561C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1920A561C()
{
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1920A5688()
{
  v1 = v0[24];
  v2 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v3 = v0[26];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1920A56FC()
{
  v1 = v0[21];
  v2 = v0[18];

  __swift_deallocate_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v3 = v0[28];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1920A5774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1920A5800;

  return sub_1920A4788();
}

uint64_t sub_1920A5800(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1920A5900(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920A59A8;

  return sub_1920A4F74(a1, a2);
}

uint64_t sub_1920A59A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1920A5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  sub_192227CC0();
  v6[48] = sub_192227CB0();
  v8 = sub_192227C70();
  v6[49] = v8;
  v6[50] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1920A5B38, v8, v7);
}

void sub_1920A5B38()
{
  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = sub_1922258B0();
  *(v0 + 408) = __swift_project_value_buffer(v2, qword_1EAE00810);
  v3 = v1;
  v4 = sub_192225890();
  v5 = sub_192227FB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 360);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview];

    _os_log_impl(&dword_192028000, v4, v5, "Generating control template [isPreview=%{BOOL,public}d]...", v7, 8u);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    v8 = *(v0 + 360);
  }

  else
  {

    v8 = *(v0 + 360);
    v4 = v8;
  }

  v9 = *(&v8->isa + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview);
  *(v0 + 105) = v9;
  if (xmmword_1ED74CC80)
  {
    v10 = *(v0 + 360);
    v11 = *(&xmmword_1ED74CC80 + 1);
    v12 = *xmmword_1ED74CC80;
    *(v0 + 344) = xmmword_1ED74CC80;
    v13 = *(v10 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control);
    *(v0 + 416) = v13;

    sub_1921E7020(v13, v12, v11, (v0 + 16));

    sub_1920B2B7C(v0 + 64, v0 + 216);
    if (*(v0 + 256))
    {
      v14 = *(v0 + 216);
      *(v0 + 424) = *(v0 + 224);
      v15 = [v13 intentReference];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 intent];
      }

      else
      {
        v17 = 0;
      }

      *(v0 + 432) = v17;
      v27 = (v14 + *v14);
      v25 = v14[1];
      v26 = swift_task_alloc();
      *(v0 + 440) = v26;
      *v26 = v0;
      v26[1] = sub_1920A609C;

      v27(v0 + 264, v17, v9);
    }

    else
    {
      sub_19203832C((v0 + 216), v0 + 168);
      *(v0 + 208) = 0;
      v18 = *(v0 + 105);
      v19 = *(v0 + 360);
      sub_1920B2F50(v0 + 168, v0 + 120);
      *(v0 + 112) = v18;
      v20 = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
      v21 = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);
      v22 = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8);
      *(v0 + 456) = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle);
      v23 = swift_task_alloc();
      *(v0 + 464) = v23;
      *v23 = v0;
      v23[1] = sub_1920A6328;
      v24 = *(v0 + 416);

      sub_1920A9CD0(v24, v20, v21, v22, v0 + 112);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1920A609C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_1920A6744;
  }

  else
  {
    v7 = sub_1920A61F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1920A61F0()
{
  v1 = *(v0 + 424);

  sub_19203832C((v0 + 264), v0 + 168);
  *(v0 + 208) = 1;
  v2 = *(v0 + 105);
  v3 = *(v0 + 360);
  sub_1920B2F50(v0 + 168, v0 + 120);
  *(v0 + 112) = v2;
  v4 = *(v3 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
  v5 = *(v3 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);
  v6 = *(v3 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8);
  *(v0 + 456) = *(v3 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle);
  v7 = swift_task_alloc();
  *(v0 + 464) = v7;
  *v7 = v0;
  v7[1] = sub_1920A6328;
  v8 = *(v0 + 416);

  return sub_1920A9CD0(v8, v4, v5, v6, v0 + 112);
}

uint64_t sub_1920A6328(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 464);
  v6 = *v3;
  v4[59] = a1;
  v4[60] = a2;
  v4[61] = v2;

  if (v2)
  {
    v4[62] = v2;
    v7 = v4[49];
    v8 = v4[50];
    v9 = sub_1920A659C;
  }

  else
  {
    v9 = sub_1920A645C;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1920A645C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  *(v0 + 328) = *(v0 + 472);
  sub_1920B2FE8();
  sub_192227F40();
  sub_192039140(*(v0 + 472), *(v0 + 480));
  if (v1)
  {
    *(v0 + 496) = v1;
    v3 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = sub_1920A659C;
  }

  else
  {
    v3 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = sub_1920A6514;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1920A6514()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];

  v3(0);
  sub_1920B2F88((v0 + 14));
  sub_1920B2FB8((v0 + 21));
  sub_1920390EC((v0 + 2));
  v4 = v0[1];

  return v4();
}

uint64_t sub_1920A659C()
{
  v20 = v0;
  v1 = v0[48];

  sub_1920B2F88((v0 + 14));
  sub_1920B2FB8((v0 + 21));
  sub_1920390EC((v0 + 2));
  v2 = v0[62];
  v3 = v0[51];
  v4 = v2;
  v5 = sub_192225890();
  v6 = sub_192227F90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v0[38];
    v10 = v0[40];
    v11 = sub_1921C9C58(v0[39]);
    v13 = sub_19202B8CC(v11, v12, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_192028000, v5, v6, "Template request failed: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v15 = v0[46];
  v14 = v0[47];
  v16 = v2;
  v15(v2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1920A6744()
{
  v21 = v0;
  v1 = v0[53];
  v2 = v0[48];

  sub_1920390EC((v0 + 2));
  v3 = v0[56];
  v4 = v0[51];
  v5 = v3;
  v6 = sub_192225890();
  v7 = sub_192227F90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = v0[38];
    v11 = v0[40];
    v12 = sub_1921C9C58(v0[39]);
    v14 = sub_19202B8CC(v12, v13, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_192028000, v6, v7, "Template request failed: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193B0C7F0](v9, -1, -1);
    MEMORY[0x193B0C7F0](v8, -1, -1);
  }

  v16 = v0[46];
  v15 = v0[47];
  v17 = v3;
  v16(v3);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1920A68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v6[33] = v7;
  v8 = *(v7 - 8);
  v6[34] = v8;
  v9 = *(v8 + 64) + 15;
  v6[35] = swift_task_alloc();
  sub_192227CC0();
  v6[36] = sub_192227CB0();
  v11 = sub_192227C70();
  v6[37] = v11;
  v6[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1920A69E0, v11, v10);
}

uint64_t sub_1920A69E0()
{
  v1 = v0;
  v2 = *(*(v0 + 240) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  *(v0 + 312) = v2;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 320) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = xmmword_1ED74CC80;
    if (!xmmword_1ED74CC80)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v16 = *(v0 + 288);
    v17 = *(&xmmword_1ED74CC80 + 1);
    v18 = *xmmword_1ED74CC80;

    *(v0 + 232) = v15;
    v19 = (*(v17 + 8))(v18, v17);

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = (*(v0 + 280) + *(*(v0 + 264) + 152));
      v47 = *(v0 + 272);
      v23 = v19 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v24 = MEMORY[0x1E69E7CC0];
      v46 = *(v19 + 16);
      while (v21 < *(v19 + 16))
      {
        sub_192084578(v23 + *(v47 + 72) * v21, *(v1 + 280), type metadata accessor for WidgetDescriptor);
        v25 = *v22;
        if (*v22)
        {
          v26 = v22[1];
          v27 = *(v24 + 2);
          v28 = v27 + 1;
          v29 = 32;
          while (--v28)
          {
            v30 = *&v24[v29];
            v29 += 16;
            if (v30 == v25)
            {
              v1 = v0;
              goto LABEL_18;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1920C313C(0, v27 + 1, 1, v24);
          }

          v32 = *(v24 + 2);
          v31 = *(v24 + 3);
          if (v32 >= v31 >> 1)
          {
            v24 = sub_1920C313C((v31 > 1), v32 + 1, 1, v24);
          }

          sub_1920B3484(*(v0 + 280), type metadata accessor for WidgetDescriptor);
          *(v24 + 2) = v32 + 1;
          v33 = &v24[16 * v32];
          *(v33 + 4) = v25;
          *(v33 + 5) = v26;
          v1 = v0;
          v20 = v46;
        }

        else
        {
LABEL_18:
          sub_1920B3484(*(v1 + 280), type metadata accessor for WidgetDescriptor);
        }

        if (++v21 == v20)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
LABEL_33:
      if (qword_1EADEE4E8 == -1)
      {
        goto LABEL_34;
      }
    }

    swift_once();
LABEL_34:
    v34 = sub_1922258B0();
    __swift_project_value_buffer(v34, qword_1EAE00810);
    v35 = sub_192225890();
    v36 = sub_192227FB0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      *(v37 + 4) = *(MEMORY[0x1E69E7CC0] + 16);
      *(v37 + 12) = 2050;
      *(v37 + 14) = *(v24 + 2);
      _os_log_impl(&dword_192028000, v35, v36, "Sending %{public}ld ControlInfo instance(s) to %{public}ld PushHandler instances.", v37, 0x16u);
      MEMORY[0x193B0C7F0](v37, -1, -1);
    }

    v38 = *(v24 + 2);
    if (v38)
    {

      v39 = 32;
      do
      {
        v48 = *&v24[v39];
        v40 = *(*(&v48 + 1) + 8);
        *(v1 + 200) = v48;
        __swift_allocate_boxed_opaque_existential_1((v1 + 176));
        v40(v48, *(&v48 + 1));
        v41 = *(*(&v48 + 1) + 16);

        v1 = v0;
        v41(v42, v48, *(&v48 + 1));

        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        v39 += 16;
        --v38;
      }

      while (v38);
    }

    v43 = *(v1 + 280);
    v44 = *(v1 + 256);
    (*(v1 + 248))(0);

    v45 = *(v1 + 8);

    return v45();
  }

  result = sub_192228340();
  *(v0 + 320) = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  result = 0;
  *(v0 + 328) = *(*(v0 + 240) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 336) = result;
    *(v0 + 344) = v4;
    v5 = *(v0 + 312);
    v6 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x193B0B410]() : *(v5 + 8 * result + 32);
    v7 = v6;
    *(v0 + 352) = v6;
    if (*(*(v0 + 328) + 16))
    {
      v8 = sub_1920B7194(v6);
      if (v9)
      {
        break;
      }
    }

    result = *(v0 + 336) + 1;
    if (result == *(v0 + 320))
    {
      goto LABEL_15;
    }
  }

  v10 = (*(*(v0 + 328) + 56) + 16 * v8);
  v11 = *v10;
  *(v0 + 360) = *v10;
  v12 = v10[1];
  *(v0 + 368) = v12;
  *(v0 + 216) = v11;
  *(v0 + 224) = v12;
  sub_1920367C8(v11, v12);
  sub_1920367C8(v11, v12);
  v13 = v7;
  v14 = swift_task_alloc();
  *(v0 + 376) = v14;
  *v14 = v0;
  v14[1] = sub_1920A6FE0;

  return ControlInfo.init(control:pushInfo:)(v0 + 16, v13, (v0 + 216));
}

uint64_t sub_1920A6FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v6 = *v0;

  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1920A7100, v4, v3);
}

uint64_t sub_1920A7100()
{
  v1 = *(v0 + 344);
  sub_1920B2CF4(v0 + 16, v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1920C301C((v4 > 1), v5 + 1, 1, v3);
    }

    v7 = *(v0 + 360);
    v6 = *(v0 + 368);

    sub_192039140(v7, v6);
    sub_1920B2D50(v0 + 16);
    *(v3 + 2) = v5 + 1;
    v8 = &v3[80 * v5];
    *(v8 + 2) = *(v0 + 96);
    v9 = *(v0 + 160);
    v11 = *(v0 + 112);
    v10 = *(v0 + 128);
    *(v8 + 5) = *(v0 + 144);
    *(v8 + 6) = v9;
    *(v8 + 3) = v11;
    *(v8 + 4) = v10;
    while (1)
    {
      result = *(v0 + 336) + 1;
      if (result == *(v0 + 320))
      {
        break;
      }

      *(v0 + 336) = result;
      *(v0 + 344) = v3;
      v13 = *(v0 + 312);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193B0B410]();
      }

      else
      {
        v14 = *(v13 + 8 * result + 32);
      }

      v15 = v14;
      *(v0 + 352) = v14;
      if (*(*(v0 + 328) + 16))
      {
        v16 = sub_1920B7194(v14);
        if (v17)
        {
          v18 = (*(*(v0 + 328) + 56) + 16 * v16);
          v19 = *v18;
          *(v0 + 360) = *v18;
          v20 = v18[1];
          *(v0 + 368) = v20;
          *(v0 + 216) = v19;
          *(v0 + 224) = v20;
          sub_1920367C8(v19, v20);
          sub_1920367C8(v19, v20);
          v21 = v15;
          v22 = swift_task_alloc();
          *(v0 + 376) = v22;
          *v22 = v0;
          v22[1] = sub_1920A6FE0;

          return ControlInfo.init(control:pushInfo:)(v0 + 16, v21, (v0 + 216));
        }
      }
    }

    v23 = xmmword_1ED74CC80;
    if (!xmmword_1ED74CC80)
    {
      __break(1u);
      return result;
    }

    v24 = *(v0 + 288);
    v25 = *(&xmmword_1ED74CC80 + 1);
    v26 = *xmmword_1ED74CC80;

    *(v0 + 232) = v23;
    v27 = (*(v25 + 8))(v26, v25);

    v28 = *(v27 + 16);
    v55 = v3;
    if (!v28)
    {
      break;
    }

    v29 = 0;
    v30 = (*(v0 + 280) + *(*(v0 + 264) + 152));
    v3 = *(v0 + 272);
    v56 = v27 + ((v3[80] + 32) & ~v3[80]);
    v31 = MEMORY[0x1E69E7CC0];
    v54 = *(v27 + 16);
    while (v29 < *(v27 + 16))
    {
      sub_192084578(v56 + *(v3 + 9) * v29, *(v0 + 280), type metadata accessor for WidgetDescriptor);
      v32 = *v30;
      if (*v30)
      {
        v33 = v30[1];
        v34 = *(v31 + 2);
        v35 = v34 + 1;
        v36 = 32;
        while (--v35)
        {
          v37 = *&v31[v36];
          v36 += 16;
          if (v37 == v32)
          {
            goto LABEL_18;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1920C313C(0, v34 + 1, 1, v31);
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        if (v39 >= v38 >> 1)
        {
          v31 = sub_1920C313C((v38 > 1), v39 + 1, 1, v31);
        }

        sub_1920B3484(*(v0 + 280), type metadata accessor for WidgetDescriptor);
        *(v31 + 2) = v39 + 1;
        v40 = &v31[16 * v39];
        *(v40 + 4) = v32;
        *(v40 + 5) = v33;
        v28 = v54;
      }

      else
      {
LABEL_18:
        sub_1920B3484(*(v0 + 280), type metadata accessor for WidgetDescriptor);
      }

      if (++v29 == v28)
      {

        v3 = v55;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_45:
    v3 = sub_1920C301C(0, *(v3 + 2) + 1, 1, v3);
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_33:
  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v41 = sub_1922258B0();
  __swift_project_value_buffer(v41, qword_1EAE00810);
  v42 = sub_192225890();
  v43 = sub_192227FB0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134349312;
    *(v44 + 4) = *(v3 + 2);
    *(v44 + 12) = 2050;
    *(v44 + 14) = *(v31 + 2);
    _os_log_impl(&dword_192028000, v42, v43, "Sending %{public}ld ControlInfo instance(s) to %{public}ld PushHandler instances.", v44, 0x16u);
    MEMORY[0x193B0C7F0](v44, -1, -1);
  }

  v45 = *(v31 + 2);
  if (v45)
  {

    v53 = v31;
    v46 = 32;
    do
    {
      *v57 = *&v31[v46];
      v47 = *(v57[1] + 8);
      *(v0 + 200) = *v57;
      __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      v47(v57[0], v57[1]);
      v48 = *(v57[1] + 16);

      v48(v49, v57[0], v57[1]);
      v31 = v53;

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      v46 += 16;
      --v45;
    }

    while (v45);
  }

  v50 = *(v0 + 280);
  v51 = *(v0 + 256);
  (*(v0 + 248))(0);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1920A78B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[7] = a5;
  v7[10] = sub_192227CC0();
  v7[11] = sub_192227CB0();
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_1920A796C;

  return sub_1920B1CF8(a5);
}

uint64_t sub_1920A796C()
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
    v8 = sub_1920A7D48;
  }

  else
  {
    v8 = sub_1920A7AC8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1920A7AC8()
{
  v22 = v0;
  v1 = *(v0 + 88);

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE00810);
  v4 = v2;
  v5 = sub_192225890();
  v6 = sub_192227FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    v10 = [*(v7 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control) kind];
    v11 = sub_192227960();
    v13 = v12;

    v14 = sub_19202B8CC(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v0 + 48) = *(v7 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state);
    sub_1922254F0();
    sub_192035B0C(&qword_1EADEEE00, 255, MEMORY[0x1E6994010]);
    v15 = sub_192228910();
    v17 = sub_19202B8CC(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_192028000, v5, v6, "State for %{public}s updated to %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v9, -1, -1);
    MEMORY[0x193B0C7F0](v8, -1, -1);
  }

  v18 = *(v0 + 72);
  (*(v0 + 64))(0);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1920A7D48()
{
  v30 = v0;
  v1 = v0[11];

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[7];
  v4 = sub_1922258B0();
  __swift_project_value_buffer(v4, qword_1EAE00810);
  v5 = v3;
  v6 = v2;
  v7 = sub_192225890();
  v8 = sub_192227F90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446466;
    v13 = [*(v10 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control) kind];
    v14 = sub_192227960();
    v16 = v15;

    v17 = sub_19202B8CC(v14, v16, &v29);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v19 = v0[4];
    v20 = sub_1921C9C58(v0[3]);
    v22 = sub_19202B8CC(v20, v21, &v29);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_192028000, v7, v8, "Error setting state for %{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v12, -1, -1);
    MEMORY[0x193B0C7F0](v11, -1, -1);
  }

  v23 = v0[13];
  v25 = v0[8];
  v24 = v0[9];
  v26 = sub_192224F80();
  v25();

  v27 = v0[1];

  return v27();
}

uint64_t sub_1920A8158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v6[37] = v7;
  v8 = *(v7 - 8);
  v6[38] = v8;
  v9 = *(v8 + 64) + 15;
  v6[39] = swift_task_alloc();
  sub_192227CC0();
  v6[40] = sub_192227CB0();
  v11 = sub_192227C70();
  v6[41] = v11;
  v6[42] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1920A8250, v11, v10);
}

uint64_t sub_1920A8250()
{
  v55 = v1;
  v2 = *(v1 + 272);
  v3 = v2 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token;
  v4 = *(v2 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token);
  *(v1 + 344) = v4;
  v5 = *(v3 + 8);
  *(v1 + 352) = v5;
  v6 = *(v2 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets);
  *(v1 + 360) = v6;
  if (v6 >> 62)
  {
    v14 = v4;
    v0 = v5;
    v15 = sub_192228340();
    v5 = v0;
    v7 = v15;
    v4 = v14;
    *(v1 + 368) = v7;
    if (v7)
    {
LABEL_3:
      if (v7 >= 1)
      {
        sub_1920367C8(v4, v5);
        v8 = MEMORY[0x1E69E7CC0];
        *(v1 + 376) = 0;
        *(v1 + 384) = v8;
        v9 = *(v1 + 360);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x193B0B410](0);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        *(v1 + 392) = v10;
        v11 = v10;
        v12 = swift_task_alloc();
        *(v1 + 400) = v12;
        *v12 = v1;
        v12[1] = sub_1920A8808;

        return sub_1920D8C04(v1 + 16, v11);
      }

      goto LABEL_40;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 368) = v7;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  result = sub_1920367C8(v4, v5);
  v16 = xmmword_1ED74CC80;
  if (!xmmword_1ED74CC80)
  {
    __break(1u);
    return result;
  }

  v17 = *(v1 + 320);
  v18 = qword_1ED74CC90;
  v19 = *xmmword_1ED74CC80;

  *(v1 + 264) = v16;
  v20 = (*(v18 + 24))(v19, v18);

  v21 = *(v20 + 16);
  if (!v21)
  {

    v0 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (qword_1EADEE4E8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v22 = 0;
  v23 = (*(v1 + 312) + *(*(v1 + 296) + 168));
  v52 = *(v1 + 304);
  v24 = v20 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v0 = MEMORY[0x1E69E7CC0];
  v50 = *(v20 + 16);
  while (v22 < *(v20 + 16))
  {
    sub_192084578(v24 + *(v52 + 72) * v22, *(v1 + 312), type metadata accessor for WidgetDescriptor);
    v25 = *v23;
    if (*v23)
    {
      v26 = v23[1];
      v27 = *(v0 + 2);
      v28 = v27 + 1;
      v29 = 32;
      while (--v28)
      {
        v30 = *&v0[v29];
        v29 += 16;
        if (v30 == v25)
        {
          goto LABEL_14;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v0 = sub_1920C3278(0, v27 + 1, 1, v0);
      }

      v32 = *(v0 + 2);
      v31 = *(v0 + 3);
      if (v32 >= v31 >> 1)
      {
        v0 = sub_1920C3278((v31 > 1), v32 + 1, 1, v0);
      }

      sub_1920B3484(*(v1 + 312), type metadata accessor for WidgetDescriptor);
      *(v0 + 2) = v32 + 1;
      v33 = &v0[16 * v32];
      *(v33 + 4) = v25;
      *(v33 + 5) = v26;
      v21 = v50;
    }

    else
    {
LABEL_14:
      sub_1920B3484(*(v1 + 312), type metadata accessor for WidgetDescriptor);
    }

    if (++v22 == v21)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_30:
  v34 = sub_1922258B0();
  __swift_project_value_buffer(v34, qword_1EAE00810);
  v35 = sub_192225890();
  v36 = sub_192227FB0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349312;
    *(v37 + 4) = *(MEMORY[0x1E69E7CC0] + 16);
    *(v37 + 12) = 2050;
    *(v37 + 14) = *(v0 + 2);
    _os_log_impl(&dword_192028000, v35, v36, "Sending %{public}ld WidgetInfo instance(s) to %{public}ld PushHandler instances.", v37, 0x16u);
    MEMORY[0x193B0C7F0](v37, -1, -1);
  }

  v38 = *(v0 + 2);
  if (v38)
  {

    v39 = 32;
    v49 = v0;
    do
    {
      v40 = *(v1 + 344);
      v53 = *(v1 + 352);
      v51 = *&v0[v39];
      v41 = *(*(&v51 + 1) + 8);
      *(v1 + 248) = v51;
      __swift_allocate_boxed_opaque_existential_1((v1 + 224));
      v41(v51, *(&v51 + 1));
      v54[0] = v40;
      v54[1] = v53;
      v42 = *(*(&v51 + 1) + 16);
      v43 = MEMORY[0x1E69E7CC0];

      v42(v54, v43, v51, *(&v51 + 1));
      v0 = v49;

      __swift_destroy_boxed_opaque_existential_1((v1 + 224));
      v39 += 16;
      --v38;
    }

    while (v38);
  }

  v45 = *(v1 + 344);
  v44 = *(v1 + 352);
  v46 = *(v1 + 312);
  v47 = *(v1 + 288);
  (*(v1 + 280))(0);

  sub_192039140(v45, v44);

  v48 = *(v1 + 8);

  return v48();
}

uint64_t sub_1920A8808()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v6 = *v0;

  v3 = *(v1 + 336);
  v4 = *(v1 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1920A8928, v4, v3);
}

uint64_t sub_1920A8928()
{
  v60 = v0;
  v1 = *(v0 + 384);
  sub_1920B29F8(v0 + 16, v0 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 384);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1920C3150((v4 > 1), v5 + 1, 1, v3);
    }

    v7 = *(v0 + 368);
    v6 = *(v0 + 376);

    result = sub_1920B2A54(v0 + 16);
    *(v3 + 2) = v5 + 1;
    v9 = &v3[104 * v5];
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);
    *(v9 + 2) = *(v0 + 120);
    *(v9 + 3) = v11;
    *(v9 + 4) = v10;
    v12 = *(v0 + 184);
    v13 = *(v0 + 200);
    v14 = *(v0 + 168);
    *(v9 + 16) = *(v0 + 216);
    *(v9 + 6) = v12;
    *(v9 + 7) = v13;
    *(v9 + 5) = v14;
    if (v6 + 1 != v7)
    {
      v33 = *(v0 + 376) + 1;
      *(v0 + 376) = v33;
      *(v0 + 384) = v3;
      v34 = *(v0 + 360);
      if ((v34 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x193B0B410]();
      }

      else
      {
        v35 = *(v34 + 8 * v33 + 32);
      }

      *(v0 + 392) = v35;
      v36 = v35;
      v37 = swift_task_alloc();
      *(v0 + 400) = v37;
      *v37 = v0;
      v37[1] = sub_1920A8808;

      return sub_1920D8C04(v0 + 16, v36);
    }

    v15 = xmmword_1ED74CC80;
    if (!xmmword_1ED74CC80)
    {
      __break(1u);
      return result;
    }

    v16 = *(v0 + 320);
    v17 = qword_1ED74CC90;
    v18 = *xmmword_1ED74CC80;

    *(v0 + 264) = v15;
    v19 = (*(v17 + 24))(v18, v17);

    v20 = *(v19 + 16);
    v54 = v3;
    if (!v20)
    {
      break;
    }

    v21 = 0;
    v22 = (*(v0 + 312) + *(*(v0 + 296) + 168));
    v3 = *(v0 + 304);
    v57 = v19 + ((v3[80] + 32) & ~v3[80]);
    v23 = MEMORY[0x1E69E7CC0];
    v55 = *(v19 + 16);
    while (v21 < *(v19 + 16))
    {
      sub_192084578(v57 + *(v3 + 9) * v21, *(v0 + 312), type metadata accessor for WidgetDescriptor);
      v24 = *v22;
      if (*v22)
      {
        v25 = v22[1];
        v26 = *(v23 + 2);
        v27 = v26 + 1;
        v28 = 32;
        while (--v27)
        {
          v29 = *&v23[v28];
          v28 += 16;
          if (v29 == v24)
          {
            goto LABEL_8;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1920C3278(0, v26 + 1, 1, v23);
        }

        v31 = *(v23 + 2);
        v30 = *(v23 + 3);
        if (v31 >= v30 >> 1)
        {
          v23 = sub_1920C3278((v30 > 1), v31 + 1, 1, v23);
        }

        sub_1920B3484(*(v0 + 312), type metadata accessor for WidgetDescriptor);
        *(v23 + 2) = v31 + 1;
        v32 = &v23[16 * v31];
        *(v32 + 4) = v24;
        *(v32 + 5) = v25;
        v20 = v55;
      }

      else
      {
LABEL_8:
        sub_1920B3484(*(v0 + 312), type metadata accessor for WidgetDescriptor);
      }

      if (++v21 == v20)
      {

        v3 = v54;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    v3 = sub_1920C3150(0, *(v3 + 2) + 1, 1, v3);
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v38 = sub_1922258B0();
  __swift_project_value_buffer(v38, qword_1EAE00810);
  v39 = sub_192225890();
  v40 = sub_192227FB0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134349312;
    *(v41 + 4) = *(v3 + 2);
    *(v41 + 12) = 2050;
    *(v41 + 14) = *(v23 + 2);
    _os_log_impl(&dword_192028000, v39, v40, "Sending %{public}ld WidgetInfo instance(s) to %{public}ld PushHandler instances.", v41, 0x16u);
    MEMORY[0x193B0C7F0](v41, -1, -1);
  }

  v42 = *(v23 + 2);
  if (v42)
  {

    v43 = 32;
    v53 = v23;
    do
    {
      v44 = *(v0 + 344);
      v58 = *(v0 + 352);
      v56 = *&v23[v43];
      v45 = v0;
      v46 = *(*(&v56 + 1) + 8);
      *(v45 + 248) = v56;
      __swift_allocate_boxed_opaque_existential_1((v45 + 224));
      v46(v56, *(&v56 + 1));
      v59[0] = v44;
      v59[1] = v58;
      v47 = *(*(&v56 + 1) + 16);

      v23 = v53;
      v47(v59, v54, v56, *(&v56 + 1));
      v0 = v45;

      __swift_destroy_boxed_opaque_existential_1((v45 + 224));
      v43 += 16;
      --v42;
    }

    while (v42);
  }

  v49 = *(v0 + 344);
  v48 = *(v0 + 352);
  v50 = *(v0 + 312);
  v51 = *(v0 + 288);
  (*(v0 + 280))(0);

  sub_192039140(v49, v48);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1920A90A0(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a4;
  v6 = sub_1922252A0();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1922251B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v15 = sub_192228340();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1922251A0();
  v16 = sub_192225160();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  sub_1920AC810(6, v16, v18);

  v19 = sub_192228260();
  v21 = v20;

  v49 = 2977907;
  v50 = 0xE300000000000000;
  MEMORY[0x193B0A990](v19, v21);

  v23 = v49;
  v22 = v50;
  if (v15 < 1)
  {
    goto LABEL_8;
  }

  v45 = a3;
  if (qword_1EADEDEB0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v24 = sub_1922258B0();
    __swift_project_value_buffer(v24, qword_1EAE007D8);

    v25 = sub_192225890();
    v26 = sub_192227FB0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v27 = 136446466;
      *(v27 + 4) = sub_19202B8CC(v23, v22, &v49);
      *(v27 + 12) = 2082;
      v43 = v26;
      v28 = v9;
      sub_192225240();
      sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770]);
      v29 = sub_192228910();
      v30 = v23;
      v32 = v31;
      (*(v46 + 8))(v28, v6);
      v33 = sub_19202B8CC(v29, v32, &v49);
      v23 = v30;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_192028000, v25, v43, "Batch begin (%{public}s) - locale: %{public}s", v27, 0x16u);
      v34 = v44;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v34, -1, -1);
      MEMORY[0x193B0C7F0](v27, -1, -1);
    }

    a3 = v45;
LABEL_8:
    v35 = swift_allocObject();
    *(v35 + 16) = v15 > 0;
    *(v35 + 24) = v23;
    *(v35 + 32) = v22;
    v6 = v48;
    *(v35 + 40) = a3;
    *(v35 + 48) = v6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    v9 = v47;
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v47)
    {
      v36 = *(a1 + 8 * v47 + 32);

      v37 = v36;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v9 = v47;
  v37 = MEMORY[0x193B0B410](v47, a1);
LABEL_12:
  v38 = v37;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = a3;
  v40[4] = v6;
  v40[5] = v9;
  v40[6] = a1;
  v40[7] = sub_1920AC8CC;
  v40[8] = v35;

  sub_1920B232C(v38, sub_1920AC8F0, v40);
}

uint64_t sub_1920A961C(void *a1, int a2, int a3, void *aBlock, void (*a5)(void), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  a5(0);
  v13 = sub_192227B70();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = a1;
  a8(v13, 0, a7, v14);
}

uint64_t sub_1920A9734(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (a2)
  {
    if (a1)
    {
      v12 = *a7;
      v13 = a1;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_1922258B0();
      __swift_project_value_buffer(v14, a8);
      v15 = v13;

      v16 = sub_192225890();
      v17 = sub_192227FB0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v18 = 136446466;
        *(v18 + 4) = sub_19202B8CC(a3, a4, &v29);
        *(v18 + 12) = 2114;
        *(v18 + 14) = v15;
        *v19 = a1;
        v21 = v15;
        _os_log_impl(&dword_192028000, v16, v17, "Batch end (%{public}s) - failure: %{public}@", v18, 0x16u);
        sub_192033970(v19, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x193B0C7F0](v20, -1, -1);
        MEMORY[0x193B0C7F0](v18, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (*a7 != -1)
      {
        swift_once();
      }

      v22 = sub_1922258B0();
      __swift_project_value_buffer(v22, a8);

      v23 = sub_192225890();
      v24 = sub_192227FB0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_19202B8CC(a3, a4, &v29);
        _os_log_impl(&dword_192028000, v23, v24, "Batch end (%{public}s) - success", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x193B0C7F0](v26, -1, -1);
        MEMORY[0x193B0C7F0](v25, -1, -1);
      }
    }
  }

  return a5();
}

void sub_1920A9A20(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = *MEMORY[0x1E69941E8];
    v17 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v18 = *MEMORY[0x1E696A278];
    v19 = sub_192227960();
    v21 = v20;
    v30 = MEMORY[0x1E69E6158];
    *&v29 = 0xD000000000000024;
    *(&v29 + 1) = 0x8000000192248FB0;
    sub_19203BEDC(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v28, v19, v21, isUniquelyReferenced_nonNull_native);

    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v24 = sub_192227830();

    v14 = [v23 initWithDomain:v16 code:1050 userInfo:{v24, v17}];

    a3(v14);
    goto LABEL_11;
  }

  v14 = Strong;
  if (a1)
  {
    v15 = a1;
LABEL_10:
    a7(v15);
    goto LABEL_11;
  }

  if (a6 >> 62)
  {
    v27 = sub_192228340();
    v26 = v27 - 1;
    if (!__OFSUB__(v27, 1))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v25 - 1;
    if (!__OFSUB__(v25, 1))
    {
LABEL_7:
      if (v26 <= a5)
      {
        v15 = 0;
        goto LABEL_10;
      }

      sub_1920A90A0(a6, a5 + 1, a3, a4);
LABEL_11:

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1920A9CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for ControlArchiveStorage(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1920A9D6C, 0, 0);
}

uint64_t sub_1920A9D6C()
{
  v12 = v0[3];
  if (WidgetEnvironment.enumeratedCount()() < 1)
  {
    sub_1920B303C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 3;
    swift_willThrow();
    v10 = v0[8];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1920A9E9C;
    v2 = v0[8];
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];

    return sub_1920AA158(v2, v3, v7, v5, v6, v4);
  }
}

uint64_t sub_1920A9E9C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1920AA0F4;
  }

  else
  {
    v3 = sub_1920A9FB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1920A9FB0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  sub_192035B0C(&qword_1EADEE130, 255, type metadata accessor for ControlArchiveStorage);
  v5 = sub_192227870();
  v6 = v0[8];
  if (v1)
  {
    sub_1920B3484(v6, type metadata accessor for ControlArchiveStorage);
    v7 = v0[8];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[8];
    v11 = v4;
    sub_1920B3484(v6, type metadata accessor for ControlArchiveStorage);

    v12 = v0[1];

    return v12(v5, v11);
  }
}

uint64_t sub_1920AA0F4()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1920AA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  v7 = *(type metadata accessor for ControlTemplateType(0) - 8);
  v6[34] = v7;
  v8 = *(v7 + 64) + 15;
  v6[35] = swift_task_alloc();
  v9 = sub_1922261D0();
  v6[36] = v9;
  v10 = *(v9 - 8);
  v6[37] = v10;
  v11 = *(v10 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v12 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v6[41] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v14 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v6[43] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[44] = swift_task_alloc();
  v16 = *(*(type metadata accessor for BundleStub() - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v17 = sub_192225150();
  v6[46] = v17;
  v18 = *(v17 - 8);
  v6[47] = v18;
  v19 = *(v18 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v20 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v6[50] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v22 = swift_task_alloc();
  v6[53] = v22;
  *v22 = v6;
  v22[1] = sub_1920AA3F0;

  return sub_1920A4788();
}

uint64_t sub_1920AA3F0(uint64_t a1)
{
  v3 = *(*v2 + 424);
  v4 = *v2;
  v4[54] = a1;

  if (v1)
  {
    v6 = v4[51];
    v5 = v4[52];
    v8 = v4[48];
    v7 = v4[49];
    v10 = v4[44];
    v9 = v4[45];
    v11 = v4[42];
    v12 = v4[39];
    v13 = v4[40];
    v17 = v4[38];
    v14 = v4[35];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1920AA5D0, 0, 0);
  }
}

uint64_t sub_1920AA5D0()
{
  v114 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = *(v0 + 240);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v101 = *(v4 + 16);
  v101(v1, v2, v3);
  BundleStub.init(_:)([v6 extensionIdentity], v5);
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 400);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v12 = *(v0 + 360);
  v11 = *(v0 + 368);
  v99 = *(v0 + 432);
  v100 = *(v0 + 352);
  v97 = *(v0 + 392);
  v98 = *(v0 + 344);
  v110 = *(v0 + 336);
  v104 = *(v0 + 328);
  v96 = *(v0 + 296);
  v107 = *(v0 + 288);
  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  swift_beginAccess();
  v15 = qword_1ED74BAA0;
  *(v7 + v8[6]) = v13;
  sub_192084578(v12, v7, type metadata accessor for BundleStub);
  v101(v7 + v8[8], v9, v11);
  *(v7 + v8[5]) = v15;
  v113 = v14;
  v13;
  v16 = v14;
  WidgetEnvironment.filterForControlArchiving()();
  sub_1920B3484(v12, type metadata accessor for BundleStub);
  v17 = *(v10 + 8);
  v17(v9, v11);
  v17(v97, v11);
  v18 = v8[7];
  *(v7 + v18) = v14;
  *(v7 + v8[9]) = v99;
  v19 = *(v98 + 20);
  v20 = *(v7 + v18);
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v100 = v20;
  *(v0 + 440) = sub_192217738();
  v21 = *v100;
  v22 = *(v104 + 20);
  *(v0 + 552) = v22;
  v23 = *(v96 + 16);
  *(v0 + 448) = v23;
  *(v0 + 456) = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v110 + v22, v100 + v19, v107);
  v24 = v21;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v113 = v24;
  v27 = v24;

  v28 = sub_192056340(&v113, v26);
  v30 = v29;
  v32 = v31;

  *v110 = v28;
  v110[1] = v30;
  v110[2] = v32;
  if (v30 >> 62)
  {
    v44 = sub_192228340();
    v34 = v44 - 1;
    if (v44 >= 1)
    {
LABEL_5:
      *(v0 + 464) = sub_192227CC0();
      *(v0 + 472) = v25;
      v35 = *(v0 + 336);

      if ((sub_19205F34C(v34) & 1) == 0)
      {
        v36 = *(v0 + 336);
        v37 = *v36;

        *v36 = v25;
        v38 = v36[1];

        v36[1] = v25;
        v39 = v36[2];

        v36[2] = v25;
      }

      v40 = *(v0 + 456);
      (*(v0 + 448))(*(v0 + 312), *(v0 + 336) + *(v0 + 552), *(v0 + 288));
      if (v30 >> 62)
      {
        v41 = sub_192228340();
        if (v41)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v41 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
LABEL_9:
          if (v41 >= 1)
          {
            for (i = 0; i != v41; ++i)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x193B0B410](i, v30);
              }

              else
              {
                v43 = *(v30 + 8 * i + 32);
              }

              (*(**(v43 + 16) + 112))(*(v0 + 312));
            }

            goto LABEL_26;
          }

          __break(1u);
          goto LABEL_33;
        }
      }

LABEL_26:
      v76 = *(v0 + 440);
      v77 = *(v0 + 312);
      v78 = *(v0 + 320);
      v80 = *(v0 + 296);
      v79 = *(v0 + 304);
      v81 = *(v0 + 288);

      v82 = *(v80 + 32);
      v82(v78, v77, v81);
      v82(v79, v78, v81);
      if (v76)
      {
        v83 = *(v0 + 440);
        v84 = *(v0 + 304);

        sub_192227270();
        v103 = v86;
        v106 = v85;
        v109 = v88;
        v112 = v87;

        v89.i64[0] = v106;
        v89.i64[1] = v103;
        v90 = vorrq_s8(vshll_n_s32(__PAIR64__(v109, v112), 0x20uLL), v89);
      }

      else
      {
        v90 = 0uLL;
      }

      v91 = *(v0 + 464);
      v92 = *(v0 + 304);
      v93 = *(v0 + 440) == 0;
      *(v0 + 60) = v90;
      *(v0 + 76) = v93;
      sub_1920B3090();
      sub_1922261F0();
      *(v0 + 480) = sub_192227CB0();
      v95 = sub_192227C70();
      *(v0 + 488) = v95;
      *(v0 + 496) = v94;

      return MEMORY[0x1EEE6DFA0](sub_1920AAE50, v95, v94);
    }
  }

  else
  {
    v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v33 - 1;
    if (v33 >= 1)
    {
      goto LABEL_5;
    }
  }

  sub_1920B3484(*(v0 + 336), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v45 = *(v0 + 264);
  v46 = *(v0 + 240);
  v47 = sub_1922258B0();
  __swift_project_value_buffer(v47, qword_1EAE00810);

  v48 = v46;
  v49 = sub_192225890();
  v50 = sub_192227FB0();

  if (os_log_type_enabled(v49, v50))
  {
    v52 = *(v0 + 256);
    v51 = *(v0 + 264);
    v53 = *(v0 + 240);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v113 = v56;
    *v54 = 138478083;
    *(v54 + 4) = v53;
    *v55 = v53;
    *(v54 + 12) = 2082;
    v57 = v53;
    v58 = sub_192225530();
    v60 = sub_19202B8CC(v58, v59, &v113);

    *(v54 + 14) = v60;
    _os_log_impl(&dword_192028000, v49, v50, "(async) generating control archive for %{private}@ for host %{public}s", v54, 0x16u);
    sub_192033970(v55, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x193B0C7F0](v56, -1, -1);
    MEMORY[0x193B0C7F0](v54, -1, -1);
  }

  v61 = *(v0 + 264);
  sub_192084578(*(v0 + 416), *(v0 + 408), type metadata accessor for ControlArchiveStorageMetadata);
  if (v61)
  {
    v62 = sub_1922189A8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v62 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v63 = v62;
  v64 = *(v0 + 440);
  v66 = *(v0 + 408);
  v65 = *(v0 + 416);
  v68 = *(v0 + 384);
  v67 = *(v0 + 392);
  v69 = *(v0 + 352);
  v70 = *(v0 + 360);
  v71 = *(v0 + 336);
  v102 = *(v0 + 320);
  v105 = *(v0 + 312);
  v108 = *(v0 + 304);
  v111 = *(v0 + 280);
  v72 = *(v0 + 224);

  sub_1920B3484(v65, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1920B3484(v69, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192084510(v66, v72, type metadata accessor for ControlArchiveStorageMetadata);
  v73 = type metadata accessor for ControlArchiveStorage(0);
  *(v72 + v73[5]) = MEMORY[0x1E69E7CC0];
  *(v72 + v73[7]) = 2;
  *(v72 + v73[6]) = v63;

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1920AAE50()
{
  sub_1920B2F50(*(v0 + 232) + 8, v0 + 16);
  if (*(v0 + 56))
  {
    sub_19203832C((v0 + 16), v0 + 120);
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1((v0 + 120), v1);
    v3 = *(v2 + 56);
    *(v0 + 104) = swift_getAssociatedTypeWitness();
    *(v0 + 112) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
    v20 = (v3 + *v3);
    v5 = v3[1];
    v6 = swift_task_alloc();
    *(v0 + 528) = v6;
    *v6 = v0;
    v6[1] = sub_1920AB2A0;
    v7 = *(v0 + 304);

    return v20(boxed_opaque_existential_1, v7, v1, v2);
  }

  else
  {
    v9 = *(v0 + 232);
    sub_19203832C((v0 + 16), v0 + 160);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v10);
    v12 = (*(v11 + 8))(v10, v11);
    *(v0 + 504) = v12;
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v13);
    v15 = *v9;
    v16 = *(v14 + 16);
    v21 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 512) = v18;
    *v18 = v0;
    v18[1] = sub_1920AB164;
    v19 = *(v0 + 304);

    return v21(v0 + 80, v19, v12, v15, v13, v14);
  }
}

uint64_t sub_1920AB164()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_1920AB454;
  }

  else
  {
    v7 = sub_1920AB3DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1920AB2A0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_1920ABE24;
  }

  else
  {
    v7 = sub_1920ABDB4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1920AB3DC()
{
  v1 = v0[63];
  v2 = v0[60];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1920AB4DC, 0, 0);
}

uint64_t sub_1920AB454()
{
  v1 = v0[63];
  v3 = v0[59];
  v2 = v0[60];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);

  v0[68] = v0[65];

  return MEMORY[0x1EEE6DFA0](sub_1920ABC38, 0, 0);
}

uint64_t sub_1920AB4DC()
{
  v88 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 280);
  v3 = *(v0 + 104);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 80), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  ControlTemplateType.init<A>(_:)(v7, v3, v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1920C2FF4(0, *(v9 + 16) + 1, 1, *(v0 + 472));
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1920C2FF4(v10 > 1, v11 + 1, 1, v9);
  }

  v12 = *(v0 + 336);
  v13 = *(v0 + 280);
  v14 = *(v0 + 272);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  *(v9 + 16) = v11 + 1;
  sub_192084510(v13, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, type metadata accessor for ControlTemplateType);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v15 = *(v12 + 8);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v27 = *(v12 + 8);
    }

    v16 = sub_192228340();
    if (v16 > 0)
    {
LABEL_7:
      *(v0 + 472) = v9;
      v17 = *(v0 + 336);
      v18 = v16 - 1;

      if ((sub_19205F34C(v18) & 1) == 0)
      {
        v19 = *(v0 + 336);
        v20 = *v19;

        v21 = MEMORY[0x1E69E7CC0];
        *v19 = MEMORY[0x1E69E7CC0];
        v22 = v19[1];

        v19[1] = v21;
        v23 = v19[2];

        v19[2] = v21;
      }

      v24 = *(v0 + 456);
      (*(v0 + 448))(*(v0 + 312), *(v0 + 336) + *(v0 + 552), *(v0 + 288));
      if (v15 >> 62)
      {
        v9 = sub_192228340();
        if (v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_11:
          if (v9 >= 1)
          {
            for (i = 0; i != v9; ++i)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x193B0B410](i, v15);
              }

              else
              {
                v26 = *(v15 + 8 * i + 32);
              }

              (*(**(v26 + 16) + 112))(*(v0 + 312));
            }

            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_37;
        }
      }

LABEL_30:
      v58 = *(v0 + 440);
      v59 = *(v0 + 312);
      v60 = *(v0 + 320);
      v62 = *(v0 + 296);
      v61 = *(v0 + 304);
      v63 = *(v0 + 288);

      v64 = *(v62 + 32);
      v64(v60, v59, v63);
      v64(v61, v60, v63);
      if (v58)
      {
        v65 = *(v0 + 440);
        v66 = *(v0 + 304);

        sub_192227270();
        v80 = v68;
        v82 = v67;
        v84 = v70;
        v86 = v69;

        v71.i64[0] = v82;
        v71.i64[1] = v80;
        v72 = vorrq_s8(vshll_n_s32(__PAIR64__(v84, v86), 0x20uLL), v71);
      }

      else
      {
        v72 = 0uLL;
      }

      v73 = *(v0 + 464);
      v74 = *(v0 + 304);
      v75 = *(v0 + 440) == 0;
      *(v0 + 60) = v72;
      *(v0 + 76) = v75;
      sub_1920B3090();
      sub_1922261F0();
      *(v0 + 480) = sub_192227CB0();
      v77 = sub_192227C70();
      *(v0 + 488) = v77;
      *(v0 + 496) = v76;

      return MEMORY[0x1EEE6DFA0](sub_1920AAE50, v77, v76);
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 > 0)
    {
      goto LABEL_7;
    }
  }

  sub_1920B3484(*(v0 + 336), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v28 = *(v0 + 264);
  v29 = *(v0 + 240);
  v30 = sub_1922258B0();
  __swift_project_value_buffer(v30, qword_1EAE00810);

  v31 = v29;
  v32 = sub_192225890();
  v33 = sub_192227FB0();

  if (os_log_type_enabled(v32, v33))
  {
    v35 = *(v0 + 256);
    v34 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v87 = v39;
    *v37 = 138478083;
    *(v37 + 4) = v36;
    *v38 = v36;
    *(v37 + 12) = 2082;
    v40 = v36;
    v41 = sub_192225530();
    v43 = sub_19202B8CC(v41, v42, &v87);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_192028000, v32, v33, "(async) generating control archive for %{private}@ for host %{public}s", v37, 0x16u);
    sub_192033970(v38, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x193B0C7F0](v39, -1, -1);
    MEMORY[0x193B0C7F0](v37, -1, -1);
  }

  v44 = *(v0 + 264);
  sub_192084578(*(v0 + 416), *(v0 + 408), type metadata accessor for ControlArchiveStorageMetadata);
  if (v44)
  {
    v45 = sub_1922189A8(v9);
  }

  else
  {
    v45 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v46 = v45;
  v47 = *(v0 + 440);
  v49 = *(v0 + 408);
  v48 = *(v0 + 416);
  v51 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 352);
  v53 = *(v0 + 360);
  v78 = *(v0 + 336);
  v79 = *(v0 + 320);
  v81 = *(v0 + 312);
  v83 = *(v0 + 304);
  v85 = *(v0 + 280);
  v54 = *(v0 + 224);

  sub_1920B3484(v48, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1920B3484(v52, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192084510(v49, v54, type metadata accessor for ControlArchiveStorageMetadata);
  v55 = type metadata accessor for ControlArchiveStorage(0);
  *(v54 + v55[5]) = v9;
  *(v54 + v55[7]) = 2;
  *(v54 + v55[6]) = v46;

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1920ABC38()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[44];
  v4 = v0[42];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[36];

  (*(v6 + 8))(v5, v7);
  sub_1920B3484(v2, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1920B3484(v4, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  sub_1920B3484(v3, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v9 = v0[51];
  v8 = v0[52];
  v11 = v0[48];
  v10 = v0[49];
  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[42];
  v16 = v0[39];
  v15 = v0[40];
  v17 = v0[38];
  v20 = v0[35];
  v21 = v0[68];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1920ABDB4()
{
  v1 = *(v0 + 480);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  return MEMORY[0x1EEE6DFA0](sub_1920AB4DC, 0, 0);
}

uint64_t sub_1920ABE24()
{
  v2 = v0[59];
  v1 = v0[60];

  __swift_deallocate_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  v0[68] = v0[67];

  return MEMORY[0x1EEE6DFA0](sub_1920ABC38, 0, 0);
}

uint64_t sub_1920ABEAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for BundleStub();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = v2;
  v31[4] = &protocol witness table for WidgetViewCollection;
  v31[0] = a1;
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_1ED74BAA0;
  sub_192084578(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, v6, type metadata accessor for BundleStub);
  result = sub_192033A64(v31, v29);
  if (xmmword_1ED74CC80)
  {
    v27 = *xmmword_1ED74CC80;
    v28 = *(qword_1ED74CC90 + 8);
    *&v26 = xmmword_1ED74CC80;
    v9 = type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
    v13 = MEMORY[0x1E69E7CC8];
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
    v14 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
    v15 = sub_1922261D0();
    (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v13;
    v16 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
    v17 = sub_192225790();
    v18 = *(v17 - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_19222B4A0;

    sub_192225780();
    sub_192225750();
    sub_192225770();
    sub_192225760();
    v22 = sub_19216FF08(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v12 + v16) = v22;
    v23 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
    sub_192225750();
    (*(v18 + 56))(v12 + v23, 0, 1, v17);
    sub_192084510(v6, v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v7;
    *(v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
    v24 = v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
    *(v24 + 32) = v30;
    v25 = v29[1];
    *v24 = v29[0];
    *(v24 + 16) = v25;
    sub_19203832C(&v26, v12 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920AC2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_192227790();
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1922252A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1922258B0();
  __swift_project_value_buffer(v15, qword_1ED74CCC8);
  v16 = sub_192225890();
  v17 = sub_192227FB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_19202B8CC(0xD000000000000022, 0x8000000192249320, aBlock);
    *(v18 + 12) = 2082;
    sub_192225240();
    sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770]);
    v21 = sub_192228910();
    v22 = v11;
    v23 = v9;
    v24 = a1;
    v26 = v25;
    (*(v22 + 8))(v14, v10);
    v27 = sub_19202B8CC(v21, v26, aBlock);
    a1 = v24;
    v9 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_192028000, v16, v17, "=+= %{public}s - locale: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v28 = v20;
    a2 = v35;
    MEMORY[0x193B0C7F0](v28, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v29 = sub_192228080();
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  aBlock[4] = sub_1920B3978;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_229;
  v31 = _Block_copy(aBlock);

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v32 = v37;
  v33 = v40;
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v9, v32, v31);
  _Block_release(v31);

  (*(v39 + 8))(v32, v33);
  return (*(v36 + 8))(v9, v38);
}

uint64_t sub_1920AC810(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_1922279D0();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1920AC908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v4 = sub_192227710();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_192227790();
  v69 = *(v71 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_192225800();
  v67 = *(v75 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x1EEE9AC00](v75);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v61 - v11;
  v12 = sub_1922252A0();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1922251B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922251A0();
  v21 = sub_192225160();
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  sub_1920AC810(6, v21, v23);

  v24 = sub_192228260();
  v26 = v25;

  aBlock = 2976880;
  v77 = 0xE300000000000000;
  MEMORY[0x193B0A990](v24, v26);

  v27 = aBlock;
  v28 = v77;
  if (qword_1ED74AED8 != -1)
  {
    swift_once();
  }

  v29 = sub_1922258B0();
  __swift_project_value_buffer(v29, qword_1ED74CB50);

  v30 = sub_192225890();
  v31 = sub_192227FB0();

  v32 = os_log_type_enabled(v30, v31);
  v63 = v27;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v61 = a1;
    v35 = v34;
    aBlock = v34;
    *v33 = 136446466;
    *(v33 + 4) = sub_19202B8CC(v27, v28, &aBlock);
    *(v33 + 12) = 2082;
    sub_192225240();
    sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770]);
    v36 = sub_192228910();
    v38 = v37;
    (*(v62 + 8))(v15, v12);
    v39 = sub_19202B8CC(v36, v38, &aBlock);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_192028000, v30, v31, "Batch begin (%{public}s) - locale: %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    v40 = v35;
    a1 = v61;
    MEMORY[0x193B0C7F0](v40, -1, -1);
    MEMORY[0x193B0C7F0](v33, -1, -1);
  }

  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v41 = qword_1ED74CBD8;
  v42 = v74;
  sub_1922257E0();
  sub_1922280E0();
  sub_1922257C0();
  type metadata accessor for UnfairLock();
  v43 = swift_allocObject();
  v44 = swift_slowAlloc();
  *v44 = 0;
  *(v43 + 16) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = v67;
  v47 = v64;
  v48 = v75;
  (*(v67 + 16))(v64, v42, v75);
  v49 = (*(v46 + 80) + 48) & ~*(v46 + 80);
  v50 = (v9 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 2) = v43;
  *(v51 + 3) = v45;
  *(v51 + 4) = v63;
  *(v51 + 5) = v28;
  (*(v46 + 32))(&v51[v49], v47, v48);
  v52 = &v51[v50];
  v53 = v66;
  *v52 = v65;
  *(v52 + 1) = v53;
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);

  v66 = sub_192228080();
  v54 = swift_allocObject();
  v54[2] = a1;
  v54[3] = sub_1920B38AC;
  v54[4] = v51;
  v80 = sub_1920B3954;
  v81 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = sub_19202AB80;
  v79 = &block_descriptor_203;
  v55 = _Block_copy(&aBlock);

  v56 = v68;
  sub_192227740();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v57 = v70;
  v58 = v73;
  sub_1922282F0();
  v59 = v66;
  MEMORY[0x193B0B040](0, v56, v57, v55);
  _Block_release(v55);

  (*(v72 + 8))(v57, v58);
  (*(v69 + 8))(v56, v71);
  (*(v46 + 8))(v74, v75);
}

id sub_1920AD1B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for BundleStub();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = v2;
  v44[4] = &protocol witness table for WidgetViewCollection;
  v44[0] = a1;
  v7 = objc_opt_self();

  result = [v7 sharedInstance];
  if (result)
  {
    v9 = result;
    v10 = [result isInternalInstall];

    if (v10)
    {
      v11 = [objc_opt_self() processInfo];
      v12 = [v11 environment];

      v13 = sub_192227840();
      if (*(v13 + 16))
      {
        sub_1920440AC(0xD000000000000011, 0x8000000192249120);
        v15 = v14;

        if (v15)
        {
          if (qword_1ED74BA98 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v16 = qword_1ED74BAA0;
          sub_192084578(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, v6, type metadata accessor for BundleStub);
          v17 = type metadata accessor for TestingNilDescriptorQuerying();
          v18 = swift_allocObject();
          v42 = v17;
          v43 = &off_1F06B1F68;
          *&v41 = v18;
          v19 = type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
          v20 = *(v19 + 48);
          v21 = *(v19 + 52);
          v22 = swift_allocObject();
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
          v23 = MEMORY[0x1E69E7CC8];
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
          v24 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
          v25 = sub_1922261D0();
          (*(*(v25 - 8) + 56))(v22 + v24, 1, 1, v25);
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v23;
          v26 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
          v27 = sub_192225790();
          v28 = *(v27 - 8);
          v29 = *(v28 + 72);
          v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_19222B4A0;
          sub_192225780();
          sub_192225750();
          sub_192225770();
          sub_192225760();
          v32 = sub_19216FF08(v31);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v22 + v26) = v32;
          v33 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
          sub_192225750();
          (*(v28 + 56))(v22 + v33, 0, 1, v27);
          sub_192084510(v6, v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v16;
          *(v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
          v34 = v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
          *(v34 + 32) = 0;
          *v34 = 0u;
          *(v34 + 16) = 0u;
          sub_19203832C(&v41, v22 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v35 = __swift_project_boxed_opaque_existential_1(v44, v2);
    v36 = *(*(v2 - 8) + 64);
    MEMORY[0x1EEE9AC00](v35);
    v38 = (&v40 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v22 = sub_1920ABEAC(*v38);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1920AD734(uint64_t a1, char a2)
{
  *(v2 + 97) = a2;
  *(v2 + 616) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0) - 8) + 64) + 15;
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = swift_task_alloc();
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = swift_task_alloc();
  *(v2 + 664) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  *(v2 + 672) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 680) = swift_task_alloc();
  v6 = type metadata accessor for ViewableTimelineEntry();
  *(v2 + 688) = v6;
  v7 = *(v6 - 8);
  *(v2 + 696) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 704) = swift_task_alloc();
  *(v2 + 712) = swift_task_alloc();
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  v9 = sub_192225150();
  *(v2 + 744) = v9;
  v10 = *(v9 - 8);
  *(v2 + 752) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 760) = swift_task_alloc();
  v12 = *(*(type metadata accessor for BundleStub() - 8) + 64) + 15;
  *(v2 + 768) = swift_task_alloc();
  v13 = *(*(type metadata accessor for TimelineReloadPolicy() - 8) + 64) + 15;
  *(v2 + 776) = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0) - 8);
  *(v2 + 784) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 792) = swift_task_alloc();
  v16 = type metadata accessor for TimelineProviderContext();
  *(v2 + 800) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v2 + 808) = swift_task_alloc();
  *(v2 + 816) = swift_task_alloc();
  v18 = type metadata accessor for ViewSource(0);
  *(v2 + 824) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v2 + 832) = swift_task_alloc();
  *(v2 + 840) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670) - 8) + 64) + 15;
  *(v2 + 848) = swift_task_alloc();
  v21 = type metadata accessor for WidgetDescriptor(0);
  *(v2 + 856) = v21;
  v22 = *(v21 - 8);
  *(v2 + 864) = v22;
  v23 = *(v22 + 64) + 15;
  *(v2 + 872) = swift_task_alloc();
  v24 = sub_1922258B0();
  *(v2 + 880) = v24;
  v25 = *(v24 - 8);
  *(v2 + 888) = v25;
  v26 = *(v25 + 64) + 15;
  *(v2 + 896) = swift_task_alloc();
  sub_192227CC0();
  *(v2 + 904) = sub_192227CB0();
  v28 = sub_192227C70();
  *(v2 + 912) = v28;
  *(v2 + 920) = v27;

  return MEMORY[0x1EEE6DFA0](sub_1920832E8, v28, v27);
}

uint64_t sub_1920ADB90(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[71] = v1;
  v3[72] = a1;
  v4 = v2[120];
  v8 = *v1;

  v5 = v2[115];
  v6 = v2[114];

  return MEMORY[0x1EEE6DFA0](sub_1920ADCB8, v6, v5);
}

uint64_t sub_1920ADCB8()
{
  v197 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 904);

  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  if (v1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

    v5 = sub_192096880(v4);

    v6 = *(v5 + 16);

    if (v6)
    {

      v8 = sub_19209BB80(v7);

      v9 = *(v8 + 16);
      v141 = v1;
      v159 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        v10 = *(v0 + 752);
        v11 = *(v0 + 696);
        v155 = *(v0 + 688);
        v196 = MEMORY[0x1E69E7CC0];
        sub_19209ACA4(0, v9, 0);
        v151 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v12 = v8 + v151;
        v192 = v196;
        v145 = (v10 + 16);
        v148 = *(v11 + 72);
        do
        {
          v187 = v9;
          v13 = *(v0 + 952);
          v14 = *(v0 + 928);
          v177 = *(v0 + 744);
          v182 = v12;
          v15 = *(v0 + 736);
          v16 = *(v0 + 728);
          sub_192084578(v12, v16, type metadata accessor for ViewableTimelineEntry);
          v173 = *(v16 + v155[5]);
          KeyPath = swift_getKeyPath();
          v165 = swift_getKeyPath();
          v162 = swift_getKeyPath();
          v17 = v14;
          v18 = v13;
          v19 = [v17 family];
          (*v145)(v15, v16, v177);
          *(v0 + 16) = v173;
          *(v0 + 24) = v17;
          *(v0 + 32) = v18;
          *(v0 + 40) = v19;
          *(v0 + 48) = KeyPath;
          *(v0 + 56) = 0;
          *(v0 + 64) = v165;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 88) = v162;
          *(v0 + 96) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
          sub_1920B33A4();
          v20 = sub_192227570();
          v21 = v16 + v155[6];
          v22 = *v21;
          v23 = *(v21 + 8);
          LOBYTE(v18) = *(v21 + 16);
          sub_19202CFFC(v16 + v155[7], v15 + v155[7], &qword_1EADEEE60, &unk_192246DC0);
          v24 = (v16 + v155[8]);
          v25 = *v24;
          v26 = v24[1];
          sub_19206A874(*v24, v26);
          sub_1920B3484(v16, type metadata accessor for ViewableTimelineEntry);
          *(v15 + v155[5]) = v20;
          v27 = v15 + v155[6];
          *v27 = v22;
          *(v27 + 8) = v23;
          *(v27 + 16) = v18;
          v28 = (v15 + v155[8]);
          *v28 = v25;
          v28[1] = v26;
          v29 = v192;
          v196 = v192;
          v31 = v192[2];
          v30 = v192[3];
          if (v31 >= v30 >> 1)
          {
            sub_19209ACA4(v30 > 1, v31 + 1, 1);
            v29 = v196;
          }

          v192 = v29;
          v32 = *(v0 + 736);
          v29[2] = v31 + 1;
          sub_192084510(v32, v29 + v151 + v31 * v148, type metadata accessor for ViewableTimelineEntry);
          v12 = v182 + v148;
          v9 = v187 - 1;
        }

        while (v187 != 1);

        v1 = v141;
      }

      else
      {

        v192 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v0 + 944);
      v57 = *(v0 + 928);
      v58 = *(v0 + 768);
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = *(v0 + 744);
      sub_192084578(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, *(v0 + 776), type metadata accessor for TimelineReloadPolicy);
      v62 = type metadata accessor for WidgetViewCollection();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      v65 = swift_allocObject();
      v66 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
      v67 = sub_192224E00();
      (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
      v68 = v56;
      BundleStub.init(_:)([v57 extensionIdentity], v58);
      sub_192084510(v58, v65 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
      _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
      (*(v60 + 32))(v65 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v59, v61);
      v196 = v192;

      sub_19209B0C4(&v196);
      v137 = v65;
      v139 = v62;
      v69 = *(v0 + 696);
      v70 = *(v0 + 688);
      v71 = *(v0 + 680);
      v72 = *(v0 + 672);

      v73 = v196;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
      inited = swift_initStackObject();
      *(inited + 16) = v73;
      *(inited + 24) = 0;
      v75 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v153 = MEMORY[0x1E69E7CC0] + v75;
      v180 = *(v72 + 32);
      v190 = *(v69 + 56);
      v190(v71 + v180, 1, 1, v70);
      v171 = v69;
      v167 = inited;
      *v71 = inited;
      v71[1] = sub_1920DA3A8;
      v185 = v71;
      v71[2] = 0;
      v76 = (v69 + 48);

      v157 = 0;
      v77 = 0;
      while (2)
      {
        result = (v190)(*(v0 + 656), 1, 1, *(v0 + 688));
        while (1)
        {
          v78 = v73[2];
          if (v77 == v78)
          {
            v79 = 1;
          }

          else
          {
            if (v77 >= v78)
            {
              __break(1u);
              goto LABEL_59;
            }

            sub_192084578(v73 + v75 + *(v171 + 72) * v77, *(v0 + 648), type metadata accessor for ViewableTimelineEntry);
            v79 = 0;
            *(v167 + 24) = ++v77;
          }

          v80 = *(v0 + 688);
          v81 = *(v0 + 656);
          v82 = *(v0 + 648);
          v83 = *(v0 + 640);
          v190(v82, v79, 1, v80);
          sub_192033970(v81, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19204E300(v82, v81, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v81, v83, &qword_1EADEE9F8, &unk_19222A7D0);
          v84 = *v76;
          if ((*v76)(v83, 1, v80) == 1)
          {
            break;
          }

          v85 = *(v0 + 688);
          v86 = *(v0 + 656);
          v87 = *(v0 + 632);
          sub_192033970(*(v0 + 640), &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v86, v87, &qword_1EADEE9F8, &unk_19222A7D0);
          if (v84(v87, 1, v85) == 1)
          {
            v94 = (v0 + 632);
            goto LABEL_29;
          }

          v88 = *(v0 + 688);
          v89 = *(v0 + 624);
          sub_192084510(*(v0 + 632), *(v0 + 712), type metadata accessor for ViewableTimelineEntry);
          sub_19202CFFC(v185 + v180, v89, &qword_1EADEE9F8, &unk_19222A7D0);
          v90 = v84(v89, 1, v88);
          v91 = *(v0 + 712);
          if (v90 == 1)
          {
            sub_1920B3484(*(v0 + 712), type metadata accessor for ViewableTimelineEntry);
            v94 = (v0 + 624);
            goto LABEL_29;
          }

          v92 = *(v0 + 704);
          sub_192084510(*(v0 + 624), v92, type metadata accessor for ViewableTimelineEntry);
          v93 = sub_192225120();
          sub_1920B3484(v92, type metadata accessor for ViewableTimelineEntry);
          result = sub_1920B3484(v91, type metadata accessor for ViewableTimelineEntry);
          if ((v93 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v94 = (v0 + 640);
LABEL_29:
        sub_192033970(*v94, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_30:
        v95 = *(v0 + 688);
        v96 = *(v0 + 664);
        v97 = *(v0 + 656);
        sub_19209B16C(v97, v185 + v180);
        sub_19204E300(v97, v96, &qword_1EADEE9F8, &unk_19222A7D0);
        if (v84(v96, 1, v95) == 1)
        {
          v116 = *(v0 + 664);
          sub_192033970(*(v0 + 680), &qword_1EADEEA00, &unk_19222B660);
          result = sub_192033970(v116, &qword_1EADEE9F8, &unk_19222A7D0);
          v117 = v159[3];
          if (v117 >= 2)
          {
            v118 = v117 >> 1;
            v115 = __OFSUB__(v118, v157);
            v119 = v118 - v157;
            if (v115)
            {
LABEL_63:
              __break(1u);
              return result;
            }

            v159[2] = v119;
          }

          v120 = *(v0 + 944);
          v121 = *(v0 + 928);
          v122 = *(v0 + 776);
          v123 = *(v0 + 616);
          swift_setDeallocating();
          v124 = *(v167 + 16);

          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v159;
          v137[2] = v120;
          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v121;
          sub_192084578(v122, v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
          swift_beginAccess();
          LOBYTE(v120) = byte_1ED74B5B8;
          sub_1920B3484(v122, type metadata accessor for TimelineReloadPolicy);
          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v120;
          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
          v125 = type metadata accessor for WidgetArchiver();
          *(v0 + 368) = v139;
          *(v0 + 376) = &protocol witness table for WidgetViewCollection;
          *(v0 + 344) = v137;
          v126 = *(v123 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
          v127 = sub_1920AD1B0(v137);
          sub_192170900((v0 + 344), v127, v125, v126);
          v128 = *(v0 + 952);
          v129 = *(v0 + 936);
          v130 = *(v0 + 896);
          v131 = *(v0 + 888);
          v132 = *(v0 + 880);
          v133 = *(v0 + 872);
          v135 = *(v0 + 848);
          v136 = *(v0 + 840);
          v134 = *(v0 + 816);
          v138 = *(v0 + 832);
          v140 = *(v0 + 808);
          v142 = *(v0 + 792);
          v143 = *(v0 + 776);
          v144 = *(v0 + 768);
          v147 = *(v0 + 760);
          v150 = *(v0 + 736);
          v154 = *(v0 + 728);
          v158 = *(v0 + 720);
          v161 = *(v0 + 712);
          v164 = *(v0 + 704);
          v168 = *(v0 + 680);
          v172 = *(v0 + 664);
          v176 = *(v0 + 656);
          v181 = *(v0 + 648);
          v186 = *(v0 + 640);
          v191 = *(v0 + 632);
          v195 = *(v0 + 624);

          sub_1920B3484(v133, type metadata accessor for WidgetDescriptor);
          (*(v131 + 8))(v130, v132);
          __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          sub_1920B3484(v134, type metadata accessor for TimelineProviderContext);
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          v54 = *(v0 + 8);
          goto LABEL_11;
        }

        result = sub_192084510(*(v0 + 664), *(v0 + 720), type metadata accessor for ViewableTimelineEntry);
        v98 = v153;
        if (v157)
        {
          v99 = v159;
          v100 = v157 - 1;
          if (!__OFSUB__(v157, 1))
          {
            goto LABEL_53;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v101 = v159[3];
        if (((v101 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v102 = v101 & 0xFFFFFFFFFFFFFFFELL;
        if (v102 <= 1)
        {
          v103 = 1;
        }

        else
        {
          v103 = v102;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v104 = *(v171 + 72);
        v99 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v99);
        if (!v104)
        {
          goto LABEL_61;
        }

        v105 = result - v75;
        if (result - v75 == 0x8000000000000000 && v104 == -1)
        {
          goto LABEL_62;
        }

        v107 = v105 / v104;
        v99[2] = v103;
        v99[3] = 2 * (v105 / v104);
        v108 = v99 + v75;
        v109 = v159;
        v110 = v159[3] >> 1;
        v111 = v110 * v104;
        if (!v159[2])
        {
LABEL_52:
          v98 = &v108[v111];
          v114 = (v107 & 0x7FFFFFFFFFFFFFFFLL) - v110;

          v115 = __OFSUB__(v114, 1);
          v100 = v114 - 1;
          if (!v115)
          {
LABEL_53:
            v157 = v100;
            sub_192084510(*(v0 + 720), v98, type metadata accessor for ViewableTimelineEntry);
            v153 = v98 + *(v171 + 72);
            v159 = v99;
            continue;
          }

          goto LABEL_59;
        }

        break;
      }

      if (v99 < v159 || v108 >= v159 + v75 + v111)
      {
        v113 = *(v0 + 688);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v99 == v159)
        {
LABEL_51:
          v109[2] = 0;
          goto LABEL_52;
        }

        v112 = *(v0 + 688);
        swift_arrayInitWithTakeBackToFront();
      }

      v109 = v159;
      goto LABEL_51;
    }
  }

  v33 = *(v0 + 952);
  v174 = *(v0 + 936);
  v188 = *(v0 + 896);
  v34 = *(v0 + 888);
  v178 = *(v0 + 872);
  v183 = *(v0 + 880);
  v193 = *(v0 + 816);
  v35 = *MEMORY[0x1E69941E8];
  v36 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v37 = *MEMORY[0x1E696A278];
  v38 = sub_192227960();
  v40 = v39;
  *(v0 + 472) = MEMORY[0x1E69E6158];
  *(v0 + 448) = 0xD000000000000031;
  *(v0 + 456) = 0x80000001922490A0;
  sub_19203BEDC((v0 + 448), (v0 + 480));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v196 = v36;
  sub_19213DB28((v0 + 480), v38, v40, isUniquelyReferenced_nonNull_native);

  v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v43 = sub_192227830();

  [v42 initWithDomain:v35 code:1101 userInfo:v43];

  swift_willThrow();

  sub_1920B3484(v178, type metadata accessor for WidgetDescriptor);
  (*(v34 + 8))(v188, v183);
  sub_1920B3484(v193, type metadata accessor for TimelineProviderContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v44 = *(v0 + 896);
  v45 = *(v0 + 872);
  v46 = *(v0 + 848);
  v47 = *(v0 + 840);
  v48 = *(v0 + 832);
  v49 = *(v0 + 816);
  v50 = *(v0 + 808);
  v51 = *(v0 + 792);
  v52 = *(v0 + 776);
  v53 = *(v0 + 768);
  v146 = *(v0 + 760);
  v149 = *(v0 + 736);
  v152 = *(v0 + 728);
  v156 = *(v0 + 720);
  v160 = *(v0 + 712);
  v163 = *(v0 + 704);
  v166 = *(v0 + 680);
  v170 = *(v0 + 664);
  v175 = *(v0 + 656);
  v179 = *(v0 + 648);
  v184 = *(v0 + 640);
  v189 = *(v0 + 632);
  v194 = *(v0 + 624);

  v54 = *(v0 + 8);
LABEL_11:

  return v54();
}