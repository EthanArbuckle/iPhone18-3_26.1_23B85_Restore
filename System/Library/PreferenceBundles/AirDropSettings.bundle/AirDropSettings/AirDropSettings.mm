uint64_t sub_16C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_284C(&qword_18430, &qword_E258);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = (__chkstk_darwin)();
  v8 = v20 - v7;
  if (*(v1 + 81) == 1)
  {
    v21 = a1;
    v22 = v6;
    v20[1] = v20;
    __chkstk_darwin(v5);
    v20[0] = &v20[-4];
    sub_D5F8();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v9 = qword_19180;
    v27 = sub_D688();
    v28 = v10;
    v29 = v11 & 1;
    v30 = v12;
    sub_D5F8();
    v13 = v9;
    v23 = sub_D688();
    v24 = v14;
    v25 = v15 & 1;
    v26 = v16;
    sub_284C(&qword_18438, &unk_E260);
    sub_2A64();
    sub_D7E8();
    v17 = v21;
    (*(v22 + 32))(v21, v8, v3);
    return (*(v22 + 56))(v17, 0, 1, v3);
  }

  else
  {
    v19 = *(v6 + 56);

    return v19(a1, 1, 1, v3);
  }
}

uint64_t sub_1A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v45 = sub_D5C8();
  v44 = *(v45 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin();
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_284C(&qword_18468, &qword_E270) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v59 = &v43 - v6;
  v58 = sub_D398();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_D3B8() - 8) + 64);
  __chkstk_darwin();
  v57 = sub_D348();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_D8F8() - 8) + 64);
  __chkstk_darwin();
  v48 = sub_D358();
  v47 = *(v48 - 8);
  v16 = *(v47 + 64);
  __chkstk_darwin();
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_284C(&qword_18410, &qword_E5D0);
  v49 = *(v50 - 8);
  v19 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v46 = &v43 - v20;
  v21 = sub_284C(&qword_18470, &qword_E278);
  v53 = *(v21 - 8);
  v54 = v21;
  v22 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v52 = &v43 - v23;
  v24 = a1[8];
  v25 = a1[9];
  v55 = a1;
  v26 = *(a1 + 80);
  v60[0] = v24;
  v60[1] = v25;
  v61 = v26;
  sub_284C(&qword_18478, &unk_E280);
  sub_D7C8();
  v62 = v65;
  v63 = v66;
  v64 = v67;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v27 = [qword_19180 bundleURL];
  sub_D378();

  (*(v11 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v57);
  sub_D3A8();
  sub_D368();
  v28 = v59;
  sub_D388();
  v29 = v58;
  result = (*(v7 + 48))(v28, 1, v58);
  if (result != 1)
  {
    v31 = v51;
    (*(v7 + 32))(v51, v28, v29);
    v32 = v55;
    sub_6ABC(v60);
    sub_D7D8();
    sub_2C84(v60);
    (*(v7 + 8))(v31, v29);
    (*(v47 + 8))(v18, v48);

    v33 = v46;
    sub_D798();
    v34 = v52;
    (*(v49 + 32))(v52, v33, v50);
    *&v34[*(sub_284C(&qword_18418, &qword_DFF0) + 36)] = 257;
    v35 = *v32;
    v36 = *(v32 + 8);

    if ((v36 & 1) == 0)
    {
      sub_D998();
      v37 = sub_D668();
      sub_D498();

      v38 = v43;
      sub_D5B8();
      swift_getAtKeyPath();

      (*(v44 + 8))(v38, v45);
      v35 = v60[0];
    }

    swift_getKeyPath();
    v60[0] = v35;
    sub_2CF4(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
    sub_D3D8();

    v39 = *(v35 + 16);

    if (v39 > 1)
    {
      if (v39 != 2)
      {
LABEL_11:
        v41 = 0;
LABEL_14:
        v42 = v56;
        (*(v53 + 32))(v56, v34, v54);
        result = sub_284C(&qword_18438, &unk_E260);
        *(v42 + *(result + 36)) = v41;
        return result;
      }
    }

    else if (v39)
    {

      goto LABEL_13;
    }

    v40 = sub_DA38();

    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v60[0] = sub_D738();
    v41 = sub_D7A8();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_CE10(2, 26, 0, 0))
  {
    sub_D638();

    return sub_D538();
  }

  else
  {
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    sub_D538();
    sub_D9C8();
    swift_getWitnessTable();
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    return sub_D538();
  }
}

uint64_t sub_253C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_CE10(2, 26, 0, 0))
  {
    sub_D638();
    sub_D538();
  }

  else
  {
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    sub_D538();
    sub_D9C8();
    swift_getWitnessTable();
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    sub_D538();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

Swift::Int sub_2764()
{
  v1 = *v0;
  sub_DA48();
  sub_DA58(v1);
  return sub_DA68();
}

Swift::Int sub_27D8()
{
  v1 = *v0;
  sub_DA48();
  sub_DA58(v1);
  return sub_DA68();
}

void *sub_2830@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_284C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void type metadata accessor for SFAirDropDiscoverableMode()
{
  if (!qword_18420)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_18420);
    }
  }
}

uint64_t sub_2900(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_2924(uint64_t a1, uint64_t a2)
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

uint64_t sub_2948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2A64()
{
  result = qword_18440;
  if (!qword_18440)
  {
    sub_2BA0(&qword_18438, &unk_E260);
    sub_2BA0(&qword_18410, &qword_E5D0);
    sub_2C3C(&qword_18448, &qword_18410, &qword_E5D0);
    sub_2BE8();
    swift_getOpaqueTypeConformance2();
    sub_2C3C(&qword_18458, &qword_18460, &qword_E3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18440);
  }

  return result;
}

uint64_t sub_2BA0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2BE8()
{
  result = qword_18450;
  if (!qword_18450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18450);
  }

  return result;
}

uint64_t sub_2C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2BA0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C84(uint64_t a1)
{
  v2 = sub_284C(&qword_18480, qword_E300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2CF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2D40()
{
  result = qword_18490;
  if (!qword_18490)
  {
    sub_2BA0(&qword_18498, qword_E2B8);
    sub_2DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18490);
  }

  return result;
}

unint64_t sub_2DC4()
{
  result = qword_184A0;
  if (!qword_184A0)
  {
    sub_2BA0(&qword_18430, &qword_E258);
    sub_2A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184A0);
  }

  return result;
}

uint64_t sub_2E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_284C(&qword_184A8, &unk_E2D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_284C(&qword_184A8, &unk_E2D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AirDropDiscoveryModeSection()
{
  result = qword_18508;
  if (!qword_18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3064()
{
  sub_3214(319, &qword_18518, type metadata accessor for AirDropSettingsListHighlighter, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_3214(319, &qword_18520, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_31B0();
      if (v2 <= 0x3F)
      {
        sub_3214(319, &unk_18530, type metadata accessor for SFAirDropDiscoverableMode, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_31B0()
{
  if (!qword_18528)
  {
    sub_2BA0(&qword_18480, qword_E300);
    v0 = sub_D4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_18528);
    }
  }
}

void sub_3214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_3294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_D5E8();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  __chkstk_darwin(v3);
  v82 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_D5C8();
  v64 = *(v65 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v65);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_284C(&qword_18468, &qword_E270);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v89 = &v63 - v10;
  v88 = sub_D398();
  v11 = *(v88 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v88);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_D3B8();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v87 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_D348();
  v17 = *(v86 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v86);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_D8F8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v71 = sub_D358();
  v70 = *(v71 - 8);
  v23 = *(v70 + 64);
  __chkstk_darwin(v71);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_284C(&qword_185B0, &qword_E3B8);
  v76 = *(v79 - 8);
  v26 = *(v76 + 64);
  __chkstk_darwin(v79);
  v74 = &v63 - v27;
  v78 = sub_284C(&qword_18598, &qword_E3B0);
  v28 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v73 = &v63 - v29;
  v81 = sub_284C(&qword_18590, &qword_E3A8);
  v80 = *(v81 - 8);
  v30 = *(v80 + 64);
  __chkstk_darwin(v81);
  v77 = &v63 - v31;
  v69 = sub_D5F8();
  v68 = v32;
  v66 = v33;
  v67 = v34;
  v35 = type metadata accessor for AirDropDiscoveryModeSection();
  v36 = *(v35 + 28);
  v75 = a1;
  v37 = (a1 + v36);
  v38 = *v37;
  v39 = *(v37 + 2);
  v90 = v38;
  v91 = v39;
  sub_284C(&qword_185E8, &qword_E3E0);
  sub_D7C8();
  v92 = v94;
  v93 = v95;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v40 = [qword_19180 bundleURL];
  sub_D378();

  (*(v17 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v86);
  sub_D3A8();
  sub_D368();
  v41 = v89;
  sub_D388();
  v42 = v88;
  result = (*(v11 + 48))(v41, 1, v88);
  if (result != 1)
  {
    v44 = v72;
    (*(v11 + 32))(v72, v41, v42);
    v45 = *(v35 + 24);
    v46 = v75;
    sub_6ABC(&v90);
    sub_D7D8();
    sub_5980(&v90, &qword_18480, qword_E300);
    (*(v11 + 8))(v44, v42);
    (*(v70 + 8))(v25, v71);

    v90 = v94;
    v91 = v95;
    __chkstk_darwin(v47);
    type metadata accessor for SFAirDropDiscoverableMode();
    sub_284C(&qword_185F0, &qword_E3E8);
    sub_2CF4(&qword_185F8, type metadata accessor for SFAirDropDiscoverableMode);
    sub_2C3C(&qword_18600, &qword_185F0, &qword_E3E8);
    v48 = v74;
    sub_D788();
    v49 = *v46;
    v50 = *(v46 + 8);

    if ((v50 & 1) == 0)
    {
      sub_D998();
      v51 = sub_D668();
      sub_D498();

      v52 = v63;
      sub_D5B8();
      swift_getAtKeyPath();

      (*(v64 + 8))(v52, v65);
      v49 = v90;
    }

    swift_getKeyPath();
    *&v90 = v49;
    sub_2CF4(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
    sub_D3D8();

    v53 = *(v49 + 16);

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (!v53)
    {

LABEL_11:
      *&v90 = sub_D738();
      v55 = sub_D7A8();
LABEL_13:
      v56 = v73;
      (*(v76 + 32))(v73, v48, v79);
      v57 = v78;
      *(v56 + *(v78 + 36)) = v55;
      v58 = sub_55E4();
      v59 = v77;
      sub_D6F8();
      sub_58A0(v56);
      v60 = v82;
      sub_D5D8();
      *&v90 = v57;
      *(&v90 + 1) = v58;
      swift_getOpaqueTypeConformance2();
      v61 = v81;
      v62 = v85;
      sub_D6E8();
      (*(v84 + 8))(v60, v62);
      return (*(v80 + 8))(v59, v61);
    }

    v54 = sub_DA38();

    if (v54)
    {
      goto LABEL_11;
    }

LABEL_12:
    v55 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_3E44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v40 = sub_284C(&qword_18608, &qword_E418);
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v40);
  v42 = &v34 - v3;
  v4 = sub_284C(&qword_18610, &qword_E420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = sub_284C(&qword_18618, &qword_E428);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_284C(&qword_18620, &qword_E430);
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = *(v36 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v47 = 0;
  type metadata accessor for SFAirDropDiscoverableMode();
  sub_284C(&qword_18628, &qword_E438);
  sub_2CF4(&qword_185F8, type metadata accessor for SFAirDropDiscoverableMode);
  v20 = sub_2BE8();
  v43 = &type metadata for Text;
  v44 = &type metadata for HighlightableItem;
  v45 = &protocol witness table for Text;
  v46 = v20;
  v21 = 1;
  swift_getOpaqueTypeConformance2();
  v41 = v19;
  sub_D4C8();
  if ((PSIsInEDUMode() & 1) == 0)
  {
    v43 = &dword_0 + 1;
    sub_D4C8();
    (*(v5 + 32))(v15, v8, v4);
    v21 = 0;
  }

  v34 = v8;
  v22 = 1;
  v23 = (*(v5 + 56))(v15, v21, 1, v4);
  v43 = &dword_0 + 2;
  __chkstk_darwin(v23);
  *(&v34 - 2) = v35;
  sub_284C(&qword_185D8, &unk_E3D0);
  sub_5804();
  sub_D4C8();
  sub_2C3C(&qword_18630, &qword_18620, &qword_E430);
  v24 = v39;
  v25 = v37;
  sub_D508();
  v26 = sub_284C(&qword_18638, &qword_E440);
  v27 = *(v26 + 48);
  sub_5910(v15, v13);
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    v28 = v34;
    (*(v5 + 32))(v34, v13, v4);
    sub_2C3C(&qword_18650, &qword_18610, &qword_E420);
    sub_D508();
    (*(v5 + 8))(v28, v4);
    v22 = 0;
  }

  v29 = sub_284C(&qword_18640, &qword_E448);
  (*(*(v29 - 8) + 56))(v24 + v27, v22, 1, v29);
  v30 = *(v26 + 64);
  sub_2C3C(&qword_18648, &qword_18608, &qword_E418);
  v31 = v42;
  v32 = v40;
  sub_D508();
  (*(v38 + 8))(v31, v32);
  sub_5980(v15, &qword_18618, &qword_E428);
  return (*(v36 + 8))(v41, v25);
}

uint64_t sub_4488@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = 256;
  return result;
}

uint64_t sub_4580@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_4670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AirDropDiscoveryModeSection() + 32)) == 1)
  {
    sub_D5F8();
    if (qword_18400 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_D5F8();
  if (qword_18400 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_19180;
  sub_D688();
  sub_D618();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

id sub_485C@<X0>(uint64_t a1@<X8>)
{
  v2 = PSIsInEDUMode();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (v2)
    {
      if (wapiCapability)
      {
        sub_D5F8();
        if (qword_18400 == -1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_D5F8();
        if (qword_18400 == -1)
        {
          goto LABEL_12;
        }
      }
    }

    else if (wapiCapability)
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
LABEL_12:
        v6 = qword_19180;
        v7 = sub_D688();
        v9 = v8;
        v11 = v10 & 1;
        sub_2894(v7, v8, v10 & 1);

        sub_D618();
        sub_284C(&qword_185D8, &unk_E3D0);
        sub_5804();
        sub_D618();
        sub_5880(v7, v9, v11);

        *a1 = v12;
        *(a1 + 16) = v13;
        *(a1 + 32) = v14;
        *(a1 + 33) = v15;
        return result;
      }
    }

    swift_once();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_4D14(uint64_t a1)
{
  v2 = sub_D4F8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D598();
}

uint64_t sub_4DDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_D658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + *(type metadata accessor for AirDropDiscoveryModeSection() + 20);
  sub_6C90(v7);
  sub_D648();
  (*(v4 + 8))(v7, v3);
  return sub_D4D8();
}

void sub_4EE4(uint64_t a1)
{
  if (qword_18408 != -1)
  {
    swift_once();
  }

  v2 = [qword_19188 identifier];
  if (v2)
  {
    v3 = v2;
    sub_D918();

    v4 = sub_D908();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v4];

  v6 = v5;
  [v6 setPresentingViewController:a1];
  [v6 present];
}

uint64_t sub_500C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = sub_284C(&qword_18570, &qword_E358);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v24 = v1;
  sub_485C(&v25);
  v8 = v27;
  v9 = v28;
  v22 = v26;
  v23 = v25;
  KeyPath = swift_getKeyPath();
  sub_52E8(v1, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_5500(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v7[*(v4 + 36)];
  v14 = *(sub_284C(&qword_18580, &qword_E398) + 28);
  sub_D4E8();
  *v13 = KeyPath;
  v15 = v22;
  *v7 = v23;
  *(v7 + 1) = v15;
  v7[32] = v8;
  v7[33] = v9;
  sub_284C(&qword_18588, &qword_E3A0);
  v16 = sub_2BA0(&qword_18590, &qword_E3A8);
  v17 = sub_D5E8();
  v18 = sub_2BA0(&qword_18598, &qword_E3B0);
  v19 = sub_55E4();
  *&v25 = v18;
  *(&v25 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v25 = v16;
  *(&v25 + 1) = v17;
  *&v26 = OpaqueTypeConformance2;
  *(&v26 + 1) = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_56C8();
  return sub_D7F8();
}

uint64_t sub_52E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropDiscoveryModeSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_534C()
{
  v1 = type metadata accessor for AirDropDiscoveryModeSection();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  sub_284C(&qword_18578, &qword_E390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_D658();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v5 + v1[6];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_54B4(v10);
    }
  }

  else
  {
    v11 = *v10;
  }

  v12 = (v5 + v1[7]);
  v13 = *v12;

  v14 = v12[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_54B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_5500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropDiscoveryModeSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5564(uint64_t a1)
{
  v3 = *(type metadata accessor for AirDropDiscoveryModeSection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_4DDC(a1, v4);
}

unint64_t sub_55E4()
{
  result = qword_185A0;
  if (!qword_185A0)
  {
    sub_2BA0(&qword_18598, &qword_E3B0);
    sub_2C3C(&qword_185A8, &qword_185B0, &qword_E3B8);
    sub_2C3C(&qword_18458, &qword_18460, &qword_E3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A0);
  }

  return result;
}

unint64_t sub_56C8()
{
  result = qword_185B8;
  if (!qword_185B8)
  {
    sub_2BA0(&qword_18570, &qword_E358);
    sub_5780();
    sub_2C3C(&qword_185E0, &qword_18580, &qword_E398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185B8);
  }

  return result;
}

unint64_t sub_5780()
{
  result = qword_185C0;
  if (!qword_185C0)
  {
    sub_2BA0(&qword_185C8, &qword_E3C8);
    sub_5804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C0);
  }

  return result;
}

unint64_t sub_5804()
{
  result = qword_185D0;
  if (!qword_185D0)
  {
    sub_2BA0(&qword_185D8, &unk_E3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185D0);
  }

  return result;
}

uint64_t sub_5880(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_58A0(uint64_t a1)
{
  v2 = sub_284C(&qword_18598, &qword_E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5910(uint64_t a1, uint64_t a2)
{
  v4 = sub_284C(&qword_18618, &qword_E428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5980(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_284C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_59E4()
{
  result = qword_18658;
  if (!qword_18658)
  {
    sub_2BA0(&qword_18660, &unk_E450);
    sub_2BA0(&qword_18590, &qword_E3A8);
    sub_D5E8();
    sub_2BA0(&qword_18598, &qword_E3B0);
    sub_55E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_56C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18658);
  }

  return result;
}

__n128 sub_5B14(uint64_t a1, uint64_t a2)
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

uint64_t sub_5B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_5C04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_284C(&qword_18668, &qword_E5C8);
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  __chkstk_darwin(v2);
  v5 = &v16[-v4 - 8];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    hasBaseband = MobileGestalt_get_hasBaseband();

    if (hasBaseband)
    {
      __chkstk_darwin(v9);
      sub_D5F8();
      if (qword_18400 != -1)
      {
        swift_once();
      }

      v10 = qword_19180;
      v17 = sub_D688();
      v18 = v11;
      v19 = v12 & 1;
      v20 = v13;
      sub_68B0(v16);
      sub_284C(&qword_18438, &unk_E260);
      sub_284C(&qword_185D8, &unk_E3D0);
      sub_2A64();
      sub_5804();
      sub_D7E8();
      (*(v15 + 32))(a1, v5, v2);
      return (*(v15 + 56))(a1, 0, 1, v2);
    }

    else
    {
      v14 = *(v15 + 56);

      return v14(a1, 1, 1, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v48 = sub_D5C8();
  v47 = *(v48 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_284C(&qword_18468, &qword_E270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = &v46 - v7;
  v61 = sub_D398();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v61);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_D3B8();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v60 = sub_D348();
  v13 = *(v60 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v60);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_D8F8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v51 = sub_D358();
  v50 = *(v51 - 8);
  v19 = *(v50 + 64);
  __chkstk_darwin(v51);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_284C(&qword_18410, &qword_E5D0);
  v52 = *(v53 - 8);
  v22 = *(v52 + 64);
  __chkstk_darwin(v53);
  v49 = &v46 - v23;
  v24 = sub_284C(&qword_18470, &qword_E278);
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  __chkstk_darwin(v24);
  v55 = &v46 - v26;
  v27 = a1[8];
  v28 = a1[9];
  v58 = a1;
  v29 = *(a1 + 80);
  v63[0] = v27;
  v63[1] = v28;
  v64 = v29;
  sub_284C(&qword_18478, &unk_E280);
  sub_D7C8();
  v65 = v68;
  v66 = v69;
  v67 = v70;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v30 = [qword_19180 bundleURL];
  sub_D378();

  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v60);
  sub_D3A8();
  sub_D368();
  v31 = v62;
  sub_D388();
  v32 = v61;
  result = (*(v8 + 48))(v31, 1, v61);
  if (result != 1)
  {
    v34 = v54;
    (*(v8 + 32))(v54, v31, v32);
    v35 = v58;
    sub_6ABC(v63);
    sub_D7D8();
    sub_2C84(v63);
    (*(v8 + 8))(v34, v32);
    (*(v50 + 8))(v21, v51);

    v36 = v49;
    sub_D798();
    v37 = v55;
    (*(v52 + 32))(v55, v36, v53);
    *&v37[*(sub_284C(&qword_18418, &qword_DFF0) + 36)] = 258;
    v38 = *v35;
    v39 = *(v35 + 8);

    if ((v39 & 1) == 0)
    {
      sub_D998();
      v40 = sub_D668();
      sub_D498();

      v41 = v46;
      sub_D5B8();
      swift_getAtKeyPath();

      (*(v47 + 8))(v41, v48);
      v38 = v63[0];
    }

    swift_getKeyPath();
    v63[0] = v38;
    sub_6C38();
    sub_D3D8();

    v42 = *(v38 + 16);

    if (v42 > 1)
    {
      if (v42 == 2)
      {

LABEL_11:
        v63[0] = sub_D738();
        v44 = sub_D7A8();
LABEL_13:
        v45 = v59;
        (*(v56 + 32))(v59, v37, v57);
        result = sub_284C(&qword_18438, &unk_E260);
        *(v45 + *(result + 36)) = v44;
        return result;
      }
    }

    else
    {
      v43 = sub_DA38();

      if (v43)
      {
        goto LABEL_11;
      }
    }

    v44 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_67C8@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_68B0@<X0>(uint64_t a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
LABEL_6:
        v5 = qword_19180;
        sub_D688();
        result = sub_D618();
        *a1 = v6;
        *(a1 + 16) = v7;
        *(a1 + 32) = v8;
        return result;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_6ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_6E90(v2, v12, &qword_18670, &unk_E600);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_D998();
    v11 = sub_D668();
    sub_D498();

    sub_D5B8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_6C38()
{
  result = qword_18488;
  if (!qword_18488)
  {
    type metadata accessor for AirDropSettingsListHighlighter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18488);
  }

  return result;
}

uint64_t sub_6C90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_284C(&qword_18578, &qword_E390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_6E90(v2, &v17 - v11, &qword_18578, &qword_E390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_D658();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_D998();
    v16 = sub_D668();
    sub_D498();

    sub_D5B8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_6E90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_284C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_6EFC()
{
  result = qword_18678;
  if (!qword_18678)
  {
    sub_2BA0(&qword_18680, &unk_E610);
    sub_6F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18678);
  }

  return result;
}

unint64_t sub_6F80()
{
  result = qword_18688;
  if (!qword_18688)
  {
    sub_2BA0(&qword_18668, &qword_E5C8);
    sub_2A64();
    sub_5804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18688);
  }

  return result;
}

id sub_704C()
{
  type metadata accessor for FindAirDropSettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_19180 = result;
  return result;
}

void sub_70A4()
{
  v0 = sub_D908();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  if (v1)
  {
    qword_19188 = v1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_7144()
{
  result = qword_187C0;
  if (!qword_187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187C0);
  }

  return result;
}

uint64_t sub_71B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_D528();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_D398();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(sub_284C(&qword_187E0, &qword_E6F8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_D328();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  sub_D968();
  v3[15] = sub_D958();
  v15 = sub_D948();

  return _swift_task_switch(sub_739C, v15, v14);
}

uint64_t sub_739C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[3];

  sub_D8A8();
  sub_D308();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_7A8C(v0[11]);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v9 = sub_D318();
    if (v10 && (v11 = v9, v12 = v10, v13._rawValue = &off_14BF8, v30._countAndFlagsBits = v11, v30._object = v12, v14 = sub_DA28(v13, v30), , v14 < 3))
    {
      v16 = v0[13];
      v15 = v0[14];
      v17 = v0[12];
      v18 = v0[4];
      sub_A8E4(v14);
      (*(v16 + 8))(v15, v17);
    }

    else
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
    }
  }

  v19 = v0[14];
  v21 = v0[10];
  v20 = v0[11];
  v23 = v0[6];
  v22 = v0[7];
  v24 = v0[5];
  v26 = v0[2];
  v25 = v0[3];
  sub_D898();
  sub_D8B8();
  (*(v23 + 8))(v22, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_7580()
{
  v1 = sub_284C(&qword_187C8, &qword_E6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v6 = *v0;
  v7 = v0[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  type metadata accessor for AirDropSettingsList();
  sub_77E8();

  v9 = v7;
  sub_D8C8();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v9;
  sub_7A28();

  v11 = v9;
  sub_D888();
  return (*(v2 + 8))(v5, v1);
}

id sub_7724@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AirDropSettingsListHighlighter();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  sub_D3E8();
  result = [objc_allocWithZone(sub_D488()) init];
  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t sub_7794@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  v5 = v3;

  return sub_7BFC(v4, v5, a1);
}

unint64_t sub_77E8()
{
  result = qword_187D0;
  if (!qword_187D0)
  {
    type metadata accessor for AirDropSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187D0);
  }

  return result;
}

uint64_t sub_7840()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7880(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7934;

  return sub_71B4(a1, a2, v7);
}

uint64_t sub_7934()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_7A28()
{
  result = qword_187D8;
  if (!qword_187D8)
  {
    sub_2BA0(&qword_187C8, &qword_E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187D8);
  }

  return result;
}

uint64_t sub_7A8C(uint64_t a1)
{
  v2 = sub_284C(&qword_187E0, &qword_E6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_7AF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_7B00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_7B48(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_7B94()
{
  sub_2BA0(&qword_187C8, &qword_E6E0);
  sub_7A28();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_D3B8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_D348();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_D8F8();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = *(type metadata accessor for AirDropSettingsList() + 24);
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v16 = [qword_19180 bundleURL];
  sub_D378();

  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v8);
  sub_D3A8();
  sub_D368();
  v20 = a1;
  type metadata accessor for AirDropSettingsListHighlighter();

  sub_D748();
  v17 = v22;
  *a3 = v21;
  a3[1] = v17;
  v20 = a2;
  sub_D488();
  sub_D748();

  v19 = v22;
  a3[2] = v21;
  a3[3] = v19;
  return result;
}

uint64_t type metadata accessor for AirDropSettingsList()
{
  result = qword_18840;
  if (!qword_18840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7EE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_D358();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_7FA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_D358();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8048()
{
  sub_811C(319, &qword_18850, type metadata accessor for AirDropSettingsListHighlighter);
  if (v0 <= 0x3F)
  {
    sub_811C(319, &unk_18858, &type metadata accessor for AirDropSettingsState);
    if (v1 <= 0x3F)
    {
      sub_D358();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_811C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_D778();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_818C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_284C(&qword_18468, &qword_E270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v69 = &v55 - v4;
  v5 = sub_D398();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D878();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  __chkstk_darwin(v8);
  v71 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for AirDropSettingsList();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v57);
  v13 = sub_284C(&qword_18890, &qword_E7B0);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v59 = sub_284C(&qword_18898, &qword_E7B8);
  v58 = *(v59 - 8);
  v18 = *(v58 + 64);
  __chkstk_darwin(v59);
  v70 = &v55 - v19;
  v20 = sub_284C(&qword_188A0, &qword_E7C0);
  v61 = *(v20 - 8);
  v62 = v20;
  v21 = *(v61 + 64);
  __chkstk_darwin(v20);
  v56 = &v55 - v22;
  sub_A4DC(v1, &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AirDropSettingsList);
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v24 = swift_allocObject();
  sub_9BEC(&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = sub_D808();
  v64 = v1;
  v27 = v1[1];
  v74 = *v1;
  v26 = v74;
  v75 = v27;
  sub_284C(&qword_188A8, &qword_E7C8);
  sub_D758();
  v28 = v78;
  swift_getKeyPath();
  v74 = v28;
  v29 = sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
  sub_D3D8();

  v30 = *(v28 + 16);

  v74 = sub_9C50;
  v75 = v24;
  v76 = v25;
  LOBYTE(v77) = v30;
  v31 = sub_284C(&qword_188B0, &qword_E7F8);
  v32 = sub_9CD8();
  sub_D698();

  v74 = v26;
  v75 = v27;
  v33 = v67;
  sub_D758();
  v34 = type metadata accessor for AirDropSettingsListHighlighter();
  v74 = v31;
  v75 = v32;
  v35 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v65;
  v55 = v29;
  sub_D6D8();

  (*(v66 + 8))(v17, v37);
  v38 = v71;
  *v71 = 0xD00000000000001ELL;
  v38[1] = 0x800000000000F140;
  (*(v72 + 104))();
  sub_9948();
  v39 = v69;
  sub_D388();
  result = (*(v33 + 48))(v39, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = *(v57 + 24);
    v42 = v60;
    (*(v33 + 32))(v60, v39, v35);
    v74 = v37;
    v75 = v34;
    v76 = OpaqueTypeConformance2;
    v77 = v55;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v56;
    v45 = v70;
    v46 = v71;
    v47 = v59;
    sub_D6A8();

    (*(v33 + 8))(v42, v35);
    (*(v72 + 8))(v46, v73);
    (*(v58 + 8))(v45, v47);
    sub_D5F8();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v48 = qword_19180;
    v49 = sub_D688();
    v51 = v50;
    v53 = v52;
    v74 = v47;
    v75 = v43;
    swift_getOpaqueTypeConformance2();
    v54 = v62;
    sub_D718();
    sub_5880(v49, v51, v53 & 1);

    return (*(v61 + 8))(v44, v54);
  }

  return result;
}

uint64_t sub_89DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v29 = a3;
  v4 = type metadata accessor for AirDropSettingsList();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4 - 8);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D558();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_284C(&qword_188E8, &qword_E818);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v30 = a2;
  sub_284C(&qword_188F0, &qword_E820);
  sub_2C3C(&qword_188F8, &qword_188F0, &qword_E820);
  sub_D678();
  v14 = a2[1];
  v32 = *a2;
  v33 = v14;
  sub_284C(&qword_188A8, &qword_E7C8);
  sub_D758();
  v15 = v31;
  swift_getKeyPath();
  v32 = v15;
  sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
  sub_D3D8();

  v16 = *(v15 + 16);

  LOBYTE(v32) = v16;
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v6);
  v17 = a2;
  v18 = v24;
  sub_A4DC(v17, v24, type metadata accessor for AirDropSettingsList);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = (v8 + *(v26 + 80) + v19) & ~*(v26 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v19, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_9BEC(v18, v21 + v20);
  sub_284C(&qword_18900, &qword_E828);
  sub_2C3C(&qword_18908, &qword_188E8, &qword_E818);
  sub_A02C();
  v22 = v27;
  sub_D728();

  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_8E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for AirDropDiscoveryModeSection();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v46 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v39[-v8];
  v10 = *(a1 + 16);
  v41 = *(a1 + 24);
  *&v51 = v10;
  *(&v51 + 1) = v41;
  v11 = v10;
  sub_284C(&qword_18940, &qword_E838);
  sub_D768();
  v12 = v60;
  v13 = v61;
  v14 = KeyPath;
  swift_getKeyPath();
  v60 = v12;
  v61 = v13;
  KeyPath = v14;
  v48 = sub_284C(&qword_18948, &qword_E870);
  sub_D7B8();

  v43 = v51;
  v42 = v52;

  v15 = v41;
  v53 = v11;
  v54 = v41;
  sub_D758();
  v16 = v49[0];
  LOBYTE(v12) = sub_D478();

  type metadata accessor for AirDropSettingsListHighlighter();
  v44 = sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
  *v9 = sub_D4B8();
  v9[8] = v17 & 1;
  v18 = v4[7];
  *&v9[v18] = swift_getKeyPath();
  sub_284C(&qword_18578, &qword_E390);
  swift_storeEnumTagMultiPayload();
  v19 = &v9[v4[8]];
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  v20 = v4[9];
  v45 = v9;
  v21 = &v9[v20];
  *v21 = v43;
  *(v21 + 2) = v42;
  v9[v4[10]] = v12 & 1;
  *&v51 = v11;
  *(&v51 + 1) = v15;
  v22 = v11;
  v23 = v15;
  sub_D768();
  v24 = v60;
  v25 = v61;
  v26 = KeyPath;
  swift_getKeyPath();
  *&v51 = v24;
  *(&v51 + 1) = v25;
  v52 = v26;
  sub_D7B8();

  v42 = v54;
  *&v43 = v53;
  v40 = v55;

  v60 = v22;
  v61 = v15;
  sub_D758();
  v27 = v49[0];
  LOBYTE(v15) = sub_D468();

  v60 = sub_D4B8();
  LOBYTE(v61) = v28 & 1;
  KeyPath = swift_getKeyPath();
  v63 = 0;
  v64 = v43;
  v65 = v42;
  v66 = v40;
  v67 = v15 & 1;
  v53 = v22;
  v54 = v23;
  sub_D768();
  v29 = v51;
  v30 = v52;
  swift_getKeyPath();
  v51 = v29;
  v52 = v30;
  sub_D7B8();

  v31 = v49[0];
  v32 = v49[1];
  LOBYTE(v26) = v50;

  v53 = sub_D4B8();
  LOBYTE(v54) = v33 & 1;
  v55 = swift_getKeyPath();
  v56 = 0;
  v57 = v31;
  v58 = v32;
  v59 = v26;
  v35 = v45;
  v34 = v46;
  sub_A4DC(v45, v46, type metadata accessor for AirDropDiscoveryModeSection);
  sub_A544(&v60, &v51);
  sub_A5A0(&v53, v49);
  v36 = v47;
  sub_A4DC(v34, v47, type metadata accessor for AirDropDiscoveryModeSection);
  v37 = sub_284C(&qword_18950, &unk_E940);
  sub_A544(&v51, v36 + *(v37 + 48));
  sub_A5A0(v49, v36 + *(v37 + 64));
  sub_A5FC(&v53);
  sub_A650(&v60);
  sub_A6A4(v35);
  sub_A5FC(v49);
  sub_A650(&v51);
  return sub_A6A4(v34);
}

uint64_t sub_92C8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v6 = sub_D818();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_D838();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AirDropSettingsList();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_D858();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v19);
  v24 = &v34 - v23;
  if (*a2 != 3)
  {
    v36 = v9;
    v37 = v6;
    v25 = __chkstk_darwin(result);
    *(&v34 - 2) = a3;
    *(&v34 - 8) = v26;
    v27 = v25;
    sub_D808();
    sub_D518();

    sub_A164();
    v34 = sub_D9B8();
    sub_D848();
    sub_D868();
    v35 = *(v17 + 8);
    v35(v21, v27);
    sub_A4DC(v39, &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AirDropSettingsList);
    v28 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v29 = swift_allocObject();
    sub_9BEC(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    aBlock[4] = sub_A2B0;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_9904;
    aBlock[3] = &unk_14F00;
    v30 = _Block_copy(aBlock);

    sub_D828();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_A328(&qword_18928, &type metadata accessor for DispatchWorkItemFlags);
    sub_284C(&qword_18930, &qword_E830);
    sub_2C3C(&qword_18938, &qword_18930, &qword_E830);
    v31 = v36;
    v32 = v37;
    sub_D9E8();
    v33 = v34;
    sub_D9A8();
    _Block_release(v30);

    (*(v42 + 8))(v31, v32);
    (*(v40 + 8))(v13, v41);
    return (v35)(v24, v27);
  }

  return result;
}

uint64_t sub_97BC(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  sub_284C(&qword_188A8, &qword_E7C8);
  sub_D758();
  if (*(v3 + 16) != 3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
    sub_D3C8();
  }
}

uint64_t sub_9904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_9948()
{
  v0 = sub_D3B8();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_D348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D8F8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_284C(&qword_188E0, &qword_E810);
  v9 = *(sub_D358() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_E730;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v13 = [qword_19180 bundleURL];
  sub_D378();

  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v2);
  sub_D3A8();
  sub_D368();
  return v12;
}

uint64_t sub_9BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AirDropSettingsList() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_89DC(a1, v6, a2);
}

unint64_t sub_9CD8()
{
  result = qword_188B8;
  if (!qword_188B8)
  {
    sub_2BA0(&qword_188B0, &qword_E7F8);
    sub_2C3C(&qword_188C0, &qword_188C8, &qword_E800);
    sub_2C3C(&qword_188D0, &qword_188D8, &qword_E808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_188B8);
  }

  return result;
}

uint64_t sub_9DC4()
{
  v1 = sub_D558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AirDropSettingsList() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v8);

  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v8 + 24);

  v14 = v6[8];
  v15 = sub_D358();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_9F48(uint64_t a1, _BYTE *a2)
{
  v5 = *(sub_D558() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AirDropSettingsList() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_92C8(a1, a2, v2 + v6, v9);
}

unint64_t sub_A02C()
{
  result = qword_18910;
  if (!qword_18910)
  {
    sub_2BA0(&qword_18900, &qword_E828);
    sub_A0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18910);
  }

  return result;
}

unint64_t sub_A0B0()
{
  result = qword_18918;
  if (!qword_18918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18918);
  }

  return result;
}

uint64_t sub_A104()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_2BE8();
  return sub_D548();
}

unint64_t sub_A164()
{
  result = qword_18920;
  if (!qword_18920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_18920);
  }

  return result;
}

uint64_t sub_A1B0()
{
  v1 = (type metadata accessor for AirDropSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = sub_D358();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A2B0()
{
  v1 = *(type metadata accessor for AirDropSettingsList() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_97BC(v2);
}

uint64_t sub_A310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_D408();
  *a2 = result;
  return result;
}

uint64_t sub_A3BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_D418();
}

uint64_t sub_A42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_D448();
  *a2 = result & 1;
  return result;
}

uint64_t sub_A45C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_D458();
}

uint64_t sub_A484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_D428();
  *a2 = result & 1;
  return result;
}

uint64_t sub_A4B4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_D438();
}

uint64_t sub_A4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A6A4(uint64_t a1)
{
  v2 = type metadata accessor for AirDropDiscoveryModeSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A700()
{
  sub_2BA0(&qword_188A0, &qword_E7C0);
  sub_2BA0(&qword_18898, &qword_E7B8);
  sub_2BA0(&qword_18890, &qword_E7B0);
  type metadata accessor for AirDropSettingsListHighlighter();
  sub_2BA0(&qword_188B0, &qword_E7F8);
  sub_9CD8();
  swift_getOpaqueTypeConformance2();
  sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A874()
{
  swift_getKeyPath();
  sub_6C38();
  sub_D3D8();

  return *(v0 + 16);
}

uint64_t sub_A8E4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 16);
  if (v3 == 3)
  {
    if (result == 3)
    {
      goto LABEL_27;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6C38();
    sub_D3C8();
  }

  if (result == 3)
  {
    goto LABEL_5;
  }

  v5 = 0x800000000000EB20;
  v6 = 0xD000000000000019;
  if (v3 == 1)
  {
    v6 = 0x5F504F5244524941;
    v5 = 0xEE0044495F43464ELL;
  }

  if (*(v1 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*(v1 + 16))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x800000000000EB00;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v9 = 0x5F504F5244524941;
    }

    else
    {
      v9 = 0xD000000000000019;
    }

    if (v2 == 1)
    {
      v10 = 0xEE0044495F43464ELL;
    }

    else
    {
      v10 = 0x800000000000EB20;
    }

    if (v7 != v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0x800000000000EB00;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_26;
    }
  }

  if (v8 == v10)
  {

    goto LABEL_27;
  }

LABEL_26:
  v11 = sub_DA38();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_AAB8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE0044495F43464ELL;
  v3 = 0x5F504F5244524941;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x5F504F5244524941;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4 == 1)
  {
    v6 = 0xEE0044495F43464ELL;
  }

  else
  {
    v6 = 0x800000000000EB20;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000000000EB00;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000019;
    v2 = 0x800000000000EB20;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000000000EB00;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_DA38();
  }

  return v11 & 1;
}

uint64_t sub_ABA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B23C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_ABD0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0044495F43464ELL;
  v4 = 0x5F504F5244524941;
  if (v2 != 1)
  {
    v4 = 0xD000000000000019;
    v3 = 0x800000000000EB20;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000000000EB00;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_AC44()
{
  v1 = *v0;
  sub_DA48();
  sub_D938();

  return sub_DA68();
}

uint64_t sub_ACFC()
{
  *v0;
  *v0;
  sub_D938();
}

Swift::Int sub_ADA0()
{
  v1 = *v0;
  sub_DA48();
  sub_D938();

  return sub_DA68();
}

uint64_t sub_AE54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6C38();
  sub_D3D8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_AEFC()
{
  v1 = OBJC_IVAR____TtC15AirDropSettings30AirDropSettingsListHighlighter___observationRegistrar;
  v2 = sub_D3F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for AirDropSettingsListHighlighter()
{
  result = qword_18988;
  if (!qword_18988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AFEC()
{
  result = sub_D3F8();
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

uint64_t getEnumTagSinglePayload for HighlightableItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HighlightableItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_B23C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_14BF8;
  v6._object = a2;
  v4 = sub_DA28(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_B288()
{
  v1 = OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter;
  if (*(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter);
  }

  else
  {
    v3 = type metadata accessor for AirDropSettingsListHighlighter();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    *(v2 + 16) = 3;
    sub_D3E8();
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_B314()
{
  v1 = OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState;
  v2 = *(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_D488()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_B388()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AirDropSettingsList();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v24.receiver - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v7 = sub_B288();
  v8 = sub_B314();
  sub_7BFC(v7, v8, v6);
  v9 = objc_allocWithZone(sub_284C(&qword_18A68, &qword_EB18));
  v10 = sub_D608();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v11.super.isa = qword_19180;
  v23._countAndFlagsBits = 0x800000000000EDD0;
  v25._countAndFlagsBits = 0x706F7244726941;
  v25._object = 0xE700000000000000;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_D338(v25, v26, v11, v27, v23);
  v12 = sub_D908();

  [v1 setTitle:v12];

  v13 = [v10 view];
  if (!v13)
  {
    v14 = v10;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview:v14];

    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;

      [v14 setFrame:{0.0, 0.0, v20, v22}];
      [v14 setAutoresizingMask:18];
      [v1 addChildViewController:v10];
      [v10 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_B660(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_D968();
  v2[15] = sub_D958();
  v4 = sub_D948();

  return _swift_task_switch(sub_B6F8, v4, v3);
}

uint64_t sub_B6F8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  if (!v2)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  *(v0 + 88) = 1752457584;
  v3 = *(v0 + 104);
  *(v0 + 96) = 0xE400000000000000;
  sub_DA18();
  if (!*(v3 + 16) || (v4 = sub_CB40(v0 + 16), (v5 & 1) == 0))
  {
    sub_CC4C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_11;
  }

  sub_CD44(*(v3 + 56) + 32 * v4, v0 + 56);
  sub_CC4C(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_11:
    sub_5980(v0 + 56, &qword_18A58, &qword_EB10);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 24);
    *(v0 + 56) = 35;
    *(v0 + 64) = 0xE100000000000000;
    sub_CCA0();
    v7 = sub_D9D8();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = (v7 + 16 + 16 * v8);
      v10 = *v9;
      v11 = v9[1];

      v12._rawValue = &off_14BF8;
      v19._countAndFlagsBits = v10;
      v19._object = v11;
      v13 = sub_DA28(v12, v19);

      if (v13 < 3)
      {
        v14 = *(v0 + 112);
        v15 = swift_task_alloc();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        sub_D808();
        sub_D518();
      }
    }

    else
    {
    }
  }

LABEL_12:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_D968();
  v3[5] = sub_D958();
  v5 = sub_D948();

  return _swift_task_switch(sub_BB50, v5, v4);
}

uint64_t sub_BB50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v2 = sub_D8D8();
  }

  *(v0 + 56) = v2;
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_BC38;
  v7 = *(v0 + 32);

  return sub_B660(v2);
}

uint64_t sub_BC38()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  v6 = *v0;

  if (v4)
  {
    v7 = *(v1 + 48);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_BF08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_BFB0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_BFF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_7934;

  return sub_BAB4(v2, v3, v4);
}

uint64_t sub_C0AC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_CE04;

  return v7();
}

uint64_t sub_C198()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_CE04;

  return sub_C0AC(v2, v3, v5);
}

uint64_t sub_C258(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_7934;

  return v8();
}

uint64_t sub_C340()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_C380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_CE04;

  return sub_C258(a1, v4, v5, v7);
}

uint64_t sub_C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_284C(&qword_18A50, &qword_EAB8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_C738(a3, v25 - v11);
  v13 = sub_D988();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_5980(v12, &qword_18A50, &qword_EAB8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_D978();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_D948();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_D928() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_5980(a3, &qword_18A50, &qword_EAB8);

    return v23;
  }

LABEL_8:
  sub_5980(a3, &qword_18A50, &qword_EAB8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_C738(uint64_t a1, uint64_t a2)
{
  v4 = sub_284C(&qword_18A50, &qword_EAB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C7A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_C8A0;

  return v7(a1);
}

uint64_t sub_C8A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_C998()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C9D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_CE04;

  return sub_C7A8(a1, v5);
}

uint64_t sub_CA88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7934;

  return sub_C7A8(a1, v5);
}

unint64_t sub_CB40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D9F8(*(v2 + 40));

  return sub_CB84(a1, v4);
}

unint64_t sub_CB84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_CDA0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_DA08();
      sub_CC4C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_CCA0()
{
  result = qword_18A60;
  if (!qword_18A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A60);
  }

  return result;
}

uint64_t sub_CCF4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_B288();
  sub_A8E4(v1);
}

uint64_t sub_CD44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_CE10(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_19170 == -1)
  {
    if (qword_19178)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_D2D8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_19178)
    {
      return _availability_version_check();
    }
  }

  if (qword_19168 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_D2F0();
    a3 = v10;
    a4 = v9;
    v8 = dword_19158 < v11;
    if (dword_19158 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1915C > a3)
      {
        return 1;
      }

      if (dword_1915C >= a3)
      {
        return dword_19160 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_19158 < a2;
  if (dword_19158 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_CFA4(uint64_t result)
{
  v1 = qword_19178;
  if (qword_19178)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_19178 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_19158, &dword_1915C, &dword_19160);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}