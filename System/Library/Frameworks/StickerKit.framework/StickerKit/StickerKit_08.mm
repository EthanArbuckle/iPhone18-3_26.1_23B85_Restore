uint64_t sub_19A6B0EAC@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDEC8);
  MEMORY[0x1EEE9AC00](v52);
  v6 = &v47 - v5;
  v7 = sub_19A7AA284();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDED0);
  MEMORY[0x1EEE9AC00](v53);
  v12 = (&v47 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDED8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v47 - v17;
  if (a1)
  {
    v48 = v7;
    v18 = *(a2 + 8);
    KeyPath = swift_getKeyPath();
    Button = type metadata accessor for CreateButton(0);
    *(v12 + Button[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SearchViewModel(0);
    sub_19A6BA204(&qword_1EAFCAE88, type metadata accessor for SearchViewModel);
    v49 = v18;

    *v12 = sub_19A7A9914();
    v12[1] = v21;
    *(v12 + Button[6]) = 0x404C000000000000;
    *(v12 + Button[7]) = 0x4039000000000000;
    *(v12 + Button[8]) = 0x4024000000000000;
    v22 = Button[9];
    v23 = *MEMORY[0x1E69814D8];
    v50 = v16;
    v24 = *(v8 + 104);
    v25 = v48;
    v24(v10, v23, v48);
    *(v12 + v22) = sub_19A7AA324();
    v26 = Button[10];
    v24(v10, v23, v25);
    *(v12 + v26) = sub_19A7AA324();
    v27 = v12 + Button[11];
    v62 = 0;
    sub_19A7AA454();
    v28 = *(&v55 + 1);
    *v27 = v55;
    *(v27 + 1) = v28;
    v29 = swift_allocObject();
    v30 = *(a2 + 16);
    *(v29 + 16) = *a2;
    *(v29 + 32) = v30;
    *(v29 + 48) = *(a2 + 32);
    v31 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDEE8) + 36));
    *v31 = sub_19A6BA3A8;
    v31[1] = v29;
    v31[2] = 0;
    v31[3] = 0;
    v32 = swift_allocObject();
    v33 = *(a2 + 16);
    *(v32 + 16) = *a2;
    *(v32 + 32) = v33;
    *(v32 + 48) = *(a2 + 32);
    v34 = (v12 + *(v53 + 36));
    *v34 = 0;
    v34[1] = 0;
    v34[2] = sub_19A6BA3B0;
    v34[3] = v32;
    sub_19A60F0CC(v12, v6, &qword_1EAFCDED0);
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDEE0);
    sub_19A6BA0BC();
    sub_19A6BA26C();
    v35 = v54;
    v16 = v50;
    sub_19A7A9D64();
    sub_19A5F2B54(v12, &qword_1EAFCDED0);
  }

  else
  {
    v36 = sub_19A7AB0A4();
    v38 = v37;
    sub_19A7AA654();
    sub_19A7A9A44();
    v62 = 0;
    v39 = sub_19A7AA2B4();
    *v6 = v36;
    *(v6 + 1) = v38;
    v6[16] = 0;
    *(v6 + 3) = MEMORY[0x1E69E7CC0];
    v40 = v60;
    *(v6 + 6) = v59;
    *(v6 + 7) = v40;
    *(v6 + 8) = v61;
    v41 = v56;
    *(v6 + 2) = v55;
    *(v6 + 3) = v41;
    v42 = v58;
    *(v6 + 4) = v57;
    *(v6 + 5) = v42;
    *(v6 + 18) = v39;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDEE0);
    sub_19A6BA0BC();
    sub_19A6BA26C();
    v35 = v54;
    sub_19A7A9D64();
  }

  sub_19A60F0CC(v35, v16, &qword_1EAFCDED8);
  v43 = v51;
  *v51 = 0;
  *(v43 + 8) = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF00);
  sub_19A60F0CC(v16, v43 + *(v44 + 48), &qword_1EAFCDED8);
  v45 = v43 + *(v44 + 64);
  *v45 = 0;
  v45[8] = 1;
  sub_19A5F2B54(v35, &qword_1EAFCDED8);
  return sub_19A5F2B54(v16, &qword_1EAFCDED8);
}

void sub_19A6B1520(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3 && *(*(a1 + 8) + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_searchRanAtLeastOnce) == 1)
  {
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    if (qword_1EAFCA410 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD4E0, 0xD000000000000019, 0x800000019A7C8F70, 0, 0, 0, 0, 2, 0, 1, 0);
  }
}

void sub_19A6B1654(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3 && *(*(a1 + 8) + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_searchRanAtLeastOnce) == 1)
  {
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    if (qword_1EAFCA410 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD4E0, 0xD000000000000017, 0x800000019A7C8F50, 0, 0, 0, 0, 2, 0, 1, 0);
  }
}

uint64_t sub_19A6B1788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a1;
  v5 = sub_19A7A99F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v8 = *(v17[1] + 16);

  if (v8 >= 0xC)
  {
    v8 = 12;
  }

  *a3 = sub_19A7A9BA4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF10);
  sub_19A6B19EC(a2, v8, (a3 + *(v9 + 44)));
  swift_beginAccess();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50);
  sub_19A7A9674();
  swift_endAccess();
  (*(v6 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17[0], v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 32);
  v15 = (a3 + *(v10 + 56));
  *v15 = sub_19A6BA3C0;
  v15[1] = v12;
}

uint64_t sub_19A6B19EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = a3;
  v60 = sub_19A7A9DA4();
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_19A7AA5D4();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF28);
  v66 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v69 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v45 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF30);
  v62 = *(v63 - 8);
  v12 = MEMORY[0x1EEE9AC00](v63);
  v68 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v45 - v14;
  v15 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v16 = v76;
  swift_beginAccess();

  sub_19A7AA654();
  sub_19A7A9864();
  v17 = v70;
  v18 = v72;
  v59 = v74;
  v58 = v75;
  v84 = 1;
  v83 = v71;
  v82 = v73;
  v19 = sub_19A7AA714();
  v55 = v84;
  v56 = v83;
  v57 = v82;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v20 = sub_19A6B7DC4(v76);

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v20 + 16) >= a2)
  {
    v76 = v20;
    v77 = v20 + 32;
    v78 = 0;
    v79 = (2 * a2) | 1;
    v52 = v17;
    swift_getKeyPath();
    v22 = swift_allocObject();
    v23 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a1 + 32);
    v24 = swift_allocObject();
    v50 = v8;
    *(v24 + 16) = sub_19A6BA5CC;
    *(v24 + 24) = v22;

    v51 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF38);
    v49 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF40);
    sub_19A623714(&qword_1EAFCDF48, &qword_1EAFCDF38);
    sub_19A6BA5D8();
    v48 = v15;
    v25 = v65;
    sub_19A7AA584();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF70);
    sub_19A7AA5E4();
    *(swift_allocObject() + 16) = xmmword_19A7B6C30;
    *v7 = 0x4040000000000000;
    (*(v53 + 104))(v7, *MEMORY[0x1E697D728], v54);
    v26 = sub_19A7AA5F4();
    MEMORY[0x1EEE9AC00](v26);
    sub_19A7A9BA4();
    LODWORD(v76) = 0;
    sub_19A6BA204(&qword_1EAFCDF78, MEMORY[0x1E697FCB0]);
    sub_19A7AC214();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF80);
    sub_19A6BA6EC();
    v27 = v67;
    sub_19A7AA704();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v28 = v76;
    swift_beginAccess();

    sub_19A7AA654();
    sub_19A7A9864();
    v61 = v76;
    v60 = v78;
    v54 = v80;
    v53 = v81;
    v87 = 1;
    v86 = v77;
    v85 = v79;
    v29 = v62;
    v30 = *(v62 + 16);
    v31 = v68;
    v32 = v25;
    v33 = v63;
    v30(v68, v32, v63);
    v34 = *(v66 + 16);
    v35 = v27;
    v36 = v50;
    v34(v69, v35, v50);
    v37 = v64;
    v46 = v87;
    v47 = v86;
    LODWORD(v48) = v85;
    *v64 = 0;
    *(v37 + 8) = v55;
    v37[2] = v52;
    *(v37 + 24) = v56;
    v37[4] = v49;
    *(v37 + 40) = v57;
    v38 = v58;
    v37[6] = v59;
    v37[7] = v38;
    v37[8] = v51;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDFE8);
    v30(v37 + v39[12], v31, v33);
    v40 = v69;
    v34(v37 + v39[16], v69, v36);
    v41 = v37 + v39[20];
    *v41 = 0;
    v41[8] = v46;
    *(v41 + 2) = v61;
    v41[24] = v47;
    *(v41 + 4) = v60;
    v41[40] = v48;
    v42 = v53;
    *(v41 + 6) = v54;
    *(v41 + 7) = v42;
    v43 = *(v66 + 8);
    v43(v67, v36);
    v44 = *(v29 + 8);
    v44(v65, v33);
    v43(v40, v36);
    return (v44)(v68, v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6B2430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  sub_19A6B01F8(a1, a2, a4);
  v27 = a1;
  v28 = sub_19A7AC024();
  v29 = v11;
  MEMORY[0x19A905510](58, 0xE100000000000000);
  if (a2 < 0)
  {
    sub_19A60F0CC((a2 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___STKImageGlyph_stickerUUID, v10, &qword_1EAFCD800);
    v14 = sub_19A7A8F64();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v10, 1, v14);
    v17 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    if (v16 == 1)
    {
      sub_19A5F2B54(v10, &qword_1EAFCD800);
      v13 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v13 = sub_19A7A8F14();
      v12 = v18;
      (*(v15 + 8))(v10, v14);
    }
  }

  else
  {
    swift_getKeyPath();
    v27 = a2;
    sub_19A6BA204(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);

    sub_19A7A90C4();

    v13 = *(a2 + 56);
    v12 = *(a2 + 64);
  }

  sub_19A6B9BA8(a2);
  MEMORY[0x19A905510](v13, v12);

  v19 = v28;
  v20 = v29;
  v21 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF60) + 52));
  *v21 = v19;
  v21[1] = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  LOBYTE(v19) = v28;
  v22 = *(a3 + 32);
  v23 = *(a3 + 24) * a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF40);
  v25 = a4 + *(result + 36);
  *v25 = v19;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  return result;
}

uint64_t sub_19A6B274C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v4 = sub_19A6B7DC4(v9);

  if (*(v4 + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    swift_getKeyPath();
    v6 = swift_allocObject();
    v7 = *(a1 + 16);
    *(v6 + 16) = *a1;
    *(v6 + 32) = v7;
    *(v6 + 48) = *(a1 + 32);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_19A6BAAFC;
    *(v8 + 24) = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF98);
    sub_19A623714(&qword_1EAFCDF48, &qword_1EAFCDF38);
    sub_19A6BA770();
    return sub_19A7AA584();
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6B2934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19A7A99F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a2, v5);
  sub_19A7AB354();

  v13 = sub_19A7AB344();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  (*(v6 + 32))(v16 + v14, v8, v5);
  v18 = v16 + v15;
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a3 + 32);
  sub_19A6816F0(0, 0, v11, &unk_19A7BCCD8, v16);
}

uint64_t sub_19A6B2B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_19A7AB354();
  v5[5] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6B2BEC, v7, v6);
}

uint64_t sub_19A6B2BEC()
{

  *(v0 + 16) = sub_19A7AA714();
  sub_19A7AA754();
  sub_19A6BA578();
  sub_19A7A99E4();
  v1 = *(v0 + 8);

  return v1();
}

double sub_19A6B2C98@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF08);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19A7B6C20;
  sub_19A7AA2E4();
  *(v2 + 32) = sub_19A7AA5B4();
  *(v2 + 40) = v3;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_19A7A96A4(), , , v8 > 430.0))
  {
    sub_19A7AA2D4();
  }

  else
  {
    sub_19A7AA2E4();
  }

  *(v2 + 48) = sub_19A7AA5B4();
  *(v2 + 56) = v6;
  sub_19A7AA5C4();
  sub_19A7A9904();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  sub_19A7AA654();
  sub_19A7A9864();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  result = v9 * 0.5;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 88) = v8 * 0.5;
  *(a1 + 96) = v9 * 0.5;
  return result;
}

uint64_t sub_19A6B2FBC()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SearchViewModel(0);
    swift_allocObject();
    v2 = sub_19A6AB8EC();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_19A6B3038()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___dataSource;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___dataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___dataSource);
  }

  else
  {
    v3 = v0;
    type metadata accessor for CombinedSearchDataSource();
    swift_allocObject();
    sub_19A720884();
    v2 = v4;
    *(v3 + v1) = v4;
  }

  return v2;
}

id sub_19A6B30B4()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___availability;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___availability);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___availability);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for STKGenerativeModelsAvailability()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_19A6B3128()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6B316C(char a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A6B321C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_19A6B3288()
{
  v1 = (v0 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_19A6B32E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_19A6B33A0()
{
  v1 = v0;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA98);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "viewDidLoad", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    v9 = sub_19A6B2FBC();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = (v9 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectEmoji);
    v12 = *(v9 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectEmoji);
    *v11 = sub_19A6B399C;
    v11[1] = v10;

    sub_19A60126C(v12);

    v13 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel;
    v14 = *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = (v14 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectSticker);
    v17 = *(v14 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectSticker);
    *v16 = sub_19A6B3CCC;
    v16[1] = v15;

    sub_19A60126C(v17);

    v18 = *&v1[v13];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = (v18 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didRequestEmojiGeneration);
    v21 = *(v18 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didRequestEmojiGeneration);
    *v20 = sub_19A6B3DD0;
    v20[1] = v19;

    sub_19A60126C(v21);

    sub_19A6B3E6C();
  }

  else
  {
    __break(1u);
  }
}

void sub_19A6B366C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B90E0;
    *(inited + 32) = 0x7079546567616D49;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = sub_19A7AAFE4();
    *(inited + 56) = 0x756F536567617355;
    *(inited + 64) = 0xEB00000000656372;
    *(inited + 72) = sub_19A7AAFE4();
    *(inited + 80) = 0x7079546567617355;
    *(inited + 88) = 0xE900000000000065;
    *(inited + 96) = sub_19A7AAFE4();
    v6 = sub_19A69C364(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
    swift_arrayDestroy();
    if (qword_1EAFCB558 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD6C8, 0x6567617355, 0xE500000000000000, 0, 0, 0, 0, 2, 0, 1, v6);

    v7 = [v4 _hostedWindowScene];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(type metadata accessor for EmojiSearchResult()) init];
      sub_19A7862FC(0);
      v10 = &v9[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_emoji];
      *v10 = v11;
      *(v10 + 1) = v12;

      *&v9[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_index] = a2;
      v13 = sub_19A6B8194(0, v9, 0, 0, type metadata accessor for EmojiSearchResult, &qword_1EAFCE048, type metadata accessor for EmojiSearchResult);

      [v8 sendAction_];
    }
  }
}

void sub_19A6B39A4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v16 = a2;
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B90E0;
    *(inited + 32) = 0x7079546567616D49;
    *(inited + 40) = 0xE900000000000065;
    v7 = Sticker.imageGlyph.getter();
    sub_19A665B5C(v7);

    v8 = sub_19A7AAFE4();

    *(inited + 48) = v8;
    *(inited + 56) = 0x756F536567617355;
    *(inited + 64) = 0xEB00000000656372;
    *(inited + 72) = sub_19A7AAFE4();
    *(inited + 80) = 0x7079546567617355;
    *(inited + 88) = 0xE900000000000065;
    *(inited + 96) = sub_19A7AAFE4();
    v9 = sub_19A69C364(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
    swift_arrayDestroy();
    if (qword_1EAFCB558 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD6C8, 0x6567617355, 0xE500000000000000, 0, 0, 0, 0, 2, 0, 1, v9);

    v10 = [v5 _hostedWindowScene];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(type metadata accessor for StickerSearchResult()) init];
      v13 = *&v12[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker];
      *&v12[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker] = a1;

      *&v12[OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_index] = v16;
      v14 = a1;
      v15 = sub_19A6B8194(1, v12, 1, 0, type metadata accessor for StickerSearchResult, &qword_1EAFCE040, type metadata accessor for StickerSearchResult);

      [v11 sendAction_];
    }
  }
}

void sub_19A6B3CD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong _hostedWindowScene];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_19A7B6C30;
      *(v8 + 32) = a1;
      *(v8 + 40) = a2;

      v9 = sub_19A6B87FC(3, v8, 0, 0);

      [v7 sendAction_];
    }
  }
}

void sub_19A6B3E6C()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostingController;
  if (!*&v0[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostingController])
  {
    v2 = v0;
    sub_19A6B2FBC();
    type metadata accessor for SearchViewModel(0);
    sub_19A6BA204(&qword_1EAFCAE88, type metadata accessor for SearchViewModel);
    sub_19A7A9914();
    v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE038));
    v4 = sub_19A7A9C84();
    [v2 addChildViewController_];
    v5 = [v4 view];

    if (!v5)
    {
LABEL_11:
      [v4 didMoveToParentViewController_];
      v43 = *&v2[v1];
      *&v2[v1] = v4;

      return;
    }

    [v5 setClipsToBounds_];
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];

    v7 = [v5 layer];
    [v7 setHitTestsAsOpaque_];

    v8 = [v2 view];
    if (v8)
    {
      v9 = v8;
      [v8 addSubview_];

      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      v10 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets;
      swift_beginAccess();
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      if ((v2[v10] & 1) == 0)
      {
        [objc_opt_self() additionalInsets];
        v11 = v15;
        v12 = v16;
        v13 = v17;
        v14 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_19A7BB2E0;
      v20 = [v5 topAnchor];
      v21 = [v2 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 topAnchor];

        v24 = [v20 constraintEqualToAnchor:v23 constant:v11];
        *(v19 + 32) = v24;
        v25 = [v5 bottomAnchor];
        v26 = [v2 view];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 bottomAnchor];

          v29 = [v25 constraintEqualToAnchor:v28 constant:-v13];
          *(v19 + 40) = v29;
          v30 = [v5 leftAnchor];
          v31 = [v2 view];
          if (v31)
          {
            v32 = v31;
            v33 = [v31 leftAnchor];

            v34 = [v30 constraintEqualToAnchor:v33 constant:v12];
            *(v19 + 48) = v34;
            v35 = [v5 rightAnchor];
            v36 = [v2 view];
            if (v36)
            {
              v37 = v36;
              v38 = objc_opt_self();
              v39 = [v37 rightAnchor];

              v40 = [v35 constraintEqualToAnchor:v39 constant:-v14];
              *(v19 + 56) = v40;
              sub_19A5F5028(0, &qword_1ED8B2030);
              v41 = sub_19A7AB234();

              [v38 activateConstraints_];

              v42 = sub_19A7AAFE4();
              [v5 setAccessibilityIdentifier_];

              goto LABEL_11;
            }

LABEL_17:
            __break(1u);
            return;
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

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_19A6B43C4(void *a1)
{
  v2 = v1;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCAA98);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB574();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "configure", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  sub_19A6B2FBC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  type metadata accessor for StickerSearchConfiguration();
  v8 = sub_19A7AB924();

  if ((v8 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v9 = a1;
    sub_19A7A96B4();
    v10 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
    swift_beginAccess();
    if (v9[v10] == 1)
    {
      sub_19A6B3E6C();
      return;
    }

    v11 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostingController;
    v12 = *(v2 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostingController);
    if (v12)
    {
      v13 = [v12 view];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      [v13 removeFromSuperview];

      v15 = *(v2 + v11);
    }

    else
    {
      v15 = 0;
    }

    *(v2 + v11) = 0;
  }
}

void sub_19A6B4614(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v7 = sub_19A7A9384();
  __swift_project_value_buffer(v7, qword_1EAFCAA98);
  v8 = sub_19A7A9364();
  v9 = sub_19A7AB574();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19A5EE000, v8, v9, "viewDidAppear", v10, 2u);
    MEMORY[0x19A907A30](v10, -1, -1);
  }

  v11 = type metadata accessor for StickerSearchViewController();
  v20.receiver = v2;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, sel_viewDidAppear_, a1 & 1);
  v12 = [v2 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 window];

    if (v14)
    {
      v15 = [v14 windowScene];

      if (v15)
      {
        v16 = v15;
        sub_19A7AB8F4();

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDC20);
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(v6, 1, v17) == 1)
        {

          sub_19A5F2B54(v6, &qword_1EAFCDC18);
          v19 = 0;
        }

        else
        {
          swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_getOpaqueTypeConformance2();
          sub_19A6B93B4();
          v19 = sub_19A7A93C4();

          (*(v18 + 8))(v6, v17);
        }

        *&v2[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_layoutDirectionObservation] = v19;
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_19A6B493C(uint64_t a1))(void, void)
{
  v2 = sub_19A7A93B4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE030);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1EAFCAA90 != -1)
    {
      swift_once();
    }

    v9 = sub_19A7A9384();
    __swift_project_value_buffer(v9, qword_1EAFCAA98);
    (*(v4 + 16))(v6, a1, v3);
    v10 = sub_19A7A9364();
    v11 = sub_19A7AB574();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20[2] = v2;
      v13 = v12;
      *v12 = 134217984;
      sub_19A7A9394();
      v14 = v21;
      v20[1] = a1;
      v15 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
      swift_beginAccess();
      v16 = *&v14[v15];

      (*(v4 + 8))(v6, v3);
      *(v13 + 1) = v16;
      _os_log_impl(&dword_19A5EE000, v10, v11, "Layout direction changed: %ld", v13, 0xCu);
      MEMORY[0x19A907A30](v13, -1, -1);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }

    v17 = v8;
    sub_19A7A9394();
    v18 = v21;
    swift_beginAccess();

    sub_19A7AB684();
    sub_19A7A93A4();
    sub_19A7AB694();

    sub_19A6B2FBC();
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_19A7A9694();
    if (__OFADD__(*v19, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v19;
      result(&v21, 0);
    }
  }

  return result;
}

void sub_19A6B4D2C(char a1)
{
  v2 = v1;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCAA98);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB574();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "viewWillDisappear", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for StickerSearchViewController();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v8 = [objc_opt_self() defaultCenter];
  if (qword_1EAFCABA8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1EAFDD570 object:0 userInfo:0];
}

void sub_19A6B4F04(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v7 = sub_19A7A9384();
  __swift_project_value_buffer(v7, qword_1EAFCAA98);
  v8 = sub_19A7A9364();
  v9 = sub_19A7AB574();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19A5EE000, v8, v9, "search", v10, 2u);
    MEMORY[0x19A907A30](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_currentQuery;
  v12 = *&v2[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_currentQuery];
  if (v12)
  {
    type metadata accessor for StickerSearchQuery();
    v13 = v12;
    v14 = a1;
    v15 = sub_19A7AB924();

    if (v15)
    {
      v30 = sub_19A7A9364();
      v16 = sub_19A7AB574();
      if (os_log_type_enabled(v30, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_19A5EE000, v30, v16, "Skipping search because query did not change", v17, 2u);
        MEMORY[0x19A907A30](v17, -1, -1);
      }

      v18 = v30;

      return;
    }

    v19 = *&v2[v11];
  }

  else
  {
    v19 = 0;
  }

  *&v2[v11] = a1;
  v20 = a1;

  v21 = [objc_opt_self() defaultCenter];
  if (qword_1EAFCABA8 != -1)
  {
    swift_once();
  }

  [v21 postNotificationName:qword_1EAFDD570 object:0 userInfo:0];

  v22 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_searchTask;
  if (*&v2[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_searchTask])
  {

    sub_19A7AB3B4();
  }

  v23 = sub_19A7AB394();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_19A7AB354();
  v24 = v20;
  v25 = v2;
  v26 = sub_19A7AB344();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  v27[5] = v24;
  *&v2[v22] = sub_19A6816F0(0, 0, v6, &unk_19A7BC858, v27);
}

uint64_t sub_19A6B52C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[98] = a5;
  v5[97] = a4;
  sub_19A7AB354();
  v5[99] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();
  v5[100] = v7;
  v5[101] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A6B5368, v7, v6);
}

uint64_t sub_19A6B5368()
{
  sub_19A7AB3D4();
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = swift_allocObject();
  *(v0 + 816) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v2;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE48);
  swift_asyncLet_begin();

  v5 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  swift_beginAccess();
  if (v4[v5] == 1)
  {
    v6 = *(v0 + 784);
    v7 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
    swift_beginAccess();
    v8 = *(v6 + v7);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 840) = v8;

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 768, sub_19A6B55D4, v0 + 656);
}

uint64_t sub_19A6B55D4()
{
  v1[103] = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 2, v1 + 96, sub_19A6B59C4, v1 + 82);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_19A6B5618, v1[100], v1[101]);
  }
}

uint64_t sub_19A6B5618()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 768);

  sub_19A7AB3D4();
  *(v0 + 832) = v1;
  if (v1)
  {

    v3 = sub_19A6B5B30;
  }

  else
  {
    v4 = *(v0 + 776);
    sub_19A6B2FBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 656) = 1;
    sub_19A7A96B4();
    v5 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 656) = v2;

    sub_19A7A96B4();
    swift_getKeyPath();
    swift_getKeyPath();

    v6 = sub_19A7A9694();
    if (__OFADD__(*v7, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEB0](v6, v7, v8, v9);
    }

    v10 = *(v0 + 784);
    v20 = *(v0 + 776);
    ++*v7;
    v6(v0 + 656, 0);

    v11 = (v10 + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 656) = v12;
    *(v0 + 664) = v13;

    sub_19A7A96B4();
    v14 = *(v2 + 16);

    v15 = [v20 _hostedWindowScene];
    if (v15)
    {
      v16 = v15;
      v17 = sub_19A6B84F0(2, (v14 == 0) & *(v0 + 840), 0, 0);
      [v16 sendAction_];
    }

    v18 = *(v0 + 840);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 656) = v18;

    sub_19A7A96B4();
    *(*(v4 + v5) + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_searchRanAtLeastOnce) = 1;
    v3 = sub_19A6B593C;
  }

  v8 = v3;
  v6 = (v0 + 16);
  v7 = (v0 + 768);
  v9 = v0 + 656;

  return MEMORY[0x1EEE6DEB0](v6, v7, v8, v9);
}

uint64_t sub_19A6B5958()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A6B59E0()
{

  v1 = *(v0 + 824);
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA98);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Cancelled", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  sub_19A60126C(&unk_19A7BCFD0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19A6B5B4C()
{

  v1 = *(v0 + 832);
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA98);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Cancelled", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  sub_19A60126C(&unk_19A7BCFD0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19A6B5C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A6B5CC0, 0, 0);
}

uint64_t sub_19A6B5CC0()
{
  sub_19A7AB354();
  *(v0 + 40) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6B5D54, v2, v1);
}

uint64_t sub_19A6B5D54()
{

  v0[6] = sub_19A6B3038();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_19A6B5E00;
  v2 = v0[4];

  return sub_19A71F5FC(v2);
}

uint64_t sub_19A6B5E00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_19A6B5F54;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_19A6B5F30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A6B5F54()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_19A6B5FC0()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets;
  swift_beginAccess();
  if ((v0[v1] & 1) == 0)
  {
    [objc_opt_self() additionalInsets];
  }

  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result frame];

    sub_19A6B2FBC();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_19A7A96B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id StickerSearchViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA98);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for StickerSearchViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id StickerSearchViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StickerSearchViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_searchTask] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___dataSource] = 0;
  v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_prewarmed] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___availability] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_currentQuery] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_layoutDirectionObservation] = 0;
  v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets] = 0;
  v6 = &v3[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID];
  *v6 = 0;
  v6[1] = 0;
  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for StickerSearchViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id StickerSearchViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StickerSearchViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___viewModel] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_searchTask] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___dataSource] = 0;
  v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_prewarmed] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController____lazy_storage___availability] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_currentQuery] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_layoutDirectionObservation] = 0;
  v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets] = 0;
  v3 = &v1[OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID];
  v4 = type metadata accessor for StickerSearchViewController();
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_19A6B664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19A6BBA6C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19A6B66B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE1D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE1D8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE1E0);
  v12 = *(*(v11 - 8) + 16);
  if (v10 == 1)
  {
    v12(v9, a1, v11);
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE1F8) + 36)] = 0;
    v13 = sub_19A7AA654();
    v23 = v14;
    v24 = v13;
    v15 = &v9[*(v7 + 36)];
    *v15 = sub_19A7AA654();
    v15[1] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE218);
    sub_19A6B69C0(v2, (v15 + *(v17 + 44)));
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE220);
    v12(v15 + *(v18 + 36), a1, v11);
    v19 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE210) + 36));
    v20 = v23;
    *v19 = v24;
    v19[1] = v20;
    sub_19A60F0CC(v9, v6, &qword_1EAFCE1D8);
    swift_storeEnumTagMultiPayload();
    sub_19A6BBAE8();
    sub_19A623714(&qword_1EAFCE200, &qword_1EAFCE1E0);
    sub_19A7A9D64();
    return sub_19A5F2B54(v9, &qword_1EAFCE1D8);
  }

  else
  {
    v12(v6, a1, v11);
    swift_storeEnumTagMultiPayload();
    sub_19A6BBAE8();
    sub_19A623714(&qword_1EAFCE200, &qword_1EAFCE1E0);
    return sub_19A7A9D64();
  }
}

uint64_t sub_19A6B69C0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v71 = a2;
  v70 = sub_19A7A97A4();
  v3 = *(v70 - 8);
  v4 = MEMORY[0x1EEE9AC00](v70);
  v66 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v53[-v6];
  v7 = sub_19A7AA6F4();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for IntelligenceLightEffect(0);
  v57 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = v9;
  v59 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_19A7AA384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_19A7A9274();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE228);
  MEMORY[0x1EEE9AC00](v63);
  v19 = &v53[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE230);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v53[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53[-v23];
  v61 = *(a1 + 1);
  if (v61 == 1)
  {
    v60 = sub_19A7A9DD4();
  }

  else
  {
    v60 = 0;
  }

  if (qword_1EAFCB760 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_1EAFDD848);
  (*(v15 + 16))(v17, v25, v14);
  sub_19A7AA3E4();
  (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
  v56 = sub_19A7AA3C4();

  (*(v11 + 8))(v13, v10);
  v27 = *(a1 + 24);
  v73 = *(a1 + 16);
  v26 = v73;
  v74 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA464();
  v54 = v72;
  v28 = *(a1 + 8);
  sub_19A7AA744();
  v30 = v29;
  v32 = v31;
  sub_19A7AA6A4();
  v55 = sub_19A7AA674();

  v73 = v26;
  v74 = v27;
  sub_19A7AA464();
  v33 = v72;
  v73 = 1;
  v34 = v59;
  sub_19A6BBC58(a1, v59, type metadata accessor for IntelligenceLightEffect);
  v35 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v36 = swift_allocObject();
  v37 = sub_19A6BB920(v34, v36 + v35, type metadata accessor for IntelligenceLightEffect);
  v38 = v65;
  sub_19A79461C(v37);
  v39 = v66;
  v40 = v70;
  (*(v3 + 104))(v66, *MEMORY[0x1E697DBA8], v70);
  LOBYTE(v35) = sub_19A7A9794();
  v41 = *(v3 + 8);
  v41(v39, v40);
  v41(v38, v40);
  v43 = v67;
  v42 = v68;
  v44 = MEMORY[0x1E6981DF0];
  if ((v35 & 1) == 0)
  {
    v44 = MEMORY[0x1E6981DE0];
  }

  v45 = v69;
  (*(v68 + 104))(v67, *v44, v69);
  v46 = 6.28318531;
  if (!v54)
  {
    v46 = 0.0;
  }

  v47 = v46 + v28;
  (*(v42 + 32))(&v19[*(v63 + 36)], v43, v45);
  *v19 = v56;
  *(v19 + 1) = 0;
  *(v19 + 8) = 257;
  *(v19 + 3) = v47;
  *(v19 + 4) = v30;
  *(v19 + 5) = v32;
  *(v19 + 6) = v55;
  v19[56] = v33;
  *(v19 + 8) = sub_19A6BBCC0;
  *(v19 + 9) = v36;
  sub_19A6BBD68();
  *(v19 + 10) = 0;
  *(v19 + 11) = 0;
  sub_19A7AA174();
  sub_19A5F2B54(v19, &qword_1EAFCE228);
  v48 = v64;
  sub_19A60F0CC(v24, v64, &qword_1EAFCE230);
  v49 = v71;
  v50 = v61;
  *v71 = v60;
  *(v49 + 4) = v50 ^ 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE280);
  sub_19A60F0CC(v48, v49 + *(v51 + 48), &qword_1EAFCE230);
  sub_19A5F2B54(v24, &qword_1EAFCE230);
  return sub_19A5F2B54(v48, &qword_1EAFCE230);
}

uint64_t sub_19A6B71F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7A9AE4();
  *a1 = result;
  return result;
}

uint64_t sub_19A6B7250@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  *a1 = v3;
  return result;
}

uint64_t sub_19A6B72D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A6B7344@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  *a1 = v3;
  return result;
}

uint64_t sub_19A6B73C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

double sub_19A6B7438@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19A6B74B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A6B753C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  *a1 = v3;
  return result;
}

uint64_t sub_19A6B75BC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_19A7A96B4();
}

double sub_19A6B7634@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19A6B76B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A6B7730@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  *a1 = v3;
  return result;
}

uint64_t sub_19A6B77AC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A6B781C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19A60F0CC(a1, &v5 - v3, &qword_1EAFCE170);
  return sub_19A7A9AC4();
}

uint64_t sub_19A6B78C4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE2B8);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

uint64_t sub_19A6B7A54(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE2B0);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t sub_19A6B7C04(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 32;
    while (1)
    {
      v20 = *(v6 + 16 * v3);
      if (v4)
      {

        v7 = __OFSUB__(v4--, 1);
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE2A8);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = v11 + 4;
        v14 = v2[3] >> 1;
        v5 = &v11[3 * v14 + 4];
        v15 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        if (v2[2])
        {
          v16 = v11 < v2 || v13 >= &v2[3 * v14 + 4];
          if (v16 || v11 != v2)
          {
            memmove(v13, v2 + 4, 24 * v14);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v11;
        v7 = __OFSUB__(v15, 1);
        v4 = v15 - 1;
        if (v7)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v20;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v7 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v7)
    {
      goto LABEL_30;
    }

    v2[2] = v19;
  }

  return v2;
}

uint64_t sub_19A6B7DC4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 16 * v3);
      v19 = v7;
      if (v4)
      {
        result = sub_19A6BAB60(*(&v7 + 1));
        goto LABEL_20;
      }

      v8 = v2[3];
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_29;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE000);
      v11 = swift_allocObject();
      v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
      v11[2] = v10;
      v11[3] = 2 * v12;
      v13 = v2[3] >> 1;
      v5 = &v11[3 * v13 + 4];
      v4 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v13;
      if (!v2[2])
      {
        sub_19A6BAB60(*(&v19 + 1));

        v2 = v11;
        goto LABEL_20;
      }

      if (v11 < v2 || v11 + 4 >= &v2[3 * v13 + 4])
      {
        sub_19A6BAB60(*(&v19 + 1));
      }

      else
      {
        sub_19A6BAB60(*(&v19 + 1));
        if (v11 == v2)
        {
          goto LABEL_19;
        }
      }

      memmove(v11 + 4, v2 + 4, 24 * v13);
LABEL_19:
      v2[2] = 0;

      v2 = v11;
LABEL_20:
      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      *v5 = v3;
      *(v5 + 8) = v19;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v16 = v2[3];
  if (v16 >= 2)
  {
    v17 = v16 >> 1;
    v15 = __OFSUB__(v17, v4);
    v18 = v17 - v4;
    if (v15)
    {
      goto LABEL_30;
    }

    v2[2] = v18;
  }

  return v2;
}

unint64_t sub_19A6B7FA4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x19A906130](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_19A7ABBE4();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE008);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

id sub_19A6B8194(uint64_t a1, void *a2, char a3, char a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v27[5] = a2;
  v13 = objc_allocWithZone(MEMORY[0x1E698E700]);
  v14 = a2;
  v15 = [v13 init];
  if (a3)
  {
    v16 = sub_19A7A8CA4();
    swift_allocObject();
    v17 = sub_19A7A8C94();
    v18 = &unk_1EAFCB0B0;
    v19 = MEMORY[0x1E69689D8];
  }

  else
  {
    v16 = sub_19A7A8B84();
    swift_allocObject();
    v17 = sub_19A7A8B74();
    v18 = &unk_1ED8B3400;
    v19 = MEMORY[0x1E6968010];
  }

  v27[3] = v16;
  v27[4] = sub_19A6BA204(v18, v19);
  v27[0] = v17;
  __swift_project_boxed_opaque_existential_1(v27, v16);
  a5(0);
  sub_19A6BA204(a6, a7);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v27);
  v20 = sub_19A7A8E14();
  [v15 setObject:v20 forSetting:1];

  if (a4)
  {
    v21 = [objc_opt_self() _synchronizedDrawingFence];
    [v15 setObject:v21 forSetting:2];
    sub_19A612F14(v25, v26);
  }

  else
  {
    sub_19A612F14(v25, v26);
  }

  v22 = sub_19A7AB4B4();
  [v15 setObject:v22 forSetting:0];

  type metadata accessor for StickerSearchClientToHostAction();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v15 responder:0];

  return v23;
}

id sub_19A6B84F0(uint64_t a1, char a2, char a3, char a4)
{
  v19 = a2;
  v6 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a3)
  {
    v7 = sub_19A7A8CA4();
    swift_allocObject();
    v8 = sub_19A7A8C94();
    v9 = &unk_1EAFCB0B0;
    v10 = MEMORY[0x1E69689D8];
  }

  else
  {
    v7 = sub_19A7A8B84();
    swift_allocObject();
    v8 = sub_19A7A8B74();
    v9 = &unk_1ED8B3400;
    v10 = MEMORY[0x1E6968010];
  }

  v18[3] = v7;
  v18[4] = sub_19A6BA204(v9, v10);
  v18[0] = v8;
  __swift_project_boxed_opaque_existential_1(v18, v7);
  sub_19A7A9644();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v11 = sub_19A7A8E14();
  [v6 setObject:v11 forSetting:1];

  if (a4)
  {
    v12 = [objc_opt_self() _synchronizedDrawingFence];
    [v6 setObject:v12 forSetting:2];
    sub_19A612F14(v16, v17);
  }

  else
  {
    sub_19A612F14(v16, v17);
  }

  v13 = sub_19A7AB4B4();
  [v6 setObject:v13 forSetting:0];

  type metadata accessor for StickerSearchClientToHostAction();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v6 responder:0];

  return v14;
}

id sub_19A6B87FC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v19[5] = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v7 = [v6 init];
  if (a3)
  {
    v8 = sub_19A7A8CA4();
    swift_allocObject();
    v9 = sub_19A7A8C94();
    v10 = &unk_1EAFCB0B0;
    v11 = MEMORY[0x1E69689D8];
  }

  else
  {
    v8 = sub_19A7A8B84();
    swift_allocObject();
    v9 = sub_19A7A8B74();
    v10 = &unk_1ED8B3400;
    v11 = MEMORY[0x1E6968010];
  }

  v19[3] = v8;
  v19[4] = sub_19A6BA204(v10, v11);
  v19[0] = v9;
  __swift_project_boxed_opaque_existential_1(v19, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
  sub_19A6BAD7C();
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = sub_19A7A8E14();
  [v7 setObject:v12 forSetting:1];

  if (a4)
  {
    v13 = [objc_opt_self() _synchronizedDrawingFence];
    [v7 setObject:v13 forSetting:2];
    sub_19A612F14(v17, v18);
  }

  else
  {
    sub_19A612F14(v17, v18);
  }

  v14 = sub_19A7AB4B4();
  [v7 setObject:v14 forSetting:0];

  type metadata accessor for StickerSearchClientToHostAction();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v7 responder:0];

  return v15;
}

uint64_t sub_19A6B8B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  v3 = sub_19A7AB754();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = sub_19A7AB744();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  (*(v4 + 16))(v9, v14, v3);
  sub_19A7AB784();
  sub_19A6BA204(&qword_1EAFCA4F0, MEMORY[0x1E69E8080]);
  sub_19A7ABAD4();
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  sub_19A6BA204(&unk_1EAFCA500, MEMORY[0x1E69E8060]);
  LOBYTE(v15) = sub_19A7AAFB4();
  (*(v11 + 8))(v13, v10);
  sub_19A7AB784();
  swift_beginAccess();
  (*(v4 + 40))(v14, v9, v3);
  return v15 & 1;
}

void sub_19A6B8E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = *(a2 + 16);
  v42 = *a2;
  v10 = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v43 = v9;
  v44 = v12;
  v45 = *(a2 + 48);
  v38 = v10;
  v39 = v11;
  v40 = *(a2 + 32);
  v41 = *(a2 + 48);
  sub_19A60F01C(&v42, v37);
  sub_19A63F030(&v38);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v13 = v38;
  v36 = *(v38 + 16);
  if (!v36)
  {
LABEL_12:

    return;
  }

  v32 = v8;
  v33 = v3;
  v14 = 0;
  v35 = OBJC_IVAR____TtC10StickerKit18EmojiCellViewModel___observationRegistrar;
  v15 = (v38 + 40);
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *v15;
    if (*v15 < 0)
    {
      goto LABEL_3;
    }

    v34 = *(v15 - 1);
    swift_getKeyPath();
    *&v38 = v16;
    sub_19A6BA204(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel);
    swift_retain_n();
    sub_19A7A90C4();

    v17 = *(v16 + 56);
    v18 = *(v16 + 64);
    swift_getKeyPath();
    *&v38 = a1;

    sub_19A7A90C4();

    if (v17 == *(a1 + 56) && v18 == *(a1 + 64))
    {
      break;
    }

    v20 = sub_19A7AC064();

    if (v20)
    {
      goto LABEL_14;
    }

    sub_19A6B9BA8(v16);
    sub_19A6B9BA8(v16);
LABEL_3:
    ++v14;
    v15 += 2;
    if (v36 == v14)
    {
      goto LABEL_12;
    }
  }

LABEL_14:

  v38 = v42;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  sub_19A7862FC(0);
  v22 = v21;
  v24 = v23;
  v25 = sub_19A7AB394();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  sub_19A7AB354();
  v27 = v33;

  v28 = sub_19A7AB344();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v27;
  v29[5] = v22;
  v29[6] = v24;
  sub_19A7233EC(0, 0, v26, &unk_19A7BCB80, v29);

  v31 = *(v27 + OBJC_IVAR____TtC10StickerKitP33_7DAC5D701512A91D2193BC271035D2BE15SearchViewModel_didSelectEmoji);
  if (v31)
  {
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v41 = v45;

    v31(&v38, v34);
    sub_19A60126C(v31);
  }

  sub_19A6B9BA8(v16);
  sub_19A6B9BA8(v16);
}

uint64_t sub_19A6B9234()
{
  v1 = v0;
  if (qword_1EAFCAA90 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA98);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "viewIsAppearing", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  if (qword_1EAFCAD68 != -1)
  {
    swift_once();
  }

  v6 = (v1 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  return sub_19A661A40(v8, v7);
}

unint64_t sub_19A6B93B4()
{
  result = qword_1ED8B25B0;
  if (!qword_1ED8B25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B25B0);
  }

  return result;
}

uint64_t sub_19A6B9408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60FB98;

  return sub_19A6B52C8(a1, v4, v5, v7, v6);
}

void sub_19A6B94F0()
{
  sub_19A6BB170(319, &qword_1ED8B20C0, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_19A6B9814(319, &qword_1EAFCA860, &qword_1EAFCDE48);
    if (v1 <= 0x3F)
    {
      sub_19A6B9814(319, &qword_1EAFCA868, &qword_1EAFCDE50);
      if (v2 <= 0x3F)
      {
        sub_19A6B9814(319, &unk_1ED8B20E0, qword_1EAFCEEB0);
        if (v3 <= 0x3F)
        {
          sub_19A6BB1C0(319, &qword_1EAFCA870, type metadata accessor for StickerSearchConfiguration, MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            sub_19A6BB170(319, &unk_1ED8B20D0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
            if (v5 <= 0x3F)
            {
              sub_19A6BB1C0(319, &qword_1EAFCA858, type metadata accessor for CGSize, MEMORY[0x1E695C070]);
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

void sub_19A6B9814(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_19A7A96C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19A6B9A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A6B9AC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A6B9B20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_19A6B9BA8(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_19A6B9BB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A6AD7B4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_19A6B9C80()
{
  result = qword_1EAFCA730;
  if (!qword_1EAFCA730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE60);
    sub_19A6B9D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA730);
  }

  return result;
}

unint64_t sub_19A6B9D0C()
{
  result = qword_1EAFCA778;
  if (!qword_1EAFCA778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE80);
    sub_19A623714(&qword_1EAFCA658, &qword_1EAFCDE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA778);
  }

  return result;
}

unint64_t sub_19A6B9DC4()
{
  result = qword_1EAFCA6E8;
  if (!qword_1EAFCA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE78);
    sub_19A6B9C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA6E8);
  }

  return result;
}

unint64_t sub_19A6B9E50()
{
  result = qword_1EAFCA728;
  if (!qword_1EAFCA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE58);
    sub_19A6B9F08();
    sub_19A623714(&qword_1EAFCA6D8, &qword_1EAFCDEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA728);
  }

  return result;
}

unint64_t sub_19A6B9F08()
{
  result = qword_1EAFCA758;
  if (!qword_1EAFCA758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE90);
    sub_19A6B9F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA758);
  }

  return result;
}

unint64_t sub_19A6B9F94()
{
  result = qword_1EAFCA7B0;
  if (!qword_1EAFCA7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE98);
    sub_19A623714(&qword_1EAFCA850, &qword_1EAFCDEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA7B0);
  }

  return result;
}

uint64_t sub_19A6BA04C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v6;
  *(v4 + 48) = v5;
  *a1 = sub_19A6BA3B8;
  a1[1] = v4;
}

unint64_t sub_19A6BA0BC()
{
  result = qword_1EAFCA760;
  if (!qword_1EAFCA760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDED0);
    sub_19A6BA148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA760);
  }

  return result;
}

unint64_t sub_19A6BA148()
{
  result = qword_1EAFCA7B8;
  if (!qword_1EAFCA7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDEE8);
    sub_19A6BA204(&unk_1EAFCAF70, type metadata accessor for CreateButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA7B8);
  }

  return result;
}

uint64_t sub_19A6BA204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A6BA26C()
{
  result = qword_1EAFCA748;
  if (!qword_1EAFCA748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDEE0);
    sub_19A6BA324();
    sub_19A623714(&qword_1EAFCA6D0, &qword_1EAFCDEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA748);
  }

  return result;
}

unint64_t sub_19A6BA324()
{
  result = qword_1EAFCA790;
  if (!qword_1EAFCA790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA790);
  }

  return result;
}

uint64_t sub_19A6BA3C0(uint64_t a1)
{
  v3 = *(sub_19A7A99F4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_19A6B2934(a1, v1 + v4, v5);
}

uint64_t sub_19A6BA45C(uint64_t a1)
{
  v4 = *(sub_19A7A99F4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A6B2B54(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_19A6BA578()
{
  result = qword_1EAFCDF20;
  if (!qword_1EAFCDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDF20);
  }

  return result;
}

unint64_t sub_19A6BA5D8()
{
  result = qword_1EAFCDF50;
  if (!qword_1EAFCDF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDF40);
    sub_19A623714(&qword_1EAFCDF58, &qword_1EAFCDF60);
    sub_19A6BA690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDF50);
  }

  return result;
}

unint64_t sub_19A6BA690()
{
  result = qword_1EAFCDF68;
  if (!qword_1EAFCDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDF68);
  }

  return result;
}

unint64_t sub_19A6BA6EC()
{
  result = qword_1EAFCDF88;
  if (!qword_1EAFCDF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDF80);
    sub_19A6BA770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDF88);
  }

  return result;
}

unint64_t sub_19A6BA770()
{
  result = qword_1EAFCDF90;
  if (!qword_1EAFCDF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDF98);
    sub_19A6BA7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDF90);
  }

  return result;
}

unint64_t sub_19A6BA7FC()
{
  result = qword_1EAFCDFA0;
  if (!qword_1EAFCDFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDFA8);
    sub_19A6BA8B4();
    sub_19A623714(&unk_1EAFCA6C0, &qword_1EAFCC7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDFA0);
  }

  return result;
}

unint64_t sub_19A6BA8B4()
{
  result = qword_1EAFCDFB0;
  if (!qword_1EAFCDFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDFB8);
    sub_19A6BA9C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDFD0);
    sub_19A6BAA14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDFB0);
  }

  return result;
}

unint64_t sub_19A6BA9C0()
{
  result = qword_1EAFCDFC0;
  if (!qword_1EAFCDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDFC0);
  }

  return result;
}

unint64_t sub_19A6BAA14()
{
  result = qword_1EAFCDFD8;
  if (!qword_1EAFCDFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDFD0);
    sub_19A6BA204(&qword_1EAFCDFE0, type metadata accessor for StickerCell);
    sub_19A623714(&qword_1EAFCA6B8, &unk_1EAFCCCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCDFD8);
  }

  return result;
}

id sub_19A6BAB60(uint64_t a1)
{
  if (a1 < 0)
  {
    return (a1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

unint64_t sub_19A6BABA8()
{
  result = qword_1EAFCA718;
  if (!qword_1EAFCA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA718);
  }

  return result;
}

uint64_t sub_19A6BABFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A60F860;

  return sub_19A6AFB64(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A6BACD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19A60F860;

  return sub_19A6B5C9C(a1, v5, v4);
}

unint64_t sub_19A6BAD7C()
{
  result = qword_1EAFCB110;
  if (!qword_1EAFCB110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB110);
  }

  return result;
}

unint64_t sub_19A6BADF8()
{
  result = qword_1EAFCA5C8;
  if (!qword_1EAFCA5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCDE48);
    sub_19A6BAE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA5C8);
  }

  return result;
}

unint64_t sub_19A6BAE7C()
{
  result = qword_1EAFCAE60;
  if (!qword_1EAFCAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCAE60);
  }

  return result;
}

uint64_t sub_19A6BAED0()
{
  v1 = *(sub_19A7AB744() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_19A6B8B40(v2, v3, v4);
}

unint64_t sub_19A6BAF34()
{
  result = qword_1EAFCA4E8;
  if (!qword_1EAFCA4E8)
  {
    sub_19A5F5028(255, &qword_1ED8B2040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA4E8);
  }

  return result;
}

id sub_19A6BAFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if (a7 < 0)
  {

    return a1;
  }

  else
  {
    v8 = a7;

    return sub_19A60EF14(a5, a6, v8);
  }
}

void sub_19A6BB080()
{
  sub_19A6BB170(319, &qword_1EAFCA678, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_19A6BB1C0(319, &unk_1EAFCA830, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A6BB170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_19A6BB1C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for DelayedTransitionModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedTransitionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_19A6BB304()
{
  sub_19A6BB410();
  if (v0 <= 0x3F)
  {
    sub_19A6BB1C0(319, &unk_1EAFCA830, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_19A6BB170(319, &qword_1EAFCA678, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A6BB410()
{
  if (!qword_1EAFCA7C0)
  {
    type metadata accessor for SearchViewModel(255);
    sub_19A6BA204(&qword_1EAFCAE88, type metadata accessor for SearchViewModel);
    v0 = sub_19A7A9924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA7C0);
    }
  }
}

uint64_t sub_19A6BB4B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A6BB50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_19A6BB590()
{
  result = qword_1EAFCA6E0;
  if (!qword_1EAFCA6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE0B0);
    sub_19A6B9DC4();
    sub_19A6B9E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA6E0);
  }

  return result;
}

unint64_t sub_19A6BB6A4()
{
  result = qword_1EAFCE0D0;
  if (!qword_1EAFCE0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE0C8);
    sub_19A6BB730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE0D0);
  }

  return result;
}

unint64_t sub_19A6BB730()
{
  result = qword_1EAFCE0D8;
  if (!qword_1EAFCE0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE0E0);
    sub_19A623714(&qword_1EAFCE0E8, &qword_1EAFCE0F0);
    sub_19A623714(&qword_1EAFCC928, &qword_1EAFCC930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE0D8);
  }

  return result;
}

unint64_t sub_19A6BB814()
{
  result = qword_1EAFCE0F8;
  if (!qword_1EAFCE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE0C0);
    sub_19A623714(&qword_1EAFCE100, &qword_1EAFCE0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE0F8);
  }

  return result;
}

unint64_t sub_19A6BB8CC()
{
  result = qword_1EAFCE108;
  if (!qword_1EAFCE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE108);
  }

  return result;
}

uint64_t sub_19A6BB920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A6BB988()
{
  result = qword_1EAFCE1A0;
  if (!qword_1EAFCE1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE190);
    sub_19A623714(&qword_1EAFCE1A8, &qword_1EAFCE198);
    sub_19A623714(&qword_1EAFCE1B0, &qword_1EAFCE1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE1A0);
  }

  return result;
}

unint64_t sub_19A6BBA6C()
{
  result = qword_1EAFCA5D0;
  if (!qword_1EAFCA5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAFCEEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA5D0);
  }

  return result;
}

unint64_t sub_19A6BBAE8()
{
  result = qword_1EAFCE1E8;
  if (!qword_1EAFCE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE1D8);
    sub_19A6BBBA0();
    sub_19A623714(&qword_1EAFCE208, &qword_1EAFCE210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE1E8);
  }

  return result;
}

unint64_t sub_19A6BBBA0()
{
  result = qword_1EAFCE1F0;
  if (!qword_1EAFCE1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE1F8);
    sub_19A623714(&qword_1EAFCE200, &qword_1EAFCE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE1F0);
  }

  return result;
}

uint64_t sub_19A6BBC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A6BBCEC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_19A6BBD68()
{
  result = qword_1EAFCE238;
  if (!qword_1EAFCE238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE228);
    sub_19A6BBDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE238);
  }

  return result;
}

unint64_t sub_19A6BBDF4()
{
  result = qword_1EAFCE240;
  if (!qword_1EAFCE240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE248);
    sub_19A6BBE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE240);
  }

  return result;
}

unint64_t sub_19A6BBE80()
{
  result = qword_1EAFCE250;
  if (!qword_1EAFCE250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE258);
    sub_19A6BBF38();
    sub_19A623714(&qword_1EAFCE270, &qword_1EAFCE278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE250);
  }

  return result;
}

unint64_t sub_19A6BBF38()
{
  result = qword_1EAFCE260;
  if (!qword_1EAFCE260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE268);
    sub_19A618760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE260);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19A6BBFDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A6BC038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_19A6BC09C()
{
  result = qword_1EAFCE288;
  if (!qword_1EAFCE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE290);
    sub_19A6BB988();
    sub_19A623714(&qword_1EAFCE1A8, &qword_1EAFCE198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE288);
  }

  return result;
}

unint64_t sub_19A6BC154()
{
  result = qword_1EAFCE298;
  if (!qword_1EAFCE298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE2A0);
    sub_19A6BBAE8();
    sub_19A623714(&qword_1EAFCE200, &qword_1EAFCE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE298);
  }

  return result;
}

uint64_t sub_19A6BC234(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id static StickerEffect.effectWithType(_:)(uint64_t a1)
{
  v1 = sub_19A6BE2A0(a1);

  return v1;
}

uint64_t sub_19A6BC2B0()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6BC2F4(uint64_t a1)
{
  v3 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A6BC3F0()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 0x7966667570;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return 1702259052;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6563736564697269;
  }

  else
  {
    if (!v2)
    {
      return 1701736302;
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 0x63696D6F63;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x64656B6F727473;
  }
}

BOOL sub_19A6BC4F8()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return (*(v0 + v1) - 1) < 4;
}

BOOL sub_19A6BC548()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return *(v0 + v1) == 1;
}

BOOL sub_19A6BC594()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL sub_19A6BC5E0()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL sub_19A6BC62C()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return *(v0 + v1) == 2;
}

BOOL sub_19A6BC678()
{
  v1 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  return *(v0 + v1) == 5;
}

uint64_t sub_19A6BC70C()
{
  v1 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6BC7A4(char a1)
{
  v3 = OBJC_IVAR___STKStickerEffect_isStroked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A6BCA9C()
{
  v1 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6BCB34(char a1)
{
  v3 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_19A6BCC0C()
{
  if (*(v0 + OBJC_IVAR___STKStickerEffect_shadowAlpha) == 0.0 || *(v0 + OBJC_IVAR___STKStickerEffect_shadowRadius) == 0.0)
  {
    result = 0;
  }

  else
  {
    result = COERCE_FLOAT(*(v0 + OBJC_IVAR___STKStickerEffect_shadowParallax)) != 0.0 || COERCE_FLOAT(HIDWORD(*(v0 + OBJC_IVAR___STKStickerEffect_shadowParallax))) != 0.0;
  }

  if (*(v0 + OBJC_IVAR___STKStickerEffect_iridescence) || (*(v0 + OBJC_IVAR___STKStickerEffect_isPuffy) & 1) != 0 || *(v0 + OBJC_IVAR___STKStickerEffect_isBrushed) == 1)
  {
    return 1;
  }

  return result;
}

uint64_t sub_19A6BCCE4()
{
  v1 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6BCD7C(char a1)
{
  v3 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_19A6BCE2C()
{
  v1 = v0 + OBJC_IVAR___STKStickerEffect_comicParameters;
  *v1 = 0;
  *(v1 + 4) = xmmword_19A7BD510;
  result = 5.23869072e-11;
  *(v1 + 20) = 0x3DCCCCCD3F000000;
  *(v1 + 32) = 6;
  return result;
}

double sub_19A6BCE94()
{
  v1 = v0 + OBJC_IVAR___STKStickerEffect_comicParameters;
  *v1 = 1;
  *(v1 + 4) = xmmword_19A7BD520;
  result = 5.23869072e-11;
  *(v1 + 20) = 0x3DCCCCCD3F000000;
  *(v1 + 32) = 6;
  return result;
}

char *sub_19A6BCF04()
{
  v1 = v0;
  v2 = OBJC_IVAR___STKStickerEffect____lazy_storage___viewForRendering;
  v3 = *(v0 + OBJC_IVAR___STKStickerEffect____lazy_storage___viewForRendering);
  v4 = v3;
  if (v3 != 1)
  {
    goto LABEL_4;
  }

  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(type metadata accessor for StickerEffectView());
    v4 = sub_19A77CFB4(v6);
    v8 = *(v1 + v2);
    *(v1 + v2) = v4;
    v9 = v4;
    sub_19A6A0EF8(v8);
LABEL_4:
    sub_19A6BEBF4(v3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6BCF9C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A6BCFBC, 0, 0);
}

uint64_t sub_19A6BCFBC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
  *v2 = v0;
  v2[1] = sub_19A6BD0C8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x707041636E797361, 0xEF293A6F7428796CLL, sub_19A69E044, v1, v3);
}

uint64_t sub_19A6BD0C8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_19A6BD200;
  }

  else
  {

    v2 = sub_19A6BD1E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A6BD200()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_19A6BD264(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE398);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = sub_19A6BCF04();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a3;
    v14[4] = a2;
    v14[5] = sub_19A6BEC04;
    v14[6] = v11;
    aBlock[4] = sub_19A6BED64;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6815D4;
    aBlock[3] = &block_descriptor_85_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v17 = a3;
    v18 = a2;

    itk_performBlockOnMainThread();

    _Block_release(v15);
  }

  else
  {
  }
}

uint64_t sub_19A6BD47C(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_19A6BECA0();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE398);
    return sub_19A7AB2F4();
  }

  else
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE398);
    return sub_19A7AB304();
  }
}

void sub_19A6BD514(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_19A6BCF04();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = a1;
    v9[4] = v3;
    v9[5] = a2;
    v9[6] = a3;
    v14[4] = sub_19A6BE450;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_19A6815D4;
    v14[3] = &block_descriptor_11;
    v10 = _Block_copy(v14);
    v11 = v8;
    v12 = a1;
    v13 = v3;

    itk_performBlockOnMainThread();
    _Block_release(v10);
  }
}

void sub_19A6BD61C(_BYTE *a1, void *a2, void *a3, void (*a4)(void, void *), uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_image];
  *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_image] = a2;
  v10 = a2;
  sub_19A77CBE0(v9);

  v11 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_effect];
  *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_effect] = a3;
  v12 = a3;
  if (v11 != a3)
  {
    sub_19A77EC24();
    a1[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] = 0;
    a1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
    if (!*&a1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
    {
      [a1 itk_setNeedsLayout];
    }

    sub_19A77D990();
  }

  v14 = v12;

  v13 = a1;
  sub_19A781198(v13, a4, a5, v13, v14);
}

uint64_t sub_19A6BD90C()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v1 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  v0[v1] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowRadius] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowAlpha] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowOffset] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowParallax] = 0;
  v2 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *&v0[v2] = 0;
  qword_1EAFCB330 = v0;
  return result;
}

id StickerEffect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19A6BDA40()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v1 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  v0[v1] = 1;
  v2 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  v0[v2] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier] = 1075838976;
  *&v0[OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier] = 1075838976;
  *&v0[OBJC_IVAR___STKStickerEffect_smallShadowAlphaMultiplier] = 0x40000000;
  v3 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *&v0[v3] = 1;
  qword_1EAFCE2C0 = v0;
  return result;
}

_BYTE *sub_19A6BDB64()
{
  result = sub_19A6BDB84();
  qword_1EAFCE2C8 = result;
  return result;
}

_BYTE *sub_19A6BDB84()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v1 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  v0[v1] = 0;
  v2 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
  swift_beginAccess();
  v0[v2] = 1;
  v3 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  v0[v3] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowRadius] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowAlpha] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowOffset] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowParallax] = 0;
  v4 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  *&v0[v4] = 2;
  return v0;
}

uint64_t sub_19A6BDCD0()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v1 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  v0[v1] = 0;
  v0[OBJC_IVAR___STKStickerEffect_isPuffy] = 1;
  v2 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  v0[v2] = 0;
  v3 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *&v0[v3] = 3;
  qword_1EAFCE2D0 = v0;
  return result;
}

_BYTE *sub_19A6BDDD8()
{
  result = sub_19A6BDDF8();
  qword_1EAFCE2D8 = result;
  return result;
}

_BYTE *sub_19A6BDDF8()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v1 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  v0[v1] = 1;
  *&v0[OBJC_IVAR___STKStickerEffect_iridescence] = 3;
  v2 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  v0[v2] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier] = 0x40000000;
  *&v0[OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier] = 0x40000000;
  *&v0[OBJC_IVAR___STKStickerEffect_smallShadowAlphaMultiplier] = 0x40000000;
  v3 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  *&v0[v3] = 4;
  return v0;
}

uint64_t sub_19A6BDF28()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v1 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *&v0[v1] = 5;
  qword_1EAFCE2E0 = v0;
  return result;
}

id sub_19A6BDFB4(void *a1, void **a2)
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

id sub_19A6BE038(uint64_t a1, uint64_t a2, void *a3, void **a4)
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

id StickerEffect.init()()
{
  *&v0[OBJC_IVAR___STKStickerEffect_type] = 0;
  v0[OBJC_IVAR___STKStickerEffect_isStroked] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_strokeRadius] = 1023745720;
  *&v0[OBJC_IVAR___STKStickerEffect_strokeBlurRadius] = 994352038;
  *&v0[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier] = 1065353216;
  v0[OBJC_IVAR___STKStickerEffect_forceSmallStrokeRadiusMultiplier] = 0;
  v0[OBJC_IVAR___STKStickerEffect_isPuffy] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_normalsRadius] = 1021396910;
  *&v0[OBJC_IVAR___STKStickerEffect_iridescence] = 0;
  v0[OBJC_IVAR___STKStickerEffect_applyIridescenceBeforeStroke] = 0;
  v0[OBJC_IVAR___STKStickerEffect_isBrushed] = 0;
  v0[OBJC_IVAR___STKStickerEffect_applyBrushBeforeStroke] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowRadius] = 1017370378;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowAlpha] = 1046562734;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowOffset] = 0xBBA3D70A00000000;
  *&v0[OBJC_IVAR___STKStickerEffect_shadowParallax] = 0;
  *&v0[OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier] = 1065353216;
  *&v0[OBJC_IVAR___STKStickerEffect_smallShadowAlphaMultiplier] = 1065353216;
  v0[OBJC_IVAR___STKStickerEffect_isComicEnabled] = 0;
  v1 = &v0[OBJC_IVAR___STKStickerEffect_comicParameters];
  *v1 = 0;
  *(v1 + 4) = xmmword_19A7BD510;
  *(v1 + 20) = 0x3DCCCCCD3F000000;
  *(v1 + 4) = 6;
  v0[OBJC_IVAR___STKStickerEffect_isCurlEnabled] = 1;
  *&v0[OBJC_IVAR___STKStickerEffect____lazy_storage___viewForRendering] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for StickerEffect();
  return objc_msgSendSuper2(&v3, sel_init);
}

id StickerEffect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6BE2A0(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (qword_1EAFCB5B0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAFCE2D0;
        return *v1;
      case 4:
        if (qword_1EAFCB5B8 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAFCE2D8;
        return *v1;
      case 5:
        if (qword_1EAFCB5C0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAFCE2E0;
        return *v1;
    }

LABEL_14:
    if (qword_1EAFCB328 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EAFCB330;
    return *v1;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      if (qword_1EAFCB5A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EAFCE2C8;
      return *v1;
    }

    goto LABEL_14;
  }

  if (qword_1EAFCB5A0 != -1)
  {
    swift_once();
  }

  v1 = &qword_1EAFCE2C0;
  return *v1;
}

uint64_t dispatch thunk of StickerEffect.asyncApply(to:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x358);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A6BEABC;

  return v7(a1);
}

uint64_t sub_19A6BEABC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id sub_19A6BEBF4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_19A6BEC04(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE398);

  return sub_19A6BD47C(a1, a2);
}

unint64_t sub_19A6BECA0()
{
  result = qword_1EAFCE3A0;
  if (!qword_1EAFCE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE3A0);
  }

  return result;
}

unint64_t sub_19A6BED08()
{
  result = qword_1EAFCE3A8;
  if (!qword_1EAFCE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE3A8);
  }

  return result;
}

uint64_t sub_19A6BEDFC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PoofAnimationView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC10StickerKit17PoofAnimationView_puffs;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A7ABBE4())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x19A906130](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v0 bounds];
      [v6 setBounds_];

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_19A6BEF7C()
{
  v1 = v0;
  v2 = [v0 subviews];
  sub_19A5F5028(0, &qword_1EAFCA430);
  v3 = sub_19A7AB254();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A906130](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = OBJC_IVAR____TtC10StickerKit17PoofAnimationView_puffs;
  swift_beginAccess();
  *&v1[v9] = MEMORY[0x1E69E7CC0];

  v35 = OBJC_IVAR____TtC10StickerKit17PoofAnimationView_count;
  v10 = *&v1[OBJC_IVAR____TtC10StickerKit17PoofAnimationView_count];
  if (v10 < 0)
  {
    __break(1u);
  }

  else if (v10)
  {
    v11 = 0;
    v34 = *&v1[OBJC_IVAR____TtC10StickerKit17PoofAnimationView_count];
    do
    {
      v12 = *&v1[v35];
      [v1 bounds];
      v14 = v13;
      v16 = v15;
      v17 = type metadata accessor for PoofAnimationView();
      v41 = v17;
      v42 = &off_1F0DC9A58;
      v40[0] = v1;
      v18 = type metadata accessor for PuffView();
      v19 = objc_allocWithZone(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v36 = &v33;
      MEMORY[0x1EEE9AC00](v20);
      v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v22;
      v39[3] = v17;
      v39[4] = &off_1F0DC9A58;
      v39[0] = v24;
      v25 = OBJC_IVAR____TtC10StickerKit8PuffView_angle;
      *&v19[OBJC_IVAR____TtC10StickerKit8PuffView_angle] = 0;
      v26 = OBJC_IVAR____TtC10StickerKit8PuffView_favorsCenter;
      v19[OBJC_IVAR____TtC10StickerKit8PuffView_favorsCenter] = 0;
      v27 = &v19[OBJC_IVAR____TtC10StickerKit8PuffView_delegate];
      *v27 = 0u;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0;
      *&v19[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView] = 0;
      v38[0] = 0;
      v28 = v1;
      while (1)
      {
        MEMORY[0x19A907A50](v38, 8);
        if ((0x20000000000001 * v38[0]) >= 0x1FFFFFFFFFF801)
        {
          break;
        }

        v38[0] = 0;
      }

      v29 = (v38[0] * 0x20000000000001uLL) >> 64;
      v30 = vcvtd_n_f64_u64(v29, 0x35uLL) * 30.0 + -15.0;
      if (v29 == 0x20000000000000)
      {
        v30 = 15.0;
      }

      *&v19[v25] = v11 / v12 * 360.0 + v30;
      v19[v26] = v11 == 0;
      sub_19A6C0AB4(v39, v38);
      swift_beginAccess();
      sub_19A6C13AC(v38, v27);
      swift_endAccess();
      v37.receiver = v19;
      v37.super_class = v18;
      v31 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, v14, v16);
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_destroy_boxed_opaque_existential_1(v40);
      [v28 addSubview_];
      swift_beginAccess();
      v32 = v31;
      MEMORY[0x19A905660]();
      if (*((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      ++v11;
      sub_19A7AB2A4();
      swift_endAccess();
    }

    while (v11 != v34);
  }
}

uint64_t sub_19A6BF430(unint64_t j, unint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC10StickerKit17PoofAnimationView_completionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC10StickerKit17PoofAnimationView_completionHandler);
  *v4 = j;
  v4[1] = a2;
  sub_19A60126C(v5);
  v6 = OBJC_IVAR____TtC10StickerKit17PoofAnimationView_puffs;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A7ABBE4())
  {
    sub_19A60138C(j);

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A906130](j, v7);
      }

      else
      {
        if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v7 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_19A6BFDD0();

      if (v11 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_19A6BF558(void *a1)
{
  v2 = v1;
  [a1 removeFromSuperview];
  v4 = OBJC_IVAR____TtC10StickerKit17PoofAnimationView_puffs;
  swift_beginAccess();
  v5 = a1;
  v6 = sub_19A6C1020((v2 + v4));

  v7 = *(v2 + v4);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    if (sub_19A7ABBE4())
    {
      return;
    }

    goto LABEL_5;
  }

  v8 = sub_19A7ABBE4();
  if (v8 < v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_19A6C12B0(v6, v8, sub_19A61802C, sub_19A642490);
  swift_endAccess();
  v9 = *(v2 + v4);
  if (v9 >> 62)
  {
    goto LABEL_10;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

LABEL_5:
  sub_19A6BEF7C();
  v10 = *(v2 + OBJC_IVAR____TtC10StickerKit17PoofAnimationView_completionHandler);
  if (v10)
  {

    v10(v11);
    sub_19A60126C(v10);
  }
}

id sub_19A6BF788()
{
  v1 = OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView];
  }

  else
  {
    v4 = sub_19A6C0C58(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_19A6BF7EC()
{
  v1 = v0[OBJC_IVAR____TtC10StickerKit8PuffView_favorsCenter];
  v2 = sub_19A6C091C(0x20000000000001uLL);
  v3 = vcvtd_n_f64_u64(v2, 0x35uLL);
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  [v0 bounds];
  Height = CGRectGetHeight(v12);
  if (Width > Height)
  {
    Height = Width;
  }

  v6 = 0.3;
  if (v1)
  {
    v6 = 0.24;
  }

  v7 = 0.4;
  if (v1)
  {
    v7 = 0.01;
  }

  v8 = 0.7;
  if (v1)
  {
    v8 = 0.25;
  }

  v9 = v3 * v6 + v7;
  if (v2 == 0x20000000000000)
  {
    v9 = v8;
  }

  return v9 * Height;
}

uint64_t sub_19A6BF8C0()
{
  v0 = sub_19A7A9274();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19A7BB2E0;
  sub_19A5F5028(0, &unk_1EAFCC1A0);
  if (qword_1EAFCB740 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EAFDD7E8);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_19A7AB8E4();
  if (qword_1EAFCB748 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EAFDD800);
  v6(v3, v7, v0);
  *(v4 + 40) = sub_19A7AB8E4();
  if (qword_1EAFCB750 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EAFDD818);
  v6(v3, v8, v0);
  *(v4 + 48) = sub_19A7AB8E4();
  if (qword_1EAFCB758 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EAFDD830);
  v6(v3, v9, v0);
  result = sub_19A7AB8E4();
  *(v4 + 56) = result;
  qword_1EAFCE3B0 = v4;
  return result;
}

void sub_19A6BFB50()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PuffView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = sub_19A6BF788();
  v2 = [v1 layer];

  [v0 bounds];
  Width = CGRectGetWidth(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v8);
  if (Width > Height)
  {
    Height = Width;
  }

  [v2 setCornerRadius_];

  v5 = *&v0[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView];
  [v0 center];
  [v5 setCenter_];
}

id sub_19A6BFC8C()
{
  v1 = sub_19A6BF788();
  [v1 setAlpha_];

  v2 = sub_19A6C091C(0x20000000000001uLL);
  v3 = vcvtd_n_f64_u64(v2, 0x35uLL) * 0.24 + 0.01;
  if (v2 == 0x20000000000000)
  {
    v4 = 0.25;
  }

  else
  {
    v4 = v3;
  }

  [v0 bounds];
  Width = CGRectGetWidth(v13);
  [v0 bounds];
  Height = CGRectGetHeight(v14);
  if (Width > Height)
  {
    Height = Width;
  }

  v7 = v4 * Height;
  v8 = __sincos_stret(*&v0[OBJC_IVAR____TtC10StickerKit8PuffView_angle] * 3.14159265 / 180.0);
  components.scale.width = vcvtd_n_f64_u64(sub_19A6C091C(0x20000000000001uLL), 0x35uLL) + 1.0;
  components.scale.height = components.scale.width;
  components.horizontalShear = 0.0;
  components.rotation = 0.0;
  components.translation.dx = v7 * v8.__cosval;
  components.translation.dy = v7 * v8.__sinval;
  CGAffineTransformMakeWithComponents(&v11, &components);
  v9 = *&v0[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView];
  components = v11;
  return [v9 setTransform_];
}

uint64_t sub_19A6BFDD0()
{
  v1 = sub_19A7AA764();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_19A7AA7B4();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A6BFC8C();
  v4 = sub_19A6C091C(0x20000000000001uLL);
  v5 = sub_19A6C091C(0x20000000000001uLL);
  v6 = sub_19A6BF7EC();
  if (v0[OBJC_IVAR____TtC10StickerKit8PuffView_favorsCenter] == 1)
  {
    v7 = *&v0[OBJC_IVAR____TtC10StickerKit8PuffView_angle];
  }

  else
  {
    v8 = sub_19A6C091C(1uLL);
    v7 = *&v0[OBJC_IVAR____TtC10StickerKit8PuffView_angle];
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v7 = fmod(v7 + 180.0, 360.0);
LABEL_5:
  v9 = vcvtd_n_f64_u64(v5, 0x35uLL) * 0.3 + 0.7;
  if (v5 == 0x20000000000000)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v9;
  }

  v11 = vcvtd_n_f64_u64(v4, 0x35uLL) * 0.05 + 0.0;
  if (v4 == 0x20000000000000)
  {
    v12 = 0.05;
  }

  else
  {
    v12 = v11;
  }

  v13 = __sincos_stret(v7 * 3.14159265 / 180.0);
  components.scale = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  components.horizontalShear = 0.0;
  components.rotation = 0.0;
  components.translation.dx = v6 * v13.__cosval;
  components.translation.dy = v6 * v13.__sinval;
  CGAffineTransformMakeWithComponents(&v53, &components);
  v14 = dispatch_group_create();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  *&components.translation.dx = sub_19A6C09A8;
  *&components.translation.dy = v15;
  *&components.scale.width = MEMORY[0x1E69E9820];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_19A6815D4;
  *&components.rotation = &block_descriptor_12;
  v17 = _Block_copy(&components);
  v18 = v0;

  v19 = [v16 initWithDuration:3 curve:v17 animations:0.03];
  _Block_release(v17);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *&components.translation.dx = sub_19A6C09B8;
  *&components.translation.dy = v20;
  *&components.scale.width = MEMORY[0x1E69E9820];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_19A719B64;
  *&components.rotation = &block_descriptor_40;
  v21 = _Block_copy(&components);
  v22 = v14;

  v43 = v19;
  [v19 addCompletion_];
  _Block_release(v21);
  v23 = sub_19A6C091C(0x20000000000001uLL);
  v24 = vcvtd_n_f64_u64(v23, 0x35uLL) * 200.0 + 200.0;
  if (v23 == 0x20000000000000)
  {
    v25 = 400.0;
  }

  else
  {
    v25 = v24;
  }

  v44 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:v25 damping:50.0 initialVelocity:{0.0, 0.0}];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v44 timingParameters:v10];
  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  *(v27 + 24) = v22;
  *&components.translation.dx = sub_19A6C09C0;
  *&components.translation.dy = v27;
  *&components.scale.width = MEMORY[0x1E69E9820];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_19A719B64;
  *&components.rotation = &block_descriptor_46;
  v28 = _Block_copy(&components);
  v29 = v18;
  v30 = v22;

  [v26 addCompletion_];
  _Block_release(v28);
  v31 = swift_allocObject();
  v32 = *&v53.c;
  *(v31 + 24) = *&v53.a;
  *(v31 + 16) = v29;
  *(v31 + 40) = v32;
  *(v31 + 56) = *&v53.tx;
  *&components.translation.dx = sub_19A6C09C8;
  *&components.translation.dy = v31;
  *&components.scale.width = MEMORY[0x1E69E9820];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_19A6815D4;
  *&components.rotation = &block_descriptor_52_0;
  v33 = _Block_copy(&components);
  v34 = v29;

  [v26 addAnimations_];
  _Block_release(v33);
  dispatch_group_enter(v30);
  [v19 startAnimationAfterDelay_];
  dispatch_group_enter(v30);
  [v26 startAnimationAfterDelay_];
  sub_19A5F5028(0, &qword_1ED8B2040);
  v35 = sub_19A7AB794();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&components.translation.dx = sub_19A6C09D4;
  *&components.translation.dy = v36;
  *&components.scale.width = MEMORY[0x1E69E9820];
  *&components.scale.height = 1107296256;
  *&components.horizontalShear = sub_19A6815D4;
  *&components.rotation = &block_descriptor_58;
  v37 = _Block_copy(&components);

  v38 = v45;
  sub_19A7AA784();
  v51 = MEMORY[0x1E69E7CC0];
  sub_19A6A7AC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  v39 = v48;
  v40 = v50;
  sub_19A7ABB54();
  sub_19A7AB6E4();
  _Block_release(v37);

  (*(v49 + 8))(v39, v40);
  (*(v46 + 8))(v38, v47);
}

void sub_19A6C0588()
{
  v2 = sub_19A6BF788();
  v0 = sub_19A6C091C(0x20000000000001uLL);
  v1 = vcvtd_n_f64_u64(v0, 0x35uLL) * 0.3 + 0.4;
  if (v0 == 0x20000000000000)
  {
    v1 = 0.7;
  }

  [v2 setAlpha_];
}

void sub_19A6C061C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_19A6BF788();
  [v4 setAlpha_];

  dispatch_group_leave(a3);
}

void sub_19A6C0670(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = sub_19A6BF788();
  v6 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v6;
  v8 = v3;
  v9 = v4;
  [v5 setTransform_];
}

uint64_t sub_19A6C06D0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC10StickerKit8PuffView_delegate;
    swift_beginAccess();
    sub_19A6C09DC(v1 + v2, v4);
    if (v5)
    {
      sub_19A6C0AB4(v4, v3);
      sub_19A6C0A4C(v4);
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      sub_19A6BF558(v1);

      return __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {

      return sub_19A6C0A4C(v4);
    }
  }

  return result;
}

id sub_19A6C0874(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_19A6C091C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x19A907A50](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x19A907A50](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A6C09DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A6C0A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A6C0AB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_19A6C0B18(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_19A7ABBE4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x19A906130](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_19A5F5028(0, &qword_1EAFCA420);
    v7 = sub_19A7AB924();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_19A6C0C58(char *a1)
{
  if (qword_1EAFCB5C8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAFCE3B0;
  if (qword_1EAFCE3B0 >> 62)
  {
    if (!sub_19A7ABBE4())
    {
      goto LABEL_22;
    }

    result = sub_19A7ABBE4();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    if (!result)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_5:

    v4 = sub_19A6C091C(v3);
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 8 * v4 + 32);
LABEL_9:
        v3 = v5;

        goto LABEL_10;
      }

      __break(1u);
LABEL_22:
      v3 = 0;
      goto LABEL_10;
    }

LABEL_19:
    v5 = MEMORY[0x19A906130]();
    goto LABEL_9;
  }

  v3 = *((qword_1EAFCE3B0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_10:
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAlpha_];
  [a1 addSubview_];
  v7 = *&a1[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView];
  *&a1[OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView] = v6;
  v8 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19A7BB2E0;
  v10 = [v8 centerXAnchor];
  v11 = [a1 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [v8 centerYAnchor];
  v14 = [a1 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v9 + 40) = v15;
  v16 = [v8 widthAnchor];
  [a1 bounds];
  Width = CGRectGetWidth(v27);
  [a1 bounds];
  Height = CGRectGetHeight(v28);
  if (Width > Height)
  {
    Height = Width;
  }

  v19 = [v16 constraintEqualToConstant_];

  *(v9 + 48) = v19;
  v20 = [v8 heightAnchor];
  [a1 bounds];
  v21 = CGRectGetWidth(v29);
  [a1 bounds];
  v22 = CGRectGetHeight(v30);
  if (v21 <= v22)
  {
    v21 = v22;
  }

  v23 = objc_opt_self();
  v24 = [v20 constraintEqualToConstant_];

  *(v9 + 56) = v24;
  sub_19A5F5028(0, &qword_1ED8B2030);
  v25 = sub_19A7AB234();

  [v23 activateConstraints_];

  return v8;
}

unint64_t sub_19A6C1020(unint64_t *a1)
{
  v3 = *a1;
  result = sub_19A6C0B18(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_19A7ABBE4();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1EAFCA420;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_19A7ABBE4())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x19A906130](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_19A5F5028(0, v8);
    v12 = sub_19A7AB924();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x19A906130](v6, v3);
          v14 = MEMORY[0x19A906130](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_19A787AC0(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_19A787AC0(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_19A7ABBE4();
}

uint64_t sub_19A6C12B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_19A7ABBE4();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_19A7ABBE4();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_19A6C13AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE3F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id StickerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_19A6C14A0()
{
  result = sub_19A7AAFE4();
  qword_1EAFDD660 = result;
  return result;
}

uint64_t sub_19A6C14D8()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCE400);
  __swift_project_value_buffer(v0, qword_1EAFCE400);
  return sub_19A7A9374();
}

uint64_t sub_19A6C1610()
{
  v1 = (v0 + OBJC_IVAR___STKStickerView_usageSource);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_19A6C16E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerView_usageSource);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_19A6C1744(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKStickerView_usageSource);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_19A6C1858()
{
  v1 = OBJC_IVAR___STKStickerView_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_19A6C18F0(char a1)
{
  v3 = OBJC_IVAR___STKStickerView_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR___STKStickerView_effectView);
  if (v4)
  {
    v5 = v4[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused];
    v4[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] = a1 & 1;
    if (v5 != (a1 & 1))
    {
      v6 = v4;
      sub_19A77EC24();
    }
  }
}

void (*sub_19A6C1980(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___STKStickerView_isPaused;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_19A6C1A08;
}

void sub_19A6C1A08(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___STKStickerView_effectView);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      v7 = v5[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused];
      v5[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] = v6;
      if (v6 != v7)
      {
        v8 = v5;
        sub_19A77EC24();
      }
    }
  }

  free(v3);
}

id sub_19A6C1AB4()
{
  result = *(v0 + OBJC_IVAR___STKStickerView_dragInteraction);
  if (result)
  {
    return [result isEnabled];
  }

  return result;
}

id (*sub_19A6C1B1C(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR___STKStickerView_dragInteraction;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    LOBYTE(v4) = [v4 isEnabled];
  }

  *(a1 + 16) = v4;
  return sub_19A6C1B7C;
}

void *sub_19A6C1BE4()
{
  v1 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_19A6C1CB0(void *a1)
{
  v3 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_19A6C31C4(a1);
}

void sub_19A6C1D1C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_19A6C31C4(v2);
}

void (*sub_19A6C1D84(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___STKStickerView_effect;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_19A6C1E0C;
}

void sub_19A6C1E0C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_19A6C31C4(v4);
  }

  free(v3);
}

void *sub_19A6C1E84()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerView__image);
  v2 = v1;
  return v1;
}

void sub_19A6C1F10()
{
  if (v0[OBJC_IVAR___STKStickerView_viewType] == 2)
  {
    v1 = *&v0[OBJC_IVAR___STKStickerView_effectView];
    if (v1)
    {
      v2 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer];
      v3 = v1;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v3 layer];
      [v2 convertRect:v12 toLayer:{v5, v7, v9, v11}];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *&v0[OBJC_IVAR___STKStickerView_imageView];
    if (v13 && (v14 = [v13 image]) != 0)
    {
      v15 = v14;
      [v14 size];

      [v0 bounds];
      ITKFitOrFillSizeInRect();
    }

    else
    {
      [v0 bounds];
    }
  }
}

uint64_t sub_19A6C2180()
{
  v1 = (v0 + OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_19A60138C(*v1);
  return v2;
}

id sub_19A6C21DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_19A6C22EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_19A60126C(v6);
}

uint64_t sub_19A6C234C@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A6CF8AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_19A60138C(v4);
}

uint64_t sub_19A6C23EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A6CF874;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_19A60138C(v3);
  return sub_19A60126C(v8);
}

uint64_t sub_19A6C255C()
{
  v1 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6C2614(char a1)
{
  v3 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR___STKStickerView_effectView);
  if (v5)
  {
    *(v5 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = a1 & 1;
  }

  return result;
}

uint64_t sub_19A6C2688(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  v6 = *(v3 + OBJC_IVAR___STKStickerView_effectView);
  if (v6)
  {
    *(v6 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = v2;
  }

  return result;
}

void (*sub_19A6C26FC(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_19A6C2784;
}

void sub_19A6C2784(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___STKStickerView_effectView);
    if (v5)
    {
      *(v5 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = *(v4 + v3[4]);
    }
  }

  free(v3);
}

void *sub_19A6C2840()
{
  v1 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_19A6C28EC(uint64_t a1)
{
  v3 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_19A6C2944(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_19A6C2A64()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___STKStickerView_imageView);
  if (*(v0 + OBJC_IVAR___STKStickerView_viewType) == 2)
  {
    if (v2)
    {
      [v2 setImage_];
    }

    v3 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR___STKStickerView__image);
      v5 = *&v3[OBJC_IVAR____SKIStickerEffectViewInternal_image];
      *&v3[OBJC_IVAR____SKIStickerEffectViewInternal_image] = v4;
      v6 = v4;
      v7 = v3;
      sub_19A77CBE0(v5);

LABEL_10:
    }
  }

  else
  {
    if (v2)
    {
      [v2 setImage_];
    }

    v8 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
    if (v8)
    {
      v5 = *&v8[OBJC_IVAR____SKIStickerEffectViewInternal_image];
      *&v8[OBJC_IVAR____SKIStickerEffectViewInternal_image] = 0;
      v6 = v8;
      sub_19A77CBE0(v5);
      goto LABEL_10;
    }
  }

  if (*(v1 + OBJC_IVAR___STKStickerView__image))
  {
    v9 = *(v1 + OBJC_IVAR___STKStickerView_placeholderView);

    [v9 setHidden_];
  }
}

id StickerView.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for StickerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void StickerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___STKStickerView_placeholderView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR___STKStickerView_effectView] = 0;
  *&v4[OBJC_IVAR___STKStickerView_imageView] = 0;
  *&v4[OBJC_IVAR___STKStickerView_silhouetteImageView] = 0;
  v4[OBJC_IVAR___STKStickerView_didCancelLift] = 0;
  *&v4[OBJC_IVAR___STKStickerView_peelContainer] = 0;
  *&v4[OBJC_IVAR___STKStickerView_liftedView] = 0;
  *&v4[OBJC_IVAR___STKStickerView_liftPreviewContainerView] = 0;
  v10 = &v4[OBJC_IVAR___STKStickerView_usageSource];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR___STKStickerView_isPaused] = 0;
  *&v4[OBJC_IVAR___STKStickerView_effect] = 0;
  *&v4[OBJC_IVAR___STKStickerView_animatedImage] = 0;
  v11 = &v4[OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR___STKStickerView_boundsIncludeStroke] = 1;
  *&v4[OBJC_IVAR___STKStickerView_imageGlyph] = 0;
  *&v4[OBJC_IVAR___STKStickerView__image] = 0;
  v4[OBJC_IVAR___STKStickerView_viewType] = 0;
  v12 = &v4[OBJC_IVAR___STKStickerView_currentFrameIndex];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR___STKStickerView_initialFrameIndexForCurrentDrag];
  *v13 = 0;
  v13[8] = 1;
  *&v4[OBJC_IVAR___STKStickerView_displayLink] = 0;
  v14 = OBJC_IVAR___STKStickerView_animatedPlaybackStartDate;
  v15 = sub_19A7A8EF4();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR___STKStickerView_frameTimeCalculator] = 0;
  *&v4[OBJC_IVAR___STKStickerView_aspectRatio] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR___STKStickerView_dragInteraction] = 0;
  v4[OBJC_IVAR___STKStickerView_isSilhouetteImageVisible] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for StickerView();
  v16 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
  v18 = *&v16[OBJC_IVAR___STKStickerView_dragInteraction];
  *&v16[OBJC_IVAR___STKStickerView_dragInteraction] = v17;
  v19 = v17;

  if (v19)
  {
    [v16 addInteraction_];

    v20 = OBJC_IVAR___STKStickerView_placeholderView;
    v21 = *&v16[OBJC_IVAR___STKStickerView_placeholderView];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 tertiarySystemFillColor];
    [v23 setItk:v24 backgroundColor:?];

    [v16 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

id StickerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t StickerView.init(coder:)(void *a1)
{
  sub_19A6CC468(a1);
  v3 = v2;

  return v3;
}

void sub_19A6C31C4(char *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR___STKStickerEffect_type;
    swift_beginAccess();
    v4 = *&a1[v3];
    v5 = v4 > 5;
    v6 = 0x30202020201uLL >> (8 * v4);
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = OBJC_IVAR___STKStickerView_viewType;
  v9 = *(v1 + OBJC_IVAR___STKStickerView_viewType);
  *(v1 + OBJC_IVAR___STKStickerView_viewType) = v7;
  if (v9 != v7)
  {
    sub_19A6C6C5C(v7);
    v7 = *(v1 + v8);
  }

  switch(v7)
  {
    case 3u:
      v17 = *(v1 + OBJC_IVAR___STKStickerView_imageView);
      if (!v17)
      {
        return;
      }

      v18 = *(v1 + OBJC_IVAR___STKStickerView_animatedImage);
      if (v18)
      {
        v19 = *&v18[OBJC_IVAR___STKAnimatedImage_images];
        if (v19 >> 62)
        {
          if (sub_19A7ABBE4())
          {
LABEL_23:
            if ((v19 & 0xC000000000000001) != 0)
            {
              v21 = v17;
              v24 = v18;

              v18 = MEMORY[0x19A906130](0, v19);
            }

            else
            {
              if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return;
              }

              v20 = *(v19 + 32);
              v21 = v17;
              v18 = v20;
            }

            goto LABEL_33;
          }
        }

        else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v21 = v17;
        v18 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_33:
      [v21 setImage_];

      return;
    case 2u:
      if (a1)
      {
        v11 = *(v1 + OBJC_IVAR___STKStickerView_effectView);
        if (v11)
        {
          v12 = *&v11[OBJC_IVAR____SKIStickerEffectViewInternal_effect];
          *&v11[OBJC_IVAR____SKIStickerEffectViewInternal_effect] = a1;
          v13 = a1;
          v14 = v13;
          if (v12 == a1)
          {
            v22 = v11;
          }

          else
          {
            v15 = v13;
            v16 = v11;
            sub_19A77EC24();
            v16[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] = 0;
            v16[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
            if (!*&v16[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
            {
              [v16 itk_setNeedsLayout];
            }

            sub_19A77D990();
          }

          v23 = v11[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused];
          v11[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] = 0;
          if (v23)
          {
            sub_19A77EC24();
          }
        }
      }

      break;
    case 1u:
      v10 = *(v1 + OBJC_IVAR___STKStickerView_imageView);
      if (v10)
      {
        [v10 setImage_];
      }

      break;
  }
}

void sub_19A6C34E0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for StickerView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___STKStickerView_effectView];
  if (v1)
  {
    CGPointMake(*&v0[OBJC_IVAR___STKStickerView_aspectRatio], 1.0);
    v2 = v1;
    [v0 bounds];
    ITKFitOrFillSizeInRect();
    [v2 setFrame_];
  }

  sub_19A6C3608();
}

void sub_19A6C3608()
{
  v1 = OBJC_IVAR___STKStickerView_placeholderView;
  v2 = *&v0[OBJC_IVAR___STKStickerView_placeholderView];
  [v0 bounds];
  [v2 setFrame_];

  v3 = [*&v0[v1] itk_layer];
  if (v3)
  {
    v4 = v3;
    [v3 setCornerCurve_];
  }

  v5 = [*&v0[v1] itk_layer];
  if (v5)
  {
    v7 = v5;
    [*&v0[v1] frame];
    [v7 setCornerRadius_];
  }
}

uint64_t sub_19A6C3734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_19A7AB354();
  v7[3] = sub_19A7AB344();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_19A6C380C;

  return sub_19A6C3EF0(0, a5, a6, a7);
}

uint64_t sub_19A6C380C()
{

  v1 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6C3948, v1, v0);
}

uint64_t sub_19A6C3948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A6C39E8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_19A7AB394();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_19A7AB354();
  v14 = a3;
  v15 = v5;
  v16 = a1;
  v17 = a2;
  v18 = sub_19A7AB344();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v15;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  sub_19A6816F0(0, 0, v12, a5, v19);
}

uint64_t sub_19A6C3B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_19A7AB354();
  v7[3] = sub_19A7AB344();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_19A6C3C0C;

  return sub_19A6C3EF0(a5, 0, a6, a7);
}

uint64_t sub_19A6C3C0C()
{

  v1 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6CFF6C, v1, v0);
}

void sub_19A6C3D68(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_19A7AB394();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_19A7AB354();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a1;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = sub_19A7AB344();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v18;
  v23[5] = a3;
  v23[6] = a4;
  v23[7] = a5;
  sub_19A6816F0(0, 0, v13, v26, v23);
}

uint64_t sub_19A6C3EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  sub_19A7AB354();
  v5[22] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A6C3F90, v7, v6);
}

id sub_19A6C3F90()
{
  v1 = v0[21];
  sub_19A6C4E6C();
  v2 = OBJC_IVAR___STKStickerView__image;
  v0[25] = OBJC_IVAR___STKStickerView__image;
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_19A6C2A64();
  v4 = *(v1 + OBJC_IVAR___STKStickerView_effectView);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____SKIStickerEffectViewInternal_image];
    *&v4[OBJC_IVAR____SKIStickerEffectViewInternal_image] = 0;
    v6 = v4;
    sub_19A77CBE0(v5);
  }

  v7 = v0[21];
  v8 = v0[19];
  [*(v7 + OBJC_IVAR___STKStickerView_imageView) setImage_];
  v9 = OBJC_IVAR___STKStickerView_imageGlyph;
  v0[26] = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v8;
  v11 = v8;

  v12 = v0[20];
  if (v8)
  {
    v13 = *&v11[OBJC_IVAR___STKImageGlyph_stickerEffectType];
    v14 = v11;
    v15 = sub_19A6BE2A0(v13);
    if (v12 && (v16 = v0[20], v17 = OBJC_IVAR___STKStickerEffect_type, swift_beginAccess(), *&v16[v17]))
    {
      v18 = v16;
      v15 = v0[20];
    }

    else
    {
      v19 = v15;
    }

    v0[27] = v15;
    v20 = OBJC_IVAR___STKStickerEffect_type;
    swift_beginAccess();
    if (*&v15[v20] == 5)
    {
      v21 = v0[21];
      v22 = OBJC_IVAR___STKStickerView_effect;
      swift_beginAccess();
      v23 = *(v21 + v22);
      *(v21 + v22) = v15;
      v24 = v15;

      sub_19A6C31C4(v15);
      v25 = swift_task_alloc();
      v0[28] = v25;
      *v25 = v0;
      v25[1] = sub_19A6C4460;
      v26 = v14;
    }

    else
    {
      v45 = v0[17];
      v46 = v0[18];
      v0[32] = v46;
      v0[33] = v45;
      v47 = v0[19];
      v48 = v45;
      v49 = v46;
      v50 = swift_task_alloc();
      v0[34] = v50;
      *v50 = v0;
      v50[1] = sub_19A6C4A80;
      v26 = v47;
    }

    return sub_19A6CCCA8(v26);
  }

  v28 = v0[17];
  v27 = v0[18];
  v29 = v0[21];
  v30 = OBJC_IVAR___STKStickerView_effect;
  v31 = v12;
  v32 = v27;
  v33 = v28;
  swift_beginAccess();
  v34 = *(v29 + v30);
  *(v29 + v30) = v12;
  v35 = v31;

  sub_19A6C31C4(v12);
  if (!v28)
  {
    v51 = v0[25];
    v52 = v0[21];
    v53 = *(v52 + v51);
    *(v52 + v51) = v27;
    v54 = v32;

    sub_19A6C2A64();
    goto LABEL_22;
  }

  v36 = v0[21];
  v37 = *(v36 + OBJC_IVAR___STKStickerView_animatedImage);
  *(v36 + OBJC_IVAR___STKStickerView_animatedImage) = v28;
  v38 = v33;

  v39 = *&v38[OBJC_IVAR___STKAnimatedImage_images];
  if (v39 >> 62)
  {
    result = sub_19A7ABBE4();
    if (result)
    {
LABEL_13:
      if ((v39 & 0xC000000000000001) != 0)
      {

        v61 = MEMORY[0x19A906130](0, v39);

        result = v61;
      }

      else
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        result = *(v39 + 32);
      }
    }
  }

  else
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }
  }

  v41 = v0[25];
  v42 = v0[21];
  v43 = *(v42 + v41);
  *(v42 + v41) = result;
  v44 = result;

  sub_19A6C2A64();
  sub_19A6C7078();
  sub_19A6C5140();
LABEL_22:
  v55 = *(v0[21] + v0[25]);
  if (v55)
  {
    v56 = v55;

    [v56 size];

    ITKAspectRatio();
    v58 = v57;
  }

  else
  {

    v58 = 1.0;
  }

  v59 = v0[21];

  *(v59 + OBJC_IVAR___STKStickerView_aspectRatio) = v58;
  v60 = v0[1];

  return v60();
}

uint64_t sub_19A6C4460(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19A6C4588, v4, v3);
}

uint64_t sub_19A6C4588()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v5 = *(v3 + v2);
  *(v3 + v2) = v1;
  v6 = v1;

  sub_19A6C2A64();
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_19A6C4654;

  return sub_19A6C5568(v4);
}

uint64_t sub_19A6C4654(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19A6C477C, v4, v3);
}

id sub_19A6C477C()
{
  v1 = v0[31];
  v2 = v0[29];
  if (v1)
  {
    v3 = *(v0[21] + v0[26]);
    if (v3)
    {
      v4 = v0[19];
      type metadata accessor for ImageGlyph(0);
      v5 = v3;
      v6 = sub_19A7AB924();

      v7 = v0[27];
      if (v6)
      {
        v8 = v0[21];
        v9 = OBJC_IVAR___STKStickerView_effect;
        swift_beginAccess();
        v10 = *(v8 + v9);
        *(v8 + v9) = v7;
        v11 = v7;

        sub_19A6C31C4(v7);
        v12 = v0[21];
        v13 = *(v12 + OBJC_IVAR___STKStickerView_animatedImage);
        *(v12 + OBJC_IVAR___STKStickerView_animatedImage) = v1;
        v14 = v1;

        v15 = *&v14[OBJC_IVAR___STKAnimatedImage_images];
        if (v15 >> 62)
        {
          result = sub_19A7ABBE4();
          if (result)
          {
LABEL_6:
            if ((v15 & 0xC000000000000001) != 0)
            {

              v31 = MEMORY[0x19A906130](0, v15);

              result = v31;
            }

            else
            {
              if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              result = *(v15 + 32);
            }
          }
        }

        else
        {
          result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_6;
          }
        }

        v17 = v0[25];
        v18 = v0[21];
        v19 = *(v18 + v17);
        *(v18 + v17) = result;
        v20 = result;

        sub_19A6C2A64();
        sub_19A6C7078();
        sub_19A6C5140();
        v21 = *(v0[21] + v0[25]);
        if (v21)
        {
          v22 = v21;

          [v22 size];

          ITKAspectRatio();
          v24 = v23;
        }

        else
        {

          v24 = 1.0;
        }

        v29 = v0[21];

        *(v29 + OBJC_IVAR___STKStickerView_aspectRatio) = v24;
        goto LABEL_19;
      }
    }

    else
    {
      v27 = v0[27];
      v28 = v0[19];
    }

    v11 = v2;
LABEL_19:

    v30 = v0[1];

    return v30();
  }

  v0[32] = v2;
  v0[33] = 0;
  v25 = v0[19];
  v26 = swift_task_alloc();
  v0[34] = v26;
  *v26 = v0;
  v26[1] = sub_19A6C4A80;

  return sub_19A6CCCA8(v25);
}

uint64_t sub_19A6C4A80(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19A6C4BA8, v4, v3);
}

id sub_19A6C4BA8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(*(v0 + 168) + *(v0 + 208));
  if (v3)
  {
    v4 = *(v0 + 152);
    type metadata accessor for ImageGlyph(0);
    v5 = v3;
    v6 = sub_19A7AB924();

    v7 = *(v0 + 216);
    if (v6)
    {
      v8 = *(v0 + 168);
      v9 = OBJC_IVAR___STKStickerView_effect;
      swift_beginAccess();
      v10 = *(v8 + v9);
      *(v8 + v9) = v7;
      v11 = v7;

      sub_19A6C31C4(v7);
      if (!v2)
      {
        v23 = *(v0 + 200);
        v24 = *(v0 + 168);
        v25 = *(v24 + v23);
        *(v24 + v23) = v1;
        v26 = v1;

        sub_19A6C2A64();
        goto LABEL_14;
      }

      v12 = *(v0 + 168);
      v13 = *(v12 + OBJC_IVAR___STKStickerView_animatedImage);
      *(v12 + OBJC_IVAR___STKStickerView_animatedImage) = v2;
      v14 = v2;

      v15 = *&v14[OBJC_IVAR___STKAnimatedImage_images];
      if (v15 >> 62)
      {
        result = sub_19A7ABBE4();
        if (result)
        {
LABEL_6:
          if ((v15 & 0xC000000000000001) != 0)
          {

            v33 = MEMORY[0x19A906130](0, v15);

            result = v33;
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            result = *(v15 + 32);
          }
        }
      }

      else
      {
        result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_6;
        }
      }

      v17 = *(v0 + 200);
      v18 = *(v0 + 168);
      v19 = *(v18 + v17);
      *(v18 + v17) = result;
      v20 = result;

      sub_19A6C2A64();
      sub_19A6C7078();
      sub_19A6C5140();
LABEL_14:
      v27 = *(*(v0 + 168) + *(v0 + 200));
      if (v27)
      {
        v28 = v27;

        [v28 size];

        ITKAspectRatio();
        v30 = v29;
      }

      else
      {

        v30 = 1.0;
      }

      v31 = *(v0 + 168);

      *(v31 + OBJC_IVAR___STKStickerView_aspectRatio) = v30;
      goto LABEL_18;
    }
  }

  else
  {
    v21 = *(v0 + 216);
    v22 = *(v0 + 152);
  }

  v11 = v1;
LABEL_18:

  v32 = *(v0 + 8);

  return v32();
}

void sub_19A6C4E6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR___STKStickerView_displayLink;
  if (!*(v1 + OBJC_IVAR___STKStickerView_displayLink))
  {
    goto LABEL_12;
  }

  v6 = 7104878;
  v7 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    sub_19A60F0CC(v8 + OBJC_IVAR___STKImageGlyph_stickerUUID, v4, &qword_1EAFCD800);
    v9 = sub_19A7A8F64();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9) != 1)
    {
      v6 = sub_19A7A8F14();
      v11 = v12;
      (*(v10 + 8))(v4, v9);
      goto LABEL_7;
    }

    sub_19A5F2B54(v4, &qword_1EAFCD800);
  }

  v11 = 0xE300000000000000;
LABEL_7:
  if (qword_1EAFCB5D8 != -1)
  {
    swift_once();
  }

  v13 = sub_19A7A9384();
  __swift_project_value_buffer(v13, qword_1EAFCE400);

  v14 = sub_19A7A9364();
  v15 = sub_19A7AB5A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315138;
    v18 = sub_19A62540C(v6, v11, &v20);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_19A5EE000, v14, v15, "Invalidating Display Link for stickerUUID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x19A907A30](v17, -1, -1);
    MEMORY[0x19A907A30](v16, -1, -1);
  }

  else
  {
  }

LABEL_12:
  [*(v1 + v5) invalidate];
  v19 = *(v1 + v5);
  *(v1 + v5) = 0;
}

void sub_19A6C5140()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = OBJC_IVAR___STKStickerView_isPaused;
  swift_beginAccess();
  if ((*(v0 + v4) & 1) == 0)
  {
    v5 = *(v0 + OBJC_IVAR___STKStickerView_animatedImage);
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR___STKAnimatedImage_images];
      if (v6 >> 62)
      {
        if (sub_19A7ABBE4() >= 2)
        {
          goto LABEL_5;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
LABEL_5:
        v7 = v5;
        sub_19A6CBC28();
        sub_19A7A8ED4();
        v8 = sub_19A7A8EF4();
        (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
        v9 = OBJC_IVAR___STKStickerView_animatedPlaybackStartDate;
        swift_beginAccess();
        sub_19A66C134(v3, v0 + v9);
        swift_endAccess();
        sub_19A6CC0CC();

        return;
      }
    }
  }

  v10 = *(v0 + OBJC_IVAR___STKStickerView_displayLink);
  if (v10)
  {
    [v10 setPaused_];
  }
}

uint64_t sub_19A6C52DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_19A7AAC14();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_19A7AAA14();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6C53F8, 0, 0);
}

uint64_t sub_19A6C53F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(*(v0 + 64) + 104))(*(v0 + 72), *MEMORY[0x1E69D4638], *(v0 + 56));
  sub_19A7AAAC4();
  swift_allocObject();
  sub_19A7AAA04();
  (*(v3 + 104))(v1, *MEMORY[0x1E69D4728], v2);
  v4 = sub_19A7AAA54();
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  **(v0 + 16) = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19A6C5568(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v2[7] = swift_task_alloc();
  v3 = sub_19A7A8F64();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_19A7AB354();
  v2[11] = sub_19A7AB344();
  v5 = sub_19A7AB2E4();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A6C5694, v5, v4);
}

uint64_t sub_19A6C5694()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_19A60F0CC(v0[5] + OBJC_IVAR___STKImageGlyph_stickerUUID, v3, &qword_1EAFCD800);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];

    sub_19A5F2B54(v4, &qword_1EAFCD800);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_19A6C5810;
    v8 = v0[10];

    return sub_19A6CC7F8(v8);
  }
}

uint64_t sub_19A6C5810(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_19A6C5938, v4, v3);
}

uint64_t sub_19A6C5938()
{
  if (v0[15])
  {
    v1 = v0[6];
    v2 = OBJC_IVAR___STKStickerView_imageGlyph;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v0[16] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_19A6C5A78;

    return sub_19A68C348(v1, v3);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_19A6C5A78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 104);
  v5 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_19A6C5BC0, v5, v4);
}

uint64_t sub_19A6C5BC0()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[18];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_19A6C5DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_19A7AB354();
  v3[5] = sub_19A7AB344();
  v5 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6C5E8C, v5, v4);
}

uint64_t sub_19A6C5E8C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_19A6C5F50;
  v7 = v0[2];

  return sub_19A6C5568(v7);
}

uint64_t sub_19A6C5F50(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

void sub_19A6C60B4()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
  if (v1)
  {
    v2 = v1;
    *&v2[OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime] = CACurrentMediaTime();
    sub_19A77EC24();
  }
}

id sub_19A6C61B0(char a1)
{
  if ((*(v1 + OBJC_IVAR___STKStickerView_viewType) | 2) == 3)
  {
    return [*(v1 + OBJC_IVAR___STKStickerView_imageView) image];
  }

  v3 = *(v1 + OBJC_IVAR___STKStickerView_effectView);
  if (!v3 || !*(v3 + OBJC_IVAR____SKIStickerEffectViewInternal_currentDrawable))
  {
    if (qword_1EAFCB5D8 != -1)
    {
      swift_once();
    }

    v16 = sub_19A7A9384();
    __swift_project_value_buffer(v16, qword_1EAFCE400);
    v17 = sub_19A7A9364();
    v18 = sub_19A7AB584();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_19A5EE000, v17, v18, "no current drawable for creating image.", v19, 2u);
      MEMORY[0x19A907A30](v19, -1, -1);
    }

    return 0;
  }

  v5 = [swift_unknownObjectRetain() texture];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE4C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C30;
  v7 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  v8 = v7;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v10;
  *(inited + 40) = DeviceRGB;
  sub_19A69D590(inited);
  swift_setDeallocating();
  sub_19A5F2B54(inited + 32, &unk_1EAFCE4D0);
  v11 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_19A6CFC90(&qword_1EAFCBCA0, type metadata accessor for CIImageOption);
  v12 = sub_19A7AAF34();

  v13 = [v11 initWithMTLTexture:v5 options:v12];
  swift_unknownObjectRelease();

  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v13)
  {
    v14 = [v13 imageByApplyingCGOrientation_];

    v13 = v14;
LABEL_8:
    if (v13)
    {
      v15 = [objc_opt_self() itk:v13 imageWithCIImage:?];
      swift_unknownObjectRelease();

      return v15;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_19A6C6510()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StickerView();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
  }

  else if (*&v0[OBJC_IVAR___STKStickerView_displayLink])
  {
    sub_19A6C4E6C();
    return;
  }

  v2 = [v0 window];
  if (v2)
  {

    if (v0[OBJC_IVAR___STKStickerView_viewType] == 3)
    {
      v3 = OBJC_IVAR___STKStickerView_isPaused;
      swift_beginAccess();
      if ((v0[v3] & 1) == 0)
      {
        sub_19A6C5140();
      }
    }
  }
}

void sub_19A6C663C()
{
  v1 = [v0 window];
  if (v1)
  {

LABEL_3:
    v2 = [v0 window];
    if (v2)
    {

      if (v0[OBJC_IVAR___STKStickerView_viewType] == 3)
      {
        v3 = OBJC_IVAR___STKStickerView_isPaused;
        swift_beginAccess();
        if ((v0[v3] & 1) == 0)
        {
          sub_19A6C5140();
        }
      }
    }

    return;
  }

  if (!*&v0[OBJC_IVAR___STKStickerView_displayLink])
  {
    goto LABEL_3;
  }

  sub_19A6C4E6C();
}

void sub_19A6C6708()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for StickerView();
  objc_msgSendSuper2(&v1, sel_removeFromSuperview);
  if (*&v0[OBJC_IVAR___STKStickerView_displayLink])
  {
    sub_19A6C4E6C();
  }
}

id sub_19A6C6810()
{
  v1 = v0;
  sub_19A6C4E6C();
  sub_19A6C697C();
  v2 = *(v0 + OBJC_IVAR___STKStickerView_animatedImage);
  *(v0 + OBJC_IVAR___STKStickerView_animatedImage) = 0;

  v3 = *(v0 + OBJC_IVAR___STKStickerView_frameTimeCalculator);
  *(v0 + OBJC_IVAR___STKStickerView_frameTimeCalculator) = 0;

  v4 = *(v0 + OBJC_IVAR___STKStickerView__image);
  *(v0 + OBJC_IVAR___STKStickerView__image) = 0;

  sub_19A6C2A64();
  v5 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____SKIStickerEffectViewInternal_image];
    *&v5[OBJC_IVAR____SKIStickerEffectViewInternal_image] = 0;
    v7 = v5;
    sub_19A77CBE0(v6);
  }

  v8 = *(v1 + OBJC_IVAR___STKStickerView_placeholderView);

  return [v8 setHidden_];
}

id sub_19A6C697C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___STKStickerView__image);
  *(v0 + OBJC_IVAR___STKStickerView__image) = 0;

  sub_19A6C2A64();
  [*(v0 + OBJC_IVAR___STKStickerView_imageView) setImage_];
  v3 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____SKIStickerEffectViewInternal_image];
    *&v3[OBJC_IVAR____SKIStickerEffectViewInternal_image] = 0;
    v5 = v3;
    sub_19A77CBE0(v4);
  }

  v6 = *(v1 + OBJC_IVAR___STKStickerView_silhouetteImageView);

  return [v6 setImage_];
}

void sub_19A6C6A38()
{
  if (v0[OBJC_IVAR___STKStickerView_viewType] != 2)
  {
    v1 = *&v0[OBJC_IVAR___STKStickerView_imageView];
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v1 = *&v0[OBJC_IVAR___STKStickerView_effectView];
  if (v1)
  {
LABEL_5:
    v2 = v1;
  }

LABEL_6:
  if (v0[OBJC_IVAR___STKStickerView_isSilhouetteImageVisible] == 1)
  {
    v3 = *&v0[OBJC_IVAR___STKStickerView__image];
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
      v13 = v3;
      v5 = [v4 init];
      v6 = *&v0[OBJC_IVAR___STKStickerView_silhouetteImageView];
      *&v0[OBJC_IVAR___STKStickerView_silhouetteImageView] = v5;
      v7 = v5;

      if (v7)
      {
        if (v1)
        {
          [v7 setContentMode_];
          v8 = [objc_opt_self() tertiaryLabelColor];
          v9 = [v13 _flatImageWithColor_];

          [v7 setImage_];
          [v0 addSubview_];
          [v7 itk_configureToFillSuperView];
          [v1 setHidden_];
        }

        else
        {
        }

        v10 = v13;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR___STKStickerView_silhouetteImageView];
    if (v11)
    {
      if (!v1)
      {
        return;
      }

      v12 = v11;
      [v1 setHidden_];
      [v12 removeFromSuperview];
    }
  }

  v10 = v1;
LABEL_17:
}

void sub_19A6C6C5C(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (a1 != 2)
  {
LABEL_6:
    v2 = OBJC_IVAR___STKStickerView_effectView;
    goto LABEL_7;
  }

  v2 = OBJC_IVAR___STKStickerView_imageView;
LABEL_7:
  v3 = &v1[v2];
  v4 = *&v1[v2];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;

LABEL_11:
  if (v1[OBJC_IVAR___STKStickerView_viewType] > 1u)
  {
    if (v1[OBJC_IVAR___STKStickerView_viewType] == 2)
    {

      sub_19A6C6E74();
      return;
    }
  }

  else if (!v1[OBJC_IVAR___STKStickerView_viewType])
  {

    sub_19A6C697C();
    return;
  }

  v6 = OBJC_IVAR___STKStickerView_imageView;
  v7 = *&v1[OBJC_IVAR___STKStickerView_imageView];
  if (v7)
  {
    v8 = *&v1[OBJC_IVAR___STKStickerView_imageView];
    goto LABEL_24;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  if (v9)
  {
    v10 = v9;
    [v9 setContentMode_];
    v11 = *&v1[v6];
    *&v1[v6] = v10;
    v8 = v10;

    v7 = 0;
LABEL_24:
    v12 = v7;
    v15 = v8;
    [v1 bounds];
    [v15 setFrame_];
    v13 = sub_19A7AB7E4();
    v14 = sub_19A7AB7F4();
    if (v13)
    {
      if ((v14 & ~v13) == 0)
      {
LABEL_33:
        [v15 setAutoresizingMask_];

        [v1 addSubview_];

        return;
      }
    }

    else if (!v14)
    {
      v13 = 0;
      goto LABEL_33;
    }

    v13 |= v14;
    goto LABEL_33;
  }

  *&v1[v6] = 0;

  MEMORY[0x1EEE66BB8]();
}

void sub_19A6C6E74()
{
  v1 = v0;
  v2 = OBJC_IVAR___STKStickerView_effectView;
  v3 = *&v0[OBJC_IVAR___STKStickerView_effectView];
  if (v3)
  {
    goto LABEL_18;
  }

  v4 = MTLCreateSystemDefaultDevice();
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for StickerEffectView());
  v7 = sub_19A77CFB4(v5);
  v8 = *&v1[v2];
  *&v1[v2] = v7;
  v9 = v7;

  v10 = *&v1[v2];
  if (v10)
  {
    v11 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
    swift_beginAccess();
    *(v10 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = v1[v11];
  }

  if (v7)
  {
    v12 = OBJC_IVAR___STKStickerView_imageGlyph;
    swift_beginAccess();
    v13 = *&v1[v12];
    if (v13 && (v14 = v13, sub_19A7675C8(), v16 = v15, v18 = v17, v14, v18))
    {
      if (v16 == 0xD000000000000028 && v18 == 0x800000019A7C99B0)
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_19A7AC064();
      }
    }

    else
    {
      v20 = 0;
    }

    v9[OBJC_IVAR____SKIStickerEffectViewInternal_isTargetDebugStickerView] = v20 & 1;
  }

  v3 = *&v1[v2];
  if (v3)
  {
LABEL_18:
    v21 = v3;
    [v1 bounds];
    [v21 setFrame_];
    v22 = sub_19A7AB7E4();
    v23 = sub_19A7AB7F4();
    if (v22)
    {
      if ((v23 & ~v22) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (!v23)
    {
      v22 = 0;
      goto LABEL_24;
    }

    v22 |= v23;
LABEL_24:
    [v21 setAutoresizingMask_];
    [v1 addSubview_];
  }
}

void sub_19A6C7078()
{
  if (*(v0 + OBJC_IVAR___STKStickerView_animatedImage))
  {
    v1 = objc_allocWithZone(STKFrameTimeCalculator);
    sub_19A5F5028(0, &unk_1EAFCC1A0);

    v2 = sub_19A7AB234();

    sub_19A5F5028(0, &qword_1ED8B1FE0);
    v3 = sub_19A7AB234();

    v4 = [v1 initWithImages:v2 durations:v3];

    v5 = *(v0 + OBJC_IVAR___STKStickerView_frameTimeCalculator);
    *(v0 + OBJC_IVAR___STKStickerView_frameTimeCalculator) = v4;
  }
}

uint64_t sub_19A6C724C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 24) = a1;
  *(v9 + 16) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19A6C7278, 0, 0);
}

uint64_t sub_19A6C7278()
{
  v1 = sub_19A7AAEF4();
  v3 = v2;
  *(v0 + 8) = v1;
  *(v0 + 9) = v2;
  v4 = swift_task_alloc();
  *(v0 + 10) = v4;
  *v4 = v0;
  v4[1] = sub_19A6C7338;
  v5 = *(v0 + 4);
  v6 = v0[3];

  return sub_19A690B38(v5, v1, v3, v6);
}

uint64_t sub_19A6C7338(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  sub_19A612F00(v5, v4);

  return MEMORY[0x1EEE6DFA0](sub_19A6C7470, 0, 0);
}

uint64_t sub_19A6C7470()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  (*(v0 + 48))(v2, v1);
  sub_19A612F00(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A6C74F4(void *a1)
{
  v2 = v1;
  v76 = sub_19A7A9304();
  v4 = *(v76 - 8);
  v5 = MEMORY[0x1EEE9AC00](v76);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v71 - v7;
  v79 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v8 = &unk_19A7B6000;
  if ((sub_19A7AADB4() & 1) == 0 && (sub_19A7AAEB4() - 3) >= 2)
  {
    sub_19A5F5028(0, &unk_1EAFCC160);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    v87 = sub_19A6CFA20;
    v88 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_19A611A64;
    v86 = &block_descriptor_162;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v79 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v12];
    _Block_release(v12);
  }

  v14 = [v2 window];
  if (v14)
  {
    v15 = v14;
    [v14 itk_backingScaleFactor];
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  sub_19A7AAD94();

  aBlock = sub_19A69BA80(v18);
  sub_19A68261C(&aBlock);

  v19 = aBlock;
  v78 = v2;
  if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
  {
    v20 = sub_19A7ABBE4();
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_35:

    v66 = *MEMORY[0x1E69DEAB8];
    v87 = sub_19A6CFF64;
    v88 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v84 = v8[387];
    v85 = sub_19A611178;
    v86 = &block_descriptor_169;
    v67 = _Block_copy(&aBlock);
    v68 = v66;
    v69 = v79;
    [v79 registerDataRepresentationForTypeIdentifier:v68 visibility:0 loadHandler:v67];
    _Block_release(v67);

    return v69;
  }

  v20 = *(aBlock + 16);
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_10:
  if (v20 >= 1)
  {
    v21 = 0;
    v80 = 0x800000019A7C99F0;
    v73 = (v4 + 8);
    v77 = &v85;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x19A906130](v21, v19);
      }

      else
      {
        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = sub_19A7AACF4();
      v26 = v25;
      if (v24 == sub_19A7AACA4() && v26 == v27)
      {
      }

      else
      {
        v28 = sub_19A7AC064();

        if (v28 & 1) != 0 || (aBlock = sub_19A7AACF4(), v84 = v29, v81 = 0xD000000000000025, v82 = v80, sub_19A639920(), v30 = sub_19A7ABB14(), , (v30))
        {
        }

        else
        {
          v31 = sub_19A7AACF4();
          v33 = v32;
          if (v31 == sub_19A7AAC84() && v33 == v34)
          {
          }

          else
          {
            v35 = sub_19A7AC064();

            if ((v35 & 1) == 0)
            {
              v36 = sub_19A7AACF4();
              v38 = v37;
              if (v36 == sub_19A7AACB4() && v38 == v39)
              {
              }

              else
              {
                v40 = sub_19A7AC064();

                if ((v40 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              v41 = v75;
              sub_19A7AAC74();
              v42 = v74;
              sub_19A7A92A4();
              v43 = sub_19A7A9294();
              v72 = a1;
              v44 = *v73;
              v45 = v42;
              v46 = v76;
              (*v73)(v45, v76);
              v47 = v41;
              v8 = &unk_19A7B6000;
              v44(v47, v46);
              a1 = v72;
              if ((v43 & 1) == 0)
              {
                v48 = v75;
                sub_19A7AAC74();
                v49 = v74;
                sub_19A7A92B4();
                v50 = sub_19A7A9294();
                v51 = v49;
                v52 = v76;
                v44(v51, v76);
                v53 = v48;
                v8 = &unk_19A7B6000;
                v44(v53, v52);
                a1 = v72;
                if ((v50 & 1) == 0)
                {
LABEL_33:
                  v60 = v75;
                  sub_19A7AAC74();
                  v61 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v62 = swift_allocObject();
                  v62[2] = v61;
                  v62[3] = a1;
                  v62[4] = v23;
                  v62[5] = 0x4064000000000000;
                  v63 = a1;
                  v64 = v23;

                  sub_19A7AB5D4();

                  v65 = v60;
                  v8 = &unk_19A7B6000;
                  (*v73)(v65, v76);

                  goto LABEL_13;
                }
              }
            }
          }

          sub_19A5F5028(0, &unk_1EAFCC1A0);
          v54 = swift_getObjCClassFromMetadata();
          v55 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v56 = swift_allocObject();
          *(v56 + 2) = v55;
          *(v56 + 3) = a1;
          *(v56 + 4) = v23;
          v56[5] = 160.0;
          v56[6] = v17;
          v87 = sub_19A6CFA8C;
          v88 = v56;
          aBlock = MEMORY[0x1E69E9820];
          v84 = 1107296256;
          v85 = sub_19A611A64;
          v86 = &block_descriptor_176;
          v57 = _Block_copy(&aBlock);
          v58 = a1;
          v59 = v23;

          [v79 registerObjectOfClass:v54 visibility:0 loadHandler:v57];

          _Block_release(v57);
        }
      }

LABEL_13:
      if (v20 == ++v21)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_19A6C7D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v11;
  v14 = a4;

  sub_19A6816F0(0, 0, v9, &unk_19A7BD840, v13);

  return 0;
}

uint64_t sub_19A6C7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_19A6C7ECC, 0, 0);
}

uint64_t sub_19A6C7ECC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE518);
  *v3 = v0;
  v3[1] = sub_19A6C7FD4;

  return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD000000000000021, 0x800000019A7C9A20, sub_19A6CFC88, v2, v4);
}

uint64_t sub_19A6C7FD4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_19A6C83BC;
  }

  else
  {

    v2 = sub_19A6C80F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A6C80F0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = [*(v0 + 40) adaptiveImageGlyph];

    if (v2)
    {
      v3 = *(v0 + 56);
      v4 = v2;
      sub_19A69C09C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for Key(0);
      sub_19A6CFC90(&qword_1EAFCA4B0, type metadata accessor for Key);
      v5 = sub_19A7AAF34();

      v6 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v4 attributes:v5];

      v7 = v6;
      v3(v6, 0);

LABEL_9:
      v15 = *(v0 + 8);

      return v15();
    }
  }

  v8 = sub_19A7AA984();
  sub_19A6CFC90(&unk_1EAFCE520, MEMORY[0x1E69D4620]);
  v9 = swift_allocError();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69D4618], v8);
  swift_willThrow();
  *(v0 + 104) = v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = *(v0 + 104);
    (*(v0 + 56))(0, 0);

    goto LABEL_9;
  }

  sub_19A7AB354();
  *(v0 + 112) = sub_19A7AB344();
  v13 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6C84D4, v13, v12);
}

uint64_t sub_19A6C83BC()
{

  *(v0 + 104) = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_19A7AB354();
    *(v0 + 112) = sub_19A7AB344();
    v3 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A6C84D4, v3, v2);
  }

  else
  {
    v4 = *(v0 + 104);
    (*(v0 + 56))(0, 0);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_19A6C84D4()
{

  if (qword_1EAFCB5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_1EAFCE400);

  return MEMORY[0x1EEE6DFA0](sub_19A6C8584, 0, 0);
}

uint64_t sub_19A6C8584()
{
  v1 = *(v0 + 104);
  v2 = v1;
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB584();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Failed to create adaptive image glyph: %@", v6, 0xCu);
    sub_19A5F2B54(v7, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v7, -1, -1);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v10 = *(v0 + 104);
  (*(v0 + 56))(0, 0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19A6C86EC(void (*a1)(void, void), uint64_t a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = sub_19A782734();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a1;
    *(v19 + 32) = a2;
    v20 = sub_19A7AB394();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = a7;
    *(v21 + 40) = a3 * a4;
    *(v21 + 48) = v18;
    *(v21 + 56) = a6;
    *(v21 + 64) = sub_19A6CFF38;
    *(v21 + 72) = v19;
    v22 = v18;

    v23 = a7;
    v24 = a6;

    sub_19A6816F0(0, 0, v15, &unk_19A7BD828, v21);
  }

  else
  {
    a1(0, 0);
  }

  return 0;
}

uint64_t sub_19A6C88DC(void (*a1)(void, unint64_t, void), uint64_t a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_19A782734();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = sub_19A7AB394();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = a6;
    *(v19 + 40) = a3;
    *(v19 + 48) = v16;
    *(v19 + 56) = a5;
    *(v19 + 64) = sub_19A6CFB88;
    *(v19 + 72) = v17;
    v20 = v16;

    v21 = a6;
    v22 = a5;

    sub_19A6816F0(0, 0, v13, &unk_19A7BD830, v19);
  }

  else
  {
    a1(0, 0xF000000000000000, 0);
  }

  return 0;
}

uint64_t sub_19A6C8AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_19A7AB394();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  sub_19A6816F0(0, 0, v6, &unk_19A7BD870, v10);

  return 0;
}

uint64_t sub_19A6C8C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_19A7AAC14();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6C8CF8, 0, 0);
}

uint64_t sub_19A6C8CF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    *(v0 + 128) = sub_19A7AB354();
    *(v0 + 136) = sub_19A7AB344();
    v3 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A6C8E00, v3, v2);
  }

  else
  {
    (*(v0 + 80))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_19A6C8E00()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 144) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A6C8E98, 0, 0);
}

uint64_t sub_19A6C8E98()
{
  if (v0[18])
  {
    (*(v0[13] + 104))(v0[14], *MEMORY[0x1E69D4728], v0[12]);
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_19A6C8FBC;
    v2 = v0[14];

    return sub_19A7697C0(v2);
  }

  else
  {
    v0[24] = sub_19A7AB344();
    v5 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A6C93C4, v5, v4);
  }
}

uint64_t sub_19A6C8FBC(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_19A6C9134, 0, 0);
}

uint64_t sub_19A6C9134()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[22] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE518);
    *v3 = v0;
    v3[1] = sub_19A6C92A8;

    return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000021, 0x800000019A7C9A20, sub_19A6CFF68, v2, v4);
  }

  else
  {
    v0[24] = sub_19A7AB344();
    v6 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A6C93C4, v6, v5);
  }
}

uint64_t sub_19A6C92A8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_19A6C9810;
  }

  else
  {

    v2 = sub_19A6C9568;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A6C93C4()
{

  if (qword_1EAFCB5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_1EAFCE400);

  return MEMORY[0x1EEE6DFA0](sub_19A6C9474, 0, 0);
}

uint64_t sub_19A6C9474()
{
  v1 = sub_19A7A9364();
  v2 = sub_19A7AB584();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19A5EE000, v1, v2, "Failed to create sticker", v3, 2u);
    MEMORY[0x19A907A30](v3, -1, -1);
  }

  v4 = v0[15];
  v5 = v0[10];

  v5(0, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19A6C9568()
{
  v1 = *(v0 + 64);
  if (v1 && (v2 = [*(v0 + 64) adaptiveImageGlyph], v1, v2))
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = v2;
    sub_19A69C09C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Key(0);
    sub_19A6CFC90(&qword_1EAFCA4B0, type metadata accessor for Key);
    v7 = sub_19A7AAF34();

    v8 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v6 attributes:v7];

    v9 = v8;
    v5(v8, 0);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = sub_19A7AA984();
    sub_19A6CFC90(&unk_1EAFCE520, MEMORY[0x1E69D4620]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69D4618], v12);
    swift_willThrow();
    *(v0 + 208) = v13;

    *(v0 + 216) = sub_19A7AB344();
    v16 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A6C98B4, v16, v15);
  }
}

uint64_t sub_19A6C9810()
{

  *(v0 + 208) = *(v0 + 184);

  *(v0 + 216) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6C98B4, v2, v1);
}

uint64_t sub_19A6C98B4()
{

  if (qword_1EAFCB5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_1EAFCE400);

  return MEMORY[0x1EEE6DFA0](sub_19A6C9964, 0, 0);
}

uint64_t sub_19A6C9964()
{
  v1 = v0[26];
  v2 = v1;
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB584();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Failed to create adaptive image glyph: %@", v6, 0xCu);
    sub_19A5F2B54(v7, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v7, -1, -1);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v10 = v0[26];
  v11 = v0[15];
  v12 = v0[10];

  v12(0, 0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_19A6C9ADC(void (*a1)(void, void), uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_19A7AB394();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v14;
    *(v15 + 40) = a3;
    *(v15 + 48) = a4;
    *(v15 + 56) = a1;
    *(v15 + 64) = a2;

    sub_19A6816F0(0, 0, v10, &unk_19A7BD858, v15);
  }

  else
  {
    a1(0, 0);
  }

  return 0;
}

uint64_t sub_19A6C9C74(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
  *(v8 + 112) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  *(v8 + 152) = swift_task_alloc();
  v9 = sub_19A7AAC14();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6C9D74, 0, 0);
}

uint64_t sub_19A6C9D74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v0[24] = sub_19A7AB354();
    v0[25] = sub_19A7AB344();
    v3 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A6C9E78, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_19A6C9E78()
{
  v1 = *(v0 + 184);

  v2 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v3 = *&v1[v2];
  *(v0 + 208) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A6C9F10, 0, 0);
}

uint64_t sub_19A6C9F10()
{
  if (v0[26])
  {
    (*(v0[21] + 104))(v0[22], *MEMORY[0x1E69D4728], v0[20]);
    v1 = swift_task_alloc();
    v0[27] = v1;
    *v1 = v0;
    v1[1] = sub_19A6CA010;
    v2 = v0[22];

    return sub_19A7697C0(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_19A6CA010(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  *(*v1 + 224) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_19A6CA188, 0, 0);
}

uint64_t sub_19A6CA188()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = sub_19A7AADE4();
    *(v0 + 232) = 0;
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = *(v0 + 144);
        v5 = *(v0 + 152);
        v7 = *(v0 + 136);
        v9 = *(v0 + 120);
        v8 = *(v0 + 128);

        v10 = sub_19A782734();
        v11 = swift_allocObject();
        *(v11 + 16) = v8;
        *(v11 + 24) = v7;
        *(v11 + 32) = v6;
        v12 = sub_19A7AB394();
        (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = v3;
        *(v13 + 40) = v8 * v9;
        *(v13 + 48) = v10;
        *(v13 + 56) = v1;
        *(v13 + 64) = sub_19A6CFDC8;
        *(v13 + 72) = v11;
        v14 = v10;

        sub_19A6816F0(0, 0, v5, &unk_19A7BD860, v13);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_19A6CA41C()
{
  v1 = *(v0 + 232);
  v2 = v1;
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB584();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_19A5EE000, v3, v4, "error registering UIImage for NSItemProvider: %@", v6, 0xCu);
    sub_19A5F2B54(v7, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v7, -1, -1);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v10 = *(v0 + 232);
  (*(v0 + 136))(0, 0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19A6CA594()
{

  if (qword_1EAFCB5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1EAFCE400);

  return MEMORY[0x1EEE6DFA0](sub_19A6CA41C, 0, 0);
}

uint64_t sub_19A6CA644(uint64_t a1, unint64_t a2, uint64_t (*a3)(id, void), double a4)
{
  if (a2 >> 60 == 15)
  {
    return a3(0, 0);
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_19A612F68(a1, a2);
  sub_19A612F68(a1, a2);
  v9 = sub_19A7A8E14();
  v10 = [v8 initWithData:v9 scale:a4];

  sub_19A612F00(a1, a2);
  if (!v10)
  {
    sub_19A612F00(a1, a2);
    return a3(0, 0);
  }

  v11 = v10;
  a3(v10, 0);

  return sub_19A612F00(a1, a2);
}

id sub_19A6CA76C()
{
  v1 = sub_19A7AAC14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    if (sub_19A7669B0() == 1)
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E69D4708], v1);
      v8 = sub_19A768F20(v4);
      (*(v2 + 8))(v4, v1);
      if (v8)
      {
        v9 = sub_19A6C74F4(v8);

        return v9;
      }
    }

    else if (sub_19A7669B0() == 2 && *&v7[OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8] && *&v7[OBJC_IVAR___STKImageGlyph_poseIdentifier + 8])
    {

      v11 = sub_19A6CDBE8();

      return v11;
    }
  }

  return [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
}

void StickerView.dragInteraction(_:sessionWillBegin:)()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1EAFCAFF0 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 postNotificationName:qword_1EAFDD660 object:v0];
}

void sub_19A6CAACC()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___STKStickerView_effectView);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___STKStickerView_imageView);
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  [v1 frame];
  ITKCenterOfRect();
  [v1 convertPoint:0 toView:?];
  [v1 bounds];

  ITKRectWithCenterAndSize();
}

uint64_t sub_19A6CABB0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v24 - v18;
  v20 = sub_19A7AB394();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v21;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  *(v22 + 56) = a5;
  *(v22 + 64) = a6;
  *(v22 + 72) = a8;
  *(v22 + 80) = a9 & 1;
  *(v22 + 88) = a1;
  *(v22 + 96) = a2;

  sub_19A6816F0(0, 0, v19, &unk_19A7BD818, v22);

  return 0;
}

uint64_t sub_19A6CAD3C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 112) = a11;
  *(v12 + 120) = a12;
  *(v12 + 208) = a10;
  *(v12 + 104) = a9;
  *(v12 + 88) = a3;
  *(v12 + 96) = a4;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;
  *(v12 + 64) = a8;
  v13 = sub_19A7AAC14();
  *(v12 + 128) = v13;
  *(v12 + 136) = *(v13 - 8);
  *(v12 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6CAE10, 0, 0);
}

uint64_t sub_19A6CAE10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {
    sub_19A7AB354();
    *(v0 + 160) = sub_19A7AB344();
    v3 = sub_19A7AB2E4();
    *(v0 + 168) = v3;
    *(v0 + 176) = v2;

    return MEMORY[0x1EEE6DFA0](sub_19A6CAF14, v3, v2);
  }

  else
  {
    (*(v0 + 112))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_19A6CAF14()
{
  v1 = *(v0 + 152);
  v2 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 184) = v3;
  if (v3)
  {
    (*(*(v0 + 136) + 104))(*(v0 + 144), *MEMORY[0x1E69D4728], *(v0 + 128));
    v3;
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_19A6CB050;
    v5 = *(v0 + 144);

    return sub_19A7697C0(v5);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19A6CB3B4, 0, 0);
  }
}

uint64_t sub_19A6CB050(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 200) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_19A6CB1DC, v7, v6);
}

uint64_t sub_19A6CB1DC()
{
  v1 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19A6CB254, 0, 0);
}

uint64_t sub_19A6CB254()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = v1;
    v3 = sub_19A721074();

    if (v3)
    {
      v4 = *(v0 + 112);
      v5 = *(v0 + 208);
      v6 = *(v0 + 104);
      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = [objc_allocWithZone(MEMORY[0x1E6973F50]) initWithSticker_];
      [v11 setSourceFrame_];
      if (v5)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6;
      }

      [v11 setInitialFrameIndex_];
      v13 = v11;
      v4(v11, 0);

      goto LABEL_10;
    }

    v3 = *(v0 + 200);
  }

  else
  {
    v3 = 0;
  }

  (*(v0 + 112))(0, 0);
LABEL_10:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_19A6CB3B4()
{
  (*(v0 + 112))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A6CB4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C20;
  *(inited + 32) = 0x7079546567616D49;
  *(inited + 40) = 0xE900000000000065;
  if (qword_1EAFCAD68 != -1)
  {
    swift_once();
  }

  v2 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3;
  sub_19A665B5C(v3);

  v5 = sub_19A7AAFE4();

  *(inited + 48) = v5;
  *(inited + 56) = 0x7079546567617355;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_19A7AAFE4();
  v6 = sub_19A69C364(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
  swift_arrayDestroy();
  v7 = v0 + OBJC_IVAR___STKStickerView_usageSource;
  swift_beginAccess();
  if (*(v7 + 8))
  {

    v8 = sub_19A7AAFE4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19A64FE0C(v8, 0x756F536567617355, 0xEB00000000656372, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1EAFCB558 != -1)
  {
    swift_once();
  }

  sub_19A661F84(qword_1EAFDD6C8, 0x6567617355, 0xE500000000000000, 0, 0, 0, 0, 2, 0, 1, v6);
}

void sub_19A6CB754()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR___STKStickerView_didCancelLift) & 1) == 0)
    {
      *(Strong + OBJC_IVAR___STKStickerView_isSilhouetteImageVisible) = 1;
      sub_19A6C6A38();
    }
  }
}