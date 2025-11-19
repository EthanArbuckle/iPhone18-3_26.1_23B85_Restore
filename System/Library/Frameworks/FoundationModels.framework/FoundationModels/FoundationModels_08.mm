uint64_t DynamicGenerationSchema.init(name:description:anyOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a3;
  v42 = sub_2388D2328();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v42);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(a5 + 16);
  v19 = MEMORY[0x277D84F90];
  v38 = v18;
  if (v18)
  {
    v33 = &v32 - v16;
    v34 = a4;
    v35 = a1;
    v36 = a2;
    v37 = a6;
    v43 = MEMORY[0x277D84F90];

    v20 = a5;
    sub_2388B7C94(0, v18, 0);
    v21 = v43;
    v41 = v11 + 32;
    v32 = v20;
    v22 = (v20 + 40);
    v40 = xmmword_2388D3F70;
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      sub_238810E44(&qword_27DF31510, "rd");
      v25 = *(sub_238810E44(&qword_27DF31518, &qword_2388DBF50) - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = v40;

      sub_2388D21A8();
      sub_2388D22A8();

      v43 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2388B7C94(v28 > 1, v29 + 1, 1);
        v21 = v43;
      }

      *(v21 + 16) = v29 + 1;
      (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, v15, v42);
      v22 += 2;
      --v18;
    }

    while (v18);

    a2 = v36;
    a6 = v37;
    a1 = v35;
    v17 = v33;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_2388D22D8();

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v38;
  *(a6 + 24) = 1;
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = v19;
  v30 = type metadata accessor for DynamicGenerationSchema(0);
  *(a6 + *(v30 + 32)) = v19;
  return (*(v11 + 32))(a6 + *(v30 + 28), v17, v42);
}

uint64_t DynamicGenerationSchema.init<A>(type:guides:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for GenerationSchema(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  type metadata accessor for AnyGenerationGuides(0);
  sub_23882A508(a1, a2);
  (*(a3 + 40))(a2, a3);

  sub_2388C263C(v15, v14);

  sub_2388B7DA4(v12, type metadata accessor for GenerationSchema);
  sub_2388C16F8(a4);

  return sub_2388B7DA4(v14, type metadata accessor for GenerationSchema);
}

uint64_t sub_2388B2394@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v58) = a4;
  v56[0] = a1;
  v56[1] = a3;
  LODWORD(v57) = a2;
  v66 = sub_238810E44(&qword_27DF315E0, &qword_2388DC140);
  v69 = *(v66 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  v68 = v56 - v7;
  v63 = sub_238810E44(&qword_27DF315E8, &unk_2388DC148);
  v59 = *(v63 - 8);
  v8 = v59;
  v9 = *(v59 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = v56 - v13;
  v14 = sub_2388D2328();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerationSchema.Kind(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GenerationSchema(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = 0;
  v26 = 1;
  v20[8] = 1;
  *(v20 + 2) = 0;
  v20[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_2388B7D3C(v20, v25, type metadata accessor for GenerationSchema.Kind);
  v70 = MEMORY[0x277D83B88];
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v27 = sub_2388D28B8();
  v29 = v28;
  sub_2388B7DA4(v20, type metadata accessor for GenerationSchema.Kind);
  v30 = &v25[*(v22 + 28)];
  v60 = v29;
  v61 = v27;
  *v30 = v27;
  v30[1] = v29;

  sub_2388B7DA4(v25, type metadata accessor for GenerationSchema);
  sub_238810E44(&qword_27DF315F0, &qword_2388DC158);
  v31 = *(v8 + 72);
  v32 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v59 = swift_allocObject();
  v33 = v59 + v32;
  if ((v57 & 1) == 0)
  {
    sub_2388D21E8();
    v26 = 0;
  }

  v34 = *(v69 + 56);
  v35 = 1;
  v36 = v26;
  v37 = v66;
  v34(v33, v36, 1, v66);
  if ((v58 & 1) == 0)
  {
    sub_2388D21D8();
    v35 = 0;
  }

  v34(v33 + v31, v35, 1, v37);
  v38 = v67;
  sub_238827E14(v33, v67, &qword_27DF315E8, &unk_2388DC148);
  sub_238840FB4(v38, v12, &qword_27DF315E8, &unk_2388DC148);
  v39 = *(v69 + 48);
  v40 = (v69 + 32);
  v41 = v39(v12, 1, v37);
  v58 = v40;
  if (v41 == 1)
  {
    sub_238827E88(v12, &qword_27DF315E8, &unk_2388DC148);
    v42 = MEMORY[0x277D84F90];
    v43 = v37;
  }

  else
  {
    v57 = *v40;
    v57(v68, v12, v37);
    v42 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_2388B7280(0, *(v42 + 2) + 1, 1, v42, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      v42 = sub_2388B7280(v44 > 1, v45 + 1, 1, v42, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    *(v42 + 2) = v45 + 1;
    v43 = v66;
    v57(&v42[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v45], v68, v66);
  }

  v46 = v33 + v31;
  v47 = v67;
  sub_238827E14(v46, v67, &qword_27DF315E8, &unk_2388DC148);
  sub_238840FB4(v47, v12, &qword_27DF315E8, &unk_2388DC148);
  if (v39(v12, 1, v43) == 1)
  {
    sub_238827E88(v12, &qword_27DF315E8, &unk_2388DC148);
  }

  else
  {
    v48 = *v58;
    (*v58)(v68, v12, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_2388B7280(0, *(v42 + 2) + 1, 1, v42, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    v50 = *(v42 + 2);
    v49 = *(v42 + 3);
    if (v50 >= v49 >> 1)
    {
      v42 = sub_2388B7280(v49 > 1, v50 + 1, 1, v42, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    *(v42 + 2) = v50 + 1;
    v48(&v42[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50], v68, v43);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = v62;
  sub_2388D22A8();

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 2;
  v52 = v60;
  *(a5 + 32) = v61;
  *(a5 + 40) = v52;
  v53 = MEMORY[0x277D84F90];
  *(a5 + 48) = MEMORY[0x277D84F90];
  v54 = type metadata accessor for DynamicGenerationSchema(0);
  *(a5 + *(v54 + 32)) = v53;
  return (*(v64 + 32))(a5 + *(v54 + 28), v51, v65);
}

uint64_t DynamicGenerationSchema.Property.init(name:description:schema:isOptional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v21[3] = a6;
  v22 = a3;
  v23 = a4;
  v11 = sub_2388D2248();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2388D2328();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = *(a5 + 48);
  v18 = type metadata accessor for DynamicGenerationSchema(0);
  a7[3] = *(a5 + *(v18 + 32));
  (*(v14 + 16))(v17, a5 + *(v18 + 28), v13);

  sub_2388D2238();
  v19 = a7 + *(type metadata accessor for DynamicGenerationSchema.Property(0) + 28);
  sub_2388D22B8();
  return sub_2388B7DA4(a5, type metadata accessor for DynamicGenerationSchema);
}

uint64_t DynamicGenerationSchema.Property.init(name:description:schema:optionality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, void *a7@<X8>)
{
  v23[2] = a3;
  v23[3] = a4;
  v23[1] = a1;
  v12 = sub_2388D2248();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2388D2328();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a6;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = *(a5 + 48);
  v20 = type metadata accessor for DynamicGenerationSchema(0);
  a7[3] = *(a5 + *(v20 + 32));
  (*(v15 + 16))(v18, a5 + *(v20 + 28), v14);

  sub_2388D2238();
  v21 = a7 + *(type metadata accessor for DynamicGenerationSchema.Property(0) + 28);
  sub_2388D22B8();
  return sub_2388B7DA4(a5, type metadata accessor for DynamicGenerationSchema);
}

uint64_t sub_2388B2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v331 = a4;
  v338 = a2;
  v339 = a3;
  v348 = a1;
  v341 = a5;
  v5 = sub_2388D2088();
  v304 = *(v5 - 8);
  v305 = v5;
  v6 = *(v304 + 64);
  MEMORY[0x28223BE20](v5);
  v301 = &v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_2388D1F98();
  v316 = *(v322 - 8);
  v8 = *(v316 + 64);
  MEMORY[0x28223BE20](v322);
  v323 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_2388D1FE8();
  v306 = *(v311 - 8);
  v10 = *(v306 + 64);
  MEMORY[0x28223BE20](v311);
  v313 = &v295 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_2388D1F18();
  v312 = *(v314 - 8);
  v12 = *(v312 + 64);
  MEMORY[0x28223BE20](v314);
  v315 = &v295 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388D2168();
  v299 = *(v14 - 8);
  v300 = v14;
  v15 = *(v299 + 64);
  MEMORY[0x28223BE20](v14);
  v298 = &v295 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2388D2138();
  v325 = *(v17 - 8);
  v326 = v17;
  v18 = *(v325 + 64);
  MEMORY[0x28223BE20](v17);
  v324 = &v295 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = type metadata accessor for DynamicGenerationSchema(0);
  v329 = *(v337 - 8);
  v20 = *(v329 + 64);
  v21 = MEMORY[0x28223BE20](v337);
  v296 = &v295 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v297 = (&v295 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v307 = &v295 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v332 = &v295 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v310 = (&v295 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v303 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v309 = &v295 - v34;
  MEMORY[0x28223BE20](v33);
  v321 = &v295 - v35;
  v36 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v336 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v330 = &v295 - v40;
  v317 = type metadata accessor for GenerationSchema.Kind(0);
  v41 = *(*(v317 - 8) + 64);
  MEMORY[0x28223BE20](v317);
  v320 = (&v295 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v319 = type metadata accessor for GenerationSchema(0);
  v43 = *(*(v319 - 8) + 64);
  MEMORY[0x28223BE20](v319);
  v318 = &v295 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2388D20D8();
  v340 = *(v45 - 8);
  v46 = *(v340 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v295 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2388D2108();
  v334 = *(v49 - 8);
  v335 = v49;
  v50 = *(v334 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v295 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2388D2018();
  v328 = *(v53 - 8);
  v54 = *(v328 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v295 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2388D2178();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v60 = MEMORY[0x28223BE20](v57);
  v333 = &v295 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v302 = &v295 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v308 = &v295 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = (&v295 - v66);
  v68 = *(v58 + 16);
  v69 = v348;
  v348 = v58 + 16;
  v327 = v68;
  v68(&v295 - v66, v69, v57);
  v70 = (*(v58 + 88))(v67, v57);
  if (v70 != *MEMORY[0x277D0DBF8])
  {
    if (v70 == *MEMORY[0x277D0DC00])
    {
      (*(v58 + 8))(v67, v57);
      return sub_2388AEF04(v341);
    }

    v85 = v57;
    if (v70 == *MEMORY[0x277D0DC08])
    {
      (*(v58 + 96))(v67, v57);
      v86 = *v67;
      v87 = swift_projectBox();
      v89 = v334;
      v88 = v335;
      (*(v334 + 16))(v52, v87, v335);
      v90 = sub_2388D2008();
      v92 = v91;
      v93 = MEMORY[0x23EE66380]();
      sub_2388B2394(v90, v92 & 1, v93, v94 & 1, v341);
      (*(v89 + 8))(v52, v88);
    }

    if (v70 == *MEMORY[0x277D0DBE8])
    {
      (*(v58 + 96))(v67, v57);
      v113 = *v67;
      v114 = swift_projectBox();
      v115 = v328;
      (*(v328 + 16))(v56, v114, v53);
      sub_2388D2008();
      v117 = v116;
      v118 = MEMORY[0x23EE66290]();
      sub_2388AF0DC(v117 & 1, v118, v119 & 1, v341);
      (*(v115 + 8))(v56, v53);
    }

    v121 = v58;
    if (v70 == *MEMORY[0x277D0DC10])
    {
      (*(v58 + 96))(v67, v57);
      v122 = *v67;
      v123 = swift_projectBox();
      v125 = v324;
      v124 = v325;
      v126 = v326;
      (*(v325 + 16))(v324, v123, v326);
      sub_2388D2118();
      sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_2388D3F70;
      *(v127 + 32) = sub_2388D2128();
      *(v127 + 40) = v128;
      v129 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
      v130 = v330;
      (*(*(v129 - 8) + 56))(v330, 1, 1, v129);
      sub_2388AF734(v127, v130, v341);

      sub_238827E88(v130, &qword_27DF2FA30, &qword_2388D44E0);
      (*(v124 + 8))(v125, v126);
    }

    if (v70 == *MEMORY[0x277D0DBD8])
    {
      (*(v58 + 96))(v67, v57);
      v335 = *v67;
      v145 = swift_projectBox();
      v146 = v316;
      v148 = v322;
      v147 = v323;
      (*(v316 + 16))(v323, v145, v322);
      v149 = sub_2388D1F88();
      v151 = v339;
      if (!v150)
      {
        v196 = sub_2388D2FF8();
        swift_allocError();
        v198 = v197;
        v199 = *(sub_238810E44(&qword_27DF315D0, &unk_2388DC640) + 48);
        v198[3] = &type metadata for DynamicGenerationSchema.JSONKey;
        v198[4] = sub_238841320();
        v200 = swift_allocObject();
        *v198 = v200;
        *(v200 + 16) = 0x656C746974;
        *(v200 + 24) = 0xE500000000000000;
        *(v200 + 32) = 0;
        *(v200 + 40) = 1;
        sub_238834238(v338);
        sub_2388D2FD8();
        (*(*(v196 - 8) + 104))(v198, *MEMORY[0x277D84158], v196);
        swift_willThrow();
        (*(v146 + 8))(v147, v148);
      }

      v152 = v149;
      v75 = v150;
      swift_beginAccess();
      v153 = *(v151 + 16);

      v154 = sub_2388B0B78(v152, v75, v153);

      if (v154)
      {
        sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_2388D3F70;
        *(v80 + 32) = v152;
        *(v80 + 40) = v75;
        v81 = v337;
        v155 = *(v337 + 28);

        v83 = v341;
        sub_2388D2318();
        (*(v146 + 8))(v323, v322);

        *v83 = 0;
        v83[1] = 0;
        v83[2] = 0;
        *(v83 + 24) = 2;
        v83[4] = v152;
        goto LABEL_5;
      }

      swift_beginAccess();

      sub_2388BA540(&v345, v152, v75);
      swift_endAccess();

      v334 = sub_2388D1F78();
      v202 = v201;
      v174 = MEMORY[0x23EE661F0]();
      v203 = *(v174 + 16);
      if (!v203)
      {

        v176 = MEMORY[0x277D84F90];
        v205 = v338;
LABEL_70:
        v249 = v310;
        DynamicGenerationSchema.init(name:description:anyOf:)(v152, v75, v334, v202, v176, v310);
        v250 = v342;
        v251 = v339;
        v252 = v331;
        v253 = v323;
        if (*(v205 + 16))
        {
          sub_2388B7D3C(v249, v307, type metadata accessor for DynamicGenerationSchema);
          swift_beginAccess();
          v254 = *(v252 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v252 + 16) = v254;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v254 = sub_2388B6F7C(0, v254[2] + 1, 1, v254, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
            *(v252 + 16) = v254;
          }

          v257 = v254[2];
          v256 = v254[3];
          if (v257 >= v256 >> 1)
          {
            v254 = sub_2388B6F7C(v256 > 1, v257 + 1, 1, v254, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
          }

          v254[2] = v257 + 1;
          sub_2388B7BF0(v307, v254 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v257);
          *(v252 + 16) = v254;
          swift_endAccess();
          v205 = v338;
          v249 = v310;
        }

        v258 = sub_2388D1F68();
        if (v258)
        {
          sub_2388B57BC(v258, v205, v251, v252);
          if (v250)
          {

            sub_2388B7DA4(v249, type metadata accessor for DynamicGenerationSchema);
            (*(v316 + 8))(v253, v322);
          }
        }

        (*(v316 + 8))(v253, v322);
        sub_2388B7BF0(v249, v341);
      }

      v328 = v202;
      v326 = v152;
      v330 = v75;
      v343 = MEMORY[0x277D84F90];
      v336 = v203;
      sub_2388B7CD8(0, v203, 0);
      v204 = 0;
      v176 = v343;
      v337 = v174 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v205 = v338;
      v340 = *(v338 + 16);
      v175 = v58 + 8;
      while (v204 < *(v174 + 16))
      {
        v327(v333, v337 + *(v58 + 72) * v204, v85);

        v206 = swift_isUniquelyReferenced_nonNull_native();
        if (!v206 || (v207 = *(v205 + 24) >> 1, v75 = v205, v207 <= v340))
        {
          v75 = sub_2388B7900(v206, v340 + 1, 1, v205);
          v207 = *(v75 + 3) >> 1;
        }

        if (v207 <= *(v75 + 2))
        {
          goto LABEL_104;
        }

        swift_arrayInitWithCopy();
        ++*(v75 + 2);
        v208 = v333;
        v209 = v342;
        sub_2388B2F10(v333, v75, v339, v331);
        v342 = v209;
        if (v209)
        {

          (*v175)(v208, v85);
          (*(v316 + 8))(v323, v322);
        }

        (*v175)(v208, v85);

        v343 = v176;
        v211 = v176[2];
        v210 = v176[3];
        v75 = (v211 + 1);
        if (v211 >= v210 >> 1)
        {
          sub_2388B7CD8(v210 > 1, v211 + 1, 1);
          v176 = v343;
        }

        ++v204;
        v176[2] = v75;
        sub_2388B7BF0(v332, v176 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v211);
        v205 = v338;
        if (v336 == v204)
        {

          v75 = v330;
          v152 = v326;
          v202 = v328;
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v180 = v339;
    if (v70 == *MEMORY[0x277D0DBD0])
    {
      (*(v58 + 96))(v67, v57);
      v181 = *v67;
      v182 = swift_projectBox();
      v183 = v312;
      v184 = v314;
      v185 = (*(v312 + 16))(v315, v182, v314);
      v186 = MEMORY[0x23EE66190](v185);
      v187 = v342;
      if (v186)
      {
        sub_2388B57BC(v186, v338, v180, v331);
        v188 = v187;
        if (v187)
        {

          (*(v183 + 8))(v315, v184);
        }

        v228 = v180;
        v348 = v181;
      }

      else
      {
        v228 = v180;
        v348 = v181;
        v188 = v342;
      }

      v240 = v308;
      MEMORY[0x23EE661A0](v186);
      v346 = v338;

      sub_23881FE00(&unk_284B3B3F8);
      v241 = v309;
      sub_2388B2F10(v240, v346, v228, v331);
      v342 = v188;
      if (v188)
      {

        (*(v121 + 8))(v240, v57);
        (*(v183 + 8))(v315, v314);
      }

      (*(v121 + 8))(v240, v57);

      v346 = 0x3A676E697274535BLL;
      v347 = 0xE900000000000020;
      MEMORY[0x23EE66C20](v241[4], v241[5]);
      MEMORY[0x23EE66C20](93, 0xE100000000000000);
      v242 = v346;
      v243 = v347;
      v244 = v241[6];
      v245 = v337;
      v246 = *(v337 + 28);
      v247 = *(v241 + *(v337 + 32));

      v248 = v341;
      sub_2388D2298();
      (*(v183 + 8))(v315, v314);
      sub_2388B7DA4(v241, type metadata accessor for DynamicGenerationSchema);

      *v248 = 0;
      v248[1] = 0;
      v248[2] = 0;
      *(v248 + 24) = 2;
      v248[4] = v242;
      v248[5] = v243;
      v248[6] = v244;
      *(v248 + *(v245 + 32)) = v247;
      return result;
    }

    v189 = v342;
    if (v70 == *MEMORY[0x277D0DBE0])
    {
      (*(v58 + 96))(v67, v85);
      v190 = *v67;
      v191 = swift_projectBox();
      v192 = v306;
      v193 = v311;
      v194 = (*(v306 + 16))(v313, v191, v311);
      v195 = MEMORY[0x23EE66240](v194);
      if (v195)
      {
        sub_2388B57BC(v195, v338, v180, v331);
        if (v189)
        {

          (*(v192 + 8))(v313, v193);
        }

        v348 = v190;
      }

      else
      {
        v348 = v190;
      }

      v262 = v302;
      MEMORY[0x23EE66250](v195);
      v346 = v338;

      sub_23881FE00(&unk_284B3B438);
      v263 = v303;
      sub_2388B2F10(v262, v346, v180, v331);
      if (v189)
      {

        (*(v121 + 8))(v262, v85);
        (*(v192 + 8))(v313, v311);
      }

      (*(v121 + 8))(v262, v85);

      v265 = v313;
      v340 = MEMORY[0x23EE66270](v264);
      LODWORD(v339) = v266;
      v338 = sub_2388D1FC8();
      v346 = 0x3C7961727241;
      v347 = 0xE600000000000000;
      MEMORY[0x23EE66C20](v263[4], v263[5]);
      MEMORY[0x23EE66C20](62, 0xE100000000000000);
      v342 = 0;
      v335 = v347;
      v336 = v346;
      v267 = v263[6];
      v268 = v337;
      v269 = *(v337 + 28);
      v270 = *(v263 + *(v337 + 32));

      v271 = v341;
      sub_2388D22F8();
      (*(v192 + 8))(v265, v311);
      sub_2388B7DA4(v263, type metadata accessor for DynamicGenerationSchema);

      *v271 = 0;
      v271[1] = 0;
      v271[2] = 0;
      *(v271 + 24) = 2;
      v272 = v335;
      v271[4] = v336;
      v271[5] = v272;
      v271[6] = v267;
      *(v271 + *(v268 + 32)) = v270;
      return result;
    }

    if (v70 != *MEMORY[0x277D0DBF0])
    {
      if (v70 == *MEMORY[0x277D0DC18])
      {
        (*(v58 + 96))(v67, v85);
        v348 = *v67;
        v229 = swift_projectBox();
        v230 = v298;
        v231 = v299;
        v232 = v300;
        (*(v299 + 16))(v298, v229, v300);
        v233 = sub_2388D2158();
        v235 = v234;
        sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
        v236 = swift_allocObject();
        *(v236 + 16) = xmmword_2388D3F70;
        *(v236 + 32) = v233;
        *(v236 + 40) = v235;
        v237 = v337;
        v238 = *(v337 + 28);

        v239 = v341;
        sub_2388D2318();
        (*(v231 + 8))(v230, v232);

        *v239 = 0;
        v239[1] = 0;
        v239[2] = 0;
        *(v239 + 24) = 2;
        v239[4] = v233;
        v239[5] = v235;
        v239[6] = v236;
        *(v239 + *(v237 + 32)) = MEMORY[0x277D84F90];
      }

      else
      {
        v259 = sub_2388D2FF8();
        swift_allocError();
        v261 = v260;
        sub_238834238(v338);
        sub_2388D2FD8();
        (*(*(v259 - 8) + 104))(v261, *MEMORY[0x277D84168], v259);
        swift_willThrow();
        return (*(v58 + 8))(v67, v85);
      }

      return result;
    }

    (*(v58 + 96))(v67, v85);
    v212 = *v67;
    v213 = swift_projectBox();
    v215 = v304;
    v214 = v305;
    v216 = v301;
    (*(v304 + 16))(v301, v213, v305);
    v217 = sub_2388D2068();
    if (!v218)
    {
      v273 = sub_2388D2FF8();
      swift_allocError();
      v275 = v274;
      v276 = *(sub_238810E44(&qword_27DF315D0, &unk_2388DC640) + 48);
      v275[3] = &type metadata for DynamicGenerationSchema.JSONKey;
      v275[4] = sub_238841320();
      v277 = swift_allocObject();
      *v275 = v277;
      *(v277 + 16) = 0x656C746974;
      *(v277 + 24) = 0xE500000000000000;
      *(v277 + 32) = 0;
      *(v277 + 40) = 1;
      sub_238834238(v338);
      sub_2388D2FD8();
      (*(*(v273 - 8) + 104))(v275, *MEMORY[0x277D84158], v273);
      swift_willThrow();
      (*(v215 + 8))(v216, v214);
    }

    v219 = v217;
    v220 = v218;
    v348 = v212;
    swift_beginAccess();
    v221 = *(v180 + 16);

    v222 = sub_2388B0B78(v219, v220, v221);

    if (v222)
    {
      sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
      v223 = swift_allocObject();
      *(v223 + 16) = xmmword_2388D3F70;
      *(v223 + 32) = v219;
      *(v223 + 40) = v220;
      v224 = v216;
      v225 = v337;
      v226 = *(v337 + 28);

      v227 = v341;
      sub_2388D2318();
      *v227 = 0;
      v227[1] = 0;
      v227[2] = 0;
      *(v227 + 24) = 2;
      v227[4] = v219;
      v227[5] = v220;
      v227[6] = v223;
      *(v227 + *(v225 + 32)) = MEMORY[0x277D84F90];
      (*(v215 + 8))(v224, v214);
    }

    swift_beginAccess();

    sub_2388BA540(&v345, v219, v220);
    swift_endAccess();

    v278 = sub_2388D2058();
    v279 = v180;
    MEMORY[0x28223BE20](v278);
    v280 = v338;
    *(&v295 - 4) = v216;
    *(&v295 - 3) = v280;
    *(&v295 - 2) = v180;
    v281 = v331;
    *(&v295 - 1) = v331;
    v282 = v342;
    v283 = sub_238897DD4(sub_2388BB098, (&v295 - 6), v278);
    v342 = v282;
    if (v282)
    {

      (*(v304 + 8))(v216, v305);
    }

    v340 = v283;

    v284 = sub_2388D2048();
    DynamicGenerationSchema.init(name:description:properties:)(v220, v284, v285, v340, v297);
    if (*(v280 + 16))
    {
      v286 = v296;
      sub_2388B7D3C(v297, v296, type metadata accessor for DynamicGenerationSchema);
      swift_beginAccess();
      v287 = *(v281 + 16);
      v288 = swift_isUniquelyReferenced_nonNull_native();
      *(v281 + 16) = v287;
      if ((v288 & 1) == 0)
      {
        v287 = sub_2388B6F7C(0, v287[2] + 1, 1, v287, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        *(v281 + 16) = v287;
      }

      v290 = v287[2];
      v289 = v287[3];
      if (v290 >= v289 >> 1)
      {
        v287 = sub_2388B6F7C(v289 > 1, v290 + 1, 1, v287, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
      }

      v287[2] = v290 + 1;
      sub_2388B7BF0(v286, v287 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v290);
      *(v281 + 16) = v287;
      swift_endAccess();
      v280 = v338;
    }

    v291 = sub_2388D2038();
    if (v291)
    {
      v292 = v342;
      sub_2388B57BC(v291, v280, v279, v281);
      v342 = v292;
      v294 = v304;
      v293 = v305;
      if (v292)
      {

        sub_2388B7DA4(v297, type metadata accessor for DynamicGenerationSchema);
LABEL_102:
        (*(v294 + 8))(v301, v293);
      }
    }

    else
    {
      v294 = v304;
      v293 = v305;
    }

    sub_2388B7BF0(v297, v341);
    goto LABEL_102;
  }

  (*(v58 + 96))(v67, v57);
  v348 = *v67;
  v71 = swift_projectBox();
  v72 = v340;
  (*(v340 + 16))(v48, v71, v45);
  v73 = sub_2388D20B8();
  if (!v74)
  {
    v95 = sub_2388D2098();
    v96 = MEMORY[0x23EE66340](v95);
    sub_2388D20C8();
    v97 = v48;
    if (v98)
    {

      v99 = v336;
      v100 = v342;
      sub_2388D1D08();
      if (v100)
      {

LABEL_25:
        (*(v72 + 8))(v97, v45);
      }

      v120 = 0;
    }

    else
    {
      v120 = 1;
      v99 = v336;
    }

    v138 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
    (*(*(v138 - 8) + 56))(v99, v120, 1, v138);
    sub_2388AF734(v96, v99, v341);

    sub_238827E88(v99, &qword_27DF2FA30, &qword_2388D44E0);
    goto LABEL_25;
  }

  v58 = v73;
  v75 = v74;
  v336 = v48;
  v76 = v339;
  swift_beginAccess();
  v77 = *(v76 + 16);

  v78 = sub_2388B0B78(v58, v75, v77);

  if (v78)
  {
    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_2388D3F70;
    *(v80 + 32) = v58;
    *(v80 + 40) = v75;
    v81 = v337;
    v82 = *(v337 + 28);

    v83 = v341;
    sub_2388D2318();
    (*(v72 + 8))(v336, v45);

    *v83 = 0;
    v83[1] = 0;
    v83[2] = 0;
    *(v83 + 24) = 2;
    v83[4] = v58;
LABEL_5:
    v83[5] = v75;
    v83[6] = v80;
    *(v83 + *(v81 + 32)) = MEMORY[0x277D84F90];
    return result;
  }

  v101 = v336;
  v102 = MEMORY[0x23EE66340](v79);
  if (!v102)
  {

    v131 = sub_2388D2FF8();
    swift_allocError();
    v133 = v132;
    v134 = sub_238834238(v338);
    sub_238810E44(&qword_27DF315D8, qword_2388DD310);
    v135 = v45;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D3F70;
    *(inited + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
    *(inited + 64) = sub_238841320();
    v137 = swift_allocObject();
    *(inited + 32) = v137;
    *(v137 + 16) = 1836412517;
    *(v137 + 24) = 0xE400000000000000;
    *(v137 + 32) = 0;
    *(v137 + 40) = 1;
    v343 = v134;
    sub_23881FEF4(inited);
    sub_2388D2FD8();
    (*(*(v131 - 8) + 104))(v133, *MEMORY[0x277D84168], v131);
    swift_willThrow();
    (*(v72 + 8))(v101, v135);
  }

  v335 = v45;
  v103 = *(v102 + 16);
  if (v103)
  {
    v334 = v102;
    v104 = v336;
    v105 = sub_2388D20C8();
    if (v106)
    {

      v107 = sub_2388D2FF8();
      swift_allocError();
      v109 = v108;
      v110 = sub_238834238(v338);
      sub_238810E44(&qword_27DF315D8, qword_2388DD310);
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_2388D3F70;
      *(v111 + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
      *(v111 + 64) = sub_238841320();
      v112 = swift_allocObject();
      *(v111 + 32) = v112;
      *(v112 + 16) = 0x6E726574746170;
      *(v112 + 24) = 0xE700000000000000;
      *(v112 + 32) = 0;
      *(v112 + 40) = 1;
      v343 = v110;
      sub_23881FEF4(v111);
      v343 = 0;
      v344 = 0xE000000000000000;
      sub_2388D2FA8();

      v343 = 0xD00000000000001FLL;
      v344 = 0x80000002388DF9F0;
      MEMORY[0x23EE66C20](v58, v75);

      sub_2388D2FD8();
      (*(*(v107 - 8) + 104))(v109, *MEMORY[0x277D84168], v107);
      swift_willThrow();
      (*(v340 + 8))(v104, v335);
    }

    v156 = v105;
    v338 = sub_2388D2098();
    v333 = v157;
    v158 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    v159 = v320;
    v160 = v320 + *(v158 + 64);
    *v320 = v156;
    v159[1] = 0;
    v159[2] = v156;
    v159[3] = 0;
    v161 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
    v162 = *(*(v161 - 8) + 56);
    v162(v330, 1, 1, v161);
    v163 = type metadata accessor for StringGuides(0);
    v332 = v103;
    v164 = *(v163 + 20);
    v162(&v160[v164], 1, 1, v161);
    *v160 = 0;

    sub_2388150EC(v330, &v160[v164]);
    swift_storeEnumTagMultiPayload();
    v165 = v318;
    sub_2388B7D3C(v159, v318, type metadata accessor for GenerationSchema.Kind);
    v343 = MEMORY[0x277D837D0];
    sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
    v166 = sub_2388D28B8();
    v168 = v167;
    sub_2388B7DA4(v159, type metadata accessor for GenerationSchema.Kind);
    v169 = (v165 + *(v319 + 20));
    *v169 = v166;
    v169[1] = v168;

    sub_2388B7DA4(v165, type metadata accessor for GenerationSchema);
    v170 = v337;
    v171 = v341;
    v172 = v341 + *(v337 + 28);
    sub_2388D22E8();

    *v171 = v58;
    v171[1] = v75;
    v171[2] = v332;
    *(v171 + 24) = 1;
    v171[4] = v166;
    v171[5] = v168;
    v173 = MEMORY[0x277D84F90];
    v171[6] = MEMORY[0x277D84F90];
    *(v171 + *(v170 + 32)) = v173;
    v174 = v321;
    sub_2388B7D3C(v171, v321, type metadata accessor for DynamicGenerationSchema);
    v175 = v331;
    swift_beginAccess();
    v176 = *(v175 + 16);
    v177 = swift_isUniquelyReferenced_nonNull_native();
    *(v175 + 16) = v176;
    if (v177)
    {
LABEL_33:
      v179 = v176[2];
      v178 = v176[3];
      if (v179 >= v178 >> 1)
      {
        v176 = sub_2388B6F7C(v178 > 1, v179 + 1, 1, v176, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
      }

      v176[2] = v179 + 1;
      sub_2388B7BF0(v174, v176 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v179);
      *(v175 + 16) = v176;
      swift_endAccess();
      swift_beginAccess();
      sub_2388BA540(&v345, v58, v75);
      swift_endAccess();

      (*(v340 + 8))(v336, v335);
    }

LABEL_105:
    v176 = sub_2388B6F7C(0, v176[2] + 1, 1, v176, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
    *(v175 + 16) = v176;
    goto LABEL_33;
  }

  v139 = sub_2388D2FF8();
  swift_allocError();
  v141 = v140;
  v142 = sub_238834238(v338);
  sub_238810E44(&qword_27DF315D8, qword_2388DD310);
  v143 = swift_initStackObject();
  *(v143 + 16) = xmmword_2388D3F70;
  *(v143 + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
  *(v143 + 64) = sub_238841320();
  v144 = swift_allocObject();
  *(v143 + 32) = v144;
  *(v144 + 16) = 1836412517;
  *(v144 + 24) = 0xE400000000000000;
  *(v144 + 32) = 0;
  *(v144 + 40) = 1;
  v343 = v142;
  sub_23881FEF4(v143);
  sub_2388D2FD8();
  (*(*(v139 - 8) + 104))(v141, *MEMORY[0x277D84168], v139);
  swift_willThrow();
  (*(v72 + 8))(v336, v335);
}

uint64_t sub_2388B57BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v69 = a3;
  v72 = a2;
  v7 = type metadata accessor for DynamicGenerationSchema(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388D2178();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v79 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v61 - v16;
  v17 = sub_238810E44(&qword_27DF31608, &qword_2388DC178);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v74 = (&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v73 = &v61 - v21;
  v22 = *(a1 + 64);
  v62 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v61 = (v23 + 63) >> 6;
  v64 = v12 + 16;
  v76 = (v12 + 32);
  v66 = v12;
  v68 = (v12 + 8);
  v67 = a1;

  v27 = 0;
  v71 = xmmword_2388D6660;
  v78 = v11;
  v63 = v10;
  if (v25)
  {
    while (1)
    {
      v75 = v5;
      v28 = v27;
LABEL_13:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v32 = v31 | (v28 << 6);
      v33 = (*(v67 + 48) + 16 * v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = v66;
      v37 = v65;
      (*(v66 + 16))(v65, *(v67 + 56) + *(v66 + 72) * v32, v11);
      v38 = sub_238810E44(&qword_27DF31610, &qword_2388DC180);
      v39 = *(v38 + 48);
      v40 = v74;
      *v74 = v34;
      v40[1] = v35;
      v30 = v40;
      (*(v36 + 32))(v40 + v39, v37, v11);
      (*(*(v38 - 8) + 56))(v30, 0, 1, v38);

      v77 = v28;
      v5 = v75;
      v10 = v63;
LABEL_14:
      v41 = v30;
      v42 = v73;
      sub_238840FB4(v41, v73, &qword_27DF31608, &qword_2388DC178);
      v43 = sub_238810E44(&qword_27DF31610, &qword_2388DC180);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
      {
      }

      v44 = v5;
      v45 = v42;
      v46 = *v42;
      v47 = *(v45 + 1);
      (*v76)(v79, &v45[*(v43 + 48)], v78);
      sub_238810E44(&qword_27DF31600, &qword_2388DC170);
      inited = swift_initStackObject();
      *(inited + 16) = v71;
      *(inited + 32) = 0x7366656424;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = 0;
      *(inited + 56) = 1;
      *(inited + 64) = v46;
      *(inited + 72) = v47;
      *(inited + 80) = 0;
      *(inited + 88) = 1;
      result = v72;
      v49 = *(v72 + 16);
      v50 = v49 + 2;
      if (__OFADD__(v49, 2))
      {
        goto LABEL_31;
      }

      v51 = v10;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v53 = *(v52 + 24) >> 1, v54 = v52, v53 < v50))
      {
        if (v49 <= v50)
        {
          v55 = v49 + 2;
        }

        else
        {
          v55 = v49;
        }

        result = sub_2388B7900(result, v55, 1, v52);
        v54 = result;
        v53 = *(result + 24) >> 1;
      }

      if (v53 - *(v54 + 16) < 2)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      v56 = *(v54 + 16);
      v57 = __OFADD__(v56, 2);
      v58 = v56 + 2;
      if (v57)
      {
        goto LABEL_33;
      }

      *(v54 + 16) = v58;
      v10 = v51;
      v59 = v79;
      sub_2388B2F10(v79, v54, v69, v70);
      v5 = v44;
      if (v44)
      {
        (*v68)(v59, v78);
      }

      sub_2388B7DA4(v51, type metadata accessor for DynamicGenerationSchema);
      v11 = v78;
      result = (*v68)(v59, v78);
      v27 = v77;
      if (!v25)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v61 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v61;
    }

    v30 = v74;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v61)
      {
        v77 = v29 - 1;
        v60 = sub_238810E44(&qword_27DF31610, &qword_2388DC180);
        (*(*(v60 - 8) + 56))(v30, 1, 1, v60);
        v25 = 0;
        goto LABEL_14;
      }

      v25 = *(v62 + 8 * v28);
      ++v27;
      if (v25)
      {
        v75 = v5;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_2388B5E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v66 = a6;
  v63 = a5;
  v62 = a4;
  v69 = a3;
  v61 = a7;
  v9 = sub_2388D2248();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2388D2328();
  v57 = *(v58 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v59 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DynamicGenerationSchema(0);
  v14 = *(*(v55 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v55);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = v54 - v18;
  v19 = sub_2388D2178();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v54 - v26;
  v29 = *a1;
  v28 = a1[1];
  v56 = a2;
  v30 = MEMORY[0x23EE662C0](v25);
  if (*(v30 + 16) && (v31 = sub_238820AA8(v29, v28), (v32 & 1) != 0))
  {
    (*(v20 + 16))(v24, *(v30 + 56) + *(v20 + 72) * v31, v19);

    (*(v20 + 32))(v27, v24, v19);
    sub_238810E44(&qword_27DF31600, &qword_2388DC170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D6660;
    *(inited + 32) = 0x69747265706F7270;
    *(inited + 40) = 0xEA00000000007365;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = v29;
    *(inited + 72) = v28;
    *(inited + 80) = 0;
    *(inited + 88) = 1;
    v67 = v69;

    sub_23881FE00(inited);
    v34 = v65;
    v35 = v64;
    sub_2388B2F10(v27, v67, v62, v63);
    v36 = v35;
    if (!v35)
    {

      v69 = sub_2388D1F28();
      v66 = v48;
      sub_2388B7D3C(v34, v17, type metadata accessor for DynamicGenerationSchema);
      v49 = sub_2388D2078();
      v62 = v54;
      v50 = v29;
      v67 = v29;
      v68 = v28;
      v54[1] = v29;
      MEMORY[0x28223BE20](v49);
      v54[-2] = &v67;
      LODWORD(v63) = sub_23884235C(sub_2388BCB68, &v54[-4], v49);
      v64 = 0;

      v51 = v61;
      *v61 = v50;
      v51[1] = v28;
      v51[2] = *(v17 + 6);
      v52 = v55;
      v51[3] = *&v17[*(v55 + 32)];
      (*(v57 + 16))(v59, &v17[*(v52 + 28)], v58);

      sub_2388D2238();
      v53 = v51 + *(type metadata accessor for DynamicGenerationSchema.Property(0) + 28);
      sub_2388D22B8();
      sub_2388B7DA4(v17, type metadata accessor for DynamicGenerationSchema);
      sub_2388B7DA4(v65, type metadata accessor for DynamicGenerationSchema);
      return (*(v20 + 8))(v27, v19);
    }

    (*(v20 + 8))(v27, v19);
  }

  else
  {

    v38 = sub_2388D2FF8();
    v65 = swift_allocError();
    v40 = v39;
    v64 = *(sub_238810E44(&qword_27DF315D0, &unk_2388DC640) + 48);
    v40[3] = &type metadata for DynamicGenerationSchema.JSONKey;
    v41 = sub_238841320();
    v40[4] = v41;
    v42 = swift_allocObject();
    *v40 = v42;
    v43 = v29;
    *(v42 + 16) = v29;
    *(v42 + 24) = v28;
    *(v42 + 32) = 0;
    *(v42 + 40) = 1;

    v44 = sub_238834238(v69);
    sub_238810E44(&qword_27DF315D8, qword_2388DD310);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_2388D3F70;
    *(v45 + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
    *(v45 + 64) = v41;
    v46 = swift_allocObject();
    *(v45 + 32) = v46;
    *(v46 + 16) = 0x69747265706F7270;
    *(v46 + 24) = 0xEA00000000007365;
    *(v46 + 32) = 0;
    *(v46 + 40) = 1;
    v67 = v44;
    sub_23881FEF4(v45);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_2388D2FA8();

    v67 = 0xD000000000000013;
    v68 = 0x80000002388DFA10;
    MEMORY[0x23EE66C20](v43, v28);
    MEMORY[0x23EE66C20](39, 0xE100000000000000);
    sub_2388D2FD8();
    v47 = v40;
    v36 = v65;
    (*(*(v38 - 8) + 104))(v47, *MEMORY[0x277D84158], v38);
    result = swift_willThrow();
  }

  *v66 = v36;
  return result;
}

uint64_t sub_2388B65E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_2388B65F8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2388B6604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2388D32F8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2388B6660(uint64_t a1)
{
  v2 = sub_238841320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388B669C(uint64_t a1)
{
  v2 = sub_238841320();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2388B66F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31698, &unk_2388DC240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF2FB78, &unk_2388D4980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B686C(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B6978(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF316F0, &qword_2388DC2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF316F8, &qword_2388DC2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B6AC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF316E0, &qword_2388DC2A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF316E8, &qword_2388DC2B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B6C08(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF316B0, &qword_2388DC260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B6D14(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF316B8, &qword_2388DC268);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2388B6E18(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF316A8, &qword_2388DC258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_2388B6F7C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_238810E44(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2388B7158(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2388B7280(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_238810E44(a5, a6);
  v16 = *(sub_238810E44(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_238810E44(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2388B7544(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_238810E44(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_2388B7660(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31650, &qword_2388DC1C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF31500, &qword_2388DC1D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B77B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31668, &qword_2388DC1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B7900(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF31600, &qword_2388DC170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B7A30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_238810E44(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2388B7B78(char *a1, int64_t a2, char a3)
{
  result = sub_2388B8D08(a1, a2, a3, *v3, &qword_27DF316A0, &qword_2388DC250);
  *v3 = result;
  return result;
}

void *sub_2388B7BB0(void *a1, int64_t a2, char a3)
{
  result = sub_2388B8538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2388B7BD0(char *a1, int64_t a2, char a3)
{
  result = sub_2388B867C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2388B7BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicGenerationSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2388B7C54(void *a1, int64_t a2, char a3)
{
  result = sub_2388B8788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2388B7C74(char *a1, int64_t a2, char a3)
{
  result = sub_2388B88D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2388B7C94(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF316C8, &qword_2388DC288, MEMORY[0x277D0DE28]);
  *v3 = result;
  return result;
}

size_t sub_2388B7CD8(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
  *v3 = result;
  return result;
}

uint64_t sub_2388B7D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388B7DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2388B7E04(void *a1, int64_t a2, char a3)
{
  result = sub_2388B9080(a1, a2, a3, *v3, &qword_27DF316C0, &unk_2388DC270, &qword_27DF2FAB8, &qword_2388D4510);
  *v3 = result;
  return result;
}

char *sub_2388B7E44(char *a1, int64_t a2, char a3)
{
  result = sub_2388B8D08(a1, a2, a3, *v3, &qword_27DF31550, &qword_2388DC0A0);
  *v3 = result;
  return result;
}

void *sub_2388B7E7C(void *a1, int64_t a2, char a3)
{
  result = sub_2388B8E24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2388B7E9C(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31688, &unk_2388DC228, MEMORY[0x277CC9740]);
  *v3 = result;
  return result;
}

size_t sub_2388B7EE0(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31580, &unk_2388DC0E0, MEMORY[0x277D0DDD8]);
  *v3 = result;
  return result;
}

size_t sub_2388B7F24(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31558, &qword_2388DC0A8, MEMORY[0x277D0DE18]);
  *v3 = result;
  return result;
}

size_t sub_2388B7F68(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31640, &qword_2388DC1B8, type metadata accessor for GenerationSchema);
  *v3 = result;
  return result;
}

size_t sub_2388B7FAC(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31620, &unk_2388DC198, MEMORY[0x277D0DE20]);
  *v3 = result;
  return result;
}

size_t sub_2388B7FF0(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31618, &qword_2388DC188, type metadata accessor for DynamicGenerationSchema.Property);
  *v3 = result;
  return result;
}

size_t sub_2388B8034(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31560, &qword_2388DC0B0, MEMORY[0x277D42D60]);
  *v3 = result;
  return result;
}

void *sub_2388B8078(void *a1, int64_t a2, char a3)
{
  result = sub_2388B99C0(a1, a2, a3, *v3, &qword_27DF31568, &qword_2388DC0B8, &qword_27DF2FB30, &unk_2388DC0C0);
  *v3 = result;
  return result;
}

size_t sub_2388B80B8(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31570, &qword_2388DC0D0, MEMORY[0x277D42DA8]);
  *v3 = result;
  return result;
}

size_t sub_2388B80FC(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF2FF18, &qword_2388D5800, MEMORY[0x277D42E08]);
  *v3 = result;
  return result;
}

size_t sub_2388B8140(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31588, &unk_2388DC0F0, type metadata accessor for Transcript.ToolDefinition);
  *v3 = result;
  return result;
}

void *sub_2388B8184(void *a1, int64_t a2, char a3)
{
  result = sub_2388B99C0(a1, a2, a3, *v3, &qword_27DF300D8, &qword_2388D5CD0, &qword_27DF31508, &qword_2388DC220);
  *v3 = result;
  return result;
}

char *sub_2388B81C4(char *a1, int64_t a2, char a3)
{
  result = sub_2388B8F58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2388B81E4(void *a1, int64_t a2, char a3)
{
  result = sub_2388B9080(a1, a2, a3, *v3, &qword_27DF31670, &unk_2388DC208, &qword_27DF2FF88, &unk_2388D5CC0);
  *v3 = result;
  return result;
}

void *sub_2388B8224(void *a1, int64_t a2, char a3)
{
  result = sub_2388B9080(a1, a2, a3, *v3, &qword_27DF31678, &qword_2388DC218, &qword_27DF2FF80, &unk_2388D5890);
  *v3 = result;
  return result;
}

void *sub_2388B8264(void *a1, int64_t a2, char a3)
{
  result = sub_2388B91D0(a1, a2, a3, *v3, &qword_27DF31658, &qword_2388DC1D8, &qword_27DF2FF78, &qword_2388DC1E0);
  *v3 = result;
  return result;
}

void *sub_2388B82A4(void *a1, int64_t a2, char a3)
{
  result = sub_2388B91D0(a1, a2, a3, *v3, &qword_27DF31660, &unk_2388DC1E8, &qword_27DF2FF70, &unk_2388D5880);
  *v3 = result;
  return result;
}

char *sub_2388B82E4(char *a1, int64_t a2, char a3)
{
  result = sub_2388B9320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2388B8304(char *a1, int64_t a2, char a3)
{
  result = sub_2388B9448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2388B8324(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF2FB70, &unk_2388D5C30, type metadata accessor for Transcript.Entry);
  *v3 = result;
  return result;
}

char *sub_2388B8368(char *a1, int64_t a2, char a3)
{
  result = sub_2388B9568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2388B8388(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF315A8, &qword_2388DC118, type metadata accessor for OpenAIClient.Tool);
  *v3 = result;
  return result;
}

char *sub_2388B83CC(char *a1, int64_t a2, char a3)
{
  result = sub_2388B9688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2388B83EC(char *a1, int64_t a2, char a3)
{
  result = sub_2388B9794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2388B840C(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF315C0, &qword_2388DC130, type metadata accessor for OpenAIClient.MessageContent);
  *v3 = result;
  return result;
}

char *sub_2388B8450(char *a1, int64_t a2, char a3)
{
  result = sub_2388B98A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2388B8470(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF315A0, &qword_2388DC110, type metadata accessor for TranscriptCoderV1.Content);
  *v3 = result;
  return result;
}

size_t sub_2388B84B4(size_t a1, int64_t a2, char a3)
{
  result = sub_2388B89F8(a1, a2, a3, *v3, &qword_27DF31590, &qword_2388DC100, type metadata accessor for TranscriptCoderV1.Tool);
  *v3 = result;
  return result;
}

void *sub_2388B84F8(void *a1, int64_t a2, char a3)
{
  result = sub_2388B99C0(a1, a2, a3, *v3, &qword_27DF315D8, qword_2388DD310, &qword_27DF2FB50, &qword_2388D4958);
  *v3 = result;
  return result;
}

void *sub_2388B8538(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31730, &qword_2388DC300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF31738, qword_2388DC308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B867C(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B8788(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31698, &unk_2388DC240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF2FB78, &unk_2388D4980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B88D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF31690, &qword_2388DC238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2388B89F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_238810E44(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2388B8BD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF2FBB0, qword_2388D49C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF2FAC8, &unk_2388D4520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B8D08(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_238810E44(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_2388B8E24(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B8F58(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B9080(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_238810E44(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2388B91D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_238810E44(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 72);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[9 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 72 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2388B9320(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF2FB48, &qword_2388D4950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B9448(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF315C8, &qword_2388DC138);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B9568(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF315B0, &qword_2388DC120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B9688(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF31648, &qword_2388DC1C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B9794(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF315B8, &qword_2388DC128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B98A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF31598, &qword_2388DC108);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B99C0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_238810E44(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_2388B9B08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2388259F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2388B9B74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2388B9B74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2388D32D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2388D2B08();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2388B9D3C(v7, v8, a1, v4);
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
    return sub_2388B9C6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2388B9C6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2388D3368(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2388B9D3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_238824760(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2388BA318((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2388D3368();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2388D3368();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_238824774(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_238824774((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2388BA318((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_238824760(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2388246D4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2388D3368(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2388BA318(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2388D3368() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2388D3368() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2388BA540(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2388D34A8();
  sub_2388D2938();
  v9 = sub_2388D34E8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2388D3368() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2388BB8F4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2388BA690(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2388D1118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2388BCBC0(&qword_27DF30F60, MEMORY[0x277CC9740]);
  v36 = a2;
  v13 = sub_2388D2798();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2388BCBC0(&qword_27DF31680, MEMORY[0x277CC9740]);
      v23 = sub_2388D27C8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2388BBA74(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2388BA970(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2388D34A8();
  sub_2388D34C8();
  if (a3)
  {
    sub_2388D2938();
  }

  v9 = sub_2388D34E8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2388BBD18(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_2388D3368() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_2388BAB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2388D2328();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2388BABCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_2388D2328();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2388BAC70()
{
  sub_238833C40();
  if (v0 <= 0x3F)
  {
    sub_2388D2328();
    if (v1 <= 0x3F)
    {
      sub_2388BAD24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2388BAD24()
{
  if (!qword_27DF31530)
  {
    type metadata accessor for DynamicGenerationSchema(255);
    v0 = sub_2388D2B18();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF31530);
    }
  }
}

uint64_t sub_2388BAD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2388D22C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2388BAE50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2388D22C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2388BAEF4()
{
  sub_238833C40();
  if (v0 <= 0x3F)
  {
    sub_2388BAD24();
    if (v1 <= 0x3F)
    {
      sub_2388D22C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2388BAFC0(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_2388BAFDC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_2388BB00C()
{
  result = qword_27DF31548;
  if (!qword_27DF31548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31548);
  }

  return result;
}

uint64_t sub_2388BB060()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2388BB0BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_238810E44(&qword_27DF30EE8, &qword_2388DC190);
  result = sub_2388D2F48();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2388BB31C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2388D1118();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_238810E44(&qword_27DF30F58, &qword_2388D8FF0);
  result = sub_2388D2F48();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2388BCBC0(&qword_27DF30F60, MEMORY[0x277CC9740]);
      result = sub_2388D2798();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2388BB678(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_238810E44(&qword_27DF31628, &unk_2388DC1A8);
  result = sub_2388D2F48();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_2388D34A8();
      sub_2388D34C8();
      if (v20)
      {
        sub_2388D2938();
      }

      result = sub_2388D34E8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2388BB8F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2388BB0BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2388BBED4();
      goto LABEL_16;
    }

    sub_2388BC3C0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2388D34A8();
  sub_2388D2938();
  result = sub_2388D34E8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2388D3368();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2388D3428();
  __break(1u);
  return result;
}

uint64_t sub_2388BBA74(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2388D1118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2388BB31C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2388BC030();
      goto LABEL_12;
    }

    sub_2388BC5F8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2388BCBC0(&qword_27DF30F60, MEMORY[0x277CC9740]);
  v15 = sub_2388D2798();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2388BCBC0(&qword_27DF31680, MEMORY[0x277CC9740]);
      v23 = sub_2388D27C8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2388D3428();
  __break(1u);
  return result;
}

uint64_t sub_2388BBD18(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_2388BB678(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2388BC268();
      goto LABEL_22;
    }

    sub_2388BC914(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_2388D34A8();
  sub_2388D34C8();
  if (a2)
  {
    sub_2388D2938();
  }

  result = sub_2388D34E8();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_2388D3368(), (result & 1) != 0))
          {
LABEL_21:
            sub_238810E44(&qword_27DF2FD18, &unk_2388D5400);
            result = sub_2388D3428();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_2388BBED4()
{
  v1 = v0;
  sub_238810E44(&qword_27DF30EE8, &qword_2388DC190);
  v2 = *v0;
  v3 = sub_2388D2F38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2388BC030()
{
  v1 = v0;
  v2 = sub_2388D1118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238810E44(&qword_27DF30F58, &qword_2388D8FF0);
  v7 = *v0;
  v8 = sub_2388D2F38();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_2388BC268()
{
  v1 = v0;
  sub_238810E44(&qword_27DF31628, &unk_2388DC1A8);
  v2 = *v0;
  v3 = sub_2388D2F38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2388BC3C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_238810E44(&qword_27DF30EE8, &qword_2388DC190);
  result = sub_2388D2F48();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2388D34A8();

      sub_2388D2938();
      result = sub_2388D34E8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2388BC5F8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2388D1118();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_238810E44(&qword_27DF30F58, &qword_2388D8FF0);
  v10 = sub_2388D2F48();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2388BCBC0(&qword_27DF30F60, MEMORY[0x277CC9740]);
      result = sub_2388D2798();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2388BC914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_238810E44(&qword_27DF31628, &unk_2388DC1A8);
  result = sub_2388D2F48();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_2388D34A8();
      sub_2388D34C8();
      if (v19)
      {

        sub_2388D2938();
      }

      result = sub_2388D34E8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2388BCB68(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2388D3368() & 1;
  }
}

uint64_t sub_2388BCBC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2388BCC08(uint64_t a1)
{
  v2 = type metadata accessor for DynamicGenerationSchema(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v127 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v132 = &v126 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v126 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v126 - v13;
  sub_238810E44(&qword_27DF2FAB0, &qword_2388DC290);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v135 = *(v4 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2388D3F70;
  sub_2388B7D3C(a1, v16 + v15, type metadata accessor for DynamicGenerationSchema);
  v17 = *(v3 + 40);
  v128 = a1;
  v18 = *(a1 + v17);
  v139 = v16;

  sub_23881FAC8(v19);

  sub_23881FAC8(v20);
  v21 = v139;
  v138 = MEMORY[0x277D84FA0];
  v22 = *(v139 + 16);
  sub_238810E44(&qword_27DF316D0, &unk_2388DC298);
  sub_2388D2D58();
  v23 = *(v21 + 16);
  v24 = MEMORY[0x277D84F90];
  v133 = v15;
  v134 = v23;
  v129 = v21;
  if (v23)
  {
    v25 = v21 + v15;
    do
    {
      sub_2388B7D3C(v25, v14, type metadata accessor for DynamicGenerationSchema);
      if (v14[24] > 1u)
      {
        sub_2388B7DA4(v14, type metadata accessor for DynamicGenerationSchema);
      }

      else
      {
        v26 = *v14;
        v22 = *(v14 + 1);

        sub_2388B7DA4(v14, type metadata accessor for DynamicGenerationSchema);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2388B686C(0, *(v24 + 2) + 1, 1, v24);
        }

        v28 = *(v24 + 2);
        v27 = *(v24 + 3);
        if (v28 >= v27 >> 1)
        {
          v24 = sub_2388B686C((v27 > 1), v28 + 1, 1, v24);
        }

        *(v24 + 2) = v28 + 1;
        v29 = &v24[16 * v28];
        *(v29 + 4) = v26;
        *(v29 + 5) = v22;
      }

      v25 += v135;
      --v23;
    }

    while (v23);
  }

  v130 = *(v24 + 2);
  if (v130)
  {
    v30 = 0;
    v131 = (v24 + 32);
    do
    {
      if (v30 >= *(v24 + 2))
      {
        goto LABEL_118;
      }

      v31 = (v131 + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v22 = v138;
      if (v138[2])
      {
        v34 = v138[5];
        sub_2388D34A8();

        sub_2388D2938();
        v35 = sub_2388D34E8();
        v36 = -1 << *(v22 + 32);
        v37 = v35 & ~v36;
        if ((*(v22 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (v22[6] + 16 * v37);
            v40 = *v39 == v33 && v39[1] == v32;
            if (v40 || (sub_2388D3368() & 1) != 0)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v22 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v42 = *v128;
          v41 = v128[1];
          v43 = v128[2];
          v44 = *(v128 + 24);
          v135 = v43;
          if (v44 > 1)
          {
            v45 = 0;
            v46 = 0;
          }

          else
          {
            sub_2388BDAFC(v42, v41, v43, v44);

            v45 = v42;
            v46 = v41;
          }

          *&v137 = 0;
          *(&v137 + 1) = 0xE000000000000000;
          sub_2388D2FA8();

          *&v137 = 0x746163696C707544;
          *(&v137 + 1) = 0xEF20657079742065;
          MEMORY[0x23EE66C20](v33, v32);
          MEMORY[0x23EE66C20](0x65686373206E6920, 0xEB0000000020616DLL);

          if (v44)
          {
            if (v44 != 1)
            {
              v41 = 0xE90000000000003ELL;
              v42 = 0x64656D616E6E753CLL;
            }
          }

          else
          {
          }

          MEMORY[0x23EE66C20](v42, v41);

          v59 = v137;
          sub_2388BDAA8();
          swift_allocError();
          *v60 = v45;
          *(v60 + 8) = v46;
          *(v60 + 16) = v33;
          *(v60 + 24) = v32;
          *(v60 + 32) = v59;
          *(v60 + 48) = MEMORY[0x277D84F90];
          *(v60 + 56) = 0;
          return swift_willThrow();
        }
      }

      else
      {
      }

LABEL_14:
      ++v30;
      sub_2388BA540(&v137, v33, v32);
    }

    while (v30 != v130);
  }

  v47 = v134;
  if (!v134)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_52:
    v61 = sub_2388C6560(v49);

    v62 = v138[2];
    v63 = *(v61 + 16);
    v131 = v138;
    if (v62 <= v63 >> 3)
    {
      *&v137 = v61;
      sub_2388A7B0C(v138);
      v64 = v137;
    }

    else
    {
      v64 = sub_2388A7C38(v138, v61);
    }

    v65 = v132;
    v66 = v133;
    v67 = *(v64 + 16);
    v68 = MEMORY[0x277D84F90];
    if (v67)
    {
      v22 = sub_2388201D0(*(v64 + 16), 0);
      v69 = sub_23882572C(&v137, v22 + 4, v67, v64);

      sub_238826BEC();
      if (v69 != v67)
      {
        goto LABEL_119;
      }

      v65 = v132;
      v68 = MEMORY[0x277D84F90];
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    *&v137 = v22;
    v70 = v126;
    sub_2388B9B08(&v137);
    v22 = v70;
    if (v70)
    {
      goto LABEL_122;
    }

    v71 = v137;
    if (!*(v137 + 16))
    {

      v74 = MEMORY[0x277D84F90];
      v75 = v134;
      if (v134)
      {
        v76 = v129 + v66;
        do
        {
          sub_2388B7D3C(v76, v65, type metadata accessor for DynamicGenerationSchema);
          if (*(v65 + 24) == 1)
          {
            v77 = *(v65 + 8);
            v78 = *(v65 + 16);
            v79 = *v65;

            sub_2388B7DA4(v65, type metadata accessor for DynamicGenerationSchema);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_2388B6AC0(0, v74[2] + 1, 1, v74);
            }

            v81 = v74[2];
            v80 = v74[3];
            if (v81 >= v80 >> 1)
            {
              v74 = sub_2388B6AC0((v80 > 1), v81 + 1, 1, v74);
            }

            v74[2] = v81 + 1;
            v82 = &v74[3 * v81];
            v82[4] = v79;
            v82[5] = v77;
            v82[6] = v78;
            v65 = v132;
            v66 = v133;
          }

          else
          {
            sub_2388B7DA4(v65, type metadata accessor for DynamicGenerationSchema);
          }

          v76 += v135;
          --v75;
        }

        while (v75);
      }

      v83 = v74 + 6;
      v84 = v74[2] + 1;
      v85 = v127;
      while (--v84)
      {
        v86 = v83 + 3;
        v87 = *v83;
        v83 += 3;
        if (!v87)
        {
          v89 = *(v86 - 5);
          v88 = *(v86 - 4);

          *&v137 = 0;
          *(&v137 + 1) = 0xE000000000000000;
          sub_2388D2FA8();

          *&v137 = v89;
          *(&v137 + 1) = v88;
          MEMORY[0x23EE66C20](0xD000000000000014, 0x80000002388DFA50);
          v90 = v137;
          sub_2388BDAA8();
          swift_allocError();
          *v91 = v89;
          *(v91 + 8) = v88;
          *(v91 + 16) = v90;
          *(v91 + 32) = MEMORY[0x277D84F90];
          *(v91 + 40) = v137;
          v92 = 2;
          goto LABEL_79;
        }
      }

      if (v134)
      {
        v96 = v129 + v66;
        v97 = MEMORY[0x277D84F90];
        do
        {
          sub_2388B7D3C(v96, v85, type metadata accessor for DynamicGenerationSchema);
          if (*(v85 + 24))
          {
            sub_2388B7DA4(v85, type metadata accessor for DynamicGenerationSchema);
          }

          else
          {
            v99 = *(v85 + 8);
            v98 = *(v85 + 16);
            v100 = *v85;

            sub_2388B7DA4(v85, type metadata accessor for DynamicGenerationSchema);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_2388B6978(0, v97[2] + 1, 1, v97);
            }

            v102 = v97[2];
            v101 = v97[3];
            if (v102 >= v101 >> 1)
            {
              v97 = sub_2388B6978((v101 > 1), v102 + 1, 1, v97);
            }

            v97[2] = v102 + 1;
            v103 = &v97[3 * v102];
            v103[4] = v100;
            v103[5] = v99;
            v103[6] = v98;
            v85 = v127;
          }

          v96 += v135;
          --v134;
        }

        while (v134);
      }

      else
      {
        v97 = MEMORY[0x277D84F90];
      }

      v104 = v97[2];
      if (v104)
      {
        v105 = 0;
        v106 = v97 + 4;
        v128 = v97 + 4;
        v129 = v104;
        while (v105 < v97[2])
        {
          v107 = &v106[3 * v105];
          v109 = *v107;
          v108 = v107[1];
          v110 = v107[2];
          v136 = MEMORY[0x277D84FA0];
          v133 = *(v110 + 16);
          if (v133)
          {
            v130 = v105;
            v131 = v109;
            v134 = v110 + 32;
            v132 = v108;

            v111 = 0;
            v135 = v110;
            while (v111 < *(v110 + 16))
            {
              v112 = (v134 + 16 * v111);
              v113 = *v112;
              v114 = v112[1];
              v115 = v136;
              if (*(v136 + 16))
              {
                v116 = *(v136 + 40);
                sub_2388D34A8();

                sub_2388D2938();
                v117 = sub_2388D34E8();
                v118 = -1 << *(v115 + 32);
                v119 = v117 & ~v118;
                if ((*(v115 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119))
                {
                  v120 = ~v118;
                  while (1)
                  {
                    v121 = (*(v115 + 48) + 16 * v119);
                    v122 = *v121 == v113 && v121[1] == v114;
                    if (v122 || (sub_2388D3368() & 1) != 0)
                    {
                      break;
                    }

                    v119 = (v119 + 1) & v120;
                    if (((*(v115 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
                    {
                      goto LABEL_98;
                    }
                  }

                  *&v137 = 0;
                  *(&v137 + 1) = 0xE000000000000000;
                  sub_2388D2FA8();
                  v123 = v132;

                  v124 = v131;
                  *&v137 = v131;
                  *(&v137 + 1) = v123;
                  MEMORY[0x23EE66C20](0xD000000000000018, 0x80000002388DFA70);
                  MEMORY[0x23EE66C20](v113, v114);
                  v125 = v137;
                  sub_2388BDAA8();
                  swift_allocError();
                  *v91 = v124;
                  *(v91 + 8) = v123;
                  *(v91 + 16) = v113;
                  *(v91 + 24) = v114;
                  *(v91 + 32) = v125;
                  *(v91 + 48) = MEMORY[0x277D84F90];
                  v92 = 1;
                  goto LABEL_79;
                }
              }

              else
              {
              }

LABEL_98:
              ++v111;
              sub_2388BA540(&v137, v113, v114);

              v110 = v135;
              if (v111 == v133)
              {

                v104 = v129;
                v105 = v130;
                v106 = v128;
                goto LABEL_111;
              }
            }

            goto LABEL_120;
          }

LABEL_111:
          ++v105;

          if (v105 == v104)
          {
          }
        }

        goto LABEL_121;
      }
    }

    if (*(v128 + 24) > 1u)
    {
      v73 = 0;
      v72 = 0;
    }

    else
    {
      v73 = *v128;
      v72 = v128[1];
    }

    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_2388D2FA8();

    *&v137 = 0xD000000000000012;
    *(&v137 + 1) = 0x80000002388DFA30;
    v136 = v71;
    sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
    sub_238841E3C();
    v93 = sub_2388D27B8();
    MEMORY[0x23EE66C20](v93);

    MEMORY[0x23EE66C20](93, 0xE100000000000000);
    v94 = v137;
    sub_2388BDAA8();
    swift_allocError();
    *v91 = v73;
    *(v91 + 8) = v72;
    *(v91 + 16) = v71;
    *(v91 + 24) = v94;
    *(v91 + 40) = v68;
    v92 = 3;
LABEL_79:
    *(v91 + 56) = v92;
    return swift_willThrow();
  }

  v48 = v129 + v133;
  v49 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D837D0];
  while (1)
  {
    sub_2388B7D3C(v48, v12, type metadata accessor for DynamicGenerationSchema);
    v50 = *(v12 + 6);

    sub_2388B7DA4(v12, type metadata accessor for DynamicGenerationSchema);
    v51 = *(v50 + 16);
    v52 = *(v49 + 2);
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v53 <= *(v49 + 3) >> 1)
    {
      if (*(v50 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v52 <= v53)
      {
        v55 = v52 + v51;
      }

      else
      {
        v55 = v52;
      }

      v49 = sub_2388B686C(isUniquelyReferenced_nonNull_native, v55, 1, v49);
      if (*(v50 + 16))
      {
LABEL_41:
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v51)
        {
          goto LABEL_116;
        }

        swift_arrayInitWithCopy();

        if (v51)
        {
          v56 = *(v49 + 2);
          v57 = __OFADD__(v56, v51);
          v58 = v56 + v51;
          if (v57)
          {
            goto LABEL_117;
          }

          *(v49 + 2) = v58;
        }

        goto LABEL_31;
      }
    }

    if (v51)
    {
      goto LABEL_115;
    }

LABEL_31:
    v48 += v135;
    if (!--v47)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:

  __break(1u);
  return result;
}

unint64_t sub_2388BDAA8()
{
  result = qword_27DF316D8;
  if (!qword_27DF316D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF316D8);
  }

  return result;
}

uint64_t sub_2388BDAFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_2388BDB60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2388BDBA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2388BDC00()
{
  result = qword_27DF31740;
  if (!qword_27DF31740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31740);
  }

  return result;
}

unint64_t sub_2388BDC58()
{
  result = qword_27DF31748;
  if (!qword_27DF31748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31748);
  }

  return result;
}

id sub_2388BDCAC(id a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    sub_238810E44(&qword_27DF31778, &qword_2388DC3F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D3F70;
    v4 = *MEMORY[0x277CCA578];
    *(inited + 32) = sub_2388D2858();
    *(inited + 40) = v5;
    sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2388D3F70;
    sub_2388BDE4C(v2);
    *(v6 + 32) = v7;
    *(inited + 72) = sub_238810E44(&qword_27DF31780, &qword_2388DC3F8);
    *(inited + 48) = v6;
    sub_238878D7C(inited);
    swift_setDeallocating();
    sub_238827E88(inited + 32, &qword_27DF30698, &qword_2388D6968);
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v9 = sub_2388D2848();
    v10 = sub_2388D2748();

    v2 = [v8 initWithDomain:v9 code:-1 userInfo:v10];
  }

  else
  {
    v11 = a1;
  }

  return v2;
}

void sub_2388BDE4C(void *a1)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v3 = v2;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v5 = a1;
    return;
  }

  v6 = sub_2388D0EC8();
  v7 = [v6 underlyingErrors];
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  v8 = sub_2388D2AD8();

  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2388B7E7C(0, v9, 0);
    v10 = 0;
    v11 = v24;
    while (v10 < *(v8 + 16))
    {
      v12 = *(v8 + 8 * v10 + 32);
      v13 = v12;
      v14 = sub_2388BDE4C(v12);

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2388B7E7C((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v16 + 1;
      *(v24 + 8 * v16 + 32) = v14;
      if (v9 == v10)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_12:
  v17 = [v6 domain];
  if (!v17)
  {
    sub_2388D2858();
    v17 = sub_2388D2848();
  }

  v18 = [v6 code];
  sub_238810E44(&qword_27DF31778, &qword_2388DC3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2388D3F70;
  v20 = *MEMORY[0x277CCA578];
  *(inited + 32) = sub_2388D2858();
  *(inited + 40) = v21;
  *(inited + 72) = sub_238810E44(&qword_27DF31780, &qword_2388DC3F8);
  *(inited + 48) = v11;
  sub_238878D7C(inited);
  swift_setDeallocating();
  sub_238827E88(inited + 32, &qword_27DF30698, &qword_2388D6968);
  v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v23 = sub_2388D2748();

  [v22 initWithDomain:v17 code:v18 userInfo:v23];
}

void sub_2388BE130(void *a1, int a2)
{
  v188 = a2;
  v186 = sub_2388D1D88();
  v185 = *(v186 - 8);
  v3 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v182 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2388D1E88();
  v167 = *(v166 - 8);
  v5 = *(v167 + 64);
  v6 = MEMORY[0x28223BE20](v166);
  v165 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v164 = &v163 - v8;
  v172 = sub_2388D1E58();
  v171 = *(v172 - 8);
  v9 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v170 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_2388D1EB8();
  v168 = *(v169 - 8);
  v11 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v179 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_2388D1DC8();
  v176 = *(v180 - 8);
  v13 = *(v176 + 64);
  MEMORY[0x28223BE20](v180);
  v175 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_2388D1DE8();
  v173 = *(v174 - 8);
  v15 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v17 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2388D1E18();
  v178 = *(v181 - 8);
  v18 = *(v178 + 64);
  MEMORY[0x28223BE20](v181);
  v177 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_2388D1E28();
  v183 = *(v184 - 8);
  v20 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v189 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_2388D1E48();
  v187 = *(v191 - 8);
  v22 = *(v187 + 64);
  MEMORY[0x28223BE20](v191);
  v190 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2388D1EC8();
  v192 = *(v24 - 8);
  v25 = *(v192 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_238810E44(&qword_27DF31750, &qword_2388DC3D8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v163 - v30;
  v32 = sub_2388D1EE8();
  v33 = *(v32 - 8);
  v193 = v32;
  v194 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2388D2B78();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = a1;
  v42 = a1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if (swift_dynamicCast())
  {
    (*(v38 + 8))(v41, v37);
LABEL_13:
    v48 = a1;
    return;
  }

  *&v195[0] = a1;
  v43 = a1;
  if (swift_dynamicCast())
  {
    sub_238857E3C(v198, v199, v200, v201, v202);
    goto LABEL_13;
  }

  *&v195[0] = a1;
  v44 = a1;
  if (swift_dynamicCast())
  {
    sub_2388BFD80(&v198);
    goto LABEL_13;
  }

  *&v195[0] = a1;
  v45 = a1;
  if (swift_dynamicCast())
  {
    sub_2388BFCBC(v198, v199, v200, v201, v202, v203, v204, v205);
    goto LABEL_13;
  }

  *&v195[0] = a1;
  v46 = a1;
  if (swift_dynamicCast())
  {
    sub_23888F5E8(v198, v199, v200, v201);
    goto LABEL_13;
  }

  *&v195[0] = a1;
  v47 = a1;
  if (swift_dynamicCast())
  {

    goto LABEL_13;
  }

  v198 = a1;
  v49 = a1;
  v50 = v193;
  v51 = swift_dynamicCast();
  v52 = v194;
  v53 = *(v194 + 56);
  if (!v51)
  {
    v53(v31, 1, 1, v50);
    sub_238827E88(v31, &qword_27DF31750, &qword_2388DC3D8);
    v197 = a1;
    v77 = a1;
    sub_238810E44(&qword_27DF31758, &qword_2388DC3E0);
    if (swift_dynamicCast())
    {
      sub_238826B08(v195, &v198);
      sub_238815878(&v198, v201);
      v78 = v182;
      sub_2388D1D98();
      v79 = v185;
      v80 = v186;
      v81 = (*(v185 + 88))(v78, v186);
      if (v81 == *MEMORY[0x277CEDEF8])
      {
        sub_2388BFC74(&qword_27DF31768, MEMORY[0x277D85678]);
        swift_allocError();
        sub_2388D2738();
      }

      else if (v81 == *MEMORY[0x277CEDEC8])
      {
        sub_2388151C8();
        swift_allocError();
        *v102 = 0xD0000000000000DFLL;
        *(v102 + 8) = 0x80000002388DFAB0;
        *(v102 + 16) = MEMORY[0x277D84F90];
        *(v102 + 24) = 0;
        *(v102 + 32) = 6;
      }

      else
      {
        v143 = v201;
        v144 = v202;
        v145 = sub_238815878(&v198, v201);
        v146 = *(v143 - 8);
        v147 = *(v146 + 64);
        MEMORY[0x28223BE20](v145);
        v149 = &v163 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v146 + 16))(v149);
        v150 = *(*(v144 + 8) + 8);
        v151 = sub_2388D3358();
        if (v151)
        {
          v152 = v151;
          (*(v146 + 8))(v149, v143);
        }

        else
        {
          v152 = swift_allocError();
          (*(v146 + 32))(v162, v149, v143);
        }

        sub_2388BDCAC(v152, v188 & 1);

        (*(v79 + 8))(v78, v80);
      }

      sub_2388158BC(&v198);
      return;
    }

    v196 = 0;
    memset(v195, 0, sizeof(v195));
    sub_238827E88(v195, &qword_27DF31760, &qword_2388DC3E8);
    v88 = sub_2388D0EC8();
    v89 = [v88 domain];
    v90 = sub_2388D2858();
    v92 = v91;

    if (v90 == 0xD000000000000019 && 0x80000002388DFA90 == v92)
    {
    }

    else
    {
      v93 = sub_2388D3368();

      if ((v93 & 1) == 0)
      {

LABEL_40:
        v123 = sub_2388D0EC8();
        v124 = [v123 underlyingErrors];

        v125 = sub_2388D2AD8();
        v126 = *(v125 + 16);
        if (!v126)
        {
LABEL_55:

          sub_2388BDCAC(a1, v188 & 1);
          return;
        }

        v127 = 0;
        while (1)
        {
          if (v127 >= *(v125 + 16))
          {
            __break(1u);
            return;
          }

          v128 = *(v125 + 8 * v127 + 32);
          v129 = v128;
          v130 = sub_2388D0EC8();
          v131 = [v130 domain];
          v132 = sub_2388D2858();
          v134 = v133;

          if (v132 == 0xD000000000000019 && 0x80000002388DFA90 == v134)
          {
          }

          else
          {
            v136 = sub_2388D3368();

            if ((v136 & 1) == 0)
            {

              goto LABEL_43;
            }
          }

          v137 = [v130 code];

          if (v137 == 1)
          {

            goto LABEL_54;
          }

LABEL_43:
          if (v126 == ++v127)
          {
            goto LABEL_55;
          }
        }
      }
    }

    v94 = [v88 code];

    if (v94 == 1)
    {
LABEL_54:
      sub_2388151C8();
      swift_allocError();
      *v138 = 0xD0000000000000DFLL;
      *(v138 + 8) = 0x80000002388DFAB0;
      *(v138 + 16) = MEMORY[0x277D84F90];
      *(v138 + 24) = 0;
      *(v138 + 32) = 6;
      return;
    }

    goto LABEL_40;
  }

  v53(v31, 0, 1, v50);
  v54 = v36;
  (*(v52 + 32))(v36, v31, v50);
  sub_2388D1ED8();
  v55 = v192;
  v56 = (*(v192 + 88))(v27, v24);
  if (v56 == *MEMORY[0x277D0DB78])
  {
    (*(v55 + 96))(v27, v24);
    v57 = v187;
    v58 = v190;
    v59 = v191;
    (*(v187 + 32))(v190, v27, v191);
    v60 = v189;
    sub_2388D1E38();
    v61 = v183;
    v62 = v184;
    v63 = (*(v183 + 88))(v60, v184);
    if (v63 == *MEMORY[0x277D0DA90])
    {
      (*(v61 + 96))(v60, v62);
      v64 = v178;
      v65 = *(v178 + 32);
      v192 = v54;
      v66 = v177;
      v65(v177, v60, v181);
      v198 = 0;
      v199 = 0xE000000000000000;
      sub_2388D2FA8();
      MEMORY[0x23EE66C20](0xD000000000000011, 0x80000002388DFBD0);
      *&v195[0] = sub_2388D1DF8();
      v67 = v52;
      v68 = v50;
      v69 = sub_2388D32F8();
      MEMORY[0x23EE66C20](v69);

      MEMORY[0x23EE66C20](0xD00000000000003BLL, 0x80000002388DFBF0);
      *&v195[0] = sub_2388D1E08();
      v70 = sub_2388D32F8();
      MEMORY[0x23EE66C20](v70);

      MEMORY[0x23EE66C20](46, 0xE100000000000000);
      v71 = v198;
      v72 = v199;
      sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_2388D3F70;
      sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
      *(v73 + 32) = swift_allocError();
      v74 = v192;
      (*(v67 + 16))(v75, v192, v68);
      sub_2388151C8();
      swift_allocError();
      *v76 = v71;
      *(v76 + 8) = v72;
      *(v76 + 16) = v73;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0;
      (*(v64 + 8))(v66, v181);
      (*(v57 + 8))(v190, v191);
      (*(v67 + 8))(v74, v68);
      return;
    }

    if (v63 == *MEMORY[0x277D0DA98])
    {
      v95 = v50;
      v192 = 0x80000002388DFB90;
      sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
      v96 = v61;
      v97 = v52;
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_2388D3F70;
      sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
      *(v98 + 32) = swift_allocError();
      (*(v97 + 16))(v99, v54, v95);
      sub_2388151C8();
      swift_allocError();
      v101 = 0xD00000000000001FLL;
    }

    else
    {
      if (v63 != *MEMORY[0x277D0DAA0])
      {
        sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
        v159 = swift_allocError();
        v160 = v194;
        (*(v194 + 16))(v161, v54, v50);
        sub_2388BDCAC(v159, v188 & 1);
        (*(v57 + 8))(v58, v59);
        (*(v160 + 8))(v54, v50);

        (*(v61 + 8))(v189, v62);
        return;
      }

      v95 = v50;
      v192 = 0x80000002388DFBB0;
      sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_2388D3F70;
      sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
      *(v98 + 32) = swift_allocError();
      v96 = v61;
      v97 = v194;
      (*(v194 + 16))(v142, v54, v95);
      sub_2388151C8();
      swift_allocError();
      v101 = 0xD000000000000013;
    }

    *v100 = v101;
    *(v100 + 8) = v192;
    *(v100 + 16) = v98;
    *(v100 + 24) = 0;
    *(v100 + 32) = 2;
    (*(v57 + 8))(v58, v59);
    (*(v97 + 8))(v54, v95);
    (*(v96 + 8))(v189, v62);
    return;
  }

  if (v56 == *MEMORY[0x277D0DB50])
  {
    (*(v55 + 96))(v27, v24);
    v82 = v173;
    v83 = v174;
    (*(v173 + 32))(v17, v27, v174);
    v84 = v175;
    sub_2388D1DD8();
    v85 = v176;
    v86 = v180;
    if ((*(v176 + 88))(v84, v180) == *MEMORY[0x277D0D9D8])
    {
      sub_2388151C8();
      swift_allocError();
      *v87 = 0xD0000000000000DFLL;
      *(v87 + 8) = 0x80000002388DFAB0;
      *(v87 + 16) = MEMORY[0x277D84F90];
      *(v87 + 24) = 0;
      *(v87 + 32) = 6;
      (*(v82 + 8))(v17, v83);
      (*(v52 + 8))(v54, v50);
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
      v139 = v52;
      v140 = swift_allocError();
      (*(v139 + 16))(v141, v54, v50);
      sub_2388BDCAC(v140, v188 & 1);
      (*(v82 + 8))(v17, v83);
      (*(v139 + 8))(v54, v50);

      (*(v85 + 8))(v84, v180);
    }
  }

  else if (v56 == *MEMORY[0x277D0DB80])
  {
    (*(v55 + 96))(v27, v24);
    v103 = v168;
    v104 = v169;
    (*(v168 + 32))(v179, v27, v169);
    v105 = v170;
    sub_2388D1E98();
    v106 = v171;
    v107 = v172;
    if ((*(v171 + 88))(v105, v172) == *MEMORY[0x277D0DAB8])
    {
      v198 = 0;
      v199 = 0xE000000000000000;
      v108 = v164;
      sub_2388D1EA8();
      v109 = sub_2388D1E68();
      v111 = v110;
      v112 = *(v167 + 8);
      v113 = v108;
      v114 = v166;
      v167 += 8;
      v112(v113, v166);
      if (v111)
      {
        *&v195[0] = 0;
        *(&v195[0] + 1) = 0xE000000000000000;
        sub_2388D2FA8();

        strcpy(v195, "Schema name: ");
        HIWORD(v195[0]) = -4864;
        MEMORY[0x23EE66C20](v109, v111);

        MEMORY[0x23EE66C20](8238, 0xE200000000000000);
        MEMORY[0x23EE66C20](*&v195[0], *(&v195[0] + 1));
      }

      v115 = v165;
      v116 = v179;
      sub_2388D1EA8();
      v117 = sub_2388D1E78();
      v119 = v118;
      v112(v115, v114);
      MEMORY[0x23EE66C20](v117, v119);

      v120 = v198;
      v121 = v199;
      sub_2388151C8();
      swift_allocError();
      *v122 = v120;
      *(v122 + 8) = v121;
      *(v122 + 16) = MEMORY[0x277D84F90];
      *(v122 + 24) = 0;
      *(v122 + 32) = 3;
      (*(v168 + 8))(v116, v169);
      (*(v194 + 8))(v54, v193);
      (*(v171 + 8))(v170, v172);
    }

    else
    {
      sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
      v156 = swift_allocError();
      v157 = v194;
      (*(v194 + 16))(v158, v54, v50);
      sub_2388BDCAC(v156, v188 & 1);
      (*(v103 + 8))(v179, v104);
      (*(v157 + 8))(v54, v50);

      (*(v106 + 8))(v105, v107);
    }
  }

  else
  {
    sub_2388BFC74(&qword_27DF31770, MEMORY[0x277D0DBB0]);
    v153 = v52;
    v154 = swift_allocError();
    (*(v153 + 16))(v155, v54, v50);
    sub_2388BDCAC(v154, v188 & 1);
    (*(v153 + 8))(v54, v50);

    (*(v55 + 8))(v27, v24);
  }
}

uint64_t sub_2388BFC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2388BFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 <= 1u)
  {
    if (a8 >= 2u)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a8 != 2)
  {
    if (a8 != 3)
    {
      return result;
    }

LABEL_6:
  }
}

FoundationModels::GenerationID __swiftcall GenerationID.init()()
{
  v1 = v0;
  v2 = sub_2388D1058();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D1048();
  v7 = sub_2388D1038();
  v9 = v8;
  v10 = (*(v3 + 8))(v6, v2);
  *v1 = v7;
  v1[1] = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t static GenerationID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2388D3368();
  }
}

uint64_t GenerationID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2388D2938();
}

uint64_t GenerationID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

uint64_t sub_2388BFF34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

uint64_t sub_2388BFF80()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2388D2938();
}

uint64_t sub_2388BFF88()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

unint64_t sub_2388BFFD4()
{
  result = qword_27DF31788;
  if (!qword_27DF31788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31788);
  }

  return result;
}

void GenerationOptions.init(sampling:temperature:maximumResponseTokens:)(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = 1;
  v25 = 1;
  v24 = 1;
  if ((a5 & 1) == 0)
  {
    if (a4 <= 0)
    {
      v22 = v6;
      v9 = a3;
      v10 = a2;
      v11 = a6;
      if (qword_27DF2F9E0 != -1)
      {
        swift_once();
      }

      v12 = sub_2388D2408();
      sub_2388413AC(v12, qword_27DF3F8E0);
      v13 = sub_2388D23E8();
      v14 = sub_2388D2E18();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136446210;
        v17 = sub_2388D32F8();
        v19 = sub_2388C0770(v17, v18, &v23);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23880E000, v13, v14, "Maximum response tokens (%{public}s) must be positive.", v15, 0xCu);
        sub_2388158BC(v16);
        MEMORY[0x23EE68030](v16, -1, -1);
        MEMORY[0x23EE68030](v15, -1, -1);
      }

      a4 = 0;
      v8 = 1;
      a6 = v11;
      a2 = v10;
      a3 = v9;
      v6 = v22;
    }

    else
    {
      v8 = 0;
    }
  }

  v20 = v25;
  v21 = v24;
  *a6 = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3 & 1;
  *(a6 + 40) = 0;
  *(a6 + 48) = v20;
  *(a6 + 56) = 0;
  *(a6 + 64) = v21;
  *(a6 + 72) = a4;
  *(a6 + 80) = v8;
  *(a6 + 81) = 0;
}

void static GenerationOptions.SamplingMode.greedy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x80;
}

uint64_t static GenerationOptions.SamplingMode.random(top:seed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t static GenerationOptions.SamplingMode.random(probabilityThreshold:seed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1 | 0x40;
  return result;
}

__n128 GenerationOptions.sampling.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 GenerationOptions.sampling.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t GenerationOptions.temperature.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t GenerationOptions.temperature.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void GenerationOptions.repetition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t GenerationOptions.repetition.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void GenerationOptions.length.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t GenerationOptions.length.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t GenerationOptions.maximumResponseTokens.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t GenerationOptions.maximumResponseTokens.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

void GenerationOptions.init(sampling:temperature:maximumResponseTokens:allowsUnsupportedLanguagesInPrompt:)(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = 1;
  v27 = 1;
  v26 = 1;
  if ((a5 & 1) == 0)
  {
    if (a4 <= 0)
    {
      v23 = v7;
      v24 = a3;
      v10 = a6;
      v11 = a2;
      v12 = a7;
      if (qword_27DF2F9E0 != -1)
      {
        swift_once();
      }

      v13 = sub_2388D2408();
      sub_2388413AC(v13, qword_27DF3F8E0);
      v14 = sub_2388D23E8();
      v15 = sub_2388D2E18();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 136446210;
        v18 = sub_2388D32F8();
        v20 = sub_2388C0770(v18, v19, &v25);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_23880E000, v14, v15, "Maximum response tokens (%{public}s) must be positive.", v16, 0xCu);
        sub_2388158BC(v17);
        MEMORY[0x23EE68030](v17, -1, -1);
        MEMORY[0x23EE68030](v16, -1, -1);
      }

      a4 = 0;
      v9 = 1;
      a7 = v12;
      a2 = v11;
      a6 = v10;
      a3 = v24;
      v7 = v23;
    }

    else
    {
      v9 = 0;
    }
  }

  v21 = v27;
  v22 = v26;
  *a7 = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3 & 1;
  *(a7 + 40) = 0;
  *(a7 + 48) = v21;
  *(a7 + 56) = 0;
  *(a7 + 64) = v22;
  *(a7 + 72) = a4;
  *(a7 + 80) = v9;
  *(a7 + 81) = a6 & 1;
}

void sub_2388C0650(double a1)
{
  if (qword_27DF2F9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2388D2408();
  sub_2388413AC(v2, qword_27DF3F8E0);
  oslog = sub_2388D23E8();
  v3 = sub_2388D2E18();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349568;
    *(v4 + 4) = a1;
    *(v4 + 12) = 2050;
    *(v4 + 14) = 0;
    *(v4 + 22) = 2050;
    *(v4 + 24) = 0x3FF0000000000000;
    _os_log_impl(&dword_23880E000, oslog, v3, "Temperature (%{public}f) is out of range. It should be between %{public}f and %{public}f inclusive.", v4, 0x20u);
    MEMORY[0x23EE68030](v4, -1, -1);
  }
}

uint64_t sub_2388C0770(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2388C083C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2388411D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2388158BC(v11);
  return v7;
}

unint64_t sub_2388C083C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2388C0948(a5, a6);
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
    result = sub_2388D3008();
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

uint64_t sub_2388C0948(uint64_t a1, unint64_t a2)
{
  v4 = sub_2388C0994(a1, a2);
  sub_2388C0AC4(&unk_284B3ABF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2388C0994(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2388C0BB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2388D3008();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2388D2998();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2388C0BB0(v10, 0);
        result = sub_2388D2F68();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2388C0AC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2388C0C24(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2388C0BB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF30720, &qword_2388D6A30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2388C0C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF30720, &qword_2388D6A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t _s16FoundationModels17GenerationOptionsV12SamplingModeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      v8 = *a1;
      v9 = *a2;
      if ((v7 & 0xC0) == 0x40 && v3 == v6)
      {
        if (v4)
        {
          return (v7 & 1) != 0;
        }

        if ((v7 & 1) == 0 && v2 == v5)
        {
          return 1;
        }
      }
    }

    else
    {
      v13 = (v7 & 0xC0) == 0x80 && (v5 | *&v6) == 0;
      if (v13 && v7 == 128)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v7 >= 0x40 || *&v3 != *&v6)
  {
    return 0;
  }

  if (v4)
  {
    return (v7 & 1) != 0;
  }

  return (v7 & 1) == 0 && v2 == v5;
}

uint64_t _s16FoundationModels17GenerationOptionsV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = a1[7];
  v8 = *(a1 + 64);
  v9 = *(a1 + 9);
  v10 = *(a1 + 80);
  v11 = *(a1 + 81);
  v12 = *(a2 + 16);
  v13 = a2[3];
  v14 = *(a2 + 32);
  v15 = a2[5];
  v16 = *(a2 + 48);
  v17 = a2[7];
  v18 = *(a2 + 64);
  v19 = *(a2 + 9);
  v20 = *(a2 + 80);
  v21 = *(a2 + 81);
  if (v2 <= 0xFD)
  {
    v22 = *a2;
    v33 = *a1;
    v34 = v2;
    if (v12 > 0xFD)
    {
      return 0;
    }

    v31 = v22;
    v32 = v12;
    v29 = v4;
    v30 = v6;
    v23 = _s16FoundationModels17GenerationOptionsV12SamplingModeV2eeoiySbAE_AEtFZ_0(&v33, &v31);
    v4 = v29;
    v6 = v30;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12 <= 0xFD)
  {
    return 0;
  }

  if (v4)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v13)
    {
      v24 = v14;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v15)
    {
      v25 = v16;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (v18)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v7 == v17)
  {
    v26 = v18;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    return 0;
  }

LABEL_27:
  if (v10)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v19)
    {
      v28 = v20;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  return v11 ^ v21 ^ 1u;
}

__n128 sub_2388C0F34(uint64_t a1, uint64_t a2)
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

uint64_t sub_2388C0F58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2388C0FAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s16FoundationModels17GenerationOptionsV10RepetitionVwet_0(uint64_t a1, int a2)
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

uint64_t _s16FoundationModels17GenerationOptionsV10RepetitionVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_2388C1094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2388C10EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2388C1140(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2388C1170(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_2388C11AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40 && *&a1 == *&a4)
      {
        if (a3)
        {
          if (a6)
          {
            return 1;
          }
        }

        else if ((a6 & 1) == 0 && a2 == a5)
        {
          return 1;
        }
      }
    }

    else if ((a6 & 0xC0) == 0x80 && !(a5 | a4) && a6 == 128)
    {
      return 1;
    }
  }

  else if (a6 < 0x40u && a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GenerationSchema.init(root:dependencies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DynamicGenerationSchema(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388BCC08(a1);
  if (v3)
  {
    sub_2388C7054(a1, type metadata accessor for DynamicGenerationSchema);
  }

  else
  {
    sub_2388C6FEC(a1, v10, type metadata accessor for DynamicGenerationSchema);
    v12 = &v10[*(v7 + 32)];
    sub_23881FAC8(a2);
    sub_2388C7054(a1, type metadata accessor for DynamicGenerationSchema);
    sub_2388C6FEC(v10, a3, type metadata accessor for DynamicGenerationSchema);
    type metadata accessor for GenerationSchema.Kind(0);
    swift_storeEnumTagMultiPayload();
    v14 = *(v10 + 4);
    v13 = *(v10 + 5);

    sub_2388C7054(v10, type metadata accessor for DynamicGenerationSchema);
    result = type metadata accessor for GenerationSchema(0);
    v15 = (a3 + *(result + 20));
    *v15 = v14;
    v15[1] = v13;
  }

  return result;
}

uint64_t sub_2388C1414(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for StringGuides(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(v4 + 48);
  v11 = *(v4 + 52);
  v12 = swift_allocObject();
  sub_238828538(v8, v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
  v13 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 256;
  v14 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 256;
  v15 = v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  *(v12 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  v16 = *(a1 + 16);

  v18 = v12;
  if (v16)
  {
    v19 = 0;
    while (v19 < *(a1 + 16))
    {
      v20 = v19 + 1;
      v21 = *(a1 + 32 + 8 * v19);

      v18 = sub_23882A884(v22);

      v19 = v20;
      if (v16 == v20)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    sub_2388C6F7C(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
    v23 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 16);
    v24 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 24);
    v25 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 25);
    v26 = v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
    *v26 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer);
    *(v26 + 2) = v23;
    v26[24] = v24;
    v26[25] = v25;
    v27 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 16);
    v28 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 24);
    v29 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25);
    v30 = v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
    *v30 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double);
    *(v30 + 2) = v27;
    v30[24] = v28;
    v30[25] = v29;
    v31 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
    v32 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 8);
    v33 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 16);
    v34 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 24);
    v35 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array + 32);
    v36 = (v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
    *v36 = v31;
    v36[1] = v32;
    v36[2] = v33;
    v36[3] = v34;
    v36[4] = v35;
    v37 = *(v18 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
    sub_23882BB28(v31, v32, v33, v34, v35);
    sub_23882BB18(v37);

    *(v2 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = v37;
    return v2;
  }

  return result;
}

uint64_t sub_2388C16F8@<X0>(void *a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for DynamicGenerationSchema(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for GenerationSchema(0);
  v86 = *(v83 - 8);
  v7 = *(v86 + 64);
  v8 = MEMORY[0x28223BE20](v83);
  v85 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v77 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v77 - v13;
  v15 = type metadata accessor for GenerationSchema.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (v77 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = v77 - v23;
  sub_2388C6FEC(v1, v77 - v23, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    return sub_2388C6728(v24, v78, type metadata accessor for DynamicGenerationSchema);
  }

  v79 = v12;
  v77[0] = v2;
  sub_2388C7054(v24, type metadata accessor for GenerationSchema.Kind);
  v26 = sub_2388C36E4();
  v27 = &v89;
  v77[1] = v1;
  sub_2388C6FEC(v1, v22, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v82 = v6;
  v81 = v15;
  if (EnumCaseMultiPayload >= 2)
  {
    sub_2388C7054(v22, type metadata accessor for GenerationSchema.Kind);
    v90 = 0;
    v91 = 0;
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = *v22;
    v29 = v22[1];
    v32 = v22[3];
    v31 = v22[4];

    v90 = v30;
    v91 = v29;
    if (v29)
    {

      v33 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_6;
    }

    v33 = MEMORY[0x277D84F90];
    v6 = v82;
  }

LABEL_11:
  sub_238827E88((v27 + 32), &qword_27DF2FD18, &unk_2388D5400);
  v37 = sub_2388C6560(v33);

  v92 = v37;
  v38 = v26[2];
  if (v38)
  {
    v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v84 = MEMORY[0x277D84F90];
    v27 = v83;
    v80 = v3;
    while (1)
    {
      while (1)
      {
        sub_2388C6FEC(v26 + v87, v14, type metadata accessor for GenerationSchema);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v38 - 1) > v26[3] >> 1)
        {
          v26 = sub_2388B7468(isUniquelyReferenced_nonNull_native, v38, 1, v26);
        }

        v40 = v26 + v87;
        sub_2388C7054(v26 + v87, type metadata accessor for GenerationSchema);
        v30 = *(v86 + 72);
        if (v30 > 0 || v40 >= v40 + v30 + (v26[2] - 1) * v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v30)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        --v26[2];
        v93 = v26;
        sub_2388C6FEC(v14, v19, type metadata accessor for GenerationSchema.Kind);
        if (swift_getEnumCaseMultiPayload() >= 2)
        {
          break;
        }

        v41 = *v19;
        v42 = v19[1];
        v44 = v19[3];
        v43 = v19[4];

        v45 = v92;
        if (*(v92 + 16) && (v46 = *(v92 + 40), sub_2388D34A8(), sub_2388D2938(), v47 = sub_2388D34E8(), v48 = -1 << *(v45 + 32), v49 = v47 & ~v48, ((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
        {
          v50 = ~v48;
          while (1)
          {
            v51 = (*(v45 + 48) + 16 * v49);
            v52 = *v51 == v41 && v51[1] == v42;
            if (v52 || (sub_2388D3368() & 1) != 0)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            if (((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          sub_2388C7054(v14, type metadata accessor for GenerationSchema);

          v3 = v80;
          v6 = v82;
          v27 = v83;
        }

        else
        {
LABEL_33:
          sub_2388BA540(&v88, v41, v42);

          v53 = v79;
          sub_2388C6FEC(v14, v79, type metadata accessor for GenerationSchema);
          v54 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_2388B7468(0, v54[2] + 1, 1, v54);
          }

          v3 = v80;
          v6 = v82;
          v56 = v54[2];
          v55 = v54[3];
          v27 = v83;
          if (v56 >= v55 >> 1)
          {
            v54 = sub_2388B7468(v55 > 1, v56 + 1, 1, v54);
          }

          v54[2] = v56 + 1;
          v84 = v54;
          sub_2388C6728(v53, v54 + v87 + v56 * v30, type metadata accessor for GenerationSchema);
          v57 = sub_2388C36E4();
          sub_23881FB14(v57);
          sub_2388C7054(v14, type metadata accessor for GenerationSchema);
          v26 = v93;
        }

        v38 = v26[2];
        if (!v38)
        {
          goto LABEL_54;
        }
      }

      sub_2388C7054(v19, type metadata accessor for GenerationSchema.Kind);
      v29 = v14;
      v58 = sub_2388C36E4();
      v33 = *(v58 + 16);
      v59 = v26[2];
      v60 = &v33[v59];
      if (__OFADD__(v59, v33))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        v33 = sub_2388B686C(0, *(v33 + 2) + 1, 1, v33);
LABEL_6:
        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_2388B686C((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v36 = &v33[16 * v35];
        *(v36 + 4) = v30;
        *(v36 + 5) = v29;
        v6 = v82;
        goto LABEL_11;
      }

      if (v60 > v26[3] >> 1)
      {
        if (v59 <= v60)
        {
          v65 = &v33[v59];
        }

        else
        {
          v65 = v26[2];
        }

        v29 = v58;
        v26 = sub_2388B7468(1uLL, v65, 1, v26);
        v58 = v29;
        v59 = v26[2];
        if (*(v29 + 2))
        {
LABEL_41:
          if (((v26[3] >> 1) - v59) < v33)
          {
            goto LABEL_64;
          }

          v29 = v58;
          swift_arrayInitWithCopy();

          if (v33)
          {
            v62 = v26[2];
            v63 = __OFADD__(v62, v33);
            v64 = &v33[v62];
            if (v63)
            {
              goto LABEL_65;
            }

            v26[2] = v64;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v61 = *(v58 + 16);
        if (v33)
        {
          goto LABEL_41;
        }
      }

      if (v33)
      {
        goto LABEL_63;
      }

LABEL_14:
      v93 = v26;
      sub_2388C7054(v14, type metadata accessor for GenerationSchema);
      v38 = v26[2];
      if (!v38)
      {
        goto LABEL_54;
      }
    }
  }

  v84 = MEMORY[0x277D84F90];
LABEL_54:
  v66 = v84;
  v67 = v84[2];
  if (v67)
  {
    v88 = MEMORY[0x277D84F90];
    sub_2388B7CD8(0, v67, 0);
    v68 = v88;
    v69 = v66 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v70 = *(v86 + 72);
    do
    {
      v71 = v85;
      sub_2388C6FEC(v69, v85, type metadata accessor for GenerationSchema);
      sub_2388C3EA8(1, v6);
      sub_2388C7054(v71, type metadata accessor for GenerationSchema);
      v88 = v68;
      v73 = *(v68 + 16);
      v72 = *(v68 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_2388B7CD8(v72 > 1, v73 + 1, 1);
        v68 = v88;
      }

      *(v68 + 16) = v73 + 1;
      sub_2388C6728(v6, v68 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v73, type metadata accessor for DynamicGenerationSchema);
      v69 += v70;
      --v67;
    }

    while (v67);
  }

  else
  {

    v68 = MEMORY[0x277D84F90];
  }

  v74 = v78;
  sub_2388C3EA8(1, v78);
  v75 = *(v77[0] + 32);
  v76 = *(v74 + v75);

  *(v74 + v75) = v68;
  return result;
}