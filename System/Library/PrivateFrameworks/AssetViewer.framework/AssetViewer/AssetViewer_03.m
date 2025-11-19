uint64_t sub_241279A94(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10 + 16;
  v12 = a1[5];
  v23[4] = a1[4];
  v23[5] = v12;
  v24[0] = a1[6];
  *(v24 + 9) = *(a1 + 105);
  v13 = a1[1];
  v23[0] = *a1;
  v23[1] = v13;
  v14 = a1[3];
  v23[2] = a1[2];
  v23[3] = v14;
  swift_beginAccess();
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v15 = qword_27E53A740;
  v16 = sub_241353EEC();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = qword_27E537D00;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_27E53A738;
  v19 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  *(v20 + 32) = v15;
  *(v20 + 40) = 9;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;

  sub_241327238(0, 0, v11, &unk_241366D18, v20);

  return a5(v23);
}

void sub_241279CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(_OWORD *), uint64_t a9)
{
  v41 = a3;
  v42 = a4;
  v46 = a2;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v39 = *(Information - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](Information);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_241353ABC();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = swift_allocObject();
  v43 = a6;
  v44 = a8;
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a8;
  v15[5] = a9;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = sub_2412807A0;
  v48 = v16;
  v16[4] = v15;
  sub_241353A9C();
  sub_241352C5C();
  v49 = a7;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v50 = a5;

  v47 = v15;

  v17 = sub_241353A7C();
  if (v17)
  {
    v18 = v17;
    sub_241353A8C();
    MEMORY[0x245CE1E80](0xD000000000000031, 0x800000024135EEA0);
    LOBYTE(v60[0]) = 0;
    sub_241353B0C();

    v20 = Information;
    v19 = v46;
    sub_2412705A0(*(v46 + *(Information + 36)), *(v46 + *(Information + 36) + 8));

    v33 = v40;
    sub_24127BF00(v19, v40);
    v34 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v35 = swift_allocObject();
    v36 = v42;
    v35[2] = v41;
    v35[3] = v36;
    v35[4] = v18;
    sub_241244A20(v33, v35 + v34);
    v37 = (v35 + ((v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = MEMORY[0x277D84F90];
    v37[1] = 0x656E6961746E6F43;
    v37[2] = 0xE900000000000072;

    sub_241353A4C();
    if (*(v19 + *(v20 + 28)))
    {
      sub_24135397C();
    }

    else
    {
      sub_241353A6C();
    }
  }

  else
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v21 = sub_241352FFC();
    __swift_project_value_buffer(v21, qword_27E5384A0);
    v22 = sub_241352FDC();
    v23 = sub_2413540DC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v48;
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_241215000, v22, v23, "Unable to create Live Pipeline Instance", v26, 2u);
      MEMORY[0x245CE4870](v26, -1, -1);
    }

    MEMORY[0x28223BE20](v27);
    *(&v39 - 2) = sub_241280850;
    *(&v39 - 1) = v25;
    v28 = [objc_opt_self() currentThread];
    v29 = [v28 isMainThread];

    if (v29)
    {
      sub_241255C30();
      v30 = swift_allocError();
      *v31 = 0xD000000000000027;
      *(v31 + 8) = 0x800000024135EE70;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *&v58[0] = v30;
      sub_24127BE04(v58);
      v55 = v58[4];
      v56 = v58[5];
      v57[0] = v59[0];
      *(v57 + 9) = *(v59 + 9);
      v51 = v58[0];
      v52 = v58[1];
      v53 = v58[2];
      v54 = v58[3];
      v32 = v49;

      sub_241279A94(&v51, v50, v43, v32, v44);

      v60[4] = v55;
      v60[5] = v56;
      v61[0] = v57[0];
      *(v61 + 9) = *(v57 + 9);
      v60[0] = v51;
      v60[1] = v52;
      v60[2] = v53;
      v60[3] = v54;
      sub_241246278(v60, &qword_27E538348);
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v38 = sub_24135416C();
      sub_24135417C();
    }
  }
}

uint64_t sub_24127A4CC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *), uint64_t a7)
{
  v97 = a7;
  v98 = a5;
  v96 = a3;
  v99 = a2;
  v92 = a1;
  v12 = sub_2413538CC();
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2413538FC();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v15 = *(Information - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](Information);
  v82 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v94 = &v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v90 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  v24 = swift_allocObject();
  v80 = a4;
  v81 = a6;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 2) = a3;
  *(v25 + 3) = sub_2412807A0;
  *(v25 + 4) = v24;
  LODWORD(v99) = *v99;
  v26 = v92;
  sub_24127BF00(v92, v23);
  v27 = *(v15 + 80);
  v28 = (v27 + 16) & ~v27;
  v89 = v16;
  v29 = v28 + v16;
  v30 = (v28 + v16) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v23;
  v33 = v25;
  sub_241244A20(v32, v31 + v28);
  *(v31 + v29) = v99;
  v34 = v31;
  v35 = v31 + v30;
  *(v35 + 8) = sub_24127F20C;
  *(v35 + 16) = v33;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v93 = v24;
  swift_retain_n();
  v99 = v33;

  sub_2413514EC();
  sub_241353B1C();
  swift_allocObject();
  v36 = sub_241353ADC();
  v95 = v36;
  if (v36)
  {
    v37 = v36;
    v38 = v90;
    sub_24127BF00(v26, v90);
    sub_24127BF00(v38, v94);
    v39 = (v27 + 40) & ~v27;
    v40 = (v89 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v41[2] = v37;
    v41[3] = sub_24127F20C;
    v41[4] = v99;
    v42 = sub_241244A20(v38, v41 + v39);
    v43 = (v41 + v40);
    *v43 = sub_24127F210;
    v43[1] = v31;
    v44 = v26 + *(Information + 28);
    v45 = *v44;
    if (*v44)
    {
      v46 = *(v44 + 8);

      sub_24127EF78(v45, v46);
      sub_241244A8C(v94);

      v47 = swift_allocObject();
      *(v47 + 16) = sub_24127F21C;
      *(v47 + 24) = v41;
      *&v111 = sub_241255F00;
      *(&v111 + 1) = v47;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v110 = sub_2412D5698;
      *(&v110 + 1) = &block_descriptor_230;
      v48 = _Block_copy(&aBlock);

      v49 = v83;
      sub_2413538DC();
      *&v107[0] = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
      v94 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
      sub_24123D370(&qword_27E539880, &unk_27E538930);
      v50 = v85;
      v51 = v88;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v49, v50, v48);
      _Block_release(v48);

      (*(v87 + 8))(v50, v51);
      (*(v84 + 8))(v49, v86);
    }

    else
    {
      v65 = v94;
      MEMORY[0x28223BE20](v42);
      v66 = objc_opt_self();

      v67 = [v66 currentThread];
      v68 = [v67 isMainThread];

      v69 = v96;
      if (v68)
      {
        v70 = v98;

        v71 = v97;

        sub_241279CDC(v95, v65, sub_24127F210, v34, v69, v80, v70, v81, v71);

        sub_241244A8C(v65);
      }

      else
      {
        sub_241244A8C(v65);
        sub_241246158(0, &qword_27E538920);
        v78 = sub_24135416C();
        sub_24135417C();
      }
    }
  }

  else
  {
    v52 = v82;
    v94 = v31;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v53 = sub_241352FFC();
    __swift_project_value_buffer(v53, qword_27E5384A0);
    sub_24127BF00(v26, v52);
    v54 = sub_241352FDC();
    v55 = sub_2413540DC();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v96;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136380675;
      v60 = sub_2413514EC();
      v62 = v61;
      sub_241244A8C(v52);
      v63 = sub_2412DDC2C(v60, v62, &aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_241215000, v54, v55, "Unable to create stage for file %{private}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x245CE4870](v59, -1, -1);
      MEMORY[0x245CE4870](v58, -1, -1);
    }

    else
    {

      v64 = sub_241244A8C(v52);
    }

    MEMORY[0x28223BE20](v64);
    v72 = [objc_opt_self() currentThread];
    v73 = [v72 isMainThread];

    if (v73)
    {
      sub_241255C30();
      v74 = swift_allocError();
      *v75 = 0xD000000000000017;
      *(v75 + 8) = 0x800000024135EE50;
      *(v75 + 16) = 0;
      *(v75 + 24) = 0;
      *&v107[0] = v74;
      sub_24127BE04(v107);
      v104 = v107[4];
      v105 = v107[5];
      v106[0] = v108[0];
      *(v106 + 9) = *(v108 + 9);
      v100 = v107[0];
      v101 = v107[1];
      v102 = v107[2];
      v103 = v107[3];
      v76 = v98;

      sub_241279A94(&v100, v57, v80, v76, v81);

      v113 = v104;
      v114 = v105;
      v115[0] = v106[0];
      *(v115 + 9) = *(v106 + 9);
      aBlock = v100;
      v110 = v101;
      v111 = v102;
      v112 = v103;
      sub_241246278(&aBlock, &qword_27E538348);
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v77 = sub_24135416C();
      sub_24135417C();
    }
  }

  return v95;
}

uint64_t sub_24127B0A4(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v95 = *(Information - 8);
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](Information);
  v96 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v85[-v15];
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v91 = a3;
  v92 = a5;
  v17[4] = a4;
  v17[5] = a5;
  v99 = v17;
  v17[6] = a6;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v98 = a1;
  sub_2413513FC();
  sub_241353C8C();

  v18 = sub_24135486C();

  if (v18 == 1)
  {
    v86 = 1;
  }

  else
  {
    if (v18)
    {
      sub_241255C30();
      v48 = swift_allocError();
      *(v49 + 8) = 0;
      *(v49 + 16) = 0;
      *v49 = 1;
      *(v49 + 24) = 2;
      *&v107[0] = v48;
      sub_24127BE04(v107);
      v104 = v107[4];
      v105 = v107[5];
      v106[0] = v108[0];
      *(v106 + 9) = *(v108 + 9);
      v100 = v107[0];
      v101 = v107[1];
      v102 = v107[2];
      v103 = v107[3];
      sub_24124E364(&v100, a2, v91, a4, v92, a6);
      v109[4] = v104;
      v109[5] = v105;
      v110[0] = v106[0];
      *(v110 + 9) = *(v106 + 9);
      v109[0] = v100;
      v109[1] = v101;
      v109[2] = v102;
      v109[3] = v103;
      sub_241246278(v109, &qword_27E538348);

LABEL_17:

      goto LABEL_18;
    }

    v86 = 0;
  }

  v93 = a2;
  v90 = a6;
  v19 = sub_24135142C();
  v21 = v20;
  v22 = swift_allocObject();
  v94 = v19;
  v22[2] = v19;
  v22[3] = v21;
  v23 = v99;
  v89 = v22;
  v22[4] = sub_24127BE00;
  v22[5] = v23;
  v24 = qword_27E537D08;
  v97 = v21;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = a4;
  v26 = qword_27E53A740;
  v27 = sub_241353EEC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v87 = v28 + 56;
  v88 = v29;
  v29(v16, 1, 1, v27);
  v30 = qword_27E537D00;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27E53A738;
  v32 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  *(v33 + 32) = v26;
  *(v33 + 40) = 9;
  v34 = v97;
  *(v33 + 48) = v94;
  *(v33 + 56) = v34;

  sub_241327238(0, 0, v16, &unk_241366C18, v33);

  v35 = v98;
  if ((*(v98 + *(Information + 48)) & 1) != 0 || (v36 = [objc_opt_self() useEntityLoadFor3DLoading], v36))
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v94 = v25;
    v37 = sub_241352FFC();
    __swift_project_value_buffer(v37, qword_27E5384A0);
    v38 = sub_241352FDC();
    v39 = sub_2413540DC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_241215000, v38, v39, "Override using Entity.load", v40, 2u);
      MEMORY[0x245CE4870](v40, -1, -1);
    }

    v88(v16, 1, 1, v27);
    v41 = v96;
    sub_24127BF00(v35, v96);
    sub_241353ECC();
    v42 = v99;

    v43 = sub_241353EBC();
    v44 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D85700];
    *(v45 + 16) = v43;
    *(v45 + 24) = v46;
    sub_241244A20(v41, v45 + v44);
    v47 = (v45 + ((v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_24127BE00;
    v47[1] = v42;
    sub_241241C74(0, 0, v16, &unk_241366C28, v45);

    swift_bridgeObjectRelease_n();

    goto LABEL_17;
  }

  v51 = v25;
  v52 = v93;
  if (v86)
  {
    if ((*(v35 + *(Information + 44)) & 1) == 0)
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v76 = sub_241352FFC();
      __swift_project_value_buffer(v76, qword_27E5384A0);
      v77 = sub_241352FDC();
      v78 = sub_2413540DC();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        v81 = [objc_opt_self() currentThread];
        *(v79 + 4) = v81;
        *v80 = v81;
        _os_log_impl(&dword_241215000, v77, v78, "Using RIO/CDM loading, Thread: %@", v79, 0xCu);
        sub_241246278(v80, &unk_27E539B90);
        MEMORY[0x245CE4870](v80, -1, -1);
        MEMORY[0x245CE4870](v79, -1, -1);
      }

      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      LOBYTE(v109[0]) = 0;

      v83 = sub_24127A4CC(v35, v109, v82, v94, v97, sub_24127BE00, v99);

      swift_bridgeObjectRelease_n();

      swift_beginAccess();
      *(v82 + 16) = v83;

      goto LABEL_17;
    }

    MEMORY[0x28223BE20](v36);
    *&v85[-32] = v53;
    *&v85[-24] = sub_24127BE10;
    *&v85[-16] = v89;
    v54 = objc_opt_self();
    v55 = [v54 currentThread];
    v56 = [v55 isMainThread];

    if (v56)
    {
      v57 = qword_27E537B10;
      v58 = v93;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = sub_241352FFC();
      __swift_project_value_buffer(v59, qword_27E5384A0);
      v60 = sub_241352FDC();
      v61 = sub_2413540DC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        v64 = [v54 currentThread];
        *(v62 + 4) = v64;
        *v63 = v64;
        _os_log_impl(&dword_241215000, v60, v61, "Using legacy SceneImport loading, Thread: %@", v62, 0xCu);
        sub_241246278(v63, &unk_27E539B90);
        v65 = v63;
        v58 = v93;
        MEMORY[0x245CE4870](v65, -1, -1);
        MEMORY[0x245CE4870](v62, -1, -1);
      }

      v66 = v90;

      sub_2412787A8(v98, v94, v97, v58, v91, v51, v92, v66);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v84 = sub_24135416C();
      sub_24135417C();

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v67 = v90;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v68 = sub_241352FFC();
    __swift_project_value_buffer(v68, qword_27E5384A0);
    v69 = sub_241352FDC();
    v70 = sub_2413540DC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = [objc_opt_self() currentThread];
      *(v71 + 4) = v73;
      *v72 = v73;
      _os_log_impl(&dword_241215000, v69, v70, "Importing Reality File, Thread: %@", v71, 0xCu);
      sub_241246278(v72, &unk_27E539B90);
      v74 = v72;
      v52 = v93;
      MEMORY[0x245CE4870](v74, -1, -1);
      MEMORY[0x245CE4870](v71, -1, -1);
    }

    v75 = v97;

    sub_241276040(v98, v94, v75, v52, v91, v51, v92, v67);

    swift_bridgeObjectRelease_n();
  }

LABEL_18:
}

uint64_t sub_24127BE1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24124647C;

  return sub_241346D40(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24127BF00(uint64_t a1, uint64_t a2)
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  (*(*(Information - 8) + 16))(a2, a1, Information);
  return a2;
}

uint64_t sub_24127BF64(uint64_t a1)
{
  v4 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24124647C;

  return sub_2412624BC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24127C104(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24127C178(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v31 = a3;
  v32 = a2;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v8 = *(Information - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](Information);
  v10 = sub_241353ABC();
  MEMORY[0x28223BE20](v10 - 8);
  sub_241353A9C();
  sub_241352C5C();

  v11 = sub_241353A7C();
  if (v11)
  {
    v12 = v11;
    sub_241353A8C();
    MEMORY[0x245CE1E80](0xD000000000000031, 0x800000024135EEA0);
    LOBYTE(v42[0]) = 0;
    sub_241353B0C();

    sub_2412705A0(*(a4 + *(Information + 36)), *(a4 + *(Information + 36) + 8));

    sub_24127BF00(a4, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v25 = swift_allocObject();
    v26 = v30;
    v25[2] = v29;
    v25[3] = v26;
    v25[4] = v12;
    sub_241244A20(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    v27 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = MEMORY[0x277D84F90];
    v27[1] = 0x656E6961746E6F43;
    v27[2] = 0xE900000000000072;

    sub_241353A4C();
    if (*(a4 + *(Information + 28)))
    {
      sub_24135397C();
    }

    else
    {
      sub_241353A6C();
    }
  }

  else
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v13 = sub_241352FFC();
    __swift_project_value_buffer(v13, qword_27E5384A0);
    v14 = sub_241352FDC();
    v15 = sub_2413540DC();
    v16 = v31;
    v17 = v32;
    if (os_log_type_enabled(v14, v15))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_241215000, v14, v15, "Unable to create Live Pipeline Instance", v18, 2u);
      MEMORY[0x245CE4870](v18, -1, -1);
    }

    MEMORY[0x28223BE20](v19);
    *(&v29 - 2) = v17;
    *(&v29 - 1) = v16;
    v20 = [objc_opt_self() currentThread];
    v21 = [v20 isMainThread];

    if (v21)
    {
      sub_241255C30();
      v22 = swift_allocError();
      *v23 = 0xD000000000000027;
      *(v23 + 8) = 0x800000024135EE70;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *&v40[0] = v22;
      sub_24127BE04(v40);
      v37 = v40[4];
      v38 = v40[5];
      v39[0] = v41[0];
      *(v39 + 9) = *(v41 + 9);
      v33 = v40[0];
      v34 = v40[1];
      v35 = v40[2];
      v36 = v40[3];
      v17(&v33);
      v42[4] = v37;
      v42[5] = v38;
      v43[0] = v39[0];
      *(v43 + 9) = *(v39 + 9);
      v42[0] = v33;
      v42[1] = v34;
      v42[2] = v35;
      v42[3] = v36;
      sub_241246278(v42, &qword_27E538348);
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v28 = sub_24135416C();
      sub_24135417C();
    }
  }
}

uint64_t sub_24127C7E4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *a2;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v18 = (a1 + *(Information + 32));
  v19 = v18[1];
  v116.i64[0] = *v18;
  v116.i64[1] = v19;
  LOBYTE(v117) = v16;
  *(&v117 + 1) = 514;
  *(&v117 + 1) = -1;
  *&v118 = a3;
  *(&v118 + 1) = a4;
  v119 = a5;
  v20 = 0x27E537000;
  if (*(a1 + *(Information + 44)) == 1)
  {
    v21 = objc_allocWithZone(MEMORY[0x277D778A8]);

    v22 = sub_24135144C();
    v23 = [v21 initSceneFromURL_];

    if (!v23)
    {
LABEL_50:

      v20 = 0x27E537000uLL;
      goto LABEL_51;
    }

    v24 = [v23 metadata];
    sub_241246158(0, &qword_27E538598);
    v25 = sub_241353B5C();

    v94 = a8;
    v96 = a6;
    if (*(v25 + 16) && (v26 = sub_2412FDA14(0x79616C506F747561, 0xE800000000000000), (v27 & 1) != 0))
    {
      v28 = *(*(v25 + 56) + 8 * v26);

      v29 = [v28 BOOLValue];

      BYTE1(v117) = v29;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v30 = sub_241352FFC();
      __swift_project_value_buffer(v30, qword_27E5384A0);
      v31 = sub_241352FDC();
      v32 = sub_2413540DC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 67109120;
        *(v33 + 4) = v29;
        _os_log_impl(&dword_241215000, v31, v32, "[AssetLoader] USDZ+ specifies shouldAutoPlay = %{BOOL}d", v33, 8u);
        MEMORY[0x245CE4870](v33, -1, -1);
      }
    }

    else
    {
    }

    v34 = [v23 metadata];
    v35 = sub_241353B5C();

    if (*(v35 + 16) && (v36 = sub_2412FDA14(0x6B63616279616C70, 0xEC00000065646F4DLL), (v37 & 1) != 0))
    {
      v38 = *(*(v35 + 56) + 8 * v36);

      v39 = [v38 stringValue];

      if (v39)
      {
        v40 = sub_241353C0C();
        v42 = v41;

        if (v40 == 1886351212 && v42 == 0xE400000000000000)
        {

          v43 = 1;
        }

        else
        {
          v43 = sub_24135497C();
        }

        a8 = v95;
        swift_beginAccess();
        BYTE2(v117) = v43 & 1;
        if (qword_27E537B10 != -1)
        {
          swift_once();
        }

        v65 = sub_241352FFC();
        __swift_project_value_buffer(v65, qword_27E5384A0);
        v59 = sub_241352FDC();
        v60 = sub_2413540DC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = v95;
          v62 = swift_slowAlloc();
          *v62 = 67109120;
          *(v62 + 4) = v43 & 1;
          v64 = "[AssetLoader] USDZ+ specifies shouldAnimationLoop = %{BOOL}d";
          goto LABEL_41;
        }

LABEL_42:
        a6 = v96;
        goto LABEL_43;
      }
    }

    else
    {
    }

    v44 = [v23 rootNode];
    v45 = sub_241353BDC();
    v46 = sub_241353BDC();
    v47 = [v44 dictionaryMetadataWithKey:v45 dictionaryKey:v46];

    if (v47 && (v48 = [v47 stringValue], v47, v48))
    {
      v49 = sub_241353C0C();
      v51 = v50;

      if (v49 == 1886351212 && v51 == 0xE400000000000000)
      {

        v52 = 1;
      }

      else
      {
        v52 = sub_24135497C();
      }

      a8 = v95;
      swift_beginAccess();
      BYTE2(v117) = v52 & 1;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v63 = sub_241352FFC();
      __swift_project_value_buffer(v63, qword_27E5384A0);
      v59 = sub_241352FDC();
      v60 = sub_2413540DC();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_42;
      }

      v61 = v95;
      v62 = swift_slowAlloc();
      *v62 = 67109120;
      *(v62 + 4) = v52 & 1;
    }

    else
    {
      v53 = [v23 rootNode];
      v54 = sub_241353BDC();
      v55 = sub_241353BDC();
      v56 = [v53 dictionaryMetadataWithKey:v54 dictionaryKey:v55];

      a8 = v95;
      if (!v56)
      {
        goto LABEL_44;
      }

      v57 = [v56 BOOLValue];

      swift_beginAccess();
      BYTE2(v117) = v57;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v58 = sub_241352FFC();
      __swift_project_value_buffer(v58, qword_27E5384A0);
      v59 = sub_241352FDC();
      v60 = sub_2413540DC();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_42;
      }

      v61 = v95;
      v62 = swift_slowAlloc();
      *v62 = 67109120;
      *(v62 + 4) = v57;
    }

    v64 = "[AssetLoader] USDZ customLayerData specifies shouldAnimationLoop = %{BOOL}d";
LABEL_41:
    _os_log_impl(&dword_241215000, v59, v60, v64, v62, 8u);
    MEMORY[0x245CE4870](v62, -1, -1);
    a6 = v96;
    a8 = v61;
LABEL_43:

LABEL_44:
    v66 = v23;
    v67 = sub_241353BDC();
    v68 = sub_241353BDC();
    v69 = [v66 dictionaryMetadataWithKey:v67 dictionaryKey:v68];

    if (v69)
    {
      v70 = [v69 intValue];

      swift_beginAccess();
      *(&v117 + 1) = v70;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v71 = sub_241352FFC();
      __swift_project_value_buffer(v71, qword_27E5384A0);
      v72 = sub_241352FDC();
      v73 = sub_2413540DC();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 67109120;
        *(v74 + 4) = v70;
        _os_log_impl(&dword_241215000, v72, v73, "[AssetLoader] USDZ customLayerData specifies Apple:preferredIblVersion = %d", v74, 8u);
        MEMORY[0x245CE4870](v74, -1, -1);
      }
    }

    goto LABEL_50;
  }

  sub_2413514EC();
  sub_241353B1C();
  swift_allocObject();
  if (sub_241353ADC())
  {
    sub_241263F88(&v116);
  }

LABEL_51:
  v75 = objc_opt_self();
  if ([v75 overridePreferredIblVersionKey] >= 1)
  {
    if (*(v20 + 2832) != -1)
    {
      swift_once();
    }

    v76 = sub_241352FFC();
    __swift_project_value_buffer(v76, qword_27E5384A0);
    v77 = sub_241352FDC();
    v78 = sub_2413540DC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 134217984;
      *(v79 + 4) = [v75 overridePreferredIblVersionKey];
      _os_log_impl(&dword_241215000, v77, v78, "Overriding fileMetadata.preferredIBLVersion: %ld", v79, 0xCu);
      MEMORY[0x245CE4870](v79, -1, -1);
    }

    v80 = [v75 overridePreferredIblVersionKey];
    swift_beginAccess();
    *(&v117 + 1) = v80;
  }

  swift_beginAccess();
  v112 = v116;
  v113 = v117;
  v114 = v118;
  v115 = v119;
  sub_241255B50(&v112, &v105);
  if (*(v20 + 2832) != -1)
  {
    swift_once();
  }

  v81 = sub_241352FFC();
  __swift_project_value_buffer(v81, qword_27E5384A0);
  sub_241255B50(&v112, &v105);
  v82 = sub_241352FDC();
  v83 = sub_2413540DC();
  sub_241244AE8(&v112);
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = a8;
    v86 = swift_slowAlloc();
    v97 = v86;
    *v84 = 136315138;
    v98 = v112;
    v99 = v113;
    v100 = v114;
    *&v101 = v115;
    sub_241255B50(&v112, &v105);
    v87 = AssetLoader.FileMetadata.description.getter();
    v88 = a6;
    v90 = v89;
    v105 = v98;
    v106 = v99;
    v107 = v100;
    *&v108 = v101;
    sub_241244AE8(&v105);
    v91 = sub_2412DDC2C(v87, v90, &v97);
    a6 = v88;

    *(v84 + 4) = v91;
    _os_log_impl(&dword_241215000, v82, v83, "[AssetLoader] fileMetadata %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    v92 = v86;
    a8 = v85;
    MEMORY[0x245CE4870](v92, -1, -1);
    MEMORY[0x245CE4870](v84, -1, -1);
  }

  v105 = v112;
  v106 = v113;
  v107 = v114;
  *&v108 = v115;
  sub_241265FA4(&v105, a8, a10, &v98);
  a6(&v98);
  v109 = v102;
  v110 = v103;
  v111[0] = v104[0];
  *(v111 + 9) = *(v104 + 9);
  v105 = v98;
  v106 = v99;
  v107 = v100;
  v108 = v101;
  sub_241246278(&v105, &qword_27E538348);
  sub_241244AE8(&v112);
  v98 = v116;
  v99 = v117;
  v100 = v118;
  *&v101 = v119;
  return sub_241244AE8(&v98);
}

uint64_t sub_24127D500(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v11 = *a2;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v13 = (a1 + *(Information + 32));
  v14 = v13[1];
  *&v86 = *v13;
  *(&v86 + 1) = v14;
  LOBYTE(v87) = v11;
  *(&v87 + 1) = 514;
  *(&v87 + 1) = -1;
  *&v88 = a3;
  *(&v88 + 1) = a4;
  v89 = a5;
  if (*(a1 + *(Information + 44)))
  {
    v15 = objc_allocWithZone(MEMORY[0x277D778A8]);

    v16 = sub_24135144C();
    v17 = [v15 initSceneFromURL_];

    if (!v17)
    {
LABEL_49:

      goto LABEL_50;
    }

    v75 = a6;
    v18 = [v17 metadata];
    sub_241246158(0, &qword_27E538598);
    v19 = sub_241353B5C();

    if (*(v19 + 16) && (v20 = sub_2412FDA14(0x79616C506F747561, 0xE800000000000000), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = [v22 BOOLValue];

      BYTE1(v87) = v23;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v24 = sub_241352FFC();
      __swift_project_value_buffer(v24, qword_27E5384A0);
      v25 = sub_241352FDC();
      v26 = sub_2413540DC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v23;
        _os_log_impl(&dword_241215000, v25, v26, "[AssetLoader] USDZ+ specifies shouldAutoPlay = %{BOOL}d", v27, 8u);
        MEMORY[0x245CE4870](v27, -1, -1);
      }
    }

    else
    {
    }

    v28 = [v17 metadata];
    v29 = sub_241353B5C();

    if (*(v29 + 16) && (v30 = sub_2412FDA14(0x6B63616279616C70, 0xEC00000065646F4DLL), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);

      v33 = [v32 stringValue];

      if (v33)
      {
        v34 = sub_241353C0C();
        v36 = v35;

        if (v34 == 1886351212 && v36 == 0xE400000000000000)
        {

          v37 = 1;
        }

        else
        {
          v37 = sub_24135497C();
        }

        a6 = v75;
        swift_beginAccess();
        BYTE2(v87) = v37 & 1;
        if (qword_27E537B10 != -1)
        {
          swift_once();
        }

        v58 = sub_241352FFC();
        __swift_project_value_buffer(v58, qword_27E5384A0);
        v53 = sub_241352FDC();
        v54 = sub_2413540DC();
        if (!os_log_type_enabled(v53, v54))
        {
          goto LABEL_42;
        }

        v55 = swift_slowAlloc();
        *v55 = 67109120;
        *(v55 + 4) = v37 & 1;
        v57 = "[AssetLoader] USDZ+ specifies shouldAnimationLoop = %{BOOL}d";
        goto LABEL_41;
      }
    }

    else
    {
    }

    v38 = [v17 rootNode];
    v39 = sub_241353BDC();
    v40 = sub_241353BDC();
    v41 = [v38 dictionaryMetadataWithKey:v39 dictionaryKey:v40];

    if (v41 && (v42 = [v41 stringValue], v41, v42))
    {
      v43 = sub_241353C0C();
      v45 = v44;

      a6 = v75;
      if (v43 == 1886351212 && v45 == 0xE400000000000000)
      {

        v46 = 1;
      }

      else
      {
        v46 = sub_24135497C();
      }

      swift_beginAccess();
      BYTE2(v87) = v46 & 1;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v56 = sub_241352FFC();
      __swift_project_value_buffer(v56, qword_27E5384A0);
      v53 = sub_241352FDC();
      v54 = sub_2413540DC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_42;
      }

      v55 = swift_slowAlloc();
      *v55 = 67109120;
      *(v55 + 4) = v46 & 1;
    }

    else
    {
      v47 = [v17 rootNode];
      v48 = sub_241353BDC();
      v49 = sub_241353BDC();
      v50 = [v47 dictionaryMetadataWithKey:v48 dictionaryKey:v49];

      a6 = v75;
      if (!v50)
      {
        goto LABEL_43;
      }

      v51 = [v50 BOOLValue];

      swift_beginAccess();
      BYTE2(v87) = v51;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v52 = sub_241352FFC();
      __swift_project_value_buffer(v52, qword_27E5384A0);
      v53 = sub_241352FDC();
      v54 = sub_2413540DC();
      if (!os_log_type_enabled(v53, v54))
      {
LABEL_42:

LABEL_43:
        v59 = v17;
        v60 = sub_241353BDC();
        v61 = sub_241353BDC();
        v62 = [v59 dictionaryMetadataWithKey:v60 dictionaryKey:v61];

        if (v62)
        {
          v63 = [v62 intValue];

          swift_beginAccess();
          *(&v87 + 1) = v63;
          if (qword_27E537B10 != -1)
          {
            swift_once();
          }

          v64 = sub_241352FFC();
          __swift_project_value_buffer(v64, qword_27E5384A0);
          v65 = sub_241352FDC();
          v66 = sub_2413540DC();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 67109120;
            *(v67 + 4) = v63;
            _os_log_impl(&dword_241215000, v65, v66, "[AssetLoader] USDZ customLayerData specifies Apple:preferredIblVersion = %d", v67, 8u);
            MEMORY[0x245CE4870](v67, -1, -1);
          }
        }

        goto LABEL_49;
      }

      v55 = swift_slowAlloc();
      *v55 = 67109120;
      *(v55 + 4) = v51;
    }

    v57 = "[AssetLoader] USDZ customLayerData specifies shouldAnimationLoop = %{BOOL}d";
LABEL_41:
    _os_log_impl(&dword_241215000, v53, v54, v57, v55, 8u);
    MEMORY[0x245CE4870](v55, -1, -1);
    goto LABEL_42;
  }

  sub_2413514EC();
  sub_241353B1C();
  swift_allocObject();
  if (sub_241353ADC())
  {
    sub_241263F88(&v86);
  }

LABEL_50:
  v68 = objc_opt_self();
  if ([v68 overridePreferredIblVersionKey] >= 1)
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v69 = sub_241352FFC();
    __swift_project_value_buffer(v69, qword_27E5384A0);
    v70 = sub_241352FDC();
    v71 = sub_2413540DC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134217984;
      *(v72 + 4) = [v68 overridePreferredIblVersionKey];
      _os_log_impl(&dword_241215000, v70, v71, "Overriding fileMetadata.preferredIBLVersion: %ld", v72, 0xCu);
      MEMORY[0x245CE4870](v72, -1, -1);
    }

    v73 = [v68 overridePreferredIblVersionKey];
    swift_beginAccess();
    *(&v87 + 1) = v73;
  }

  swift_beginAccess();
  v80[0] = v86;
  v80[1] = v87;
  v80[2] = v88;
  v81 = v89;
  v76 = v86;
  v77 = v87;
  v78 = v88;
  v79 = v89;
  sub_241255B50(v80, v84);
  a6(&v76);
  v82[0] = v76;
  v82[1] = v77;
  v82[2] = v78;
  v83 = v79;
  sub_241244AE8(v82);
  v84[0] = v86;
  v84[1] = v87;
  v84[2] = v88;
  v85 = v89;
  return sub_241244AE8(v84);
}

uint64_t sub_24127E020(uint64_t a1)
{
  v2 = sub_241352B6C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_241351C2C())
  {
    sub_241351C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365C30;
    *(inited + 32) = a1;

    while (1)
    {
      v6 = inited >> 62;
      if (inited >> 62)
      {
        result = sub_2413544EC();
        if (!result)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }

        result = sub_2413544EC();
        if (!result)
        {
          goto LABEL_52;
        }
      }

      else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](0, inited);
        v7 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v7 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v6)
        {
LABEL_8:
          v8 = *(v7 + 16);
          if (!v8)
          {
            goto LABEL_48;
          }

          goto LABEL_17;
        }
      }

      if (!sub_2413544EC())
      {
        goto LABEL_48;
      }

      if (sub_2413544EC() < 1)
      {
        goto LABEL_49;
      }

      v8 = sub_2413544EC();
LABEL_17:
      v10 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        goto LABEL_47;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = inited;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v6)
        {
          if (v10 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_23:
        sub_2413544EC();
        goto LABEL_24;
      }

      if (v6)
      {
        goto LABEL_23;
      }

LABEL_24:
      inited = sub_24135461C();
      v30 = inited;
LABEL_25:
      sub_241257B58(0, 1, 0);
      v30 = inited;
      sub_24135295C();
      if (REEntityGetCustomComponent() && RECustomComponentGetObject())
      {

        if (qword_27E537B10 != -1)
        {
          swift_once();
        }

        v18 = sub_241352FFC();
        __swift_project_value_buffer(v18, qword_27E5384A0);
        v19 = sub_241352FDC();
        v20 = sub_2413540DC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v29 = v22;
          *v21 = 136315138;
          sub_241351C3C();
          v28[1] = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
          sub_24123D370(&qword_27E539BA0, &unk_27E538B20);
          v24 = sub_2413549BC();
          v26 = sub_2412DDC2C(v24, v25, &v29);

          *(v21 + 4) = v26;
          _os_log_impl(&dword_241215000, v19, v20, "Got authored gravity: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x245CE4870](v22, -1, -1);
          MEMORY[0x245CE4870](v21, -1, -1);
        }

        sub_241351C3C();
        v28[0] = v27;

        return *&v28[0];
      }

      sub_241352C5C();
      sub_2413518AC();
      sub_241281024(v4);

      inited = v30;
      if (v30 >> 62)
      {
        if (sub_2413544EC() <= 0)
        {
LABEL_31:

          if (qword_27E537B10 != -1)
          {
            swift_once();
          }

          v12 = sub_241352FFC();
          __swift_project_value_buffer(v12, qword_27E5384A0);
          v13 = sub_241352FDC();
          v14 = sub_2413540DC();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            v16 = "No authored gravity";
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_31;
      }
    }
  }

  if (qword_27E537B10 != -1)
  {
LABEL_50:
    swift_once();
  }

  v17 = sub_241352FFC();
  __swift_project_value_buffer(v17, qword_27E5384A0);
  v13 = sub_241352FDC();
  v14 = sub_2413540BC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Error: ScenePhysics registration not defined";
LABEL_38:
    _os_log_impl(&dword_241215000, v13, v14, v16, v15, 2u);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

LABEL_39:

  return 0;
}

uint64_t sub_24127E5D4(uint64_t a1)
{
  v28 = a1;
  v1 = sub_2413538CC();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1);
  v31 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24135152C();
  v4 = *(v27 - 8);
  v26 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v25 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24135415C();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24135413C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2413538FC();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_241246158(0, &qword_27E538920);
  v23[0] = "asset load request";
  v23[1] = v13;
  sub_2413538DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24127F10C(&qword_27E538368, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538370);
  sub_24123D370(&qword_27E538378, &qword_27E538370);
  sub_24135444C();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v24);
  v14 = sub_24135419C();
  v15 = v25;
  v16 = v27;
  (*(v4 + 16))(v25, v28, v27);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v15, v16);
  aBlock[4] = sub_24127F154;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_167;
  v19 = _Block_copy(aBlock);
  sub_2413538DC();
  v34 = MEMORY[0x277D84F90];
  sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  v21 = v31;
  v20 = v32;
  sub_24135444C();
  MEMORY[0x245CE2540](0, v12, v21, v19);
  _Block_release(v19);

  (*(v33 + 8))(v21, v20);
  (*(v29 + 8))(v12, v30);
}

void sub_24127EB48(uint64_t *a1)
{
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E5384A0);
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_8;
  }

  v2 = &qword_27E541788;
  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (qword_27E537B18 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v7 = *v2 >> 62 ? sub_2413544EC() : *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 4) = v7;
    _os_log_impl(&dword_241215000, v5, v6, "count before removing stream: %ld (should be one)", v1, 0xCu);
    MEMORY[0x245CE4870](v1, -1, -1);
LABEL_8:

    if (qword_27E537B18 != -1)
    {
      swift_once();
    }

    v5 = &qword_27E541788;
    swift_beginAccess();
    v8 = sub_24126E030(&qword_27E541788, a1 + 2);
    a1 = &unk_27E541000;
    if (qword_27E541788 >> 62)
    {
      break;
    }

    v9 = *((qword_27E541788 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v8)
    {
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v5 = v8;
  v9 = sub_2413544EC();
  v8 = v5;
  if (v9 < v5)
  {
    goto LABEL_18;
  }

LABEL_12:
  sub_241258254(v8, v9);
  swift_endAccess();
  v10 = sub_241352FDC();
  v11 = sub_2413540DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (qword_27E541788 >> 62)
    {
      v16 = v12;
      v13 = sub_2413544EC();
      v12 = v16;
    }

    else
    {
      v13 = *((qword_27E541788 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;
    v14 = v11;
    v15 = v12;
    _os_log_impl(&dword_241215000, v10, v14, "count after removing stream: %ld (should be zero)", v12, 0xCu);
    MEMORY[0x245CE4870](v15, -1, -1);
  }
}

uint64_t sub_24127EE40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2412450EC;

  return sub_241347174(a1, v4, v5, v6, v9, v7, v8);
}

id sub_24127EF78(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24127EFF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24127F058(char a1)
{
  v3 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + v5);

  sub_241269E3C(a1, v6, v7, v8, v1 + v4, v11, v9, v10);
}

uint64_t sub_24127F10C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24127F154()
{
  v1 = *(sub_24135152C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24126D540(v2);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24127F22C()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = sub_24135395C();
  v1(v6, v2, v3, v4, v5);
}

uint64_t sub_24127F2AC(__int128 *a1)
{
  v3 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_24135152C() - 8);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + v6);
  v11 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_241264C24(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t objectdestroy_50Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(Information - 8) + 64);
  swift_unknownObjectRelease();
  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24127F580(uint64_t a1)
{
  v4 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2412450EC;

  return sub_2412624BC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t objectdestroy_82Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_85Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v12 = *(*(Information - 8) + 64);
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v11 = *(v5 + 64);

  v7 = *(v5 + 8);
  v7(v0 + v3, v4);

  v8 = (v0 + v3 + *(Information + 28));
  if (*v8)
  {
  }

  v9 = (v3 + v12 + v6) & ~v6;

  v7(v0 + v9, v4);

  return MEMORY[0x2821FE8E8](v0, ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

void sub_24127F8D4(uint64_t *a1)
{
  v3 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24135152C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24126A9E4(a1, v8, v9, v1 + v4, v1 + v7, v10);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24127FA78(_OWORD *a1)
{
  v3 = *(sub_24135152C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = a1[5];
  v10[4] = a1[4];
  v10[5] = v6;
  v11[0] = a1[6];
  *(v11 + 9) = *(a1 + 105);
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  sub_24127E5D4(v1 + v4);
  return v5(v10);
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_123Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(Information - 8) + 64);

  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_126Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(Information - 8) + 64);

  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_24127FE84()
{
  v1 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v2 = *(v1 + 80);
  return sub_241269024(v0[2], v0[3], v0[4], v0[5], v0 + ((v2 + 48) & ~v2), *(v0 + ((v2 + 48) & ~v2) + *(v1 + 64)));
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_129Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_220Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(Information - 8) + 64);
  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_241280108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_2412649DC(a1, a2, a3, a4, a5, v5 + v12, *(v5 + v12 + *(v11 + 64)), *(v5 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t objectdestroy_223Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(Information - 8) + 64);

  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_241280330()
{
  v1 = *(type metadata accessor for AssetLoader.LoadInformation() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_24127C178(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t objectdestroy_117Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241280408(_OWORD *a1)
{
  v2 = *(v1 + 24);
  v3 = a1[5];
  v7[4] = a1[4];
  v7[5] = v3;
  v8[0] = a1[6];
  *(v8 + 9) = *(a1 + 105);
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  swift_beginAccess();
  return v2(v7);
}

uint64_t objectdestroy_241Tm()
{
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(Information - 8) + 64);

  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_2412805DC()
{
  type metadata accessor for AssetLoader.LoadInformation();
  v1 = *(v0 + 16);

  return sub_241267DB8(v1);
}

uint64_t get_enum_tag_for_layout_string_11AssetViewer0A6LoaderV11ImportErrorO(uint64_t a1)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2412806A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2412806F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_241280738(uint64_t result, unsigned int a2)
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

uint64_t *sub_241280864(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5385A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  result = sub_241280CDC(&OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects, sub_24128AD50);
  v12 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v12)
  {
    __break(1u);
    goto LABEL_12;
  }

  v25[1] = a1;
  v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = v13;
  sub_24135292C();

  sub_2413524AC();

  v15 = sub_241351D5C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_241280C74(v6);
  }

  else if ((*(v16 + 88))(v6, v15) == *MEMORY[0x277CDAD30])
  {
    (*(v16 + 96))(v6, v15);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5385A8);
    (*(v8 + 32))(v10, &v6[*(v17 + 48)], v7);
    v18 = sub_24135152C();
    (*(*(v18 - 8) + 8))(v6, v18);
    sub_2413511FC();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v16 + 8))(v6, v15);
  }

  sub_241352EFC();
  sub_241351CEC();
  sub_241351CDC();
  sub_241351C6C();

  sub_241352EEC();
  __swift_destroy_boxed_opaque_existential_0(v26);
  v19 = sub_241352ECC();
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365C30;
    *(inited + 32) = v20;
    v22 = v20;
    sub_2412C06E4(inited);
    v24 = v23;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages) = v24;

    sub_24128AB54();
  }
}

uint64_t sub_241280C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_241280CDC(uint64_t *result, uint64_t (*a2)(void))
{
  v3 = *result;
  v4 = *(v2 + *result);
  if (v4)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {

      v5 = sub_2413544EC();

      if (!v5)
      {
        return result;
      }
    }

    else if (!*(v4 + 16))
    {
      return result;
    }

    *(v2 + v3) = 0;

    return a2();
  }

  return result;
}

uint64_t sub_241280D8C()
{
  v1 = v0;
  sub_241280CDC(&OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages, sub_24128AB54);
  sub_241352EFC();
  sub_241351CEC();
  sub_241351CDC();
  sub_241351C6C();

  sub_241352EEC();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v2 = sub_241352EDC();
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365C30;
    *(inited + 32) = v3;
    v5 = v3;
    sub_2412C0708(inited);
    v7 = v6;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects) = v7;

    sub_24128AD50();
  }
}

uint64_t sub_241280EF8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_2412A1654(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_24135247C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_241281024(uint64_t a1)
{
  v2 = v1;
  v4 = sub_241352B6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v28 - v10;
  v11 = sub_2412873C4();
  v12 = sub_241353DCC();
  if (!(*v1 >> 62))
  {
    v13 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = __OFADD__(v13, v12);
    v15 = v12 + v13;
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = sub_2413544EC();
  v14 = __OFADD__(v22, v12);
  v15 = v12 + v22;
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_3:
  v30 = v9;
  v31 = v8;
  sub_2412863B4(v15);
  v8 = v1;
  v29 = *v1;
  v2 = v29 & 0xFFFFFFFFFFFFFF8;
  v16 = ((*((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10));
  (*(v5 + 16))(v7, a1, v4);
  v17 = sub_241353DBC();
  (*(v5 + 8))(a1, v4);
  if (v17 < v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= 1)
  {
    v18 = *(v2 + 16);
    v14 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v14)
    {
      __break(1u);
      goto LABEL_27;
    }

    *(v2 + 16) = v19;
  }

  if (v17 == v16)
  {
LABEL_14:
    v23 = *(v2 + 16);
    sub_24123D370(&qword_27E5386C8, &qword_27E538340);
    v11 = v31;
    v16 = v32;
    sub_24135437C();
    v24 = v33;
    v12 = v8;
    if (v33)
    {
      v21 = v29;
      do
      {
        if (v23 + 1 > *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_241353E4C();
          v24 = v33;
        }

        v21 = *v12;
        v25 = *v12 & 0xFFFFFFFFFFFFFF8;
        if (v24)
        {
          v26 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
          if (v23 < v26)
          {
            do
            {
              *(v25 + 32 + 8 * v23++) = v24;
              sub_24135437C();
              v24 = v33;
              if (v33)
              {
                v27 = v23 < v26;
              }

              else
              {
                v27 = 0;
              }
            }

            while (v27);
          }
        }

        *(v25 + 16) = v23;
      }

      while (v24);
      goto LABEL_28;
    }

LABEL_27:
    v21 = v29;
LABEL_28:
    result = (*(v30 + 8))(v16, v11);
    goto LABEL_9;
  }

  result = (*(v30 + 8))(v32, v31);
  v12 = v8;
  v21 = v29;
LABEL_9:
  *v12 = v21;
  return result;
}

uint64_t sub_2412813C8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2413544EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2413544EC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2412863B4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_2412814C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-1] - v5;
  v7 = sub_24135302C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24135307C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView;
  type metadata accessor for ScrubberView();
  *&v0[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_backgroundView;
  *&v0[v13] = [objc_allocWithZone(ASVBlurredBackgroundView) initWithFrame:0 backgroundStyle:0 controlStyle:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_currentStyle] = 0;
  v14 = type metadata accessor for PlaybackControlsViewController();
  v26.receiver = v0;
  v26.super_class = v14;
  v15 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  v16 = OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView;
  v17 = *&v15[OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView];
  v18 = v15;
  v19 = v17;
  sub_24135306C();
  v25[3] = sub_24135308C();
  v25[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_24135309C();
  sub_24135422C();

  v20 = *&v15[v16];
  sub_24135301C();
  (*(v8 + 16))(v3, v10, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  sub_24135303C();
  sub_24128735C(v3);
  v21 = sub_24135305C();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  sub_24135423C();

  (*(v8 + 8))(v10, v7);
  [*&v15[v16] setClipsToBounds_];
  result = [v18 view];
  if (result)
  {
    v23 = result;
    [result addSubview_];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_241281990()
{
  v1 = [objc_opt_self() _currentTraitCollection];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 userInterfaceStyle];

    v4 = OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_currentStyle;
    if (*(v0 + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_currentStyle) != v3)
    {
      if (v3 == 2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }

      if (v3 == 2)
      {
        v6 = &selRef_systemWhiteColor;
      }

      else
      {
        v6 = &selRef_systemBlackColor;
      }

      [*(v0 + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_backgroundView) setControlStyle_];
      v7 = *(v0 + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView);
      v8 = [objc_opt_self() *v6];
      [v7 setTintColor_];

      v9 = v0;
      v10 = sub_241283024();
      v11 = [objc_opt_self() systemWhiteColor];
      [v10 setThumbTintColor_];

      *(v9 + v4) = v3;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_241281AE0(double a1, double a2, float64x2_t a3)
{
  v4 = (v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v5 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
  v6 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 32);
  LOBYTE(v43) = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v8 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  v7 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 16);
  *(&v43 + 1) = a1;
  *&v44 = v7;
  *(&v44 + 1) = v5;
  v45 = v6;
  v38[0] = v43;
  v39 = v8;
  v40 = v7;
  v41 = v5;
  v42 = v6;
  v9 = v44;
  *v4 = v43;
  *(v4 + 1) = v9;
  *(v4 + 4) = v45;
  if (v8 != a1)
  {
    v26 = *&a3.f64[0];
    sub_241283228(v38, &v43);
    *&a3.f64[0] = v26;
  }

  v10 = *v4;
  v11.f64[0] = *(v4 + 1);
  v12 = *(v4 + 2);
  v14 = *(v4 + 3);
  Current = *(v4 + 4);
  if (v14 != a3.f64[0])
  {
    v27 = *&a3.f64[0];
    v23 = *(v4 + 1);
    v24 = v12 + v14 * (CFAbsoluteTimeGetCurrent() - Current);
    CFAbsoluteTimeGetCurrent();
    Current = CFAbsoluteTimeGetCurrent();
    v11.f64[0] = v23;
    v12 = v24;
    *&a3.f64[0] = v27;
  }

  LOBYTE(v35) = v10;
  *(&v35 + 1) = *&v11.f64[0];
  *&v36 = v12;
  *(&v36 + 1) = *&a3.f64[0];
  v37 = Current;
  v15 = *(v4 + 1);
  *v34 = *v4;
  *&v34[16] = v15;
  *&v34[32] = *(v4 + 4);
  v16 = v36;
  *v4 = v35;
  *(v4 + 1) = v16;
  *(v4 + 4) = v37;
  v11.f64[1] = v12;
  a3.f64[1] = Current;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, *&v34[8]), vceqq_f64(a3, *&v34[24])))) & 1) == 0 || ((v10 ^ v34[0]))
  {
    sub_241283228(v34, &v35);
  }

  v17 = *v4;
  v28 = *(v4 + 1);
  v25 = *(v4 + 3);
  v18 = CFAbsoluteTimeGetCurrent();
  LOBYTE(v31) = v17;
  v19.f64[0] = v28;
  *(&v31 + 1) = v28;
  *&v32 = a2;
  v20.f64[0] = v25;
  *(&v32 + 1) = v25;
  v33 = v18;
  *&v30[32] = *(v4 + 4);
  v21 = *(v4 + 1);
  *v30 = *v4;
  *&v30[16] = v21;
  v22 = v32;
  *v4 = v31;
  *(v4 + 1) = v22;
  *(v4 + 4) = v33;
  v19.f64[1] = a2;
  v20.f64[1] = v18;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, *&v30[8]), vceqq_f64(v20, *&v30[24])))) & 1) == 0 || ((v17 ^ v30[0]))
  {
    sub_241283228(v30, &v31);
  }
}

void sub_241281CD4(double a1, double a2, float64x2_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime);
  v5 = v4 + *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime + 8);
  if (v5 <= v4)
  {
    a3.f64[0] = 1.0;
    sub_241281AE0(v5, 0.0, a3);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2413385F4(0.0);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
    v7 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
    v9.f64[0] = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
    v8 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 16);
    v11 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
    Current = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 32);
    if (v11 != 1.0)
    {
      v19 = *(v3 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
      v20 = v8 + v11 * (CFAbsoluteTimeGetCurrent() - Current);
      CFAbsoluteTimeGetCurrent();
      Current = CFAbsoluteTimeGetCurrent();
      v9.f64[0] = v19;
      v8 = v20;
    }

    LOBYTE(v22) = v7;
    *(&v22 + 1) = *&v9.f64[0];
    *&v23 = v8;
    *(&v23 + 1) = 0x3FF0000000000000;
    v24 = Current;
    *&v21[32] = *(v6 + 32);
    v12 = *(v6 + 16);
    *v21 = *v6;
    *&v21[16] = v12;
    v13 = v23;
    *v6 = v22;
    *(v6 + 16) = v13;
    *(v6 + 32) = v24;
    v9.f64[1] = v8;
    __asm { FMOV            V2.2D, #1.0 }

    _Q2.f64[1] = Current;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&v21[8]), vceqq_f64(_Q2, *&v21[24])))) & 1) == 0 || ((v7 ^ v21[0]))
    {
      sub_241283228(v21, &v22);
    }
  }
}

void sub_241281E54()
{
  v1 = v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v4.f64[0] = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 16);
  v6 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
  Current = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 32);
  if (v6 != 0.0)
  {
    v9 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
    v10 = v3 + v6 * (CFAbsoluteTimeGetCurrent() - Current);
    CFAbsoluteTimeGetCurrent();
    Current = CFAbsoluteTimeGetCurrent();
    v4.f64[0] = v9;
    v3 = v10;
  }

  LOBYTE(v12[0]) = v2;
  *(&v12[0] + 1) = *&v4.f64[0];
  v12[1] = *&v3;
  v13 = Current;
  *&v11[32] = *(v1 + 32);
  v7 = *(v1 + 16);
  *v11 = *v1;
  *&v11[16] = v7;
  *v1 = v12[0];
  *(v1 + 16) = *&v3;
  *(v1 + 32) = v13;
  v4.f64[1] = v3;
  v8.f64[0] = 0.0;
  v8.f64[1] = Current;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&v11[8]), vceqq_f64(v8, *&v11[24])))) & 1) == 0 || ((v2 ^ v11[0]))
  {
    sub_241283228(v11, v12);
  }
}

char *sub_24128200C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipBackButton] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipForwardButton] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeFormatter] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeFormatter] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView_link] = 0;
  v10 = &qword_27E538000;
  inited = &v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
  if (qword_27E537B20 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v12 = *&qword_27E5385B8;
    v13 = unk_27E5385C8;
    *inited = byte_27E5385B0;
    *(inited + 8) = v12;
    *(inited + 24) = v13;
    v14 = &v4[OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds];
    v15 = type metadata accessor for ScrubberView();
    *v14 = 0u;
    *(v14 + 1) = 0u;
    v48.receiver = v4;
    v48.super_class = v15;
    v4 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
    v16 = sub_2412831A0();
    [v16 setStyle_];

    v17 = sub_2412831AC();
    [v17 setStyle_];

    v18 = [objc_opt_self() defaultCenter];
    [v18 addObserver:v4 selector:sel_updateTimeLabelFonts name:*MEMORY[0x277D76810] object:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366EE0;
    sub_241282A4C();
    *(inited + 32) = v19;
    sub_241282C40();
    *(inited + 40) = v20;
    sub_241282E30();
    *(inited + 48) = v21;
    *(inited + 56) = sub_241283024();
    v22 = *(v10 + 1608);
    v23 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x245CE29C0](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v24 = *(inited + 32);
    }

    v10 = v24;
    v25 = 0;
    v26 = &v4[v22];
    v27 = v26[1];
    if (v27 + 2.22044605e-16 > 0.0)
    {
      v28 = v26[2];
      if (v28 + 2.22044605e-16 >= 0.0)
      {
        v25 = v28 <= v27 + 1.11022302e-15;
      }
    }

    [v24 setEnabled_];

    if (v23)
    {
      v29 = MEMORY[0x245CE29C0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_38;
      }

      v29 = *(inited + 40);
    }

    v10 = v29;
    v30 = 0;
    v31 = v26[1];
    if (v31 + 2.22044605e-16 > 0.0)
    {
      v32 = v26[2];
      if (v32 + 2.22044605e-16 >= 0.0)
      {
        v30 = v32 <= v31 + 1.11022302e-15;
      }
    }

    [v29 setEnabled_];

    if (v23)
    {
      v33 = MEMORY[0x245CE29C0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_38;
      }

      v33 = *(inited + 48);
    }

    v10 = v33;
    v34 = 0;
    v35 = v26[1];
    if (v35 + 2.22044605e-16 > 0.0)
    {
      v36 = v26[2];
      if (v36 + 2.22044605e-16 >= 0.0)
      {
        v34 = v36 <= v35 + 1.11022302e-15;
      }
    }

    [v33 setEnabled_];

    if (v23)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v37 = *(inited + 56);
      goto LABEL_23;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v37 = MEMORY[0x245CE29C0](3, inited);
LABEL_23:
  v38 = v37;
  v39 = 0;
  v40 = v26[1];
  if (v40 + 2.22044605e-16 > 0.0)
  {
    v41 = v26[2];
    if (v41 + 2.22044605e-16 >= 0.0)
    {
      v39 = v41 <= v40 + 1.11022302e-15;
    }
  }

  [v37 setEnabled_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = sub_2412841B0();
  inited = v42;
  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v43 = sub_2413544EC();
  if (v43)
  {
LABEL_28:
    v10 = 0;
    while (1)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x245CE29C0](v10, inited);
      }

      else
      {
        if (v10 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v44 = *(inited + 8 * v10 + 32);
      }

      v45 = v44;
      v46 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v4 addSubview_];
      [v45 setAutoresizingMask_];

      ++v10;
      if (v46 == v43)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_45:

  [v4 updateTimeLabelFonts];
  sub_2412842B0();

  return v4;
}

id sub_2412825A4()
{
  v1 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_link];
  if (v1)
  {
    v2 = &v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired];
    v3 = *&v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired];
    *v2 = 0;
    *(v2 + 1) = 0;
    v4 = v1;
    sub_2412186FC(v3);
    v5 = *&v4[OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_link];
    [v5 invalidate];
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScrubberView();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_241282764(double a1, double a2, double a3, double a4)
{
  v31 = a3 + a4;
  if (a1 + a2 == a3 + a4)
  {
    if (a4 > 0.0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = sub_2412831A0();
    [v6 setFormatTemplate_];

    v7 = sub_2412831AC();
    [v7 setFormatTemplate_];

    if (a4 > 0.0)
    {
      goto LABEL_7;
    }
  }

  v8 = (v4 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v9 = *(v4 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
  if (v9 == 0.0 || (*v8 & 1) != 0)
  {
LABEL_7:

    sub_2412842B0();
    return;
  }

  v10 = *(v8 + 4);
  LOBYTE(v46) = 0;
  v12 = *(v8 + 1);
  v11 = *(v8 + 2);
  *(&v46 + 1) = v31;
  *&v47 = v11;
  *(&v47 + 1) = v9;
  v48 = v10;
  v41[0] = 0;
  v42 = v12;
  v43 = v11;
  v44 = v9;
  v45 = v10;
  v13 = v47;
  *v8 = v46;
  *(v8 + 1) = v13;
  *(v8 + 4) = v48;
  if (v31 != v12)
  {
    sub_241283228(v41, &v46);
  }

  v14 = *v8;
  v16.f64[0] = *(v8 + 1);
  v15 = *(v8 + 2);
  v18 = *(v8 + 3);
  Current = *(v8 + 4);
  if (v18 != 0.0)
  {
    v27 = *(v8 + 1);
    v29 = v15 + v18 * (CFAbsoluteTimeGetCurrent() - Current);
    CFAbsoluteTimeGetCurrent();
    Current = CFAbsoluteTimeGetCurrent();
    v16.f64[0] = v27;
    v15 = v29;
  }

  LOBYTE(v37) = v14;
  *(&v37 + 1) = *&v16.f64[0];
  v38 = v15;
  v39 = 0;
  v40 = Current;
  *&v36[32] = *(v8 + 4);
  v19 = *(v8 + 1);
  *v36 = *v8;
  *&v36[16] = v19;
  *v8 = v37;
  *(v8 + 1) = *&v15;
  *(v8 + 4) = v40;
  v16.f64[1] = v15;
  v20.f64[0] = 0.0;
  v20.f64[1] = Current;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, *&v36[8]), vceqq_f64(v20, *&v36[24])))) & 1) == 0 || ((v14 ^ v36[0]))
  {
    sub_241283228(v36, &v37);
  }

  v21 = *v8;
  v30 = *(v8 + 1);
  v28 = *(v8 + 3);
  v22 = CFAbsoluteTimeGetCurrent();
  LOBYTE(v33) = v21;
  v23.f64[0] = v30;
  *(&v33 + 1) = v30;
  *&v34 = v31;
  v24.f64[0] = v28;
  *(&v34 + 1) = v28;
  v35 = v22;
  *&v32[32] = *(v8 + 4);
  v25 = *(v8 + 1);
  *v32 = *v8;
  *&v32[16] = v25;
  v26 = v34;
  *v8 = v33;
  *(v8 + 1) = v26;
  *(v8 + 4) = v35;
  v23.f64[1] = v31;
  v24.f64[1] = v22;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v23, *&v32[8]), vceqq_f64(v24, *&v32[24])))) & 1) == 0 || ((v21 ^ v32[0]))
  {
    sub_241283228(v32, &v33);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_241338268(v4);

    swift_unknownObjectRelease();
  }
}

void sub_241282A4C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton);
  if (v2)
  {
    goto LABEL_4;
  }

  type metadata accessor for ScrubberView.CustomButton();
  v3 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v3 addTarget:v0 action:sel_handlePlayPauseButton_ forControlEvents:64];
  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_241353BDC();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {

    [v3 setImage:v6 forState:0];
    v7 = v3;
    v8 = sub_241353BDC();
    [v7 setAccessibilityIdentifier_];

    v9 = v7;
    [v6 size];
    [v9 frame];
    [v9 setFrame_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v9;

    v2 = 0;
LABEL_4:
    v11 = v2;
    return;
  }

  __break(1u);
}

void sub_241282C40()
{
  v1 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipBackButton;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipBackButton);
  if (v2)
  {
    goto LABEL_4;
  }

  type metadata accessor for ScrubberView.CustomButton();
  v3 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v3 addTarget:v0 action:sel_handleSkipBackButton_ forControlEvents:64];
  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_241353BDC();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {

    [v3 setImage:v6 forState:0];
    v7 = v3;
    v8 = sub_241353BDC();
    [v7 setAccessibilityIdentifier_];

    v9 = v7;
    [v6 size];
    [v9 frame];
    [v9 setFrame_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v9;

    v2 = 0;
LABEL_4:
    v11 = v2;
    return;
  }

  __break(1u);
}

void sub_241282E30()
{
  v1 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipForwardButton;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipForwardButton);
  if (v2)
  {
    goto LABEL_4;
  }

  type metadata accessor for ScrubberView.CustomButton();
  v3 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v3 addTarget:v0 action:sel_handleSkipForwardButton_ forControlEvents:64];
  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_241353BDC();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {

    [v3 setImage:v6 forState:0];
    v7 = v3;
    v8 = sub_241353BDC();
    [v7 setAccessibilityIdentifier_];

    v9 = v7;
    [v6 size];
    [v9 frame];
    [v9 setFrame_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v9;

    v2 = 0;
LABEL_4:
    v11 = v2;
    return;
  }

  __break(1u);
}

id sub_241283024()
{
  v1 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider);
  }

  else
  {
    type metadata accessor for ScrubberView.ScrubberSlider();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 addTarget:v0 action:sel_startScrubbing_ forControlEvents:1];
    [v4 addTarget:v0 action:sel_stopScrubbing_ forControlEvents:448];
    [v4 addTarget:v0 action:sel_didScrub_ forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_241283108(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 _setTextColorFollowsTintColor_];
    [v5 setNumberOfLines_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_2412831B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CE6640]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_241283228(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366EE0;
  sub_241282A4C();
  *(inited + 32) = v6;
  sub_241282C40();
  *(inited + 40) = v7;
  sub_241282E30();
  *(inited + 48) = v8;
  *(inited + 56) = sub_241283024();
  v9 = OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
  v10 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x245CE29C0](0, inited))
  {
    v12 = i;
    v13 = 0;
    v9 += v2;
    v14 = *(v9 + 8);
    if (v14 + 2.22044605e-16 > 0.0)
    {
      v15 = *(v9 + 16);
      if (v15 + 2.22044605e-16 >= 0.0)
      {
        v13 = v15 <= v14 + 1.11022302e-15;
      }
    }

    [i setEnabled_];

    if (v10)
    {
      v16 = MEMORY[0x245CE29C0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_50;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    v18 = 0;
    v19 = *(v9 + 8);
    if (v19 + 2.22044605e-16 > 0.0)
    {
      v20 = *(v9 + 16);
      if (v20 + 2.22044605e-16 >= 0.0)
      {
        v18 = v20 <= v19 + 1.11022302e-15;
      }
    }

    [v16 setEnabled_];

    if (v10)
    {
      v21 = MEMORY[0x245CE29C0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_50;
      }

      v21 = *(inited + 48);
    }

    v22 = v21;
    v23 = 0;
    v24 = *(v9 + 8);
    if (v24 + 2.22044605e-16 > 0.0)
    {
      v25 = *(v9 + 16);
      if (v25 + 2.22044605e-16 >= 0.0)
      {
        v23 = v25 <= v24 + 1.11022302e-15;
      }
    }

    [v21 setEnabled_];

    if (v10)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v26 = *(inited + 56);
      goto LABEL_22;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v26 = MEMORY[0x245CE29C0](3, inited);
LABEL_22:
  v27 = v26;
  v28 = 0;
  v29 = *(v9 + 8);
  if (v29 + 2.22044605e-16 > 0.0)
  {
    v30 = *(v9 + 16);
    if (v30 + 2.22044605e-16 >= 0.0)
    {
      v28 = v30 <= v29 + 1.11022302e-15;
    }
  }

  [v26 setEnabled_];

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((*v9 & 1) == 0)
  {
    v31 = *(v9 + 8);
    v32 = 0.0;
    if (v31 + 2.22044605e-16 > 0.0)
    {
      v33 = *(v9 + 16);
      if (v33 <= v31 + 1.11022302e-15 && v33 + 2.22044605e-16 >= 0.0)
      {
        v32 = v33 / v31;
        *&v32 = v33 / v31;
      }
    }

    [*(v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider) setValue_];
  }

  v34 = *(a2 + 24);
  if (v34 == *(a1 + 24))
  {
LABEL_37:
    v43 = *(v9 + 8);
    if (v43 + 2.22044605e-16 <= 0.0 || (v44 = *(v9 + 16), v44 > v43 + 1.11022302e-15) || v44 + 2.22044605e-16 < 0.0 || (v45 = *(v9 + 24), v45 == 0.0) || (*v9 & 1) != 0)
    {
      v46 = OBJC_IVAR____TtC11AssetViewer12ScrubberView_link;
      v47 = *(v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_link);
      if (v47)
      {
        v48 = &v47[OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired];
        v49 = *&v47[OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired];
        *v48 = 0;
        *(v48 + 1) = 0;
        v50 = v47;
        sub_2412186FC(v49);
        v51 = *&v50[OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_link];
        [v51 invalidate];

        v47 = *(v2 + v46);
      }

      *(v2 + v46) = 0;

      v43 = *(v9 + 8);
      v44 = *(v9 + 16);
      v45 = *(v9 + 24);
    }

    else
    {
      v58 = OBJC_IVAR____TtC11AssetViewer12ScrubberView_link;
      if (!*(v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_link))
      {
        v59 = [objc_allocWithZone(type metadata accessor for ScrubberView.DisplayLink()) init];
        v60 = *(v2 + v58);
        *(v2 + v58) = v59;
        v61 = v59;

        if (v61)
        {
          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_2412859E0(sub_241286960, v62);
        }

        return;
      }
    }

    v52 = *(v9 + 32);
    v53 = v44 + v45 * (CFAbsoluteTimeGetCurrent() - v52);
    v54 = v44 + v45 * (CFAbsoluteTimeGetCurrent() - v52);
    v55 = (v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime);
    v56 = *(v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime);
    v57 = *(v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime + 8);
    *v55 = v53;
    v55[1] = v43 - v54;
    sub_241282764(v56, v57, v53, v43 - v54);
    return;
  }

  v35 = *(v2 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton);
  v36 = *MEMORY[0x277D76A20];
  v37 = objc_opt_self();
  v38 = v35;
  v39 = [v37 configurationWithTextStyle_];
  if (v34 != 0.0)
  {
    goto LABEL_35;
  }

  v40 = sub_241353BDC();
  v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

  if (v41)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_35:
  v42 = sub_241353BDC();
  v41 = [objc_opt_self() systemImageNamed:v42 withConfiguration:v39];

  if (v41)
  {
LABEL_36:

    [v38 setImage:v41 forState:0];
    goto LABEL_37;
  }

  __break(1u);
}

void sub_24128385C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (!CGRectEqualToRect(*&a1, *&a5))
  {
    [v8 bounds];
    if (CGRectGetWidth(v81) <= 414.0)
    {
      v16 = sub_241283024();
      [v8 bounds];
      v17 = CGRectGetMinX(v83) + 16.0;
      [v16 frame];
      [v16 setFrame_];

      v18 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider;
      v19 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider];
      [v8 bounds];
      CGRectGetWidth(v84);
      [v19 frame];
      [v19 setFrame_];

      v20 = *&v8[v18];
      [v8 bounds];
      CGRectGetMinY(v85);
      [v20 frame];
      [v20 setFrame_];

      v21 = *&v8[v18];
      [v21 frame];
      [v21 setFrame_];

      v22 = sub_2412830F0();
      [*&v8[v18] frame];
      MinX = CGRectGetMinX(v86);
      [v22 frame];
      [v22 setFrame_];

      v24 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel;
      v25 = *&v8[v18];
      v26 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel];
      [v25 frame];
      CGRectGetMidY(v87);
      [v26 frame];
      [v26 setFrame_];

      v27 = sub_2412830FC();
      [*&v8[v24] frame];
      [v27 frame];
      [v27 setFrame_];

      v28 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel;
      v29 = *&v8[v18];
      v30 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel];
      [v29 frame];
      MaxX = CGRectGetMaxX(v88);
      [*&v8[v28] frame];
      v32 = MaxX - CGRectGetWidth(v89);
      [v30 frame];
      [v30 setFrame_];

      sub_241282A4C();
      v34 = v33;
      [v8 bounds];
      CGRectGetMidX(v90);
      UIPointRoundToViewScale();
      [v34 setCenter_];

      sub_241282C40();
      v36 = v35;
      v37 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton;
      [*&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton] center];
      [v36 center];
      [v36 setCenter_];

      sub_241282E30();
      v39 = v38;
      [*&v8[v37] center];
      [v39 center];
      [v39 setCenter_];

      v40 = *&v8[v37];
      v41 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipBackButton];
      v42 = v40;
      [v42 frame];
      v43 = CGRectGetMinX(v91);

      [v41 frame];
      v44 = v43 + -32.0 - CGRectGetWidth(v92);
      [v41 frame];
      [v41 setFrame_];

      v45 = *&v8[v37];
      v79 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipForwardButton];
      v46 = v45;
      [v46 frame];
      v47 = CGRectGetMaxX(v93);

      [v79 frame];
      v48 = v47 + 32.0;
    }

    else
    {
      v9 = sub_2412841B0();
      v10 = v9;
      if (v9 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x245CE29C0](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v8 bounds];
          CGRectGetMidY(v82);
          [v14 center];
          [v14 setCenter_];

          ++v12;
          if (v15 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }

LABEL_17:

      v49 = sub_2412830FC();
      v50 = [v8 traitCollection];
      [v50 displayScale];

      [v49 center];
      [v49 setCenter_];

      v51 = sub_2412830F0();
      v52 = [v8 traitCollection];
      [v52 displayScale];

      [v51 center];
      [v51 setCenter_];

      sub_241282C40();
      v54 = v53;
      [v53 frame];
      [v54 setFrame_];

      sub_241282A4C();
      v56 = v55;
      v57 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipBackButton];
      [v57 frame];
      v58 = CGRectGetMaxX(v94);

      [v56 frame];
      [v56 setFrame_];

      sub_241282E30();
      v60 = v59;
      v61 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton];
      [v61 frame];
      v62 = CGRectGetMaxX(v95);

      [v60 frame];
      [v60 setFrame_];

      v63 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel;
      v64 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipForwardButton];
      v65 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel];
      v66 = v64;
      [v66 frame];
      v67 = CGRectGetMaxX(v96);

      [v65 frame];
      [v65 setFrame_];

      v68 = sub_241283024();
      v69 = *&v8[v63];
      [v69 frame];
      v70 = CGRectGetMaxX(v97);

      [v68 frame];
      [v68 setFrame_];

      v71 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel;
      v72 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel];
      [v8 bounds];
      v73 = CGRectGetMaxX(v98) + -20.0;
      [v72 frame];
      v74 = v73 - CGRectGetWidth(v99);
      [v72 frame];
      [v72 setFrame_];

      v75 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider;
      v76 = *&v8[v71];
      v79 = *&v8[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider];
      v77 = v76;
      [v77 frame];
      CGRectGetMinX(v100);

      v78 = *&v8[v75];
      [v78 frame];
      CGRectGetMinX(v101);

      [v79 frame];
    }

    [v79 setFrame_];
  }
}

uint64_t sub_2412841B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_241366EE0;
  sub_241282A4C();
  *(v0 + 32) = v1;
  sub_241282C40();
  *(v0 + 40) = v2;
  sub_241282E30();
  *(v0 + 48) = v3;
  *(v0 + 56) = sub_241283024();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366EF0;
  *(inited + 32) = sub_2412830F0();
  *(inited + 40) = sub_2412830FC();
  sub_2412813C8(inited, sub_241286608);
  return v0;
}

void sub_2412842B0()
{
  v1 = sub_241283024();
  v2 = &v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];
  v3 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime] / (*&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime] + *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime + 8]);
  *&v3 = v3;
  [v1 setValue_];

  v4 = sub_2412831A0();
  v5 = v4;
  v6 = &v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
  v7 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8];
  v8 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 16];
  v9 = v7 + 2.22044605e-16;
  v10 = v7 + 1.11022302e-15;
  v11 = NAN;
  v12 = v9 <= 0.0 || v8 > v10;
  if (!v12 && v8 + 2.22044605e-16 >= 0.0)
  {
    v11 = *v2;
  }

  v13 = [v4 stringFromSeconds_];

  v14 = v13;
  v15 = v13;
  if (!v13)
  {
    sub_241353C0C();
    v15 = sub_241353BDC();

    sub_241353C0C();
    v14 = sub_241353BDC();
  }

  v59 = v14;
  v16 = sub_241353C0C();
  v18 = v17;
  v19 = v13;
  v20 = sub_2412831AC();
  v21 = v20;
  v22 = v6[1];
  v23 = v6[2];
  v24 = v22 + 2.22044605e-16;
  v25 = v22 + 1.11022302e-15;
  v26 = NAN;
  v27 = v24 <= 0.0 || v23 > v25;
  if (!v27 && v23 + 2.22044605e-16 >= 0.0)
  {
    v26 = *v2 + v2[1] - *v2;
  }

  v28 = [v20 stringFromSeconds_];

  v60 = v28;
  v29 = v28;
  if (!v28)
  {
    sub_241353C0C();
    v29 = sub_241353BDC();

    sub_241353C0C();
    v60 = sub_241353BDC();
  }

  v30 = sub_241353C0C();
  v32 = v31;
  v33 = v28;
  v34 = sub_2412830F0();
  v35 = [v34 text];

  if (v35)
  {
    v36 = sub_241353C0C();
    v38 = v37;

    if (v16 == v36 && v18 == v38)
    {
    }

    else
    {
      v39 = sub_24135497C();

      if ((v39 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v40 = sub_2412830FC();
    v41 = [v40 text];

    if (v41)
    {
      v42 = sub_241353C0C();
      v44 = v43;

      if (v30 == v42 && v32 == v44)
      {

LABEL_27:

LABEL_33:

        return;
      }

      v45 = sub_24135497C();

      if (v45)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v46 = sub_241353CDC();

  v47 = OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel;
  v48 = [*&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel] text];
  if (v48 && (v49 = v48, sub_241353C0C(), v49, v50 = sub_241353CDC(), , v46 == v50))
  {
    v51 = sub_241353CDC();

    v52 = sub_2412830FC();
    v53 = [v52 text];

    if (v53)
    {
      sub_241353C0C();

      v54 = sub_241353CDC();

      if (v51 == v54)
      {

        v55 = *&v0[v47];
        [v55 setText_];

        v56 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel];
        [v56 setText_];

        goto LABEL_33;
      }
    }
  }

  else
  {
  }

  v57 = *&v0[v47];
  [v57 setText_];

  v58 = sub_2412830FC();
  [v58 setText_];

  [*&v0[v47] sizeToFit];
  [*&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel] sizeToFit];

  [v0 setNeedsLayout];
}

void sub_24128481C()
{
  Current = CFAbsoluteTimeGetCurrent();
  byte_27E5385B0 = 0;
  qword_27E5385C0 = 0;
  unk_27E5385C8 = 0;
  qword_27E5385B8 = 0;
  qword_27E5385D0 = *&Current;
}

BOOL sub_24128484C(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
  {
    return a1[4] == a2[4];
  }

  return result;
}

void sub_2412849B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
    v3 = *(Strong + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 16);
    v4 = *(Strong + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
    v5 = *(Strong + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 32);
    v6 = v3 + v4 * (CFAbsoluteTimeGetCurrent() - v5);
    v7 = v3 + v4 * (CFAbsoluteTimeGetCurrent() - v5);
    v8 = &v1[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];
    v9 = *&v1[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];
    v10 = *&v1[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime + 8];
    *v8 = v6;
    v8[1] = v2 - v7;
    sub_241282764(v9, v10, v6, v2 - v7);
  }
}

void sub_241284A74()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D76940];
  v3 = [v0 traitCollection];
  v4 = [v1 preferredFontForTextStyle:v2 compatibleWithTraitCollection:v3];

  [v4 pointSize];
  v6 = v5;

  v7 = [v1 monospacedDigitSystemFontOfSize:v6 weight:*MEMORY[0x277D74418]];
  v8 = sub_2412830F0();
  v10 = v7;
  [v8 setFont_];

  v9 = sub_2412830FC();
  [v9 setFont_];

  [*&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel] sizeToFit];
  [*&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel] sizeToFit];
  [v0 setNeedsLayout];
}

uint64_t sub_241284C8C(void *a1)
{
  [a1 value];
  v4 = v1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
  v15 = *(v1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  v16 = v15 * v3;
  v5 = *(v1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v14 = *(v1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
  Current = CFAbsoluteTimeGetCurrent();
  LOBYTE(v18) = v5;
  v7.f64[0] = v15;
  *(&v18 + 1) = v15;
  *&v19 = v16;
  v8.f64[0] = v14;
  *(&v19 + 1) = v14;
  v20 = Current;
  *&v17[32] = *(v4 + 32);
  v9 = *(v4 + 16);
  *v17 = *v4;
  *&v17[16] = v9;
  *(v4 + 32) = Current;
  v10 = v19;
  *v4 = v18;
  *(v4 + 16) = v10;
  v7.f64[1] = v16;
  v8.f64[1] = Current;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *&v17[8]), vceqq_f64(v8, *&v17[24])))) & 1) == 0 || ((v5 ^ v17[0]))
  {
    sub_241283228(v17, &v18);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v4 + 8);
    [a1 value];
    sub_2413385F4(v12 * v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_241284EAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 & 1) != 0 || (v4 = v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch, (*(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16)))
  {
    v5 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch;
    *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch) = 0;
    v6 = (v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_translationFromTrailingTouch);
    *v6 = 0;
    v6[1] = 0;
    v7 = *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed);
    *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed) = 1065353216;
    if (v7 != 1.0 && (*(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16) & 1) == 0)
    {
      goto LABEL_5;
    }

    return;
  }

  v8 = *(v4 + 8);
  v9 = UIPointSubtract(*v4, v8, *&a1);
  v10 = v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_translationFromTrailingTouch;
  *v10 = v9;
  *(v10 + 8) = v11;
  v12 = fabs(v8);
  if (v12 >= 84.0)
  {
    if (v12 < 140.0)
    {
      *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch) = 0;
      v14 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed;
      v15 = 1056964608;
      goto LABEL_16;
    }

    if (v12 < 196.0)
    {
      *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch) = 0;
      v14 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed;
      v15 = 1048576000;
      goto LABEL_16;
    }

    if (v12 <= 1.79769313e308)
    {
      *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch) = 0;
      v14 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed;
      v15 = 1017370378;
LABEL_16:
      *(v3 + v14) = v15;
      *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_normalizer) = 0;
      return;
    }
  }

  v13 = *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed);
  *(v3 + OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed) = 1065353216;
  if (v13 != 1.0 && (*(v4 + 16) & 1) == 0)
  {
    v5 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch;
LABEL_5:
    *(v3 + v5) = 1;
  }
}

id sub_241285068(char a1, float a2)
{
  v4 = a2;
  if ((v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue + 4] & 1) == 0)
  {
    if (v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch] == 1)
    {
      v5 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_normalizer];
      v4 = (v5 * a2) + (*&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue] * (1.0 - v5));
      v6 = v5 + 0.005;
      if ((v5 + 0.005) > 1.0)
      {
        v6 = 1.0;
      }

      *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_normalizer] = v6;
    }

    else
    {
      v4 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue];
    }
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  *&v7 = v4;
  return objc_msgSendSuper2(&v9, sel_setValue_animated_, a1 & 1, v7);
}

id sub_2412852DC(void *a1, uint64_t a2)
{
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  result = objc_msgSendSuper2(&v15, sel_beginTrackingWithTouch_withEvent_, a1, a2);
  if (result)
  {
    v6 = result;
    [a1 locationInView_];
    v7 = &v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
    v8 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
    v9 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 8];
    v10 = v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16];
    *v7 = v11;
    *(v7 + 1) = v12;
    v7[16] = 0;
    sub_241284EAC(v8, v9, v10);
    v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch] = 0;
    [v2 value];
    result = v6;
    v13 = &v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue];
    *v13 = v14;
    v13[4] = 0;
  }

  return result;
}

id sub_241285404(void *a1, uint64_t a2)
{
  [a1 locationInView_];
  v5 = &v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
  v6 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
  v7 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 8];
  v8 = v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16];
  *v5 = v9;
  *(v5 + 1) = v10;
  v5[16] = 0;
  sub_241284EAC(v6, v7, v8);
  v11 = &v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue];
  if ((v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue + 4] & 1) == 0)
  {
    v12 = *v11;
    [v2 bounds];
    [v2 trackRectForBounds_];
    Width = CGRectGetWidth(v24);
    v14 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_translationFromTrailingTouch];
    v15 = v14 / Width;
    [v2 maximumValue];
    v17 = v16;
    [v2 minimumValue];
    v19 = v12 + ((v15 * (v17 - v18)) * *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed]);
    [v2 minimumValue];
    if (v20 > v19)
    {
      v19 = v20;
    }

    [v2 maximumValue];
    if (v21 >= v19)
    {
      v21 = v19;
    }

    *v11 = v21;
    *(v11 + 4) = 0;
  }

  v23.receiver = v2;
  v23.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  return objc_msgSendSuper2(&v23, sel_continueTrackingWithTouch_withEvent_, a1, a2);
}

void sub_2412855C8(id a1, uint64_t a2)
{
  if (a1)
  {
    [a1 locationInView_];
    v5 = 0;
    v7 = v6;
    v9 = v8;
    v10 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch;
    v11 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
    v12 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 8];
    v13 = v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16];
  }

  else
  {
    v10 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch;
    v11 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
    v12 = *&v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 8];
    v13 = v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch + 16];
    v7 = v11;
    v9 = v12;
    v5 = v13;
  }

  v14 = &v2[v10];
  *v14 = v7;
  *(v14 + 1) = v9;
  v14[16] = v5;
  sub_241284EAC(v11, v12, v13);
  v19.receiver = v2;
  v19.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  objc_msgSendSuper2(&v19, sel_endTrackingWithTouch_withEvent_, a1, a2);
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = v14[16];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_241284EAC(v15, v16, v17);
  v18 = &v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue];
  *v18 = 0;
  v18[4] = 1;
  v2[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch] = 0;
}

id sub_2412858B8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_translationFromTrailingTouch];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedLocationOfTouch];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_trackedValue];
  *v5 = 0;
  v5[4] = 1;
  v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_thumbShouldReturnToTouch] = 0;
  *&v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_normalizer] = 1065353216;
  *&v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView14ScrubberSlider_scrubbingSpeed] = 1065353216;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScrubberView.ScrubberSlider();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_2412859E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired);
  v4 = *(v2 + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_linkFired);
  *v3 = a1;
  v3[1] = a2;

  sub_2412186FC(v4);
  v5 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel_handleLink_];
  v6 = *(v2 + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_link);
  *(v2 + OBJC_IVAR____TtCC11AssetViewer12ScrubberViewP33_82866A5555A2CDB794CEBCFE6A3F2A7D11DisplayLink_link) = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [objc_opt_self() currentRunLoop];
    [v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];
  }
}

void sub_241285D30(char a1)
{
  if ([v1 isHighlighted] != (a1 & 1))
  {
    v2 = OBJC_IVAR____TtCC11AssetViewer12ScrubberView12CustomButton_highlightAnimator;
    v3 = *&v1[OBJC_IVAR____TtCC11AssetViewer12ScrubberView12CustomButton_highlightAnimator];
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    if ([v4 isRunning] && objc_msgSend(v4, sel_isInterruptible))
    {
      [v4 stopAnimation_];
      [v4 finishAnimationAtPosition_];
    }

    v5 = *&v1[v2];
    if (!v5 || ([v5 isRunning] & 1) == 0)
    {
LABEL_8:
      v6 = [v1 layer];
      [v6 removeAllAnimations];

      v7 = [v1 imageView];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 layer];

        [v9 removeAllAnimations];
      }

      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      v11 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v17[4] = sub_241286968;
      v17[5] = v10;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 1107296256;
      v17[2] = sub_2412D5698;
      v17[3] = &block_descriptor_2;
      v12 = _Block_copy(v17);
      v13 = v1;

      v14 = [v11 initWithDuration:3 curve:v12 animations:0.1];
      _Block_release(v12);
      v15 = *&v1[v2];
      *&v1[v2] = v14;
      v16 = v14;

      [v16 startAnimation];
    }
  }
}

id sub_241285F64(void *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v3, 0.75, 0.75);
  }

  else
  {
    *&v3.a = 0x3FF0000000000000uLL;
    v3.c = 0.0;
    v3.d = 1.0;
    *&v3.tx = 0uLL;
  }

  return [a1 setTransform_];
}

double sub_241285FEC()
{
  [v0 bounds];
  v1 = CGRectGetWidth(v4) + -48.0;
  if (v1 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  [v0 bounds];
  CGRectGetHeight(v5);
  [v0 bounds];
  CGRectGetWidth(v6);
  [v0 bounds];
  CGRectGetHeight(v7);
  return v2 * 0.5;
}

id sub_241286274(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
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

uint64_t sub_2412862F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
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

uint64_t sub_241286348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2412863B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2413544EC();
LABEL_9:
  result = sub_24135461C();
  *v1 = result;
  return result;
}

uint64_t sub_241286454(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2413544EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2413544EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24123D370(&qword_27E5386C0, &qword_27E5386B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386B8);
            v9 = sub_2412EA1D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_241246158(0, &qword_27E538398);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_241286608(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2413544EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2413544EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24123D370(&qword_27E5386A8, &qword_27E5386A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386A0);
            v9 = sub_2412EA1D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_241246158(0, &qword_27E539A90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2412867BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2413544EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2413544EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24123D370(&qword_27E5386D8, &qword_27E5386D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386D0);
            v9 = sub_2412EA048(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EntityController();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_241286994()
{
  v1 = OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView;
  type metadata accessor for ScrubberView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(ASVBlurredBackgroundView) initWithFrame:0 backgroundStyle:0 controlStyle:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_currentStyle) = 0;
  sub_2413547DC();
  __break(1u);
}

double sub_241286A60(void *a1)
{
  v2 = [a1 traitCollection];
  [v2 displayCornerRadius];
  v4 = v3;

  if (v4 > 0.0)
  {
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (!v6)
    {
      [a1 bounds];
      CGRectGetWidth(v21);
      [a1 bounds];
      CGRectGetHeight(v22);
    }
  }

  [a1 safeAreaInsets];
  [a1 safeAreaInsets];
  UIEdgeInsetsMax();
  v8 = v7;
  v10 = v9;
  [a1 bounds];
  v23.origin.x = UIEdgeInsetsInsetRect(v11, v12, v13, v14, v8, v10);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  CGRectGetWidth(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetMaxY(v26);
  return MinX;
}

void sub_241286C74()
{
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___playPauseButton) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipBackButton) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___skipForwardButton) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___slider) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___elapsedTimeFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView____lazy_storage___remainingTimeFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_link) = 0;
  v2 = OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
  if (qword_27E537B20 != -1)
  {
    swift_once();
  }

  v3 = v0 + v2;
  v4 = *&qword_27E5385B8;
  v5 = unk_27E5385C8;
  *v3 = byte_27E5385B0;
  *(v3 + 8) = v4;
  *(v3 + 24) = v5;
  v6 = (v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds);
  *v6 = 0u;
  v6[1] = 0u;
  sub_2413547DC();
  __break(1u);
}

uint64_t sub_241286DD4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_241337C60(v0, *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24] != 0.0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_241286E4C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime] + -15.0;
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  v13 = v2;
  v3 = &v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
  v4 = v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
  v12 = *(v3 + 1);
  v11 = *(v3 + 3);
  Current = CFAbsoluteTimeGetCurrent();
  LOBYTE(v15) = v4;
  v6.f64[0] = v12;
  *(&v15 + 1) = v12;
  *&v16 = v13;
  v7.f64[0] = v11;
  *(&v16 + 1) = v11;
  v17 = Current;
  *&v14[32] = *(v3 + 4);
  v8 = *(v3 + 1);
  *v14 = *v3;
  *&v14[16] = v8;
  *(v3 + 4) = Current;
  v9 = v16;
  *v3 = v15;
  *(v3 + 1) = v9;
  v6.f64[1] = v13;
  v7.f64[1] = Current;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, *&v14[8]), vceqq_f64(v7, *&v14[24])))) & 1) == 0 || ((v4 ^ v14[0]))
  {
    sub_241283228(v14, &v15);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_241337C60(v1, 3u);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2413385F4(*(v3 + 2));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_241286FB0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime] + 15.0;
  v3 = &v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
  v4 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8];
  if (v4 < v2)
  {
    v2 = *&v0[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8];
  }

  v14 = v2;
  v5 = *v3;
  v12 = v4;
  v13 = v3[3];
  Current = CFAbsoluteTimeGetCurrent();
  LOBYTE(v16) = v5;
  v7.f64[0] = v12;
  v8.f64[0] = v13;
  *(&v16 + 1) = v12;
  *&v17 = v14;
  *(&v17 + 1) = v13;
  v18 = Current;
  *&v15[32] = v3[4];
  v9 = *(v3 + 1);
  *v15 = *v3;
  *&v15[16] = v9;
  v3[4] = Current;
  v10 = v17;
  *v3 = v16;
  *(v3 + 1) = v10;
  v7.f64[1] = v14;
  v8.f64[1] = Current;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *&v15[8]), vceqq_f64(v8, *&v15[24])))) & 1) == 0 || ((v5 ^ v15[0]))
  {
    sub_241283228(v15, &v16);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_241337C60(v1, 2u);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2413385F4(v3[2]);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24128710C()
{
  v1 = v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
  LOBYTE(v13) = 1;
  v10[0] = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v2 = v10[0];
  v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
  v4 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  *(&v13 + 1) = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  v14 = vextq_s8(v4, v3, 8uLL);
  v15 = v3.f64[1];
  v11 = v4;
  v12 = v3;
  *(v1 + 32) = v3.f64[1];
  v5 = v14;
  *v1 = v13;
  *(v1 + 16) = v5;
  v6 = vaddvq_s32(vbicq_s8(xmmword_241366F00, vuzp1q_s32(vceqq_f64(v4, v4), vceqq_f64(v3, v3)))) & 0xF;
  if (v2 != 1 || v6 != 0)
  {
    sub_241283228(v10, &v13);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v9)
    {
      *(*(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 8) = 0xBFF0000000000000;
      sub_241337AB8(0, 0);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_241287250()
{
  v1 = v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing;
  LOBYTE(v10) = 0;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
  v7[0] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24);
  v4 = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  *(&v10 + 1) = *(v0 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8);
  v11 = vextq_s8(v4, v3, 8uLL);
  v12 = v3.f64[1];
  v8 = v4;
  v9 = v3;
  *(v1 + 32) = v3.f64[1];
  v5 = v11;
  *v1 = v10;
  *(v1 + 16) = v5;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v4, v4), vceqq_f64(v3, v3))))) & 1) != 0 || (v2)
  {
    sub_241283228(v7, &v10);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_241338038(v0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24128735C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2412873C4()
{
  result = qword_27E538320;
  if (!qword_27E538320)
  {
    sub_241352B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538320);
  }

  return result;
}

char *sub_241287420()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController;
  v2 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ARQuickLookOverlayController());
    v5 = sub_2412AB944(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_241287498()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner;
  if (*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner))
  {
    v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner);
  }

  else
  {
    v2 = sub_2412890C4(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_241287500(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24135478C();

    if (v4)
    {
      type metadata accessor for EntityController();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2412FDC20(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2412875B4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538970);
  MEMORY[0x28223BE20](v23);
  v7 = (&v22 - v6);
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v25 = a3;

  v14 = 0;
  while (v11)
  {
    v26 = v4;
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v25 + 56);
    v19 = *(*(v25 + 48) + 8 * v17);
    v20 = type metadata accessor for PhysicsState();
    sub_2412B30F0(v18 + *(*(v20 - 8) + 72) * v17, v7 + *(v23 + 48), type metadata accessor for PhysicsState);
    *v7 = v19;

    v21 = v26;
    v24(v7);
    v4 = v21;
    result = sub_241246278(v7, &unk_27E538970);
    if (v21)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v26 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_241287784(unint64_t result, void *a2)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        sub_2413520CC();
        sub_24135217C();
        if (swift_dynamicCastClass())
        {
          v5 = sub_24135216C();
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_241365C30;
          *(v5 + 32) = sub_2413520CC();
        }

        sub_2412AE568(v5, a2);

        ++v4;
        if (v6 == v3)
        {
          return result;
        }
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = sub_2413544EC();
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_24128792C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245CE29C0](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2413544EC();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_241287A40(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389B8);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_24135261C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CDB5C8];
  v25 = sub_2412B3164(&qword_27E5389C0, MEMORY[0x277CDB5C8]);
  sub_2413543DC();
  v17 = v16;
  v18 = v28;
  sub_2412B3164(&qword_27E5389C8, v17);
  v26 = a2;
  v19 = sub_241353BCC();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_24135442C();
  }

  v22 = v29;
  sub_24127EFF0(v7, v29, &qword_27E5389B8);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_241287D44(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538960);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_2413527AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CDB620];
  v25 = sub_2412B3164(&qword_27E5399A0, MEMORY[0x277CDB620]);
  sub_2413543DC();
  v17 = v16;
  v18 = v28;
  sub_2412B3164(&qword_27E538968, v17);
  v26 = a2;
  v19 = sub_241353BCC();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_24135442C();
  }

  v22 = v29;
  sub_24127EFF0(v7, v29, &qword_27E538960);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_241288048(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389D0);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_2413526FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CDB5F0];
  v25 = sub_2412B3164(&qword_27E5389D8, MEMORY[0x277CDB5F0]);
  sub_2413543DC();
  v17 = v16;
  v18 = v28;
  sub_2412B3164(&qword_27E5389E0, v17);
  v26 = a2;
  v19 = sub_241353BCC();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_24135442C();
  }

  v22 = v29;
  sub_24127EFF0(v7, v29, &qword_27E5389D0);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_24128834C()
{
  result = sub_241353BDC();
  qword_27E5386E0 = result;
  return result;
}

uint64_t PreviewViewController.Configuration.assetPathPrefix.getter()
{
  v1 = *v0;

  return v1;
}

void *PreviewViewController.Configuration.bundle.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_241288404(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = v1;
    if (v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame] == 1)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v3 = sub_241352FFC();
      __swift_project_value_buffer(v3, qword_27E53A538);
      v4 = sub_241352FDC();
      v5 = sub_2413540DC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_241215000, v4, v5, "didReceiveFirstARFrame = true", v6, 2u);
        MEMORY[0x245CE4870](v6, -1, -1);
      }

      v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
      v8 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
      if (v8 && (v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView)) != 0)
      {
        if (*&v9[qword_27E53A1C8] == 3)
        {
          v10 = *&v9[qword_27E53A1E0];
          *&v9[qword_27E53A1E0] = 0;
          v11 = v9;
          sub_24131B77C(v10);
          v12 = *&v2[v7];
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
            if (v13)
            {
              v14 = *&v13[qword_27E53A1C8];
              *&v13[qword_27E53A1C8] = 3;
              v15 = v13;
              sub_24131AD44(v14);

              if (qword_27E537B30 != -1)
              {
                swift_once();
              }

              v49[2] = xmmword_27E538C90;
              v49[3] = *&byte_27E538CA0;
              v50 = byte_27E538CB0;
              v49[0] = xmmword_27E538C70;
              v49[1] = *&qword_27E538C80;
              sub_241246210(v49, v47, &unk_27E538AB0);
              v16 = sub_241243CE0();
              sub_241246278(v49, &unk_27E538AB0);
              if (qword_27E537B50 != -1)
              {
                swift_once();
              }

              v47[2] = xmmword_27E538DB0;
              v47[3] = *&byte_27E538DC0;
              v48 = byte_27E538DD0;
              v47[0] = xmmword_27E538D90;
              v47[1] = *&qword_27E538DA0;
              sub_241246210(v47, v45, &qword_27E538110);
              v17 = sub_241244128();
              sub_241246278(v47, &qword_27E538110);
              if (qword_27E537B58 != -1)
              {
                swift_once();
              }

              v45[2] = xmmword_27E538DF8;
              v45[3] = *&byte_27E538E08;
              v46 = byte_27E538E18;
              v45[0] = xmmword_27E538DD8;
              v45[1] = *&qword_27E538DE8;
              sub_241246210(v45, v43, &qword_27E538110);
              v18 = sub_241244128();
              sub_241246278(v45, &qword_27E538110);
              if (qword_27E537B60 != -1)
              {
                swift_once();
              }

              v43[2] = xmmword_27E538E40;
              v43[3] = *&byte_27E538E50;
              v44 = byte_27E538E60;
              v43[0] = xmmword_27E538E20;
              v43[1] = *&qword_27E538E30;
              sub_241246210(v43, v42, &qword_27E538110);
              v19 = sub_241244128();
              sub_241246278(v43, &qword_27E538110);
              v20 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
              v21 = sub_24135402C();
              [v20 setFromValue_];

              v22 = v20;
              v23 = sub_24135402C();
              [v22 setToValue_];

              [v22 setDuration_];
              [v22 setMass_];
              [v22 setStiffness_];
              [v22 setDamping_];

              v24 = sub_241352FDC();
              v25 = sub_2413540DC();
              if (os_log_type_enabled(v24, v25))
              {
                v26 = swift_slowAlloc();
                *v26 = 0;
                _os_log_impl(&dword_241215000, v24, v25, "Fade in camera passthrough after receiving first ARFrame", v26, 2u);
                MEMORY[0x245CE4870](v26, -1, -1);
              }

              if (*&v2[v7])
              {
                v27 = swift_allocObject();
                *(v27 + 16) = v22;
                *(v27 + 24) = v2;
                v28 = swift_allocObject();
                *(v28 + 16) = v2;
                v29 = v2;
                v30 = v22;
                v31 = v29;

                sub_2412FCD6C(sub_2412B3644, v27, sub_2412B364C, v28, v16);

                return;
              }

LABEL_39:
              __break(1u);
              return;
            }

            goto LABEL_37;
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v34 = v9;
        v35 = sub_241352FDC();
        v36 = sub_2413540DC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_241215000, v35, v36, "Not in AR mode, so not fading in", v37, 2u);
          MEMORY[0x245CE4870](v37, -1, -1);
        }

        v38 = *&v2[v7];
        if (!v38)
        {
          goto LABEL_36;
        }

        v39 = *(v38 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v39)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v40 = *&v39[qword_27E53A1E0];
        *&v39[qword_27E53A1E0] = 1065353216;
        oslog = v39;
        sub_24131B77C(v40);
      }

      else
      {
        oslog = sub_241352FDC();
        v32 = sub_2413540DC();
        if (os_log_type_enabled(oslog, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_241215000, oslog, v32, "No ARView, early return", v33, 2u);
          MEMORY[0x245CE4870](v33, -1, -1);
        }
      }
    }
  }
}

void sub_241288B74(int a1, id a2, double a3, float a4, uint64_t a5)
{
  *&a3 = a4;
  [a2 _solveForInput_];
  v7 = *(a5 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = *&v8[qword_27E53A1E0];
  *&v8[qword_27E53A1E0] = v6;
  v10 = v8;
  sub_24131B77C(v9);
}

void sub_241288C20(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *&v2[qword_27E53A1E0];
  *&v2[qword_27E53A1E0] = 1065353216;
  v4 = v2;
  sub_24131B77C(v3);
}

uint64_t sub_241288D44()
{
  v1 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(v0 + v4, v3, type metadata accessor for PreviewType);
  v5 = sub_24135164C();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v6 = sub_241352FFC();
    __swift_project_value_buffer(v6, qword_27E53A538);
    v7 = v0;
    v8 = sub_241352FDC();
    v9 = sub_2413540DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = [v7 isShareEnabled];

      _os_log_impl(&dword_241215000, v8, v9, "QL.isShareEnabled: %{BOOL}d", v10, 8u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }

    else
    {

      v8 = v7;
    }

    return [v7 isShareEnabled];
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v11 = sub_241352FFC();
    __swift_project_value_buffer(v11, qword_27E53A538);
    v12 = sub_241352FDC();
    v13 = sub_2413540DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_241215000, v12, v13, "Inline preview - also enable share button", v14, 2u);
      MEMORY[0x245CE4870](v14, -1, -1);
    }

    sub_2412AF7A8(v3, type metadata accessor for PreviewType);
    return 1;
  }
}

id sub_241289004()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE53D0]) initWithFrame_];
    [v4 setGoal_];
    [v4 setActivatesAutomatically_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2412890C4(uint64_t a1)
{
  v2 = sub_2413517BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413517DC();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v12 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v23[0] = v2;
  v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  sub_24135292C();
  v15 = sub_2413524BC();

  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24135296C();
  sub_2413516FC();

  result = (*(v7 + 8))(v10, v6);
  v16 = *(a1 + v11);
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v23[1];
  v19 = v17;
  sub_24135257C();
  sub_241351C8C();
  sub_2413516FC();

  (*(v3 + 8))(v5, v23[0]);
  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x245CE3AB0](ServiceLocator);
  if (result)
  {
    v21 = result;

    type metadata accessor for ViewportScanner();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[5] = MEMORY[0x277D84F98];
    v22[7] = 0;
    swift_unknownObjectWeakInit();
    v22[3] = v18;
    v22[4] = v21;
    v22[7] = &off_2852FE5A8;
    swift_unknownObjectWeakAssign();
    return v22;
  }

LABEL_13:
  __break(1u);
  return result;
}

double sub_241289394()
{
  v1 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = v2;
  v5 = [v2 isHidden];

  if (v5)
  {
    return 0.0;
  }

  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  [v6 alpha];
  v9 = v8;

  if (v9 == 0.0)
  {
    return 0.0;
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;

  return CGRectGetHeight(*&v20);
}

uint64_t sub_2412894C8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE53B0]) init];
  [v0 setPlaneDetection_];
  v1 = v0;
  [v1 setLightEstimationEnabled_];
  [v1 setEnvironmentTexturing_];
  [v1 setAutoFocusEnabled_];
  if ([objc_opt_self() processMemory] > 400)
  {
    goto LABEL_10;
  }

  sub_241246158(0, &qword_27E5389A0);
  v2 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_241246158(0, &qword_27E538B78);
  v3 = sub_241353E2C();

  if (v3 >> 62)
  {
    result = sub_2413544EC();
    if (result >= 2)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245CE29C0](1, v3);
  }

  else
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 40);
  }

  v6 = v5;

  [v1 setVideoFormat_];

LABEL_10:
  if ([objc_opt_self() supportsSceneReconstruction])
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CE5368]) init];
    [v7 setVoxelSize_];
    [v7 setBucketsCount_];
    [v7 setLowQosSchedulingEnabled_];
    [v1 setSceneReconstructionOptions_];
  }

  [v1 setDisableMLRelocalization_];

  return v1;
}

void sub_241289718(char a1)
{
  if (*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled) != (a1 & 1))
  {
    v2 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v2)
    {
      if (*(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
      {

        sub_24128987C(0, 0);
      }

      else
      {
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v3 = sub_241352FFC();
        __swift_project_value_buffer(v3, qword_27E53A538);
        oslog = sub_241352FDC();
        v4 = sub_2413540DC();
        if (os_log_type_enabled(oslog, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&dword_241215000, oslog, v4, "Don't update autofocus until file successfully loaded", v5, 2u);
          MEMORY[0x245CE4870](v5, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24128987C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v12 = sub_241352FFC();
  __swift_project_value_buffer(v12, qword_27E53A538);
  v13 = sub_241352FDC();
  v14 = sub_2413540DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_241215000, v13, v14, "updateARSession", v15, 2u);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  v16 = *&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v16)
  {
    if (*(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) == 1)
    {
      v17 = *&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_faceTrackingConfiguration];
      v18 = [v3 previewOptions];
      v19 = sub_241353B5C();

      v35 = sub_241353C0C();
      v36 = v20;
      sub_24135456C();
      if (*(v19 + 16) && (v21 = sub_2412FD8C4(v37), (v22 & 1) != 0))
      {
        sub_2412461A0(*(v19 + 56) + 32 * v21, v38);
        sub_2412AF728(v37);

        v23 = sub_24135152C();
        v24 = swift_dynamicCast();
        (*(*(v23 - 8) + 56))(v11, v24 ^ 1u, 1, v23);
      }

      else
      {

        sub_2412AF728(v37);
        v32 = sub_24135152C();
        (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
      }

      sub_24128E4C8(v17, a2, v11);
    }

    else
    {
      sub_24128E0A8();
      v17 = *&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration];
      v25 = [v3 previewOptions];
      v26 = sub_241353B5C();

      v35 = sub_241353C0C();
      v36 = v27;
      sub_24135456C();
      if (*(v26 + 16) && (v28 = sub_2412FD8C4(v37), (v29 & 1) != 0))
      {
        sub_2412461A0(*(v26 + 56) + 32 * v28, v38);
        sub_2412AF728(v37);

        v30 = sub_24135152C();
        v31 = swift_dynamicCast();
        (*(*(v30 - 8) + 56))(v9, v31 ^ 1u, 1, v30);
      }

      else
      {

        sub_2412AF728(v37);
        v33 = sub_24135152C();
        (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
      }

      sub_24128E4C8(v17, a1, v9);
      v11 = v9;
    }

    sub_241246278(v11, &qword_27E538750);
  }

  else
  {
    __break(1u);
  }
}

void *sub_241289D28()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_241289D98(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_2412B3544(v4);
  }

  sub_2412B3624(v2);
  return v3;
}

void *sub_241289D98(void *result)
{
  v1 = *(result + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for ARAnchorTrackedStateUpdater();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = v2;
      v4[5] = sub_241245884(MEMORY[0x277D84F90]);
      swift_unknownObjectWeakAssign();

      v4[2] = sub_2412B3634;
      v4[3] = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_241289E74(void *a1, char a2)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = a1;
  v6 = sub_241352FDC();
  v7 = sub_2413540DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = a2 & 1;
    *(v8 + 8) = 2112;
    *(v8 + 10) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_241215000, v6, v7, "ARAnchorTrackedStateUpdater didUpdate isTracked: %{BOOL}d on anchor: %@", v8, 0x12u);
    sub_241246278(v9, &unk_27E539B90);
    MEMORY[0x245CE4870](v9, -1, -1);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_24128A010(v5, a2 & 1);
  }
}

void sub_24128A010(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_241351DEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_24129DB50(a1);
    if (v13)
    {
      sub_24130EC70();
      v14 = [a1 identifier];
      sub_24135162C();

      (*(v10 + 104))(v12, *MEMORY[0x277CDAD78], v9);
      sub_24135181C();
      sub_24135182C();

      (*(v10 + 8))(v12, v9);
    }

    return;
  }

  if (*(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) != 1)
  {
    return;
  }

  *&v63 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v15 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v15)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v57 = v10;
  v58 = v9;
  v56 = v8;
  if (v16 >> 62)
  {
LABEL_43:
    v17 = sub_2413544EC();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
LABEL_22:

    v29 = *(v3 + v63);
    if (!v29)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v30 = *(v29 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    v32 = v57;
    v31 = v58;
    if (!v30)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (!*(v30 + qword_27E53A1A0))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    *v12 = xmmword_241365E70;
    v12[1] = xmmword_241364640;
    v12[2] = xmmword_241365EE0;
    v12[3] = xmmword_241365D00;
    v33 = *(v32 + 104);
    v33(v12, *MEMORY[0x277CDAD70], v31);
    sub_24135181C();

    sub_24135182C();

    (*(v32 + 8))(v12, v31);
    v34 = *(v3 + v63);
    if (!v34)
    {
LABEL_53:
      __break(1u);
      return;
    }

    v35 = *(v34 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v35 >> 62)
    {
      v36 = sub_2413544EC();
      if (v36)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
LABEL_28:
        v55 = v33;
        v59.i64[0] = v32 + 104;
        if (v36 >= 1)
        {

          v37 = 0;
          v60 = xmmword_241367060;
          do
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x245CE29C0](v37, v35);
            }

            else
            {
              v38 = *(v35 + 8 * v37 + 32);
            }

            v39 = v38;
            v40 = *&v38[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode + 16];
            v63 = *&v38[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode + 32];
            v64 = v40;

            REComposeMatrix();
            v63 = v42;
            v64 = v41;
            v61 = v44;
            v62 = v43;
            sub_241352C5C();
            sub_2413518CC();

            v45 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v46 = swift_allocObject();
            *(v46 + 16) = v45;
            *(v46 + 24) = v39;

            v47 = v39;
            sub_2412487A8(sub_2412B363C, v46);

            v48 = *&v47[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
            if (v48)
            {
              v49 = v48;
              [v49 setEnabledGestureTypes_];
            }

            ++v37;
          }

          while (v36 != v37);

          v32 = v57;
          v31 = v58;
          v33 = v55;
          goto LABEL_40;
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

LABEL_40:
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930);
    v52 = v56;
    v53 = &v56[*(v51 + 64)];
    sub_241351DBC();
    sub_241351D8C();
    *v53 = 0;
    v33(v52, *MEMORY[0x277CDAD68], v31);
    (*(v32 + 56))(v52, 0, 1, v31);
    v54 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    swift_beginAccess();
    sub_241255BC8(v52, v3 + v54, &qword_27E538940);
    swift_endAccess();
    return;
  }

  v18 = 0;
  v62 = xmmword_241365E70;
  v61 = xmmword_241364640;
  v60 = xmmword_241365EE0;
  v59 = xmmword_241365D00;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x245CE29C0](v18, v16);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_43;
      }

      v19 = *(v16 + 8 * v18 + 32);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }
    }

    *&v64 = v19;
    REComposeMatrix();
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v21, v62), vceqq_f32(v22, v61)), vandq_s8(vceqq_f32(v23, v60), vceqq_f32(v24, v59)))) & 0x80000000) != 0)
    {
      break;
    }

    v25 = *(v3 + v63);
    if (!v25)
    {
      goto LABEL_48;
    }

    v26 = *(v25 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v26)
    {
      goto LABEL_47;
    }

    v27 = v26;
    v28 = sub_241247664(v27);

    if ((v28 & 1) == 0)
    {
      break;
    }

    ++v18;
    if (v20 == v17)
    {
      goto LABEL_22;
    }
  }

  sub_241290C40();
  v50 = v64;
}

void sub_24128A758()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538950);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_2413527AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v16 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v12;
  v33 = v3;
  v17 = *(v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v17)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  sub_24135276C();
  v19 = sub_2413527CC();
  sub_241287D44(v14, v11);
  v31 = v5;
  v20 = *(v5 + 8);
  v20(v11, v4);
  v20(v14, v4);
  v19(v35, 0);

  if (*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) != 1 || ([objc_opt_self() wantsPeopleOcclusionDisabled] & 1) != 0)
  {
    return;
  }

  v21 = *(v0 + v15);
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v22)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = v32;
  sub_24135276C();
  v30 = sub_2413527CC();
  v25 = v31;
  (*(v31 + 16))(v11);
  sub_2412B3164(&qword_27E5399A0, MEMORY[0x277CDB620]);
  v26 = v34;
  sub_2413543DC();
  if (sub_24135440C())
  {
    v20(v26, v4);
    v20(v24, v4);
    v27 = 1;
    v28 = v33;
  }

  else
  {
    sub_24135441C();
    v20(v24, v4);
    v28 = v33;
    (*(v25 + 32))(v33, v26, v4);
    v27 = 0;
  }

  (*(v25 + 56))(v28, v27, 1, v4);
  sub_241246278(v28, &unk_27E538950);
  v30(v35, 0);
}

void sub_24128AB54()
{
  v1 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = [v2 session];
  v13 = [v3 configuration];

  if (!v13)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v13;
  if (v4)
  {
    v6 = v13;
    v7 = [v4 detectionImages];
    if (v7)
    {
      v8 = v7;
      sub_241246158(0, &qword_27E538980);
      sub_2412B3208(&qword_27E538988, &qword_27E538980);
      v9 = sub_241353FFC();

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = sub_2413544EC();
      }

      else
      {
        v10 = *(v9 + 16);
      }

      if (!v10)
      {
        v11 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
        if (!v11)
        {
          goto LABEL_12;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {

          v12 = sub_2413544EC();

          if (!v12)
          {
            goto LABEL_12;
          }
        }

        else if (!*(v11 + 16))
        {
          goto LABEL_12;
        }
      }

      sub_24128987C(0, 0);
LABEL_12:

      v5 = v13;
      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_13:
}

void sub_24128AD50()
{
  v1 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v2)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v3 = [v2 session];
  v12 = [v3 configuration];

  if (!v12)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v12;
  if (v4)
  {
    v6 = v12;
    v7 = [v4 detectionObjects];
    sub_241246158(0, &qword_27E538990);
    sub_2412B3208(&qword_27E538998, &qword_27E538990);
    v8 = sub_241353FFC();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = sub_2413544EC();
    }

    else
    {
      v9 = *(v8 + 16);
    }

    if (!v9)
    {
      v10 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
      if (!v10)
      {
        goto LABEL_11;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {

        v11 = sub_2413544EC();

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      else if (!*(v10 + 16))
      {
        goto LABEL_11;
      }
    }

    sub_24128987C(0, 0);
LABEL_11:

    v5 = v12;
  }
}

uint64_t sub_24128AF44()
{
  v1 = sub_24135173C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v7)
  {
    v11 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_gravity);
    v8 = v7;
    sub_24135292C();

    sub_24135248C();
    sub_2413516FC();
    (*(v2 + 8))(v5, v1);
    RESceneGetECSManager();
    REECSManagerGetServiceLocator();
    if (!REServiceLocatorGetPhysicsSimulation())
    {
    }

    result = REPhysicsSimulationGetForceEffectCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v9 = result;
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {
          REForceEffectCreateGravity();
          REPhysicsSimulationAddForceEffect();
          sub_2413517EC();
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        REPhysicsSimulationGetForceEffect();
        result = REForceEffectGetType();
        if (result == 1)
        {
          REGravitySetAcceleration();
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PreviewViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386E8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - v1;
  v68 = objc_opt_self();
  v2 = [v68 mainBundle];
  v3 = sub_241353BDC();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_2413543BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v74 = v79;
  v73 = v78;
  if (*(&v79 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v71;
      v6 = v72;
      goto LABEL_9;
    }
  }

  else
  {
    sub_241246278(&v73, &qword_27E5386F0);
  }

  v6 = 0xE100000000000000;
  v5 = 63;
LABEL_9:
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  v8 = __swift_project_value_buffer(v7, qword_27E53A538);
  v9 = v0;

  v70 = v8;
  v10 = sub_241352FDC();
  v11 = sub_2413540DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v73 = v13;
    *v12 = 136315394;
    v14 = MEMORY[0x245CE2060](*&v9[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid], *&v9[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 8], *&v9[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 16], *&v9[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 24]);
    v16 = sub_2412DDC2C(v14, v15, &v73);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2412DDC2C(v5, v6, &v73);
    _os_log_impl(&dword_241215000, v10, v11, "%s ARQL v%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v13, -1, -1);
    MEMORY[0x245CE4870](v12, -1, -1);
  }

  v17 = v9;
  v18 = sub_241352FDC();
  v19 = sub_2413540DC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v73 = v21;
    *v20 = 136315138;
    v22 = MEMORY[0x245CE2060](*&v17[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid], *&v17[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 8], *&v17[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 16], *&v17[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 24]);
    v24 = sub_2412DDC2C(v22, v23, &v73);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_241215000, v18, v19, "%s ARQL viewDidLoad", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x245CE4870](v21, -1, -1);
    MEMORY[0x245CE4870](v20, -1, -1);
  }

  v77.receiver = v17;
  v77.super_class = ObjectType;
  objc_msgSendSuper2(&v77, sel_viewDidLoad);
  sub_24128BBD8();
  v25 = [v17 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  [v25 setMultipleTouchEnabled_];

  v27 = [v17 view];
  if (!v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v27;
  v29 = [objc_opt_self() blackColor];
  [v28 setBackgroundColor_];

  type metadata accessor for ARQLView();
  v30 = [v68 bundleForClass_];
  *&v73 = 0xD000000000000020;
  *(&v73 + 1) = 0x800000024135F540;
  *&v74 = v30;
  BYTE8(v74) = 0;
  type metadata accessor for ModelController();
  v75 = 0;
  v76 = 0;
  swift_allocObject();
  v31 = sub_24124B758(&v73, 0, 1);
  *&v17[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController] = v31;

  v32 = swift_allocObject();
  *(v32 + 16) = v17;
  v33 = &v31[OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback];
  v34 = *&v31[OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback];
  *v33 = sub_2412A130C;
  v33[1] = v32;
  v35 = v17;
  sub_2412186FC(v34);

  sub_24128D084();
  sub_24128D3FC();
  v36 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel];
  [v36 setHidden:1 animated:0];
  v37 = [v35 view];
  if (!v37)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v38 = v37;

  [v38 addSubview_];

  v39 = objc_opt_self();
  if (([v39 wantsDebugActionsButton] & 1) != 0 || objc_msgSend(v39, sel_wantsTTRButton))
  {
    v40 = [v35 userActivity];
    if (v40)
    {
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241365EA0;
      strcpy(&v73, "tap-to-radar");
      BYTE13(v73) = 0;
      HIWORD(v73) = -5120;
      sub_24135456C();
      v43 = sub_241244E30(&unk_2852FD6F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538728);
      swift_arrayDestroy();
      *(inited + 96) = sub_24135152C();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
      sub_2412F0EC4(v43, boxed_opaque_existential_1);

      sub_241244BF0(inited);
      swift_setDeallocating();
      sub_241246278(inited + 32, &unk_27E538730);
      v45 = sub_241353B4C();

      [v41 setUserInfo_];
    }
  }

  *&v73 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreen];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386F8);
  sub_24123D370(&qword_27E538700, &qword_27E5386F8);
  v46 = v65;
  sub_2413531AC();
  v47 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid];
  v48 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 8];
  v49 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 16];
  v50 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 24];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = v47;
  v52[4] = v48;
  v52[5] = v49;
  v52[6] = v50;
  sub_24123D370(&unk_27E538710, &qword_27E5386E8);

  v53 = v67;
  v54 = sub_2413531BC();

  (*(v66 + 8))(v46, v53);
  *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreenCancellable] = v54;

  v55 = [objc_opt_self() defaultCenter];
  [v55 addObserver:v35 selector:sel_didBecomeActive name:*MEMORY[0x277D76648] object:0];

  v56 = v35;
  v57 = sub_241352FDC();
  v58 = sub_2413540DC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v73 = v60;
    *v59 = 136315138;
    v61 = MEMORY[0x245CE2060](v47, v48, v49, v50);
    v63 = sub_2412DDC2C(v61, v62, &v73);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_241215000, v57, v58, "%s ARQL viewDidLoad completed", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x245CE4870](v60, -1, -1);
    MEMORY[0x245CE4870](v59, -1, -1);
  }
}

void sub_24128BBD8()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 _hostProcessIdentifier];
  v2 = [objc_opt_self() sharedAVSystemController];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v5 = *MEMORY[0x277D26C40];
  v19[0] = 0;
  v6 = [v3 setAttribute:v4 forKey:v5 error:v19];

  v7 = v19[0];
  if (v6)
  {

    v8 = v7;
  }

  else
  {
    v9 = v19[0];
    v10 = sub_24135139C();

    swift_willThrow();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v11 = sub_241352FFC();
    __swift_project_value_buffer(v11, qword_27E53A538);
    v12 = v10;
    v13 = sub_241352FDC();
    v14 = sub_2413540BC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_241215000, v13, v14, "Unable to inherit pid: %@", v15, 0xCu);
      sub_241246278(v16, &unk_27E539B90);
      MEMORY[0x245CE4870](v16, -1, -1);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    else
    {
    }
  }
}

id sub_24128BE6C(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  sub_24129B3BC();
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 40);
  return sub_24129B7CC(&v6);
}

void sub_24128BED4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v14)
      {
        v38 = a3;
        v15 = qword_27E537CD0;
        v16 = v14;
        if (v15 != -1)
        {
          swift_once();
        }

        v17 = sub_241352FFC();
        __swift_project_value_buffer(v17, qword_27E53A538);

        v18 = sub_241352FDC();
        v19 = sub_2413540DC();

        v37 = a4;
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v39 = v36;
          *v20 = 136315394;
          v21 = MEMORY[0x245CE2060](v38, a4, a5, a6);
          v23 = v16;
          v24 = sub_2412DDC2C(v21, v22, &v39);

          *(v20 + 4) = v24;
          v16 = v23;
          *(v20 + 12) = 1024;
          *(v20 + 14) = v10;
          _os_log_impl(&dword_241215000, v18, v19, "%s isWindowFullscreen is now: %{BOOL}d", v20, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x245CE4870](v36, -1, -1);
          MEMORY[0x245CE4870](v20, -1, -1);
        }

        if (v10)
        {
          v25 = sub_241287420();
          v25[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isInFullscreen] = 1;
        }

        else
        {

          v26 = sub_241352FDC();
          v27 = sub_2413540DC();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v39 = v29;
            *v28 = 136315138;
            v30 = MEMORY[0x245CE2060](v38, v37, a5, a6);
            v32 = sub_2412DDC2C(v30, v31, &v39);

            *(v28 + 4) = v32;
            _os_log_impl(&dword_241215000, v26, v27, "%s -- proactively pausing session)", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v29);
            MEMORY[0x245CE4870](v29, -1, -1);
            MEMORY[0x245CE4870](v28, -1, -1);
          }

          v33 = [v16 session];
          [v33 pause];

          v34 = sub_241287420();
          v34[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isInFullscreen] = 0;
          sub_2412F9F10();

          v35 = *&v12[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
          v35[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted] = 0;
          v25 = v35;
        }

        sub_2412F9F10();
      }
    }
  }
}

void sub_24128C2A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [v3 view];
  if (v11)
  {
    v12 = v11;
    [v11 frame];
    v14 = v13;
    v16 = v15;

    v17 = v8 == v14;
    if (v10 != v16)
    {
      v17 = 0;
    }

    v36 = v17;

    sub_24135310C();

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v18 = sub_241352FFC();
    __swift_project_value_buffer(v18, qword_27E53A538);
    v19 = v3;

    v20 = sub_241352FDC();
    v21 = sub_2413540DC();

    if (os_log_type_enabled(v20, v21))
    {
      v33 = a1;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136316162;
      v24 = MEMORY[0x245CE2060](*&v19[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid], *&v19[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 8], *&v19[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 16], *&v19[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid + 24]);
      v26 = sub_2412DDC2C(v24, v25, &v35);

      *(v22 + 4) = v26;
      *(v22 + 12) = 1024;

      sub_2413530FC();

      *(v22 + 14) = v34;

      *(v22 + 18) = 2080;
      v27 = sub_24135420C();
      v29 = sub_2412DDC2C(v27, v28, &v35);

      *(v22 + 20) = v29;
      *(v22 + 28) = 2080;
      v30 = sub_24135420C();
      v32 = sub_2412DDC2C(v30, v31, &v35);

      *(v22 + 30) = v32;
      *(v22 + 38) = 2080;
      *(v22 + 40) = sub_2412DDC2C(v33, a2, &v35);
      _os_log_impl(&dword_241215000, v20, v21, "%s updateIsFullscreen() - isFullscreen: %{BOOL}d  : screenSize: %s vs. appSize: %s %s", v22, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v23, -1, -1);
      MEMORY[0x245CE4870](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24128C620()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "PreviewViewController.performAdditionalSetupAfterCreatedARView()", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v8 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v6;
  [v6 insertSubview:v9 atIndex:0];

  v11 = *&v1[v7];
  if (!v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  UIView.pinToSuperviewEdges()();

  v14 = *&v1[v7];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = sub_2412B3164(&qword_27E538A88, type metadata accessor for PreviewViewController);
  v16 = (v14 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded);
  *v16 = v1;
  v16[1] = v15;
  v17 = v1;
  swift_unknownObjectRelease();
  v18 = *&v1[v7];
  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = [v19 session];
  [v20 _addObserver_];

  v21 = *&v1[v7];
  if (!v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 _currentTraitCollection];
  if (!v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = v25;
  v27 = [v25 userInterfaceStyle];

  v28 = v24[qword_27E53A1D0];
  v24[qword_27E53A1D0] = v27 == 2;
  sub_24131AF34(v28);

  v29 = *&v1[v7];
  if (!v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = *(v29 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  type metadata accessor for WorldRaycastStrategy();
  swift_allocObject();
  v31 = v30;
  v32 = sub_241257C44();

  *&v17[OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy] = v32;

  v33 = sub_241289004();
  v34 = *&v1[v7];
  if (!v34)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v35 = v33;
  v36 = *(v34 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v36)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v37 = [v36 session];
  [v35 setSession_];

  sub_24128C9B8();
  [v17 updateInterfaceState];

  sub_2413375C8();
}

void sub_24128C9B8()
{
  v1 = v0;
  sub_241352C5C();
  swift_allocObject();
  v2 = sub_24135180C();
  v3 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v2;
  v67 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v5 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);
  v6 = qword_27E537CE0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27E5419B0;
  v8 = *algn_27E5419B8;
  v9 = type metadata accessor for EntityController();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID];
  *v11 = 0;
  v11[8] = 1;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer] = 0;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard] = 5;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement] = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement] = _D0;
  v17 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox];

  sub_24135178C();
  *v17 = v18;
  v17[1] = v19;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_debugVisualizationEntity] = 0;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_debugBoundingBoxEntities] = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = 0;
  v20 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch;
  [objc_opt_self() floatForKey_];
  *&v10[v20] = v21;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight] = 0;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_savedLevitationHeight] = 0;
  v22 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode];
  if (qword_27E537C48 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27E541860;
  v24 = *algn_27E541870;
  v25 = xmmword_27E541880;
  *v22 = xmmword_27E541860;
  v22[1] = v24;
  v22[2] = v25;
  v26 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
  *v26 = v23;
  v26[1] = v24;
  v26[2] = v25;
  v27 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType];
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *v29 = 0u;
  v29[48] = 1;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast] = 0;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_groundPlaneEntity] = 0;
  v30 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
  *v30 = 0;
  v30[8] = 0;
  *(v30 + 2) = 4;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 81) = 0u;
  v31 = OBJC_IVAR____TtC11AssetViewer16EntityController_accessibilityAssetURL;
  v32 = sub_24135152C();
  (*(*(v32 - 8) + 56))(&v10[v31], 1, 1, v32);
  v33 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_savedViewToProj];
  v33[2] = 0u;
  v33[3] = 0u;
  *v33 = 0u;
  v33[1] = 0u;
  v34 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform];
  sub_241352E3C();
  *v34 = v35;
  v34[1] = v36;
  v34[2] = v37;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_entity] = v4;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_type] = 0;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_animationManager] = v5;
  _s13PlaneAnimaterCMa();
  swift_allocObject();
  swift_retain_n();
  v38 = swift_retain_n();
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator] = sub_2412DE3D0(v38, v5);
  v39 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
  *v39 = v7;
  v39[1] = v8;

  sub_24133AFBC(v7, v8);
  v10[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI] = 0;
  sub_24135191C();
  v40 = &v10[OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB];
  *v40 = v41;
  v40[1] = v42;
  REAABBExtents();
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController__assetNaturalSize] = v43;
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController__assetScaleToFitUnitBox] = 1.0 / fmaxf(fmaxf(*&v43, *(&v43 + 2)), *(&v43 + 1));
  swift_allocObject();
  v44 = sub_24135180C();
  sub_241352C1C();
  *&v10[OBJC_IVAR____TtC11AssetViewer16EntityController_verticalPlacementMarker] = v44;
  v68.receiver = v10;
  v68.super_class = v9;
  v45 = objc_msgSendSuper2(&v68, sel_init);

  v46 = OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController;
  v47 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
  *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController) = v45;
  v48 = v45;

  *&v48[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = &off_285300698;
  swift_unknownObjectWeakAssign();

  v49 = *(v1 + v46);
  if (!v49)
  {
    goto LABEL_19;
  }

  v50 = *(v1 + v67);
  if (!v50)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v51 = *(v50 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v51)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v53 = &v49[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
  v54 = *&v49[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
  *v53 = sub_241255AC0;
  v53[1] = v52;
  v55 = v51;
  v56 = v49;
  sub_2412186FC(v54);

  v57 = *(v1 + v46);
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v58 = *(v1 + v67);
  if (!v58)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v59 = *(v58 + OBJC_IVAR____TtC11AssetViewer15ModelController_feedbackGenerator);
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = objc_allocWithZone(ASVWorldGestureRecognizer);
  v61 = v57;
  v62 = [v60 initWithWorldDelegate:v61 feedbackGenerator:v59];
  v63 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
  *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer] = v62;

  v64 = *(v1 + v46);
  if (!v64)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v65 = *(v64 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
  if (v65)
  {
    [v65 setDataSource_];
    v64 = *(v1 + v46);
    if (!v64)
    {
      goto LABEL_26;
    }
  }

  v66 = *(v64 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
  if (v66)
  {
    [v66 setEnabledGestureTypes_];
  }
}

void sub_24128D084()
{
  v1 = v0;
  v2 = sub_241287420();
  v3 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v4 = v3;
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v5 setMultipleTouchEnabled_];

  [v1 addChildViewController_];
  [v4 didMoveToParentViewController_];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v4 view];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  [v8 addSubview_];

  v11 = [v4 view];
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  UIView.pinToSuperviewEdges()();

  v12 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_solariumNavController];
  *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_solariumNavController] = v4;
  v36 = v4;

  v13 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController;
  v14 = [*&v1[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] view];
  if (!v14)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setMultipleTouchEnabled_];

  v16 = [*&v1[v13] view];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for ARQuickLookOverlayView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = [v1 view];
      v21 = *(v19 + OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView);
      *(v19 + OBJC_IVAR____TtC11AssetViewer22ARQuickLookOverlayView_overrideView) = v20;

      v17 = v21;
    }
  }

  v22 = *&v1[v13];
  sub_2412AC494(v22);

  v23 = *&v1[v13];
  v24 = sub_241289004();
  v25 = *&v23[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_coachingOverlayView];
  *&v23[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_coachingOverlayView] = v24;
  v26 = v24;
  sub_2412F53B0(v25);

  v27 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController];
  v28 = *&v1[v13];
  v29 = [v27 view];
  v30 = &off_285300BA0;
  if (!v29)
  {
    v30 = 0;
  }

  v31 = &v28[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_animationView];
  *v31 = v29;
  *(v31 + 1) = v30;

  swift_unknownObjectRelease();
  v32 = *&v1[v13];
  v33 = sub_2412F5050();

  [v33 addTarget:v1 action:sel_triggerTapToRadar forControlEvents:64];
  v34 = [v1 view];
  if (!v34)
  {
    goto LABEL_21;
  }

  v35 = v34;
  [v34 addGestureRecognizer_];

  [v1 updateInterfaceState];
}

void sub_24128D3FC()
{
  v1 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 setMultipleTouchEnabled_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 setHidden_];

  *(*&v1[OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView] + OBJC_IVAR____TtC11AssetViewer12ScrubberView_delegate + 8) = &off_2853045F0;
  swift_unknownObjectWeakAssign();
  v6 = sub_241287420();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = [v1 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v11 = sub_2412F4B0C();

  [v7 insertSubview:v9 belowSubview:v11];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v12;
  UIView.pinToSuperviewEdges()();
}

Swift::Void __swiftcall PreviewViewController.viewDidLayoutSubviews()()
{
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLayoutSubviews);
  sub_24128C2A8(0xD000000000000017, 0x800000024135F570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538380);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_241366530;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  Width = CGRectGetWidth(v36);
  v13 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  v14 = sub_2412AE514();
  *(v1 + 64) = v14;
  *(v1 + 32) = Width;
  v15 = [v0 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v37.origin.x = v18;
  v37.origin.y = v20;
  v37.size.width = v22;
  v37.size.height = v24;
  Height = CGRectGetHeight(v37);
  *(v1 + 96) = v13;
  *(v1 + 104) = v14;
  *(v1 + 72) = Height;
  v27 = sub_241353C4C();
  v28 = v26;
  v29 = &v0[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString];
  if (v27 == *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString] && v26 == *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString + 8] || (sub_24135497C() & 1) != 0)
  {
  }

  else
  {
    *v29 = v27;
    v29[1] = v28;

    v30 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365EA0;
    sub_241353C0C();
    v32 = MEMORY[0x277D837D0];
    sub_24135456C();
    *(inited + 96) = v32;
    *(inited + 72) = v27;
    *(inited + 80) = v28;
    sub_241244BF0(inited);
    swift_setDeallocating();
    sub_241246278(inited + 32, &unk_27E538730);
    v33 = sub_241353B4C();

    [v30 sendAnalyticsWithEvent:5 payloadDict:v33];

    v34 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v34)
    {
      if (*(v34 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
      {
        [v0 updateInterfaceState];
      }
    }
  }
}

id PreviewViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  v4 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  if (v4)
  {

    v4(0);
    sub_2412186FC(v4);
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_2412186FC(v5);
  sub_24135229C();
  sub_24135228C();
  sub_24135227C();

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E53A538);
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_241215000, v7, v8, "ARQL deinit PreviewViewController", v9, 2u);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t sub_24128DE78(uint64_t a1, void *a2)
{
  sub_241351FAC();
  if (swift_dynamicCastClass() && (, v3 = sub_241351F9C(), , v3) || (sub_2413522FC(), (result = swift_dynamicCastClass()) != 0) && (, v3 = sub_2413522EC(), result = , v3))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *a2;
    v21 = *a2;
    *a2 = 0x8000000000000000;
    v8 = sub_2412FD968(v3);
    v9 = v6[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v12 = v7;
    if (v6[3] >= v11)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2412A82F4();
        v6 = v21;
      }
    }

    else
    {
      sub_2412A4124(v11, isUniquelyReferenced_nonNull_native);
      v6 = v21;
      v13 = sub_2412FD968(v3);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_20;
      }

      v8 = v13;
    }

    *a2 = v6;

    v15 = *a2;
    if (v12)
    {
      goto LABEL_14;
    }

    v15[(v8 >> 6) + 8] |= 1 << v8;
    *(v15[6] + 8 * v8) = v3;
    *(v15[7] + 8 * v8) = MEMORY[0x277D84F90];
    v16 = v15[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      v15[2] = v18;

LABEL_14:
      v19 = (v15[7] + 8 * v8);

      MEMORY[0x245CE21C0](v20);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_15:
        sub_241353E6C();
      }

LABEL_18:
      sub_241353E4C();
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    sub_241352C5C();
    result = sub_2413549DC();
    __break(1u);
  }

  return result;
}

id sub_24128E0A8()
{
  v1 = v0;
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration;
  v3 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration);
  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages;
  if (!*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages) && MEMORY[0x277D84F90] >> 62 && sub_2413544EC())
  {
    v25 = v3;
    sub_2412C06E4(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = v3;
  }

  sub_241246158(0, &qword_27E538980);
  sub_2412B3208(&qword_27E538988, &qword_27E538980);

  v6 = sub_241353FEC();

  [v3 setDetectionImages_];

  v7 = *(v1 + v2);
  v8 = *(v1 + v4);
  if (v8)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = v7;

      v10 = sub_2413544EC();
    }

    else
    {
      v10 = *(v8 + 16);
      v12 = v7;
    }
  }

  else
  {
    v11 = v7;
    v10 = 0;
  }

  [v7 setMaximumNumberOfTrackedImages_];

  v13 = *(v1 + v2);
  if (!*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects) && MEMORY[0x277D84F90] >> 62 && sub_2413544EC())
  {
    v26 = v13;
    sub_2412C0708(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = v13;
  }

  sub_241246158(0, &qword_27E538990);
  sub_2412B3208(&qword_27E538998, &qword_27E538990);

  v15 = sub_241353FEC();

  [v13 setDetectionObjects_];

  [*(v1 + v2) setAutoFocusEnabled_];
  v16 = v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions;
  swift_beginAccess();
  if (*(v16 + 1) == 1)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v17 = sub_241352FFC();
    __swift_project_value_buffer(v17, qword_27E53A538);
    v18 = sub_241352FDC();
    v19 = sub_2413540DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_241215000, v18, v19, "Allowing people occlusion if available", v20, 2u);
      MEMORY[0x245CE4870](v20, -1, -1);
    }

    sub_241246158(0, &qword_27E5389A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = 3;
    if (([ObjCClassFromMetadata supportsFrameSemantics_] & 1) == 0)
    {
      v22 = [ObjCClassFromMetadata supportsFrameSemantics_];
    }

    [*(v1 + v2) setFrameSemantics_];
  }

  if (*(v16 + 2) == 1)
  {
    result = [objc_opt_self() supportsSceneReconstruction];
    if (!result)
    {
      return result;
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  return [*(v1 + v2) setSceneReconstruction_];
}

void sub_24128E4C8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  (MEMORY[0x28223BE20])();
  v8 = &v61 - v7;
  v9 = sub_24135152C();
  v10 = *(v9 - 8);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v61 - v18;
  v20 = sub_241287420(v17);
  v21 = v20[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled];

  if (v21 == 1)
  {
    sub_241246210(a3, v8, &qword_27E538750);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_241246278(v8, &qword_27E538750);
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v22 = sub_241352FFC();
      __swift_project_value_buffer(v22, qword_27E53A538);
      v23 = v68;
      v24 = sub_241352FDC();
      v25 = sub_2413540DC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = v4;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412546;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2048;
        *(v27 + 14) = a2;
        v29 = v23;
        _os_log_impl(&dword_241215000, v24, v25, "Using ARConfiguration '%@',\noptions: '%lu'", v27, 0x16u);
        sub_241246278(v28, &unk_27E539B90);
        MEMORY[0x245CE4870](v28, -1, -1);
        v30 = v27;
        v4 = v26;
        MEMORY[0x245CE4870](v30, -1, -1);
      }

      v31 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v32)
        {
          v33 = [v32 session];
          [v33 runWithConfiguration:v23 options:a2];

          return;
        }

        goto LABEL_27;
      }

      __break(1u);
    }

    else
    {
      v67 = a2;
      (*(v10 + 32))(v19, v8, v9);
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v66 = v4;
      v38 = sub_241352FFC();
      __swift_project_value_buffer(v38, qword_27E53A538);
      v39 = *(v10 + 16);
      v39(v16, v19, v9);
      v40 = sub_241352FDC();
      v41 = sub_2413540DC();
      v42 = os_log_type_enabled(v40, v41);
      v65 = v10;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v64 = v39;
        v44 = v43;
        v63 = swift_slowAlloc();
        v69 = v63;
        *v44 = 136315138;
        v62 = sub_2413514EC();
        v46 = v45;
        v47 = *(v10 + 8);
        v47(v16, v9);
        v48 = sub_2412DDC2C(v62, v46, &v69);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_241215000, v40, v41, "[Automation] Replaying ar session recording at URL '%s'", v44, 0xCu);
        v49 = v63;
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x245CE4870](v49, -1, -1);
        v50 = v44;
        v39 = v64;
        MEMORY[0x245CE4870](v50, -1, -1);

        v51 = v47;
      }

      else
      {

        v51 = *(v10 + 8);
        v51(v16, v9);
      }

      v39(v13, v19, v9);
      v52 = objc_allocWithZone(MEMORY[0x277CE5360]);
      v53 = v68;
      v54 = sub_2412AC2D4(v53, v13);

      v55 = v66;
      v56 = sub_24128EBC4();
      [v54 setDelegate_];

      v57 = *(v55 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      v58 = v67;
      if (v57)
      {
        v59 = *(v57 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v59)
        {
          v60 = [v59 session];
          [v60 runWithConfiguration:v54 options:v58];

          v51(v19, v9);
          return;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v34 = sub_241352FFC();
  __swift_project_value_buffer(v34, qword_27E53A538);
  v68 = sub_241352FDC();
  v35 = sub_2413540DC();
  if (os_log_type_enabled(v68, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_241215000, v68, v35, "Ignoring runSession since arMode is disabled", v36, 2u);
    MEMORY[0x245CE4870](v36, -1, -1);
  }

  v37 = v68;
}

id sub_24128EBC4()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver);
  }

  else
  {
    v4 = type metadata accessor for ARQLReplayObserver();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC11AssetViewer18ARQLReplayObserver_callback];
    *v6 = sub_24128EC6C;
    v6[1] = 0;
    v11.receiver = v5;
    v11.super_class = v4;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_24128EC6C()
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_241352FFC();
  __swift_project_value_buffer(v0, qword_27E53A538);
  oslog = sub_241352FDC();
  v1 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_241215000, oslog, v1, "[Automation] AR session recording finished", v2, 2u);
    MEMORY[0x245CE4870](v2, -1, -1);
  }
}

void sub_24128ED54()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!*(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
  {
    return;
  }

  v3 = sub_241287420();
  v4 = v3[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled];

  if (v4 == 1)
  {
    v5 = OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration;
    v6 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration);
    v7 = MEMORY[0x277D84F90] >> 62;
    if (MEMORY[0x277D84F90] >> 62 && sub_2413544EC())
    {
      v19 = v6;
      sub_2412C06E4(MEMORY[0x277D84F90]);
    }

    else
    {
      v8 = v6;
    }

    sub_241246158(0, &qword_27E538980);
    sub_2412B3208(&qword_27E538988, &qword_27E538980);
    v9 = sub_241353FEC();

    [v6 setDetectionImages_];

    [*(v0 + v5) setMaximumNumberOfTrackedImages_];
    v10 = *(v0 + v5);
    if (v7 && sub_2413544EC())
    {
      v11 = v10;
      sub_2412C0708(MEMORY[0x277D84F90]);
    }

    else
    {
      v15 = v10;
    }

    sub_241246158(0, &qword_27E538990);
    sub_2412B3208(&qword_27E538998, &qword_27E538990);
    v16 = sub_241353FEC();

    [v10 setDetectionObjects_];

    if ([objc_opt_self() supportsSceneReconstruction])
    {
      [*(v0 + v5) setSceneReconstruction_];
    }

    [*(v0 + v5) setFrameSemantics_];
    v17 = *(v0 + v1);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v18)
      {
        oslog = [v18 session];
        [oslog runWithConfiguration:*(v0 + v5) options:0];
LABEL_22:

        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v12 = sub_241352FFC();
  __swift_project_value_buffer(v12, qword_27E53A538);
  oslog = sub_241352FDC();
  v13 = sub_2413540DC();
  if (!os_log_type_enabled(oslog, v13))
  {
    goto LABEL_22;
  }

  v14 = swift_slowAlloc();
  *v14 = 134217984;
  if (qword_27E537CC0 != -1)
  {
    swift_once();
  }

  sub_2413530FC();

  *(v14 + 4) = v21;
  _os_log_impl(&dword_241215000, oslog, v13, "Ignoring runSession since more than one ARView, count: %ld", v14, 0xCu);
  MEMORY[0x245CE4870](v14, -1, -1);
}

void sub_24128F138(void *a1)
{
  v3 = sub_241287420();
  v4 = v3[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v4 & 1) == 0)
  {
    LODWORD(v5) = 1.0;
    [a1 assetHeadScreenPositionForScale_];
    if ((LODWORD(v6) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v7) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v9 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel);
      v10 = v6;
      v11 = v7;
      [v9 bounds];
      [v9 setCenter_];
      [v9 frame];
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
      MinX = CGRectGetMinX(v27);
      v16 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeSafezone);
      v17 = CGRectGetMinX(*v16);
      if (MinX <= v17)
      {
        MinX = v17;
      }

      v28.origin.x = MinX;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxX = CGRectGetMaxX(v28);
      v19 = CGRectGetMaxX(*v16);
      if (v19 < MaxX)
      {
        MaxX = v19;
      }

      v29.origin.x = MinX;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v20 = MaxX - CGRectGetWidth(v29);
      v30.origin.x = v20;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      MinY = CGRectGetMinY(v30);
      v22 = CGRectGetMinY(*v16);
      if (MinY <= v22)
      {
        MinY = v22;
      }

      v31.origin.x = v20;
      v31.origin.y = MinY;
      v31.size.width = width;
      v31.size.height = height;
      MaxY = CGRectGetMaxY(v31);
      v24 = CGRectGetMaxY(*v16);
      if (v24 < MaxY)
      {
        MaxY = v24;
      }

      v32.origin.x = v20;
      v32.origin.y = MinY;
      v32.size.width = width;
      v32.size.height = height;
      [v9 setFrame_];
      [a1 assetScale];
      [v9 setPercentage_];

      [v9 sizeToFit];
    }
  }
}

void sub_24128F378()
{
  v1 = v0;
  [objc_opt_self() floatForKey_];
  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v49.origin.x = v7;
  v49.origin.y = v9;
  v49.size.width = v11;
  v49.size.height = v13;
  Width = CGRectGetWidth(v49);
  v15 = [v1 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v50.origin.x = v18;
  v50.origin.y = v20;
  v50.size.width = v22;
  v50.size.height = v24;
  Height = CGRectGetHeight(v50);
  v26 = [v1 view];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v27 = v26;
  [v26 safeAreaInsets];
  v29 = v28;
  v31 = v30;

  v32 = sub_241287420();
  v33 = [v32 navigationController];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 isNavigationBarHidden];

    if (v35)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = 64.0;
    }
  }

  else
  {

    v36 = 64.0;
  }

  v37 = UIEdgeInsetsInsetRect(v3, v3, Width - (v3 + v3), Height - (v3 + v3), v29, v31);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
  sub_2412F4C04();
  v46 = v45;

  v47 = sub_241289394();
  if (v46 > v47)
  {
    v47 = v46;
  }

  v48 = &v1[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeSafezone];
  *v48 = v37;
  v48[1] = v36 + v39;
  *(v48 + 2) = v41;
  v48[3] = v43 - v36 - v47;
}

void sub_24128F5C4()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_hideLozengeAnimated selector:0 userInfo:0 repeats:1.0];
  v4 = *(v0 + v1);
  *(v0 + v1) = v3;
}

id sub_24128F64C()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel);

  return [v4 setHidden:1 animated:1];
}

void sub_24128F70C()
{
  v113 = sub_2413538CC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = v104 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2413538FC();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24135391C();
  v107 = *(v117 - 8);
  v3 = MEMORY[0x28223BE20](v117);
  v105 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v106 = v104 - v5;
  v116 = sub_24135170C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24135261C();
  v123 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v122 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v121 = v104 - v10;
  v120 = sub_24135264C();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v12 = sub_241352FFC();
  __swift_project_value_buffer(v12, qword_27E53A538);
  v13 = v0;
  v14 = sub_241352FDC();
  v15 = sub_2413540AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock.n128_u64[0] = v17;
    *v16 = 136315138;
    v18 = v13[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8];
    if (v18 <= 2)
    {
      if (v13[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8])
      {
        if (v18 == 1)
        {
          v19 = 0xE600000000000000;
          v20 = 0x7463656A626FLL;
        }

        else
        {
          v19 = 0xEA00000000006D61;
          v20 = 0x72676F6C6F487261;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v20 = 0x676E6964616F6CLL;
      }

      goto LABEL_16;
    }

    if (v18 == 3)
    {
      v19 = 0xE800000000000000;
    }

    else
    {
      if (v18 != 4)
      {
        v19 = 0x80000002413600F0;
        v20 = 0xD000000000000011;
        goto LABEL_16;
      }

      v19 = 0xEE006E6564646948;
    }

    v20 = 0x6465726F68636E61;
LABEL_16:
    v21 = sub_2412DDC2C(v20, v19, &aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_241215000, v14, v15, "updateInterfaceState, appState: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245CE4870](v17, -1, -1);
    MEMORY[0x245CE4870](v16, -1, -1);
  }

  v22 = [objc_opt_self() wants2DOverlayControlsHidden];
  v124 = v7;
  if (v22)
  {
    if (qword_27E537B70 != -1)
    {
      swift_once();
    }

    v23 = dword_27E541798;
    v24 = BYTE1(dword_27E541798);
    v25 = BYTE2(dword_27E541798);
    v26 = HIBYTE(dword_27E541798);
    v28 = qword_27E5417A0;
    v27 = unk_27E5417A8;
  }

  else
  {
    v29 = *&v13[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
    v30 = v13[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8];
    v31 = sub_241287420();
    sub_2412F4A3C(v126);

    sub_2412B8540(v126, v29, v30, v127);
    aBlock = v126[0];
    v131 = v126[1];
    v132 = v126[2];
    v133 = v126[3];
    sub_2412B34E8(&aBlock);
    v23 = v127[0];
    v24 = v127[1];
    v25 = v127[2];
    v26 = v127[3];
    v28 = v128;
    v27 = v129;
  }

  v32 = sub_241287420();
  aBlock.n128_u8[0] = v23;
  aBlock.n128_u8[1] = v24;
  aBlock.n128_u8[2] = v25;
  aBlock.n128_u8[3] = v26;
  aBlock.n128_u64[1] = v28;
  v131.n128_u64[0] = v27;

  v125 = v27;

  sub_2412FA788(&aBlock);

  v33 = &v13[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
  v34 = v13[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8];
  if ((v34 - 2) >= 4)
  {
    v35 = v33[8];
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v36 = *&v13[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
  v37 = sub_2412F7098();
  [v37 setSelectedSegmentIndex_];

  v36[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] = v35;
  sub_2412F9928();

LABEL_26:
  v38 = *(*&v13[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter);
  if (v38)
  {
    v39 = *v33;
    v40 = v33[8];

    v41 = sub_2412B8D24(v39, v40);
    v42 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_allowsContentVisibility;
    *(v38 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_allowsContentVisibility) = v41;

    v43 = sub_241352FDC();
    v44 = sub_2413540DC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = *(v38 + v42);

      _os_log_impl(&dword_241215000, v43, v44, "CheckoutPlatter.allowsContentVisibility: %{BOOL}d", v45, 8u);
      MEMORY[0x245CE4870](v45, -1, -1);
    }

    else
    {
    }

    sub_24134055C();
  }

  v46 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v47 = *&v13[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v47)
  {
    __break(1u);
    goto LABEL_73;
  }

  v48 = *(v47 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v48)
  {

    return;
  }

  v49 = v33[8];
  if (v49 > 2)
  {
    if (v49 - 4 >= 2)
    {
      v55 = *&v48[qword_27E53A1C8];
      *&v48[qword_27E53A1C8] = 2;
      v56 = v48;
      sub_24131AD44(v55);

      *&v13[OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime] = CACurrentMediaTime() + 6.0;
    }

LABEL_43:
    v59 = v33[8];
    if ((v59 - 1) <= 1)
    {
      sub_24130EC70();
      v59 = v33[8];
    }

    v60 = v13[OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled];
    v13[OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled] = (v59 - 2) < 4;
    sub_241289718(v60);
    v61 = *&v13[v46];
    if (v61)
    {
      v62 = *(v61 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v62)
      {
        v63 = v62;
        sub_24135290C();

        v64 = *&v13[v46];
        if (v64)
        {
          v65 = *(v64 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (v65)
          {
            v66 = v65;
            sub_24135291C();

            v67 = *&v13[v46];
            if (v33[8] - 1 > 1)
            {
              if (!v67)
              {
LABEL_86:
                __break(1u);
                goto LABEL_87;
              }

              v68 = *(v67 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
              if (!v68)
              {
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              v69 = *(v67 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) ^ 1;
            }

            else
            {
              if (!v67)
              {
LABEL_85:
                __break(1u);
                goto LABEL_86;
              }

              v68 = *(v67 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
              if (!v68)
              {
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }

              v69 = 0;
            }

            v70 = v68;
            sub_24131A3D0(v69 & 1);

            v71 = *&v13[v46];
            if (v71)
            {
              v72 = *(v71 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
              if (v72)
              {
                v73 = v72;
                v74 = sub_2412907AC();
                sub_241321928(v74 & 1);

                v75 = *&v13[v46];
                if (v75)
                {
                  v104[1] = v28;
                  v76 = v124;
                  v77 = *(v75 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
                  if (v77)
                  {
                    v78 = v77;
                    v79 = sub_24135268C();
                    v80 = v118;
                    sub_24135266C();
                    v81 = v121;
                    sub_24135263C();
                    (*(v119 + 8))(v80, v120);
                    (v79)(&aBlock, 0);
                    v82 = v122;
                    sub_24135260C();
                    sub_2412B3164(&qword_27E5389C0, MEMORY[0x277CDB5C8]);
                    LOBYTE(v79) = sub_2413543CC();

                    v83 = *(v123 + 8);
                    v83(v82, v76);
                    v83(v81, v76);
                    sub_241321910(v79 & 1);

                    v84 = *&v13[v46];
                    if (v84)
                    {
                      v85 = *(v84 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
                      if (v85)
                      {
                        v86 = v85;
                        v87 = sub_241290920();
                        sub_241321D44(v87);

                        v88 = *&v13[v46];
                        if (v88)
                        {
                          v89 = *(v88 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
                          if (v89)
                          {
                            if (v33[8] - 3 >= 3)
                            {
                              v90 = *(v88 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) ^ 1;
                            }

                            else
                            {
                              v90 = 1;
                            }

                            v89[qword_27E53A1F0] = v90 & 1;
                            v91 = v89;
                            sub_24131A95C();
                            v92 = v114;
                            sub_241352E5C();
                            sub_2413516FC();

                            (*(v115 + 8))(v92, v116);
                            RERenderGraphAssetSetRuntimeNodeSettingBool();

                            if (v33[8] - 3 < 3)
                            {

                              sub_241246158(0, &qword_27E538920);
                              v124 = sub_24135416C();
                              v93 = v105;
                              sub_24135390C();
                              v94 = v106;
                              sub_24135393C();
                              v125 = *(v107 + 8);
                              v125(v93, v117);
                              v95 = swift_allocObject();
                              swift_unknownObjectWeakInit();
                              v132.n128_u64[0] = sub_2412B353C;
                              v132.n128_u64[1] = v95;
                              aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
                              aBlock.n128_u64[1] = 1107296256;
                              v131.n128_u64[0] = sub_2412D5698;
                              v131.n128_u64[1] = &block_descriptor_108;
                              v96 = _Block_copy(&aBlock);

                              v97 = v108;
                              sub_2413538DC();
                              v126[0].n128_u64[0] = MEMORY[0x277D84F90];
                              sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198]);
                              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
                              sub_24123D370(&qword_27E539880, &unk_27E538930);
                              v98 = v110;
                              v99 = v113;
                              sub_24135444C();
                              v100 = v124;
                              MEMORY[0x245CE2500](v94, v97, v98, v96);
                              _Block_release(v96);

                              (*(v112 + 8))(v98, v99);
                              (*(v109 + 8))(v97, v111);
                              v125(v94, v117);

                              return;
                            }

                            v101 = *&v13[v46];
                            if (v101)
                            {
                              v102 = *(v101 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
                              if (v102)
                              {
                                v103 = v102;

                                sub_24135292C();
                                sub_2413524EC();

                                sub_24135243C();
                                swift_dynamicCastClassUnconditional();
                                sub_2413523DC();
                                swift_unknownObjectRelease();
                                return;
                              }

                              goto LABEL_90;
                            }

LABEL_89:
                            __break(1u);
LABEL_90:
                            __break(1u);
                            goto LABEL_91;
                          }

                          goto LABEL_84;
                        }

LABEL_83:
                        __break(1u);
LABEL_84:
                        __break(1u);
                        goto LABEL_85;
                      }

LABEL_82:
                      __break(1u);
                      goto LABEL_83;
                    }

LABEL_81:
                    __break(1u);
                    goto LABEL_82;
                  }

LABEL_80:
                  __break(1u);
                  goto LABEL_81;
                }

LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!v33[8])
  {
    goto LABEL_43;
  }

  if (v49 != 1)
  {
    v57 = *&v48[qword_27E53A1C8];
    *&v48[qword_27E53A1C8] = 3;
    v58 = v48;
    sub_24131AD44(v57);

    *&v13[OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime] = 0x7FF0000000000000;
    goto LABEL_43;
  }

  v50 = *&v48[qword_27E53A1C8];
  *&v48[qword_27E53A1C8] = 0;
  v51 = v48;
  sub_24131AD44(v50);

  v52 = *&v13[v46];
  if (!v52)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v53 = *(v52 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v53)
  {
    v54 = v53;
    sub_241321910(0);

    goto LABEL_43;
  }

LABEL_92:
  __break(1u);
}