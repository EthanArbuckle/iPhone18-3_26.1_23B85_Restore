uint64_t sub_213CE5B70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for MapStylePicker.Option(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = *(v0 + 120);
  v12 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = v12;
  v38 = *(v0 + 168);
  v13 = *(v0 + 56);
  v14 = *(v0 + 88);
  v32 = *(v0 + 72);
  v33 = v14;
  v34 = *(v0 + 104);
  v35 = v11;
  v15 = *(v0 + 24);
  v28 = *(v0 + 8);
  v29 = v15;
  v30 = *(v0 + 40);
  v31 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v39, v16);
  v24 = v39[6];
  v25 = v39[7];
  v26 = v39[8];
  v27 = v40;
  v20 = v39[2];
  v21 = v39[3];
  v22 = v39[4];
  v23 = v39[5];
  v18 = v39[0];
  v19 = v39[1];
  Array<A>.selectedOption(for:)(&v18, v10, v4);
  v34 = v24;
  v35 = v25;
  v36 = v26;
  LOWORD(v37) = v27;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v28 = v18;
  v29 = v19;
  sub_213CEB3CC(&v28);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_213CD8330(v4, &qword_27C8EA2C0, &qword_213D95000);
  }

  sub_213CEB6F0(v4, v9, type metadata accessor for MapStylePicker.Option);
  sub_213CE70CC(v9);
  return sub_213CEB758(v9, type metadata accessor for MapStylePicker.Option);
}

uint64_t sub_213CE5DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_213D904FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = sub_213D9176C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213CEBAF8(a1, v20 + *(v17 + 28), type metadata accessor for _MapStylePickerAttribution);
  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBF50, &qword_213D95138);
  swift_storeEnumTagMultiPayload();
  v21 = (v20 + *(v17 + 32));
  v31 = 0x4059000000000000;
  sub_213D9156C();
  v22 = v33;
  *v21 = v32;
  v21[1] = v22;
  v23 = v29[1] + *(type metadata accessor for MapStylePickerView(0) + 40);
  sub_213D48938(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDF3D0], v3);
  LOBYTE(v23) = sub_213D904EC();
  v24 = *(v4 + 8);
  v24(v8, v3);
  v24(v10, v3);
  v25 = MEMORY[0x277CE13B0];
  if ((v23 & 1) == 0)
  {
    v25 = MEMORY[0x277CE13B8];
  }

  (*(v12 + 104))(v15, *v25, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA380, &qword_213D95140);
  v27 = v30;
  (*(v12 + 32))(v30 + *(v26 + 36), v15, v11);
  return sub_213CEB6F0(v20, v27, type metadata accessor for MapStylePickerView.AttributionLabel);
}

uint64_t sub_213CE612C()
{
  v1 = sub_213D9087C();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = sub_213D916EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_213D916FC();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *v0;
  v20 = *(*v0 + 16);
  *v11 = xmmword_213D94EE0;
  (*(v8 + 104))(v11, *MEMORY[0x277CDF108], v7);
  sub_213D9172C();
  if (v20 == 4)
  {
    sub_213D9170C();
    v21 = v0 + *(type metadata accessor for MapStylePickerView(0) + 36);
    sub_213D48910(v6);
    v22 = v28;
    v23 = v29;
    (*(v29 + 104))(v28, *MEMORY[0x277CDFA00], v1);
    sub_213CEB4E8(&qword_27C8E9738, MEMORY[0x277CDFA28]);
    LOBYTE(v21) = sub_213D918CC();
    v24 = *(v23 + 8);
    v24(v22, v1);
    v24(v6, v1);
    if (v21)
    {
      v25 = 2;
    }

    else
    {
      v25 = *(v19 + 16);
    }

    v26 = v18;
  }

  else
  {
    sub_213D9170C();
    v25 = *(v19 + 16);
    v26 = v16;
  }

  return sub_213CE72C0(v26, v25);
}

uint64_t sub_213CE6448(uint64_t *a1)
{
  v2 = type metadata accessor for MapStylePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = sub_213CEABA0(0, *(*a1 + 16), *a1);
  swift_getKeyPath();
  sub_213CEBAF8(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_213CEB6F0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MapStylePickerView);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_213CEC6D8;
  *(v7 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA450, &qword_213D95240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA370, &qword_213D950F8);
  sub_213CEDCEC(&qword_27C8E9568, &qword_27C8EA450, &qword_213D95240);
  sub_213CEB5B4();
  return sub_213D9169C();
}

uint64_t sub_213CE665C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v54 = a3;
  v55 = a1;
  v53 = sub_213D9105C();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MapStylePicker.Option(0);
  v7 = v6 - 8;
  v46 = *(v6 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MapStylePickerView(0);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA460, &qword_213D95250);
  v50 = *(v52 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v17 = &v41[-v16];
  v18 = v11[6];
  v19 = sub_213D902AC();
  v20 = v14 + v18;
  v21 = v55;
  (*(*(v19 - 8) + 16))(v20, v55, v19);
  v48 = *(v7 + 28);
  v79 = *(v21 + v48);
  sub_213CE6D0C();
  v43 = v22;
  v23 = *(a2 + 120);
  v24 = *(a2 + 152);
  v74 = *(a2 + 136);
  v75 = v24;
  v76 = *(a2 + 168);
  v25 = *(a2 + 56);
  v26 = *(a2 + 88);
  v70 = *(a2 + 72);
  v71 = v26;
  v72 = *(a2 + 104);
  v73 = v23;
  v27 = *(a2 + 24);
  v66 = *(a2 + 8);
  v67 = v27;
  v68 = *(a2 + 40);
  v69 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v77, v28);
  v62 = v77[6];
  v63 = v77[7];
  v64 = v77[8];
  v65 = v78;
  v58 = v77[2];
  v59 = v77[3];
  v60 = v77[4];
  v61 = v77[5];
  v56 = v77[0];
  v57 = v77[1];
  v42 = MapStylePicker.Option.matches(_:)(&v56);
  v72 = v62;
  v73 = v63;
  v74 = v64;
  LOWORD(v75) = v65;
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v66 = v56;
  v67 = v57;
  sub_213CEB3CC(&v66);
  v29 = sub_213CE6EFC();
  sub_213CEBAF8(a2, &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MapStylePickerView);
  v30 = v21;
  v31 = v45;
  sub_213CEBAF8(v30, v45, type metadata accessor for MapStylePicker.Option);
  v32 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v33 = (v10 + *(v46 + 80) + v32) & ~*(v46 + 80);
  v34 = swift_allocObject();
  sub_213CEB6F0(&v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v34 + v32, type metadata accessor for MapStylePickerView);
  sub_213CEB6F0(v31, v34 + v33, type metadata accessor for MapStylePicker.Option);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  swift_storeEnumTagMultiPayload();
  v35 = v11[5];
  *(v14 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  swift_storeEnumTagMultiPayload();
  *(v14 + v11[7]) = v43;
  *(v14 + v11[8]) = v42 & 1;
  *(v14 + v11[9]) = v29;
  v36 = (v14 + v11[10]);
  *v36 = sub_213CEC8B4;
  v36[1] = v34;
  v37 = v49;
  sub_213D9104C();
  v38 = sub_213CEB4E8(&qword_27C8E97F8, type metadata accessor for MapStylePickerView.MapModeTile);
  sub_213D9139C();
  (*(v51 + 8))(v37, v53);
  sub_213CEB758(v14, type metadata accessor for MapStylePickerView.MapModeTile);
  if (*(v55 + v48) <= 1u)
  {
    *(v55 + v48);
  }

  *&v77[0] = v11;
  *(&v77[0] + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v52;
  sub_213D913EC();

  return (*(v50 + 8))(v17, v39);
}

void sub_213CE6D0C()
{
  LODWORD(v1) = *v0;
  v2 = sub_213D9190C();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v1 <= 1)
  {
    if (v1)
    {
      goto LABEL_8;
    }

    v4 = sub_213D9190C();
    v1 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (v1)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v5 = sub_213D9190C();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v3];

  if (v6)
  {
    return;
  }

  __break(1u);
LABEL_8:
  v7 = sub_213D9190C();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v3];

  if (v8)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v9 = sub_213D9190C();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v3];

  if (!v10)
  {
    __break(1u);
  }
}

double sub_213CE6EFC()
{
  v1 = v0;
  v2 = sub_213D9087C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = v0 + *(type metadata accessor for MapStylePickerView(0) + 36);
  sub_213D48910(v9);
  (*(v3 + 104))(v7, *MEMORY[0x277CDFA00], v2);
  sub_213CEB4E8(&qword_27C8E9738, MEMORY[0x277CDFA28]);
  v11 = sub_213D918CC();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  v13 = *(*v1 + 16);
  if (v13 == 2)
  {
    return 1.86;
  }

  if (v13 == 3)
  {
    return 1.43;
  }

  result = 1.86;
  if ((v11 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_213CE70CC(uint64_t a1)
{
  v3 = type metadata accessor for MapStylePickerView(0);
  v4 = (v1 + *(v3 + 28));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v36[0]) = v5;
  *(&v36[0] + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
  sub_213D9157C();
  v7 = (v1 + *(v3 + 32));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v36[0]) = v8;
  *(&v36[0] + 1) = v9;
  sub_213D9157C();
  v10 = type metadata accessor for MapStylePicker.Option(0);
  sub_213D55054(*(a1 + *(v10 + 28)) & v34[0] & 1, v34[0] & 1 | ((*(a1 + *(v10 + 32)) & 1) == 0), v22);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  v34[8] = *(v1 + 136);
  v34[9] = v12;
  v35 = *(v1 + 168);
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  v34[4] = *(v1 + 72);
  v34[5] = v14;
  v34[6] = *(v1 + 104);
  v34[7] = v11;
  v15 = *(v1 + 24);
  v34[0] = *(v1 + 8);
  v34[1] = v15;
  v34[2] = *(v1 + 40);
  v34[3] = v13;
  v16 = *(v1 + 120);
  v17 = *(v1 + 152);
  v31 = *(v1 + 136);
  v32 = v17;
  v33 = *(v1 + 168);
  v18 = *(v1 + 56);
  v19 = *(v1 + 88);
  v27 = *(v1 + 72);
  v28 = v19;
  v29 = *(v1 + 104);
  v30 = v16;
  v20 = *(v1 + 24);
  v23 = *(v1 + 8);
  v24 = v20;
  v25 = *(v1 + 40);
  v26 = v18;
  sub_213CE2C28(v34, v36, &qword_27C8EA2D0, &qword_213D998B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  sub_213D915FC();
  v36[8] = v31;
  v36[9] = v32;
  v37 = v33;
  v36[4] = v27;
  v36[5] = v28;
  v36[6] = v29;
  v36[7] = v30;
  v36[0] = v23;
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v26;
  return sub_213CD8330(v36, &qword_27C8EA2D0, &qword_213D998B0);
}

uint64_t sub_213CE72C0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_213D916FC();
      v5 = sub_213D91A4C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_213D916FC();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *sub_213CE7434@<X0>(void *result@<X0>, char *a2@<X8>)
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

char *sub_213CE746C()
{
  v1 = v0;
  v2 = type metadata accessor for MapStylePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  if (sub_213CE5780())
  {
    v29 = v2;
    sub_213CEBAF8(v0, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
    sub_213D91AFC();
    v5 = sub_213D91AEC();
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
    sub_213CEB6F0(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MapStylePickerView);
    sub_213CEBAF8(v0, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
    v9 = sub_213D91AEC();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_213CEB6F0(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, type metadata accessor for MapStylePickerView);
    sub_213D9161C();
    v11 = v30;
    v12 = v31;
    v13 = v32;
    v14 = sub_213CE3424();
    v15 = sub_213D6FAF0(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_213D6FAF0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[32 * v17];
    v18[32] = 0;
    *(v18 + 5) = v11;
    *(v18 + 6) = v12;
    v18[56] = v13;
    v18[57] = v14 & 1;
    v2 = v29;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (sub_213CE5978())
  {
    v19 = v1 + *(v2 + 32);
    v20 = *v19;
    v21 = *(v19 + 8);
    v33 = v20;
    v34 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    sub_213D9159C();
    v22 = v30;
    v23 = v31;
    v24 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_213D6FAF0(0, *(v15 + 2) + 1, 1, v15);
    }

    v26 = *(v15 + 2);
    v25 = *(v15 + 3);
    if (v26 >= v25 >> 1)
    {
      v15 = sub_213D6FAF0((v25 > 1), v26 + 1, 1, v15);
    }

    *(v15 + 2) = v26 + 1;
    v27 = &v15[32 * v26];
    v27[32] = 1;
    *(v27 + 5) = v22;
    *(v27 + 6) = v23;
    v27[56] = v24;
    v27[57] = 0;
  }

  return v15;
}

uint64_t sub_213CE779C(uint64_t a1)
{
  v2 = type metadata accessor for MapStylePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v10[3] = sub_213CE746C();
  sub_213CEBAF8(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_213CEB6F0(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MapStylePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA440, &qword_213D951E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA448, &qword_213D951E8);
  sub_213CEDCEC(&qword_27C8E9578, &qword_27C8EA440, &qword_213D951E0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C8, &qword_213D95188);
  v8 = sub_213CEB8A0();
  v10[1] = v7;
  v10[2] = v8;
  swift_getOpaqueTypeConformance2();
  sub_213CEC258();
  return sub_213D916AC();
}

uint64_t sub_213CE79A4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v27[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3D8, &qword_213D95198);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3D0, &qword_213D95190);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3C8, &qword_213D95188);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v27 - v19;
  v28 = a1 & 1;
  v29 = a2;
  v30 = a3;
  v31 = a4 & 0x101;
  v21 = 0x5463696666617254;
  if (a1)
  {
    v21 = 0x6F54736C6562614CLL;
  }

  v27[0] = v21;

  sub_213D915CC();
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = HIBYTE(a4) & 1;
  v24 = &v12[*(v9 + 36)];
  *v24 = KeyPath;
  v24[1] = sub_213CEC2D0;
  v24[2] = v23;
  sub_213CEBA14();
  sub_213D913EC();

  sub_213CD8330(v12, &qword_27C8EA3D8, &qword_213D95198);
  v32 = sub_213D9149C();
  v25 = sub_213D915DC();
  sub_213CED608(v16, v20, &qword_27C8EA3D0, &qword_213D95190);
  *&v20[*(v17 + 36)] = v25;
  sub_213D905FC();
  sub_213CEB8A0();
  sub_213D913BC();
  return sub_213CD8330(v20, &qword_27C8EA3C8, &qword_213D95188);
}

uint64_t sub_213CE7CAC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_213D902AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_27C8E9840 != -1)
    {
      swift_once();
    }

    v9 = qword_27C8E9848;
  }

  else
  {
    if (qword_27C8E9818 != -1)
    {
      swift_once();
    }

    v9 = qword_27C8E9820;
  }

  v10 = __swift_project_value_buffer(v4, v9);
  (*(v5 + 16))(v8, v10, v4);
  result = sub_213D9126C();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_213CE7E1C(uint64_t a1)
{
  result = sub_213CEB4E8(&qword_27C8E97A8, type metadata accessor for MapStylePickerView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213CE7E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA488, &qword_213D95450);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v69 - v7;
  v81 = sub_213D90D3C();
  v79 = *(v81 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_213D902AC();
  v88 = *(v87 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA490, &qword_213D95458);
  v78 = *(v13 - 8);
  v14 = *(v78 + 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA498, &qword_213D95460);
  v75 = *(v72 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v69 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4A0, &qword_213D95468);
  v19 = *(*(v77 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v77);
  v83 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v82 = &v69 - v25;
  v26 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v27 = *(v26 + 40);
  v70 = v26;
  v28 = (a1 + v27);
  v29 = *v28;
  v30 = v28[1];
  v89 = a1;
  v69 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4A8, &qword_213D95470);
  sub_213CED00C();
  sub_213D915BC();
  v31 = sub_213CEDCEC(&qword_27C8E95D0, &qword_27C8EA490, &qword_213D95458);
  v32 = sub_213CED434();
  v33 = v71;
  sub_213D912FC();
  v34 = v16;
  v35 = v13;
  (*(v78 + 1))(v34, v13);
  v36 = *(v88 + 16);
  v73 = *(v26 + 24);
  v88 += 16;
  v74 = v36;
  v36(v12, a1 + v73, v87);
  v78 = v12;
  v37 = sub_213D9126C();
  v39 = v38;
  LOBYTE(v12) = v40;
  *&v95 = v35;
  *(&v95 + 1) = &type metadata for MapStylePickerView.MapModeTile.ModeStyle;
  *&v96 = v31;
  *(&v96 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v76 = v24;
  v41 = v72;
  sub_213D9136C();
  sub_213CED488(v37, v39, v12 & 1);
  v42 = v69;

  (*(v75 + 8))(v33, v41);
  if (*(v42 + *(v70 + 32)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA520, &qword_213D95548);
    v43 = v79;
    v44 = *(v79 + 72);
    v45 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_213D94EF0;
    sub_213D90D1C();
    sub_213D90D2C();
    *&v95 = v46;
    sub_213CEB4E8(&qword_27C8E9660, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA528, &qword_213D95550);
    sub_213CEDCEC(&qword_27C8E9570, &qword_27C8EA528, &qword_213D95550);
    v47 = v80;
    v48 = v81;
    sub_213D91CBC();
    v49 = v48;
    v50 = v43;
  }

  else
  {
    v47 = v80;
    sub_213D90D2C();
    v49 = v81;
    v50 = v79;
  }

  v51 = v82;
  v52 = v76;
  sub_213D908BC();
  (*(v50 + 8))(v47, v49);
  sub_213CD8330(v52, &qword_27C8EA4A0, &qword_213D95468);
  v74(v78, v42 + v73, v87);
  v53 = sub_213D9126C();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  KeyPath = swift_getKeyPath();
  sub_213D9123C();
  sub_213D9121C();
  v61 = sub_213D9122C();

  v62 = swift_getKeyPath();
  v94 = v57 & 1;
  *&v90 = v53;
  *(&v90 + 1) = v55;
  LOBYTE(v91) = v57 & 1;
  *(&v91 + 1) = v59;
  *&v92 = KeyPath;
  BYTE8(v92) = 1;
  *&v93 = v62;
  *(&v93 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4F8, &qword_213D95520);
  sub_213CED498();
  v63 = v84;
  sub_213D913EC();
  v95 = v90;
  v96 = v91;
  v97 = v92;
  v98 = v93;
  sub_213CD8330(&v95, &qword_27C8EA4F8, &qword_213D95520);
  v64 = v83;
  sub_213CE2C28(v51, v83, &qword_27C8EA4A0, &qword_213D95468);
  v65 = v86;
  sub_213CE2C28(v63, v86, &qword_27C8EA488, &qword_213D95450);
  v66 = v85;
  sub_213CE2C28(v64, v85, &qword_27C8EA4A0, &qword_213D95468);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA518, &qword_213D95540);
  sub_213CE2C28(v65, v66 + *(v67 + 48), &qword_27C8EA488, &qword_213D95450);
  sub_213CD8330(v63, &qword_27C8EA488, &qword_213D95450);
  sub_213CD8330(v51, &qword_27C8EA4A0, &qword_213D95468);
  sub_213CD8330(v65, &qword_27C8EA488, &qword_213D95450);
  return sub_213CD8330(v64, &qword_27C8EA4A0, &qword_213D95468);
}

uint64_t sub_213CE87C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_213D909CC();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA530, &qword_213D95558);
  v9 = *(v8 - 8);
  v84 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4B8, &qword_213D95480);
  v14 = *(v13 - 8);
  v85 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v77 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4B0, &qword_213D95478);
  v18 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v77 - v19;
  v20 = *(v4 + 28);
  v80 = *MEMORY[0x277CE0118];
  v21 = v80;
  v22 = sub_213D90D0C();
  v23 = *(*(v22 - 8) + 104);
  v23(&v17[v20], v21, v22);
  __asm { FMOV            V0.2D, #16.0 }

  *v17 = _Q0;
  v29 = sub_213D9149C();
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4D0, &qword_213D95498) + 36)] = v29;
  v30 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v31 = *(a1 + v30[9]);
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4C8, &qword_213D95490) + 36)];
  *v32 = v31;
  *(v32 + 4) = 0;
  v33 = sub_213D9173C();
  v81 = v34;
  v82 = v33;
  v35 = *(a1 + v30[7]);
  v36 = a1;
  v83 = a1;
  v79 = v35;
  v37 = sub_213D9173C();
  v77 = v38;
  v78 = v37;
  KeyPath = swift_getKeyPath();
  LODWORD(v30) = *(v36 + v30[8]);
  v23(v7 + *(v4 + 28), v80, v22);
  v40 = v30;
  v41 = 16.0;
  v42 = 12.0;
  if (!v30)
  {
    v42 = 16.0;
  }

  *v7 = v42;
  v7[1] = v42;
  v43 = &v12[*(v84 + 44)];
  v44 = 4.0;
  sub_213CEB6F0(v7, v43, MEMORY[0x277CDFC08]);
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA408, &qword_213D951C8) + 36)) = 256;
  *v12 = KeyPath;
  v12[8] = 0;
  v45 = v78;
  *(v12 + 2) = v79;
  v12[24] = 1;
  v46 = v77;
  *(v12 + 4) = v45;
  *(v12 + 5) = v46;
  v12[48] = 1;
  v47 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4C0, &qword_213D95488) + 36)];
  v48 = sub_213D911DC();
  sub_213D904AC();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_213CED608(v12, v47, &qword_27C8EA530, &qword_213D95558);
  v57 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA538, &qword_213D95590) + 36);
  *v57 = v48;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4E0, &qword_213D954A8) + 36));
  v59 = v81;
  *v58 = v82;
  v58[1] = v59;
  v60 = sub_213D9173C();
  v62 = v61;
  v63 = &v17[*(v85 + 44)];
  *v63 = sub_213D9173C();
  v63[1] = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA540, &qword_213D95598);
  sub_213CE8D2C(v83, v63 + *(v65 + 44));
  v66 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4E8, &qword_213D954B0) + 36));
  v67 = v40;
  *v66 = v60;
  v66[1] = v62;
  if (v40 == 1)
  {
    v68 = [objc_opt_self() systemBlueColor];
    sub_213D914CC();
    v69 = sub_213D914BC();
    v41 = 24.0;
    v44 = 2.0;
  }

  else
  {
    sub_213D9148C();
    v69 = sub_213D914BC();
  }

  v70 = v87;
  sub_213CED608(v17, v87, &qword_27C8EA4B8, &qword_213D95480);
  v71 = (v70 + *(v86 + 36));
  *v71 = v69;
  *(v71 + 1) = v41;
  v71[2] = 0;
  *(v71 + 3) = v44;
  v72 = sub_213D9174C();
  v73 = v70;
  v74 = v88;
  sub_213CED608(v73, v88, &qword_27C8EA4B0, &qword_213D95478);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA4A8, &qword_213D95470);
  v76 = v74 + *(result + 36);
  *v76 = v72;
  *(v76 + 8) = v67;
  return result;
}

uint64_t sub_213CE8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a1;
  v176 = a2;
  v173 = sub_213D9176C();
  v172 = *(v173 - 8);
  v2 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA548, &qword_213D955A0);
  v4 = *(*(v169 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v169);
  v175 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v170 = &v148 - v8;
  MEMORY[0x28223BE20](v7);
  v174 = &v148 - v9;
  v162 = sub_213D904FC();
  v161 = *(v162 - 8);
  v10 = *(v161 + 64);
  v11 = MEMORY[0x28223BE20](v162);
  v160 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v159 = &v148 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA550, &qword_213D955A8);
  v14 = *(*(v179 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v179);
  v166 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v163 = &v148 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA558, &qword_213D955B0);
  v18 = *(*(v178 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v178);
  v168 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v165 = &v148 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v164 = &v148 - v24;
  MEMORY[0x28223BE20](v23);
  v181 = &v148 - v25;
  v26 = sub_213D909CC();
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v157 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v156 = (&v148 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = (&v148 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA560, &qword_213D955B8);
  v36 = v35 - 8;
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v148 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA568, &qword_213D955C0);
  v41 = *(v40 - 8);
  v150 = v40 - 8;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40 - 8);
  v167 = &v148 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v148 - v46;
  MEMORY[0x28223BE20](v45);
  v180 = &v148 - v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA570, &qword_213D955C8);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_213D94EF0;
  sub_213D914AC();
  v50 = sub_213D914BC();

  *(v49 + 32) = v50;
  *(v49 + 40) = sub_213D9149C();
  sub_213D917AC();
  sub_213D917BC();
  MEMORY[0x21604E8A0](v49);
  sub_213D9079C();
  v149 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  v51 = *(v177 + *(v149 + 32));
  v158 = v51;
  v154 = v27;
  v52 = *(v27 + 28);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_213D90D0C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 104);
  v57 = v55 + 104;
  v58 = v34 + v52;
  v152 = v53;
  v59 = v54;
  v151 = v54;
  v56(v58, v53);
  v153 = v57;
  v155 = v56;
  if (v51)
  {
    v60 = 12.0;
  }

  else
  {
    v60 = 16.0;
  }

  *v34 = v60;
  v34[1] = v60;
  v61 = &v39[*(v36 + 44)];
  sub_213CEB6F0(v34, v61, MEMORY[0x277CDFC08]);
  *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA408, &qword_213D951C8) + 36)) = 256;
  *(v39 + 4) = v184;
  v62 = v183;
  *v39 = v182;
  *(v39 + 1) = v62;
  LOBYTE(v61) = sub_213D911DC();
  sub_213D904AC();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_213CED608(v39, v47, &qword_27C8EA560, &qword_213D955B8);
  v71 = &v47[*(v150 + 44)];
  *v71 = v61;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  sub_213CED608(v47, v180, &qword_27C8EA568, &qword_213D955C0);
  v72 = v156;
  (v56)(v156 + *(v27 + 28), v53, v59);
  *v72 = v60;
  v72[1] = v60;
  sub_213D914AC();
  v73 = v177 + *(v149 + 20);
  v74 = v159;
  sub_213D48938(v159);
  v75 = v161;
  v76 = v160;
  v77 = v162;
  (*(v161 + 104))(v160, *MEMORY[0x277CDF3C0], v162);
  sub_213D904EC();
  v78 = *(v75 + 8);
  v78(v76, v77);
  v78(v74, v77);
  v79 = sub_213D914BC();

  sub_213D9054C();
  v80 = MEMORY[0x277CDFC08];
  v81 = v163;
  sub_213CEBAF8(v72, v163, MEMORY[0x277CDFC08]);
  v82 = *&v185 * 0.5;
  v83 = v81 + *(v179 + 68);
  sub_213CEBAF8(v72, v83, v80);
  v177 = sub_213D909BC();
  *(v83 + *(v177 + 20)) = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA578, &qword_213D955D0);
  v85 = v83 + *(v84 + 36);
  v86 = v186;
  *v85 = v185;
  *(v85 + 16) = v86;
  *(v85 + 32) = v187;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA580, &qword_213D955D8);
  *(v83 + *(v87 + 52)) = v79;
  *(v83 + *(v87 + 56)) = 256;
  v88 = sub_213D9173C();
  v90 = v89;
  sub_213CEB758(v72, MEMORY[0x277CDFC08]);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA588, &qword_213D955E0);
  v92 = (v83 + *(v91 + 36));
  *v92 = v88;
  v92[1] = v90;
  LOBYTE(v88) = sub_213D911DC();
  sub_213D904AC();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v81;
  v102 = v164;
  sub_213CED608(v101, v164, &qword_27C8EA550, &qword_213D955A8);
  v103 = v102 + *(v178 + 36);
  *v103 = v88;
  *(v103 + 8) = v94;
  *(v103 + 16) = v96;
  *(v103 + 24) = v98;
  *(v103 + 32) = v100;
  *(v103 + 40) = 0;
  sub_213CED608(v102, v181, &qword_27C8EA558, &qword_213D955B0);
  v104 = v157;
  (v155)(&v157[*(v154 + 28)], v152, v151);
  if (v158 == 1)
  {
    __asm { FMOV            V0.2D, #16.0 }

    *v104 = _Q0;
    v110 = [objc_opt_self() systemBlueColor];
    v111 = sub_213D914CC();
    v112 = MEMORY[0x277CE13D8];
  }

  else
  {
    __asm { FMOV            V0.2D, #17.0 }

    *v104 = _Q0;
    sub_213D9148C();
    v111 = sub_213D914BC();

    v112 = MEMORY[0x277CE13B0];
  }

  sub_213D9054C();
  v114 = MEMORY[0x277CDFC08];
  v115 = v166;
  sub_213CEBAF8(v104, v166, MEMORY[0x277CDFC08]);
  v116 = *&v188 * 0.5;
  v117 = v115 + *(v179 + 68);
  sub_213CEBAF8(v104, v117, v114);
  *(v117 + *(v177 + 20)) = v116;
  v118 = v117 + *(v84 + 36);
  v119 = v189;
  *v118 = v188;
  *(v118 + 16) = v119;
  *(v118 + 32) = v190;
  *(v117 + *(v87 + 52)) = v111;
  *(v117 + *(v87 + 56)) = 256;
  v120 = sub_213D9173C();
  v122 = v121;
  sub_213CEB758(v104, MEMORY[0x277CDFC08]);
  v123 = (v117 + *(v91 + 36));
  *v123 = v120;
  v123[1] = v122;
  v124 = sub_213D911DC();
  sub_213D904AC();
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v133 = v165;
  sub_213CED608(v115, v165, &qword_27C8EA550, &qword_213D955A8);
  v134 = v133 + *(v178 + 36);
  *v134 = v124;
  *(v134 + 8) = v126;
  *(v134 + 16) = v128;
  *(v134 + 24) = v130;
  *(v134 + 32) = v132;
  *(v134 + 40) = 0;
  v135 = v172;
  v136 = v171;
  v137 = v173;
  (*(v172 + 104))(v171, *v112, v173);
  v138 = v170;
  (*(v135 + 32))(&v170[*(v169 + 36)], v136, v137);
  sub_213CED608(v133, v138, &qword_27C8EA558, &qword_213D955B0);
  v139 = v174;
  sub_213CED608(v138, v174, &qword_27C8EA548, &qword_213D955A0);
  v140 = v180;
  v141 = v167;
  sub_213CE2C28(v180, v167, &qword_27C8EA568, &qword_213D955C0);
  v142 = v181;
  v143 = v168;
  sub_213CE2C28(v181, v168, &qword_27C8EA558, &qword_213D955B0);
  v144 = v175;
  sub_213CE2C28(v139, v175, &qword_27C8EA548, &qword_213D955A0);
  v145 = v176;
  sub_213CE2C28(v141, v176, &qword_27C8EA568, &qword_213D955C0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA590, &qword_213D955E8);
  sub_213CE2C28(v143, v145 + *(v146 + 48), &qword_27C8EA558, &qword_213D955B0);
  sub_213CE2C28(v144, v145 + *(v146 + 64), &qword_27C8EA548, &qword_213D955A0);
  sub_213CD8330(v139, &qword_27C8EA548, &qword_213D955A0);
  sub_213CD8330(v142, &qword_27C8EA558, &qword_213D955B0);
  sub_213CD8330(v140, &qword_27C8EA568, &qword_213D955C0);
  sub_213CD8330(v144, &qword_27C8EA548, &qword_213D955A0);
  sub_213CD8330(v143, &qword_27C8EA558, &qword_213D955B0);
  return sub_213CD8330(v141, &qword_27C8EA568, &qword_213D955C0);
}

uint64_t sub_213CE9BB8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_213D90F4C();
  v1 = *(v37 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v37);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5E0, &qword_213D95790);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5E8, &qword_213D95798);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5F0, &qword_213D957A0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = sub_213D90F6C();
  sub_213D90F5C();
  sub_213D917CC();
  v22 = v21;
  v24 = v23;
  (*(v1 + 32))(v9, v4, v37);
  v25 = v20 & 1;
  v26 = 0.96;
  if ((v20 & 1) == 0)
  {
    v26 = 1.0;
  }

  v27 = &v9[*(v6 + 44)];
  *v27 = v26;
  *(v27 + 1) = v26;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  if (v20)
  {
    v28 = -0.05;
  }

  else
  {
    v28 = 0.0;
  }

  if (v20)
  {
    v29 = 0.35;
  }

  else
  {
    v29 = 0.55;
  }

  if (v20)
  {
    v30 = 0.7;
  }

  else
  {
    v30 = 0.45;
  }

  v31 = sub_213D914AC();
  sub_213CED608(v9, v14, &qword_27C8EA5E0, &qword_213D95790);
  *&v14[*(v11 + 44)] = v31;
  v32 = sub_213CED608(v14, v19, &qword_27C8EA5E8, &qword_213D95798);
  *&v19[*(v16 + 44)] = v28;
  v33 = MEMORY[0x21604E920](v32, v29, v30, 0.0);
  v34 = v38;
  sub_213CED608(v19, v38, &qword_27C8EA5F0, &qword_213D957A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5F8, &qword_213D957A8);
  v36 = v34 + *(result + 36);
  *v36 = v33;
  *(v36 + 8) = v25;
  return result;
}

uint64_t sub_213CE9EC8()
{
  v1 = sub_213D9105C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA478, &qword_213D95440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  *v9 = sub_213D90D5C();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA480, &qword_213D95448);
  sub_213CE7E74(v0, &v9[*(v10 + 44)]);
  sub_213D9103C();
  sub_213CEDCEC(&qword_27C8E95C0, &qword_27C8EA478, &qword_213D95440);
  sub_213D9139C();
  (*(v2 + 8))(v5, v1);
  return sub_213CD8330(v9, &qword_27C8EA478, &qword_213D95440);
}

id sub_213CEA088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTextAlignment_];
  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_213CEA110(void *a1)
{
  v3 = v1[1];
  [a1 setAttributedText_];

  return [a1 setPreferredMaxLayoutWidth_];
}

uint64_t sub_213CEA16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CEDD54();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213CEA1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CEDD54();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213CEA234()
{
  sub_213CEDD54();
  sub_213D90E1C();
  __break(1u);
}

uint64_t sub_213CEA25C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_213D9097C();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = v10;
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA598, &qword_213D955F0);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5A0, &qword_213D955F8);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v39 = type metadata accessor for MapStylePickerView.AttributionLabel;
  v34 = v1;
  sub_213CEBAF8(v1, v11, type metadata accessor for MapStylePickerView.AttributionLabel);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v36 = type metadata accessor for MapStylePickerView.AttributionLabel;
  sub_213CEB6F0(v11, v22 + v21, type metadata accessor for MapStylePickerView.AttributionLabel);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5A8, &qword_213D95600);
  sub_213CED6D8();
  sub_213D915BC();
  v23 = v6;
  sub_213D9096C();
  v24 = sub_213CEDCEC(&qword_27C8E95D8, &qword_27C8EA598, &qword_213D955F0);
  v25 = sub_213CEB4E8(&qword_27C8E9688, MEMORY[0x277CDDB18]);
  v26 = v42;
  sub_213D912EC();
  (*(v43 + 8))(v23, v26);
  (*(v38 + 8))(v15, v12);
  v46 = v12;
  v47 = v26;
  v48 = v24;
  v49 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v44;
  v28 = v40;
  sub_213D913EC();
  (*(v41 + 8))(v20, v28);
  v29 = v35;
  sub_213CEBAF8(v34, v35, v39);
  v30 = swift_allocObject();
  sub_213CEB6F0(v29, v30 + v21, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5B8, &qword_213D95610);
  v32 = (v27 + *(result + 36));
  *v32 = sub_213CEAA28;
  v32[1] = 0;
  v32[2] = sub_213CED9A4;
  v32[3] = v30;
  return result;
}

uint64_t sub_213CEA734(uint64_t a1)
{
  v19 = sub_213D906EC();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_213D902EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for MapStylePickerView.AttributionLabel(0) + 20);
  v16 = type metadata accessor for _MapStylePickerAttribution(0);
  sub_213CE2C28(v15 + *(v16 + 20), v9, &qword_27C8EA5C8, &qword_213D95620);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_213CD8330(v9, &qword_27C8EA5C8, &qword_213D95620);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_213D48960(v5);
  sub_213D906DC();
  (*(v2 + 8))(v5, v19);
  return (*(v11 + 8))(v14, v10);
}

double sub_213CEA998@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v5 = (a1 + *(v4 + 24));
  v9 = *v5;
  v10 = v5[1];
  v6 = *(a1 + *(v4 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C0, &qword_213D95618);
  sub_213D9157C();
  result = v8;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_213CEAA28@<X0>(void *a1@<X8>)
{
  result = sub_213D9069C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CEAA54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for MapStylePickerView.AttributionLabel(0) + 24));
  v5 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C0, &qword_213D95618);
  return sub_213D9158C();
}

uint64_t sub_213CEAAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_213CEABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA458, &qword_213D95248);
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v67 - v13);
  result = MEMORY[0x28223BE20](v12);
  v73 = &v67 - v16;
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v18 = *(a3 + 16);
  if (v18 >= v17)
  {
    v19 = a2 - a1;
  }

  else
  {
    v19 = *(a3 + 16);
  }

  v75 = a1;
  v70 = v14;
  if (!v19)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  if (v19 <= 0)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_15:

LABEL_16:
    v24 = *(v78 + 80);
    v25 = v22[3];

    if ((v17 & 0x8000000000000000) == 0)
    {
      v68 = (v24 + 32) & ~v24;
      v69 = v24;
      v26 = v22 + v68;
      v27 = v25 >> 1;
      v72 = a3;
      v74 = a2;
      v76 = v18;
      if (!v19)
      {
        v39 = a2;
        v40 = v75;
        v41 = v75;
        if (v75 != a2)
        {
          goto LABEL_32;
        }

LABEL_27:
        v42 = v22;
LABEL_28:
        v43 = v42[3];
        if (v43 >= 2)
        {
          v44 = v43 >> 1;
          v45 = __OFSUB__(v44, v27);
          v46 = v44 - v27;
          if (v45)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v42[2] = v46;
        }

        return v42;
      }

      v28 = v75;
      if (a2 >= v75)
      {
        v29 = type metadata accessor for MapStylePicker.Option(0);
        v30 = 0;
        v31 = *(v29 - 8);
        result = v29 - 8;
        v32 = v31;
        v33 = a3 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v27 -= v19;
        v34 = v28 - a2;
        do
        {
          if (!(v34 + v30))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v35 = v75 + v30;
          if (v75 + v30 >= v74)
          {
            goto LABEL_65;
          }

          if (v76 == v30)
          {
            goto LABEL_66;
          }

          v36 = v30 + 1;
          v37 = v33 + *(v32 + 72) * v30;
          v38 = *(v77 + 48);
          *v11 = v35;
          sub_213CEBAF8(v37, v11 + v38, type metadata accessor for MapStylePicker.Option);
          result = sub_213CED608(v11, v26, &qword_27C8EA458, &qword_213D95248);
          v26 += *(v78 + 72);
          v30 = v36;
        }

        while (v19 != v36);
        v39 = v74;
        v40 = v75;
        v41 = v75 + v36;
        v14 = v70;
        if (v75 + v36 == v74)
        {
          goto LABEL_27;
        }

LABEL_32:
        if (v39 >= v40)
        {
          v47 = v39;
          if (v41 > v39)
          {
            v39 = v41;
          }

          v71 = v39;
          v48 = v41;
          while (1)
          {
            if (v41 < v40)
            {
              goto LABEL_67;
            }

            if (v71 == v48)
            {
              goto LABEL_68;
            }

            if (v76 == v19)
            {
              goto LABEL_27;
            }

            if (v19 >= v76)
            {
              goto LABEL_69;
            }

            v49 = type metadata accessor for MapStylePicker.Option(0);
            v51 = *(v49 - 8);
            result = v49 - 8;
            v50 = v51;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_70;
            }

            v52 = v72 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v19;
            v53 = *(v77 + 48);
            *v14 = v48;
            sub_213CEBAF8(v52, v14 + v53, type metadata accessor for MapStylePicker.Option);
            result = sub_213CED608(v14, v73, &qword_27C8EA458, &qword_213D95248);
            if (v27)
            {
              v42 = v22;
              v45 = __OFSUB__(v27--, 1);
              if (v45)
              {
                goto LABEL_63;
              }

              goto LABEL_37;
            }

            v54 = v22[3];
            if (((v54 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_71;
            }

            v55 = v54 & 0xFFFFFFFFFFFFFFFELL;
            if (v55 <= 1)
            {
              v56 = 1;
            }

            else
            {
              v56 = v55;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA468, &qword_213D95258);
            v57 = *(v78 + 72);
            v58 = v68;
            v42 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v42);
            if (!v57)
            {
              goto LABEL_72;
            }

            v59 = result - v58;
            if (result - v58 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_73;
            }

            v61 = v59 / v57;
            v42[2] = v56;
            v42[3] = 2 * (v59 / v57);
            v62 = v42 + v58;
            v63 = v22[3] >> 1;
            v64 = v63 * v57;
            v14 = v70;
            if (v22[2])
            {
              break;
            }

LABEL_61:
            v26 = &v62[v64];
            v66 = (v61 & 0x7FFFFFFFFFFFFFFFLL) - v63;

            v47 = v74;
            v40 = v75;
            v45 = __OFSUB__(v66, 1);
            v27 = v66 - 1;
            if (v45)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_37:
            ++v48;
            result = sub_213CED608(v73, v26, &qword_27C8EA458, &qword_213D95248);
            v26 += *(v78 + 72);
            ++v19;
            v22 = v42;
            if (v47 == v48)
            {
              goto LABEL_28;
            }
          }

          if (v42 < v22 || v62 >= v22 + v58 + v64)
          {
            v65 = v64;
            swift_arrayInitWithTakeFrontToBack();
LABEL_59:
            v64 = v65;
          }

          else if (v42 != v22)
          {
            v65 = v64;
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_59;
          }

          v22[2] = 0;
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA468, &qword_213D95258);
  v20 = *(v78 + 72);
  v21 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v22 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v22);
  if (v20)
  {
    if (result - v21 == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_80;
    }

    v22[2] = v19;
    v22[3] = 2 * ((result - v21) / v20);
    v14 = v70;
    goto LABEL_15;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

unint64_t sub_213CEB144()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v0 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B8, &unk_213D94FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213D94520;
  v2 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_213CE2B34(0, &qword_27C8E94F0, 0x277D74240);
  *(inited + 40) = v0;
  v3 = v2;
  v4 = v0;
  v5 = sub_213D1DD90(inited);
  swift_setDeallocating();
  sub_213CD8330(inited + 32, &qword_27C8EB2D0, &qword_213D97320);
  v6 = *MEMORY[0x277D740A8];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = sub_213CE2B34(0, &qword_27C8E9378, 0x277D74300);
  *&v14 = v7;
  sub_213CEB34C(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_213D8D358(v13, v6, isUniquelyReferenced_nonNull_native);
  v9 = *MEMORY[0x277D740C0];
  v10 = [objc_opt_self() tertiaryLabelColor];
  v15 = sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
  *&v14 = v10;
  sub_213CEB34C(&v14, v13);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_213D8D358(v13, v9, v11);

  return v5;
}

_OWORD *sub_213CEB34C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_213CEB35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_213CEB428()
{
  result = qword_27C8EA2F8;
  if (!qword_27C8EA2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA300, &qword_213D95098);
    sub_213CEDCEC(&qword_27C8EA308, &qword_27C8EA310, &qword_213D950A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA2F8);
  }

  return result;
}

uint64_t sub_213CEB4E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213CEB530()
{
  result = qword_27C8E95A0;
  if (!qword_27C8E95A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA368, &qword_213D950F0);
    sub_213CEB5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E95A0);
  }

  return result;
}

unint64_t sub_213CEB5B4()
{
  result = qword_27C8E9708;
  if (!qword_27C8E9708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA370, &qword_213D950F8);
    type metadata accessor for MapStylePickerView.MapModeTile(255);
    sub_213CEB4E8(&qword_27C8E97F8, type metadata accessor for MapStylePickerView.MapModeTile);
    swift_getOpaqueTypeConformance2();
    sub_213CEB4E8(&qword_27C8E9610, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9708);
  }

  return result;
}

uint64_t sub_213CEB6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CEB758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213CEB7E0()
{
  result = qword_27C8E95A8;
  if (!qword_27C8E95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C0, &qword_213D95180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C8, &qword_213D95188);
    sub_213CEB8A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E95A8);
  }

  return result;
}

unint64_t sub_213CEB8A0()
{
  result = qword_27C8E96B0;
  if (!qword_27C8E96B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3C8, &qword_213D95188);
    sub_213CEB958();
    sub_213CEDCEC(&qword_27C8E9640, &qword_27C8EA3F0, &qword_213D951B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96B0);
  }

  return result;
}

unint64_t sub_213CEB958()
{
  result = qword_27C8E96C8;
  if (!qword_27C8E96C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3D0, &qword_213D95190);
    sub_213CEBA14();
    sub_213CEB4E8(&qword_27C8E9610, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96C8);
  }

  return result;
}

unint64_t sub_213CEBA14()
{
  result = qword_27C8E96F0;
  if (!qword_27C8E96F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3D8, &qword_213D95198);
    sub_213CEDCEC(&qword_27C8E95C8, &qword_27C8EA3E0, &qword_213D951A0);
    sub_213CEDCEC(&qword_27C8E9608, &qword_27C8EA3E8, &qword_213D951A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96F0);
  }

  return result;
}

uint64_t sub_213CEBAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CEBB64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213CEBBE8()
{
  result = qword_27C8EA420;
  if (!qword_27C8EA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA400, &qword_213D951C0);
    sub_213CEBCA0();
    sub_213CEDCEC(&qword_27C8E9740, &qword_27C8EA408, &qword_213D951C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA420);
  }

  return result;
}

unint64_t sub_213CEBCA0()
{
  result = qword_27C8EA428;
  if (!qword_27C8EA428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3F8, &qword_213D951B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA3A0, &qword_213D95160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA398, &qword_213D95158);
    sub_213D907DC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA390, &qword_213D95150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA388, &qword_213D95148);
    sub_213CEDCEC(&qword_27C8E9600, &qword_27C8EA388, &qword_213D95148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213CEDCEC(&qword_27C8EA430, &qword_27C8EA438, &qword_213D951D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA428);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for MapStylePickerView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(v3 + 2);

  if (*(v3 + 5) != 1)
  {

    v7 = *(v3 + 6);
  }

  if (*(v3 + 11) != 1)
  {

    v8 = *(v3 + 12);
  }

  v9 = &v3[v1[6]];
  v10 = type metadata accessor for _MapStylePickerAttribution(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 20);
    v12 = sub_213D902EC();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  v14 = *&v3[v1[7] + 8];

  v15 = *&v3[v1[8] + 8];

  v16 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_213D9087C();
    (*(*(v17 - 8) + 8))(&v3[v16], v17);
  }

  else
  {
    v18 = *&v3[v16];
  }

  v19 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_213D904FC();
    (*(*(v20 - 8) + 8))(&v3[v19], v20);
  }

  else
  {
    v21 = *&v3[v19];
  }

  return swift_deallocObject();
}

uint64_t sub_213CEC16C()
{
  v1 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_213CE5B70();
}

uint64_t sub_213CEC1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapStylePickerView(0) - 8);
  if (*(a1 + 25))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_213CE79A4(*a1, *(a1 + 8), *(a1 + 16), v6 | *(a1 + 24), a2);
}

unint64_t sub_213CEC258()
{
  result = qword_27C8E97D0;
  if (!qword_27C8E97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97D0);
  }

  return result;
}

uint64_t sub_213CEC2AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v1 + 41);
  return sub_213CE7CAC(*(v1 + 16), a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_213CEC320@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_213CE33A0(v6, a1);
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for MapStylePickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 8);

  v8 = *(v0 + v2 + 16);

  if (*(v0 + v2 + 40) != 1)
  {

    v9 = *(v5 + 6);
  }

  if (*(v5 + 11) != 1)
  {

    v10 = *(v5 + 12);
  }

  v11 = &v5[v1[6]];
  v12 = type metadata accessor for _MapStylePickerAttribution(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {

    v13 = *(v12 + 20);
    v14 = sub_213D902EC();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }
  }

  v16 = *&v5[v1[7] + 8];

  v17 = *&v5[v1[8] + 8];

  v18 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_213D9087C();
    (*(*(v19 - 8) + 8))(&v5[v18], v19);
  }

  else
  {
    v20 = *&v5[v18];
  }

  v21 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_213D904FC();
    (*(*(v22 - 8) + 8))(&v5[v21], v22);
  }

  else
  {
    v23 = *&v5[v21];
  }

  return swift_deallocObject();
}

uint64_t sub_213CEC664(char *a1)
{
  v3 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_213CE3674(a1, v4, v5, v6);
}

uint64_t sub_213CEC6D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213CE665C(a1, v6, a2);
}

uint64_t sub_213CEC760(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA458, &qword_213D95248);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_213CEC7C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a7 & 0x8000000000000000) == 0)
  {
    sub_213CEC824(result, a2, a3);

    return sub_213CEC86C(a8, a9);
  }

  return result;
}

uint64_t sub_213CEC824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_213CEC86C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_213CEC8B4()
{
  v1 = *(type metadata accessor for MapStylePickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MapStylePicker.Option(0) - 8);
  return sub_213CE70CC(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

void sub_213CEC9A0()
{
  sub_213CECA90(319, &qword_27C8E9750, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for _MapStylePickerAttribution(319);
    if (v1 <= 0x3F)
    {
      sub_213CECAF4(319, &qword_27C8E95E8, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213CECA90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213CECAF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MapStylePickerView.ToggleModel.Role(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapStylePickerView.ToggleModel.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_213CECCB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213CECCFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213CECD78()
{
  sub_213CECA90(319, &qword_27C8E9748, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213CECA90(319, &qword_27C8E9758, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213D902AC();
      if (v2 <= 0x3F)
      {
        sub_213CE2B34(319, &unk_27C8E9360, 0x277D755B8);
        if (v3 <= 0x3F)
        {
          sub_213CECECC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_213CECECC()
{
  result = qword_27C8E9320;
  if (!qword_27C8E9320)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27C8E9320);
  }

  return result;
}

unint64_t sub_213CECF20()
{
  result = qword_27C8E97D8;
  if (!qword_27C8E97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97D8);
  }

  return result;
}

unint64_t sub_213CECF94()
{
  result = qword_27C8E97E0;
  if (!qword_27C8E97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97E0);
  }

  return result;
}

unint64_t sub_213CED00C()
{
  result = qword_27C8E9690;
  if (!qword_27C8E9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4A8, &qword_213D95470);
    sub_213CED0C4();
    sub_213CEDCEC(&qword_27C8E9668, &qword_27C8EA4F0, &qword_213D954B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9690);
  }

  return result;
}

unint64_t sub_213CED0C4()
{
  result = qword_27C8E9698;
  if (!qword_27C8E9698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4B0, &qword_213D95478);
    sub_213CED150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9698);
  }

  return result;
}

unint64_t sub_213CED150()
{
  result = qword_27C8E96A8;
  if (!qword_27C8E96A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4B8, &qword_213D95480);
    sub_213CED208();
    sub_213CEDCEC(&qword_27C8E9670, &qword_27C8EA4E8, &qword_213D954B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96A8);
  }

  return result;
}

unint64_t sub_213CED208()
{
  result = qword_27C8E96C0;
  if (!qword_27C8E96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4C0, &qword_213D95488);
    sub_213CED2C0();
    sub_213CEDCEC(&qword_27C8E9658, &qword_27C8EA4E0, &qword_213D954A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96C0);
  }

  return result;
}

unint64_t sub_213CED2C0()
{
  result = qword_27C8E96E8;
  if (!qword_27C8E96E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4C8, &qword_213D95490);
    sub_213CED34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96E8);
  }

  return result;
}

unint64_t sub_213CED34C()
{
  result = qword_27C8E9728;
  if (!qword_27C8E9728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4D0, &qword_213D95498);
    sub_213CEB4E8(&qword_27C8E9680, MEMORY[0x277CDFC08]);
    sub_213CEDCEC(&qword_27C8E9628, &qword_27C8EA4D8, &qword_213D954A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9728);
  }

  return result;
}

unint64_t sub_213CED434()
{
  result = qword_27C8E9800;
  if (!qword_27C8E9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9800);
  }

  return result;
}

uint64_t sub_213CED488(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_213CED498()
{
  result = qword_27C8E96D8;
  if (!qword_27C8E96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA4F8, &qword_213D95520);
    sub_213CED550();
    sub_213CEDCEC(&qword_27C8E9618, &qword_27C8EA510, &qword_213D95538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96D8);
  }

  return result;
}

unint64_t sub_213CED550()
{
  result = qword_27C8E9718;
  if (!qword_27C8E9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA500, &qword_213D95528);
    sub_213CEDCEC(&qword_27C8E9620, &qword_27C8EA508, &qword_213D95530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9718);
  }

  return result;
}

uint64_t sub_213CED608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_213CED670()
{
  v1 = *(type metadata accessor for MapStylePickerView.AttributionLabel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213CEA734(v2);
}

unint64_t sub_213CED6D8()
{
  result = qword_27C8E9730;
  if (!qword_27C8E9730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5A8, &qword_213D95600);
    sub_213CED790();
    sub_213CEDCEC(&qword_27C8E9648, &qword_27C8EA5B0, &qword_213D95608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9730);
  }

  return result;
}

unint64_t sub_213CED790()
{
  result = qword_27C8E97C0;
  if (!qword_27C8E97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97C0);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  v1 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBF50, &qword_213D95138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213D906EC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v4 + *(v1 + 20));

  v8 = *(type metadata accessor for _MapStylePickerAttribution(0) + 20);
  v9 = sub_213D902EC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213CED9A4(uint64_t *a1)
{
  v3 = *(type metadata accessor for MapStylePickerView.AttributionLabel(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213CEAA54(a1, v4);
}

uint64_t sub_213CEDA24(uint64_t *a1, int a2)
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

uint64_t sub_213CEDA6C(uint64_t result, int a2, int a3)
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

unint64_t sub_213CEDAB8()
{
  result = qword_27C8E96D0;
  if (!qword_27C8E96D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5B8, &qword_213D95610);
    sub_213CEDB70();
    sub_213CEDCEC(&qword_27C8E9638, &qword_27C8EA5D8, &qword_213D95670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96D0);
  }

  return result;
}

unint64_t sub_213CEDB70()
{
  result = qword_27C8E9710;
  if (!qword_27C8E9710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5D0, &qword_213D95668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA598, &qword_213D955F0);
    sub_213D9097C();
    sub_213CEDCEC(&qword_27C8E95D8, &qword_27C8EA598, &qword_213D955F0);
    sub_213CEB4E8(&qword_27C8E9688, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_213CEB4E8(&qword_27C8E9610, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9710);
  }

  return result;
}

uint64_t sub_213CEDCEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213CEDD54()
{
  result = qword_27C8E97C8;
  if (!qword_27C8E97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E97C8);
  }

  return result;
}

unint64_t sub_213CEDDA8()
{
  result = qword_27C8E96A0;
  if (!qword_27C8E96A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5F8, &qword_213D957A8);
    sub_213CEDE60();
    sub_213CEDCEC(&qword_27C8E9668, &qword_27C8EA4F0, &qword_213D954B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96A0);
  }

  return result;
}

unint64_t sub_213CEDE60()
{
  result = qword_27C8E96B8;
  if (!qword_27C8E96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5F0, &qword_213D957A0);
    sub_213CEDEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96B8);
  }

  return result;
}

unint64_t sub_213CEDEEC()
{
  result = qword_27C8E96E0;
  if (!qword_27C8E96E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5E8, &qword_213D95798);
    sub_213CEDFA4();
    sub_213CEDCEC(&qword_27C8E9628, &qword_27C8EA4D8, &qword_213D954A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96E0);
  }

  return result;
}

unint64_t sub_213CEDFA4()
{
  result = qword_27C8E9720;
  if (!qword_27C8E9720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA5E0, &qword_213D95790);
    sub_213CEB4E8(&qword_27C8E9630, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9720);
  }

  return result;
}

uint64_t sub_213CEE06C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  return sub_213D904DC();
}

uint64_t MapPitchSlider.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
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

uint64_t MapPitchSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA600, &unk_213D95800);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v4 = &v34[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34[-v6];
  v7 = type metadata accessor for MapControlsConfig();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_213D90C0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v1;
  v38 = *(v1 + 8);
  v17 = *(v1 + 16);
  LODWORD(v14) = *(v1 + 24);
  v36 = *(v1 + 32);
  v35 = *(v1 + 40);
  if (v14 == 1)
  {
    v18 = v17;
  }

  else
  {

    sub_213D91BDC();
    v19 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v17, 0);
    (*(v12 + 8))(v15, v11);
    v18 = v45;
  }

  if (v18 == 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v21 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = v7[5];
  v23 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v23 - 8) + 56))(&v10[v22], 1, 1, v23);
  v24 = v7[6];
  v25 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v25 - 8) + 56))(&v10[v24], 1, 1, v25);
  v26 = v7[7];
  v27 = type metadata accessor for MapCompassConfig(0);
  (*(*(v27 - 8) + 56))(&v10[v26], 1, 1, v27);
  *&v10[v7[8]] = 2;
  *&v10[v7[9]] = (v20 << 8) | 1;
  *&v10[v7[10]] = 2;
  if (!v38)
  {

    sub_213D91BDC();
    v30 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v16, 0);
    (*(v12 + 8))(v15, v11);
    if (v44 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v31 = sub_213D9149C();
    v32 = v37;
    sub_213CEE7C8(v10, v37 + *(v40 + 36));
    *v32 = v31;
    sub_213CEE82C(v32, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA608, &unk_213D95838);
    sub_213CE189C();
    sub_213CEE68C();
    sub_213D90E5C();
    sub_213CEE89C(v32);
    return sub_213CEE76C(v10);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v43 = 0;
  v29 = v35;
  v42 = v35;
  *v4 = KeyPath;
  v4[8] = 0;
  *(v4 + 2) = v36;
  v4[24] = v29;
  v4[25] = 1;
  v4[26] = v20;
  *(v4 + 27) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA608, &unk_213D95838);
  sub_213CE189C();
  sub_213CEE68C();
  sub_213D90E5C();
  return sub_213CEE76C(v10);
}

uint64_t sub_213CEE664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D9149C();
  *a1 = result;
  return result;
}

unint64_t sub_213CEE68C()
{
  result = qword_27C8EA610;
  if (!qword_27C8EA610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA608, &unk_213D95838);
    sub_213CEE718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA610);
  }

  return result;
}

unint64_t sub_213CEE718()
{
  result = qword_27C8EA618;
  if (!qword_27C8EA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA618);
  }

  return result;
}

uint64_t sub_213CEE76C(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213CEE7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapControlsConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CEE82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CEE89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CEE934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
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

uint64_t sub_213CEE97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_213CEE9DC()
{
  result = qword_27C8EA620;
  if (!qword_27C8EA620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C8EA628, &qword_213D95968);
    sub_213CE189C();
    sub_213CEE68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA620);
  }

  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_213CEEA7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
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

uint64_t sub_213CEEAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_213CEEB58(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 96) - 8) + 32))(v5 + *(*v5 + 112), a1);
  return v5;
}

uint64_t sub_213CEECC4(uint64_t a1)
{
  v1 = *(a1 + 96);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_213CEED58()
{
  v1 = *v0;
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = v1[14];
    v4 = *(*result + 112);
    v6 = v1[12];
    v5 = v1[13];

    v7 = sub_213D918DC();

    return v7 & 1;
  }

  return result;
}

uint64_t sub_213CEEE6C()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_213CEEF30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyEquatableBox();
  (*(v4 + 16))(v7, a1, a2);
  return sub_213CEEB58(v7);
}

BOOL sub_213CEF018(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_213CEF0F8()
{
  sub_213CEF78C();

  return sub_213D90C1C();
}

uint64_t sub_213CEF140@<X0>(_BYTE *a1@<X8>)
{
  sub_213CEF78C();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CEF190(char *a1)
{
  v2 = *a1;
  sub_213CEF78C();
  return sub_213D90C2C();
}

uint64_t sub_213CEF1FC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  a5();
}

uint64_t sub_213CEF27C()
{
  sub_213CEF738();

  return sub_213D90C1C();
}

uint64_t keypath_getTm_0@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_213D90C1C();
  *a2 = v4;
  return result;
}

uint64_t keypath_setTm_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_213D90C2C();
}

uint64_t getEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_213CEF4E0()
{
  result = qword_27C8EA6B8;
  if (!qword_27C8EA6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA6B0, &qword_213D95C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
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

uint64_t storeEnumTagSinglePayload for MapItemDetailSelectionAccessoryStyle.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_213CEF6AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_213CEF6C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_213CEF6E4()
{
  result = qword_27C8EA6C8;
  if (!qword_27C8EA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6C8);
  }

  return result;
}

unint64_t sub_213CEF738()
{
  result = qword_27C8EA6D0;
  if (!qword_27C8EA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6D0);
  }

  return result;
}

unint64_t sub_213CEF78C()
{
  result = qword_27C8EA6D8;
  if (!qword_27C8EA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA6D8);
  }

  return result;
}

unint64_t sub_213CEFA54()
{
  result = qword_27C8E9588;
  if (!qword_27C8E9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9588);
  }

  return result;
}

uint64_t static Marker._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v72 = *MEMORY[0x277D85DE8];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v51 = *(v52 - 8);
  v59 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F8, &qword_213D95DA0);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v56 = sub_213D9057C();
  v55 = *(v56 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v18 = &v49 - v17;
  v58 = a5;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v63 = a3;
  v64 = a4;
  type metadata accessor for Marker();
  v19 = sub_213D9057C();
  sub_213D514F4(sub_213CF00B4, v19, a3, v18);
  v50 = type metadata accessor for _MapContentInputs(0);
  v20 = v61;
  v21 = v61 + *(v50 + 20);
  v54 = v18;
  v53 = a4;
  sub_213D90CAC();
  v22 = sub_213CDF810(a1);
  v23 = v62;
  v24 = *(v62 + 16);
  v57 = v15;
  v25 = v15;
  v26 = v10;
  v24(v13, v25, v10);
  if (v11 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = *v13;
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v28 = v30;
  v31 = v13;
  v32 = v26;
  v30(v31, v26);
  v33 = v60;
  v34 = v20;
  sub_213D90C3C();
  if (v59 != 4)
  {
    goto LABEL_5;
  }

  v59 = v28;
  v35 = *v33;
  v36 = (*(v51 + 8))(v33, v52);
  v37 = v50;
  v38 = *(v34 + *(v50 + 28));
  *&v67 = __PAIR64__(v27, v22);
  *(&v67 + 1) = __PAIR64__(v38, v35);
  LODWORD(v68) = 0;
  *v69 = 0;
  *&v69[8] = 771;
  v69[10] = 6;
  v65 = v67;
  *v66 = v68;
  *&v66[15] = *&v69[7];
  MEMORY[0x28223BE20](v36);
  v62 = v29;
  List = type metadata accessor for Marker.MakeList();
  *(&v49 - 2) = List;
  *(&v49 - 1) = swift_getWitnessTable();
  v40 = *(List - 8);
  (*(v40 + 16))(&v70, &v67, List);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(&v65, sub_213CF3038, (&v49 - 4), List, MEMORY[0x277D84A98], v41, MEMORY[0x277D84AC0], v42);
  v70 = v65;
  *v71 = *v66;
  *&v71[15] = *&v66[15];
  v43 = *(v40 + 8);
  v44 = v43(&v70, List);
  v45 = *(v37 + 24);
  MEMORY[0x28223BE20](v44);
  *(&v49 - 4) = v46;
  sub_213CD848C();
  sub_213D90F7C();
  v43(&v67, List);
  v59(v57, v32);
  result = (*(v55 + 8))(v54, v56);
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF00F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_213D90C0C();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a1, Value, v4);
}

uint64_t sub_213CF0180(uint64_t a1)
{
  v2 = v1;
  v149 = *MEMORY[0x277D85DE8];
  v122 = type metadata accessor for MapContentList.Item.Content(0);
  v4 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v125 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = type metadata accessor for MapContentList.Item(0);
  v126 = *(v124 - 8);
  v6 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v124);
  v123 = &v110[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v127 = &v110[-v9];
  v121 = type metadata accessor for ResolvedMarker();
  v10 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v132 = &v110[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_213D90C0C();
  v143 = *(v128 - 8);
  v12 = *(v143 + 64);
  MEMORY[0x28223BE20](v128);
  v14 = &v110[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v140 = &v110[-v17];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v133 = *(v134 - 8);
  v18 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v20 = &v110[-v19];
  v21 = sub_213D9100C();
  v142 = *(v21 - 8);
  v22 = *(v142 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v110[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v141 = &v110[-v25];
  v26 = sub_213D90CFC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v110[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v129 = a1;
  v33 = type metadata accessor for Marker();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v110[-v36];
  v38 = *v2;
  Value = AGGraphGetValue();
  v115 = v40;
  v130 = v34;
  v41 = *(v34 + 16);
  v135 = v37;
  v136 = v33;
  v41(v37, Value, v33);
  v42 = v2[1];
  v43 = AGGraphGetValue();
  v114 = v44;
  v131 = v27;
  v45 = *(v27 + 16);
  v137 = v30;
  v138 = v26;
  v117 = v27 + 16;
  v116 = v45;
  v45(v30, v43, v26);
  v46 = v2[3];
  v47 = *MEMORY[0x277CEF7D0];
  v139 = v21;
  if (v46 == v47)
  {
    v48 = v133;
    v49 = v140;
    v50 = v134;
    (*(v133 + 56))(v140, 1, 1, v134);
    v51 = *(v50 + 48);
    sub_213D90FFC();
    v20[v51] = 0;
    if ((*(v48 + 48))(v49, 1, v50) != 1)
    {
      sub_213CF3B08(v140);
    }
  }

  else
  {
    v52 = AGGraphGetValue();
    v54 = v53;
    v50 = v134;
    v55 = *(v134 + 48);
    v56 = v140;
    (*(v142 + 16))(v140, v52, v139);
    v57 = v54 & 1;
    v21 = v139;
    v56[v55] = v57;
    (*(v133 + 56))(v56, 0, 1, v50);
    sub_213CF3968(v56, v20);
  }

  v113 = v20[*(v50 + 48)];
  v58 = *(v142 + 32);
  v119 = v142 + 32;
  v118 = v58;
  v58(v141, v20, v21);
  v59 = *(v2 + 31);
  v60 = *(v2 + 1);
  v147 = *v2;
  *v148 = v60;
  *&v148[15] = v59;
  v61 = *&v148[8];
  v62 = *(v2 + 1);
  v145 = *v2;
  *v146 = v62;
  *&v146[15] = *(v2 + 31);
  v63 = v129;
  sub_213CF00F8(v14);
  v64 = sub_213D90A7C();
  v65 = v143 + 8;
  v66 = *(v143 + 8);
  v67 = v128;
  v66(v14, v128);
  v68 = v132;
  v140 = v64;
  v143 = v65;
  if (!v64)
  {
    if (!v61)
    {
      (*(*(v63 - 8) + 16))(&v145, &v147, v63);
      v112 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v61)
  {
    (*(*(v63 - 8) + 16))(&v145, &v147, v63);
LABEL_11:
    v71 = 1;
    goto LABEL_12;
  }

  v69 = *(v63 - 8);
  (*(v69 + 16))(&v145, &v147, v63);

  v70 = sub_213D9147C();
  (*(v69 + 8))(&v147, v63);

  v71 = v70 ^ 1;
LABEL_12:
  v112 = v71;
LABEL_13:
  v72 = *(v2 + 1);
  v145 = *v2;
  *v146 = v72;
  v74 = *(v2 + 33);
  v146[16] = *(v2 + 32);
  v73 = v146[16];
  *&v146[17] = v74;
  sub_213CF00F8(v14);
  sub_213CE3080();
  sub_213D90C1C();
  v66(v14, v67);
  LODWORD(v134) = v144;
  if (v73 == 3)
  {
    v75 = 1;
  }

  else
  {
    v75 = sub_213D904DC() ^ 1;
  }

  v111 = v75;
  v76 = *(v2 + 1);
  v145 = *v2;
  *v146 = v76;
  v146[16] = *(v2 + 32);
  v78 = *(v2 + 34);
  v146[17] = *(v2 + 33);
  v77 = v146[17];
  v146[18] = v78;
  sub_213CF00F8(v14);
  sub_213CE302C();
  sub_213D90C1C();
  v66(v14, v67);
  LODWORD(v133) = v144;
  if (v77 == 3)
  {
    v79 = 1;
  }

  else
  {
    v79 = sub_213D904DC() ^ 1;
  }

  v145 = *v2;
  v80 = v2[4];
  *&v146[4] = *(v2 + 5);
  *&v146[11] = *(v2 + 27);
  *v146 = v80;
  sub_213CF00F8(v14);
  sub_213CEF738();
  sub_213D90C1C();
  v66(v14, v67);
  v81 = v144;
  v82 = *(v2 + 34);
  if (v144 == 6)
  {
    v83 = v139;
    v84 = v142;
    if ((v82 != 6) | v115 & 1 | (v114 | v112) & 1 | v111 & 1 | v79 & 1 | v113 & 1)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (AGGraphGetOutputValue())
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v83 = v139;
  v84 = v142;
  if (v82 != 6)
  {
    switch(v144)
    {
      case 5u:
        v85 = v82 == 5;
        break;
      case 4u:
        v85 = v82 == 4;
        break;
      case 3u:
        v85 = v82 == 3;
        break;
      default:
        if ((v82 - 3) < 3 || ((v115 | v114 | v112 | v111 | v79 | v113) & 1) != 0 || v144 != v82)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
    }

    v86 = !v85;
    if (((v86 | v115 | v114 | v112 | v111 | v79 | v113) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  LODWORD(v139) = v80 + 1;
  v2[4] = v80 + 1;
  v87 = v135;
  v88 = *v135;
  v89 = v135[1];
  v90 = v121;
  v116(v68 + *(v121 + 32), v137, v138);
  v91 = *(v87 + *(v136 + 40));
  LOBYTE(v87) = *(v87 + *(v136 + 44));
  v92 = *(v84 + 16);
  v93 = v83;
  v94 = v141;
  v92(v68 + v90[12], v141, v93);
  *v68 = v88;
  *(v68 + 8) = v89;
  *(v68 + 16) = v134;
  *(v68 + 17) = v133;
  LODWORD(v143) = v81;
  *(v68 + 18) = v81;
  *(v68 + v90[9]) = v91;
  *(v68 + v90[10]) = v87;
  *(v68 + v90[11]) = v140;
  v95 = v120;
  v96 = v94;
  v83 = v93;
  v92(v120, v96, v93);
  v97 = v125;
  sub_213CF3A40(v68, v125, type metadata accessor for ResolvedMarker);
  swift_storeEnumTagMultiPayload();
  sub_213CDF60C();

  v98 = v91;
  sub_213D9101C();
  v99 = v145;
  if (!v145)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_213D94520;
    *(v99 + 32) = 0;
    *(v99 + 72) = 0;
  }

  v100 = v123;
  *v123 = v99;
  v101 = v124;
  v118(v100 + *(v124 + 28), v95, v93);
  *(v100 + 8) = v139;
  sub_213CF39D8(v97, v100 + *(v101 + 24), type metadata accessor for MapContentList.Item.Content);
  v102 = v127;
  sub_213CF39D8(v100, v127, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v103 = *(v126 + 72);
  v104 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_213D94520;
  sub_213CF3A40(v102, v105 + v104, type metadata accessor for MapContentList.Item);
  *&v145 = sub_213D71A68(v105);
  *(&v145 + 1) = v106;
  AGGraphSetOutputValue();
  sub_213CF3AA8(v102, type metadata accessor for MapContentList.Item);
  sub_213CF3AA8(v68, type metadata accessor for ResolvedMarker);

  LOBYTE(v81) = v143;
  v84 = v142;
LABEL_37:
  *(v2 + 34) = v81;
  *(v2 + 33) = v133;
  *(v2 + 32) = v134;
  v107 = *(v2 + 3);
  *(v2 + 3) = v140;

  (*(v84 + 8))(v141, v83);
  (*(v131 + 8))(v137, v138);
  result = (*(v130 + 8))(v135, v136);
  v109 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF109C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X4>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v11 = a4(0, a2, a3);
  *(a5 + v11[10]) = 0.0;
  *(a5 + v11[11]) = 0;
  *a5 = a6;
  a5[1] = a7;
  v12 = a5 + v11[9];
  return a1();
}

uint64_t sub_213CF1118@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  result = sub_213D9125C();
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6 & 1;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_213CF1180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *a3 = v8;
  *(a3 + 8) = v10;
  (*(v6 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = sub_213D9127C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = (*(v6 + 8))(a1, a2);
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15 & 1;
  *(a3 + 40) = v17;
  return result;
}

uint64_t sub_213CF1304@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char a3@<W6>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  *(a4 + v14[10]) = 0.0;
  *(a4 + v14[11]) = 0;
  *a4 = a5;
  a4[1] = a6;
  v15 = a4 + v14[9];
  sub_213D9155C();
  sub_213CED488(a1, a2, a3 & 1);
}

uint64_t sub_213CF1470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t *a6@<X7>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, uint64_t *a10)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a10);
  *(a7 + v18[10]) = 0.0;
  *(a7 + v18[11]) = 0;
  *a7 = a8;
  a7[1] = a9;
  v19 = a7 + v18[9];
  sub_213D9155C();
  sub_213CED488(a2, a3, a4 & 1);

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_213CF16A4@<X0>(uint64_t *a1@<X6>, uint64_t *a2@<X7>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  *(a3 + v8[10]) = 0.0;
  *(a3 + v8[11]) = 0;
  *a3 = a4;
  a3[1] = a5;
  v9 = a3 + v8[9];
  sub_213D9155C();
}

uint64_t sub_213CF179C@<X0>(uint64_t a1@<X8>)
{

  result = sub_213D9125C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_213CF188C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a5 + v12[10]) = 0.0;
  *(a5 + v12[11]) = 0;
  *a5 = a6;
  a5[1] = a7;
  v13 = a5 + v12[9];
  sub_213D9155C();

  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t sub_213CF1998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_213D9127C();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_213CF1A84@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 placemark];
  v7 = [v6 location];

  if (v7)
  {
    [v7 coordinate];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    sub_213D9193C();
  }

  sub_213CEFA54();
  result = sub_213D9127C();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = result;
  *(a3 + 24) = v16;
  *(a3 + 32) = v15 & 1;
  *(a3 + 40) = v17;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  return result;
}

uint64_t static SelectedMarker._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v51 = *(v52 - 8);
  v59 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F8, &qword_213D95DA0);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v56 = sub_213D9057C();
  v55 = *(v56 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v18 = &v49 - v17;
  v58 = a5;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v63 = a3;
  v64 = a4;
  type metadata accessor for SelectedMarker();
  v19 = sub_213D9057C();
  sub_213D514F4(sub_213CF31B0, v19, a3, v18);
  v50 = type metadata accessor for _MapContentInputs(0);
  v20 = v61;
  v21 = v61 + *(v50 + 20);
  v54 = v18;
  v53 = a4;
  sub_213D90CAC();
  v22 = sub_213CDF810(a1);
  v23 = v62;
  v24 = *(v62 + 16);
  v57 = v15;
  v25 = v15;
  v26 = v10;
  v24(v12, v25, v10);
  if (v11 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = *v12;
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v28 = v30;
  v31 = v12;
  v32 = v26;
  v30(v31, v26);
  v33 = v60;
  v34 = v20;
  sub_213D90C3C();
  if (v59 != 4)
  {
    goto LABEL_5;
  }

  v59 = v28;
  v35 = *v33;
  v36 = (*(v51 + 8))(v33, v52);
  v37 = v50;
  v38 = *(v34 + *(v50 + 28));
  *&v70 = __PAIR64__(v27, v22);
  *(&v70 + 1) = __PAIR64__(v38, v35);
  LODWORD(v71) = 0;
  v72 = 0;
  v73 = 771;
  v65 = v70;
  v66 = v71;
  v67 = 771;
  MEMORY[0x28223BE20](v36);
  v62 = v29;
  List = type metadata accessor for SelectedMarker.MakeList();
  *(&v49 - 2) = List;
  *(&v49 - 1) = swift_getWitnessTable();
  v40 = *(List - 8);
  (*(v40 + 16))(v68, &v70, List);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(&v65, sub_213CF3D34, (&v49 - 4), List, MEMORY[0x277D84A98], v41, MEMORY[0x277D84AC0], v42);
  v68[0] = v65;
  v68[1] = v66;
  v69 = v67;
  v43 = *(v40 + 8);
  v44 = v43(v68, List);
  v45 = *(v37 + 24);
  MEMORY[0x28223BE20](v44);
  *(&v49 - 4) = v46;
  sub_213CD883C();
  sub_213D90F7C();
  v43(&v70, List);
  v59(v57, v32);
  result = (*(v55 + 8))(v54, v56);
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = a4(0);
  v9 = *(v8 + 36);
  v13[2] = v8;
  v13[3] = a2;
  v10 = sub_213D9041C();
  sub_213D48E14(a1 + v9, a5, v13, a2, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  return v13[5];
}

uint64_t sub_213CF223C(uint64_t a1)
{
  v2 = v1;
  v145 = *MEMORY[0x277D85DE8];
  v113 = type metadata accessor for MapContentList.Item.Content(0);
  v4 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for MapContentList.Item(0);
  v117 = *(v115 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  v114 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v118 = &v103 - v9;
  v112 = type metadata accessor for ResolvedMarker();
  v10 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v124 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_213D90C0C();
  v126 = *(v121 - 8);
  v12 = *(v126 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v132 = &v103 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v119 = *(v17 - 8);
  v18 = *(v119 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v103 - v19;
  v21 = sub_213D9100C();
  v134 = *(v21 - 8);
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v21);
  v111 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v133 = &v103 - v25;
  v26 = sub_213D90CFC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v122 = a1;
  v33 = type metadata accessor for SelectedMarker();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v103 - v36;
  v38 = *v2;
  Value = AGGraphGetValue();
  v107 = v40;
  v123 = v34;
  v41 = *(v34 + 16);
  v127 = v37;
  v128 = v33;
  v42 = v33;
  v43 = v2;
  v44 = v134;
  v41(v37, Value, v42);
  v45 = v43[1];
  v46 = AGGraphGetValue();
  v106 = v47;
  v125 = v27;
  v48 = *(v27 + 16);
  v129 = v30;
  v130 = v26;
  v109 = v27 + 16;
  v108 = v48;
  v48(v30, v46, v26);
  v49 = v43[3] == *MEMORY[0x277CEF7D0];
  v131 = v21;
  if (v49)
  {
    v50 = v119;
    v51 = v132;
    (*(v119 + 56))(v132, 1, 1, v17);
    v52 = *(v17 + 48);
    sub_213D90FFC();
    v20[v52] = 0;
    if ((*(v50 + 48))(v51, 1, v17) != 1)
    {
      sub_213CF3B08(v132);
    }
  }

  else
  {
    v53 = AGGraphGetValue();
    v55 = v54;
    v56 = *(v17 + 48);
    v57 = v132;
    (*(v134 + 16))(v132, v53, v21);
    v44 = v134;
    *(v57 + v56) = v55 & 1;
    (*(v119 + 56))(v57, 0, 1, v17);
    sub_213CF3968(v57, v20);
  }

  v105 = v20[*(v17 + 48)];
  v58 = *(v44 + 32);
  v119 = v44 + 32;
  v110 = v58;
  v58(v133, v20, v131);
  v59 = *v43;
  v143 = *(v43 + 1);
  v142 = v59;
  v144 = *(v43 + 16);
  v60 = *(&v143 + 1);
  v61 = v120;
  v62 = v122;
  sub_213CF00F8(v120);
  v63 = sub_213D90A7C();
  v64 = v126 + 8;
  v65 = *(v126 + 8);
  v66 = v121;
  v65(v61, v121);
  v67 = v124;
  v132 = v63;
  if (!v63)
  {
    if (!v60)
    {
      (*(*(v62 - 8) + 16))(v140, &v142, v62);
      v104 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v60)
  {
    (*(*(v62 - 8) + 16))(v140, &v142, v62);
LABEL_11:
    v71 = 1;
    goto LABEL_12;
  }

  v68 = *(v62 - 8);
  v126 = v64;
  v69 = v68;
  (*(v68 + 16))(v140, &v142, v62);

  v70 = sub_213D9147C();
  (*(v69 + 8))(&v142, v62);

  v71 = v70 ^ 1;
LABEL_12:
  v104 = v71;
LABEL_13:
  v141 = *(v43 + 16);
  v72 = *(v43 + 1);
  v140[0] = *v43;
  v140[1] = v72;
  v73 = v141;
  sub_213CF00F8(v61);
  sub_213CE3080();
  sub_213D90C1C();
  v65(v61, v66);
  LODWORD(v126) = v137;
  if (v73 == 3)
  {
    v74 = 1;
  }

  else
  {
    v74 = sub_213D904DC() ^ 1;
  }

  v139 = *(v43 + 16);
  v75 = *(v43 + 1);
  v137 = *v43;
  v138 = v75;
  v76 = HIBYTE(v139);
  sub_213CF00F8(v61);
  sub_213CE302C();
  sub_213D90C1C();
  v65(v61, v66);
  v77 = v135;
  v78 = v131;
  if (v76 == 3 || (v102 = sub_213D904DC(), ((v107 | v106 | v104 | v74 | v105) & 1) != 0) || (v102 & 1) == 0 || !AGGraphGetOutputValue())
  {
    LODWORD(v121) = v138 + 1;
    v43[4] = v138 + 1;
    v79 = v127;
    v80 = *v127;
    v81 = v127[1];
    v82 = v112;
    v108(v67 + *(v112 + 32), v129, v130);
    v83 = *(v79 + *(v128 + 40));
    LOBYTE(v79) = *(v79 + *(v128 + 44));
    v84 = *(v134 + 16);
    v85 = v78;
    v86 = v133;
    v84(v67 + v82[12], v133, v85);
    *v67 = v80;
    *(v67 + 8) = v81;
    *(v67 + 16) = v126;
    LODWORD(v122) = v77;
    *(v67 + 17) = v77;
    *(v67 + 18) = 6;
    *(v67 + v82[9]) = v83;
    *(v67 + v82[10]) = v79;
    *(v67 + v82[11]) = v132;
    v87 = v111;
    v88 = v86;
    v78 = v85;
    v84(v111, v88, v85);
    v89 = v116;
    sub_213CF3A40(v67, v116, type metadata accessor for ResolvedMarker);
    swift_storeEnumTagMultiPayload();
    sub_213CDF60C();

    v90 = v83;
    sub_213D9101C();
    v91 = v135;
    if (!v135)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_213D94520;
      *(v91 + 32) = 0;
      *(v91 + 72) = 0;
    }

    v92 = v114;
    *v114 = v91;
    v93 = v115;
    v110(v92 + *(v115 + 28), v87, v85);
    *(v92 + 8) = v121;
    sub_213CF39D8(v89, v92 + *(v93 + 24), type metadata accessor for MapContentList.Item.Content);
    v94 = v118;
    sub_213CF39D8(v92, v118, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v95 = *(v117 + 72);
    v96 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_213D94520;
    sub_213CF3A40(v94, v97 + v96, type metadata accessor for MapContentList.Item);
    v135 = sub_213D71A68(v97);
    v136 = v98;
    AGGraphSetOutputValue();
    sub_213CF3AA8(v94, type metadata accessor for MapContentList.Item);
    sub_213CF3AA8(v67, type metadata accessor for ResolvedMarker);

    LOBYTE(v77) = v122;
  }

  *(v43 + 33) = v77;
  *(v43 + 32) = v126;
  v99 = *(v43 + 3);
  *(v43 + 3) = v132;

  (*(v134 + 8))(v133, v78);
  (*(v125 + 8))(v129, v130);
  result = (*(v123 + 8))(v127, v128);
  v101 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF3084@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_213CF3B90(v2, v3, v4);
}

uint64_t sub_213CF30D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_213CF179C(a1);
}

uint64_t sub_213CF3120@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = sub_213D9151C();
  *a1 = result;
  return result;
}

uint64_t sub_213CF3168@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = sub_213D9154C();
  *a1 = result;
  return result;
}

void sub_213CF320C()
{
  if (!qword_27C8EA798[0])
  {
    sub_213CF3264();
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8EA798);
    }
  }
}

unint64_t sub_213CF3264()
{
  result = qword_27C8EB510;
  if (!qword_27C8EB510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8EB510);
  }

  return result;
}

void sub_213CF32B0(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_213CF320C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213CF3358(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v7 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v9];
    if (a1[v9])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = &a1[v6 + 16] & ~v6;
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(v18);
  }

  v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  if ((v19 + 1) >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

void sub_213CF34D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
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
      v18 = &a1[v9 + 16] & ~v9;
      if (v7 < 0x7FFFFFFE)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = 0;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v20 = a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t sub_213CF36D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CF3728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213CF3784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_213CF37DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CF382C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213CF3888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ResolvedMarker()
{
  result = qword_27C8EA938;
  if (!qword_27C8EA938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213CF3968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CF39D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CF3A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CF3AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CF3B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213CF3B70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_213D48EF0(a1, a2);
}

uint64_t sub_213CF3B90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_213CF3BC8()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_213CF3CE4(319, qword_27C8EA948);
    if (v1 <= 0x3F)
    {
      sub_213D90CFC();
      if (v2 <= 0x3F)
      {
        sub_213CF320C();
        if (v3 <= 0x3F)
        {
          sub_213CF3CE4(319, &qword_27C8EA248);
          if (v4 <= 0x3F)
          {
            sub_213D9100C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213CF3CE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_213D91C7C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_213CF3D9C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

void UserAnnotation.init<>(anchor:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t UserAnnotation.init<>()@<X0>(void *a1@<X8>)
{
  result = sub_213D917CC();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t sub_213CF409C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t UserAnnotation.init(anchor:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t static UserAnnotation._makeMapContent(content:inputs:)(unsigned int *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-v7];
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  type metadata accessor for UserAnnotation();
  v9 = sub_213CDF810(a1);
  sub_213D90C3C();
  if (v6 != 4)
  {
    __break(1u);
  }

  v10 = *v8;
  (*(v5 + 8))(v8, v4);
  v11 = type metadata accessor for _MapContentInputs(0);
  v12 = *(a2 + *(v11 + 28));
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = 0;
  v23 = 0;
  v24 = 6;
  MEMORY[0x28223BE20](v11);
  List = type metadata accessor for UserAnnotation.MakeList();
  *&v21[-16] = List;
  *&v21[-8] = swift_getWitnessTable();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(v22, sub_213CF3038, &v21[-32], List, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);

  v17 = *(v11 + 24);
  MEMORY[0x28223BE20](v16);
  *&v21[-16] = v18;
  sub_213CD82DC();
  result = sub_213D90F7C();
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF438C(uint64_t a1)
{
  v117 = *MEMORY[0x277D85DE8];
  v97 = type metadata accessor for MapContentList.Item.Content(0);
  v3 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for MapContentList.Item(0);
  v101 = *(v99 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v102 = &v89 - v8;
  v96 = type metadata accessor for ResolvedUserAnnotation();
  v9 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_213D90C0C();
  *&v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v108);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v23 = sub_213D9100C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v95 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = &v89 - v28;
  v29 = *v1;
  v30 = *(a1 + 24);
  v93 = *(a1 + 16);
  v92 = v30;
  type metadata accessor for UserAnnotation();
  Value = AGGraphGetValue();
  v91 = v32;
  v33 = *Value;
  v34 = Value[1];
  v36 = Value[2];
  v35 = Value[3];
  v104 = v1;
  v37 = v1[2];
  v38 = *MEMORY[0x277CEF7D0];
  v111 = v23;
  v106 = v35;
  v107 = v24;
  v109 = v36;
  if (v37 == v38)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    v39 = *(v18 + 48);
    sub_213CD4E28(v36);
    sub_213D90FFC();
    v22[v39] = 0;
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_213CF3B08(v17);
    }
  }

  else
  {
    sub_213CD4E28(v36);
    v40 = AGGraphGetValue();
    v42 = v41;
    v43 = *(v18 + 48);
    (*(v24 + 16))(v17, v40, v23);
    v17[v43] = v42 & 1;
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_213CF3968(v17, v22);
  }

  v90 = v22[*(v18 + 48)];
  v44 = v107;
  v45 = v107 + 32;
  v94 = *(v107 + 32);
  v94(v110, v22, v111);
  v46 = v104;
  v47 = *(v104 + 2);
  v48 = *(v104 + 24);
  v114 = *v104;
  v115 = v47;
  v116 = v48;
  sub_213CF520C(v13);
  v49 = sub_213D90A7C();
  v50 = *(v103 + 8);
  v50(v13, v108);
  v51 = (v49 | v47) != 0;
  if (v49 && v47)
  {

    v52 = sub_213D9147C();

    v51 = v52 ^ 1;
  }

  v53 = *(v46 + 2);
  v54 = *(v46 + 24);
  v103 = *v46;
  v114 = v103;
  v115 = v53;
  v116 = v54;
  sub_213CF520C(v13);
  sub_213CEF738();
  sub_213D90C1C();
  OutputValue = (v50)(v13, v108);
  v56 = v112;
  v57 = *(v46 + 24);
  if (v112 == 6)
  {
    v58 = v109;
    if ((v57 != 6) | v91 & 1 | v51 & 1 | v90 & 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v58 = v109;
    if (v57 == 6)
    {
      goto LABEL_25;
    }

    switch(v112)
    {
      case 5u:
        v59 = v57 == 5;
        break;
      case 4u:
        v59 = v57 == 4;
        break;
      case 3u:
        v59 = v57 == 3;
        break;
      default:
        if ((v57 - 3) < 3 || ((v91 | v51 | v90) & 1) != 0 || v112 != v57)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
    }

    v60 = !v59;
    if ((v60 | v91 | v51 | v90))
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    *(v46 + 24) = v56;
    v61 = *(v46 + 2);
    *(v46 + 2) = v49;
    v62 = v111;
    goto LABEL_34;
  }

LABEL_25:
  LODWORD(v108) = v56;
  if (v58)
  {
    v63 = v106;
  }

  else
  {
    v63 = 0;
  }

  v112 = v58;
  v113 = v63;
  MEMORY[0x28223BE20](OutputValue);
  v64 = v92;
  *(&v89 - 2) = v93;
  *(&v89 - 1) = v64;
  sub_213CD4E28(v58);
  swift_getFunctionTypeMetadata1();
  sub_213D91C7C();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAB50, &unk_213D96390);
  sub_213CF3D9C(sub_213CF6198, (&v89 - 4), MEMORY[0x277D84A98], v65, v66, &v114);
  sub_213CCE520(v58);
  v67 = v114;
  v89 = v45;
  if (v114)
  {
    v68 = *(&v114 + 1);
    v69 = swift_allocObject();
    *(v69 + 16) = v67;
    *(v69 + 24) = v68;
    v67 = sub_213CF6294;
  }

  else
  {
    v69 = 0;
  }

  v70 = HIDWORD(v103) + 1;
  v46[3] = HIDWORD(v103) + 1;
  v71 = *(v44 + 16);
  v72 = v105;
  v74 = v110;
  v73 = v111;
  v71(v105 + *(v96 + 32), v110, v111);
  *v72 = v33;
  *(v72 + 8) = v34;
  *(v72 + 16) = v67;
  *(v72 + 24) = v69;
  *(v72 + 32) = v49;
  *(v72 + 40) = v108;
  v75 = v95;
  v71(v95, v74, v73);
  v76 = v100;
  sub_213CF61CC(v72, v100, type metadata accessor for ResolvedUserAnnotation);
  swift_storeEnumTagMultiPayload();
  sub_213CDF60C();

  sub_213D9101C();
  v77 = v114;
  if (!v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_213D94520;
    *(v77 + 32) = 0;
    *(v77 + 72) = 0;
  }

  v78 = v98;
  *v98 = v77;
  v79 = v99;
  v80 = v75;
  v62 = v111;
  v94((v78 + *(v99 + 28)), v80, v111);
  *(v78 + 8) = v70;
  sub_213CF39D8(v76, v78 + *(v79 + 24), type metadata accessor for MapContentList.Item.Content);
  v81 = v102;
  sub_213CF39D8(v78, v102, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v82 = *(v101 + 72);
  v83 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_213D94520;
  sub_213CF61CC(v81, v84 + v83, type metadata accessor for MapContentList.Item);
  *&v114 = sub_213D71A68(v84);
  *(&v114 + 1) = v85;
  AGGraphSetOutputValue();
  sub_213CF6234(v81, type metadata accessor for MapContentList.Item);
  sub_213CF6234(v105, type metadata accessor for ResolvedUserAnnotation);

  *(v46 + 24) = v108;
  v86 = *(v46 + 2);
  *(v46 + 2) = v49;
  v44 = v107;
LABEL_34:

  sub_213CCE520(v109);

  result = (*(v44 + 8))(v110, v62);
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF4EBC(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static UserAnnotation._makeMapContent(content:inputs:)(a1, a2);
}

void *sub_213CF4EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *(a6 + 16) = a5;
  *(a6 + 24) = result;
  return result;
}

uint64_t static SelectedUserAnnotation._makeMapContent(content:inputs:)(unsigned int *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-v7];
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  type metadata accessor for SelectedUserAnnotation();
  v9 = sub_213CDF810(a1);
  sub_213D90C3C();
  if (v6 != 4)
  {
    __break(1u);
  }

  v10 = *v8;
  (*(v5 + 8))(v8, v4);
  v11 = type metadata accessor for _MapContentInputs(0);
  v12 = *(a2 + *(v11 + 28));
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = 0;
  v23 = 0;
  v24 = 6;
  MEMORY[0x28223BE20](v11);
  List = type metadata accessor for SelectedUserAnnotation.MakeList();
  *&v21[-16] = List;
  *&v21[-8] = swift_getWitnessTable();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(v22, sub_213CF3D34, &v21[-32], List, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);

  v17 = *(v11 + 24);
  MEMORY[0x28223BE20](v16);
  *&v21[-16] = v18;
  sub_213CD87E8();
  result = sub_213D90F7C();
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF520C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = sub_213D90C0C();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a1, Value, v4);
}

uint64_t sub_213CF5294(uint64_t a1)
{
  v117 = *MEMORY[0x277D85DE8];
  v97 = type metadata accessor for MapContentList.Item.Content(0);
  v3 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for MapContentList.Item(0);
  v101 = *(v99 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v102 = &v89 - v8;
  v96 = type metadata accessor for ResolvedUserAnnotation();
  v9 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_213D90C0C();
  *&v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v108);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v23 = sub_213D9100C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v95 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = &v89 - v28;
  v29 = *v1;
  v30 = *(a1 + 24);
  v93 = *(a1 + 16);
  v92 = v30;
  type metadata accessor for SelectedUserAnnotation();
  Value = AGGraphGetValue();
  v91 = v32;
  v33 = *Value;
  v34 = Value[1];
  v36 = Value[2];
  v35 = Value[3];
  v104 = v1;
  v37 = v1[2];
  v38 = *MEMORY[0x277CEF7D0];
  v111 = v23;
  v106 = v35;
  v107 = v24;
  v109 = v36;
  if (v37 == v38)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    v39 = *(v18 + 48);
    sub_213CD4E28(v36);
    sub_213D90FFC();
    v22[v39] = 0;
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_213CF3B08(v17);
    }
  }

  else
  {
    sub_213CD4E28(v36);
    v40 = AGGraphGetValue();
    v42 = v41;
    v43 = *(v18 + 48);
    (*(v24 + 16))(v17, v40, v23);
    v17[v43] = v42 & 1;
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_213CF3968(v17, v22);
  }

  v90 = v22[*(v18 + 48)];
  v44 = v107;
  v45 = v107 + 32;
  v94 = *(v107 + 32);
  v94(v110, v22, v111);
  v46 = v104;
  v47 = *(v104 + 2);
  v48 = *(v104 + 24);
  v114 = *v104;
  v115 = v47;
  v116 = v48;
  sub_213CF520C(v13);
  v49 = sub_213D90A7C();
  v50 = *(v103 + 8);
  v50(v13, v108);
  v51 = (v49 | v47) != 0;
  if (v49 && v47)
  {

    v52 = sub_213D9147C();

    v51 = v52 ^ 1;
  }

  v53 = *(v46 + 2);
  v54 = *(v46 + 24);
  v103 = *v46;
  v114 = v103;
  v115 = v53;
  v116 = v54;
  sub_213CF520C(v13);
  sub_213CEF738();
  sub_213D90C1C();
  OutputValue = (v50)(v13, v108);
  v56 = v112;
  v57 = *(v46 + 24);
  if (v112 == 6)
  {
    v58 = v109;
    if ((v57 != 6) | v91 & 1 | v51 & 1 | v90 & 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v58 = v109;
    if (v57 == 6)
    {
      goto LABEL_25;
    }

    switch(v112)
    {
      case 5u:
        v59 = v57 == 5;
        break;
      case 4u:
        v59 = v57 == 4;
        break;
      case 3u:
        v59 = v57 == 3;
        break;
      default:
        if ((v57 - 3) < 3 || ((v91 | v51 | v90) & 1) != 0 || v112 != v57)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
    }

    v60 = !v59;
    if ((v60 | v91 | v51 | v90))
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    *(v46 + 24) = v56;
    v61 = *(v46 + 2);
    *(v46 + 2) = v49;
    v62 = v111;
    goto LABEL_34;
  }

LABEL_25:
  LODWORD(v108) = v56;
  if (v58)
  {
    v63 = v106;
  }

  else
  {
    v63 = 0;
  }

  v112 = v58;
  v113 = v63;
  MEMORY[0x28223BE20](OutputValue);
  v64 = v92;
  *(&v89 - 2) = v93;
  *(&v89 - 1) = v64;
  sub_213CD4E28(v58);
  swift_getFunctionTypeMetadata1();
  sub_213D91C7C();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAB50, &unk_213D96390);
  sub_213CF3D9C(sub_213CF62EC, (&v89 - 4), MEMORY[0x277D84A98], v65, v66, &v114);
  sub_213CCE520(v58);
  v67 = v114;
  v89 = v45;
  if (v114)
  {
    v68 = *(&v114 + 1);
    v69 = swift_allocObject();
    *(v69 + 16) = v67;
    *(v69 + 24) = v68;
    v67 = sub_213CF6508;
  }

  else
  {
    v69 = 0;
  }

  v70 = HIDWORD(v103) + 1;
  v46[3] = HIDWORD(v103) + 1;
  v71 = *(v44 + 16);
  v72 = v105;
  v74 = v110;
  v73 = v111;
  v71(v105 + *(v96 + 32), v110, v111);
  *v72 = v33;
  *(v72 + 8) = v34;
  *(v72 + 16) = v67;
  *(v72 + 24) = v69;
  *(v72 + 32) = v49;
  *(v72 + 40) = v108;
  v75 = v95;
  v71(v95, v74, v73);
  v76 = v100;
  sub_213CF61CC(v72, v100, type metadata accessor for ResolvedUserAnnotation);
  swift_storeEnumTagMultiPayload();
  sub_213CDF60C();

  sub_213D9101C();
  v77 = v114;
  if (!v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_213D94520;
    *(v77 + 32) = 0;
    *(v77 + 72) = 0;
  }

  v78 = v98;
  *v98 = v77;
  v79 = v99;
  v80 = v75;
  v62 = v111;
  v94((v78 + *(v99 + 28)), v80, v111);
  *(v78 + 8) = v70;
  sub_213CF39D8(v76, v78 + *(v79 + 24), type metadata accessor for MapContentList.Item.Content);
  v81 = v102;
  sub_213CF39D8(v78, v102, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v82 = *(v101 + 72);
  v83 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_213D94520;
  sub_213CF61CC(v81, v84 + v83, type metadata accessor for MapContentList.Item);
  *&v114 = sub_213D71A68(v84);
  *(&v114 + 1) = v85;
  AGGraphSetOutputValue();
  sub_213CF6234(v81, type metadata accessor for MapContentList.Item);
  sub_213CF6234(v105, type metadata accessor for ResolvedUserAnnotation);

  *(v46 + 24) = v108;
  v86 = *(v46 + 2);
  *(v46 + 2) = v49;
  v44 = v107;
LABEL_34:

  sub_213CCE520(v109);

  result = (*(v44 + 8))(v110, v62);
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF5DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = *v5;
  v6(&v8);
  result = sub_213D915DC();
  *a3 = result;
  return result;
}

uint64_t sub_213CF5E74(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static SelectedUserAnnotation._makeMapContent(content:inputs:)(a1, a2);
}

uint64_t sub_213CF5EFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI12UserLocationVxRi_zRi0_zlyxIsegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213CF5F60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CF5F9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213CF5FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_213CF6060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213CF60BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ResolvedUserAnnotation()
{
  result = qword_27C8EAB58;
  if (!qword_27C8EAB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213CF61CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CF6234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CF6294()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_213CF62CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_213CF5DC0(a1, v2[2], a2);
}

uint64_t sub_213CF6320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v3 + 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a3 = a2;
  a3[1] = v8;
}

void sub_213CF63B0()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_213CF649C();
    if (v1 <= 0x3F)
    {
      sub_213CF3CE4(319, &qword_27C8EA248);
      if (v2 <= 0x3F)
      {
        sub_213CF3CE4(319, qword_27C8EA948);
        if (v3 <= 0x3F)
        {
          sub_213D9100C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213CF649C()
{
  if (!qword_27C8EAB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C8EB4E0, &qword_213D9B480);
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EAB68);
    }
  }
}

uint64_t type metadata accessor for MultiPreferenceCombinerVisitor()
{
  result = qword_27C8EAB70;
  if (!qword_27C8EAB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213CF65A0()
{
  sub_213CF6624();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _MapContentOutputs(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213CF6624()
{
  if (!qword_27C8EAB80)
  {
    type metadata accessor for _MapContentOutputs(255);
    v0 = sub_213D91ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EAB80);
    }
  }
}

uint64_t sub_213CF667C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_213D91B7C();
  if (!v26)
  {
    return sub_213D91A3C();
  }

  v48 = v26;
  v52 = sub_213D91E5C();
  v39 = sub_213D91E6C();
  sub_213D91E0C();
  result = sub_213D91B6C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_213D91BAC();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_213D91E4C();
      result = sub_213D91B9C();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CF6A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_213D91C7C();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v38);
  v45 = &v36 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v44 = &v36 - v15;
  v46 = a3;
  v47 = a4;
  sub_213D906FC();
  sub_213D903CC();
  result = sub_213D91A7C();
  if (result)
  {
    v17 = 0;
    v42 = (v12 + 56);
    v43 = (v12 + 8);
    v18 = (v12 + 32);
    v39 = (v12 + 48);
    v40 = (v12 + 16);
    v37 = (v9 + 8);
    v19 = (a1 + 36);
    v20 = 1;
    v41 = a1;
    do
    {
      v24 = sub_213D91A5C();
      result = sub_213D91A0C();
      if (v24)
      {
        v25 = *(v19 - 1);
        v26 = *v19;
        v27 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_213D91DAC();
        result = swift_unknownObjectRelease();
        v27 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_15:
          __break(1u);
          return result;
        }
      }

      if (v20)
      {
        v28 = v18;
        WeakValue = AGGraphGetWeakValue();
        v30 = v47;
        if (WeakValue)
        {
          v31 = v45;
          (*v40)(v45, WeakValue, AssociatedTypeWitness);
          (*v43)(v30, AssociatedTypeWitness);
          (*v42)(v31, 0, 1, AssociatedTypeWitness);
          v32 = v44;
          v33 = v31;
          v18 = v28;
          (*v28)(v44, v33, AssociatedTypeWitness);
        }

        else
        {
          v34 = v45;
          (*v42)(v45, 1, 1, AssociatedTypeWitness);
          v32 = v44;
          sub_213D906FC();
          (*v43)(v30, AssociatedTypeWitness);
          v35 = (*v39)(v34, 1, AssociatedTypeWitness);
          v18 = v28;
          if (v35 != 1)
          {
            (*v37)(v45, v38);
          }
        }

        (*v18)(v30, v32, AssociatedTypeWitness);
      }

      else
      {
        MEMORY[0x28223BE20](result);
        v21 = v46;
        *(&v36 - 4) = a2;
        *(&v36 - 3) = v21;
        *(&v36 - 4) = v22;
        *(&v36 - 3) = v23;
        sub_213D9070C();
      }

      result = sub_213D91A7C();
      v20 = 0;
      v19 += 2;
      ++v17;
    }

    while (v27 != result);
  }

  return result;
}

uint64_t sub_213CF6EA4@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_213D91C7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v9 = *(AssociatedTypeWitness - 8);
    (*(v9 + 16))(v7, WeakValue, AssociatedTypeWitness);
    (*(v9 + 56))(v7, 0, 1, AssociatedTypeWitness);
    return (*(v9 + 32))(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 56))(v7, 1, 1, AssociatedTypeWitness);
    sub_213D906FC();
    result = (*(v11 + 48))(v7, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_213CF7104(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_213CF7BFC();
}

uint64_t sub_213CF7110@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, Value, AssociatedTypeWitness);
  return sub_213D9070C();
}

uint64_t sub_213CF71F0@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

uint64_t sub_213CF7294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_213CF7314@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_213CF7110(a1);
}

uint64_t sub_213CF7324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[6] = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_213D9057C();
  v8 = sub_213D91C7C();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v32 = v3;
  v34[0] = *v3;
  v34[3] = a2;
  v34[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAB88, &qword_213D96418);
  v12 = sub_213D903FC();
  sub_213CF797C();
  v13 = sub_213D919BC();

  v14 = sub_213D91A7C();
  if (v14 == 2)
  {
    sub_213D91ADC();
    v17 = v34[0];
    sub_213D91ADC();

    v29 = &v28;
    v34[0] = __PAIR64__(v34[0], v17);
    MEMORY[0x28223BE20](v18);
    v30 = v8;
    *(&v28 - 4) = AssociatedTypeWitness;
    v19 = type metadata accessor for PairPreferenceCombiner();
    *(&v28 - 3) = v19;
    *(&v28 - 2) = swift_getWitnessTable();
    sub_213CDDDA4(v34, sub_213CF7C54, (&v28 - 6), v19, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v20);
LABEL_8:
    sub_213CDF770(v33, v11);
    (*(*(v7 - 8) + 56))(v11, 0, 1, v7);
    v26 = v32 + *(type metadata accessor for MultiPreferenceCombinerVisitor() + 20);
    sub_213CD8678(v11);
    result = (*(v31 + 8))(v11, v30);
    goto LABEL_9;
  }

  if (v14 == 1)
  {
    sub_213D91ADC();

    sub_213CDF770(v34[0], v11);
    (*(*(v7 - 8) + 56))(v11, 0, 1, v7);
    v16 = v32 + *(type metadata accessor for MultiPreferenceCombinerVisitor() + 20);
    sub_213CD8678(v11);
    result = (*(v31 + 8))(v11, v8);
    goto LABEL_9;
  }

  if (v14)
  {
    v21 = sub_213CF79E0(v13, a2, a3);
    v28 = v21;

    v29 = &v28;
    v34[0] = v21;
    MEMORY[0x28223BE20](v22);
    *(&v28 - 4) = AssociatedTypeWitness;
    v23 = type metadata accessor for PreferenceCombiner();
    v30 = v8;
    v24 = v23;
    *(&v28 - 3) = v23;
    *(&v28 - 2) = swift_getWitnessTable();
    sub_213CDDDA4(v34, sub_213CDE72C, (&v28 - 6), v24, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v25);

    goto LABEL_8;
  }

LABEL_9:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CF77D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_213D9057C();
  v6 = sub_213D91C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  sub_213CD7014();
  v15 = a1;
  v16 = a2;
  v11 = sub_213D903FC();
  sub_213CF3D9C(sub_213CD8B34, v14, MEMORY[0x277D84A98], v11, v12, a3);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_213CF797C()
{
  result = qword_27C8EAB90[0];
  if (!qword_27C8EAB90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAB88, &qword_213D96418);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8EAB90);
  }

  return result;
}

uint64_t sub_213CF79E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  sub_213D903FC();
  v3 = sub_213D91ABC();
  v4 = sub_213D903CC();
  WitnessTable = swift_getWitnessTable();
  return sub_213CF667C(sub_213CF7AF4, v8, v3, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t sub_213CF7AF4@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AGCreateWeakAttribute();
  *a2 = result;
  return result;
}

uint64_t sub_213CF7B28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CF7B70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CF7BE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_213CF6EA4(a1);
}

uint64_t sub_213CF7BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_213CF71F0(a1);
}

uint64_t sub_213CF7BFC()
{
  v0 = sub_213D9205C();
  MEMORY[0x21604EB30](v0);

  return 548047074;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_213CF7C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213CF7CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_213CF7D58@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = sub_213D9149C();
  *(a1 + 8) = v8;
  *(a1 + 16) = v3;
  *(a1 + 17) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v8;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_213CF7DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_213CF7E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213CF7E7C()
{
  result = qword_27C8E9700;
  if (!qword_27C8E9700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAC98, &qword_213D96730);
    sub_213CF7F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9700);
  }

  return result;
}

unint64_t sub_213CF7F08()
{
  result = qword_27C8E9678;
  if (!qword_27C8E9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EACA0, qword_213D96738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9678);
  }

  return result;
}

uint64_t sub_213CF7F88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D9152C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = v8;
  result = sub_213D9150C();
  if (v10 == 1)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v13 = sub_213D9153C();

    (*(v4 + 8))(v7, v3);
    result = v13;
  }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v9;
  return result;
}

unint64_t sub_213CF80D8()
{
  result = qword_27C8E96F8;
  if (!qword_27C8E96F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C8EACA8, &unk_213D96790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E96F8);
  }

  return result;
}

uint64_t MapAnnotation.init(coordinate:anchorPoint:content:)@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  v7 = a2 + *(type metadata accessor for MapAnnotation() + 40);
  return a1();
}

uint64_t MapAnnotation._annotationData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = v8[1];
  (*(v4 + 16))(v7, v6);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v12 + v11, v7, a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = 2;
  *(a2 + 24) = sub_213CF8508;
  *(a2 + 32) = v12;
  return result;
}

void sub_213CF8304(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftUIAnnotationView();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for MapAnnotation();
    (*(v7 + 16))(v10, a3 + *(v13 + 40), a4);
    v14 = a1;
    v15 = sub_213D915DC();
    v16 = *&v12[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView];
    *&v12[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = v15;

    v17 = *&v12[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
    v24[1] = v15;
    sub_213D907FC();
    v18 = [v17 superview];
    if (v18)
    {
    }

    else
    {
      [v12 addSubview_];
    }

    sub_213D8C140();

    v19 = *(a3 + 16);
    v20 = *(a3 + 24);
    v21 = &v12[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
    *v21 = v19;
    v21[1] = v20;
    [v12 frame];
    [v12 setCenterOffset_];
  }
}

void sub_213CF8508(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MapAnnotation() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_213CF8304(a1, a2, v8, v5);
}

uint64_t MapPin.init(coordinate:tint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

double sub_213CF85D8(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  sub_213CF86C4(a1, a2, v2[4], 0x277CD4EF0, &selRef_setPinTintColor_);
  return result;
}

uint64_t sub_213CF8650@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v10;
}

void sub_213CF86C4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  v8 = *a4;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    if (a3)
    {
      v10 = v9;
      sub_213CF8EE0();
      swift_retain_n();
      v13 = a1;
      v11 = sub_213D91C3C();
      [v10 *a5];
    }

    else
    {
      v12 = *a5;

      [v9 v12];
    }
  }
}

double sub_213CF87CC(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  sub_213CF86C4(a1, a2, v2[4], 0x277CD4ED0, &selRef_setMarkerTintColor_);
  return result;
}

uint64_t sub_213CF8820@<X0>(char a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v10;
}

void sub_213CF88AC(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213CF894C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_213CF8AB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 32) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

  v18(v19);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_213CF8D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213CF8D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213CF8DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213CF8E20(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_213CF8E8C()
{
  result = qword_27C8EAD30;
  if (!qword_27C8EAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EAD30);
  }

  return result;
}

unint64_t sub_213CF8EE0()
{
  result = qword_27C8E9370;
  if (!qword_27C8E9370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8E9370);
  }

  return result;
}

uint64_t View.mapCameraKeyframeAnimator<A, B>(trigger:keyframes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getKeyPath();
  sub_213CEEF30(a1, a5);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = a2;
  v16[9] = a3;

  sub_213D9130C();
}

uint64_t sub_213CF904C()
{
  sub_213CF9624();
  sub_213D90C1C();
  return v1;
}

double sub_213CF908C@<D0>(uint64_t a1@<X8>)
{
  sub_213CF9624();
  sub_213D90C1C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_213CF90E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  sub_213CF95E4(*a1);
  sub_213CF9624();
  return sub_213D90C2C();
}

uint64_t sub_213CF9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v18 = *(v17 + 16);
  v22[0] = *v17;
  v22[1] = v18;
  v23 = *(v17 + 32);
  v19(v22);
  MEMORY[0x21604DB00](v14, &type metadata for MapCamera, a6, a9);
  v20 = *(v10 + 8);
  v20(v14, a6);
  MEMORY[0x21604DB20](v16, &type metadata for MapCamera, a6, a9);
  MEMORY[0x21604DB10](v14, &type metadata for MapCamera, a6, a9);
  v20(v14, a6);
  return (v20)(v16, a6);
}

void sub_213CF92CC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_213CF92D8(__int128 *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 72);
  v9 = a1[1];
  v10 = *(a1 + 4);
  v8 = *a1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  return sub_213D908EC();
}

unint64_t sub_213CF9368()
{
  result = qword_27C8EAD40;
  if (!qword_27C8EAD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAD38, &qword_213D96928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EAD40);
  }

  return result;
}

uint64_t type metadata accessor for KeyframeAnimationState()
{
  result = qword_27C8EAD48;
  if (!qword_27C8EAD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213CF9440()
{
  sub_213CF94C4();
  if (v0 <= 0x3F)
  {
    sub_213D9031C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213CF94C4()
{
  if (!qword_27C8EAD58)
  {
    v0 = sub_213D9092C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EAD58);
    }
  }
}

uint64_t sub_213CF9514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_213CF955C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213CF95E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_213CF9624()
{
  result = qword_27C8EAD60[0];
  if (!qword_27C8EAD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8EAD60);
  }

  return result;
}

MKMapItemRequest __swiftcall MKMapItemRequest.init(feature:)(_MapKit_SwiftUI::MapFeature feature)
{
  v1 = *feature.mapFeatureAnnotation.super.isa;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMapFeatureAnnotation_];

  return v2;
}

id MKMapItemRequest.feature.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 mapFeatureAnnotation];
  if (!v3)
  {
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277CBE658];
    v6 = sub_213D9190C();
    [v4 raise:v5 format:v6 arguments:sub_213D9206C()];
    v3 = v6;
  }

  result = [v1 mapFeatureAnnotation];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MKMapItemRequest.mapFeature.getter@<X0>(void *a1@<X8>)
{
  result = [v1 mapFeatureAnnotation];
  *a1 = result;
  return result;
}

uint64_t sub_213CF97E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_213D915AC();
  if (v3 <= 0x3F)
  {
    result = sub_213D9162C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_213CF9864(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_213CF99C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v6;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t View.onMapCameraChange(frequency:_:)(char *a1, uint64_t a2, uint64_t a3)
{
  return sub_213CF9E18(a1, a2, a3);
}

{
  return sub_213CF9E18(a1, a2, a3);
}

uint64_t sub_213CF9C14()
{
  sub_213CFA504();
  sub_213D90C1C();
  return v1;
}

uint64_t sub_213CF9C50@<X0>(void *a1@<X8>)
{
  sub_213CFA504();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CF9CA0(uint64_t *a1)
{
  v2 = *a1;
  sub_213CFA504();

  return sub_213D90C2C();
}

uint64_t sub_213CF9D00(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_213D6FBFC(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_213D6FBFC((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 24 * v12;
  *(v13 + 32) = a2 & 1;
  *(v13 + 40) = sub_213CFA4DC;
  *(v13 + 48) = v8;
  *a1 = v9;
  return result;
}

uint64_t sub_213CF9E18(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;

  sub_213D913DC();
}

uint64_t sub_213CF9EE0(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_213D6FBFC(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_213D6FBFC((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 24 * v11;
  *(v12 + 32) = a2 & 1;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *a1 = v8;
  return result;
}

double MapCameraUpdateContext.camera.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double MapCameraUpdateContext.region.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  return result;
}

double MapCameraUpdateContext.rect.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213CFA018(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213CFA038(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

unint64_t sub_213CFA09C()
{
  result = qword_27C8EADF0;
  if (!qword_27C8EADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EADE8, &qword_213D96B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EADF0);
  }

  return result;
}

uint64_t sub_213CFA110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_213CFA158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213CFA1AC()
{
  result = qword_27C8EADF8;
  if (!qword_27C8EADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EADF8);
  }

  return result;
}

uint64_t sub_213CFA214@<X0>(void *a1@<X8>)
{
  if (qword_27C8E99C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27C8F7328;
}

unsigned __int8 *sub_213CFA284(unsigned __int8 *result, void *a2, uint64_t a3)
{
  v3 = *result;
  v13 = 1;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v12 = 1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 48);
    do
    {
      if (v3 == *(v6 - 16))
      {
        v8 = *(v6 - 1);
        v7 = *v6;

        sub_213CFA348(a2, v10, v9);
        v8(v9);
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_213CFA348@<X0>(id a1@<X1>, uint64_t result@<X0>, void *a3@<X8>)
{
  v3 = result;
  if (*(result + 104))
  {
    v6 = [a1 camera];
    [v6 centerCoordinate];
    v34 = v8;
    v35 = v7;
    [v6 centerCoordinateDistance];
    v33 = v9;
    [v6 heading];
    v32 = v10;
    [v6 pitch];
    v31 = v11;

    [a1 region];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [a1 visibleMapRect];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    result = swift_beginAccess();
    *v3 = v35;
    *(v3 + 8) = v34;
    *(v3 + 16) = v33;
    *(v3 + 24) = v32;
    *(v3 + 32) = v31;
    *(v3 + 40) = v13;
    *(v3 + 48) = v15;
    *(v3 + 56) = v17;
    *(v3 + 64) = v19;
    *(v3 + 72) = v21;
    *(v3 + 80) = v23;
    *(v3 + 88) = v25;
    *(v3 + 96) = v27;
    *(v3 + 104) = 0;
    *a3 = v35;
    a3[1] = v34;
    a3[2] = v33;
    a3[3] = v32;
    a3[4] = v31;
    a3[5] = v13;
    a3[6] = v15;
    a3[7] = v17;
    a3[8] = v19;
    a3[9] = v21;
    a3[10] = v23;
    a3[11] = v25;
    a3[12] = v27;
  }

  else
  {
    v28 = *(result + 80);
    *(a3 + 4) = *(result + 64);
    *(a3 + 5) = v28;
    a3[12] = *(result + 96);
    v29 = *(result + 16);
    *a3 = *result;
    *(a3 + 1) = v29;
    v30 = *(result + 48);
    *(a3 + 2) = *(result + 32);
    *(a3 + 3) = v30;
  }

  return result;
}

uint64_t sub_213CFA4DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_213CFA504()
{
  result = qword_27C8EAE00;
  if (!qword_27C8EAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EAE00);
  }

  return result;
}

uint64_t StaticMap.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticMap();
  *(a2 + *(v4 + 40)) = 0;
  result = a1();
  *(a2 + *(v4 + 36)) = 0xA000000000000000;
  return result;
}

uint64_t StaticMap.init(locationManager:content:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMap();
  v7 = *(v6 + 40);
  result = a2();
  *(a3 + *(v6 + 36)) = 0xA000000000000000;
  *(a3 + v7) = a1;
  return result;
}

void *StaticMap.init<>(position:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 0;
  return result;
}

void *StaticMap.init<>(position:locationManager:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t StaticMap.init(position:content:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for StaticMap();
  *(a3 + *(v6 + 40)) = 0;
  result = a2();
  *(a3 + *(v6 + 36)) = v5;
  return result;
}

uint64_t StaticMap.init(position:locationManager:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for StaticMap();
  v9 = *(v8 + 40);
  result = a3();
  *(a4 + *(v8 + 36)) = v7;
  *(a4 + v9) = a2;
  return result;
}

uint64_t static StaticMap._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAE10, &qword_213D96C30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  type metadata accessor for StaticMap();
  v24 = a3;
  v25 = a4;
  v26 = a1;
  swift_getWitnessTable();
  sub_213D9128C();
  v12 = type metadata accessor for StaticMap.Child();
  swift_dynamicCast();
  type metadata accessor for StaticMapBridgingView(0);
  v27[0] = v18;
  v27[1] = v19;
  v28 = v20;
  v22 = v12;
  WitnessTable = swift_getWitnessTable();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EAE18, &qword_213D96C38);
  sub_213CDDDA4(v27, sub_213D1D01C, v21, v12, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
  sub_213CDF770(v17[5], v11);
  sub_213D1D0FC(&qword_27C8EAE20, type metadata accessor for StaticMapBridgingView);
  sub_213D9129C();
  result = (*(v8 + 8))(v11, v7);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CFAA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v76 = a3;
  v77 = a5;
  v74 = a4;
  v75 = a2;
  v64 = a6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2F0, &qword_213D97338);
  v62 = *(v63 - 8);
  v67 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v68 = (&v61 - v7);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2F8, &unk_213D97340);
  v65 = *(v66 - 8);
  v82 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v73 = (&v61 - v8);
  v9 = sub_213D9057C();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v61 - v11;
  v12 = type metadata accessor for _MapContentOutputs(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_213D9059C();
  v69 = *(v71 - 8);
  v15 = v69;
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = sub_213D90C5C();
  v70 = *(v21 - 8);
  v22 = v70;
  v23 = *(v70 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for _MapContentInputs(0);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v22 + 16);
  v32(v25, a1, v21, v29);
  v33 = *(v15 + 16);
  v34 = v71;
  v33(v20, v75, v71);
  *&v31[v27[9]] = *MEMORY[0x277CEF7D0];
  (v32)(v31, v25, v21);
  v33(&v31[v27[7]], v20, v34);
  v33(v72, v20, v34);
  v35 = v74;
  v36 = v27[8];
  sub_213D90F1C();
  (*(v69 + 8))(v20, v34);
  (*(v70 + 8))(v25, v21);
  v37 = v77;
  sub_213CD84E0();
  sub_213D90F0C();
  sub_213CD848C();
  sub_213D90F0C();
  sub_213CD883C();
  sub_213D90F0C();
  sub_213CD8438();
  sub_213D90F0C();
  sub_213CD83E4();
  sub_213D90F0C();
  sub_213CD8390();
  sub_213D90F0C();
  sub_213CD82DC();
  sub_213D90F0C();
  sub_213CD87E8();
  sub_213D90F0C();
  v85 = v35;
  v86 = v37;
  type metadata accessor for StaticMap();
  v38 = sub_213D9057C();
  v39 = v79;
  sub_213D514F4(sub_213D1F318, v38, v35, v79);
  v40 = *(v37 + 32);
  v41 = v78;
  v75 = v31;
  v40(v39, v31, v35, v37);
  (*(v80 + 8))(v39, v81);
  v83 = v35;
  v84 = v37;
  v42 = v73;
  result = sub_213D514F4(sub_213D1F320, v38, &type metadata for MapCameraPosition, v73);
  if (v82 == 4)
  {
    v44 = *v42;
    v45 = (*(v65 + 8))(v42, v66);
    MEMORY[0x28223BE20](v45);
    *(&v61 - 2) = v35;
    *(&v61 - 1) = v37;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
    v47 = v68;
    result = sub_213D514F4(sub_213D1F328, v38, v46, v68);
    if (v67 == 4)
    {
      LODWORD(v82) = *v47;
      (*(v62 + 8))(v47, v63);
      v48 = v41;
      LODWORD(v81) = sub_213CD6C60();
      LODWORD(v80) = sub_213CD6C80();
      v49 = sub_213CD6EA8();
      v50 = sub_213CD6F08();
      v51 = sub_213CD6F28();
      v52 = v44;
      v53 = sub_213CD6F48();
      v54 = sub_213CD6EC8();
      v55 = sub_213CD6EE8();
      v56 = type metadata accessor for StaticMap.Child();
      v57 = v64;
      v64[3] = v56;
      v58 = swift_allocObject();
      *v57 = v58;
      v59 = v80;
      v58[4] = v81;
      v58[5] = v59;
      v58[6] = v49;
      v58[7] = v50;
      v58[8] = v51;
      v58[9] = v53;
      v58[10] = v54;
      v58[11] = v55;
      v60 = v82;
      v58[12] = v52;
      v58[13] = v60;
      sub_213D1F330(v48, type metadata accessor for _MapContentOutputs);
      return sub_213D1F330(v75, type metadata accessor for _MapContentInputs);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CFB27C(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for StaticMap();
  v7[3] = a2;
  v4 = sub_213D9041C();
  sub_213D48E14(a1, sub_213CF3B70, v7, a2, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);
  return v7[5];
}

uint64_t sub_213CFB310(uint64_t a1)
{
  v2 = type metadata accessor for StaticMap();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = sub_213D9041C();
  sub_213D48E14(a1 + v3, sub_213D1F400, v7, &type metadata for MapCameraPosition, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);
  return v7[5];
}

uint64_t sub_213CFB3AC(uint64_t a1)
{
  v2 = type metadata accessor for StaticMap();
  v3 = *(v2 + 40);
  v8[2] = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
  v5 = sub_213D9041C();
  sub_213D48E14(a1 + v3, sub_213D1F390, v8, v4, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
  return v8[5];
}

uint64_t sub_213CFB45C()
{
  if (*v0 == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB4C0()
{
  if (*(v0 + 4) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB524()
{
  if (*(v0 + 8) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB588()
{
  if (*(v0 + 12) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB5EC()
{
  if (*(v0 + 16) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB650()
{
  if (*(v0 + 20) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB6B4()
{
  if (*(v0 + 24) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

uint64_t sub_213CFB718()
{
  if (*(v0 + 28) == *MEMORY[0x277CEF7D0])
  {
    return 0;
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
}

id sub_213CFB77C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for StaticMapBridgingView(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_213CFB45C();
  if (!v6)
  {
    v6 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v57 = v7;
  v58 = v6;
  v8 = sub_213CFB4C0();
  if (!v8)
  {
    v8 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v55 = v9;
  v56 = v8;
  v10 = sub_213CFB524();
  if (!v10)
  {
    v10 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v53 = v11;
  v54 = v10;
  v12 = sub_213CFB588();
  if (!v12)
  {
    v12 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v51 = v13;
  v52 = v12;
  v14 = sub_213CFB5EC();
  if (!v14)
  {
    v14 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v49 = v15;
  v50 = v14;
  v16 = sub_213CFB650();
  if (!v16)
  {
    v16 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v18 = v16;
  v48 = v17;
  v19 = sub_213CFB6B4();
  if (!v19)
  {
    v19 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v21 = v19;
  v47 = v20;
  v22 = sub_213CFB718();
  if (!v22)
  {
    v22 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v24 = v22;
  v25 = v23;
  v26 = *(v1 + 32);
  v27 = *AGGraphGetValue();
  sub_213D1DFC0(v27);
  v28 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
  v60 = *AGGraphGetValue();
  *(v5 + v2[14]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0A8, &qword_213D97020);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[15]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B0, &qword_213D97058);
  swift_storeEnumTagMultiPayload();
  *&v61[0] = swift_getKeyPath();
  sub_213D1DFB8(v61);
  v69 = v61[6];
  v70 = v61[7];
  v71[0] = *v62;
  *(v71 + 15) = *&v62[15];
  v65 = v61[2];
  v66 = v61[3];
  v67 = v61[4];
  v68 = v61[5];
  v63 = v61[0];
  v64 = v61[1];
  KeyPath = swift_getKeyPath();
  v30 = v57;
  *v5 = v58;
  v5[1] = v30;
  v31 = v55;
  v5[2] = v56;
  v5[3] = v31;
  v32 = v53;
  v5[4] = v54;
  v5[5] = v32;
  v33 = v51;
  v5[6] = v52;
  v5[7] = v33;
  v34 = v49;
  v5[8] = v50;
  v5[9] = v34;
  v35 = v47;
  v36 = v48;
  v5[10] = v18;
  v5[11] = v36;
  v5[12] = v21;
  v5[13] = v35;
  v5[14] = v24;
  v5[15] = v25;
  v37 = v60;
  v5[16] = v27;
  v5[17] = v37;
  v38 = v5 + v2[16];
  v39 = v70;
  *(v38 + 6) = v69;
  *(v38 + 7) = v39;
  *(v38 + 8) = v71[0];
  *(v38 + 143) = *(v71 + 15);
  v40 = v66;
  *(v38 + 2) = v65;
  *(v38 + 3) = v40;
  v41 = v68;
  *(v38 + 4) = v67;
  *(v38 + 5) = v41;
  v42 = v64;
  *v38 = v63;
  *(v38 + 1) = v42;
  v43 = v5 + v2[17];
  *v43 = KeyPath;
  v43[8] = 0;
  sub_213D1E884(v5, v59, type metadata accessor for StaticMapBridgingView);
  v44 = v60;

  return v44;
}

uint64_t sub_213CFBAC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticMapBridgingView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static StaticMap._makeViewList(view:inputs:)()
{
  type metadata accessor for StaticMap();
  swift_getWitnessTable();

  return sub_213D90A0C();
}

uint64_t StaticMap.NetworkUsageMode.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_213CFBC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static StaticMap._makeViewList(view:inputs:)();
}

uint64_t View.staticMapNetworkUsage(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_213D9130C();
}

uint64_t sub_213CFBD10()
{
  sub_213D1F20C();

  return sub_213D90C1C();
}

uint64_t sub_213CFBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D1D0FC(&qword_27C8EAE28, sub_213D1D144);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213CFBDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0A8, &qword_213D97020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for StaticMapBridgingView(0);
  sub_213CE2C28(v1 + *(v12 + 56), v11, &qword_27C8EB0A8, &qword_213D97020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D90C7C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213CFBFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B0, &qword_213D97058);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for StaticMapBridgingView(0);
  sub_213CE2C28(v1 + *(v12 + 60), v11, &qword_27C8EB0B0, &qword_213D97058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D9089C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213CFC1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D1D0FC(&qword_27C8EB0C0, type metadata accessor for StaticMapBridgingView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213CFC290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D1D0FC(&qword_27C8EB0C0, type metadata accessor for StaticMapBridgingView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213CFC324()
{
  sub_213D1D0FC(&qword_27C8EB0C0, type metadata accessor for StaticMapBridgingView);
  sub_213D90E1C();
  __break(1u);
}

uint64_t sub_213CFC37C(void *a1)
{
  v2 = sub_213D90C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0E8, &qword_213D970A0);
  sub_213D910AC();
  v7 = sub_213D9055C();

  v8 = 0;
  if ((v7 & 1) == 0)
  {
    sub_213D910AC();
    v8 = sub_213D9056C();
  }

  sub_213D9108C();
  v9 = v11[1];
  sub_213D9109C();
  sub_213CFC4F0(a1, v9, v6, v8);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_213CFC4F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v119 = a3;
  v9 = sub_213D90C0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setDelegate_];
  v15 = v5 + *(type metadata accessor for StaticMapBridgingView(0) + 68);
  v16 = *v15;
  LODWORD(v15) = v15[8];
  v112 = a4;
  if (v15 != 1)
  {

    sub_213D91BDC();
    v17 = sub_213D9119C();
    sub_213D9043C();

    a4 = v112;
    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v16, 0);
    (*(v10 + 8))(v14, v9);
    LOBYTE(v16) = v120;
  }

  [a1 _setNetworkUsageMode_];
  [a1 beginUpdates];
  v18 = *(a2 + qword_27C8EB3F0);
  v111 = (a2 + qword_27C8EB3F0);
  v19 = *(a2 + qword_27C8EB3F0 + 8);
  v21 = *v5;
  v20 = v5[1];
  v22 = sub_213D6E568(*v5);
  v23 = v18 == -1 || v22 == -1;
  if (v23 || v18 != v22 || v19 != v20)
  {
    v26 = sub_213CFCFC0(0, 0, 0, 0, v21);
    KeyPath = swift_getKeyPath();
    sub_213D14A04(a1, v26, v119, a4, KeyPath);
  }

  v28 = *(a2 + qword_27C8EB3F8);
  v108 = (a2 + qword_27C8EB3F8);
  v29 = *(a2 + qword_27C8EB3F8 + 8);
  v30 = v5[3];
  v115 = v5[2];
  v31 = sub_213D6E568(v115);
  v107 = v30;
  if (v28 == -1 || v31 == -1 || v28 != v31 || v29 != v30)
  {
    v32 = v119;
    v33 = sub_213CFD81C(0, 0, 0, 0, v119, 0, v115);
    v34 = swift_getKeyPath();
    sub_213D15170(a1, v33, v32, a4, v34);
  }

  v35 = *(a2 + qword_27C8EB400);
  v106 = (a2 + qword_27C8EB400);
  v36 = *(a2 + qword_27C8EB400 + 8);
  v37 = v5[5];
  v114 = v5[4];
  v38 = sub_213D6E568(v114);
  v105 = v37;
  if (v35 == -1 || v38 == -1 || v35 != v38 || v36 != v37)
  {
    v39 = v119;
    v40 = sub_213CFD81C(0, 0, 0, 0, v119, 1, v114);
    v41 = swift_getKeyPath();
    sub_213D15170(a1, v40, v39, a4, v41);
  }

  v42 = *(a2 + qword_27C8EB408);
  v104 = (a2 + qword_27C8EB408);
  v43 = *(a2 + qword_27C8EB408 + 8);
  v44 = v5[13];
  v118 = v5[12];
  v45 = sub_213D6E568(v118);
  v103 = v44;
  if (v42 == -1 || v45 == -1 || v42 != v45 || v43 != v44)
  {
    v46 = sub_213CFDC00(0, 0, 0, 0, v118);
    v47 = swift_getKeyPath();
    sub_213D158E4(a1, v46, v119, a4, v47);
  }

  v48 = *(a2 + qword_27C8EB410);
  v102 = (a2 + qword_27C8EB410);
  v49 = *(a2 + qword_27C8EB410 + 8);
  v50 = v5[15];
  v117 = v5[14];
  v51 = sub_213D6E568(v117);
  v101 = v50;
  if (v48 == -1 || v51 == -1 || v48 != v51 || v49 != v50)
  {
    v52 = sub_213CFDC00(0, 0, 0, 0, v117);
    v53 = swift_getKeyPath();
    sub_213D158E4(a1, v52, v119, a4, v53);
  }

  v110 = v20;
  v54 = *(a2 + qword_27C8EB420);
  v100 = (a2 + qword_27C8EB420);
  v55 = *(a2 + qword_27C8EB420 + 8);
  v56 = v5[7];
  v113 = v5[6];
  v57 = sub_213D6E568(v113);
  if (v54 == -1 || v57 == -1 || v54 != v57 || v55 != v56)
  {
    v58 = sub_213D26468(v113);
    swift_getKeyPath();
    sub_213D16014(a1, v58, v119, a4);
  }

  v99 = v56;
  v109 = v21;
  v59 = *(a2 + qword_27C8EB428);
  v98 = (a2 + qword_27C8EB428);
  v60 = *(a2 + qword_27C8EB428 + 8);
  v62 = v5[8];
  v61 = v5[9];
  v63 = sub_213D6E568(v62);
  if (v59 == -1 || v63 == -1 || v59 != v63 || v60 != v61)
  {
    v64 = sub_213D26950(v62);
    swift_getKeyPath();
    sub_213D16504(a1, v64, v119, a4);
  }

  v97 = v62;
  v116 = a1;
  v65 = a2 + qword_27C8EB430;
  v66 = *(a2 + qword_27C8EB430);
  v67 = *(a2 + qword_27C8EB430 + 8);
  v69 = v5[10];
  v68 = v5[11];
  v70 = sub_213D6E568(v69);
  if (v66 == -1 || v70 == -1 || v66 != v70 || v67 != v68)
  {
    v71 = sub_213D26EB4(v69);
    swift_getKeyPath();
    sub_213D169A0(v116, v71, v119, a4);
  }

  v72 = v5[16];
  if (*(v118 + 16))
  {
    v73 = 1;
  }

  else
  {
    v73 = *(v117 + 16) != 0;
  }

  v74 = *(a2 + qword_27C8EAF48);
  *(a2 + qword_27C8EAF48) = v72;
  sub_213D1DFC0(v72);
  sub_213D1E054(v74);
  if (v72 >> 61 == 4)
  {
    v75 = v116;
LABEL_57:
    sub_213CFEBB8(v72, v75, v112 != 0);
    goto LABEL_58;
  }

  v75 = v116;
  [v116 setShowsUserLocation_];
  if (v72 >> 61 < 5)
  {
    goto LABEL_57;
  }

  v23 = v72 == 0xA000000000000000;
  v72 = 0xA000000000000000;
  if (v23)
  {
    goto LABEL_57;
  }

LABEL_58:
  sub_213CFE314(v75);
  sub_213CFE6B4(v75);
  sub_213CFF4B4(v75);
  [v75 endUpdates];
  *v65 = sub_213D6E568(v69);
  *(v65 + 8) = v68;
  v76 = sub_213D6E568(v97);
  v77 = v98;
  *v98 = v76;
  *(v77 + 1) = v61;
  v78 = v99;
  v79 = sub_213D6E568(v113);
  v80 = v100;
  *v100 = v79;
  *(v80 + 1) = v78;
  v81 = v101;
  v82 = sub_213D6E568(v117);
  v83 = v102;
  *v102 = v82;
  *(v83 + 1) = v81;
  v84 = v103;
  v85 = sub_213D6E568(v118);
  v86 = v104;
  *v104 = v85;
  *(v86 + 1) = v84;
  v87 = v105;
  v88 = sub_213D6E568(v114);
  v89 = v106;
  *v106 = v88;
  *(v89 + 1) = v87;
  v90 = v107;
  v91 = sub_213D6E568(v115);
  v92 = v108;
  *v108 = v91;
  *(v92 + 1) = v90;
  v93 = v110;
  result = sub_213D6E568(v109);
  v95 = v111;
  *v111 = result;
  *(v95 + 1) = v93;
  return result;
}