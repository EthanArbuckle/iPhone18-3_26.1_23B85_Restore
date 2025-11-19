id sub_23FF6AB10(double a1)
{
  v2 = v1;
  v4 = sub_23FFD929C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  v13 = fmin(a1, 1.0) * 4.50359963e15;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v14 = v13;
  if (a1 == -1.0 || [v2 completedUnitCount] <= v14)
  {
    result = [v2 setCompletedUnitCount_];
    if (a1 >= 0.6)
    {
      result = [v2 isPausable];
      if (result)
      {
        sub_23FFD925C();
        v18 = v2;
        v19 = sub_23FFD927C();
        v20 = sub_23FFD953C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          *(v21 + 4) = *(v18 + OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_id);

          _os_log_impl(&dword_23FF4C000, v19, v20, "[%llu] No longer pausable nor cancelable", v21, 0xCu);
          MEMORY[0x245CB48E0](v21, -1, -1);
        }

        else
        {

          v19 = v18;
        }

        (*(v5 + 8))(v12, v4);
        [v18 setPausable:0];
        return [v18 setCancellable:0];
      }
    }
  }

  else
  {
    sub_23FFD926C();
    v15 = sub_23FFD927C();
    v16 = sub_23FFD955C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23FF4C000, v15, v16, "Received progress update out of order", v17, 2u);
      MEMORY[0x245CB48E0](v17, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_23FF6AE24(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LODWORD(v5) = a1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v34 - v9;
  v10 = sub_23FFD929C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD925C();
  v15 = sub_23FFD927C();
  v16 = sub_23FFD953C();
  if (os_log_type_enabled(v15, v16))
  {
    v34 = v4;
    v36 = ObjectType;
    v17 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v38 = v4;
    *v17 = 136315394;
    v35 = v5;
    if (v5)
    {
      if (v5 == 1)
      {
        v18 = 0x646573756170;
      }

      else
      {
        v18 = 0x64656C65636E6163;
      }

      if (v5 == 1)
      {
        v5 = 0xE600000000000000;
      }

      else
      {
        v5 = 0xE800000000000000;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v18 = 0x676E696E6E7572;
    }

    v19 = sub_23FF8D0E8(v18, v5, &v38);

    *(v17 + 4) = v19;
    *(v17 + 12) = 1024;
    v20 = v34;
    *(v17 + 14) = v34 & 1;
    _os_log_impl(&dword_23FF4C000, v15, v16, "setState %s, sendingToDaemon: %{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v21 = v4;
    LOBYTE(v4) = v20;
    MEMORY[0x245CB48E0](v21, -1, -1);
    MEMORY[0x245CB48E0](v17, -1, -1);

    (*(v11 + 8))(v14, v10);
    ObjectType = v36;
    LOBYTE(v5) = v35;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v22 = *&v3[OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock];
  os_unfair_lock_lock((v22 + 32));
  if (!*(v22 + 16))
  {
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v4 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (*(v22 + 16) != 1 || v5 == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  *(v22 + 16) = v5;
  if (v4)
  {
    v24 = swift_allocObject();
    v25 = v5;
    *(v24 + 16) = v5;
    v26 = *&v3[OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_id];
    v27 = *(v22 + 24);
    if (v27)
    {
      v28 = *(v22 + 24);
      sub_23FFD94EC();
    }

    v29 = sub_23FFD949C();
    v30 = v37;
    (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v27;
    v5[5] = v26;
    v5[6] = sub_23FF6E600;
    v5[7] = v24;
    v5[8] = v3;

    v31 = v3;
    *(v22 + 24) = sub_23FF91244(0, 0, v30, &unk_23FFDBD00, v5);

    LOBYTE(v5) = v25;
  }

LABEL_25:
  if (v5)
  {
    if (v5 == 1)
    {
      v40 = v3;
      v32 = &selRef_pause;
      v33 = &v40;
    }

    else
    {
      v41.receiver = v3;
      v32 = &selRef_cancel;
      v33 = &v41;
    }
  }

  else
  {
    v39 = v3;
    v32 = &selRef_resume;
    v33 = &v39;
  }

  v33->super_class = ObjectType;
  objc_msgSendSuper2(v33, *v32);
LABEL_31:
  os_unfair_lock_unlock((v22 + 32));
}

uint64_t sub_23FF6B278(uint64_t a1)
{
  v2 = v1;
  v202 = type metadata accessor for MarketplaceKitError();
  v198 = *(v202 - 8);
  v4 = *(v198 + 64);
  MEMORY[0x28223BE20](v202);
  v184 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_23FFD929C();
  v6 = *(v204 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v204);
  v10 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v199 = &v178 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v197 = &v178 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v196 = &v178 - v16;
  MEMORY[0x28223BE20](v15);
  v201 = &v178 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v186 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v195 = (&v178 - v22);
  v205 = sub_23FFD91BC();
  v23 = *(v205 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v205);
  v188 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v192 = &v178 - v28;
  MEMORY[0x28223BE20](v27);
  v194 = &v178 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2958, &qword_23FFDBD38);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v191 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v200 = &v178 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v178 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v193 = (&v178 - v40);
  MEMORY[0x28223BE20](v39);
  v42 = &v178 - v41;
  v43 = *(v1 + 16);
  v44 = sub_23FFD913C();
  v185 = v43;
  if (v43 == v44)
  {
    sub_23FFD916C();
    v189 = *(v23 + 48);
    v190 = v23 + 48;
    v45 = v189(v42, 1, v205);
    v187 = a1;
    v183 = v23;
    if (v45 == 1)
    {
      sub_23FF64248(v42, &qword_27E3A2958, &qword_23FFDBD38);
      swift_getKeyPath();
      *&v223[0] = v1;
      sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
      sub_23FFD8FEC();

      v46 = *(v1 + 96);
      v224 = *(v1 + 80);
      v225 = v46;
      v47 = *(v1 + 128);
      v226 = *(v1 + 112);
      v227 = v47;
      v48 = *(&v47 + 1);
      v223[0] = *(v1 + 80);
      *(&v223[1] + 8) = *(v1 + 104);
      *(&v223[2] + 8) = *(v1 + 120);
      if (v225)
      {
        *&v223[1] = v225;
        *(&v223[3] + 1) = *(&v47 + 1);
        sub_23FF642A8(&v224, &v221, &qword_27E3A28D0, &qword_23FFDBA30);
        v49 = v48;
        sub_23FF64248(v223, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF6AB10(1.0);
      }

      else
      {
        *&v223[1] = 0;
        *(&v223[3] + 1) = *(&v47 + 1);
        sub_23FF642A8(&v224, &v221, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(v223, &qword_27E3A28D0, &qword_23FFDBA30);
      }

      swift_getKeyPath();
      *&v221 = v1;
      sub_23FFD8FEC();

      v55 = *(v1 + 96);
      v223[0] = *(v1 + 80);
      v223[1] = v55;
      v56 = *(v1 + 128);
      v223[2] = *(v1 + 112);
      v223[3] = v56;
      v57 = *(&v56 + 1);
      v54 = v183;
      v221 = *(v1 + 80);
      *(v222 + 8) = *(v1 + 104);
      *(&v222[1] + 8) = *(v1 + 120);
      if (*&v223[1])
      {
        *&v222[0] = *&v223[1];
        *(&v222[2] + 1) = *(&v56 + 1);
        sub_23FF642A8(v223, v218, &qword_27E3A28D0, &qword_23FFDBA30);
        v58 = v57;
        sub_23FF64248(&v221, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF6AE24(0, 0);
      }

      else
      {
        *&v222[0] = 0;
        *(&v222[2] + 1) = *(&v56 + 1);
        sub_23FF642A8(v223, v218, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v221, &qword_27E3A28D0, &qword_23FFDBA30);
      }
    }

    else
    {
      v54 = v23;
      sub_23FF64248(v42, &qword_27E3A2958, &qword_23FFDBD38);
    }

    v59 = v193;
    sub_23FFD915C();
    sub_23FF642A8(v59, v38, &qword_27E3A2958, &qword_23FFDBD38);
    v60 = v189(v38, 1, v205);
    v203 = v6;
    if (v60 == 1)
    {
      sub_23FF64248(v59, &qword_27E3A2958, &qword_23FFDBD38);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
    }

    else
    {
      (*(v54 + 32))(v194, v38, v205);
      sub_23FFD946C();
      v182 = sub_23FFD945C();
      sub_23FFD942C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v68 = v192;
      v69 = v205;
      (*(v54 + 16))(v192, v194, v205);
      v181 = sub_23FFD918C();
      v70 = sub_23FFD91AC();
      v179 = v71;
      v180 = v70;
      v64 = sub_23FFD917C();
      v65 = v72;
      v66 = sub_23FFD919C();
      v73 = v54;
      v67 = v74;
      v75 = *(v73 + 8);
      v75(v68, v69);
      v75(v194, v69);
      sub_23FF64248(v193, &qword_27E3A2958, &qword_23FFDBD38);

      v63 = v179;
      v62 = v180;
      v61 = v181;
      v6 = v203;
    }

    *&v224 = v61;
    *(&v224 + 1) = v62;
    *&v225 = v63;
    *(&v225 + 1) = v64;
    *&v226 = v65;
    *(&v226 + 1) = v66;
    *&v227 = v67;
    sub_23FF686CC(&v224);
    v76 = v200;
    sub_23FFD916C();
    v77 = v191;
    sub_23FF642A8(v76, v191, &qword_27E3A2958, &qword_23FFDBD38);
    if (v189(v77, 1, v205) == 1)
    {
      sub_23FF64248(v76, &qword_27E3A2958, &qword_23FFDBD38);
      memset(v223, 0, sizeof(v223));
    }

    else
    {
      v78 = v183;
      v79 = v188;
      (*(v183 + 32))(v188, v77, v205);
      sub_23FFD946C();
      sub_23FFD945C();
      sub_23FFD942C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v80 = v192;
      v81 = v205;
      (*(v78 + 16))(v192, v79, v205);
      v194 = sub_23FFD918C();
      v193 = sub_23FFD91AC();
      v191 = v82;
      v83 = sub_23FFD917C();
      v189 = v84;
      v190 = v83;
      v85 = sub_23FFD919C();
      v87 = v86;
      v88 = *(v78 + 8);
      v88(v80, v81);
      swift_getKeyPath();
      *&v224 = v2;
      sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
      sub_23FFD8FEC();

      v89 = *(v2 + 96);
      v224 = *(v2 + 80);
      v225 = v89;
      v90 = *(v2 + 128);
      v226 = *(v2 + 112);
      v227 = v90;
      v91 = *(&v90 + 1);
      v221 = *(v2 + 80);
      *(v222 + 8) = *(v2 + 104);
      *(&v222[1] + 8) = *(v2 + 120);
      if (v225)
      {
        *&v222[0] = v225;
        *(&v222[2] + 1) = *(&v90 + 1);
        sub_23FF642A8(&v224, v218, &qword_27E3A28D0, &qword_23FFDBA30);
        v92 = v91;
        v79 = v188;
        sub_23FF64248(&v221, &qword_27E3A28D0, &qword_23FFDBA30);
      }

      else
      {
        *&v222[0] = 0;
        *(&v222[2] + 1) = *(&v90 + 1);
        sub_23FF642A8(&v224, v218, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v221, &qword_27E3A28D0, &qword_23FFDBA30);
        v93 = sub_23FFD913C();
        v94 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());
        v92 = sub_23FF6D284(v93);
      }

      v88(v79, v205);
      sub_23FF64248(v200, &qword_27E3A2958, &qword_23FFDBD38);

      *&v223[0] = v194;
      *(&v223[0] + 1) = v193;
      *&v223[1] = v191;
      *(&v223[1] + 1) = v190;
      *&v223[2] = v189;
      *(&v223[2] + 1) = v85;
      *&v223[3] = v87;
      *(&v223[3] + 1) = v92;
      v6 = v203;
    }

    v224 = v223[0];
    v225 = v223[1];
    v226 = v223[2];
    v227 = v223[3];
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v178 - 2) = v2;
    *(&v178 - 1) = &v224;
    v205 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
    *&v221 = v2;
    v96 = sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
    sub_23FFD8FDC();
    sub_23FF64248(v223, &qword_27E3A28D0, &qword_23FFDBA30);

    v97 = sub_23FFD914C();
    if (v98 >> 60 == 15)
    {
      v99 = 1;
    }

    else
    {
      v100 = v97;
      v101 = v98;
      v102 = sub_23FFD8F3C();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      sub_23FFD8F2C();
      sub_23FF6EC24(&qword_27E3A2208, type metadata accessor for MarketplaceKitError);
      sub_23FFD8F1C();
      v99 = 0;
      sub_23FF6EC6C(v100, v101);
    }

    v105 = v195;
    (*(v198 + 56))(v195, v99, 1, v202);
    v106 = swift_getKeyPath();
    MEMORY[0x28223BE20](v106);
    *(&v178 - 2) = v2;
    *(&v178 - 1) = v105;
    *&v221 = v2;
    sub_23FFD8FDC();

    sub_23FF64248(v105, &qword_27E3A28E0, &qword_23FFDBA60);
    sub_23FFD925C();
    swift_retain_n();
    v107 = sub_23FFD927C();
    v108 = sub_23FFD954C();
    v109 = os_log_type_enabled(v107, v108);
    v200 = v96;
    if (v109)
    {
      v110 = swift_slowAlloc();
      *v110 = 134218496;
      *(v110 + 4) = v185;
      *(v110 + 12) = 1024;
      swift_getKeyPath();
      *&v221 = v2;
      sub_23FFD8FEC();

      *(v110 + 14) = *(v2 + 40) != 0;

      *(v110 + 18) = 1024;
      swift_getKeyPath();
      *&v221 = v2;
      sub_23FFD8FEC();

      *(v110 + 20) = *(v2 + 96) != 0;

      _os_log_impl(&dword_23FF4C000, v107, v108, "Updating app %llu: isInstalled: %{BOOL}d, isInstalling: %{BOOL}d", v110, 0x18u);
      MEMORY[0x245CB48E0](v110, -1, -1);
    }

    else
    {
    }

    v111 = *(v6 + 8);
    v112 = v204;
    v111(v201, v204);
    v113 = v196;
    sub_23FFD925C();

    v114 = sub_23FFD927C();
    v115 = sub_23FFD954C();
    v116 = os_log_type_enabled(v114, v115);
    v201 = v111;
    v203 = v6 + 8;
    if (!v116)
    {

      v111(v113, v112);
      v143 = v197;
      goto LABEL_43;
    }

    LODWORD(v194) = v115;
    v195 = v114;
    v117 = swift_slowAlloc();
    v192 = v117;
    v193 = swift_slowAlloc();
    *&v221 = v193;
    *v117 = 134218242;
    swift_getKeyPath();
    *&v218[0] = v2;
    sub_23FFD8FEC();

    v118 = *(v2 + 24);
    v119 = *(v2 + 32);
    v120 = *(v2 + 40);
    v121 = *(v2 + 48);
    v122 = *(v2 + 56);
    v123 = *(v2 + 64);
    v124 = *(v2 + 72);
    if (v120)
    {
      v125 = *(v2 + 24);
    }

    else
    {
      v125 = 0;
    }

    v126 = *(v2 + 48);
    v127 = *(v2 + 56);
    v128 = *(v2 + 64);
    v129 = *(v2 + 72);
    sub_23FF6DFFC(*(v2 + 24), *(v2 + 32), *(v2 + 40));
    sub_23FF6E04C(v118, v119, v120);
    v130 = v192;
    *(v192 + 4) = v125;
    v131 = v130;

    *(v131 + 6) = 2080;
    swift_getKeyPath();
    *&v218[0] = v2;
    sub_23FFD8FEC();

    v133 = *(v2 + 24);
    v132 = *(v2 + 32);
    v134 = *(v2 + 40);
    v135 = *(v2 + 48);
    v137 = *(v2 + 56);
    v136 = *(v2 + 64);
    v138 = *(v2 + 72);
    if (v134)
    {
      v139 = *(v2 + 48);
      v140 = *(v2 + 56);
      v141 = *(v2 + 64);
      v142 = *(v2 + 72);
      sub_23FF6DFFC(v133, v132, *(v2 + 40));

      sub_23FF6E04C(v133, v132, v134);
      v143 = v197;
      if (v138)
      {
LABEL_42:
        v148 = sub_23FF8D0E8(v136, v138, &v221);

        *(v131 + 14) = v148;
        v149 = v195;
        _os_log_impl(&dword_23FF4C000, v195, v194, "\t installedMetadata evid: %llu account: %s", v131, 0x16u);
        v150 = v193;
        __swift_destroy_boxed_opaque_existential_1(v193);
        MEMORY[0x245CB48E0](v150, -1, -1);
        MEMORY[0x245CB48E0](v131, -1, -1);

        v112 = v204;
        v111 = v201;
        (v201)(v196, v204);
LABEL_43:
        sub_23FFD925C();
        swift_retain_n();
        v151 = v143;
        v152 = sub_23FFD927C();
        v153 = sub_23FFD954C();
        if (!os_log_type_enabled(v152, v153))
        {

          v163 = v151;
          goto LABEL_54;
        }

        LODWORD(v196) = v153;
        v154 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v217 = v195;
        *v154 = 67109634;
        swift_getKeyPath();
        *&v221 = v2;
        sub_23FFD8FEC();

        *(v154 + 4) = *(v2 + 96) != 0;

        *(v154 + 8) = 2048;
        swift_getKeyPath();
        *&v221 = v2;
        sub_23FFD8FEC();

        v155 = *(v2 + 96);
        v221 = *(v2 + 80);
        v222[0] = v155;
        v156 = *(v2 + 128);
        v222[1] = *(v2 + 112);
        v222[2] = v156;
        v214 = *(v2 + 104);
        v215 = *(v2 + 120);
        v157 = *(v2 + 136);
        v212 = v221;
        if (v155)
        {
          v158 = v221;
        }

        else
        {
          v158 = 0;
        }

        v216 = v157;
        v213 = v155;
        sub_23FF642A8(&v221, v218, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v212, &qword_27E3A28D0, &qword_23FFDBA30);
        *(v154 + 10) = v158;

        *(v154 + 18) = 2080;
        swift_getKeyPath();
        *&v218[0] = v2;
        sub_23FFD8FEC();

        v159 = *(v2 + 128);
        v219 = *(v2 + 112);
        v220 = v159;
        v160 = *(v2 + 96);
        v218[0] = *(v2 + 80);
        v218[1] = v160;
        v161 = *(&v219 + 1);
        v162 = v159;
        if (v160)
        {
          v207 = *(v2 + 80);
          v208 = v160;
          v209 = *(v2 + 104);
          v210 = *(&v219 + 1);
          v211 = v220;
          sub_23FF642A8(v218, v206, &qword_27E3A28D0, &qword_23FFDBA30);

          sub_23FF64248(&v207, &qword_27E3A28D0, &qword_23FFDBA30);
          v111 = v201;
          if (v162)
          {
LABEL_53:
            v164 = sub_23FF8D0E8(v161, v162, &v217);

            *(v154 + 20) = v164;
            _os_log_impl(&dword_23FF4C000, v152, v196, "\t installation: %{BOOL}d evid: %llu account: %s", v154, 0x1Cu);
            v165 = v195;
            __swift_destroy_boxed_opaque_existential_1(v195);
            MEMORY[0x245CB48E0](v165, -1, -1);
            MEMORY[0x245CB48E0](v154, -1, -1);

            v163 = v197;
            v112 = v204;
LABEL_54:
            v111(v163, v112);
            v166 = v199;
            sub_23FFD925C();

            v167 = sub_23FFD927C();
            v168 = sub_23FFD954C();

            if (os_log_type_enabled(v167, v168))
            {
              v169 = swift_slowAlloc();
              v170 = swift_slowAlloc();
              *&v218[0] = v170;
              *v169 = 136315138;
              swift_getKeyPath();
              *&v221 = v2;
              sub_23FFD8FEC();

              v171 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
              swift_beginAccess();
              v172 = v186;
              sub_23FF642A8(v2 + v171, v186, &qword_27E3A28E0, &qword_23FFDBA60);
              if ((*(v198 + 48))(v172, 1, v202))
              {
                v173 = 0x296C696E28;
                sub_23FF64248(v172, &qword_27E3A28E0, &qword_23FFDBA60);
                v174 = 0xE500000000000000;
              }

              else
              {
                v175 = v184;
                sub_23FF6EBC0(v172, v184);
                sub_23FF64248(v172, &qword_27E3A28E0, &qword_23FFDBA60);
                v173 = MarketplaceKitError.description.getter();
                v174 = v176;
                sub_23FF519D8(v175);
              }

              v177 = sub_23FF8D0E8(v173, v174, v218);

              *(v169 + 4) = v177;
              _os_log_impl(&dword_23FF4C000, v167, v168, "\t installError:: %s", v169, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v170);
              MEMORY[0x245CB48E0](v170, -1, -1);
              MEMORY[0x245CB48E0](v169, -1, -1);

              return (v201)(v199, v204);
            }

            else
            {

              return (v111)(v166, v112);
            }
          }
        }

        else
        {
          v207 = *(v2 + 80);
          v208 = 0;
          v209 = *(v2 + 104);
          v210 = *(&v219 + 1);
          v211 = v220;
          sub_23FF642A8(v218, v206, &qword_27E3A28D0, &qword_23FFDBA30);
          sub_23FF64248(&v207, &qword_27E3A28D0, &qword_23FFDBA30);
          v111 = v201;
        }

        v161 = 0x296C696E28;

        v162 = 0xE500000000000000;
        goto LABEL_53;
      }
    }

    else
    {
      v144 = *(v2 + 48);
      v145 = *(v2 + 56);
      v146 = *(v2 + 64);
      v147 = *(v2 + 72);
      sub_23FF6DFFC(v133, v132, 0);
      sub_23FF6E04C(v133, v132, 0);
      v143 = v197;
    }

    v136 = 0x296C696E28;

    v138 = 0xE500000000000000;
    goto LABEL_42;
  }

  sub_23FFD925C();
  v50 = sub_23FFD927C();
  v51 = sub_23FFD955C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_23FF4C000, v50, v51, "Trying to update app with mismatched app data", v52, 2u);
    MEMORY[0x245CB48E0](v52, -1, -1);
  }

  return (*(v6 + 8))(v10, v204);
}

uint64_t AppLibrary.App.presentAgeExceptionApproveInPersonSheet()()
{
  v1[2] = v0;
  sub_23FFD946C();
  v1[3] = sub_23FFD945C();
  v3 = sub_23FFD942C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23FF6CBEC, v3, v2);
}

uint64_t sub_23FF6CBEC()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23FF6CCEC;

  return (sub_23FF55DC8)(v1, sub_23FF6CEF0, 0);
}

uint64_t sub_23FF6CCEC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_23FF6CE8C;
  }

  else
  {
    v7 = sub_23FF6CE28;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23FF6CE28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23FF6CE8C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_23FF6CEF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_41;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheet:v8 reply:v9];
  _Block_release(v9);
}

uint64_t AppLibrary.App.deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_23FF6E04C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_23FF6E09C(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_23FF64248(v0 + OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError, &qword_27E3A28E0, &qword_23FFDBA60);
  v5 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
  v6 = sub_23FFD900C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AppLibrary.App.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_23FF6E04C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_23FF6E09C(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_23FF64248(v0 + OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError, &qword_27E3A28E0, &qword_23FFDBA60);
  v5 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
  v6 = sub_23FFD900C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t AppLibrary.App.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v0 + 16));
  return sub_23FFD9A7C();
}

uint64_t sub_23FF6D1AC()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v1 + 16));
  return sub_23FFD9A7C();
}

uint64_t sub_23FF6D224()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v1 + 16));
  return sub_23FFD9A7C();
}

id sub_23FF6D284(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2928, &qword_23FFDBD10);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_id] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithParent_userInfo_, 0, 0);
  [v6 setTotalUnitCount_];
  [v6 setPausable_];
  [v6 setCancellable_];
  sub_23FF6AB10(-1.0);

  return v6;
}

void sub_23FF6D46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_23FFD8F8C();
  if (a6)
  {
    if (a6 == 1)
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_23FF6839C;
      v16 = &block_descriptor_34;
      v11 = _Block_copy(&v13);

      v12 = &selRef_pauseInstall_reply_;
    }

    else
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_23FF6839C;
      v16 = &block_descriptor_2;
      v11 = _Block_copy(&v13);

      v12 = &selRef_cancelInstall_reply_;
    }
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_23FF6839C;
    v16 = &block_descriptor_31_0;
    v11 = _Block_copy(&v13);

    v12 = &selRef_resumeInstall_reply_;
  }

  [a1 *v12];
  _Block_release(v11);
}

uint64_t sub_23FF6D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_23FFD929C();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF6D710, 0, 0);
}

uint64_t sub_23FF6D710()
{
  if (v0[2])
  {
    v1 = *(MEMORY[0x277D857E0] + 4);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_23FF6D8B4;

    return MEMORY[0x282200460]();
  }

  else if (sub_23FFD950C())
  {
    v3 = v0[9];

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_23FF6DAD4;
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];

    return sub_23FF55DC8(v8, v6, v7);
  }
}

uint64_t sub_23FF6D8B4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23FF6D9B0, 0, 0);
}

uint64_t sub_23FF6D9B0()
{
  if (sub_23FFD950C())
  {
    v1 = v0[9];

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_23FF6DAD4;
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];

    return sub_23FF55DC8(v7, v5, v6);
  }
}

uint64_t sub_23FF6DAD4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23FF6DC7C;
  }

  else
  {
    v3 = sub_23FF6DBE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF6DBE8()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock);
  os_unfair_lock_lock((v1 + 32));
  if ((sub_23FFD950C() & 1) == 0)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
  }

  os_unfair_lock_unlock((v1 + 32));
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23FF6DC7C()
{
  v1 = v0[12];
  v2 = v0[9];
  sub_23FFD925C();
  v3 = v1;
  v4 = sub_23FFD927C();
  v5 = sub_23FFD956C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23FF4C000, v4, v5, "Error updating progress: %{public}@", v8, 0xCu);
    sub_23FF64248(v9, &qword_27E3A24F0, &unk_23FFDD2B0);
    MEMORY[0x245CB48E0](v9, -1, -1);
    MEMORY[0x245CB48E0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v12 = *(v0[6] + OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock);
  os_unfair_lock_lock((v12 + 32));
  if ((sub_23FFD950C() & 1) == 0)
  {
    v13 = *(v12 + 24);
    *(v12 + 24) = 0;
  }

  os_unfair_lock_unlock((v12 + 32));
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

id sub_23FF6DE68()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15AppDistribution0A7LibraryC0A0C8MetadataV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (sub_23FFD996C()) && (v2 == v6 && v4 == v7 || (sub_23FFD996C()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_23FFD996C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for AppLibrary.App()
{
  result = qword_27E3A28F0;
  if (!qword_27E3A28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF6DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23FF6E04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23FF6E09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
  }

  return result;
}

void sub_23FF6E158()
{
  sub_23FF6E260();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23FFD900C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23FF6E260()
{
  if (!qword_27E3A2900)
  {
    type metadata accessor for MarketplaceKitError();
    v0 = sub_23FFD95CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3A2900);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23FF6E2D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23FF6E31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23FF6E38C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23FF6E3D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for InstallationNSProgress.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstallationNSProgress.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23FF6E5AC()
{
  result = qword_27E3A2918;
  if (!qword_27E3A2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2918);
  }

  return result;
}

uint64_t sub_23FF6E608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23FF6E6E4;

  return sub_23FF6D648(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23FF6E6E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF6E7F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF6E860(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_23FF6E870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_23FF696B4();
}

uint64_t sub_23FF6E880(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  if (!v7)
  {
    v21 = a1[6];
    if (!v14)
    {
      sub_23FF642A8(a1, v24, &qword_27E3A2950, &qword_23FFDBD30);
      sub_23FF642A8(a2, v24, &qword_27E3A2950, &qword_23FFDBD30);
      sub_23FF6E04C(v4, v5, 0);
      v18 = 0;
      return v18 & 1;
    }

    sub_23FF642A8(a1, v24, &qword_27E3A2950, &qword_23FFDBD30);
    sub_23FF642A8(a2, v24, &qword_27E3A2950, &qword_23FFDBD30);
    goto LABEL_7;
  }

  v24[0] = *a1;
  v24[1] = v5;
  v24[2] = v7;
  v24[3] = v6;
  v24[4] = v8;
  v24[5] = v9;
  v24[6] = v10;
  if (!v14)
  {
    sub_23FF642A8(a1, v23, &qword_27E3A2950, &qword_23FFDBD30);
    sub_23FF642A8(a2, v23, &qword_27E3A2950, &qword_23FFDBD30);
    sub_23FF6DFFC(v4, v5, v7);

LABEL_7:
    sub_23FF6E04C(v4, v5, v7);
    sub_23FF6E04C(v11, v12, v14);
    v18 = 1;
    return v18 & 1;
  }

  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v14;
  v23[3] = v13;
  v23[4] = v16;
  v23[5] = v15;
  v23[6] = v17;
  v20 = _s15AppDistribution0A7LibraryC0A0C8MetadataV2eeoiySbAG_AGtFZ_0(v24, v23);
  sub_23FF642A8(a1, v22, &qword_27E3A2950, &qword_23FFDBD30);
  sub_23FF642A8(a2, v22, &qword_27E3A2950, &qword_23FFDBD30);
  sub_23FF6DFFC(v4, v5, v7);

  sub_23FF6E04C(v4, v5, v7);
  v18 = v20 ^ 1;
  return v18 & 1;
}

uint64_t sub_23FF6EBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceKitError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF6EC24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23FF6EC6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23FF62F84(a1, a2);
  }

  return a1;
}

uint64_t sub_23FF6EC80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v55 - v4;
  v5 = sub_23FFD91BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2958, &qword_23FFDBD38);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v57 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v55 - v25;
  v66 = sub_23FFD913C();
  v68 = a1;
  sub_23FFD915C();
  sub_23FF642A8(v26, v24, &qword_27E3A2958, &qword_23FFDBD38);
  v27 = *(v6 + 48);
  v28 = v27(v24, 1, v5);
  v58 = v6;
  if (v28 == 1)
  {
    sub_23FF64248(v26, &qword_27E3A2958, &qword_23FFDBD38);
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v59 = 0;
  }

  else
  {
    v55 = v27;
    (*(v6 + 32))(v14, v24, v5);
    sub_23FFD946C();
    sub_23FFD945C();
    sub_23FFD942C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v29 = v58;
    (*(v58 + 16))(v12, v14, v5);
    v65 = sub_23FFD918C();
    v64 = sub_23FFD91AC();
    v63 = v30;
    v62 = sub_23FFD917C();
    v61 = v31;
    v60 = sub_23FFD919C();
    v59 = v32;
    v33 = *(v29 + 8);
    v33(v12, v5);
    v33(v14, v5);
    sub_23FF64248(v26, &qword_27E3A2958, &qword_23FFDBD38);

    v27 = v55;
  }

  v34 = v68;
  sub_23FFD916C();
  v35 = v57;
  sub_23FF642A8(v21, v57, &qword_27E3A2958, &qword_23FFDBD38);
  if (v27(v35, 1, v5) == 1)
  {
    sub_23FF64248(v21, &qword_27E3A2958, &qword_23FFDBD38);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
  }

  else
  {
    v36 = v58;
    v37 = v56;
    (*(v58 + 32))(v56, v35, v5);
    sub_23FF69220(v37, v34, &v75);
    (*(v36 + 8))(v37, v5);
    sub_23FF64248(v21, &qword_27E3A2958, &qword_23FFDBD38);
  }

  v79[0] = v75;
  v79[1] = v76;
  v79[2] = v77;
  v79[3] = v78;
  v38 = sub_23FFD914C();
  v40 = v67;
  if (v39 >> 60 == 15)
  {
    v41 = type metadata accessor for MarketplaceKitError();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  }

  else
  {
    v42 = v38;
    v43 = v39;
    v44 = sub_23FFD8F3C();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_23FFD8F2C();
    v41 = type metadata accessor for MarketplaceKitError();
    sub_23FF6EC24(&qword_27E3A2208, type metadata accessor for MarketplaceKitError);
    sub_23FFD8F1C();
    sub_23FF6EC6C(v42, v43);

    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  v47 = type metadata accessor for AppLibrary.App();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 24) = 0u;
  *(v50 + 40) = 0u;
  *(v50 + 56) = 0u;
  *(v50 + 72) = 0u;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0;
  v51 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
  type metadata accessor for MarketplaceKitError();
  (*(*(v41 - 8) + 56))(v50 + v51, 1, 1, v41);
  sub_23FFD8FFC();
  *(v50 + 16) = v66;
  *&v69 = v65;
  *(&v69 + 1) = v64;
  v70 = v63;
  v71 = v62;
  v72 = v61;
  v73 = v60;
  v74 = v59;
  sub_23FF686CC(&v69);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v55 - 2) = v50;
  *(&v55 - 1) = v79;
  *&v69 = v50;
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
  sub_23FFD8FDC();
  sub_23FF64248(v79, &qword_27E3A28D0, &qword_23FFDBA30);

  v53 = sub_23FFD91CC();
  (*(*(v53 - 8) + 8))(v34, v53);
  sub_23FF64248(v40, &qword_27E3A28E0, &qword_23FFDBA60);
  return v50;
}

uint64_t static UpdateService.availableUpdate(for:checkInWithServer:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23FF6F5E0, 0, 0);
}

uint64_t sub_23FF6F5E0()
{
  v1 = *(v0 + 32);
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_23FF6F6E8;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_23FF55FCC(v7, v5, v6, v4, sub_23FF6F804, 0);
}

uint64_t sub_23FF6F6E8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

AppDistribution::UpdateMetadataRequest __swiftcall UpdateMetadataRequest.init(bundleID:shouldCheckInWithServer:)(AppDistribution::UpdateMetadataRequest bundleID, Swift::Bool shouldCheckInWithServer)
{
  *v2 = bundleID.field23FFF2B4C;
  *(v2 + 16) = shouldCheckInWithServer;
  bundleID.field23FFF2B58 = shouldCheckInWithServer;
  return bundleID;
}

uint64_t static UpdateService.requestUpdate(for:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v3 = a1[3];
  v1[3] = a1[2];
  v1[4] = v3;
  return MEMORY[0x2822009F8](sub_23FF6F844, 0, 0);
}

uint64_t sub_23FF6F844()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6F93C;

  return sub_23FF562FC((v0 + 16), sub_23FF6FA30, 0);
}

uint64_t sub_23FF6F93C()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t UpdateMetadataRequest.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_23FF6FA7C()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x4449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_23FF6FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB000 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF6FBA0(uint64_t a1)
{
  v2 = sub_23FF6FFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF6FBDC(uint64_t a1)
{
  v2 = sub_23FF6FFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateMetadataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2960, &qword_23FFDBD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6FFBC();
  sub_23FFD9ACC();
  v16 = 0;
  v11 = v13[1];
  sub_23FFD98EC();
  if (!v11)
  {
    v15 = 1;
    sub_23FFD98FC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t UpdateMetadataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2970, &qword_23FFDBD58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6FFBC();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_23FFD981C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF6FFBC()
{
  result = qword_27E3A2968;
  if (!qword_27E3A2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2968);
  }

  return result;
}

uint64_t sub_23FF70020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23FF70068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23FF700CC()
{
  result = qword_27E3A2978;
  if (!qword_27E3A2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2978);
  }

  return result;
}

unint64_t sub_23FF70124()
{
  result = qword_27E3A2980;
  if (!qword_27E3A2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2980);
  }

  return result;
}

unint64_t sub_23FF7017C()
{
  result = qword_27E3A2988;
  if (!qword_27E3A2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2988);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF701F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70224()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70258()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF7028C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 23;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_23FF702C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_23FF702EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70320()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70354()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70388()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SecureButtonActionRequest.Action.stringValue.getter()
{
  if (((v0[1] >> 60) & 3) > 1)
  {
    return 0x6867696C66657250;
  }

  if (((v0[1] >> 60) & 3) != 0)
  {
    v1 = 0x68636E75614CLL;
  }

  else
  {
    v1 = 0x6574656C6544;
  }

  v5 = v1 & 0xFFFFFFFFFFFFLL | 0x2D20000000000000;
  v4 = *v0;
  v3 = sub_23FFD995C();
  MEMORY[0x245CB3B50](v3);

  return v5;
}

uint64_t sub_23FF7048C()
{
  v1 = 0x6574656C6564;
  *v0;
  if (*v0)
  {
    v1 = 0x68636E75616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6867696C66657270;
  }
}

uint64_t sub_23FF70510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF74F7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF70538(uint64_t a1)
{
  v2 = sub_23FF70CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF70574(uint64_t a1)
{
  v2 = sub_23FF70CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF705B0(uint64_t a1)
{
  v2 = sub_23FF70E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF705EC(uint64_t a1)
{
  v2 = sub_23FF70E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF70628(uint64_t a1)
{
  v2 = sub_23FF70E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF70664(uint64_t a1)
{
  v2 = sub_23FF70E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF706A0(uint64_t a1)
{
  v2 = sub_23FF70D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF706DC(uint64_t a1)
{
  v2 = sub_23FF70D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF70718(uint64_t a1)
{
  v2 = sub_23FF70DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF70754(uint64_t a1)
{
  v2 = sub_23FF70DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionRequest.Action.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2990, &qword_23FFDBF20);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2998, &qword_23FFDBF28);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29A0, &qword_23FFDBF30);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29A8, &qword_23FFDBF38);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29B0, &qword_23FFDBF40);
  v41 = *(v18 - 8);
  v42 = v18;
  v19 = *(v41 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - v20;
  v22 = v2[1];
  v40 = *v2;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF70CBC();
  sub_23FFD9ACC();
  v24 = (v22 >> 60) & 3;
  if (((v22 >> 60) & 3) > 1)
  {
    if (v24 == 2)
    {
      LOBYTE(v43) = 2;
      sub_23FF70DB8();
      v27 = v34;
      v28 = v42;
      sub_23FFD988C();
      v43 = v40;
      v44 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      sub_23FF70D64();
      v29 = v36;
      sub_23FFD991C();
      v30 = v35;
    }

    else
    {
      LOBYTE(v43) = 3;
      sub_23FF70D10();
      v27 = v37;
      v28 = v42;
      sub_23FFD988C();
      v43 = v40;
      v44 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      sub_23FF70D64();
      v29 = v39;
      sub_23FFD991C();
      v30 = v38;
    }

    (*(v30 + 8))(v27, v29);
  }

  else
  {
    if (!v24)
    {
      LOBYTE(v43) = 0;
      sub_23FF70E60();
      v25 = v42;
      sub_23FFD988C();
      sub_23FFD993C();
      (*(v32 + 8))(v17, v14);
      return (*(v41 + 8))(v21, v25);
    }

    LOBYTE(v43) = 1;
    sub_23FF70E0C();
    v28 = v42;
    sub_23FFD988C();
    sub_23FFD993C();
    (*(v33 + 8))(v13, v10);
  }

  return (*(v41 + 8))(v21, v28);
}

unint64_t sub_23FF70CBC()
{
  result = qword_27E3A29B8;
  if (!qword_27E3A29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A29B8);
  }

  return result;
}

unint64_t sub_23FF70D10()
{
  result = qword_27E3A29C0;
  if (!qword_27E3A29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A29C0);
  }

  return result;
}

unint64_t sub_23FF70D64()
{
  result = qword_27E3A29C8;
  if (!qword_27E3A29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A29C8);
  }

  return result;
}

unint64_t sub_23FF70DB8()
{
  result = qword_27E3A29D0;
  if (!qword_27E3A29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A29D0);
  }

  return result;
}

unint64_t sub_23FF70E0C()
{
  result = qword_27E3A29D8;
  if (!qword_27E3A29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A29D8);
  }

  return result;
}

unint64_t sub_23FF70E60()
{
  result = qword_27E3A29E0;
  if (!qword_27E3A29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A29E0);
  }

  return result;
}

uint64_t SecureButtonActionRequest.Action.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29E8, &qword_23FFDBF48);
  v62 = *(v60 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v65 = &v53 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29F0, &qword_23FFDBF50);
  v61 = *(v59 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v64 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29F8, &qword_23FFDBF58);
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A00, &qword_23FFDBF60);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A08, &unk_23FFDBF68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_23FF70CBC();
  v23 = v66;
  sub_23FFD9AAC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v24 = v15;
  v54 = v12;
  v55 = v20;
  v25 = v11;
  v26 = v64;
  v27 = v65;
  v66 = v17;
  v28 = sub_23FFD986C();
  v29 = *(v28 + 16);
  if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
  {
    v32 = sub_23FFD970C();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
    *v34 = &type metadata for SecureButtonActionRequest.Action;
    v36 = v55;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v66 + 8))(v36, v16);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  if (*(v28 + 32) > 1u)
  {
    if (v30 == 2)
    {
      LOBYTE(v67) = 2;
      sub_23FF70DB8();
      v39 = v26;
      v40 = v55;
      sub_23FFD979C();
      v41 = v66;
      sub_23FF71690();
      v42 = v59;
      sub_23FFD983C();
      (*(v61 + 8))(v39, v42);
      (*(v41 + 8))(v40, v16);
      swift_unknownObjectRelease();
      v47 = v67;
      v48 = v68 | 0x2000000000000000;
    }

    else
    {
      LOBYTE(v67) = 3;
      sub_23FF70D10();
      v44 = v55;
      sub_23FFD979C();
      v45 = v66;
      sub_23FF71690();
      v50 = v60;
      sub_23FFD983C();
      (*(v62 + 8))(v27, v50);
      (*(v45 + 8))(v44, v16);
      swift_unknownObjectRelease();
      v47 = v67;
      v48 = v68 | 0x3000000000000000;
    }
  }

  else if (*(v28 + 32))
  {
    LOBYTE(v67) = 1;
    sub_23FF70E0C();
    v43 = v55;
    sub_23FFD979C();
    v49 = v57;
    v47 = sub_23FFD985C();
    (*(v58 + 8))(v25, v49);
    (*(v66 + 8))(v43, v16);
    swift_unknownObjectRelease();
    v48 = 0x1000000000000000;
  }

  else
  {
    LOBYTE(v67) = 0;
    sub_23FF70E60();
    v37 = v24;
    v38 = v55;
    sub_23FFD979C();
    v46 = v54;
    v47 = sub_23FFD985C();
    (*(v56 + 8))(v37, v46);
    (*(v66 + 8))(v38, v16);
    swift_unknownObjectRelease();
    v48 = 0;
  }

  v52 = v63;
  *v63 = v47;
  v52[1] = v48;
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

unint64_t sub_23FF71690()
{
  result = qword_27E3A2A10;
  if (!qword_27E3A2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A10);
  }

  return result;
}

uint64_t SecureButtonActionRequest.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_23FF71720(v2, v3);
}

uint64_t sub_23FF71720(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_23FF71730(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_23FF71730(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 SecureButtonActionRequest.init(action:authenticationMessage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t SecureButtonActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_23FF717CC, 0, 0);
}

uint64_t sub_23FF717CC()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FF718C8;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_23FF56720(v4, v5, v2, v3, sub_23FF719BC, 0);
}

uint64_t sub_23FF718C8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23FF719BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [a1 handleSecureButtonActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF71A98()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_23FF71AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEB060 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF71BB4(uint64_t a1)
{
  v2 = sub_23FF73BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF71BF0(uint64_t a1)
{
  v2 = sub_23FF73BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionRequest.encode(to:)(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A18, &qword_23FFDBF80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v21[0] = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF71720(v8, v9);
  sub_23FF73BBC();
  sub_23FFD9ACC();
  v23 = v8;
  v24 = v9;
  v22 = 0;
  sub_23FF73C10();
  v11 = v21[1];
  sub_23FFD991C();
  sub_23FF73C64(v23, v24);
  if (!v11)
  {
    v13 = objc_opt_self();
    v23 = 0;
    v14 = [v13 archivedDataWithRootObject:v21[0] requiringSecureCoding:1 error:&v23];
    v15 = v23;
    if (v14)
    {
      v16 = sub_23FFD8F9C();
      v18 = v17;

      v23 = v16;
      v24 = v18;
      v22 = 1;
      sub_23FF70D64();
      sub_23FFD991C();
      (*(v4 + 8))(v7, v3);
      result = sub_23FF62F84(v16, v18);
      goto LABEL_5;
    }

    v20 = v15;
    sub_23FFD8F4C();

    swift_willThrow();
  }

  result = (*(v4 + 8))(v7, v3);
LABEL_5:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void SecureButtonActionRequest.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A30, &qword_23FFDBF88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73BBC();
  sub_23FFD9AAC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    sub_23FF73C74();
    sub_23FFD983C();
    v12 = v22;
    v11 = v23;
    v24 = 1;
    sub_23FF71690();
    sub_23FFD983C();
    v20 = v12;
    v21 = v11;
    v13 = v22;
    v14 = v23;
    sub_23FF73CC8(0, &qword_27E3A2A40, 0x277CCAAC8);
    sub_23FF73CC8(0, &qword_27E3A2A48, 0x277CF0600);
    v15 = sub_23FFD957C();
    if (v15)
    {
      v16 = v15;
      (*(v6 + 8))(v9, v5);
      sub_23FF62F84(v13, v14);
      v18 = v20;
      v17 = v21;
      *a2 = v20;
      a2[1] = v17;
      a2[2] = v16;
      sub_23FF71720(v18, v17);
      v19 = v16;
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_23FF73C64(v18, v17);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SecureButtonActionResponse.ResponseType.stringValue.getter()
{
  v1 = v0;
  v2 = sub_23FFD8FCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FF73D30(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1701736270;
    }

    (*(v3 + 32))(v6, v10, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_23FFD96DC();

    v12 = 0x800000023FFEB020;
    v13 = 0xD000000000000018;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_23FFD96DC();

    v12 = 0x800000023FFEB040;
    v13 = 0xD000000000000012;
  }

  v17 = v13;
  v18 = v12;
  sub_23FF73E3C(&qword_27E3A2A50, MEMORY[0x277CC95F0]);
  v14 = sub_23FFD995C();
  MEMORY[0x245CB3B50](v14);

  v15 = v17;
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t sub_23FF72404()
{
  v1 = 0x496D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_23FF72468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF750E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF72490(uint64_t a1)
{
  v2 = sub_23FF73D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF724CC(uint64_t a1)
{
  v2 = sub_23FF73D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF72508(uint64_t a1)
{
  v2 = sub_23FF73DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF72544(uint64_t a1)
{
  v2 = sub_23FF73DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF72580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF72600(uint64_t a1)
{
  v2 = sub_23FF73E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7263C(uint64_t a1)
{
  v2 = sub_23FF73E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF72684(uint64_t a1)
{
  v2 = sub_23FF73ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF726C0(uint64_t a1)
{
  v2 = sub_23FF73ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A58, &qword_23FFDBF90);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v41 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A60, &qword_23FFDBF98);
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - v6;
  v7 = sub_23FFD8FCC();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A68, &qword_23FFDBFA0);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A70, &qword_23FFDBFA8);
  v52 = *(v21 - 8);
  v53 = v21;
  v22 = *(v52 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73D94();
  sub_23FFD9ACC();
  sub_23FF73D30(v51, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v42;
    v27 = v49;
    v36 = v20;
    v30 = v50;
    (*(v49 + 32))(v12, v36, v50);
    v56 = 1;
    sub_23FF73E84();
    v37 = v44;
    v32 = v53;
    sub_23FFD988C();
    sub_23FF73E3C(&qword_27E3A2430, MEMORY[0x277CC95F0]);
    v38 = v45;
    sub_23FFD991C();
    (*(v35 + 8))(v37, v38);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = v49;
    v28 = v43;
    v29 = v20;
    v30 = v50;
    (*(v49 + 32))(v43, v29, v50);
    v57 = 2;
    sub_23FF73DE8();
    v31 = v46;
    v32 = v53;
    sub_23FFD988C();
    sub_23FF73E3C(&qword_27E3A2430, MEMORY[0x277CC95F0]);
    v33 = v48;
    v34 = v54;
    sub_23FFD991C();
    if (!v34)
    {
      (*(v47 + 8))(v31, v33);
      (*(v27 + 8))(v28, v30);
      return (*(v52 + 8))(v24, v32);
    }

    (*(v47 + 8))(v31, v33);
    v12 = v28;
LABEL_6:
    (*(v27 + 8))(v12, v30);
    return (*(v52 + 8))(v24, v32);
  }

  v55 = 0;
  sub_23FF73ED8();
  v40 = v53;
  sub_23FFD988C();
  (*(v41 + 8))(v16, v13);
  return (*(v52 + 8))(v24, v40);
}

uint64_t SecureButtonActionResponse.ResponseType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A98, &qword_23FFDBFB0);
  v59 = *(v56 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  v63 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AA0, &qword_23FFDBFB8);
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AA8, &qword_23FFDBFC0);
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AB0, &qword_23FFDBFC8);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23FF73D94();
  v27 = v65;
  sub_23FFD9AAC();
  if (!v27)
  {
    v51 = v19;
    v52 = v22;
    v29 = v62;
    v28 = v63;
    v53 = v24;
    v65 = v15;
    v30 = v61;
    v31 = v64;
    v32 = sub_23FFD986C();
    v33 = *(v32 + 16);
    if (!v33 || ((v34 = *(v32 + 32), v33 == 1) ? (v35 = v34 == 3) : (v35 = 1), v35))
    {
      v36 = sub_23FFD970C();
      swift_allocError();
      v37 = v14;
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
      *v39 = v65;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v36 - 8) + 104))(v39, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v30 + 8))(v37, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v32 + 32))
      {
        if (v34 == 1)
        {
          v68 = 1;
          sub_23FF73E84();
          v42 = v60;
          sub_23FFD979C();
          v43 = v30;
          sub_23FFD8FCC();
          sub_23FF73E3C(&qword_27E3A2450, MEMORY[0x277CC95F0]);
          v47 = v58;
          sub_23FFD983C();
          (*(v57 + 8))(v42, v47);
          (*(v43 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v48 = v52;
        }

        else
        {
          v62 = v32;
          v69 = 2;
          sub_23FF73DE8();
          v44 = v28;
          sub_23FFD979C();
          v45 = v31;
          sub_23FFD8FCC();
          sub_23FF73E3C(&qword_27E3A2450, MEMORY[0x277CC95F0]);
          v48 = v51;
          v46 = v56;
          sub_23FFD983C();
          (*(v59 + 8))(v44, v46);
          (*(v30 + 8))(v14, v11);
          v31 = v45;
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v50 = v48;
        v49 = v53;
        sub_23FF73FD8(v50, v53, type metadata accessor for SecureButtonActionResponse.ResponseType);
      }

      else
      {
        v67 = 0;
        sub_23FF73ED8();
        sub_23FFD979C();
        (*(v54 + 8))(v29, v55);
        (*(v30 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v49 = v53;
        swift_storeEnumTagMultiPayload();
      }

      sub_23FF73FD8(v49, v31, type metadata accessor for SecureButtonActionResponse.ResponseType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_23FF73540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF735C8(uint64_t a1)
{
  v2 = sub_23FF73F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF73604(uint64_t a1)
{
  v2 = sub_23FF73F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AB8, &qword_23FFDBFD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73F2C();
  sub_23FFD9ACC();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_23FF73E3C(&qword_27E3A2AC8, type metadata accessor for SecureButtonActionResponse.ResponseType);
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t SecureButtonActionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AD0, &qword_23FFDBFD8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SecureButtonActionResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73F2C();
  sub_23FFD9AAC();
  if (!v2)
  {
    v16 = v19;
    sub_23FF73E3C(&qword_27E3A2AD8, type metadata accessor for SecureButtonActionResponse.ResponseType);
    v17 = v21;
    sub_23FFD983C();
    (*(v20 + 8))(v10, v7);
    sub_23FF73FD8(v17, v14, type metadata accessor for SecureButtonActionResponse.ResponseType);
    sub_23FF73FD8(v14, v16, type metadata accessor for SecureButtonActionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF73A44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AB8, &qword_23FFDBFD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73F2C();
  sub_23FFD9ACC();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_23FF73E3C(&qword_27E3A2AC8, type metadata accessor for SecureButtonActionResponse.ResponseType);
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_23FF73BBC()
{
  result = qword_27E3A2A20;
  if (!qword_27E3A2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A20);
  }

  return result;
}

unint64_t sub_23FF73C10()
{
  result = qword_27E3A2A28;
  if (!qword_27E3A2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A28);
  }

  return result;
}

uint64_t sub_23FF73C64(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_23FF62F84(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_23FF73C74()
{
  result = qword_27E3A2A38;
  if (!qword_27E3A2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A38);
  }

  return result;
}

uint64_t sub_23FF73CC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23FF73D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23FF73D94()
{
  result = qword_27E3A2A78;
  if (!qword_27E3A2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A78);
  }

  return result;
}

unint64_t sub_23FF73DE8()
{
  result = qword_27E3A2A80;
  if (!qword_27E3A2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A80);
  }

  return result;
}

uint64_t sub_23FF73E3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23FF73E84()
{
  result = qword_27E3A2A88;
  if (!qword_27E3A2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A88);
  }

  return result;
}

unint64_t sub_23FF73ED8()
{
  result = qword_27E3A2A90;
  if (!qword_27E3A2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2A90);
  }

  return result;
}

unint64_t sub_23FF73F2C()
{
  result = qword_27E3A2AC0;
  if (!qword_27E3A2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2AC0);
  }

  return result;
}

uint64_t sub_23FF73FA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF73FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23FF7407C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23FF740C4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23FF74170()
{
  result = type metadata accessor for SecureButtonActionResponse.ResponseType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23FF7422C()
{
  result = sub_23FFD8FCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureButtonActionRequest.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureButtonActionRequest.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FF74480()
{
  result = qword_27E3A2B00;
  if (!qword_27E3A2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B00);
  }

  return result;
}

unint64_t sub_23FF744D8()
{
  result = qword_27E3A2B08;
  if (!qword_27E3A2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B08);
  }

  return result;
}

unint64_t sub_23FF74530()
{
  result = qword_27E3A2B10;
  if (!qword_27E3A2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B10);
  }

  return result;
}

unint64_t sub_23FF74588()
{
  result = qword_27E3A2B18;
  if (!qword_27E3A2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B18);
  }

  return result;
}

unint64_t sub_23FF745E0()
{
  result = qword_27E3A2B20;
  if (!qword_27E3A2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B20);
  }

  return result;
}

unint64_t sub_23FF74638()
{
  result = qword_27E3A2B28;
  if (!qword_27E3A2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B28);
  }

  return result;
}

unint64_t sub_23FF74690()
{
  result = qword_27E3A2B30;
  if (!qword_27E3A2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B30);
  }

  return result;
}

unint64_t sub_23FF746E8()
{
  result = qword_27E3A2B38;
  if (!qword_27E3A2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B38);
  }

  return result;
}

unint64_t sub_23FF74740()
{
  result = qword_27E3A2B40;
  if (!qword_27E3A2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B40);
  }

  return result;
}

unint64_t sub_23FF74798()
{
  result = qword_27E3A2B48;
  if (!qword_27E3A2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B48);
  }

  return result;
}

unint64_t sub_23FF747F0()
{
  result = qword_27E3A2B50;
  if (!qword_27E3A2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B50);
  }

  return result;
}

unint64_t sub_23FF74848()
{
  result = qword_27E3A2B58;
  if (!qword_27E3A2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B58);
  }

  return result;
}

unint64_t sub_23FF748A0()
{
  result = qword_27E3A2B60;
  if (!qword_27E3A2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B60);
  }

  return result;
}

unint64_t sub_23FF748F8()
{
  result = qword_27E3A2B68;
  if (!qword_27E3A2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B68);
  }

  return result;
}

unint64_t sub_23FF74950()
{
  result = qword_27E3A2B70;
  if (!qword_27E3A2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B70);
  }

  return result;
}

unint64_t sub_23FF749A8()
{
  result = qword_27E3A2B78;
  if (!qword_27E3A2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B78);
  }

  return result;
}

unint64_t sub_23FF74A00()
{
  result = qword_27E3A2B80;
  if (!qword_27E3A2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B80);
  }

  return result;
}

unint64_t sub_23FF74A58()
{
  result = qword_27E3A2B88;
  if (!qword_27E3A2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B88);
  }

  return result;
}

unint64_t sub_23FF74AB0()
{
  result = qword_27E3A2B90;
  if (!qword_27E3A2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B90);
  }

  return result;
}

unint64_t sub_23FF74B08()
{
  result = qword_27E3A2B98;
  if (!qword_27E3A2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2B98);
  }

  return result;
}

unint64_t sub_23FF74B60()
{
  result = qword_27E3A2BA0;
  if (!qword_27E3A2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BA0);
  }

  return result;
}

unint64_t sub_23FF74BB8()
{
  result = qword_27E3A2BA8;
  if (!qword_27E3A2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BA8);
  }

  return result;
}

unint64_t sub_23FF74C10()
{
  result = qword_27E3A2BB0;
  if (!qword_27E3A2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BB0);
  }

  return result;
}

unint64_t sub_23FF74C68()
{
  result = qword_27E3A2BB8;
  if (!qword_27E3A2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BB8);
  }

  return result;
}

unint64_t sub_23FF74CC0()
{
  result = qword_27E3A2BC0;
  if (!qword_27E3A2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BC0);
  }

  return result;
}

unint64_t sub_23FF74D18()
{
  result = qword_27E3A2BC8;
  if (!qword_27E3A2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BC8);
  }

  return result;
}

unint64_t sub_23FF74D70()
{
  result = qword_27E3A2BD0;
  if (!qword_27E3A2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BD0);
  }

  return result;
}

unint64_t sub_23FF74DC8()
{
  result = qword_27E3A2BD8;
  if (!qword_27E3A2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BD8);
  }

  return result;
}

unint64_t sub_23FF74E20()
{
  result = qword_27E3A2BE0;
  if (!qword_27E3A2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BE0);
  }

  return result;
}

unint64_t sub_23FF74E78()
{
  result = qword_27E3A2BE8;
  if (!qword_27E3A2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BE8);
  }

  return result;
}

unint64_t sub_23FF74ED0()
{
  result = qword_27E3A2BF0;
  if (!qword_27E3A2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BF0);
  }

  return result;
}

unint64_t sub_23FF74F28()
{
  result = qword_27E3A2BF8;
  if (!qword_27E3A2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2BF8);
  }

  return result;
}

uint64_t sub_23FF74F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE00686374614274)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23FF750E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D7269666E6F63 && a2 == 0xEE006C6C6174736ELL || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB080 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_23FF75274()
{
  result = sub_23FF79C5C();
  off_27E3A2C00 = result;
  return result;
}

void sub_23FF75294(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 32));
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;

  v4 = *(a2 + 24);
  *(a2 + 24) = 0;

  os_unfair_lock_unlock((a2 + 32));
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_23FFD933C();
  [v5 postNotificationName:v6 object:0];
}

uint64_t sub_23FF75374(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_23FF753E4()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  v1 = off_27E3A2C00;
  *(v0 + 96) = off_27E3A2C00;
  os_unfair_lock_lock(v1 + 8);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0x2000000000000000;
    *(v0 + 64) = 1;
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_23FF75598;

    return (sub_23FF56B2C)(v0 + 72, v0 + 16, sub_23FFBF434, 0);
  }
}

uint64_t sub_23FF75598()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23FF75884;
  }

  else
  {
    v3 = sub_23FF756AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23FF756AC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 3)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    *(swift_task_alloc() + 16) = v1;
    sub_23FF79628(v1, v2, 3u);
    sub_23FF79628(v1, v2, 3u);
    sub_23FF79628(v1, v2, 3u);
    os_unfair_lock_lock((v5 + 32));
    sub_23FF79610((v5 + 16));
    v6 = (*(v0 + 96) + 32);
    if (v4)
    {

      os_unfair_lock_unlock(v6);
      return;
    }

    os_unfair_lock_unlock(v6);
    sub_23FF795B0(v1, v2, 3u);
    sub_23FF795B0(v1, v2, 3u);

    sub_23FF795B0(v1, v2, 3u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v2, v3);

    v1 = &unk_2851F2238;
  }

  v8 = *(v0 + 8);

  v8(v1);
}

uint64_t sub_23FF75884()
{
  v1 = *(v0 + 8);

  return v1(&unk_2851F2238);
}

uint64_t sub_23FF7590C()
{
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6F93C;

  return (sub_23FF56EC0)(v0 + 16, sub_23FF75A28, 0);
}

void *static AppDistributor.synchronousDistributorPriorityList.getter()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  v0 = off_27E3A2C00;
  os_unfair_lock_lock(off_27E3A2C00 + 8);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 8);
  if (!v1)
  {
    v9 = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0x2000000000000000;
    v13 = 1;
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v2 = sub_23FF7839C(&v9, sub_23FFBF448, 0, &v7);
    v3 = *(&v7 + 1);
    v1 = v7;
    v4 = v8;
    if (v8 == 3)
    {
      MEMORY[0x28223BE20](v2);
      sub_23FF79628(v1, v3, 3u);
      sub_23FF79628(v1, v3, 3u);
      sub_23FF79628(v1, v3, 3u);
      os_unfair_lock_lock(v0 + 8);
      sub_23FF79FA0(v0 + 2);
      os_unfair_lock_unlock(v0 + 8);
      sub_23FF795B0(v1, v3, 3u);
      sub_23FF795B0(v1, v3, 3u);
      sub_23FF795B0(v1, v3, 3u);
    }

    else
    {
      type metadata accessor for MarketplaceKitError();
      sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
      v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_23FF795B0(v1, v3, v4);

      return &unk_2851F2268;
    }
  }

  return v1;
}

uint64_t static AppDistributor.synchronousAllApprovedDevelopers.getter()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  v0 = off_27E3A2C00;
  os_unfair_lock_lock(off_27E3A2C00 + 8);
  v1 = *(v0 + 3);

  os_unfair_lock_unlock(v0 + 8);
  if (!v1)
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v11 = 0x2000000000000000;
    v12 = 1;
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v2 = sub_23FF7839C(v9, sub_23FFBF448, 0, &v7);
    v3 = *(&v7 + 1);
    v1 = v7;
    v4 = v8;
    if (v8)
    {
      type metadata accessor for MarketplaceKitError();
      sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
      v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_23FF795B0(v1, v3, v4);

      return MEMORY[0x277D84F90];
    }

    else
    {
      MEMORY[0x28223BE20](v2);
      sub_23FF79628(v1, v3, 0);
      sub_23FF79628(v1, v3, 0);
      sub_23FF79628(v1, v3, 0);
      os_unfair_lock_lock(v0 + 8);
      sub_23FF796D4(v0 + 16);
      os_unfair_lock_unlock(v0 + 8);
      sub_23FF795B0(v1, v3, 0);
      sub_23FF795B0(v1, v3, 0);
      sub_23FF795B0(v1, v3, 0);
    }
  }

  return v1;
}

uint64_t static AppDistributor.setShouldShowInstallConfirmations(for:shouldShow:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 65) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return MEMORY[0x2822009F8](sub_23FF75F34, 0, 0);
}

uint64_t sub_23FF75F34()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 65);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 32) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 4;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_23FF76058;

  return (sub_23FF56EC0)(v0 + 16, sub_23FFC4D64, 0);
}

uint64_t sub_23FF76058()
{
  v2 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_23FF79FB8;
  }

  else
  {
    v3 = sub_23FF76170;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF76170()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AppDistributor.synchronousSetShouldShowInstallConfirmations(for:shouldShow:)(uint64_t a1, uint64_t a2, char a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = a3 & 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 4;
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(&v5, sub_23FFC4D78, 0);
}

uint64_t static AppDistributor.synchronousShouldShowInstallConfirmations(for:)(uint64_t a1, uint64_t a2)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x3000000000000000;
  v15 = 0;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(&v10, sub_23FFBF448, 0, &v8);
  v4 = *(&v8 + 1);
  v3 = v8;
  v5 = v9;
  if (v9 == 5)
  {
    sub_23FF795B0(v8, *(&v8 + 1), 5u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v3, v4, v5);

    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

uint64_t static AppDistributor.shouldShowInstallConfirmations(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23FF76448, 0, 0);
}

uint64_t sub_23FF76448()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x3000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF76570;

  return (sub_23FF56B2C)(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF76570()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FF767BC;
  }

  else
  {
    v3 = sub_23FF76684;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF76684()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  if (v3 == 5)
  {
    sub_23FF795B0(*(v0 + 72), *(v0 + 80), 5u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v2, v3);

    LOBYTE(v1) = 1;
  }

  v6 = *(v0 + 8);

  return v6(v1 & 1);
}

uint64_t sub_23FF767BC()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_23FF76848()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 2;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23FF76998;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF76998()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_23FF76BC8;
  }

  else
  {
    v3 = sub_23FF76AAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF76AAC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 6)
  {
    sub_23FF795B0(*(v0 + 72), *(v0 + 80), 6u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v2, v1, v3);

    LOBYTE(v2) = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2 & 1);
}

uint64_t sub_23FF76BC8()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t AvailableAppMetadataRequest.distributorID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AvailableAppMetadataRequest.init(distributorID:ids:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_23FF76C70()
{
  if (*v0)
  {
    result = 7562345;
  }

  else
  {
    result = 0x7562697274736964;
  }

  *v0;
  return result;
}

uint64_t sub_23FF76CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF76D94(uint64_t a1)
{
  v2 = sub_23FF79720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF76DD0(uint64_t a1)
{
  v2 = sub_23FF79720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailableAppMetadataRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C08, &qword_23FFDD078);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF79720();
  sub_23FFD9ACC();
  v17 = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
    sub_23FF79774(&qword_27E3A2C20);
    sub_23FFD991C();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t AvailableAppMetadataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C28, &qword_23FFDD088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF79720();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
  v18 = 1;
  sub_23FF79774(&qword_27E3A2C30);
  sub_23FFD983C();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static AppDistributor.availableApp(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23FF77274, 0, 0);
}

uint64_t sub_23FF77274()
{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C38, &qword_23FFDD098);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_23FFDD040;
  *(v3 + 32) = v2;
  v4 = qword_27E3A2160;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23FF773C0;
  v7 = v0[4];
  v6 = v0[5];

  return sub_23FF572EC(v7, v6, v3, sub_23FF77894, 0);
}

uint64_t sub_23FF773C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  v6 = *(v3 + 48);
  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = sub_23FF77534;
  }

  else
  {

    v8 = sub_23FF7755C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23FF77534()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  *(*(v0 + 16) + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_23FF7755C()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[2];
    if (v1[2])
    {
      v3 = v1[4];
      v4 = v1[5];

      v5 = 0;
      *v2 = v3;
      v2[1] = v4;
      goto LABEL_7;
    }

    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    v6 = v0[2];
    *v6 = 0;
    v6[1] = 0;
  }

  v5 = 1;
LABEL_7:
  *(v0[2] + 16) = v5;
  v7 = v0[1];

  return v7();
}

uint64_t static AppDistributor.availableApps(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23FF77628, 0, 0);
}

uint64_t sub_23FF77628()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FF7773C;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return sub_23FF572EC(v6, v5, v7, sub_23FF77894, 0);
}

uint64_t sub_23FF7773C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  v7 = *(v4 + 32);
  v8 = *(v4 + 16);
  if (v1)
  {

    a1 = 0;
  }

  v9 = *(v6 + 8);

  return v9(a1);
}

uint64_t static AppDistributor.requestProductPage(_:itemID:versionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF77940, 0, 0);
}

uint64_t sub_23FF77940()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 48);
  *(v1 + 16) = v2 & 1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_23FF77A20;
  v6 = *(v0 + 64);

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(v0 + 16, v6);
}

uint64_t sub_23FF77A20()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23FF79F9C;
  }

  else
  {
    sub_23FF7983C(*(v2 + 16), *(v2 + 24));
    v4 = sub_23FF79FBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t static AppDistributor.requestSearchPage(_:searchString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF77BD4, 0, 0);
}

uint64_t sub_23FF77BD4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23FF77CB8;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_23FF77CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23FF77E48;
  }

  else
  {
    sub_23FF7983C(*(v2 + 16), *(v2 + 24));
    v4 = sub_23FF77DD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23FF77DD8()
{
  sub_23FF797E0(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF77E48()
{
  sub_23FF797E0(v0[8]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t static AppDistributor.requestAuthorization(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF77F4C, 0, 0);
}

uint64_t sub_23FF77F4C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23FF77A20;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_23FF7804C()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6E6E4;

  return sub_23FF57684(1, sub_23FF78140, 0);
}

void sub_23FF78140(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23FF6839C;
  v7[3] = &block_descriptor_36;
  v6 = _Block_copy(v7);

  [a1 handleEmergencyResetRequestWithReply_];
  _Block_release(v6);
}

uint64_t static AppDistributor.addAllowedDeveloper(_:name:supportURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  v6 = qword_27E3A2160;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(&v8, sub_23FF782D8, 0);
}

uint64_t static AppDistributor.addConditionallyAllowedDeveloper(_:)(uint64_t a1, uint64_t a2)
{
  *&v3[0] = a1;
  *(&v3[0] + 1) = a2;
  memset(&v3[1], 0, 32);
  v4 = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  return sub_23FF788A8(v3, sub_23FF78388, 0);
}

uint64_t sub_23FF7839C@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t)@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v41 = a3;
  v42 = a2;
  v7 = *v4;
  v39 = a4;
  v40 = v7;
  v8 = type metadata accessor for MarketplaceKitError();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2638, &qword_23FFDB0E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v16 = a1[1];
  v45 = *a1;
  v46 = v16;
  v47 = a1[2];
  v48 = *(a1 + 48);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C80, &qword_23FFDD2D0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_23FFD90CC();
  v21 = v4[2];
  v22 = sub_23FFD90FC();
  aBlock[4] = sub_23FF79BF0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_48;
  v23 = _Block_copy(aBlock);

  v24 = [v22 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v23);

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v44, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (!swift_dynamicCast())
  {
    v29 = sub_23FFD909C();
    sub_23FF79A54(&qword_27E3A2C60, MEMORY[0x277CD4A58]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CD4A50], v29);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v25 = v49;
  sub_23FF63CF0();
  sub_23FF63D44();
  v26 = sub_23FFD90EC();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    swift_unknownObjectRelease();
  }

  v31 = v27;
  v38[1] = v8;
  v32 = v26;
  v33 = swift_allocObject();
  v34 = v40;
  *(v33 + 16) = v20;
  *(v33 + 24) = v34;

  v40 = v25;
  v42(v25, v32, v31, sub_23FF79C1C, v33);

  sub_23FFD90AC();
  v42 = v32;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF51974(v15, v11);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_23FF51974(v11, v35);
    swift_unknownObjectRelease();
    sub_23FF62F84(v42, v31);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_23FF62F84(v42, v31);

  result = __swift_destroy_boxed_opaque_existential_1(v44);
  v36 = v15[16];
  v37 = v39;
  *v39 = *v15;
  *(v37 + 16) = v36;
  return result;
}

uint64_t sub_23FF788A8(__int128 *a1, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v35 = *v3;
  v6 = type metadata accessor for MarketplaceKitError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2540, &qword_23FFDB058);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[1];
  v40 = *a1;
  v41 = v14;
  v42 = a1[2];
  v43 = *(a1 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C78, &unk_23FFDD2C0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_23FFD90CC();
  v19 = v3[2];
  v20 = sub_23FFD90FC();
  aBlock[4] = sub_23FF79B84;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_42_0;
  v21 = _Block_copy(aBlock);

  v22 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v21);

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v39, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (!swift_dynamicCast())
  {
    v27 = sub_23FFD909C();
    sub_23FF79A54(&qword_27E3A2C60, MEMORY[0x277CD4A58]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277CD4A50], v27);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v23 = v44;
  sub_23FF63C30();
  sub_23FF63C84();
  v24 = sub_23FFD90EC();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    swift_unknownObjectRelease();
  }

  v29 = v25;
  v34 = v6;
  v30 = v24;
  v31 = swift_allocObject();
  v32 = v35;
  *(v31 + 16) = v18;
  *(v31 + 24) = v32;

  v35 = v23;
  v37(v23, v30, v29, sub_23FF79BB0, v31);

  sub_23FFD90AC();
  v37 = v30;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF51974(v13, v9);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_23FF51974(v9, v33);
    swift_unknownObjectRelease();
    sub_23FF62F84(v37, v29);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_23FF62F84(v37, v29);

  __swift_destroy_boxed_opaque_existential_1(v39);
  return *v13;
}

uint64_t sub_23FF78D9C(__int128 *a1, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v35 = *v3;
  v6 = type metadata accessor for MarketplaceKitError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25F0, &qword_23FFDB0C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[1];
  v40 = *a1;
  v41 = v14;
  v42 = a1[2];
  v43 = *(a1 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C58, &qword_23FFDD2A8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_23FFD90CC();
  v19 = v3[2];
  v20 = sub_23FFD90FC();
  aBlock[4] = sub_23FF79A10;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_5;
  v21 = _Block_copy(aBlock);

  v22 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v21);

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v39, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (!swift_dynamicCast())
  {
    v27 = sub_23FFD909C();
    sub_23FF79A54(&qword_27E3A2C60, MEMORY[0x277CD4A58]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277CD4A50], v27);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v23 = v44;
  sub_23FF79A9C();
  sub_23FF79AF0();
  v24 = sub_23FFD90EC();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    swift_unknownObjectRelease();
  }

  v29 = v25;
  v34 = v6;
  v30 = v24;
  v31 = swift_allocObject();
  v32 = v35;
  *(v31 + 16) = v18;
  *(v31 + 24) = v32;

  v35 = v23;
  v37(v23, v30, v29, sub_23FF79B44, v31);

  sub_23FFD90AC();
  v37 = v30;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF51974(v13, v9);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_23FF51974(v9, v33);
    swift_unknownObjectRelease();
    sub_23FF62F84(v37, v29);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_23FF62F84(v37, v29);

  __swift_destroy_boxed_opaque_existential_1(v39);
  return *v13;
}

uint64_t sub_23FF79290(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = sub_23FFD929C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD923C();
  v16 = a1;
  v17 = sub_23FFD927C();
  v18 = sub_23FFD955C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v4;
    v22 = v21;
    *v20 = 138543362;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_23FF4C000, v17, v18, "Error fetching synchronous remote object proxy: %{public}@", v20, 0xCu);
    sub_23FF64248(v22, &qword_27E3A24F0, &unk_23FFDD2B0);
    v25 = v22;
    v4 = v30;
    MEMORY[0x245CB48E0](v25, -1, -1);
    v26 = v20;
    v5 = v29;
    MEMORY[0x245CB48E0](v26, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  type metadata accessor for MarketplaceKitError();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_23FFD90BC();
  return sub_23FF64248(v10, v5, v4);
}

uint64_t sub_23FF794F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v17 - v14;
  a7(a1, a2);
  sub_23FFD90BC();
  return sub_23FF64248(v15, a5, a6);
}

uint64_t sub_23FF795B0(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_23FF62F84(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_23FF79628(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_23FF71730(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_23FF79688(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_23FF796D4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 8);

  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_23FF79720()
{
  result = qword_27E3A2C10;
  if (!qword_27E3A2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2C10);
  }

  return result;
}

uint64_t sub_23FF79774(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2C18, &qword_23FFDD080);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF797E0(uint64_t a1)
{
  v2 = type metadata accessor for LaunchAngelXPCRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF7983C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_23FF79860(uint64_t a1, int a2)
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

uint64_t sub_23FF798A8(uint64_t result, int a2, int a3)
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

unint64_t sub_23FF7990C()
{
  result = qword_27E3A2C40;
  if (!qword_27E3A2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2C40);
  }

  return result;
}

unint64_t sub_23FF79964()
{
  result = qword_27E3A2C48;
  if (!qword_27E3A2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2C48);
  }

  return result;
}

unint64_t sub_23FF799BC()
{
  result = qword_27E3A2C50;
  if (!qword_27E3A2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2C50);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF79A54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23FF79A9C()
{
  result = qword_27E3A2C68;
  if (!qword_27E3A2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2C68);
  }

  return result;
}

unint64_t sub_23FF79AF0()
{
  result = qword_27E3A2C70;
  if (!qword_27E3A2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2C70);
  }

  return result;
}

uint64_t sub_23FF79C5C()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = sub_23FFD92CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C88, &qword_23FFDD2D8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  out_token = -1;
  sub_23FF79E5C();
  (*(v1 + 104))(v4, *MEMORY[0x277D851C8], v0);

  v6 = sub_23FFD95AC();
  (*(v1 + 8))(v4, v0);
  aBlock[4] = sub_23FF79EA8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF75374;
  aBlock[3] = &block_descriptor_57;
  v7 = _Block_copy(aBlock);

  notify_register_dispatch("com.apple.managedappdistributiond.priorityOrAllowedDevelopersChanged", &out_token, v6, v7);
  _Block_release(v7);

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_23FF79E5C()
{
  result = qword_2814FD798;
  if (!qword_2814FD798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FD798);
  }

  return result;
}

uint64_t sub_23FF79EC0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_23FF79F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23FF7A030()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_23FF7A0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF8015C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF7A124(uint64_t a1)
{
  v2 = sub_23FF7B5F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A160(uint64_t a1)
{
  v2 = sub_23FF7B5F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A19C()
{
  if (*v0)
  {
    result = 0x7562697274736964;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_23FF7A1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF7A2C8(uint64_t a1)
{
  v2 = sub_23FF7B908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A304(uint64_t a1)
{
  v2 = sub_23FF7B908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A340()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x7562697274736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_23FF7A3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF803A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF7A3D0(uint64_t a1)
{
  v2 = sub_23FF7B9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A40C(uint64_t a1)
{
  v2 = sub_23FF7B9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A448()
{
  if (*v0)
  {
    result = 0x7562697274736964;
  }

  else
  {
    result = 0x7972657571;
  }

  *v0;
  return result;
}

uint64_t sub_23FF7A48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF7A56C(uint64_t a1)
{
  v2 = sub_23FF7B95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A5A8(uint64_t a1)
{
  v2 = sub_23FF7B95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A5FC(uint64_t a1)
{
  v2 = sub_23FF7B854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A638(uint64_t a1)
{
  v2 = sub_23FF7B854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A674(uint64_t a1)
{
  v2 = sub_23FF7B764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A6B0(uint64_t a1)
{
  v2 = sub_23FF7B764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A6EC(uint64_t a1)
{
  v2 = sub_23FF7B800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A728(uint64_t a1)
{
  v2 = sub_23FF7B800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7A7EC(uint64_t a1)
{
  v2 = sub_23FF7B710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A828(uint64_t a1)
{
  v2 = sub_23FF7B710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCRequest.RequestType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C90, &qword_23FFDD360);
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v2);
  v98 = &v79 - v4;
  v96 = type metadata accessor for ConfirmationSheetContext(0);
  v5 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C98, &qword_23FFDD368);
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v93 = &v79 - v9;
  v91 = type metadata accessor for LicenseResolutionContext();
  v10 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CA0, &qword_23FFDD370);
  v89 = *(v90 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - v13;
  v86 = type metadata accessor for OAuthAuthorizationContext();
  v14 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CA8, &qword_23FFDD378);
  v84 = *(v85 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v79 - v17;
  v80 = type metadata accessor for InstallSheetContext(0);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v82 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CB0, &qword_23FFDD380);
  v104 = *(v20 - 8);
  v105 = v20;
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20);
  v103 = &v79 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CB8, &qword_23FFDD388);
  v81 = *(v102 - 8);
  v23 = *(v81 + 64);
  MEMORY[0x28223BE20](v102);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CC0, &qword_23FFDD390);
  v101 = *(v26 - 8);
  v27 = *(v101 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  v30 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CC8, &qword_23FFDD398);
  v108 = *(v110 - 8);
  v34 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v36 = &v79 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7B5F0();
  v109 = v36;
  sub_23FFD9ACC();
  sub_23FF7B644(v106, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v45 = v29;
    v46 = v101;
    v47 = v102;
    v48 = v103;
    v49 = v104;
    v50 = v105;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v51 = *v33;
        v52 = v33[1];
        v54 = v33[2];
        v53 = v33[3];
        v117 = 1;
        sub_23FF7B95C();
        v55 = v25;
        v57 = v109;
        v56 = v110;
        sub_23FFD988C();
        v116 = 0;
        v58 = v107;
        sub_23FFD98EC();

        if (v58)
        {

          (*(v81 + 8))(v55, v47);
          return (*(v108 + 8))(v57, v56);
        }

        else
        {
          v115 = 1;
          sub_23FFD98EC();
          v78 = v81;

          (*(v78 + 8))(v55, v47);
          return (*(v108 + 8))(v57, v110);
        }
      }

      v70 = *v33;
      v69 = v33[1];
      v71 = v33[3];
      v106 = v33[2];
      v120 = 2;
      sub_23FF7B908();
      v72 = v109;
      v64 = v110;
      sub_23FFD988C();
      v119 = 0;
      v73 = v107;
      sub_23FFD98EC();

      if (!v73)
      {
        v118 = 1;
        sub_23FFD98EC();
      }

      (*(v49 + 8))(v48, v50);
      v67 = *(v108 + 8);
      v68 = v72;
    }

    else
    {
      v62 = *v33;
      v106 = v33[1];
      LODWORD(v105) = *(v33 + 16);
      v63 = v33[4];
      v104 = v33[3];
      v114 = 0;
      sub_23FF7B9B0();
      v65 = v109;
      v64 = v110;
      sub_23FFD988C();
      v113 = 0;
      v66 = v107;
      sub_23FFD993C();
      if (v66)
      {

        (*(v46 + 8))(v45, v26);
        v67 = *(v108 + 8);
        v68 = v65;
      }

      else
      {
        v112 = 1;
        sub_23FFD98DC();
        v111 = 2;
        sub_23FFD98EC();

        (*(v46 + 8))(v45, v26);
        v68 = v109;
        v67 = *(v108 + 8);
      }
    }

    return v67(v68, v64);
  }

  if (EnumCaseMultiPayload > 4)
  {
    v39 = v109;
    if (EnumCaseMultiPayload == 5)
    {
      v40 = v92;
      sub_23FF7B6A8(v33, v92, type metadata accessor for LicenseResolutionContext);
      v123 = 5;
      sub_23FF7B764();
      v60 = v93;
      v42 = v110;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2CF0, type metadata accessor for LicenseResolutionContext);
      v61 = v95;
      sub_23FFD991C();
      (*(v94 + 8))(v60, v61);
      v44 = type metadata accessor for LicenseResolutionContext;
    }

    else
    {
      v40 = v97;
      sub_23FF7B6A8(v33, v97, type metadata accessor for ConfirmationSheetContext);
      v124 = 6;
      sub_23FF7B710();
      v76 = v98;
      v42 = v110;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2CE0, type metadata accessor for ConfirmationSheetContext);
      v77 = v100;
      sub_23FFD991C();
      (*(v99 + 8))(v76, v77);
      v44 = type metadata accessor for ConfirmationSheetContext;
    }
  }

  else
  {
    v39 = v109;
    if (EnumCaseMultiPayload == 3)
    {
      v40 = v82;
      sub_23FF7B6A8(v33, v82, type metadata accessor for InstallSheetContext);
      v121 = 3;
      sub_23FF7B854();
      v41 = v83;
      v42 = v110;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2D10, type metadata accessor for InstallSheetContext);
      v43 = v85;
      sub_23FFD991C();
      (*(v84 + 8))(v41, v43);
      v44 = type metadata accessor for InstallSheetContext;
    }

    else
    {
      v40 = v87;
      sub_23FF7B6A8(v33, v87, type metadata accessor for OAuthAuthorizationContext);
      v122 = 4;
      sub_23FF7B800();
      v74 = v88;
      v42 = v110;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2D00, type metadata accessor for OAuthAuthorizationContext);
      v75 = v90;
      sub_23FFD991C();
      (*(v89 + 8))(v74, v75);
      v44 = type metadata accessor for OAuthAuthorizationContext;
    }
  }

  sub_23FF7B8A8(v40, v44);
  return (*(v108 + 8))(v39, v42);
}

unint64_t sub_23FF7B5F0()
{
  result = qword_27E3A2CD0;
  if (!qword_27E3A2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2CD0);
  }

  return result;
}

uint64_t sub_23FF7B644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF7B6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FF7B710()
{
  result = qword_27E3A2CD8;
  if (!qword_27E3A2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2CD8);
  }

  return result;
}

unint64_t sub_23FF7B764()
{
  result = qword_27E3A2CE8;
  if (!qword_27E3A2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2CE8);
  }

  return result;
}

uint64_t sub_23FF7B7B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23FF7B800()
{
  result = qword_27E3A2CF8;
  if (!qword_27E3A2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2CF8);
  }

  return result;
}

unint64_t sub_23FF7B854()
{
  result = qword_27E3A2D08;
  if (!qword_27E3A2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2D08);
  }

  return result;
}

uint64_t sub_23FF7B8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23FF7B908()
{
  result = qword_27E3A2D18;
  if (!qword_27E3A2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2D18);
  }

  return result;
}

unint64_t sub_23FF7B95C()
{
  result = qword_27E3A2D20;
  if (!qword_27E3A2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2D20);
  }

  return result;
}

unint64_t sub_23FF7B9B0()
{
  result = qword_27E3A2D28;
  if (!qword_27E3A2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2D28);
  }

  return result;
}

uint64_t LaunchAngelXPCRequest.RequestType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D30, &qword_23FFDD3A0);
  v4 = *(v3 - 8);
  v151 = v3;
  v152 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v163 = &v133 - v6;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D38, &qword_23FFDD3A8);
  v149 = *(v150 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v156 = &v133 - v8;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D40, &qword_23FFDD3B0);
  v147 = *(v148 - 8);
  v9 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v162 = &v133 - v10;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D48, &qword_23FFDD3B8);
  v145 = *(v146 - 8);
  v11 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v155 = &v133 - v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D50, &qword_23FFDD3C0);
  v143 = *(v144 - 8);
  v13 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v154 = &v133 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D58, &qword_23FFDD3C8);
  v140 = *(v141 - 8);
  v15 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v161 = &v133 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D60, &qword_23FFDD3D0);
  v153 = *(v142 - 8);
  v17 = *(v153 + 64);
  MEMORY[0x28223BE20](v142);
  v159 = &v133 - v18;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D68, &unk_23FFDD3D8);
  v158 = *(v165 - 8);
  v19 = *(v158 + 64);
  MEMORY[0x28223BE20](v165);
  v21 = &v133 - v20;
  v157 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v22 = *(*(v157 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v157);
  v139 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v138 = &v133 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v137 = &v133 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v133 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v133 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v133 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v133 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v133 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v166 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_23FF7B5F0();
  v160 = v21;
  v45 = v167;
  sub_23FFD9AAC();
  v167 = v45;
  if (v45)
  {
    goto LABEL_12;
  }

  v134 = v37;
  v135 = v34;
  v133 = v40;
  v136 = v31;
  v47 = v159;
  v46 = v160;
  v48 = v161;
  v49 = v162;
  v50 = v163;
  v51 = v164;
  v52 = sub_23FFD986C();
  v53 = (2 * *(v52 + 16)) | 1;
  v168 = v52;
  v169 = v52 + 32;
  v170 = 0;
  v171 = v53;
  v54 = sub_23FF701F0();
  if (v54 == 7 || v170 != v171 >> 1)
  {
    v63 = sub_23FFD970C();
    v64 = swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
    *v66 = v157;
    v68 = v46;
    v69 = v165;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v63 - 8) + 104))(v66, *MEMORY[0x277D84160], v63);
    v167 = v64;
    swift_willThrow();
    (*(v158 + 8))(v68, v69);
  }

  else
  {
    if (v54 > 2u)
    {
      v55 = v42;
      if (v54 <= 4u)
      {
        v161 = v42;
        v56 = v165;
        v57 = v158;
        if (v54 == 3)
        {
          v172 = 3;
          sub_23FF7B854();
          v58 = v155;
          v59 = v167;
          sub_23FFD979C();
          v167 = v59;
          if (v59)
          {
LABEL_30:
            (*(v57 + 8))(v46, v56);
            goto LABEL_11;
          }

          type metadata accessor for InstallSheetContext(0);
          sub_23FF7B7B8(&qword_27E3A2D88, type metadata accessor for InstallSheetContext);
          v60 = v136;
          v61 = v146;
          v62 = v167;
          sub_23FFD983C();
          v167 = v62;
          if (v62)
          {
            (*(v145 + 8))(v58, v61);
            goto LABEL_30;
          }

          (*(v145 + 8))(v58, v61);
          (*(v57 + 8))(v46, v56);
          swift_unknownObjectRelease();
        }

        else
        {
          v172 = 4;
          sub_23FF7B800();
          v94 = v167;
          sub_23FFD979C();
          v167 = v94;
          if (v94)
          {
            goto LABEL_30;
          }

          type metadata accessor for OAuthAuthorizationContext();
          sub_23FF7B7B8(&qword_27E3A2D80, type metadata accessor for OAuthAuthorizationContext);
          v60 = v137;
          v95 = v49;
          v96 = v148;
          v97 = v167;
          sub_23FFD983C();
          v167 = v97;
          if (v97)
          {
            (*(v147 + 8))(v95, v96);
            goto LABEL_30;
          }

          (*(v147 + 8))(v95, v96);
          (*(v57 + 8))(v46, v56);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v120 = v166;
        v77 = v51;
        goto LABEL_42;
      }

      v77 = v51;
      v78 = v165;
      v79 = v158;
      if (v54 == 5)
      {
        v172 = 5;
        sub_23FF7B764();
        v80 = v167;
        sub_23FFD979C();
        v167 = v80;
        if (!v80)
        {
          type metadata accessor for LicenseResolutionContext();
          sub_23FF7B7B8(&qword_27E3A2D78, type metadata accessor for LicenseResolutionContext);
          v81 = v138;
          v82 = v150;
          v83 = v156;
          v84 = v167;
          sub_23FFD983C();
          v167 = v84;
          if (v84)
          {
            (*(v149 + 8))(v83, v82);
            goto LABEL_34;
          }

          (*(v149 + 8))(v83, v82);
          (*(v79 + 8))(v46, v78);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v60 = v81;
          v120 = v166;
LABEL_43:
          sub_23FF7B6A8(v60, v55, type metadata accessor for LaunchAngelXPCRequest.RequestType);
          sub_23FF7B6A8(v55, v77, type metadata accessor for LaunchAngelXPCRequest.RequestType);
          v70 = v120;
          return __swift_destroy_boxed_opaque_existential_1(v70);
        }
      }

      else
      {
        v161 = v55;
        v172 = 6;
        sub_23FF7B710();
        v98 = v50;
        v99 = v167;
        sub_23FFD979C();
        v167 = v99;
        if (!v99)
        {
          type metadata accessor for ConfirmationSheetContext(0);
          sub_23FF7B7B8(&qword_27E3A2D70, type metadata accessor for ConfirmationSheetContext);
          v100 = v139;
          v101 = v151;
          v102 = v167;
          sub_23FFD983C();
          v167 = v102;
          if (!v102)
          {
            (*(v152 + 8))(v98, v101);
            (*(v79 + 8))(v46, v78);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v60 = v100;
            v120 = v166;
LABEL_42:
            v55 = v161;
            goto LABEL_43;
          }

          (*(v152 + 8))(v98, v101);
        }
      }

LABEL_34:
      (*(v79 + 8))(v46, v78);
      goto LABEL_11;
    }

    if (!v54)
    {
      v172 = 0;
      sub_23FF7B9B0();
      v85 = v47;
      v86 = v165;
      v87 = v167;
      sub_23FFD979C();
      v167 = v87;
      if (v87)
      {
        (*(v158 + 8))(v46, v86);
        goto LABEL_11;
      }

      v172 = 0;
      v88 = v142;
      v89 = sub_23FFD985C();
      v167 = 0;
      v105 = v89;
      v172 = 1;
      v106 = sub_23FFD97FC();
      v167 = 0;
      LODWORD(v163) = v113;
      v114 = v106;
      v172 = 2;
      v115 = sub_23FFD980C();
      v167 = 0;
      v127 = v115;
      v128 = v88;
      v130 = v129;
      (*(v153 + 8))(v85, v128);
      v131 = v86;
      v55 = v42;
      (*(v158 + 8))(v46, v131);
      swift_unknownObjectRelease();
      v132 = v133;
      *v133 = v105;
      v132[1] = v114;
      *(v132 + 16) = v163 & 1;
      v132[3] = v127;
      v132[4] = v130;
      swift_storeEnumTagMultiPayload();
      v60 = v132;
      v120 = v166;
      v77 = v51;
      goto LABEL_43;
    }

    if (v54 == 1)
    {
      v172 = 1;
      sub_23FF7B95C();
      v72 = v165;
      v73 = v167;
      sub_23FFD979C();
      v74 = v158;
      v167 = v73;
      if (!v73)
      {
        v172 = 0;
        v75 = v141;
        v76 = sub_23FFD980C();
        v167 = 0;
        v162 = v76;
        v163 = v107;
        v172 = 1;
        v108 = sub_23FFD980C();
        v109 = (v74 + 8);
        v167 = 0;
        v116 = *(v140 + 8);
        v159 = v108;
        v118 = v117;
        v116(v48, v75);
        (*v109)(v46, v72);
        swift_unknownObjectRelease();
        v119 = v163;
        v60 = v134;
        *v134 = v162;
        v60[1] = v119;
        v60[2] = v159;
        v60[3] = v118;
        swift_storeEnumTagMultiPayload();
        v120 = v166;
LABEL_44:
        v77 = v51;
        v55 = v42;
        goto LABEL_43;
      }

      (*(v158 + 8))(v46, v72);
    }

    else
    {
      v172 = 2;
      sub_23FF7B908();
      v90 = v154;
      v91 = v165;
      v92 = v167;
      sub_23FFD979C();
      v93 = v158;
      v167 = v92;
      if (!v92)
      {
        v172 = 0;
        v103 = v144;
        v104 = sub_23FFD980C();
        v167 = 0;
        v163 = v104;
        v111 = v110;
        v172 = 1;
        v112 = sub_23FFD980C();
        v167 = 0;
        v121 = *(v143 + 8);
        v162 = v112;
        v122 = v90;
        v124 = v123;
        v121(v122, v103);
        (*(v93 + 8))(v46, v165);
        swift_unknownObjectRelease();
        v125 = v162;
        v126 = v135;
        *v135 = v163;
        v126[1] = v111;
        v126[2] = v125;
        v126[3] = v124;
        swift_storeEnumTagMultiPayload();
        v120 = v166;
        v60 = v126;
        goto LABEL_44;
      }

      (*(v158 + 8))(v46, v91);
    }
  }

LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v70 = v166;
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_23FF7CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7CC84(uint64_t a1)
{
  v2 = sub_23FF7CE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7CCC0(uint64_t a1)
{
  v2 = sub_23FF7CE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D90, &qword_23FFDD3E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7CE74();
  sub_23FFD9ACC();
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  sub_23FF7B7B8(&qword_27E3A2DA0, type metadata accessor for LaunchAngelXPCRequest.RequestType);
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_23FF7CE74()
{
  result = qword_27E3A2D98;
  if (!qword_27E3A2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2D98);
  }

  return result;
}

uint64_t LaunchAngelXPCRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DA8, &qword_23FFDD3F0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LaunchAngelXPCRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7CE74();
  sub_23FFD9AAC();
  if (!v2)
  {
    v16 = v19;
    sub_23FF7B7B8(&qword_27E3A2DB0, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    v17 = v21;
    sub_23FFD983C();
    (*(v20 + 8))(v10, v7);
    sub_23FF7B6A8(v17, v14, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    sub_23FF7B6A8(v14, v16, type metadata accessor for LaunchAngelXPCRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF7D174(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D90, &qword_23FFDD3E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7CE74();
  sub_23FFD9ACC();
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  sub_23FF7B7B8(&qword_27E3A2DA0, type metadata accessor for LaunchAngelXPCRequest.RequestType);
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_23FF7D2EC()
{
  v1 = *v0;
  v2 = 0x6465726F6E6769;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_23FF7D370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF804CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF7D398(uint64_t a1)
{
  v2 = sub_23FF7DC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D3D4(uint64_t a1)
{
  v2 = sub_23FF7DC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D42C(uint64_t a1)
{
  v2 = sub_23FF7DCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D468(uint64_t a1)
{
  v2 = sub_23FF7DCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D4A4(uint64_t a1)
{
  v2 = sub_23FF7DDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D4E0(uint64_t a1)
{
  v2 = sub_23FF7DDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7D5AC(uint64_t a1)
{
  v2 = sub_23FF7DD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D5E8(uint64_t a1)
{
  v2 = sub_23FF7DD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7D6C4(uint64_t a1)
{
  v2 = sub_23FF7DD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D700(uint64_t a1)
{
  v2 = sub_23FF7DD20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DB8, &qword_23FFDD3F8);
  v34 = *(v36 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v32 = &v28 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DC0, &qword_23FFDD400);
  v33 = *(v35 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v31 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DC8, &qword_23FFDD408);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DD0, &qword_23FFDD410);
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DD8, &qword_23FFDD418);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v37 = *v2;
  v20 = *(v2 + 8);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7DC78();
  sub_23FFD9ACC();
  if (v20 <= 1)
  {
    if (!v20)
    {
      v42 = 1;
      sub_23FF7DD74();
      v22 = v39;
      sub_23FFD988C();
      sub_23FFD98FC();
      (*(v30 + 8))(v11, v8);
      return (*(v38 + 8))(v19, v22);
    }

    v43 = 2;
    sub_23FF7DD20();
    v23 = v31;
    v22 = v39;
    sub_23FFD988C();
    v40 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
    sub_23FF7E5E4(&qword_27E3A2E00);
    v24 = v35;
    sub_23FFD991C();
    v25 = v33;
LABEL_7:
    (*(v25 + 8))(v23, v24);
    return (*(v38 + 8))(v19, v22);
  }

  if (v20 == 2)
  {
    v44 = 3;
    sub_23FF7DCCC();
    v23 = v32;
    v22 = v39;
    sub_23FFD988C();
    v24 = v36;
    sub_23FFD98FC();
    v25 = v34;
    goto LABEL_7;
  }

  v41 = 0;
  sub_23FF7DDC8();
  v27 = v39;
  sub_23FFD988C();
  (*(v29 + 8))(v15, v12);
  return (*(v38 + 8))(v19, v27);
}

unint64_t sub_23FF7DC78()
{
  result = qword_27E3A2DE0;
  if (!qword_27E3A2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2DE0);
  }

  return result;
}

unint64_t sub_23FF7DCCC()
{
  result = qword_27E3A2DE8;
  if (!qword_27E3A2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2DE8);
  }

  return result;
}

unint64_t sub_23FF7DD20()
{
  result = qword_27E3A2DF0;
  if (!qword_27E3A2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2DF0);
  }

  return result;
}

unint64_t sub_23FF7DD74()
{
  result = qword_27E3A2E08;
  if (!qword_27E3A2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2E08);
  }

  return result;
}

unint64_t sub_23FF7DDC8()
{
  result = qword_27E3A2E10;
  if (!qword_27E3A2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2E10);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.ResponseType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E18, &qword_23FFDD428);
  v54 = *(v58 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E20, &qword_23FFDD430);
  v55 = *(v52 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E28, &qword_23FFDD438);
  v53 = *(v51 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E30, &qword_23FFDD440);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E38, &qword_23FFDD448);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23FF7DC78();
  v21 = v60;
  sub_23FFD9AAC();
  if (!v21)
  {
    v22 = v13;
    v48 = v10;
    v49 = 0;
    v23 = v56;
    v24 = v57;
    v60 = v15;
    v26 = v58;
    v25 = v59;
    v27 = sub_23FFD986C();
    v28 = (2 * *(v27 + 16)) | 1;
    v62 = v27;
    v63 = v27 + 32;
    v64 = 0;
    v65 = v28;
    v29 = sub_23FF70224();
    if (v29 == 4 || v64 != v65 >> 1)
    {
      v33 = sub_23FFD970C();
      swift_allocError();
      v35 = v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
      *v35 = &type metadata for LaunchAngelXPCResponse.ResponseType;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
    }

    else
    {
      if (v29 > 1u)
      {
        if (v29 != 2)
        {
          LOBYTE(v66) = 3;
          sub_23FF7DCCC();
          v45 = v49;
          sub_23FFD979C();
          v46 = v60;
          if (!v45)
          {
            v47 = sub_23FFD981C();
            (*(v54 + 8))(v24, v26);
            (*(v46 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v31 = v47 & 1;
            v32 = 2;
            v25 = v59;
            goto LABEL_21;
          }

          (*(v60 + 8))(v18, v14);
          goto LABEL_11;
        }

        LOBYTE(v66) = 2;
        sub_23FF7DD20();
        v39 = v23;
        v40 = v49;
        sub_23FFD979C();
        v37 = v60;
        if (!v40)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
          sub_23FF7E5E4(&qword_27E3A2E40);
          v41 = v52;
          sub_23FFD983C();
          (*(v55 + 8))(v39, v41);
          (*(v37 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = v66;
          v32 = 1;
          goto LABEL_21;
        }

LABEL_10:
        (*(v37 + 8))(v18, v14);
LABEL_11:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v61);
      }

      if (v29)
      {
        LOBYTE(v66) = 1;
        sub_23FF7DD74();
        v42 = v49;
        sub_23FFD979C();
        if (!v42)
        {
          v43 = v51;
          v44 = sub_23FFD981C();
          (*(v53 + 8))(v9, v43);
          (*(v60 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v32 = 0;
          v31 = v44 & 1;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v66) = 0;
        sub_23FF7DDC8();
        v30 = v49;
        sub_23FFD979C();
        if (!v30)
        {
          (*(v50 + 8))(v22, v48);
          (*(v60 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 3;
LABEL_21:
          *v25 = v31;
          *(v25 + 8) = v32;
          return __swift_destroy_boxed_opaque_existential_1(v61);
        }
      }
    }

    v37 = v60;
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_23FF7E5E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2DF8, &qword_23FFDD420);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.responseType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_23FF7E694(v2, v3);
}

uint64_t sub_23FF7E694(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.init(responseType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_23FF7E6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7E768(uint64_t a1)
{
  v2 = sub_23FF7E950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7E7A4(uint64_t a1)
{
  v2 = sub_23FF7E950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E48, &qword_23FFDD450);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = a1[4];
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7E694(v8, v10);
  sub_23FF7E950();
  sub_23FFD9ACC();
  v12 = v8;
  v13 = v10;
  sub_23FF7E9A4();
  sub_23FFD991C();
  sub_23FF7983C(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF7E950()
{
  result = qword_27E3A2E50;
  if (!qword_27E3A2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2E50);
  }

  return result;
}

unint64_t sub_23FF7E9A4()
{
  result = qword_27E3A2E58;
  if (!qword_27E3A2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2E58);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E60, &qword_23FFDD458);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7E950();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FF7EB70();
    sub_23FFD983C();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF7EB70()
{
  result = qword_27E3A2E68;
  if (!qword_27E3A2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2E68);
  }

  return result;
}

uint64_t sub_23FF7EC1C()
{
  result = type metadata accessor for LaunchAngelXPCRequest.RequestType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23FF7EC88()
{
  sub_23FF7EDF0();
  if (v0 <= 0x3F)
  {
    sub_23FF7EE70(319, &qword_27E3A2EA0);
    if (v1 <= 0x3F)
    {
      sub_23FF7EE70(319, &qword_27E3A2EA8);
      if (v2 <= 0x3F)
      {
        sub_23FF7EECC(319, &qword_27E3A2EB0, type metadata accessor for InstallSheetContext);
        if (v3 <= 0x3F)
        {
          sub_23FF7EECC(319, &qword_27E3A2EB8, type metadata accessor for OAuthAuthorizationContext);
          if (v4 <= 0x3F)
          {
            sub_23FF7EECC(319, &qword_27E3A2EC0, type metadata accessor for LicenseResolutionContext);
            if (v5 <= 0x3F)
            {
              sub_23FF7EECC(319, &qword_27E3A2EC8, type metadata accessor for ConfirmationSheetContext);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23FF7EDF0()
{
  if (!qword_27E3A2E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2E98, &qword_23FFDD5D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E3A2E90);
    }
  }
}

void sub_23FF7EE70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_23FF7EECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution22LaunchAngelXPCResponseV12ResponseTypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23FF7EF58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FF7EFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_23FF7EFE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FF7F240()
{
  result = qword_27E3A2ED0;
  if (!qword_27E3A2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2ED0);
  }

  return result;
}

unint64_t sub_23FF7F298()
{
  result = qword_27E3A2ED8;
  if (!qword_27E3A2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2ED8);
  }

  return result;
}

unint64_t sub_23FF7F2F0()
{
  result = qword_27E3A2EE0;
  if (!qword_27E3A2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2EE0);
  }

  return result;
}

unint64_t sub_23FF7F348()
{
  result = qword_27E3A2EE8;
  if (!qword_27E3A2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2EE8);
  }

  return result;
}

unint64_t sub_23FF7F3A0()
{
  result = qword_27E3A2EF0;
  if (!qword_27E3A2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2EF0);
  }

  return result;
}

unint64_t sub_23FF7F3F8()
{
  result = qword_27E3A2EF8;
  if (!qword_27E3A2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2EF8);
  }

  return result;
}

unint64_t sub_23FF7F450()
{
  result = qword_27E3A2F00;
  if (!qword_27E3A2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F00);
  }

  return result;
}

unint64_t sub_23FF7F4A8()
{
  result = qword_27E3A2F08;
  if (!qword_27E3A2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F08);
  }

  return result;
}

unint64_t sub_23FF7F500()
{
  result = qword_27E3A2F10;
  if (!qword_27E3A2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F10);
  }

  return result;
}

unint64_t sub_23FF7F558()
{
  result = qword_27E3A2F18;
  if (!qword_27E3A2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F18);
  }

  return result;
}

unint64_t sub_23FF7F5B0()
{
  result = qword_27E3A2F20;
  if (!qword_27E3A2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F20);
  }

  return result;
}

unint64_t sub_23FF7F608()
{
  result = qword_27E3A2F28;
  if (!qword_27E3A2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F28);
  }

  return result;
}

unint64_t sub_23FF7F660()
{
  result = qword_27E3A2F30;
  if (!qword_27E3A2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F30);
  }

  return result;
}

unint64_t sub_23FF7F6B8()
{
  result = qword_27E3A2F38;
  if (!qword_27E3A2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F38);
  }

  return result;
}

unint64_t sub_23FF7F710()
{
  result = qword_27E3A2F40;
  if (!qword_27E3A2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F40);
  }

  return result;
}

unint64_t sub_23FF7F768()
{
  result = qword_27E3A2F48;
  if (!qword_27E3A2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F48);
  }

  return result;
}

unint64_t sub_23FF7F7C0()
{
  result = qword_27E3A2F50;
  if (!qword_27E3A2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F50);
  }

  return result;
}

unint64_t sub_23FF7F818()
{
  result = qword_27E3A2F58;
  if (!qword_27E3A2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F58);
  }

  return result;
}

unint64_t sub_23FF7F870()
{
  result = qword_27E3A2F60;
  if (!qword_27E3A2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F60);
  }

  return result;
}

unint64_t sub_23FF7F8C8()
{
  result = qword_27E3A2F68;
  if (!qword_27E3A2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F68);
  }

  return result;
}

unint64_t sub_23FF7F920()
{
  result = qword_27E3A2F70;
  if (!qword_27E3A2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F70);
  }

  return result;
}

unint64_t sub_23FF7F978()
{
  result = qword_27E3A2F78;
  if (!qword_27E3A2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F78);
  }

  return result;
}

unint64_t sub_23FF7F9D0()
{
  result = qword_27E3A2F80;
  if (!qword_27E3A2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F80);
  }

  return result;
}

unint64_t sub_23FF7FA28()
{
  result = qword_27E3A2F88;
  if (!qword_27E3A2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F88);
  }

  return result;
}

unint64_t sub_23FF7FA80()
{
  result = qword_27E3A2F90;
  if (!qword_27E3A2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F90);
  }

  return result;
}

unint64_t sub_23FF7FAD8()
{
  result = qword_27E3A2F98;
  if (!qword_27E3A2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2F98);
  }

  return result;
}

unint64_t sub_23FF7FB30()
{
  result = qword_27E3A2FA0;
  if (!qword_27E3A2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FA0);
  }

  return result;
}

unint64_t sub_23FF7FB88()
{
  result = qword_27E3A2FA8;
  if (!qword_27E3A2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FA8);
  }

  return result;
}

unint64_t sub_23FF7FBE0()
{
  result = qword_27E3A2FB0;
  if (!qword_27E3A2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FB0);
  }

  return result;
}

unint64_t sub_23FF7FC38()
{
  result = qword_27E3A2FB8;
  if (!qword_27E3A2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FB8);
  }

  return result;
}

unint64_t sub_23FF7FC90()
{
  result = qword_27E3A2FC0;
  if (!qword_27E3A2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FC0);
  }

  return result;
}

unint64_t sub_23FF7FCE8()
{
  result = qword_27E3A2FC8;
  if (!qword_27E3A2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FC8);
  }

  return result;
}

unint64_t sub_23FF7FD40()
{
  result = qword_27E3A2FD0;
  if (!qword_27E3A2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FD0);
  }

  return result;
}

unint64_t sub_23FF7FD98()
{
  result = qword_27E3A2FD8;
  if (!qword_27E3A2FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FD8);
  }

  return result;
}

unint64_t sub_23FF7FDF0()
{
  result = qword_27E3A2FE0;
  if (!qword_27E3A2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FE0);
  }

  return result;
}

unint64_t sub_23FF7FE48()
{
  result = qword_27E3A2FE8;
  if (!qword_27E3A2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FE8);
  }

  return result;
}

unint64_t sub_23FF7FEA0()
{
  result = qword_27E3A2FF0;
  if (!qword_27E3A2FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FF0);
  }

  return result;
}

unint64_t sub_23FF7FEF8()
{
  result = qword_27E3A2FF8;
  if (!qword_27E3A2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A2FF8);
  }

  return result;
}

unint64_t sub_23FF7FF50()
{
  result = qword_27E3A3000;
  if (!qword_27E3A3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3000);
  }

  return result;
}

unint64_t sub_23FF7FFA8()
{
  result = qword_27E3A3008;
  if (!qword_27E3A3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3008);
  }

  return result;
}

unint64_t sub_23FF80000()
{
  result = qword_27E3A3010;
  if (!qword_27E3A3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3010);
  }

  return result;
}

unint64_t sub_23FF80058()
{
  result = qword_27E3A3018;
  if (!qword_27E3A3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3018);
  }

  return result;
}

unint64_t sub_23FF800B0()
{
  result = qword_27E3A3020;
  if (!qword_27E3A3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3020);
  }

  return result;
}

unint64_t sub_23FF80108()
{
  result = qword_27E3A3028;
  if (!qword_27E3A3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3028);
  }

  return result;
}

uint64_t sub_23FF8015C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000023FFEB1A0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEB1C0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEB1E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023FFEB200 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB220 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB240 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEB260 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23FF803A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23FF804CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEB280 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB220 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB2A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t LocalizedStringsRequest.LocalizedString.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

AppDistribution::LocalizedStringsRequest::LocalizedString __swiftcall LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)(Swift::String key, Swift::OpaquePointer replacementTokens)
{
  *v2 = key;
  *(v2 + 16) = replacementTokens;
  result.field23FFF3194 = key;
  result.field23FFF31A0 = replacementTokens;
  return result;
}

unint64_t sub_23FF806A0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_23FF806D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB2C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF807BC(uint64_t a1)
{
  v2 = sub_23FF80A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF807F8(uint64_t a1)
{
  v2 = sub_23FF80A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalizedStringsRequest.LocalizedString.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3030, &unk_23FFDE7C0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF80A00();
  sub_23FFD9ACC();
  v17 = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
    sub_23FF7E5E4(&qword_27E3A2E00);
    sub_23FFD991C();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_23FF80A00()
{
  result = qword_27E3A3038;
  if (!qword_27E3A3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3038);
  }

  return result;
}

uint64_t LocalizedStringsRequest.LocalizedString.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3040, &qword_23FFDE7D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF80A00();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
  v18 = 1;
  sub_23FF7E5E4(&qword_27E3A2E40);
  sub_23FFD983C();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LocalizedStringsRequest.run()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 96) = a1;
  *(v2 + 104) = v3;
  return MEMORY[0x2822009F8](sub_23FF80D00, 0, 0);
}

uint64_t sub_23FF80D00()
{
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 1;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF80E2C;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF80E2C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FF81174;
  }

  else
  {
    v3 = sub_23FF80F40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF80F40()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  if (v2 == 8)
  {
    v4 = *(v0 + 104);

LABEL_16:
    **(v0 + 96) = v1;
    v20 = *(v0 + 8);

    return v20();
  }

  v5 = *(v0 + 80);
  v6 = *(v3 + 16);
  if (v6)
  {
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    v23 = *(v0 + 72);
    v24 = MEMORY[0x277D84F90];
    sub_23FF81E74(0, v6, 0);
    v7 = v24;
    v8 = *(v24 + 16);
    v9 = 32 * v8 + 56;
    v10 = (v3 + 40);
    do
    {
      v11 = v8;
      v12 = *(v10 - 1);
      v13 = *v10;
      v14 = *(v24 + 24);
      ++v8;
      swift_bridgeObjectRetain_n();
      if (v11 >= v14 >> 1)
      {
        sub_23FF81E74((v14 > 1), v8, 1);
      }

      *(v24 + 16) = v8;
      v15 = (v24 + v9);
      *(v15 - 3) = v12;
      *(v15 - 2) = v13;
      v9 += 32;
      v10 += 3;
      *(v15 - 1) = v12;
      *v15 = v13;
      --v6;
    }

    while (v6);
    v1 = v23;
    LOBYTE(v2) = v22;
    v5 = v21;
    goto LABEL_10;
  }

  v7 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
    v16 = sub_23FFD977C();
    goto LABEL_11;
  }

  v16 = MEMORY[0x277D84F98];
LABEL_11:
  v17 = *(v0 + 120);
  v25 = v16;
  sub_23FF81B28(v7, 1, sub_23FF811D8);
  if (!v17)
  {
    v19 = *(v0 + 104);

    sub_23FF795B0(v1, v5, v2);
    v1 = v25;
    goto LABEL_16;
  }
}

uint64_t sub_23FF81174()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_23FF811D8@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_23FF81210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69727473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF81298(uint64_t a1)
{
  v2 = sub_23FF81E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF812D4(uint64_t a1)
{
  v2 = sub_23FF81E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalizedStringsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3050, &qword_23FFDE7E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF81E94();

  sub_23FFD9ACC();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3060, &qword_23FFDE7F0);
  sub_23FF81F3C(&qword_27E3A3068, sub_23FF81EE8);
  sub_23FFD991C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t LocalizedStringsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3078, &qword_23FFDE7F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF81E94();
  sub_23FFD9AAC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3060, &qword_23FFDE7F0);
    sub_23FF81F3C(&qword_27E3A3080, sub_23FF81FB4);
    sub_23FFD983C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF816B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000023FFEB2E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_23FFD996C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_23FF81744(uint64_t a1)
{
  v2 = sub_23FF82008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF81780(uint64_t a1)
{
  v2 = sub_23FF82008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalizedStringsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3090, &qword_23FFDE800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82008();

  sub_23FFD9ACC();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
  sub_23FF7E5E4(&qword_27E3A2E00);
  sub_23FFD991C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t LocalizedStringsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A30A0, &qword_23FFDE808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82008();
  sub_23FFD9AAC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
    sub_23FF7E5E4(&qword_27E3A2E40);
    sub_23FFD983C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_23FF81B28(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, id *, void *))
{
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_17:

    return;
  }

  v4 = 0;
  v5 = (a1 + 56);
  v35 = a1;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_23FFD99BC();
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v5 - 2);
    v9 = *(v5 - 1);
    v8 = *v5;
    v42 = *(v5 - 3);
    v7 = v42;
    v43 = v6;
    v41[0] = v9;
    v41[1] = v8;
    v10 = *v44;

    v12 = sub_23FF88F80(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_22;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_23FF89160();
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v27 = *v44;
    v27[(v12 >> 6) + 8] |= 1 << v12;
    v28 = (v27[6] + 16 * v12);
    *v28 = v7;
    v28[1] = v6;
    v29 = (v27[7] + 16 * v12);
    *v29 = v9;
    v29[1] = v8;
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_23;
    }

    v27[2] = v32;
LABEL_3:
    ++v4;
    v5 += 4;
    a2 = 1;
    a1 = v35;
    if (v36 == v4)
    {
      goto LABEL_17;
    }
  }

  v17 = v44;
  sub_23FF89434(v15, a2 & 1);
  v18 = *v17;
  v19 = sub_23FF88F80(v7, v6);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_24;
  }

  v12 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v21 = *v44;
  v22 = *(*v44 + 56) + 16 * v12;
  v23 = *(v22 + 8);
  v38[0] = *v22;
  v38[1] = v23;

  a3(&v39, v38, v41);
  if (!v37)
  {

    v24 = (*(v21 + 56) + 16 * v12);
    v25 = v40;
    v26 = v24[1];
    *v24 = v39;
    v24[1] = v25;

    goto LABEL_3;
  }

  v38[0] = v37;
  v33 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24E8, &unk_23FFDB010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_23FFD96DC();
  MEMORY[0x245CB3B50](0xD00000000000001BLL, 0x800000023FFEB330);
  sub_23FFD972C();
  MEMORY[0x245CB3B50](39, 0xE100000000000000);
  sub_23FFD973C();
  __break(1u);
}