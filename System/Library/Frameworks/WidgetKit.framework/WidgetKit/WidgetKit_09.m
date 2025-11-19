uint64_t ActivityViewMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBB8, &qword_1922305C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F0024();
  sub_192228B70();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v18 = 0;
    sub_1920F0458(&unk_1ED74A7A0);
    sub_1922287C0();
    v14 = v17;
    v15 = v16;
    v18 = 1;
    sub_192045184();
    sub_1922287C0();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v14;
    *a2 = v15;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1920F0370()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_192228AD0();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193B0BAC0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x193B0BAC0](*&v7);
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  v9 = v8;
  MEMORY[0x193B0BAC0](*&v8);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  v11 = v10;
  MEMORY[0x193B0BAC0](*&v10);
  MEMORY[0x193B0BAC0](*&v9);
  MEMORY[0x193B0BAC0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x193B0BAC0](*&v12);
  return sub_192228B30();
}

uint64_t sub_1920F0458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1920F04A0()
{
  result = qword_1EADEFBC0;
  if (!qword_1EADEFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBC0);
  }

  return result;
}

uint64_t sub_1920F0528(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920F0568(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920F0588(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1920F05E0()
{
  result = qword_1EADEFBC8;
  if (!qword_1EADEFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBC8);
  }

  return result;
}

unint64_t sub_1920F0638()
{
  result = qword_1EADEE240;
  if (!qword_1EADEE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE240);
  }

  return result;
}

unint64_t sub_1920F0690()
{
  result = qword_1EADEE248;
  if (!qword_1EADEE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE248);
  }

  return result;
}

uint64_t EnvironmentValues.isRemoteWidget.getter()
{
  sub_1920C869C();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues.isRemoteWidget.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920C869C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1920F07C4;
}

uint64_t sub_1920F07C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

unint64_t ControlError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1922261D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ControlError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1920F47F0(v1, v10, type metadata accessor for ControlError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = v10[1];
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000019, 0x800000019224A370);
      v27 = v12;
      v14 = sub_192228910();
      MEMORY[0x193B0A990](v14);

      MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224A390);
      v27 = v13;
      v15 = sub_192228910();
      MEMORY[0x193B0A990](v15);

      MEMORY[0x193B0A990](46, 0xE100000000000000);
      return v28;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBD8, &qword_1922308F0);
    v18 = *(v10 + *(v17 + 48));
    v19 = *(v10 + *(v17 + 64));
    (*(v3 + 32))(v6, v10, v2);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_192228400();

    v28 = 0xD00000000000001BLL;
    v29 = 0x800000019224A3B0;
    v27 = v18;
    v26 = 1;
    v20 = WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(v6, v19, &v26);

    v21 = MEMORY[0x193B0AB30](v20, MEMORY[0x1E69E6158]);
    v23 = v22;

    MEMORY[0x193B0A990](v21, v23);

    v24 = v28;
    (*(v3 + 8))(v6, v2);
    return v24;
  }
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v88 = type metadata accessor for BundleStub();
  v90 = *(v88 - 8);
  v3 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE0, &qword_1922308F8);
  v5 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE8, &qword_192230900);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v85 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v85 - v13;
  v14 = sub_192225150();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBF0, &unk_192230908);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v95 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v85 - v29;
  v93 = a1;
  sub_19202CFFC(a1, v98, &qword_1EADEFBF8, &unk_192230918);
  v31 = v99;
  if (v99)
  {
    v32 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    (*(v32 + 56))(v31, v32);
    v33 = *(v15 + 56);
    v33(v30, 0, 1, v14);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
    v33 = *(v15 + 56);
    v33(v30, 1, 1, v14);
  }

  sub_19202CFFC(v96, v98, &qword_1EADEFBF8, &unk_192230918);
  v34 = v99;
  if (v99)
  {
    v35 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    (*(v35 + 56))(v34, v35);
    v33(v28, 0, 1, v14);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
    v33(v28, 1, 1, v14);
  }

  v36 = v95;
  v37 = *(v18 + 48);
  sub_19202CFFC(v30, v21, &qword_1EADEED10, &unk_19222B0F0);
  sub_19202CFFC(v28, &v21[v37], &qword_1EADEED10, &unk_19222B0F0);
  v38 = *(v15 + 48);
  if (v38(v21, 1, v14) == 1)
  {
    sub_192033970(v28, &qword_1EADEED10, &unk_19222B0F0);
    sub_192033970(v30, &qword_1EADEED10, &unk_19222B0F0);
    if (v38(&v21[v37], 1, v14) == 1)
    {
      sub_192033970(v21, &qword_1EADEED10, &unk_19222B0F0);
      goto LABEL_15;
    }

LABEL_12:
    v39 = &qword_1EADEFBF0;
    v40 = &unk_192230908;
    v41 = v21;
LABEL_13:
    sub_192033970(v41, v39, v40);
LABEL_39:
    v60 = 0;
    return v60 & 1;
  }

  sub_19202CFFC(v21, v36, &qword_1EADEED10, &unk_19222B0F0);
  if (v38(&v21[v37], 1, v14) == 1)
  {
    sub_192033970(v28, &qword_1EADEED10, &unk_19222B0F0);
    sub_192033970(v30, &qword_1EADEED10, &unk_19222B0F0);
    (*(v15 + 8))(v36, v14);
    goto LABEL_12;
  }

  v42 = &v21[v37];
  v43 = v92;
  (*(v15 + 32))(v92, v42, v14);
  sub_1920F47A8(&qword_1EADEDEE8, MEMORY[0x1E6969530]);
  v44 = sub_192227910();
  v45 = *(v15 + 8);
  v45(v43, v14);
  sub_192033970(v28, &qword_1EADEED10, &unk_19222B0F0);
  sub_192033970(v30, &qword_1EADEED10, &unk_19222B0F0);
  v45(v36, v14);
  sub_192033970(v21, &qword_1EADEED10, &unk_19222B0F0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v46 = v93;
  sub_19202CFFC(v93, v98, &qword_1EADEFBF8, &unk_192230918);
  v47 = v99;
  if (v99)
  {
    v48 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v47 = (*(v48 + 72))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
  }

  v49 = v94;
  sub_19202CFFC(v96, v98, &qword_1EADEFBF8, &unk_192230918);
  v50 = v99;
  if (!v99)
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
    if (!v47)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v51 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v52 = (*(v51 + 72))(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v98);
  if (!v47)
  {
    if (v52)
    {

      goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (!v52)
  {
LABEL_24:

    goto LABEL_39;
  }

  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v53 = sub_1922281D0();

  if ((v53 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_27:
  sub_19202CFFC(v46, v98, &qword_1EADEFBF8, &unk_192230918);
  v54 = v99;
  if (v99)
  {
    v55 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v54 = (*(v55 + 80))(v54, v55);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
  }

  sub_19202CFFC(v96, v98, &qword_1EADEFBF8, &unk_192230918);
  v56 = v99;
  if (!v99)
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
    if (!v54)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v57 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v58 = (*(v57 + 80))(v56, v57);
  __swift_destroy_boxed_opaque_existential_1(v98);
  if (!v54)
  {
    if (!v58)
    {
      goto LABEL_41;
    }

LABEL_38:

    goto LABEL_39;
  }

  v98[0] = v54;
  if (!v58)
  {
    goto LABEL_38;
  }

  v97 = v58;
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADECEE0, MEMORY[0x1E6994010]);
  v59 = sub_192227910();

  if ((v59 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_41:
  sub_19202CFFC(v46, v98, &qword_1EADEFBF8, &unk_192230918);
  v62 = v99;
  if (v99)
  {
    v63 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    (*(v63 + 48))(&v97, v62, v63);
    v64 = v97;
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
    v64 = 0;
  }

  sub_19202CFFC(v96, v98, &qword_1EADEFBF8, &unk_192230918);
  v65 = v99;
  if (!v99)
  {
    sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
    if (v62)
    {
      goto LABEL_39;
    }

    goto LABEL_50;
  }

  v66 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  (*(v66 + 48))(&v97, v65, v66);
  v68 = v97;
  v67 = HIDWORD(v97);
  __swift_destroy_boxed_opaque_existential_1(v98);
  v60 = 0;
  if (v62 && v68 == v64 && !((v64 ^ (v67 << 32)) >> 32))
  {
LABEL_50:
    sub_19202CFFC(v46, v98, &qword_1EADEFBF8, &unk_192230918);
    v69 = v99;
    if (v99)
    {
      v70 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v71 = v69;
      v72 = v91;
      (*(v70 + 40))(v71, v70);
      v73 = *(v90 + 56);
      v74 = v88;
      v73(v72, 0, 1, v88);
      __swift_destroy_boxed_opaque_existential_1(v98);
    }

    else
    {
      sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
      v73 = *(v90 + 56);
      v74 = v88;
      v73(v91, 1, 1, v88);
    }

    v75 = v89;
    sub_19202CFFC(v96, v98, &qword_1EADEFBF8, &unk_192230918);
    v76 = v99;
    if (v99)
    {
      v77 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      (*(v77 + 40))(v76, v77);
      v78 = v90;
      v73(v49, 0, 1, v74);
      __swift_destroy_boxed_opaque_existential_1(v98);
    }

    else
    {
      sub_192033970(v98, &qword_1EADEFBF8, &unk_192230918);
      v78 = v90;
      v73(v49, 1, 1, v74);
    }

    v79 = *(v87 + 48);
    v80 = v91;
    sub_19202CFFC(v91, v75, &qword_1EADEFBE8, &qword_192230900);
    sub_19202CFFC(v49, v75 + v79, &qword_1EADEFBE8, &qword_192230900);
    v81 = *(v78 + 48);
    if (v81(v75, 1, v74) == 1)
    {
      sub_192033970(v49, &qword_1EADEFBE8, &qword_192230900);
      sub_192033970(v80, &qword_1EADEFBE8, &qword_192230900);
      if (v81(v75 + v79, 1, v74) == 1)
      {
        sub_192033970(v75, &qword_1EADEFBE8, &qword_192230900);
        v60 = 1;
        return v60 & 1;
      }
    }

    else
    {
      v82 = v86;
      sub_19202CFFC(v75, v86, &qword_1EADEFBE8, &qword_192230900);
      if (v81(v75 + v79, 1, v74) != 1)
      {
        v83 = v75 + v79;
        v84 = v85;
        sub_19203D0F8(v83, v85, type metadata accessor for BundleStub);
        v60 = _s9WidgetKit10BundleStubV2eeoiySbAC_ACtFZ_0(v82, v84);
        sub_1920F4878(v84, type metadata accessor for BundleStub);
        sub_192033970(v49, &qword_1EADEFBE8, &qword_192230900);
        sub_192033970(v91, &qword_1EADEFBE8, &qword_192230900);
        sub_1920F4878(v82, type metadata accessor for BundleStub);
        sub_192033970(v75, &qword_1EADEFBE8, &qword_192230900);
        return v60 & 1;
      }

      sub_192033970(v49, &qword_1EADEFBE8, &qword_192230900);
      sub_192033970(v91, &qword_1EADEFBE8, &qword_192230900);
      sub_1920F4878(v82, type metadata accessor for BundleStub);
    }

    v39 = &qword_1EADEFBE0;
    v40 = &qword_1922308F8;
    v41 = v75;
    goto LABEL_13;
  }

  return v60 & 1;
}

uint64_t ControlArchive.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_192228400();

  v19 = 60;
  v20 = 0xE100000000000000;
  v9 = sub_192228BD0();
  MEMORY[0x193B0A990](v9);

  MEMORY[0x193B0A990](0x6F72746E6F63203ALL, 0xEA00000000003D6CLL);
  v10 = (*(a2 + 72))(a1, a2);
  v11 = [v10 description];
  v12 = sub_192227960();
  v14 = v13;

  MEMORY[0x193B0A990](v12, v14);

  MEMORY[0x193B0A990](0x3D6574617473202CLL, 0xE800000000000000);
  v18[1] = (*(a2 + 80))(a1, a2);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEEE00, MEMORY[0x1E6994010]);
  v15 = sub_192228910();
  MEMORY[0x193B0A990](v15);

  MEMORY[0x193B0A990](0x697461657263202CLL, 0xEF3D657461446E6FLL);
  (*(a2 + 56))(a1, a2);
  sub_1920F47A8(&qword_1EADEFC00, MEMORY[0x1E6969530]);
  v16 = sub_192228910();
  MEMORY[0x193B0A990](v16);

  (*(v5 + 8))(v8, v4);
  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v19;
}

void ControlArchive.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_192225150();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 56))(a2, a3);
  sub_1920F47A8(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  (*(v6 + 8))(v9, v5);
  v10 = (*(a3 + 72))(a2, a3);
  sub_1922281E0();

  v14 = (*(a3 + 80))(a2, a3);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEFC08, MEMORY[0x1E6994010]);
  sub_192227890();

  (*(a3 + 64))(&v14, a2, a3);
  v11 = v14;
  v12 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v12);
}

uint64_t ControlArchiveMock.__allocating_init(control:state:environment:template:date:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v52 = a4;
  v48 = a1;
  v49 = a2;
  v53 = type metadata accessor for ControlArchiveStorage(0);
  v7 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BundleStub();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192225150();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v22 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a3;
  v50 = v15;
  v51 = a5;
  v26 = *(v15 + 16);
  v26(v21, a5, v14);
  v54 = v15 + 16;
  v55 = v26;
  v26(v19, v21, v14);
  v27 = v48;
  BundleStub.init(_:)([v48 extensionIdentity], v13);
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v25[v22[6]] = v27;
  v28 = qword_1ED74BAA0;
  sub_1920F47F0(v13, v25, type metadata accessor for BundleStub);
  v55(&v25[v22[8]], v19, v14);
  *&v25[v22[5]] = v28;
  v56 = v47;
  WidgetEnvironment.filterForControlArchiving()();
  sub_1920F4878(v13, type metadata accessor for BundleStub);
  v29 = *(v50 + 8);
  v29(v19, v14);
  v29(v21, v14);
  *&v25[v22[7]] = v56;
  *&v25[v22[9]] = v49;
  sub_1920F47F0(v25, v9, type metadata accessor for ControlArchiveStorageMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBA0, &unk_19222AF80);
  v30 = *(type metadata accessor for ControlTemplateType(0) - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_19222B480;
  v34 = v52;
  sub_1920F47F0(v52, v33 + v32, type metadata accessor for ControlTemplateType);
  v35 = sub_192140634(MEMORY[0x1E69E7CC0]);
  v29(v51, v14);
  sub_1920F4878(v34, type metadata accessor for ControlTemplateType);
  sub_1920F4878(v25, type metadata accessor for ControlArchiveStorageMetadata);
  v36 = v53;
  *&v9[*(v53 + 20)] = v33;
  *&v9[*(v36 + 28)] = 2;
  *&v9[*(v36 + 24)] = v35;
  v37 = type metadata accessor for ControlArchiveMock(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  sub_1920F47F0(v9, v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  *(v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v9[v22[5]];
  v55((v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate), &v9[v22[8]], v14);
  v41 = *&v9[v22[7]];
  *(v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v41;
  v42 = *&v9[v22[6]];
  *(v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v42;
  *(v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v9[v22[9]];
  sub_19203D0F8(v9, v40 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v43 = v41;
  v44 = v42;

  return v40;
}

uint64_t sub_1920F251C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v5 = *(v3 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for ControlTemplateType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920F25D4()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  return v0;
}

uint64_t sub_1920F26B0()
{
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1920F26F8()
{
  v1 = v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v2 = *(v1 + *(type metadata accessor for ControlArchiveStorage(0) + 20));
}

uint64_t sub_1920F2740()
{
  v1 = v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v2 = *(v1 + *(type metadata accessor for ControlArchiveStorage(0) + 24));
}

uint64_t sub_1920F2788@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ControlArchiveStorage(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  sub_1920F47F0(v11, &v26 - v9, type metadata accessor for ControlArchiveStorageMetadata);
  v12 = *(v11 + v4[8]);
  *&v10[v4[7]] = MEMORY[0x1E69E7CC0];
  *&v10[v4[9]] = 2;
  *&v10[v4[8]] = v12;
  sub_1920F47F0(v10, v8, type metadata accessor for ControlArchiveStorage);
  v13 = type metadata accessor for StorageBackedControlArchive(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_1920F47F0(v8, v16 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v17 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v16 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v8[v17[5]];
  v18 = v17[8];
  v19 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v20 = sub_192225150();
  (*(*(v20 - 8) + 16))(v16 + v19, &v8[v18], v20);
  v21 = *&v8[v17[7]];
  *(v16 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v21;
  v22 = *&v8[v17[6]];
  *(v16 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v22;
  *(v16 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v8[v17[9]];
  sub_19203D0F8(v8, v16 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  a1[3] = v13;
  a1[4] = sub_1920F47A8(&qword_1EADED5D0, type metadata accessor for StorageBackedControlArchive);
  *a1 = v16;

  v23 = v21;
  v24 = v22;

  return sub_1920F4878(v10, type metadata accessor for ControlArchiveStorage);
}

uint64_t sub_1920F2A28@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v5 = *(v3 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for ControlTemplateType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920F2B08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ControlArchiveStorage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1920F47F0(v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, v8, type metadata accessor for ControlArchiveStorage);
  v9 = type metadata accessor for StateOverridenControlArchive(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC9WidgetKit28StateOverridenControlArchive__state) = a1;
  sub_1920F47F0(v8, v12 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v13 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v12 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v8[v13[5]];
  v14 = v13[8];
  v15 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v16 = sub_192225150();
  (*(*(v16 - 8) + 16))(v12 + v15, &v8[v14], v16);
  v17 = *&v8[v13[7]];
  *(v12 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v17;
  v18 = *&v8[v13[6]];
  *(v12 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v18;
  *(v12 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v8[v13[9]];
  sub_19203D0F8(v8, v12 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  a2[3] = v9;
  a2[4] = sub_1920F47A8(&qword_1EADEFC18, type metadata accessor for StateOverridenControlArchive);
  *a2 = v12;

  v19 = v17;
  v20 = v18;
}

uint64_t sub_1920F2D2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ControlArchiveStorage(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  sub_1920F47F0(v13, &v28 - v11, type metadata accessor for ControlArchiveStorageMetadata);
  v14 = *(v13 + v6[8]);
  *&v12[v6[7]] = a1;
  *&v12[v6[9]] = 2;
  *&v12[v6[8]] = v14;
  sub_1920F47F0(v12, v10, type metadata accessor for ControlArchiveStorage);
  v15 = type metadata accessor for StorageBackedControlArchive(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_1920F47F0(v10, v18 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v19 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v18 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v10[v19[5]];
  v20 = v19[8];
  v21 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v22 = sub_192225150();
  (*(*(v22 - 8) + 16))(v18 + v21, &v10[v20], v22);
  v23 = *&v10[v19[7]];
  *(v18 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v23;
  v24 = *&v10[v19[6]];
  *(v18 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v24;
  *(v18 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v10[v19[9]];
  sub_19203D0F8(v10, v18 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  a2[3] = v15;
  a2[4] = sub_1920F47A8(&qword_1EADED5D0, type metadata accessor for StorageBackedControlArchive);
  *a2 = v18;

  v25 = v23;
  v26 = v24;

  return sub_1920F4878(v12, type metadata accessor for ControlArchiveStorage);
}

void *StorageBackedControlArchive.__allocating_init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for ControlArchiveStorage(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v19 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFC20, &qword_192230928);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v19 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F4918();
  sub_192228B70();
  if (!v1)
  {
    v15 = v9;
    v16 = v19;
    sub_1920F47A8(&qword_1EADED888, type metadata accessor for ControlArchiveStorage);
    v17 = v20;
    sub_1922287C0();
    sub_1920F47F0(v17, v7, type metadata accessor for ControlArchiveStorage);
    v14 = (*(v16 + 176))(v7);
    sub_1920F4878(v17, type metadata accessor for ControlArchiveStorage);
    (*(v15 + 8))(v12, v21);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t sub_1920F3268(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFC30, &qword_192230930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F4918();
  sub_192228B90();
  type metadata accessor for ControlArchiveStorage(0);
  sub_1920F47A8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage);
  sub_1922288C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1920F33E8()
{
  v1 = v0;
  sub_192228AD0();
  sub_192225150();
  sub_1920F47A8(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control);
  v3 = sub_1922281E0();
  (*(*v1 + 136))(v3);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEFC08, MEMORY[0x1E6994010]);
  sub_192227890();

  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  v5 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v5);
  return sub_192228B30();
}

double StorageBackedControlArchive.systemVersion.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion);
  *a1 = result;
  return result;
}

uint64_t StorageBackedControlArchive.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v4 = sub_192225150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id StorageBackedControlArchive.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  *a1 = v2;
  return v2;
}

uint64_t sub_1920F362C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1920F3694(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  sub_1920F47F0(a1, v6 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v7 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v6 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *(a1 + v7[5]);
  v8 = v7[8];
  v9 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v10 = sub_192225150();
  (*(*(v10 - 8) + 16))(v6 + v9, a1 + v8, v10);
  v11 = *(a1 + v7[7]);
  *(v6 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v11;
  v12 = *(a1 + v7[6]);
  *(v6 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v12;
  *(v6 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *(a1 + v7[9]);
  sub_19203D0F8(a1, v6 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v13 = v11;
  v14 = v12;

  return v6;
}

uint64_t sub_1920F37E8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment;
  v27 = *(v3 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  v9 = v27;
  v10 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, a2);
  v12 = v11;

  if (v12)
  {
    type metadata accessor for ControlError(0);
    sub_1920F47A8(&qword_1EADEFC38, type metadata accessor for ControlError);
    swift_allocError();
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBD8, &qword_1922308F0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 64);
    v18 = sub_1922261D0();
    (*(*(v18 - 8) + 16))(v14, a1, v18);
    v19 = *(v4 + v8);
    *(v14 + v16) = v19;
    *(v14 + v17) = a2;
    swift_storeEnumTagMultiPayload();
    v20 = v19;

    return swift_willThrow();
  }

  v21 = v4 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v23 = *(v21 + *(result + 20));
  if (v10 >= *(v23 + 16))
  {
    type metadata accessor for ControlError(0);
    sub_1920F47A8(&qword_1EADEFC38, type metadata accessor for ControlError);
    swift_allocError();
    v25 = *(v23 + 16);
    *v26 = v10;
    v26[1] = v25;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v10, a3, type metadata accessor for ControlTemplateType);
  }

  return result;
}

uint64_t sub_1920F3A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1920F3B18(uint64_t a1)
{
  v2 = sub_1920F4918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920F3B54(uint64_t a1)
{
  v2 = sub_1920F4918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s9WidgetKit18ControlArchiveMockCfD_0()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_1920F3CE4@<D0>(double *a1@<X8>)
{
  result = *(*v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion);
  *a1 = result;
  return result;
}

uint64_t sub_1920F3CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v5 = sub_192225150();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_1920F3D78@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  *a1 = v2;
  return v2;
}

uint64_t sub_1920F3DE8()
{
  v1 = *v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v2 = *(v1 + *(type metadata accessor for ControlArchiveStorage(0) + 20));
}

uint64_t sub_1920F3E34()
{
  v1 = *v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v2 = *(v1 + *(type metadata accessor for ControlArchiveStorage(0) + 24));
}

uint64_t sub_1920F3E80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v5 = *(v3 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for ControlTemplateType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920F3FD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1920F4010(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFC30, &qword_192230930);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F4918();
  sub_192228B90();
  type metadata accessor for ControlArchiveStorage(0);
  sub_1920F47A8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage);
  sub_1922288C0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1920F41A4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192225150();
  sub_1920F47A8(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control);
  v3 = sub_1922281E0();
  (*(*v1 + 136))(v3);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEFC08, MEMORY[0x1E6994010]);
  sub_192227890();

  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  v5 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v5);
  return sub_192228B30();
}

void sub_1920F42FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  ControlArchive.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_1920F435C(uint64_t a1, uint64_t a2)
{
  sub_192228AD0();
  WitnessTable = swift_getWitnessTable();
  ControlArchive.hash(into:)(v5, a2, WitnessTable);
  return sub_192228B30();
}

uint64_t sub_1920F43C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ControlArchive.description.getter(a1, WitnessTable);
}

uint64_t StateOverridenControlArchive.deinit()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v4 = *(v0 + OBJC_IVAR____TtC9WidgetKit28StateOverridenControlArchive__state);

  return v0;
}

uint64_t StateOverridenControlArchive.__deallocating_deinit()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v4 = *(v0 + OBJC_IVAR____TtC9WidgetKit28StateOverridenControlArchive__state);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s9WidgetKit27StorageBackedControlArchiveC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = *(a1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control);
  v5 = *(a2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control);
  if ((sub_1922281D0() & 1) == 0)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v7 = a1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v8 = type metadata accessor for ControlArchiveStorage(0);
  if (*(*(v7 + *(v8 + 20)) + 16) != *(*(a2 + v6 + *(v8 + 20)) + 16))
  {
    return 0;
  }

  v9 = *(v8 + 24);
  v10 = *(v7 + v9);
  v11 = *(a2 + v6 + v9);

  return sub_1920C0620(v10, v11);
}

uint64_t sub_1920F47A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1920F47F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920F4878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1920F4918()
{
  result = qword_1EADEFC28;
  if (!qword_1EADEFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC28);
  }

  return result;
}

uint64_t sub_1920F49B4(void *a1)
{
  a1[1] = sub_1920F47A8(&qword_1EADED5D8, type metadata accessor for StorageBackedControlArchive);
  a1[2] = sub_1920F47A8(&qword_1EADED5E0, type metadata accessor for StorageBackedControlArchive);
  a1[3] = sub_1920F47A8(&qword_1EADED5F8, type metadata accessor for StorageBackedControlArchive);
  result = sub_1920F47A8(&qword_1EADED5F0, type metadata accessor for StorageBackedControlArchive);
  a1[4] = result;
  return result;
}

void sub_1920F4B20()
{
  sub_1920F4B94();
  if (v0 <= 0x3F)
  {
    sub_1920F4C1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1920F4B94()
{
  if (!qword_1EADEFC50)
  {
    sub_1922261D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFC58, &qword_192230AD8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADEFC50);
    }
  }
}

void sub_1920F4C1C()
{
  if (!qword_1EADEFC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADEFC60);
    }
  }
}

uint64_t sub_1920F4DDC()
{
  result = type metadata accessor for BundleStub();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_192225150();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ControlArchiveStorage(319);
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1920F5188()
{
  result = qword_1EADEFC88;
  if (!qword_1EADEFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC88);
  }

  return result;
}

unint64_t sub_1920F51E0()
{
  result = qword_1EADEFC90;
  if (!qword_1EADEFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC90);
  }

  return result;
}

unint64_t sub_1920F5238()
{
  result = qword_1EADEFC98;
  if (!qword_1EADEFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC98);
  }

  return result;
}

uint64_t WidgetAccentedRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t Image.widgetAccentedRenderingMode(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *a3 = a2;
  *(a3 + 8) = v3;
}

unint64_t sub_1920F539C()
{
  result = qword_1EADEFCA0;
  if (!qword_1EADEFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCA0);
  }

  return result;
}

unint64_t sub_1920F5400()
{
  result = qword_1ED748C88;
  if (!qword_1ED748C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFCA8, &unk_192230D90);
    sub_1920F548C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C88);
  }

  return result;
}

unint64_t sub_1920F548C()
{
  result = qword_1ED748C30;
  if (!qword_1ED748C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C30);
  }

  return result;
}

uint64_t sub_1920F54E0()
{
  v0 = sub_192225B10();
  __swift_allocate_value_buffer(v0, qword_1ED74C7B8);
  __swift_project_value_buffer(v0, qword_1ED74C7B8);
  return sub_192225B00();
}

uint64_t sub_1920F5568()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = off_1F06B72D8;
  v2 = type metadata accessor for ControlCenterClient();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1920F5B54;

  return (v6)(v2, &off_1F06B72C0);
}

uint64_t ControlCenter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1920F577C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = off_1F06B72D8;
  v2 = type metadata accessor for ControlCenterClient();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1920F58C0;

  return (v6)(v2, &off_1F06B72C0);
}

uint64_t sub_1920F58C0(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

Swift::Void __swiftcall ControlCenter.reloadAllControls(forBundleIdentifier:)(Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v4 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1921EAB48(countAndFlagsBits, object);
}

uint64_t dispatch thunk of ControlCenter.currentControls()()
{
  v2 = *(*v0 + 96);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF2F4;

  return v6();
}

uint64_t ControlInfo.init(control:pushInfo:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1920F5B80, 0, 0);
}

uint64_t sub_1920F5B80()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  *(v4 + 16) = xmmword_19222A790;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = [v5 kind];
  v7 = sub_192227960();
  v9 = v8;

  *v4 = v7;
  *(v4 + 8) = v9;
  sub_192046ED4(0, 0xF000000000000000);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v10 = [v5 intentReference];

  if (v10)
  {
    v11 = [v10 intent];
    v0[15] = v11;

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 linkAction];
        v14 = v13;
        if (v13)
        {
          v13 = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
        }

        else
        {
          v0[8] = 0;
          v0[9] = 0;
        }

        v0[7] = v14;
        v0[10] = v13;
        v18 = *(MEMORY[0x1E6959D08] + 4);
        v19 = swift_task_alloc();
        v0[16] = v19;
        *v19 = v0;
        v19[1] = sub_1920F5D90;

        return MEMORY[0x1EEDB29B0](v0 + 2, v0 + 7);
      }
    }
  }

  v15 = v0[11];
  *(v15 + 72) = 0;
  *(v15 + 56) = 0u;
  *(v15 + 40) = 0u;
  v16 = v0[1];

  return v16();
}

uint64_t sub_1920F5D90()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_1920F5F34;
  }

  else
  {
    sub_192030F04(v2 + 56);
    v5 = sub_1920F5EBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1920F5EBC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 16);
  *(v1 + 72) = v2;
  *(v1 + 56) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1920F5F34()
{
  sub_192030F04(v0 + 56);
  v1 = *(v0 + 88);
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ControlInfo.configurationIntent<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1920D93EC(v2 + 40, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF888, &qword_19222EAB0);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t ControlInfo.kind.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlInfo.pushInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_19206A874(v2, v3);
}

uint64_t ControlInfo.pushInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_192046ED4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ControlInfo.id.getter()
{
  v1 = *(v0 + 32);
  sub_1922281F0();
  return sub_192228910();
}

uint64_t static ControlInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  return sub_1922281D0() & 1;
}

uint64_t ControlInfo.hashValue.getter()
{
  sub_192228AD0();
  v1 = *(v0 + 32);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_1920F61F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_1922281F0();
  result = sub_192228910();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1920F6240()
{
  sub_192228AD0();
  v1 = *(v0 + 32);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_1920F62A8()
{
  sub_192228AD0();
  v1 = *(v0 + 32);
  sub_1922281E0();
  return sub_192228B30();
}

unint64_t sub_1920F62F8()
{
  result = qword_1EADEFCB0;
  if (!qword_1EADEFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCB0);
  }

  return result;
}

uint64_t sub_1920F634C(uint64_t a1, uint64_t a2)
{
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  return sub_1922281D0() & 1;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit15ControlPushInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920F63C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1920F6410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920F6474()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1920F6508()
{
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_1920F6588()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1920F6618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1920F66FC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (*a2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (*a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (v2 != 1)
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {

    v9 = 1;
  }

  else
  {
    v10 = sub_1922289A0();

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1920F67F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {

    v9 = 1;
  }

  else
  {
    v10 = sub_1922289A0();

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1920F68EC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (*a2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (*a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (v2 != 1)
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1920F69F8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920EF2F4;

  return v9(a1, a2);
}

uint64_t sub_1920F6B10()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t HideViewInCarPlayModifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t HideViewInCarPlayModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v2;
  if (*(v2 + 8) != 1)
  {
    v11 = *v2;

    sub_192227FA0();
    v12 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v10, 0);
    (*(v6 + 8))(v9, v5);
    LOBYTE(v10) = v16[15];
  }

  if (v10)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC8, &qword_1922311D8);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCD0, &qword_1922311E0);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1920F6E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1920F7488();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1920F6EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1920F7488();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1920F6FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 8);
  if (sub_1920F6B10())
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC8, &qword_1922311D8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCD0, &qword_1922311E0);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1920F7088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t View.hideViewInCarPlay()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x193B0A190](&KeyPath, a1, &type metadata for HideViewInCarPlayModifier, a2);
  return sub_192049898(KeyPath, v6);
}

uint64_t sub_1920F713C@<X0>(_BYTE *a1@<X8>)
{
  sub_1920F74DC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1920F718C(char *a1)
{
  v2 = *a1;
  sub_1920F74DC();
  return sub_1922261F0();
}

unint64_t sub_1920F71F8()
{
  result = qword_1EADEFCD8;
  if (!qword_1EADEFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCD8);
  }

  return result;
}

unint64_t sub_1920F7250()
{
  result = qword_1EADEFCE0;
  if (!qword_1EADEFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCE0);
  }

  return result;
}

unint64_t sub_1920F72A8()
{
  result = qword_1EADEFCE8;
  if (!qword_1EADEFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCE8);
  }

  return result;
}

uint64_t sub_1920F72FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1920F7344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1920F7398()
{
  result = qword_1EADEFCF0;
  if (!qword_1EADEFCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFCD0, &qword_1922311E0);
    sub_1920F7424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCF0);
  }

  return result;
}

unint64_t sub_1920F7424()
{
  result = qword_1EADEFCF8;
  if (!qword_1EADEFCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFCC8, &qword_1922311D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCF8);
  }

  return result;
}

unint64_t sub_1920F7488()
{
  result = qword_1EADEFD00;
  if (!qword_1EADEFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFD00);
  }

  return result;
}

unint64_t sub_1920F74DC()
{
  result = qword_1EADECD80;
  if (!qword_1EADECD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD80);
  }

  return result;
}

uint64_t sub_1920F7530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910) + 48);
  sub_19202A98C(a1, a2);
  sub_192228430();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v5 = sub_192228910();
  MEMORY[0x193B0A990](v5);

  sub_192228480();
  v6 = *MEMORY[0x1E69E6B30];
  v7 = sub_1922284C0();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

unsigned __int8 *EnvironmentValues.widgetFamily.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  sub_1922261E0();
  v3[0] = v3[1];
  return sub_19206E384(v3, a1);
}

uint64_t EnvironmentValues.chsWidgetFamily.getter()
{
  sub_19203B36C();
  sub_1922261E0();
  v1[0] = v1[1];
  return _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(v1);
}

uint64_t EnvironmentValues.internalWidgetFamily.getter()
{
  sub_19203B36C();

  return sub_1922261E0();
}

uint64_t (*EnvironmentValues._widgetFamily.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_19203B36C();
  sub_1922261E0();
  return sub_1920F77A4;
}

uint64_t sub_1920F77A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t EnvironmentValues.levelOfDetail.getter()
{
  sub_19205337C();

  return sub_1922261E0();
}

WidgetKit::LevelOfDetail::Storage_optional __swiftcall LevelOfDetail.Storage.init(rawValue:)(Swift::Int rawValue)
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

uint64_t (*EnvironmentValues.levelOfDetail.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_19205337C();
  sub_1922261E0();
  return sub_1920F79E8;
}

uint64_t sub_1920F79E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

unint64_t sub_1920F7A24()
{
  result = qword_1EADEFD10;
  if (!qword_1EADEFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFD10);
  }

  return result;
}

unint64_t sub_1920F7A88()
{
  result = qword_1EADEFD18;
  if (!qword_1EADEFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFD18);
  }

  return result;
}

uint64_t sub_1920F7ADC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for MetricsRequest();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = *a1;
  v15 = type metadata accessor for CommonActivityArchivingModifiers();
  v16 = *(v15 + 20);
  sub_1920F8D30(a2, &a3[v16]);
  sub_1920F864C(&a3[v16], v14);
  sub_1920F883C(&v14[*(v11 + 48)], v9);
  v17 = sub_192226600();
  LODWORD(a2) = (*(*(v17 - 8) + 48))(v9, 1, v17);
  sub_1920F88AC(v9);
  if (a2 == 1)
  {
    v18 = *a3;
    if (v18 <= 1)
    {
      if (!*a3)
      {
        v19 = type metadata accessor for ExpandedJindoActivityFontDefinition();
        v20 = &unk_1EADED3E0;
        v21 = type metadata accessor for ExpandedJindoActivityFontDefinition;
        goto LABEL_10;
      }
    }

    else if (v18 != 2 && v18 != 3)
    {
      v19 = type metadata accessor for DefaultActivityFontDefinition();
      v20 = &unk_1EADED4B0;
      v21 = type metadata accessor for DefaultActivityFontDefinition;
LABEL_10:
      v22 = v21;
      goto LABEL_11;
    }

    v19 = type metadata accessor for CompactJindoActivityFontDefinition();
    v20 = &unk_1EADED3E8;
    v21 = type metadata accessor for CompactJindoActivityFontDefinition;
    goto LABEL_10;
  }

  v19 = type metadata accessor for RectangularHomeScreenComplicationFontDefinition();
  v20 = &unk_1EADEFD80;
  v22 = type metadata accessor for RectangularHomeScreenComplicationFontDefinition;
LABEL_11:
  result = sub_1920F8D94(v20, v22);
  v24 = &a3[*(v15 + 24)];
  *v24 = v19;
  v24[1] = result;
  return result;
}

uint64_t sub_1920F7D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v64 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD28, &qword_192231690);
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v51 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD30, &qword_192231698);
  v5 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v53 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v51 - v9;
  v10 = type metadata accessor for MetricsRequest();
  v11 = *(v10 - 8);
  v59 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_192226600();
  v57 = *(v55 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192225D60();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD40, &qword_1922316A8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  v24 = type metadata accessor for CommonActivityArchivingModifiers();
  v25 = v2 + *(v24 + 20);
  v26 = *(v25 + 48);
  v27 = *(v16 + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_192226560();
  (*(*(v29 - 8) + 104))(&v19[v27], v28, v29);
  *v19 = v26;
  *(v19 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD48, &qword_1922316B0);
  sub_192031E74(&qword_1EADEDD18, &qword_1EADEFD48, &qword_1922316B0);
  sub_1920F8D94(&qword_1ED74B850, MEMORY[0x1E697EAF0]);
  v31 = v55;
  v30 = v56;
  sub_1922270A0();
  sub_1920F87DC(v19, MEMORY[0x1E697EAF0]);
  KeyPath = swift_getKeyPath();
  v33 = *(v24 + 24);
  v34 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD50, &qword_1922316E8) + 36)];
  *v34 = KeyPath;
  *(v34 + 8) = *(v54 + v33);
  v35 = swift_getKeyPath();
  v36 = *(v25 + 104);
  v37 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD58, &qword_192231718) + 36)];
  *v37 = v35;
  v37[8] = v36 < 1.2;
  v38 = swift_getKeyPath();
  v39 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD60, &qword_192231748) + 36)];
  *v39 = v38;
  v39[8] = v36 >= 1.2;
  v40 = swift_getKeyPath();
  v60 = v20;
  v41 = &v23[*(v20 + 36)];
  *v41 = v40;
  v41[8] = 0;
  v42 = v25;
  v44 = v57;
  v43 = v58;
  sub_1920F864C(v42, v58);
  sub_1920F883C(v43 + *(v59 + 48), v30);
  if ((*(v44 + 48))(v30, 1, v31) == 1)
  {
    sub_1920F88AC(v30);
    sub_19202CFFC(v23, v63, &qword_1EADEFD40, &qword_1922316A8);
    swift_storeEnumTagMultiPayload();
    sub_1920F8914();
    sub_1920F89CC();
    sub_1922266E0();
  }

  else
  {
    v45 = v52;
    (*(v44 + 32))(v52, v30, v31);
    v46 = swift_getKeyPath();
    v47 = v53;
    v48 = &v53[*(v62 + 36)];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD78, &qword_192231788);
    (*(v44 + 16))(v48 + *(v49 + 28), v45, v31);
    *v48 = v46;
    sub_19202CFFC(v23, v47, &qword_1EADEFD40, &qword_1922316A8);
    sub_19202CFFC(v47, v63, &qword_1EADEFD30, &qword_192231698);
    swift_storeEnumTagMultiPayload();
    sub_1920F8914();
    sub_1920F89CC();
    sub_1922266E0();
    sub_192033970(v47, &qword_1EADEFD30, &qword_192231698);
    (*(v44 + 8))(v45, v31);
  }

  return sub_192033970(v23, &qword_1EADEFD40, &qword_1922316A8);
}

uint64_t sub_1920F83F4(uint64_t a1)
{
  v2 = sub_192226600();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_192226190();
}

uint64_t View.applyCommonEnvironment(viewTag:metricsRequest:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MetricsRequest();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CommonActivityArchivingModifiers();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  sub_1920F864C(a2, v11);
  sub_1920F7ADC(&v18, v11, v15);
  MEMORY[0x193B0A190](v15, a3, v12, a4);
  return sub_1920F87DC(v15, type metadata accessor for CommonActivityArchivingModifiers);
}

uint64_t type metadata accessor for CommonActivityArchivingModifiers()
{
  result = qword_1EADED3F8;
  if (!qword_1EADED3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1920F864C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920F86D8()
{
  result = type metadata accessor for MetricsRequest();
  if (v1 <= 0x3F)
  {
    result = sub_1920F876C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1920F876C()
{
  result = qword_1EADEDE60;
  if (!qword_1EADEDE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD20, &qword_192231638);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EADEDE60);
  }

  return result;
}

uint64_t sub_1920F87DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920F883C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920F88AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1920F8914()
{
  result = qword_1EADEDDB8;
  if (!qword_1EADEDDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD30, &qword_192231698);
    sub_1920F89CC();
    sub_192031E74(&qword_1EADEDCE0, &qword_1EADEFD78, &qword_192231788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDB8);
  }

  return result;
}

unint64_t sub_1920F89CC()
{
  result = qword_1EADEDDC0;
  if (!qword_1EADEDDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD40, &qword_1922316A8);
    sub_1920F8AB4(&qword_1EADEDDD8, &qword_1EADEFD60, &qword_192231748, sub_1920F8A84);
    sub_19206ABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDC0);
  }

  return result;
}

uint64_t sub_1920F8AB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1920F8B64()
{
  result = qword_1EADEDE10;
  if (!qword_1EADEDE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD50, &qword_1922316E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD48, &qword_1922316B0);
    sub_192225D60();
    sub_192031E74(&qword_1EADEDD18, &qword_1EADEFD48, &qword_1922316B0);
    sub_1920F8D94(&qword_1ED74B850, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    sub_192031E74(&qword_1ED74BAD0, &qword_1EADEFD68, &qword_1922360C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE10);
  }

  return result;
}

unint64_t sub_1920F8CDC()
{
  result = qword_1EADEDDA0;
  if (!qword_1EADEDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDA0);
  }

  return result;
}

uint64_t sub_1920F8D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920F8D94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1920F8DDC()
{
  result = qword_1EADEDD58;
  if (!qword_1EADEDD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADEFD88, &unk_1922317C0);
    sub_1920F8914();
    sub_1920F89CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD58);
  }

  return result;
}

uint64_t RelevanceConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v41 = a8;
  v42 = a4;
  v35 = a3;
  v36 = a6;
  v43 = a5;
  v40 = a2;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_1920FDC30(AssociatedTypeWitness, a1, v40, AssociatedTypeWitness, AssociatedConformanceWitness);
  v39 = v19;
  v40 = v18;
  v37 = v21;
  v38 = v20;
  (*(v14 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a7);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 2) = v36;
  *(v23 + 3) = a7;
  v25 = v41;
  *(v23 + 4) = v41;
  *(v23 + 5) = a10;
  (*(v14 + 32))(&v23[v22], &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  v26 = &v23[(v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v27 = v43;
  *v26 = v42;
  *(v26 + 1) = v27;
  v44 = a7;
  v45 = v24;
  v46 = a10;
  v47 = v25;
  v28 = type metadata accessor for RelevanceEntryProvider();
  WitnessTable = swift_getWitnessTable();
  v30 = swift_allocObject();
  v30[2] = v24;
  v30[3] = v28;
  v30[4] = v25;
  v30[5] = WitnessTable;
  v30[6] = sub_1920F91FC;
  v30[7] = v23;
  result = (*(v14 + 8))(v35, a7);
  v32 = v39;
  *a9 = v40;
  a9[1] = v32;
  v33 = v37;
  a9[2] = v38;
  a9[3] = v33;
  a9[4] = sub_1920FBAF0;
  a9[5] = v30;
  return result;
}

uint64_t sub_1920F90CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18);
  (*(v15 + 32))(a8, v18, a5);
  v21[0] = a5;
  v21[1] = a4;
  v21[2] = a7;
  v21[3] = a6;
  v19 = (a8 + *(type metadata accessor for RelevanceEntryProvider() + 52));
  *v19 = a2;
  v19[1] = a3;
}

uint64_t sub_1920F91FC@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(v1[3] - 8) + 80) + 48) & ~*(*(v1[3] - 8) + 80);
  v3 = (v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1920F90CC(v1 + v2, *v3, v3[1], v1[2], v1[3], v1[4], v1[5], a1);
}

uint64_t sub_1920F9288(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  (*(v4 + 16))(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  v17[0] = *(a2 + 32);
  v13 = v17[0];
  v17[1] = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  (*(v4 + 32))(v11 + v10, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v14 = v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v7;
  *(v14 + 8) = v8;
  *(v14 + 16) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return nullsub_1(&unk_1922319D0, v11, AssociatedTypeWitness);
}

uint64_t sub_1920F9410(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = a9;
  *(v9 + 33) = a6;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 40) = a1;
  *(v9 + 48) = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 88) = AssociatedTypeWitness;
  v11 = sub_192228240();
  *(v9 + 96) = v11;
  v12 = *(v11 - 8);
  *(v9 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  *(v9 + 112) = v14;
  v15 = *(AssociatedTypeWitness - 8);
  *(v9 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 128) = swift_task_alloc();
  v17 = *(MEMORY[0x1E69941A0] + 4);
  v18 = swift_task_alloc();
  *(v9 + 136) = v18;
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  *v18 = v9;
  v18[1] = sub_1920F95E8;

  return MEMORY[0x1EEDF3C38](v14);
}

uint64_t sub_1920F95E8()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1920F96E4, 0, 0);
}

uint64_t sub_1920F96E4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 40);
    (*(*(v0 + 104) + 8))(v1, *(v0 + 96));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v6, 1, 1, AssociatedTypeWitness);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v24 = *(v0 + 80);
    v12 = *(v0 + 33);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    (*(v2 + 32))(*(v0 + 128), v1, v3);
    *(v0 + 16) = v14;
    *(v0 + 24) = v13;
    *(v0 + 32) = v12;
    v15 = *(v24 + 48);
    v23 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_1920F9948;
    v18 = *(v0 + 128);
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);

    return v23(v21, v18, v0 + 16, v19, v20);
  }
}

uint64_t sub_1920F9948()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1920F9B4C;
  }

  else
  {
    v3 = sub_1920F9A5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1920F9A5C()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[5];
  (*(v0[15] + 8))(v0[16], v0[11]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v3, 0, 1, AssociatedTypeWitness);
  v5 = v0[16];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1920F9B4C()
{
  v1 = v0[14];
  (*(v0[15] + 8))(v0[16], v0[11]);

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_1920F9BD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = sub_1920F9CDC(v2, v5, v6, v7, v8);
  v22 = v10;
  v23 = v9;
  v11 = sub_1920FA5BC(v2, v5, v6, v7, v8);
  v13 = v12;
  v14 = (v2 + *(a1 + 52));
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1920FA7EC(v2, v5, v6, v7, v8);
  sub_1921856D8(v23, v22, v11, v13, v15, v16, v17, v18, v24);
  v19 = v24[1];
  *a2 = v24[0];
  a2[1] = v19;
  v20 = v24[3];
  a2[2] = v24[2];
  a2[3] = v20;
}

void *sub_1920F9CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for RelevanceEntryProvider();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return &unk_1922319B0;
}

uint64_t sub_1920F9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v8[6] = v16;
  v17 = type metadata accessor for RelevanceEntryProvider();
  *v16 = v8;
  v16[1] = sub_1920F9F30;

  return sub_1920FA024(a1, a2, a3, v17);
}

uint64_t sub_1920F9F30()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1920FA024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(type metadata accessor for TimelineProviderContext() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1920FA0BC, 0, 0);
}

uint64_t sub_1920FA0BC()
{
  v16 = v0;
  v1 = v0[7];
  v2 = v0[5];
  sub_192087350(v0[4], v1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 56);
  sub_1920FB69C(v1);
  v14[0] = v3;
  v14[1] = v4;
  v15 = v5;
  v6 = sub_1920F9288(v14, v2);
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = *(v2 + 32);
  v10 = *(v2 + 16);
  v0[10] = swift_getAssociatedTypeWitness();
  *v8 = v0;
  v8[1] = sub_1920FA1D8;
  v11 = v0[2];
  v12 = v0[3];

  return sub_1920C9A70(v11, v12, v6);
}

uint64_t sub_1920FA1D8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1920FA31C, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1920FA31C()
{
  v27 = v0;
  v1 = v0[8];

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = v0[3];
  v4 = sub_1922258B0();
  __swift_project_value_buffer(v4, qword_1ED74CCC8);
  v5 = v3;
  v6 = v2;
  v7 = sub_192225890();
  v8 = sub_192227F90();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  if (v9)
  {
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136380931;
    v15 = [v11 intent];
    v16 = [v15 description];

    v17 = sub_192227960();
    v19 = v18;

    v20 = sub_19202B8CC(v17, v19, &v26);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2114;
    v21 = v10;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v22;
    *v13 = v22;
    _os_log_impl(&dword_192028000, v7, v8, "Unable to fetch entries for intent %{private}s with error: %{public}@", v12, 0x16u);
    sub_1920FB918(v13);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  else
  {
  }

  (*(*(v0[10] - 8) + 56))(v0[2], 1, 1);
  v23 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t (*sub_1920FA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for RelevanceEntryProvider();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_1920FB5E4;
}

uint64_t sub_1920FA718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineProviderContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192087350(a1, v7);
  v8 = *(v7 + 8);
  v9 = *(v7 + 9);
  LOBYTE(a1) = v7[56];
  sub_1920FB69C(v7);
  v12[0] = v8;
  v12[1] = v9;
  v13 = a1;
  return (*(*(a2 + 32) + 56))(v12, *(a2 + 16));
}

void *sub_1920FA7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for RelevanceEntryProvider();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return &unk_1922319A0;
}

uint64_t sub_1920FA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = v10;
  v11 = type metadata accessor for RelevanceEntryProvider();
  WitnessTable = swift_getWitnessTable();
  *v10 = v5;
  v10[1] = sub_1920FAA3C;

  return sub_1922216C0(v11, WitnessTable);
}

uint64_t sub_1920FAA3C(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

double sub_1920FAB38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1920F9BD8(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1920FAB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(v4 + 40);
  v6 = *(a2 + 16);
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920A59A8;

  return v10(a1, v6, v4);
}

uint64_t sub_1920FACA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920B3B44;

  return sub_1920FAB78(a1, a2);
}

double RelevanceEntriesProviderContext.displaySize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

WidgetKit::RelevanceEntriesProviderContext __swiftcall RelevanceEntriesProviderContext.init(displaySize:isPreview:)(CGSize displaySize, Swift::Bool isPreview)
{
  *v2 = displaySize.width;
  *(v2 + 8) = displaySize.height;
  *(v2 + 16) = isPreview;
  result.displaySize.height = displaySize.height;
  result.displaySize.width = displaySize.width;
  result.isPreview = isPreview;
  return result;
}

uint64_t sub_1920FADAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of RelevanceEntriesProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RelevanceEntriesProvider.entry(configuration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1920A59A8;

  return v15(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RelevanceEntriesProviderContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RelevanceEntriesProviderContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1920FB148(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1920DA1D8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920FB1D0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1920FB30C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1920FB4E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for RelevanceEntryProvider() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_1920FAA3C;

  return sub_1920FA948(v0 + v7, v2, v3, v4, v5);
}

uint64_t sub_1920FB5E4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for RelevanceEntryProvider() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = type metadata accessor for RelevanceEntryProvider();
  return sub_1920FA718(a1, v9);
}

uint64_t sub_1920FB69C(uint64_t a1)
{
  v2 = type metadata accessor for TimelineProviderContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_15Tm()
{
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v1 = (type metadata accessor for RelevanceEntryProvider() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  (*(*(v6 - 8) + 8))(v0 + v2);
  v4 = *(v0 + v2 + v1[15] + 8);

  return swift_deallocObject();
}

uint64_t sub_1920FB7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v12 = *(type metadata accessor for RelevanceEntryProvider() - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_1920F9F30;

  return sub_1920F9E38(a1, a2, a3, v3 + v13, v8, v9, v10, v11);
}

uint64_t sub_1920FB918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF0, &qword_1922319C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920FB980(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v5[2] = v8;
  v5[3] = v7;
  v5[4] = v9;
  v5[5] = v10;
  v11 = *(type metadata accessor for RelevanceEntryProvider() - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = (v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = swift_task_alloc();
  v5[6] = v17;
  *v17 = v5;
  v17[1] = sub_1920F9F30;

  return sub_1920F9410(a1, v14, v15, a2, v2 + v12, v16, v8, v7, v9);
}

uint64_t sub_1920FBAF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  a1[3] = v3;
  a1[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v5();
}

uint64_t ModifiedContent<>.baseConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = *(v7 + 16);
  v10(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFE90, &qword_1922319E0);
  if (swift_dynamicCast())
  {
    sub_19203832C(v15, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v12 + 8))(v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1920FBCB0(v15);
    a3[3] = v6;
    a3[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v10)(boxed_opaque_existential_1, v3, v6);
  }
}

uint64_t sub_1920FBCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFE98, &qword_1922319E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Widget.baseConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_192227550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFE90, &qword_1922319E0);
  if (swift_dynamicCast())
  {
    sub_19203832C(v7, v9);
    v4 = v10;
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v5 + 8))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1920FBCB0(v7);
    a1[3] = AssociatedTypeWitness;
    a1[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_192227550();
  }
}

uint64_t JindoViewTag.description.getter(unsigned __int8 a1)
{
  v1 = 0x6465646E61707865;
  v2 = 0x54746361706D6F63;
  if (a1 != 2)
  {
    v2 = 0x4D746361706D6F63;
  }

  if (a1)
  {
    v1 = 0x4C746361706D6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1920FBF68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9WidgetKit12JindoViewTagO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1920FC054()
{
  v1 = 0x6465646E61707865;
  v2 = 0x54746361706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x4D746361706D6F63;
  }

  if (*v0)
  {
    v1 = 0x4C746361706D6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t _s9WidgetKit12JindoViewTagO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1920FC108()
{
  result = qword_1EADEFEA0;
  if (!qword_1EADEFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEA0);
  }

  return result;
}

unint64_t sub_1920FC160()
{
  result = qword_1EADEFEA8;
  if (!qword_1EADEFEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFEB0, &unk_19223C4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEA8);
  }

  return result;
}

unint64_t sub_1920FC1D4()
{
  result = qword_1EADEFEB8;
  if (!qword_1EADEFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEB8);
  }

  return result;
}

__n128 sub_1920FC228@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1920FC24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = a2;
  *(v4 + 312) = a3;
  *(v4 + 296) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630) - 8) + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  v7 = *(*(type metadata accessor for ControlTemplateButton.Option(0) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  v9 = type metadata accessor for ExtractedControlValueMetadata(0);
  *(v4 + 352) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 360) = swift_task_alloc();
  v11 = *(a3 + 16);
  *(v4 + 368) = v11;
  v12 = *(v11 - 8);
  *(v4 + 376) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
  v14 = sub_192225C70();
  *(v4 + 392) = v14;
  v15 = *(v14 - 8);
  *(v4 + 400) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 408) = swift_task_alloc();
  v17 = sub_192225C70();
  *(v4 + 416) = v17;
  v18 = *(v17 - 8);
  *(v4 + 424) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 432) = swift_task_alloc();
  v20 = *(v3 + 48);
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = v20;
  *(v4 + 80) = *(v3 + 64);
  *(v4 + 96) = *(v3 + 80);
  v21 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v21;
  sub_192227CC0();
  *(v4 + 440) = sub_192227CB0();
  v23 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1920FC530, v23, v22);
}

uint64_t sub_1920FC530()
{
  v1 = *(v0 + 440);
  v58 = *(v0 + 432);
  v59 = *(v0 + 416);
  v53 = *(v0 + 408);
  v66 = *(v0 + 400);
  v56 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v62 = *(v0 + 360);
  v64 = *(v0 + 352);
  v5 = *(v0 + 312);
  v60 = *(v0 + 304);

  v69 = *(v0 + 24);
  v72 = *(v0 + 16);
  v6 = *(v0 + 33);
  *(v0 + 448) = *(v0 + 34);
  *(v0 + 462) = *(v0 + 48);
  v82 = *(v0 + 56);
  v83 = v6;
  v7 = *(v0 + 72);
  v81 = *(v0 + 64);
  v8 = *(v0 + 80);
  v9 = *(v0 + 32);
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v79 = (v84 + 16);
  v7();
  swift_getKeyPath();
  *(v0 + 470) = 1;
  v10 = *(v5 + 32);
  sub_192227040();

  (*(v2 + 8))(v3, v4);
  v11 = sub_1920FCBC8();
  v75 = v10;
  *(v0 + 232) = v10;
  *(v0 + 240) = v11;
  WitnessTable = swift_getWitnessTable();
  v77 = v9;
  sub_1921E6550(v9 & 1, v56, WitnessTable);
  (*(v66 + 1))(v53, v56);
  v13 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 48);
  v14 = *(v0 + 80);
  *(v0 + 152) = *(v0 + 64);
  *(v0 + 168) = v14;
  *(v0 + 184) = *(v0 + 96);
  v67 = (v0 + 16);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v13;
  swift_getWitnessTable();
  v15 = sub_1920FCC2C();
  *(v0 + 248) = WitnessTable;
  *(v0 + 256) = v15;
  swift_getWitnessTable();
  v16.n128_f64[0] = sub_1921E6584(v58, v60, v59, v62);
  if (*(v62 + *(v64 + 24)) == 1)
  {
    *v79 = 1;
  }

  v17 = *(v0 + 360);
  v18 = *(v0 + 344);
  v19 = v72(*(v0 + 304), v16);
  v21 = v20;
  v23 = v22;
  sub_192226A40();
  v24 = sub_192226A90();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v18, 1, v24);
  v27 = *(v0 + 344);
  if (v26 == 1)
  {
    sub_192033970(*(v0 + 344), &qword_1EADEFEC0, &unk_192231BD0);
    v28 = 0;
    v73 = 0;
  }

  else
  {
    v29 = sub_192226A80();
    (*(v25 + 8))(v27, v24);
    v30 = [v29 string];

    v28 = sub_192227960();
    v73 = v31;
  }

  v70 = *(v0 + 432);
  v63 = *(v0 + 424);
  v65 = *(v0 + 416);
  v61 = *(v0 + 328);
  v32 = *(v0 + 312);
  v55 = *(v0 + 304);
  v57 = *(v0 + 360);
  v33 = v57 + *(*(v0 + 352) + 20);
  v54 = *v33;
  v51 = *(v0 + 368);
  v52 = *(v33 + 8);
  v34 = *(v33 + 24);
  v50 = *(v33 + 16);
  v35 = *(v32 + 24);
  v36 = *(v32 + 40);
  sub_1920FCC80(0, v67, v77 & 1, v55, v57, v84, v28, v73, *(v0 + 336), v19, v21, v23 & 1, *v33, v52, v50, v34, v51, v35, v75, v36);
  v49 = v36;
  v37 = 1;
  sub_1920FCC80(1, v67, v77 & 1, v55, v57, v84, v28, v73, v61, v19, v21, v23 & 1, v54, v52, v50, v34, v51, v35, v75, v49);

  (*(v63 + 8))(v70, v65);
  if ((v77 & 1) == 0)
  {
    swift_beginAccess();
    v37 = *v79;
  }

  v68 = v37;
  v74 = *(v0 + 432);
  v76 = *(v0 + 408);
  v71 = *(v0 + 360);
  v38 = *(v0 + 336);
  v78 = *(v0 + 384);
  v80 = *(v0 + 344);
  v39 = *(v0 + 320);
  v40 = *(v0 + 328);
  v41 = *(v0 + 296);
  *(v0 + 280) = v81;
  v42 = sub_192225020();
  v43 = *(*(v42 - 8) + 56);
  v43(v39, 1, 1, v42);
  *(v0 + 216) = *(v0 + 454);
  v44 = type metadata accessor for ControlTemplateButton(0);
  v45 = v44[7];
  v43(v41 + v45, 1, 1, v42);
  v46 = v44[10];
  sub_1920FD7AC(v38, v41);
  sub_1920FD7AC(v40, v41 + v44[5]);
  *(v41 + v44[6]) = *(v0 + 280);
  sub_1920FD810(v0 + 280, v0 + 288);
  sub_19202CFFC(v0 + 216, v0 + 264, qword_1EADEF800, &unk_192231C10);
  sub_19204193C(v39, v41 + v45, &qword_1EADEEE10, &unk_19222B630);
  *(v41 + v44[8]) = v68;
  *(v41 + v44[9]) = v83;
  *(v41 + v46) = *(v0 + 216);
  *(v41 + v44[11]) = v82;
  sub_1920FD86C(v71);

  v47 = *(v0 + 8);

  return v47();
}

unint64_t sub_1920FCBC8()
{
  result = qword_1ED74A558;
  if (!qword_1ED74A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A558);
  }

  return result;
}

unint64_t sub_1920FCC2C()
{
  result = qword_1EADED790;
  if (!qword_1EADED790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED790);
  }

  return result;
}

uint64_t sub_1920FCC80@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, char *a13, char *a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20)
{
  v111 = a8;
  v109 = a7;
  v92 = a6;
  v101 = a5;
  v99 = a4;
  LODWORD(v97) = a3;
  v110 = a9;
  v102 = a19;
  v98 = a17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v106 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v91 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v107 = &v91 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v91 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v96 = &v91 - v35;
  v103 = type metadata accessor for ExtractedControlValueMetadata(0);
  v36 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v95 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a18 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
  v43 = sub_192225C70();
  v94 = *(v43 - 8);
  v44 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v91 - v45;
  v112 = sub_192225C70();
  v104 = *(v112 - 8);
  v47 = *(v104 + 64);
  v48 = MEMORY[0x1EEE9AC00](v112);
  v50 = &v91 - v49;
  v100 = *(a2 + 40);
  v51 = *(a2 + 10);
  (*(a2 + 9))(a1, v48);
  swift_getKeyPath();
  LOBYTE(v119) = 1;
  v93 = a18;
  sub_192227040();

  (*(v38 + 8))(v42, a18);
  v52 = sub_1920FCBC8();
  v125 = a20;
  v126 = v52;
  WitnessTable = swift_getWitnessTable();
  sub_1921E6550(v97, v43, WitnessTable);
  (*(v94 + 8))(v46, v43);
  v54 = a2[3];
  v121 = a2[2];
  v122 = v54;
  v123 = a2[4];
  v124 = *(a2 + 10);
  v55 = *a2;
  v56 = a2[1];
  v57 = v96;
  v119 = v55;
  v120 = v56;
  v115 = v98;
  v116 = v93;
  v58 = v95;
  v117 = v102;
  v118 = a20;
  type metadata accessor for ControlWidgetButtonParser();
  swift_getWitnessTable();
  v59 = sub_1920FCC2C();
  v113 = WitnessTable;
  v114 = v59;
  v60 = v112;
  swift_getWitnessTable();
  v102 = v50;
  sub_1921E6584(v50, v99, v60, v58);
  sub_192226A40();
  v61 = sub_192226A90();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v57, 1, v61) == 1)
  {
    sub_192033970(v57, &qword_1EADEFEC0, &unk_192231BD0);
    v64 = v91;
    sub_192226A50();
    if (v63(v64, 1, v61) == 1)
    {
      sub_192033970(v64, &qword_1EADEFEC0, &unk_192231BD0);
      v99 = 0;
      v98 = 0;
    }

    else
    {
      v70 = sub_192226A80();
      (*(v62 + 8))(v64, v61);
      v71 = [v70 string];

      v99 = sub_192227960();
      v98 = v72;
    }

    v68 = v107;
    v69 = v106;
  }

  else
  {
    v65 = sub_192226A80();
    (*(v62 + 8))(v57, v61);
    v66 = [v65 string];

    v99 = sub_192227960();
    v98 = v67;

    v68 = v107;
    v69 = v106;
  }

  v73 = v105;
  sub_192226B80();
  v74 = sub_192226B70();
  v75 = *(v74 - 8);
  v76 = *(v75 + 48);
  if (v76(v73, 1, v74) == 1)
  {
    sub_192226B80();
    if (v76(v73, 1, v74) != 1)
    {
      sub_192033970(v73, &qword_1EADEF720, &unk_19222E2F0);
    }
  }

  else
  {
    (*(v75 + 32))(v68, v73, v74);
    (*(v75 + 56))(v68, 0, 1, v74);
  }

  if (*(v58 + *(v103 + 24)))
  {
    v77 = v92;
    swift_beginAccess();
    *(v77 + 16) = 1;
  }

  v106 = a15;
  v107 = a14;
  v105 = a13;
  LODWORD(v103) = a12;
  v101 = a11;
  v97 = a10;
  if ((v100 & 1) == 0)
  {
    sub_19202CFFC(v68, v69, &qword_1EADEF720, &unk_19222E2F0);
    if (v76(v69, 1, v74) == 1)
    {
      sub_1920FD86C(v58);
      (*(v104 + 8))(v102, v112);
      sub_192033970(v69, &qword_1EADEF720, &unk_19222E2F0);
      v78 = v108;
    }

    else
    {
      v79 = sub_192226B60();
      sub_1920FD86C(v58);
      (*(v104 + 8))(v102, v112);
      (*(v75 + 8))(v69, v74);
      v78 = v108;
      if (v79)
      {
        goto LABEL_15;
      }
    }

    sub_192033970(v68, &qword_1EADEF720, &unk_19222E2F0);
    (*(v75 + 56))(v78, 1, 1, v74);
    goto LABEL_20;
  }

  sub_1920FD86C(v58);
  (*(v104 + 8))(v102, v112);
  v78 = v108;
LABEL_15:
  sub_1920FD8E0(v68, v78);
LABEL_20:
  v80 = type metadata accessor for ControlTemplateButton.Option(0);
  v81 = v80[6];
  v82 = v110;
  (*(v75 + 56))(v110 + v81, 1, 1, v74);
  v83 = v82 + v80[7];
  v84 = (v82 + v80[8]);
  v85 = (v82 + v80[9]);
  v86 = v111;
  *v82 = v109;
  v82[1] = v86;
  v87 = v98;
  v82[2] = v99;
  v82[3] = v87;

  sub_19204193C(v78, v82 + v81, &qword_1EADEF720, &unk_19222E2F0);
  v88 = v101;
  *v83 = v97;
  *(v83 + 1) = v88;
  v83[16] = v103 & 1;
  v89 = v107;
  *v84 = v105;
  v84[1] = v89;
  *v85 = v106;
  v85[1] = a16;
}

uint64_t sub_1920FD7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920FD86C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedControlValueMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920FD8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920FD950()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1920FD9B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1920FD9F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1920FDA50()
{
  result = qword_1EADEE598;
  if (!qword_1EADEE598)
  {
    type metadata accessor for ControlTemplateButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE598);
  }

  return result;
}

uint64_t sub_1920FDAA8(uint64_t a1, int a2)
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

uint64_t sub_1920FDAF0(uint64_t result, int a2, int a3)
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

uint64_t sub_1920FDB30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000027, 0x800000019224A6B0);
  MEMORY[0x193B0A990](a1, a2);
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224A6E0);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    a3 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](a3, v8);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_1920FDC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  sub_192224BB0();
  return a2;
}

uint64_t sub_1920FDC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1922265A0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1920FDCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1922265A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

CTFontDescriptorRef sub_1920FDD90(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_192226EA0();
  v12 = sub_192075A34(*&a4, 0, 0, 1, a1, a2, a3 & 1, v11);
  sub_192033970(v11, &qword_1EADEF290, &qword_19222CA80);
  v13 = CTFontDescriptorCreateWithAttributesAndOptions();
  v14 = sub_19207723C();

  return v14;
}

CTFontDescriptorRef sub_1920FDEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a2;
  v21[1] = a3;
  v5 = sub_1922265A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v13 = sub_192226EC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a4, v13);
  sub_192226E80();
  sub_192074964(v10, v12);
  (*(v6 + 8))(v10, v5);
  sub_192226E90();
  sub_192226800();
  v18 = sub_192225BD0();
  v19 = sub_19207723C();

  (*(v14 + 8))(v17, v13);
  return v19;
}

CTFontDescriptorRef sub_1920FE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1922265A0();
  v42 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  sub_192226E80();
  sub_192074964(v18, v20);
  v21 = *(v14 + 8);
  v41 = v14 + 8;
  v43 = v21;
  v21(v18, v13);
  v22 = v45;
  (*(v9 + 16))(v12, v45, v8);
  v23 = sub_19207583C(v12);
  v24 = (*(v3 + 152))(v23, v20);
  v26 = v25;
  v28 = v27;
  v29 = (*(v3 + 160))(v22, v20);
  v31 = v30;
  v32 = v28 & 0x100;
  if ((v28 & 0x100) != 0)
  {
    v26 = 0;
  }

  v33 = v32 >> 8;
  v34 = BYTE1(v32) | v28;
  if (v32)
  {
    v24 = 0;
  }

  sub_192226EA0();
  v35 = sub_192075A34(v24, v33, v26, v34 & 1, v44, v29, v31 & 1, v7);
  sub_192033970(v7, &qword_1EADEF290, &qword_19222CA80);
  v36 = sub_192076CDC();
  v37 = sub_192076F7C();
  v38 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v39 = sub_19207723C();
  v43(v20, v42);
  return v39;
}

uint64_t sub_1920FE418()
{
  sub_192226800();
  result = sub_192225C00();
  if (qword_1ED74A010 != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  if (byte_1ED74C7A8 != 2 && (byte_1ED74C7A8 & 1) != 0)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    v3 = *MEMORY[0x1E69657E0];
    *(inited + 32) = *MEMORY[0x1E69657E0];
    *(inited + 16) = xmmword_19222B480;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FD51EB851EB851FLL;
    v4 = v3;
    sub_19207614C(inited);
    swift_setDeallocating();
    sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
    type metadata accessor for CFString(0);
    sub_192076C84();
    v5 = sub_192227830();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, v5);

    return CopyWithAttributes;
  }

  return result;
}

uint64_t sub_1920FE5C4()
{
  sub_192226800();
  result = sub_192225C20();
  if (qword_1ED74A010 != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  if (byte_1ED74C7A8 != 2 && (byte_1ED74C7A8 & 1) != 0)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    v3 = *MEMORY[0x1E69657E0];
    *(inited + 32) = *MEMORY[0x1E69657E0];
    *(inited + 16) = xmmword_19222B480;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FD51EB851EB851FLL;
    v4 = v3;
    sub_19207614C(inited);
    swift_setDeallocating();
    sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
    type metadata accessor for CFString(0);
    sub_192076C84();
    v5 = sub_192227830();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, v5);

    return CopyWithAttributes;
  }

  return result;
}

__n128 AccessoryRectangularLabeledContentStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_192226CC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_192226C90();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED8, &qword_192231E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  *v11 = sub_192226340();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEE0, &qword_192231E58) + 44);
  sub_192226CB0();
  (*(v4 + 16))(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v13, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEE8, &qword_192231E60);
  sub_1920FFB30(&qword_1EADEFEF0, MEMORY[0x1E697CC48]);
  sub_1920FEC5C();
  sub_192227350();
  sub_192227600();
  sub_192225DA0();
  v15 = v21;
  sub_19208AF3C(v11, v21);
  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF20, &qword_192231E78) + 36);
  v17 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v17;
  *(v16 + 96) = v28;
  v18 = v23;
  *v16 = v22;
  *(v16 + 16) = v18;
  result = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_1920FEA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_192226570();
  sub_1920FFB30(&qword_1EADEFF38, MEMORY[0x1E697F4E0]);
  sub_192227E00();
  sub_192227E60();
  sub_192227E50();
  *a2 = sub_1922265C0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF40, &qword_192231F50);
  sub_1920FED5C(a1, (a2 + *(v4 + 44)));
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEE8, &qword_192231E60) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF18, &qword_192231E70) + 28);
  v7 = *MEMORY[0x1E69816C8];
  v8 = sub_192227400();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_1920FEBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_192226CC0() - 8) + 80);

  return sub_1920FEA64(a1, a2);
}

unint64_t sub_1920FEC5C()
{
  result = qword_1EADEFEF8;
  if (!qword_1EADEFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFEE8, &qword_192231E60);
    sub_192031E74(&qword_1EADEFF00, &qword_1EADEFF08, &qword_192231E68);
    sub_192031E74(&qword_1EADEFF10, &qword_1EADEFF18, &qword_192231E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEF8);
  }

  return result;
}

uint64_t sub_1920FED5C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF48, &qword_192231F88);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF50, &qword_192231F90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF58, &qword_192231F98);
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  sub_192226CA0();
  v22 = sub_192226F00();
  KeyPath = swift_getKeyPath();
  v24 = &v13[*(v10 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_1920FF9F4();
  sub_1920FFADC();
  sub_192227020();
  sub_192033970(v13, &qword_1EADEFF50, &qword_192231F90);
  *v9 = sub_192226340();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF88, &qword_192231FD8);
  sub_1920FF08C(v31, &v9[*(v25 + 44)]);
  v26 = v15[2];
  v26(v19, v21, v14);
  sub_19202CFFC(v9, v7, &qword_1EADEFF48, &qword_192231F88);
  v26(a2, v19, v14);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF90, &qword_192231FE0);
  sub_19202CFFC(v7, &a2[*(v27 + 48)], &qword_1EADEFF48, &qword_192231F88);
  sub_192033970(v9, &qword_1EADEFF48, &qword_192231F88);
  v28 = v15[1];
  v28(v21, v14);
  sub_192033970(v7, &qword_1EADEFF48, &qword_192231F88);
  return (v28)(v19, v14);
}

uint64_t sub_1920FF08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF98, &qword_192231FE8);
  v75 = *(v77 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v71 = (&v68 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFA0, &qword_192231FF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = (&v68 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFA8, &qword_192231FF8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v68 - v14;
  v15 = sub_192226570();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_192226950();
  v78 = *(v83 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB0, &unk_192232000);
  v20 = *(v72 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v23 = &v68 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB8, &qword_192235270);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v68 - v26;
  v28 = sub_1922275A0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFC0, &qword_192232010);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v76 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v68 - v37;
  sub_19217CA0C(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_192033970(v27, &qword_1EADEFFB8, &qword_192235270);
    v39 = 1;
    v40 = v72;
  }

  else
  {
    v68 = v15;
    v41 = v38;
    v42 = a1;
    v43 = *(v29 + 32);
    v43(v32, v27, v28);
    v44 = sub_192226D90();
    KeyPath = swift_getKeyPath();
    v43(v23, v32, v28);
    a1 = v42;
    v38 = v41;
    v15 = v68;
    v46 = v72;
    v47 = &v23[*(v72 + 36)];
    *v47 = KeyPath;
    v47[1] = v44;
    sub_19204E300(v23, v38, &qword_1EADEFFB0, &unk_192232000);
    v39 = 0;
    v40 = v46;
  }

  v48 = 1;
  (*(v20 + 56))(v38, v39, 1, v40);
  (*(v74 + 16))(v73, a1, v15);
  v49 = v82;
  sub_19217CBA4(1);
  sub_1920FFB30(&qword_1EADEFFC8, MEMORY[0x1E6980290]);
  v50 = v83;
  sub_192227E00();
  sub_192227E60();
  v52 = v78;
  v51 = v79;
  if (v85 != v84)
  {
    v53 = sub_1922265D0();
    v54 = v69;
    *v69 = v53;
    *(v54 + 8) = 0xBFF8000000000000;
    *(v54 + 16) = 0;
    v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFD0, &qword_192232018) + 44);
    v56 = sub_192226D80();
    v57 = swift_getKeyPath();
    (*(v52 + 16))(v55, v49, v50);
    v58 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFD8, &qword_192232020) + 36));
    *v58 = v57;
    v58[1] = v56;
    LODWORD(v56) = sub_192226880();
    *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFE0, &qword_192232028) + 36)) = v56;
    v59 = v70;
    sub_19202CFFC(v54, v70, &qword_1EADEFFA0, &qword_192231FF0);
    v60 = v71;
    *v71 = 0;
    *(v60 + 8) = 0;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFE8, &qword_192232030);
    sub_19202CFFC(v59, v60 + *(v61 + 48), &qword_1EADEFFA0, &qword_192231FF0);
    sub_192033970(v54, &qword_1EADEFFA0, &qword_192231FF0);
    sub_192033970(v59, &qword_1EADEFFA0, &qword_192231FF0);
    sub_19204E300(v60, v51, &qword_1EADEFF98, &qword_192231FE8);
    v48 = 0;
  }

  (*(v75 + 56))(v51, v48, 1, v77);
  v62 = v76;
  sub_19202CFFC(v38, v76, &qword_1EADEFFC0, &qword_192232010);
  v63 = v38;
  v64 = v80;
  sub_19202CFFC(v51, v80, &qword_1EADEFFA8, &qword_192231FF8);
  v65 = v81;
  sub_19202CFFC(v62, v81, &qword_1EADEFFC0, &qword_192232010);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFF0, &qword_192232038);
  sub_19202CFFC(v64, v65 + *(v66 + 48), &qword_1EADEFFA8, &qword_192231FF8);
  sub_192033970(v51, &qword_1EADEFFA8, &qword_192231FF8);
  sub_192033970(v63, &qword_1EADEFFC0, &qword_192232010);
  sub_192033970(v64, &qword_1EADEFFA8, &qword_192231FF8);
  sub_192033970(v62, &qword_1EADEFFC0, &qword_192232010);
  return (*(v52 + 8))(v82, v83);
}

unint64_t sub_1920FF92C()
{
  result = qword_1EADEFF28;
  if (!qword_1EADEFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF20, &qword_192231E78);
    sub_192031E74(&qword_1EADEFF30, &qword_1EADEFED8, &qword_192231E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFF28);
  }

  return result;
}

unint64_t sub_1920FF9F4()
{
  result = qword_1EADEFF60;
  if (!qword_1EADEFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF50, &qword_192231F90);
    sub_1920FFB30(&qword_1EADEFF68, MEMORY[0x1E697CC58]);
    sub_192031E74(&qword_1EADEFF70, &qword_1EADEFF78, &qword_192231FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFF60);
  }

  return result;
}

unint64_t sub_1920FFADC()
{
  result = qword_1EADEFF80;
  if (!qword_1EADEFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFF80);
  }

  return result;
}

uint64_t sub_1920FFB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActivityViewContext.activityID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityViewContext.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_1920FFC74(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1920FFD34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = *(*(AssociatedTypeWitness - 8) + 64) + ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 16) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1920FFFF4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(*(AssociatedTypeWitness - 8) + 64) + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + 1;
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v24 = (a1 + v12 + 16) & ~v12;
    if (v9 == v16)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v9, v7);
    }

    else
    {
      v26 = *(v11 + 56);
      v27 = (v24 + v13 + v14) & ~v14;

      v26(v27, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t sub_192100360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for ActivityViewContext();
  (*(*(a6 - 8) + 32))(&a7[v12[9]], a3, a6);
  v13 = v12[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a7[v13], a4, AssociatedTypeWitness);
  a7[v12[11]] = a5;
  return result;
}

double DynamicIsland.init<A, B, C, D>(expanded:compactLeading:compactTrailing:minimal:)@<D0>(void (*a1)(void)@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X5>, void (*a6)(void)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v53 = a7;
  v54 = a6;
  v49 = a5;
  v50 = a4;
  v46 = a3;
  v47 = a2;
  v48 = a15;
  v45 = a14;
  v41[1] = a13;
  v42 = a1;
  v43 = a11;
  v51 = a12;
  v52 = a16;
  v17 = *(*(a12 - 8) + 64);
  v41[2] = a10;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v44 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v41[3] = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v27 = *(a9 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DynamicIslandExpandedContent();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v41 - v33;
  v35 = sub_192225020();
  (*(*(v35 - 8) + 56))(a8, 1, 1, v35);
  v36 = type metadata accessor for DynamicIsland();
  *(a8 + v36[5]) = 0;
  v42();
  (*(v27 + 32))(v30, v34, a9);
  *(a8 + v36[8]) = sub_192227570();
  v47();
  *(a8 + v36[9]) = sub_192227570();
  v50();
  *(a8 + v36[10]) = sub_192227570();
  v54();
  v37 = sub_192227570();

  *(a8 + v36[11]) = v37;
  v58 = 1;
  v57 = 1;
  v56 = 1;
  v55 = 1;
  v38 = a8 + v36[6];
  *v38 = 0;
  *(v38 + 8) = 1;
  *(v38 + 16) = 0;
  *(v38 + 24) = 1;
  *(v38 + 32) = 0;
  *(v38 + 40) = 1;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 1;
  *(v38 + 80) = 0;
  *(v38 + 88) = 1;
  *(v38 + 96) = 0;
  *(v38 + 104) = 1;
  *(v38 + 112) = 0;
  *(v38 + 120) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 1;
  *(v38 + 144) = 0;
  *(v38 + 152) = 1;
  *(v38 + 160) = 0;
  *(v38 + 168) = 1;
  *(v38 + 176) = 0;
  *(v38 + 184) = 1;
  *(v38 + 192) = 0;
  *(v38 + 200) = 1;
  *(v38 + 208) = 0;
  *(v38 + 216) = 1;
  *(v38 + 224) = 0;
  *(v38 + 232) = 1;
  *(v38 + 240) = 0;
  *(v38 + 248) = 1;
  v39 = (a8 + v36[7]);
  result = 0.0;
  *v39 = xmmword_1922320A0;
  v39[1] = xmmword_1922320A0;
  v39[2] = xmmword_1922320A0;
  v39[3] = xmmword_1922320A0;
  return result;
}

uint64_t type metadata accessor for DynamicIsland()
{
  result = qword_1EADEDA50;
  if (!qword_1EADEDA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DynamicIsland.widgetURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_192101AB4(v2, a2, type metadata accessor for DynamicIsland);

  return sub_192100974(a1, a2);
}

uint64_t sub_192100974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t DynamicIsland.keylineTint(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_192101AB4(v2, a2, type metadata accessor for DynamicIsland);
  v5 = *(type metadata accessor for DynamicIsland() + 20);
  v6 = *(a2 + v5);

  *(a2 + v5) = a1;
  return result;
}

uint64_t *sub_192100A58@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *a1;
  sub_192101AB4(v3, a2, type metadata accessor for DynamicIsland);
  sub_1921443BC(v43, a3);
  v7 = a2 + *(type metadata accessor for DynamicIsland() + 24);
  v8 = (v7 + 88);
  v9 = (v7 + 120);
  v10 = (v7 + 136);
  v11 = (v7 + 152);
  v12 = (v7 + 168);
  v13 = (v7 + 184);
  if (v6 == 2)
  {
    v14 = (v7 + 128);
  }

  else
  {
    v13 = (v7 + 248);
    v12 = (v7 + 232);
    v11 = (v7 + 216);
    v10 = (v7 + 200);
    v14 = (v7 + 192);
  }

  if (v6 == 2)
  {
    v15 = (v7 + 144);
  }

  else
  {
    v15 = (v7 + 208);
  }

  if (v6 == 2)
  {
    v16 = (v7 + 160);
  }

  else
  {
    v16 = (v7 + 224);
  }

  if (v6 == 2)
  {
    v17 = (v7 + 176);
  }

  else
  {
    v17 = (v7 + 240);
  }

  if (v6)
  {
    v18 = (v7 + 104);
  }

  else
  {
    v9 = (v7 + 56);
    v18 = (v7 + 40);
  }

  if (v6)
  {
    v19 = (v7 + 72);
  }

  else
  {
    v8 = (v7 + 24);
    v19 = (v7 + 8);
  }

  if (v6)
  {
    result = (v7 + 64);
  }

  else
  {
    result = v7;
  }

  if (v6)
  {
    v21 = (v7 + 80);
  }

  else
  {
    v21 = (v7 + 16);
  }

  if (v6)
  {
    v22 = (v7 + 96);
  }

  else
  {
    v22 = (v7 + 32);
  }

  v23 = (v7 + 48);
  if (v6)
  {
    v23 = (v7 + 112);
  }

  if (v6 <= 1)
  {
    v11 = v8;
  }

  else
  {
    v9 = v13;
    v18 = v12;
  }

  if (v6 > 1)
  {
    v24 = v14;
  }

  else
  {
    v10 = v19;
    v24 = result;
  }

  if (v6 > 1)
  {
    v25 = v16;
  }

  else
  {
    v15 = v21;
    v25 = v22;
  }

  if (v6 <= 1)
  {
    v26 = v23;
  }

  else
  {
    v26 = v17;
  }

  v27 = *v9;
  v28 = *v11;
  v29 = *v10;
  if (v29)
  {
    v24 = v43;
  }

  v30 = *v24;
  v31 = v29 & v43[8];
  v32 = v44;
  if ((v28 & 1) == 0)
  {
    v32 = v15;
  }

  v33 = *v32;
  v34 = v28 & v44[8];
  v35 = v45;
  if ((*v18 & 1) == 0)
  {
    v35 = v25;
  }

  v36 = *v35;
  v37 = *v18 & v45[8];
  if (v27)
  {
    v26 = v46;
  }

  v38 = *v26;
  v42 = v31 & 1;
  v41 = v34 & 1;
  v40 = v37 & 1;
  v39 = v27 & v46[8] & 1;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      *(v7 + 128) = v30;
      *(v7 + 136) = v42;
      *(v7 + 144) = v33;
      *(v7 + 152) = v41;
      *(v7 + 160) = v36;
      *(v7 + 168) = v40;
      *(v7 + 176) = v38;
      *(v7 + 184) = v39;
    }

    else
    {
      *(v7 + 192) = v30;
      *(v7 + 200) = v42;
      *(v7 + 208) = v33;
      *(v7 + 216) = v41;
      *(v7 + 224) = v36;
      *(v7 + 232) = v40;
      *(v7 + 240) = v38;
      *(v7 + 248) = v39;
    }
  }

  else if (v6)
  {
    *(v7 + 64) = v30;
    *(v7 + 72) = v42;
    *(v7 + 80) = v33;
    *(v7 + 88) = v41;
    *(v7 + 96) = v36;
    *(v7 + 104) = v40;
    *(v7 + 112) = v38;
    *(v7 + 120) = v39;
  }

  else
  {
    *v7 = v30;
    *(v7 + 8) = v42;
    *(v7 + 16) = v33;
    *(v7 + 24) = v41;
    *(v7 + 32) = v36;
    *(v7 + 40) = v40;
    *(v7 + 48) = v38;
    *(v7 + 56) = v39;
  }

  return result;
}

uint64_t DynamicIsland.contentBackground<A>(for:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  sub_192101AB4(v5, a5, type metadata accessor for DynamicIsland);
  v35 = sub_192221A98(a2, a3, a4);
  v36 = v11;
  v12 = (a5 + *(type metadata accessor for DynamicIsland() + 28));
  v13 = *v12;
  v15 = (v12 + 1);
  v14 = v12[1];
  v32 = v12[2];
  v17 = (v12 + 3);
  v16 = v12[3];
  v18 = v12[4];
  v20 = (v12 + 5);
  v19 = v12[5];
  v21 = (v12 + 7);
  v29 = v19;
  v30 = v18;
  v27 = v12[7];
  v28 = v12[6];
  if (v10 != 2)
  {
    v18 = v12[6];
    v19 = v12[7];
  }

  v33 = v12[1];
  v34 = *v12;
  if (v10)
  {
    v13 = v12[2];
  }

  v31 = v12[3];
  if (v10)
  {
    v14 = v12[3];
  }

  if (v10 <= 1)
  {
    v22 = v13;
  }

  else
  {
    v22 = v18;
  }

  if (v10 <= 1)
  {
    v23 = v14;
  }

  else
  {
    v23 = v19;
  }

  if (v23 >> 62 == 3 && v22 == 0 && v23 == 0xC000000000000000)
  {
    v22 = v35;
    v23 = v36;
    if (v10 <= 1)
    {
LABEL_21:
      if (v10)
      {
        result = sub_1921018A0(v32, v31);
        v12 += 2;
        v15 = v17;
      }

      else
      {
        result = sub_1921018A0(v34, v33);
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_192101850(v22, v23);
    sub_1921018A0(v35, v36);
    if (v10 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (v10 == 2)
  {
    result = sub_1921018A0(v30, v29);
    v12 += 4;
    v15 = v20;
  }

  else
  {
    result = sub_1921018A0(v28, v27);
    v12 += 6;
    v15 = v21;
  }

LABEL_28:
  *v12 = v22;
  *v15 = v23;
  return result;
}

uint64_t DynamicIsland.contentBackground<A>(_:for:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  sub_192101AB4(v4, a4, type metadata accessor for DynamicIsland);
  v33 = sub_192221B2C(a1, a3);
  v34 = v9;
  v10 = (a4 + *(type metadata accessor for DynamicIsland() + 28));
  v11 = *v10;
  v13 = (v10 + 1);
  v12 = v10[1];
  v30 = v10[2];
  v15 = (v10 + 3);
  v14 = v10[3];
  v16 = v10[4];
  v18 = (v10 + 5);
  v17 = v10[5];
  v19 = (v10 + 7);
  v27 = v17;
  v28 = v16;
  v25 = v10[7];
  v26 = v10[6];
  if (v8 != 2)
  {
    v16 = v10[6];
    v17 = v10[7];
  }

  v31 = v10[1];
  v32 = *v10;
  if (v8)
  {
    v11 = v10[2];
  }

  v29 = v10[3];
  if (v8)
  {
    v12 = v10[3];
  }

  if (v8 <= 1)
  {
    v20 = v11;
  }

  else
  {
    v20 = v16;
  }

  if (v8 <= 1)
  {
    v21 = v12;
  }

  else
  {
    v21 = v17;
  }

  if (v21 >> 62 == 3 && v20 == 0 && v21 == 0xC000000000000000)
  {
    v20 = v33;
    v21 = v34;
    if (v8 <= 1)
    {
LABEL_21:
      if (v8)
      {
        result = sub_1921018A0(v30, v29);
        v10 += 2;
        v13 = v15;
      }

      else
      {
        result = sub_1921018A0(v32, v31);
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_192101850(v20, v21);
    sub_1921018A0(v33, v34);
    if (v8 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (v8 == 2)
  {
    result = sub_1921018A0(v28, v27);
    v10 += 4;
    v13 = v18;
  }

  else
  {
    result = sub_1921018A0(v26, v25);
    v10 += 6;
    v13 = v19;
  }

LABEL_28:
  *v10 = v20;
  *v13 = v21;
  return result;
}

uint64_t DynamicIsland.contentBackground<A, B>(_:in:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a3;
  sub_192101AB4(v6, a6, type metadata accessor for DynamicIsland);
  v37 = sub_192221BF8(a1, a2, a4, a5);
  v38 = v13;
  v14 = (a6 + *(type metadata accessor for DynamicIsland() + 28));
  v15 = *v14;
  v17 = (v14 + 1);
  v16 = v14[1];
  v34 = v14[2];
  v19 = (v14 + 3);
  v18 = v14[3];
  v20 = v14[4];
  v22 = (v14 + 5);
  v21 = v14[5];
  v23 = (v14 + 7);
  v31 = v21;
  v32 = v20;
  v29 = v14[7];
  v30 = v14[6];
  if (v12 != 2)
  {
    v20 = v14[6];
    v21 = v14[7];
  }

  v35 = v14[1];
  v36 = *v14;
  if (v12)
  {
    v15 = v14[2];
  }

  v33 = v14[3];
  if (v12)
  {
    v16 = v14[3];
  }

  if (v12 <= 1)
  {
    v24 = v15;
  }

  else
  {
    v24 = v20;
  }

  if (v12 <= 1)
  {
    v25 = v16;
  }

  else
  {
    v25 = v21;
  }

  if (v25 >> 62 == 3 && v24 == 0 && v25 == 0xC000000000000000)
  {
    v24 = v37;
    v25 = v38;
    if (v12 <= 1)
    {
LABEL_21:
      if (v12)
      {
        result = sub_1921018A0(v34, v33);
        v14 += 2;
        v17 = v19;
      }

      else
      {
        result = sub_1921018A0(v36, v35);
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_192101850(v24, v25);
    sub_1921018A0(v37, v38);
    if (v12 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (v12 == 2)
  {
    result = sub_1921018A0(v32, v31);
    v14 += 4;
    v17 = v22;
  }

  else
  {
    result = sub_1921018A0(v30, v29);
    v14 += 6;
    v17 = v23;
  }

LABEL_28:
  *v14 = v24;
  *v17 = v25;
  return result;
}

uint64_t DynamicIsland.tintColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for DynamicIsland() + 20));
}

uint64_t DynamicIsland.view(for:metrics:)(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      swift_getKeyPath();
      v5 = type metadata accessor for DynamicIsland();
      v6 = *(v1 + *(v5 + 40));
      v7 = v1 + *(v5 + 28);
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
    }

    else
    {
      swift_getKeyPath();
      v13 = type metadata accessor for DynamicIsland();
      v14 = *(v1 + *(v13 + 44));
      v15 = v1 + *(v13 + 28);
      v8 = *(v15 + 48);
      v9 = *(v15 + 56);
    }

    goto LABEL_8;
  }

  if (a1)
  {
    swift_getKeyPath();
    v10 = type metadata accessor for DynamicIsland();
    v11 = *(v1 + *(v10 + 36));
    v12 = v1 + *(v10 + 28);
    v8 = *(v12 + 16);
    v9 = *(v12 + 24);
LABEL_8:

    sub_192101850(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFF8, &qword_1922320E0);
    sub_1921018F0();
    return sub_192227570();
  }

  swift_getKeyPath();
  v2 = type metadata accessor for DynamicIsland();
  v3 = *(v2 + 28);
  v4 = *(v1 + v3 + 8);
  v17 = *(v1 + *(v2 + 32));
  v18 = *(v1 + v3);

  sub_192101850(v18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0008, &qword_1922320F0);
  sub_1921019FC();
  return sub_192227570();
}

uint64_t DynamicIsland.modifyEnvironment(_:for:metrics:)(uint64_t a1, unsigned __int8 a2, uint64_t *a3)
{
  v6 = type metadata accessor for MetricsRequest();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for JindoMetricsDefinition();
  sub_192101AB4(a3 + *(v10 + *&asc_192232198[8 * a2]), v9, type metadata accessor for MetricsRequest);
  v11 = v9[7];
  v12 = v9[8];
  v13 = v9[9];
  v14 = v9[10];
  v15 = *(v9 + 88);
  sub_192101B1C(v9);
  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v12;
  }

  if (v15)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v13;
  }

  if (v15)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v3 + *(type metadata accessor for DynamicIsland() + 24));
  if (a2 > 1u)
  {
    v36 = (v20 + 23);
    v35 = (v20 + 22);
    v34 = (v20 + 21);
    v24 = (v20 + 20);
    v23 = (v20 + 19);
    v22 = (v20 + 18);
    v37 = v20 + 17;
    v38 = (v20 + 31);
    v39 = (v20 + 30);
    v40 = (v20 + 29);
    v41 = (v20 + 28);
    v42 = (v20 + 27);
    v43 = (v20 + 26);
    v44 = v20 + 25;
    if (a2 == 2)
    {
      v20 += 16;
    }

    else
    {
      v20 += 24;
    }

    if (a2 == 2)
    {
      v21 = v37;
    }

    else
    {
      v21 = v44;
    }

    if (a2 != 2)
    {
      v22 = v43;
      v23 = v42;
      v24 = v41;
      v34 = v40;
      v35 = v39;
      v36 = v38;
    }
  }

  else
  {
    v21 = v20 + 1;
    v22 = (v20 + 2);
    v23 = (v20 + 3);
    v24 = (v20 + 4);
    v25 = (v20 + 6);
    v26 = (v20 + 7);
    v27 = (v20 + 15);
    v28 = (v20 + 14);
    v29 = (v20 + 13);
    v30 = (v20 + 12);
    v31 = (v20 + 11);
    v32 = (v20 + 10);
    v33 = v20 + 9;
    if (a2)
    {
      v20 += 8;
      v21 = v33;
      v22 = v32;
      v23 = v31;
      v24 = v30;
      v34 = v29;
    }

    else
    {
      v34 = (v20 + 5);
    }

    if (a2)
    {
      v35 = v28;
    }

    else
    {
      v35 = v25;
    }

    if (a2)
    {
      v36 = v27;
    }

    else
    {
      v36 = v26;
    }
  }

  v45 = *v36;
  v46 = *v35;
  v47 = *v34;
  v48 = *v24;
  v49 = *v23;
  v50 = *v22;
  v51 = *v20;
  if (!*v21)
  {
    v16 = *v20;
  }

  if (!v49)
  {
    v17 = *v22;
  }

  if (!v47)
  {
    v18 = *v24;
  }

  if (!v45)
  {
    v19 = *v35;
  }

  v52 = *a3;
  v53 = a3[1];
  v54 = *(a3 + *(type metadata accessor for JindoMetricsDefinition() + 32) + 48);
  v58 = 0;
  v56[1] = v52;
  v56[2] = v53;
  v56[3] = v54;
  *&v56[4] = v16;
  *&v56[5] = v17;
  *&v56[6] = v18;
  *&v56[7] = v19;
  v57 = 0;
  sub_192101B78();
  return sub_1922261F0();
}

uint64_t sub_192101780@<X0>(uint64_t a1@<X8>)
{
  sub_192101B78();
  result = sub_1922261E0();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

uint64_t sub_1921017EC(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 6);
  sub_192101B78();
  return sub_1922261F0();
}

uint64_t sub_192101850(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return result;
    }
  }
}

uint64_t sub_1921018A0(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return result;
    }
  }
}

unint64_t sub_1921018F0()
{
  result = qword_1EADEDE58;
  if (!qword_1EADEDE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFFF8, &qword_1922320E0);
    sub_192031E74(qword_1EADED798, &qword_1EADF0000, &qword_1922320E8);
    sub_1921019A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE58);
  }

  return result;
}

unint64_t sub_1921019A8()
{
  result = qword_1EADED410;
  if (!qword_1EADED410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED410);
  }

  return result;
}

unint64_t sub_1921019FC()
{
  result = qword_1EADEDE50;
  if (!qword_1EADEDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0008, &qword_1922320F0);
    sub_192031E74(qword_1EADED418, &qword_1EADF0010, &qword_1922320F8);
    sub_1921019A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE50);
  }

  return result;
}

uint64_t sub_192101AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192101B1C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192101B78()
{
  result = qword_1EADED890;
  if (!qword_1EADED890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED890);
  }

  return result;
}

void sub_192101C04()
{
  sub_19203F7F4();
  if (v0 <= 0x3F)
  {
    sub_192101D38(319, &qword_1EADEE4A8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_192101D38(319, qword_1EADEDA70, &type metadata for OptionalMargins, _s14IndexedStorageVMa);
      if (v2 <= 0x3F)
      {
        sub_192101D38(319, &qword_1EADEDA68, &type metadata for DynamicIslandBackground, _s14IndexedStorageVMa);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_192101D38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_192101D8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225EE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_192101DB8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_192225EF0();
}

uint64_t sub_192101E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192102490();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.widgetDescriptor.getter()
{
  sub_192101EC4();
  sub_1922261E0();
  return v1;
}

unint64_t sub_192101EC4()
{
  result = qword_1ED749DC0;
  if (!qword_1ED749DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749DC0);
  }

  return result;
}

void (*EnvironmentValues.widgetDescriptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_192101EC4();
  sub_1922261E0();
  return sub_192101FB4;
}

void sub_192101FB4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_1922261F0();
    v7 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

void *sub_192102048()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *v0;

    sub_192227FA0();
    v9 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_192102198(char *a1)
{
  v2 = *a1;
  sub_19202F774();
  return sub_1922261F0();
}

unint64_t sub_192102224()
{
  result = qword_1EADECDD0;
  if (!qword_1EADECDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0028, &qword_192232200);
    sub_19206CE70();
    sub_192031E74(&qword_1EADECD18, &qword_1EADF0108, &qword_192232320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDD0);
  }

  return result;
}

unint64_t sub_1921022DC()
{
  result = qword_1EADED308;
  if (!qword_1EADED308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00B0, &qword_1922322B8);
    sub_19206D710();
    sub_19206D880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED308);
  }

  return result;
}

void sub_192102390()
{
  if (!qword_1EADECE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0110, &qword_1922326A0);
    v0 = sub_192225A00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADECE88);
    }
  }
}

unint64_t sub_1921023F4()
{
  result = qword_1EADECD58;
  if (!qword_1EADECD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0118, &qword_1922326A8);
    sub_192102224();
    sub_19206D79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD58);
  }

  return result;
}

unint64_t sub_192102490()
{
  result = qword_1EADF0120;
  if (!qword_1EADF0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0110, &qword_1922326A0);
    sub_192102514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0120);
  }

  return result;
}

unint64_t sub_192102514()
{
  result = qword_1EADF0128;
  if (!qword_1EADF0128)
  {
    sub_19202A7A8(255, &qword_1ED74C500, 0x1E6994388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0128);
  }

  return result;
}

uint64_t CHSWidget.logDescription.getter()
{
  v1 = v0;
  v2 = [v0 extensionBundleIdentifier];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v6 = [v1 kind];
  v7 = sub_192227960();
  v9 = v8;

  MEMORY[0x193B0A990](v7, v9);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

uint64_t CHSWidgetPersonality.logDescription.getter()
{
  v1 = v0;
  v2 = [v0 extensionBundleIdentifier];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v6 = [v1 kind];
  v7 = sub_192227960();
  v9 = v8;

  MEMORY[0x193B0A990](v7, v9);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

uint64_t WidgetAccentedRenderingModeViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v98 = a1;
  v2 = sub_192226840();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0130, &qword_192232780);
  v5 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v86 = &v79 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0138, &qword_192232788);
  v7 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v79 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0140, &qword_192232790);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v79 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0148, &qword_192232798);
  v11 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v84 = &v79 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0150, &qword_1922327A0);
  v13 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0158, &qword_1922327A8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v79 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0160, &qword_1922327B0);
  v18 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v79 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0168, &qword_1922327B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0170, &qword_1922327C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0178, &qword_1922327C8);
  v28 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v30 = &v79 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0180, &qword_1922327D0);
  v31 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v79 - v32;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0188, &qword_1922327D8);
  v33 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v35 = &v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0190, &qword_1922327E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v79 - v38;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0198, &qword_1922327E8);
  v40 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v42 = &v79 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A0, &qword_1922327F0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v79 - v46;
  v48 = *v96;
  if (v48 > 1)
  {
    if (v48 == 2)
    {
      v96 = v45;
      v85 = v47;
      KeyPath = swift_getKeyPath();
      v61 = swift_getKeyPath();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
      v63 = v88;
      (*(*(v62 - 8) + 16))(v88, v98, v62);
      v64 = v63 + *(v89 + 36);
      *v64 = KeyPath;
      *(v64 + 8) = 0;
      *(v64 + 16) = v61;
      *(v64 + 24) = 256;
      v65 = v80;
      sub_19202CFFC(v63, v80, &qword_1EADF0160, &qword_1922327B0);
      v86 = v15;
      sub_19202CFFC(v65, v83, &qword_1EADF0140, &qword_192232790);
      swift_storeEnumTagMultiPayload();
      sub_192103A64();
      sub_19210394C();
      v66 = v84;
      sub_1922266E0();
      sub_192033970(v65, &qword_1EADF0140, &qword_192232790);
      sub_192033970(v63, &qword_1EADF0160, &qword_1922327B0);
      v52 = &qword_1EADF0148;
      v53 = &qword_192232798;
      sub_19202CFFC(v66, v91, &qword_1EADF0148, &qword_192232798);
      swift_storeEnumTagMultiPayload();
      sub_1921039D8();
      v67 = v93;
      sub_1922266E0();
      sub_19202CFFC(v67, v35, &qword_1EADF0158, &qword_1922327A8);
      swift_storeEnumTagMultiPayload();
      sub_192103724();
      sub_1921038C0();
      v68 = v85;
      sub_1922266E0();
      sub_192033970(v67, &qword_1EADF0158, &qword_1922327A8);
      sub_19202CFFC(v68, v100, &qword_1EADF01A0, &qword_1922327F0);
      swift_storeEnumTagMultiPayload();
      sub_192103698();
      sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
      sub_1922266E0();
      sub_192033970(v68, &qword_1EADF01A0, &qword_1922327F0);
      v57 = v66;
    }

    else
    {
      if (v48 == 3)
      {
        sub_192226830();
        v49 = v86;
        v50 = &v86[*(v101 + 36)];
        sub_192226CD0();
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
        (*(*(v51 - 8) + 16))(v49, v98, v51);
        v52 = &qword_1EADF0130;
        v53 = &qword_192232780;
        sub_19202CFFC(v49, v100, &qword_1EADF0130, &qword_192232780);
        swift_storeEnumTagMultiPayload();
        sub_192103698();
        sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
        sub_1922266E0();
LABEL_10:
        v57 = v49;
        goto LABEL_11;
      }

      v69 = v35;
      v70 = v47;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
      (*(*(v71 - 8) + 16))(v39, v98, v71);
      swift_storeEnumTagMultiPayload();
      sub_1921037B0();
      sub_192103814();
      sub_1922266E0();
      sub_19202CFFC(v42, v69, &qword_1EADF0198, &qword_1922327E8);
      swift_storeEnumTagMultiPayload();
      sub_192103724();
      sub_1921038C0();
      sub_1922266E0();
      sub_192033970(v42, &qword_1EADF0198, &qword_1922327E8);
      v52 = &qword_1EADF01A0;
      v53 = &qword_1922327F0;
      sub_19202CFFC(v70, v100, &qword_1EADF01A0, &qword_1922327F0);
      swift_storeEnumTagMultiPayload();
      sub_192103698();
      sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
      sub_1922266E0();
      v57 = v70;
    }

LABEL_11:
    v58 = v52;
    v59 = v53;
    return sub_192033970(v57, v58, v59);
  }

  v84 = v30;
  v85 = v47;
  v86 = v15;
  v96 = v45;
  if (v48)
  {
    v72 = swift_getKeyPath();
    v73 = swift_getKeyPath();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
    v49 = v88;
    (*(*(v74 - 8) + 16))(v88, v98, v74);
    v75 = v49 + *(v89 + 36);
    *v75 = v72;
    *(v75 + 8) = 0;
    *(v75 + 16) = v73;
    *(v75 + 24) = 0;
    v52 = &qword_1EADF0160;
    v53 = &qword_1922327B0;
    sub_19202CFFC(v49, v91, &qword_1EADF0160, &qword_1922327B0);
    swift_storeEnumTagMultiPayload();
    sub_19210394C();
    sub_1921039D8();
    v76 = v93;
    sub_1922266E0();
    sub_19202CFFC(v76, v35, &qword_1EADF0158, &qword_1922327A8);
    swift_storeEnumTagMultiPayload();
    sub_192103724();
    sub_1921038C0();
    v77 = v85;
    sub_1922266E0();
    sub_192033970(v76, &qword_1EADF0158, &qword_1922327A8);
    sub_19202CFFC(v77, v100, &qword_1EADF01A0, &qword_1922327F0);
    swift_storeEnumTagMultiPayload();
    sub_192103698();
    sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
    sub_1922266E0();
    sub_192033970(v77, &qword_1EADF01A0, &qword_1922327F0);
    goto LABEL_10;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
  (*(*(v54 - 8) + 16))(v27, v98, v54);
  sub_19202CFFC(v27, v23, &qword_1EADF0170, &qword_1922327C0);
  swift_storeEnumTagMultiPayload();
  sub_192103AF0(qword_1ED748CA0, &qword_1EADF0170, &qword_1922327C0);
  sub_1921037B0();
  v98 = v35;
  v55 = v84;
  sub_1922266E0();
  sub_192033970(v27, &qword_1EADF0170, &qword_1922327C0);
  sub_19202CFFC(v55, v39, &qword_1EADF0178, &qword_1922327C8);
  swift_storeEnumTagMultiPayload();
  sub_192103814();
  sub_1922266E0();
  sub_19202CFFC(v42, v98, &qword_1EADF0198, &qword_1922327E8);
  swift_storeEnumTagMultiPayload();
  sub_192103724();
  sub_1921038C0();
  v56 = v85;
  sub_1922266E0();
  sub_192033970(v42, &qword_1EADF0198, &qword_1922327E8);
  sub_19202CFFC(v56, v100, &qword_1EADF01A0, &qword_1922327F0);
  swift_storeEnumTagMultiPayload();
  sub_192103698();
  sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
  sub_1922266E0();
  sub_192033970(v56, &qword_1EADF01A0, &qword_1922327F0);
  v57 = v55;
  v58 = &qword_1EADF0178;
  v59 = &qword_1922327C8;
  return sub_192033970(v57, v58, v59);
}

unint64_t sub_192103698()
{
  result = qword_1ED748C48;
  if (!qword_1ED748C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01A0, &qword_1922327F0);
    sub_192103724();
    sub_1921038C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C48);
  }

  return result;
}

unint64_t sub_192103724()
{
  result = qword_1ED748C68;
  if (!qword_1ED748C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0198, &qword_1922327E8);
    sub_1921037B0();
    sub_192103814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C68);
  }

  return result;
}

unint64_t sub_1921037B0()
{
  result = qword_1ED748C38;
  if (!qword_1ED748C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01A8, &qword_1922327F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C38);
  }

  return result;
}

unint64_t sub_192103814()
{
  result = qword_1ED748C60;
  if (!qword_1ED748C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0178, &qword_1922327C8);
    sub_192103AF0(qword_1ED748CA0, &qword_1EADF0170, &qword_1922327C0);
    sub_1921037B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C60);
  }

  return result;
}

unint64_t sub_1921038C0()
{
  result = qword_1ED748C58;
  if (!qword_1ED748C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0158, &qword_1922327A8);
    sub_19210394C();
    sub_1921039D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C58);
  }

  return result;
}

unint64_t sub_19210394C()
{
  result = qword_1ED748C90;
  if (!qword_1ED748C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0160, &qword_1922327B0);
    sub_1921037B0();
    sub_192040CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C90);
  }

  return result;
}

unint64_t sub_1921039D8()
{
  result = qword_1ED748C50;
  if (!qword_1ED748C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0148, &qword_192232798);
    sub_192103A64();
    sub_19210394C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C50);
  }

  return result;
}

unint64_t sub_192103A64()
{
  result = qword_1ED748C80;
  if (!qword_1ED748C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0140, &qword_192232790);
    sub_19210394C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C80);
  }

  return result;
}

uint64_t sub_192103AF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1921037B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetAccentedRenderingModeViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_192103C38()
{
  result = qword_1ED748C40;
  if (!qword_1ED748C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01B0, &qword_1922328F8);
    sub_192103698();
    sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C40);
  }

  return result;
}

unint64_t sub_192103CF8()
{
  result = qword_1EADF01B8;
  if (!qword_1EADF01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF01B8);
  }

  return result;
}

uint64_t WidgetRelevanceAttribute<A>.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192224CC0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WidgetRelevanceAttribute<A>.init(group:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WidgetRelevanceAttribute<A>.init(configuration:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = sub_192224CC0();
  (*(*(v12 - 8) + 32))(v11, a2, v12);
  swift_storeEnumTagMultiPayload();
  return sub_192203894(a1, v11, a3, a4);
}

{
  v8 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v15 = a1;
  v12 = sub_192224CC0();
  (*(*(v12 - 8) + 32))(v11, a2, v12);
  swift_storeEnumTagMultiPayload();
  return sub_192203894(&v15, v11, a3, a4);
}

uint64_t sub_19210406C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for WidgetRelevanceEntry();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921040DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_192224CC0() - 8);
  v9 = 16;
  if (*(v8 + 64) > 0x10uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((a1 + v12) & ~v11) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_19210432C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_192224CC0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 0x10)
  {
    v11 = 16;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (&a1[v14] & ~v13);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

uint64_t (*ActivityConfiguration.init<A>(for:content:dynamicIsland:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1922253A0();
  v17 = swift_allocObject();
  *(v17 + 2) = a5;
  *(v17 + 3) = a6;
  *(v17 + 4) = a7;
  *(v17 + 5) = a9;
  *(v17 + 6) = a1;
  *(v17 + 7) = a2;
  v18 = type metadata accessor for ActivityConfiguration();
  v19 = (a8 + *(v18 + 36));
  *v19 = sub_192104820;
  v19[1] = v17;
  result = swift_allocObject();
  *(result + 2) = a5;
  *(result + 3) = a6;
  *(result + 4) = a7;
  *(result + 5) = a9;
  *(result + 6) = a3;
  *(result + 7) = a4;
  v21 = (a8 + *(v18 + 40));
  *v21 = sub_192104848;
  v21[1] = result;
  return result;
}

uint64_t sub_192104790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_192227570();
}

uint64_t sub_192104820(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_192104790(a1, v1[6], v1[7], v1[2], v1[3]);
}

uint64_t sub_192104848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  a2[3] = type metadata accessor for DynamicIsland();
  a2[4] = &off_1F06ACEC0;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v6(a1);
}

uint64_t ActivityConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for ViewSource(0);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v26 = *(v7 + 16);
  v26(&v25 - v10, v2, a1);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v28 = v13;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v13 + 16) = v15;
  *(v13 + 24) = v14;
  v16 = *(v7 + 32);
  v16(v13 + v12, v11, a1);
  v17 = v27;
  v26(v27, v32, a1);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;
  v16(v18 + v12, v17, a1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);
  v20 = v29;
  v21 = &v29[*(v19 + 48)];
  v22 = sub_1922253B0();
  (*(*(v22 - 8) + 16))(v20, v32, v22);
  v23 = v28;
  *v21 = sub_192104C74;
  v21[1] = v23;
  v21[2] = sub_192104E3C;
  v21[3] = v18;
  swift_storeEnumTagMultiPayload();
  return sub_19207ED1C(v20, v31);
}

uint64_t sub_192104B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for ActivityViewContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = a2 + *(type metadata accessor for ActivityConfiguration() + 36);
  v16 = *v14;
  v15 = *(v14 + 8);
  v17 = a4;
  v18 = a1;
  sub_19215F080(a3, v17, v13);
  if (!v4)
  {
    v18 = v16(v13);
    (*(v10 + 8))(v13, v9);
  }

  return v18;
}

uint64_t sub_192104C74(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ActivityConfiguration() - 8);
  return sub_192104B30(a1, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_192104CFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v8 = type metadata accessor for ActivityViewContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = a1 + *(type metadata accessor for ActivityConfiguration() + 40);
  v14 = *v13;
  v15 = *(v13 + 8);
  result = sub_19215F080(a2, a3, v12);
  if (!v4)
  {
    v14(v12);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_192104E3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ActivityConfiguration() - 8);
  return sub_192104CFC(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t ActivityPreviewSourceStaleModifications.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t ActivityConfiguration.archivedViewCollections(for:metricsDefinition:environment:staleModifications:supportedFamilies:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 168) = a6;
  *(v7 + 176) = v6;
  *(v7 + 152) = a2;
  *(v7 + 160) = a5;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90) - 8) + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v12 = type metadata accessor for JindoViewCollection();
  *(v7 + 200) = v12;
  v13 = *(v12 - 8);
  *(v7 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820) - 8) + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  v16 = type metadata accessor for ActivityViewCollection();
  *(v7 + 232) = v16;
  v17 = *(v16 - 8);
  *(v7 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  v19 = *(a6 + 16);
  *(v7 + 272) = v19;
  v20 = *(a6 + 24);
  *(v7 + 280) = v20;
  v21 = type metadata accessor for ActivityViewContext();
  *(v7 + 288) = v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v7 + 296) = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 - 8);
  *(v7 + 304) = v23;
  *(v7 + 312) = *(v23 + 64);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  v24 = *(v19 - 8);
  *(v7 + 336) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v26 = *(v21 - 8);
  *(v7 + 352) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 384) = AssociatedTypeWitness;
  v29 = *(AssociatedTypeWitness - 8);
  *(v7 + 392) = v29;
  v30 = *(v29 + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_getTupleTypeMetadata2();
  v31 = sub_192228240();
  *(v7 + 424) = v31;
  v32 = *(v31 - 8);
  *(v7 + 432) = v32;
  v33 = *(v32 + 64) + 15;
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v34 = type metadata accessor for ActivityPreviewSource.Content();
  *(v7 + 456) = v34;
  v35 = *(v34 - 8);
  *(v7 + 464) = v35;
  v36 = *(v35 + 64) + 15;
  v37 = swift_task_alloc();
  v38 = *a3;
  *(v7 + 472) = v37;
  *(v7 + 480) = v38;
  *(v7 + 520) = *a4;
  *(v7 + 488) = sub_192227CC0();
  *(v7 + 496) = sub_192227CB0();
  v39 = swift_task_alloc();
  *(v7 + 504) = v39;
  *v39 = v7;
  v39[1] = sub_192105490;

  return ActivityPreviewSource.makeContent<A>(for:)(v37, v19, v19, v20);
}

uint64_t sub_192105490()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  v6 = *(v3 + 496);
  v7 = *(v3 + 488);
  v9 = sub_192227C70();
  if (v2)
  {
    v10 = sub_192106518;
  }

  else
  {
    v10 = sub_1921055E8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1921055E8()
{
  v1 = *(v0 + 496);
  v191 = *(v0 + 520);
  v2 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 416);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 352);
  v9 = *(v0 + 336);
  v10 = *(v0 + 296);

  v157 = v10;
  v199 = sub_192227820();
  *(v0 + 104) = *(v2 + *(v3 + 36));
  v11 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193B0AA50](v11, WitnessTable);
  *(v0 + 112) = *(v0 + 96);
  sub_192228660();
  sub_192228630();
  v145 = v5 - 8;
  v147 = (v4 + 32);
  v140 = (v6 + 32);
  v142 = v5;
  v13 = (v9 + 16);
  v150 = (v8 + 16);
  v161 = (v8 + 8);
  v138 = (v6 + 8);
  sub_192228650();
  v152 = (v9 + 16);
  v195 = (v6 + 16);
  while (1)
  {
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v17 = *(v0 + 416);
    v16 = *(v0 + 424);
    sub_192228640();
    (*v147)(v14, v15, v16);
    if ((*(*v145 + 48))(v14, 1, v17) == 1)
    {
      break;
    }

    v164 = *(v0 + 472);
    v18 = *(v0 + 448);
    v20 = *(v0 + 400);
    v19 = *(v0 + 408);
    v21 = *(v0 + 376);
    v22 = *(v0 + 384);
    v23 = *(v0 + 344);
    v24 = *(v0 + 328);
    v179 = *(v0 + 288);
    v185 = *(v0 + 296);
    v25 = *(v0 + 272);
    v169 = *(v0 + 280);
    v26 = *v18;
    (*v140)(v19, &v18[*(v142 + 48)], v22);
    v27 = v164;
    v165 = *v13;
    (*v13)(v23, v27, v25);
    v28 = *v195;
    (*v195)(v20, v19, v22);
    sub_192100360(0xD000000000000016, 0x800000019224A760, v23, v20, v191 == 1, v25, v21);
    v29 = *(v157 + 48);
    v174 = v26;
    *v24 = v26;
    v30 = *v150;
    (*v150)(&v24[v29], v21, v179);
    sub_192227C40();
    sub_192227C20();
    if (v191 == 2)
    {
      v31 = *(v0 + 400);
      v32 = *(v0 + 408);
      v136 = v28;
      v33 = *(v0 + 384);
      v180 = v30;
      v186 = *(v0 + 376);
      v34 = *(v0 + 368);
      v35 = *(v0 + 344);
      v36 = *(v0 + 328);
      v37 = *(v0 + 288);
      v170 = *(v0 + 280);
      v38 = *(v0 + 272);
      v165(v35, *(v0 + 472), v38);
      v136(v31, v32, v33);
      sub_192100360(0xD000000000000016, 0x800000019224A760, v35, v31, 1, v38, v34);
      v39 = *(v157 + 48);
      *v36 = v174;
      v180(&v36[v39], v34, v37);
      sub_192227C20();
      v40 = *v161;
      (*v161)(v34, v37);
      v40(v186, v37);
    }

    else
    {
      (*v161)(*(v0 + 376), *(v0 + 288));
    }

    (*v138)(*(v0 + 408), *(v0 + 384));
    v13 = v152;
  }

  v41 = *(v0 + 296);
  v42 = *(v0 + 56);

  v43 = v199;
  if (sub_192227C10())
  {
    v44 = *(v0 + 352);
    v155 = *(v0 + 320);
    v133 = *(v0 + 312);
    v45 = *(v0 + 304);
    v148 = *(v0 + 240);
    v149 = *(v0 + 288);
    v46 = *(v0 + 208);
    v135 = *(v0 + 200);
    v137 = *(v0 + 216);
    v144 = *(v0 + 152);
    v146 = *(v0 + 232);
    v158 = *(v157 + 48);
    v134 = *(v0 + 168);
    v47 = *(v0 + 176) + *(v134 + 36);
    v48 = 0;
    v143 = *(type metadata accessor for ActivityMetricsDefinition() + 20);
    v166 = v45;
    v171 = (v45 + 16);
    v153 = (v44 + 32);
    v175 = (v46 + 56);
    v49 = MEMORY[0x1E69E7CC0];
    v139 = *(v47 + 8);
    v141 = *v47;
    while (1)
    {
      v50 = *(v0 + 296);
      v51 = sub_192227BF0();
      sub_192227BA0();
      if (v51)
      {
        result = (*(v166 + 16))(*(v0 + 320), v43 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v48, *(v0 + 296));
        v53 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v82 = *(v0 + 296);
        result = sub_192228450();
        if (v133 != 8)
        {
          goto LABEL_51;
        }

        v83 = *(v0 + 320);
        v84 = *(v0 + 296);
        *(v0 + 120) = result;
        (*v171)(v83, v0 + 120, v84);
        result = swift_unknownObjectRelease();
        v53 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
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
      }

      v54 = **(v0 + 320);
      result = (*v153)(*(v0 + 360), v155 + v158, *(v0 + 288));
      if (__OFADD__(v54, 1))
      {
        goto LABEL_49;
      }

      v187 = v53;
      v192 = v48;
      v196 = v49;
      v55 = *(v0 + 480);
      v56 = *(v0 + 360);
      v57 = *(v0 + 264);
      v58 = *(v0 + 224);
      v181 = *(v0 + 200);
      v60 = *(v0 + 152);
      v59 = *(v0 + 160);
      *(v0 + 128) = v54 + 1;
      v61 = sub_192228910();
      MEMORY[0x193B0A990](v61);

      MEMORY[0x193B0A990](45, 0xE100000000000000);
      if (*(v56 + *(v149 + 44)))
      {
        v62 = 0x656C617473;
      }

      else
      {
        v62 = 0x746E6572727563;
      }

      if (*(v56 + *(v149 + 44)))
      {
        v63 = 0xE500000000000000;
      }

      else
      {
        v63 = 0xE700000000000000;
      }

      MEMORY[0x193B0A990](v62, v63);

      v64 = v141(v56);
      sub_192106BE4(v60, v57 + v146[7], type metadata accessor for ActivityMetricsDefinition);
      v65 = *v175;
      (*v175)(v57, 1, 1, v181);
      *(v57 + v146[6]) = v64;
      *(v57 + v146[5]) = v55;
      v66 = v57 + v146[9];
      *v66 = 0x206574617453;
      *(v66 + 8) = 0xE600000000000000;
      *(v66 + 16) = 0;
      *(v66 + 18) = 0;
      *(v57 + v146[8]) = v59;
      sub_19202CFFC(v144 + v143, v58, &qword_1EADEFA58, &unk_19222F820);
      v67 = type metadata accessor for JindoMetricsDefinition();
      LODWORD(v64) = (*(*(v67 - 8) + 48))(v58, 1, v67);
      v68 = v55;

      sub_192033970(v58, &qword_1EADEFA58, &unk_19222F820);
      if (v64 != 1)
      {
        v69 = *(v0 + 480);
        v70 = *(v0 + 264);
        v71 = *(v0 + 216);
        v72 = *(v0 + 200);
        v73 = *(v0 + 152);
        v74 = *(v0 + 176) + *(v134 + 40);
        v75 = *(v74 + 8);
        (*v74)(*(v0 + 360));
        sub_192106BE4(v73, v71 + *(v135 + 24), type metadata accessor for ActivityMetricsDefinition);
        sub_19203832C((v0 + 16), v137 + 8);
        *v71 = v69;
        v76 = v69;
        sub_192033970(v70, &qword_1EADEF1B0, qword_19222C1D0);
        sub_192106D7C(v71, v70, type metadata accessor for JindoViewCollection);
        v65(v70, 0, 1, v72);
      }

      sub_192106BE4(*(v0 + 264), *(v0 + 256), type metadata accessor for ActivityViewCollection);
      v49 = v196;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1920C33C4(0, v196[2] + 1, 1, v196);
      }

      v78 = v49[2];
      v77 = v49[3];
      if (v78 >= v77 >> 1)
      {
        v49 = sub_1920C33C4(v77 > 1, v78 + 1, 1, v49);
      }

      v79 = *(v0 + 296);
      v81 = *(v0 + 256);
      v80 = *(v0 + 264);
      (*v161)(*(v0 + 360), *(v0 + 288));
      v49[2] = v78 + 1;
      sub_192106D7C(v81, v49 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v78, type metadata accessor for ActivityViewCollection);
      sub_192106C4C(v80);
      v43 = v199;
      v48 = v192 + 1;
      if (v187 == sub_192227C10())
      {
        goto LABEL_31;
      }
    }
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v176 = v49[2];
  if (v176)
  {
    v85 = 0;
    v86 = MEMORY[0x1E69E7CC0];
    v182 = *(v0 + 240);
    v87 = *(v0 + 512);
    v197 = v49;
    while (v85 < v49[2])
    {
      v88 = *(v0 + 192);
      sub_192106BE4(v49 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v85, *(v0 + 248), type metadata accessor for ActivityViewCollection);
      sub_1920B97C8(v88);
      if (v87)
      {
        v120 = *(v0 + 464);
        v119 = *(v0 + 472);
        v121 = *(v0 + 456);
        v122 = *(v0 + 248);

        sub_192106C4C(v122);
        (*(v120 + 8))(v119, v121);

        v123 = *(v0 + 472);
        v125 = *(v0 + 440);
        v124 = *(v0 + 448);
        v127 = *(v0 + 400);
        v126 = *(v0 + 408);
        v128 = *(v0 + 368);
        v129 = *(v0 + 376);
        v130 = *(v0 + 360);
        v131 = *(v0 + 344);
        v160 = *(v0 + 328);
        v163 = *(v0 + 320);
        v168 = *(v0 + 264);
        v173 = *(v0 + 256);
        v178 = *(v0 + 248);
        v184 = *(v0 + 224);
        v190 = *(v0 + 216);
        v194 = *(v0 + 192);
        v198 = *(v0 + 184);

        v132 = *(v0 + 8);

        return v132();
      }

      v188 = *(v0 + 248);
      v89 = *(v0 + 184);
      v90 = *(v0 + 192);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01D8, &qword_192232AA0);
      v92 = *(v91 + 48);
      v93 = *(v91 + 52);
      swift_allocObject();
      v94 = sub_192106A78();
      *(v0 + 136) = sub_192227570();
      *(v0 + 144) = v94;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E0, &qword_192232AA8);
      v96 = *(v95 + 48);
      v97 = *(v95 + 52);
      swift_allocObject();

      v98 = sub_1922264B0();
      sub_19202CFFC(v90, v89, &qword_1EADEF1C0, &unk_192232A90);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
      v100 = *(v99 + 48);
      v101 = *(v99 + 52);
      v102 = swift_allocObject();
      sub_192106CA8(v89, v102 + *(*v102 + 96));
      *(v102 + *(*v102 + 104)) = v98;

      sub_192226490();
      sub_192226450();
      sub_192033970(v90, &qword_1EADEF1C0, &unk_192232A90);
      swift_weakAssign();

      sub_192106C4C(v188);
      *(v0 + 80) = v102;
      *(v0 + 88) = v98;
      sub_192106D18();
      v103 = sub_1922263C0();
      v105 = v104;
      v49 = v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_192072CD4(0, *(v86 + 2) + 1, 1, v86);
      }

      v107 = *(v86 + 2);
      v106 = *(v86 + 3);
      if (v107 >= v106 >> 1)
      {
        v86 = sub_192072CD4((v106 > 1), v107 + 1, 1, v86);
      }

      ++v85;
      *(v86 + 2) = v107 + 1;
      v108 = &v86[16 * v107];
      *(v108 + 4) = v103;
      *(v108 + 5) = v105;
      v109 = *(v0 + 80);
      v110 = *(v0 + 88);

      v87 = 0;
      if (v176 == v85)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_50;
  }

  v86 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v193 = v86;
  v111 = *(v0 + 448);
  v112 = *(v0 + 440);
  v114 = *(v0 + 400);
  v113 = *(v0 + 408);
  v116 = *(v0 + 368);
  v115 = *(v0 + 376);
  v117 = *(v0 + 360);
  v151 = *(v0 + 344);
  v154 = *(v0 + 328);
  v156 = *(v0 + 320);
  v159 = *(v0 + 264);
  v162 = *(v0 + 256);
  v167 = *(v0 + 248);
  v172 = *(v0 + 224);
  v177 = *(v0 + 216);
  v183 = *(v0 + 192);
  v189 = *(v0 + 184);
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

  v118 = *(v0 + 8);

  return v118(v193);
}

uint64_t sub_192106518()
{
  v1 = v0[62];

  v22 = v0[64];
  v2 = v0[59];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v10 = v0[43];
  v11 = v0[41];
  v14 = v0[40];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[24];
  v21 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_19210666C(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1920A5800;

  return ActivityConfiguration.archivedViewCollections(for:metricsDefinition:environment:staleModifications:supportedFamilies:)(a1, a2, a3, a4, a5, a6);
}

uint64_t static EnvironmentValues.ActivityFullScreenKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF01D0 = a1;
  return result;
}

uint64_t sub_192106824@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF01D0;
  return result;
}

uint64_t sub_192106874()
{
  sub_1920F8CDC();
  sub_1922261E0();
  return v1;
}

uint64_t sub_1921068B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01D8, &qword_192232AA0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_192106A78();
  v12 = sub_192227570();
  v22[0] = v11;
  v22[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E0, &qword_192232AA8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_1922264B0();
  sub_19202CFFC(a1, v7, &qword_1EADEF1C0, &unk_192232A90);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_192106CA8(v7, v20 + *(*v20 + 96));
  *(v20 + *(*v20 + 104)) = v16;

  sub_192226490();
  sub_192226450();
  sub_192033970(a1, &qword_1EADEF1C0, &unk_192232A90);
  swift_weakAssign();

  *a2 = v20;
  a2[1] = v16;
  return result;
}

uint64_t sub_192106A78()
{
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
  v1 = sub_192225790();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19222B4A0;
  sub_192225780();
  sub_192225750();
  sub_192225770();
  sub_192225760();
  v6 = sub_19216FF08(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v0 + 24) = v6;
  v7 = qword_1EADEDA08;
  sub_192225750();
  (*(v2 + 56))(v0 + v7, 0, 1, v1);
  return v0;
}

uint64_t sub_192106BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192106C4C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityViewCollection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192106CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_192106D18()
{
  result = qword_1EADEDB00[0];
  if (!qword_1EADEDB00[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01E8, &unk_192232AB0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEDB00);
  }

  return result;
}

uint64_t sub_192106D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_192106E2C()
{
  result = qword_1EADF01F0;
  if (!qword_1EADF01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF01F0);
  }

  return result;
}

unint64_t sub_192106E80()
{
  result = sub_1922253B0();
  if (v1 <= 0x3F)
  {
    result = sub_1920DA1D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ActivityPreviewSourceExpanding.archivedViewCollections(for:metricsDefinition:environment:staleModifications:supportedFamilies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1920EF2F4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

WidgetKit::SchedulingPriority_optional __swiftcall SchedulingPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 30)
  {
    if (rawValue == 4)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 20)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 47)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 37)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 31)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_192107154()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_192232DC0[v1]);
  return sub_192228B30();
}

uint64_t sub_1921071DC()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_192232DC0[v1]);
  return sub_192228B30();
}

unint64_t sub_19210726C()
{
  result = qword_1EADECB08;
  if (!qword_1EADECB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB08);
  }

  return result;
}

id sub_1921075A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyConfigurationINIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static EmptyConfiguration.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EmptyConfiguration.title.setter(uint64_t a1)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EmptyConfiguration.title.modify())()
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v0 = sub_192224FB0();
  __swift_project_value_buffer(v0, qword_1ED749180);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_192107820(uint64_t a1)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_192107904(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x1E695A568] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_19210BAA0();
  *v5 = v2;
  v5[1] = sub_1921079B0;

  return MEMORY[0x1EEDB3E68](a2, v6);
}

uint64_t sub_1921079B0()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t ControlToggle.init<A, B, C, D, E>(kind:updatableEntity:content:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1920818CC();
  v26 = sub_192224BB0();
  v25 = v17;
  sub_192107CA8(a3, a12, v32);
  v18 = swift_allocObject();
  *(v18 + 16) = *(a8 + *MEMORY[0x1E69E77B0]);
  *(v18 + 32) = a8;
  *(v18 + 40) = a10;
  *(v18 + 48) = a11;
  *(v18 + 56) = a12;
  *(v18 + 64) = a13;
  *(v18 + 72) = a14;
  *(v18 + 80) = a4;
  *(v18 + 88) = a5;
  v19 = sub_192080D60();
  v31 = 0;
  swift_getAssociatedConformanceWitness();

  v20 = sub_1921998B8();
  sub_192080DB4(a1, a2, &type metadata for EmptyConfiguration, v26, v25, 0, 0, &v31, a9, v32, v20, v21, sub_19210C17C, v18, nullsub_1, 0, a6, a7, 0, 0, &type metadata for EmptyConfiguration, a10, MEMORY[0x1E6981E70], a11, &type metadata for KeyPathToggleBox, a13, MEMORY[0x1E6981E60], a14, v19);

  *(a9 + 192) = 1;
  return result;
}

{
  sub_1920818CC();
  v17 = sub_192224BB0();
  v26 = v18;
  v27 = v17;
  sub_192107F78(a3, a12, v33);
  v19 = swift_allocObject();
  *(v19 + 16) = *(a8 + *MEMORY[0x1E69E77B0]);
  *(v19 + 32) = a8;
  *(v19 + 40) = a10;
  *(v19 + 48) = a11;
  *(v19 + 56) = a12;
  *(v19 + 64) = a13;
  *(v19 + 72) = a14;
  *(v19 + 80) = a4;
  *(v19 + 88) = a5;
  v20 = sub_192080D60();
  v32 = 0;
  swift_getAssociatedConformanceWitness();

  v21 = sub_1921998B8();
  sub_192199098(a1, a2, &type metadata for EmptyConfiguration, v27, v26, 0, 0, &v32, a9, v33, v21, v22, sub_192108164, v19, a6, a7, 0, 0, &type metadata for EmptyConfiguration, a10, a11, &type metadata for KeyPathToggleBox, a13, a14, v20);

  *(a9 + 192) = 1;
  return result;
}

uint64_t sub_192107CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *a3 = &unk_192233038;
  a3[1] = v6;
  a3[2] = sub_19210C038;
  a3[3] = v7;
  a3[4] = &unk_192233040;
  a3[5] = 0;
}

uint64_t sub_192107D5C()
{
  swift_getAssociatedConformanceWitness();

  return sub_1921998B8();
}

uint64_t sub_192107F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *a3 = &unk_192233010;
  a3[1] = v6;
  a3[2] = sub_19210BE4C;
  a3[3] = v7;
  a3[4] = &unk_192233018;
  a3[5] = 0;
}

uint64_t sub_19210802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x1EEE9AC00])();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18(1);
  sub_1921BB14C(v15, a7, a10);
  v19 = *(v11 + 8);
  v19(v15, a7);
  sub_1921BB14C(v17, a7, a10);
  return (v19)(v17, a7);
}

uint64_t sub_1921081A8()
{
  swift_getAssociatedConformanceWitness();

  return sub_1921998B8();
}

uint64_t sub_1921082EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21(1);
  sub_1921BB14C(v18, a8, a13);
  v22 = *(v14 + 8);
  v22(v18, a8);
  sub_1921BB14C(v20, a8, a13);
  return (v22)(v20, a8);
}

uint64_t sub_19210843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a9 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21(1);
  sub_1921BB14C(v18, a9, a14);
  v22 = *(v14 + 8);
  v22(v18, a9);
  sub_1921BB14C(v20, a9, a14);
  return (v22)(v20, a9);
}

unint64_t sub_1921085E4()
{
  result = qword_1ED749A90;
  if (!qword_1ED749A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749A90);
  }

  return result;
}

unint64_t sub_19210863C()
{
  result = qword_1ED749AA0[0];
  if (!qword_1ED749AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED749AA0);
  }

  return result;
}

unint64_t sub_192108694()
{
  result = qword_1EADF01F8;
  if (!qword_1EADF01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF01F8);
  }

  return result;
}

uint64_t sub_19210877C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = sub_192228240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v19[1] = a1;
  v12 = (v6 + *MEMORY[0x1E69E77B0]);
  v13 = *v12;
  v14 = v12[1];
  sub_192228BA0();

  v15 = swift_dynamicCast();
  v16 = *(*(a2 - 8) + 56);
  if (v15)
  {
    v17 = *(a2 - 8);
    v16(v11, 0, 1, a2);
    return (*(v17 + 32))(a3, v11, a2);
  }

  else
  {
    v16(v11, 1, 1, a2);
    (*(v8 + 8))(v11, v7);
    sub_19210BF4C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_19210897C(uint64_t *a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *a1;
  v4 = *(a2 + 8);
  v2[9] = v4;
  v5 = *(v4 + 8);
  v6 = MEMORY[0x1E69E77B0];
  v2[10] = v5;
  v7 = *(v3 + *v6);
  v2[11] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[12] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(v7 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192108AE8, 0, 0);
}

uint64_t sub_192108AE8()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = *(v0[8] + 16);
  v4 = sub_19210BD60();
  v0[2] = v1;
  v0[3] = MEMORY[0x1E69E6370];
  v0[4] = v3;
  v0[5] = v4;
  sub_192224D20();
  v5 = sub_192228BA0();
  sub_19210877C(v2, v5, (v0 + 6));
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v0[17] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(MEMORY[0x1E695A2C8] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_192108C8C;
  v14 = v0[16];
  v15 = v0[14];
  v16 = v0[12];

  return MEMORY[0x1EEDB3838](v14, v16, AssociatedConformanceWitness);
}

uint64_t sub_192108C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v5 = sub_192108EB0;
  }

  else
  {
    v5 = sub_192108DF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192108DF4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  sub_192224B60();

  (*(v4 + 8))(v2, v5);
  v6 = *(v0 + 160);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_192108EB0()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_192108F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 161) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  v7 = *a4;
  v8 = *(a6 + 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 8);
  v10 = MEMORY[0x1E69E77B0];
  *(v6 + 80) = v9;
  v11 = *(v7 + *v10);
  *(v6 + 88) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 96) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v6 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v15 = *(v11 - 8);
  *(v6 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19210909C, 0, 0);
}

uint64_t sub_19210909C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = *(v0[8] + 16);
  v4 = sub_19210BD60();
  v0[2] = v1;
  v0[3] = MEMORY[0x1E69E6370];
  v0[4] = v3;
  v0[5] = v4;
  sub_192224D20();
  v5 = sub_192228BA0();
  sub_19210877C(v2, v5, (v0 + 6));
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v0[17] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(MEMORY[0x1E695A2C8] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_19210923C;
  v14 = v0[16];
  v15 = v0[14];
  v16 = v0[12];

  return MEMORY[0x1EEDB3838](v14, v16, AssociatedConformanceWitness);
}

uint64_t sub_19210923C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v5 = sub_192109460;
  }

  else
  {
    v5 = sub_1921093A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921093A4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  *(v0 + 160) = *(v0 + 161);
  sub_192224B80();

  (*(v4 + 8))(v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_192109460()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1921094F8(uint64_t *a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *a1;
  v2[9] = *a1;
  v4 = *(a2 + 8);
  v2[10] = v4;
  v2[11] = *(v4 + 8);
  v5 = *(v3 + *MEMORY[0x1E69E77B0]);
  v2[12] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[13] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = *(v5 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192109668, 0, 0);
}

uint64_t sub_192109668()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  v4 = *(*(v0[9] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A528] + 8);
  v0[18] = v4;
  v5 = *(v2 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = WitnessTable;
  sub_192224D20();
  v7 = sub_192228BA0();
  sub_19210877C(v3, v7, (v0 + 6));
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v0[19] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(MEMORY[0x1E695A2C8] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_192109848;
  v16 = v0[17];
  v17 = v0[15];
  v18 = v0[13];

  return MEMORY[0x1EEDB3838](v16, v18, AssociatedConformanceWitness);
}

uint64_t sub_192109848()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    (*(v3[14] + 8))(v3[15], v3[13]);

    return MEMORY[0x1EEE6DFA0](sub_192109C18, 0, 0);
  }

  else
  {
    v4 = v3[18];
    (*(v3[14] + 8))(v3[15], v3[13]);
    v5 = *(MEMORY[0x1E6959E18] + 4);
    v6 = swift_task_alloc();
    v3[22] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_192109A24;
    v8 = v3[19];
    v9 = v3[17];

    return MEMORY[0x1EEDB2C60](v3 + 24, v8, WitnessTable);
  }
}